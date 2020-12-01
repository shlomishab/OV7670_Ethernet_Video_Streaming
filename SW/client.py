import socket
import struct
import pygame
import sys

from pygame.locals import *

def main():
    msg = b''
    temp = b''
    old_msg = b''
    run = True
    
    # Initialise screen
    pygame.init()
    
    #Initialize a window or screen for display    
    screen = pygame.display.set_mode((640,480))
    
    pygame.display.set_caption('Live Stream')
    #Basic Pygame program
    
    # Connect to server
    host = '192.168.1.10'
    port = 7
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
    sock.connect((host, port)) 

    print("ok_set_up")

    # Event loop
    while run:
        msg = b''
        temp = ''
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                run = False
        #print("ok_start_loop")
        
        #Send Request to the server 
        sock.sendall(b'v')
        
        # 15360 = 480(ROW) * 32(int)
        #640, 120 , 480 //240
        #Receive the Byte-like
        for y in range(240):
            msg += sock.recv(1280)    
        
        print("ok_recv")
        #print('rec = ', repr(temp))
        #msg = str(temp, 'utf-8')
        #msg = temp.decode("utf-8")
        print("ok_convert")
        
        #In case of a packet loss use the previous downloaded image
        if(len(msg) != 307200):
            print("Receive wrong image size:%d\n" %len(msg))
            msg = old_msg
        #print("ok_length")
        old_msg = msg
        #print("Receive: %c\n" msg)
        print("msg size:%d\n" %len(msg))
        
        #scale #1 - scale2x:
        #**specialized image doubler
        #scale2x(Surface, DestSurface = None) -> Surface**
        #image = pygame.transform.scale2x(pygame.image.frombuffer(msg,(320,240),"RGBX"))
        
        #scale #2 - scale:
        #image = pygame.image.frombuffer(msg,(320,240),"RGBX")
        #image = pygame.transform.scale(image, (640, 480))
        
        # Build image
        #scale #3 - rotozoom:
        image = pygame.image.frombuffer(msg,(320,240),"RGBX")
        image = pygame.transform.rotozoom(image, 0, 8)
        
        
        #image = pygame.image.fromstring(msg,(640,480),"RGB")
        # good picture:
        
        #image = pygame.image.frombuffer(msg,(320,240),"RGBX")
        
        #Blit everything to the screen
        screen.blit(image, (0, 0))
        pygame.display.update()
    pygame.quit()

if __name__ == '__main__': main()