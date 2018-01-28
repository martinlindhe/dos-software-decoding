00000100  8CC8              mov ax,cs
00000102  8ED8              mov ds,ax
00000104  8EC0              mov es,ax
00000106  B81300            mov ax,0x13
00000109  CD10              int 0x10
0000010B  E86B00            call 0x179
0000010E  E8AC00            call 0x1bd
00000111  E81300            call 0x127
00000114  E82C01            call 0x243
00000117  E460              in al,0x60
00000119  3C01              cmp al,0x1
0000011B  75F4              jnz 0x111
0000011D  B80300            mov ax,0x3
00000120  CD10              int 0x10
00000122  B44C              mov ah,0x4c
00000124  CD21              int 0x21
00000126  C3                ret
00000127  BAC703            mov dx,0x3c7
0000012A  33C0              xor ax,ax
0000012C  EE                out dx,al
0000012D  83C202            add dx,byte +0x2
00000130  BF5F02            mov di,0x25f
00000133  B90003            mov cx,0x300
00000136  FC                cld
00000137  F36C              rep insb
00000139  BE0300            mov si,0x3
0000013C  8A9C5F02          mov bl,[si+0x25f]
00000140  8ABC6002          mov bh,[si+0x260]
00000144  8A946102          mov dl,[si+0x261]
00000148  BE5F02            mov si,0x25f
0000014B  8BFE              mov di,si
0000014D  83C606            add si,byte +0x6
00000150  83C703            add di,byte +0x3
00000153  B9FD02            mov cx,0x2fd
00000156  FC                cld
00000157  F3A4              rep movsb
00000159  BEFD02            mov si,0x2fd
0000015C  889C5F02          mov [si+0x25f],bl
00000160  88BC6002          mov [si+0x260],bh
00000164  88946102          mov [si+0x261],dl
00000168  BAC803            mov dx,0x3c8
0000016B  33C0              xor ax,ax
0000016D  EE                out dx,al
0000016E  42                inc dx
0000016F  BE5F02            mov si,0x25f
00000172  B90003            mov cx,0x300
00000175  FC                cld
00000176  F36E              rep outsb
00000178  C3                ret
00000179  BAC803            mov dx,0x3c8
0000017C  33C0              xor ax,ax
0000017E  EE                out dx,al
0000017F  42                inc dx
00000180  B94000            mov cx,0x40
00000183  32C0              xor al,al
00000185  EE                out dx,al
00000186  EE                out dx,al
00000187  8AC4              mov al,ah
00000189  EE                out dx,al
0000018A  FEC4              inc ah
0000018C  8AC4              mov al,ah
0000018E  E2F3              loop 0x183
00000190  B94000            mov cx,0x40
00000193  33C0              xor ax,ax
00000195  32C0              xor al,al
00000197  EE                out dx,al
00000198  8AC4              mov al,ah
0000019A  EE                out dx,al
0000019B  B03F              mov al,0x3f
0000019D  EE                out dx,al
0000019E  FEC4              inc ah
000001A0  E2F3              loop 0x195
000001A2  B94000            mov cx,0x40
000001A5  33C0              xor ax,ax
000001A7  8AC4              mov al,ah
000001A9  EE                out dx,al
000001AA  B03F              mov al,0x3f
000001AC  EE                out dx,al
000001AD  EE                out dx,al
000001AE  FEC4              inc ah
000001B0  E2F5              loop 0x1a7
000001B2  B94000            mov cx,0x40
000001B5  B03F              mov al,0x3f
000001B7  EE                out dx,al
000001B8  EE                out dx,al
000001B9  EE                out dx,al
000001BA  E2FB              loop 0x1b7
000001BC  C3                ret
000001BD  D9EB              fldpi
000001BF  C7065902B400      mov word [0x259],0xb4
000001C5  DE365902          fidiv word [0x259]
000001C9  D91E5B02          fstp dword [0x25b]
000001CD  06                push es
000001CE  B800A0            mov ax,0xa000
000001D1  8EC0              mov es,ax
000001D3  33FF              xor di,di
000001D5  33D2              xor dx,dx
000001D7  33C9              xor cx,cx
000001D9  D9065B02          fld dword [0x25b]
000001DD  C70659020500      mov word [0x259],0x5
000001E3  DE0E5902          fimul word [0x259]
000001E7  89165902          mov [0x259],dx
000001EB  DE0E5902          fimul word [0x259]
000001EF  D9FE              fsin
000001F1  D80E5102          fmul dword [0x251]
000001F5  D91E5502          fstp dword [0x255]
000001F9  D9065B02          fld dword [0x25b]
000001FD  C70659020300      mov word [0x259],0x3
00000203  DE0E5902          fimul word [0x259]
00000207  890E5902          mov [0x259],cx
0000020B  DE0E5902          fimul word [0x259]
0000020F  D9FE              fsin
00000211  D80E5102          fmul dword [0x251]
00000215  D8065502          fadd dword [0x255]
00000219  C70659027F00      mov word [0x259],0x7f
0000021F  DE065902          fiadd word [0x259]
00000223  DF1E5902          fistp word [0x259]
00000227  A15902            mov ax,[0x259]
0000022A  0AC0              or al,al
0000022C  7504              jnz 0x232
0000022E  90                nop
0000022F  90                nop
00000230  B001              mov al,0x1
00000232  AA                stosb
00000233  41                inc cx
00000234  81F94001          cmp cx,0x140
00000238  75BF              jnz 0x1f9
0000023A  42                inc dx
0000023B  81FAC800          cmp dx,0xc8
0000023F  7596              jnz 0x1d7
00000241  07                pop es
00000242  C3                ret
00000243  BADA03            mov dx,0x3da
00000246  EC                in al,dx
00000247  A808              test al,0x8
00000249  74FB              jz 0x246
0000024B  EC                in al,dx
0000024C  A808              test al,0x8
0000024E  75FB              jnz 0x24b
00000250  C3                ret
00000251  0000              add [bx+si],al
00000253  7E42              jng 0x297
