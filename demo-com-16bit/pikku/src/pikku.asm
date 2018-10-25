org 0x100

section .data
        jmax    equ     16
        palndx  equ     16
        ftype   equ     7

section .text
start:  mov     al,13h          ; 320 x 200
        int     10h
        push    0a000h
        pop     es

        mov     dx,640
        mov     cl,184
jp3:    xor     di,di
        mov     bh,0fah
        mov     bp,-400
jp1:    mov     si,-640
jp2:    dec     bx
        call    julia                   ; 0118
        add     si,4                    ; 011B
        cmp     si,dx
        jnz     jp2                     ; 0120
        add     bp,4                    ; 0122
        jnz     jp1                     ; 0125
        sub     word [jcp+1],ax
        loop    jp3



        mov     cl,64
jp6:    xor     di,di
        mov     bx,63680
        mov     bp,100
jp4:    mov     si,-320
jp5:    pusha
        imul    bp,cx
        imul    si,cx
        sar     bp,1
        sar     si,1
        mov     word [jrp+1],si
        mov     word [jcp+1],bp
        call    julia
        popa
        inc     bx
        inc     di
        inc     si
        jnz     jp5
        sub     bx,dx
        dec     bp
        jnz     jp4
        loop    jp6

        mov     al,3            ; text mode
        int     10h




julia:
        pusha                   ; push all general regs
        push    bx

        mov     cl,jmax

jloop2:
        mov     ax,bp
        imul    ax
        mov     bl, ah
        mov     bh, dl

        mov     ax,si
        imul    ax
        shrd    ax,dx,8

        add     ax,bx

        cmp     ah,4
        jnl     short jout

        sub     ax,bx
        sub     ax,bx
jrp:    add     ax,0034
        xchg    ax,si

        imul    bp
        shrd    ax,dx,ftype
jcp:    add     ax,1500
        xchg    bp,ax
        loop    jloop2

jout:   xchg    ax, cx
        add     al,palndx
        stosb
        pop     di
        stosb
        popa
        inc     di
        ret
