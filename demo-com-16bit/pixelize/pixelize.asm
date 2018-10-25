00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  B140              mov cl,0x40
00000107  FEC9              dec cl
00000109  8AD9              mov bl,cl
0000010B  E8C200            call word 0x1d0
0000010E  B37F              mov bl,0x7f
00000110  2AD9              sub bl,cl
00000112  E8BB00            call word 0x1d0
00000115  B380              mov bl,0x80
00000117  02D9              add bl,cl
00000119  E8B400            call word 0x1d0
0000011C  B3FF              mov bl,0xff
0000011E  2AD9              sub bl,cl
00000120  E8AD00            call word 0x1d0
00000123  FEC1              inc cl
00000125  E2E0              loop 0x107
00000127  B800A0            mov ax,0xa000
0000012A  8EC0              mov es,ax
0000012C  BDC700            mov bp,0xc7
0000012F  BA3F01            mov dx,0x13f
00000132  8BFD              mov di,bp
00000134  4F                dec di
00000135  8BDF              mov bx,di
00000137  D1E7              shl di,1
00000139  D1E7              shl di,1
0000013B  D1E7              shl di,1
0000013D  D1E7              shl di,1
0000013F  D1E7              shl di,1
00000141  D1E7              shl di,1
00000143  D1E3              shl bx,1
00000145  D1E3              shl bx,1
00000147  D1E3              shl bx,1
00000149  D1E3              shl bx,1
0000014B  D1E3              shl bx,1
0000014D  D1E3              shl bx,1
0000014F  D1E3              shl bx,1
00000151  D1E3              shl bx,1
00000153  03FB              add di,bx
00000155  03FA              add di,dx
00000157  4F                dec di
00000158  57                push di
00000159  8BC1              mov ax,cx
0000015B  33C2              xor ax,dx
0000015D  50                push ax
0000015E  5F                pop di
0000015F  33FA              xor di,dx
00000161  33FD              xor di,bp
00000163  2BC7              sub ax,di
00000165  03C1              add ax,cx
00000167  5F                pop di
00000168  2BC1              sub ax,cx
0000016A  AA                stosb
0000016B  4A                dec dx
0000016C  75C4              jnz 0x132
0000016E  4D                dec bp
0000016F  75BE              jnz 0x12f
00000171  41                inc cx
00000172  32C0              xor al,al
00000174  B401              mov ah,0x1
00000176  CD16              int 0x16
00000178  74B2              jz 0x12c
0000017A  BD1E00            mov bp,0x1e
0000017D  B9C800            mov cx,0xc8
00000180  B84001            mov ax,0x140
00000183  49                dec cx
00000184  F7E1              mul cx
00000186  BB4001            mov bx,0x140
00000189  50                push ax
0000018A  03C3              add ax,bx
0000018C  8BF8              mov di,ax
0000018E  8BF0              mov si,ax
00000190  32E4              xor ah,ah
00000192  33D2              xor dx,dx
00000194  268A04            mov al,[es:si]
00000197  03D0              add dx,ax
00000199  268A843E01        mov al,[es:si+0x13e]
0000019E  03D0              add dx,ax
000001A0  268A848002        mov al,[es:si+0x280]
000001A5  03D0              add dx,ax
000001A7  268A844101        mov al,[es:si+0x141]
000001AC  03D0              add dx,ax
000001AE  D1EA              shr dx,1
000001B0  D1EA              shr dx,1
000001B2  7402              jz 0x1b6
000001B4  FECA              dec dl
000001B6  8AC2              mov al,dl
000001B8  AA                stosb
000001B9  58                pop ax
000001BA  4B                dec bx
000001BB  75CC              jnz 0x189
000001BD  41                inc cx
000001BE  E2C0              loop 0x180
000001C0  4D                dec bp
000001C1  75BA              jnz 0x17d
000001C3  B80300            mov ax,0x3
000001C6  CD10              int 0x10
000001C8  B409              mov ah,0x9
000001CA  BADF01            mov dx,0x1df
000001CD  CD21              int 0x21
000001CF  C3                ret
000001D0  BAC803            mov dx,0x3c8
000001D3  8AC3              mov al,bl
000001D5  EE                out dx,al
000001D6  42                inc dx
000001D7  32C0              xor al,al
000001D9  EE                out dx,al
000001DA  EE                out dx,al
000001DB  8AC1              mov al,cl
000001DD  EE                out dx,al
000001DE  C3                ret
000001DF  50                push ax
000001E0  49                dec cx
000001E1  58                pop ax
000001E2  45                inc bp
000001E3  4C                dec sp
000001E4  49                dec cx
000001E5  5A                pop dx
000001E6  45                inc bp
000001E7  2120              and [bx+si],sp
000001E9  627920            bound di,[bx+di+0x20]
000001EC  6D                insw
000001ED  7972              jns 0x261
000001EF  6C                insb
000001F0  6F                outsw
000001F1  636861            arpl [bx+si+0x61],bp
000001F4  725E              jc 0x254
000001F6  6B727973          imul si,[bp+si+0x79],byte +0x73
000001FA  745E              jz 0x25a
000001FC  7064              jo 0x262
000001FE  6C                insb
000001FF  24                db 0x24
