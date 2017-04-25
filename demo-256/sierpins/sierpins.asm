00000100  8CC8              mov ax,cs
00000102  83C040            add ax,byte +0x40
00000105  8ED8              mov ds,ax
00000107  C70612000584      mov word [0x12],0x8405
0000010D  C70616000300      mov word [0x16],0x3
00000113  1E                push ds
00000114  07                pop es
00000115  BF1E00            mov di,0x1e
00000118  B9007D            mov cx,0x7d00
0000011B  33C0              xor ax,ax
0000011D  F3AB              rep stosw
0000011F  BE0000            mov si,0x0
00000122  BF0C00            mov di,0xc
00000125  B90600            mov cx,0x6
00000128  BB4801            mov bx,0x148
0000012B  E8C000            call word 0x1ee
0000012E  33D2              xor dx,dx
00000130  F7F3              div bx
00000132  8904              mov [si],ax
00000134  C0E807            shr al,byte 0x7
00000137  8805              mov [di],al
00000139  46                inc si
0000013A  46                inc si
0000013B  47                inc di
0000013C  E2ED              loop 0x12b
0000013E  B81300            mov ax,0x13
00000141  CD10              int 0x10
00000143  6800A0            push word 0xa000
00000146  07                pop es
00000147  B401              mov ah,0x1
00000149  CD16              int 0x16
0000014B  0F859900          jnz word 0x1e8
0000014F  BE1E00            mov si,0x1e
00000152  B900FA            mov cx,0xfa00
00000155  803C10            cmp byte [si],0x10
00000158  7602              jna 0x15c
0000015A  FE0C              dec byte [si]
0000015C  46                inc si
0000015D  E2F6              loop 0x155
0000015F  33F6              xor si,si
00000161  BF0C00            mov di,0xc
00000164  B90600            mov cx,0x6
00000167  BA3F01            mov dx,0x13f
0000016A  F60501            test byte [di],0x1
0000016D  7409              jz 0x178
0000016F  FF04              inc word [si]
00000171  3914              cmp [si],dx
00000173  0F9205            setc [di]
00000176  EB08              jmp short 0x180
00000178  FF0C              dec word [si]
0000017A  833C01            cmp word [si],byte +0x1
0000017D  0F9205            setc [di]
00000180  46                inc si
00000181  46                inc si
00000182  47                inc di
00000183  81F2F801          xor dx,0x1f8
00000187  E2E1              loop 0x16a
00000189  66A10000          mov eax,[0x0]
0000018D  66A31A00          mov [0x1a],eax
00000191  B950C3            mov cx,0xc350
00000194  B84001            mov ax,0x140
00000197  F7261C00          mul word [0x1c]
0000019B  03061A00          add ax,[0x1a]
0000019F  8BF0              mov si,ax
000001A1  C6841E001F        mov byte [si+0x1e],0x1f
000001A6  E84500            call word 0x1ee
000001A9  C0E807            shr al,byte 0x7
000001AC  C0EC07            shr ah,byte 0x7
000001AF  02C4              add al,ah
000001B1  32E4              xor ah,ah
000001B3  C1E002            shl ax,byte 0x2
000001B6  8BF0              mov si,ax
000001B8  BF1A00            mov di,0x1a
000001BB  51                push cx
000001BC  B90200            mov cx,0x2
000001BF  8B04              mov ax,[si]
000001C1  8B1D              mov bx,[di]
000001C3  3BD8              cmp bx,ax
000001C5  7601              jna 0x1c8
000001C7  93                xchg ax,bx
000001C8  8BD3              mov dx,bx
000001CA  2BC3              sub ax,bx
000001CC  D1E8              shr ax,1
000001CE  03D0              add dx,ax
000001D0  8915              mov [di],dx
000001D2  47                inc di
000001D3  47                inc di
000001D4  46                inc si
000001D5  46                inc si
000001D6  E2E7              loop 0x1bf
000001D8  59                pop cx
000001D9  E2B9              loop 0x194
000001DB  33FF              xor di,di
000001DD  BE1E00            mov si,0x1e
000001E0  B9007D            mov cx,0x7d00
000001E3  F3A5              rep movsw
000001E5  E95FFF            jmp word 0x147
000001E8  B80300            mov ax,0x3
000001EB  CD10              int 0x10
000001ED  C3                ret
000001EE  A11600            mov ax,[0x16]
000001F1  F7261200          mul word [0x12]
000001F5  40                inc ax
000001F6  A31600            mov [0x16],ax
000001F9  C3                ret
