org 0x100

            int 3                               ; trigger dosbox debugger

            mov ax,0x13
            int 0x10

            mov ax,0xa000
            mov es,ax
            mov ax,0x5000
            mov ds,ax
            mov word [cs:val000001FD],0x7c      ; checked, write seems ok in my emu
label_116:  xor di,di
            mov ax,[cs:val000001F9]
            mov [cs:val00000201],ax
            mov cx,0xc8
label_123:  push cx
            mov ax,[cs:val000001FB]
            mov [cs:val000001FF],ax
            mov cx,0xa0
label_12f:  push cx                             ; <-- gets corrupted!
            mov cl,0xf
            mov ax,[cs:val000001FF]
            mov [cs:val00000203],ax
            mov ax,[cs:val00000201]
            mov [cs:val00000205],ax
label_142:  mov ax,[cs:val00000203]
            mov bx,[cs:val00000203]
            call calc_into_ax

            push ax                 ; XXX did first check here (. compare reg values vs dosbox (from 1 run of calc_into_ax)  00000150. all looks same ...
            mov ax,[cs:val00000205]
            mov bx,[cs:val00000205]
            call calc_into_ax

            add ax,0x3
            pop dx
            sub ax,dx
            mov [cs:val00000209],ax
            mov ax,[cs:val00000203]
            mov bx,[cs:val00000205]
            call calc_into_ax

            add ax,0x4e
            mov [cs:val00000207],ax
            mov ax,[cs:val00000207]
            mov [cs:val00000203],ax
            add ax,[cs:val00000205]
            cmp ax,0x0
            jnl label_18d
            not ax
            inc ax
label_18d:  cmp ax,0x1400
            jg label_19e
            mov ax,[cs:val00000209]
            mov [cs:val00000205],ax
            dec cl
            jnz label_142
label_19e:  mov al,cl
            add al,0xa
            mov ah,al
            pop cx
            mov [di],ax
            add di,byte +0x2
            mov ax,[cs:val000001FD]
            add [cs:val000001FF],ax
            dec cx
            jnz label_12f
            pop cx
            mov ax,[cs:val000001FD]
            add [cs:val00000201],ax
            dec cx
            jnz label_123
            xor di,di
            xor si,si
            mov cx,0x3e80
            rep movsd
            sub word [cs:val000001FD],byte +0x1
            add word [cs:val000001F9],byte +0x32
            add word [cs:val000001FB],byte +0x32
            in al,0x60
            cmp al,0x1
            jnz label_116
            ret

; returns AX, in = bx + dx ???
calc_into_ax:
            imul bx
            shrd ax,dx,0xa
            and dx,0x8000
            or ax,dx
            ret


section .data
    val000001F9  dw 0xE800
    val000001FB  dw 0xc864

section .bss
    ; uninitialized data
    val000001FD  resw 1
    val000001FF  resw 1
    val00000201  resw 1
    val00000203  resw 1
    val00000205  resw 1
    val00000207  resw 1
    val00000209  resw 1
