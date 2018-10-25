00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8CD8              mov ax,ds
00000106  050010            add ax,0x1000
00000109  8EC0              mov es,ax
0000010B  8AC1              mov al,cl
0000010D  BAC803            mov dx,0x3c8
00000110  EE                out dx,al
00000111  42                inc dx
00000112  C0E802            shr al,byte 0x2
00000115  EE                out dx,al
00000116  EE                out dx,al
00000117  EE                out dx,al
00000118  E2F1              loop 0x10b

0000011A  B409              mov ah,0x9      ; WRITE STRING at DX TO STANDARD OUTPUT
0000011C  BAF701            mov dx,0x1f7
0000011F  CD21              int 0x21

00000121  6800A0            push word 0xa000
00000124  1F                pop ds
00000125  BF004B            mov di,0x4b00
00000128  D6                salc
00000129  803F07            cmp byte [bx],0x7
0000012C  7512              jnz 0x140
0000012E  60                pushaw
0000012F  B90A00            mov cx,0xa
00000132  51                push cx
00000133  B105              mov cl,0x5
00000135  AA                stosb
00000136  E2FD              loop 0x135
00000138  81C73B01          add di,0x13b
0000013C  59                pop cx
0000013D  E2F3              loop 0x132
0000013F  61                popaw
00000140  43                inc bx
00000141  83C705            add di,byte +0x5
00000144  E2E3              loop 0x129

00000146  B90600            mov cx,0x6
00000149  51                push cx
0000014A  33C9              xor cx,cx
0000014C  33D2              xor dx,dx
0000014E  33C0              xor ax,ax
00000150  268A15            mov dl,[es:di]
00000153  03C2              add ax,dx
00000155  268A5502          mov dl,[es:di+0x2]
00000159  03C2              add ax,dx
0000015B  268A95C0FE        mov dl,[es:di-0x140]
00000160  03C2              add ax,dx
00000162  268A954101        mov dl,[es:di+0x141]
00000167  03C2              add ax,dx
00000169  C1E802            shr ax,byte 0x2
0000016C  AA                stosb
0000016D  E2DF              loop 0x14e
0000016F  59                pop cx
00000170  E2D7              loop 0x149

00000172  06                push es
00000173  1E                push ds
00000174  0E                push cs
00000175  1F                pop ds
00000176  07                pop es
00000177  0FA9              pop gs
00000179  BB9CFF            mov bx,0xff9c
0000017C  53                push bx
0000017D  891E0002          mov [0x200],bx
00000181  891E0202          mov [0x202],bx
00000185  33FF              xor di,di
00000187  BE9CFF            mov si,0xff9c
0000018A  BD62FF            mov bp,0xff62
0000018D  650FB64501        movzx ax,[gs:di+0x1]
00000192  650FB65DFE        movzx bx,[gs:di-0x2]
00000197  2BC3              sub ax,bx
00000199  8BDD              mov bx,bp
0000019B  D1FB              sar bx,1
0000019D  2B1E0002          sub bx,[0x200]
000001A1  2BC3              sub ax,bx
000001A3  650FB68D4001      movzx cx,[gs:di+0x140]
000001A9  650FB69580FD      movzx dx,[gs:di-0x280]
000001AF  2BCA              sub cx,dx
000001B1  8BD6              mov dx,si
000001B3  D1FA              sar dx,1
000001B5  2B160202          sub dx,[0x202]
000001B9  2BCA              sub cx,dx
000001BB  0FAFCA            imul cx,dx
000001BE  0FAFC3            imul ax,bx
000001C1  03C1              add ax,cx
000001C3  99                cwd
000001C4  33C2              xor ax,dx
000001C6  2BC2              sub ax,dx
000001C8  C1E803            shr ax,byte 0x3
000001CB  40                inc ax
000001CC  0AE4              or ah,ah
000001CE  7402              jz 0x1d2
000001D0  33C0              xor ax,ax
000001D2  F6D8              neg al
000001D4  AA                stosb
000001D5  45                inc bp
000001D6  81FDA000          cmp bp,0xa0
000001DA  7CB1              jl 0x18d
000001DC  47                inc di
000001DD  47                inc di
000001DE  46                inc si
000001DF  83FE64            cmp si,byte +0x64
000001E2  7EA6              jng 0x18a
000001E4  5B                pop bx
000001E5  43                inc bx
000001E6  83FB64            cmp bx,byte +0x64
000001E9  7502              jnz 0x1ed
000001EB  F7DB              neg bx
000001ED  E460              in al,0x60
000001EF  48                dec ax
000001F0  758A              jnz 0x17c
000001F2  B003              mov al,0x3
000001F4  CD10              int 0x10
000001F6  C3                ret
000001F7  4C                dec sp
000001F8  55                push bp
000001F9  4D                dec bp
000001FA  49                dec cx
000001FB  4E                dec si
000001FC  4F                dec di
000001FD  55                push bp
000001FE  53                push bx
000001FF  24                db 0x24
