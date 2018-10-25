00000100  6800A0            push word 0xa000
00000103  07                pop es
00000104  B013              mov al,0x13
00000106  CD10              int 0x10
00000108  BAC803            mov dx,0x3c8
0000010B  32C0              xor al,al
0000010D  EE                out dx,al
0000010E  42                inc dx
0000010F  88E0              mov al,ah
00000111  3C3F              cmp al,0x3f
00000113  7602              jna 0x117
00000115  B03F              mov al,0x3f
00000117  EE                out dx,al
00000118  88E0              mov al,ah
0000011A  C0E802            shr al,byte 0x2
0000011D  EE                out dx,al
0000011E  88E0              mov al,ah
00000120  D0E8              shr al,1
00000122  2C3F              sub al,0x3f
00000124  7D02              jnl 0x128
00000126  32C0              xor al,al
00000128  EE                out dx,al
00000129  FEC4              inc ah
0000012B  75E2              jnz 0x10f
0000012D  BB3F78            mov bx,0x783f
00000130  33F6              xor si,si
00000132  BD0008            mov bp,0x800
00000135  B8D9FF            mov ax,0xffd9
00000138  F7EB              imul bx
0000013A  03F2              add si,dx
0000013C  03DE              add bx,si
0000013E  88BE0205          mov [bp+0x502],bh
00000142  4D                dec bp
00000143  79F0              jns 0x135
00000145  06                push es
00000146  1E                push ds
00000147  07                pop es
00000148  1F                pop ds
00000149  BE4001            mov si,0x140
0000014C  B96600            mov cx,0x66
0000014F  33C0              xor ax,ax
00000151  33DB              xor bx,bx
00000153  BDA000            mov bp,0xa0
00000156  8A07              mov al,[bx]
00000158  8BD0              mov dx,ax
0000015A  8A877E02          mov al,[bx+0x27e]
0000015E  01C2              add dx,ax
00000160  8A878002          mov al,[bx+0x280]
00000164  01C2              add dx,ax
00000166  8A878202          mov al,[bx+0x282]
0000016A  01C2              add dx,ax
0000016C  C1EA02            shr dx,byte 0x2
0000016F  88D6              mov dh,dl
00000171  8917              mov [bx],dx
00000173  8910              mov [bx+si],dx
00000175  83C302            add bx,byte +0x2
00000178  4D                dec bp
00000179  75DB              jnz 0x156
0000017B  03DE              add bx,si
0000017D  E2D4              loop 0x153
0000017F  06                push es
00000180  1E                push ds
00000181  07                pop es
00000182  1F                pop ds
00000183  FEC7              inc bh
00000185  8A1E0005          mov bl,[0x500]
00000189  B96200            mov cx,0x62
0000018C  8006000502        add byte [0x500],0x2
00000191  8006010503        add byte [0x501],0x3
00000196  BFA07D            mov di,0x7da0
00000199  8A87C205          mov al,[bx+0x5c2]
0000019D  98                cbw
0000019E  F7E9              imul cx
000001A0  C1F807            sar ax,byte 0x7
000001A3  50                push ax
000001A4  F7EE              imul si
000001A6  89C5              mov bp,ax
000001A8  8A870205          mov al,[bx+0x502]
000001AC  98                cbw
000001AD  F7E9              imul cx
000001AF  C1F807            sar ax,byte 0x7
000001B2  50                push ax
000001B3  03E8              add bp,ax
000001B5  8A1E0105          mov bl,[0x501]
000001B9  8A87C205          mov al,[bx+0x5c2]
000001BD  98                cbw
000001BE  C1F802            sar ax,byte 0x2
000001C1  01C7              add di,ax
000001C3  E440              in al,0x40
000001C5  268803            mov [es:bp+di],al
000001C8  F7DD              neg bp
000001CA  268803            mov [es:bp+di],al
000001CD  58                pop ax
000001CE  F7EE              imul si
000001D0  89C5              mov bp,ax
000001D2  58                pop ax
000001D3  2BE8              sub bp,ax
000001D5  E440              in al,0x40
000001D7  268803            mov [es:bp+di],al
000001DA  F7DD              neg bp
000001DC  268803            mov [es:bp+di],al
000001DF  E2B5              loop 0x196
000001E1  E460              in al,0x60
000001E3  FEC8              dec al
000001E5  7403              jz 0x1ea
000001E7  E95BFF            jmp word 0x145
000001EA  B80300            mov ax,0x3
000001ED  CD10              int 0x10
000001EF  C3                ret
