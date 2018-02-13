; from http://www.fysnet.net/modex.htm
; draws a colorful line from (0,0) to (639,479) on the 640x480x16 screen.
    org 100h

section .text
    mov  ax,0012h                ; set mode to 640x480x16
    int  10h

    mov  ax,0A000h
    mov  es,ax

    ; start line from (0,0) to (639,479)
    mov  word [X],1              ; top most pixel (0,0)
    mov  word [Y],1              ;
    mov  byte [Color],0          ; start with color 0

    mov  cx,480                  ; 480 pixels
DrawLine:
    call putpixel                ; put the pixel
    inc  word [X]                ; move down a row and inc col
    inc  word [Y]                ;
    inc  byte [Color]            ; next color
    and  byte [Color],0Fh        ; 00h - 0Fh only
    loop DrawLine                ; do it

    xor  ah,ah                   ; wait for key press
    int  16h

    mov  ax,0003h                ; return to screen 3 (text)
    int  10h

    mov  ax, 4C00h               ; exit to dos
    int  21h

; on entry X,Y = location and C = color (0-15)
putpixel: ;   proc near uses ax bx cx dx
; byte offset = Y * (horz_res / 8) + int(X / 8)
    mov  ax,[Y]                  ; calculate offset
    mov  dx,80                   ;
    mul  dx                      ; ax = y * 80
    mov  bx,[X]                  ;
    mov  cl,bl                   ; save low byte for below
    shr  bx,03                   ; div by 8
    add  bx,ax                   ; bx = offset this group of 8 pixels

    mov  dx,03CEh                ; set to video hardware controller

    and  cl,07h                  ; Compute bit mask from X-coordinates
    xor  cl,07h                  ;  and put in ah
    mov  ah,01h                  ;
    shl  ah,cl                   ;
    mov  al,08h                  ; bit mask register
    out  dx,ax                   ;

    mov  ax,0205h                ; read mode 0, write mode 2
    out  dx,ax                   ;
    
    mov  al,[es:bx]              ; load to latch register
    mov  al,[Color]
    mov  [es:bx],al              ; write to register
    ret

section .bss
X          resw 1
Y          resw 1
Color      resb 1
