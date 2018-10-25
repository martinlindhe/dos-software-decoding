00000100  B81300            mov ax,0x13
00000103  50                push ax
00000104  CD10              int 0x10
00000106  8CC8              mov ax,cs
00000108  8ED8              mov ds,ax
0000010A  8EC0              mov es,ax
0000010C  050011            add ax,0x1100
0000010F  8EE0              mov fs,ax
00000111  BFFF02            mov di,0x2ff
00000114  33C0              xor ax,ax
00000116  59                pop cx
00000117  F3AB              rep stosw
00000119  BAC803            mov dx,0x3c8
0000011C  EE                out dx,al
0000011D  42                inc dx
0000011E  B90001            mov cx,0x100
00000121  33C0              xor ax,ax
00000123  EE                out dx,al
00000124  FEC4              inc ah
00000126  2BC1              sub ax,cx
00000128  C1E802            shr ax,byte 0x2
0000012B  EE                out dx,al
0000012C  EE                out dx,al
0000012D  E2F2              loop 0x121
0000012F  E81D00            call word 0x14f
00000132  C7067F019090      mov word [0x17f],0x9090
00000138  E81400            call word 0x14f
0000013B  C6066C01C1        mov byte [0x16c],0xc1
00000140  C7066D01E006      mov word [0x16d],0x6e0
00000146  E80600            call word 0x14f
00000149  B80300            mov ax,0x3
0000014C  CD10              int 0x10
0000014E  C3                ret
0000014F  BE2103            mov si,0x321
00000152  B9B414            mov cx,0x14b4
00000155  2BC0              sub ax,ax
00000157  50                push ax
00000158  E88501            call word 0x2e0
0000015B  2E8824            mov [cs:si],ah
0000015E  46                inc si
0000015F  02E4              add ah,ah
00000161  1AE4              sbb ah,ah
00000163  2E8824            mov [cs:si],ah
00000166  46                inc si
00000167  58                pop ax
00000168  50                push ax
00000169  050040            add ax,0x4000
0000016C  90                nop
0000016D  90                nop
0000016E  90                nop
0000016F  E86E01            call word 0x2e0
00000172  2E8824            mov [cs:si],ah
00000175  46                inc si
00000176  02E4              add ah,ah
00000178  1AE4              sbb ah,ah
0000017A  2E8824            mov [cs:si],ah
0000017D  46                inc si
0000017E  58                pop ax
0000017F  03C1              add ax,cx
00000181  50                push ax
00000182  0500F0            add ax,0xf000
00000185  C1E004            shl ax,byte 0x4
00000188  E85501            call word 0x2e0
0000018B  2E8824            mov [cs:si],ah
0000018E  46                inc si
0000018F  02E4              add ah,ah
00000191  1AE4              sbb ah,ah
00000193  2E8824            mov [cs:si],ah
00000196  46                inc si
00000197  58                pop ax
00000198  053000            add ax,0x30
0000019B  E2BA              loop 0x157
0000019D  B9B004            mov cx,0x4b0
000001A0  51                push cx
000001A1  33FF              xor di,di
000001A3  8BCF              mov cx,di
000001A5  648A05            mov al,[fs:di]
000001A8  0AC0              or al,al
000001AA  7409              jz 0x1b5
000001AC  2C08              sub al,0x8
000001AE  7302              jnc 0x1b2
000001B0  2AC0              sub al,al
000001B2  648805            mov [fs:di],al
000001B5  47                inc di
000001B6  E2ED              loop 0x1a5
000001B8  BEFF02            mov si,0x2ff
000001BB  BF0300            mov di,0x3
000001BE  8B04              mov ax,[si]
000001C0  E81D01            call word 0x2e0
000001C3  89440C            mov [si+0xc],ax
000001C6  8B04              mov ax,[si]
000001C8  050040            add ax,0x4000
000001CB  E81201            call word 0x2e0
000001CE  89440E            mov [si+0xe],ax
000001D1  83C604            add si,byte +0x4
000001D4  4F                dec di
000001D5  75E7              jnz 0x1be
000001D7  BD2103            mov bp,0x321
000001DA  B9B414            mov cx,0x14b4
000001DD  51                push cx
000001DE  55                push bp
000001DF  8B360B03          mov si,[0x30b]
000001E3  8B3E0D03          mov di,[0x30d]
000001E7  2E8B5E00          mov bx,[cs:bp+0x0]
000001EB  2E8B5604          mov dx,[cs:bp+0x4]
000001EF  E8BC00            call word 0x2ae
000001F2  2E89963C7C        mov [cs:bp+0x7c3c],dx
000001F7  8B360F03          mov si,[0x30f]
000001FB  8B3E1103          mov di,[0x311]
000001FF  2E8B5602          mov dx,[cs:bp+0x2]
00000203  E8A800            call word 0x2ae
00000206  2E899E387C        mov [cs:bp+0x7c38],bx
0000020B  2E89963A7C        mov [cs:bp+0x7c3a],dx
00000210  8B361303          mov si,[0x313]
00000214  8B3E1503          mov di,[0x315]
00000218  8BDA              mov bx,dx
0000021A  2E8B963C7C        mov dx,[cs:bp+0x7c3c]
0000021F  E88C00            call word 0x2ae
00000222  2E899E3A7C        mov [cs:bp+0x7c3a],bx
00000227  2E89963C7C        mov [cs:bp+0x7c3c],dx
0000022C  2E8B86387C        mov ax,[cs:bp+0x7c38]
00000231  2E8B9E3C7C        mov bx,[cs:bp+0x7c3c]
00000236  881E6402          mov [0x264],bl
0000023A  81C3B001          add bx,0x1b0
0000023E  E85800            call word 0x299
00000241  50                push ax
00000242  2E8B863A7C        mov ax,[cs:bp+0x7c3a]
00000247  E84F00            call word 0x299
0000024A  8BD0              mov dx,ax
0000024C  5B                pop bx
0000024D  81C3A000          add bx,0xa0
00000251  83C264            add dx,byte +0x64
00000254  B84001            mov ax,0x140
00000257  81FAC800          cmp dx,0xc8
0000025B  7308              jnc 0x265
0000025D  F7E2              mul dx
0000025F  03D8              add bx,ax
00000261  64C607FF          mov byte [fs:bx],0xff
00000265  5D                pop bp
00000266  59                pop cx
00000267  83C506            add bp,byte +0x6
0000026A  49                dec cx
0000026B  0F856EFF          jnz word 0x1dd
0000026F  B88C00            mov ax,0x8c
00000272  0106FF02          add [0x2ff],ax
00000276  01060303          add [0x303],ax
0000027A  01060703          add [0x307],ax
0000027E  1E                push ds
0000027F  8CE0              mov ax,fs
00000281  8ED8              mov ds,ax
00000283  B800A0            mov ax,0xa000
00000286  8EC0              mov es,ax
00000288  33FF              xor di,di
0000028A  8BF7              mov si,di
0000028C  8BCF              mov cx,di
0000028E  49                dec cx
0000028F  F3A4              rep movsb
00000291  1F                pop ds
00000292  59                pop cx
00000293  49                dec cx
00000294  0F8508FF          jnz word 0x1a0
00000298  C3                ret
00000299  B90001            mov cx,0x100
0000029C  99                cwd
0000029D  F7E9              imul cx
0000029F  F7FB              idiv bx
000002A1  C3                ret
000002A2  52                push dx
000002A3  99                cwd
000002A4  F7EB              imul bx
000002A6  03C0              add ax,ax
000002A8  13D2              adc dx,dx
000002AA  8BC2              mov ax,dx
000002AC  5A                pop dx
000002AD  C3                ret
000002AE  8BC6              mov ax,si
000002B0  E8EFFF            call word 0x2a2
000002B3  A31903            mov [0x319],ax
000002B6  8BC7              mov ax,di
000002B8  E8E7FF            call word 0x2a2
000002BB  A31B03            mov [0x31b],ax
000002BE  8BDA              mov bx,dx
000002C0  8BC6              mov ax,si
000002C2  E8DDFF            call word 0x2a2
000002C5  A31D03            mov [0x31d],ax
000002C8  8BC7              mov ax,di
000002CA  E8D5FF            call word 0x2a2
000002CD  A31F03            mov [0x31f],ax
000002D0  2B061903          sub ax,[0x319]
000002D4  8BD0              mov dx,ax
000002D6  A11D03            mov ax,[0x31d]
000002D9  03061B03          add ax,[0x31b]
000002DD  8BD8              mov bx,ax
000002DF  C3                ret
000002E0  A31703            mov [0x317],ax
000002E3  DBE3              fninit
000002E5  DF061703          fild word [0x317]
000002E9  DE36FB02          fidiv word [0x2fb]
000002ED  D9FE              fsin
000002EF  DE0EFD02          fimul word [0x2fd]
000002F3  DF1E1703          fistp word [0x317]
000002F7  A11703            mov ax,[0x317]
000002FA  C3                ret
000002FB  C02800            shr byte [bx+si],byte 0x0
000002FE  80                db 0x80
