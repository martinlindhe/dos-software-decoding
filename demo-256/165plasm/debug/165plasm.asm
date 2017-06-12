            int 3               ; trigger dosbox debugger

            mov bx,0x4000
            mov si,0x4080

loop1:      mov al,bl           ; 00000106
            shr al,1
            add al,bl
            mov cx,ax
            mul cx
            mul cx
            mov di,0x6000
            div di
            sub cx,ax
            mov [bx],cl
            mov [si],cl
            neg cl
            mov [bx+0x80],cl
            mov [si+0x80],cl
            inc bl
            dec si
            cmp bl,0x40
            jna loop1
            mov al,0x13
            int 0x10            ; vga mode

            mov ax,0xa000
            mov ds,ax
            mov es,ax
            xor di,di
loop2:      mov [di],ch         ; 0000013C
            mov [di+0x17c],ch
            mov si,0x17d
            sub si,di
            mov [si],ch
            mov [si+0x17c],ch
            add di,byte +0x3
            inc ch
            cmp ch,0x40
            jc loop2
            xor si,si
            mov dx,0x3c8
            out dx,al
            inc dx
            mov cx,0x300
            rep outsb
            mov ax,cs
            mov ds,ax
loop6:      inc dl              ; 00000167
            xor cl,cl
            xor di,di
loop5:      mov bl,cl           ; 0000016D
            add bl,dl
            mov dh,[bx]
            xor ch,ch
            mov bl,dh
loop4:      mov al,[bx]         ; 00000177
            sub al,cl
            mov ah,al
            add ah,dh
            sub ax,cx
            test cl,0x1
            jz loop3
            xchg ah,al
loop3:      stosw               ; 00000188
            inc bl
            inc ch
            cmp ch,0xa0
            jc loop4
            inc cl
            cmp cl,0xc8
            jc loop5
            in al,0x60
            cmp al,0x1
            jnz loop6

            mov ax,0x3
            int 0x10            ; text mode
            ret                 ; exit
