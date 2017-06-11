00000100  44                inc sp
00000101  41                inc cx
00000102  4E                dec si
00000103  47                inc di
00000104  42                inc dx
00000105  49                dec cx
00000106  52                push dx
00000107  44                inc sp
00000108  B013              mov al,0x13
0000010A  CD10              int 0x10
0000010C  2400              and al,0x0
0000010E  BAC803            mov dx,0x3c8
00000111  EE                out dx,al
00000112  42                inc dx
00000113  50                push ax
00000114  C0E802            shr al,byte 0x2
00000117  EE                out dx,al
00000118  EE                out dx,al
00000119  2CF6              sub al,0xf6
0000011B  3C3F              cmp al,0x3f
0000011D  7602              jna 0x121
0000011F  B03F              mov al,0x3f
00000121  EE                out dx,al
00000122  58                pop ax
00000123  FEC0              inc al
00000125  75EC              jnz 0x113
00000127  33DB              xor bx,bx
00000129  BF3700            mov di,0x37
0000012C  51                push cx
0000012D  57                push di
0000012E  680090            push word 0x9000
00000131  07                pop es
00000132  B9803E            mov cx,0x3e80
00000135  FC                cld
00000136  33FF              xor di,di
00000138  6633C0            xor eax,eax
0000013B  F366AB            rep stosd
0000013E  5F                pop di
0000013F  59                pop cx
00000140  BD0800            mov bp,0x8
00000143  B90B00            mov cx,0xb
00000146  A3FE01            mov [0x1fe],ax
00000149  83FF74            cmp di,byte +0x74
0000014C  7517              jnz 0x165
0000014E  43                inc bx
0000014F  80FB06            cmp bl,0x6
00000152  7607              jna 0x15b
00000154  33DB              xor bx,bx
00000156  2EFE067501        inc byte [cs:0x175]
0000015B  8A87F501          mov al,[bx+0x1f5]
0000015F  A3FC01            mov [0x1fc],ax
00000162  BF3700            mov di,0x37
00000165  8BC1              mov ax,cx
00000167  33D2              xor dx,dx
00000169  F736FC01          div word [0x1fc]
0000016D  03C5              add ax,bp
0000016F  8BE8              mov bp,ax
00000171  03C1              add ax,cx
00000173  050400            add ax,0x4
00000176  8BC8              mov cx,ax
00000178  2BC5              sub ax,bp
0000017A  F7D8              neg ax
0000017C  050200            add ax,0x2
0000017F  8BE8              mov bp,ax
00000181  33D2              xor dx,dx
00000183  F7F7              div di
00000185  50                push ax
00000186  8BC1              mov ax,cx
00000188  33D2              xor dx,dx
0000018A  F7F7              div di
0000018C  BA4001            mov dx,0x140
0000018F  F7E2              mul dx
00000191  5A                pop dx
00000192  03C2              add ax,dx
00000194  80FCFF            cmp ah,0xff
00000197  7409              jz 0x1a2
00000199  57                push di
0000019A  8BF8              mov di,ax
0000019C  8BC5              mov ax,bp
0000019E  2BC1              sub ax,cx
000001A0  AB                stosw
000001A1  5F                pop di
000001A2  FF06FE01          inc word [0x1fe]
000001A6  75BD              jnz 0x165
000001A8  60                pushaw
000001A9  BADA03            mov dx,0x3da
000001AC  EC                in al,dx
000001AD  A808              test al,0x8
000001AF  74FB              jz 0x1ac
000001B1  06                push es
000001B2  1F                pop ds
000001B3  6800A0            push word 0xa000
000001B6  07                pop es
000001B7  57                push di
000001B8  33F6              xor si,si
000001BA  33FF              xor di,di
000001BC  B9803E            mov cx,0x3e80
000001BF  F366A5            rep movsd
000001C2  0E                push cs
000001C3  1F                pop ds
000001C4  0E                push cs
000001C5  07                pop es
000001C6  5F                pop di
000001C7  BD0001            mov bp,0x100
000001CA  8BD7              mov dx,di
000001CC  B618              mov dh,0x18
000001CE  80EA36            sub dl,0x36
000001D1  8ADA              mov bl,dl
000001D3  C0E304            shl bl,byte 0x4
000001D6  D0EA              shr dl,1
000001D8  B108              mov cl,0x8
000001DA  B80013            mov ax,0x1300
000001DD  CD10              int 0x10
000001DF  61                popaw
000001E0  47                inc di
000001E1  B80001            mov ax,0x100
000001E4  CD16              int 0x16
000001E6  0F8442FF          jz word 0x12c
000001EA  33C0              xor ax,ax
000001EC  CD16              int 0x16
000001EE  B80300            mov ax,0x3
000001F1  CD10              int 0x10
000001F3  CD20              int 0x20
000001F5  0311              add dx,[bx+di]
000001F7  17                pop ss
000001F8  081D              or [di],bl
000001FA  0E                push cs
000001FB  1B03              sbb ax,[bp+di]
000001FD  00                db 0x00
