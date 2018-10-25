00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  6800A0            push word 0xa000
00000107  07                pop es
00000108  BAC803            mov dx,0x3c8
0000010B  93                xchg ax,bx
0000010C  EE                out dx,al
0000010D  42                inc dx
0000010E  FEC5              inc ch
00000110  50                push ax
00000111  F6F6              div dh
00000113  F6E4              mul ah
00000115  3C3F              cmp al,0x3f
00000117  7602              jna 0x11b
00000119  B03F              mov al,0x3f
0000011B  EE                out dx,al
0000011C  58                pop ax
0000011D  40                inc ax
0000011E  E2F0              loop 0x110
00000120  BB0040            mov bx,0x4000
00000123  B8FB3F            mov ax,0x3ffb
00000126  8BF0              mov si,ax
00000128  8BE8              mov bp,ax
0000012A  C706FE024040      mov word [0x2fe],0x4040
00000130  BF0003            mov di,0x300
00000133  B1FE              mov cl,0xfe
00000135  F7ED              imul bp
00000137  0FACD00D          shrd ax,dx,0xd
0000013B  2BC3              sub ax,bx
0000013D  8BDE              mov bx,si
0000013F  8BF0              mov si,ax
00000141  8825              mov [di],ah
00000143  88A500FF          mov [di-0x100],ah
00000147  47                inc di
00000148  E2EB              loop 0x135
0000014A  BFFE03            mov di,0x3fe
0000014D  46                inc si
0000014E  BB8C00            mov bx,0x8c
00000151  B94001            mov cx,0x140
00000154  8BE9              mov bp,cx
00000156  60                pushaw
00000157  99                cwd
00000158  B90006            mov cx,0x600
0000015B  55                push bp
0000015C  D3E5              shl bp,cl
0000015E  03EE              add bp,si
00000160  53                push bx
00000161  D3E3              shl bx,cl
00000163  2BDE              sub bx,si
00000165  32FF              xor bh,bh
00000167  8AB7FE02          mov dh,[bx+0x2fe]
0000016B  2AB7BE02          sub dh,[bx+0x2be]
0000016F  8BC5              mov ax,bp
00000171  BBBE02            mov bx,0x2be
00000174  D7                xlatb
00000175  02C6              add al,dh
00000177  D7                xlatb
00000178  5D                pop bp
00000179  5B                pop bx
0000017A  41                inc cx
0000017B  D2F8              sar al,cl
0000017D  02D0              add dl,al
0000017F  FECD              dec ch
00000181  75D8              jnz 0x15b
00000183  92                xchg ax,dx
00000184  D0F8              sar al,1
00000186  7902              jns 0x18a
00000188  F6D8              neg al
0000018A  8805              mov [di],al
0000018C  61                popaw
0000018D  47                inc di
0000018E  E2C4              loop 0x154
00000190  4B                dec bx
00000191  75BE              jnz 0x151
00000193  60                pushaw
00000194  B702              mov bh,0x2
00000196  BD4101            mov bp,0x141
00000199  60                pushaw
0000019A  0FBEBFFD01        movsx di,[bx+0x1fd]
0000019F  93                xchg ax,bx
000001A0  D1E8              shr ax,1
000001A2  BBFE02            mov bx,0x2fe
000001A5  03C6              add ax,si
000001A7  50                push ax
000001A8  D7                xlatb
000001A9  98                cbw
000001AA  D1F8              sar ax,1
000001AC  F7ED              imul bp
000001AE  91                xchg ax,cx
000001AF  58                pop ax
000001B0  80EB40            sub bl,0x40
000001B3  D7                xlatb
000001B4  98                cbw
000001B5  2BF8              sub di,ax
000001B7  D1FF              sar di,1
000001B9  03F9              add di,cx
000001BB  B108              mov cl,0x8
000001BD  B508              mov ch,0x8
000001BF  FE851E5C          inc byte [di+0x5c1e]
000001C3  47                inc di
000001C4  FECD              dec ch
000001C6  75F7              jnz 0x1bf
000001C8  81C73801          add di,0x138
000001CC  E2EF              loop 0x1bd
000001CE  61                popaw
000001CF  4B                dec bx
000001D0  75C7              jnz 0x199
000001D2  BADA03            mov dx,0x3da
000001D5  EC                in al,dx
000001D6  A808              test al,0x8
000001D8  75FB              jnz 0x1d5
000001DA  EC                in al,dx
000001DB  A808              test al,0x8
000001DD  74FB              jz 0x1da
000001DF  B5AF              mov ch,0xaf
000001E1  BF8025            mov di,0x2580
000001E4  BEFE03            mov si,0x3fe
000001E7  AC                lodsb
000001E8  260205            add al,[es:di]
000001EB  D0E8              shr al,1
000001ED  AA                stosb
000001EE  E2F7              loop 0x1e7
000001F0  61                popaw
000001F1  E460              in al,0x60
000001F3  98                cbw
000001F4  48                dec ax
000001F5  0F8551FF          jnz word 0x14a
000001F9  B003              mov al,0x3
000001FB  CD10              int 0x10
000001FD  C3                ret
000001FE  40                inc ax
000001FF  40                inc ax
