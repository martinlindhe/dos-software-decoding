00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  93                xchg ax,bx
00000105  BAC803            mov dx,0x3c8
00000108  EE                out dx,al
00000109  42                inc dx
0000010A  50                push ax
0000010B  50                push ax
0000010C  D1E0              shl ax,1
0000010E  EE                out dx,al
0000010F  58                pop ax
00000110  F6D8              neg al
00000112  EE                out dx,al
00000113  EE                out dx,al
00000114  58                pop ax
00000115  FEC0              inc al
00000117  E2F1              loop 0x10a
00000119  B5FA              mov ch,0xfa
0000011B  BF0002            mov di,0x200
0000011E  33C3              xor ax,bx
00000120  13D8              adc bx,ax
00000122  C1D003            rcl ax,byte 0x3
00000125  AA                stosb
00000126  E2F6              loop 0x11e
00000128  6800A0            push word 0xa000
0000012B  07                pop es
0000012C  FD                std
0000012D  B900FA            mov cx,0xfa00
00000130  BE00FC            mov si,0xfc00
00000133  33C0              xor ax,ax
00000135  33D3              xor dx,bx
00000137  03DA              add bx,dx
00000139  8BFA              mov di,dx
0000013B  83E706            and di,byte +0x6
0000013E  8BBDE001          mov di,[di+0x1e0]
00000142  C1D203            rcl dx,byte 0x3
00000145  7302              jnc 0x149
00000147  F7DF              neg di
00000149  03FE              add di,si
0000014B  0FB63D            movzx di,[di]
0000014E  AC                lodsb
0000014F  03C7              add ax,di
00000151  D1E8              shr ax,1
00000153  FEC0              inc al
00000155  884403            mov [si+0x3],al
00000158  E2DB              loop 0x135
0000015A  FC                cld
0000015B  BADA03            mov dx,0x3da
0000015E  EC                in al,dx
0000015F  A808              test al,0x8
00000161  74FB              jz 0x15e
00000163  33FF              xor di,di
00000165  B51E              mov ch,0x1e
00000167  BB4001            mov bx,0x140
0000016A  8BC7              mov ax,di
0000016C  99                cwd
0000016D  F7F3              div bx
0000016F  8AC2              mov al,dl
00000171  262A05            sub al,[es:di]
00000174  D0F8              sar al,1
00000176  260005            add [es:di],al
00000179  47                inc di
0000017A  E2EE              loop 0x16a
0000017C  03F7              add si,di
0000017E  B55F              mov ch,0x5f
00000180  F3A5              rep movsw
00000182  1E                push ds
00000183  06                push es
00000184  1F                pop ds
00000185  BE02DC            mov si,0xdc02
00000188  57                push di
00000189  B50A              mov ch,0xa
0000018B  F3A5              rep movsw
0000018D  5F                pop di
0000018E  1F                pop ds
0000018F  33C0              xor ax,ax
00000191  B110              mov cl,0x10
00000193  AB                stosw
00000194  81C73E01          add di,0x13e
00000198  E2F9              loop 0x193
0000019A  83C540            add bp,byte +0x40
0000019D  E440              in al,0x40
0000019F  93                xchg ax,bx
000001A0  F7C50010          test bp,0x1000
000001A4  740A              jz 0x1b0
000001A6  80E306            and bl,0x6
000001A9  8B87E801          mov ax,[bx+0x1e8]
000001AD  A36F01            mov [0x16f],ax
000001B0  81E5C00F          and bp,0xfc0
000001B4  8BCD              mov cx,bp
000001B6  80C900            or cl,0x0
000001B9  7517              jnz 0x1d2
000001BB  0FB6FD            movzx di,ch
000001BE  8A85F001          mov al,[di+0x1f0]
000001C2  BA2717            mov dx,0x1727
000001C5  B301              mov bl,0x1
000001C7  B402              mov ah,0x2
000001C9  CD10              int 0x10
000001CB  B40A              mov ah,0xa
000001CD  B90100            mov cx,0x1
000001D0  CD10              int 0x10
000001D2  B401              mov ah,0x1
000001D4  CD16              int 0x16
000001D6  0F8452FF          jz word 0x12c
000001DA  B80300            mov ax,0x3
000001DD  CD10              int 0x10
000001DF  C3                ret
000001E0  40                inc ax
000001E1  0101              add [bx+di],ax
000001E3  003F              add [bx],bh
000001E5  014101            add [bx+di+0x1],ax
000001E8  F6E2              mul dl
000001EA  02C2              add al,dl
000001EC  22C2              and al,dl
000001EE  02C0              add al,al
000001F0  7927              jns 0x219
000001F2  7320              jnc 0x214
000001F4  7275              jc 0x26b
000001F6  6C                insb
000001F7  652120            and [gs:bx+si],sp
000001FA  53                push bx
000001FB  63726F            arpl [bp+si+0x6f],si
000001FE  6C                insb
000001FF  6C                insb
