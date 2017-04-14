; from http://www.fysnet.net/modex.htm

section .text

           org  100h

           push ds                      ; make sure ds=es
           pop  es

           mov  cx,64                   ; set up our palette
           xor  al,al                   ;  of  0.0.0, 1.1.1, 2,2,2, ...
           mov  di, Palette             ;
PLoop:     stosb                        ;
           stosb                        ;
           stosb                        ;
           inc  al                      ;
           loop PLoop                   ;

           mov  ax,0013h                ; set video mode to 320x200x256
           int  10h                     ;

           mov  dx, Palette             ; ES:DX -> table of 3*CX bytes where each 3
                                        ; byte group represents one byte each of red,
                                        ; green and blue (0-63)
           xor  bx,bx                   ; BX = starting color register
           mov  cx,64                   ; CX = number of registers to set
           mov  ax,1012h                ; set the palette (DAC)
           int  10h                     ;

           mov  ax,0A000h               ; point to VGA memory
           mov  es,ax                   ;

           mov  di,14464                ; place image in center of screen

           call Fade                    ; print top part

           mov  cx,10                   ; print bar (10 lines)
           mov  al,32                   ;  middle color
ALoop:     push cx                      ;
           mov  cx,128                  ;
           rep  stosb                   ;
           add  di,192                  ;
           pop  cx                      ;
           loop ALoop                   ;

           call Fade                    ; print third part

           xor  ah,ah                   ; wait for key
           int  16h

           mov  ax,0003h                ; set screen back to text (80x25)
           int  10h                     ;

           mov  ax, 4c00h               ; terminate program
           int  21h


Fade:                                   ; print first and third parts
           mov  cx,50                   ;  50 lines
PLoop1:    push cx                      ;
           mov  cx,64                   ; 64 colors
PLoop2:    mov  al,cl                   ;
           dec  al                      ;
           stosb                        ; 2 columns each
           stosb                        ;
           loop PLoop2                  ;
           add  di,192                  ;
           pop  cx                      ;
           loop PLoop1                  ;
           ret                          ;

section .bss
 Palette:   RESB 768                    ; our palette buffer

