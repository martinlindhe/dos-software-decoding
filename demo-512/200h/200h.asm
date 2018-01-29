00000100  B81100            mov ax,0x11
00000103  CD10              int 0x10
00000105  B83011            mov ax,0x1130
00000108  B706              mov bh,0x6
0000010A  CD10              int 0x10
0000010C  BB9801            mov bx,0x198
0000010F  B96400            mov cx,0x64
00000112  BF9301            mov di,0x193
00000115  2E8A07            mov al,[cs:bx]
00000118  0430              add al,0x30
0000011A  7431              jz 0x14d
0000011C  B210              mov dl,0x10
0000011E  F6E2              mul dl
00000120  8BF0              mov si,ax
00000122  33D2              xor dx,dx
00000124  51                push cx
00000125  268A02            mov al,[es:bp+si]
00000128  D0E0              shl al,1
0000012A  7305              jnc 0x131
0000012C  57                push di
0000012D  51                push cx
0000012E  E89001            call 0x2c1
00000131  41                inc cx
00000132  41                inc cx
00000133  FEC2              inc dl
00000135  80FA08            cmp dl,0x8
00000138  75EE              jnz 0x128
0000013A  59                pop cx
0000013B  47                inc di
0000013C  47                inc di
0000013D  32D2              xor dl,dl
0000013F  FEC6              inc dh
00000141  46                inc si
00000142  80FE10            cmp dh,0x10
00000145  75DD              jnz 0x124
00000147  43                inc bx
00000148  83C110            add cx,byte +0x10
0000014B  EBC5              jmp short 0x112
0000014D  33C0              xor ax,ax
0000014F  8ED8              mov ds,ax
00000151  A06C04            mov al,[0x46c]
00000154  2EA29901          mov [cs:0x199],al
00000158  B80001            mov ax,0x100
0000015B  50                push ax
0000015C  B8C800            mov ax,0xc8
0000015F  50                push ax
00000160  B84001            mov ax,0x140
00000163  50                push ax
00000164  E84E00            call 0x1b5
00000167  B800A0            mov ax,0xa000
0000016A  8EC0              mov es,ax
0000016C  8ED8              mov ds,ax
0000016E  FC                cld
0000016F  B96400            mov cx,0x64
00000172  33FF              xor di,di
00000174  BE4001            mov si,0x140
00000177  51                push cx
00000178  B96400            mov cx,0x64
0000017B  51                push cx
0000017C  B9A000            mov cx,0xa0
0000017F  F3A5              rep movsw
00000181  59                pop cx
00000182  E2F7              loop 0x17b
00000184  59                pop cx
00000185  E2EB              loop 0x172
00000187  B401              mov ah,0x1
00000189  CD16              int 0x16
0000018B  74C0              jz 0x14d
0000018D  32E4              xor ah,ah
0000018F  CD16              int 0x16
00000191  B80300            mov ax,0x3
00000194  CD10              int 0x10
00000196  CD20              int 0x20
00000198  0200              add al,[bx+si]
0000019A  0038              add [bx+si],bh
0000019C  F0324944          lock xor cl,[bx+di+0x44]
000001A0  3543F0            xor ax,0xf043
000001A3  393E4442          cmp [0x4244],di
000001A7  3F                aas
000001A8  F03249F0          lock xor cl,[bx+di-0x10]
000001AC  113C              adc [si],di
000001AE  3548F0            xor ax,0xf048
000001B1  1D4544            sbb ax,0x4445
000001B4  D0558B            rcl byte [di-0x75],1
000001B7  EC                in al,dx
000001B8  83EC04            sub sp,byte +0x4
000001BB  50                push ax
000001BC  51                push cx
000001BD  8B4608            mov ax,[bp+0x8]
000001C0  F6C4FF            test ah,0xff
000001C3  750F              jnz 0x1d4
000001C5  3C04              cmp al,0x4
000001C7  730B              jnc 0x1d4
000001C9  FF7606            push word [bp+0x6]
000001CC  FF7604            push word [bp+0x4]
000001CF  E8EF00            call 0x2c1
000001D2  EB24              jmp short 0x1f8
000001D4  D1E8              shr ax,1
000001D6  294604            sub [bp+0x4],ax
000001D9  294606            sub [bp+0x6],ax
000001DC  8B4604            mov ax,[bp+0x4]
000001DF  8946FE            mov [bp-0x2],ax
000001E2  8B4606            mov ax,[bp+0x6]
000001E5  8946FC            mov [bp-0x4],ax
000001E8  8B4E08            mov cx,[bp+0x8]
000001EB  33D2              xor dx,dx
000001ED  8B4608            mov ax,[bp+0x8]
000001F0  0146FE            add [bp-0x2],ax
000001F3  0146FC            add [bp-0x4],ax
000001F6  EB09              jmp short 0x201
000001F8  59                pop cx
000001F9  58                pop ax
000001FA  83C404            add sp,byte +0x4
000001FD  5D                pop bp
000001FE  C20600            ret 0x6
00000201  D1E8              shr ax,1
00000203  D1E8              shr ax,1
00000205  894608            mov [bp+0x8],ax
00000208  2EA09901          mov al,[cs:0x199]
0000020C  A801              test al,0x1
0000020E  740F              jz 0x21f
00000210  FF7608            push word [bp+0x8]
00000213  8B5606            mov dx,[bp+0x6]
00000216  03D1              add dx,cx
00000218  52                push dx
00000219  FF7604            push word [bp+0x4]
0000021C  E896FF            call 0x1b5
0000021F  A802              test al,0x2
00000221  740F              jz 0x232
00000223  FF7608            push word [bp+0x8]
00000226  FF7606            push word [bp+0x6]
00000229  8B5604            mov dx,[bp+0x4]
0000022C  03D1              add dx,cx
0000022E  52                push dx
0000022F  E883FF            call 0x1b5
00000232  A804              test al,0x4
00000234  740F              jz 0x245
00000236  FF7608            push word [bp+0x8]
00000239  FF76FC            push word [bp-0x4]
0000023C  8B56FE            mov dx,[bp-0x2]
0000023F  2BD1              sub dx,cx
00000241  52                push dx
00000242  E870FF            call 0x1b5
00000245  A808              test al,0x8
00000247  740F              jz 0x258
00000249  FF7608            push word [bp+0x8]
0000024C  8B56FC            mov dx,[bp-0x4]
0000024F  2BD1              sub dx,cx
00000251  52                push dx
00000252  FF76FE            push word [bp-0x2]
00000255  E85DFF            call 0x1b5
00000258  A810              test al,0x10
0000025A  7412              jz 0x26e
0000025C  FF7608            push word [bp+0x8]
0000025F  8B5606            mov dx,[bp+0x6]
00000262  03D1              add dx,cx
00000264  52                push dx
00000265  8B5604            mov dx,[bp+0x4]
00000268  03D1              add dx,cx
0000026A  52                push dx
0000026B  E847FF            call 0x1b5
0000026E  A820              test al,0x20
00000270  7412              jz 0x284
00000272  FF7608            push word [bp+0x8]
00000275  8B5606            mov dx,[bp+0x6]
00000278  03D1              add dx,cx
0000027A  52                push dx
0000027B  8B56FE            mov dx,[bp-0x2]
0000027E  2BD1              sub dx,cx
00000280  52                push dx
00000281  E831FF            call 0x1b5
00000284  A840              test al,0x40
00000286  7415              jz 0x29d
00000288  FF7608            push word [bp+0x8]
0000028B  8B5606            mov dx,[bp+0x6]
0000028E  03D1              add dx,cx
00000290  52                push dx
00000291  8B56FE            mov dx,[bp-0x2]
00000294  035604            add dx,[bp+0x4]
00000297  D1EA              shr dx,1
00000299  52                push dx
0000029A  E818FF            call 0x1b5
0000029D  A880              test al,0x80
0000029F  7415              jz 0x2b6
000002A1  FF7608            push word [bp+0x8]
000002A4  8B56FC            mov dx,[bp-0x4]
000002A7  035606            add dx,[bp+0x6]
000002AA  D1EA              shr dx,1
000002AC  52                push dx
000002AD  8B5604            mov dx,[bp+0x4]
000002B0  03D1              add dx,cx
000002B2  52                push dx
000002B3  E8FFFE            call 0x1b5
000002B6  2B4E08            sub cx,[bp+0x8]
000002B9  7203              jc 0x2be
000002BB  E94AFF            jmp 0x208
000002BE  E937FF            jmp 0x1f8
000002C1  55                push bp
000002C2  8BEC              mov bp,sp
000002C4  50                push ax
000002C5  53                push bx
000002C6  51                push cx
000002C7  52                push dx
000002C8  06                push es
000002C9  8B4606            mov ax,[bp+0x6]
000002CC  BB5000            mov bx,0x50
000002CF  F7E3              mul bx
000002D1  8BD8              mov bx,ax
000002D3  B103              mov cl,0x3
000002D5  8B4604            mov ax,[bp+0x4]
000002D8  D3E8              shr ax,cl
000002DA  03D8              add bx,ax
000002DC  8B4E04            mov cx,[bp+0x4]
000002DF  83E107            and cx,byte +0x7
000002E2  80F107            xor cl,0x7
000002E5  B800A0            mov ax,0xa000
000002E8  8EC0              mov es,ax
000002EA  268A17            mov dl,[es:bx]
000002ED  D2CA              ror dl,cl
000002EF  80CA01            or dl,0x1
000002F2  D2C2              rol dl,cl
000002F4  268817            mov [es:bx],dl
000002F7  07                pop es
000002F8  5A                pop dx
000002F9  59                pop cx
000002FA  5B                pop bx
000002FB  58                pop ax
000002FC  5D                pop bp
000002FD  C20400            ret 0x4
