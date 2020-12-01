# OV7670_Ethernet_Video_Streaming
SoC-BASED Real-Time Ethernet Video Streaming, using the OV7670 camera, and a VGA screen


As part of the rapidly growing Internet of Things industry, a real time Ethernet video streamer system was developed. The developed system was based on OmniVision's OV7670 camera module, and the zedboard's System on Chip by Digilent. The OV7670 captures video, as the zedboard streams it over the Ethernet connection to a computer, which displays the video.
The system's hardware was designed and implemented in Xilinx Vivado tool, in which a block diagram was created. The diagram was constructed using IP's from the Vivado Catalog, as well as two custom made IP Cores. The first IP made for the camera and memory, and other for control and camera settings programming. All hardware was programmed in VHDL.
In order to send and receive data, an additional software application was needed. The two parts of the software include server – for sending the video; and client – for receiving and displaying it. 

Hardware: The system's hardware was developed based on the zedboard’s Zynq-7000 All-Programmable SoC. A Block Design was created in the Vivado tool. The design includes the IP’s for: Zynq Processing Unit, Advanced eXtensible Interface (AXI) Block-RAM (BRAM) Controller and 2 custom IP’s – Camera and Control. Both new IP’s were created using the Vivado IP Packager. 
Images captured by the OV7670 were processed and stored in the zedboard’s BRAM by  the Camera IP. Whereas the control IP configured the camera module’s inner registers, which lay down the video settings.

Software: The system’s software was separated into in 2 parts: server and client. The Server application was written in C, and runs on the zedboard. Whereas the Client application was written in Python, and runs on the lab computer. 
Once the server and client are connected over Ethernet, the client sends a frame request to the server. The server's role is to read an image from the zedboard's Block-RAM, and to send it to the client. Then, the sent image get processed and displayed by the client. Both parts for the software run repeatedly, in order to display a 30 fps continuous video.
