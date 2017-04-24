00000100  8EE0              mov fs,ax
00000102  B013              mov al,0x13
00000104  CD10              int 0x10
00000106  97                xchg ax,di
00000107  BAC803            mov dx,0x3c8
0000010A  EE                out dx,al
0000010B  42                inc dx
0000010C  B03F              mov al,0x3f
0000010E  EE                out dx,al
0000010F  EE                out dx,al
00000110  EE                out dx,al
00000111  48                dec ax
00000112  75FA              jnz 0x10e
00000114  6800A0            push word 0xa000
00000117  07                pop es
00000118  68D201            push word 0x1d2
0000011B  64A16C04          mov ax,[fs:0x46c]
0000011F  50                push ax
00000120  33FF              xor di,di
00000122  BD8001            mov bp,0x180
00000125  B9C800            mov cx,0xc8
00000128  51                push cx
00000129  BE00FE            mov si,0xfe00
0000012C  B94001            mov cx,0x140
0000012F  51                push cx
00000130  55                push bp
00000131  56                push si
00000132  B92000            mov cx,0x20
00000135  8BC5              mov ax,bp
00000137  51                push cx
00000138  F7ED              imul bp
0000013A  8ACC              mov cl,ah
0000013C  8AEA              mov ch,dl
0000013E  8BD9              mov bx,cx
00000140  8BC6              mov ax,si
00000142  F7EE              imul si
00000144  0FACD008          shrd ax,dx,0x8
00000148  03C8              add cx,ax
0000014A  80FD04            cmp ch,0x4
0000014D  7312              jnc 0x161
0000014F  2BC3              sub ax,bx
00000151  96                xchg ax,si
00000152  F7ED              imul bp
00000154  0FACD007          shrd ax,dx,0x7
00000158  05F600            add ax,0xf6
0000015B  8BE8              mov bp,ax
0000015D  59                pop cx
0000015E  E2D7              loop 0x137
00000160  B059              mov al,0x59
00000162  91                xchg ax,cx
00000163  AA                stosb
00000164  5E                pop si
00000165  5D                pop bp
00000166  83C603            add si,byte +0x3
00000169  59                pop cx
0000016A  E2C3              loop 0x12f
0000016C  81C5FCFF          add bp,0xfffc
00000170  59                pop cx
00000171  5A                pop dx
00000172  5E                pop si
00000173  E460              in al,0x60
00000175  FEC8              dec al
00000177  7412              jz 0x18b
00000179  643B166C04        cmp dx,[fs:0x46c]
0000017E  7217              jc 0x197
00000180  56                push si
00000181  52                push dx
00000182  E2A4              loop 0x128
00000184  832E590102        sub word [0x159],byte +0x2
00000189  EB95              jmp short 0x120
0000018B  E461              in al,0x61
0000018D  25FC00            and ax,0xfc
00000190  E661              out 0x61,al
00000192  B003              mov al,0x3
00000194  CD10              int 0x10
00000196  C3                ret
00000197  83C204            add dx,byte +0x4
0000019A  AC                lodsb
0000019B  84C0              test al,al
0000019D  7908              jns 0x1a7
0000019F  F61E8801          neg byte [0x188]
000001A3  BED201            mov si,0x1d2
000001A6  AC                lodsb
000001A7  C0E804            shr al,byte 0x4
000001AA  8036A90104        xor byte [0x1a9],0x4
000001AF  7501              jnz 0x1b2
000001B1  4E                dec si
000001B2  56                push si
000001B3  250F00            and ax,0xf
000001B6  7418              jz 0x1d0
000001B8  02C0              add al,al
000001BA  BEF101            mov si,0x1f1
000001BD  03F0              add si,ax
000001BF  B0B6              mov al,0xb6
000001C1  E643              out 0x43,al
000001C3  AD                lodsw
000001C4  E642              out 0x42,al
000001C6  8AC4              mov al,ah
000001C8  E642              out 0x42,al
000001CA  E461              in al,0x61
000001CC  0C03              or al,0x3
000001CE  E661              out 0x61,al
000001D0  EBAF              jmp short 0x181
000001D2  3330              xor si,[bx+si]
000001D4  3330              xor si,[bx+si]
000001D6  351230            xor ax,0x3012
000001D9  004440            add [si+0x40],al
000001DC  43                inc bx
000001DD  3032              xor [bp+si],dh
000001DF  2320              and sp,[bx+si]
000001E1  50                push ax
000001E2  3330              xor si,[bx+si]
000001E4  3330              xor si,[bx+si]
000001E6  351230            xor ax,0x3012
000001E9  004440            add [si+0x40],al
000001EC  43                inc bx
000001ED  305542            xor [di+0x42],dl
000001F0  1000              adc [bx+si],al
000001F2  FFE3              jmp bx
000001F4  0B970A6F          or dx,[bx+0x6f0a]
000001F8  09E8              or ax,bp
000001FA  08EF              or bh,ch
000001FC  07                pop es
