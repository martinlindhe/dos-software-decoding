00000100  8CCA              mov dx,cs
00000102  2E8916D602        mov [cs:0x2d6],dx
00000107  B430              mov ah,0x30
00000109  CD21              int 0x21
0000010B  8B2E0200          mov bp,[0x2]
0000010F  8B1E2C00          mov bx,[0x2c]
00000113  8EDA              mov ds,dx
00000115  A30960            mov [0x6009],ax
00000118  8C060760          mov [0x6007],es
0000011C  891E0360          mov [0x6003],bx
00000120  892E2360          mov [0x6023],bp
00000124  C7060D60FFFF      mov word [0x600d],0xffff
0000012A  E81301            call word 0x240
0000012D  C43E0160          les di,[0x6001]
00000131  8BC7              mov ax,di
00000133  8BD8              mov bx,ax
00000135  B9FF7F            mov cx,0x7fff
00000138  26813D3837        cmp word [es:di],0x3738
0000013D  7519              jnz 0x158
0000013F  268B5502          mov dx,[es:di+0x2]
00000143  80FA3D            cmp dl,0x3d
00000146  7510              jnz 0x158
00000148  80E6DF            and dh,0xdf
0000014B  FF060D60          inc word [0x600d]
0000014F  80FE59            cmp dh,0x59
00000152  7504              jnz 0x158
00000154  FF060D60          inc word [0x600d]
00000158  F2AE              repne scasb
0000015A  E361              jcxz 0x1bd
0000015C  43                inc bx
0000015D  263805            cmp [es:di],al
00000160  75D6              jnz 0x138
00000162  80CD80            or ch,0x80
00000165  F7D9              neg cx
00000167  890E0160          mov [0x6001],cx
0000016B  B90100            mov cx,0x1
0000016E  D3E3              shl bx,cl
00000170  83C308            add bx,byte +0x8
00000173  83E3F8            and bx,byte -0x8
00000176  891E0560          mov [0x6005],bx
0000017A  8CDA              mov dx,ds
0000017C  2BEA              sub bp,dx
0000017E  8B3E7461          mov di,[0x6174]
00000182  81FF0002          cmp di,0x200
00000186  7307              jnc 0x18f
00000188  BF0002            mov di,0x200
0000018B  893E7461          mov [0x6174],di
0000018F  81C7C498          add di,0x98c4
00000193  7228              jc 0x1bd
00000195  033E7A65          add di,[0x657a]
00000199  7222              jc 0x1bd
0000019B  B104              mov cl,0x4
0000019D  D3EF              shr di,cl
0000019F  47                inc di
000001A0  3BEF              cmp bp,di
000001A2  7219              jc 0x1bd
000001A4  833E746100        cmp word [0x6174],byte +0x0
000001A9  7407              jz 0x1b2
000001AB  833E7A6500        cmp word [0x657a],byte +0x0
000001B0  750E              jnz 0x1c0
000001B2  BF0010            mov di,0x1000
000001B5  3BEF              cmp bp,di
000001B7  7707              ja 0x1c0
000001B9  8BFD              mov di,bp
000001BB  EB03              jmp short 0x1c0
000001BD  E90001            jmp word 0x2c0
000001C0  8BDF              mov bx,di
000001C2  03DA              add bx,dx
000001C4  891E1B60          mov [0x601b],bx
000001C8  891E1F60          mov [0x601f],bx
000001CC  A10760            mov ax,[0x6007]
000001CF  2BD8              sub bx,ax
000001D1  8EC0              mov es,ax
000001D3  B44A              mov ah,0x4a
000001D5  57                push di
000001D6  CD21              int 0x21
000001D8  5F                pop di
000001D9  D3E7              shl di,cl
000001DB  FA                cli
000001DC  8ED2              mov ss,dx
000001DE  8BE7              mov sp,di
000001E0  FB                sti
000001E1  33C0              xor ax,ax
000001E3  2E8E06D602        mov es,[cs:0x2d6]
000001E8  BF9A69            mov di,0x699a
000001EB  B9C498            mov cx,0x98c4
000001EE  2BCF              sub cx,di
000001F0  F3AA              rep stosb
000001F2  0E                push cs
000001F3  FF168C69          call word [0x698c]
000001F7  E8C324            call word 0x26bd
000001FA  E8AB25            call word 0x27a8
000001FD  B400              mov ah,0x0
000001FF  CD1A              int 0x1a
00000201  89160F60          mov [0x600f],dx
00000205  890E1160          mov [0x6011],cx
00000209  FF169069          call word [0x6990]
0000020D  FF36FF5F          push word [0x5fff]
00000211  FF36FD5F          push word [0x5ffd]
00000215  FF36FB5F          push word [0x5ffb]
00000219  E8D121            call word 0x23ed
0000021C  50                push ax
0000021D  E86824            call word 0x2688
00000220  2E8E1ED602        mov ds,[cs:0x2d6]
00000225  E85B00            call word 0x283
00000228  0E                push cs
00000229  FF168E69          call word [0x698e]
0000022D  8BEC              mov bp,sp
0000022F  B44C              mov ah,0x4c
00000231  8A4602            mov al,[bp+0x2]
00000234  CD21              int 0x21
00000236  B90E00            mov cx,0xe
00000239  90                nop
0000023A  BABF5F            mov dx,0x5fbf
0000023D  E98700            jmp word 0x2c7
00000240  1E                push ds
00000241  B80035            mov ax,0x3500
00000244  CD21              int 0x21
00000246  891EEB5F          mov [0x5feb],bx
0000024A  8C06ED5F          mov [0x5fed],es
0000024E  B80435            mov ax,0x3504
00000251  CD21              int 0x21
00000253  891EEF5F          mov [0x5fef],bx
00000257  8C06F15F          mov [0x5ff1],es
0000025B  B80535            mov ax,0x3505
0000025E  CD21              int 0x21
00000260  891EF35F          mov [0x5ff3],bx
00000264  8C06F55F          mov [0x5ff5],es
00000268  B80635            mov ax,0x3506
0000026B  CD21              int 0x21
0000026D  891EF75F          mov [0x5ff7],bx
00000271  8C06F95F          mov [0x5ff9],es
00000275  B80025            mov ax,0x2500
00000278  8CCA              mov dx,cs
0000027A  8EDA              mov ds,dx
0000027C  BA3602            mov dx,0x236
0000027F  CD21              int 0x21
00000281  1F                pop ds
00000282  C3                ret
00000283  1E                push ds
00000284  B80025            mov ax,0x2500
00000287  C516EB5F          lds dx,[0x5feb]
0000028B  CD21              int 0x21
0000028D  1F                pop ds
0000028E  1E                push ds
0000028F  B80425            mov ax,0x2504
00000292  C516EF5F          lds dx,[0x5fef]
00000296  CD21              int 0x21
00000298  1F                pop ds
00000299  1E                push ds
0000029A  B80525            mov ax,0x2505
0000029D  C516F35F          lds dx,[0x5ff3]
000002A1  CD21              int 0x21
000002A3  1F                pop ds
000002A4  1E                push ds
000002A5  B80625            mov ax,0x2506
000002A8  C516F75F          lds dx,[0x5ff7]
000002AC  CD21              int 0x21
000002AE  1F                pop ds
000002AF  C3                ret
000002B0  C7060D600000      mov word [0x600d],0x0
000002B6  CB                retf
000002B7  C3                ret
000002B8  B440              mov ah,0x40
000002BA  BB0200            mov bx,0x2
000002BD  CD21              int 0x21
000002BF  C3                ret
000002C0  B91E00            mov cx,0x1e
000002C3  90                nop
000002C4  BACD5F            mov dx,0x5fcd
000002C7  2E8E1ED602        mov ds,[cs:0x2d6]
000002CC  E8E9FF            call word 0x2b8
000002CF  B80300            mov ax,0x3
000002D2  50                push ax
000002D3  E84AFF            call word 0x220
000002D6  0000              add [bx+si],al
000002D8  55                push bp
000002D9  8BEC              mov bp,sp
000002DB  83EC04            sub sp,byte +0x4
000002DE  56                push si
000002DF  57                push di
000002E0  C746FE0000        mov word [bp-0x2],0x0
000002E5  C746FC0807        mov word [bp-0x4],0x708
000002EA  BE0F00            mov si,0xf
000002ED  E9B200            jmp word 0x3a2
000002F0  8B46FC            mov ax,[bp-0x4]
000002F3  B90D00            mov cx,0xd
000002F6  BB0803            mov bx,0x308
000002F9  2E3B07            cmp ax,[cs:bx]
000002FC  7406              jz 0x304
000002FE  43                inc bx
000002FF  43                inc bx
00000300  E2F7              loop 0x2f9
00000302  EB5F              jmp short 0x363
00000304  2EFF671A          jmp word [cs:bx+0x1a]
00000308  0300              add ax,[bx+si]
0000030A  050008            add ax,0x800
0000030D  000C              add [si],cl
0000030F  0014              add [si],dl
00000311  0021              add [bx+di],ah
00000313  0037              add [bx],dh
00000315  005A00            add [bp+si+0x0],bl
00000318  94                xchg ax,sp
00000319  00F4              add ah,dh
0000031B  00930199          add [bp+di-0x66ff],dl
0000031F  024804            add cl,[bx+si+0x4]
00000322  60                pushaw
00000323  035D03            add bx,[di+0x3]
00000326  5A                pop dx
00000327  035703            add dx,[bx+0x3]
0000032A  54                push sp
0000032B  035103            add dx,[bx+di+0x3]
0000032E  4E                dec si
0000032F  034B03            add cx,[bp+di+0x3]
00000332  48                dec ax
00000333  034503            add ax,[di+0x3]
00000336  42                inc dx
00000337  033F              add di,[bx]
00000339  033C              add di,[si]
0000033B  03BE0E00          add di,[bp+0xe]
0000033F  BE0D00            mov si,0xd
00000342  BE0C00            mov si,0xc
00000345  BE0B00            mov si,0xb
00000348  BE0A00            mov si,0xa
0000034B  BE0900            mov si,0x9
0000034E  BE0800            mov si,0x8
00000351  BE0700            mov si,0x7
00000354  BE0600            mov si,0x6
00000357  BE0500            mov si,0x5
0000035A  BE0400            mov si,0x4
0000035D  BE0300            mov si,0x3
00000360  BE0200            mov si,0x2
00000363  33FF              xor di,di
00000365  EB2D              jmp short 0x394
00000367  B80100            mov ax,0x1
0000036A  50                push ax
0000036B  E8384A            call word 0x4da6
0000036E  59                pop cx
0000036F  833E0C6100        cmp word [0x610c],byte +0x0
00000374  741D              jz 0x393
00000376  8B56FE            mov dx,[bp-0x2]
00000379  8B46FC            mov ax,[bp-0x4]
0000037C  050A00            add ax,0xa
0000037F  83D200            adc dx,byte +0x0
00000382  52                push dx
00000383  50                push ax
00000384  E82F50            call word 0x53b6
00000387  99                cwd
00000388  52                push dx
00000389  50                push ax
0000038A  0E                push cs
0000038B  E8264D            call word 0x50b4
0000038E  50                push ax
0000038F  E8EA53            call word 0x577c
00000392  59                pop cx
00000393  47                inc di
00000394  83FF0F            cmp di,byte +0xf
00000397  7CCE              jl 0x367
00000399  8BC6              mov ax,si
0000039B  99                cwd
0000039C  2946FC            sub [bp-0x4],ax
0000039F  1956FE            sbb [bp-0x2],dx
000003A2  837EFE00          cmp word [bp-0x2],byte +0x0
000003A6  7E03              jng 0x3ab
000003A8  E945FF            jmp word 0x2f0
000003AB  7509              jnz 0x3b6
000003AD  837EFC00          cmp word [bp-0x4],byte +0x0
000003B1  7603              jna 0x3b6
000003B3  E93AFF            jmp word 0x2f0
000003B6  E8EF53            call word 0x57a8
000003B9  5F                pop di
000003BA  5E                pop si
000003BB  8BE5              mov sp,bp
000003BD  5D                pop bp
000003BE  C3                ret
000003BF  55                push bp
000003C0  8BEC              mov bp,sp
000003C2  83EC04            sub sp,byte +0x4
000003C5  56                push si
000003C6  57                push di
000003C7  BFE803            mov di,0x3e8
000003CA  BE0100            mov si,0x1
000003CD  C746FC0000        mov word [bp-0x4],0x0
000003D2  C746FE0000        mov word [bp-0x2],0x0
000003D7  E8CE53            call word 0x57a8
000003DA  833E589800        cmp word [0x9858],byte +0x0
000003DF  743F              jz 0x420
000003E1  833E0E6100        cmp word [0x610e],byte +0x0
000003E6  7520              jnz 0x408
000003E8  C7060E616400      mov word [0x610e],0x64
000003EE  EB18              jmp short 0x408
000003F0  833E0C6100        cmp word [0x610c],byte +0x0
000003F5  7411              jz 0x408
000003F7  8B46FE            mov ax,[bp-0x2]
000003FA  F7260E61          mul word [0x610e]
000003FE  BA1027            mov dx,0x2710
00000401  2BD0              sub dx,ax
00000403  52                push dx
00000404  E87553            call word 0x577c
00000407  59                pop cx
00000408  8346FE05          add word [bp-0x2],byte +0x5
0000040C  8B46FE            mov ax,[bp-0x2]
0000040F  3D6400            cmp ax,0x64
00000412  7CDC              jl 0x3f0
00000414  FF0E0E61          dec word [0x610e]
00000418  7506              jnz 0x420
0000041A  C70658980000      mov word [0x9858],0x0
00000420  833EB89700        cmp word [0x97b8],byte +0x0
00000425  741C              jz 0x443
00000427  EB0F              jmp short 0x438
00000429  833E0C6100        cmp word [0x610c],byte +0x0
0000042E  7408              jz 0x438
00000430  FF36B897          push word [0x97b8]
00000434  E84553            call word 0x577c
00000437  59                pop cx
00000438  8B46FC            mov ax,[bp-0x4]
0000043B  FF46FC            inc word [bp-0x4]
0000043E  3D7D00            cmp ax,0x7d
00000441  7CE6              jl 0x429
00000443  C706B8970000      mov word [0x97b8],0x0
00000449  833EBA9700        cmp word [0x97ba],byte +0x0
0000044E  7503              jnz 0x453
00000450  E97400            jmp word 0x4c7
00000453  833EBA9701        cmp word [0x97ba],byte +0x1
00000458  750C              jnz 0x466
0000045A  C70610613200      mov word [0x6110],0x32
00000460  C706BA970200      mov word [0x97ba],0x2
00000466  833E0C6100        cmp word [0x610c],byte +0x0
0000046B  7440              jz 0x4ad
0000046D  A11061            mov ax,[0x6110]
00000470  BB0200            mov bx,0x2
00000473  99                cwd
00000474  F7FB              idiv bx
00000476  8BC2              mov ax,dx
00000478  BA3200            mov dx,0x32
0000047B  F7E2              mul dx
0000047D  50                push ax
0000047E  A11061            mov ax,[0x6110]
00000481  BB0300            mov bx,0x3
00000484  99                cwd
00000485  F7FB              idiv bx
00000487  8BC2              mov ax,dx
00000489  BA6400            mov dx,0x64
0000048C  F7E2              mul dx
0000048E  5A                pop dx
0000048F  03D0              add dx,ax
00000491  A11061            mov ax,[0x6110]
00000494  BB0400            mov bx,0x4
00000497  52                push dx
00000498  99                cwd
00000499  F7FB              idiv bx
0000049B  8BC2              mov ax,dx
0000049D  BAC800            mov dx,0xc8
000004A0  F7E2              mul dx
000004A2  5A                pop dx
000004A3  03D0              add dx,ax
000004A5  83C20A            add dx,byte +0xa
000004A8  52                push dx
000004A9  E8D052            call word 0x577c
000004AC  59                pop cx
000004AD  33F6              xor si,si
000004AF  EB01              jmp short 0x4b2
000004B1  46                inc si
000004B2  3B361061          cmp si,[0x6110]
000004B6  7CF9              jl 0x4b1
000004B8  FF0E1061          dec word [0x6110]
000004BC  7509              jnz 0x4c7
000004BE  C706BA970000      mov word [0x97ba],0x0
000004C4  E8E152            call word 0x57a8
000004C7  833E4E7B00        cmp word [0x7b4e],byte +0x0
000004CC  7426              jz 0x4f4
000004CE  EB11              jmp short 0x4e1
000004D0  833E0C6100        cmp word [0x610c],byte +0x0
000004D5  740A              jz 0x4e1
000004D7  B87017            mov ax,0x1770
000004DA  2BC7              sub ax,di
000004DC  50                push ax
000004DD  E89C52            call word 0x577c
000004E0  59                pop cx
000004E1  83C70A            add di,byte +0xa
000004E4  8BC7              mov ax,di
000004E6  3DA00F            cmp ax,0xfa0
000004E9  7CE5              jl 0x4d0
000004EB  C7064E7B0000      mov word [0x7b4e],0x0
000004F1  E8B452            call word 0x57a8
000004F4  5F                pop di
000004F5  5E                pop si
000004F6  8BE5              mov sp,bp
000004F8  5D                pop bp
000004F9  C3                ret
000004FA  55                push bp
000004FB  8BEC              mov bp,sp
000004FD  83EC28            sub sp,byte +0x28
00000500  56                push si
00000501  16                push ss
00000502  8D46D8            lea ax,[bp-0x28]
00000505  50                push ax
00000506  1E                push ds
00000507  B81261            mov ax,0x6112
0000050A  50                push ax
0000050B  B91400            mov cx,0x14
0000050E  0E                push cs
0000050F  E8CB4E            call word 0x53dd
00000512  16                push ss
00000513  8D46EC            lea ax,[bp-0x14]
00000516  50                push ax
00000517  1E                push ds
00000518  B82661            mov ax,0x6126
0000051B  50                push ax
0000051C  B91400            mov cx,0x14
0000051F  0E                push cs
00000520  E8BA4E            call word 0x53dd
00000523  33F6              xor si,si
00000525  EB26              jmp short 0x54d
00000527  833E0C6100        cmp word [0x610c],byte +0x0
0000052C  740F              jz 0x53d
0000052E  8BDE              mov bx,si
00000530  D1E3              shl bx,1
00000532  8D46D8            lea ax,[bp-0x28]
00000535  03D8              add bx,ax
00000537  FF37              push word [bx]
00000539  E84052            call word 0x577c
0000053C  59                pop cx
0000053D  8BDE              mov bx,si
0000053F  D1E3              shl bx,1
00000541  8D46EC            lea ax,[bp-0x14]
00000544  03D8              add bx,ax
00000546  FF37              push word [bx]
00000548  E85B48            call word 0x4da6
0000054B  59                pop cx
0000054C  46                inc si
0000054D  8BDE              mov bx,si
0000054F  D1E3              shl bx,1
00000551  8D46D8            lea ax,[bp-0x28]
00000554  03D8              add bx,ax
00000556  833F00            cmp word [bx],byte +0x0
00000559  7DCC              jnl 0x527
0000055B  E84A52            call word 0x57a8
0000055E  5E                pop si
0000055F  8BE5              mov sp,bp
00000561  5D                pop bp
00000562  C3                ret
00000563  56                push si
00000564  BE8813            mov si,0x1388
00000567  EB38              jmp short 0x5a1
00000569  833E0C6100        cmp word [0x610c],byte +0x0
0000056E  7405              jz 0x575
00000570  56                push si
00000571  E80852            call word 0x577c
00000574  59                pop cx
00000575  B80500            mov ax,0x5
00000578  50                push ax
00000579  E82A48            call word 0x4da6
0000057C  59                pop cx
0000057D  833E0C6100        cmp word [0x610c],byte +0x0
00000582  740A              jz 0x58e
00000584  B87017            mov ax,0x1770
00000587  2BC6              sub ax,si
00000589  50                push ax
0000058A  E8EF51            call word 0x577c
0000058D  59                pop cx
0000058E  B80400            mov ax,0x4
00000591  50                push ax
00000592  E81148            call word 0x4da6
00000595  59                pop cx
00000596  8BC6              mov ax,si
00000598  BB1400            mov bx,0x14
0000059B  99                cwd
0000059C  F7FB              idiv bx
0000059E  42                inc dx
0000059F  2BF2              sub si,dx
000005A1  0BF6              or si,si
000005A3  7FC4              jg 0x569
000005A5  E80052            call word 0x57a8
000005A8  5E                pop si
000005A9  C3                ret
000005AA  55                push bp
000005AB  8BEC              mov bp,sp
000005AD  83EC02            sub sp,byte +0x2
000005B0  E461              in al,0x61
000005B2  B400              mov ah,0x0
000005B4  8946FE            mov [bp-0x2],ax
000005B7  8A46FE            mov al,[bp-0x2]
000005BA  0C80              or al,0x80
000005BC  E661              out 0x61,al
000005BE  8A46FE            mov al,[bp-0x2]
000005C1  E661              out 0x61,al
000005C3  B020              mov al,0x20
000005C5  E620              out 0x20,al
000005C7  8BE5              mov sp,bp
000005C9  5D                pop bp
000005CA  C3                ret
000005CB  50                push ax
000005CC  53                push bx
000005CD  51                push cx
000005CE  52                push dx
000005CF  06                push es
000005D0  1E                push ds
000005D1  56                push si
000005D2  57                push di
000005D3  55                push bp
000005D4  2E8E1ED602        mov ds,[cs:0x2d6]
000005D9  E460              in al,0x60
000005DB  B400              mov ah,0x0
000005DD  8BF0              mov si,ax
000005DF  8BC6              mov ax,si
000005E1  258000            and ax,0x80
000005E4  F7D8              neg ax
000005E6  1BC0              sbb ax,ax
000005E8  40                inc ax
000005E9  8BDE              mov bx,si
000005EB  81E37F00          and bx,0x7f
000005EF  8887B896          mov [bx-0x6948],al
000005F3  E8B4FF            call word 0x5aa
000005F6  5D                pop bp
000005F7  5F                pop di
000005F8  5E                pop si
000005F9  1F                pop ds
000005FA  07                pop es
000005FB  5A                pop dx
000005FC  59                pop cx
000005FD  5B                pop bx
000005FE  58                pop ax
000005FF  CF                iretw
00000600  50                push ax
00000601  53                push bx
00000602  51                push cx
00000603  52                push dx
00000604  06                push es
00000605  1E                push ds
00000606  56                push si
00000607  57                push di
00000608  55                push bp
00000609  2E8E1ED602        mov ds,[cs:0x2d6]
0000060E  E8AE00            call word 0x6bf
00000611  9C                pushfw
00000612  FF1EA669          call word far [0x69a6]
00000616  5D                pop bp
00000617  5F                pop di
00000618  5E                pop si
00000619  1F                pop ds
0000061A  07                pop es
0000061B  5A                pop dx
0000061C  59                pop cx
0000061D  5B                pop bx
0000061E  58                pop ax
0000061F  CF                iretw
00000620  50                push ax
00000621  53                push bx
00000622  51                push cx
00000623  52                push dx
00000624  06                push es
00000625  1E                push ds
00000626  56                push si
00000627  57                push di
00000628  55                push bp
00000629  2E8E1ED602        mov ds,[cs:0x2d6]
0000062E  E88E00            call word 0x6bf
00000631  9C                pushfw
00000632  FF1E9A69          call word far [0x699a]
00000636  5D                pop bp
00000637  5F                pop di
00000638  5E                pop si
00000639  1F                pop ds
0000063A  07                pop es
0000063B  5A                pop dx
0000063C  59                pop cx
0000063D  5B                pop bx
0000063E  58                pop ax
0000063F  CF                iretw
00000640  56                push si
00000641  33F6              xor si,si
00000643  EB06              jmp short 0x64b
00000645  C684B89600        mov byte [si-0x6948],0x0
0000064A  46                inc si
0000064B  81FE0001          cmp si,0x100
0000064F  7CF4              jl 0x645
00000651  B81B00            mov ax,0x1b
00000654  50                push ax
00000655  E88B48            call word 0x4ee3
00000658  59                pop cx
00000659  8916A869          mov [0x69a8],dx
0000065D  A3A669            mov [0x69a6],ax
00000660  C7063C610100      mov word [0x613c],0x1
00000666  0E                push cs
00000667  B80006            mov ax,0x600
0000066A  50                push ax
0000066B  B81B00            mov ax,0x1b
0000066E  50                push ax
0000066F  E88348            call word 0x4ef5
00000672  83C406            add sp,byte +0x6
00000675  B82300            mov ax,0x23
00000678  50                push ax
00000679  E86748            call word 0x4ee3
0000067C  59                pop cx
0000067D  89169C69          mov [0x699c],dx
00000681  A39A69            mov [0x699a],ax
00000684  C7063E610100      mov word [0x613e],0x1
0000068A  0E                push cs
0000068B  B82006            mov ax,0x620
0000068E  50                push ax
0000068F  B82300            mov ax,0x23
00000692  50                push ax
00000693  E85F48            call word 0x4ef5
00000696  83C406            add sp,byte +0x6
00000699  B80900            mov ax,0x9
0000069C  50                push ax
0000069D  E84348            call word 0x4ee3
000006A0  59                pop cx
000006A1  8916A069          mov [0x69a0],dx
000006A5  A39E69            mov [0x699e],ax
000006A8  C7063A610100      mov word [0x613a],0x1
000006AE  0E                push cs
000006AF  B8CB05            mov ax,0x5cb
000006B2  50                push ax
000006B3  B80900            mov ax,0x9
000006B6  50                push ax
000006B7  E83B48            call word 0x4ef5
000006BA  83C406            add sp,byte +0x6
000006BD  5E                pop si
000006BE  C3                ret
000006BF  833E3A6100        cmp word [0x613a],byte +0x0
000006C4  7418              jz 0x6de
000006C6  FF36A069          push word [0x69a0]
000006CA  FF369E69          push word [0x699e]
000006CE  B80900            mov ax,0x9
000006D1  50                push ax
000006D2  E82048            call word 0x4ef5
000006D5  83C406            add sp,byte +0x6
000006D8  C7063A610000      mov word [0x613a],0x0
000006DE  833E3C6100        cmp word [0x613c],byte +0x0
000006E3  7418              jz 0x6fd
000006E5  FF36A869          push word [0x69a8]
000006E9  FF36A669          push word [0x69a6]
000006ED  B81B00            mov ax,0x1b
000006F0  50                push ax
000006F1  E80148            call word 0x4ef5
000006F4  83C406            add sp,byte +0x6
000006F7  C7063C610000      mov word [0x613c],0x0
000006FD  833E3E6100        cmp word [0x613e],byte +0x0
00000702  7418              jz 0x71c
00000704  FF369C69          push word [0x699c]
00000708  FF369A69          push word [0x699a]
0000070C  B82300            mov ax,0x23
0000070F  50                push ax
00000710  E8E247            call word 0x4ef5
00000713  83C406            add sp,byte +0x6
00000716  C7063E610000      mov word [0x613e],0x0
0000071C  C3                ret
0000071D  55                push bp
0000071E  8BEC              mov bp,sp
00000720  83EC10            sub sp,byte +0x10
00000723  C746F0046F        mov word [bp-0x10],0x6f04
00000728  8D46F0            lea ax,[bp-0x10]
0000072B  50                push ax
0000072C  8D46F0            lea ax,[bp-0x10]
0000072F  50                push ax
00000730  B81000            mov ax,0x10
00000733  50                push ax
00000734  E8AF48            call word 0x4fe6
00000737  83C406            add sp,byte +0x6
0000073A  C746F40020        mov word [bp-0xc],0x2000
0000073F  C646F101          mov byte [bp-0xf],0x1
00000743  8D46F0            lea ax,[bp-0x10]
00000746  50                push ax
00000747  8D46F0            lea ax,[bp-0x10]
0000074A  50                push ax
0000074B  B81000            mov ax,0x10
0000074E  50                push ax
0000074F  E89448            call word 0x4fe6
00000752  83C406            add sp,byte +0x6
00000755  8BE5              mov sp,bp
00000757  5D                pop bp
00000758  C3                ret
00000759  55                push bp
0000075A  8BEC              mov bp,sp
0000075C  83EC10            sub sp,byte +0x10
0000075F  C746F0046F        mov word [bp-0x10],0x6f04
00000764  8D46F0            lea ax,[bp-0x10]
00000767  50                push ax
00000768  8D46F0            lea ax,[bp-0x10]
0000076B  50                push ax
0000076C  B81000            mov ax,0x10
0000076F  50                push ax
00000770  E87348            call word 0x4fe6
00000773  83C406            add sp,byte +0x6
00000776  C746F40C0B        mov word [bp-0xc],0xb0c
0000077B  C646F101          mov byte [bp-0xf],0x1
0000077F  8D46F0            lea ax,[bp-0x10]
00000782  50                push ax
00000783  8D46F0            lea ax,[bp-0x10]
00000786  50                push ax
00000787  B81000            mov ax,0x10
0000078A  50                push ax
0000078B  E85848            call word 0x4fe6
0000078E  83C406            add sp,byte +0x6
00000791  8BE5              mov sp,bp
00000793  5D                pop bp
00000794  C3                ret
00000795  B88813            mov ax,0x1388
00000798  50                push ax
00000799  E8E04F            call word 0x577c
0000079C  59                pop cx
0000079D  B89600            mov ax,0x96
000007A0  50                push ax
000007A1  E80246            call word 0x4da6
000007A4  59                pop cx
000007A5  E80050            call word 0x57a8
000007A8  C3                ret
000007A9  55                push bp
000007AA  8BEC              mov bp,sp
000007AC  E8E6FF            call word 0x795
000007AF  FF7604            push word [bp+0x4]
000007B2  B87661            mov ax,0x6176
000007B5  50                push ax
000007B6  E80F33            call word 0x3ac8
000007B9  8BE5              mov sp,bp
000007BB  33C0              xor ax,ax
000007BD  50                push ax
000007BE  E88E57            call word 0x5f4f
000007C1  59                pop cx
000007C2  5D                pop bp
000007C3  C3                ret
000007C4  55                push bp
000007C5  8BEC              mov bp,sp
000007C7  83EC28            sub sp,byte +0x28
000007CA  56                push si
000007CB  16                push ss
000007CC  8D46D8            lea ax,[bp-0x28]
000007CF  50                push ax
000007D0  1E                push ds
000007D1  B84061            mov ax,0x6140
000007D4  50                push ax
000007D5  B91400            mov cx,0x14
000007D8  0E                push cs
000007D9  E8014C            call word 0x53dd
000007DC  16                push ss
000007DD  8D46EC            lea ax,[bp-0x14]
000007E0  50                push ax
000007E1  1E                push ds
000007E2  B85461            mov ax,0x6154
000007E5  50                push ax
000007E6  B91400            mov cx,0x14
000007E9  0E                push cs
000007EA  E8F04B            call word 0x53dd
000007ED  33F6              xor si,si
000007EF  EB26              jmp short 0x817
000007F1  833E0C6100        cmp word [0x610c],byte +0x0
000007F6  740F              jz 0x807
000007F8  8BDE              mov bx,si
000007FA  D1E3              shl bx,1
000007FC  8D46D8            lea ax,[bp-0x28]
000007FF  03D8              add bx,ax
00000801  FF37              push word [bx]
00000803  E8764F            call word 0x577c
00000806  59                pop cx
00000807  8BDE              mov bx,si
00000809  D1E3              shl bx,1
0000080B  8D46EC            lea ax,[bp-0x14]
0000080E  03D8              add bx,ax
00000810  FF37              push word [bx]
00000812  E89145            call word 0x4da6
00000815  59                pop cx
00000816  46                inc si
00000817  8BDE              mov bx,si
00000819  D1E3              shl bx,1
0000081B  8D46D8            lea ax,[bp-0x28]
0000081E  03D8              add bx,ax
00000820  833F00            cmp word [bx],byte +0x0
00000823  7DCC              jnl 0x7f1
00000825  E8804F            call word 0x57a8
00000828  5E                pop si
00000829  8BE5              mov sp,bp
0000082B  5D                pop bp
0000082C  C3                ret
0000082D  56                push si
0000082E  57                push di
0000082F  33FF              xor di,di
00000831  BE9600            mov si,0x96
00000834  EB0A              jmp short 0x840
00000836  8A84C297          mov al,[si-0x683e]
0000083A  98                cbw
0000083B  23C6              and ax,si
0000083D  03F8              add di,ax
0000083F  4E                dec si
00000840  0BF6              or si,si
00000842  7FF2              jg 0x836
00000844  8BC7              mov ax,di
00000846  35FFFF            xor ax,0xffff
00000849  5F                pop di
0000084A  5E                pop si
0000084B  C3                ret
0000084C  55                push bp
0000084D  8BEC              mov bp,sp
0000084F  56                push si
00000850  33F6              xor si,si
00000852  EB0A              jmp short 0x85e
00000854  8B5E04            mov bx,[bp+0x4]
00000857  03DE              add bx,si
00000859  C6470420          mov byte [bx+0x4],0x20
0000085D  46                inc si
0000085E  83FE0A            cmp si,byte +0xa
00000861  7CF1              jl 0x854
00000863  8B5E04            mov bx,[bp+0x4]
00000866  C6470E00          mov byte [bx+0xe],0x0
0000086A  5E                pop si
0000086B  5D                pop bp
0000086C  C3                ret
0000086D  55                push bp
0000086E  8BEC              mov bp,sp
00000870  83EC02            sub sp,byte +0x2
00000873  56                push si
00000874  57                push di
00000875  33F6              xor si,si
00000877  EB0A              jmp short 0x883
00000879  33C0              xor ax,ax
0000087B  50                push ax
0000087C  E8D056            call word 0x5f4f
0000087F  59                pop cx
00000880  E812FF            call word 0x795
00000883  B80100            mov ax,0x1
00000886  50                push ax
00000887  E8C556            call word 0x5f4f
0000088A  59                pop cx
0000088B  0BC0              or ax,ax
0000088D  75EA              jnz 0x879
0000088F  FF7604            push word [bp+0x4]
00000892  E8B7FF            call word 0x84c
00000895  59                pop cx
00000896  B89561            mov ax,0x6195
00000899  50                push ax
0000089A  E82B32            call word 0x3ac8
0000089D  59                pop cx
0000089E  EB65              jmp short 0x905
000008A0  BF0100            mov di,0x1
000008A3  837EFE20          cmp word [bp-0x2],byte +0x20
000008A7  7D2E              jnl 0x8d7
000008A9  837EFE08          cmp word [bp-0x2],byte +0x8
000008AD  7518              jnz 0x8c7
000008AF  0BF6              or si,si
000008B1  7E14              jng 0x8c7
000008B3  B8C561            mov ax,0x61c5
000008B6  50                push ax
000008B7  E80E32            call word 0x3ac8
000008BA  59                pop cx
000008BB  4E                dec si
000008BC  8B5E04            mov bx,[bp+0x4]
000008BF  03DE              add bx,si
000008C1  C6470420          mov byte [bx+0x4],0x20
000008C5  EB33              jmp short 0x8fa
000008C7  E8CBFE            call word 0x795
000008CA  33FF              xor di,di
000008CC  837EFE00          cmp word [bp-0x2],byte +0x0
000008D0  7528              jnz 0x8fa
000008D2  E8A03D            call word 0x4675
000008D5  EB23              jmp short 0x8fa
000008D7  837EFE7E          cmp word [bp-0x2],byte +0x7e
000008DB  7D18              jnl 0x8f5
000008DD  83FE0A            cmp si,byte +0xa
000008E0  7C05              jl 0x8e7
000008E2  BE0A00            mov si,0xa
000008E5  EB0E              jmp short 0x8f5
000008E7  8A46FE            mov al,[bp-0x2]
000008EA  8B5E04            mov bx,[bp+0x4]
000008ED  03DE              add bx,si
000008EF  884704            mov [bx+0x4],al
000008F2  46                inc si
000008F3  EB05              jmp short 0x8fa
000008F5  33FF              xor di,di
000008F7  E89BFE            call word 0x795
000008FA  0BFF              or di,di
000008FC  7407              jz 0x905
000008FE  FF76FE            push word [bp-0x2]
00000901  E80B49            call word 0x520f
00000904  59                pop cx
00000905  E86D3D            call word 0x4675
00000908  98                cbw
00000909  8946FE            mov [bp-0x2],ax
0000090C  3D0D00            cmp ax,0xd
0000090F  7403              jz 0x914
00000911  E98CFF            jmp word 0x8a0
00000914  5F                pop di
00000915  5E                pop si
00000916  8BE5              mov sp,bp
00000918  5D                pop bp
00000919  C3                ret
0000091A  56                push si
0000091B  33F6              xor si,si
0000091D  EB39              jmp short 0x958
0000091F  8BC6              mov ax,si
00000921  BA0F00            mov dx,0xf
00000924  F7E2              mul dx
00000926  8BD8              mov bx,ax
00000928  C787C4970000      mov word [bx-0x683c],0x0
0000092E  C787C2970000      mov word [bx-0x683e],0x0
00000934  8BC6              mov ax,si
00000936  BA0F00            mov dx,0xf
00000939  F7E2              mul dx
0000093B  05C297            add ax,0x97c2
0000093E  50                push ax
0000093F  E80AFF            call word 0x84c
00000942  59                pop cx
00000943  B8C861            mov ax,0x61c8
00000946  50                push ax
00000947  8BC6              mov ax,si
00000949  BA0F00            mov dx,0xf
0000094C  F7E2              mul dx
0000094E  05C697            add ax,0x97c6
00000951  50                push ax
00000952  E8C42F            call word 0x3919
00000955  59                pop cx
00000956  59                pop cx
00000957  46                inc si
00000958  83FE0A            cmp si,byte +0xa
0000095B  7CC2              jl 0x91f
0000095D  5E                pop si
0000095E  C3                ret
0000095F  55                push bp
00000960  8BEC              mov bp,sp
00000962  8B5E04            mov bx,[bp+0x4]
00000965  8B5702            mov dx,[bx+0x2]
00000968  8B07              mov ax,[bx]
0000096A  8B5E06            mov bx,[bp+0x6]
0000096D  3B5702            cmp dx,[bx+0x2]
00000970  720B              jc 0x97d
00000972  7704              ja 0x978
00000974  3B07              cmp ax,[bx]
00000976  7605              jna 0x97d
00000978  B80100            mov ax,0x1
0000097B  EB1D              jmp short 0x99a
0000097D  8B5E04            mov bx,[bp+0x4]
00000980  8B5702            mov dx,[bx+0x2]
00000983  8B07              mov ax,[bx]
00000985  8B5E06            mov bx,[bp+0x6]
00000988  3B5702            cmp dx,[bx+0x2]
0000098B  770B              ja 0x998
0000098D  7204              jc 0x993
0000098F  3B07              cmp ax,[bx]
00000991  7305              jnc 0x998
00000993  B8FFFF            mov ax,0xffff
00000996  EB02              jmp short 0x99a
00000998  33C0              xor ax,ax
0000099A  5D                pop bp
0000099B  C3                ret
0000099C  55                push bp
0000099D  8BEC              mov bp,sp
0000099F  56                push si
000009A0  B8D261            mov ax,0x61d2
000009A3  50                push ax
000009A4  FF7604            push word [bp+0x4]
000009A7  E8DC21            call word 0x2b86
000009AA  59                pop cx
000009AB  59                pop cx
000009AC  8BF0              mov si,ax
000009AE  8BC6              mov ax,si
000009B0  0BC0              or ax,ax
000009B2  7445              jz 0x9f9
000009B4  E876FE            call word 0x82d
000009B7  50                push ax
000009B8  B8D561            mov ax,0x61d5
000009BB  50                push ax
000009BC  56                push si
000009BD  E8A839            call word 0x4368
000009C0  83C406            add sp,byte +0x6
000009C3  3DFFFF            cmp ax,0xffff
000009C6  750A              jnz 0x9d2
000009C8  B8D961            mov ax,0x61d9
000009CB  50                push ax
000009CC  E8DAFD            call word 0x7a9
000009CF  59                pop cx
000009D0  EB20              jmp short 0x9f2
000009D2  56                push si
000009D3  B80A00            mov ax,0xa
000009D6  50                push ax
000009D7  B80F00            mov ax,0xf
000009DA  50                push ax
000009DB  B8C297            mov ax,0x97c2
000009DE  50                push ax
000009DF  E8DE2A            call word 0x34c0
000009E2  83C408            add sp,byte +0x8
000009E5  3D0A00            cmp ax,0xa
000009E8  7408              jz 0x9f2
000009EA  B8F761            mov ax,0x61f7
000009ED  50                push ax
000009EE  E8B8FD            call word 0x7a9
000009F1  59                pop cx
000009F2  56                push si
000009F3  E87D27            call word 0x3173
000009F6  59                pop cx
000009F7  EB08              jmp short 0xa01
000009F9  B81D62            mov ax,0x621d
000009FC  50                push ax
000009FD  E8A9FD            call word 0x7a9
00000A00  59                pop cx
00000A01  5E                pop si
00000A02  5D                pop bp
00000A03  C3                ret
00000A04  55                push bp
00000A05  8BEC              mov bp,sp
00000A07  83EC02            sub sp,byte +0x2
00000A0A  56                push si
00000A0B  C746FE0000        mov word [bp-0x2],0x0
00000A10  B84162            mov ax,0x6241
00000A13  50                push ax
00000A14  FF7604            push word [bp+0x4]
00000A17  E86C21            call word 0x2b86
00000A1A  59                pop cx
00000A1B  59                pop cx
00000A1C  8BF0              mov si,ax
00000A1E  8BC6              mov ax,si
00000A20  0BC0              or ax,ax
00000A22  745A              jz 0xa7e
00000A24  8D46FE            lea ax,[bp-0x2]
00000A27  50                push ax
00000A28  B8D561            mov ax,0x61d5
00000A2B  50                push ax
00000A2C  56                push si
00000A2D  E85039            call word 0x4380
00000A30  83C406            add sp,byte +0x6
00000A33  3D0100            cmp ax,0x1
00000A36  740A              jz 0xa42
00000A38  B84462            mov ax,0x6244
00000A3B  50                push ax
00000A3C  E86AFD            call word 0x7a9
00000A3F  59                pop cx
00000A40  EB32              jmp short 0xa74
00000A42  56                push si
00000A43  B80A00            mov ax,0xa
00000A46  50                push ax
00000A47  B80F00            mov ax,0xf
00000A4A  50                push ax
00000A4B  B8C297            mov ax,0x97c2
00000A4E  50                push ax
00000A4F  E81F29            call word 0x3371
00000A52  83C408            add sp,byte +0x8
00000A55  3D0A00            cmp ax,0xa
00000A58  740A              jz 0xa64
00000A5A  B86362            mov ax,0x6263
00000A5D  50                push ax
00000A5E  E848FD            call word 0x7a9
00000A61  59                pop cx
00000A62  EB10              jmp short 0xa74
00000A64  E8C6FD            call word 0x82d
00000A67  3B46FE            cmp ax,[bp-0x2]
00000A6A  740B              jz 0xa77
00000A6C  B88C62            mov ax,0x628c
00000A6F  50                push ax
00000A70  E836FD            call word 0x7a9
00000A73  59                pop cx
00000A74  E8A3FE            call word 0x91a
00000A77  56                push si
00000A78  E8F826            call word 0x3173
00000A7B  59                pop cx
00000A7C  EB03              jmp short 0xa81
00000A7E  E899FE            call word 0x91a
00000A81  5E                pop si
00000A82  8BE5              mov sp,bp
00000A84  5D                pop bp
00000A85  C3                ret
00000A86  55                push bp
00000A87  8BEC              mov bp,sp
00000A89  83EC02            sub sp,byte +0x2
00000A8C  56                push si
00000A8D  57                push di
00000A8E  8B7E04            mov di,[bp+0x4]
00000A91  33F6              xor si,si
00000A93  57                push di
00000A94  E8342E            call word 0x38cb
00000A97  59                pop cx
00000A98  8946FE            mov [bp-0x2],ax
00000A9B  EB30              jmp short 0xacd
00000A9D  8BDE              mov bx,si
00000A9F  8A01              mov al,[bx+di]
00000AA1  98                cbw
00000AA2  3D0900            cmp ax,0x9
00000AA5  7407              jz 0xaae
00000AA7  3D0A00            cmp ax,0xa
00000AAA  740C              jz 0xab8
00000AAC  EB14              jmp short 0xac2
00000AAE  B8A762            mov ax,0x62a7
00000AB1  50                push ax
00000AB2  E81330            call word 0x3ac8
00000AB5  59                pop cx
00000AB6  EB14              jmp short 0xacc
00000AB8  B89361            mov ax,0x6193
00000ABB  50                push ax
00000ABC  E80930            call word 0x3ac8
00000ABF  59                pop cx
00000AC0  EB0A              jmp short 0xacc
00000AC2  8BDE              mov bx,si
00000AC4  8A01              mov al,[bx+di]
00000AC6  98                cbw
00000AC7  50                push ax
00000AC8  E84447            call word 0x520f
00000ACB  59                pop cx
00000ACC  46                inc si
00000ACD  3B76FE            cmp si,[bp-0x2]
00000AD0  7CCB              jl 0xa9d
00000AD2  5F                pop di
00000AD3  5E                pop si
00000AD4  8BE5              mov sp,bp
00000AD6  5D                pop bp
00000AD7  C3                ret
00000AD8  55                push bp
00000AD9  8BEC              mov bp,sp
00000ADB  83EC64            sub sp,byte +0x64
00000ADE  56                push si
00000ADF  57                push di
00000AE0  BF0200            mov di,0x2
00000AE3  E837FC            call word 0x71d
00000AE6  B8A962            mov ax,0x62a9
00000AE9  50                push ax
00000AEA  E8DB2F            call word 0x3ac8
00000AED  59                pop cx
00000AEE  B8DD62            mov ax,0x62dd
00000AF1  50                push ax
00000AF2  E8D32F            call word 0x3ac8
00000AF5  59                pop cx
00000AF6  BE0900            mov si,0x9
00000AF9  EB4E              jmp short 0xb49
00000AFB  E83354            call word 0x5f31
00000AFE  253000            and ax,0x30
00000B01  3D2000            cmp ax,0x20
00000B04  7510              jnz 0xb16
00000B06  8BC7              mov ax,di
00000B08  47                inc di
00000B09  50                push ax
00000B0A  E8D039            call word 0x44dd
00000B0D  59                pop cx
00000B0E  83FF0E            cmp di,byte +0xe
00000B11  7E03              jng 0xb16
00000B13  BF0200            mov di,0x2
00000B16  8BC6              mov ax,si
00000B18  BA0F00            mov dx,0xf
00000B1B  F7E2              mul dx
00000B1D  8BD8              mov bx,ax
00000B1F  FFB7C497          push word [bx-0x683c]
00000B23  FFB7C297          push word [bx-0x683e]
00000B27  8BC6              mov ax,si
00000B29  BA0F00            mov dx,0xf
00000B2C  F7E2              mul dx
00000B2E  05C697            add ax,0x97c6
00000B31  50                push ax
00000B32  B81E63            mov ax,0x631e
00000B35  50                push ax
00000B36  8D469C            lea ax,[bp-0x64]
00000B39  50                push ax
00000B3A  E89A4C            call word 0x57d7
00000B3D  83C40A            add sp,byte +0xa
00000B40  8D469C            lea ax,[bp-0x64]
00000B43  50                push ax
00000B44  E83FFF            call word 0xa86
00000B47  59                pop cx
00000B48  4E                dec si
00000B49  0BF6              or si,si
00000B4B  7DAE              jnl 0xafb
00000B4D  E8E153            call word 0x5f31
00000B50  253000            and ax,0x30
00000B53  3D2000            cmp ax,0x20
00000B56  7508              jnz 0xb60
00000B58  B80F00            mov ax,0xf
00000B5B  50                push ax
00000B5C  E87E39            call word 0x44dd
00000B5F  59                pop cx
00000B60  B83163            mov ax,0x6331
00000B63  50                push ax
00000B64  E8612F            call word 0x3ac8
00000B67  59                pop cx
00000B68  5F                pop di
00000B69  5E                pop si
00000B6A  8BE5              mov sp,bp
00000B6C  5D                pop bp
00000B6D  C3                ret
00000B6E  55                push bp
00000B6F  8BEC              mov bp,sp
00000B71  56                push si
00000B72  33F6              xor si,si
00000B74  EB66              jmp short 0xbdc
00000B76  8BC6              mov ax,si
00000B78  BA0F00            mov dx,0xf
00000B7B  F7E2              mul dx
00000B7D  8BD8              mov bx,ax
00000B7F  8B97C497          mov dx,[bx-0x683c]
00000B83  8B87C297          mov ax,[bx-0x683e]
00000B87  3B5606            cmp dx,[bp+0x6]
00000B8A  774F              ja 0xbdb
00000B8C  7205              jc 0xb93
00000B8E  3B4604            cmp ax,[bp+0x4]
00000B91  7348              jnc 0xbdb
00000B93  E82EFC            call word 0x7c4
00000B96  8B5606            mov dx,[bp+0x6]
00000B99  8B4604            mov ax,[bp+0x4]
00000B9C  52                push dx
00000B9D  50                push ax
00000B9E  8BC6              mov ax,si
00000BA0  BA0F00            mov dx,0xf
00000BA3  F7E2              mul dx
00000BA5  8BD8              mov bx,ax
00000BA7  58                pop ax
00000BA8  5A                pop dx
00000BA9  8997C497          mov [bx-0x683c],dx
00000BAD  8987C297          mov [bx-0x683e],ax
00000BB1  E8A5FB            call word 0x759
00000BB4  8BC6              mov ax,si
00000BB6  BA0F00            mov dx,0xf
00000BB9  F7E2              mul dx
00000BBB  05C297            add ax,0x97c2
00000BBE  50                push ax
00000BBF  E8ABFC            call word 0x86d
00000BC2  59                pop cx
00000BC3  B85F09            mov ax,0x95f
00000BC6  50                push ax
00000BC7  B80F00            mov ax,0xf
00000BCA  50                push ax
00000BCB  B80A00            mov ax,0xa
00000BCE  50                push ax
00000BCF  B8C297            mov ax,0x97c2
00000BD2  50                push ax
00000BD3  E8AF47            call word 0x5385
00000BD6  83C408            add sp,byte +0x8
00000BD9  EB06              jmp short 0xbe1
00000BDB  46                inc si
00000BDC  83FE0A            cmp si,byte +0xa
00000BDF  7C95              jl 0xb76
00000BE1  5E                pop si
00000BE2  5D                pop bp
00000BE3  C3                ret
00000BE4  55                push bp
00000BE5  8BEC              mov bp,sp
00000BE7  56                push si
00000BE8  8B7604            mov si,[bp+0x4]
00000BEB  817E06B000        cmp word [bp+0x6],0xb0
00000BF0  7503              jnz 0xbf5
00000BF2  E8B34B            call word 0x57a8
00000BF5  81FED007          cmp si,0x7d0
00000BF9  7D2F              jnl 0xc2a
00000BFB  0BF6              or si,si
00000BFD  7C2B              jl 0xc2a
00000BFF  8A4606            mov al,[bp+0x6]
00000C02  8BD6              mov dx,si
00000C04  D1E2              shl dx,1
00000C06  C41EB096          les bx,[0x96b0]
00000C0A  03DA              add bx,dx
00000C0C  268807            mov [es:bx],al
00000C0F  8B5E06            mov bx,[bp+0x6]
00000C12  D1E3              shl bx,1
00000C14  8A87AA69          mov al,[bx+0x69aa]
00000C18  0A06D98E          or al,[0x8ed9]
00000C1C  8BD6              mov dx,si
00000C1E  D1E2              shl dx,1
00000C20  C41EB096          les bx,[0x96b0]
00000C24  03DA              add bx,dx
00000C26  26884701          mov [es:bx+0x1],al
00000C2A  5E                pop si
00000C2B  5D                pop bp
00000C2C  C3                ret
00000C2D  E80153            call word 0x5f31
00000C30  253000            and ax,0x30
00000C33  3D2000            cmp ax,0x20
00000C36  7507              jnz 0xc3f
00000C38  C606D98E08        mov byte [0x8ed9],0x8
00000C3D  EB05              jmp short 0xc44
00000C3F  C606D98E0E        mov byte [0x8ed9],0xe
00000C44  C3                ret
00000C45  E8E952            call word 0x5f31
00000C48  253000            and ax,0x30
00000C4B  3D2000            cmp ax,0x20
00000C4E  7507              jnz 0xc57
00000C50  C606D98E00        mov byte [0x8ed9],0x0
00000C55  EB05              jmp short 0xc5c
00000C57  C606D98E07        mov byte [0x8ed9],0x7
00000C5C  C3                ret
00000C5D  55                push bp
00000C5E  8BEC              mov bp,sp
00000C60  56                push si
00000C61  8B7604            mov si,[bp+0x4]
00000C64  81FED007          cmp si,0x7d0
00000C68  7D24              jnl 0xc8e
00000C6A  0BF6              or si,si
00000C6C  7C20              jl 0xc8e
00000C6E  8BC6              mov ax,si
00000C70  BB5000            mov bx,0x50
00000C73  99                cwd
00000C74  F7FB              idiv bx
00000C76  40                inc ax
00000C77  50                push ax
00000C78  8BC6              mov ax,si
00000C7A  BB5000            mov bx,0x50
00000C7D  99                cwd
00000C7E  F7FB              idiv bx
00000C80  42                inc dx
00000C81  52                push dx
00000C82  E88142            call word 0x4f06
00000C85  59                pop cx
00000C86  59                pop cx
00000C87  FF7606            push word [bp+0x6]
00000C8A  E88245            call word 0x520f
00000C8D  59                pop cx
00000C8E  5E                pop si
00000C8F  5D                pop bp
00000C90  C3                ret
00000C91  55                push bp
00000C92  8BEC              mov bp,sp
00000C94  56                push si
00000C95  57                push di
00000C96  33F6              xor si,si
00000C98  FF7606            push word [bp+0x6]
00000C9B  E82D2C            call word 0x38cb
00000C9E  59                pop cx
00000C9F  8BF8              mov di,ax
00000CA1  EB19              jmp short 0xcbc
00000CA3  8BC6              mov ax,si
00000CA5  46                inc si
00000CA6  8BD8              mov bx,ax
00000CA8  035E06            add bx,[bp+0x6]
00000CAB  8A07              mov al,[bx]
00000CAD  98                cbw
00000CAE  50                push ax
00000CAF  8B4604            mov ax,[bp+0x4]
00000CB2  FF4604            inc word [bp+0x4]
00000CB5  50                push ax
00000CB6  FF16AC96          call word [0x96ac]
00000CBA  59                pop cx
00000CBB  59                pop cx
00000CBC  3BF7              cmp si,di
00000CBE  7CE3              jl 0xca3
00000CC0  5F                pop di
00000CC1  5E                pop si
00000CC2  5D                pop bp
00000CC3  C3                ret
00000CC4  55                push bp
00000CC5  8BEC              mov bp,sp
00000CC7  81ECF000          sub sp,0xf0
00000CCB  56                push si
00000CCC  33F6              xor si,si
00000CCE  B85A63            mov ax,0x635a
00000CD1  50                push ax
00000CD2  8D8610FF          lea ax,[bp-0xf0]
00000CD6  50                push ax
00000CD7  E83F2C            call word 0x3919
00000CDA  59                pop cx
00000CDB  59                pop cx
00000CDC  B86663            mov ax,0x6366
00000CDF  50                push ax
00000CE0  8D8624FF          lea ax,[bp-0xdc]
00000CE4  50                push ax
00000CE5  E8312C            call word 0x3919
00000CE8  59                pop cx
00000CE9  59                pop cx
00000CEA  E9BE00            jmp word 0xdab
00000CED  FF16BC97          call word [0x97bc]
00000CF1  B80A00            mov ax,0xa
00000CF4  50                push ax
00000CF5  8D8638FF          lea ax,[bp-0xc8]
00000CF9  50                push ax
00000CFA  FF7606            push word [bp+0x6]
00000CFD  FF7604            push word [bp+0x4]
00000D00  E8B62A            call word 0x37b9
00000D03  83C408            add sp,byte +0x8
00000D06  B87263            mov ax,0x6372
00000D09  50                push ax
00000D0A  8D469C            lea ax,[bp-0x64]
00000D0D  50                push ax
00000D0E  E8082C            call word 0x3919
00000D11  59                pop cx
00000D12  59                pop cx
00000D13  8D469C            lea ax,[bp-0x64]
00000D16  50                push ax
00000D17  E8B12B            call word 0x38cb
00000D1A  59                pop cx
00000D1B  8BD8              mov bx,ax
00000D1D  53                push bx
00000D1E  8D8638FF          lea ax,[bp-0xc8]
00000D22  50                push ax
00000D23  E8A52B            call word 0x38cb
00000D26  59                pop cx
00000D27  5B                pop bx
00000D28  2BD8              sub bx,ax
00000D2A  8D469C            lea ax,[bp-0x64]
00000D2D  03D8              add bx,ax
00000D2F  C60700            mov byte [bx],0x0
00000D32  8D8638FF          lea ax,[bp-0xc8]
00000D36  50                push ax
00000D37  8D469C            lea ax,[bp-0x64]
00000D3A  50                push ax
00000D3B  E8512B            call word 0x388f
00000D3E  59                pop cx
00000D3F  59                pop cx
00000D40  8BC6              mov ax,si
00000D42  BA1400            mov dx,0x14
00000D45  F7E2              mul dx
00000D47  8D9610FF          lea dx,[bp-0xf0]
00000D4B  03C2              add ax,dx
00000D4D  50                push ax
00000D4E  8D8638FF          lea ax,[bp-0xc8]
00000D52  50                push ax
00000D53  E8C32B            call word 0x3919
00000D56  59                pop cx
00000D57  59                pop cx
00000D58  8D469C            lea ax,[bp-0x64]
00000D5B  50                push ax
00000D5C  8D8638FF          lea ax,[bp-0xc8]
00000D60  50                push ax
00000D61  E82B2B            call word 0x388f
00000D64  59                pop cx
00000D65  59                pop cx
00000D66  8D8638FF          lea ax,[bp-0xc8]
00000D6A  50                push ax
00000D6B  8D8638FF          lea ax,[bp-0xc8]
00000D6F  50                push ax
00000D70  E8582B            call word 0x38cb
00000D73  59                pop cx
00000D74  50                push ax
00000D75  B85000            mov ax,0x50
00000D78  5A                pop dx
00000D79  2BC2              sub ax,dx
00000D7B  05FEFF            add ax,0xfffe
00000D7E  F7E6              mul si
00000D80  058007            add ax,0x780
00000D83  50                push ax
00000D84  E80AFF            call word 0xc91
00000D87  59                pop cx
00000D88  59                pop cx
00000D89  8B5606            mov dx,[bp+0x6]
00000D8C  8B4604            mov ax,[bp+0x4]
00000D8F  3B164B98          cmp dx,[0x984b]
00000D93  7715              ja 0xdaa
00000D95  7206              jc 0xd9d
00000D97  3B064998          cmp ax,[0x9849]
00000D9B  730D              jnc 0xdaa
00000D9D  8B164B98          mov dx,[0x984b]
00000DA1  A14998            mov ax,[0x9849]
00000DA4  895606            mov [bp+0x6],dx
00000DA7  894604            mov [bp+0x4],ax
00000DAA  46                inc si
00000DAB  83FE02            cmp si,byte +0x2
00000DAE  7D03              jnl 0xdb3
00000DB0  E93AFF            jmp word 0xced
00000DB3  5E                pop si
00000DB4  8BE5              mov sp,bp
00000DB6  5D                pop bp
00000DB7  C3                ret
00000DB8  55                push bp
00000DB9  8BEC              mov bp,sp
00000DBB  56                push si
00000DBC  8B7604            mov si,[bp+0x4]
00000DBF  8B4606            mov ax,[bp+0x6]
00000DC2  8B5C0C            mov bx,[si+0xc]
00000DC5  8907              mov [bx],ax
00000DC7  8B4408            mov ax,[si+0x8]
00000DCA  8B5C0C            mov bx,[si+0xc]
00000DCD  894702            mov [bx+0x2],ax
00000DD0  B80800            mov ax,0x8
00000DD3  50                push ax
00000DD4  E8201B            call word 0x28f7
00000DD7  59                pop cx
00000DD8  8B5C0C            mov bx,[si+0xc]
00000DDB  894704            mov [bx+0x4],ax
00000DDE  8B440C            mov ax,[si+0xc]
00000DE1  8B5C0C            mov bx,[si+0xc]
00000DE4  8B5F04            mov bx,[bx+0x4]
00000DE7  894706            mov [bx+0x6],ax
00000DEA  8B5C0C            mov bx,[si+0xc]
00000DED  8B4704            mov ax,[bx+0x4]
00000DF0  89440C            mov [si+0xc],ax
00000DF3  8B5C0C            mov bx,[si+0xc]
00000DF6  C707E0FF          mov word [bx],0xffe0
00000DFA  8B4408            mov ax,[si+0x8]
00000DFD  8B5C0C            mov bx,[si+0xc]
00000E00  894702            mov [bx+0x2],ax
00000E03  5E                pop si
00000E04  5D                pop bp
00000E05  C3                ret
00000E06  55                push bp
00000E07  8BEC              mov bp,sp
00000E09  56                push si
00000E0A  57                push di
00000E0B  8B7604            mov si,[bp+0x4]
00000E0E  8B7C02            mov di,[si+0x2]
00000E11  037C06            add di,[si+0x6]
00000E14  8B5C0A            mov bx,[si+0xa]
00000E17  8B07              mov ax,[bx]
00000E19  3BC7              cmp ax,di
00000E1B  7527              jnz 0xe44
00000E1D  8B7C02            mov di,[si+0x2]
00000E20  8B5C0A            mov bx,[si+0xa]
00000E23  037F02            add di,[bx+0x2]
00000E26  8B4406            mov ax,[si+0x6]
00000E29  BAFFFF            mov dx,0xffff
00000E2C  F7E2              mul dx
00000E2E  894406            mov [si+0x6],ax
00000E31  8B5C0A            mov bx,[si+0xa]
00000E34  8B4704            mov ax,[bx+0x4]
00000E37  89440A            mov [si+0xa],ax
00000E3A  8B5C0A            mov bx,[si+0xa]
00000E3D  FF7706            push word [bx+0x6]
00000E40  E8FE34            call word 0x4341
00000E43  59                pop cx
00000E44  897C02            mov [si+0x2],di
00000E47  5F                pop di
00000E48  5E                pop si
00000E49  5D                pop bp
00000E4A  C3                ret
00000E4B  55                push bp
00000E4C  8BEC              mov bp,sp
00000E4E  56                push si
00000E4F  57                push di
00000E50  8B7E06            mov di,[bp+0x6]
00000E53  837E0400          cmp word [bp+0x4],byte +0x0
00000E57  7D03              jnl 0xe5c
00000E59  E9B900            jmp word 0xf15
00000E5C  817E04D007        cmp word [bp+0x4],0x7d0
00000E61  7C03              jl 0xe66
00000E63  E9AF00            jmp word 0xf15
00000E66  8B5E04            mov bx,[bp+0x4]
00000E69  D1E3              shl bx,1
00000E6B  89BF397F          mov [bx+0x7f39],di
00000E6F  0BFF              or di,di
00000E71  7D54              jnl 0xec7
00000E73  8BC7              mov ax,di
00000E75  99                cwd
00000E76  33C2              xor ax,dx
00000E78  2BC2              sub ax,dx
00000E7A  8BD8              mov bx,ax
00000E7C  D1E3              shl bx,1
00000E7E  8BB7AA69          mov si,[bx+0x69aa]
00000E82  E8AC50            call word 0x5f31
00000E85  253000            and ax,0x30
00000E88  3D2000            cmp ax,0x20
00000E8B  7512              jnz 0xe9f
00000E8D  837E0800          cmp word [bp+0x8],byte +0x0
00000E91  740C              jz 0xe9f
00000E93  0BF6              or si,si
00000E95  7E08              jng 0xe9f
00000E97  83FE08            cmp si,byte +0x8
00000E9A  7D03              jnl 0xe9f
00000E9C  83C608            add si,byte +0x8
00000E9F  56                push si
00000EA0  E83A36            call word 0x44dd
00000EA3  59                pop cx
00000EA4  837E0800          cmp word [bp+0x8],byte +0x0
00000EA8  7406              jz 0xeb0
00000EAA  FF16BC97          call word [0x97bc]
00000EAE  EB04              jmp short 0xeb4
00000EB0  FF16BE97          call word [0x97be]
00000EB4  8BC7              mov ax,di
00000EB6  99                cwd
00000EB7  33C2              xor ax,dx
00000EB9  2BC2              sub ax,dx
00000EBB  50                push ax
00000EBC  FF7604            push word [bp+0x4]
00000EBF  FF16AC96          call word [0x96ac]
00000EC3  59                pop cx
00000EC4  59                pop cx
00000EC5  EB4E              jmp short 0xf15
00000EC7  8A85507B          mov al,[di+0x7b50]
00000ECB  98                cbw
00000ECC  8BD8              mov bx,ax
00000ECE  D1E3              shl bx,1
00000ED0  8BB7AA69          mov si,[bx+0x69aa]
00000ED4  E85A50            call word 0x5f31
00000ED7  253000            and ax,0x30
00000EDA  3D2000            cmp ax,0x20
00000EDD  7512              jnz 0xef1
00000EDF  837E0800          cmp word [bp+0x8],byte +0x0
00000EE3  740C              jz 0xef1
00000EE5  0BF6              or si,si
00000EE7  7E08              jng 0xef1
00000EE9  83FE08            cmp si,byte +0x8
00000EEC  7D03              jnl 0xef1
00000EEE  83C608            add si,byte +0x8
00000EF1  56                push si
00000EF2  E8E835            call word 0x44dd
00000EF5  59                pop cx
00000EF6  837E0800          cmp word [bp+0x8],byte +0x0
00000EFA  7406              jz 0xf02
00000EFC  FF16BC97          call word [0x97bc]
00000F00  EB04              jmp short 0xf06
00000F02  FF16BE97          call word [0x97be]
00000F06  8A85507B          mov al,[di+0x7b50]
00000F0A  98                cbw
00000F0B  50                push ax
00000F0C  FF7604            push word [bp+0x4]
00000F0F  FF16AC96          call word [0x96ac]
00000F13  59                pop cx
00000F14  59                pop cx
00000F15  FF36C097          push word [0x97c0]
00000F19  E8C135            call word 0x44dd
00000F1C  59                pop cx
00000F1D  FF16BE97          call word [0x97be]
00000F21  5F                pop di
00000F22  5E                pop si
00000F23  5D                pop bp
00000F24  C3                ret
00000F25  55                push bp
00000F26  8BEC              mov bp,sp
00000F28  837E0600          cmp word [bp+0x6],byte +0x0
00000F2C  7E04              jng 0xf32
00000F2E  33C0              xor ax,ax
00000F30  EB03              jmp short 0xf35
00000F32  B80100            mov ax,0x1
00000F35  014604            add [bp+0x4],ax
00000F38  8B4604            mov ax,[bp+0x4]
00000F3B  BB5000            mov bx,0x50
00000F3E  99                cwd
00000F3F  F7FB              idiv bx
00000F41  F7DA              neg dx
00000F43  1BD2              sbb dx,dx
00000F45  42                inc dx
00000F46  8BC2              mov ax,dx
00000F48  5D                pop bp
00000F49  C3                ret
00000F4A  55                push bp
00000F4B  8BEC              mov bp,sp
00000F4D  8B5E04            mov bx,[bp+0x4]
00000F50  D1E3              shl bx,1
00000F52  8B87397F          mov ax,[bx+0x7f39]
00000F56  5D                pop bp
00000F57  C3                ret
00000F58  55                push bp
00000F59  8BEC              mov bp,sp
00000F5B  FF7606            push word [bp+0x6]
00000F5E  8B5E04            mov bx,[bp+0x4]
00000F61  FF770E            push word [bx+0xe]
00000F64  8B5E04            mov bx,[bp+0x4]
00000F67  FF37              push word [bx]
00000F69  E8DFFE            call word 0xe4b
00000F6C  8BE5              mov sp,bp
00000F6E  5D                pop bp
00000F6F  C3                ret
00000F70  55                push bp
00000F71  8BEC              mov bp,sp
00000F73  33C0              xor ax,ax
00000F75  50                push ax
00000F76  B8E0FF            mov ax,0xffe0
00000F79  50                push ax
00000F7A  8B5E04            mov bx,[bp+0x4]
00000F7D  FF7702            push word [bx+0x2]
00000F80  E8C8FE            call word 0xe4b
00000F83  8BE5              mov sp,bp
00000F85  5D                pop bp
00000F86  C3                ret
00000F87  56                push si
00000F88  57                push di
00000F89  EB6E              jmp short 0xff9
00000F8B  33F6              xor si,si
00000F8D  EB01              jmp short 0xf90
00000F8F  46                inc si
00000F90  8BDE              mov bx,si
00000F92  D1E3              shl bx,1
00000F94  83BFDA8E00        cmp word [bx-0x7126],byte +0x0
00000F99  75F4              jnz 0xf8f
00000F9B  8B1EAA6B          mov bx,[0x6baa]
00000F9F  4B                dec bx
00000FA0  D1E3              shl bx,1
00000FA2  8B87DA8E          mov ax,[bx-0x7126]
00000FA6  8BDE              mov bx,si
00000FA8  D1E3              shl bx,1
00000FAA  8987DA8E          mov [bx-0x7126],ax
00000FAE  33FF              xor di,di
00000FB0  EB1A              jmp short 0xfcc
00000FB2  8BDF              mov bx,di
00000FB4  D1E3              shl bx,1
00000FB6  8B87397F          mov ax,[bx+0x7f39]
00000FBA  8B16AA6B          mov dx,[0x6baa]
00000FBE  4A                dec dx
00000FBF  3BC2              cmp ax,dx
00000FC1  7508              jnz 0xfcb
00000FC3  8BDF              mov bx,di
00000FC5  D1E3              shl bx,1
00000FC7  89B7397F          mov [bx+0x7f39],si
00000FCB  47                inc di
00000FCC  81FF7F07          cmp di,0x77f
00000FD0  7EE0              jng 0xfb2
00000FD2  8BDE              mov bx,si
00000FD4  D1E3              shl bx,1
00000FD6  8B9FDA8E          mov bx,[bx-0x7126]
00000FDA  89770E            mov [bx+0xe],si
00000FDD  8B1EAA6B          mov bx,[0x6baa]
00000FE1  8A874F7B          mov al,[bx+0x7b4f]
00000FE5  8884507B          mov [si+0x7b50],al
00000FE9  FF0EAA6B          dec word [0x6baa]
00000FED  8B1EAA6B          mov bx,[0x6baa]
00000FF1  D1E3              shl bx,1
00000FF3  C787DA8E0000      mov word [bx-0x7126],0x0
00000FF9  A16A61            mov ax,[0x616a]
00000FFC  3B06AA6B          cmp ax,[0x6baa]
00001000  7D03              jnl 0x1005
00001002  E986FF            jmp word 0xf8b
00001005  5F                pop di
00001006  5E                pop si
00001007  C3                ret
00001008  55                push bp
00001009  8BEC              mov bp,sp
0000100B  83EC04            sub sp,byte +0x4
0000100E  56                push si
0000100F  57                push di
00001010  8B7604            mov si,[bp+0x4]
00001013  C746FE0000        mov word [bp-0x2],0x0
00001018  33FF              xor di,di
0000101A  8B04              mov ax,[si]
0000101C  BB5000            mov bx,0x50
0000101F  99                cwd
00001020  F7FB              idiv bx
00001022  3D1700            cmp ax,0x17
00001025  7515              jnz 0x103c
00001027  837C0850          cmp word [si+0x8],byte +0x50
0000102B  750F              jnz 0x103c
0000102D  C74408B0FF        mov word [si+0x8],0xffb0
00001032  8B5C0C            mov bx,[si+0xc]
00001035  C74702B0FF        mov word [bx+0x2],0xffb0
0000103A  EB20              jmp short 0x105c
0000103C  8B04              mov ax,[si]
0000103E  BB5000            mov bx,0x50
00001041  99                cwd
00001042  F7FB              idiv bx
00001044  3D0F00            cmp ax,0xf
00001047  7513              jnz 0x105c
00001049  837C08B0          cmp word [si+0x8],byte -0x50
0000104D  750D              jnz 0x105c
0000104F  C744085000        mov word [si+0x8],0x50
00001054  8B5C0C            mov bx,[si+0xc]
00001057  C747025000        mov word [bx+0x2],0x50
0000105C  8B4404            mov ax,[si+0x4]
0000105F  99                cwd
00001060  33C2              xor ax,dx
00001062  2BC2              sub ax,dx
00001064  3D0100            cmp ax,0x1
00001067  7E17              jng 0x1080
00001069  8B4404            mov ax,[si+0x4]
0000106C  BB0200            mov bx,0x2
0000106F  99                cwd
00001070  F7FB              idiv bx
00001072  894404            mov [si+0x4],ax
00001075  8B04              mov ax,[si]
00001077  034404            add ax,[si+0x4]
0000107A  8946FC            mov [bp-0x4],ax
0000107D  BF0100            mov di,0x1
00001080  33C0              xor ax,ax
00001082  50                push ax
00001083  56                push si
00001084  E8D1FE            call word 0xf58
00001087  59                pop cx
00001088  59                pop cx
00001089  8B04              mov ax,[si]
0000108B  034404            add ax,[si+0x4]
0000108E  8946FC            mov [bp-0x4],ax
00001091  0BFF              or di,di
00001093  751A              jnz 0x10af
00001095  FF7404            push word [si+0x4]
00001098  FF76FC            push word [bp-0x4]
0000109B  E887FE            call word 0xf25
0000109E  59                pop cx
0000109F  59                pop cx
000010A0  8BF8              mov di,ax
000010A2  0BFF              or di,di
000010A4  7509              jnz 0x10af
000010A6  FF76FC            push word [bp-0x4]
000010A9  E89EFE            call word 0xf4a
000010AC  59                pop cx
000010AD  8BF8              mov di,ax
000010AF  8BC7              mov ax,di
000010B1  3DE0FF            cmp ax,0xffe0
000010B4  7411              jz 0x10c7
000010B6  3DE2FF            cmp ax,0xffe2
000010B9  7407              jz 0x10c2
000010BB  3DFDFF            cmp ax,0xfffd
000010BE  740F              jz 0x10cf
000010C0  EB19              jmp short 0x10db
000010C2  C746FE0100        mov word [bp-0x2],0x1
000010C7  8B46FC            mov ax,[bp-0x4]
000010CA  8904              mov [si],ax
000010CC  E98C00            jmp word 0x115b
000010CF  C746FE0100        mov word [bp-0x2],0x1
000010D4  8B46FC            mov ax,[bp-0x4]
000010D7  8904              mov [si],ax
000010D9  EB39              jmp short 0x1114
000010DB  FF76FC            push word [bp-0x4]
000010DE  56                push si
000010DF  E8D6FC            call word 0xdb8
000010E2  59                pop cx
000010E3  59                pop cx
000010E4  8B4408            mov ax,[si+0x8]
000010E7  0104              add [si],ax
000010E9  8B4404            mov ax,[si+0x4]
000010EC  BAFFFF            mov dx,0xffff
000010EF  F7E2              mul dx
000010F1  894404            mov [si+0x4],ax
000010F4  FF34              push word [si]
000010F6  E851FE            call word 0xf4a
000010F9  59                pop cx
000010FA  8BF8              mov di,ax
000010FC  8BC7              mov ax,di
000010FE  3DE0FF            cmp ax,0xffe0
00001101  7458              jz 0x115b
00001103  3DE2FF            cmp ax,0xffe2
00001106  741D              jz 0x1125
00001108  3DFDFF            cmp ax,0xfffd
0000110B  7402              jz 0x110f
0000110D  EB1D              jmp short 0x112c
0000110F  C746FE0100        mov word [bp-0x2],0x1
00001114  E89F42            call word 0x53b6
00001117  BB0F00            mov bx,0xf
0000111A  99                cwd
0000111B  F7FB              idiv bx
0000111D  83C205            add dx,byte +0x5
00001120  015412            add [si+0x12],dx
00001123  EB36              jmp short 0x115b
00001125  C746FE0100        mov word [bp-0x2],0x1
0000112A  EB2F              jmp short 0x115b
0000112C  8B5C0C            mov bx,[si+0xc]
0000112F  8B4706            mov ax,[bx+0x6]
00001132  89440C            mov [si+0xc],ax
00001135  8B5C0C            mov bx,[si+0xc]
00001138  FF7704            push word [bx+0x4]
0000113B  E80332            call word 0x4341
0000113E  59                pop cx
0000113F  8B5C0C            mov bx,[si+0xc]
00001142  C707E0FF          mov word [bx],0xffe0
00001146  8B4408            mov ax,[si+0x8]
00001149  2904              sub [si],ax
0000114B  8B4404            mov ax,[si+0x4]
0000114E  BAFFFF            mov dx,0xffff
00001151  F7E2              mul dx
00001153  894404            mov [si+0x4],ax
00001156  C746FE0200        mov word [bp-0x2],0x2
0000115B  B80100            mov ax,0x1
0000115E  50                push ax
0000115F  56                push si
00001160  E8F5FD            call word 0xf58
00001163  59                pop cx
00001164  59                pop cx
00001165  837EFE00          cmp word [bp-0x2],byte +0x0
00001169  7512              jnz 0x117d
0000116B  837C1200          cmp word [si+0x12],byte +0x0
0000116F  7F0C              jg 0x117d
00001171  56                push si
00001172  E8FBFD            call word 0xf70
00001175  59                pop cx
00001176  56                push si
00001177  E88CFC            call word 0xe06
0000117A  59                pop cx
0000117B  EB09              jmp short 0x1186
0000117D  837C1200          cmp word [si+0x12],byte +0x0
00001181  7E03              jng 0x1186
00001183  FF4C12            dec word [si+0x12]
00001186  5F                pop di
00001187  5E                pop si
00001188  8BE5              mov sp,bp
0000118A  5D                pop bp
0000118B  C3                ret
0000118C  C70668610000      mov word [0x6168],0x0
00001192  33C0              xor ax,ax
00001194  50                push ax
00001195  B8E0FF            mov ax,0xffe0
00001198  50                push ax
00001199  FF36AA96          push word [0x96aa]
0000119D  E8ABFC            call word 0xe4b
000011A0  83C406            add sp,byte +0x6
000011A3  C70658980100      mov word [0x9858],0x1
000011A9  C3                ret
000011AA  56                push si
000011AB  833E686100        cmp word [0x6168],byte +0x0
000011B0  7503              jnz 0x11b5
000011B2  E9BB00            jmp word 0x1270
000011B5  A16C61            mov ax,[0x616c]
000011B8  FF066C61          inc word [0x616c]
000011BC  3B06AE96          cmp ax,[0x96ae]
000011C0  7F03              jg 0x11c5
000011C2  E90601            jmp word 0x12cb
000011C5  C7066C610000      mov word [0x616c],0x0
000011CB  E8E841            call word 0x53b6
000011CE  99                cwd
000011CF  F73E5E98          idiv word [0x985e]
000011D3  83FA01            cmp dx,byte +0x1
000011D6  7520              jnz 0x11f8
000011D8  B80100            mov ax,0x1
000011DB  50                push ax
000011DC  B8FDFF            mov ax,0xfffd
000011DF  50                push ax
000011E0  FF36AA96          push word [0x96aa]
000011E4  E864FC            call word 0xe4b
000011E7  83C406            add sp,byte +0x6
000011EA  8B1EAA96          mov bx,[0x96aa]
000011EE  D1E3              shl bx,1
000011F0  C787AE6B0A00      mov word [bx+0x6bae],0xa
000011F6  EB1D              jmp short 0x1215
000011F8  33C0              xor ax,ax
000011FA  50                push ax
000011FB  B8E0FF            mov ax,0xffe0
000011FE  50                push ax
000011FF  FF36AA96          push word [0x96aa]
00001203  E845FC            call word 0xe4b
00001206  83C406            add sp,byte +0x6
00001209  8B1EAA96          mov bx,[0x96aa]
0000120D  D1E3              shl bx,1
0000120F  C787AE6B0000      mov word [bx+0x6bae],0x0
00001215  B80100            mov ax,0x1
00001218  50                push ax
00001219  FF06AA96          inc word [0x96aa]
0000121D  A1AA96            mov ax,[0x96aa]
00001220  50                push ax
00001221  E801FD            call word 0xf25
00001224  59                pop cx
00001225  59                pop cx
00001226  0BC0              or ax,ax
00001228  7403              jz 0x122d
0000122A  E99800            jmp word 0x12c5
0000122D  FF36AA96          push word [0x96aa]
00001231  E816FD            call word 0xf4a
00001234  59                pop cx
00001235  8BF0              mov si,ax
00001237  8BC6              mov ax,si
00001239  B90400            mov cx,0x4
0000123C  BB4E12            mov bx,0x124e
0000123F  2E3B07            cmp ax,[cs:bx]
00001242  7406              jz 0x124a
00001244  43                inc bx
00001245  43                inc bx
00001246  E2F7              loop 0x123f
00001248  EB14              jmp short 0x125e
0000124A  2EFF6708          jmp word [cs:bx+0x8]
0000124E  50                push ax
0000124F  FFE0              jmp ax
00001251  FFE2              jmp dx
00001253  FF                db 0xff
00001254  FD                std
00001255  FFB112B1          push word [bx+di-0x4eee]
00001259  12B112B1          adc dh,[bx+di-0x4eee]
0000125D  12FF              adc bh,bh
0000125F  0E                push cs
00001260  AA                stosb
00001261  96                xchg ax,si
00001262  8B1EAA96          mov bx,[0x96aa]
00001266  D1E3              shl bx,1
00001268  C787AE6B0000      mov word [bx+0x6bae],0x0
0000126E  EB41              jmp short 0x12b1
00001270  FF36B696          push word [0x96b6]
00001274  FF36B496          push word [0x96b4]
00001278  E83B41            call word 0x53b6
0000127B  99                cwd
0000127C  52                push dx
0000127D  50                push ax
0000127E  0E                push cs
0000127F  E8323E            call word 0x50b4
00001282  0BD2              or dx,dx
00001284  7545              jnz 0x12cb
00001286  3D0100            cmp ax,0x1
00001289  7540              jnz 0x12cb
0000128B  C70668610100      mov word [0x6168],0x1
00001291  E82241            call word 0x53b6
00001294  BB1200            mov bx,0x12
00001297  99                cwd
00001298  F7FB              idiv bx
0000129A  8BC2              mov ax,dx
0000129C  BA5000            mov dx,0x50
0000129F  F7E2              mul dx
000012A1  A3AA96            mov [0x96aa],ax
000012A4  8B1EAA96          mov bx,[0x96aa]
000012A8  D1E3              shl bx,1
000012AA  83BF397FE0        cmp word [bx+0x7f39],byte -0x20
000012AF  7514              jnz 0x12c5
000012B1  B80100            mov ax,0x1
000012B4  50                push ax
000012B5  B8E803            mov ax,0x3e8
000012B8  50                push ax
000012B9  FF36AA96          push word [0x96aa]
000012BD  E88BFB            call word 0xe4b
000012C0  83C406            add sp,byte +0x6
000012C3  EB06              jmp short 0x12cb
000012C5  C70668610000      mov word [0x6168],0x0
000012CB  5E                pop si
000012CC  C3                ret
000012CD  55                push bp
000012CE  8BEC              mov bp,sp
000012D0  83EC04            sub sp,byte +0x4
000012D3  56                push si
000012D4  57                push di
000012D5  C746FC0000        mov word [bp-0x4],0x0
000012DA  E96A00            jmp word 0x1347
000012DD  C746FE0000        mov word [bp-0x2],0x0
000012E2  E8D140            call word 0x53b6
000012E5  BB2F07            mov bx,0x72f
000012E8  99                cwd
000012E9  F7FB              idiv bx
000012EB  8BF2              mov si,dx
000012ED  0BF6              or si,si
000012EF  7CF1              jl 0x12e2
000012F1  81FE7F07          cmp si,0x77f
000012F5  7FEB              jg 0x12e2
000012F7  56                push si
000012F8  E84FFC            call word 0xf4a
000012FB  59                pop cx
000012FC  3DE0FF            cmp ax,0xffe0
000012FF  740B              jz 0x130c
00001301  8B46FE            mov ax,[bp-0x2]
00001304  FF46FE            inc word [bp-0x2]
00001307  3D1400            cmp ax,0x14
0000130A  7CD6              jl 0x12e2
0000130C  837EFE14          cmp word [bp-0x2],byte +0x14
00001310  7D35              jnl 0x1347
00001312  BF6400            mov di,0x64
00001315  EB0F              jmp short 0x1326
00001317  833E0C6100        cmp word [0x610c],byte +0x0
0000131C  7405              jz 0x1323
0000131E  57                push di
0000131F  E85A44            call word 0x577c
00001322  59                pop cx
00001323  037E08            add di,[bp+0x8]
00001326  81FF8813          cmp di,0x1388
0000132A  7CEB              jl 0x1317
0000132C  E87944            call word 0x57a8
0000132F  B80100            mov ax,0x1
00001332  50                push ax
00001333  FF7604            push word [bp+0x4]
00001336  56                push si
00001337  E811FB            call word 0xe4b
0000133A  83C406            add sp,byte +0x6
0000133D  8BDE              mov bx,si
0000133F  D1E3              shl bx,1
00001341  C787AE6B0A00      mov word [bx+0x6bae],0xa
00001347  8B46FC            mov ax,[bp-0x4]
0000134A  FF46FC            inc word [bp-0x4]
0000134D  3B4606            cmp ax,[bp+0x6]
00001350  7D03              jnl 0x1355
00001352  E988FF            jmp word 0x12dd
00001355  5F                pop di
00001356  5E                pop si
00001357  8BE5              mov sp,bp
00001359  5D                pop bp
0000135A  C3                ret
0000135B  55                push bp
0000135C  8BEC              mov bp,sp
0000135E  56                push si
0000135F  57                push di
00001360  8B7604            mov si,[bp+0x4]
00001363  8BDE              mov bx,si
00001365  D1E3              shl bx,1
00001367  8BBFAE6B          mov di,[bx+0x6bae]
0000136B  8BDE              mov bx,si
0000136D  D1E3              shl bx,1
0000136F  FF8FAE6B          dec word [bx+0x6bae]
00001373  750E              jnz 0x1383
00001375  33C0              xor ax,ax
00001377  50                push ax
00001378  B8E0FF            mov ax,0xffe0
0000137B  50                push ax
0000137C  56                push si
0000137D  E8CBFA            call word 0xe4b
00001380  83C406            add sp,byte +0x6
00001383  B80F00            mov ax,0xf
00001386  2BC7              sub ax,di
00001388  BA6400            mov dx,0x64
0000138B  F7E2              mul dx
0000138D  A3B897            mov [0x97b8],ax
00001390  5F                pop di
00001391  5E                pop si
00001392  5D                pop bp
00001393  C3                ret
00001394  55                push bp
00001395  8BEC              mov bp,sp
00001397  83EC08            sub sp,byte +0x8
0000139A  56                push si
0000139B  57                push di
0000139C  C746FE0000        mov word [bp-0x2],0x0
000013A1  A1AA6B            mov ax,[0x6baa]
000013A4  8946F8            mov [bp-0x8],ax
000013A7  FF06AA6B          inc word [0x6baa]
000013AB  B81400            mov ax,0x14
000013AE  50                push ax
000013AF  E84515            call word 0x28f7
000013B2  59                pop cx
000013B3  8BF0              mov si,ax
000013B5  8B5EF8            mov bx,[bp-0x8]
000013B8  D1E3              shl bx,1
000013BA  89B7DA8E          mov [bx-0x7126],si
000013BE  8B46F8            mov ax,[bp-0x8]
000013C1  89440E            mov [si+0xe],ax
000013C4  8B5E04            mov bx,[bp+0x4]
000013C7  8B5F0E            mov bx,[bx+0xe]
000013CA  8A87507B          mov al,[bx+0x7b50]
000013CE  8B5EF8            mov bx,[bp-0x8]
000013D1  8887507B          mov [bx+0x7b50],al
000013D5  C744120000        mov word [si+0x12],0x0
000013DA  8B5E04            mov bx,[bp+0x4]
000013DD  8B4702            mov ax,[bx+0x2]
000013E0  894402            mov [si+0x2],ax
000013E3  8B5E04            mov bx,[bp+0x4]
000013E6  8B4706            mov ax,[bx+0x6]
000013E9  894406            mov [si+0x6],ax
000013EC  8B5E04            mov bx,[bp+0x4]
000013EF  8B470A            mov ax,[bx+0xa]
000013F2  89440A            mov [si+0xa],ax
000013F5  8B5E04            mov bx,[bp+0x4]
000013F8  8B4702            mov ax,[bx+0x2]
000013FB  8946FA            mov [bp-0x6],ax
000013FE  8B5E04            mov bx,[bp+0x4]
00001401  8B4706            mov ax,[bx+0x6]
00001404  8946FC            mov [bp-0x4],ax
00001407  8B5E04            mov bx,[bp+0x4]
0000140A  8B7F0A            mov di,[bx+0xa]
0000140D  EB52              jmp short 0x1461
0000140F  33C0              xor ax,ax
00001411  50                push ax
00001412  FF740E            push word [si+0xe]
00001415  FF76FA            push word [bp-0x6]
00001418  E830FA            call word 0xe4b
0000141B  83C406            add sp,byte +0x6
0000141E  8B46FA            mov ax,[bp-0x6]
00001421  0346FC            add ax,[bp-0x4]
00001424  3B4606            cmp ax,[bp+0x6]
00001427  7415              jz 0x143e
00001429  8B46FA            mov ax,[bp-0x6]
0000142C  0346FC            add ax,[bp-0x4]
0000142F  3B05              cmp ax,[di]
00001431  7528              jnz 0x145b
00001433  8B4502            mov ax,[di+0x2]
00001436  0346FA            add ax,[bp-0x6]
00001439  3B4606            cmp ax,[bp+0x6]
0000143C  7507              jnz 0x1445
0000143E  C746FE0100        mov word [bp-0x2],0x1
00001443  EB1C              jmp short 0x1461
00001445  8B4502            mov ax,[di+0x2]
00001448  0146FA            add [bp-0x6],ax
0000144B  8B46FC            mov ax,[bp-0x4]
0000144E  BAFFFF            mov dx,0xffff
00001451  F7E2              mul dx
00001453  8946FC            mov [bp-0x4],ax
00001456  8B7D04            mov di,[di+0x4]
00001459  EB06              jmp short 0x1461
0000145B  8B46FC            mov ax,[bp-0x4]
0000145E  0146FA            add [bp-0x6],ax
00001461  837EFE00          cmp word [bp-0x2],byte +0x0
00001465  74A8              jz 0x140f
00001467  8B46FA            mov ax,[bp-0x6]
0000146A  8904              mov [si],ax
0000146C  8B46FC            mov ax,[bp-0x4]
0000146F  D1E0              shl ax,1
00001471  894404            mov [si+0x4],ax
00001474  8B4502            mov ax,[di+0x2]
00001477  894408            mov [si+0x8],ax
0000147A  B80800            mov ax,0x8
0000147D  50                push ax
0000147E  E87614            call word 0x28f7
00001481  59                pop cx
00001482  89440C            mov [si+0xc],ax
00001485  8B4506            mov ax,[di+0x6]
00001488  8B5C0C            mov bx,[si+0xc]
0000148B  894706            mov [bx+0x6],ax
0000148E  8B5C0C            mov bx,[si+0xc]
00001491  C707E0FF          mov word [bx],0xffe0
00001495  8B4408            mov ax,[si+0x8]
00001498  8B5C0C            mov bx,[si+0xc]
0000149B  894702            mov [bx+0x2],ax
0000149E  8B46F8            mov ax,[bp-0x8]
000014A1  8B5E08            mov bx,[bp+0x8]
000014A4  8907              mov [bx],ax
000014A6  8BC7              mov ax,di
000014A8  5F                pop di
000014A9  5E                pop si
000014AA  8BE5              mov sp,bp
000014AC  5D                pop bp
000014AD  C3                ret
000014AE  55                push bp
000014AF  8BEC              mov bp,sp
000014B1  83EC04            sub sp,byte +0x4
000014B4  56                push si
000014B5  57                push di
000014B6  C746FE0000        mov word [bp-0x2],0x0
000014BB  8B5E04            mov bx,[bp+0x4]
000014BE  8B7F02            mov di,[bx+0x2]
000014C1  8B5E04            mov bx,[bp+0x4]
000014C4  8B4706            mov ax,[bx+0x6]
000014C7  8946FC            mov [bp-0x4],ax
000014CA  8B5E04            mov bx,[bp+0x4]
000014CD  8B770A            mov si,[bx+0xa]
000014D0  EB2A              jmp short 0x14fc
000014D2  3B7E06            cmp di,[bp+0x6]
000014D5  7507              jnz 0x14de
000014D7  C746FE0100        mov word [bp-0x2],0x1
000014DC  EB1E              jmp short 0x14fc
000014DE  8B04              mov ax,[si]
000014E0  3BC7              cmp ax,di
000014E2  7515              jnz 0x14f9
000014E4  8B4402            mov ax,[si+0x2]
000014E7  03F8              add di,ax
000014E9  8B46FC            mov ax,[bp-0x4]
000014EC  BAFFFF            mov dx,0xffff
000014EF  F7E2              mul dx
000014F1  8946FC            mov [bp-0x4],ax
000014F4  8B7404            mov si,[si+0x4]
000014F7  EB03              jmp short 0x14fc
000014F9  037EFC            add di,[bp-0x4]
000014FC  837EFE00          cmp word [bp-0x2],byte +0x0
00001500  74D0              jz 0x14d2
00001502  8BC7              mov ax,di
00001504  0346FC            add ax,[bp-0x4]
00001507  3B04              cmp ax,[si]
00001509  7515              jnz 0x1520
0000150B  8B4402            mov ax,[si+0x2]
0000150E  03F8              add di,ax
00001510  8B46FC            mov ax,[bp-0x4]
00001513  BAFFFF            mov dx,0xffff
00001516  F7E2              mul dx
00001518  8946FC            mov [bp-0x4],ax
0000151B  8B7404            mov si,[si+0x4]
0000151E  EB03              jmp short 0x1523
00001520  037EFC            add di,[bp-0x4]
00001523  8B5E04            mov bx,[bp+0x4]
00001526  897F02            mov [bx+0x2],di
00001529  8B46FC            mov ax,[bp-0x4]
0000152C  8B5E04            mov bx,[bp+0x4]
0000152F  894706            mov [bx+0x6],ax
00001532  8B4402            mov ax,[si+0x2]
00001535  8B5E04            mov bx,[bp+0x4]
00001538  894708            mov [bx+0x8],ax
0000153B  8B5E04            mov bx,[bp+0x4]
0000153E  89770A            mov [bx+0xa],si
00001541  5F                pop di
00001542  5E                pop si
00001543  8BE5              mov sp,bp
00001545  5D                pop bp
00001546  C3                ret
00001547  55                push bp
00001548  8BEC              mov bp,sp
0000154A  83EC02            sub sp,byte +0x2
0000154D  56                push si
0000154E  57                push di
0000154F  8B7604            mov si,[bp+0x4]
00001552  FF066A61          inc word [0x616a]
00001556  C744120000        mov word [si+0x12],0x0
0000155B  8D46FE            lea ax,[bp-0x2]
0000155E  50                push ax
0000155F  FF7606            push word [bp+0x6]
00001562  56                push si
00001563  E82EFE            call word 0x1394
00001566  83C406            add sp,byte +0x6
00001569  8BF8              mov di,ax
0000156B  8B440A            mov ax,[si+0xa]
0000156E  3BC7              cmp ax,di
00001570  7523              jnz 0x1595
00001572  FF7606            push word [bp+0x6]
00001575  56                push si
00001576  E835FF            call word 0x14ae
00001579  59                pop cx
0000157A  59                pop cx
0000157B  8B5EFE            mov bx,[bp-0x2]
0000157E  D1E3              shl bx,1
00001580  8B9FDA8E          mov bx,[bx-0x7126]
00001584  8B470C            mov ax,[bx+0xc]
00001587  8B5EFE            mov bx,[bp-0x2]
0000158A  D1E3              shl bx,1
0000158C  8B9FDA8E          mov bx,[bx-0x7126]
00001590  89470A            mov [bx+0xa],ax
00001593  EB1B              jmp short 0x15b0
00001595  FF7606            push word [bp+0x6]
00001598  56                push si
00001599  E812FF            call word 0x14ae
0000159C  59                pop cx
0000159D  59                pop cx
0000159E  8B5EFE            mov bx,[bp-0x2]
000015A1  D1E3              shl bx,1
000015A3  8B9FDA8E          mov bx,[bx-0x7126]
000015A7  8B470C            mov ax,[bx+0xc]
000015AA  8B5D06            mov bx,[di+0x6]
000015AD  894704            mov [bx+0x4],ax
000015B0  5F                pop di
000015B1  5E                pop si
000015B2  8BE5              mov sp,bp
000015B4  5D                pop bp
000015B5  C3                ret
000015B6  55                push bp
000015B7  8BEC              mov bp,sp
000015B9  83EC02            sub sp,byte +0x2
000015BC  56                push si
000015BD  57                push di
000015BE  8B5E04            mov bx,[bp+0x4]
000015C1  D1E3              shl bx,1
000015C3  8B87397F          mov ax,[bx+0x7f39]
000015C7  8946FE            mov [bp-0x2],ax
000015CA  8B5EFE            mov bx,[bp-0x2]
000015CD  D1E3              shl bx,1
000015CF  8BB7DA8E          mov si,[bx-0x7126]
000015D3  8B04              mov ax,[si]
000015D5  3B4604            cmp ax,[bp+0x4]
000015D8  7403              jz 0x15dd
000015DA  E99300            jmp word 0x1670
000015DD  8B04              mov ax,[si]
000015DF  3B4402            cmp ax,[si+0x2]
000015E2  7521              jnz 0x1605
000015E4  FF0E6A61          dec word [0x616a]
000015E8  FF740C            push word [si+0xc]
000015EB  E8532D            call word 0x4341
000015EE  59                pop cx
000015EF  56                push si
000015F0  E84E2D            call word 0x4341
000015F3  59                pop cx
000015F4  8B5EFE            mov bx,[bp-0x2]
000015F7  D1E3              shl bx,1
000015F9  C787DA8E0000      mov word [bx-0x7126],0x0
000015FF  E885F9            call word 0xf87
00001602  E9BC00            jmp word 0x16c1
00001605  8B4404            mov ax,[si+0x4]
00001608  8B5404            mov dx,[si+0x4]
0000160B  0BD2              or dx,dx
0000160D  7D02              jnl 0x1611
0000160F  F7DA              neg dx
00001611  8BDA              mov bx,dx
00001613  99                cwd
00001614  F7FB              idiv bx
00001616  8B3C              mov di,[si]
00001618  2BF8              sub di,ax
0000161A  8B5C0C            mov bx,[si+0xc]
0000161D  8B5F06            mov bx,[bx+0x6]
00001620  8B07              mov ax,[bx]
00001622  8B5C0C            mov bx,[si+0xc]
00001625  8B5F06            mov bx,[bx+0x6]
00001628  034702            add ax,[bx+0x2]
0000162B  3BC7              cmp ax,di
0000162D  753D              jnz 0x166c
0000162F  8B5C0C            mov bx,[si+0xc]
00001632  8B5F06            mov bx,[bx+0x6]
00001635  8B4702            mov ax,[bx+0x2]
00001638  894408            mov [si+0x8],ax
0000163B  8B4604            mov ax,[bp+0x4]
0000163E  8B5408            mov dx,[si+0x8]
00001641  2BC2              sub ax,dx
00001643  8904              mov [si],ax
00001645  8B4404            mov ax,[si+0x4]
00001648  BAFFFF            mov dx,0xffff
0000164B  F7E2              mul dx
0000164D  894404            mov [si+0x4],ax
00001650  8B5C0C            mov bx,[si+0xc]
00001653  8B4706            mov ax,[bx+0x6]
00001656  89440C            mov [si+0xc],ax
00001659  8B5C0C            mov bx,[si+0xc]
0000165C  FF7704            push word [bx+0x4]
0000165F  E8DF2C            call word 0x4341
00001662  59                pop cx
00001663  8B5C0C            mov bx,[si+0xc]
00001666  C707E0FF          mov word [bx],0xffe0
0000166A  EB55              jmp short 0x16c1
0000166C  893C              mov [si],di
0000166E  EB51              jmp short 0x16c1
00001670  8B4402            mov ax,[si+0x2]
00001673  3B4604            cmp ax,[bp+0x4]
00001676  7540              jnz 0x16b8
00001678  8B7C02            mov di,[si+0x2]
0000167B  037C06            add di,[si+0x6]
0000167E  8B5C0A            mov bx,[si+0xa]
00001681  8B07              mov ax,[bx]
00001683  3BC7              cmp ax,di
00001685  752C              jnz 0x16b3
00001687  8B4402            mov ax,[si+0x2]
0000168A  8B5C0A            mov bx,[si+0xa]
0000168D  034702            add ax,[bx+0x2]
00001690  894402            mov [si+0x2],ax
00001693  8B4406            mov ax,[si+0x6]
00001696  BAFFFF            mov dx,0xffff
00001699  F7E2              mul dx
0000169B  894406            mov [si+0x6],ax
0000169E  8B5C0A            mov bx,[si+0xa]
000016A1  8B4704            mov ax,[bx+0x4]
000016A4  89440A            mov [si+0xa],ax
000016A7  8B5C0A            mov bx,[si+0xa]
000016AA  FF7706            push word [bx+0x6]
000016AD  E8912C            call word 0x4341
000016B0  59                pop cx
000016B1  EB0E              jmp short 0x16c1
000016B3  897C02            mov [si+0x2],di
000016B6  EB09              jmp short 0x16c1
000016B8  FF7604            push word [bp+0x4]
000016BB  56                push si
000016BC  E888FE            call word 0x1547
000016BF  59                pop cx
000016C0  59                pop cx
000016C1  33C0              xor ax,ax
000016C3  50                push ax
000016C4  B8E0FF            mov ax,0xffe0
000016C7  50                push ax
000016C8  FF7604            push word [bp+0x4]
000016CB  E87DF7            call word 0xe4b
000016CE  83C406            add sp,byte +0x6
000016D1  C706BA970100      mov word [0x97ba],0x1
000016D7  5F                pop di
000016D8  5E                pop si
000016D9  8BE5              mov sp,bp
000016DB  5D                pop bp
000016DC  C3                ret
000016DD  55                push bp
000016DE  8BEC              mov bp,sp
000016E0  83EC02            sub sp,byte +0x2
000016E3  56                push si
000016E4  57                push di
000016E5  33F6              xor si,si
000016E7  A17261            mov ax,[0x6172]
000016EA  FF067261          inc word [0x6172]
000016EE  3B065C98          cmp ax,[0x985c]
000016F2  7F03              jg 0x16f7
000016F4  E91401            jmp word 0x180b
000016F7  C70672610000      mov word [0x6172],0x0
000016FD  833E706100        cmp word [0x6170],byte +0x0
00001702  7422              jz 0x1726
00001704  833E6E6100        cmp word [0x616e],byte +0x0
00001709  7513              jnz 0x171e
0000170B  33C0              xor ax,ax
0000170D  50                push ax
0000170E  B8E0FF            mov ax,0xffe0
00001711  50                push ax
00001712  FF36AC6B          push word [0x6bac]
00001716  E832F7            call word 0xe4b
00001719  83C406            add sp,byte +0x6
0000171C  EB16              jmp short 0x1734
0000171E  C7066E610000      mov word [0x616e],0x0
00001724  EB0E              jmp short 0x1734
00001726  33FF              xor di,di
00001728  EB01              jmp short 0x172b
0000172A  47                inc di
0000172B  81FFB80B          cmp di,0xbb8
0000172F  7CF9              jl 0x172a
00001731  E9D700            jmp word 0x180b
00001734  832EAC6B50        sub word [0x6bac],byte +0x50
00001739  833EAC6B00        cmp word [0x6bac],byte +0x0
0000173E  7D06              jnl 0x1746
00001740  C70670610000      mov word [0x6170],0x0
00001746  FF36AC6B          push word [0x6bac]
0000174A  E8FDF7            call word 0xf4a
0000174D  59                pop cx
0000174E  8946FE            mov [bp-0x2],ax
00001751  8B46FE            mov ax,[bp-0x2]
00001754  B90500            mov cx,0x5
00001757  BB6A17            mov bx,0x176a
0000175A  2E3B07            cmp ax,[cs:bx]
0000175D  7407              jz 0x1766
0000175F  43                inc bx
00001760  43                inc bx
00001761  E2F7              loop 0x175a
00001763  E97400            jmp word 0x17da
00001766  2EFF670A          jmp word [cs:bx+0xa]
0000176A  50                push ax
0000176B  FFE0              jmp ax
0000176D  FFE2              jmp dx
0000176F  FF                db 0xff
00001770  FD                std
00001771  FF                db 0xff
00001772  E8037E            call word 0x9578
00001775  17                pop ss
00001776  A6                cmpsb
00001777  17                pop ss
00001778  B117              mov cl,0x17
0000177A  92                xchg ax,dx
0000177B  17                pop ss
0000177C  CB                retf
0000177D  17                pop ss
0000177E  833E706100        cmp word [0x6170],byte +0x0
00001783  7467              jz 0x17ec
00001785  BE0A00            mov si,0xa
00001788  FF36AC6B          push word [0x6bac]
0000178C  E8CCFB            call word 0x135b
0000178F  59                pop cx
00001790  EB5A              jmp short 0x17ec
00001792  833E706100        cmp word [0x6170],byte +0x0
00001797  7453              jz 0x17ec
00001799  FF36AC6B          push word [0x6bac]
0000179D  E8BBFB            call word 0x135b
000017A0  59                pop cx
000017A1  BE1400            mov si,0x14
000017A4  EB46              jmp short 0x17ec
000017A6  833E706100        cmp word [0x6170],byte +0x0
000017AB  743F              jz 0x17ec
000017AD  33F6              xor si,si
000017AF  EB3B              jmp short 0x17ec
000017B1  B80100            mov ax,0x1
000017B4  50                push ax
000017B5  B8E2FF            mov ax,0xffe2
000017B8  50                push ax
000017B9  FF36AC6B          push word [0x6bac]
000017BD  E88BF6            call word 0xe4b
000017C0  83C406            add sp,byte +0x6
000017C3  C70670610000      mov word [0x6170],0x0
000017C9  EB21              jmp short 0x17ec
000017CB  833E706100        cmp word [0x6170],byte +0x0
000017D0  741A              jz 0x17ec
000017D2  E8B7F9            call word 0x118c
000017D5  BEF401            mov si,0x1f4
000017D8  EB12              jmp short 0x17ec
000017DA  833E706100        cmp word [0x6170],byte +0x0
000017DF  740B              jz 0x17ec
000017E1  FF36AC6B          push word [0x6bac]
000017E5  E8CEFD            call word 0x15b6
000017E8  59                pop cx
000017E9  BE3200            mov si,0x32
000017EC  0BF6              or si,si
000017EE  7406              jz 0x17f6
000017F0  C70670610000      mov word [0x6170],0x0
000017F6  833E706100        cmp word [0x6170],byte +0x0
000017FB  740E              jz 0x180b
000017FD  B84900            mov ax,0x49
00001800  50                push ax
00001801  FF36AC6B          push word [0x6bac]
00001805  FF16AC96          call word [0x96ac]
00001809  59                pop cx
0000180A  59                pop cx
0000180B  8BC6              mov ax,si
0000180D  5F                pop di
0000180E  5E                pop si
0000180F  8BE5              mov sp,bp
00001811  5D                pop bp
00001812  C3                ret
00001813  55                push bp
00001814  8BEC              mov bp,sp
00001816  83EC10            sub sp,byte +0x10
00001819  56                push si
0000181A  57                push di
0000181B  BE5707            mov si,0x757
0000181E  33FF              xor di,di
00001820  C746F00000        mov word [bp-0x10],0x0
00001825  C746F20000        mov word [bp-0xe],0x0
0000182A  C746F40000        mov word [bp-0xc],0x0
0000182F  C746F60000        mov word [bp-0xa],0x0
00001834  C746FA0000        mov word [bp-0x6],0x0
00001839  C746FC3007        mov word [bp-0x4],0x730
0000183E  C746FE7F07        mov word [bp-0x2],0x77f
00001843  FF36A469          push word [0x69a4]
00001847  FF36A269          push word [0x69a2]
0000184B  E876F4            call word 0xcc4
0000184E  59                pop cx
0000184F  59                pop cx
00001850  B80100            mov ax,0x1
00001853  50                push ax
00001854  B8E2FF            mov ax,0xffe2
00001857  50                push ax
00001858  56                push si
00001859  E8EFF5            call word 0xe4b
0000185C  83C406            add sp,byte +0x6
0000185F  E96602            jmp word 0x1ac8
00001862  C746F80000        mov word [bp-0x8],0x0
00001867  E94202            jmp word 0x1aac
0000186A  B80100            mov ax,0x1
0000186D  50                push ax
0000186E  E83535            call word 0x4da6
00001871  59                pop cx
00001872  8B5EF8            mov bx,[bp-0x8]
00001875  D1E3              shl bx,1
00001877  83BFDA8E00        cmp word [bx-0x7126],byte +0x0
0000187C  740D              jz 0x188b
0000187E  8B5EF8            mov bx,[bp-0x8]
00001881  D1E3              shl bx,1
00001883  FFB7DA8E          push word [bx-0x7126]
00001887  E87EF7            call word 0x1008
0000188A  59                pop cx
0000188B  56                push si
0000188C  E8BBF6            call word 0xf4a
0000188F  59                pop cx
00001890  3DE2FF            cmp ax,0xffe2
00001893  740D              jz 0x18a2
00001895  56                push si
00001896  E8B1F6            call word 0xf4a
00001899  59                pop cx
0000189A  3DE0FF            cmp ax,0xffe0
0000189D  7403              jz 0x18a2
0000189F  E9DA00            jmp word 0x197c
000018A2  B80100            mov ax,0x1
000018A5  50                push ax
000018A6  B8E2FF            mov ax,0xffe2
000018A9  50                push ax
000018AA  56                push si
000018AB  E89DF5            call word 0xe4b
000018AE  83C406            add sp,byte +0x6
000018B1  803EF09600        cmp byte [0x96f0],0x0
000018B6  7413              jz 0x18cb
000018B8  803ED79600        cmp byte [0x96d7],0x0
000018BD  740C              jz 0x18cb
000018BF  A10C61            mov ax,[0x610c]
000018C2  48                dec ax
000018C3  99                cwd
000018C4  33C2              xor ax,dx
000018C6  2BC2              sub ax,dx
000018C8  A30C61            mov [0x610c],ax
000018CB  803ED09600        cmp byte [0x96d0],0x0
000018D0  745F              jz 0x1931
000018D2  FF46F0            inc word [bp-0x10]
000018D5  C746F20000        mov word [bp-0xe],0x0
000018DA  837EF014          cmp word [bp-0x10],byte +0x14
000018DE  7F03              jg 0x18e3
000018E0  E99E00            jmp word 0x1981
000018E3  3B76FC            cmp si,[bp-0x4]
000018E6  7F03              jg 0x18eb
000018E8  E99600            jmp word 0x1981
000018EB  C746F00000        mov word [bp-0x10],0x0
000018F0  8BDE              mov bx,si
000018F2  4B                dec bx
000018F3  D1E3              shl bx,1
000018F5  83BF397F00        cmp word [bx+0x7f39],byte +0x0
000018FA  7C03              jl 0x18ff
000018FC  E97D00            jmp word 0x197c
000018FF  8BC6              mov ax,si
00001901  48                dec ax
00001902  50                push ax
00001903  E844F6            call word 0xf4a
00001906  59                pop cx
00001907  3DE0FF            cmp ax,0xffe0
0000190A  7403              jz 0x190f
0000190C  E97200            jmp word 0x1981
0000190F  33C0              xor ax,ax
00001911  50                push ax
00001912  B8E0FF            mov ax,0xffe0
00001915  50                push ax
00001916  8BC6              mov ax,si
00001918  4E                dec si
00001919  50                push ax
0000191A  E82EF5            call word 0xe4b
0000191D  83C406            add sp,byte +0x6
00001920  B80100            mov ax,0x1
00001923  50                push ax
00001924  B8E2FF            mov ax,0xffe2
00001927  50                push ax
00001928  56                push si
00001929  E81FF5            call word 0xe4b
0000192C  83C406            add sp,byte +0x6
0000192F  EB50              jmp short 0x1981
00001931  803ED19600        cmp byte [0x96d1],0x0
00001936  7449              jz 0x1981
00001938  FF46F2            inc word [bp-0xe]
0000193B  C746F00000        mov word [bp-0x10],0x0
00001940  837EF214          cmp word [bp-0xe],byte +0x14
00001944  7E3B              jng 0x1981
00001946  3B76FE            cmp si,[bp-0x2]
00001949  7D36              jnl 0x1981
0000194B  C746F20000        mov word [bp-0xe],0x0
00001950  8BDE              mov bx,si
00001952  43                inc bx
00001953  D1E3              shl bx,1
00001955  83BF397F00        cmp word [bx+0x7f39],byte +0x0
0000195A  7D20              jnl 0x197c
0000195C  8BC6              mov ax,si
0000195E  40                inc ax
0000195F  50                push ax
00001960  E8E7F5            call word 0xf4a
00001963  59                pop cx
00001964  3DE0FF            cmp ax,0xffe0
00001967  7518              jnz 0x1981
00001969  33C0              xor ax,ax
0000196B  50                push ax
0000196C  B8E0FF            mov ax,0xffe0
0000196F  50                push ax
00001970  8BC6              mov ax,si
00001972  46                inc si
00001973  50                push ax
00001974  E8D4F4            call word 0xe4b
00001977  83C406            add sp,byte +0x6
0000197A  EBA4              jmp short 0x1920
0000197C  8BFE              mov di,si
0000197E  E94701            jmp word 0x1ac8
00001981  803EF19600        cmp byte [0x96f1],0x0
00001986  741D              jz 0x19a5
00001988  833E706100        cmp word [0x6170],byte +0x0
0000198D  7516              jnz 0x19a5
0000198F  C7064E7B0100      mov word [0x7b4e],0x1
00001995  C70670610100      mov word [0x6170],0x1
0000199B  8936AC6B          mov [0x6bac],si
0000199F  C7066E610100      mov word [0x616e],0x1
000019A5  E835FD            call word 0x16dd
000019A8  8946FA            mov [bp-0x6],ax
000019AB  E811EA            call word 0x3bf
000019AE  E8F9F7            call word 0x11aa
000019B1  837EFA00          cmp word [bp-0x6],byte +0x0
000019B5  7419              jz 0x19d0
000019B7  8B46FA            mov ax,[bp-0x6]
000019BA  99                cwd
000019BB  0106A269          add [0x69a2],ax
000019BF  1116A469          adc [0x69a4],dx
000019C3  FF36A469          push word [0x69a4]
000019C7  FF36A269          push word [0x69a2]
000019CB  E8F6F2            call word 0xcc4
000019CE  59                pop cx
000019CF  59                pop cx
000019D0  803EC89600        cmp byte [0x96c8],0x0
000019D5  746D              jz 0x1a44
000019D7  FF46F4            inc word [bp-0xc]
000019DA  8B46F4            mov ax,[bp-0xc]
000019DD  3D1400            cmp ax,0x14
000019E0  7F03              jg 0x19e5
000019E2  E9BA00            jmp word 0x1a9f
000019E5  C746F40000        mov word [bp-0xc],0x0
000019EA  8BC6              mov ax,si
000019EC  05B0FF            add ax,0xffb0
000019EF  3D4F05            cmp ax,0x54f
000019F2  7F03              jg 0x19f7
000019F4  E9A800            jmp word 0x1a9f
000019F7  8BC6              mov ax,si
000019F9  05B0FF            add ax,0xffb0
000019FC  50                push ax
000019FD  E84AF5            call word 0xf4a
00001A00  59                pop cx
00001A01  0BC0              or ax,ax
00001A03  7C03              jl 0x1a08
00001A05  E99500            jmp word 0x1a9d
00001A08  8BC6              mov ax,si
00001A0A  05B0FF            add ax,0xffb0
00001A0D  50                push ax
00001A0E  E839F5            call word 0xf4a
00001A11  59                pop cx
00001A12  3DE0FF            cmp ax,0xffe0
00001A15  7403              jz 0x1a1a
00001A17  E98500            jmp word 0x1a9f
00001A1A  33C0              xor ax,ax
00001A1C  50                push ax
00001A1D  B8E0FF            mov ax,0xffe0
00001A20  50                push ax
00001A21  56                push si
00001A22  E826F4            call word 0xe4b
00001A25  83C406            add sp,byte +0x6
00001A28  836EFE50          sub word [bp-0x2],byte +0x50
00001A2C  836EFC50          sub word [bp-0x4],byte +0x50
00001A30  83EE50            sub si,byte +0x50
00001A33  B80100            mov ax,0x1
00001A36  50                push ax
00001A37  B8E2FF            mov ax,0xffe2
00001A3A  50                push ax
00001A3B  56                push si
00001A3C  E80CF4            call word 0xe4b
00001A3F  83C406            add sp,byte +0x6
00001A42  EB5B              jmp short 0x1a9f
00001A44  803ED69600        cmp byte [0x96d6],0x0
00001A49  7454              jz 0x1a9f
00001A4B  FF46F6            inc word [bp-0xa]
00001A4E  8B46F6            mov ax,[bp-0xa]
00001A51  3D1400            cmp ax,0x14
00001A54  7E49              jng 0x1a9f
00001A56  C746F60000        mov word [bp-0xa],0x0
00001A5B  8BC6              mov ax,si
00001A5D  055000            add ax,0x50
00001A60  3D7F07            cmp ax,0x77f
00001A63  7F3A              jg 0x1a9f
00001A65  8BC6              mov ax,si
00001A67  055000            add ax,0x50
00001A6A  50                push ax
00001A6B  E8DCF4            call word 0xf4a
00001A6E  59                pop cx
00001A6F  0BC0              or ax,ax
00001A71  7D2A              jnl 0x1a9d
00001A73  8BC6              mov ax,si
00001A75  055000            add ax,0x50
00001A78  50                push ax
00001A79  E8CEF4            call word 0xf4a
00001A7C  59                pop cx
00001A7D  3DE0FF            cmp ax,0xffe0
00001A80  751D              jnz 0x1a9f
00001A82  33C0              xor ax,ax
00001A84  50                push ax
00001A85  B8E0FF            mov ax,0xffe0
00001A88  50                push ax
00001A89  56                push si
00001A8A  E8BEF3            call word 0xe4b
00001A8D  83C406            add sp,byte +0x6
00001A90  8346FE50          add word [bp-0x2],byte +0x50
00001A94  8346FC50          add word [bp-0x4],byte +0x50
00001A98  83C650            add si,byte +0x50
00001A9B  EB96              jmp short 0x1a33
00001A9D  8BFE              mov di,si
00001A9F  803EB99600        cmp byte [0x96b9],0x0
00001AA4  7403              jz 0x1aa9
00001AA6  BF0100            mov di,0x1
00001AA9  FF46F8            inc word [bp-0x8]
00001AAC  A1AA6B            mov ax,[0x6baa]
00001AAF  3B4604            cmp ax,[bp+0x4]
00001AB2  7E05              jng 0x1ab9
00001AB4  A1AA6B            mov ax,[0x6baa]
00001AB7  EB03              jmp short 0x1abc
00001AB9  8B4604            mov ax,[bp+0x4]
00001ABC  3B46F8            cmp ax,[bp-0x8]
00001ABF  7E07              jng 0x1ac8
00001AC1  0BFF              or di,di
00001AC3  7503              jnz 0x1ac8
00001AC5  E9A2FD            jmp word 0x186a
00001AC8  0BFF              or di,di
00001ACA  750A              jnz 0x1ad6
00001ACC  833E6A6100        cmp word [0x616a],byte +0x0
00001AD1  7403              jz 0x1ad6
00001AD3  E98CFD            jmp word 0x1862
00001AD6  33C0              xor ax,ax
00001AD8  50                push ax
00001AD9  B8E2FF            mov ax,0xffe2
00001ADC  50                push ax
00001ADD  56                push si
00001ADE  E86AF3            call word 0xe4b
00001AE1  83C406            add sp,byte +0x6
00001AE4  8BDE              mov bx,si
00001AE6  D1E3              shl bx,1
00001AE8  C787397FE0FF      mov word [bx+0x7f39],0xffe0
00001AEE  33C0              xor ax,ax
00001AF0  50                push ax
00001AF1  B8E0FF            mov ax,0xffe0
00001AF4  50                push ax
00001AF5  FF36AA96          push word [0x96aa]
00001AF9  E84FF3            call word 0xe4b
00001AFC  83C406            add sp,byte +0x6
00001AFF  C70668610000      mov word [0x6168],0x0
00001B05  8BC7              mov ax,di
00001B07  5F                pop di
00001B08  5E                pop si
00001B09  8BE5              mov sp,bp
00001B0B  5D                pop bp
00001B0C  C3                ret
00001B0D  56                push si
00001B0E  57                push di
00001B0F  33FF              xor di,di
00001B11  EB36              jmp short 0x1b49
00001B13  8BDF              mov bx,di
00001B15  D1E3              shl bx,1
00001B17  8BB7DA8E          mov si,[bx-0x7126]
00001B1B  0BF6              or si,si
00001B1D  7429              jz 0x1b48
00001B1F  EB13              jmp short 0x1b34
00001B21  8B5C0A            mov bx,[si+0xa]
00001B24  8B4704            mov ax,[bx+0x4]
00001B27  89440A            mov [si+0xa],ax
00001B2A  8B5C0A            mov bx,[si+0xa]
00001B2D  FF7706            push word [bx+0x6]
00001B30  E80E28            call word 0x4341
00001B33  59                pop cx
00001B34  8B5C0A            mov bx,[si+0xa]
00001B37  833FE0            cmp word [bx],byte -0x20
00001B3A  75E5              jnz 0x1b21
00001B3C  FF740A            push word [si+0xa]
00001B3F  E8FF27            call word 0x4341
00001B42  59                pop cx
00001B43  56                push si
00001B44  E8FA27            call word 0x4341
00001B47  59                pop cx
00001B48  47                inc di
00001B49  81FFE803          cmp di,0x3e8
00001B4D  7CC4              jl 0x1b13
00001B4F  5F                pop di
00001B50  5E                pop si
00001B51  C3                ret
00001B52  55                push bp
00001B53  8BEC              mov bp,sp
00001B55  56                push si
00001B56  57                push di
00001B57  C606507B40        mov byte [0x7b50],0x40
00001B5C  C606517B0F        mov byte [0x7b51],0xf
00001B61  C606527B94        mov byte [0x7b52],0x94
00001B66  C606537BEA        mov byte [0x7b53],0xea
00001B6B  C606547B01        mov byte [0x7b54],0x1
00001B70  C606557B02        mov byte [0x7b55],0x2
00001B75  C606567B40        mov byte [0x7b56],0x40
00001B7A  C606577B94        mov byte [0x7b57],0x94
00001B7F  C606387F0F        mov byte [0x7f38],0xf
00001B84  33FF              xor di,di
00001B86  E98B00            jmp word 0x1c14
00001B89  B81400            mov ax,0x14
00001B8C  50                push ax
00001B8D  E8670D            call word 0x28f7
00001B90  59                pop cx
00001B91  8BF0              mov si,ax
00001B93  8BDF              mov bx,di
00001B95  D1E3              shl bx,1
00001B97  89B7DA8E          mov [bx-0x7126],si
00001B9B  897C0E            mov [si+0xe],di
00001B9E  8B4606            mov ax,[bp+0x6]
00001BA1  894412            mov [si+0x12],ax
00001BA4  B80800            mov ax,0x8
00001BA7  50                push ax
00001BA8  E84C0D            call word 0x28f7
00001BAB  59                pop cx
00001BAC  89440C            mov [si+0xc],ax
00001BAF  8B5C0C            mov bx,[si+0xc]
00001BB2  C707E0FF          mov word [bx],0xffe0
00001BB6  8B440C            mov ax,[si+0xc]
00001BB9  89440A            mov [si+0xa],ax
00001BBC  C744085000        mov word [si+0x8],0x50
00001BC1  8B5C0C            mov bx,[si+0xc]
00001BC4  C747025000        mov word [bx+0x2],0x50
00001BC9  8BC7              mov ax,di
00001BCB  BB0800            mov bx,0x8
00001BCE  99                cwd
00001BCF  F7FB              idiv bx
00001BD1  8BDA              mov bx,dx
00001BD3  8A87507B          mov al,[bx+0x7b50]
00001BD7  8885507B          mov [di+0x7b50],al
00001BDB  8BC7              mov ax,di
00001BDD  BB0200            mov bx,0x2
00001BE0  99                cwd
00001BE1  F7FB              idiv bx
00001BE3  0BD2              or dx,dx
00001BE5  7412              jz 0x1bf9
00001BE7  8BC7              mov ax,di
00001BE9  BA5000            mov dx,0x50
00001BEC  F7E2              mul dx
00001BEE  48                dec ax
00001BEF  894402            mov [si+0x2],ax
00001BF2  C74406FFFF        mov word [si+0x6],0xffff
00001BF7  EB0F              jmp short 0x1c08
00001BF9  8BC7              mov ax,di
00001BFB  BA5000            mov dx,0x50
00001BFE  F7E2              mul dx
00001C00  894402            mov [si+0x2],ax
00001C03  C744060100        mov word [si+0x6],0x1
00001C08  8B4402            mov ax,[si+0x2]
00001C0B  8904              mov [si],ax
00001C0D  8B4406            mov ax,[si+0x6]
00001C10  894404            mov [si+0x4],ax
00001C13  47                inc di
00001C14  3B7E04            cmp di,[bp+0x4]
00001C17  7D03              jnl 0x1c1c
00001C19  E96DFF            jmp word 0x1b89
00001C1C  33FF              xor di,di
00001C1E  EB20              jmp short 0x1c40
00001C20  B80100            mov ax,0x1
00001C23  50                push ax
00001C24  8BDF              mov bx,di
00001C26  D1E3              shl bx,1
00001C28  8B9FDA8E          mov bx,[bx-0x7126]
00001C2C  FF770E            push word [bx+0xe]
00001C2F  8BDF              mov bx,di
00001C31  D1E3              shl bx,1
00001C33  8B9FDA8E          mov bx,[bx-0x7126]
00001C37  FF37              push word [bx]
00001C39  E80FF2            call word 0xe4b
00001C3C  83C406            add sp,byte +0x6
00001C3F  47                inc di
00001C40  3B7E04            cmp di,[bp+0x4]
00001C43  7CDB              jl 0x1c20
00001C45  5F                pop di
00001C46  5E                pop si
00001C47  5D                pop bp
00001C48  C3                ret
00001C49  55                push bp
00001C4A  8BEC              mov bp,sp
00001C4C  56                push si
00001C4D  33C0              xor ax,ax
00001C4F  50                push ax
00001C50  B8E0FF            mov ax,0xffe0
00001C53  50                push ax
00001C54  FF36AC6B          push word [0x6bac]
00001C58  E8F0F1            call word 0xe4b
00001C5B  83C406            add sp,byte +0x6
00001C5E  C70670610000      mov word [0x6170],0x0
00001C64  8B4604            mov ax,[bp+0x4]
00001C67  A3AA6B            mov [0x6baa],ax
00001C6A  A36A61            mov [0x616a],ax
00001C6D  33F6              xor si,si
00001C6F  EB0B              jmp short 0x1c7c
00001C71  8BDE              mov bx,si
00001C73  D1E3              shl bx,1
00001C75  C787DA8E0000      mov word [bx-0x7126],0x0
00001C7B  46                inc si
00001C7C  81FEE803          cmp si,0x3e8
00001C80  7CEF              jl 0x1c71
00001C82  FF7606            push word [bp+0x6]
00001C85  FF7604            push word [bp+0x4]
00001C88  E8C7FE            call word 0x1b52
00001C8B  59                pop cx
00001C8C  59                pop cx
00001C8D  B80200            mov ax,0x2
00001C90  50                push ax
00001C91  FF7608            push word [bp+0x8]
00001C94  B8FDFF            mov ax,0xfffd
00001C97  50                push ax
00001C98  E832F6            call word 0x12cd
00001C9B  83C406            add sp,byte +0x6
00001C9E  B80200            mov ax,0x2
00001CA1  50                push ax
00001CA2  FF760A            push word [bp+0xa]
00001CA5  B850FF            mov ax,0xff50
00001CA8  50                push ax
00001CA9  E821F6            call word 0x12cd
00001CAC  83C406            add sp,byte +0x6
00001CAF  5E                pop si
00001CB0  5D                pop bp
00001CB1  C3                ret
00001CB2  55                push bp
00001CB3  8BEC              mov bp,sp
00001CB5  8B4604            mov ax,[bp+0x4]
00001CB8  3D0200            cmp ax,0x2
00001CBB  741B              jz 0x1cd8
00001CBD  3D0300            cmp ax,0x3
00001CC0  7402              jz 0x1cc4
00001CC2  EB32              jmp short 0x1cf6
00001CC4  C706AC96E40B      mov word [0x96ac],0xbe4
00001CCA  C706BC972D0C      mov word [0x97bc],0xc2d
00001CD0  C706BE97450C      mov word [0x97be],0xc45
00001CD6  EB18              jmp short 0x1cf0
00001CD8  C706B5680000      mov word [0x68b5],0x0
00001CDE  C706AC965D0C      mov word [0x96ac],0xc5d
00001CE4  C706BC971645      mov word [0x97bc],0x4516
00001CEA  C706BE971C45      mov word [0x97be],0x451c
00001CF0  C7065A98B444      mov word [0x985a],0x44b4
00001CF6  5D                pop bp
00001CF7  C3                ret
00001CF8  56                push si
00001CF9  33F6              xor si,si
00001CFB  EB14              jmp short 0x1d11
00001CFD  B80100            mov ax,0x1
00001D00  50                push ax
00001D01  8BDE              mov bx,si
00001D03  D1E3              shl bx,1
00001D05  FFB7397F          push word [bx+0x7f39]
00001D09  56                push si
00001D0A  E83EF1            call word 0xe4b
00001D0D  83C406            add sp,byte +0x6
00001D10  46                inc si
00001D11  81FE7F07          cmp si,0x77f
00001D15  7CE6              jl 0x1cfd
00001D17  5E                pop si
00001D18  C3                ret
00001D19  55                push bp
00001D1A  8BEC              mov bp,sp
00001D1C  56                push si
00001D1D  57                push di
00001D1E  8B4604            mov ax,[bp+0x4]
00001D21  BAF401            mov dx,0x1f4
00001D24  F7E2              mul dx
00001D26  8BF0              mov si,ax
00001D28  EB39              jmp short 0x1d63
00001D2A  833E0C6100        cmp word [0x610c],byte +0x0
00001D2F  7408              jz 0x1d39
00001D31  B8EE02            mov ax,0x2ee
00001D34  50                push ax
00001D35  E8443A            call word 0x577c
00001D38  59                pop cx
00001D39  33FF              xor di,di
00001D3B  EB01              jmp short 0x1d3e
00001D3D  47                inc di
00001D3E  81FFD007          cmp di,0x7d0
00001D42  7CF9              jl 0x1d3d
00001D44  E8613A            call word 0x57a8
00001D47  8B4604            mov ax,[bp+0x4]
00001D4A  99                cwd
00001D4B  0106A269          add [0x69a2],ax
00001D4F  1116A469          adc [0x69a4],dx
00001D53  FF36A469          push word [0x69a4]
00001D57  FF36A269          push word [0x69a2]
00001D5B  E866EF            call word 0xcc4
00001D5E  59                pop cx
00001D5F  59                pop cx
00001D60  2B7604            sub si,[bp+0x4]
00001D63  0BF6              or si,si
00001D65  7FC3              jg 0x1d2a
00001D67  E83E3A            call word 0x57a8
00001D6A  5F                pop di
00001D6B  5E                pop si
00001D6C  5D                pop bp
00001D6D  C3                ret
00001D6E  55                push bp
00001D6F  8BEC              mov bp,sp
00001D71  81EC3401          sub sp,0x134
00001D75  56                push si
00001D76  57                push di
00001D77  B87F63            mov ax,0x637f
00001D7A  50                push ax
00001D7B  8D86D4FE          lea ax,[bp-0x12c]
00001D7F  50                push ax
00001D80  E8961B            call word 0x3919
00001D83  59                pop cx
00001D84  59                pop cx
00001D85  B8A763            mov ax,0x63a7
00001D88  50                push ax
00001D89  8D8606FF          lea ax,[bp-0xfa]
00001D8D  50                push ax
00001D8E  E8881B            call word 0x3919
00001D91  59                pop cx
00001D92  59                pop cx
00001D93  B8CF63            mov ax,0x63cf
00001D96  50                push ax
00001D97  8D8638FF          lea ax,[bp-0xc8]
00001D9B  50                push ax
00001D9C  E87A1B            call word 0x3919
00001D9F  59                pop cx
00001DA0  59                pop cx
00001DA1  B8F763            mov ax,0x63f7
00001DA4  50                push ax
00001DA5  8D866AFF          lea ax,[bp-0x96]
00001DA9  50                push ax
00001DAA  E86C1B            call word 0x3919
00001DAD  59                pop cx
00001DAE  59                pop cx
00001DAF  B81F64            mov ax,0x641f
00001DB2  50                push ax
00001DB3  8D469C            lea ax,[bp-0x64]
00001DB6  50                push ax
00001DB7  E85F1B            call word 0x3919
00001DBA  59                pop cx
00001DBB  59                pop cx
00001DBC  B84764            mov ax,0x6447
00001DBF  50                push ax
00001DC0  8D46CE            lea ax,[bp-0x32]
00001DC3  50                push ax
00001DC4  E8521B            call word 0x3919
00001DC7  59                pop cx
00001DC8  59                pop cx
00001DC9  E851E9            call word 0x71d
00001DCC  EB07              jmp short 0x1dd5
00001DCE  33C0              xor ax,ax
00001DD0  50                push ax
00001DD1  E87B41            call word 0x5f4f
00001DD4  59                pop cx
00001DD5  B80100            mov ax,0x1
00001DD8  50                push ax
00001DD9  E87341            call word 0x5f4f
00001DDC  59                pop cx
00001DDD  0BC0              or ax,ax
00001DDF  75ED              jnz 0x1dce
00001DE1  C786D0FE0000      mov word [bp-0x130],0x0
00001DE7  C786D2FE0000      mov word [bp-0x12e],0x0
00001DED  BFE803            mov di,0x3e8
00001DF0  C786CCFE0100      mov word [bp-0x134],0x1
00001DF6  33C0              xor ax,ax
00001DF8  50                push ax
00001DF9  E8A935            call word 0x53a5
00001DFC  59                pop cx
00001DFD  FF165A98          call word [0x985a]
00001E01  E8BB01            call word 0x1fbf
00001E04  E8F1FE            call word 0x1cf8
00001E07  E859E7            call word 0x563
00001E0A  B81400            mov ax,0x14
00001E0D  50                push ax
00001E0E  B80200            mov ax,0x2
00001E11  50                push ax
00001E12  E83DFD            call word 0x1b52
00001E15  59                pop cx
00001E16  59                pop cx
00001E17  E90001            jmp word 0x1f1a
00001E1A  8B86D0FE          mov ax,[bp-0x130]
00001E1E  BBC800            mov bx,0xc8
00001E21  99                cwd
00001E22  F7FB              idiv bx
00001E24  0BD2              or dx,dx
00001E26  7512              jnz 0x1e3a
00001E28  B84B00            mov ax,0x4b
00001E2B  50                push ax
00001E2C  B80100            mov ax,0x1
00001E2F  50                push ax
00001E30  B8FDFF            mov ax,0xfffd
00001E33  50                push ax
00001E34  E896F4            call word 0x12cd
00001E37  83C406            add sp,byte +0x6
00001E3A  8B86D0FE          mov ax,[bp-0x130]
00001E3E  FF86D0FE          inc word [bp-0x130]
00001E42  BB5E01            mov bx,0x15e
00001E45  99                cwd
00001E46  F7FB              idiv bx
00001E48  0BD2              or dx,dx
00001E4A  7537              jnz 0x1e83
00001E4C  83BED2FE05        cmp word [bp-0x12e],byte +0x5
00001E51  7C06              jl 0x1e59
00001E53  C786D2FE0000      mov word [bp-0x12e],0x0
00001E59  8D46CE            lea ax,[bp-0x32]
00001E5C  50                push ax
00001E5D  B88007            mov ax,0x780
00001E60  50                push ax
00001E61  E82DEE            call word 0xc91
00001E64  59                pop cx
00001E65  59                pop cx
00001E66  8B86D2FE          mov ax,[bp-0x12e]
00001E6A  FF86D2FE          inc word [bp-0x12e]
00001E6E  BA3200            mov dx,0x32
00001E71  F7E2              mul dx
00001E73  8D96D4FE          lea dx,[bp-0x12c]
00001E77  03C2              add ax,dx
00001E79  50                push ax
00001E7A  B8A807            mov ax,0x7a8
00001E7D  50                push ax
00001E7E  E810EE            call word 0xc91
00001E81  59                pop cx
00001E82  59                pop cx
00001E83  B80100            mov ax,0x1
00001E86  50                push ax
00001E87  E8C540            call word 0x5f4f
00001E8A  59                pop cx
00001E8B  3D001F            cmp ax,0x1f00
00001E8E  7513              jnz 0x1ea3
00001E90  33C0              xor ax,ax
00001E92  50                push ax
00001E93  E8B940            call word 0x5f4f
00001E96  59                pop cx
00001E97  A10C61            mov ax,[0x610c]
00001E9A  48                dec ax
00001E9B  99                cwd
00001E9C  33C2              xor ax,dx
00001E9E  2BC2              sub ax,dx
00001EA0  A30C61            mov [0x610c],ax
00001EA3  33F6              xor si,si
00001EA5  EB5F              jmp short 0x1f06
00001EA7  81FF0F27          cmp di,0x270f
00001EAB  7F06              jg 0x1eb3
00001EAD  81FF8813          cmp di,0x1388
00001EB1  7D0D              jnl 0x1ec0
00001EB3  8B86CCFE          mov ax,[bp-0x134]
00001EB7  BAFFFF            mov dx,0xffff
00001EBA  F7E2              mul dx
00001EBC  8986CCFE          mov [bp-0x134],ax
00001EC0  C786CEFE0000      mov word [bp-0x132],0x0
00001EC6  EB14              jmp short 0x1edc
00001EC8  833E0C6100        cmp word [0x610c],byte +0x0
00001ECD  7405              jz 0x1ed4
00001ECF  57                push di
00001ED0  E8A938            call word 0x577c
00001ED3  59                pop cx
00001ED4  03BECCFE          add di,[bp-0x134]
00001ED8  FF86CEFE          inc word [bp-0x132]
00001EDC  83BECEFE64        cmp word [bp-0x132],byte +0x64
00001EE1  7CE5              jl 0x1ec8
00001EE3  8BDE              mov bx,si
00001EE5  D1E3              shl bx,1
00001EE7  83BFDA8E00        cmp word [bx-0x7126],byte +0x0
00001EEC  740C              jz 0x1efa
00001EEE  8BDE              mov bx,si
00001EF0  D1E3              shl bx,1
00001EF2  FFB7DA8E          push word [bx-0x7126]
00001EF6  E80FF1            call word 0x1008
00001EF9  59                pop cx
00001EFA  E8AB38            call word 0x57a8
00001EFD  B80500            mov ax,0x5
00001F00  50                push ax
00001F01  E8A22E            call word 0x4da6
00001F04  59                pop cx
00001F05  46                inc si
00001F06  83FE02            cmp si,byte +0x2
00001F09  7D0F              jnl 0x1f1a
00001F0B  B80100            mov ax,0x1
00001F0E  50                push ax
00001F0F  E83D40            call word 0x5f4f
00001F12  59                pop cx
00001F13  0BC0              or ax,ax
00001F15  7503              jnz 0x1f1a
00001F17  E98DFF            jmp word 0x1ea7
00001F1A  B80100            mov ax,0x1
00001F1D  50                push ax
00001F1E  E82E40            call word 0x5f4f
00001F21  59                pop cx
00001F22  0BC0              or ax,ax
00001F24  740D              jz 0x1f33
00001F26  B80100            mov ax,0x1
00001F29  50                push ax
00001F2A  E82240            call word 0x5f4f
00001F2D  59                pop cx
00001F2E  3D001F            cmp ax,0x1f00
00001F31  750B              jnz 0x1f3e
00001F33  81BED0FE9411      cmp word [bp-0x130],0x1194
00001F39  7D03              jnl 0x1f3e
00001F3B  E9DCFE            jmp word 0x1e1a
00001F3E  E897E3            call word 0x2d8
00001F41  B80100            mov ax,0x1
00001F44  50                push ax
00001F45  E80740            call word 0x5f4f
00001F48  59                pop cx
00001F49  0BC0              or ax,ax
00001F4B  7441              jz 0x1f8e
00001F4D  E809E8            call word 0x759
00001F50  B80100            mov ax,0x1
00001F53  50                push ax
00001F54  E8F83F            call word 0x5f4f
00001F57  59                pop cx
00001F58  3D1B01            cmp ax,0x11b
00001F5B  7520              jnz 0x1f7d
00001F5D  EB07              jmp short 0x1f66
00001F5F  33C0              xor ax,ax
00001F61  50                push ax
00001F62  E8EA3F            call word 0x5f4f
00001F65  59                pop cx
00001F66  B80100            mov ax,0x1
00001F69  50                push ax
00001F6A  E8E23F            call word 0x5f4f
00001F6D  59                pop cx
00001F6E  0BC0              or ax,ax
00001F70  75ED              jnz 0x1f5f
00001F72  33C0              xor ax,ax
00001F74  EB43              jmp short 0x1fb9
00001F76  33C0              xor ax,ax
00001F78  50                push ax
00001F79  E8D33F            call word 0x5f4f
00001F7C  59                pop cx
00001F7D  B80100            mov ax,0x1
00001F80  50                push ax
00001F81  E8CB3F            call word 0x5f4f
00001F84  59                pop cx
00001F85  0BC0              or ax,ax
00001F87  75ED              jnz 0x1f76
00001F89  B80100            mov ax,0x1
00001F8C  EB2B              jmp short 0x1fb9
00001F8E  FF165A98          call word [0x985a]
00001F92  E843EB            call word 0xad8
00001F95  33F6              xor si,si
00001F97  EB09              jmp short 0x1fa2
00001F99  B8E803            mov ax,0x3e8
00001F9C  50                push ax
00001F9D  E8062E            call word 0x4da6
00001FA0  59                pop cx
00001FA1  46                inc si
00001FA2  83FE14            cmp si,byte +0x14
00001FA5  7C03              jl 0x1faa
00001FA7  E92BFE            jmp word 0x1dd5
00001FAA  B80100            mov ax,0x1
00001FAD  50                push ax
00001FAE  E89E3F            call word 0x5f4f
00001FB1  59                pop cx
00001FB2  0BC0              or ax,ax
00001FB4  74E3              jz 0x1f99
00001FB6  E91CFE            jmp word 0x1dd5
00001FB9  5F                pop di
00001FBA  5E                pop si
00001FBB  8BE5              mov sp,bp
00001FBD  5D                pop bp
00001FBE  C3                ret
00001FBF  56                push si
00001FC0  33F6              xor si,si
00001FC2  EB0B              jmp short 0x1fcf
00001FC4  8BDE              mov bx,si
00001FC6  D1E3              shl bx,1
00001FC8  C787397FE0FF      mov word [bx+0x7f39],0xffe0
00001FCE  46                inc si
00001FCF  81FED007          cmp si,0x7d0
00001FD3  7CEF              jl 0x1fc4
00001FD5  B850FF            mov ax,0xff50
00001FD8  A32D81            mov [0x812d],ax
00001FDB  A32B81            mov [0x812b],ax
00001FDE  A31D81            mov [0x811d],ax
00001FE1  A31B81            mov [0x811b],ax
00001FE4  B850FF            mov ax,0xff50
00001FE7  A33D81            mov [0x813d],ax
00001FEA  A33B81            mov [0x813b],ax
00001FED  A33981            mov [0x8139],ax
00001FF0  A33781            mov [0x8137],ax
00001FF3  B850FF            mov ax,0xff50
00001FF6  A34B81            mov [0x814b],ax
00001FF9  A34981            mov [0x8149],ax
00001FFC  A34781            mov [0x8147],ax
00001FFF  A33F81            mov [0x813f],ax
00002002  B850FF            mov ax,0xff50
00002005  A35381            mov [0x8153],ax
00002008  A35181            mov [0x8151],ax
0000200B  A34F81            mov [0x814f],ax
0000200E  A34D81            mov [0x814d],ax
00002011  B850FF            mov ax,0xff50
00002014  A36381            mov [0x8163],ax
00002017  A36181            mov [0x8161],ax
0000201A  A35F81            mov [0x815f],ax
0000201D  A35D81            mov [0x815d],ax
00002020  B850FF            mov ax,0xff50
00002023  A37581            mov [0x8175],ax
00002026  A37381            mov [0x8173],ax
00002029  A37181            mov [0x8171],ax
0000202C  A36581            mov [0x8165],ax
0000202F  B850FF            mov ax,0xff50
00002032  A37D81            mov [0x817d],ax
00002035  A37B81            mov [0x817b],ax
00002038  A37981            mov [0x8179],ax
0000203B  A37781            mov [0x8177],ax
0000203E  B850FF            mov ax,0xff50
00002041  A38D81            mov [0x818d],ax
00002044  A38B81            mov [0x818b],ax
00002047  A38981            mov [0x8189],ax
0000204A  A38781            mov [0x8187],ax
0000204D  B850FF            mov ax,0xff50
00002050  A39981            mov [0x8199],ax
00002053  A39781            mov [0x8197],ax
00002056  A39581            mov [0x8195],ax
00002059  A38F81            mov [0x818f],ax
0000205C  B850FF            mov ax,0xff50
0000205F  A3A181            mov [0x81a1],ax
00002062  A39F81            mov [0x819f],ax
00002065  A39D81            mov [0x819d],ax
00002068  A39B81            mov [0x819b],ax
0000206B  B850FF            mov ax,0xff50
0000206E  A3B181            mov [0x81b1],ax
00002071  A3AF81            mov [0x81af],ax
00002074  A3AD81            mov [0x81ad],ax
00002077  A3AB81            mov [0x81ab],ax
0000207A  B850FF            mov ax,0xff50
0000207D  A3BD81            mov [0x81bd],ax
00002080  A3BB81            mov [0x81bb],ax
00002083  A3B981            mov [0x81b9],ax
00002086  A3B381            mov [0x81b3],ax
00002089  B850FF            mov ax,0xff50
0000208C  A3CD81            mov [0x81cd],ax
0000208F  A3CB81            mov [0x81cb],ax
00002092  A3C981            mov [0x81c9],ax
00002095  A3BF81            mov [0x81bf],ax
00002098  B850FF            mov ax,0xff50
0000209B  A3E581            mov [0x81e5],ax
0000209E  A3D781            mov [0x81d7],ax
000020A1  A3D581            mov [0x81d5],ax
000020A4  A3CF81            mov [0x81cf],ax
000020A7  B850FF            mov ax,0xff50
000020AA  A3FD81            mov [0x81fd],ax
000020AD  A3FB81            mov [0x81fb],ax
000020B0  A3F581            mov [0x81f5],ax
000020B3  A3E781            mov [0x81e7],ax
000020B6  B850FF            mov ax,0xff50
000020B9  A31382            mov [0x8213],ax
000020BC  A31182            mov [0x8211],ax
000020BF  A30B82            mov [0x820b],ax
000020C2  A30982            mov [0x8209],ax
000020C5  B850FF            mov ax,0xff50
000020C8  A32782            mov [0x8227],ax
000020CB  A32582            mov [0x8225],ax
000020CE  A31F82            mov [0x821f],ax
000020D1  A31D82            mov [0x821d],ax
000020D4  B850FF            mov ax,0xff50
000020D7  A34382            mov [0x8243],ax
000020DA  A34182            mov [0x8241],ax
000020DD  A33782            mov [0x8237],ax
000020E0  A33582            mov [0x8235],ax
000020E3  B850FF            mov ax,0xff50
000020E6  A35B82            mov [0x825b],ax
000020E9  A35982            mov [0x8259],ax
000020EC  A34B82            mov [0x824b],ax
000020EF  A34982            mov [0x8249],ax
000020F2  B850FF            mov ax,0xff50
000020F5  A36982            mov [0x8269],ax
000020F8  A36782            mov [0x8267],ax
000020FB  A36182            mov [0x8261],ax
000020FE  A35F82            mov [0x825f],ax
00002101  B850FF            mov ax,0xff50
00002104  A37782            mov [0x8277],ax
00002107  A37582            mov [0x8275],ax
0000210A  A36F82            mov [0x826f],ax
0000210D  A36D82            mov [0x826d],ax
00002110  B850FF            mov ax,0xff50
00002113  A39D82            mov [0x829d],ax
00002116  A39B82            mov [0x829b],ax
00002119  A38782            mov [0x8287],ax
0000211C  A38582            mov [0x8285],ax
0000211F  B850FF            mov ax,0xff50
00002122  A3B382            mov [0x82b3],ax
00002125  A3B182            mov [0x82b1],ax
00002128  A3AB82            mov [0x82ab],ax
0000212B  A3A982            mov [0x82a9],ax
0000212E  B850FF            mov ax,0xff50
00002131  A3C782            mov [0x82c7],ax
00002134  A3C582            mov [0x82c5],ax
00002137  A3BF82            mov [0x82bf],ax
0000213A  A3BD82            mov [0x82bd],ax
0000213D  B850FF            mov ax,0xff50
00002140  A3E382            mov [0x82e3],ax
00002143  A3E182            mov [0x82e1],ax
00002146  A3D782            mov [0x82d7],ax
00002149  A3D582            mov [0x82d5],ax
0000214C  B850FF            mov ax,0xff50
0000214F  A3FB82            mov [0x82fb],ax
00002152  A3F982            mov [0x82f9],ax
00002155  A3EB82            mov [0x82eb],ax
00002158  A3E982            mov [0x82e9],ax
0000215B  B850FF            mov ax,0xff50
0000215E  A30783            mov [0x8307],ax
00002161  A30583            mov [0x8305],ax
00002164  A30383            mov [0x8303],ax
00002167  A30183            mov [0x8301],ax
0000216A  B850FF            mov ax,0xff50
0000216D  A31783            mov [0x8317],ax
00002170  A31583            mov [0x8315],ax
00002173  A30F83            mov [0x830f],ax
00002176  A30D83            mov [0x830d],ax
00002179  B850FF            mov ax,0xff50
0000217C  A32783            mov [0x8327],ax
0000217F  A32583            mov [0x8325],ax
00002182  A31B83            mov [0x831b],ax
00002185  A31983            mov [0x8319],ax
00002188  B850FF            mov ax,0xff50
0000218B  A33183            mov [0x8331],ax
0000218E  A32F83            mov [0x832f],ax
00002191  A32D83            mov [0x832d],ax
00002194  A32B83            mov [0x832b],ax
00002197  B850FF            mov ax,0xff50
0000219A  A34183            mov [0x8341],ax
0000219D  A33D83            mov [0x833d],ax
000021A0  A33B83            mov [0x833b],ax
000021A3  A33383            mov [0x8333],ax
000021A6  B850FF            mov ax,0xff50
000021A9  A34983            mov [0x8349],ax
000021AC  A34783            mov [0x8347],ax
000021AF  A34583            mov [0x8345],ax
000021B2  A34383            mov [0x8343],ax
000021B5  B850FF            mov ax,0xff50
000021B8  A35783            mov [0x8357],ax
000021BB  A35383            mov [0x8353],ax
000021BE  A35183            mov [0x8351],ax
000021C1  A34B83            mov [0x834b],ax
000021C4  B850FF            mov ax,0xff50
000021C7  A36583            mov [0x8365],ax
000021CA  A35D83            mov [0x835d],ax
000021CD  A35B83            mov [0x835b],ax
000021D0  A35983            mov [0x8359],ax
000021D3  B850FF            mov ax,0xff50
000021D6  A37583            mov [0x8375],ax
000021D9  A36B83            mov [0x836b],ax
000021DC  A36983            mov [0x8369],ax
000021DF  A36783            mov [0x8367],ax
000021E2  B850FF            mov ax,0xff50
000021E5  A38983            mov [0x8389],ax
000021E8  A38383            mov [0x8383],ax
000021EB  A38183            mov [0x8381],ax
000021EE  A37783            mov [0x8377],ax
000021F1  B850FF            mov ax,0xff50
000021F4  A39983            mov [0x8399],ax
000021F7  A38F83            mov [0x838f],ax
000021FA  A38D83            mov [0x838d],ax
000021FD  A38B83            mov [0x838b],ax
00002200  B850FF            mov ax,0xff50
00002203  A3AD83            mov [0x83ad],ax
00002206  A3A583            mov [0x83a5],ax
00002209  A3A383            mov [0x83a3],ax
0000220C  A39B83            mov [0x839b],ax
0000220F  B850FF            mov ax,0xff50
00002212  A3C583            mov [0x83c5],ax
00002215  A3B783            mov [0x83b7],ax
00002218  A3B583            mov [0x83b5],ax
0000221B  A3AF83            mov [0x83af],ax
0000221E  B850FF            mov ax,0xff50
00002221  A3DB83            mov [0x83db],ax
00002224  A3D583            mov [0x83d5],ax
00002227  A3D383            mov [0x83d3],ax
0000222A  A3C783            mov [0x83c7],ax
0000222D  B850FF            mov ax,0xff50
00002230  A3F183            mov [0x83f1],ax
00002233  A3EB83            mov [0x83eb],ax
00002236  A3E983            mov [0x83e9],ax
00002239  A3DD83            mov [0x83dd],ax
0000223C  B850FF            mov ax,0xff50
0000223F  A31584            mov [0x8415],ax
00002242  A30784            mov [0x8407],ax
00002245  A30584            mov [0x8405],ax
00002248  A3F383            mov [0x83f3],ax
0000224B  B850FF            mov ax,0xff50
0000224E  A32984            mov [0x8429],ax
00002251  A32384            mov [0x8423],ax
00002254  A32184            mov [0x8421],ax
00002257  A31784            mov [0x8417],ax
0000225A  B850FF            mov ax,0xff50
0000225D  A34D84            mov [0x844d],ax
00002260  A33B84            mov [0x843b],ax
00002263  A33984            mov [0x8439],ax
00002266  A32B84            mov [0x842b],ax
00002269  B850FF            mov ax,0xff50
0000226C  A36584            mov [0x8465],ax
0000226F  A35784            mov [0x8457],ax
00002272  A35584            mov [0x8455],ax
00002275  A34F84            mov [0x844f],ax
00002278  B850FF            mov ax,0xff50
0000227B  A37B84            mov [0x847b],ax
0000227E  A37584            mov [0x8475],ax
00002281  A37384            mov [0x8473],ax
00002284  A36784            mov [0x8467],ax
00002287  B850FF            mov ax,0xff50
0000228A  A39184            mov [0x8491],ax
0000228D  A38B84            mov [0x848b],ax
00002290  A38984            mov [0x8489],ax
00002293  A37D84            mov [0x847d],ax
00002296  B850FF            mov ax,0xff50
00002299  A3B584            mov [0x84b5],ax
0000229C  A3A784            mov [0x84a7],ax
0000229F  A3A584            mov [0x84a5],ax
000022A2  A39384            mov [0x8493],ax
000022A5  B850FF            mov ax,0xff50
000022A8  A3C984            mov [0x84c9],ax
000022AB  A3C384            mov [0x84c3],ax
000022AE  A3C184            mov [0x84c1],ax
000022B1  A3B784            mov [0x84b7],ax
000022B4  B850FF            mov ax,0xff50
000022B7  A3ED84            mov [0x84ed],ax
000022BA  A3DB84            mov [0x84db],ax
000022BD  A3D984            mov [0x84d9],ax
000022C0  A3CB84            mov [0x84cb],ax
000022C3  B850FF            mov ax,0xff50
000022C6  A3FB84            mov [0x84fb],ax
000022C9  A3F984            mov [0x84f9],ax
000022CC  A3F784            mov [0x84f7],ax
000022CF  A3EF84            mov [0x84ef],ax
000022D2  B850FF            mov ax,0xff50
000022D5  A30985            mov [0x8509],ax
000022D8  A30785            mov [0x8507],ax
000022DB  A3FF84            mov [0x84ff],ax
000022DE  A3FD84            mov [0x84fd],ax
000022E1  B850FF            mov ax,0xff50
000022E4  A31185            mov [0x8511],ax
000022E7  A30F85            mov [0x850f],ax
000022EA  A30D85            mov [0x850d],ax
000022ED  A30B85            mov [0x850b],ax
000022F0  B850FF            mov ax,0xff50
000022F3  A32985            mov [0x8529],ax
000022F6  A31D85            mov [0x851d],ax
000022F9  A31B85            mov [0x851b],ax
000022FC  A31385            mov [0x8513],ax
000022FF  B850FF            mov ax,0xff50
00002302  A34785            mov [0x8547],ax
00002305  A33385            mov [0x8533],ax
00002308  A33185            mov [0x8531],ax
0000230B  A32B85            mov [0x852b],ax
0000230E  B850FF            mov ax,0xff50
00002311  A34F85            mov [0x854f],ax
00002314  A34D85            mov [0x854d],ax
00002317  A34B85            mov [0x854b],ax
0000231A  A34985            mov [0x8549],ax
0000231D  B850FF            mov ax,0xff50
00002320  A35D85            mov [0x855d],ax
00002323  A35B85            mov [0x855b],ax
00002326  A35785            mov [0x8557],ax
00002329  A35585            mov [0x8555],ax
0000232C  B850FF            mov ax,0xff50
0000232F  A36D85            mov [0x856d],ax
00002332  A36B85            mov [0x856b],ax
00002335  A36185            mov [0x8561],ax
00002338  A35F85            mov [0x855f],ax
0000233B  B850FF            mov ax,0xff50
0000233E  A37385            mov [0x8573],ax
00002341  A37185            mov [0x8571],ax
00002344  A36F85            mov [0x856f],ax
00002347  5E                pop si
00002348  C3                ret
00002349  56                push si
0000234A  C706C0970F00      mov word [0x97c0],0xf
00002350  33F6              xor si,si
00002352  EB0C              jmp short 0x2360
00002354  A1C097            mov ax,[0x97c0]
00002357  8BDE              mov bx,si
00002359  D1E3              shl bx,1
0000235B  8987AA69          mov [bx+0x69aa],ax
0000235F  46                inc si
00002360  81FE0001          cmp si,0x100
00002364  7CEE              jl 0x2354
00002366  B8FDFF            mov ax,0xfffd
00002369  99                cwd
0000236A  33C2              xor ax,dx
0000236C  2BC2              sub ax,dx
0000236E  8BD8              mov bx,ax
00002370  D1E3              shl bx,1
00002372  C787AA690400      mov word [bx+0x69aa],0x4
00002378  B850FF            mov ax,0xff50
0000237B  99                cwd
0000237C  33C2              xor ax,dx
0000237E  2BC2              sub ax,dx
00002380  8BD8              mov bx,ax
00002382  D1E3              shl bx,1
00002384  C787AA690300      mov word [bx+0x69aa],0x3
0000238A  B8E2FF            mov ax,0xffe2
0000238D  99                cwd
0000238E  33C2              xor ax,dx
00002390  2BC2              sub ax,dx
00002392  8BD8              mov bx,ax
00002394  D1E3              shl bx,1
00002396  C787AA690F00      mov word [bx+0x69aa],0xf
0000239C  C7062A6A0200      mov word [0x6a2a],0x2
000023A2  C706C8690500      mov word [0x69c8],0x5
000023A8  C706D26A0100      mov word [0x6ad2],0x1
000023AE  C7067E690400      mov word [0x697e],0x4
000023B4  C706AC690200      mov word [0x69ac],0x2
000023BA  C706AE690600      mov word [0x69ae],0x6
000023C0  E86E3B            call word 0x5f31
000023C3  253000            and ax,0x30
000023C6  3D2000            cmp ax,0x20
000023C9  7420              jz 0x23eb
000023CB  33F6              xor si,si
000023CD  EB16              jmp short 0x23e5
000023CF  8BDE              mov bx,si
000023D1  D1E3              shl bx,1
000023D3  83BFAA6900        cmp word [bx+0x69aa],byte +0x0
000023D8  740A              jz 0x23e4
000023DA  8BDE              mov bx,si
000023DC  D1E3              shl bx,1
000023DE  C787AA690700      mov word [bx+0x69aa],0x7
000023E4  46                inc si
000023E5  81FE0001          cmp si,0x100
000023E9  7CE4              jl 0x23cf
000023EB  5E                pop si
000023EC  C3                ret
000023ED  55                push bp
000023EE  8BEC              mov bp,sp
000023F0  83EC0E            sub sp,byte +0xe
000023F3  56                push si
000023F4  57                push di
000023F5  C746F20300        mov word [bp-0xe],0x3
000023FA  837E0401          cmp word [bp+0x4],byte +0x1
000023FE  7E5A              jng 0x245a
00002400  8B5E06            mov bx,[bp+0x6]
00002403  FF7702            push word [bx+0x2]
00002406  E8B634            call word 0x58bf
00002409  59                pop cx
0000240A  50                push ax
0000240B  B86F64            mov ax,0x646f
0000240E  50                push ax
0000240F  E8D614            call word 0x38e8
00002412  59                pop cx
00002413  59                pop cx
00002414  0BC0              or ax,ax
00002416  7507              jnz 0x241f
00002418  C746F20200        mov word [bp-0xe],0x2
0000241D  EB3B              jmp short 0x245a
0000241F  8B5E06            mov bx,[bp+0x6]
00002422  FF7702            push word [bx+0x2]
00002425  B87464            mov ax,0x6474
00002428  50                push ax
00002429  E8BC14            call word 0x38e8
0000242C  59                pop cx
0000242D  59                pop cx
0000242E  0BC0              or ax,ax
00002430  7428              jz 0x245a
00002432  8B5E06            mov bx,[bp+0x6]
00002435  FF37              push word [bx]
00002437  B87A64            mov ax,0x647a
0000243A  50                push ax
0000243B  E88A16            call word 0x3ac8
0000243E  59                pop cx
0000243F  59                pop cx
00002440  833E0C6100        cmp word [0x610c],byte +0x0
00002445  7408              jz 0x244f
00002447  B8B80B            mov ax,0xbb8
0000244A  50                push ax
0000244B  E82E33            call word 0x577c
0000244E  59                pop cx
0000244F  B8D007            mov ax,0x7d0
00002452  50                push ax
00002453  E85029            call word 0x4da6
00002456  59                pop cx
00002457  E84E33            call word 0x57a8
0000245A  B80B65            mov ax,0x650b
0000245D  50                push ax
0000245E  E8A3E5            call word 0xa04
00002461  59                pop cx
00002462  FF76F2            push word [bp-0xe]
00002465  E84AF8            call word 0x1cb2
00002468  59                pop cx
00002469  E8C53A            call word 0x5f31
0000246C  253000            and ax,0x30
0000246F  3D2000            cmp ax,0x20
00002472  7505              jnz 0x2479
00002474  B80100            mov ax,0x1
00002477  EB02              jmp short 0x247b
00002479  33C0              xor ax,ax
0000247B  99                cwd
0000247C  B11B              mov cl,0x1b
0000247E  0E                push cs
0000247F  E8CC2C            call word 0x514e
00002482  050000            add ax,0x0
00002485  81D200B0          adc dx,0xb000
00002489  8916B296          mov [0x96b2],dx
0000248D  A3B096            mov [0x96b0],ax
00002490  E8B6FE            call word 0x2349
00002493  E99A01            jmp word 0x2630
00002496  33C0              xor ax,ax
00002498  50                push ax
00002499  E8AC33            call word 0x5848
0000249C  59                pop cx
0000249D  50                push ax
0000249E  E8042F            call word 0x53a5
000024A1  59                pop cx
000024A2  FF165A98          call word [0x985a]
000024A6  33F6              xor si,si
000024A8  EB0F              jmp short 0x24b9
000024AA  33C0              xor ax,ax
000024AC  50                push ax
000024AD  B8E0FF            mov ax,0xffe0
000024B0  50                push ax
000024B1  56                push si
000024B2  E896E9            call word 0xe4b
000024B5  83C406            add sp,byte +0x6
000024B8  46                inc si
000024B9  81FED007          cmp si,0x7d0
000024BD  7CEB              jl 0x24aa
000024BF  C706A4690000      mov word [0x69a4],0x0
000024C5  C706A2690000      mov word [0x69a2],0x0
000024CB  C746FE0100        mov word [bp-0x2],0x1
000024D0  C746FC2800        mov word [bp-0x4],0x28
000024D5  BF1400            mov di,0x14
000024D8  C746F40100        mov word [bp-0xc],0x1
000024DD  C746F60500        mov word [bp-0xa],0x5
000024E2  C746F80500        mov word [bp-0x8],0x5
000024E7  C746FA0000        mov word [bp-0x6],0x0
000024EC  33C0              xor ax,ax
000024EE  A34E7B            mov [0x7b4e],ax
000024F1  A35898            mov [0x9858],ax
000024F4  A3BA97            mov [0x97ba],ax
000024F7  A3B897            mov [0x97b8],ax
000024FA  C70668610000      mov word [0x6168],0x0
00002500  C7065E981400      mov word [0x985e],0x14
00002506  C706B6960000      mov word [0x96b6],0x0
0000250C  C706B4963075      mov word [0x96b4],0x7530
00002512  C706AE966400      mov word [0x96ae],0x64
00002518  C7065C981400      mov word [0x985c],0x14
0000251E  E8FCE1            call word 0x71d
00002521  EB6B              jmp short 0x258e
00002523  83FF1E            cmp di,byte +0x1e
00002526  7E06              jng 0x252e
00002528  BF0F00            mov di,0xf
0000252B  FF46F4            inc word [bp-0xc]
0000252E  E8C7F7            call word 0x1cf8
00002531  FF76F8            push word [bp-0x8]
00002534  FF76F6            push word [bp-0xa]
00002537  57                push di
00002538  FF76F4            push word [bp-0xc]
0000253B  E80BF7            call word 0x1c49
0000253E  83C408            add sp,byte +0x8
00002541  E81FE0            call word 0x563
00002544  E8F9E0            call word 0x640
00002547  FF76FC            push word [bp-0x4]
0000254A  E8C6F2            call word 0x1813
0000254D  59                pop cx
0000254E  8946FA            mov [bp-0x6],ax
00002551  E86BE1            call word 0x6bf
00002554  E8B6F5            call word 0x1b0d
00002557  837EFA00          cmp word [bp-0x6],byte +0x0
0000255B  750B              jnz 0x2568
0000255D  8B46FE            mov ax,[bp-0x2]
00002560  FF46FE            inc word [bp-0x2]
00002563  50                push ax
00002564  E8B2F7            call word 0x1d19
00002567  59                pop cx
00002568  83C70A            add di,byte +0xa
0000256B  FF46F6            inc word [bp-0xa]
0000256E  8346F802          add word [bp-0x8],byte +0x2
00002572  FF4EFC            dec word [bp-0x4]
00002575  812EB4968813      sub word [0x96b4],0x1388
0000257B  831EB69600        sbb word [0x96b6],byte +0x0
00002580  832E5E9803        sub word [0x985e],byte +0x3
00002585  832EAE9605        sub word [0x96ae],byte +0x5
0000258A  FF0E5C98          dec word [0x985c]
0000258E  837EFA00          cmp word [bp-0x6],byte +0x0
00002592  748F              jz 0x2523
00002594  E841DD            call word 0x2d8
00002597  33F6              xor si,si
00002599  EB25              jmp short 0x25c0
0000259B  B84B00            mov ax,0x4b
0000259E  50                push ax
0000259F  B86400            mov ax,0x64
000025A2  50                push ax
000025A3  B850FF            mov ax,0xff50
000025A6  50                push ax
000025A7  E823ED            call word 0x12cd
000025AA  83C406            add sp,byte +0x6
000025AD  B84B00            mov ax,0x4b
000025B0  50                push ax
000025B1  B86400            mov ax,0x64
000025B4  50                push ax
000025B5  B8FDFF            mov ax,0xfffd
000025B8  50                push ax
000025B9  E811ED            call word 0x12cd
000025BC  83C406            add sp,byte +0x6
000025BF  46                inc si
000025C0  83FE12            cmp si,byte +0x12
000025C3  7CD6              jl 0x259b
000025C5  B8E803            mov ax,0x3e8
000025C8  50                push ax
000025C9  E8DA27            call word 0x4da6
000025CC  59                pop cx
000025CD  FF165A98          call word [0x985a]
000025D1  EB07              jmp short 0x25da
000025D3  33C0              xor ax,ax
000025D5  50                push ax
000025D6  E87639            call word 0x5f4f
000025D9  59                pop cx
000025DA  B80100            mov ax,0x1
000025DD  50                push ax
000025DE  E86E39            call word 0x5f4f
000025E1  59                pop cx
000025E2  0BC0              or ax,ax
000025E4  75ED              jnz 0x25d3
000025E6  E870E1            call word 0x759
000025E9  FF36A469          push word [0x69a4]
000025ED  FF36A269          push word [0x69a2]
000025F1  E87AE5            call word 0xb6e
000025F4  59                pop cx
000025F5  59                pop cx
000025F6  FF165A98          call word [0x985a]
000025FA  E8DBE4            call word 0xad8
000025FD  33F6              xor si,si
000025FF  EB09              jmp short 0x260a
00002601  B8E803            mov ax,0x3e8
00002604  50                push ax
00002605  E89E27            call word 0x4da6
00002608  59                pop cx
00002609  46                inc si
0000260A  83FE14            cmp si,byte +0x14
0000260D  7D15              jnl 0x2624
0000260F  B80100            mov ax,0x1
00002612  50                push ax
00002613  E83939            call word 0x5f4f
00002616  59                pop cx
00002617  0BC0              or ax,ax
00002619  74E6              jz 0x2601
0000261B  EB07              jmp short 0x2624
0000261D  33C0              xor ax,ax
0000261F  50                push ax
00002620  E82C39            call word 0x5f4f
00002623  59                pop cx
00002624  B80100            mov ax,0x1
00002627  50                push ax
00002628  E82439            call word 0x5f4f
0000262B  59                pop cx
0000262C  0BC0              or ax,ax
0000262E  75ED              jnz 0x261d
00002630  E83BF7            call word 0x1d6e
00002633  0BC0              or ax,ax
00002635  7403              jz 0x263a
00002637  E95CFE            jmp word 0x2496
0000263A  B80B65            mov ax,0x650b
0000263D  50                push ax
0000263E  E85BE3            call word 0x99c
00002641  59                pop cx
00002642  FF165A98          call word [0x985a]
00002646  5F                pop di
00002647  5E                pop si
00002648  8BE5              mov sp,bp
0000264A  5D                pop bp
0000264B  C3                ret
0000264C  55                push bp
0000264D  8BEC              mov bp,sp
0000264F  56                push si
00002650  8B7604            mov si,[bp+0x4]
00002653  0BF6              or si,si
00002655  7C14              jl 0x266b
00002657  83FE58            cmp si,byte +0x58
0000265A  7603              jna 0x265f
0000265C  BE5700            mov si,0x57
0000265F  89361865          mov [0x6518],si
00002663  8A841A65          mov al,[si+0x651a]
00002667  98                cbw
00002668  96                xchg ax,si
00002669  EB0D              jmp short 0x2678
0000266B  F7DE              neg si
0000266D  83FE23            cmp si,byte +0x23
00002670  77EA              ja 0x265c
00002672  C7061865FFFF      mov word [0x6518],0xffff
00002678  8BC6              mov ax,si
0000267A  A30B60            mov [0x600b],ax
0000267D  B8FFFF            mov ax,0xffff
00002680  EB00              jmp short 0x2682
00002682  5E                pop si
00002683  5D                pop bp
00002684  C20200            ret 0x2
00002687  C3                ret
00002688  55                push bp
00002689  8BEC              mov bp,sp
0000268B  EB0A              jmp short 0x2697
0000268D  8B1E7C65          mov bx,[0x657c]
00002691  D1E3              shl bx,1
00002693  FF976098          call word [bx-0x67a0]
00002697  A17C65            mov ax,[0x657c]
0000269A  FF0E7C65          dec word [0x657c]
0000269E  0BC0              or ax,ax
000026A0  75EB              jnz 0x268d
000026A2  FF167465          call word [0x6574]
000026A6  FF167665          call word [0x6576]
000026AA  FF167865          call word [0x6578]
000026AE  FF7604            push word [bp+0x4]
000026B1  E86CDB            call word 0x220
000026B4  59                pop cx
000026B5  5D                pop bp
000026B6  C3                ret
000026B7  0000              add [bx+si],al
000026B9  0000              add [bx+si],al
000026BB  0000              add [bx+si],al
000026BD  2E8F06B726        pop word [cs:0x26b7]
000026C2  2E8C1EB926        mov [cs:0x26b9],ds
000026C7  FC                cld
000026C8  8E060760          mov es,[0x6007]
000026CC  BE8000            mov si,0x80
000026CF  32E4              xor ah,ah
000026D1  26AC              es lodsb
000026D3  40                inc ax
000026D4  8CC5              mov bp,es
000026D6  87D6              xchg dx,si
000026D8  93                xchg ax,bx
000026D9  8B360160          mov si,[0x6001]
000026DD  83C602            add si,byte +0x2
000026E0  B90100            mov cx,0x1
000026E3  803E096003        cmp byte [0x6009],0x3
000026E8  7211              jc 0x26fb
000026EA  8E060360          mov es,[0x6003]
000026EE  8BFE              mov di,si
000026F0  B17F              mov cl,0x7f
000026F2  32C0              xor al,al
000026F4  F2AE              repne scasb
000026F6  E376              jcxz 0x276e
000026F8  80F17F            xor cl,0x7f
000026FB  83EC02            sub sp,byte +0x2
000026FE  B80100            mov ax,0x1
00002701  03C3              add ax,bx
00002703  03C1              add ax,cx
00002705  25FEFF            and ax,0xfffe
00002708  8BFC              mov di,sp
0000270A  2BF8              sub di,ax
0000270C  7260              jc 0x276e
0000270E  8BE7              mov sp,di
00002710  8CC0              mov ax,es
00002712  8ED8              mov ds,ax
00002714  8CD0              mov ax,ss
00002716  8EC0              mov es,ax
00002718  51                push cx
00002719  49                dec cx
0000271A  F3A4              rep movsb
0000271C  32C0              xor al,al
0000271E  AA                stosb
0000271F  8EDD              mov ds,bp
00002721  87F2              xchg si,dx
00002723  87D9              xchg bx,cx
00002725  8BC3              mov ax,bx
00002727  8BD0              mov dx,ax
00002729  43                inc bx
0000272A  E81900            call word 0x2746
0000272D  7707              ja 0x2736
0000272F  7240              jc 0x2771
00002731  E81200            call word 0x2746
00002734  77F9              ja 0x272f
00002736  3C20              cmp al,0x20
00002738  7408              jz 0x2742
0000273A  3C0D              cmp al,0xd
0000273C  7404              jz 0x2742
0000273E  3C09              cmp al,0x9
00002740  75E8              jnz 0x272a
00002742  32C0              xor al,al
00002744  EBE4              jmp short 0x272a
00002746  0BC0              or ax,ax
00002748  7407              jz 0x2751
0000274A  42                inc dx
0000274B  AA                stosb
0000274C  0AC0              or al,al
0000274E  7501              jnz 0x2751
00002750  43                inc bx
00002751  86E0              xchg ah,al
00002753  32C0              xor al,al
00002755  F9                stc
00002756  E315              jcxz 0x276d
00002758  AC                lodsb
00002759  49                dec cx
0000275A  2C22              sub al,0x22
0000275C  740F              jz 0x276d
0000275E  0422              add al,0x22
00002760  3C5C              cmp al,0x5c
00002762  7507              jnz 0x276b
00002764  803C22            cmp byte [si],0x22
00002767  7502              jnz 0x276b
00002769  AC                lodsb
0000276A  49                dec cx
0000276B  0BF6              or si,si
0000276D  C3                ret
0000276E  E94FDB            jmp word 0x2c0
00002771  59                pop cx
00002772  03CA              add cx,dx
00002774  2E8E1EB926        mov ds,[cs:0x26b9]
00002779  891EFB5F          mov [0x5ffb],bx
0000277D  43                inc bx
0000277E  03DB              add bx,bx
00002780  8BF4              mov si,sp
00002782  8BEC              mov bp,sp
00002784  2BEB              sub bp,bx
00002786  72E6              jc 0x276e
00002788  8BE5              mov sp,bp
0000278A  892EFD5F          mov [0x5ffd],bp
0000278E  E30E              jcxz 0x279e
00002790  897600            mov [bp+0x0],si
00002793  83C502            add bp,byte +0x2
00002796  36AC              ss lodsb
00002798  0AC0              or al,al
0000279A  E0FA              loopne 0x2796
0000279C  74F0              jz 0x278e
0000279E  33C0              xor ax,ax
000027A0  894600            mov [bp+0x0],ax
000027A3  2EFF26B726        jmp word [cs:0x26b7]
000027A8  8B0E0160          mov cx,[0x6001]
000027AC  51                push cx
000027AD  E84701            call word 0x28f7
000027B0  59                pop cx
000027B1  8BF8              mov di,ax
000027B3  0BC0              or ax,ax
000027B5  7424              jz 0x27db
000027B7  1E                push ds
000027B8  1E                push ds
000027B9  07                pop es
000027BA  8E1E0360          mov ds,[0x6003]
000027BE  33F6              xor si,si
000027C0  FC                cld
000027C1  F3A4              rep movsb
000027C3  1F                pop ds
000027C4  8BF8              mov di,ax
000027C6  06                push es
000027C7  FF360560          push word [0x6005]
000027CB  E82901            call word 0x28f7
000027CE  83C402            add sp,byte +0x2
000027D1  8BD8              mov bx,ax
000027D3  07                pop es
000027D4  A3FF5F            mov [0x5fff],ax
000027D7  0BC0              or ax,ax
000027D9  7503              jnz 0x27de
000027DB  E9E2DA            jmp word 0x2c0
000027DE  33C0              xor ax,ax
000027E0  B9FFFF            mov cx,0xffff
000027E3  893F              mov [bx],di
000027E5  83C302            add bx,byte +0x2
000027E8  F2AE              repne scasb
000027EA  263805            cmp [es:di],al
000027ED  75F4              jnz 0x27e3
000027EF  8907              mov [bx],ax
000027F1  C3                ret
000027F2  55                push bp
000027F3  8BEC              mov bp,sp
000027F5  833E7C6520        cmp word [0x657c],byte +0x20
000027FA  7505              jnz 0x2801
000027FC  B80100            mov ax,0x1
000027FF  EB15              jmp short 0x2816
00002801  8B4604            mov ax,[bp+0x4]
00002804  8B1E7C65          mov bx,[0x657c]
00002808  D1E3              shl bx,1
0000280A  89876098          mov [bx-0x67a0],ax
0000280E  FF067C65          inc word [0x657c]
00002812  33C0              xor ax,ax
00002814  EB00              jmp short 0x2816
00002816  5D                pop bp
00002817  C3                ret
00002818  55                push bp
00002819  8BEC              mov bp,sp
0000281B  56                push si
0000281C  57                push di
0000281D  8B7E04            mov di,[bp+0x4]
00002820  8B4506            mov ax,[di+0x6]
00002823  A3A298            mov [0x98a2],ax
00002826  3BC7              cmp ax,di
00002828  7508              jnz 0x2832
0000282A  C706A2980000      mov word [0x98a2],0x0
00002830  EB10              jmp short 0x2842
00002832  8B7504            mov si,[di+0x4]
00002835  8B1EA298          mov bx,[0x98a2]
00002839  897704            mov [bx+0x4],si
0000283C  A1A298            mov ax,[0x98a2]
0000283F  894406            mov [si+0x6],ax
00002842  5F                pop di
00002843  5E                pop si
00002844  5D                pop bp
00002845  C3                ret
00002846  55                push bp
00002847  8BEC              mov bp,sp
00002849  56                push si
0000284A  57                push di
0000284B  8B7E04            mov di,[bp+0x4]
0000284E  8B4606            mov ax,[bp+0x6]
00002851  2905              sub [di],ax
00002853  8B35              mov si,[di]
00002855  03F7              add si,di
00002857  8B4606            mov ax,[bp+0x6]
0000285A  40                inc ax
0000285B  8904              mov [si],ax
0000285D  897C02            mov [si+0x2],di
00002860  A1A098            mov ax,[0x98a0]
00002863  3BC7              cmp ax,di
00002865  7506              jnz 0x286d
00002867  8936A098          mov [0x98a0],si
0000286B  EB08              jmp short 0x2875
0000286D  8BFE              mov di,si
0000286F  037E06            add di,[bp+0x6]
00002872  897502            mov [di+0x2],si
00002875  8BC6              mov ax,si
00002877  050400            add ax,0x4
0000287A  EB00              jmp short 0x287c
0000287C  5F                pop di
0000287D  5E                pop si
0000287E  5D                pop bp
0000287F  C3                ret
00002880  55                push bp
00002881  8BEC              mov bp,sp
00002883  56                push si
00002884  8B4604            mov ax,[bp+0x4]
00002887  33D2              xor dx,dx
00002889  25FFFF            and ax,0xffff
0000288C  81E20000          and dx,0x0
00002890  52                push dx
00002891  50                push ax
00002892  E8F400            call word 0x2989
00002895  59                pop cx
00002896  59                pop cx
00002897  8BF0              mov si,ax
00002899  83FEFF            cmp si,byte -0x1
0000289C  7504              jnz 0x28a2
0000289E  33C0              xor ax,ax
000028A0  EB18              jmp short 0x28ba
000028A2  A1A098            mov ax,[0x98a0]
000028A5  894402            mov [si+0x2],ax
000028A8  8B4604            mov ax,[bp+0x4]
000028AB  40                inc ax
000028AC  8904              mov [si],ax
000028AE  8936A098          mov [0x98a0],si
000028B2  A1A098            mov ax,[0x98a0]
000028B5  050400            add ax,0x4
000028B8  EB00              jmp short 0x28ba
000028BA  5E                pop si
000028BB  5D                pop bp
000028BC  C3                ret
000028BD  55                push bp
000028BE  8BEC              mov bp,sp
000028C0  56                push si
000028C1  8B4604            mov ax,[bp+0x4]
000028C4  33D2              xor dx,dx
000028C6  25FFFF            and ax,0xffff
000028C9  81E20000          and dx,0x0
000028CD  52                push dx
000028CE  50                push ax
000028CF  E8B700            call word 0x2989
000028D2  59                pop cx
000028D3  59                pop cx
000028D4  8BF0              mov si,ax
000028D6  83FEFF            cmp si,byte -0x1
000028D9  7504              jnz 0x28df
000028DB  33C0              xor ax,ax
000028DD  EB15              jmp short 0x28f4
000028DF  8936A498          mov [0x98a4],si
000028E3  8936A098          mov [0x98a0],si
000028E7  8B4604            mov ax,[bp+0x4]
000028EA  40                inc ax
000028EB  8904              mov [si],ax
000028ED  8BC6              mov ax,si
000028EF  050400            add ax,0x4
000028F2  EB00              jmp short 0x28f4
000028F4  5E                pop si
000028F5  5D                pop bp
000028F6  C3                ret
000028F7  55                push bp
000028F8  8BEC              mov bp,sp
000028FA  56                push si
000028FB  57                push di
000028FC  8B7E04            mov di,[bp+0x4]
000028FF  0BFF              or di,di
00002901  7504              jnz 0x2907
00002903  33C0              xor ax,ax
00002905  EB5A              jmp short 0x2961
00002907  8BC7              mov ax,di
00002909  050B00            add ax,0xb
0000290C  25F8FF            and ax,0xfff8
0000290F  8BF8              mov di,ax
00002911  833EA49800        cmp word [0x98a4],byte +0x0
00002916  7507              jnz 0x291f
00002918  57                push di
00002919  E8A1FF            call word 0x28bd
0000291C  59                pop cx
0000291D  EB42              jmp short 0x2961
0000291F  8B36A298          mov si,[0x98a2]
00002923  8BC6              mov ax,si
00002925  0BC0              or ax,ax
00002927  7431              jz 0x295a
00002929  8B04              mov ax,[si]
0000292B  8BD7              mov dx,di
0000292D  83C228            add dx,byte +0x28
00002930  3BC2              cmp ax,dx
00002932  7209              jc 0x293d
00002934  57                push di
00002935  56                push si
00002936  E80DFF            call word 0x2846
00002939  59                pop cx
0000293A  59                pop cx
0000293B  EB24              jmp short 0x2961
0000293D  8B04              mov ax,[si]
0000293F  3BC7              cmp ax,di
00002941  720E              jc 0x2951
00002943  56                push si
00002944  E8D1FE            call word 0x2818
00002947  59                pop cx
00002948  FF04              inc word [si]
0000294A  8BC6              mov ax,si
0000294C  050400            add ax,0x4
0000294F  EB10              jmp short 0x2961
00002951  8B7406            mov si,[si+0x6]
00002954  3B36A298          cmp si,[0x98a2]
00002958  75CF              jnz 0x2929
0000295A  57                push di
0000295B  E822FF            call word 0x2880
0000295E  59                pop cx
0000295F  EB00              jmp short 0x2961
00002961  5F                pop di
00002962  5E                pop si
00002963  5D                pop bp
00002964  C3                ret
00002965  55                push bp
00002966  8BEC              mov bp,sp
00002968  8B4604            mov ax,[bp+0x4]
0000296B  8BD4              mov dx,sp
0000296D  81EA0001          sub dx,0x100
00002971  3BC2              cmp ax,dx
00002973  7307              jnc 0x297c
00002975  A31560            mov [0x6015],ax
00002978  33C0              xor ax,ax
0000297A  EB0B              jmp short 0x2987
0000297C  C7060B600800      mov word [0x600b],0x8
00002982  B8FFFF            mov ax,0xffff
00002985  EB00              jmp short 0x2987
00002987  5D                pop bp
00002988  C3                ret
00002989  55                push bp
0000298A  8BEC              mov bp,sp
0000298C  8B4604            mov ax,[bp+0x4]
0000298F  8B5606            mov dx,[bp+0x6]
00002992  03061560          add ax,[0x6015]
00002996  83D200            adc dx,byte +0x0
00002999  8BC8              mov cx,ax
0000299B  81C10001          add cx,0x100
0000299F  83D200            adc dx,byte +0x0
000029A2  0BD2              or dx,dx
000029A4  750A              jnz 0x29b0
000029A6  3BCC              cmp cx,sp
000029A8  7306              jnc 0x29b0
000029AA  87061560          xchg ax,[0x6015]
000029AE  EB0B              jmp short 0x29bb
000029B0  C7060B600800      mov word [0x600b],0x8
000029B6  B8FFFF            mov ax,0xffff
000029B9  EB00              jmp short 0x29bb
000029BB  5D                pop bp
000029BC  C3                ret
000029BD  55                push bp
000029BE  8BEC              mov bp,sp
000029C0  FF7604            push word [bp+0x4]
000029C3  E89FFF            call word 0x2965
000029C6  59                pop cx
000029C7  EB00              jmp short 0x29c9
000029C9  5D                pop bp
000029CA  C3                ret
000029CB  55                push bp
000029CC  8BEC              mov bp,sp
000029CE  8B4604            mov ax,[bp+0x4]
000029D1  99                cwd
000029D2  52                push dx
000029D3  50                push ax
000029D4  E8B2FF            call word 0x2989
000029D7  8BE5              mov sp,bp
000029D9  EB00              jmp short 0x29db
000029DB  5D                pop bp
000029DC  C3                ret
000029DD  55                push bp
000029DE  8BEC              mov bp,sp
000029E0  83EC06            sub sp,byte +0x6
000029E3  56                push si
000029E4  57                push di
000029E5  8B7608            mov si,[bp+0x8]
000029E8  33FF              xor di,di
000029EA  C746FA0000        mov word [bp-0x6],0x0
000029EF  C746FC0000        mov word [bp-0x4],0x0
000029F4  8BDE              mov bx,si
000029F6  46                inc si
000029F7  8A07              mov al,[bx]
000029F9  8846FF            mov [bp-0x1],al
000029FC  3C72              cmp al,0x72
000029FE  750A              jnz 0x2a0a
00002A00  BF0100            mov di,0x1
00002A03  C746FC0100        mov word [bp-0x4],0x1
00002A08  EB2F              jmp short 0x2a39
00002A0A  807EFF77          cmp byte [bp-0x1],0x77
00002A0E  750F              jnz 0x2a1f
00002A10  BF0203            mov di,0x302
00002A13  C746FA8000        mov word [bp-0x6],0x80
00002A18  C746FC0200        mov word [bp-0x4],0x2
00002A1D  EB1A              jmp short 0x2a39
00002A1F  807EFF61          cmp byte [bp-0x1],0x61
00002A23  750F              jnz 0x2a34
00002A25  BF0209            mov di,0x902
00002A28  C746FA8000        mov word [bp-0x6],0x80
00002A2D  C746FC0200        mov word [bp-0x4],0x2
00002A32  EB05              jmp short 0x2a39
00002A34  33C0              xor ax,ax
00002A36  E98500            jmp word 0x2abe
00002A39  8A04              mov al,[si]
00002A3B  8846FF            mov [bp-0x1],al
00002A3E  46                inc si
00002A3F  807EFF2B          cmp byte [bp-0x1],0x2b
00002A43  7411              jz 0x2a56
00002A45  803C2B            cmp byte [si],0x2b
00002A48  752B              jnz 0x2a75
00002A4A  807EFF74          cmp byte [bp-0x1],0x74
00002A4E  7406              jz 0x2a56
00002A50  807EFF62          cmp byte [bp-0x1],0x62
00002A54  751F              jnz 0x2a75
00002A56  807EFF2B          cmp byte [bp-0x1],0x2b
00002A5A  7505              jnz 0x2a61
00002A5C  8A04              mov al,[si]
00002A5E  8846FF            mov [bp-0x1],al
00002A61  8BC7              mov ax,di
00002A63  25FCFF            and ax,0xfffc
00002A66  0D0400            or ax,0x4
00002A69  8BF8              mov di,ax
00002A6B  C746FA8001        mov word [bp-0x6],0x180
00002A70  C746FC0300        mov word [bp-0x4],0x3
00002A75  807EFF74          cmp byte [bp-0x1],0x74
00002A79  7506              jnz 0x2a81
00002A7B  81CF0040          or di,0x4000
00002A7F  EB25              jmp short 0x2aa6
00002A81  807EFF62          cmp byte [bp-0x1],0x62
00002A85  750B              jnz 0x2a92
00002A87  81CF0080          or di,0x8000
00002A8B  814EFC4000        or word [bp-0x4],0x40
00002A90  EB14              jmp short 0x2aa6
00002A92  A1E867            mov ax,[0x67e8]
00002A95  2500C0            and ax,0xc000
00002A98  0BF8              or di,ax
00002A9A  8BC7              mov ax,di
00002A9C  A90080            test ax,0x8000
00002A9F  7405              jz 0x2aa6
00002AA1  814EFC4000        or word [bp-0x4],0x40
00002AA6  C70676654432      mov word [0x6576],0x3244
00002AAC  8B5E06            mov bx,[bp+0x6]
00002AAF  893F              mov [bx],di
00002AB1  8B46FA            mov ax,[bp-0x6]
00002AB4  8B5E04            mov bx,[bp+0x4]
00002AB7  8907              mov [bx],ax
00002AB9  8B46FC            mov ax,[bp-0x4]
00002ABC  EB00              jmp short 0x2abe
00002ABE  5F                pop di
00002ABF  5E                pop si
00002AC0  8BE5              mov sp,bp
00002AC2  5D                pop bp
00002AC3  C20600            ret 0x6
00002AC6  55                push bp
00002AC7  8BEC              mov bp,sp
00002AC9  83EC04            sub sp,byte +0x4
00002ACC  56                push si
00002ACD  8B7608            mov si,[bp+0x8]
00002AD0  FF7604            push word [bp+0x4]
00002AD3  8D46FC            lea ax,[bp-0x4]
00002AD6  50                push ax
00002AD7  8D46FE            lea ax,[bp-0x2]
00002ADA  50                push ax
00002ADB  E8FFFE            call word 0x29dd
00002ADE  894402            mov [si+0x2],ax
00002AE1  0BC0              or ax,ax
00002AE3  741C              jz 0x2b01
00002AE5  807C0400          cmp byte [si+0x4],0x0
00002AE9  7D23              jnl 0x2b0e
00002AEB  FF76FE            push word [bp-0x2]
00002AEE  FF76FC            push word [bp-0x4]
00002AF1  FF7606            push word [bp+0x6]
00002AF4  E83601            call word 0x2c2d
00002AF7  83C406            add sp,byte +0x6
00002AFA  884404            mov [si+0x4],al
00002AFD  0AC0              or al,al
00002AFF  7D0D              jnl 0x2b0e
00002B01  C64404FF          mov byte [si+0x4],0xff
00002B05  C744020000        mov word [si+0x2],0x0
00002B0A  33C0              xor ax,ax
00002B0C  EB47              jmp short 0x2b55
00002B0E  8A4404            mov al,[si+0x4]
00002B11  98                cbw
00002B12  50                push ax
00002B13  E87305            call word 0x3089
00002B16  59                pop cx
00002B17  0BC0              or ax,ax
00002B19  7405              jz 0x2b20
00002B1B  814C020002        or word [si+0x2],0x200
00002B20  B80002            mov ax,0x200
00002B23  50                push ax
00002B24  F744020002        test word [si+0x2],0x200
00002B29  7405              jz 0x2b30
00002B2B  B80100            mov ax,0x1
00002B2E  EB02              jmp short 0x2b32
00002B30  33C0              xor ax,ax
00002B32  50                push ax
00002B33  33C0              xor ax,ax
00002B35  50                push ax
00002B36  56                push si
00002B37  E86705            call word 0x30a1
00002B3A  83C408            add sp,byte +0x8
00002B3D  0BC0              or ax,ax
00002B3F  740B              jz 0x2b4c
00002B41  56                push si
00002B42  E82E06            call word 0x3173
00002B45  59                pop cx
00002B46  33C0              xor ax,ax
00002B48  EB0B              jmp short 0x2b55
00002B4A  EB09              jmp short 0x2b55
00002B4C  C7440C0000        mov word [si+0xc],0x0
00002B51  8BC6              mov ax,si
00002B53  EB00              jmp short 0x2b55
00002B55  5E                pop si
00002B56  8BE5              mov sp,bp
00002B58  5D                pop bp
00002B59  C20600            ret 0x6
00002B5C  56                push si
00002B5D  BE8066            mov si,0x6680
00002B60  EB02              jmp short 0x2b64
00002B62  EB00              jmp short 0x2b64
00002B64  807C0400          cmp byte [si+0x4],0x0
00002B68  7C0A              jl 0x2b74
00002B6A  8BC6              mov ax,si
00002B6C  83C610            add si,byte +0x10
00002B6F  3DC067            cmp ax,0x67c0
00002B72  72EE              jc 0x2b62
00002B74  807C0400          cmp byte [si+0x4],0x0
00002B78  7C06              jl 0x2b80
00002B7A  33C0              xor ax,ax
00002B7C  EB06              jmp short 0x2b84
00002B7E  EB04              jmp short 0x2b84
00002B80  8BC6              mov ax,si
00002B82  EB00              jmp short 0x2b84
00002B84  5E                pop si
00002B85  C3                ret
00002B86  55                push bp
00002B87  8BEC              mov bp,sp
00002B89  56                push si
00002B8A  E8CFFF            call word 0x2b5c
00002B8D  8BF0              mov si,ax
00002B8F  8BC6              mov ax,si
00002B91  0BC0              or ax,ax
00002B93  7506              jnz 0x2b9b
00002B95  33C0              xor ax,ax
00002B97  EB0E              jmp short 0x2ba7
00002B99  EB0C              jmp short 0x2ba7
00002B9B  56                push si
00002B9C  FF7604            push word [bp+0x4]
00002B9F  FF7606            push word [bp+0x6]
00002BA2  E821FF            call word 0x2ac6
00002BA5  EB00              jmp short 0x2ba7
00002BA7  5E                pop si
00002BA8  5D                pop bp
00002BA9  C3                ret
00002BAA  55                push bp
00002BAB  8BEC              mov bp,sp
00002BAD  56                push si
00002BAE  8B7608            mov si,[bp+0x8]
00002BB1  8B440E            mov ax,[si+0xe]
00002BB4  3BC6              cmp ax,si
00002BB6  7404              jz 0x2bbc
00002BB8  33C0              xor ax,ax
00002BBA  EB11              jmp short 0x2bcd
00002BBC  56                push si
00002BBD  E8B305            call word 0x3173
00002BC0  59                pop cx
00002BC1  56                push si
00002BC2  FF7604            push word [bp+0x4]
00002BC5  FF7606            push word [bp+0x6]
00002BC8  E8FBFE            call word 0x2ac6
00002BCB  EB00              jmp short 0x2bcd
00002BCD  5E                pop si
00002BCE  5D                pop bp
00002BCF  C3                ret
00002BD0  55                push bp
00002BD1  8BEC              mov bp,sp
00002BD3  56                push si
00002BD4  837E0400          cmp word [bp+0x4],byte +0x0
00002BD8  7C0B              jl 0x2be5
00002BDA  E87FFF            call word 0x2b5c
00002BDD  8BF0              mov si,ax
00002BDF  8BC6              mov ax,si
00002BE1  0BC0              or ax,ax
00002BE3  7504              jnz 0x2be9
00002BE5  33C0              xor ax,ax
00002BE7  EB12              jmp short 0x2bfb
00002BE9  8A4604            mov al,[bp+0x4]
00002BEC  884404            mov [si+0x4],al
00002BEF  56                push si
00002BF0  33C0              xor ax,ax
00002BF2  50                push ax
00002BF3  FF7606            push word [bp+0x6]
00002BF6  E8CDFE            call word 0x2ac6
00002BF9  EB00              jmp short 0x2bfb
00002BFB  5E                pop si
00002BFC  5D                pop bp
00002BFD  C3                ret
00002BFE  55                push bp
00002BFF  8BEC              mov bp,sp
00002C01  8B4E04            mov cx,[bp+0x4]
00002C04  B43C              mov ah,0x3c
00002C06  8B5606            mov dx,[bp+0x6]
00002C09  CD21              int 0x21
00002C0B  7202              jc 0x2c0f
00002C0D  EB06              jmp short 0x2c15
00002C0F  50                push ax
00002C10  E839FA            call word 0x264c
00002C13  EB00              jmp short 0x2c15
00002C15  5D                pop bp
00002C16  C20400            ret 0x4
00002C19  55                push bp
00002C1A  8BEC              mov bp,sp
00002C1C  8B5E04            mov bx,[bp+0x4]
00002C1F  2BC9              sub cx,cx
00002C21  2BD2              sub dx,dx
00002C23  B440              mov ah,0x40
00002C25  CD21              int 0x21
00002C27  EB00              jmp short 0x2c29
00002C29  5D                pop bp
00002C2A  C20200            ret 0x2
00002C2D  55                push bp
00002C2E  8BEC              mov bp,sp
00002C30  83EC04            sub sp,byte +0x4
00002C33  56                push si
00002C34  57                push di
00002C35  8B7E06            mov di,[bp+0x6]
00002C38  F7C700C0          test di,0xc000
00002C3C  7508              jnz 0x2c46
00002C3E  A1E867            mov ax,[0x67e8]
00002C41  2500C0            and ax,0xc000
00002C44  0BF8              or di,ax
00002C46  F7C70001          test di,0x100
00002C4A  7503              jnz 0x2c4f
00002C4C  E98D00            jmp word 0x2cdc
00002C4F  A1EA67            mov ax,[0x67ea]
00002C52  214608            and [bp+0x8],ax
00002C55  8B4608            mov ax,[bp+0x8]
00002C58  A98001            test ax,0x180
00002C5B  7507              jnz 0x2c64
00002C5D  B80100            mov ax,0x1
00002C60  50                push ax
00002C61  E8E8F9            call word 0x264c
00002C64  33C0              xor ax,ax
00002C66  50                push ax
00002C67  FF7604            push word [bp+0x4]
00002C6A  E8310D            call word 0x399e
00002C6D  59                pop cx
00002C6E  59                pop cx
00002C6F  8946FC            mov [bp-0x4],ax
00002C72  3DFFFF            cmp ax,0xffff
00002C75  7513              jnz 0x2c8a
00002C77  F746088000        test word [bp+0x8],0x80
00002C7C  7404              jz 0x2c82
00002C7E  33C0              xor ax,ax
00002C80  EB03              jmp short 0x2c85
00002C82  B80100            mov ax,0x1
00002C85  8946FC            mov [bp-0x4],ax
00002C88  EB14              jmp short 0x2c9e
00002C8A  F7C70004          test di,0x400
00002C8E  740C              jz 0x2c9c
00002C90  B85000            mov ax,0x50
00002C93  50                push ax
00002C94  E8B5F9            call word 0x264c
00002C97  E9D600            jmp word 0x2d70
00002C9A  EB02              jmp short 0x2c9e
00002C9C  EB3E              jmp short 0x2cdc
00002C9E  F7C7F000          test di,0xf0
00002CA2  741F              jz 0x2cc3
00002CA4  FF7604            push word [bp+0x4]
00002CA7  33C0              xor ax,ax
00002CA9  50                push ax
00002CAA  E851FF            call word 0x2bfe
00002CAD  8BF0              mov si,ax
00002CAF  8BC6              mov ax,si
00002CB1  0BC0              or ax,ax
00002CB3  7D05              jnl 0x2cba
00002CB5  8BC6              mov ax,si
00002CB7  E9B600            jmp word 0x2d70
00002CBA  56                push si
00002CBB  E86205            call word 0x3220
00002CBE  59                pop cx
00002CBF  EB20              jmp short 0x2ce1
00002CC1  EB16              jmp short 0x2cd9
00002CC3  FF7604            push word [bp+0x4]
00002CC6  FF76FC            push word [bp-0x4]
00002CC9  E832FF            call word 0x2bfe
00002CCC  8BF0              mov si,ax
00002CCE  8BC6              mov ax,si
00002CD0  0BC0              or ax,ax
00002CD2  7D05              jnl 0x2cd9
00002CD4  8BC6              mov ax,si
00002CD6  E99700            jmp word 0x2d70
00002CD9  EB70              jmp short 0x2d4b
00002CDB  90                nop
00002CDC  C746FC0000        mov word [bp-0x4],0x0
00002CE1  57                push di
00002CE2  FF7604            push word [bp+0x4]
00002CE5  E88E00            call word 0x2d76
00002CE8  59                pop cx
00002CE9  59                pop cx
00002CEA  8BF0              mov si,ax
00002CEC  8BC6              mov ax,si
00002CEE  0BC0              or ax,ax
00002CF0  7C59              jl 0x2d4b
00002CF2  33C0              xor ax,ax
00002CF4  50                push ax
00002CF5  56                push si
00002CF6  E86703            call word 0x3060
00002CF9  59                pop cx
00002CFA  59                pop cx
00002CFB  8946FE            mov [bp-0x2],ax
00002CFE  A98000            test ax,0x80
00002D01  7421              jz 0x2d24
00002D03  81CF0020          or di,0x2000
00002D07  F7C70080          test di,0x8000
00002D0B  7415              jz 0x2d22
00002D0D  8B46FE            mov ax,[bp-0x2]
00002D10  25FF00            and ax,0xff
00002D13  0D2000            or ax,0x20
00002D16  50                push ax
00002D17  B80100            mov ax,0x1
00002D1A  50                push ax
00002D1B  56                push si
00002D1C  E84103            call word 0x3060
00002D1F  83C406            add sp,byte +0x6
00002D22  EB0A              jmp short 0x2d2e
00002D24  F7C70002          test di,0x200
00002D28  7404              jz 0x2d2e
00002D2A  56                push si
00002D2B  E8EBFE            call word 0x2c19
00002D2E  837EFC00          cmp word [bp-0x4],byte +0x0
00002D32  7417              jz 0x2d4b
00002D34  F7C7F000          test di,0xf0
00002D38  7411              jz 0x2d4b
00002D3A  B80100            mov ax,0x1
00002D3D  50                push ax
00002D3E  B80100            mov ax,0x1
00002D41  50                push ax
00002D42  FF7604            push word [bp+0x4]
00002D45  E8560C            call word 0x399e
00002D48  83C406            add sp,byte +0x6
00002D4B  0BF6              or si,si
00002D4D  7C1D              jl 0x2d6c
00002D4F  F7C70003          test di,0x300
00002D53  7405              jz 0x2d5a
00002D55  B80010            mov ax,0x1000
00002D58  EB02              jmp short 0x2d5c
00002D5A  33C0              xor ax,ax
00002D5C  8BD7              mov dx,di
00002D5E  81E2FFF8          and dx,0xf8ff
00002D62  0BC2              or ax,dx
00002D64  8BDE              mov bx,si
00002D66  D1E3              shl bx,1
00002D68  8987C067          mov [bx+0x67c0],ax
00002D6C  8BC6              mov ax,si
00002D6E  EB00              jmp short 0x2d70
00002D70  5F                pop di
00002D71  5E                pop si
00002D72  8BE5              mov sp,bp
00002D74  5D                pop bp
00002D75  C3                ret
00002D76  55                push bp
00002D77  8BEC              mov bp,sp
00002D79  56                push si
00002D7A  B001              mov al,0x1
00002D7C  8B4E06            mov cx,[bp+0x6]
00002D7F  F7C10200          test cx,0x2
00002D83  750A              jnz 0x2d8f
00002D85  B002              mov al,0x2
00002D87  F7C10400          test cx,0x4
00002D8B  7502              jnz 0x2d8f
00002D8D  B000              mov al,0x0
00002D8F  8B5604            mov dx,[bp+0x4]
00002D92  B1F0              mov cl,0xf0
00002D94  224E06            and cl,[bp+0x6]
00002D97  0AC1              or al,cl
00002D99  B43D              mov ah,0x3d
00002D9B  CD21              int 0x21
00002D9D  7217              jc 0x2db6
00002D9F  8BF0              mov si,ax
00002DA1  8B4606            mov ax,[bp+0x6]
00002DA4  25FFF8            and ax,0xf8ff
00002DA7  0D0080            or ax,0x8000
00002DAA  8BDE              mov bx,si
00002DAC  D1E3              shl bx,1
00002DAE  8987C067          mov [bx+0x67c0],ax
00002DB2  8BC6              mov ax,si
00002DB4  EB06              jmp short 0x2dbc
00002DB6  50                push ax
00002DB7  E892F8            call word 0x264c
00002DBA  EB00              jmp short 0x2dbc
00002DBC  5E                pop si
00002DBD  5D                pop bp
00002DBE  C3                ret
00002DBF  55                push bp
00002DC0  8BEC              mov bp,sp
00002DC2  83EC02            sub sp,byte +0x2
00002DC5  56                push si
00002DC6  57                push di
00002DC7  8B5E04            mov bx,[bp+0x4]
00002DCA  8B37              mov si,[bx]
00002DCC  8BC6              mov ax,si
00002DCE  8946FE            mov [bp-0x2],ax
00002DD1  8B5E04            mov bx,[bp+0x4]
00002DD4  F747024000        test word [bx+0x2],0x40
00002DD9  7404              jz 0x2ddf
00002DDB  8BC6              mov ax,si
00002DDD  EB1F              jmp short 0x2dfe
00002DDF  8B5E04            mov bx,[bp+0x4]
00002DE2  8B7F0A            mov di,[bx+0xa]
00002DE5  EB0B              jmp short 0x2df2
00002DE7  8BDF              mov bx,di
00002DE9  47                inc di
00002DEA  803F0A            cmp byte [bx],0xa
00002DED  7503              jnz 0x2df2
00002DEF  FF46FE            inc word [bp-0x2]
00002DF2  8BC6              mov ax,si
00002DF4  4E                dec si
00002DF5  0BC0              or ax,ax
00002DF7  75EE              jnz 0x2de7
00002DF9  8B46FE            mov ax,[bp-0x2]
00002DFC  EB00              jmp short 0x2dfe
00002DFE  5F                pop di
00002DFF  5E                pop si
00002E00  8BE5              mov sp,bp
00002E02  5D                pop bp
00002E03  C20200            ret 0x2
00002E06  55                push bp
00002E07  8BEC              mov bp,sp
00002E09  56                push si
00002E0A  8B7604            mov si,[bp+0x4]
00002E0D  56                push si
00002E0E  E8390C            call word 0x3a4a
00002E11  59                pop cx
00002E12  0BC0              or ax,ax
00002E14  7405              jz 0x2e1b
00002E16  B8FFFF            mov ax,0xffff
00002E19  EB4C              jmp short 0x2e67
00002E1B  837E0A01          cmp word [bp+0xa],byte +0x1
00002E1F  7510              jnz 0x2e31
00002E21  833C00            cmp word [si],byte +0x0
00002E24  7E0B              jng 0x2e31
00002E26  56                push si
00002E27  E895FF            call word 0x2dbf
00002E2A  99                cwd
00002E2B  294606            sub [bp+0x6],ax
00002E2E  195608            sbb [bp+0x8],dx
00002E31  8164025FFE        and word [si+0x2],0xfe5f
00002E36  C7040000          mov word [si],0x0
00002E3A  8B4408            mov ax,[si+0x8]
00002E3D  89440A            mov [si+0xa],ax
00002E40  FF760A            push word [bp+0xa]
00002E43  FF7608            push word [bp+0x8]
00002E46  FF7606            push word [bp+0x6]
00002E49  8A4404            mov al,[si+0x4]
00002E4C  98                cbw
00002E4D  50                push ax
00002E4E  E87908            call word 0x36ca
00002E51  83C408            add sp,byte +0x8
00002E54  83FAFF            cmp dx,byte -0x1
00002E57  750A              jnz 0x2e63
00002E59  3DFFFF            cmp ax,0xffff
00002E5C  7505              jnz 0x2e63
00002E5E  B8FFFF            mov ax,0xffff
00002E61  EB02              jmp short 0x2e65
00002E63  33C0              xor ax,ax
00002E65  EB00              jmp short 0x2e67
00002E67  5E                pop si
00002E68  5D                pop bp
00002E69  C3                ret
00002E6A  55                push bp
00002E6B  8BEC              mov bp,sp
00002E6D  83EC04            sub sp,byte +0x4
00002E70  56                push si
00002E71  8B7604            mov si,[bp+0x4]
00002E74  56                push si
00002E75  E8D20B            call word 0x3a4a
00002E78  59                pop cx
00002E79  0BC0              or ax,ax
00002E7B  7408              jz 0x2e85
00002E7D  BAFFFF            mov dx,0xffff
00002E80  B8FFFF            mov ax,0xffff
00002E83  EB3F              jmp short 0x2ec4
00002E85  B80100            mov ax,0x1
00002E88  50                push ax
00002E89  33C0              xor ax,ax
00002E8B  50                push ax
00002E8C  50                push ax
00002E8D  8A4404            mov al,[si+0x4]
00002E90  98                cbw
00002E91  50                push ax
00002E92  E83508            call word 0x36ca
00002E95  83C408            add sp,byte +0x8
00002E98  8956FE            mov [bp-0x2],dx
00002E9B  8946FC            mov [bp-0x4],ax
00002E9E  833C00            cmp word [si],byte +0x0
00002EA1  7E19              jng 0x2ebc
00002EA3  8B56FE            mov dx,[bp-0x2]
00002EA6  8B46FC            mov ax,[bp-0x4]
00002EA9  52                push dx
00002EAA  50                push ax
00002EAB  56                push si
00002EAC  E810FF            call word 0x2dbf
00002EAF  99                cwd
00002EB0  8BD8              mov bx,ax
00002EB2  8BCA              mov cx,dx
00002EB4  58                pop ax
00002EB5  5A                pop dx
00002EB6  2BC3              sub ax,bx
00002EB8  1BD1              sbb dx,cx
00002EBA  EB06              jmp short 0x2ec2
00002EBC  8B56FE            mov dx,[bp-0x2]
00002EBF  8B46FC            mov ax,[bp-0x4]
00002EC2  EB00              jmp short 0x2ec4
00002EC4  5E                pop si
00002EC5  8BE5              mov sp,bp
00002EC7  5D                pop bp
00002EC8  C3                ret
00002EC9  56                push si
00002ECA  57                push di
00002ECB  BF1400            mov di,0x14
00002ECE  BE8066            mov si,0x6680
00002ED1  EB13              jmp short 0x2ee6
00002ED3  8B4402            mov ax,[si+0x2]
00002ED6  250003            and ax,0x300
00002ED9  3D0003            cmp ax,0x300
00002EDC  7505              jnz 0x2ee3
00002EDE  56                push si
00002EDF  E8680B            call word 0x3a4a
00002EE2  59                pop cx
00002EE3  83C610            add si,byte +0x10
00002EE6  8BC7              mov ax,di
00002EE8  4F                dec di
00002EE9  0BC0              or ax,ax
00002EEB  75E6              jnz 0x2ed3
00002EED  5F                pop di
00002EEE  5E                pop si
00002EEF  C3                ret
00002EF0  55                push bp
00002EF1  8BEC              mov bp,sp
00002EF3  56                push si
00002EF4  8B7604            mov si,[bp+0x4]
00002EF7  F744020002        test word [si+0x2],0x200
00002EFC  7403              jz 0x2f01
00002EFE  E8C8FF            call word 0x2ec9
00002F01  FF7406            push word [si+0x6]
00002F04  8B4408            mov ax,[si+0x8]
00002F07  89440A            mov [si+0xa],ax
00002F0A  50                push ax
00002F0B  8A4404            mov al,[si+0x4]
00002F0E  98                cbw
00002F0F  50                push ax
00002F10  E8D504            call word 0x33e8
00002F13  83C406            add sp,byte +0x6
00002F16  8904              mov [si],ax
00002F18  0BC0              or ax,ax
00002F1A  7E0B              jng 0x2f27
00002F1C  816402DFFF        and word [si+0x2],0xffdf
00002F21  33C0              xor ax,ax
00002F23  EB23              jmp short 0x2f48
00002F25  EB1C              jmp short 0x2f43
00002F27  833C00            cmp word [si],byte +0x0
00002F2A  750E              jnz 0x2f3a
00002F2C  8B4402            mov ax,[si+0x2]
00002F2F  257FFE            and ax,0xfe7f
00002F32  0D2000            or ax,0x20
00002F35  894402            mov [si+0x2],ax
00002F38  EB09              jmp short 0x2f43
00002F3A  C7040000          mov word [si],0x0
00002F3E  814C021000        or word [si+0x2],0x10
00002F43  B8FFFF            mov ax,0xffff
00002F46  EB00              jmp short 0x2f48
00002F48  5E                pop si
00002F49  5D                pop bp
00002F4A  C20200            ret 0x2
00002F4D  55                push bp
00002F4E  8BEC              mov bp,sp
00002F50  56                push si
00002F51  8B7604            mov si,[bp+0x4]
00002F54  FF04              inc word [si]
00002F56  56                push si
00002F57  E80600            call word 0x2f60
00002F5A  59                pop cx
00002F5B  EB00              jmp short 0x2f5d
00002F5D  5E                pop si
00002F5E  5D                pop bp
00002F5F  C3                ret
00002F60  55                push bp
00002F61  8BEC              mov bp,sp
00002F63  83EC02            sub sp,byte +0x2
00002F66  56                push si
00002F67  8B7604            mov si,[bp+0x4]
00002F6A  FF0C              dec word [si]
00002F6C  7C0E              jl 0x2f7c
00002F6E  FF440A            inc word [si+0xa]
00002F71  8B5C0A            mov bx,[si+0xa]
00002F74  8A47FF            mov al,[bx-0x1]
00002F77  B400              mov ah,0x0
00002F79  E9D400            jmp word 0x3050
00002F7C  FF04              inc word [si]
00002F7E  7C07              jl 0x2f87
00002F80  F744021001        test word [si+0x2],0x110
00002F85  740B              jz 0x2f92
00002F87  814C021000        or word [si+0x2],0x10
00002F8C  B8FFFF            mov ax,0xffff
00002F8F  E9BE00            jmp word 0x3050
00002F92  814C028000        or word [si+0x2],0x80
00002F97  837C0600          cmp word [si+0x6],byte +0x0
00002F9B  7413              jz 0x2fb0
00002F9D  56                push si
00002F9E  E84FFF            call word 0x2ef0
00002FA1  0BC0              or ax,ax
00002FA3  7406              jz 0x2fab
00002FA5  B8FFFF            mov ax,0xffff
00002FA8  E9A500            jmp word 0x3050
00002FAB  EBBD              jmp short 0x2f6a
00002FAD  E9A000            jmp word 0x3050
00002FB0  833EEC6700        cmp word [0x67ec],byte +0x0
00002FB5  7538              jnz 0x2fef
00002FB7  B88066            mov ax,0x6680
00002FBA  3BC6              cmp ax,si
00002FBC  7531              jnz 0x2fef
00002FBE  8A4404            mov al,[si+0x4]
00002FC1  98                cbw
00002FC2  50                push ax
00002FC3  E8C300            call word 0x3089
00002FC6  59                pop cx
00002FC7  0BC0              or ax,ax
00002FC9  7505              jnz 0x2fd0
00002FCB  816402FFFD        and word [si+0x2],0xfdff
00002FD0  B80002            mov ax,0x200
00002FD3  50                push ax
00002FD4  F744020002        test word [si+0x2],0x200
00002FD9  7405              jz 0x2fe0
00002FDB  B80100            mov ax,0x1
00002FDE  EB02              jmp short 0x2fe2
00002FE0  33C0              xor ax,ax
00002FE2  50                push ax
00002FE3  33C0              xor ax,ax
00002FE5  50                push ax
00002FE6  56                push si
00002FE7  E8B700            call word 0x30a1
00002FEA  83C408            add sp,byte +0x8
00002FED  EBA3              jmp short 0x2f92
00002FEF  F744020002        test word [si+0x2],0x200
00002FF4  7403              jz 0x2ff9
00002FF6  E8D0FE            call word 0x2ec9
00002FF9  B80100            mov ax,0x1
00002FFC  50                push ax
00002FFD  8D46FF            lea ax,[bp-0x1]
00003000  50                push ax
00003001  8A4404            mov al,[si+0x4]
00003004  98                cbw
00003005  50                push ax
00003006  E89B04            call word 0x34a4
00003009  83C406            add sp,byte +0x6
0000300C  3D0100            cmp ax,0x1
0000300F  7426              jz 0x3037
00003011  8A4404            mov al,[si+0x4]
00003014  98                cbw
00003015  50                push ax
00003016  E8C309            call word 0x39dc
00003019  59                pop cx
0000301A  3D0100            cmp ax,0x1
0000301D  7407              jz 0x3026
0000301F  814C021000        or word [si+0x2],0x10
00003024  EB0C              jmp short 0x3032
00003026  8B4402            mov ax,[si+0x2]
00003029  257FFE            and ax,0xfe7f
0000302C  0D2000            or ax,0x20
0000302F  894402            mov [si+0x2],ax
00003032  B8FFFF            mov ax,0xffff
00003035  EB19              jmp short 0x3050
00003037  807EFF0D          cmp byte [bp-0x1],0xd
0000303B  7507              jnz 0x3044
0000303D  F744024000        test word [si+0x2],0x40
00003042  74AB              jz 0x2fef
00003044  816402DFFF        and word [si+0x2],0xffdf
00003049  8A46FF            mov al,[bp-0x1]
0000304C  B400              mov ah,0x0
0000304E  EB00              jmp short 0x3050
00003050  5E                pop si
00003051  8BE5              mov sp,bp
00003053  5D                pop bp
00003054  C3                ret
00003055  B88066            mov ax,0x6680
00003058  50                push ax
00003059  E804FF            call word 0x2f60
0000305C  59                pop cx
0000305D  EB00              jmp short 0x305f
0000305F  C3                ret
00003060  55                push bp
00003061  8BEC              mov bp,sp
00003063  B444              mov ah,0x44
00003065  8A4606            mov al,[bp+0x6]
00003068  8B5E04            mov bx,[bp+0x4]
0000306B  8B4E0A            mov cx,[bp+0xa]
0000306E  8B5608            mov dx,[bp+0x8]
00003071  CD21              int 0x21
00003073  720C              jc 0x3081
00003075  837E0600          cmp word [bp+0x6],byte +0x0
00003079  7504              jnz 0x307f
0000307B  8BC2              mov ax,dx
0000307D  EB08              jmp short 0x3087
0000307F  EB06              jmp short 0x3087
00003081  50                push ax
00003082  E8C7F5            call word 0x264c
00003085  EB00              jmp short 0x3087
00003087  5D                pop bp
00003088  C3                ret
00003089  55                push bp
0000308A  8BEC              mov bp,sp
0000308C  B80044            mov ax,0x4400
0000308F  8B5E04            mov bx,[bp+0x4]
00003092  CD21              int 0x21
00003094  B80000            mov ax,0x0
00003097  7204              jc 0x309d
00003099  D1E2              shl dx,1
0000309B  D1D0              rcl ax,1
0000309D  EB00              jmp short 0x309f
0000309F  5D                pop bp
000030A0  C3                ret
000030A1  55                push bp
000030A2  8BEC              mov bp,sp
000030A4  56                push si
000030A5  57                push di
000030A6  8B7E0A            mov di,[bp+0xa]
000030A9  8B7604            mov si,[bp+0x4]
000030AC  8B440E            mov ax,[si+0xe]
000030AF  3BC6              cmp ax,si
000030B1  750C              jnz 0x30bf
000030B3  837E0802          cmp word [bp+0x8],byte +0x2
000030B7  7F06              jg 0x30bf
000030B9  81FFFF7F          cmp di,0x7fff
000030BD  7606              jna 0x30c5
000030BF  B8FFFF            mov ax,0xffff
000030C2  E9AA00            jmp word 0x316f
000030C5  833EEE6700        cmp word [0x67ee],byte +0x0
000030CA  750F              jnz 0x30db
000030CC  B89066            mov ax,0x6690
000030CF  3BC6              cmp ax,si
000030D1  7508              jnz 0x30db
000030D3  C706EE670100      mov word [0x67ee],0x1
000030D9  EB14              jmp short 0x30ef
000030DB  833EEC6700        cmp word [0x67ec],byte +0x0
000030E0  750D              jnz 0x30ef
000030E2  B88066            mov ax,0x6680
000030E5  3BC6              cmp ax,si
000030E7  7506              jnz 0x30ef
000030E9  C706EC670100      mov word [0x67ec],0x1
000030EF  833C00            cmp word [si],byte +0x0
000030F2  740F              jz 0x3103
000030F4  B80100            mov ax,0x1
000030F7  50                push ax
000030F8  33C0              xor ax,ax
000030FA  50                push ax
000030FB  50                push ax
000030FC  56                push si
000030FD  E806FD            call word 0x2e06
00003100  83C408            add sp,byte +0x8
00003103  F744020400        test word [si+0x2],0x4
00003108  7407              jz 0x3111
0000310A  FF7408            push word [si+0x8]
0000310D  E83112            call word 0x4341
00003110  59                pop cx
00003111  816402F3FF        and word [si+0x2],0xfff3
00003116  C744060000        mov word [si+0x6],0x0
0000311B  8BC6              mov ax,si
0000311D  050500            add ax,0x5
00003120  894408            mov [si+0x8],ax
00003123  89440A            mov [si+0xa],ax
00003126  837E0802          cmp word [bp+0x8],byte +0x2
0000312A  743F              jz 0x316b
0000312C  0BFF              or di,di
0000312E  763B              jna 0x316b
00003130  C70674656332      mov word [0x6574],0x3263
00003136  837E0600          cmp word [bp+0x6],byte +0x0
0000313A  7518              jnz 0x3154
0000313C  57                push di
0000313D  E8B7F7            call word 0x28f7
00003140  59                pop cx
00003141  894606            mov [bp+0x6],ax
00003144  0BC0              or ax,ax
00003146  7407              jz 0x314f
00003148  814C020400        or word [si+0x2],0x4
0000314D  EB05              jmp short 0x3154
0000314F  B8FFFF            mov ax,0xffff
00003152  EB1B              jmp short 0x316f
00003154  8B4606            mov ax,[bp+0x6]
00003157  89440A            mov [si+0xa],ax
0000315A  894408            mov [si+0x8],ax
0000315D  897C06            mov [si+0x6],di
00003160  837E0801          cmp word [bp+0x8],byte +0x1
00003164  7505              jnz 0x316b
00003166  814C020800        or word [si+0x2],0x8
0000316B  33C0              xor ax,ax
0000316D  EB00              jmp short 0x316f
0000316F  5F                pop di
00003170  5E                pop si
00003171  5D                pop bp
00003172  C3                ret
00003173  55                push bp
00003174  8BEC              mov bp,sp
00003176  56                push si
00003177  57                push di
00003178  8B7604            mov si,[bp+0x4]
0000317B  BFFFFF            mov di,0xffff
0000317E  8B440E            mov ax,[si+0xe]
00003181  3BC6              cmp ax,si
00003183  7404              jz 0x3189
00003185  8BC7              mov ax,di
00003187  EB66              jmp short 0x31ef
00003189  837C0600          cmp word [si+0x6],byte +0x0
0000318D  7420              jz 0x31af
0000318F  833C00            cmp word [si],byte +0x0
00003192  7D0D              jnl 0x31a1
00003194  56                push si
00003195  E8B208            call word 0x3a4a
00003198  59                pop cx
00003199  0BC0              or ax,ax
0000319B  7404              jz 0x31a1
0000319D  8BC7              mov ax,di
0000319F  EB4E              jmp short 0x31ef
000031A1  F744020400        test word [si+0x2],0x4
000031A6  7407              jz 0x31af
000031A8  FF7408            push word [si+0x8]
000031AB  E89311            call word 0x4341
000031AE  59                pop cx
000031AF  807C0400          cmp byte [si+0x4],0x0
000031B3  7C0B              jl 0x31c0
000031B5  8A4404            mov al,[si+0x4]
000031B8  98                cbw
000031B9  50                push ax
000031BA  E83600            call word 0x31f3
000031BD  59                pop cx
000031BE  8BF8              mov di,ax
000031C0  C744020000        mov word [si+0x2],0x0
000031C5  C744060000        mov word [si+0x6],0x0
000031CA  C7040000          mov word [si],0x0
000031CE  C64404FF          mov byte [si+0x4],0xff
000031D2  837C0C00          cmp word [si+0xc],byte +0x0
000031D6  7413              jz 0x31eb
000031D8  33C0              xor ax,ax
000031DA  50                push ax
000031DB  FF740C            push word [si+0xc]
000031DE  E81806            call word 0x37f9
000031E1  50                push ax
000031E2  E89206            call word 0x3877
000031E5  59                pop cx
000031E6  C7440C0000        mov word [si+0xc],0x0
000031EB  8BC7              mov ax,di
000031ED  EB00              jmp short 0x31ef
000031EF  5F                pop di
000031F0  5E                pop si
000031F1  5D                pop bp
000031F2  C3                ret
000031F3  55                push bp
000031F4  8BEC              mov bp,sp
000031F6  56                push si
000031F7  8B7604            mov si,[bp+0x4]
000031FA  0BF6              or si,si
000031FC  7C05              jl 0x3203
000031FE  83FE14            cmp si,byte +0x14
00003201  7C09              jl 0x320c
00003203  B80600            mov ax,0x6
00003206  50                push ax
00003207  E842F4            call word 0x264c
0000320A  EB11              jmp short 0x321d
0000320C  8BDE              mov bx,si
0000320E  D1E3              shl bx,1
00003210  C787C067FFFF      mov word [bx+0x67c0],0xffff
00003216  56                push si
00003217  E80600            call word 0x3220
0000321A  59                pop cx
0000321B  EB00              jmp short 0x321d
0000321D  5E                pop si
0000321E  5D                pop bp
0000321F  C3                ret
00003220  55                push bp
00003221  8BEC              mov bp,sp
00003223  56                push si
00003224  8B7604            mov si,[bp+0x4]
00003227  B43E              mov ah,0x3e
00003229  8BDE              mov bx,si
0000322B  CD21              int 0x21
0000322D  720C              jc 0x323b
0000322F  D1E3              shl bx,1
00003231  C787C067FFFF      mov word [bx+0x67c0],0xffff
00003237  33C0              xor ax,ax
00003239  EB06              jmp short 0x3241
0000323B  50                push ax
0000323C  E80DF4            call word 0x264c
0000323F  EB00              jmp short 0x3241
00003241  5E                pop si
00003242  5D                pop bp
00003243  C3                ret
00003244  56                push si
00003245  57                push di
00003246  BF0F00            mov di,0xf
00003249  BED066            mov si,0x66d0
0000324C  EB0F              jmp short 0x325d
0000324E  F744020300        test word [si+0x2],0x3
00003253  7405              jz 0x325a
00003255  56                push si
00003256  E81AFF            call word 0x3173
00003259  59                pop cx
0000325A  83C610            add si,byte +0x10
0000325D  4F                dec di
0000325E  75EE              jnz 0x324e
00003260  5F                pop di
00003261  5E                pop si
00003262  C3                ret
00003263  56                push si
00003264  57                push di
00003265  BF0400            mov di,0x4
00003268  BE8066            mov si,0x6680
0000326B  EB10              jmp short 0x327d
0000326D  F744020300        test word [si+0x2],0x3
00003272  7405              jz 0x3279
00003274  56                push si
00003275  E8D207            call word 0x3a4a
00003278  59                pop cx
00003279  4F                dec di
0000327A  83C610            add si,byte +0x10
0000327D  0BFF              or di,di
0000327F  75EC              jnz 0x326d
00003281  5F                pop di
00003282  5E                pop si
00003283  C3                ret
00003284  55                push bp
00003285  8BEC              mov bp,sp
00003287  56                push si
00003288  57                push di
00003289  E9D100            jmp word 0x335d
0000328C  FF4606            inc word [bp+0x6]
0000328F  8B5E04            mov bx,[bp+0x4]
00003292  8B4706            mov ax,[bx+0x6]
00003295  3B4606            cmp ax,[bp+0x6]
00003298  7605              jna 0x329f
0000329A  8B7E06            mov di,[bp+0x6]
0000329D  EB06              jmp short 0x32a5
0000329F  8B5E04            mov bx,[bp+0x4]
000032A2  8B7F06            mov di,[bx+0x6]
000032A5  8B5E04            mov bx,[bp+0x4]
000032A8  F747024000        test word [bx+0x2],0x40
000032AD  7465              jz 0x3314
000032AF  8B5E04            mov bx,[bp+0x4]
000032B2  837F0600          cmp word [bx+0x6],byte +0x0
000032B6  745C              jz 0x3314
000032B8  8B5E04            mov bx,[bp+0x4]
000032BB  8B4706            mov ax,[bx+0x6]
000032BE  3B4606            cmp ax,[bp+0x6]
000032C1  7351              jnc 0x3314
000032C3  8B5E04            mov bx,[bp+0x4]
000032C6  833F00            cmp word [bx],byte +0x0
000032C9  7549              jnz 0x3314
000032CB  FF4E06            dec word [bp+0x6]
000032CE  33FF              xor di,di
000032D0  EB11              jmp short 0x32e3
000032D2  8B5E04            mov bx,[bp+0x4]
000032D5  8B4706            mov ax,[bx+0x6]
000032D8  03F8              add di,ax
000032DA  8B5E04            mov bx,[bp+0x4]
000032DD  8B4706            mov ax,[bx+0x6]
000032E0  294606            sub [bp+0x6],ax
000032E3  8B5E04            mov bx,[bp+0x4]
000032E6  8B4706            mov ax,[bx+0x6]
000032E9  3B4606            cmp ax,[bp+0x6]
000032EC  76E4              jna 0x32d2
000032EE  57                push di
000032EF  FF7608            push word [bp+0x8]
000032F2  8B5E04            mov bx,[bp+0x4]
000032F5  8A4704            mov al,[bx+0x4]
000032F8  98                cbw
000032F9  50                push ax
000032FA  E8A701            call word 0x34a4
000032FD  83C406            add sp,byte +0x6
00003300  8BF0              mov si,ax
00003302  017608            add [bp+0x8],si
00003305  3BF7              cmp si,di
00003307  7409              jz 0x3312
00003309  8BC7              mov ax,di
0000330B  2BC6              sub ax,si
0000330D  014606            add [bp+0x6],ax
00003310  EB54              jmp short 0x3366
00003312  EB49              jmp short 0x335d
00003314  EB0A              jmp short 0x3320
00003316  8BC6              mov ax,si
00003318  8B5E08            mov bx,[bp+0x8]
0000331B  8807              mov [bx],al
0000331D  FF4608            inc word [bp+0x8]
00003320  FF4E06            dec word [bp+0x6]
00003323  8B4606            mov ax,[bp+0x6]
00003326  0BC0              or ax,ax
00003328  742C              jz 0x3356
0000332A  4F                dec di
0000332B  7429              jz 0x3356
0000332D  8B5E04            mov bx,[bp+0x4]
00003330  FF0F              dec word [bx]
00003332  7C12              jl 0x3346
00003334  8B5E04            mov bx,[bp+0x4]
00003337  FF470A            inc word [bx+0xa]
0000333A  8B5F0A            mov bx,[bx+0xa]
0000333D  8A47FF            mov al,[bx-0x1]
00003340  B400              mov ah,0x0
00003342  8BF0              mov si,ax
00003344  EB09              jmp short 0x334f
00003346  FF7604            push word [bp+0x4]
00003349  E801FC            call word 0x2f4d
0000334C  59                pop cx
0000334D  8BF0              mov si,ax
0000334F  8BC6              mov ax,si
00003351  3DFFFF            cmp ax,0xffff
00003354  75C0              jnz 0x3316
00003356  83FEFF            cmp si,byte -0x1
00003359  7502              jnz 0x335d
0000335B  EB09              jmp short 0x3366
0000335D  837E0600          cmp word [bp+0x6],byte +0x0
00003361  7403              jz 0x3366
00003363  E926FF            jmp word 0x328c
00003366  8B4606            mov ax,[bp+0x6]
00003369  EB00              jmp short 0x336b
0000336B  5F                pop di
0000336C  5E                pop si
0000336D  5D                pop bp
0000336E  C20600            ret 0x6
00003371  55                push bp
00003372  8BEC              mov bp,sp
00003374  83EC04            sub sp,byte +0x4
00003377  56                push si
00003378  57                push di
00003379  8B7606            mov si,[bp+0x6]
0000337C  0BF6              or si,si
0000337E  7504              jnz 0x3384
00003380  33C0              xor ax,ax
00003382  EB5E              jmp short 0x33e2
00003384  8BC6              mov ax,si
00003386  33D2              xor dx,dx
00003388  8B5E08            mov bx,[bp+0x8]
0000338B  33C9              xor cx,cx
0000338D  0E                push cs
0000338E  E84F04            call word 0x37e0
00003391  8956FE            mov [bp-0x2],dx
00003394  8946FC            mov [bp-0x4],ax
00003397  83FA01            cmp dx,byte +0x1
0000339A  7721              ja 0x33bd
0000339C  7204              jc 0x33a2
0000339E  0BC0              or ax,ax
000033A0  731B              jnc 0x33bd
000033A2  FF7604            push word [bp+0x4]
000033A5  FF76FC            push word [bp-0x4]
000033A8  FF760A            push word [bp+0xa]
000033AB  E8D6FE            call word 0x3284
000033AE  50                push ax
000033AF  8B46FC            mov ax,[bp-0x4]
000033B2  5A                pop dx
000033B3  2BC2              sub ax,dx
000033B5  33D2              xor dx,dx
000033B7  F7F6              div si
000033B9  EB27              jmp short 0x33e2
000033BB  EB25              jmp short 0x33e2
000033BD  8B7E08            mov di,[bp+0x8]
000033C0  47                inc di
000033C1  EB03              jmp short 0x33c6
000033C3  017604            add [bp+0x4],si
000033C6  4F                dec di
000033C7  8BC7              mov ax,di
000033C9  0BC0              or ax,ax
000033CB  740E              jz 0x33db
000033CD  FF7604            push word [bp+0x4]
000033D0  56                push si
000033D1  FF760A            push word [bp+0xa]
000033D4  E8ADFE            call word 0x3284
000033D7  0BC0              or ax,ax
000033D9  74E8              jz 0x33c3
000033DB  8B4608            mov ax,[bp+0x8]
000033DE  2BC7              sub ax,di
000033E0  EB00              jmp short 0x33e2
000033E2  5F                pop di
000033E3  5E                pop si
000033E4  8BE5              mov sp,bp
000033E6  5D                pop bp
000033E7  C3                ret
000033E8  55                push bp
000033E9  8BEC              mov bp,sp
000033EB  83EC04            sub sp,byte +0x4
000033EE  56                push si
000033EF  57                push di
000033F0  8B4608            mov ax,[bp+0x8]
000033F3  40                inc ax
000033F4  3D0200            cmp ax,0x2
000033F7  720D              jc 0x3406
000033F9  8B5E04            mov bx,[bp+0x4]
000033FC  D1E3              shl bx,1
000033FE  F787C0670002      test word [bx+0x67c0],0x200
00003404  7405              jz 0x340b
00003406  33C0              xor ax,ax
00003408  E99300            jmp word 0x349e
0000340B  FF7608            push word [bp+0x8]
0000340E  FF7606            push word [bp+0x6]
00003411  FF7604            push word [bp+0x4]
00003414  E88D00            call word 0x34a4
00003417  83C406            add sp,byte +0x6
0000341A  8946FC            mov [bp-0x4],ax
0000341D  8B46FC            mov ax,[bp-0x4]
00003420  40                inc ax
00003421  3D0200            cmp ax,0x2
00003424  720D              jc 0x3433
00003426  8B5E04            mov bx,[bp+0x4]
00003429  D1E3              shl bx,1
0000342B  F787C0670080      test word [bx+0x67c0],0x8000
00003431  7406              jz 0x3439
00003433  8B46FC            mov ax,[bp-0x4]
00003436  EB66              jmp short 0x349e
00003438  90                nop
00003439  8B4EFC            mov cx,[bp-0x4]
0000343C  8B7606            mov si,[bp+0x6]
0000343F  1E                push ds
00003440  07                pop es
00003441  8BFE              mov di,si
00003443  8BDE              mov bx,si
00003445  FC                cld
00003446  AC                lodsb
00003447  3C1A              cmp al,0x1a
00003449  742D              jz 0x3478
0000344B  3C0D              cmp al,0xd
0000344D  7405              jz 0x3454
0000344F  AA                stosb
00003450  E2F4              loop 0x3446
00003452  EB1C              jmp short 0x3470
00003454  E2F0              loop 0x3446
00003456  06                push es
00003457  53                push bx
00003458  B80100            mov ax,0x1
0000345B  50                push ax
0000345C  8D46FF            lea ax,[bp-0x1]
0000345F  50                push ax
00003460  FF7604            push word [bp+0x4]
00003463  E83E00            call word 0x34a4
00003466  83C406            add sp,byte +0x6
00003469  5B                pop bx
0000346A  07                pop es
0000346B  FC                cld
0000346C  8A46FF            mov al,[bp-0x1]
0000346F  AA                stosb
00003470  3BFB              cmp di,bx
00003472  7502              jnz 0x3476
00003474  EB95              jmp short 0x340b
00003476  EB20              jmp short 0x3498
00003478  53                push bx
00003479  B80200            mov ax,0x2
0000347C  50                push ax
0000347D  F7D9              neg cx
0000347F  1BC0              sbb ax,ax
00003481  50                push ax
00003482  51                push cx
00003483  FF7604            push word [bp+0x4]
00003486  E84102            call word 0x36ca
00003489  83C408            add sp,byte +0x8
0000348C  8B5E04            mov bx,[bp+0x4]
0000348F  D1E3              shl bx,1
00003491  818FC0670002      or word [bx+0x67c0],0x200
00003497  5B                pop bx
00003498  8BC7              mov ax,di
0000349A  2BC3              sub ax,bx
0000349C  EB00              jmp short 0x349e
0000349E  5F                pop di
0000349F  5E                pop si
000034A0  8BE5              mov sp,bp
000034A2  5D                pop bp
000034A3  C3                ret
000034A4  55                push bp
000034A5  8BEC              mov bp,sp
000034A7  B43F              mov ah,0x3f
000034A9  8B5E04            mov bx,[bp+0x4]
000034AC  8B4E08            mov cx,[bp+0x8]
000034AF  8B5606            mov dx,[bp+0x6]
000034B2  CD21              int 0x21
000034B4  7202              jc 0x34b8
000034B6  EB06              jmp short 0x34be
000034B8  50                push ax
000034B9  E890F1            call word 0x264c
000034BC  EB00              jmp short 0x34be
000034BE  5D                pop bp
000034BF  C3                ret
000034C0  55                push bp
000034C1  8BEC              mov bp,sp
000034C3  83EC04            sub sp,byte +0x4
000034C6  56                push si
000034C7  57                push di
000034C8  8B7606            mov si,[bp+0x6]
000034CB  0BF6              or si,si
000034CD  7505              jnz 0x34d4
000034CF  8B4608            mov ax,[bp+0x8]
000034D2  EB5E              jmp short 0x3532
000034D4  8BC6              mov ax,si
000034D6  33D2              xor dx,dx
000034D8  8B5E08            mov bx,[bp+0x8]
000034DB  33C9              xor cx,cx
000034DD  0E                push cs
000034DE  E8FF02            call word 0x37e0
000034E1  8956FE            mov [bp-0x2],dx
000034E4  8946FC            mov [bp-0x4],ax
000034E7  83FA01            cmp dx,byte +0x1
000034EA  7721              ja 0x350d
000034EC  7204              jc 0x34f2
000034EE  0BC0              or ax,ax
000034F0  731B              jnc 0x350d
000034F2  FF7604            push word [bp+0x4]
000034F5  FF76FC            push word [bp-0x4]
000034F8  FF760A            push word [bp+0xa]
000034FB  E84207            call word 0x3c40
000034FE  50                push ax
000034FF  8B46FC            mov ax,[bp-0x4]
00003502  5A                pop dx
00003503  2BC2              sub ax,dx
00003505  33D2              xor dx,dx
00003507  F7F6              div si
00003509  EB27              jmp short 0x3532
0000350B  EB25              jmp short 0x3532
0000350D  8B7E08            mov di,[bp+0x8]
00003510  47                inc di
00003511  EB03              jmp short 0x3516
00003513  017604            add [bp+0x4],si
00003516  4F                dec di
00003517  8BC7              mov ax,di
00003519  0BC0              or ax,ax
0000351B  740E              jz 0x352b
0000351D  FF7604            push word [bp+0x4]
00003520  56                push si
00003521  FF760A            push word [bp+0xa]
00003524  E81907            call word 0x3c40
00003527  0BC0              or ax,ax
00003529  74E8              jz 0x3513
0000352B  8B4608            mov ax,[bp+0x8]
0000352E  2BC7              sub ax,di
00003530  EB00              jmp short 0x3532
00003532  5F                pop di
00003533  5E                pop si
00003534  8BE5              mov sp,bp
00003536  5D                pop bp
00003537  C3                ret
00003538  55                push bp
00003539  8BEC              mov bp,sp
0000353B  81EC8A00          sub sp,0x8a
0000353F  56                push si
00003540  57                push di
00003541  8B4608            mov ax,[bp+0x8]
00003544  40                inc ax
00003545  3D0200            cmp ax,0x2
00003548  7305              jnc 0x354f
0000354A  33C0              xor ax,ax
0000354C  E9F600            jmp word 0x3645
0000354F  8B5E04            mov bx,[bp+0x4]
00003552  D1E3              shl bx,1
00003554  F787C0670080      test word [bx+0x67c0],0x8000
0000355A  7412              jz 0x356e
0000355C  FF7608            push word [bp+0x8]
0000355F  FF7606            push word [bp+0x6]
00003562  FF7604            push word [bp+0x4]
00003565  E8E300            call word 0x364b
00003568  83C406            add sp,byte +0x6
0000356B  E9D700            jmp word 0x3645
0000356E  8B5E04            mov bx,[bp+0x4]
00003571  D1E3              shl bx,1
00003573  81A7C067FFFD      and word [bx+0x67c0],0xfdff
00003579  8B4606            mov ax,[bp+0x6]
0000357C  89867CFF          mov [bp-0x84],ax
00003580  8B4608            mov ax,[bp+0x8]
00003583  898678FF          mov [bp-0x88],ax
00003587  8DB67EFF          lea si,[bp-0x82]
0000358B  EB6D              jmp short 0x35fa
0000358D  FF8E78FF          dec word [bp-0x88]
00003591  8B9E7CFF          mov bx,[bp-0x84]
00003595  FF867CFF          inc word [bp-0x84]
00003599  8A07              mov al,[bx]
0000359B  88867BFF          mov [bp-0x85],al
0000359F  3C0A              cmp al,0xa
000035A1  7504              jnz 0x35a7
000035A3  C6040D            mov byte [si],0xd
000035A6  46                inc si
000035A7  8A867BFF          mov al,[bp-0x85]
000035AB  8804              mov [si],al
000035AD  46                inc si
000035AE  8D867EFF          lea ax,[bp-0x82]
000035B2  8BD6              mov dx,si
000035B4  2BD0              sub dx,ax
000035B6  81FA8000          cmp dx,0x80
000035BA  7C3E              jl 0x35fa
000035BC  8D867EFF          lea ax,[bp-0x82]
000035C0  8BFE              mov di,si
000035C2  2BF8              sub di,ax
000035C4  57                push di
000035C5  8D867EFF          lea ax,[bp-0x82]
000035C9  50                push ax
000035CA  FF7604            push word [bp+0x4]
000035CD  E87B00            call word 0x364b
000035D0  83C406            add sp,byte +0x6
000035D3  898676FF          mov [bp-0x8a],ax
000035D7  3BC7              cmp ax,di
000035D9  741B              jz 0x35f6
000035DB  83BE76FF00        cmp word [bp-0x8a],byte +0x0
000035E0  7305              jnc 0x35e7
000035E2  B8FFFF            mov ax,0xffff
000035E5  EB0D              jmp short 0x35f4
000035E7  8B4608            mov ax,[bp+0x8]
000035EA  2B8678FF          sub ax,[bp-0x88]
000035EE  038676FF          add ax,[bp-0x8a]
000035F2  2BC7              sub ax,di
000035F4  EB4F              jmp short 0x3645
000035F6  8DB67EFF          lea si,[bp-0x82]
000035FA  83BE78FF00        cmp word [bp-0x88],byte +0x0
000035FF  7403              jz 0x3604
00003601  E989FF            jmp word 0x358d
00003604  8D867EFF          lea ax,[bp-0x82]
00003608  8BFE              mov di,si
0000360A  2BF8              sub di,ax
0000360C  8BC7              mov ax,di
0000360E  0BC0              or ax,ax
00003610  762E              jna 0x3640
00003612  57                push di
00003613  8D867EFF          lea ax,[bp-0x82]
00003617  50                push ax
00003618  FF7604            push word [bp+0x4]
0000361B  E82D00            call word 0x364b
0000361E  83C406            add sp,byte +0x6
00003621  898676FF          mov [bp-0x8a],ax
00003625  3BC7              cmp ax,di
00003627  7417              jz 0x3640
00003629  83BE76FF00        cmp word [bp-0x8a],byte +0x0
0000362E  7305              jnc 0x3635
00003630  B8FFFF            mov ax,0xffff
00003633  EB09              jmp short 0x363e
00003635  8B4608            mov ax,[bp+0x8]
00003638  038676FF          add ax,[bp-0x8a]
0000363C  2BC7              sub ax,di
0000363E  EB05              jmp short 0x3645
00003640  8B4608            mov ax,[bp+0x8]
00003643  EB00              jmp short 0x3645
00003645  5F                pop di
00003646  5E                pop si
00003647  8BE5              mov sp,bp
00003649  5D                pop bp
0000364A  C3                ret
0000364B  55                push bp
0000364C  8BEC              mov bp,sp
0000364E  8B5E04            mov bx,[bp+0x4]
00003651  D1E3              shl bx,1
00003653  F787C0670008      test word [bx+0x67c0],0x800
00003659  7410              jz 0x366b
0000365B  B80200            mov ax,0x2
0000365E  50                push ax
0000365F  33C0              xor ax,ax
00003661  50                push ax
00003662  50                push ax
00003663  FF7604            push word [bp+0x4]
00003666  E86100            call word 0x36ca
00003669  8BE5              mov sp,bp
0000366B  B440              mov ah,0x40
0000366D  8B5E04            mov bx,[bp+0x4]
00003670  8B4E08            mov cx,[bp+0x8]
00003673  8B5606            mov dx,[bp+0x6]
00003676  CD21              int 0x21
00003678  720F              jc 0x3689
0000367A  50                push ax
0000367B  8B5E04            mov bx,[bp+0x4]
0000367E  D1E3              shl bx,1
00003680  818FC0670010      or word [bx+0x67c0],0x1000
00003686  58                pop ax
00003687  EB06              jmp short 0x368f
00003689  50                push ax
0000368A  E8BFEF            call word 0x264c
0000368D  EB00              jmp short 0x368f
0000368F  5D                pop bp
00003690  C3                ret
00003691  55                push bp
00003692  8BEC              mov bp,sp
00003694  56                push si
00003695  33C0              xor ax,ax
00003697  50                push ax
00003698  FF7604            push word [bp+0x4]
0000369B  E80003            call word 0x399e
0000369E  59                pop cx
0000369F  59                pop cx
000036A0  8BF0              mov si,ax
000036A2  83FEFF            cmp si,byte -0x1
000036A5  7504              jnz 0x36ab
000036A7  8BC6              mov ax,si
000036A9  EB1C              jmp short 0x36c7
000036AB  F746060200        test word [bp+0x6],0x2
000036B0  7406              jz 0x36b8
000036B2  F7C60100          test si,0x1
000036B6  7504              jnz 0x36bc
000036B8  33C0              xor ax,ax
000036BA  EB0B              jmp short 0x36c7
000036BC  C7060B600500      mov word [0x600b],0x5
000036C2  B8FFFF            mov ax,0xffff
000036C5  EB00              jmp short 0x36c7
000036C7  5E                pop si
000036C8  5D                pop bp
000036C9  C3                ret
000036CA  55                push bp
000036CB  8BEC              mov bp,sp
000036CD  8B5E04            mov bx,[bp+0x4]
000036D0  D1E3              shl bx,1
000036D2  81A7C067FFFD      and word [bx+0x67c0],0xfdff
000036D8  B442              mov ah,0x42
000036DA  8A460A            mov al,[bp+0xa]
000036DD  8B5E04            mov bx,[bp+0x4]
000036E0  8B4E08            mov cx,[bp+0x8]
000036E3  8B5606            mov dx,[bp+0x6]
000036E6  CD21              int 0x21
000036E8  7202              jc 0x36ec
000036EA  EB07              jmp short 0x36f3
000036EC  50                push ax
000036ED  E85CEF            call word 0x264c
000036F0  99                cwd
000036F1  EB00              jmp short 0x36f3
000036F3  5D                pop bp
000036F4  C3                ret
000036F5  55                push bp
000036F6  8BEC              mov bp,sp
000036F8  83EC22            sub sp,byte +0x22
000036FB  56                push si
000036FC  57                push di
000036FD  06                push es
000036FE  8B7E0A            mov di,[bp+0xa]
00003701  1E                push ds
00003702  07                pop es
00003703  8B5E08            mov bx,[bp+0x8]
00003706  83FB24            cmp bx,byte +0x24
00003709  7758              ja 0x3763
0000370B  80FB02            cmp bl,0x2
0000370E  7253              jc 0x3763
00003710  8B460C            mov ax,[bp+0xc]
00003713  8B4E0E            mov cx,[bp+0xe]
00003716  0BC9              or cx,cx
00003718  7D11              jnl 0x372b
0000371A  807E0600          cmp byte [bp+0x6],0x0
0000371E  740B              jz 0x372b
00003720  C6052D            mov byte [di],0x2d
00003723  47                inc di
00003724  F7D9              neg cx
00003726  F7D8              neg ax
00003728  83D900            sbb cx,byte +0x0
0000372B  8D76DE            lea si,[bp-0x22]
0000372E  E30F              jcxz 0x373f
00003730  91                xchg ax,cx
00003731  2BD2              sub dx,dx
00003733  F7F3              div bx
00003735  91                xchg ax,cx
00003736  F7F3              div bx
00003738  8814              mov [si],dl
0000373A  46                inc si
0000373B  E309              jcxz 0x3746
0000373D  EBF1              jmp short 0x3730
0000373F  2BD2              sub dx,dx
00003741  F7F3              div bx
00003743  8814              mov [si],dl
00003745  46                inc si
00003746  0BC0              or ax,ax
00003748  75F5              jnz 0x373f
0000374A  8D4EDE            lea cx,[bp-0x22]
0000374D  F7D9              neg cx
0000374F  03CE              add cx,si
00003751  FC                cld
00003752  4E                dec si
00003753  8A04              mov al,[si]
00003755  2C0A              sub al,0xa
00003757  7304              jnc 0x375d
00003759  043A              add al,0x3a
0000375B  EB03              jmp short 0x3760
0000375D  024604            add al,[bp+0x4]
00003760  AA                stosb
00003761  E2EF              loop 0x3752
00003763  B000              mov al,0x0
00003765  AA                stosb
00003766  07                pop es
00003767  8B460A            mov ax,[bp+0xa]
0000376A  EB00              jmp short 0x376c
0000376C  5F                pop di
0000376D  5E                pop si
0000376E  8BE5              mov sp,bp
00003770  5D                pop bp
00003771  C20C00            ret 0xc
00003774  55                push bp
00003775  8BEC              mov bp,sp
00003777  837E080A          cmp word [bp+0x8],byte +0xa
0000377B  7506              jnz 0x3783
0000377D  8B4604            mov ax,[bp+0x4]
00003780  99                cwd
00003781  EB05              jmp short 0x3788
00003783  8B4604            mov ax,[bp+0x4]
00003786  33D2              xor dx,dx
00003788  52                push dx
00003789  50                push ax
0000378A  FF7606            push word [bp+0x6]
0000378D  FF7608            push word [bp+0x8]
00003790  B001              mov al,0x1
00003792  50                push ax
00003793  B061              mov al,0x61
00003795  50                push ax
00003796  E85CFF            call word 0x36f5
00003799  EB00              jmp short 0x379b
0000379B  5D                pop bp
0000379C  C3                ret
0000379D  55                push bp
0000379E  8BEC              mov bp,sp
000037A0  FF7606            push word [bp+0x6]
000037A3  FF7604            push word [bp+0x4]
000037A6  FF7608            push word [bp+0x8]
000037A9  FF760A            push word [bp+0xa]
000037AC  B000              mov al,0x0
000037AE  50                push ax
000037AF  B061              mov al,0x61
000037B1  50                push ax
000037B2  E840FF            call word 0x36f5
000037B5  EB00              jmp short 0x37b7
000037B7  5D                pop bp
000037B8  C3                ret
000037B9  55                push bp
000037BA  8BEC              mov bp,sp
000037BC  FF7606            push word [bp+0x6]
000037BF  FF7604            push word [bp+0x4]
000037C2  FF7608            push word [bp+0x8]
000037C5  FF760A            push word [bp+0xa]
000037C8  837E0A0A          cmp word [bp+0xa],byte +0xa
000037CC  7505              jnz 0x37d3
000037CE  B80100            mov ax,0x1
000037D1  EB02              jmp short 0x37d5
000037D3  33C0              xor ax,ax
000037D5  50                push ax
000037D6  B061              mov al,0x61
000037D8  50                push ax
000037D9  E819FF            call word 0x36f5
000037DC  EB00              jmp short 0x37de
000037DE  5D                pop bp
000037DF  C3                ret
000037E0  56                push si
000037E1  96                xchg ax,si
000037E2  92                xchg ax,dx
000037E3  85C0              test ax,ax
000037E5  7402              jz 0x37e9
000037E7  F7E3              mul bx
000037E9  91                xchg ax,cx
000037EA  85C0              test ax,ax
000037EC  7404              jz 0x37f2
000037EE  F7E6              mul si
000037F0  03C8              add cx,ax
000037F2  96                xchg ax,si
000037F3  F7E3              mul bx
000037F5  03D1              add dx,cx
000037F7  5E                pop si
000037F8  CB                retf
000037F9  55                push bp
000037FA  8BEC              mov bp,sp
000037FC  56                push si
000037FD  8B7606            mov si,[bp+0x6]
00003800  0BF6              or si,si
00003802  7503              jnz 0x3807
00003804  BEA898            mov si,0x98a8
00003807  C60400            mov byte [si],0x0
0000380A  B8F067            mov ax,0x67f0
0000380D  50                push ax
0000380E  56                push si
0000380F  E87D00            call word 0x388f
00003812  59                pop cx
00003813  59                pop cx
00003814  B80A00            mov ax,0xa
00003817  50                push ax
00003818  8BC6              mov ax,si
0000381A  050300            add ax,0x3
0000381D  50                push ax
0000381E  8B4604            mov ax,[bp+0x4]
00003821  33D2              xor dx,dx
00003823  52                push dx
00003824  50                push ax
00003825  E875FF            call word 0x379d
00003828  83C408            add sp,byte +0x8
0000382B  B8F467            mov ax,0x67f4
0000382E  50                push ax
0000382F  56                push si
00003830  E85C00            call word 0x388f
00003833  59                pop cx
00003834  59                pop cx
00003835  8BC6              mov ax,si
00003837  EB00              jmp short 0x3839
00003839  5E                pop si
0000383A  5D                pop bp
0000383B  C20400            ret 0x4
0000383E  55                push bp
0000383F  8BEC              mov bp,sp
00003841  56                push si
00003842  8B7604            mov si,[bp+0x4]
00003845  56                push si
00003846  833EA698FF        cmp word [0x98a6],byte -0x1
0000384B  7505              jnz 0x3852
0000384D  B80200            mov ax,0x2
00003850  EB03              jmp short 0x3855
00003852  B80100            mov ax,0x1
00003855  0106A698          add [0x98a6],ax
00003859  A1A698            mov ax,[0x98a6]
0000385C  50                push ax
0000385D  E899FF            call word 0x37f9
00003860  8BF0              mov si,ax
00003862  33C0              xor ax,ax
00003864  50                push ax
00003865  56                push si
00003866  E828FE            call word 0x3691
00003869  59                pop cx
0000386A  59                pop cx
0000386B  3DFFFF            cmp ax,0xffff
0000386E  75D5              jnz 0x3845
00003870  8BC6              mov ax,si
00003872  EB00              jmp short 0x3874
00003874  5E                pop si
00003875  5D                pop bp
00003876  C3                ret
00003877  55                push bp
00003878  8BEC              mov bp,sp
0000387A  B441              mov ah,0x41
0000387C  8B5604            mov dx,[bp+0x4]
0000387F  CD21              int 0x21
00003881  7204              jc 0x3887
00003883  33C0              xor ax,ax
00003885  EB06              jmp short 0x388d
00003887  50                push ax
00003888  E8C1ED            call word 0x264c
0000388B  EB00              jmp short 0x388d
0000388D  5D                pop bp
0000388E  C3                ret
0000388F  55                push bp
00003890  8BEC              mov bp,sp
00003892  56                push si
00003893  57                push di
00003894  FC                cld
00003895  8B7E04            mov di,[bp+0x4]
00003898  1E                push ds
00003899  07                pop es
0000389A  8BD7              mov dx,di
0000389C  32C0              xor al,al
0000389E  B9FFFF            mov cx,0xffff
000038A1  F2AE              repne scasb
000038A3  8D75FF            lea si,[di-0x1]
000038A6  8B7E06            mov di,[bp+0x6]
000038A9  B9FFFF            mov cx,0xffff
000038AC  F2AE              repne scasb
000038AE  F7D1              not cx
000038B0  2BF9              sub di,cx
000038B2  87F7              xchg si,di
000038B4  F7C60100          test si,0x1
000038B8  7402              jz 0x38bc
000038BA  A4                movsb
000038BB  49                dec cx
000038BC  D1E9              shr cx,1
000038BE  F3A5              rep movsw
000038C0  7301              jnc 0x38c3
000038C2  A4                movsb
000038C3  8BC2              mov ax,dx
000038C5  EB00              jmp short 0x38c7
000038C7  5F                pop di
000038C8  5E                pop si
000038C9  5D                pop bp
000038CA  C3                ret
000038CB  55                push bp
000038CC  8BEC              mov bp,sp
000038CE  56                push si
000038CF  57                push di
000038D0  1E                push ds
000038D1  07                pop es
000038D2  FC                cld
000038D3  8B7E04            mov di,[bp+0x4]
000038D6  32C0              xor al,al
000038D8  B9FFFF            mov cx,0xffff
000038DB  F2AE              repne scasb
000038DD  8BC1              mov ax,cx
000038DF  F7D0              not ax
000038E1  48                dec ax
000038E2  EB00              jmp short 0x38e4
000038E4  5F                pop di
000038E5  5E                pop si
000038E6  5D                pop bp
000038E7  C3                ret
000038E8  55                push bp
000038E9  8BEC              mov bp,sp
000038EB  56                push si
000038EC  57                push di
000038ED  8CD8              mov ax,ds
000038EF  8EC0              mov es,ax
000038F1  FC                cld
000038F2  33C0              xor ax,ax
000038F4  8BD8              mov bx,ax
000038F6  8B7E06            mov di,[bp+0x6]
000038F9  8BF7              mov si,di
000038FB  32C0              xor al,al
000038FD  B9FFFF            mov cx,0xffff
00003900  F2AE              repne scasb
00003902  F7D1              not cx
00003904  8BFE              mov di,si
00003906  8B7604            mov si,[bp+0x4]
00003909  F3A6              repe cmpsb
0000390B  8A44FF            mov al,[si-0x1]
0000390E  8A5DFF            mov bl,[di-0x1]
00003911  2BC3              sub ax,bx
00003913  EB00              jmp short 0x3915
00003915  5F                pop di
00003916  5E                pop si
00003917  5D                pop bp
00003918  C3                ret
00003919  55                push bp
0000391A  8BEC              mov bp,sp
0000391C  56                push si
0000391D  57                push di
0000391E  1E                push ds
0000391F  07                pop es
00003920  FC                cld
00003921  8B7E06            mov di,[bp+0x6]
00003924  8BF7              mov si,di
00003926  32C0              xor al,al
00003928  B9FFFF            mov cx,0xffff
0000392B  F2AE              repne scasb
0000392D  F7D1              not cx
0000392F  8B7E04            mov di,[bp+0x4]
00003932  F3A4              rep movsb
00003934  8B4604            mov ax,[bp+0x4]
00003937  EB00              jmp short 0x3939
00003939  5F                pop di
0000393A  5E                pop si
0000393B  5D                pop bp
0000393C  C3                ret
0000393D  55                push bp
0000393E  8BEC              mov bp,sp
00003940  56                push si
00003941  57                push di
00003942  1E                push ds
00003943  07                pop es
00003944  8B7E04            mov di,[bp+0x4]
00003947  8B7606            mov si,[bp+0x6]
0000394A  8B4E08            mov cx,[bp+0x8]
0000394D  D1E9              shr cx,1
0000394F  FC                cld
00003950  F3A5              rep movsw
00003952  7301              jnc 0x3955
00003954  A4                movsb
00003955  8B4604            mov ax,[bp+0x4]
00003958  EB00              jmp short 0x395a
0000395A  5F                pop di
0000395B  5E                pop si
0000395C  5D                pop bp
0000395D  C3                ret
0000395E  55                push bp
0000395F  8BEC              mov bp,sp
00003961  56                push si
00003962  57                push di
00003963  1E                push ds
00003964  07                pop es
00003965  8B7E04            mov di,[bp+0x4]
00003968  8B4E06            mov cx,[bp+0x6]
0000396B  8A4608            mov al,[bp+0x8]
0000396E  8AE0              mov ah,al
00003970  FC                cld
00003971  F7C70100          test di,0x1
00003975  7404              jz 0x397b
00003977  E309              jcxz 0x3982
00003979  AA                stosb
0000397A  49                dec cx
0000397B  D1E9              shr cx,1
0000397D  F3AB              rep stosw
0000397F  7301              jnc 0x3982
00003981  AA                stosb
00003982  5F                pop di
00003983  5E                pop si
00003984  5D                pop bp
00003985  C3                ret
00003986  55                push bp
00003987  8BEC              mov bp,sp
00003989  FF7606            push word [bp+0x6]
0000398C  FF7608            push word [bp+0x8]
0000398F  FF7604            push word [bp+0x4]
00003992  E8C9FF            call word 0x395e
00003995  8BE5              mov sp,bp
00003997  8B4604            mov ax,[bp+0x4]
0000399A  EB00              jmp short 0x399c
0000399C  5D                pop bp
0000399D  C3                ret
0000399E  55                push bp
0000399F  8BEC              mov bp,sp
000039A1  B443              mov ah,0x43
000039A3  8A4606            mov al,[bp+0x6]
000039A6  8B4E08            mov cx,[bp+0x8]
000039A9  8B5604            mov dx,[bp+0x4]
000039AC  CD21              int 0x21
000039AE  7203              jc 0x39b3
000039B0  91                xchg ax,cx
000039B1  EB06              jmp short 0x39b9
000039B3  50                push ax
000039B4  E895EC            call word 0x264c
000039B7  EB00              jmp short 0x39b9
000039B9  5D                pop bp
000039BA  C3                ret
000039BB  BAFA67            mov dx,0x67fa
000039BE  EB03              jmp short 0x39c3
000039C0  BAFF67            mov dx,0x67ff
000039C3  B90500            mov cx,0x5
000039C6  90                nop
000039C7  B440              mov ah,0x40
000039C9  BB0200            mov bx,0x2
000039CC  CD21              int 0x21
000039CE  B92700            mov cx,0x27
000039D1  90                nop
000039D2  BA0468            mov dx,0x6804
000039D5  B440              mov ah,0x40
000039D7  CD21              int 0x21
000039D9  E9E4C8            jmp word 0x2c0
000039DC  55                push bp
000039DD  8BEC              mov bp,sp
000039DF  83EC04            sub sp,byte +0x4
000039E2  8B5E04            mov bx,[bp+0x4]
000039E5  D1E3              shl bx,1
000039E7  F787C0670002      test word [bx+0x67c0],0x200
000039ED  7406              jz 0x39f5
000039EF  B80100            mov ax,0x1
000039F2  EB52              jmp short 0x3a46
000039F4  90                nop
000039F5  B80044            mov ax,0x4400
000039F8  8B5E04            mov bx,[bp+0x4]
000039FB  CD21              int 0x21
000039FD  7241              jc 0x3a40
000039FF  F6C280            test dl,0x80
00003A02  7538              jnz 0x3a3c
00003A04  B80142            mov ax,0x4201
00003A07  33C9              xor cx,cx
00003A09  33D2              xor dx,dx
00003A0B  CD21              int 0x21
00003A0D  7231              jc 0x3a40
00003A0F  52                push dx
00003A10  50                push ax
00003A11  B80242            mov ax,0x4202
00003A14  33C9              xor cx,cx
00003A16  33D2              xor dx,dx
00003A18  CD21              int 0x21
00003A1A  8946FC            mov [bp-0x4],ax
00003A1D  8956FE            mov [bp-0x2],dx
00003A20  5A                pop dx
00003A21  59                pop cx
00003A22  721C              jc 0x3a40
00003A24  B80042            mov ax,0x4200
00003A27  CD21              int 0x21
00003A29  7215              jc 0x3a40
00003A2B  3B56FE            cmp dx,[bp-0x2]
00003A2E  720C              jc 0x3a3c
00003A30  7705              ja 0x3a37
00003A32  3B46FC            cmp ax,[bp-0x4]
00003A35  7205              jc 0x3a3c
00003A37  B80100            mov ax,0x1
00003A3A  EB0A              jmp short 0x3a46
00003A3C  33C0              xor ax,ax
00003A3E  EB06              jmp short 0x3a46
00003A40  50                push ax
00003A41  E808EC            call word 0x264c
00003A44  EB00              jmp short 0x3a46
00003A46  8BE5              mov sp,bp
00003A48  5D                pop bp
00003A49  C3                ret
00003A4A  55                push bp
00003A4B  8BEC              mov bp,sp
00003A4D  56                push si
00003A4E  57                push di
00003A4F  8B7604            mov si,[bp+0x4]
00003A52  8B440E            mov ax,[si+0xe]
00003A55  3BC6              cmp ax,si
00003A57  7405              jz 0x3a5e
00003A59  B8FFFF            mov ax,0xffff
00003A5C  EB66              jmp short 0x3ac4
00003A5E  833C00            cmp word [si],byte +0x0
00003A61  7C2D              jl 0x3a90
00003A63  F744020800        test word [si+0x2],0x8
00003A68  750C              jnz 0x3a76
00003A6A  8B440A            mov ax,[si+0xa]
00003A6D  8BD6              mov dx,si
00003A6F  83C205            add dx,byte +0x5
00003A72  3BC2              cmp ax,dx
00003A74  7516              jnz 0x3a8c
00003A76  C7040000          mov word [si],0x0
00003A7A  8B440A            mov ax,[si+0xa]
00003A7D  8BD6              mov dx,si
00003A7F  83C205            add dx,byte +0x5
00003A82  3BC2              cmp ax,dx
00003A84  7506              jnz 0x3a8c
00003A86  8B4408            mov ax,[si+0x8]
00003A89  89440A            mov [si+0xa],ax
00003A8C  33C0              xor ax,ax
00003A8E  EB34              jmp short 0x3ac4
00003A90  8B7C06            mov di,[si+0x6]
00003A93  033C              add di,[si]
00003A95  47                inc di
00003A96  293C              sub [si],di
00003A98  57                push di
00003A99  8B4408            mov ax,[si+0x8]
00003A9C  89440A            mov [si+0xa],ax
00003A9F  50                push ax
00003AA0  8A4404            mov al,[si+0x4]
00003AA3  98                cbw
00003AA4  50                push ax
00003AA5  E890FA            call word 0x3538
00003AA8  83C406            add sp,byte +0x6
00003AAB  3BC7              cmp ax,di
00003AAD  7411              jz 0x3ac0
00003AAF  F744020002        test word [si+0x2],0x200
00003AB4  750A              jnz 0x3ac0
00003AB6  814C021000        or word [si+0x2],0x10
00003ABB  B8FFFF            mov ax,0xffff
00003ABE  EB04              jmp short 0x3ac4
00003AC0  33C0              xor ax,ax
00003AC2  EB00              jmp short 0x3ac4
00003AC4  5F                pop di
00003AC5  5E                pop si
00003AC6  5D                pop bp
00003AC7  C3                ret
00003AC8  55                push bp
00003AC9  8BEC              mov bp,sp
00003ACB  B8403C            mov ax,0x3c40
00003ACE  50                push ax
00003ACF  B89066            mov ax,0x6690
00003AD2  50                push ax
00003AD3  FF7604            push word [bp+0x4]
00003AD6  8D4606            lea ax,[bp+0x6]
00003AD9  50                push ax
00003ADA  E84C02            call word 0x3d29
00003ADD  EB00              jmp short 0x3adf
00003ADF  5D                pop bp
00003AE0  C3                ret
00003AE1  55                push bp
00003AE2  8BEC              mov bp,sp
00003AE4  8B5E06            mov bx,[bp+0x6]
00003AE7  FF0F              dec word [bx]
00003AE9  FF7606            push word [bp+0x6]
00003AEC  8A4604            mov al,[bp+0x4]
00003AEF  98                cbw
00003AF0  50                push ax
00003AF1  E80600            call word 0x3afa
00003AF4  8BE5              mov sp,bp
00003AF6  EB00              jmp short 0x3af8
00003AF8  5D                pop bp
00003AF9  C3                ret
00003AFA  55                push bp
00003AFB  8BEC              mov bp,sp
00003AFD  83EC02            sub sp,byte +0x2
00003B00  56                push si
00003B01  8B7606            mov si,[bp+0x6]
00003B04  8A4604            mov al,[bp+0x4]
00003B07  8846FF            mov [bp-0x1],al
00003B0A  FF04              inc word [si]
00003B0C  7D36              jnl 0x3b44
00003B0E  8A46FF            mov al,[bp-0x1]
00003B11  FF440A            inc word [si+0xa]
00003B14  8B5C0A            mov bx,[si+0xa]
00003B17  8847FF            mov [bx-0x1],al
00003B1A  F744020800        test word [si+0x2],0x8
00003B1F  741B              jz 0x3b3c
00003B21  807EFF0A          cmp byte [bp-0x1],0xa
00003B25  7406              jz 0x3b2d
00003B27  807EFF0D          cmp byte [bp-0x1],0xd
00003B2B  750F              jnz 0x3b3c
00003B2D  56                push si
00003B2E  E819FF            call word 0x3a4a
00003B31  59                pop cx
00003B32  0BC0              or ax,ax
00003B34  7406              jz 0x3b3c
00003B36  B8FFFF            mov ax,0xffff
00003B39  E9E900            jmp word 0x3c25
00003B3C  8A46FF            mov al,[bp-0x1]
00003B3F  B400              mov ah,0x0
00003B41  E9E100            jmp word 0x3c25
00003B44  FF0C              dec word [si]
00003B46  F744029000        test word [si+0x2],0x90
00003B4B  7507              jnz 0x3b54
00003B4D  F744020200        test word [si+0x2],0x2
00003B52  750B              jnz 0x3b5f
00003B54  814C021000        or word [si+0x2],0x10
00003B59  B8FFFF            mov ax,0xffff
00003B5C  E9C600            jmp word 0x3c25
00003B5F  814C020001        or word [si+0x2],0x100
00003B64  837C0600          cmp word [si+0x6],byte +0x0
00003B68  7426              jz 0x3b90
00003B6A  833C00            cmp word [si],byte +0x0
00003B6D  7411              jz 0x3b80
00003B6F  56                push si
00003B70  E8D7FE            call word 0x3a4a
00003B73  59                pop cx
00003B74  0BC0              or ax,ax
00003B76  7406              jz 0x3b7e
00003B78  B8FFFF            mov ax,0xffff
00003B7B  E9A700            jmp word 0x3c25
00003B7E  EB0A              jmp short 0x3b8a
00003B80  B8FFFF            mov ax,0xffff
00003B83  8B5406            mov dx,[si+0x6]
00003B86  2BC2              sub ax,dx
00003B88  8904              mov [si],ax
00003B8A  E97DFF            jmp word 0x3b0a
00003B8D  E99500            jmp word 0x3c25
00003B90  833EEE6700        cmp word [0x67ee],byte +0x0
00003B95  7539              jnz 0x3bd0
00003B97  B89066            mov ax,0x6690
00003B9A  3BC6              cmp ax,si
00003B9C  7532              jnz 0x3bd0
00003B9E  8A4404            mov al,[si+0x4]
00003BA1  98                cbw
00003BA2  50                push ax
00003BA3  E8E3F4            call word 0x3089
00003BA6  59                pop cx
00003BA7  0BC0              or ax,ax
00003BA9  7505              jnz 0x3bb0
00003BAB  816402FFFD        and word [si+0x2],0xfdff
00003BB0  B80002            mov ax,0x200
00003BB3  50                push ax
00003BB4  F744020002        test word [si+0x2],0x200
00003BB9  7405              jz 0x3bc0
00003BBB  B80200            mov ax,0x2
00003BBE  EB02              jmp short 0x3bc2
00003BC0  33C0              xor ax,ax
00003BC2  50                push ax
00003BC3  33C0              xor ax,ax
00003BC5  50                push ax
00003BC6  56                push si
00003BC7  E8D7F4            call word 0x30a1
00003BCA  83C408            add sp,byte +0x8
00003BCD  E98FFF            jmp word 0x3b5f
00003BD0  807EFF0A          cmp byte [bp-0x1],0xa
00003BD4  751F              jnz 0x3bf5
00003BD6  F744024000        test word [si+0x2],0x40
00003BDB  7518              jnz 0x3bf5
00003BDD  B80100            mov ax,0x1
00003BE0  50                push ax
00003BE1  B82C68            mov ax,0x682c
00003BE4  50                push ax
00003BE5  8A4404            mov al,[si+0x4]
00003BE8  98                cbw
00003BE9  50                push ax
00003BEA  E85EFA            call word 0x364b
00003BED  83C406            add sp,byte +0x6
00003BF0  3D0100            cmp ax,0x1
00003BF3  7518              jnz 0x3c0d
00003BF5  B80100            mov ax,0x1
00003BF8  50                push ax
00003BF9  8D4604            lea ax,[bp+0x4]
00003BFC  50                push ax
00003BFD  8A4404            mov al,[si+0x4]
00003C00  98                cbw
00003C01  50                push ax
00003C02  E846FA            call word 0x364b
00003C05  83C406            add sp,byte +0x6
00003C08  3D0100            cmp ax,0x1
00003C0B  7411              jz 0x3c1e
00003C0D  F744020002        test word [si+0x2],0x200
00003C12  750A              jnz 0x3c1e
00003C14  814C021000        or word [si+0x2],0x10
00003C19  B8FFFF            mov ax,0xffff
00003C1C  EB07              jmp short 0x3c25
00003C1E  8A46FF            mov al,[bp-0x1]
00003C21  B400              mov ah,0x0
00003C23  EB00              jmp short 0x3c25
00003C25  5E                pop si
00003C26  8BE5              mov sp,bp
00003C28  5D                pop bp
00003C29  C3                ret
00003C2A  55                push bp
00003C2B  8BEC              mov bp,sp
00003C2D  56                push si
00003C2E  8B7604            mov si,[bp+0x4]
00003C31  B89066            mov ax,0x6690
00003C34  50                push ax
00003C35  56                push si
00003C36  E8C1FE            call word 0x3afa
00003C39  59                pop cx
00003C3A  59                pop cx
00003C3B  EB00              jmp short 0x3c3d
00003C3D  5E                pop si
00003C3E  5D                pop bp
00003C3F  C3                ret
00003C40  55                push bp
00003C41  8BEC              mov bp,sp
00003C43  83EC02            sub sp,byte +0x2
00003C46  56                push si
00003C47  57                push di
00003C48  8B7604            mov si,[bp+0x4]
00003C4B  8B7E06            mov di,[bp+0x6]
00003C4E  47                inc di
00003C4F  F744020800        test word [si+0x2],0x8
00003C54  7423              jz 0x3c79
00003C56  EB02              jmp short 0x3c5a
00003C58  EB00              jmp short 0x3c5a
00003C5A  4F                dec di
00003C5B  8BC7              mov ax,di
00003C5D  0BC0              or ax,ax
00003C5F  7415              jz 0x3c76
00003C61  56                push si
00003C62  8B5E08            mov bx,[bp+0x8]
00003C65  FF4608            inc word [bp+0x8]
00003C68  8A07              mov al,[bx]
00003C6A  98                cbw
00003C6B  50                push ax
00003C6C  E88BFE            call word 0x3afa
00003C6F  59                pop cx
00003C70  59                pop cx
00003C71  3DFFFF            cmp ax,0xffff
00003C74  75E2              jnz 0x3c58
00003C76  E97500            jmp word 0x3cee
00003C79  F744024000        test word [si+0x2],0x40
00003C7E  7437              jz 0x3cb7
00003C80  837C0600          cmp word [si+0x6],byte +0x0
00003C84  7431              jz 0x3cb7
00003C86  8B4406            mov ax,[si+0x6]
00003C89  3BC7              cmp ax,di
00003C8B  732A              jnc 0x3cb7
00003C8D  833C00            cmp word [si],byte +0x0
00003C90  740D              jz 0x3c9f
00003C92  56                push si
00003C93  E8B4FD            call word 0x3a4a
00003C96  59                pop cx
00003C97  0BC0              or ax,ax
00003C99  7404              jz 0x3c9f
00003C9B  33C0              xor ax,ax
00003C9D  EB53              jmp short 0x3cf2
00003C9F  4F                dec di
00003CA0  57                push di
00003CA1  FF7608            push word [bp+0x8]
00003CA4  8A4404            mov al,[si+0x4]
00003CA7  98                cbw
00003CA8  50                push ax
00003CA9  E89FF9            call word 0x364b
00003CAC  83C406            add sp,byte +0x6
00003CAF  8946FE            mov [bp-0x2],ax
00003CB2  2B7EFE            sub di,[bp-0x2]
00003CB5  EB37              jmp short 0x3cee
00003CB7  EB02              jmp short 0x3cbb
00003CB9  EB00              jmp short 0x3cbb
00003CBB  4F                dec di
00003CBC  8BC7              mov ax,di
00003CBE  0BC0              or ax,ax
00003CC0  742C              jz 0x3cee
00003CC2  FF04              inc word [si]
00003CC4  7D15              jnl 0x3cdb
00003CC6  8B5E08            mov bx,[bp+0x8]
00003CC9  FF4608            inc word [bp+0x8]
00003CCC  8A07              mov al,[bx]
00003CCE  FF440A            inc word [si+0xa]
00003CD1  8B5C0A            mov bx,[si+0xa]
00003CD4  8847FF            mov [bx-0x1],al
00003CD7  B400              mov ah,0x0
00003CD9  EB0E              jmp short 0x3ce9
00003CDB  56                push si
00003CDC  8B5E08            mov bx,[bp+0x8]
00003CDF  FF4608            inc word [bp+0x8]
00003CE2  FF37              push word [bx]
00003CE4  E8FAFD            call word 0x3ae1
00003CE7  59                pop cx
00003CE8  59                pop cx
00003CE9  3DFFFF            cmp ax,0xffff
00003CEC  75CB              jnz 0x3cb9
00003CEE  8BC7              mov ax,di
00003CF0  EB00              jmp short 0x3cf2
00003CF2  5F                pop di
00003CF3  5E                pop si
00003CF4  8BE5              mov sp,bp
00003CF6  5D                pop bp
00003CF7  C20600            ret 0x6
00003CFA  FF269269          jmp word [0x6992]
00003CFE  55                push bp
00003CFF  8BEC              mov bp,sp
00003D01  8B5604            mov dx,[bp+0x4]
00003D04  B9040F            mov cx,0xf04
00003D07  BB3568            mov bx,0x6835
00003D0A  FC                cld
00003D0B  8AC6              mov al,dh
00003D0D  D2E8              shr al,cl
00003D0F  D7                xlatb
00003D10  AA                stosb
00003D11  8AC6              mov al,dh
00003D13  22C5              and al,ch
00003D15  D7                xlatb
00003D16  AA                stosb
00003D17  8AC2              mov al,dl
00003D19  D2E8              shr al,cl
00003D1B  D7                xlatb
00003D1C  AA                stosb
00003D1D  8AC2              mov al,dl
00003D1F  22C5              and al,ch
00003D21  D7                xlatb
00003D22  AA                stosb
00003D23  EB00              jmp short 0x3d25
00003D25  5D                pop bp
00003D26  C20200            ret 0x2
00003D29  55                push bp
00003D2A  8BEC              mov bp,sp
00003D2C  81EC9600          sub sp,0x96
00003D30  56                push si
00003D31  57                push di
00003D32  C746AA0000        mov word [bp-0x56],0x0
00003D37  C646AD50          mov byte [bp-0x53],0x50
00003D3B  EB38              jmp short 0x3d75
00003D3D  57                push di
00003D3E  B9FFFF            mov cx,0xffff
00003D41  32C0              xor al,al
00003D43  F2AE              repne scasb
00003D45  F7D1              not cx
00003D47  49                dec cx
00003D48  5F                pop di
00003D49  C3                ret
00003D4A  8805              mov [di],al
00003D4C  47                inc di
00003D4D  FE4EAD            dec byte [bp-0x53]
00003D50  7E22              jng 0x3d74
00003D52  53                push bx
00003D53  51                push cx
00003D54  52                push dx
00003D55  06                push es
00003D56  8D46AE            lea ax,[bp-0x52]
00003D59  2BF8              sub di,ax
00003D5B  8D46AE            lea ax,[bp-0x52]
00003D5E  50                push ax
00003D5F  57                push di
00003D60  FF7608            push word [bp+0x8]
00003D63  FF560A            call word [bp+0xa]
00003D66  C646AD50          mov byte [bp-0x53],0x50
00003D6A  017EAA            add [bp-0x56],di
00003D6D  8D7EAE            lea di,[bp-0x52]
00003D70  07                pop es
00003D71  5A                pop dx
00003D72  59                pop cx
00003D73  5B                pop bx
00003D74  C3                ret
00003D75  06                push es
00003D76  FC                cld
00003D77  8D7EAE            lea di,[bp-0x52]
00003D7A  89BE6CFF          mov [bp-0x94],di
00003D7E  8BBE6CFF          mov di,[bp-0x94]
00003D82  8B7606            mov si,[bp+0x6]
00003D85  AC                lodsb
00003D86  0AC0              or al,al
00003D88  7411              jz 0x3d9b
00003D8A  3C25              cmp al,0x25
00003D8C  7410              jz 0x3d9e
00003D8E  8805              mov [di],al
00003D90  47                inc di
00003D91  FE4EAD            dec byte [bp-0x53]
00003D94  7FEF              jg 0x3d85
00003D96  E8B9FF            call word 0x3d52
00003D99  EBEA              jmp short 0x3d85
00003D9B  E97504            jmp word 0x4213
00003D9E  89B678FF          mov [bp-0x88],si
00003DA2  AC                lodsb
00003DA3  3C25              cmp al,0x25
00003DA5  74E7              jz 0x3d8e
00003DA7  89BE6CFF          mov [bp-0x94],di
00003DAB  33C9              xor cx,cx
00003DAD  898E76FF          mov [bp-0x8a],cx
00003DB1  898E6AFF          mov [bp-0x96],cx
00003DB5  888E75FF          mov [bp-0x8b],cl
00003DB9  C78670FFFFFF      mov word [bp-0x90],0xffff
00003DBF  C78672FFFFFF      mov word [bp-0x8e],0xffff
00003DC5  EB01              jmp short 0x3dc8
00003DC7  AC                lodsb
00003DC8  32E4              xor ah,ah
00003DCA  8BD0              mov dx,ax
00003DCC  8BD8              mov bx,ax
00003DCE  80EB20            sub bl,0x20
00003DD1  80FB60            cmp bl,0x60
00003DD4  7347              jnc 0x3e1d
00003DD6  8A9F4568          mov bl,[bx+0x6845]
00003DDA  8BC3              mov ax,bx
00003DDC  3D1700            cmp ax,0x17
00003DDF  7603              jna 0x3de4
00003DE1  E91D04            jmp word 0x4201
00003DE4  8BD8              mov bx,ax
00003DE6  D1E3              shl bx,1
00003DE8  2EFFA7ED3D        jmp word [cs:bx+0x3ded]
00003DED  383E203E          cmp [0x3e20],bh
00003DF1  793E              jns 0x3e31
00003DF3  2C3E              sub al,0x3e
00003DF5  9E                sahf
00003DF6  3EA83E            ds test al,0x3e
00003DF9  EA3EF43E04        jmp word 0x43e:0xf43e
00003DFE  3F                aas
00003DFF  5F                pop di
00003E00  3E393F            cmp [ds:bx],di
00003E03  143F              adc al,0x3f
00003E05  183F              sbb [bx],bh
00003E07  1C3F              sbb al,0x3f
00003E09  BE3F70            mov si,0x703f
00003E0C  40                inc ax
00003E0D  114031            adc [bx+si+0x31],ax
00003E10  40                inc ax
00003E11  D441              aam 0x41
00003E13  014201            add [bp+si+0x1],ax
00003E16  42                inc dx
00003E17  01424B            add [bp+si+0x4b],ax
00003E1A  3E55              ds push bp
00003E1C  3EE9E103          ds jmp word 0x4201
00003E20  80FD00            cmp ch,0x0
00003E23  77F8              ja 0x3e1d
00003E25  838E6AFF01        or word [bp-0x96],byte +0x1
00003E2A  EB9B              jmp short 0x3dc7
00003E2C  80FD00            cmp ch,0x0
00003E2F  77EC              ja 0x3e1d
00003E31  838E6AFF02        or word [bp-0x96],byte +0x2
00003E36  EB8F              jmp short 0x3dc7
00003E38  80FD00            cmp ch,0x0
00003E3B  77E0              ja 0x3e1d
00003E3D  80BE75FF2B        cmp byte [bp-0x8b],0x2b
00003E42  7404              jz 0x3e48
00003E44  889675FF          mov [bp-0x8b],dl
00003E48  E97CFF            jmp word 0x3dc7
00003E4B  83A66AFFDF        and word [bp-0x96],byte -0x21
00003E50  B505              mov ch,0x5
00003E52  E972FF            jmp word 0x3dc7
00003E55  838E6AFF20        or word [bp-0x96],byte +0x20
00003E5A  B505              mov ch,0x5
00003E5C  E968FF            jmp word 0x3dc7
00003E5F  80FD00            cmp ch,0x0
00003E62  7744              ja 0x3ea8
00003E64  F7866AFF0200      test word [bp-0x96],0x2
00003E6A  7521              jnz 0x3e8d
00003E6C  838E6AFF08        or word [bp-0x96],byte +0x8
00003E71  B501              mov ch,0x1
00003E73  E951FF            jmp word 0x3dc7
00003E76  E98803            jmp word 0x4201
00003E79  8B7E04            mov di,[bp+0x4]
00003E7C  8B05              mov ax,[di]
00003E7E  83460402          add word [bp+0x4],byte +0x2
00003E82  80FD02            cmp ch,0x2
00003E85  7309              jnc 0x3e90
00003E87  898670FF          mov [bp-0x90],ax
00003E8B  B503              mov ch,0x3
00003E8D  E937FF            jmp word 0x3dc7
00003E90  80FD04            cmp ch,0x4
00003E93  75E1              jnz 0x3e76
00003E95  898672FF          mov [bp-0x8e],ax
00003E99  FEC5              inc ch
00003E9B  E929FF            jmp word 0x3dc7
00003E9E  80FD04            cmp ch,0x4
00003EA1  73D3              jnc 0x3e76
00003EA3  B504              mov ch,0x4
00003EA5  E91FFF            jmp word 0x3dc7
00003EA8  92                xchg ax,dx
00003EA9  2C30              sub al,0x30
00003EAB  98                cbw
00003EAC  80FD02            cmp ch,0x2
00003EAF  771B              ja 0x3ecc
00003EB1  B502              mov ch,0x2
00003EB3  878670FF          xchg ax,[bp-0x90]
00003EB7  0BC0              or ax,ax
00003EB9  7CD2              jl 0x3e8d
00003EBB  D1E0              shl ax,1
00003EBD  8BD0              mov dx,ax
00003EBF  D1E0              shl ax,1
00003EC1  D1E0              shl ax,1
00003EC3  03C2              add ax,dx
00003EC5  018670FF          add [bp-0x90],ax
00003EC9  E9FBFE            jmp word 0x3dc7
00003ECC  80FD04            cmp ch,0x4
00003ECF  75A5              jnz 0x3e76
00003ED1  878672FF          xchg ax,[bp-0x8e]
00003ED5  0BC0              or ax,ax
00003ED7  7CB4              jl 0x3e8d
00003ED9  D1E0              shl ax,1
00003EDB  8BD0              mov dx,ax
00003EDD  D1E0              shl ax,1
00003EDF  D1E0              shl ax,1
00003EE1  03C2              add ax,dx
00003EE3  018672FF          add [bp-0x8e],ax
00003EE7  E9DDFE            jmp word 0x3dc7
00003EEA  838E6AFF10        or word [bp-0x96],byte +0x10
00003EEF  B505              mov ch,0x5
00003EF1  E9D3FE            jmp word 0x3dc7
00003EF4  818E6AFF0001      or word [bp-0x96],0x100
00003EFA  83A66AFFEF        and word [bp-0x96],byte -0x11
00003EFF  B505              mov ch,0x5
00003F01  E9C3FE            jmp word 0x3dc7
00003F04  83A66AFFEF        and word [bp-0x96],byte -0x11
00003F09  818E6AFF8000      or word [bp-0x96],0x80
00003F0F  B505              mov ch,0x5
00003F11  E9B3FE            jmp word 0x3dc7
00003F14  B708              mov bh,0x8
00003F16  EB0A              jmp short 0x3f22
00003F18  B70A              mov bh,0xa
00003F1A  EB0B              jmp short 0x3f27
00003F1C  B710              mov bh,0x10
00003F1E  B3E9              mov bl,0xe9
00003F20  02DA              add bl,dl
00003F22  C68675FF00        mov byte [bp-0x8b],0x0
00003F27  C6866FFF00        mov byte [bp-0x91],0x0
00003F2C  88966EFF          mov [bp-0x92],dl
00003F30  8B7E04            mov di,[bp+0x4]
00003F33  8B05              mov ax,[di]
00003F35  33D2              xor dx,dx
00003F37  EB11              jmp short 0x3f4a
00003F39  B70A              mov bh,0xa
00003F3B  C6866FFF01        mov byte [bp-0x91],0x1
00003F40  88966EFF          mov [bp-0x92],dl
00003F44  8B7E04            mov di,[bp+0x4]
00003F47  8B05              mov ax,[di]
00003F49  99                cwd
00003F4A  47                inc di
00003F4B  47                inc di
00003F4C  897606            mov [bp+0x6],si
00003F4F  F7866AFF1000      test word [bp-0x96],0x10
00003F55  7404              jz 0x3f5b
00003F57  8B15              mov dx,[di]
00003F59  47                inc di
00003F5A  47                inc di
00003F5B  897E04            mov [bp+0x4],di
00003F5E  8DBE7BFF          lea di,[bp-0x85]
00003F62  0BC0              or ax,ax
00003F64  7533              jnz 0x3f99
00003F66  0BD2              or dx,dx
00003F68  752F              jnz 0x3f99
00003F6A  83BE72FF00        cmp word [bp-0x8e],byte +0x0
00003F6F  752D              jnz 0x3f9e
00003F71  8BBE6CFF          mov di,[bp-0x94]
00003F75  8B8E70FF          mov cx,[bp-0x90]
00003F79  E31B              jcxz 0x3f96
00003F7B  83F9FF            cmp cx,byte -0x1
00003F7E  7416              jz 0x3f96
00003F80  8B866AFF          mov ax,[bp-0x96]
00003F84  250800            and ax,0x8
00003F87  7404              jz 0x3f8d
00003F89  B230              mov dl,0x30
00003F8B  EB02              jmp short 0x3f8f
00003F8D  B220              mov dl,0x20
00003F8F  8AC2              mov al,dl
00003F91  E8B6FD            call word 0x3d4a
00003F94  E2F9              loop 0x3f8f
00003F96  E9E9FD            jmp word 0x3d82
00003F99  838E6AFF04        or word [bp-0x96],byte +0x4
00003F9E  52                push dx
00003F9F  50                push ax
00003FA0  57                push di
00003FA1  8AC7              mov al,bh
00003FA3  98                cbw
00003FA4  50                push ax
00003FA5  8A866FFF          mov al,[bp-0x91]
00003FA9  50                push ax
00003FAA  53                push bx
00003FAB  E847F7            call word 0x36f5
00003FAE  16                push ss
00003FAF  07                pop es
00003FB0  8B9672FF          mov dx,[bp-0x8e]
00003FB4  0BD2              or dx,dx
00003FB6  7F03              jg 0x3fbb
00003FB8  E91401            jmp word 0x40cf
00003FBB  E92101            jmp word 0x40df
00003FBE  88966EFF          mov [bp-0x92],dl
00003FC2  897606            mov [bp+0x6],si
00003FC5  8DBE7AFF          lea di,[bp-0x86]
00003FC9  8B5E04            mov bx,[bp+0x4]
00003FCC  FF37              push word [bx]
00003FCE  43                inc bx
00003FCF  43                inc bx
00003FD0  895E04            mov [bp+0x4],bx
00003FD3  F7866AFF2000      test word [bp-0x96],0x20
00003FD9  740F              jz 0x3fea
00003FDB  FF37              push word [bx]
00003FDD  43                inc bx
00003FDE  43                inc bx
00003FDF  895E04            mov [bp+0x4],bx
00003FE2  16                push ss
00003FE3  07                pop es
00003FE4  E817FD            call word 0x3cfe
00003FE7  B03A              mov al,0x3a
00003FE9  AA                stosb
00003FEA  16                push ss
00003FEB  07                pop es
00003FEC  E80FFD            call word 0x3cfe
00003FEF  C60500            mov byte [di],0x0
00003FF2  C6866FFF00        mov byte [bp-0x91],0x0
00003FF7  83A66AFFFB        and word [bp-0x96],byte -0x5
00003FFC  8D8E7AFF          lea cx,[bp-0x86]
00004000  2BF9              sub di,cx
00004002  87CF              xchg cx,di
00004004  8B9672FF          mov dx,[bp-0x8e]
00004008  3BD1              cmp dx,cx
0000400A  7F02              jg 0x400e
0000400C  8BD1              mov dx,cx
0000400E  E9BE00            jmp word 0x40cf
00004011  897606            mov [bp+0x6],si
00004014  88966EFF          mov [bp-0x92],dl
00004018  8B7E04            mov di,[bp+0x4]
0000401B  8B05              mov ax,[di]
0000401D  83460402          add word [bp+0x4],byte +0x2
00004021  16                push ss
00004022  07                pop es
00004023  8DBE7BFF          lea di,[bp-0x85]
00004027  32E4              xor ah,ah
00004029  8905              mov [di],ax
0000402B  B90100            mov cx,0x1
0000402E  E9D800            jmp word 0x4109
00004031  897606            mov [bp+0x6],si
00004034  88966EFF          mov [bp-0x92],dl
00004038  8B7E04            mov di,[bp+0x4]
0000403B  F7866AFF2000      test word [bp-0x96],0x20
00004041  750C              jnz 0x404f
00004043  8B3D              mov di,[di]
00004045  83460402          add word [bp+0x4],byte +0x2
00004049  1E                push ds
0000404A  07                pop es
0000404B  0BFF              or di,di
0000404D  EB0A              jmp short 0x4059
0000404F  C43D              les di,[di]
00004051  83460404          add word [bp+0x4],byte +0x4
00004055  8CC0              mov ax,es
00004057  0BC7              or ax,di
00004059  7505              jnz 0x4060
0000405B  1E                push ds
0000405C  07                pop es
0000405D  BF2E68            mov di,0x682e
00004060  E8DAFC            call word 0x3d3d
00004063  3B8E72FF          cmp cx,[bp-0x8e]
00004067  7604              jna 0x406d
00004069  8B8E72FF          mov cx,[bp-0x8e]
0000406D  E99900            jmp word 0x4109
00004070  897606            mov [bp+0x6],si
00004073  88966EFF          mov [bp-0x92],dl
00004077  8B7E04            mov di,[bp+0x4]
0000407A  8B8E72FF          mov cx,[bp-0x8e]
0000407E  0BC9              or cx,cx
00004080  7D03              jnl 0x4085
00004082  B90600            mov cx,0x6
00004085  57                push di
00004086  51                push cx
00004087  8D9E7BFF          lea bx,[bp-0x85]
0000408B  53                push bx
0000408C  52                push dx
0000408D  B80100            mov ax,0x1
00004090  23866AFF          and ax,[bp-0x96]
00004094  50                push ax
00004095  8B866AFF          mov ax,[bp-0x96]
00004099  A98000            test ax,0x80
0000409C  740A              jz 0x40a8
0000409E  B80200            mov ax,0x2
000040A1  C746FE0400        mov word [bp-0x2],0x4
000040A6  EB17              jmp short 0x40bf
000040A8  A90001            test ax,0x100
000040AB  740A              jz 0x40b7
000040AD  B80800            mov ax,0x8
000040B0  C746FE0A00        mov word [bp-0x2],0xa
000040B5  EB08              jmp short 0x40bf
000040B7  C746FE0800        mov word [bp-0x2],0x8
000040BC  B80600            mov ax,0x6
000040BF  50                push ax
000040C0  E837FC            call word 0x3cfa
000040C3  8B46FE            mov ax,[bp-0x2]
000040C6  014604            add [bp+0x4],ax
000040C9  16                push ss
000040CA  07                pop es
000040CB  8DBE7BFF          lea di,[bp-0x85]
000040CF  F7866AFF0800      test word [bp-0x96],0x8
000040D5  7413              jz 0x40ea
000040D7  8B9670FF          mov dx,[bp-0x90]
000040DB  0BD2              or dx,dx
000040DD  7E0B              jng 0x40ea
000040DF  E85BFC            call word 0x3d3d
000040E2  2BD1              sub dx,cx
000040E4  7E04              jng 0x40ea
000040E6  899676FF          mov [bp-0x8a],dx
000040EA  8A8675FF          mov al,[bp-0x8b]
000040EE  0AC0              or al,al
000040F0  7414              jz 0x4106
000040F2  26803D2D          cmp byte [es:di],0x2d
000040F6  740E              jz 0x4106
000040F8  83AE76FF01        sub word [bp-0x8a],byte +0x1
000040FD  839676FF00        adc word [bp-0x8a],byte +0x0
00004102  4F                dec di
00004103  268805            mov [es:di],al
00004106  E834FC            call word 0x3d3d
00004109  8BF7              mov si,di
0000410B  8BBE6CFF          mov di,[bp-0x94]
0000410F  8B9E70FF          mov bx,[bp-0x90]
00004113  B80500            mov ax,0x5
00004116  23866AFF          and ax,[bp-0x96]
0000411A  3D0500            cmp ax,0x5
0000411D  7516              jnz 0x4135
0000411F  8AA66EFF          mov ah,[bp-0x92]
00004123  80FC6F            cmp ah,0x6f
00004126  7510              jnz 0x4138
00004128  83BE76FF00        cmp word [bp-0x8a],byte +0x0
0000412D  7F06              jg 0x4135
0000412F  C78676FF0100      mov word [bp-0x8a],0x1
00004135  EB1F              jmp short 0x4156
00004137  90                nop
00004138  80FC78            cmp ah,0x78
0000413B  7405              jz 0x4142
0000413D  80FC58            cmp ah,0x58
00004140  7514              jnz 0x4156
00004142  838E6AFF40        or word [bp-0x96],byte +0x40
00004147  4B                dec bx
00004148  4B                dec bx
00004149  83AE76FF02        sub word [bp-0x8a],byte +0x2
0000414E  7D06              jnl 0x4156
00004150  C78676FF0000      mov word [bp-0x8a],0x0
00004156  038E76FF          add cx,[bp-0x8a]
0000415A  F7866AFF0200      test word [bp-0x96],0x2
00004160  750C              jnz 0x416e
00004162  EB06              jmp short 0x416a
00004164  B020              mov al,0x20
00004166  E8E1FB            call word 0x3d4a
00004169  4B                dec bx
0000416A  3BD9              cmp bx,cx
0000416C  7FF6              jg 0x4164
0000416E  F7866AFF4000      test word [bp-0x96],0x40
00004174  740C              jz 0x4182
00004176  B030              mov al,0x30
00004178  E8CFFB            call word 0x3d4a
0000417B  8A866EFF          mov al,[bp-0x92]
0000417F  E8C8FB            call word 0x3d4a
00004182  8B9676FF          mov dx,[bp-0x8a]
00004186  0BD2              or dx,dx
00004188  7E27              jng 0x41b1
0000418A  2BCA              sub cx,dx
0000418C  2BDA              sub bx,dx
0000418E  268A04            mov al,[es:si]
00004191  3C2D              cmp al,0x2d
00004193  7408              jz 0x419d
00004195  3C20              cmp al,0x20
00004197  7404              jz 0x419d
00004199  3C2B              cmp al,0x2b
0000419B  7507              jnz 0x41a4
0000419D  26AC              es lodsb
0000419F  E8A8FB            call word 0x3d4a
000041A2  49                dec cx
000041A3  4B                dec bx
000041A4  87CA              xchg cx,dx
000041A6  E307              jcxz 0x41af
000041A8  B030              mov al,0x30
000041AA  E89DFB            call word 0x3d4a
000041AD  E2F9              loop 0x41a8
000041AF  87CA              xchg cx,dx
000041B1  E311              jcxz 0x41c4
000041B3  2BD9              sub bx,cx
000041B5  26AC              es lodsb
000041B7  8805              mov [di],al
000041B9  47                inc di
000041BA  FE4EAD            dec byte [bp-0x53]
000041BD  7F03              jg 0x41c2
000041BF  E890FB            call word 0x3d52
000041C2  E2F1              loop 0x41b5
000041C4  0BDB              or bx,bx
000041C6  7E09              jng 0x41d1
000041C8  8BCB              mov cx,bx
000041CA  B020              mov al,0x20
000041CC  E87BFB            call word 0x3d4a
000041CF  E2F9              loop 0x41ca
000041D1  E9AEFB            jmp word 0x3d82
000041D4  897606            mov [bp+0x6],si
000041D7  8B7E04            mov di,[bp+0x4]
000041DA  F7866AFF2000      test word [bp-0x96],0x20
000041E0  750A              jnz 0x41ec
000041E2  8B3D              mov di,[di]
000041E4  83460402          add word [bp+0x4],byte +0x2
000041E8  1E                push ds
000041E9  07                pop es
000041EA  EB06              jmp short 0x41f2
000041EC  C43D              les di,[di]
000041EE  83460404          add word [bp+0x4],byte +0x4
000041F2  B85000            mov ax,0x50
000041F5  2A46AD            sub al,[bp-0x53]
000041F8  0346AA            add ax,[bp-0x56]
000041FB  268905            mov [es:di],ax
000041FE  E97DFB            jmp word 0x3d7e
00004201  8BB678FF          mov si,[bp-0x88]
00004205  8BBE6CFF          mov di,[bp-0x94]
00004209  B025              mov al,0x25
0000420B  E83CFB            call word 0x3d4a
0000420E  AC                lodsb
0000420F  0AC0              or al,al
00004211  75F8              jnz 0x420b
00004213  807EAD50          cmp byte [bp-0x53],0x50
00004217  7D03              jnl 0x421c
00004219  E836FB            call word 0x3d52
0000421C  07                pop es
0000421D  8B46AA            mov ax,[bp-0x56]
00004220  EB00              jmp short 0x4222
00004222  5F                pop di
00004223  5E                pop si
00004224  8BE5              mov sp,bp
00004226  5D                pop bp
00004227  C20800            ret 0x8
0000422A  55                push bp
0000422B  8BEC              mov bp,sp
0000422D  56                push si
0000422E  57                push di
0000422F  8B7604            mov si,[bp+0x4]
00004232  833EA29800        cmp word [0x98a2],byte +0x0
00004237  741C              jz 0x4255
00004239  8B1EA298          mov bx,[0x98a2]
0000423D  8B7F06            mov di,[bx+0x6]
00004240  8B1EA298          mov bx,[0x98a2]
00004244  897706            mov [bx+0x6],si
00004247  897504            mov [di+0x4],si
0000424A  897C06            mov [si+0x6],di
0000424D  A1A298            mov ax,[0x98a2]
00004250  894404            mov [si+0x4],ax
00004253  EB0A              jmp short 0x425f
00004255  8936A298          mov [0x98a2],si
00004259  897404            mov [si+0x4],si
0000425C  897406            mov [si+0x6],si
0000425F  5F                pop di
00004260  5E                pop si
00004261  5D                pop bp
00004262  C3                ret
00004263  55                push bp
00004264  8BEC              mov bp,sp
00004266  83EC02            sub sp,byte +0x2
00004269  56                push si
0000426A  57                push di
0000426B  8B7606            mov si,[bp+0x6]
0000426E  8B7E04            mov di,[bp+0x4]
00004271  8B04              mov ax,[si]
00004273  0105              add [di],ax
00004275  A1A098            mov ax,[0x98a0]
00004278  3BC6              cmp ax,si
0000427A  7506              jnz 0x4282
0000427C  893EA098          mov [0x98a0],di
00004280  EB0D              jmp short 0x428f
00004282  8B04              mov ax,[si]
00004284  03C6              add ax,si
00004286  8946FE            mov [bp-0x2],ax
00004289  8B5EFE            mov bx,[bp-0x2]
0000428C  897F02            mov [bx+0x2],di
0000428F  56                push si
00004290  E885E5            call word 0x2818
00004293  59                pop cx
00004294  5F                pop di
00004295  5E                pop si
00004296  8BE5              mov sp,bp
00004298  5D                pop bp
00004299  C3                ret
0000429A  56                push si
0000429B  A1A498            mov ax,[0x98a4]
0000429E  3B06A098          cmp ax,[0x98a0]
000042A2  7512              jnz 0x42b6
000042A4  FF36A498          push word [0x98a4]
000042A8  E812E7            call word 0x29bd
000042AB  59                pop cx
000042AC  33C0              xor ax,ax
000042AE  A3A098            mov [0x98a0],ax
000042B1  A3A498            mov [0x98a4],ax
000042B4  EB3B              jmp short 0x42f1
000042B6  8B1EA098          mov bx,[0x98a0]
000042BA  8B7702            mov si,[bx+0x2]
000042BD  F7040100          test word [si],0x1
000042C1  7522              jnz 0x42e5
000042C3  56                push si
000042C4  E851E5            call word 0x2818
000042C7  59                pop cx
000042C8  3B36A498          cmp si,[0x98a4]
000042CC  750A              jnz 0x42d8
000042CE  33C0              xor ax,ax
000042D0  A3A098            mov [0x98a0],ax
000042D3  A3A498            mov [0x98a4],ax
000042D6  EB06              jmp short 0x42de
000042D8  8B4402            mov ax,[si+0x2]
000042DB  A3A098            mov [0x98a0],ax
000042DE  56                push si
000042DF  E8DBE6            call word 0x29bd
000042E2  59                pop cx
000042E3  EB0C              jmp short 0x42f1
000042E5  FF36A098          push word [0x98a0]
000042E9  E8D1E6            call word 0x29bd
000042EC  59                pop cx
000042ED  8936A098          mov [0x98a0],si
000042F1  5E                pop si
000042F2  C3                ret
000042F3  55                push bp
000042F4  8BEC              mov bp,sp
000042F6  83EC02            sub sp,byte +0x2
000042F9  56                push si
000042FA  57                push di
000042FB  8B7604            mov si,[bp+0x4]
000042FE  FF0C              dec word [si]
00004300  8B04              mov ax,[si]
00004302  03C6              add ax,si
00004304  8946FE            mov [bp-0x2],ax
00004307  8B7C02            mov di,[si+0x2]
0000430A  F7050100          test word [di],0x1
0000430E  7514              jnz 0x4324
00004310  3B36A498          cmp si,[0x98a4]
00004314  740E              jz 0x4324
00004316  8B04              mov ax,[si]
00004318  0105              add [di],ax
0000431A  8B5EFE            mov bx,[bp-0x2]
0000431D  897F02            mov [bx+0x2],di
00004320  8BF7              mov si,di
00004322  EB05              jmp short 0x4329
00004324  56                push si
00004325  E802FF            call word 0x422a
00004328  59                pop cx
00004329  8B5EFE            mov bx,[bp-0x2]
0000432C  F7070100          test word [bx],0x1
00004330  7509              jnz 0x433b
00004332  FF76FE            push word [bp-0x2]
00004335  56                push si
00004336  E82AFF            call word 0x4263
00004339  59                pop cx
0000433A  59                pop cx
0000433B  5F                pop di
0000433C  5E                pop si
0000433D  8BE5              mov sp,bp
0000433F  5D                pop bp
00004340  C3                ret
00004341  55                push bp
00004342  8BEC              mov bp,sp
00004344  56                push si
00004345  8B7604            mov si,[bp+0x4]
00004348  0BF6              or si,si
0000434A  7502              jnz 0x434e
0000434C  EB17              jmp short 0x4365
0000434E  8BC6              mov ax,si
00004350  05FCFF            add ax,0xfffc
00004353  8BF0              mov si,ax
00004355  3B36A098          cmp si,[0x98a0]
00004359  7505              jnz 0x4360
0000435B  E83CFF            call word 0x429a
0000435E  EB05              jmp short 0x4365
00004360  56                push si
00004361  E88FFF            call word 0x42f3
00004364  59                pop cx
00004365  5E                pop si
00004366  5D                pop bp
00004367  C3                ret
00004368  55                push bp
00004369  8BEC              mov bp,sp
0000436B  B8403C            mov ax,0x3c40
0000436E  50                push ax
0000436F  FF7604            push word [bp+0x4]
00004372  FF7606            push word [bp+0x6]
00004375  8D4608            lea ax,[bp+0x8]
00004378  50                push ax
00004379  E8ADF9            call word 0x3d29
0000437C  EB00              jmp short 0x437e
0000437E  5D                pop bp
0000437F  C3                ret
00004380  55                push bp
00004381  8BEC              mov bp,sp
00004383  8D4608            lea ax,[bp+0x8]
00004386  50                push ax
00004387  FF7606            push word [bp+0x6]
0000438A  FF7604            push word [bp+0x4]
0000438D  B8145E            mov ax,0x5e14
00004390  50                push ax
00004391  B8602F            mov ax,0x2f60
00004394  50                push ax
00004395  E83703            call word 0x46cf
00004398  8BE5              mov sp,bp
0000439A  EB00              jmp short 0x439c
0000439C  5D                pop bp
0000439D  C3                ret
0000439E  55                push bp
0000439F  8BEC              mov bp,sp
000043A1  EB17              jmp short 0x43ba
000043A3  C45E06            les bx,[bp+0x6]
000043A6  FF4606            inc word [bp+0x6]
000043A9  268A07            mov al,[es:bx]
000043AC  8B5E04            mov bx,[bp+0x4]
000043AF  FF4604            inc word [bp+0x4]
000043B2  3A07              cmp al,[bx]
000043B4  7404              jz 0x43ba
000043B6  33C0              xor ax,ax
000043B8  EB0D              jmp short 0x43c7
000043BA  8B5E04            mov bx,[bp+0x4]
000043BD  803F00            cmp byte [bx],0x0
000043C0  75E1              jnz 0x43a3
000043C2  B80100            mov ax,0x1
000043C5  EB00              jmp short 0x43c7
000043C7  5D                pop bp
000043C8  C20600            ret 0x6
000043CB  B83011            mov ax,0x1130
000043CE  B700              mov bh,0x0
000043D0  B2FF              mov dl,0xff
000043D2  E80900            call word 0x43de
000043D5  8AC2              mov al,dl
000043D7  FEC0              inc al
000043D9  B400              mov ah,0x0
000043DB  EB00              jmp short 0x43dd
000043DD  C3                ret
000043DE  56                push si
000043DF  57                push di
000043E0  892EB698          mov [0x98b6],bp
000043E4  CD10              int 0x10
000043E6  8B2EB698          mov bp,[0x98b6]
000043EA  5F                pop di
000043EB  5E                pop si
000043EC  C3                ret
000043ED  B40F              mov ah,0xf
000043EF  E8ECFF            call word 0x43de
000043F2  50                push ax
000043F3  E81400            call word 0x440a
000043F6  59                pop cx
000043F7  B408              mov ah,0x8
000043F9  B700              mov bh,0x0
000043FB  E8E0FF            call word 0x43de
000043FE  80E47F            and ah,0x7f
00004401  8826AB68          mov [0x68ab],ah
00004405  8826AA68          mov [0x68aa],ah
00004409  C3                ret
0000440A  55                push bp
0000440B  8BEC              mov bp,sp
0000440D  8A4604            mov al,[bp+0x4]
00004410  3C03              cmp al,0x3
00004412  7606              jna 0x441a
00004414  3C07              cmp al,0x7
00004416  7402              jz 0x441a
00004418  B003              mov al,0x3
0000441A  A2AC68            mov [0x68ac],al
0000441D  B40F              mov ah,0xf
0000441F  E8BCFF            call word 0x43de
00004422  3A06AC68          cmp al,[0x68ac]
00004426  7410              jz 0x4438
00004428  A0AC68            mov al,[0x68ac]
0000442B  B400              mov ah,0x0
0000442D  E8AEFF            call word 0x43de
00004430  B40F              mov ah,0xf
00004432  E8A9FF            call word 0x43de
00004435  A2AC68            mov [0x68ac],al
00004438  8826AE68          mov [0x68ae],ah
0000443C  803EAC6803        cmp byte [0x68ac],0x3
00004441  760C              jna 0x444f
00004443  803EAC6807        cmp byte [0x68ac],0x7
00004448  7405              jz 0x444f
0000444A  B80100            mov ax,0x1
0000444D  EB02              jmp short 0x4451
0000444F  33C0              xor ax,ax
00004451  A2AF68            mov [0x68af],al
00004454  C606AD6819        mov byte [0x68ad],0x19
00004459  803EAC6807        cmp byte [0x68ac],0x7
0000445E  741F              jz 0x447f
00004460  BA00F0            mov dx,0xf000
00004463  B8EAFF            mov ax,0xffea
00004466  52                push dx
00004467  50                push ax
00004468  B8B768            mov ax,0x68b7
0000446B  50                push ax
0000446C  E82FFF            call word 0x439e
0000446F  0BC0              or ax,ax
00004471  750C              jnz 0x447f
00004473  E855FF            call word 0x43cb
00004476  0BC0              or ax,ax
00004478  7505              jnz 0x447f
0000447A  B80100            mov ax,0x1
0000447D  EB02              jmp short 0x4481
0000447F  33C0              xor ax,ax
00004481  A2B068            mov [0x68b0],al
00004484  803EAC6807        cmp byte [0x68ac],0x7
00004489  7505              jnz 0x4490
0000448B  B800B0            mov ax,0xb000
0000448E  EB03              jmp short 0x4493
00004490  B800B8            mov ax,0xb800
00004493  A3B368            mov [0x68b3],ax
00004496  C706B1680000      mov word [0x68b1],0x0
0000449C  B000              mov al,0x0
0000449E  A2A768            mov [0x68a7],al
000044A1  A2A668            mov [0x68a6],al
000044A4  A0AE68            mov al,[0x68ae]
000044A7  04FF              add al,0xff
000044A9  A2A868            mov [0x68a8],al
000044AC  C606A96818        mov byte [0x68a9],0x18
000044B1  5D                pop bp
000044B2  C3                ret
000044B3  C3                ret
000044B4  B006              mov al,0x6
000044B6  50                push ax
000044B7  FF36A668          push word [0x68a6]
000044BB  FF36A768          push word [0x68a7]
000044BF  FF36A868          push word [0x68a8]
000044C3  FF36A968          push word [0x68a9]
000044C7  B000              mov al,0x0
000044C9  50                push ax
000044CA  E84F0F            call word 0x541c
000044CD  8A16A668          mov dl,[0x68a6]
000044D1  8A36A768          mov dh,[0x68a7]
000044D5  B402              mov ah,0x2
000044D7  B700              mov bh,0x0
000044D9  E802FF            call word 0x43de
000044DC  C3                ret
000044DD  55                push bp
000044DE  8BEC              mov bp,sp
000044E0  A0AA68            mov al,[0x68aa]
000044E3  2470              and al,0x70
000044E5  8A5604            mov dl,[bp+0x4]
000044E8  80E28F            and dl,0x8f
000044EB  0AC2              or al,dl
000044ED  A2AA68            mov [0x68aa],al
000044F0  5D                pop bp
000044F1  C3                ret
000044F2  55                push bp
000044F3  8BEC              mov bp,sp
000044F5  A0AA68            mov al,[0x68aa]
000044F8  248F              and al,0x8f
000044FA  8A5604            mov dl,[bp+0x4]
000044FD  B104              mov cl,0x4
000044FF  D2E2              shl dl,cl
00004501  80E27F            and dl,0x7f
00004504  0AC2              or al,dl
00004506  A2AA68            mov [0x68aa],al
00004509  5D                pop bp
0000450A  C3                ret
0000450B  55                push bp
0000450C  8BEC              mov bp,sp
0000450E  8A4604            mov al,[bp+0x4]
00004511  A2AA68            mov [0x68aa],al
00004514  5D                pop bp
00004515  C3                ret
00004516  800EAA6808        or byte [0x68aa],0x8
0000451B  C3                ret
0000451C  8026AA68F7        and byte [0x68aa],0xf7
00004521  C3                ret
00004522  A0AB68            mov al,[0x68ab]
00004525  A2AA68            mov [0x68aa],al
00004528  C3                ret
00004529  55                push bp
0000452A  8BEC              mov bp,sp
0000452C  83EC08            sub sp,byte +0x8
0000452F  C646FD00          mov byte [bp-0x3],0x0
00004533  E8C919            call word 0x5eff
00004536  B400              mov ah,0x0
00004538  8946F8            mov [bp-0x8],ax
0000453B  E8C119            call word 0x5eff
0000453E  B108              mov cl,0x8
00004540  D3E8              shr ax,cl
00004542  B400              mov ah,0x0
00004544  8946FA            mov [bp-0x6],ax
00004547  E9EC00            jmp word 0x4636
0000454A  8B5E08            mov bx,[bp+0x8]
0000454D  FF4608            inc word [bp+0x8]
00004550  8A07              mov al,[bx]
00004552  8846FD            mov [bp-0x3],al
00004555  B400              mov ah,0x0
00004557  2D0700            sub ax,0x7
0000455A  3D0600            cmp ax,0x6
0000455D  7744              ja 0x45a3
0000455F  8BD8              mov bx,ax
00004561  D1E3              shl bx,1
00004563  2EFFA76845        jmp word [cs:bx+0x4568]
00004568  7645              jna 0x45af
0000456A  8545A3            test [di-0x5d],ax
0000456D  45                inc bp
0000456E  9E                sahf
0000456F  45                inc bp
00004570  A345A3            mov [0xa345],ax
00004573  45                inc bp
00004574  94                xchg ax,sp
00004575  45                inc bp
00004576  B40E              mov ah,0xe
00004578  B007              mov al,0x7
0000457A  E861FE            call word 0x43de
0000457D  8A46FD            mov al,[bp-0x3]
00004580  B400              mov ah,0x0
00004582  E9D200            jmp word 0x4657
00004585  A0A668            mov al,[0x68a6]
00004588  B400              mov ah,0x0
0000458A  3B46F8            cmp ax,[bp-0x8]
0000458D  7D03              jnl 0x4592
0000458F  FF4EF8            dec word [bp-0x8]
00004592  EB67              jmp short 0x45fb
00004594  A0A668            mov al,[0x68a6]
00004597  B400              mov ah,0x0
00004599  8946F8            mov [bp-0x8],ax
0000459C  EB5D              jmp short 0x45fb
0000459E  FF46FA            inc word [bp-0x6]
000045A1  EB58              jmp short 0x45fb
000045A3  803EAF6800        cmp byte [0x68af],0x0
000045A8  752E              jnz 0x45d8
000045AA  833EB56800        cmp word [0x68b5],byte +0x0
000045AF  7427              jz 0x45d8
000045B1  8A26AA68          mov ah,[0x68aa]
000045B5  8A46FD            mov al,[bp-0x3]
000045B8  8946FE            mov [bp-0x2],ax
000045BB  8B46F8            mov ax,[bp-0x8]
000045BE  40                inc ax
000045BF  50                push ax
000045C0  8B46FA            mov ax,[bp-0x6]
000045C3  40                inc ax
000045C4  50                push ax
000045C5  E89618            call word 0x5e5e
000045C8  52                push dx
000045C9  50                push ax
000045CA  16                push ss
000045CB  8D46FE            lea ax,[bp-0x2]
000045CE  50                push ax
000045CF  B80100            mov ax,0x1
000045D2  50                push ax
000045D3  E8AD18            call word 0x5e83
000045D6  EB1E              jmp short 0x45f6
000045D8  8A56F8            mov dl,[bp-0x8]
000045DB  8A76FA            mov dh,[bp-0x6]
000045DE  B402              mov ah,0x2
000045E0  B700              mov bh,0x0
000045E2  E8F9FD            call word 0x43de
000045E5  8A1EAA68          mov bl,[0x68aa]
000045E9  8A46FD            mov al,[bp-0x3]
000045EC  B409              mov ah,0x9
000045EE  B700              mov bh,0x0
000045F0  B90100            mov cx,0x1
000045F3  E8E8FD            call word 0x43de
000045F6  FF46F8            inc word [bp-0x8]
000045F9  EB00              jmp short 0x45fb
000045FB  A0A868            mov al,[0x68a8]
000045FE  B400              mov ah,0x0
00004600  3B46F8            cmp ax,[bp-0x8]
00004603  7D0B              jnl 0x4610
00004605  A0A668            mov al,[0x68a6]
00004608  B400              mov ah,0x0
0000460A  8946F8            mov [bp-0x8],ax
0000460D  FF46FA            inc word [bp-0x6]
00004610  A0A968            mov al,[0x68a9]
00004613  B400              mov ah,0x0
00004615  3B46FA            cmp ax,[bp-0x6]
00004618  7D1C              jnl 0x4636
0000461A  B006              mov al,0x6
0000461C  50                push ax
0000461D  FF36A668          push word [0x68a6]
00004621  FF36A768          push word [0x68a7]
00004625  FF36A868          push word [0x68a8]
00004629  FF36A968          push word [0x68a9]
0000462D  B001              mov al,0x1
0000462F  50                push ax
00004630  E8E90D            call word 0x541c
00004633  FF4EFA            dec word [bp-0x6]
00004636  8B4606            mov ax,[bp+0x6]
00004639  FF4E06            dec word [bp+0x6]
0000463C  0BC0              or ax,ax
0000463E  7403              jz 0x4643
00004640  E907FF            jmp word 0x454a
00004643  8A56F8            mov dl,[bp-0x8]
00004646  8A76FA            mov dh,[bp-0x6]
00004649  B402              mov ah,0x2
0000464B  B700              mov bh,0x0
0000464D  E88EFD            call word 0x43de
00004650  8A46FD            mov al,[bp-0x3]
00004653  B400              mov ah,0x0
00004655  EB00              jmp short 0x4657
00004657  8BE5              mov sp,bp
00004659  5D                pop bp
0000465A  C20600            ret 0x6
0000465D  55                push bp
0000465E  8BEC              mov bp,sp
00004660  B82945            mov ax,0x4529
00004663  50                push ax
00004664  33C0              xor ax,ax
00004666  50                push ax
00004667  FF7604            push word [bp+0x4]
0000466A  8D4606            lea ax,[bp+0x6]
0000466D  50                push ax
0000466E  E8B8F6            call word 0x3d29
00004671  EB00              jmp short 0x4673
00004673  5D                pop bp
00004674  C3                ret
00004675  803EBE6800        cmp byte [0x68be],0x0
0000467A  740A              jz 0x4686
0000467C  C606BE6800        mov byte [0x68be],0x0
00004681  A0BF68            mov al,[0x68bf]
00004684  EB05              jmp short 0x468b
00004686  B80007            mov ax,0x700
00004689  CD21              int 0x21
0000468B  B400              mov ah,0x0
0000468D  EB00              jmp short 0x468f
0000468F  C3                ret
00004690  56                push si
00004691  803EBE6800        cmp byte [0x68be],0x0
00004696  7407              jz 0x469f
00004698  E8DAFF            call word 0x4675
0000469B  8BF0              mov si,ax
0000469D  EB0C              jmp short 0x46ab
0000469F  E8D3FF            call word 0x4675
000046A2  8BF0              mov si,ax
000046A4  8BC6              mov ax,si
000046A6  50                push ax
000046A7  E8650B            call word 0x520f
000046AA  59                pop cx
000046AB  8BC6              mov ax,si
000046AD  EB00              jmp short 0x46af
000046AF  5E                pop si
000046B0  C3                ret
000046B1  55                push bp
000046B2  8BEC              mov bp,sp
000046B4  803EBE6800        cmp byte [0x68be],0x0
000046B9  7405              jz 0x46c0
000046BB  B8FFFF            mov ax,0xffff
000046BE  EB0D              jmp short 0x46cd
000046C0  C606BE6801        mov byte [0x68be],0x1
000046C5  8B4604            mov ax,[bp+0x4]
000046C8  A2BF68            mov [0x68bf],al
000046CB  EB00              jmp short 0x46cd
000046CD  5D                pop bp
000046CE  C3                ret
000046CF  55                push bp
000046D0  8BEC              mov bp,sp
000046D2  83EC2A            sub sp,byte +0x2a
000046D5  56                push si
000046D6  57                push di
000046D7  C746D80000        mov word [bp-0x28],0x0
000046DC  C746DA0000        mov word [bp-0x26],0x0
000046E1  EB1A              jmp short 0x46fd
000046E3  90                nop
000046E4  8B7E0C            mov di,[bp+0xc]
000046E7  F646D720          test byte [bp-0x29],0x20
000046EB  7407              jz 0x46f4
000046ED  C43D              les di,[di]
000046EF  83460C04          add word [bp+0xc],byte +0x4
000046F3  C3                ret
000046F4  8B3D              mov di,[di]
000046F6  1E                push ds
000046F7  07                pop es
000046F8  83460C02          add word [bp+0xc],byte +0x2
000046FC  C3                ret
000046FD  06                push es
000046FE  FC                cld
000046FF  8B760A            mov si,[bp+0xa]
00004702  AC                lodsb
00004703  0AC0              or al,al
00004705  745D              jz 0x4764
00004707  3C25              cmp al,0x25
00004709  745C              jz 0x4767
0000470B  98                cbw
0000470C  97                xchg ax,di
0000470D  FF46DA            inc word [bp-0x26]
00004710  FF7608            push word [bp+0x8]
00004713  FF5604            call word [bp+0x4]
00004716  59                pop cx
00004717  0BC0              or ax,ax
00004719  7C25              jl 0x4740
0000471B  0BFF              or di,di
0000471D  7832              js 0x4751
0000471F  80BDC06801        cmp byte [di+0x68c0],0x1
00004724  752B              jnz 0x4751
00004726  93                xchg ax,bx
00004727  0ADB              or bl,bl
00004729  7818              js 0x4743
0000472B  80BFC06801        cmp byte [bx+0x68c0],0x1
00004730  7511              jnz 0x4743
00004732  FF46DA            inc word [bp-0x26]
00004735  FF7608            push word [bp+0x8]
00004738  FF5604            call word [bp+0x4]
0000473B  59                pop cx
0000473C  0BC0              or ax,ax
0000473E  7FE6              jg 0x4726
00004740  E97E03            jmp word 0x4ac1
00004743  FF7608            push word [bp+0x8]
00004746  53                push bx
00004747  FF5606            call word [bp+0x6]
0000474A  59                pop cx
0000474B  59                pop cx
0000474C  FF4EDA            dec word [bp-0x26]
0000474F  EBB1              jmp short 0x4702
00004751  3BC7              cmp ax,di
00004753  74AD              jz 0x4702
00004755  FF7608            push word [bp+0x8]
00004758  50                push ax
00004759  FF5606            call word [bp+0x6]
0000475C  59                pop cx
0000475D  59                pop cx
0000475E  FF4EDA            dec word [bp-0x26]
00004761  E97103            jmp word 0x4ad5
00004764  E96E03            jmp word 0x4ad5
00004767  C746DEFFFF        mov word [bp-0x22],0xffff
0000476C  C646D700          mov byte [bp-0x29],0x0
00004770  AC                lodsb
00004771  98                cbw
00004772  89760A            mov [bp+0xa],si
00004775  97                xchg ax,di
00004776  0BFF              or di,di
00004778  7C48              jl 0x47c2
0000477A  8A9DC068          mov bl,[di+0x68c0]
0000477E  32FF              xor bh,bh
00004780  8BC3              mov ax,bx
00004782  3D1500            cmp ax,0x15
00004785  7603              jna 0x478a
00004787  E93703            jmp word 0x4ac1
0000478A  8BD8              mov bx,ax
0000478C  D1E3              shl bx,1
0000478E  2EFFA79347        jmp word [cs:bx+0x4793]
00004793  C247C2            ret 0xc247
00004796  47                inc di
00004797  C247BF            ret 0xbf47
0000479A  47                inc di
0000479B  C547CB            lds ax,[bx-0x35]
0000479E  47                inc di
0000479F  9E                sahf
000047A0  49                dec cx
000047A1  134813            adc cx,[bx+si+0x13]
000047A4  48                dec ax
000047A5  1D48DE            sbb ax,0xde48
000047A8  48                dec ax
000047A9  DF47EB            fild word [bx-0x15]
000047AC  47                inc di
000047AD  E547              in ax,0x47
000047AF  0E                push cs
000047B0  48                dec ax
000047B1  42                inc dx
000047B2  49                dec cx
000047B3  DC4900            fmul qword [bx+di+0x0]
000047B6  48                dec ax
000047B7  184871            sbb [bx+si+0x71],cl
000047BA  48                dec ax
000047BB  F247              repne inc di
000047BD  F9                stc
000047BE  47                inc di
000047BF  E949FF            jmp word 0x470b
000047C2  E91003            jmp word 0x4ad5
000047C5  804ED701          or byte [bp-0x29],0x1
000047C9  EBA5              jmp short 0x4770
000047CB  83EF30            sub di,byte +0x30
000047CE  877EDE            xchg di,[bp-0x22]
000047D1  0BFF              or di,di
000047D3  7C9B              jl 0x4770
000047D5  B80A00            mov ax,0xa
000047D8  F7E7              mul di
000047DA  0146DE            add [bp-0x22],ax
000047DD  EB91              jmp short 0x4770
000047DF  804ED708          or byte [bp-0x29],0x8
000047E3  EB8B              jmp short 0x4770
000047E5  804ED704          or byte [bp-0x29],0x4
000047E9  EB85              jmp short 0x4770
000047EB  804ED702          or byte [bp-0x29],0x2
000047EF  E97EFF            jmp word 0x4770
000047F2  8066D7DF          and byte [bp-0x29],0xdf
000047F6  E977FF            jmp word 0x4770
000047F9  804ED720          or byte [bp-0x29],0x20
000047FD  E970FF            jmp word 0x4770
00004800  8B46DA            mov ax,[bp-0x26]
00004803  2BD2              sub dx,dx
00004805  F646D701          test byte [bp-0x29],0x1
00004809  744F              jz 0x485a
0000480B  E962FF            jmp word 0x4770
0000480E  BE0800            mov si,0x8
00004811  EB0D              jmp short 0x4820
00004813  BE0A00            mov si,0xa
00004816  EB08              jmp short 0x4820
00004818  BE1000            mov si,0x10
0000481B  EB03              jmp short 0x4820
0000481D  BE0000            mov si,0x0
00004820  F7C72000          test di,0x20
00004824  7504              jnz 0x482a
00004826  804ED704          or byte [bp-0x29],0x4
0000482A  8D46DC            lea ax,[bp-0x24]
0000482D  50                push ax
0000482E  8D46DA            lea ax,[bp-0x26]
00004831  50                push ax
00004832  8B46DE            mov ax,[bp-0x22]
00004835  25FF7F            and ax,0x7fff
00004838  50                push ax
00004839  8BC6              mov ax,si
0000483B  50                push ax
0000483C  FF7608            push word [bp+0x8]
0000483F  FF7606            push word [bp+0x6]
00004842  FF7604            push word [bp+0x4]
00004845  E85A03            call word 0x4ba2
00004848  83C40E            add sp,byte +0xe
0000484B  837EDC00          cmp word [bp-0x24],byte +0x0
0000484F  7E18              jng 0x4869
00004851  F646D701          test byte [bp-0x29],0x1
00004855  750F              jnz 0x4866
00004857  FF46D8            inc word [bp-0x28]
0000485A  E887FE            call word 0x46e4
0000485D  AB                stosw
0000485E  F646D704          test byte [bp-0x29],0x4
00004862  7402              jz 0x4866
00004864  92                xchg ax,dx
00004865  AB                stosw
00004866  E996FE            jmp word 0x46ff
00004869  7C03              jl 0x486e
0000486B  E96702            jmp word 0x4ad5
0000486E  E95002            jmp word 0x4ac1
00004871  E80000            call word 0x4874
00004874  E96502            jmp word 0x4adc
00004877  FF7608            push word [bp+0x8]
0000487A  50                push ax
0000487B  FF5606            call word [bp+0x6]
0000487E  59                pop cx
0000487F  59                pop cx
00004880  FF4EDA            dec word [bp-0x26]
00004883  8166DEFF7F        and word [bp-0x22],0x7fff
00004888  E80000            call word 0x488b
0000488B  E97402            jmp word 0x4b02
0000488E  52                push dx
0000488F  3C3A              cmp al,0x3a
00004891  7415              jz 0x48a8
00004893  0BC0              or ax,ax
00004895  7E0C              jng 0x48a3
00004897  FF7608            push word [bp+0x8]
0000489A  50                push ax
0000489B  FF5606            call word [bp+0x6]
0000489E  59                pop cx
0000489F  59                pop cx
000048A0  FF4EDA            dec word [bp-0x26]
000048A3  5A                pop dx
000048A4  8CDB              mov bx,ds
000048A6  EB1B              jmp short 0x48c3
000048A8  E80000            call word 0x48ab
000048AB  E95402            jmp word 0x4b02
000048AE  5B                pop bx
000048AF  0BC0              or ax,ax
000048B1  7E10              jng 0x48c3
000048B3  52                push dx
000048B4  53                push bx
000048B5  FF7608            push word [bp+0x8]
000048B8  50                push ax
000048B9  FF5606            call word [bp+0x6]
000048BC  59                pop cx
000048BD  59                pop cx
000048BE  FF4EDA            dec word [bp-0x26]
000048C1  5B                pop bx
000048C2  5A                pop dx
000048C3  F646D701          test byte [bp-0x29],0x1
000048C7  750A              jnz 0x48d3
000048C9  E818FE            call word 0x46e4
000048CC  FF46D8            inc word [bp-0x28]
000048CF  92                xchg ax,dx
000048D0  AB                stosw
000048D1  93                xchg ax,bx
000048D2  AB                stosw
000048D3  E929FE            jmp word 0x46ff
000048D6  7C03              jl 0x48db
000048D8  E9FA01            jmp word 0x4ad5
000048DB  E9E301            jmp word 0x4ac1
000048DE  8D46DC            lea ax,[bp-0x24]
000048E1  50                push ax
000048E2  8D46DA            lea ax,[bp-0x26]
000048E5  50                push ax
000048E6  B8FF7F            mov ax,0x7fff
000048E9  2346DE            and ax,[bp-0x22]
000048EC  50                push ax
000048ED  FF7608            push word [bp+0x8]
000048F0  FF7606            push word [bp+0x6]
000048F3  FF7604            push word [bp+0x4]
000048F6  E86F02            call word 0x4b68
000048F9  83C40C            add sp,byte +0xc
000048FC  837EDC00          cmp word [bp-0x24],byte +0x0
00004900  7E38              jng 0x493a
00004902  F646D701          test byte [bp-0x29],0x1
00004906  7403              jz 0x490b
00004908  EB2A              jmp short 0x4934
0000490A  90                nop
0000490B  E8D6FD            call word 0x46e4
0000490E  FF46D8            inc word [bp-0x28]
00004911  F646D704          test byte [bp-0x29],0x4
00004915  7405              jz 0x491c
00004917  B80400            mov ax,0x4
0000491A  EB0D              jmp short 0x4929
0000491C  F646D708          test byte [bp-0x29],0x8
00004920  7405              jz 0x4927
00004922  B80800            mov ax,0x8
00004925  EB02              jmp short 0x4929
00004927  33C0              xor ax,ax
00004929  50                push ax
0000492A  57                push di
0000492B  E83E02            call word 0x4b6c
0000492E  83C404            add sp,byte +0x4
00004931  E9CBFD            jmp word 0x46ff
00004934  E83902            call word 0x4b70
00004937  E9C5FD            jmp word 0x46ff
0000493A  E83302            call word 0x4b70
0000493D  7C9C              jl 0x48db
0000493F  E99301            jmp word 0x4ad5
00004942  E80000            call word 0x4945
00004945  E99401            jmp word 0x4adc
00004948  F646D701          test byte [bp-0x29],0x1
0000494C  7506              jnz 0x4954
0000494E  E893FD            call word 0x46e4
00004951  FF46D8            inc word [bp-0x28]
00004954  8166DEFF7F        and word [bp-0x22],0x7fff
00004959  7429              jz 0x4984
0000495B  F646D701          test byte [bp-0x29],0x1
0000495F  7501              jnz 0x4962
00004961  AA                stosb
00004962  FF46DA            inc word [bp-0x26]
00004965  06                push es
00004966  FF7608            push word [bp+0x8]
00004969  FF5604            call word [bp+0x4]
0000496C  59                pop cx
0000496D  07                pop es
0000496E  0BC0              or ax,ax
00004970  7E12              jng 0x4984
00004972  0AC0              or al,al
00004974  7809              js 0x497f
00004976  93                xchg ax,bx
00004977  80BFC06801        cmp byte [bx+0x68c0],0x1
0000497C  93                xchg ax,bx
0000497D  7E05              jng 0x4984
0000497F  FF4EDE            dec word [bp-0x22]
00004982  7FD7              jg 0x495b
00004984  06                push es
00004985  FF7608            push word [bp+0x8]
00004988  50                push ax
00004989  FF5606            call word [bp+0x6]
0000498C  59                pop cx
0000498D  59                pop cx
0000498E  07                pop es
0000498F  FF4EDA            dec word [bp-0x26]
00004992  F646D701          test byte [bp-0x29],0x1
00004996  7503              jnz 0x499b
00004998  B000              mov al,0x0
0000499A  AA                stosb
0000499B  E961FD            jmp word 0x46ff
0000499E  F646D701          test byte [bp-0x29],0x1
000049A2  7503              jnz 0x49a7
000049A4  E83DFD            call word 0x46e4
000049A7  8B76DE            mov si,[bp-0x22]
000049AA  0BF6              or si,si
000049AC  7D03              jnl 0x49b1
000049AE  BE0100            mov si,0x1
000049B1  741A              jz 0x49cd
000049B3  FF46DA            inc word [bp-0x26]
000049B6  06                push es
000049B7  FF7608            push word [bp+0x8]
000049BA  FF5604            call word [bp+0x4]
000049BD  59                pop cx
000049BE  07                pop es
000049BF  F646D701          test byte [bp-0x29],0x1
000049C3  7501              jnz 0x49c6
000049C5  AA                stosb
000049C6  0BC0              or ax,ax
000049C8  7C0F              jl 0x49d9
000049CA  4E                dec si
000049CB  7FE6              jg 0x49b3
000049CD  F646D701          test byte [bp-0x29],0x1
000049D1  7503              jnz 0x49d6
000049D3  FF46D8            inc word [bp-0x28]
000049D6  E926FD            jmp word 0x46ff
000049D9  E9E500            jmp word 0x4ac1
000049DC  2BC0              sub ax,ax
000049DE  FC                cld
000049DF  16                push ss
000049E0  07                pop es
000049E1  8D7EE0            lea di,[bp-0x20]
000049E4  B91000            mov cx,0x10
000049E7  F3AB              rep stosw
000049E9  AC                lodsb
000049EA  8066D7EF          and byte [bp-0x29],0xef
000049EE  3C5E              cmp al,0x5e
000049F0  7505              jnz 0x49f7
000049F2  804ED710          or byte [bp-0x29],0x10
000049F6  AC                lodsb
000049F7  B400              mov ah,0x0
000049F9  8AD0              mov dl,al
000049FB  8BF8              mov di,ax
000049FD  B103              mov cl,0x3
000049FF  D3EF              shr di,cl
00004A01  B90701            mov cx,0x107
00004A04  22CA              and cl,dl
00004A06  D2E5              shl ch,cl
00004A08  086BE0            or [bp+di-0x20],ch
00004A0B  AC                lodsb
00004A0C  3C00              cmp al,0x0
00004A0E  7426              jz 0x4a36
00004A10  3C5D              cmp al,0x5d
00004A12  7425              jz 0x4a39
00004A14  3C2D              cmp al,0x2d
00004A16  75E1              jnz 0x49f9
00004A18  3A14              cmp dl,[si]
00004A1A  77DD              ja 0x49f9
00004A1C  803C5D            cmp byte [si],0x5d
00004A1F  74D8              jz 0x49f9
00004A21  AC                lodsb
00004A22  2AC2              sub al,dl
00004A24  74E5              jz 0x4a0b
00004A26  02D0              add dl,al
00004A28  D0C5              rol ch,1
00004A2A  83D700            adc di,byte +0x0
00004A2D  086BE0            or [bp+di-0x20],ch
00004A30  FEC8              dec al
00004A32  75F4              jnz 0x4a28
00004A34  EBD5              jmp short 0x4a0b
00004A36  E99C00            jmp word 0x4ad5
00004A39  89760A            mov [bp+0xa],si
00004A3C  8166DEFF7F        and word [bp-0x22],0x7fff
00004A41  8B76DE            mov si,[bp-0x22]
00004A44  F646D701          test byte [bp-0x29],0x1
00004A48  7503              jnz 0x4a4d
00004A4A  E897FC            call word 0x46e4
00004A4D  4E                dec si
00004A4E  7C50              jl 0x4aa0
00004A50  FF46DA            inc word [bp-0x26]
00004A53  06                push es
00004A54  FF7608            push word [bp+0x8]
00004A57  FF5604            call word [bp+0x4]
00004A5A  59                pop cx
00004A5B  07                pop es
00004A5C  0BC0              or ax,ax
00004A5E  7C4F              jl 0x4aaf
00004A60  96                xchg ax,si
00004A61  8BDE              mov bx,si
00004A63  B103              mov cl,0x3
00004A65  D3EE              shr si,cl
00004A67  B90701            mov cx,0x107
00004A6A  22CB              and cl,bl
00004A6C  D2E5              shl ch,cl
00004A6E  846AE0            test [bp+si-0x20],ch
00004A71  96                xchg ax,si
00004A72  93                xchg ax,bx
00004A73  7408              jz 0x4a7d
00004A75  F646D710          test byte [bp-0x29],0x10
00004A79  7408              jz 0x4a83
00004A7B  EB0F              jmp short 0x4a8c
00004A7D  F646D710          test byte [bp-0x29],0x10
00004A81  7409              jz 0x4a8c
00004A83  F646D701          test byte [bp-0x29],0x1
00004A87  75C4              jnz 0x4a4d
00004A89  AA                stosb
00004A8A  EBC1              jmp short 0x4a4d
00004A8C  06                push es
00004A8D  FF7608            push word [bp+0x8]
00004A90  50                push ax
00004A91  FF5606            call word [bp+0x6]
00004A94  59                pop cx
00004A95  59                pop cx
00004A96  07                pop es
00004A97  FF4EDA            dec word [bp-0x26]
00004A9A  46                inc si
00004A9B  3B76DE            cmp si,[bp-0x22]
00004A9E  7D09              jnl 0x4aa9
00004AA0  F646D701          test byte [bp-0x29],0x1
00004AA4  7506              jnz 0x4aac
00004AA6  FF46D8            inc word [bp-0x28]
00004AA9  B000              mov al,0x0
00004AAB  AA                stosb
00004AAC  E950FC            jmp word 0x46ff
00004AAF  46                inc si
00004AB0  3B76DE            cmp si,[bp-0x22]
00004AB3  7D0C              jnl 0x4ac1
00004AB5  F646D701          test byte [bp-0x29],0x1
00004AB9  7506              jnz 0x4ac1
00004ABB  B000              mov al,0x0
00004ABD  AA                stosb
00004ABE  FF46D8            inc word [bp-0x28]
00004AC1  FF7608            push word [bp+0x8]
00004AC4  B8FFFF            mov ax,0xffff
00004AC7  50                push ax
00004AC8  FF5606            call word [bp+0x6]
00004ACB  59                pop cx
00004ACC  59                pop cx
00004ACD  837ED801          cmp word [bp-0x28],byte +0x1
00004AD1  835ED800          sbb word [bp-0x28],byte +0x0
00004AD5  07                pop es
00004AD6  8B46D8            mov ax,[bp-0x28]
00004AD9  E98600            jmp word 0x4b62
00004ADC  FF46DA            inc word [bp-0x26]
00004ADF  FF7608            push word [bp+0x8]
00004AE2  FF5604            call word [bp+0x4]
00004AE5  59                pop cx
00004AE6  0BC0              or ax,ax
00004AE8  7E13              jng 0x4afd
00004AEA  0AC0              or al,al
00004AEC  7809              js 0x4af7
00004AEE  93                xchg ax,bx
00004AEF  80BFC06801        cmp byte [bx+0x68c0],0x1
00004AF4  93                xchg ax,bx
00004AF5  74E5              jz 0x4adc
00004AF7  59                pop cx
00004AF8  83C103            add cx,byte +0x3
00004AFB  FFE1              jmp cx
00004AFD  74F8              jz 0x4af7
00004AFF  59                pop cx
00004B00  EBBF              jmp short 0x4ac1
00004B02  2BD2              sub dx,dx
00004B04  B90400            mov cx,0x4
00004B07  FF4EDE            dec word [bp-0x22]
00004B0A  7C45              jl 0x4b51
00004B0C  52                push dx
00004B0D  51                push cx
00004B0E  FF46DA            inc word [bp-0x26]
00004B11  FF7608            push word [bp+0x8]
00004B14  FF5604            call word [bp+0x4]
00004B17  59                pop cx
00004B18  59                pop cx
00004B19  5A                pop dx
00004B1A  0BC0              or ax,ax
00004B1C  7E35              jng 0x4b53
00004B1E  FEC9              dec cl
00004B20  7C31              jl 0x4b53
00004B22  8AE8              mov ch,al
00004B24  80ED30            sub ch,0x30
00004B27  722A              jc 0x4b53
00004B29  80FD0A            cmp ch,0xa
00004B2C  7217              jc 0x4b45
00004B2E  80ED11            sub ch,0x11
00004B31  7220              jc 0x4b53
00004B33  80FD06            cmp ch,0x6
00004B36  720A              jc 0x4b42
00004B38  80ED20            sub ch,0x20
00004B3B  7216              jc 0x4b53
00004B3D  80FD06            cmp ch,0x6
00004B40  7311              jnc 0x4b53
00004B42  80C50A            add ch,0xa
00004B45  D1E2              shl dx,1
00004B47  D1E2              shl dx,1
00004B49  D1E2              shl dx,1
00004B4B  D1E2              shl dx,1
00004B4D  02D5              add dl,ch
00004B4F  EBB6              jmp short 0x4b07
00004B51  2BC0              sub ax,ax
00004B53  80F904            cmp cl,0x4
00004B56  7406              jz 0x4b5e
00004B58  59                pop cx
00004B59  83C103            add cx,byte +0x3
00004B5C  FFE1              jmp cx
00004B5E  59                pop cx
00004B5F  E95FFF            jmp word 0x4ac1
00004B62  5F                pop di
00004B63  5E                pop si
00004B64  8BE5              mov sp,bp
00004B66  5D                pop bp
00004B67  C3                ret
00004B68  FF269469          jmp word [0x6994]
00004B6C  FF269669          jmp word [0x6996]
00004B70  FF269869          jmp word [0x6998]
00004B74  53                push bx
00004B75  80EB30            sub bl,0x30
00004B78  7223              jc 0x4b9d
00004B7A  80FB09            cmp bl,0x9
00004B7D  7612              jna 0x4b91
00004B7F  80FB2A            cmp bl,0x2a
00004B82  7705              ja 0x4b89
00004B84  80EB07            sub bl,0x7
00004B87  EB03              jmp short 0x4b8c
00004B89  80EB27            sub bl,0x27
00004B8C  80FB09            cmp bl,0x9
00004B8F  760C              jna 0x4b9d
00004B91  3AD9              cmp bl,cl
00004B93  7308              jnc 0x4b9d
00004B95  83C402            add sp,byte +0x2
00004B98  F8                clc
00004B99  B700              mov bh,0x0
00004B9B  EB04              jmp short 0x4ba1
00004B9D  5B                pop bx
00004B9E  F9                stc
00004B9F  EBFA              jmp short 0x4b9b
00004BA1  C3                ret
00004BA2  55                push bp
00004BA3  8BEC              mov bp,sp
00004BA5  83EC06            sub sp,byte +0x6
00004BA8  56                push si
00004BA9  57                push di
00004BAA  C646FB00          mov byte [bp-0x5],0x0
00004BAE  C746FC0000        mov word [bp-0x4],0x0
00004BB3  C746FE0100        mov word [bp-0x2],0x1
00004BB8  06                push es
00004BB9  BF7F65            mov di,0x657f
00004BBC  FF46FC            inc word [bp-0x4]
00004BBF  FF7608            push word [bp+0x8]
00004BC2  FF5604            call word [bp+0x4]
00004BC5  59                pop cx
00004BC6  0BC0              or ax,ax
00004BC8  7C66              jl 0x4c30
00004BCA  98                cbw
00004BCB  93                xchg ax,bx
00004BCC  F6C380            test bl,0x80
00004BCF  7505              jnz 0x4bd6
00004BD1  F60101            test byte [bx+di],0x1
00004BD4  75E6              jnz 0x4bbc
00004BD6  93                xchg ax,bx
00004BD7  FF4E0C            dec word [bp+0xc]
00004BDA  7C5B              jl 0x4c37
00004BDC  3C2B              cmp al,0x2b
00004BDE  7407              jz 0x4be7
00004BE0  3C2D              cmp al,0x2d
00004BE2  7516              jnz 0x4bfa
00004BE4  FE46FB            inc byte [bp-0x5]
00004BE7  FF4E0C            dec word [bp+0xc]
00004BEA  7C4B              jl 0x4c37
00004BEC  FF46FC            inc word [bp-0x4]
00004BEF  FF7608            push word [bp+0x8]
00004BF2  FF5604            call word [bp+0x4]
00004BF5  59                pop cx
00004BF6  0BC0              or ax,ax
00004BF8  7C36              jl 0x4c30
00004BFA  2BF6              sub si,si
00004BFC  8BFE              mov di,si
00004BFE  8B4E0A            mov cx,[bp+0xa]
00004C01  E34E              jcxz 0x4c51
00004C03  83F924            cmp cx,byte +0x24
00004C06  772F              ja 0x4c37
00004C08  80F902            cmp cl,0x2
00004C0B  722A              jc 0x4c37
00004C0D  3C30              cmp al,0x30
00004C0F  756C              jnz 0x4c7d
00004C11  80F910            cmp cl,0x10
00004C14  7565              jnz 0x4c7b
00004C16  FF4E0C            dec word [bp+0xc]
00004C19  7C33              jl 0x4c4e
00004C1B  FF46FC            inc word [bp-0x4]
00004C1E  FF7608            push word [bp+0x8]
00004C21  FF5604            call word [bp+0x4]
00004C24  59                pop cx
00004C25  3C78              cmp al,0x78
00004C27  7452              jz 0x4c7b
00004C29  3C58              cmp al,0x58
00004C2B  744E              jz 0x4c7b
00004C2D  EB74              jmp short 0x4ca3
00004C2F  90                nop
00004C30  C746FEFFFF        mov word [bp-0x2],0xffff
00004C35  EB05              jmp short 0x4c3c
00004C37  C746FE0000        mov word [bp-0x2],0x0
00004C3C  FF7608            push word [bp+0x8]
00004C3F  50                push ax
00004C40  FF5606            call word [bp+0x6]
00004C43  59                pop cx
00004C44  59                pop cx
00004C45  FF4EFC            dec word [bp-0x4]
00004C48  2BC0              sub ax,ax
00004C4A  99                cwd
00004C4B  E9A700            jmp word 0x4cf5
00004C4E  E99400            jmp word 0x4ce5
00004C51  3C30              cmp al,0x30
00004C53  C7460A0A00        mov word [bp+0xa],0xa
00004C58  7523              jnz 0x4c7d
00004C5A  FF4E0C            dec word [bp+0xc]
00004C5D  7CEF              jl 0x4c4e
00004C5F  FF46FC            inc word [bp-0x4]
00004C62  FF7608            push word [bp+0x8]
00004C65  FF5604            call word [bp+0x4]
00004C68  59                pop cx
00004C69  C7460A0800        mov word [bp+0xa],0x8
00004C6E  3C78              cmp al,0x78
00004C70  7404              jz 0x4c76
00004C72  3C58              cmp al,0x58
00004C74  752D              jnz 0x4ca3
00004C76  C7460A1000        mov word [bp+0xa],0x10
00004C7B  EB17              jmp short 0x4c94
00004C7D  8B4E0A            mov cx,[bp+0xa]
00004C80  93                xchg ax,bx
00004C81  E8F0FE            call word 0x4b74
00004C84  93                xchg ax,bx
00004C85  72B0              jc 0x4c37
00004C87  96                xchg ax,si
00004C88  EB0A              jmp short 0x4c94
00004C8A  96                xchg ax,si
00004C8B  F7660A            mul word [bp+0xa]
00004C8E  03F0              add si,ax
00004C90  13FA              adc di,dx
00004C92  752C              jnz 0x4cc0
00004C94  FF4E0C            dec word [bp+0xc]
00004C97  7C4C              jl 0x4ce5
00004C99  FF46FC            inc word [bp-0x4]
00004C9C  FF7608            push word [bp+0x8]
00004C9F  FF5604            call word [bp+0x4]
00004CA2  59                pop cx
00004CA3  8B4E0A            mov cx,[bp+0xa]
00004CA6  93                xchg ax,bx
00004CA7  E8CAFE            call word 0x4b74
00004CAA  93                xchg ax,bx
00004CAB  73DD              jnc 0x4c8a
00004CAD  EB2A              jmp short 0x4cd9
00004CAF  96                xchg ax,si
00004CB0  F7E1              mul cx
00004CB2  97                xchg ax,di
00004CB3  87CA              xchg cx,dx
00004CB5  F7E2              mul dx
00004CB7  03F7              add si,di
00004CB9  13C1              adc ax,cx
00004CBB  97                xchg ax,di
00004CBC  12D6              adc dl,dh
00004CBE  7548              jnz 0x4d08
00004CC0  FF4E0C            dec word [bp+0xc]
00004CC3  7C20              jl 0x4ce5
00004CC5  FF46FC            inc word [bp-0x4]
00004CC8  FF7608            push word [bp+0x8]
00004CCB  FF5604            call word [bp+0x4]
00004CCE  59                pop cx
00004CCF  8B4E0A            mov cx,[bp+0xa]
00004CD2  93                xchg ax,bx
00004CD3  E89EFE            call word 0x4b74
00004CD6  93                xchg ax,bx
00004CD7  73D6              jnc 0x4caf
00004CD9  FF7608            push word [bp+0x8]
00004CDC  50                push ax
00004CDD  FF5606            call word [bp+0x6]
00004CE0  59                pop cx
00004CE1  59                pop cx
00004CE2  FF4EFC            dec word [bp-0x4]
00004CE5  8BD7              mov dx,di
00004CE7  96                xchg ax,si
00004CE8  807EFB00          cmp byte [bp-0x5],0x0
00004CEC  7407              jz 0x4cf5
00004CEE  F7DA              neg dx
00004CF0  F7D8              neg ax
00004CF2  83DA00            sbb dx,byte +0x0
00004CF5  8B7E0E            mov di,[bp+0xe]
00004CF8  8B5EFC            mov bx,[bp-0x4]
00004CFB  011D              add [di],bx
00004CFD  8B7E10            mov di,[bp+0x10]
00004D00  8B5EFE            mov bx,[bp-0x2]
00004D03  891D              mov [di],bx
00004D05  07                pop es
00004D06  EB16              jmp short 0x4d1e
00004D08  B8FFFF            mov ax,0xffff
00004D0B  BAFF7F            mov dx,0x7fff
00004D0E  0246FB            add al,[bp-0x5]
00004D11  80D400            adc ah,0x0
00004D14  83D200            adc dx,byte +0x0
00004D17  C746FE0200        mov word [bp-0x2],0x2
00004D1C  EBD7              jmp short 0x4cf5
00004D1E  5F                pop di
00004D1F  5E                pop si
00004D20  8BE5              mov sp,bp
00004D22  5D                pop bp
00004D23  C3                ret
00004D24  55                push bp
00004D25  8BEC              mov bp,sp
00004D27  56                push si
00004D28  57                push di
00004D29  55                push bp
00004D2A  8B7604            mov si,[bp+0x4]
00004D2D  FC                cld
00004D2E  2BC0              sub ax,ax
00004D30  99                cwd
00004D31  B90A00            mov cx,0xa
00004D34  B700              mov bh,0x0
00004D36  BF7F65            mov di,0x657f
00004D39  8A1C              mov bl,[si]
00004D3B  46                inc si
00004D3C  F60101            test byte [bx+di],0x1
00004D3F  75F8              jnz 0x4d39
00004D41  BD0000            mov bp,0x0
00004D44  80FB2B            cmp bl,0x2b
00004D47  7406              jz 0x4d4f
00004D49  80FB2D            cmp bl,0x2d
00004D4C  7504              jnz 0x4d52
00004D4E  45                inc bp
00004D4F  8A1C              mov bl,[si]
00004D51  46                inc si
00004D52  80FB39            cmp bl,0x39
00004D55  772E              ja 0x4d85
00004D57  80EB30            sub bl,0x30
00004D5A  7229              jc 0x4d85
00004D5C  F7E1              mul cx
00004D5E  03C3              add ax,bx
00004D60  12D6              adc dl,dh
00004D62  74EB              jz 0x4d4f
00004D64  EB12              jmp short 0x4d78
00004D66  8BFA              mov di,dx
00004D68  B90A00            mov cx,0xa
00004D6B  F7E1              mul cx
00004D6D  97                xchg ax,di
00004D6E  87D1              xchg dx,cx
00004D70  F7E2              mul dx
00004D72  92                xchg ax,dx
00004D73  97                xchg ax,di
00004D74  03C3              add ax,bx
00004D76  13D1              adc dx,cx
00004D78  8A1C              mov bl,[si]
00004D7A  46                inc si
00004D7B  80FB39            cmp bl,0x39
00004D7E  7705              ja 0x4d85
00004D80  80EB30            sub bl,0x30
00004D83  73E1              jnc 0x4d66
00004D85  4D                dec bp
00004D86  7C07              jl 0x4d8f
00004D88  F7DA              neg dx
00004D8A  F7D8              neg ax
00004D8C  83DA00            sbb dx,byte +0x0
00004D8F  5D                pop bp
00004D90  EB00              jmp short 0x4d92
00004D92  5F                pop di
00004D93  5E                pop si
00004D94  5D                pop bp
00004D95  C3                ret
00004D96  55                push bp
00004D97  8BEC              mov bp,sp
00004D99  FF7604            push word [bp+0x4]
00004D9C  E885FF            call word 0x4d24
00004D9F  59                pop cx
00004DA0  EB00              jmp short 0x4da2
00004DA2  5D                pop bp
00004DA3  C3                ret
00004DA4  0000              add [bx+si],al
00004DA6  4C                dec sp
00004DA7  4C                dec sp
00004DA8  55                push bp
00004DA9  8BEC              mov bp,sp
00004DAB  56                push si
00004DAC  57                push di
00004DAD  1E                push ds
00004DAE  06                push es
00004DAF  8B4E06            mov cx,[bp+0x6]
00004DB2  2EA1A44D          mov ax,[cs:0x4da4]
00004DB6  0BC0              or ax,ax
00004DB8  7523              jnz 0x4ddd
00004DBA  B84000            mov ax,0x40
00004DBD  8EC0              mov es,ax
00004DBF  268B1E6C00        mov bx,[es:0x6c]
00004DC4  E83A00            call word 0x4e01
00004DC7  262B1E6C00        sub bx,[es:0x6c]
00004DCC  F7DB              neg bx
00004DCE  B83700            mov ax,0x37
00004DD1  F7E3              mul bx
00004DD3  3BC8              cmp cx,ax
00004DD5  761E              jna 0x4df5
00004DD7  2BC8              sub cx,ax
00004DD9  2EA1A44D          mov ax,[cs:0x4da4]
00004DDD  33DB              xor bx,bx
00004DDF  8EC3              mov es,bx
00004DE1  268A17            mov dl,[es:bx]
00004DE4  E30F              jcxz 0x4df5
00004DE6  8BF1              mov si,cx
00004DE8  8BC8              mov cx,ax
00004DEA  263A17            cmp dl,[es:bx]
00004DED  7500              jnz 0x4def
00004DEF  E2F9              loop 0x4dea
00004DF1  8BCE              mov cx,si
00004DF3  E2F1              loop 0x4de6
00004DF5  2EA1A44D          mov ax,[cs:0x4da4]
00004DF9  07                pop es
00004DFA  1F                pop ds
00004DFB  5F                pop di
00004DFC  5E                pop si
00004DFD  5D                pop bp
00004DFE  44                inc sp
00004DFF  44                inc sp
00004E00  C3                ret
00004E01  53                push bx
00004E02  51                push cx
00004E03  52                push dx
00004E04  06                push es
00004E05  B84000            mov ax,0x40
00004E08  8EC0              mov es,ax
00004E0A  BB6C00            mov bx,0x6c
00004E0D  268A07            mov al,[es:bx]
00004E10  B9FFFF            mov cx,0xffff
00004E13  268A17            mov dl,[es:bx]
00004E16  3AC2              cmp al,dl
00004E18  74F9              jz 0x4e13
00004E1A  263A17            cmp dl,[es:bx]
00004E1D  7502              jnz 0x4e21
00004E1F  E2F9              loop 0x4e1a
00004E21  F7D9              neg cx
00004E23  49                dec cx
00004E24  B83700            mov ax,0x37
00004E27  91                xchg ax,cx
00004E28  33D2              xor dx,dx
00004E2A  F7F1              div cx
00004E2C  2EA3A44D          mov [cs:0x4da4],ax
00004E30  268A07            mov al,[es:bx]
00004E33  B9FFFF            mov cx,0xffff
00004E36  268A17            mov dl,[es:bx]
00004E39  3AC2              cmp al,dl
00004E3B  74F9              jz 0x4e36
00004E3D  53                push bx
00004E3E  52                push dx
00004E3F  B83700            mov ax,0x37
00004E42  50                push ax
00004E43  E860FF            call word 0x4da6
00004E46  58                pop ax
00004E47  5A                pop dx
00004E48  5B                pop bx
00004E49  263A17            cmp dl,[es:bx]
00004E4C  7407              jz 0x4e55
00004E4E  2EFF0EA44D        dec word [cs:0x4da4]
00004E53  EBDB              jmp short 0x4e30
00004E55  07                pop es
00004E56  5A                pop dx
00004E57  59                pop cx
00004E58  5B                pop bx
00004E59  C3                ret
00004E5A  55                push bp
00004E5B  8BEC              mov bp,sp
00004E5D  B42A              mov ah,0x2a
00004E5F  CD21              int 0x21
00004E61  8B5E04            mov bx,[bp+0x4]
00004E64  890F              mov [bx],cx
00004E66  8B5E04            mov bx,[bp+0x4]
00004E69  895702            mov [bx+0x2],dx
00004E6C  5D                pop bp
00004E6D  C3                ret
00004E6E  55                push bp
00004E6F  8BEC              mov bp,sp
00004E71  B42C              mov ah,0x2c
00004E73  CD21              int 0x21
00004E75  8B5E04            mov bx,[bp+0x4]
00004E78  890F              mov [bx],cx
00004E7A  8B5E04            mov bx,[bp+0x4]
00004E7D  895702            mov [bx+0x2],dx
00004E80  5D                pop bp
00004E81  C3                ret
00004E82  55                push bp
00004E83  8BEC              mov bp,sp
00004E85  83EC02            sub sp,byte +0x2
00004E88  56                push si
00004E89  57                push di
00004E8A  8B7E04            mov di,[bp+0x4]
00004E8D  1E                push ds
00004E8E  07                pop es
00004E8F  0BFF              or di,di
00004E91  741A              jz 0x4ead
00004E93  B000              mov al,0x0
00004E95  8A25              mov ah,[di]
00004E97  B9FFFF            mov cx,0xffff
00004E9A  FC                cld
00004E9B  F2AE              repne scasb
00004E9D  F7D1              not cx
00004E9F  49                dec cx
00004EA0  740B              jz 0x4ead
00004EA2  8B3EFF5F          mov di,[0x5fff]
00004EA6  0BFF              or di,di
00004EA8  897EFE            mov [bp-0x2],di
00004EAB  750B              jnz 0x4eb8
00004EAD  33C0              xor ax,ax
00004EAF  EB2C              jmp short 0x4edd
00004EB1  8346FE02          add word [bp-0x2],byte +0x2
00004EB5  8B7EFE            mov di,[bp-0x2]
00004EB8  8B3D              mov di,[di]
00004EBA  0BFF              or di,di
00004EBC  74EF              jz 0x4ead
00004EBE  8A05              mov al,[di]
00004EC0  0AC0              or al,al
00004EC2  74E9              jz 0x4ead
00004EC4  3AE0              cmp ah,al
00004EC6  75E9              jnz 0x4eb1
00004EC8  8BD9              mov bx,cx
00004ECA  80393D            cmp byte [bx+di],0x3d
00004ECD  75E2              jnz 0x4eb1
00004ECF  8B7604            mov si,[bp+0x4]
00004ED2  F3A6              repe cmpsb
00004ED4  87CB              xchg cx,bx
00004ED6  75D9              jnz 0x4eb1
00004ED8  47                inc di
00004ED9  8BC7              mov ax,di
00004EDB  EB00              jmp short 0x4edd
00004EDD  5F                pop di
00004EDE  5E                pop si
00004EDF  8BE5              mov sp,bp
00004EE1  5D                pop bp
00004EE2  C3                ret
00004EE3  55                push bp
00004EE4  8BEC              mov bp,sp
00004EE6  B435              mov ah,0x35
00004EE8  8A4604            mov al,[bp+0x4]
00004EEB  CD21              int 0x21
00004EED  8BC3              mov ax,bx
00004EEF  8CC2              mov dx,es
00004EF1  EB00              jmp short 0x4ef3
00004EF3  5D                pop bp
00004EF4  C3                ret
00004EF5  55                push bp
00004EF6  8BEC              mov bp,sp
00004EF8  B425              mov ah,0x25
00004EFA  8A4604            mov al,[bp+0x4]
00004EFD  1E                push ds
00004EFE  C55606            lds dx,[bp+0x6]
00004F01  CD21              int 0x21
00004F03  1F                pop ds
00004F04  5D                pop bp
00004F05  C3                ret
00004F06  55                push bp
00004F07  8BEC              mov bp,sp
00004F09  83EC02            sub sp,byte +0x2
00004F0C  8A4606            mov al,[bp+0x6]
00004F0F  04FF              add al,0xff
00004F11  8846FE            mov [bp-0x2],al
00004F14  A0A768            mov al,[0x68a7]
00004F17  0046FE            add [bp-0x2],al
00004F1A  8A4604            mov al,[bp+0x4]
00004F1D  04FF              add al,0xff
00004F1F  8846FF            mov [bp-0x1],al
00004F22  A0A668            mov al,[0x68a6]
00004F25  0046FF            add [bp-0x1],al
00004F28  8A46FE            mov al,[bp-0x2]
00004F2B  3A06A768          cmp al,[0x68a7]
00004F2F  721B              jc 0x4f4c
00004F31  8A46FE            mov al,[bp-0x2]
00004F34  3A06A968          cmp al,[0x68a9]
00004F38  7712              ja 0x4f4c
00004F3A  8A46FF            mov al,[bp-0x1]
00004F3D  3A06A668          cmp al,[0x68a6]
00004F41  7209              jc 0x4f4c
00004F43  8A46FF            mov al,[bp-0x1]
00004F46  3A06A868          cmp al,[0x68a8]
00004F4A  7602              jna 0x4f4e
00004F4C  EB0D              jmp short 0x4f5b
00004F4E  8A56FF            mov dl,[bp-0x1]
00004F51  8A76FE            mov dh,[bp-0x2]
00004F54  B402              mov ah,0x2
00004F56  B700              mov bh,0x0
00004F58  E883F4            call word 0x43de
00004F5B  8BE5              mov sp,bp
00004F5D  5D                pop bp
00004F5E  C3                ret
00004F5F  55                push bp
00004F60  8BEC              mov bp,sp
00004F62  56                push si
00004F63  57                push di
00004F64  FF7604            push word [bp+0x4]
00004F67  FF7606            push word [bp+0x6]
00004F6A  FF7608            push word [bp+0x8]
00004F6D  FF760A            push word [bp+0xa]
00004F70  E88407            call word 0x56f7
00004F73  0BC0              or ax,ax
00004F75  7504              jnz 0x4f7b
00004F77  33C0              xor ax,ax
00004F79  EB2F              jmp short 0x4faa
00004F7B  8B7E08            mov di,[bp+0x8]
00004F7E  2B7E04            sub di,[bp+0x4]
00004F81  47                inc di
00004F82  8B7606            mov si,[bp+0x6]
00004F85  EB19              jmp short 0x4fa0
00004F87  1E                push ds
00004F88  FF760C            push word [bp+0xc]
00004F8B  FF7604            push word [bp+0x4]
00004F8E  56                push si
00004F8F  E8CC0E            call word 0x5e5e
00004F92  52                push dx
00004F93  50                push ax
00004F94  57                push di
00004F95  E82407            call word 0x56bc
00004F98  8BC7              mov ax,di
00004F9A  D1E0              shl ax,1
00004F9C  01460C            add [bp+0xc],ax
00004F9F  46                inc si
00004FA0  3B760A            cmp si,[bp+0xa]
00004FA3  7EE2              jng 0x4f87
00004FA5  B80100            mov ax,0x1
00004FA8  EB00              jmp short 0x4faa
00004FAA  5F                pop di
00004FAB  5E                pop si
00004FAC  5D                pop bp
00004FAD  C3                ret
00004FAE  55                push bp
00004FAF  8BEC              mov bp,sp
00004FB1  56                push si
00004FB2  57                push di
00004FB3  8B7E08            mov di,[bp+0x8]
00004FB6  2B7E04            sub di,[bp+0x4]
00004FB9  47                inc di
00004FBA  8B7606            mov si,[bp+0x6]
00004FBD  EB19              jmp short 0x4fd8
00004FBF  FF7604            push word [bp+0x4]
00004FC2  56                push si
00004FC3  E8980E            call word 0x5e5e
00004FC6  52                push dx
00004FC7  50                push ax
00004FC8  1E                push ds
00004FC9  FF760C            push word [bp+0xc]
00004FCC  57                push di
00004FCD  E8EC06            call word 0x56bc
00004FD0  8BC7              mov ax,di
00004FD2  D1E0              shl ax,1
00004FD4  01460C            add [bp+0xc],ax
00004FD7  46                inc si
00004FD8  3B760A            cmp si,[bp+0xa]
00004FDB  7EE2              jng 0x4fbf
00004FDD  B80100            mov ax,0x1
00004FE0  EB00              jmp short 0x4fe2
00004FE2  5F                pop di
00004FE3  5E                pop si
00004FE4  5D                pop bp
00004FE5  C3                ret
00004FE6  55                push bp
00004FE7  8BEC              mov bp,sp
00004FE9  83EC08            sub sp,byte +0x8
00004FEC  8D46F8            lea ax,[bp-0x8]
00004FEF  50                push ax
00004FF0  E84E07            call word 0x5741
00004FF3  59                pop cx
00004FF4  8D46F8            lea ax,[bp-0x8]
00004FF7  50                push ax
00004FF8  FF7608            push word [bp+0x8]
00004FFB  FF7606            push word [bp+0x6]
00004FFE  FF7604            push word [bp+0x4]
00005001  E80900            call word 0x500d
00005004  83C408            add sp,byte +0x8
00005007  EB00              jmp short 0x5009
00005009  8BE5              mov sp,bp
0000500B  5D                pop bp
0000500C  C3                ret
0000500D  55                push bp
0000500E  8BEC              mov bp,sp
00005010  83EC0E            sub sp,byte +0xe
00005013  56                push si
00005014  57                push di
00005015  1E                push ds
00005016  8D4EF6            lea cx,[bp-0xa]
00005019  894EF2            mov [bp-0xe],cx
0000501C  8C56F4            mov [bp-0xc],ss
0000501F  C646F655          mov byte [bp-0xa],0x55
00005023  C646F7CD          mov byte [bp-0x9],0xcd
00005027  8B4604            mov ax,[bp+0x4]
0000502A  8846F8            mov [bp-0x8],al
0000502D  C746F95DCB        mov word [bp-0x7],0xcb5d
00005032  3C25              cmp al,0x25
00005034  7215              jc 0x504b
00005036  3C26              cmp al,0x26
00005038  7711              ja 0x504b
0000503A  C646F936          mov byte [bp-0x7],0x36
0000503E  C746FA8F06        mov word [bp-0x6],0x68f
00005043  894EFC            mov [bp-0x4],cx
00005046  C746FE5DCB        mov word [bp-0x2],0xcb5d
0000504B  8B760A            mov si,[bp+0xa]
0000504E  FF34              push word [si]
00005050  FF7406            push word [si+0x6]
00005053  8B7606            mov si,[bp+0x6]
00005056  8B04              mov ax,[si]
00005058  8B5C02            mov bx,[si+0x2]
0000505B  8B4C04            mov cx,[si+0x4]
0000505E  8B5406            mov dx,[si+0x6]
00005061  8B7C0A            mov di,[si+0xa]
00005064  8B7408            mov si,[si+0x8]
00005067  1F                pop ds
00005068  07                pop es
00005069  FF5EF2            call word far [bp-0xe]
0000506C  9C                pushfw
0000506D  9C                pushfw
0000506E  56                push si
0000506F  1E                push ds
00005070  06                push es
00005071  8E5EEC            mov ds,[bp-0x14]
00005074  8B760A            mov si,[bp+0xa]
00005077  8F04              pop word [si]
00005079  8F4406            pop word [si+0x6]
0000507C  8B7608            mov si,[bp+0x8]
0000507F  8F4408            pop word [si+0x8]
00005082  8F440E            pop word [si+0xe]
00005085  8F440C            pop word [si+0xc]
00005088  83640C01          and word [si+0xc],byte +0x1
0000508C  897C0A            mov [si+0xa],di
0000508F  895406            mov [si+0x6],dx
00005092  894C04            mov [si+0x4],cx
00005095  895C02            mov [si+0x2],bx
00005098  8904              mov [si],ax
0000509A  1F                pop ds
0000509B  7406              jz 0x50a3
0000509D  50                push ax
0000509E  50                push ax
0000509F  E8AAD5            call word 0x264c
000050A2  58                pop ax
000050A3  EB00              jmp short 0x50a5
000050A5  5F                pop di
000050A6  5E                pop si
000050A7  8BE5              mov sp,bp
000050A9  5D                pop bp
000050AA  C3                ret
000050AB  33C9              xor cx,cx
000050AD  EB0D              jmp short 0x50bc
000050AF  B90100            mov cx,0x1
000050B2  EB08              jmp short 0x50bc
000050B4  B90200            mov cx,0x2
000050B7  EB03              jmp short 0x50bc
000050B9  B90300            mov cx,0x3
000050BC  55                push bp
000050BD  56                push si
000050BE  57                push di
000050BF  8BEC              mov bp,sp
000050C1  8BF9              mov di,cx
000050C3  8B460A            mov ax,[bp+0xa]
000050C6  8B560C            mov dx,[bp+0xc]
000050C9  8B5E0E            mov bx,[bp+0xe]
000050CC  8B4E10            mov cx,[bp+0x10]
000050CF  0BC9              or cx,cx
000050D1  7508              jnz 0x50db
000050D3  0BD2              or dx,dx
000050D5  7469              jz 0x5140
000050D7  0BDB              or bx,bx
000050D9  7465              jz 0x5140
000050DB  F7C70100          test di,0x1
000050DF  751C              jnz 0x50fd
000050E1  0BD2              or dx,dx
000050E3  790A              jns 0x50ef
000050E5  F7DA              neg dx
000050E7  F7D8              neg ax
000050E9  83DA00            sbb dx,byte +0x0
000050EC  83CF0C            or di,byte +0xc
000050EF  0BC9              or cx,cx
000050F1  790A              jns 0x50fd
000050F3  F7D9              neg cx
000050F5  F7DB              neg bx
000050F7  83D900            sbb cx,byte +0x0
000050FA  83F704            xor di,byte +0x4
000050FD  8BE9              mov bp,cx
000050FF  B92000            mov cx,0x20
00005102  57                push di
00005103  33FF              xor di,di
00005105  33F6              xor si,si
00005107  D1E0              shl ax,1
00005109  D1D2              rcl dx,1
0000510B  D1D6              rcl si,1
0000510D  D1D7              rcl di,1
0000510F  3BFD              cmp di,bp
00005111  720B              jc 0x511e
00005113  7704              ja 0x5119
00005115  3BF3              cmp si,bx
00005117  7205              jc 0x511e
00005119  2BF3              sub si,bx
0000511B  1BFD              sbb di,bp
0000511D  40                inc ax
0000511E  E2E7              loop 0x5107
00005120  5B                pop bx
00005121  F7C30200          test bx,0x2
00005125  7406              jz 0x512d
00005127  8BC6              mov ax,si
00005129  8BD7              mov dx,di
0000512B  D1EB              shr bx,1
0000512D  F7C30400          test bx,0x4
00005131  7407              jz 0x513a
00005133  F7DA              neg dx
00005135  F7D8              neg ax
00005137  83DA00            sbb dx,byte +0x0
0000513A  5F                pop di
0000513B  5E                pop si
0000513C  5D                pop bp
0000513D  CA0800            retf 0x8
00005140  F7F3              div bx
00005142  F7C70200          test di,0x2
00005146  7402              jz 0x514a
00005148  8BC2              mov ax,dx
0000514A  33D2              xor dx,dx
0000514C  EBEC              jmp short 0x513a
0000514E  80F910            cmp cl,0x10
00005151  7310              jnc 0x5163
00005153  8BD8              mov bx,ax
00005155  D3E0              shl ax,cl
00005157  D3E2              shl dx,cl
00005159  F6D9              neg cl
0000515B  80C110            add cl,0x10
0000515E  D3EB              shr bx,cl
00005160  0BD3              or dx,bx
00005162  CB                retf
00005163  80E910            sub cl,0x10
00005166  8BD0              mov dx,ax
00005168  33C0              xor ax,ax
0000516A  D3E2              shl dx,cl
0000516C  CB                retf
0000516D  55                push bp
0000516E  8BEC              mov bp,sp
00005170  83EC06            sub sp,byte +0x6
00005173  56                push si
00005174  57                push di
00005175  8B7606            mov si,[bp+0x6]
00005178  FF7604            push word [bp+0x4]
0000517B  56                push si
0000517C  FF7608            push word [bp+0x8]
0000517F  FF760A            push word [bp+0xa]
00005182  E87205            call word 0x56f7
00005185  0BC0              or ax,ax
00005187  7420              jz 0x51a9
00005189  FF760C            push word [bp+0xc]
0000518C  FF760E            push word [bp+0xe]
0000518F  8B4608            mov ax,[bp+0x8]
00005192  2B4604            sub ax,[bp+0x4]
00005195  03460C            add ax,[bp+0xc]
00005198  50                push ax
00005199  8B460A            mov ax,[bp+0xa]
0000519C  2BC6              sub ax,si
0000519E  03460E            add ax,[bp+0xe]
000051A1  50                push ax
000051A2  E85205            call word 0x56f7
000051A5  0BC0              or ax,ax
000051A7  7504              jnz 0x51ad
000051A9  33C0              xor ax,ax
000051AB  EB5C              jmp short 0x5209
000051AD  8976FA            mov [bp-0x6],si
000051B0  8B460A            mov ax,[bp+0xa]
000051B3  8946FC            mov [bp-0x4],ax
000051B6  C746FE0100        mov word [bp-0x2],0x1
000051BB  3B760E            cmp si,[bp+0xe]
000051BE  7D0E              jnl 0x51ce
000051C0  8B460A            mov ax,[bp+0xa]
000051C3  8946FA            mov [bp-0x6],ax
000051C6  8976FC            mov [bp-0x4],si
000051C9  C746FEFFFF        mov word [bp-0x2],0xffff
000051CE  8B7EFA            mov di,[bp-0x6]
000051D1  EB27              jmp short 0x51fa
000051D3  FF760C            push word [bp+0xc]
000051D6  8BC7              mov ax,di
000051D8  2BC6              sub ax,si
000051DA  03460E            add ax,[bp+0xe]
000051DD  50                push ax
000051DE  E87D0C            call word 0x5e5e
000051E1  52                push dx
000051E2  50                push ax
000051E3  FF7604            push word [bp+0x4]
000051E6  57                push di
000051E7  E8740C            call word 0x5e5e
000051EA  52                push dx
000051EB  50                push ax
000051EC  8B4608            mov ax,[bp+0x8]
000051EF  2B4604            sub ax,[bp+0x4]
000051F2  40                inc ax
000051F3  50                push ax
000051F4  E8C504            call word 0x56bc
000051F7  037EFE            add di,[bp-0x2]
000051FA  8B46FC            mov ax,[bp-0x4]
000051FD  0346FE            add ax,[bp-0x2]
00005200  3BC7              cmp ax,di
00005202  75CF              jnz 0x51d3
00005204  B80100            mov ax,0x1
00005207  EB00              jmp short 0x5209
00005209  5F                pop di
0000520A  5E                pop si
0000520B  8BE5              mov sp,bp
0000520D  5D                pop bp
0000520E  C3                ret
0000520F  55                push bp
00005210  8BEC              mov bp,sp
00005212  8D4604            lea ax,[bp+0x4]
00005215  50                push ax
00005216  B80100            mov ax,0x1
00005219  50                push ax
0000521A  33C0              xor ax,ax
0000521C  50                push ax
0000521D  E809F3            call word 0x4529
00005220  EB00              jmp short 0x5222
00005222  5D                pop bp
00005223  C3                ret
00005224  55                push bp
00005225  8BEC              mov bp,sp
00005227  56                push si
00005228  57                push di
00005229  1E                push ds
0000522A  07                pop es
0000522B  8B0EBA98          mov cx,[0x98ba]
0000522F  8B7E04            mov di,[bp+0x4]
00005232  8B7606            mov si,[bp+0x6]
00005235  D1E9              shr cx,1
00005237  7308              jnc 0x5241
00005239  8A05              mov al,[di]
0000523B  A4                movsb
0000523C  8844FF            mov [si-0x1],al
0000523F  7408              jz 0x5249
00005241  8B05              mov ax,[di]
00005243  A5                movsw
00005244  8944FE            mov [si-0x2],ax
00005247  E2F8              loop 0x5241
00005249  EB00              jmp short 0x524b
0000524B  5F                pop di
0000524C  5E                pop si
0000524D  5D                pop bp
0000524E  C20400            ret 0x4
00005251  55                push bp
00005252  8BEC              mov bp,sp
00005254  83EC04            sub sp,byte +0x4
00005257  56                push si
00005258  57                push di
00005259  8B7E06            mov di,[bp+0x6]
0000525C  837E0402          cmp word [bp+0x4],byte +0x2
00005260  7325              jnc 0x5287
00005262  837E0402          cmp word [bp+0x4],byte +0x2
00005266  751C              jnz 0x5284
00005268  8BC7              mov ax,di
0000526A  0306BA98          add ax,[0x98ba]
0000526E  8946FC            mov [bp-0x4],ax
00005271  50                push ax
00005272  57                push di
00005273  FF16B898          call word [0x98b8]
00005277  59                pop cx
00005278  59                pop cx
00005279  0BC0              or ax,ax
0000527B  7E07              jng 0x5284
0000527D  57                push di
0000527E  FF76FC            push word [bp-0x4]
00005281  E8A0FF            call word 0x5224
00005284  E9F600            jmp word 0x537d
00005287  8B4604            mov ax,[bp+0x4]
0000528A  48                dec ax
0000528B  F726BA98          mul word [0x98ba]
0000528F  03C7              add ax,di
00005291  8946FC            mov [bp-0x4],ax
00005294  8B4604            mov ax,[bp+0x4]
00005297  D1E8              shr ax,1
00005299  F726BA98          mul word [0x98ba]
0000529D  8BF0              mov si,ax
0000529F  03F7              add si,di
000052A1  FF76FC            push word [bp-0x4]
000052A4  56                push si
000052A5  FF16B898          call word [0x98b8]
000052A9  59                pop cx
000052AA  59                pop cx
000052AB  0BC0              or ax,ax
000052AD  7E07              jng 0x52b6
000052AF  56                push si
000052B0  FF76FC            push word [bp-0x4]
000052B3  E86EFF            call word 0x5224
000052B6  57                push di
000052B7  56                push si
000052B8  FF16B898          call word [0x98b8]
000052BC  59                pop cx
000052BD  59                pop cx
000052BE  0BC0              or ax,ax
000052C0  7E07              jng 0x52c9
000052C2  56                push si
000052C3  57                push di
000052C4  E85DFF            call word 0x5224
000052C7  EB15              jmp short 0x52de
000052C9  FF76FC            push word [bp-0x4]
000052CC  57                push di
000052CD  FF16B898          call word [0x98b8]
000052D1  59                pop cx
000052D2  59                pop cx
000052D3  0BC0              or ax,ax
000052D5  7E07              jng 0x52de
000052D7  57                push di
000052D8  FF76FC            push word [bp-0x4]
000052DB  E846FF            call word 0x5224
000052DE  837E0403          cmp word [bp+0x4],byte +0x3
000052E2  7508              jnz 0x52ec
000052E4  57                push di
000052E5  56                push si
000052E6  E83BFF            call word 0x5224
000052E9  E99100            jmp word 0x537d
000052EC  8BF7              mov si,di
000052EE  0336BA98          add si,[0x98ba]
000052F2  EB0D              jmp short 0x5301
000052F4  3B76FC            cmp si,[bp-0x4]
000052F7  7306              jnc 0x52ff
000052F9  0336BA98          add si,[0x98ba]
000052FD  EB02              jmp short 0x5301
000052FF  EB41              jmp short 0x5342
00005301  57                push di
00005302  56                push si
00005303  FF16B898          call word [0x98b8]
00005307  59                pop cx
00005308  59                pop cx
00005309  0BC0              or ax,ax
0000530B  7CE7              jl 0x52f4
0000530D  EB29              jmp short 0x5338
0000530F  FF76FC            push word [bp-0x4]
00005312  57                push di
00005313  FF16B898          call word [0x98b8]
00005317  59                pop cx
00005318  59                pop cx
00005319  0BC0              or ax,ax
0000531B  7F08              jg 0x5325
0000531D  A1BA98            mov ax,[0x98ba]
00005320  2946FC            sub [bp-0x4],ax
00005323  EB13              jmp short 0x5338
00005325  56                push si
00005326  FF76FC            push word [bp-0x4]
00005329  E8F8FE            call word 0x5224
0000532C  0336BA98          add si,[0x98ba]
00005330  A1BA98            mov ax,[0x98ba]
00005333  2946FC            sub [bp-0x4],ax
00005336  EB05              jmp short 0x533d
00005338  3B76FC            cmp si,[bp-0x4]
0000533B  72D2              jc 0x530f
0000533D  3B76FC            cmp si,[bp-0x4]
00005340  72B0              jc 0x52f2
00005342  57                push di
00005343  56                push si
00005344  FF16B898          call word [0x98b8]
00005348  59                pop cx
00005349  59                pop cx
0000534A  0BC0              or ax,ax
0000534C  7D05              jnl 0x5353
0000534E  56                push si
0000534F  57                push di
00005350  E8D1FE            call word 0x5224
00005353  8BC6              mov ax,si
00005355  2BC7              sub ax,di
00005357  33D2              xor dx,dx
00005359  F736BA98          div word [0x98ba]
0000535D  8946FE            mov [bp-0x2],ax
00005360  8B46FE            mov ax,[bp-0x2]
00005363  294604            sub [bp+0x4],ax
00005366  8B4604            mov ax,[bp+0x4]
00005369  0BC0              or ax,ax
0000536B  7407              jz 0x5374
0000536D  56                push si
0000536E  FF7604            push word [bp+0x4]
00005371  E8DDFE            call word 0x5251
00005374  8B46FE            mov ax,[bp-0x2]
00005377  894604            mov [bp+0x4],ax
0000537A  E9DFFE            jmp word 0x525c
0000537D  5F                pop di
0000537E  5E                pop si
0000537F  8BE5              mov sp,bp
00005381  5D                pop bp
00005382  C20400            ret 0x4
00005385  55                push bp
00005386  8BEC              mov bp,sp
00005388  8B4608            mov ax,[bp+0x8]
0000538B  A3BA98            mov [0x98ba],ax
0000538E  0BC0              or ax,ax
00005390  7502              jnz 0x5394
00005392  EB0F              jmp short 0x53a3
00005394  8B460A            mov ax,[bp+0xa]
00005397  A3B898            mov [0x98b8],ax
0000539A  FF7604            push word [bp+0x4]
0000539D  FF7606            push word [bp+0x6]
000053A0  E8AEFE            call word 0x5251
000053A3  5D                pop bp
000053A4  C3                ret
000053A5  55                push bp
000053A6  8BEC              mov bp,sp
000053A8  8B4604            mov ax,[bp+0x4]
000053AB  33D2              xor dx,dx
000053AD  89164269          mov [0x6942],dx
000053B1  A34069            mov [0x6940],ax
000053B4  5D                pop bp
000053B5  C3                ret
000053B6  8B164269          mov dx,[0x6942]
000053BA  A14069            mov ax,[0x6940]
000053BD  B95A01            mov cx,0x15a
000053C0  BB354E            mov bx,0x4e35
000053C3  0E                push cs
000053C4  E819E4            call word 0x37e0
000053C7  050100            add ax,0x1
000053CA  83D200            adc dx,byte +0x0
000053CD  89164269          mov [0x6942],dx
000053D1  A34069            mov [0x6940],ax
000053D4  A14269            mov ax,[0x6942]
000053D7  25FF7F            and ax,0x7fff
000053DA  EB00              jmp short 0x53dc
000053DC  C3                ret
000053DD  55                push bp
000053DE  8BEC              mov bp,sp
000053E0  56                push si
000053E1  57                push di
000053E2  1E                push ds
000053E3  C57606            lds si,[bp+0x6]
000053E6  C47E0A            les di,[bp+0xa]
000053E9  FC                cld
000053EA  D1E9              shr cx,1
000053EC  F3A5              rep movsw
000053EE  13C9              adc cx,cx
000053F0  F3A4              rep movsb
000053F2  1F                pop ds
000053F3  5F                pop di
000053F4  5E                pop si
000053F5  5D                pop bp
000053F6  CA0800            retf 0x8
000053F9  55                push bp
000053FA  8BEC              mov bp,sp
000053FC  8A2EAA68          mov ch,[0x68aa]
00005400  B120              mov cl,0x20
00005402  EB0C              jmp short 0x5410
00005404  8B5E08            mov bx,[bp+0x8]
00005407  890F              mov [bx],cx
00005409  83460802          add word [bp+0x8],byte +0x2
0000540D  FF4606            inc word [bp+0x6]
00005410  8B4606            mov ax,[bp+0x6]
00005413  3B4604            cmp ax,[bp+0x4]
00005416  7EEC              jng 0x5404
00005418  5D                pop bp
00005419  C20600            ret 0x6
0000541C  55                push bp
0000541D  8BEC              mov bp,sp
0000541F  81ECA000          sub sp,0xa0
00005423  803EAF6800        cmp byte [0x68af],0x0
00005428  7403              jz 0x542d
0000542A  E93801            jmp word 0x5565
0000542D  833EB56800        cmp word [0x68b5],byte +0x0
00005432  7503              jnz 0x5437
00005434  E92E01            jmp word 0x5565
00005437  807E0401          cmp byte [bp+0x4],0x1
0000543B  7403              jz 0x5440
0000543D  E92501            jmp word 0x5565
00005440  FE460C            inc byte [bp+0xc]
00005443  FE460A            inc byte [bp+0xa]
00005446  FE4608            inc byte [bp+0x8]
00005449  FE4606            inc byte [bp+0x6]
0000544C  807E0E06          cmp byte [bp+0xe],0x6
00005450  7403              jz 0x5455
00005452  E98800            jmp word 0x54dd
00005455  8A460A            mov al,[bp+0xa]
00005458  B400              mov ah,0x0
0000545A  50                push ax
0000545B  8A460C            mov al,[bp+0xc]
0000545E  B400              mov ah,0x0
00005460  50                push ax
00005461  8A4606            mov al,[bp+0x6]
00005464  B400              mov ah,0x0
00005466  50                push ax
00005467  8A4608            mov al,[bp+0x8]
0000546A  B400              mov ah,0x0
0000546C  50                push ax
0000546D  8A460A            mov al,[bp+0xa]
00005470  B400              mov ah,0x0
00005472  40                inc ax
00005473  50                push ax
00005474  8A460C            mov al,[bp+0xc]
00005477  B400              mov ah,0x0
00005479  50                push ax
0000547A  E8F0FC            call word 0x516d
0000547D  83C40C            add sp,byte +0xc
00005480  8D8660FF          lea ax,[bp-0xa0]
00005484  50                push ax
00005485  8A4606            mov al,[bp+0x6]
00005488  B400              mov ah,0x0
0000548A  50                push ax
0000548B  8A460C            mov al,[bp+0xc]
0000548E  B400              mov ah,0x0
00005490  50                push ax
00005491  8A4606            mov al,[bp+0x6]
00005494  B400              mov ah,0x0
00005496  50                push ax
00005497  8A460C            mov al,[bp+0xc]
0000549A  B400              mov ah,0x0
0000549C  50                push ax
0000549D  E8BFFA            call word 0x4f5f
000054A0  83C40A            add sp,byte +0xa
000054A3  8D8660FF          lea ax,[bp-0xa0]
000054A7  50                push ax
000054A8  8A460C            mov al,[bp+0xc]
000054AB  B400              mov ah,0x0
000054AD  50                push ax
000054AE  8A4608            mov al,[bp+0x8]
000054B1  B400              mov ah,0x0
000054B3  50                push ax
000054B4  E842FF            call word 0x53f9
000054B7  8D8660FF          lea ax,[bp-0xa0]
000054BB  50                push ax
000054BC  8A4606            mov al,[bp+0x6]
000054BF  B400              mov ah,0x0
000054C1  50                push ax
000054C2  8A4608            mov al,[bp+0x8]
000054C5  B400              mov ah,0x0
000054C7  50                push ax
000054C8  8A4606            mov al,[bp+0x6]
000054CB  B400              mov ah,0x0
000054CD  50                push ax
000054CE  8A460C            mov al,[bp+0xc]
000054D1  B400              mov ah,0x0
000054D3  50                push ax
000054D4  E8D7FA            call word 0x4fae
000054D7  83C40A            add sp,byte +0xa
000054DA  E98600            jmp word 0x5563
000054DD  8A460A            mov al,[bp+0xa]
000054E0  B400              mov ah,0x0
000054E2  40                inc ax
000054E3  50                push ax
000054E4  8A460C            mov al,[bp+0xc]
000054E7  B400              mov ah,0x0
000054E9  50                push ax
000054EA  8A4606            mov al,[bp+0x6]
000054ED  B400              mov ah,0x0
000054EF  48                dec ax
000054F0  50                push ax
000054F1  8A4608            mov al,[bp+0x8]
000054F4  B400              mov ah,0x0
000054F6  50                push ax
000054F7  8A460A            mov al,[bp+0xa]
000054FA  B400              mov ah,0x0
000054FC  50                push ax
000054FD  8A460C            mov al,[bp+0xc]
00005500  B400              mov ah,0x0
00005502  50                push ax
00005503  E867FC            call word 0x516d
00005506  83C40C            add sp,byte +0xc
00005509  8D8660FF          lea ax,[bp-0xa0]
0000550D  50                push ax
0000550E  8A460A            mov al,[bp+0xa]
00005511  B400              mov ah,0x0
00005513  50                push ax
00005514  8A460C            mov al,[bp+0xc]
00005517  B400              mov ah,0x0
00005519  50                push ax
0000551A  8A460A            mov al,[bp+0xa]
0000551D  B400              mov ah,0x0
0000551F  50                push ax
00005520  8A460C            mov al,[bp+0xc]
00005523  B400              mov ah,0x0
00005525  50                push ax
00005526  E836FA            call word 0x4f5f
00005529  83C40A            add sp,byte +0xa
0000552C  8D8660FF          lea ax,[bp-0xa0]
00005530  50                push ax
00005531  8A460C            mov al,[bp+0xc]
00005534  B400              mov ah,0x0
00005536  50                push ax
00005537  8A4608            mov al,[bp+0x8]
0000553A  B400              mov ah,0x0
0000553C  50                push ax
0000553D  E8B9FE            call word 0x53f9
00005540  8D8660FF          lea ax,[bp-0xa0]
00005544  50                push ax
00005545  8A460A            mov al,[bp+0xa]
00005548  B400              mov ah,0x0
0000554A  50                push ax
0000554B  8A4608            mov al,[bp+0x8]
0000554E  B400              mov ah,0x0
00005550  50                push ax
00005551  8A460A            mov al,[bp+0xa]
00005554  B400              mov ah,0x0
00005556  50                push ax
00005557  8A460C            mov al,[bp+0xc]
0000555A  B400              mov ah,0x0
0000555C  50                push ax
0000555D  E84EFA            call word 0x4fae
00005560  83C40A            add sp,byte +0xa
00005563  EB19              jmp short 0x557e
00005565  8A3EAA68          mov bh,[0x68aa]
00005569  8A660E            mov ah,[bp+0xe]
0000556C  8A4604            mov al,[bp+0x4]
0000556F  8A6E0A            mov ch,[bp+0xa]
00005572  8A4E0C            mov cl,[bp+0xc]
00005575  8A7606            mov dh,[bp+0x6]
00005578  8A5608            mov dl,[bp+0x8]
0000557B  E860EE            call word 0x43de
0000557E  8BE5              mov sp,bp
00005580  5D                pop bp
00005581  C20C00            ret 0xc
00005584  55                push bp
00005585  8BEC              mov bp,sp
00005587  83EC02            sub sp,byte +0x2
0000558A  56                push si
0000558B  8B7604            mov si,[bp+0x4]
0000558E  D1EE              shr si,1
00005590  8BC6              mov ax,si
00005592  8A16AE68          mov dl,[0x68ae]
00005596  B600              mov dh,0x0
00005598  8BDA              mov bx,dx
0000559A  33D2              xor dx,dx
0000559C  F7F3              div bx
0000559E  8846FE            mov [bp-0x2],al
000055A1  8A46FE            mov al,[bp-0x2]
000055A4  B400              mov ah,0x0
000055A6  8A16AE68          mov dl,[0x68ae]
000055AA  B600              mov dh,0x0
000055AC  F7E2              mul dx
000055AE  8BD6              mov dx,si
000055B0  2AD0              sub dl,al
000055B2  8856FF            mov [bp-0x1],dl
000055B5  8A66FE            mov ah,[bp-0x2]
000055B8  8A46FF            mov al,[bp-0x1]
000055BB  EB00              jmp short 0x55bd
000055BD  5E                pop si
000055BE  8BE5              mov sp,bp
000055C0  5D                pop bp
000055C1  C20400            ret 0x4
000055C4  55                push bp
000055C5  8BEC              mov bp,sp
000055C7  8B5E06            mov bx,[bp+0x6]
000055CA  8B17              mov dx,[bx]
000055CC  8B5E04            mov bx,[bp+0x4]
000055CF  3B17              cmp dx,[bx]
000055D1  740C              jz 0x55df
000055D3  B700              mov bh,0x0
000055D5  B402              mov ah,0x2
000055D7  E804EE            call word 0x43de
000055DA  8B5E04            mov bx,[bp+0x4]
000055DD  8917              mov [bx],dx
000055DF  FEC2              inc dl
000055E1  8AC2              mov al,dl
000055E3  3A06AE68          cmp al,[0x68ae]
000055E7  7204              jc 0x55ed
000055E9  FEC6              inc dh
000055EB  B200              mov dl,0x0
000055ED  8B5E06            mov bx,[bp+0x6]
000055F0  8917              mov [bx],dx
000055F2  5D                pop bp
000055F3  C20400            ret 0x4
000055F6  55                push bp
000055F7  8BEC              mov bp,sp
000055F9  83EC0A            sub sp,byte +0xa
000055FC  56                push si
000055FD  57                push di
000055FE  E8FE08            call word 0x5eff
00005601  8BF8              mov di,ax
00005603  8BC7              mov ax,di
00005605  8946FA            mov [bp-0x6],ax
00005608  8B460C            mov ax,[bp+0xc]
0000560B  3B06B368          cmp ax,[0x68b3]
0000560F  7505              jnz 0x5616
00005611  B80100            mov ax,0x1
00005614  EB02              jmp short 0x5618
00005616  33C0              xor ax,ax
00005618  8946FC            mov [bp-0x4],ax
0000561B  0BC0              or ax,ax
0000561D  740C              jz 0x562b
0000561F  FF760C            push word [bp+0xc]
00005622  FF760A            push word [bp+0xa]
00005625  E85CFF            call word 0x5584
00005628  8946F6            mov [bp-0xa],ax
0000562B  8B4608            mov ax,[bp+0x8]
0000562E  3B06B368          cmp ax,[0x68b3]
00005632  7505              jnz 0x5639
00005634  B80100            mov ax,0x1
00005637  EB02              jmp short 0x563b
00005639  33C0              xor ax,ax
0000563B  8946FE            mov [bp-0x2],ax
0000563E  0BC0              or ax,ax
00005640  740C              jz 0x564e
00005642  FF7608            push word [bp+0x8]
00005645  FF7606            push word [bp+0x6]
00005648  E839FF            call word 0x5584
0000564B  8946F8            mov [bp-0x8],ax
0000564E  EB51              jmp short 0x56a1
00005650  837EFE00          cmp word [bp-0x2],byte +0x0
00005654  7416              jz 0x566c
00005656  8D46F8            lea ax,[bp-0x8]
00005659  50                push ax
0000565A  8D46FA            lea ax,[bp-0x6]
0000565D  50                push ax
0000565E  E863FF            call word 0x55c4
00005661  B700              mov bh,0x0
00005663  B408              mov ah,0x8
00005665  E876ED            call word 0x43de
00005668  8BF0              mov si,ax
0000566A  EB0A              jmp short 0x5676
0000566C  C45E06            les bx,[bp+0x6]
0000566F  268B37            mov si,[es:bx]
00005672  83460602          add word [bp+0x6],byte +0x2
00005676  837EFC00          cmp word [bp-0x4],byte +0x0
0000567A  741B              jz 0x5697
0000567C  8D46F6            lea ax,[bp-0xa]
0000567F  50                push ax
00005680  8D46FA            lea ax,[bp-0x6]
00005683  50                push ax
00005684  E83DFF            call word 0x55c4
00005687  8BC6              mov ax,si
00005689  8ADC              mov bl,ah
0000568B  B90100            mov cx,0x1
0000568E  B700              mov bh,0x0
00005690  B409              mov ah,0x9
00005692  E849ED            call word 0x43de
00005695  EB0A              jmp short 0x56a1
00005697  C45E0A            les bx,[bp+0xa]
0000569A  268937            mov [es:bx],si
0000569D  83460A02          add word [bp+0xa],byte +0x2
000056A1  8B4604            mov ax,[bp+0x4]
000056A4  FF4E04            dec word [bp+0x4]
000056A7  0BC0              or ax,ax
000056A9  75A5              jnz 0x5650
000056AB  8BD7              mov dx,di
000056AD  B700              mov bh,0x0
000056AF  B402              mov ah,0x2
000056B1  E82AED            call word 0x43de
000056B4  5F                pop di
000056B5  5E                pop si
000056B6  8BE5              mov sp,bp
000056B8  5D                pop bp
000056B9  C20A00            ret 0xa
000056BC  55                push bp
000056BD  8BEC              mov bp,sp
000056BF  803EAF6800        cmp byte [0x68af],0x0
000056C4  751B              jnz 0x56e1
000056C6  833EB56800        cmp word [0x68b5],byte +0x0
000056CB  7414              jz 0x56e1
000056CD  FF760C            push word [bp+0xc]
000056D0  FF760A            push word [bp+0xa]
000056D3  FF7608            push word [bp+0x8]
000056D6  FF7606            push word [bp+0x6]
000056D9  FF7604            push word [bp+0x4]
000056DC  E8A407            call word 0x5e83
000056DF  EB12              jmp short 0x56f3
000056E1  FF760C            push word [bp+0xc]
000056E4  FF760A            push word [bp+0xa]
000056E7  FF7608            push word [bp+0x8]
000056EA  FF7606            push word [bp+0x6]
000056ED  FF7604            push word [bp+0x4]
000056F0  E803FF            call word 0x55f6
000056F3  5D                pop bp
000056F4  C20A00            ret 0xa
000056F7  55                push bp
000056F8  8BEC              mov bp,sp
000056FA  A0AE68            mov al,[0x68ae]
000056FD  B400              mov ah,0x0
000056FF  8BC8              mov cx,ax
00005701  A0AD68            mov al,[0x68ad]
00005704  B400              mov ah,0x0
00005706  8BD0              mov dx,ax
00005708  8B460A            mov ax,[bp+0xa]
0000570B  3BC1              cmp ax,cx
0000570D  772A              ja 0x5739
0000570F  8B4606            mov ax,[bp+0x6]
00005712  3BC1              cmp ax,cx
00005714  7723              ja 0x5739
00005716  8B460A            mov ax,[bp+0xa]
00005719  3B4606            cmp ax,[bp+0x6]
0000571C  7F1B              jg 0x5739
0000571E  8B4608            mov ax,[bp+0x8]
00005721  3BC2              cmp ax,dx
00005723  7714              ja 0x5739
00005725  8B4604            mov ax,[bp+0x4]
00005728  3BC2              cmp ax,dx
0000572A  770D              ja 0x5739
0000572C  8B4608            mov ax,[bp+0x8]
0000572F  3B4604            cmp ax,[bp+0x4]
00005732  7F05              jg 0x5739
00005734  B80100            mov ax,0x1
00005737  EB02              jmp short 0x573b
00005739  33C0              xor ax,ax
0000573B  EB00              jmp short 0x573d
0000573D  5D                pop bp
0000573E  C20800            ret 0x8
00005741  55                push bp
00005742  8BEC              mov bp,sp
00005744  56                push si
00005745  8B7604            mov si,[bp+0x4]
00005748  8C04              mov [si],es
0000574A  8C4C02            mov [si+0x2],cs
0000574D  8C5404            mov [si+0x4],ss
00005750  8C5C06            mov [si+0x6],ds
00005753  5E                pop si
00005754  5D                pop bp
00005755  C3                ret
00005756  55                push bp
00005757  8BEC              mov bp,sp
00005759  56                push si
0000575A  B42B              mov ah,0x2b
0000575C  8B7604            mov si,[bp+0x4]
0000575F  8B0C              mov cx,[si]
00005761  8B5402            mov dx,[si+0x2]
00005764  CD21              int 0x21
00005766  5E                pop si
00005767  5D                pop bp
00005768  C3                ret
00005769  55                push bp
0000576A  8BEC              mov bp,sp
0000576C  56                push si
0000576D  B42D              mov ah,0x2d
0000576F  8B7604            mov si,[bp+0x4]
00005772  8B0C              mov cx,[si]
00005774  8B5402            mov dx,[si+0x2]
00005777  CD21              int 0x21
00005779  5E                pop si
0000577A  5D                pop bp
0000577B  C3                ret
0000577C  55                push bp
0000577D  8BEC              mov bp,sp
0000577F  8B5E04            mov bx,[bp+0x4]
00005782  B8DD34            mov ax,0x34dd
00005785  BA1200            mov dx,0x12
00005788  3BD3              cmp dx,bx
0000578A  731A              jnc 0x57a6
0000578C  F7F3              div bx
0000578E  8BD8              mov bx,ax
00005790  E461              in al,0x61
00005792  A803              test al,0x3
00005794  7508              jnz 0x579e
00005796  0C03              or al,0x3
00005798  E661              out 0x61,al
0000579A  B0B6              mov al,0xb6
0000579C  E643              out 0x43,al
0000579E  8AC3              mov al,bl
000057A0  E642              out 0x42,al
000057A2  8AC7              mov al,bh
000057A4  E642              out 0x42,al
000057A6  5D                pop bp
000057A7  C3                ret
000057A8  E461              in al,0x61
000057AA  24FC              and al,0xfc
000057AC  E661              out 0x61,al
000057AE  C3                ret
000057AF  55                push bp
000057B0  8BEC              mov bp,sp
000057B2  FF7606            push word [bp+0x6]
000057B5  FF7608            push word [bp+0x8]
000057B8  8B5E04            mov bx,[bp+0x4]
000057BB  FF37              push word [bx]
000057BD  E87DE1            call word 0x393d
000057C0  8BE5              mov sp,bp
000057C2  8B4606            mov ax,[bp+0x6]
000057C5  8B5E04            mov bx,[bp+0x4]
000057C8  0107              add [bx],ax
000057CA  8B1F              mov bx,[bx]
000057CC  C60700            mov byte [bx],0x0
000057CF  33C0              xor ax,ax
000057D1  EB00              jmp short 0x57d3
000057D3  5D                pop bp
000057D4  C20600            ret 0x6
000057D7  55                push bp
000057D8  8BEC              mov bp,sp
000057DA  8B5E04            mov bx,[bp+0x4]
000057DD  C60700            mov byte [bx],0x0
000057E0  B8AF57            mov ax,0x57af
000057E3  50                push ax
000057E4  8D4604            lea ax,[bp+0x4]
000057E7  50                push ax
000057E8  FF7606            push word [bp+0x6]
000057EB  8D4608            lea ax,[bp+0x8]
000057EE  50                push ax
000057EF  E837E5            call word 0x3d29
000057F2  EB00              jmp short 0x57f4
000057F4  5D                pop bp
000057F5  C3                ret
000057F6  55                push bp
000057F7  8BEC              mov bp,sp
000057F9  8B5E04            mov bx,[bp+0x4]
000057FC  C60700            mov byte [bx],0x0
000057FF  B8AF57            mov ax,0x57af
00005802  50                push ax
00005803  8D4604            lea ax,[bp+0x4]
00005806  50                push ax
00005807  FF7606            push word [bp+0x6]
0000580A  FF7608            push word [bp+0x8]
0000580D  E819E5            call word 0x3d29
00005810  EB00              jmp short 0x5812
00005812  5D                pop bp
00005813  C3                ret
00005814  55                push bp
00005815  8BEC              mov bp,sp
00005817  83EC08            sub sp,byte +0x8
0000581A  8D46FC            lea ax,[bp-0x4]
0000581D  50                push ax
0000581E  8D46F8            lea ax,[bp-0x8]
00005821  50                push ax
00005822  8B5E04            mov bx,[bp+0x4]
00005825  FF7702            push word [bx+0x2]
00005828  FF37              push word [bx]
0000582A  E8D401            call word 0x5a01
0000582D  83C408            add sp,byte +0x8
00005830  8D46F8            lea ax,[bp-0x8]
00005833  50                push ax
00005834  E81FFF            call word 0x5756
00005837  59                pop cx
00005838  8D46FC            lea ax,[bp-0x4]
0000583B  50                push ax
0000583C  E82AFF            call word 0x5769
0000583F  59                pop cx
00005840  33C0              xor ax,ax
00005842  EB00              jmp short 0x5844
00005844  8BE5              mov sp,bp
00005846  5D                pop bp
00005847  C3                ret
00005848  55                push bp
00005849  8BEC              mov bp,sp
0000584B  83EC0C            sub sp,byte +0xc
0000584E  8D46F4            lea ax,[bp-0xc]
00005851  50                push ax
00005852  E805F6            call word 0x4e5a
00005855  59                pop cx
00005856  8D46F8            lea ax,[bp-0x8]
00005859  50                push ax
0000585A  E811F6            call word 0x4e6e
0000585D  59                pop cx
0000585E  8D46F8            lea ax,[bp-0x8]
00005861  50                push ax
00005862  8D46F4            lea ax,[bp-0xc]
00005865  50                push ax
00005866  E87700            call word 0x58e0
00005869  59                pop cx
0000586A  59                pop cx
0000586B  8956FE            mov [bp-0x2],dx
0000586E  8946FC            mov [bp-0x4],ax
00005871  837E0400          cmp word [bp+0x4],byte +0x0
00005875  740E              jz 0x5885
00005877  8B56FE            mov dx,[bp-0x2]
0000587A  8B46FC            mov ax,[bp-0x4]
0000587D  8B5E04            mov bx,[bp+0x4]
00005880  895702            mov [bx+0x2],dx
00005883  8907              mov [bx],ax
00005885  8B56FE            mov dx,[bp-0x2]
00005888  8B46FC            mov ax,[bp-0x4]
0000588B  EB00              jmp short 0x588d
0000588D  8BE5              mov sp,bp
0000588F  5D                pop bp
00005890  C3                ret
00005891  55                push bp
00005892  8BEC              mov bp,sp
00005894  56                push si
00005895  57                push di
00005896  8CD8              mov ax,ds
00005898  8EC0              mov es,ax
0000589A  FC                cld
0000589B  8B7E06            mov di,[bp+0x6]
0000589E  8BF7              mov si,di
000058A0  32C0              xor al,al
000058A2  8B5E08            mov bx,[bp+0x8]
000058A5  8BCB              mov cx,bx
000058A7  F2AE              repne scasb
000058A9  2BD9              sub bx,cx
000058AB  8B7E04            mov di,[bp+0x4]
000058AE  87CB              xchg cx,bx
000058B0  F3A4              rep movsb
000058B2  8BCB              mov cx,bx
000058B4  F3AA              rep stosb
000058B6  8B4604            mov ax,[bp+0x4]
000058B9  EB00              jmp short 0x58bb
000058BB  5F                pop di
000058BC  5E                pop si
000058BD  5D                pop bp
000058BE  C3                ret
000058BF  55                push bp
000058C0  8BEC              mov bp,sp
000058C2  56                push si
000058C3  FC                cld
000058C4  8B7604            mov si,[bp+0x4]
000058C7  8BD6              mov dx,si
000058C9  EB0B              jmp short 0x58d6
000058CB  2C61              sub al,0x61
000058CD  3C19              cmp al,0x19
000058CF  7705              ja 0x58d6
000058D1  0441              add al,0x41
000058D3  8844FF            mov [si-0x1],al
000058D6  AC                lodsb
000058D7  22C0              and al,al
000058D9  75F0              jnz 0x58cb
000058DB  8BC2              mov ax,dx
000058DD  5E                pop si
000058DE  5D                pop bp
000058DF  C3                ret
000058E0  55                push bp
000058E1  8BEC              mov bp,sp
000058E3  83EC06            sub sp,byte +0x6
000058E6  56                push si
000058E7  57                push di
000058E8  E8F002            call word 0x5bdb
000058EB  8B167C69          mov dx,[0x697c]
000058EF  A17A69            mov ax,[0x697a]
000058F2  0500A6            add ax,0xa600
000058F5  81D2CE12          adc dx,0x12ce
000058F9  8956FC            mov [bp-0x4],dx
000058FC  8946FA            mov [bp-0x6],ax
000058FF  8B5E04            mov bx,[bp+0x4]
00005902  8B37              mov si,[bx]
00005904  81C644F8          add si,0xf844
00005908  8BC6              mov ax,si
0000590A  D1F8              sar ax,1
0000590C  D1F8              sar ax,1
0000590E  99                cwd
0000590F  B98607            mov cx,0x786
00005912  BB801F            mov bx,0x1f80
00005915  0E                push cs
00005916  E8C7DE            call word 0x37e0
00005919  0146FA            add [bp-0x6],ax
0000591C  1156FC            adc [bp-0x4],dx
0000591F  8BC6              mov ax,si
00005921  250300            and ax,0x3
00005924  99                cwd
00005925  B9E101            mov cx,0x1e1
00005928  BB8033            mov bx,0x3380
0000592B  0E                push cs
0000592C  E8B1DE            call word 0x37e0
0000592F  0146FA            add [bp-0x6],ax
00005932  1156FC            adc [bp-0x4],dx
00005935  F7C60300          test si,0x3
00005939  7409              jz 0x5944
0000593B  8146FA8051        add word [bp-0x6],0x5180
00005940  8356FC01          adc word [bp-0x4],byte +0x1
00005944  33FF              xor di,di
00005946  8B5E04            mov bx,[bp+0x4]
00005949  8A4703            mov al,[bx+0x3]
0000594C  98                cbw
0000594D  8BF0              mov si,ax
0000594F  4E                dec si
00005950  EB08              jmp short 0x595a
00005952  4E                dec si
00005953  8A844469          mov al,[si+0x6944]
00005957  98                cbw
00005958  03F8              add di,ax
0000595A  0BF6              or si,si
0000595C  7FF4              jg 0x5952
0000595E  8B5E04            mov bx,[bp+0x4]
00005961  8A4702            mov al,[bx+0x2]
00005964  98                cbw
00005965  48                dec ax
00005966  03F8              add di,ax
00005968  8B5E04            mov bx,[bp+0x4]
0000596B  807F0302          cmp byte [bx+0x3],0x2
0000596F  7E0A              jng 0x597b
00005971  8B5E04            mov bx,[bp+0x4]
00005974  F7070300          test word [bx],0x3
00005978  7501              jnz 0x597b
0000597A  47                inc di
0000597B  8BC7              mov ax,di
0000597D  BA1800            mov dx,0x18
00005980  F7E2              mul dx
00005982  8B5E06            mov bx,[bp+0x6]
00005985  8A5701            mov dl,[bx+0x1]
00005988  B600              mov dh,0x0
0000598A  03C2              add ax,dx
0000598C  8946FE            mov [bp-0x2],ax
0000598F  833E7E6900        cmp word [0x697e],byte +0x0
00005994  7420              jz 0x59b6
00005996  8B5E06            mov bx,[bp+0x6]
00005999  8A4701            mov al,[bx+0x1]
0000599C  B400              mov ah,0x0
0000599E  50                push ax
0000599F  57                push di
000059A0  33C0              xor ax,ax
000059A2  50                push ax
000059A3  8B5E04            mov bx,[bp+0x4]
000059A6  8B07              mov ax,[bx]
000059A8  054EF8            add ax,0xf84e
000059AB  50                push ax
000059AC  E88B03            call word 0x5d3a
000059AF  0BC0              or ax,ax
000059B1  7403              jz 0x59b6
000059B3  FF4EFE            dec word [bp-0x2]
000059B6  8B46FE            mov ax,[bp-0x2]
000059B9  99                cwd
000059BA  33C9              xor cx,cx
000059BC  BB100E            mov bx,0xe10
000059BF  0E                push cs
000059C0  E81DDE            call word 0x37e0
000059C3  0146FA            add [bp-0x6],ax
000059C6  1156FC            adc [bp-0x4],dx
000059C9  8B5E06            mov bx,[bp+0x6]
000059CC  8A07              mov al,[bx]
000059CE  B400              mov ah,0x0
000059D0  99                cwd
000059D1  33C9              xor cx,cx
000059D3  BB3C00            mov bx,0x3c
000059D6  0E                push cs
000059D7  E806DE            call word 0x37e0
000059DA  8B5E06            mov bx,[bp+0x6]
000059DD  8A5F03            mov bl,[bx+0x3]
000059E0  B700              mov bh,0x0
000059E2  52                push dx
000059E3  50                push ax
000059E4  8BC3              mov ax,bx
000059E6  99                cwd
000059E7  5B                pop bx
000059E8  59                pop cx
000059E9  03D8              add bx,ax
000059EB  13CA              adc cx,dx
000059ED  015EFA            add [bp-0x6],bx
000059F0  114EFC            adc [bp-0x4],cx
000059F3  8B56FC            mov dx,[bp-0x4]
000059F6  8B46FA            mov ax,[bp-0x6]
000059F9  EB00              jmp short 0x59fb
000059FB  5F                pop di
000059FC  5E                pop si
000059FD  8BE5              mov sp,bp
000059FF  5D                pop bp
00005A00  C3                ret
00005A01  55                push bp
00005A02  8BEC              mov bp,sp
00005A04  56                push si
00005A05  57                push di
00005A06  8B7E0A            mov di,[bp+0xa]
00005A09  8B7608            mov si,[bp+0x8]
00005A0C  E8CC01            call word 0x5bdb
00005A0F  8B167C69          mov dx,[0x697c]
00005A13  A17A69            mov ax,[0x697a]
00005A16  0500A6            add ax,0xa600
00005A19  81D2CE12          adc dx,0x12ce
00005A1D  294604            sub [bp+0x4],ax
00005A20  195606            sbb [bp+0x6],dx
00005A23  C6450200          mov byte [di+0x2],0x0
00005A27  33D2              xor dx,dx
00005A29  B83C00            mov ax,0x3c
00005A2C  52                push dx
00005A2D  50                push ax
00005A2E  FF7606            push word [bp+0x6]
00005A31  FF7604            push word [bp+0x4]
00005A34  0E                push cs
00005A35  E87CF6            call word 0x50b4
00005A38  884503            mov [di+0x3],al
00005A3B  33D2              xor dx,dx
00005A3D  B83C00            mov ax,0x3c
00005A40  52                push dx
00005A41  50                push ax
00005A42  FF7606            push word [bp+0x6]
00005A45  FF7604            push word [bp+0x4]
00005A48  0E                push cs
00005A49  E85FF6            call word 0x50ab
00005A4C  895606            mov [bp+0x6],dx
00005A4F  894604            mov [bp+0x4],ax
00005A52  33D2              xor dx,dx
00005A54  B83C00            mov ax,0x3c
00005A57  52                push dx
00005A58  50                push ax
00005A59  FF7606            push word [bp+0x6]
00005A5C  FF7604            push word [bp+0x4]
00005A5F  0E                push cs
00005A60  E851F6            call word 0x50b4
00005A63  8805              mov [di],al
00005A65  33D2              xor dx,dx
00005A67  B83C00            mov ax,0x3c
00005A6A  52                push dx
00005A6B  50                push ax
00005A6C  FF7606            push word [bp+0x6]
00005A6F  FF7604            push word [bp+0x4]
00005A72  0E                push cs
00005A73  E835F6            call word 0x50ab
00005A76  895606            mov [bp+0x6],dx
00005A79  894604            mov [bp+0x4],ax
00005A7C  33D2              xor dx,dx
00005A7E  B8F888            mov ax,0x88f8
00005A81  52                push dx
00005A82  50                push ax
00005A83  FF7606            push word [bp+0x6]
00005A86  FF7604            push word [bp+0x4]
00005A89  0E                push cs
00005A8A  E81EF6            call word 0x50ab
00005A8D  D1E0              shl ax,1
00005A8F  D1E0              shl ax,1
00005A91  05BC07            add ax,0x7bc
00005A94  8904              mov [si],ax
00005A96  33D2              xor dx,dx
00005A98  B8F888            mov ax,0x88f8
00005A9B  52                push dx
00005A9C  50                push ax
00005A9D  FF7606            push word [bp+0x6]
00005AA0  FF7604            push word [bp+0x4]
00005AA3  0E                push cs
00005AA4  E80DF6            call word 0x50b4
00005AA7  895606            mov [bp+0x6],dx
00005AAA  894604            mov [bp+0x4],ax
00005AAD  837E0600          cmp word [bp+0x6],byte +0x0
00005AB1  7C3E              jl 0x5af1
00005AB3  7F07              jg 0x5abc
00005AB5  817E045022        cmp word [bp+0x4],0x2250
00005ABA  7635              jna 0x5af1
00005ABC  816E045022        sub word [bp+0x4],0x2250
00005AC1  835E0600          sbb word [bp+0x6],byte +0x0
00005AC5  FF04              inc word [si]
00005AC7  33D2              xor dx,dx
00005AC9  B83822            mov ax,0x2238
00005ACC  52                push dx
00005ACD  50                push ax
00005ACE  FF7606            push word [bp+0x6]
00005AD1  FF7604            push word [bp+0x4]
00005AD4  0E                push cs
00005AD5  E8D3F5            call word 0x50ab
00005AD8  0104              add [si],ax
00005ADA  33D2              xor dx,dx
00005ADC  B83822            mov ax,0x2238
00005ADF  52                push dx
00005AE0  50                push ax
00005AE1  FF7606            push word [bp+0x6]
00005AE4  FF7604            push word [bp+0x4]
00005AE7  0E                push cs
00005AE8  E8C9F5            call word 0x50b4
00005AEB  895606            mov [bp+0x6],dx
00005AEE  894604            mov [bp+0x4],ax
00005AF1  833E7E6900        cmp word [0x697e],byte +0x0
00005AF6  743C              jz 0x5b34
00005AF8  33D2              xor dx,dx
00005AFA  B81800            mov ax,0x18
00005AFD  52                push dx
00005AFE  50                push ax
00005AFF  FF7606            push word [bp+0x6]
00005B02  FF7604            push word [bp+0x4]
00005B05  0E                push cs
00005B06  E8ABF5            call word 0x50b4
00005B09  50                push ax
00005B0A  33D2              xor dx,dx
00005B0C  B81800            mov ax,0x18
00005B0F  52                push dx
00005B10  50                push ax
00005B11  FF7606            push word [bp+0x6]
00005B14  FF7604            push word [bp+0x4]
00005B17  0E                push cs
00005B18  E890F5            call word 0x50ab
00005B1B  50                push ax
00005B1C  33C0              xor ax,ax
00005B1E  50                push ax
00005B1F  8B04              mov ax,[si]
00005B21  054EF8            add ax,0xf84e
00005B24  50                push ax
00005B25  E81202            call word 0x5d3a
00005B28  0BC0              or ax,ax
00005B2A  7408              jz 0x5b34
00005B2C  83460401          add word [bp+0x4],byte +0x1
00005B30  83560600          adc word [bp+0x6],byte +0x0
00005B34  33D2              xor dx,dx
00005B36  B81800            mov ax,0x18
00005B39  52                push dx
00005B3A  50                push ax
00005B3B  FF7606            push word [bp+0x6]
00005B3E  FF7604            push word [bp+0x4]
00005B41  0E                push cs
00005B42  E86FF5            call word 0x50b4
00005B45  884501            mov [di+0x1],al
00005B48  33D2              xor dx,dx
00005B4A  B81800            mov ax,0x18
00005B4D  52                push dx
00005B4E  50                push ax
00005B4F  FF7606            push word [bp+0x6]
00005B52  FF7604            push word [bp+0x4]
00005B55  0E                push cs
00005B56  E852F5            call word 0x50ab
00005B59  895606            mov [bp+0x6],dx
00005B5C  894604            mov [bp+0x4],ax
00005B5F  83460401          add word [bp+0x4],byte +0x1
00005B63  83560600          adc word [bp+0x6],byte +0x0
00005B67  F7040300          test word [si],0x3
00005B6B  752E              jnz 0x5b9b
00005B6D  837E0600          cmp word [bp+0x6],byte +0x0
00005B71  7C12              jl 0x5b85
00005B73  7F06              jg 0x5b7b
00005B75  837E043C          cmp word [bp+0x4],byte +0x3c
00005B79  760A              jna 0x5b85
00005B7B  836E0401          sub word [bp+0x4],byte +0x1
00005B7F  835E0600          sbb word [bp+0x6],byte +0x0
00005B83  EB16              jmp short 0x5b9b
00005B85  837E0600          cmp word [bp+0x6],byte +0x0
00005B89  7510              jnz 0x5b9b
00005B8B  837E043C          cmp word [bp+0x4],byte +0x3c
00005B8F  750A              jnz 0x5b9b
00005B91  C6440302          mov byte [si+0x3],0x2
00005B95  C644021D          mov byte [si+0x2],0x1d
00005B99  EB3C              jmp short 0x5bd7
00005B9B  C6440300          mov byte [si+0x3],0x0
00005B9F  EB15              jmp short 0x5bb6
00005BA1  8A4403            mov al,[si+0x3]
00005BA4  98                cbw
00005BA5  8BD8              mov bx,ax
00005BA7  8A874469          mov al,[bx+0x6944]
00005BAB  98                cbw
00005BAC  99                cwd
00005BAD  294604            sub [bp+0x4],ax
00005BB0  195606            sbb [bp+0x6],dx
00005BB3  FE4403            inc byte [si+0x3]
00005BB6  8A4403            mov al,[si+0x3]
00005BB9  98                cbw
00005BBA  8BD8              mov bx,ax
00005BBC  8A874469          mov al,[bx+0x6944]
00005BC0  98                cbw
00005BC1  99                cwd
00005BC2  3B5606            cmp dx,[bp+0x6]
00005BC5  7CDA              jl 0x5ba1
00005BC7  7505              jnz 0x5bce
00005BC9  3B4604            cmp ax,[bp+0x4]
00005BCC  72D3              jc 0x5ba1
00005BCE  FE4403            inc byte [si+0x3]
00005BD1  8A4604            mov al,[bp+0x4]
00005BD4  884402            mov [si+0x2],al
00005BD7  5F                pop di
00005BD8  5E                pop si
00005BD9  5D                pop bp
00005BDA  C3                ret
00005BDB  56                push si
00005BDC  57                push di
00005BDD  B88069            mov ax,0x6980
00005BE0  50                push ax
00005BE1  E89EF2            call word 0x4e82
00005BE4  59                pop cx
00005BE5  8BF8              mov di,ax
00005BE7  8BC7              mov ax,di
00005BE9  0BC0              or ax,ax
00005BEB  7463              jz 0x5c50
00005BED  57                push di
00005BEE  E8DADC            call word 0x38cb
00005BF1  59                pop cx
00005BF2  3D0400            cmp ax,0x4
00005BF5  7259              jc 0x5c50
00005BF7  8A05              mov al,[di]
00005BF9  98                cbw
00005BFA  8BD8              mov bx,ax
00005BFC  F6877F650C        test byte [bx+0x657f],0xc
00005C01  744D              jz 0x5c50
00005C03  8A4501            mov al,[di+0x1]
00005C06  98                cbw
00005C07  8BD8              mov bx,ax
00005C09  F6877F650C        test byte [bx+0x657f],0xc
00005C0E  7440              jz 0x5c50
00005C10  8A4502            mov al,[di+0x2]
00005C13  98                cbw
00005C14  8BD8              mov bx,ax
00005C16  F6877F650C        test byte [bx+0x657f],0xc
00005C1B  7433              jz 0x5c50
00005C1D  807D032D          cmp byte [di+0x3],0x2d
00005C21  7413              jz 0x5c36
00005C23  807D032B          cmp byte [di+0x3],0x2b
00005C27  740D              jz 0x5c36
00005C29  8A4503            mov al,[di+0x3]
00005C2C  98                cbw
00005C2D  8BD8              mov bx,ax
00005C2F  F6877F6502        test byte [bx+0x657f],0x2
00005C34  741A              jz 0x5c50
00005C36  8A4503            mov al,[di+0x3]
00005C39  98                cbw
00005C3A  8BD8              mov bx,ax
00005C3C  F6877F6502        test byte [bx+0x657f],0x2
00005C41  753C              jnz 0x5c7f
00005C43  8A4504            mov al,[di+0x4]
00005C46  98                cbw
00005C47  8BD8              mov bx,ax
00005C49  F6877F6502        test byte [bx+0x657f],0x2
00005C4E  752F              jnz 0x5c7f
00005C50  C7067E690100      mov word [0x697e],0x1
00005C56  C7067C690000      mov word [0x697c],0x0
00005C5C  C7067A695046      mov word [0x697a],0x4650
00005C62  B88369            mov ax,0x6983
00005C65  50                push ax
00005C66  FF367669          push word [0x6976]
00005C6A  E8ACDC            call word 0x3919
00005C6D  59                pop cx
00005C6E  59                pop cx
00005C6F  B88769            mov ax,0x6987
00005C72  50                push ax
00005C73  FF367869          push word [0x6978]
00005C77  E89FDC            call word 0x3919
00005C7A  59                pop cx
00005C7B  59                pop cx
00005C7C  E9B800            jmp word 0x5d37
00005C7F  B80400            mov ax,0x4
00005C82  50                push ax
00005C83  33C0              xor ax,ax
00005C85  50                push ax
00005C86  FF367869          push word [0x6978]
00005C8A  E8F9DC            call word 0x3986
00005C8D  83C406            add sp,byte +0x6
00005C90  B80300            mov ax,0x3
00005C93  50                push ax
00005C94  57                push di
00005C95  FF367669          push word [0x6976]
00005C99  E8F5FB            call word 0x5891
00005C9C  83C406            add sp,byte +0x6
00005C9F  8B1E7669          mov bx,[0x6976]
00005CA3  C6470300          mov byte [bx+0x3],0x0
00005CA7  8BC7              mov ax,di
00005CA9  050300            add ax,0x3
00005CAC  50                push ax
00005CAD  E874F0            call word 0x4d24
00005CB0  59                pop cx
00005CB1  33C9              xor cx,cx
00005CB3  BB100E            mov bx,0xe10
00005CB6  0E                push cs
00005CB7  E826DB            call word 0x37e0
00005CBA  89167C69          mov [0x697c],dx
00005CBE  A37A69            mov [0x697a],ax
00005CC1  C7067E690000      mov word [0x697e],0x0
00005CC7  BE0300            mov si,0x3
00005CCA  EB64              jmp short 0x5d30
00005CCC  8BDE              mov bx,si
00005CCE  8A01              mov al,[bx+di]
00005CD0  98                cbw
00005CD1  8BD8              mov bx,ax
00005CD3  F6877F650C        test byte [bx+0x657f],0xc
00005CD8  7455              jz 0x5d2f
00005CDA  8BC7              mov ax,di
00005CDC  03C6              add ax,si
00005CDE  50                push ax
00005CDF  E8E9DB            call word 0x38cb
00005CE2  59                pop cx
00005CE3  3D0300            cmp ax,0x3
00005CE6  7222              jc 0x5d0a
00005CE8  8BDE              mov bx,si
00005CEA  03DF              add bx,di
00005CEC  8A4701            mov al,[bx+0x1]
00005CEF  98                cbw
00005CF0  8BD8              mov bx,ax
00005CF2  F6877F650C        test byte [bx+0x657f],0xc
00005CF7  7411              jz 0x5d0a
00005CF9  8BDE              mov bx,si
00005CFB  03DF              add bx,di
00005CFD  8A4702            mov al,[bx+0x2]
00005D00  98                cbw
00005D01  8BD8              mov bx,ax
00005D03  F6877F650C        test byte [bx+0x657f],0xc
00005D08  7502              jnz 0x5d0c
00005D0A  EB2B              jmp short 0x5d37
00005D0C  B80300            mov ax,0x3
00005D0F  50                push ax
00005D10  8BC7              mov ax,di
00005D12  03C6              add ax,si
00005D14  50                push ax
00005D15  FF367869          push word [0x6978]
00005D19  E875FB            call word 0x5891
00005D1C  83C406            add sp,byte +0x6
00005D1F  8B1E7869          mov bx,[0x6978]
00005D23  C6470300          mov byte [bx+0x3],0x0
00005D27  C7067E690100      mov word [0x697e],0x1
00005D2D  EB08              jmp short 0x5d37
00005D2F  46                inc si
00005D30  8BDE              mov bx,si
00005D32  803900            cmp byte [bx+di],0x0
00005D35  7595              jnz 0x5ccc
00005D37  5F                pop di
00005D38  5E                pop si
00005D39  C3                ret
00005D3A  55                push bp
00005D3B  8BEC              mov bp,sp
00005D3D  56                push si
00005D3E  57                push di
00005D3F  8B7606            mov si,[bp+0x6]
00005D42  0BF6              or si,si
00005D44  7528              jnz 0x5d6e
00005D46  8B7E08            mov di,[bp+0x8]
00005D49  837E083B          cmp word [bp+0x8],byte +0x3b
00005D4D  720C              jc 0x5d5b
00005D4F  8B4604            mov ax,[bp+0x4]
00005D52  054600            add ax,0x46
00005D55  A90300            test ax,0x3
00005D58  7501              jnz 0x5d5b
00005D5A  4F                dec di
00005D5B  33F6              xor si,si
00005D5D  EB01              jmp short 0x5d60
00005D5F  46                inc si
00005D60  8BDE              mov bx,si
00005D62  D1E3              shl bx,1
00005D64  8B875C69          mov ax,[bx+0x695c]
00005D68  3BC7              cmp ax,di
00005D6A  76F3              jna 0x5d5f
00005D6C  EB1F              jmp short 0x5d8d
00005D6E  83FE03            cmp si,byte +0x3
00005D71  720B              jc 0x5d7e
00005D73  8B4604            mov ax,[bp+0x4]
00005D76  054600            add ax,0x46
00005D79  A90300            test ax,0x3
00005D7C  7403              jz 0x5d81
00005D7E  FF4E08            dec word [bp+0x8]
00005D81  8BDE              mov bx,si
00005D83  4B                dec bx
00005D84  D1E3              shl bx,1
00005D86  8B875C69          mov ax,[bx+0x695c]
00005D8A  014608            add [bp+0x8],ax
00005D8D  83FE04            cmp si,byte +0x4
00005D90  7278              jc 0x5e0a
00005D92  7407              jz 0x5d9b
00005D94  83FE0A            cmp si,byte +0xa
00005D97  7771              ja 0x5e0a
00005D99  756A              jnz 0x5e05
00005D9B  8BDE              mov bx,si
00005D9D  D1E3              shl bx,1
00005D9F  837E0410          cmp word [bp+0x4],byte +0x10
00005DA3  7E0F              jng 0x5db4
00005DA5  83FE04            cmp si,byte +0x4
00005DA8  750A              jnz 0x5db4
00005DAA  8B8F5A69          mov cx,[bx+0x695a]
00005DAE  83C107            add cx,byte +0x7
00005DB1  EB05              jmp short 0x5db8
00005DB3  90                nop
00005DB4  8B8F5C69          mov cx,[bx+0x695c]
00005DB8  8B5E04            mov bx,[bp+0x4]
00005DBB  81C3B207          add bx,0x7b2
00005DBF  F6C303            test bl,0x3
00005DC2  7401              jz 0x5dc5
00005DC4  49                dec cx
00005DC5  8B5E04            mov bx,[bp+0x4]
00005DC8  43                inc bx
00005DC9  D1FB              sar bx,1
00005DCB  D1FB              sar bx,1
00005DCD  03D9              add bx,cx
00005DCF  B86D01            mov ax,0x16d
00005DD2  F76604            mul word [bp+0x4]
00005DD5  03C3              add ax,bx
00005DD7  050400            add ax,0x4
00005DDA  33D2              xor dx,dx
00005DDC  BB0700            mov bx,0x7
00005DDF  F7F3              div bx
00005DE1  2BCA              sub cx,dx
00005DE3  8B4608            mov ax,[bp+0x8]
00005DE6  83FE04            cmp si,byte +0x4
00005DE9  750E              jnz 0x5df9
00005DEB  3BC1              cmp ax,cx
00005DED  7716              ja 0x5e05
00005DEF  7519              jnz 0x5e0a
00005DF1  807E0A02          cmp byte [bp+0xa],0x2
00005DF5  7213              jc 0x5e0a
00005DF7  EB0C              jmp short 0x5e05
00005DF9  3BC1              cmp ax,cx
00005DFB  7208              jc 0x5e05
00005DFD  750B              jnz 0x5e0a
00005DFF  807E0A01          cmp byte [bp+0xa],0x1
00005E03  7705              ja 0x5e0a
00005E05  B80100            mov ax,0x1
00005E08  EB04              jmp short 0x5e0e
00005E0A  33C0              xor ax,ax
00005E0C  EB00              jmp short 0x5e0e
00005E0E  5F                pop di
00005E0F  5E                pop si
00005E10  5D                pop bp
00005E11  C20800            ret 0x8
00005E14  55                push bp
00005E15  8BEC              mov bp,sp
00005E17  56                push si
00005E18  8B7606            mov si,[bp+0x6]
00005E1B  837E04FF          cmp word [bp+0x4],byte -0x1
00005E1F  7435              jz 0x5e56
00005E21  FF04              inc word [si]
00005E23  8B04              mov ax,[si]
00005E25  3D0100            cmp ax,0x1
00005E28  7E11              jng 0x5e3b
00005E2A  8A4604            mov al,[bp+0x4]
00005E2D  FF4C0A            dec word [si+0xa]
00005E30  8B5C0A            mov bx,[si+0xa]
00005E33  8807              mov [bx],al
00005E35  B400              mov ah,0x0
00005E37  EB22              jmp short 0x5e5b
00005E39  EB1B              jmp short 0x5e56
00005E3B  833C01            cmp word [si],byte +0x1
00005E3E  7514              jnz 0x5e54
00005E40  8BC6              mov ax,si
00005E42  050500            add ax,0x5
00005E45  89440A            mov [si+0xa],ax
00005E48  8A4604            mov al,[bp+0x4]
00005E4B  884405            mov [si+0x5],al
00005E4E  B400              mov ah,0x0
00005E50  EB09              jmp short 0x5e5b
00005E52  EB02              jmp short 0x5e56
00005E54  FF0C              dec word [si]
00005E56  B8FFFF            mov ax,0xffff
00005E59  EB00              jmp short 0x5e5b
00005E5B  5E                pop si
00005E5C  5D                pop bp
00005E5D  C3                ret
00005E5E  55                push bp
00005E5F  8BEC              mov bp,sp
00005E61  8B4604            mov ax,[bp+0x4]
00005E64  48                dec ax
00005E65  8A16AE68          mov dl,[0x68ae]
00005E69  B600              mov dh,0x0
00005E6B  F7E2              mul dx
00005E6D  0306B168          add ax,[0x68b1]
00005E71  8B5606            mov dx,[bp+0x6]
00005E74  4A                dec dx
00005E75  03C2              add ax,dx
00005E77  D1E0              shl ax,1
00005E79  8B16B368          mov dx,[0x68b3]
00005E7D  EB00              jmp short 0x5e7f
00005E7F  5D                pop bp
00005E80  C20400            ret 0x4
00005E83  55                push bp
00005E84  8BEC              mov bp,sp
00005E86  83EC02            sub sp,byte +0x2
00005E89  56                push si
00005E8A  57                push di
00005E8B  A0B068            mov al,[0x68b0]
00005E8E  B400              mov ah,0x0
00005E90  8946FE            mov [bp-0x2],ax
00005E93  1E                push ds
00005E94  8B4E04            mov cx,[bp+0x4]
00005E97  E35A              jcxz 0x5ef3
00005E99  C47E0A            les di,[bp+0xa]
00005E9C  C57606            lds si,[bp+0x6]
00005E9F  FC                cld
00005EA0  3BF7              cmp si,di
00005EA2  730A              jnc 0x5eae
00005EA4  8BC1              mov ax,cx
00005EA6  48                dec ax
00005EA7  D1E0              shl ax,1
00005EA9  03F0              add si,ax
00005EAB  03F8              add di,ax
00005EAD  FD                std
00005EAE  837EFE00          cmp word [bp-0x2],byte +0x0
00005EB2  7504              jnz 0x5eb8
00005EB4  F3A5              rep movsw
00005EB6  EB3B              jmp short 0x5ef3
00005EB8  BADA03            mov dx,0x3da
00005EBB  8CC0              mov ax,es
00005EBD  8CDB              mov bx,ds
00005EBF  3BC3              cmp ax,bx
00005EC1  7411              jz 0x5ed4
00005EC3  FA                cli
00005EC4  EC                in al,dx
00005EC5  D0C8              ror al,1
00005EC7  72FB              jc 0x5ec4
00005EC9  EC                in al,dx
00005ECA  D0C8              ror al,1
00005ECC  73FB              jnc 0x5ec9
00005ECE  A5                movsw
00005ECF  FB                sti
00005ED0  E2F1              loop 0x5ec3
00005ED2  EB1F              jmp short 0x5ef3
00005ED4  FA                cli
00005ED5  EC                in al,dx
00005ED6  D0C8              ror al,1
00005ED8  72FB              jc 0x5ed5
00005EDA  EC                in al,dx
00005EDB  D0C8              ror al,1
00005EDD  73FB              jnc 0x5eda
00005EDF  AD                lodsw
00005EE0  FB                sti
00005EE1  8BD8              mov bx,ax
00005EE3  EC                in al,dx
00005EE4  D0C8              ror al,1
00005EE6  72FB              jc 0x5ee3
00005EE8  EC                in al,dx
00005EE9  D0C8              ror al,1
00005EEB  73FB              jnc 0x5ee8
00005EED  8BC3              mov ax,bx
00005EEF  AB                stosw
00005EF0  FB                sti
00005EF1  E2E1              loop 0x5ed4
00005EF3  FC                cld
00005EF4  1F                pop ds
00005EF5  EB00              jmp short 0x5ef7
00005EF7  5F                pop di
00005EF8  5E                pop si
00005EF9  8BE5              mov sp,bp
00005EFB  5D                pop bp
00005EFC  C20A00            ret 0xa
00005EFF  B403              mov ah,0x3
00005F01  B700              mov bh,0x0
00005F03  E8D8E4            call word 0x43de
00005F06  8BC2              mov ax,dx
00005F08  EB00              jmp short 0x5f0a
00005F0A  C3                ret
00005F0B  E8F1FF            call word 0x5eff
00005F0E  B400              mov ah,0x0
00005F10  8A16A668          mov dl,[0x68a6]
00005F14  B600              mov dh,0x0
00005F16  2BC2              sub ax,dx
00005F18  40                inc ax
00005F19  EB00              jmp short 0x5f1b
00005F1B  C3                ret
00005F1C  E8E0FF            call word 0x5eff
00005F1F  B108              mov cl,0x8
00005F21  D3E8              shr ax,cl
00005F23  B400              mov ah,0x0
00005F25  8A16A768          mov dl,[0x68a7]
00005F29  B600              mov dh,0x0
00005F2B  2BC2              sub ax,dx
00005F2D  40                inc ax
00005F2E  EB00              jmp short 0x5f30
00005F30  C3                ret
00005F31  CD11              int 0x11
00005F33  EB00              jmp short 0x5f35
00005F35  C3                ret
00005F36  CD12              int 0x12
00005F38  EB00              jmp short 0x5f3a
00005F3A  C3                ret
00005F3B  55                push bp
00005F3C  8BEC              mov bp,sp
00005F3E  8A6604            mov ah,[bp+0x4]
00005F41  8B4E08            mov cx,[bp+0x8]
00005F44  8B5606            mov dx,[bp+0x6]
00005F47  CD1A              int 0x1a
00005F49  8BC2              mov ax,dx
00005F4B  8BD1              mov dx,cx
00005F4D  5D                pop bp
00005F4E  C3                ret
00005F4F  55                push bp
00005F50  8BEC              mov bp,sp
00005F52  1E                push ds
00005F53  06                push es
00005F54  EB01              jmp short 0x5f57
00005F56  CF                iretw
00005F57  B435              mov ah,0x35
00005F59  B01B              mov al,0x1b
00005F5B  CD21              int 0x21
00005F5D  0E                push cs
00005F5E  1F                pop ds
00005F5F  BA565F            mov dx,0x5f56
00005F62  B425              mov ah,0x25
00005F64  B01B              mov al,0x1b
00005F66  CD21              int 0x21
00005F68  8A6604            mov ah,[bp+0x4]
00005F6B  CD16              int 0x16
00005F6D  7508              jnz 0x5f77
00005F6F  807E0401          cmp byte [bp+0x4],0x1
00005F73  7502              jnz 0x5f77
00005F75  33C0              xor ax,ax
00005F77  91                xchg ax,cx
00005F78  06                push es
00005F79  1F                pop ds
00005F7A  8BD3              mov dx,bx
00005F7C  B425              mov ah,0x25
00005F7E  B01B              mov al,0x1b
00005F80  CD21              int 0x21
00005F82  07                pop es
00005F83  1F                pop ds
00005F84  91                xchg ax,cx
00005F85  EB00              jmp short 0x5f87
00005F87  5D                pop bp
00005F88  C3                ret
00005F89  0000              add [bx+si],al
00005F8B  0000              add [bx+si],al
00005F8D  0000              add [bx+si],al
00005F8F  0000              add [bx+si],al
00005F91  0000              add [bx+si],al
00005F93  005475            add [si+0x75],dl
00005F96  7262              jc 0x5ffa
00005F98  6F                outsw
00005F99  2D4320            sub ax,0x2043
00005F9C  2D2043            sub ax,0x4320
00005F9F  6F                outsw
00005FA0  7079              jo 0x601b
00005FA2  7269              jc 0x600d
00005FA4  67687420          push word 0x2074
00005FA8  286329            sub [bp+di+0x29],ah
00005FAB  2031              and [bx+di],dh
00005FAD  3938              cmp [bx+si],di
00005FAF  3820              cmp [bx+si],ah
00005FB1  42                inc dx
00005FB2  6F                outsw
00005FB3  726C              jc 0x6021
00005FB5  61                popaw
00005FB6  6E                outsb
00005FB7  6420496E          and [fs:bx+di+0x6e],cl
00005FBB  746C              jz 0x6029
00005FBD  2E004469          add [cs:si+0x69],al
00005FC1  7669              jna 0x602c
00005FC3  6465206572        and [gs:di+0x72],ah
00005FC8  726F              jc 0x6039
00005FCA  720D              jc 0x5fd9
00005FCC  0A4162            or al,[bx+di+0x62]
00005FCF  6E                outsb
00005FD0  6F                outsw
00005FD1  726D              jc 0x6040
00005FD3  61                popaw
00005FD4  6C                insb
00005FD5  207072            and [bx+si+0x72],dh
00005FD8  6F                outsw
00005FD9  677261            jc 0x603d
00005FDC  6D                insw
00005FDD  207465            and [si+0x65],dh
00005FE0  726D              jc 0x604f
00005FE2  696E617469        imul bp,[bp+0x61],word 0x6974
00005FE7  6F                outsw
00005FE8  6E                outsb
00005FE9  0D0A00            or ax,0xa
00005FEC  0000              add [bx+si],al
00005FEE  0000              add [bx+si],al
00005FF0  0000              add [bx+si],al
00005FF2  0000              add [bx+si],al
00005FF4  0000              add [bx+si],al
00005FF6  0000              add [bx+si],al
00005FF8  0000              add [bx+si],al
00005FFA  0000              add [bx+si],al
00005FFC  0000              add [bx+si],al
00005FFE  0000              add [bx+si],al
00006000  0000              add [bx+si],al
00006002  0000              add [bx+si],al
00006004  0000              add [bx+si],al
00006006  0000              add [bx+si],al
00006008  0000              add [bx+si],al
0000600A  0000              add [bx+si],al
0000600C  0000              add [bx+si],al
0000600E  0000              add [bx+si],al
00006010  0000              add [bx+si],al
00006012  00C4              add ah,al
00006014  98                cbw
00006015  C498C498          les bx,[bx+si-0x673c]
00006019  0000              add [bx+si],al
0000601B  0000              add [bx+si],al
0000601D  0000              add [bx+si],al
0000601F  0000              add [bx+si],al
00006021  0000              add [bx+si],al
00006023  0000              add [bx+si],al
00006025  0000              add [bx+si],al
00006027  0000              add [bx+si],al
00006029  0000              add [bx+si],al
0000602B  0000              add [bx+si],al
0000602D  0000              add [bx+si],al
0000602F  0000              add [bx+si],al
00006031  0000              add [bx+si],al
00006033  0000              add [bx+si],al
00006035  0000              add [bx+si],al
00006037  0000              add [bx+si],al
00006039  0000              add [bx+si],al
0000603B  0000              add [bx+si],al
0000603D  0000              add [bx+si],al
0000603F  0000              add [bx+si],al
00006041  0000              add [bx+si],al
00006043  0000              add [bx+si],al
00006045  0000              add [bx+si],al
00006047  0000              add [bx+si],al
00006049  0000              add [bx+si],al
0000604B  0000              add [bx+si],al
0000604D  0000              add [bx+si],al
0000604F  0000              add [bx+si],al
00006051  0000              add [bx+si],al
00006053  0000              add [bx+si],al
00006055  0000              add [bx+si],al
00006057  0000              add [bx+si],al
00006059  0000              add [bx+si],al
0000605B  0000              add [bx+si],al
0000605D  0000              add [bx+si],al
0000605F  0000              add [bx+si],al
00006061  0000              add [bx+si],al
00006063  0000              add [bx+si],al
00006065  0000              add [bx+si],al
00006067  0000              add [bx+si],al
00006069  0000              add [bx+si],al
0000606B  0000              add [bx+si],al
0000606D  0000              add [bx+si],al
0000606F  0000              add [bx+si],al
00006071  0000              add [bx+si],al
00006073  0000              add [bx+si],al
00006075  0000              add [bx+si],al
00006077  0000              add [bx+si],al
00006079  0000              add [bx+si],al
0000607B  0000              add [bx+si],al
0000607D  0000              add [bx+si],al
0000607F  0000              add [bx+si],al
00006081  0000              add [bx+si],al
00006083  0000              add [bx+si],al
00006085  0000              add [bx+si],al
00006087  0000              add [bx+si],al
00006089  0000              add [bx+si],al
0000608B  0000              add [bx+si],al
0000608D  0000              add [bx+si],al
0000608F  0000              add [bx+si],al
00006091  0000              add [bx+si],al
00006093  0000              add [bx+si],al
00006095  0000              add [bx+si],al
00006097  0000              add [bx+si],al
00006099  0000              add [bx+si],al
0000609B  0000              add [bx+si],al
0000609D  0000              add [bx+si],al
0000609F  0000              add [bx+si],al
000060A1  0000              add [bx+si],al
000060A3  0000              add [bx+si],al
000060A5  0000              add [bx+si],al
000060A7  0000              add [bx+si],al
000060A9  0000              add [bx+si],al
000060AB  0000              add [bx+si],al
000060AD  0000              add [bx+si],al
000060AF  0000              add [bx+si],al
000060B1  0000              add [bx+si],al
000060B3  0000              add [bx+si],al
000060B5  0000              add [bx+si],al
000060B7  0000              add [bx+si],al
000060B9  0000              add [bx+si],al
000060BB  0000              add [bx+si],al
000060BD  0000              add [bx+si],al
000060BF  0000              add [bx+si],al
000060C1  0000              add [bx+si],al
000060C3  0000              add [bx+si],al
000060C5  0000              add [bx+si],al
000060C7  0000              add [bx+si],al
000060C9  0000              add [bx+si],al
000060CB  0000              add [bx+si],al
000060CD  0000              add [bx+si],al
000060CF  0000              add [bx+si],al
000060D1  0000              add [bx+si],al
000060D3  0000              add [bx+si],al
000060D5  0000              add [bx+si],al
000060D7  0000              add [bx+si],al
000060D9  0000              add [bx+si],al
000060DB  0000              add [bx+si],al
000060DD  0000              add [bx+si],al
000060DF  0000              add [bx+si],al
000060E1  0000              add [bx+si],al
000060E3  0000              add [bx+si],al
000060E5  0000              add [bx+si],al
000060E7  0000              add [bx+si],al
000060E9  0000              add [bx+si],al
000060EB  0000              add [bx+si],al
000060ED  0000              add [bx+si],al
000060EF  0000              add [bx+si],al
000060F1  0000              add [bx+si],al
000060F3  0000              add [bx+si],al
000060F5  0000              add [bx+si],al
000060F7  0000              add [bx+si],al
000060F9  0000              add [bx+si],al
000060FB  0000              add [bx+si],al
000060FD  0000              add [bx+si],al
000060FF  0000              add [bx+si],al
00006101  0000              add [bx+si],al
00006103  0000              add [bx+si],al
00006105  0000              add [bx+si],al
00006107  0000              add [bx+si],al
00006109  0000              add [bx+si],al
0000610B  0001              add [bx+di],al
0000610D  0000              add [bx+si],al
0000610F  0000              add [bx+si],al
00006111  005401            add [si+0x1],dl
00006114  A4                movsb
00006115  01F4              add sp,si
00006117  016C02            add [si+0x2],bp
0000611A  F4                hlt
0000611B  016C02            add [si+0x2],bp
0000611E  FF                db 0xff
0000611F  FF00              inc word [bx+si]
00006121  0000              add [bx+si],al
00006123  0000              add [bx+si],al
00006125  00960064          add [bp+0x6400],dl
00006129  00C8              add al,cl
0000612B  009001C8          add [bx+si-0x37ff],dl
0000612F  0020              add [bx+si],ah
00006131  0300              add ax,[bx+si]
00006133  0000              add [bx+si],al
00006135  0000              add [bx+si],al
00006137  0000              add [bx+si],al
00006139  0000              add [bx+si],al
0000613B  0000              add [bx+si],al
0000613D  0000              add [bx+si],al
0000613F  005401            add [si+0x1],dl
00006142  A4                movsb
00006143  01F4              add sp,si
00006145  016C02            add [si+0x2],bp
00006148  F4                hlt
00006149  016C02            add [si+0x2],bp
0000614C  FF                db 0xff
0000614D  FF00              inc word [bx+si]
0000614F  0000              add [bx+si],al
00006151  0000              add [bx+si],al
00006153  00960064          add [bp+0x6400],dl
00006157  00C8              add al,cl
00006159  009001C8          add [bx+si-0x37ff],dl
0000615D  0020              add [bx+si],ah
0000615F  0300              add ax,[bx+si]
00006161  0000              add [bx+si],al
00006163  0000              add [bx+si],al
00006165  0000              add [bx+si],al
00006167  0000              add [bx+si],al
00006169  0000              add [bx+si],al
0000616B  0000              add [bx+si],al
0000616D  0001              add [bx+di],al
0000616F  0000              add [bx+si],al
00006171  0000              add [bx+si],al
00006173  0000              add [bx+si],al
00006175  50                push ax
00006176  0A4552            or al,[di+0x52]
00006179  52                push dx
0000617A  4F                dec di
0000617B  52                push dx
0000617C  203A              and [bp+si],bh
0000617E  2025              and [di],ah
00006180  7320              jnc 0x61a2
00006182  210A              and [bp+si],cx
00006184  0A09              or cl,[bx+di]
00006186  7072              jo 0x61fa
00006188  657373            gs jnc 0x61fe
0000618B  09616E            or [bx+di+0x6e],sp
0000618E  7909              jns 0x6199
00006190  6B65790A          imul sp,[di+0x79],byte +0xa
00006194  000A              add [bp+si],cl
00006196  09456E            or [di+0x6e],ax
00006199  7465              jz 0x6200
0000619B  7220              jc 0x61bd
0000619D  796F              jns 0x620e
0000619F  7572              jnz 0x6213
000061A1  206E61            and [bp+0x61],ch
000061A4  6D                insw
000061A5  6520696E          and [gs:bx+di+0x6e],ch
000061A9  746F              jz 0x621a
000061AB  207468            and [si+0x68],dh
000061AE  65204869          and [gs:bx+si+0x69],cl
000061B2  67682053          push word 0x5320
000061B6  636F72            arpl [bx+0x72],bp
000061B9  65205461          and [gs:si+0x61],dl
000061BD  626C65            bound bp,[si+0x65]
000061C0  2021              and [bx+di],ah
000061C2  0A0A              or cl,[bp+si]
000061C4  0008              add [bx+si],cl
000061C6  2000              and [bx+si],al
000061C8  41                inc cx
000061C9  6E                outsb
000061CA  6F                outsw
000061CB  6E                outsb
000061CC  796D              jns 0x623b
000061CE  6F                outsw
000061CF  7573              jnz 0x6244
000061D1  007762            add [bx+0x62],dh
000061D4  0025              add [di],ah
000061D6  752E              jnz 0x6206
000061D8  004361            add [bp+di+0x61],al
000061DB  6E                outsb
000061DC  6E                outsb
000061DD  6F                outsw
000061DE  7420              jz 0x6200
000061E0  7772              ja 0x6254
000061E2  6974652063        imul si,[si+0x65],word 0x6320
000061E7  686563            push word 0x6365
000061EA  6B73756D          imul si,[bp+di+0x75],byte +0x6d
000061EE  20746F            and [si+0x6f],dh
000061F1  206669            and [bp+0x69],ah
000061F4  6C                insb
000061F5  65004361          add [gs:bp+di+0x61],al
000061F9  6E                outsb
000061FA  6E                outsb
000061FB  6F                outsw
000061FC  7420              jz 0x621e
000061FE  7772              ja 0x6272
00006200  6974652068        imul si,[si+0x65],word 0x6820
00006205  6967682073        imul sp,[bx+0x68],word 0x7320
0000620A  636F72            arpl [bx+0x72],bp
0000620D  65207461          and [gs:si+0x61],dh
00006211  626C65            bound bp,[si+0x65]
00006214  20746F            and [si+0x6f],dh
00006217  206669            and [bp+0x69],ah
0000621A  6C                insb
0000621B  65004361          add [gs:bp+di+0x61],al
0000621F  6E                outsb
00006220  6E                outsb
00006221  6F                outsw
00006222  7420              jz 0x6244
00006224  6F                outsw
00006225  7065              jo 0x628c
00006227  6E                outsb
00006228  206669            and [bp+0x69],ah
0000622B  6C                insb
0000622C  6520746F          and [gs:si+0x6f],dh
00006230  207361            and [bp+di+0x61],dh
00006233  7665              jna 0x629a
00006235  206869            and [bx+si+0x69],ch
00006238  67682073          push word 0x7320
0000623C  636F72            arpl [bx+0x72],bp
0000623F  65007262          add [gs:bp+si+0x62],dh
00006243  004361            add [bp+di+0x61],al
00006246  6E                outsb
00006247  6E                outsb
00006248  6F                outsw
00006249  7420              jz 0x626b
0000624B  7265              jc 0x62b2
0000624D  61                popaw
0000624E  64206368          and [fs:bp+di+0x68],ah
00006252  65636B73          arpl [gs:bp+di+0x73],bp
00006256  756D              jnz 0x62c5
00006258  206672            and [bp+0x72],ah
0000625B  6F                outsw
0000625C  6D                insw
0000625D  206669            and [bp+0x69],ah
00006260  6C                insb
00006261  6500436F          add [gs:bp+di+0x6f],al
00006265  756C              jnz 0x62d3
00006267  64206E6F          and [fs:bp+0x6f],ch
0000626B  7420              jz 0x628d
0000626D  7265              jc 0x62d4
0000626F  61                popaw
00006270  64207461          and [fs:si+0x61],dh
00006274  626C65            bound bp,[si+0x65]
00006277  2C20              sub al,0x20
00006279  7374              jnc 0x62ef
0000627B  61                popaw
0000627C  7274              jc 0x62f2
0000627E  696E67206E        imul bp,[bp+0x67],word 0x6e20
00006283  657720            gs ja 0x62a6
00006286  7461              jz 0x62e9
00006288  626C65            bound bp,[si+0x65]
0000628B  004869            add [bx+si+0x69],cl
0000628E  67682073          push word 0x7320
00006292  636F72            arpl [bx+0x72],bp
00006295  65207461          and [gs:si+0x61],dh
00006299  626C65            bound bp,[si+0x65]
0000629C  20636F            and [bp+di+0x6f],ah
0000629F  7272              jc 0x6313
000062A1  7570              jnz 0x6313
000062A3  7465              jz 0x630a
000062A5  640009            add [fs:bx+di],cl
000062A8  000A              add [bp+si],cl
000062AA  0A0A              or cl,[bp+si]
000062AC  0909              or [bx+di],cx
000062AE  48                dec ax
000062AF  204920            and [bx+di+0x20],cl
000062B2  47                inc di
000062B3  204820            and [bx+si+0x20],cl
000062B6  2020              and [bx+si],ah
000062B8  2020              and [bx+si],ah
000062BA  2020              and [bx+si],ah
000062BC  2020              and [bx+si],ah
000062BE  205320            and [bp+di+0x20],dl
000062C1  43                inc bx
000062C2  204F20            and [bx+0x20],cl
000062C5  52                push dx
000062C6  204520            and [di+0x20],al
000062C9  2020              and [bx+si],ah
000062CB  2020              and [bx+si],ah
000062CD  2020              and [bx+si],ah
000062CF  2020              and [bx+si],ah
000062D1  205420            and [si+0x20],dl
000062D4  41                inc cx
000062D5  204220            and [bp+si+0x20],al
000062D8  4C                dec sp
000062D9  20450A            and [di+0xa],al
000062DC  0009              add [bx+di],cl
000062DE  2A2A              sub ch,[bp+si]
000062E0  2A2A              sub ch,[bp+si]
000062E2  2A2A              sub ch,[bp+si]
000062E4  2A2A              sub ch,[bp+si]
000062E6  2A2A              sub ch,[bp+si]
000062E8  2A2A              sub ch,[bp+si]
000062EA  2A2A              sub ch,[bp+si]
000062EC  2A2A              sub ch,[bp+si]
000062EE  2A2A              sub ch,[bp+si]
000062F0  2A2A              sub ch,[bp+si]
000062F2  2A2A              sub ch,[bp+si]
000062F4  2A2A              sub ch,[bp+si]
000062F6  2A2A              sub ch,[bp+si]
000062F8  2A2A              sub ch,[bp+si]
000062FA  2A2A              sub ch,[bp+si]
000062FC  2A2A              sub ch,[bp+si]
000062FE  2A2A              sub ch,[bp+si]
00006300  2A2A              sub ch,[bp+si]
00006302  2A2A              sub ch,[bp+si]
00006304  2A2A              sub ch,[bp+si]
00006306  2A2A              sub ch,[bp+si]
00006308  2A2A              sub ch,[bp+si]
0000630A  2A2A              sub ch,[bp+si]
0000630C  2A2A              sub ch,[bp+si]
0000630E  2A2A              sub ch,[bp+si]
00006310  2A2A              sub ch,[bp+si]
00006312  2A2A              sub ch,[bp+si]
00006314  2A2A              sub ch,[bp+si]
00006316  2A2A              sub ch,[bp+si]
00006318  2A2A              sub ch,[bp+si]
0000631A  2A0A              sub cl,[bp+si]
0000631C  0A00              or al,[bx+si]
0000631E  0909              or [bx+di],cx
00006320  257309            and ax,0x973
00006323  2E2E2E2E2E2E0909  or [cs:bx+di],cx
0000632B  256C64            and ax,0x646c
0000632E  0A0A              or cl,[bp+si]
00006330  000A              add [bp+si],cl
00006332  0909              or [bx+di],cx
00006334  50                push ax
00006335  205220            and [bp+si+0x20],dl
00006338  45                inc bp
00006339  205320            and [bp+di+0x20],dl
0000633C  53                push bx
0000633D  2020              and [bx+si],ah
0000633F  2020              and [bx+si],ah
00006341  2020              and [bx+si],ah
00006343  2020              and [bx+si],ah
00006345  204120            and [bx+di+0x20],al
00006348  4E                dec si
00006349  205920            and [bx+di+0x20],bl
0000634C  2020              and [bx+si],ah
0000634E  2020              and [bx+si],ah
00006350  2020              and [bx+si],ah
00006352  2020              and [bx+si],ah
00006354  4B                dec bx
00006355  204520            and [di+0x20],al
00006358  59                pop cx
00006359  005363            add [bp+di+0x63],dl
0000635C  6F                outsw
0000635D  7265              jc 0x63c4
0000635F  2020              and [bx+si],ah
00006361  2020              and [bx+si],ah
00006363  3A20              cmp ah,[bx+si]
00006365  004869            add [bx+si+0x69],cl
00006368  2D5363            sub ax,0x6353
0000636B  6F                outsw
0000636C  7265              jc 0x63d3
0000636E  203A              and [bp+si],bh
00006370  2000              and [bx+si],al
00006372  3030              xor [bx+si],dh
00006374  3030              xor [bx+si],dh
00006376  3030              xor [bx+si],dh
00006378  3030              xor [bx+si],dh
0000637A  3030              xor [bx+si],dh
0000637C  3030              xor [bx+si],dh
0000637E  0020              add [bx+si],ah
00006380  205375            and [bp+di+0x75],dl
00006383  7070              jo 0x63f5
00006385  6F                outsw
00006386  7274              jc 0x63fc
00006388  205368            and [bp+di+0x68],dl
0000638B  61                popaw
0000638C  7265              jc 0x63f3
0000638E  57                push di
0000638F  61                popaw
00006390  7265              jc 0x63f7
00006392  202C              and [si],ch
00006394  205265            and [bp+si+0x65],dl
00006397  676973746572      imul si,[ebx+0x74],word 0x7265
0000639D  204E6F            and [bp+0x6f],cl
000063A0  7720              ja 0x63c2
000063A2  2120              and [bx+si],sp
000063A4  2020              and [bx+si],ah
000063A6  0020              add [bx+si],ah
000063A8  205072            and [bx+si+0x72],dl
000063AB  657373            gs jnc 0x6421
000063AE  20616E            and [bx+di+0x6e],ah
000063B1  7920              jns 0x63d3
000063B3  6B657920          imul sp,[di+0x79],byte +0x20
000063B7  746F              jz 0x6428
000063B9  20706C            and [bx+si+0x6c],dh
000063BC  61                popaw
000063BD  7920              jns 0x63df
000063BF  6F                outsw
000063C0  7220              jc 0x63e2
000063C2  45                inc bp
000063C3  53                push bx
000063C4  43                inc bx
000063C5  20746F            and [si+0x6f],dh
000063C8  207175            and [bx+di+0x75],dh
000063CB  6974210020        imul si,[si+0x21],word 0x2000
000063D0  204B45            and [bp+di+0x45],cl
000063D3  59                pop cx
000063D4  53                push bx
000063D5  2020              and [bx+si],ah
000063D7  3A20              cmp ah,[bx+si]
000063D9  2020              and [bx+si],ah
000063DB  2020              and [bx+si],ah
000063DD  51                push cx
000063DE  202D              and [di],ch
000063E0  205570            and [di+0x70],dl
000063E3  2020              and [bx+si],ah
000063E5  2020              and [bx+si],ah
000063E7  204120            and [bx+di+0x20],al
000063EA  2D2044            sub ax,0x4420
000063ED  6F                outsw
000063EE  776E              ja 0x645e
000063F0  2020              and [bx+si],ah
000063F2  2020              and [bx+si],ah
000063F4  2020              and [bx+si],ah
000063F6  0020              add [bx+si],ah
000063F8  204F20            and [bx+0x20],cl
000063FB  2D204C            sub ax,0x4c20
000063FE  65667420          gs o32 jz 0x6422
00006402  2020              and [bx+si],ah
00006404  205020            and [bx+si+0x20],dl
00006407  2D2052            sub ax,0x5220
0000640A  6967687420        imul sp,[bx+0x68],word 0x2074
0000640F  2020              and [bx+si],ah
00006411  205370            and [bp+di+0x70],dl
00006414  61                popaw
00006415  636520            arpl [di+0x20],sp
00006418  2D2046            sub ax,0x4620
0000641B  6972650020        imul si,[bp+si+0x65],word 0x2000
00006420  205072            and [bx+si+0x72],dl
00006423  657373            gs jnc 0x6499
00006426  20414C            and [bx+di+0x4c],al
00006429  54                push sp
0000642A  2D5320            sub ax,0x2053
0000642D  746F              jz 0x649e
0000642F  20746F            and [si+0x6f],dh
00006432  67676C            a32 insb
00006435  6520736F          and [gs:bp+di+0x6f],dh
00006439  756E              jnz 0x64a9
0000643B  64204F4E          and [fs:bx+0x4e],cl
0000643F  206F72            and [bx+0x72],ch
00006442  204F46            and [bx+0x46],cl
00006445  46                inc si
00006446  0020              add [bx+si],ah
00006448  204D65            and [di+0x65],cl
0000644B  6761              a32 popaw
0000644D  7065              jo 0x64b4
0000644F  64652020          and [gs:bx+si],ah
00006453  2020              and [bx+si],ah
00006455  286329            sub [bp+di+0x29],ah
00006458  2020              and [bx+si],ah
0000645A  44                inc sp
0000645B  6F                outsw
0000645C  6D                insw
0000645D  2E204561          and [cs:di+0x61],al
00006461  726C              jc 0x64cf
00006463  7920              jns 0x6485
00006465  2020              and [bx+si],ah
00006467  3139              xor [bx+di],di
00006469  3932              cmp [bp+si],si
0000646B  2020              and [bx+si],ah
0000646D  2000              and [bx+si],al
0000646F  42                inc dx
00006470  49                dec cx
00006471  4F                dec di
00006472  53                push bx
00006473  005649            add [bp+0x49],dl
00006476  44                inc sp
00006477  45                inc bp
00006478  4F                dec di
00006479  005573            add [di+0x73],dl
0000647C  61                popaw
0000647D  6765203A          and [gs:edx],bh
00006481  2025              and [di],ah
00006483  7320              jnc 0x64a5
00006485  5B                pop bx
00006486  647269            fs jc 0x64f2
00006489  7665              jna 0x64f0
0000648B  725D              jc 0x64ea
0000648D  2C20              sub al,0x20
0000648F  7768              ja 0x64f9
00006491  657265            gs jc 0x64f9
00006494  206472            and [si+0x72],ah
00006497  6976657220        imul si,[bp+0x65],word 0x2072
0000649C  6973206569        imul si,[bp+di+0x20],word 0x6965
000064A1  7468              jz 0x650b
000064A3  657220            gs jc 0x64c6
000064A6  56                push si
000064A7  49                dec cx
000064A8  44                inc sp
000064A9  45                inc bp
000064AA  4F                dec di
000064AB  206F72            and [bx+0x72],ch
000064AE  204249            and [bp+si+0x49],al
000064B1  4F                dec di
000064B2  53                push bx
000064B3  2E0A4966          or cl,[cs:bx+di+0x66]
000064B7  206E6F            and [bp+0x6f],ch
000064BA  206472            and [si+0x72],ah
000064BD  6976657220        imul si,[bp+0x65],word 0x2072
000064C2  6973207370        imul si,[bp+di+0x20],word 0x7073
000064C7  65636966          arpl [gs:bx+di+0x66],bp
000064CB  6965642074        imul sp,[di+0x64],word 0x7420
000064D0  686520            push word 0x2065
000064D3  64656661          gs popad
000064D7  756C              jnz 0x6545
000064D9  7420              jz 0x64fb
000064DB  56                push si
000064DC  49                dec cx
000064DD  44                inc sp
000064DE  45                inc bp
000064DF  4F                dec di
000064E0  647269            fs jc 0x654c
000064E3  7665              jna 0x654a
000064E5  7220              jc 0x6507
000064E7  6973207573        imul si,[bp+di+0x20],word 0x7375
000064EC  65642E0A0A        or cl,[cs:bp+si]
000064F1  4E                dec si
000064F2  6F                outsw
000064F3  7720              ja 0x6515
000064F5  7573              jnz 0x656a
000064F7  696E672044        imul bp,[bp+0x67],word 0x4420
000064FC  656661            gs popad
000064FF  756C              jnz 0x656d
00006501  7420              jz 0x6523
00006503  647269            fs jc 0x656f
00006506  7665              jna 0x656d
00006508  722E              jc 0x6538
0000650A  006D65            add [di+0x65],ch
0000650D  6761              a32 popaw
0000650F  7065              jo 0x6576
00006511  64652E7363        cs jnc 0x6579
00006516  7200              jc 0x6518
00006518  0000              add [bx+si],al
0000651A  0013              add [bp+di],dl
0000651C  0202              add al,[bp+si]
0000651E  0405              add al,0x5
00006520  06                push es
00006521  0808              or [bx+si],cl
00006523  0814              or [si],dl
00006525  150513            adc ax,0x1305
00006528  FF160511          call word [0x1105]
0000652C  02FF              add bh,bh
0000652E  FF                db 0xff
0000652F  FF                db 0xff
00006530  FF                db 0xff
00006531  FF                db 0xff
00006532  FF                db 0xff
00006533  FF                db 0xff
00006534  FF                db 0xff
00006535  FF                db 0xff
00006536  FF                db 0xff
00006537  FF                db 0xff
00006538  FF                db 0xff
00006539  FF05              inc word [di]
0000653B  05FFFF            add ax,0xffff
0000653E  FF                db 0xff
0000653F  FF                db 0xff
00006540  FF                db 0xff
00006541  FF                db 0xff
00006542  FF                db 0xff
00006543  FF                db 0xff
00006544  FF                db 0xff
00006545  FF                db 0xff
00006546  FF                db 0xff
00006547  FF                db 0xff
00006548  FF                db 0xff
00006549  FF                db 0xff
0000654A  FF                db 0xff
0000654B  FF0F              dec word [bx]
0000654D  FF23              jmp word [bp+di]
0000654F  02FF              add bh,bh
00006551  0FFF              ud0
00006553  FF                db 0xff
00006554  FF                db 0xff
00006555  FF13              call word [bp+di]
00006557  FF                db 0xff
00006558  FF02              inc word [bp+si]
0000655A  0205              add al,[di]
0000655C  0F02FF            lar di,di
0000655F  FF                db 0xff
00006560  FF13              call word [bp+di]
00006562  FF                db 0xff
00006563  FF                db 0xff
00006564  FF                db 0xff
00006565  FF                db 0xff
00006566  FF                db 0xff
00006567  FF                db 0xff
00006568  FF                db 0xff
00006569  FF23              jmp word [bp+di]
0000656B  FF                db 0xff
0000656C  FF                db 0xff
0000656D  FF                db 0xff
0000656E  FF23              jmp word [bp+di]
00006570  FF13              call word [bp+di]
00006572  FF00              inc word [bx+si]
00006574  87268726          xchg sp,[0x2687]
00006578  87260000          xchg sp,[0x0]
0000657C  0000              add [bx+si],al
0000657E  0020              add [bx+si],ah
00006580  2020              and [bx+si],ah
00006582  2020              and [bx+si],ah
00006584  2020              and [bx+si],ah
00006586  2020              and [bx+si],ah
00006588  2121              and [bx+di],sp
0000658A  2121              and [bx+di],sp
0000658C  2120              and [bx+si],sp
0000658E  2020              and [bx+si],ah
00006590  2020              and [bx+si],ah
00006592  2020              and [bx+si],ah
00006594  2020              and [bx+si],ah
00006596  2020              and [bx+si],ah
00006598  2020              and [bx+si],ah
0000659A  2020              and [bx+si],ah
0000659C  2020              and [bx+si],ah
0000659E  2001              and [bx+di],al
000065A0  40                inc ax
000065A1  40                inc ax
000065A2  40                inc ax
000065A3  40                inc ax
000065A4  40                inc ax
000065A5  40                inc ax
000065A6  40                inc ax
000065A7  40                inc ax
000065A8  40                inc ax
000065A9  40                inc ax
000065AA  40                inc ax
000065AB  40                inc ax
000065AC  40                inc ax
000065AD  40                inc ax
000065AE  40                inc ax
000065AF  0202              add al,[bp+si]
000065B1  0202              add al,[bp+si]
000065B3  0202              add al,[bp+si]
000065B5  0202              add al,[bp+si]
000065B7  0202              add al,[bp+si]
000065B9  40                inc ax
000065BA  40                inc ax
000065BB  40                inc ax
000065BC  40                inc ax
000065BD  40                inc ax
000065BE  40                inc ax
000065BF  40                inc ax
000065C0  1414              adc al,0x14
000065C2  1414              adc al,0x14
000065C4  1414              adc al,0x14
000065C6  0404              add al,0x4
000065C8  0404              add al,0x4
000065CA  0404              add al,0x4
000065CC  0404              add al,0x4
000065CE  0404              add al,0x4
000065D0  0404              add al,0x4
000065D2  0404              add al,0x4
000065D4  0404              add al,0x4
000065D6  0404              add al,0x4
000065D8  0404              add al,0x4
000065DA  40                inc ax
000065DB  40                inc ax
000065DC  40                inc ax
000065DD  40                inc ax
000065DE  40                inc ax
000065DF  40                inc ax
000065E0  1818              sbb [bx+si],bl
000065E2  1818              sbb [bx+si],bl
000065E4  1818              sbb [bx+si],bl
000065E6  0808              or [bx+si],cl
000065E8  0808              or [bx+si],cl
000065EA  0808              or [bx+si],cl
000065EC  0808              or [bx+si],cl
000065EE  0808              or [bx+si],cl
000065F0  0808              or [bx+si],cl
000065F2  0808              or [bx+si],cl
000065F4  0808              or [bx+si],cl
000065F6  0808              or [bx+si],cl
000065F8  0808              or [bx+si],cl
000065FA  40                inc ax
000065FB  40                inc ax
000065FC  40                inc ax
000065FD  40                inc ax
000065FE  2000              and [bx+si],al
00006600  0000              add [bx+si],al
00006602  0000              add [bx+si],al
00006604  0000              add [bx+si],al
00006606  0000              add [bx+si],al
00006608  0000              add [bx+si],al
0000660A  0000              add [bx+si],al
0000660C  0000              add [bx+si],al
0000660E  0000              add [bx+si],al
00006610  0000              add [bx+si],al
00006612  0000              add [bx+si],al
00006614  0000              add [bx+si],al
00006616  0000              add [bx+si],al
00006618  0000              add [bx+si],al
0000661A  0000              add [bx+si],al
0000661C  0000              add [bx+si],al
0000661E  0000              add [bx+si],al
00006620  0000              add [bx+si],al
00006622  0000              add [bx+si],al
00006624  0000              add [bx+si],al
00006626  0000              add [bx+si],al
00006628  0000              add [bx+si],al
0000662A  0000              add [bx+si],al
0000662C  0000              add [bx+si],al
0000662E  0000              add [bx+si],al
00006630  0000              add [bx+si],al
00006632  0000              add [bx+si],al
00006634  0000              add [bx+si],al
00006636  0000              add [bx+si],al
00006638  0000              add [bx+si],al
0000663A  0000              add [bx+si],al
0000663C  0000              add [bx+si],al
0000663E  0000              add [bx+si],al
00006640  0000              add [bx+si],al
00006642  0000              add [bx+si],al
00006644  0000              add [bx+si],al
00006646  0000              add [bx+si],al
00006648  0000              add [bx+si],al
0000664A  0000              add [bx+si],al
0000664C  0000              add [bx+si],al
0000664E  0000              add [bx+si],al
00006650  0000              add [bx+si],al
00006652  0000              add [bx+si],al
00006654  0000              add [bx+si],al
00006656  0000              add [bx+si],al
00006658  0000              add [bx+si],al
0000665A  0000              add [bx+si],al
0000665C  0000              add [bx+si],al
0000665E  0000              add [bx+si],al
00006660  0000              add [bx+si],al
00006662  0000              add [bx+si],al
00006664  0000              add [bx+si],al
00006666  0000              add [bx+si],al
00006668  0000              add [bx+si],al
0000666A  0000              add [bx+si],al
0000666C  0000              add [bx+si],al
0000666E  0000              add [bx+si],al
00006670  0000              add [bx+si],al
00006672  0000              add [bx+si],al
00006674  0000              add [bx+si],al
00006676  0000              add [bx+si],al
00006678  0000              add [bx+si],al
0000667A  0000              add [bx+si],al
0000667C  0000              add [bx+si],al
0000667E  0000              add [bx+si],al
00006680  0000              add [bx+si],al
00006682  0902              or [bp+si],ax
00006684  0000              add [bx+si],al
00006686  0000              add [bx+si],al
00006688  0000              add [bx+si],al
0000668A  0000              add [bx+si],al
0000668C  0000              add [bx+si],al
0000668E  80660000          and byte [bp+0x0],0x0
00006692  0A02              or al,[bp+si]
00006694  0100              add [bx+si],ax
00006696  0000              add [bx+si],al
00006698  0000              add [bx+si],al
0000669A  0000              add [bx+si],al
0000669C  0000              add [bx+si],al
0000669E  90                nop
0000669F  660000            o32 add [bx+si],al
000066A2  0202              add al,[bp+si]
000066A4  0200              add al,[bx+si]
000066A6  0000              add [bx+si],al
000066A8  0000              add [bx+si],al
000066AA  0000              add [bx+si],al
000066AC  0000              add [bx+si],al
000066AE  A06600            mov al,[0x66]
000066B1  004302            add [bp+di+0x2],al
000066B4  0300              add ax,[bx+si]
000066B6  0000              add [bx+si],al
000066B8  0000              add [bx+si],al
000066BA  0000              add [bx+si],al
000066BC  0000              add [bx+si],al
000066BE  B066              mov al,0x66
000066C0  0000              add [bx+si],al
000066C2  42                inc dx
000066C3  0204              add al,[si]
000066C5  0000              add [bx+si],al
000066C7  0000              add [bx+si],al
000066C9  0000              add [bx+si],al
000066CB  0000              add [bx+si],al
000066CD  00C0              add al,al
000066CF  660000            o32 add [bx+si],al
000066D2  0000              add [bx+si],al
000066D4  FF00              inc word [bx+si]
000066D6  0000              add [bx+si],al
000066D8  0000              add [bx+si],al
000066DA  0000              add [bx+si],al
000066DC  0000              add [bx+si],al
000066DE  D06600            shl byte [bp+0x0],1
000066E1  0000              add [bx+si],al
000066E3  00FF              add bh,bh
000066E5  0000              add [bx+si],al
000066E7  0000              add [bx+si],al
000066E9  0000              add [bx+si],al
000066EB  0000              add [bx+si],al
000066ED  00E0              add al,ah
000066EF  660000            o32 add [bx+si],al
000066F2  0000              add [bx+si],al
000066F4  FF00              inc word [bx+si]
000066F6  0000              add [bx+si],al
000066F8  0000              add [bx+si],al
000066FA  0000              add [bx+si],al
000066FC  0000              add [bx+si],al
000066FE  F0660000          lock o32 add [bx+si],al
00006702  0000              add [bx+si],al
00006704  FF00              inc word [bx+si]
00006706  0000              add [bx+si],al
00006708  0000              add [bx+si],al
0000670A  0000              add [bx+si],al
0000670C  0000              add [bx+si],al
0000670E  006700            add [bx+0x0],ah
00006711  0000              add [bx+si],al
00006713  00FF              add bh,bh
00006715  0000              add [bx+si],al
00006717  0000              add [bx+si],al
00006719  0000              add [bx+si],al
0000671B  0000              add [bx+si],al
0000671D  0010              add [bx+si],dl
0000671F  670000            add [eax],al
00006722  0000              add [bx+si],al
00006724  FF00              inc word [bx+si]
00006726  0000              add [bx+si],al
00006728  0000              add [bx+si],al
0000672A  0000              add [bx+si],al
0000672C  0000              add [bx+si],al
0000672E  206700            and [bx+0x0],ah
00006731  0000              add [bx+si],al
00006733  00FF              add bh,bh
00006735  0000              add [bx+si],al
00006737  0000              add [bx+si],al
00006739  0000              add [bx+si],al
0000673B  0000              add [bx+si],al
0000673D  0030              add [bx+si],dh
0000673F  670000            add [eax],al
00006742  0000              add [bx+si],al
00006744  FF00              inc word [bx+si]
00006746  0000              add [bx+si],al
00006748  0000              add [bx+si],al
0000674A  0000              add [bx+si],al
0000674C  0000              add [bx+si],al
0000674E  40                inc ax
0000674F  670000            add [eax],al
00006752  0000              add [bx+si],al
00006754  FF00              inc word [bx+si]
00006756  0000              add [bx+si],al
00006758  0000              add [bx+si],al
0000675A  0000              add [bx+si],al
0000675C  0000              add [bx+si],al
0000675E  50                push ax
0000675F  670000            add [eax],al
00006762  0000              add [bx+si],al
00006764  FF00              inc word [bx+si]
00006766  0000              add [bx+si],al
00006768  0000              add [bx+si],al
0000676A  0000              add [bx+si],al
0000676C  0000              add [bx+si],al
0000676E  60                pushaw
0000676F  670000            add [eax],al
00006772  0000              add [bx+si],al
00006774  FF00              inc word [bx+si]
00006776  0000              add [bx+si],al
00006778  0000              add [bx+si],al
0000677A  0000              add [bx+si],al
0000677C  0000              add [bx+si],al
0000677E  7067              jo 0x67e7
00006780  0000              add [bx+si],al
00006782  0000              add [bx+si],al
00006784  FF00              inc word [bx+si]
00006786  0000              add [bx+si],al
00006788  0000              add [bx+si],al
0000678A  0000              add [bx+si],al
0000678C  0000              add [bx+si],al
0000678E  80670000          and byte [bx+0x0],0x0
00006792  0000              add [bx+si],al
00006794  FF00              inc word [bx+si]
00006796  0000              add [bx+si],al
00006798  0000              add [bx+si],al
0000679A  0000              add [bx+si],al
0000679C  0000              add [bx+si],al
0000679E  90                nop
0000679F  670000            add [eax],al
000067A2  0000              add [bx+si],al
000067A4  FF00              inc word [bx+si]
000067A6  0000              add [bx+si],al
000067A8  0000              add [bx+si],al
000067AA  0000              add [bx+si],al
000067AC  0000              add [bx+si],al
000067AE  A06700            mov al,[0x67]
000067B1  0000              add [bx+si],al
000067B3  00FF              add bh,bh
000067B5  0000              add [bx+si],al
000067B7  0000              add [bx+si],al
000067B9  0000              add [bx+si],al
000067BB  0000              add [bx+si],al
000067BD  00B06701          add [bx+si+0x167],dh
000067C1  2002              and [bp+si],al
000067C3  2002              and [bp+si],al
000067C5  2004              and [si],al
000067C7  A002A0            mov al,[0xa002]
000067CA  FF                db 0xff
000067CB  FF                db 0xff
000067CC  FF                db 0xff
000067CD  FF                db 0xff
000067CE  FF                db 0xff
000067CF  FF                db 0xff
000067D0  FF                db 0xff
000067D1  FF                db 0xff
000067D2  FF                db 0xff
000067D3  FF                db 0xff
000067D4  FF                db 0xff
000067D5  FF                db 0xff
000067D6  FF                db 0xff
000067D7  FF                db 0xff
000067D8  FF                db 0xff
000067D9  FF                db 0xff
000067DA  FF                db 0xff
000067DB  FF                db 0xff
000067DC  FF                db 0xff
000067DD  FF                db 0xff
000067DE  FF                db 0xff
000067DF  FF                db 0xff
000067E0  FF                db 0xff
000067E1  FF                db 0xff
000067E2  FF                db 0xff
000067E3  FF                db 0xff
000067E4  FF                db 0xff
000067E5  FF                db 0xff
000067E6  FF                db 0xff
000067E7  FF00              inc word [bx+si]
000067E9  40                inc ax
000067EA  FF                db 0xff
000067EB  FF00              inc word [bx+si]
000067ED  0000              add [bx+si],al
000067EF  00544D            add [si+0x4d],dl
000067F2  50                push ax
000067F3  002E2424          add [0x2424],ch
000067F7  2400              and al,0x0
000067F9  007072            add [bx+si+0x72],dh
000067FC  696E742073        imul bp,[bp+0x74],word 0x7320
00006801  63616E            arpl [bx+di+0x6e],sp
00006804  66203A            o32 and [bp+si],bh
00006807  20666C            and [bp+0x6c],ah
0000680A  6F                outsw
0000680B  61                popaw
0000680C  7469              jz 0x6877
0000680E  6E                outsb
0000680F  6720706F          and [eax+0x6f],dh
00006813  696E742066        imul bp,[bp+0x74],word 0x6620
00006818  6F                outsw
00006819  726D              jc 0x6888
0000681B  61                popaw
0000681C  7473              jz 0x6891
0000681E  206E6F            and [bp+0x6f],ch
00006821  7420              jz 0x6843
00006823  6C                insb
00006824  696E6B6564        imul bp,[bp+0x6b],word 0x6465
00006829  0D0A00            or ax,0xa
0000682C  0D0028            or ax,0x2800
0000682F  6E                outsb
00006830  756C              jnz 0x689e
00006832  6C                insb
00006833  2900              sub [bx+si],ax
00006835  3031              xor [bx+di],dh
00006837  3233              xor dh,[bp+di]
00006839  3435              xor al,0x35
0000683B  3637              ss aaa
0000683D  3839              cmp [bx+di],bh
0000683F  41                inc cx
00006840  42                inc dx
00006841  43                inc bx
00006842  44                inc sp
00006843  45                inc bp
00006844  46                inc si
00006845  0014              add [si],dl
00006847  1401              adc al,0x1
00006849  1415              adc al,0x15
0000684B  1414              adc al,0x14
0000684D  1414              adc al,0x14
0000684F  0200              add al,[bx+si]
00006851  1403              adc al,0x3
00006853  0414              add al,0x14
00006855  0905              or [di],ax
00006857  050505            add ax,0x505
0000685A  050505            add ax,0x505
0000685D  050514            add ax,0x1405
00006860  1414              adc al,0x14
00006862  1414              adc al,0x14
00006864  1414              adc al,0x14
00006866  1414              adc al,0x14
00006868  1414              adc al,0x14
0000686A  0F170F            movhps qword [bx],xmm1
0000686D  0814              or [si],dl
0000686F  1414              adc al,0x14
00006871  07                pop es
00006872  1416              adc al,0x16
00006874  1414              adc al,0x14
00006876  1414              adc al,0x14
00006878  1414              adc al,0x14
0000687A  1414              adc al,0x14
0000687C  140D              adc al,0xd
0000687E  1414              adc al,0x14
00006880  1414              adc al,0x14
00006882  1414              adc al,0x14
00006884  1414              adc al,0x14
00006886  1414              adc al,0x14
00006888  100A              adc [bp+si],cl
0000688A  0F                db 0x0f
0000688B  0F                db 0x0f
0000688C  0F08              invd
0000688E  0A14              or dl,[si]
00006890  1406              adc al,0x6
00006892  1412              adc al,0x12
00006894  0B0E1414          or cx,[0x1414]
00006898  1114              adc [si],dx
0000689A  0C14              or al,0x14
0000689C  140D              adc al,0xd
0000689E  1414              adc al,0x14
000068A0  1414              adc al,0x14
000068A2  1414              adc al,0x14
000068A4  1400              adc al,0x0
000068A6  0000              add [bx+si],al
000068A8  0000              add [bx+si],al
000068AA  0000              add [bx+si],al
000068AC  0000              add [bx+si],al
000068AE  0000              add [bx+si],al
000068B0  0000              add [bx+si],al
000068B2  0000              add [bx+si],al
000068B4  0001              add [bx+di],al
000068B6  00434F            add [bp+di+0x4f],al
000068B9  4D                dec bp
000068BA  50                push ax
000068BB  41                inc cx
000068BC  51                push cx
000068BD  0000              add [bx+si],al
000068BF  0000              add [bx+si],al
000068C1  0202              add al,[bp+si]
000068C3  0202              add al,[bp+si]
000068C5  0202              add al,[bp+si]
000068C7  0202              add al,[bp+si]
000068C9  0101              add [bx+di],ax
000068CB  0101              add [bx+di],ax
000068CD  0102              add [bp+si],ax
000068CF  0202              add al,[bp+si]
000068D1  0202              add al,[bp+si]
000068D3  0202              add al,[bp+si]
000068D5  0202              add al,[bp+si]
000068D7  0202              add al,[bp+si]
000068D9  0202              add al,[bp+si]
000068DB  0202              add al,[bp+si]
000068DD  0202              add al,[bp+si]
000068DF  0201              add al,[bx+di]
000068E1  0202              add al,[bp+si]
000068E3  0202              add al,[bp+si]
000068E5  0302              add ax,[bp+si]
000068E7  0202              add al,[bp+si]
000068E9  0204              add al,[si]
000068EB  0202              add al,[bp+si]
000068ED  0202              add al,[bp+si]
000068EF  0205              add al,[di]
000068F1  050505            add ax,0x505
000068F4  050505            add ax,0x505
000068F7  050505            add ax,0x505
000068FA  0202              add al,[bp+si]
000068FC  0202              add al,[bp+si]
000068FE  0202              add al,[bp+si]
00006900  0202              add al,[bp+si]
00006902  0202              add al,[bp+si]
00006904  07                pop es
00006905  0A15              or dl,[di]
00006907  0A0C              or cl,[si]
00006909  0902              or [bp+si],ax
0000690B  020B              add cl,[bp+di]
0000690D  0214              add dl,[si]
0000690F  0E                push cs
00006910  0202              add al,[bp+si]
00006912  0202              add al,[bp+si]
00006914  0208              add cl,[bx+si]
00006916  0202              add al,[bp+si]
00006918  1202              adc al,[bp+si]
0000691A  0210              add dl,[bx+si]
0000691C  0210              add dl,[bx+si]
0000691E  0202              add al,[bp+si]
00006920  0202              add al,[bp+si]
00006922  0206070A          add al,[0xa07]
00006926  0A0A              or cl,[bp+si]
00006928  0C09              or al,0x9
0000692A  0202              add al,[bp+si]
0000692C  0D0211            or ax,0x1102
0000692F  0E                push cs
00006930  1302              adc ax,[bp+si]
00006932  020F              add cl,[bx]
00006934  0208              add cl,[bx+si]
00006936  0202              add al,[bp+si]
00006938  1202              adc al,[bp+si]
0000693A  0202              add al,[bp+si]
0000693C  0202              add al,[bp+si]
0000693E  0202              add al,[bp+si]
00006940  0100              add [bx+si],ax
00006942  0000              add [bx+si],al
00006944  1F                pop ds
00006945  1C1F              sbb al,0x1f
00006947  1E                push ds
00006948  1F                pop ds
00006949  1E                push ds
0000694A  1F                pop ds
0000694B  1F                pop ds
0000694C  1E                push ds
0000694D  1F                pop ds
0000694E  1E                push ds
0000694F  1F                pop ds
00006950  1F                pop ds
00006951  1C1F              sbb al,0x1f
00006953  1E                push ds
00006954  1F                pop ds
00006955  1E                push ds
00006956  1F                pop ds
00006957  1F                pop ds
00006958  1E                push ds
00006959  1F                pop ds
0000695A  1E                push ds
0000695B  1F                pop ds
0000695C  0000              add [bx+si],al
0000695E  1F                pop ds
0000695F  003B              add [bp+di],bh
00006961  005A00            add [bp+si+0x0],bl
00006964  7800              js 0x6966
00006966  97                xchg ax,di
00006967  00B500D4          add [di-0x2c00],dh
0000696B  00F3              add bl,dh
0000696D  0011              add [bx+di],dl
0000696F  0130              add [bx+si],si
00006971  014E01            add [bp+0x1],cx
00006974  6D                insw
00006975  01BC98C0          add [si-0x3f68],di
00006979  98                cbw
0000697A  50                push ax
0000697B  46                inc si
0000697C  0000              add [bx+si],al
0000697E  0100              add [bx+si],ax
00006980  54                push sp
00006981  5A                pop dx
00006982  004553            add [di+0x53],al
00006985  54                push sp
00006986  004544            add [di+0x44],al
00006989  54                push sp
0000698A  0000              add [bx+si],al
0000698C  B002              mov al,0x2
0000698E  B002              mov al,0x2
00006990  ED                in ax,dx
00006991  43                inc bx
00006992  BB39C0            mov bx,0xc039
00006995  39C0              cmp ax,ax
00006997  39C0              cmp ax,ax
00006999  39                db 0x39
