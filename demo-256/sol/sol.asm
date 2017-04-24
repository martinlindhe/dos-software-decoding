00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BAC803            mov dx,0x3c8
00000108  2AC0              sub al,al
0000010A  EE                out dx,al
0000010B  42                inc dx
0000010C  B17F              mov cl,0x7f
0000010E  8AC3              mov al,bl
00000110  D0E8              shr al,1
00000112  EE                out dx,al
00000113  C0E805            shr al,byte 0x5
00000116  02F8              add bh,al
00000118  8AC7              mov al,bh
0000011A  EE                out dx,al
0000011B  32C0              xor al,al
0000011D  EE                out dx,al
0000011E  FEC3              inc bl
00000120  E2EC              loop 0x10e
00000122  B180              mov cl,0x80
00000124  B03F              mov al,0x3f
00000126  EE                out dx,al
00000127  EE                out dx,al
00000128  EE                out dx,al
00000129  E2FB              loop 0x126
0000012B  BFF455            mov di,0x55f4
0000012E  DBE3              fninit
00000130  D9EE              fldz
00000132  B9C001            mov cx,0x1c0
00000135  D9C0              fld st0
00000137  D9FE              fsin
00000139  DE0EED01          fimul word [0x1ed]
0000013D  DF1EF101          fistp word [0x1f1]
00000141  B84001            mov ax,0x140
00000144  F726F101          mul word [0x1f1]
00000148  D9C0              fld st0
0000014A  D9FF              fcos
0000014C  DE0EED01          fimul word [0x1ed]
00000150  DF1EF101          fistp word [0x1f1]
00000154  D806E901          fadd dword [0x1e9]
00000158  0306F101          add ax,[0x1f1]
0000015C  05A07D            add ax,0x7da0
0000015F  AB                stosw
00000160  E2D3              loop 0x135
00000162  FF0EED01          dec word [0x1ed]
00000166  75CA              jnz 0x132
00000168  6800A0            push word 0xa000
0000016B  07                pop es
0000016C  BEB403            mov si,0x3b4
0000016F  BB7459            mov bx,0x5974
00000172  B94052            mov cx,0x5240
00000175  AC                lodsb
00000176  2E8B3F            mov di,[cs:bx]
00000179  AA                stosb
0000017A  43                inc bx
0000017B  43                inc bx
0000017C  E2F7              loop 0x175
0000017E  26C606A07D7F      mov byte [es:0x7da0],0x7f
00000184  1E                push ds
00000185  07                pop es
00000186  BFF401            mov di,0x1f4
00000189  BEB403            mov si,0x3b4
0000018C  B93000            mov cx,0x30
0000018F  51                push cx
00000190  B9C001            mov cx,0x1c0
00000193  2BC0              sub ax,ax
00000195  2BDB              sub bx,bx
00000197  AC                lodsb
00000198  03D8              add bx,ax
0000019A  AC                lodsb
0000019B  03D8              add bx,ax
0000019D  AC                lodsb
0000019E  03D8              add bx,ax
000001A0  8A84BE01          mov al,[si+0x1be]
000001A4  03D8              add bx,ax
000001A6  C1EB02            shr bx,byte 0x2
000001A9  8AC3              mov al,bl
000001AB  3C04              cmp al,0x4
000001AD  7C04              jl 0x1b3
000001AF  90                nop
000001B0  90                nop
000001B1  2C04              sub al,0x4
000001B3  AA                stosb
000001B4  4E                dec si
000001B5  4E                dec si
000001B6  E2DB              loop 0x193
000001B8  59                pop cx
000001B9  E2D4              loop 0x18f
000001BB  B9C001            mov cx,0x1c0
000001BE  E440              in al,0x40
000001C0  8A1EF301          mov bl,[0x1f3]
000001C4  FEC3              inc bl
000001C6  F6EB              imul bl
000001C8  C1E804            shr ax,byte 0x4
000001CB  A2F301            mov [0x1f3],al
000001CE  2401              and al,0x1
000001D0  C0E007            shl al,byte 0x7
000001D3  0440              add al,0x40
000001D5  8BD9              mov bx,cx
000001D7  8887F455          mov [bx+0x55f4],al
000001DB  E2E1              loop 0x1be
000001DD  B401              mov ah,0x1
000001DF  CD16              int 0x16
000001E1  7485              jz 0x168
000001E3  B80300            mov ax,0x3
000001E6  CD10              int 0x10
000001E8  C3                ret
000001E9  FA                cli
000001EA  C8653C30          enter 0x3c65,0x30
000001EE  0000              add [bx+si],al
000001F0  0000              add [bx+si],al
000001F2  0020              add [bx+si],ah
