00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  6800A0            push word 0xa000
00000108  07                pop es
00000109  8CD8              mov ax,ds
0000010B  050010            add ax,0x1000
0000010E  8EE0              mov fs,ax
00000110  050010            add ax,0x1000
00000113  8EE8              mov gs,ax
00000115  050010            add ax,0x1000
00000118  8ED8              mov ds,ax
0000011A  33DB              xor bx,bx
0000011C  BAC803            mov dx,0x3c8
0000011F  B9FF00            mov cx,0xff
00000122  8AC1              mov al,cl
00000124  EE                out dx,al
00000125  42                inc dx
00000126  243F              and al,0x3f
00000128  8AD9              mov bl,cl
0000012A  C0EB06            shr bl,byte 0x6
0000012D  BD0100            mov bp,0x1
00000130  E89901            call 0x2cc
00000133  45                inc bp
00000134  E89501            call 0x2cc
00000137  45                inc bp
00000138  E89101            call 0x2cc
0000013B  4A                dec dx
0000013C  E2E4              loop 0x122
0000013E  1E                push ds
0000013F  8CC8              mov ax,cs
00000141  B90400            mov cx,0x4
00000144  050010            add ax,0x1000
00000147  8ED8              mov ds,ax
00000149  51                push cx
0000014A  33FF              xor di,di
0000014C  33C9              xor cx,cx
0000014E  C60500            mov byte [di],0x0
00000151  47                inc di
00000152  E2FA              loop 0x14e
00000154  59                pop cx
00000155  E2ED              loop 0x144
00000157  B90300            mov cx,0x3
0000015A  BBFF00            mov bx,0xff
0000015D  BFC576            mov di,0x76c5
00000160  BEE502            mov si,0x2e5
00000163  57                push di
00000164  51                push cx
00000165  2EF604FF          test byte [cs:si],0xff
00000169  744B              jz 0x1b6
0000016B  90                nop
0000016C  90                nop
0000016D  06                push es
0000016E  55                push bp
0000016F  B83011            mov ax,0x1130
00000172  B702              mov bh,0x2
00000174  CD10              int 0x10
00000176  2E0FB604          movzx ax,[cs:si]
0000017A  6BC007            imul ax,ax,byte +0x7
0000017D  03E8              add bp,ax
0000017F  B90E00            mov cx,0xe
00000182  51                push cx
00000183  B90300            mov cx,0x3
00000186  51                push cx
00000187  B90800            mov cx,0x8
0000018A  268A4600          mov al,[es:bp+0x0]
0000018E  51                push cx
0000018F  B90300            mov cx,0x3
00000192  A801              test al,0x1
00000194  7404              jz 0x19a
00000196  90                nop
00000197  90                nop
00000198  FE0D              dec byte [di]
0000019A  47                inc di
0000019B  E2F5              loop 0x192
0000019D  59                pop cx
0000019E  D0C0              rol al,1
000001A0  E2EC              loop 0x18e
000001A2  59                pop cx
000001A3  81C72801          add di,0x128
000001A7  E2DD              loop 0x186
000001A9  59                pop cx
000001AA  45                inc bp
000001AB  E2D5              loop 0x182
000001AD  5D                pop bp
000001AE  07                pop es
000001AF  81EF6834          sub di,0x3468
000001B3  46                inc si
000001B4  EBAF              jmp short 0x165
000001B6  59                pop cx
000001B7  5F                pop di
000001B8  81C78A25          add di,0x258a
000001BC  46                inc si
000001BD  E2A4              loop 0x163
000001BF  B90300            mov cx,0x3
000001C2  E8DF00            call 0x2a4
000001C5  B000              mov al,0x0
000001C7  803D6E            cmp byte [di],0x6e
000001CA  7604              jna 0x1d0
000001CC  90                nop
000001CD  90                nop
000001CE  B0C0              mov al,0xc0
000001D0  8805              mov [di],al
000001D2  47                inc di
000001D3  E2F0              loop 0x1c5
000001D5  BFEE25            mov di,0x25ee
000001D8  B96400            mov cx,0x64
000001DB  BBC800            mov bx,0xc8
000001DE  C60180            mov byte [bx+di],0x80
000001E1  83F91E            cmp cx,byte +0x1e
000001E4  7605              jna 0x1eb
000001E6  90                nop
000001E7  90                nop
000001E8  C60140            mov byte [bx+di],0x40
000001EB  4B                dec bx
000001EC  75F0              jnz 0x1de
000001EE  81C74001          add di,0x140
000001F2  E2E7              loop 0x1db
000001F4  1F                pop ds
000001F5  8BD5              mov dx,bp
000001F7  C0EA02            shr dl,byte 0x2
000001FA  648816A07D        mov [fs:0x7da0],dl
000001FF  33D2              xor dx,dx
00000201  8BC1              mov ax,cx
00000203  BB4001            mov bx,0x140
00000206  F7F3              div bx
00000208  2D6400            sub ax,0x64
0000020B  81EAA000          sub dx,0xa0
0000020F  52                push dx
00000210  BB4000            mov bx,0x40
00000213  F7EB              imul bx
00000215  BB4200            mov bx,0x42
00000218  F7FB              idiv bx
0000021A  5B                pop bx
0000021B  50                push ax
0000021C  8BC3              mov ax,bx
0000021E  BB4000            mov bx,0x40
00000221  F7EB              imul bx
00000223  BB4200            mov bx,0x42
00000226  F7FB              idiv bx
00000228  5B                pop bx
00000229  03E8              add bp,ax
0000022B  D1CD              ror bp,1
0000022D  8BD5              mov dx,bp
0000022F  83E203            and dx,byte +0x3
00000232  83EA01            sub dx,byte +0x1
00000235  D1FA              sar dx,1
00000237  03C2              add ax,dx
00000239  8BD5              mov dx,bp
0000023B  C1CA0A            ror dx,byte 0xa
0000023E  83E203            and dx,byte +0x3
00000241  83EA01            sub dx,byte +0x1
00000244  D1FA              sar dx,1
00000246  03DA              add bx,dx
00000248  83C364            add bx,byte +0x64
0000024B  05A000            add ax,0xa0
0000024E  69DB4001          imul bx,bx,word 0x140
00000252  03D8              add bx,ax
00000254  648A07            mov al,[fs:bx]
00000257  8BD9              mov bx,cx
00000259  658807            mov [gs:bx],al
0000025C  E2A1              loop 0x1ff
0000025E  658A05            mov al,[gs:di]
00000261  8805              mov [di],al
00000263  648805            mov [fs:di],al
00000266  47                inc di
00000267  E2F5              loop 0x25e
00000269  B90200            mov cx,0x2
0000026C  E83500            call 0x2a4
0000026F  0FA8              push gs
00000271  8CC8              mov ax,cs
00000273  050040            add ax,0x4000
00000276  8EE8              mov gs,ax
00000278  8A05              mov al,[di]
0000027A  650205            add al,[gs:di]
0000027D  268805            mov [es:di],al
00000280  47                inc di
00000281  E2F5              loop 0x278
00000283  33C0              xor ax,ax
00000285  8EE8              mov gs,ax
00000287  65A16C04          mov ax,[gs:0x46c]
0000028B  653B066C04        cmp ax,[gs:0x46c]
00000290  74F9              jz 0x28b
00000292  0FA9              pop gs
00000294  B40B              mov ah,0xb
00000296  CD21              int 0x21
00000298  3C00              cmp al,0x0
0000029A  0F8457FF          jz near 0x1f5
0000029E  B80300            mov ax,0x3
000002A1  CD10              int 0x10
000002A3  C3                ret
000002A4  51                push cx
000002A5  33C9              xor cx,cx
000002A7  49                dec cx
000002A8  33DB              xor bx,bx
000002AA  8A5DFF            mov bl,[di-0x1]
000002AD  8BC3              mov ax,bx
000002AF  8A5D01            mov bl,[di+0x1]
000002B2  03C3              add ax,bx
000002B4  8A9DC0FE          mov bl,[di-0x140]
000002B8  03C3              add ax,bx
000002BA  8A9D4001          mov bl,[di+0x140]
000002BE  03C3              add ax,bx
000002C0  C1E802            shr ax,byte 0x2
000002C3  8805              mov [di],al
000002C5  47                inc di
000002C6  E2E2              loop 0x2aa
000002C8  59                pop cx
000002C9  E2D9              loop 0x2a4
000002CB  C3                ret
000002CC  50                push ax
000002CD  83FB00            cmp bx,byte +0x0
000002D0  7508              jnz 0x2da
000002D2  90                nop
000002D3  90                nop
000002D4  C0E802            shr al,byte 0x2
000002D7  EE                out dx,al
000002D8  58                pop ax
000002D9  C3                ret
000002DA  3BDD              cmp bx,bp
000002DC  7404              jz 0x2e2
000002DE  90                nop
000002DF  90                nop
000002E0  33C0              xor ax,ax
000002E2  EE                out dx,al
000002E3  58                pop ax
000002E4  C3                ret
000002E5  94                xchg ax,sp
000002E6  92                xchg ax,dx
000002E7  AC                lodsb
000002E8  8A00              mov al,[bx+si]
000002EA  84CA              test dl,cl
000002EC  D8C2              fadd st2
000002EE  E4EA              in al,0xea
000002F0  E6D6              out 0xd6,al
000002F2  C2F2C2            ret 0xc2f2
000002F5  0088CADA          add [bx+si-0x2536],cl
000002F9  C2E6C6            ret 0xc6e6
000002FC  CADCC2            retf 0xc2dc
000002FF  00                db 0x00
