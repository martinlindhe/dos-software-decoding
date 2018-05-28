
segment code
..start:
    mov ax, data
    mov ds, ax
    mov ah, 09h
    mov dx, msg
    int 21h
    mov ax, 4C00h
    int 21h

segment data
    msg db "hello world!$"

segment stack stack
    resb 1000h
