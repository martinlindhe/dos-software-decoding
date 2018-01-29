00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BAC803            mov dx,0x3c8
00000108  32C0              xor al,al
0000010A  EE                out dx,al
0000010B  FEC2              inc dl
0000010D  B94000            mov cx,0x40
00000110  50                push ax
00000111  B000              mov al,0x0
00000113  EE                out dx,al
00000114  EE                out dx,al
00000115  EE                out dx,al
00000116  58                pop ax
00000117  FEC0              inc al
00000119  E2F5              loop 0x110
0000011B  662EC70655020000  mov dword [cs:0x255],0x3000000
         -0003
00000125  662EC7064202CCCC  mov dword [cs:0x242],0xcccccc
         -CC00
0000012F  2EC7065B023F00    mov word [cs:0x25b],0x3f
00000136  2EC706BE0100A0    mov word [cs:0x1be],0xa000
0000013D  662EC706B9010000  mov dword [cs:0x1b9],0x80000
         -0800
00000147  662EC706E5010000  mov dword [cs:0x1e5],0xfb000000
         -00FB
00000151  662EC706C9010000  mov dword [cs:0x1c9],0xfce00000
         -E0FC
0000015B  2EC706D201C800    mov word [cs:0x1d2],0xc8
00000162  2EC706EE014001    mov word [cs:0x1ee],0x140
00000169  E85100            call 0x1bd
0000016C  B340              mov bl,0x40
0000016E  E82600            call 0x197
00000171  BAC803            mov dx,0x3c8
00000174  B040              mov al,0x40
00000176  2AC3              sub al,bl
00000178  EE                out dx,al
00000179  FEC2              inc dl
0000017B  B94000            mov cx,0x40
0000017E  EE                out dx,al
0000017F  EE                out dx,al
00000180  EE                out dx,al
00000181  FEC0              inc al
00000183  E2F9              loop 0x17e
00000185  FECB              dec bl
00000187  75E5              jnz 0x16e
00000189  B407              mov ah,0x7
0000018B  CD21              int 0x21
0000018D  B80300            mov ax,0x3
00000190  CD10              int 0x10
00000192  B8004C            mov ax,0x4c00
00000195  CD21              int 0x21
00000197  BAC803            mov dx,0x3c8
0000019A  EC                in al,dx
0000019B  A808              test al,0x8
0000019D  75FB              jnz 0x19a
0000019F  EC                in al,dx
000001A0  A808              test al,0x8
000001A2  74FB              jz 0x19f
000001A4  C3                ret
000001A5  0000              add [bx+si],al
000001A7  0000              add [bx+si],al
000001A9  0000              add [bx+si],al
000001AB  0000              add [bx+si],al
000001AD  0000              add [bx+si],al
000001AF  0000              add [bx+si],al
000001B1  0000              add [bx+si],al
000001B3  0000              add [bx+si],al
000001B5  0000              add [bx+si],al
000001B7  0000              add [bx+si],al
000001B9  0000              add [bx+si],al
000001BB  0000              add [bx+si],al
000001BD  680000            push word 0x0
000001C0  07                pop es
000001C1  33FF              xor di,di
000001C3  2E66C706B1010000  mov dword [cs:0x1b1],0x0
         -0000
000001CD  2EC706A9010000    mov word [cs:0x1a9],0x0
000001D4  662EA1B901        mov eax,[cs:0x1b9]
000001D9  662E0106B101      add [cs:0x1b1],eax
000001DF  2E66C706AD010000  mov dword [cs:0x1ad],0x0
         -0000
000001E9  2EC706A5010000    mov word [cs:0x1a5],0x0
000001F0  662E8B1EB101      mov ebx,[cs:0x1b1]
000001F6  662EA1B901        mov eax,[cs:0x1b9]
000001FB  662E0106AD01      add [cs:0x1ad],eax
00000201  662E8B0EAD01      mov ecx,[cs:0x1ad]
00000207  33ED              xor bp,bp
00000209  45                inc bp
0000020A  668BC1            mov eax,ecx
0000020D  66F7E8            imul eax
00000210  660FACD01A        shrd eax,edx,0x1a
00000215  668BF0            mov esi,eax
00000218  668BC3            mov eax,ebx
0000021B  66F7E8            imul eax
0000021E  660FACD01A        shrd eax,edx,0x1a
00000223  662EA3B501        mov [cs:0x1b5],eax
00000228  6603C6            add eax,esi
0000022B  663D00000010      cmp eax,0x10000000
00000231  7F2C              jg 0x25f
00000233  90                nop
00000234  90                nop
00000235  668BC3            mov eax,ebx
00000238  66F7E9            imul ecx
0000023B  660FACD019        shrd eax,edx,0x19
00000240  662D00000000      sub eax,0x0
00000246  668BD8            mov ebx,eax
00000249  668BCE            mov ecx,esi
0000024C  662E2B0EB501      sub ecx,[cs:0x1b5]
00000252  6681E900000000    sub ecx,0x0
00000259  81FD0000          cmp bp,0x0
0000025D  75AA              jnz 0x209
0000025F  8BC5              mov ax,bp
00000261  268805            mov [es:di],al
00000264  47                inc di
00000265  662EFF0EA501      dec dword [cs:0x1a5]
0000026B  7583              jnz 0x1f0
0000026D  662EFF0EA901      dec dword [cs:0x1a9]
00000273  0F855DFF          jnz near 0x1d4
00000277  C3                ret
