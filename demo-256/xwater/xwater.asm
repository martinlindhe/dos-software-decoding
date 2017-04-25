00000100  8CC8              mov ax,cs
00000102  80C410            add ah,0x10
00000105  8EC0              mov es,ax
00000107  80C410            add ah,0x10
0000010A  8ED8              mov ds,ax
0000010C  33F6              xor si,si
0000010E  B81300            mov ax,0x13
00000111  8824              mov [si],ah
00000113  268824            mov [es:si],ah
00000116  4E                dec si
00000117  75F8              jnz 0x111
00000119  CD10              int 0x10
0000011B  B98000            mov cx,0x80
0000011E  BAC803            mov dx,0x3c8
00000121  8AC4              mov al,ah
00000123  EE                out dx,al
00000124  42                inc dx
00000125  E8BF00            call word 0x1e7
00000128  46                inc si
00000129  E2FA              loop 0x125
0000012B  E8B900            call word 0x1e7
0000012E  4E                dec si
0000012F  79FA              jns 0x12b
00000131  B103              mov cl,0x3
00000133  51                push cx
00000134  B3A0              mov bl,0xa0
00000136  E89C00            call word 0x1d5
00000139  BB4001            mov bx,0x140
0000013C  8BF3              mov si,bx
0000013E  0FAFD3            imul dx,bx
00000141  8BFA              mov di,dx
00000143  E88F00            call word 0x1d5
00000146  03FA              add di,dx
00000148  BB0400            mov bx,0x4
0000014B  E88700            call word 0x1d5
0000014E  42                inc dx
0000014F  52                push dx
00000150  B35A              mov bl,0x5a
00000152  E88000            call word 0x1d5
00000155  83EA2D            sub dx,byte +0x2d
00000158  5B                pop bx
00000159  8BCB              mov cx,bx
0000015B  51                push cx
0000015C  57                push di
0000015D  0FB605            movzx ax,[di]
00000160  03C2              add ax,dx
00000162  E88C00            call word 0x1f1
00000165  8805              mov [di],al
00000167  47                inc di
00000168  E2F3              loop 0x15d
0000016A  5F                pop di
0000016B  59                pop cx
0000016C  03FE              add di,si
0000016E  4B                dec bx
0000016F  75EA              jnz 0x15b
00000171  59                pop cx
00000172  E2BF              loop 0x133
00000174  BF784B            mov di,0x4b78
00000177  B350              mov bl,0x50
00000179  8ACB              mov cl,bl
0000017B  AA                stosb
0000017C  268809            mov [es:bx+di],cl
0000017F  03FE              add di,si
00000181  4B                dec bx
00000182  4B                dec bx
00000183  E2F6              loop 0x17b
00000185  33FF              xor di,di
00000187  0FBE85C0FE        movsx ax,[di-0x140]
0000018C  0FBE954001        movsx dx,[di+0x140]
00000191  03C2              add ax,dx
00000193  0FBE55FF          movsx dx,[di-0x1]
00000197  03C2              add ax,dx
00000199  0FBE5501          movsx dx,[di+0x1]
0000019D  03C2              add ax,dx
0000019F  D1F8              sar ax,1
000001A1  260FBE15          movsx dx,[es:di]
000001A5  2BC2              sub ax,dx
000001A7  8BD0              mov dx,ax
000001A9  C1FA06            sar dx,byte 0x6
000001AC  2BC2              sub ax,dx
000001AE  E84000            call word 0x1f1
000001B1  AA                stosb
000001B2  E2D3              loop 0x187
000001B4  1E                push ds
000001B5  06                push es
000001B6  6800A0            push word 0xa000
000001B9  07                pop es
000001BA  BADA03            mov dx,0x3da
000001BD  EC                in al,dx
000001BE  A808              test al,0x8
000001C0  74FB              jz 0x1bd
000001C2  49                dec cx
000001C3  F3A4              rep movsb
000001C5  1F                pop ds
000001C6  07                pop es
000001C7  B401              mov ah,0x1
000001C9  CD16              int 0x16
000001CB  0F8462FF          jz word 0x131
000001CF  B80300            mov ax,0x3
000001D2  CD10              int 0x10
000001D4  C3                ret
000001D5  6669C59D529C01    imul eax,ebp,dword 0x19c529d
000001DC  05B104            add ax,0x4b1
000001DF  668BE8            mov ebp,eax
000001E2  33D2              xor dx,dx
000001E4  F7F3              div bx
000001E6  C3                ret
000001E7  8BC6              mov ax,si
000001E9  C1E802            shr ax,byte 0x2
000001EC  EE                out dx,al
000001ED  EE                out dx,al
000001EE  D1E0              shl ax,1
000001F0  EE                out dx,al
000001F1  3D81FF            cmp ax,0xff81
000001F4  7F02              jg 0x1f8
000001F6  B081              mov al,0x81
000001F8  3D7F00            cmp ax,0x7f
000001FB  7C02              jl 0x1ff
000001FD  B07F              mov al,0x7f
000001FF  C3                ret
