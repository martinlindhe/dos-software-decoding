    mov bx,0x798f
    xor cx,cx
    mov bp,0x100
loop108:
    mov ax,0xffd9
    imul bx
    add cx,dx
    add bx,cx
    mov [ds:bp+0x200],bh
    add byte [ds:bp+0x200],0x80
    dec bp
    jnz loop108

    push word 0xa000
    pop es
    mov ax,0x13
    int 0x10
    mov dx,0x3c8
    xor al,al
    out dx,al
    inc dx
    xor bl,bl

    mov cx,0x40
loop141:
    xor al,al
    out dx,al
    mov al,bl
    add al,0x40
    out dx,al
    xor al,al
    out dx,al
    inc bl
    loop loop141

    mov cx,0x40
    xor bl,bl
loop155:
    mov al,0x3f
    out dx,al
    sub al,bl
    out dx,al
    mov al,0xe
    out dx,al
    inc bl
    loop loop155

    xor dx,dx
    mov byte [0x300],0x0
    mov byte [0x301],0x0
loop16e:
    xor di,di
    mov ah,dh
    mov al,dl

    mov cx,0xc8
loop177:
    push cx
    mov bh,[0x300]
    mov bl,[0x301]
    mov cx,0x140
loop183:
    push ax
    in al,0x60
    cmp al,0x1
    pop ax
    jz loop1d9

    push dx
    mov si,ax
    push si
    shr si,byte 0x8
    mov dl,[si+0x200]
    pop si
    and si,0xff
    add dl,[si+0x200]
    mov si,bx
    push si
    shr si,byte 0x8
    add dl,[si+0x200]
    pop si
    and si,0xff
    add dl,[si+0x200]
    mov [es:di],dl
    pop dx
    inc di
    add byte [0x301],0x6
    inc bh
    add bl,0x2
    loop loop183
    add ah,0x2
    inc al
    pop cx
    loop loop177
    add dh,0x3
    add byte [0x300],0x5
    inc byte [0x301]
    jmp short loop16e

loop1d9:
    mov ax,0x3
    int 0x10
    int 0x20
