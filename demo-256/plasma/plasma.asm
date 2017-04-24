00000100  E99E00            jmp word 0x1a1
00000103  83C632            add si,byte +0x32
00000106  D1E6              shl si,1
00000108  D1E6              shl si,1
0000010A  D1E6              shl si,1
0000010C  D1E6              shl si,1
0000010E  D1E6              shl si,1
00000110  D1E6              shl si,1
00000112  D1E6              shl si,1
00000114  D1E6              shl si,1
00000116  8BFE              mov di,si
00000118  D1EE              shr si,1
0000011A  D1EE              shr si,1
0000011C  03FE              add di,si
0000011E  D1EE              shr si,1
00000120  D1EE              shr si,1
00000122  D1EE              shr si,1
00000124  D1EE              shr si,1
00000126  D1EE              shr si,1
00000128  D1EE              shr si,1
0000012A  03FA              add di,dx
0000012C  83C750            add di,byte +0x50
0000012F  268805            mov [es:di],al
00000132  C3                ret
00000133  BA9F00            mov dx,0x9f
00000136  C70604026300      mov word [0x204],0x63
0000013C  8BDA              mov bx,dx
0000013E  021E0002          add bl,[0x200]
00000142  80E33F            and bl,0x3f
00000145  8A87C001          mov al,[bx+0x1c0]
00000149  8B1E0402          mov bx,[0x204]
0000014D  2A1E0102          sub bl,[0x201]
00000151  80E33F            and bl,0x3f
00000154  0287C001          add al,[bx+0x1c0]
00000158  8BDA              mov bx,dx
0000015A  2A1E0202          sub bl,[0x202]
0000015E  80E33F            and bl,0x3f
00000161  0287C001          add al,[bx+0x1c0]
00000165  8B1E0402          mov bx,[0x204]
00000169  021E0302          add bl,[0x203]
0000016D  80E33F            and bl,0x3f
00000170  0287C001          add al,[bx+0x1c0]
00000174  0C01              or al,0x1
00000176  8B360402          mov si,[0x204]
0000017A  E886FF            call word 0x103
0000017D  FF0E0402          dec word [0x204]
00000181  75B9              jnz 0x13c
00000183  4A                dec dx
00000184  75B0              jnz 0x136
00000186  FE060002          inc byte [0x200]
0000018A  A0C101            mov al,[0x1c1]
0000018D  00060102          add [0x201],al
00000191  FE0E0202          dec byte [0x202]
00000195  8A1E0202          mov bl,[0x202]
00000199  A0C101            mov al,[0x1c1]
0000019C  00060302          add [0x203],al
000001A0  C3                ret
000001A1  B81300            mov ax,0x13
000001A4  CD10              int 0x10
000001A6  50                push ax
000001A7  55                push bp
000001A8  8BEC              mov bp,sp
000001AA  C7460200A0        mov word [bp+0x2],0xa000
000001AF  5D                pop bp
000001B0  07                pop es
000001B1  E87FFF            call word 0x133
000001B4  BA6000            mov dx,0x60
000001B7  EC                in al,dx
000001B8  3C01              cmp al,0x1
000001BA  75F5              jnz 0x1b1
000001BC  B44C              mov ah,0x4c
000001BE  CD21              int 0x21
000001C0  3F                aas
000001C1  3E3E3D3C3B        ds cmp ax,0x3b3c
000001C6  3937              cmp [bx],si
000001C8  353330            xor ax,0x3033
000001CB  2E2B28            sub bp,[cs:bx+si]
000001CE  25221F            and ax,0x1f22
000001D1  1B18              sbb bx,[bx+si]
000001D3  15120F            adc ax,0xf12
000001D6  0D0A08            or ax,0x80a
000001D9  06                push es
000001DA  0402              add al,0x2
000001DC  0100              add [bx+si],ax
000001DE  0000              add [bx+si],al
000001E0  0000              add [bx+si],al
000001E2  0000              add [bx+si],al
000001E4  0102              add [bp+si],ax
000001E6  0406              add al,0x6
000001E8  080A              or [bp+si],cl
000001EA  0D0F12            or ax,0x120f
000001ED  15181B            adc ax,0x1b18
000001F0  1E                push ds
000001F1  2225              and ah,[di]
000001F3  282B              sub [bp+di],ch
000001F5  2E3033            xor [cs:bp+di],dh
000001F8  353739            xor ax,0x3937
000001FB  3B3C              cmp di,[si]
000001FD  3D3E3E            cmp ax,0x3e3e
