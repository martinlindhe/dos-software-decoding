; disassembled by martin, 11 jun 2017. label names are bogus


SECTION .text
		org  	0x100				; .com files always start 256 bytes into the segment

        int 3               ; break in DOSBOX debugger
        mov ax,0x13
        int 0x10            ; vga mode
        mov ah,0x9
        mov dx,str1
        int 0x21            ; write string in dx to stdout
        mov cx,0x32

halt_loop:
        hlt                 ; ???
        loop halt_loop
     
        mov ax,cs
        add ax,0x1000
        mov fs,ax
        push word 0xa000
        pop es
        xor al,al
        mov dx,0x3c8
        out dx,al
        inc dx
        xor bl,bl
loop1:  mov al,bl          ; 00000126
        shr al,byte 0x2
        out dx,al
        out dx,al
        out dx,al
        inc bl
        jnz loop1
        push cs
        pop es
        mov di,0x1200
        mov cl,0xa0
        mov bx,0x5f5
        xor dx,dx
loop2:  mov ax,dx      ; 0000013E
        sar ax,byte 0xb
        sub bx,ax
        shl ax,byte 0x2
        sub bx,ax
        add dx,bx
        mov al,dh
        stosb
        mov ax,bx
        sar ax,byte 0x9
        add al,dh
        stosb
        dec cl
        jnz loop2
        push word 0xa000
        pop es

mine1:  mov bh,0x12   ; 0000015F
        inc bl
        mov si,0x13e8
        mov di,0x21
        mov dl,0x7f
other1: mov al,dl     ; 0000016B
        imul byte [bx]
        shl ax,1
        mov cl,ah
        mov al,dl
        imul byte [bx+0x40]
        add ax,ax
        mov ch,ah
        mov [si],cx
        inc si
        inc si
        dec dl
        jno other1
        mov dh,0x64
        mov dl,0x7f
label1: xor cx,cx  ; 00000188
        mov si,0x13e8
        mov al,dh
        imul byte [bx]
        add ax,ax
        add ch,ah
        mov al,dh
        imul byte [bx+0x40]
        add ax,ax
        sub cl,ah
this1:  push cx  ; 0000019E
        push dx
        lodsw
        add cx,ax
        mov ax,0xff
        mov dx,bp
more1:  sub al,0x7         ; 000001A8
        sub dx,cx
        add cx,0xa0a
        test dx,0x8080
        jnz more1
        mov cl,dl
        or cl,dh
        rcr cl,1
        push bx
        mov bl,cl
        mov bl,[bx]
        shl bl,byte 0x2
        add al,bl
        pop bx
        pop dx
        pop cx
        stosb
        dec dl
        jno this1
        add di,byte +0x40
        dec dh
        cmp dh,0x9c
        jnz label1
        add bp,0x609
        dec word [cs:0x108]
        jnz mine1
        mov ax,0x3
        int 0x10        ; text mode
        int 0x20        ; exit to DOS

SECTION .data
str1    db   'Optimized by Tsc!$'           ; 000001EC
