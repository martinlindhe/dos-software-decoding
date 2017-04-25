00000100  FC                cld
00000101  BD00F0            mov bp,0xf000
00000104  B013              mov al,0x13
00000106  CD10              int 0x10
00000108  6800A0            push word 0xa000
0000010B  07                pop es
0000010C  BF000F            mov di,0xf00
0000010F  8BF7              mov si,di
00000111  8AC1              mov al,cl
00000113  C0E802            shr al,byte 0x2
00000116  47                inc di
00000117  AA                stosb
00000118  47                inc di
00000119  E2F6              loop 0x111
0000011B  06                push es
0000011C  1F                pop ds
0000011D  BAC803            mov dx,0x3c8
00000120  6E                outsb
00000121  42                inc dx
00000122  B503              mov ch,0x3
00000124  F36E              rep outsb
00000126  0E                push cs
00000127  1F                pop ds
00000128  BAEB01            mov dx,0x1eb
0000012B  B409              mov ah,0x9
0000012D  CD21              int 0x21
0000012F  8BF5              mov si,bp
00000131  33FF              xor di,di
00000133  B9000A            mov cx,0xa00
00000136  268A05            mov al,[es:di]
00000139  0AC0              or al,al
0000013B  7402              jz 0x13f
0000013D  B001              mov al,0x1
0000013F  48                dec ax
00000140  8804              mov [si],al
00000142  46                inc si
00000143  47                inc di
00000144  E2F0              loop 0x136
00000146  BE0010            mov si,0x1000
00000149  B90003            mov cx,0x300
0000014C  8B160002          mov dx,[0x200]
00000150  BF00FA            mov di,0xfa00
00000153  8B04              mov ax,[si]
00000155  33C2              xor ax,dx
00000157  8904              mov [si],ax
00000159  8BD0              mov dx,ax
0000015B  AB                stosw
0000015C  46                inc si
0000015D  E2F4              loop 0x153
0000015F  89160002          mov [0x200],dx
00000163  06                push es
00000164  1F                pop ds
00000165  33F6              xor si,si
00000167  B5F0              mov ch,0xf0
00000169  33C0              xor ax,ax
0000016B  8BFE              mov di,si
0000016D  81EE4101          sub si,0x141
00000171  AC                lodsb
00000172  8BD8              mov bx,ax
00000174  AC                lodsb
00000175  03D8              add bx,ax
00000177  AC                lodsb
00000178  03D8              add bx,ax
0000017A  81C63E01          add si,0x13e
0000017E  AC                lodsb
0000017F  03D8              add bx,ax
00000181  C1EB02            shr bx,byte 0x2
00000184  8AC3              mov al,bl
00000186  48                dec ax
00000187  3408              xor al,0x8
00000189  AA                stosb
0000018A  E2DD              loop 0x169
0000018C  0E                push cs
0000018D  1F                pop ds
0000018E  E84F00            call word 0x1e0
00000191  45                inc bp
00000192  81FDA0F0          cmp bp,0xf0a0
00000196  7406              jz 0x19e
00000198  B401              mov ah,0x1
0000019A  CD16              int 0x16
0000019C  74A8              jz 0x146
0000019E  33C9              xor cx,cx
000001A0  51                push cx
000001A1  B91000            mov cx,0x10
000001A4  8BC2              mov ax,dx
000001A6  D1E0              shl ax,1
000001A8  7302              jnc 0x1ac
000001AA  342D              xor al,0x2d
000001AC  E2F8              loop 0x1a6
000001AE  8BD0              mov dx,ax
000001B0  E82D00            call word 0x1e0
000001B3  59                pop cx
000001B4  8BF8              mov di,ax
000001B6  B0FF              mov al,0xff
000001B8  AA                stosb
000001B9  E2E5              loop 0x1a0
000001BB  BA9001            mov dx,0x190
000001BE  8BFD              mov di,bp
000001C0  B9000A            mov cx,0xa00
000001C3  33C0              xor ax,ax
000001C5  268A05            mov al,[es:di]
000001C8  268A5D01          mov bl,[es:di+0x1]
000001CC  03C3              add ax,bx
000001CE  D1E8              shr ax,1
000001D0  3CFF              cmp al,0xff
000001D2  7401              jz 0x1d5
000001D4  40                inc ax
000001D5  AA                stosb
000001D6  E2EB              loop 0x1c3
000001D8  4A                dec dx
000001D9  75E3              jnz 0x1be
000001DB  B80300            mov ax,0x3
000001DE  CD10              int 0x10
000001E0  BE00F0            mov si,0xf000
000001E3  8BFD              mov di,bp
000001E5  B9000A            mov cx,0xa00
000001E8  F3A4              rep movsb
000001EA  C3                ret
000001EB  43                inc bx
000001EC  6F                outsw
000001ED  4E                dec si
000001EE  54                push sp
000001EF  52                push dx
000001F0  41                inc cx
000001F1  43                inc bx
000001F2  54                push sp
000001F3  206772            and [bx+0x72],ah
000001F6  65657473          gs jz 0x26d
000001FA  20594F            and [bx+di+0x4f],bl
000001FD  55                push bp
000001FE  2124              and [si],sp
