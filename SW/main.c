// INCLUDES
// remove the sections of the code that handle TCP/IP
#undef LWIP_TCP
#undef LWIP_DHCP

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif
#include "lwip/udp.h"
#include "xil_cache.h"
#include <string.h>

// DEFINES
#define LOCAL_UDP_PORT 7

/*/ CAMERA ADDRESS */ 
#define CAMERA_BASE_ADDR 0x40000000

/*  Frame Size     */
#define ROW 240  
#define COL 320  

int frame[ROW][COL]={{0}};
int *baseaddr_ptr = (int *) CAMERA_BASE_ADDR;

// PROTOTYPE FUNCTIONS
/* defined by each RAW mode application */
void print_app_header();
int start_application();
//int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);
void lwip_init();

/* set up netif stuctures */
static struct netif server_netif;

/* echo_netif = the network interface
keeps track of important information and 
determines which functions to call*/
struct netif *echo_netif;

// Global Variables to store results and handle data flow
unsigned char* recvBuff;
unsigned char  testBuff = 'a';

// Global variables for data flow
volatile u32   bytesReceived_len;

// SendResults indicates if there is a result (pic) to send
volatile u8	   SendResults;
volatile u8	   Error;

// Global Variables for Ethernet handling
u16_t    		 remotePort = 8; 
struct ip4_addr  remoteAddr;
struct udp_pcb 	 send_pcb;

/* print_ip: function to print out ip address */
void print_ip(char *msg, struct ip4_addr *ip) 
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip), 
			ip4_addr3(ip), ip4_addr4(ip));
}

/* print_ip_settings: function to print out the ip settings */
void print_ip_settings(struct ip4_addr *ip, struct ip4_addr *mask, struct ip4_addr *gw)
{
	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

/* print_app_header: function to print a header at start time */
void print_app_header()
{
	xil_printf("\n\r\n\r------lwIP UDP Video Streamer Application------\n\r");
	xil_printf("UDP packets sent to port 7 will be processed\n\r");
}

/* MAIN */
int main()
{
	/* Allocate structures for the ip address, netmask, and gateway */
	struct ip4_addr ipaddr, netmask, gw;
	struct pbuf * psnd;
	err_t udpsenderr;
	int status = 0;

	/* The mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	/* Use the same structure for the server and the echo server */
	echo_netif = &server_netif;
	
	/* Sets up some timers on the Zynq and the interrupt controller */
	init_platform();

	/* Initialize IP addresses to be used 
	Local:*/
	IP4_ADDR(&ipaddr,  192, 168, 1,  10);
	IP4_ADDR(&netmask, 255, 255, 255, 0);
	IP4_ADDR(&gw,      192, 168, 1,   1);

	/* Remote: */
	IP4_ADDR(&remoteAddr,    192, 168,  1, 11);

	/* Print out the simple application header */
	print_app_header();

	/* Initialize the lwip for UDP */
	lwip_init();

  	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	netif_set_default(echo_netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(echo_netif);

	/* Print out the ip settings (zedboard) */
	xil_printf("Zedboard IP settings: \r\n");
	print_ip_settings(&ipaddr, &netmask, &gw);

	/* start the application (web server, rxtest, txtest, etc..) */
	status = start_application();
	
	if (status != 0){
		xil_printf("Error in start_application() with code: %d\n\r", status);
		goto ErrorOrDone;
	}

    /* receive and process packets */
    while(1){
        /* Receive packets */
        xemacif_input(echo_netif);

        /* Checks if the correct cher was sent from the client */
        /* testBuff = sent char from the host */
        if (testBuff == 'v'){

            xil_printf("building frame");
            /* build frame */
            for(int i=0;i<ROW ;i++){
                for(int j=0; j<COL ; j++){
                    frame[i][j] = * (baseaddr_ptr+i*COL+j+1);
                }
            }

            xil_printf("Frame was built\n\r");
            xil_printf("Frame size: %d\n\r", sizeof(frame));

            int send_counter = 0;
            while (send_counter < ROW){ /* send frame row by row */
                psnd = pbuf_alloc(PBUF_TRANSPORT, COL*sizeof(int),PBUF_REF);
                psnd->payload = frame[send_counter];

                /* Sends the value back to the IP and port
                that sent us the data in the first place */
                udpsenderr = udp_sendto(&send_pcb, psnd, &remoteAddr, remotePort);

                //xil_printf(" sent ROW number %d/n", send_counter);
                xil_printf("Sent: %d\n\r", sizeof(frame[send_counter]));
                //xil_printf("udpsenderr = %d", udpsenderr);
                pbuf_free(psnd);
                send_counter++;
            }
            xil_printf("Frame Sent\n\r");
            
            if (udpsenderr != ERR_OK){
                xil_printf("UDP Send failed with Error %d\n\r", udpsenderr);
                goto ErrorOrDone;
            }
            /* Free the allocated buffer */
            testBuff = 'a';
            pbuf_free(psnd);
        }
    }
	
	// Jump point for failure
	ErrorOrDone:
	xil_printf("Catastrophic Error! Shutting down and exiting...\n\r");

	cleanup_platform();
	return 0;
}

/*
	FUNCTIONS:
*/


//  THIS IS COMPLETE !!!!! 
 /* Handles responding to UDP packets 
   @ port    = port number the inbound packet came from 
   @ *addr   = IP address the inbound packet came from
   @ pbuf *p = packet buffer structure */
void recv_callback(void *arg, struct udp_pcb *upcb,
                   struct pbuf *p, struct ip4_addr *addr, u16_t port){
	
	/* Do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		udp_disconnect(upcb);
		return;
	}

	/* assign the Remote IP and port. 
	save port and *addr into global variables*/
	remotePort = port;
	remoteAddr = *addr;
	
    /* Saves the PCB so we can use that as well to send data */
	send_pcb = *upcb;
		
	/*Allocate buffer for received data and 
	copy that payload to a buffer of our choosing*/
	recvBuff = (unsigned char*)malloc(p->len);
	bytesReceived_len = p->len;
	memcpy(recvBuff, (u8*)p->payload, bytesReceived_len);

	/* indicate that the packet has been received */
	xil_printf("Received: %c with length of: %d\n\r", *recvBuff, bytesReceived_len);
	
	/* free the received pbuf */
	pbuf_free(p);
	
	/* free the allocated buffer */
	testBuff = *recvBuff;
	free(recvBuff);

	return;
}


//  THIS IS COMPLETE !!!!! 
/* start_application: sets up UDP listener */
int start_application(){
	/* Declare some structures and variables */
	struct udp_pcb *pcb;
	err_t err;
	unsigned port = LOCAL_UDP_PORT; // = 7

	/* create new UDP PCB structure */
	pcb = udp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified port number */
	err = udp_bind(pcb, IP_ADDR_ANY, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}

	/* specify callback to use for incoming connections.
	set the receive callback function for the 'pcb' connection */
	udp_recv(pcb, recv_callback, NULL);

	/* Print out information about the connection */
	xil_printf("UDP server started at port %d\n\r", port);

	/* Return success */
	return 0;
}
