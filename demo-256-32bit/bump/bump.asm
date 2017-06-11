00000100  7C5A              jl 0x15c
00000102  6F                outsw
00000103  4C                dec sp
00000104  41                inc cx
00000105  7C00              jl 0x107
00000107  BF5403            mov di,0x354
0000010A  B5FA              mov ch,0xfa
0000010C  51                push cx
0000010D  8BC5              mov ax,bp
0000010F  8CE1              mov cx,fs
00000111  03C1              add ax,cx
00000113  D3C0              rol ax,cl
00000115  81C12143          add cx,0x4321
00000119  D1C9              ror cx,1
0000011B  8BE8              mov bp,ax
0000011D  8EE1              mov fs,cx
0000011F  03C6              add ax,si
00000121  4E                dec si
00000122  59                pop cx
00000123  C1F80C            sar ax,byte 0xc
00000126  40                inc ax
00000127  260FB695C0FE      movzx dx,[es:di-0x140]
0000012D  260FB69DC1FE      movzx bx,[es:di-0x13f]
00000133  03DA              add bx,dx
00000135  D1FB              sar bx,1
00000137  03C3              add ax,bx
00000139  AA                stosb
0000013A  E2D0              loop 0x10c
0000013C  B81400            mov ax,0x14
0000013F  B11F              mov cl,0x1f
00000141  BAE101            mov dx,0x1e1
00000144  CD33              int 0x33
00000146  B013              mov al,0x13
00000148  CD10              int 0x10
0000014A  6800A0            push word 0xa000
0000014D  07                pop es
0000014E  B001              mov al,0x1
00000150  BAC803            mov dx,0x3c8
00000153  EE                out dx,al
00000154  B9FF00            mov cx,0xff
00000157  42                inc dx
00000158  8AC1              mov al,cl
0000015A  C0E802            shr al,byte 0x2
0000015D  EE                out dx,al
0000015E  EE                out dx,al
0000015F  EE                out dx,al
00000160  E2F6              loop 0x158
00000162  8C260002          mov [0x200],fs
00000166  8C2E0202          mov [0x202],gs
0000016A  BF800C            mov di,0xc80
0000016D  B1B4              mov cl,0xb4
0000016F  BE0A00            mov si,0xa
00000172  51                push cx
00000173  B94001            mov cx,0x140
00000176  33ED              xor bp,bp
00000178  46                inc si
00000179  45                inc bp
0000017A  2E8A951402        mov dl,[cs:di+0x214]
0000017F  2E8A859404        mov al,[cs:di+0x494]
00000184  2E8A9D1602        mov bl,[cs:di+0x216]
00000189  2AC2              sub al,dl
0000018B  2ADA              sub bl,dl
0000018D  98                cbw
0000018E  93                xchg ax,bx
0000018F  98                cbw
00000190  03060002          add ax,[0x200]
00000194  031E0202          add bx,[0x202]
00000198  2BC5              sub ax,bp
0000019A  2BDE              sub bx,si
0000019C  6698              cwde
0000019E  66F7E8            imul eax
000001A1  6693              xchg eax,ebx
000001A3  6698              cwde
000001A5  66F7E8            imul eax
000001A8  6603C3            add eax,ebx
000001AB  66F726FC01        mul dword [0x1fc]
000001B0  66C1E808          shr eax,byte 0x8
000001B4  66A30A02          mov [0x20a],eax
000001B8  DB060A02          fild dword [0x20a]
000001BC  D9FA              fsqrt
000001BE  DB1E0A02          fistp dword [0x20a]
000001C2  A10A02            mov ax,[0x20a]
000001C5  80FC00            cmp ah,0x0
000001C8  7402              jz 0x1cc
000001CA  B0FF              mov al,0xff
000001CC  FEC0              inc al
000001CE  AA                stosb
000001CF  E2A8              loop 0x179
000001D1  59                pop cx
000001D2  E29E              loop 0x172
000001D4  E460              in al,0x60
000001D6  FEC8              dec al
000001D8  7588              jnz 0x162
000001DA  B80300            mov ax,0x3
000001DD  CD10              int 0x10
000001DF  44                inc sp
000001E0  C3                ret
000001E1  4B                dec bx
000001E2  7507              jnz 0x1eb
000001E4  662E8306FC0132    add dword [cs:0x1fc],byte +0x32
000001EB  4B                dec bx
000001EC  7507              jnz 0x1f5
000001EE  662E832EFC0132    sub dword [cs:0x1fc],byte +0x32
000001F5  D1E9              shr cx,1
000001F7  8EE1              mov fs,cx
000001F9  8EEA              mov gs,dx
000001FB  CB                retf
000001FC  0004              add [si],al
000001FE  0000              add [bx+si],al
