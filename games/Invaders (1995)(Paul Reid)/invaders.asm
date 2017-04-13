00000100  B400              mov ah,0x0
00000102  B013              mov al,0x13
00000104  CD10              int 0x10
00000106  E82C0F            call word 0x1035
00000109  B84000            mov ax,0x40
0000010C  8EC0              mov es,ax
0000010E  26A16C00          mov ax,[es:0x6c]
00000112  A3220A            mov [0xa22],ax
00000115  8CC8              mov ax,cs
00000117  8EC0              mov es,ax
00000119  BA4923            mov dx,0x2349
0000011C  B410              mov ah,0x10
0000011E  B012              mov al,0x12
00000120  BB0000            mov bx,0x0
00000123  B95B00            mov cx,0x5b
00000126  CD10              int 0x10
00000128  B800A0            mov ax,0xa000
0000012B  8EC0              mov es,ax
0000012D  BF0000            mov di,0x0
00000130  B90028            mov cx,0x2800
00000133  BB8F00            mov bx,0x8f
00000136  890E4723          mov [0x2347],cx
0000013A  E8D308            call word 0xa10
0000013D  803E240A01        cmp byte [0xa24],0x1
00000142  7505              jnz 0x149
00000144  B00C              mov al,0xc
00000146  EB03              jmp short 0x14b
00000148  90                nop
00000149  B008              mov al,0x8
0000014B  AA                stosb
0000014C  8B0E4723          mov cx,[0x2347]
00000150  E2E1              loop 0x133
00000152  BF80D4            mov di,0xd480
00000155  B98025            mov cx,0x2580
00000158  BB8F00            mov bx,0x8f
0000015B  890E4723          mov [0x2347],cx
0000015F  E8AE08            call word 0xa10
00000162  803E240A01        cmp byte [0xa24],0x1
00000167  7505              jnz 0x16e
00000169  B00C              mov al,0xc
0000016B  EB03              jmp short 0x170
0000016D  90                nop
0000016E  B008              mov al,0x8
00000170  AA                stosb
00000171  8B0E4723          mov cx,[0x2347]
00000175  E2E1              loop 0x158
00000177  B8C217            mov ax,0x17c2
0000017A  BB4A00            mov bx,0x4a
0000017D  B200              mov dl,0x0
0000017F  B60A              mov dh,0xa
00000181  E8FB11            call word 0x137f
00000184  B8C61D            mov ax,0x1dc6
00000187  BB4A00            mov bx,0x4a
0000018A  B200              mov dl,0x0
0000018C  B609              mov dh,0x9
0000018E  E8EE11            call word 0x137f
00000191  B8C41A            mov ax,0x1ac4
00000194  BB4A00            mov bx,0x4a
00000197  B200              mov dl,0x0
00000199  B60B              mov dh,0xb
0000019B  E8E111            call word 0x137f
0000019E  E95B03            jmp word 0x4fc
000001A1  E8C501            call word 0x369
000001A4  8CC8              mov ax,cs
000001A6  8EC0              mov es,ax
000001A8  BF5A24            mov di,0x245a
000001AB  B90055            mov cx,0x5500
000001AE  B80000            mov ax,0x0
000001B1  AB                stosw
000001B2  E2FD              loop 0x1b1
000001B4  B88415            mov ax,0x1584
000001B7  BB5000            mov bx,0x50
000001BA  B200              mov dl,0x0
000001BC  B605              mov dh,0x5
000001BE  E83012            call word 0x13f1
000001C1  B89215            mov ax,0x1592
000001C4  BB6000            mov bx,0x60
000001C7  B200              mov dl,0x0
000001C9  B605              mov dh,0x5
000001CB  E82312            call word 0x13f1
000001CE  B81415            mov ax,0x1514
000001D1  BBDC00            mov bx,0xdc
000001D4  B200              mov dl,0x0
000001D6  B605              mov dh,0x5
000001D8  E81612            call word 0x13f1
000001DB  B82C16            mov ax,0x162c
000001DE  BBE800            mov bx,0xe8
000001E1  B200              mov dl,0x0
000001E3  B605              mov dh,0x5
000001E5  E80912            call word 0x13f1
000001E8  A04B21            mov al,[0x214b]
000001EB  BBEF00            mov bx,0xef
000001EE  B200              mov dl,0x0
000001F0  B605              mov dh,0x5
000001F2  E8AF09            call word 0xba4
000001F5  E82809            call word 0xb20
000001F8  E8D90E            call word 0x10d4
000001FB  C6064A2101        mov byte [0x214a],0x1
00000200  90                nop
00000201  B81415            mov ax,0x1514
00000204  8B1ED720          mov bx,[0x20d7]
00000208  B282              mov dl,0x82
0000020A  B601              mov dh,0x1
0000020C  E8E211            call word 0x13f1
0000020F  E8190B            call word 0xd2b
00000212  E80B09            call word 0xb20
00000215  BE5A24            mov si,0x245a
00000218  BF4029            mov di,0x2940
0000021B  B800A0            mov ax,0xa000
0000021E  8EC0              mov es,ax
00000220  B90055            mov cx,0x5500
00000223  BADA03            mov dx,0x3da
00000226  EC                in al,dx
00000227  A808              test al,0x8
00000229  74FB              jz 0x226
0000022B  A5                movsw
0000022C  E2FD              loop 0x22b
0000022E  803E4A2101        cmp byte [0x214a],0x1
00000233  7536              jnz 0x26b
00000235  E85B0F            call word 0x1193
00000238  B82C23            mov ax,0x232c
0000023B  BB5200            mov bx,0x52
0000023E  B214              mov dl,0x14
00000240  B607              mov dh,0x7
00000242  E81F02            call word 0x464
00000245  B90000            mov cx,0x0
00000248  BA0000            mov dx,0x0
0000024B  B401              mov ah,0x1
0000024D  CD1A              int 0x1a
0000024F  B400              mov ah,0x0
00000251  CD1A              int 0x1a
00000253  80FA12            cmp dl,0x12
00000256  72F7              jc 0x24f
00000258  B82C23            mov ax,0x232c
0000025B  BB5200            mov bx,0x52
0000025E  B214              mov dl,0x14
00000260  B600              mov dh,0x0
00000262  E8FF01            call word 0x464
00000265  C6064A2100        mov byte [0x214a],0x0
0000026A  90                nop
0000026B  803EDD2001        cmp byte [0x20dd],0x1
00000270  750C              jnz 0x27e
00000272  C606DD2000        mov byte [0x20dd],0x0
00000277  90                nop
00000278  8036DF2080        xor byte [0x20df],0x80
0000027D  90                nop
0000027E  E82410            call word 0x12a5
00000281  FE0E4021          dec byte [0x2140]
00000285  7503              jnz 0x28a
00000287  E8370C            call word 0xec1
0000028A  803EDB2001        cmp byte [0x20db],0x1
0000028F  750A              jnz 0x29b
00000291  833EE12000        cmp word [0x20e1],byte +0x0
00000296  7503              jnz 0x29b
00000298  E8EB0C            call word 0xf86
0000029B  E8F50E            call word 0x1193
0000029E  833EE12000        cmp word [0x20e1],byte +0x0
000002A3  741C              jz 0x2c1
000002A5  E8100D            call word 0xfb8
000002A8  803E442100        cmp byte [0x2144],0x0
000002AD  7412              jz 0x2c1
000002AF  E8F30F            call word 0x12a5
000002B2  E8AD08            call word 0xb62
000002B5  E8DD0A            call word 0xd95
000002B8  E8D80E            call word 0x1193
000002BB  C606442100        mov byte [0x2144],0x0
000002C0  90                nop
000002C1  803EE02000        cmp byte [0x20e0],0x0
000002C6  7406              jz 0x2ce
000002C8  E85A07            call word 0xa25
000002CB  E92AFF            jmp word 0x1f8
000002CE  803E4E2100        cmp byte [0x214e],0x0
000002D3  7403              jz 0x2d8
000002D5  E9B104            jmp word 0x789
000002D8  BBFFFF            mov bx,0xffff
000002DB  E83207            call word 0xa10
000002DE  803E240A01        cmp byte [0xa24],0x1
000002E3  751E              jnz 0x303
000002E5  833EE42000        cmp word [0x20e4],byte +0x0
000002EA  7517              jnz 0x303
000002EC  FE0E0F0A          dec byte [0xa0f]
000002F0  803E0F0A00        cmp byte [0xa0f],0x0
000002F5  750C              jnz 0x303
000002F7  C6060F0A06        mov byte [0xa0f],0x6
000002FC  90                nop
000002FD  C706E4203200      mov word [0x20e4],0x32
00000303  833EE42000        cmp word [0x20e4],byte +0x0
00000308  7403              jz 0x30d
0000030A  E89B06            call word 0x9a8
0000030D  8B1E3E21          mov bx,[0x213e]
00000311  E8FC06            call word 0xa10
00000314  803E240A01        cmp byte [0xa24],0x1
00000319  7503              jnz 0x31e
0000031B  E8FD04            call word 0x81b
0000031E  FE0E4C21          dec byte [0x214c]
00000322  803E4C2100        cmp byte [0x214c],0x0
00000327  7509              jnz 0x332
00000329  A04D21            mov al,[0x214d]
0000032C  A24C21            mov [0x214c],al
0000032F  E87C05            call word 0x8ae
00000332  B81415            mov ax,0x1514
00000335  8B1ED720          mov bx,[0x20d7]
00000339  B282              mov dl,0x82
0000033B  E80E11            call word 0x144c
0000033E  803ED92001        cmp byte [0x20d9],0x1
00000343  7503              jnz 0x348
00000345  E8D40C            call word 0x101c
00000348  803EDA2001        cmp byte [0x20da],0x1
0000034D  7503              jnz 0x352
0000034F  E8D60C            call word 0x1028
00000352  803EDC2001        cmp byte [0x20dc],0x1
00000357  7403              jz 0x35c
00000359  E9A5FE            jmp word 0x201
0000035C  E8F40C            call word 0x1053
0000035F  B400              mov ah,0x0
00000361  B003              mov al,0x3
00000363  CD10              int 0x10
00000365  B44C              mov ah,0x4c
00000367  CD21              int 0x21
00000369  C606C92000        mov byte [0x20c9],0x0
0000036E  90                nop
0000036F  C706CA201301      mov word [0x20ca],0x113
00000375  C606CC201E        mov byte [0x20cc],0x1e
0000037A  90                nop
0000037B  C706CD20F07F      mov word [0x20cd],0x7ff0
00000381  C706CF20F07F      mov word [0x20cf],0x7ff0
00000387  C706D120F07F      mov word [0x20d1],0x7ff0
0000038D  C706D320F07F      mov word [0x20d3],0x7ff0
00000393  C706D520F07F      mov word [0x20d5],0x7ff0
00000399  C706D7209A00      mov word [0x20d7],0x9a
0000039F  C606D92000        mov byte [0x20d9],0x0
000003A4  90                nop
000003A5  C606DA2000        mov byte [0x20da],0x0
000003AA  90                nop
000003AB  C606DB2000        mov byte [0x20db],0x0
000003B0  90                nop
000003B1  C606DC2000        mov byte [0x20dc],0x0
000003B6  90                nop
000003B7  C606E02000        mov byte [0x20e0],0x0
000003BC  90                nop
000003BD  C706E1200000      mov word [0x20e1],0x0
000003C3  C606E32000        mov byte [0x20e3],0x0
000003C8  90                nop
000003C9  C706E4200000      mov word [0x20e4],0x0
000003CF  8CC8              mov ax,cs
000003D1  8EC0              mov es,ax
000003D3  BFE620            mov di,0x20e6
000003D6  B91600            mov cx,0x16
000003D9  B80000            mov ax,0x0
000003DC  AB                stosw
000003DD  E2FD              loop 0x3dc
000003DF  BF1221            mov di,0x2112
000003E2  B91600            mov cx,0x16
000003E5  AA                stosb
000003E6  E2FD              loop 0x3e5
000003E8  BF2821            mov di,0x2128
000003EB  B91600            mov cx,0x16
000003EE  AA                stosb
000003EF  E2FD              loop 0x3ee
000003F1  C7063E211000      mov word [0x213e],0x10
000003F7  C606402101        mov byte [0x2140],0x1
000003FC  90                nop
000003FD  C606412137        mov byte [0x2141],0x37
00000402  90                nop
00000403  C606422100        mov byte [0x2142],0x0
00000408  90                nop
00000409  C606432100        mov byte [0x2143],0x0
0000040E  90                nop
0000040F  C606442100        mov byte [0x2144],0x0
00000414  90                nop
00000415  C606452130        mov byte [0x2145],0x30
0000041A  90                nop
0000041B  C606462130        mov byte [0x2146],0x30
00000420  90                nop
00000421  C606472130        mov byte [0x2147],0x30
00000426  90                nop
00000427  C606482130        mov byte [0x2148],0x30
0000042C  90                nop
0000042D  C606492130        mov byte [0x2149],0x30
00000432  90                nop
00000433  C6064B2133        mov byte [0x214b],0x33
00000438  90                nop
00000439  C6064C2102        mov byte [0x214c],0x2
0000043E  90                nop
0000043F  C6064D2102        mov byte [0x214d],0x2
00000444  90                nop
00000445  C6064E2100        mov byte [0x214e],0x0
0000044A  90                nop
0000044B  C6064F2100        mov byte [0x214f],0x0
00000450  90                nop
00000451  C6069E0A37        mov byte [0xa9e],0x37
00000456  90                nop
00000457  C6069F0A1E        mov byte [0xa9f],0x1e
0000045C  90                nop
0000045D  C706A00A1000      mov word [0xaa0],0x10
00000463  C3                ret
00000464  A3F604            mov [0x4f6],ax
00000467  891EF804          mov [0x4f8],bx
0000046B  8816FA04          mov [0x4fa],dl
0000046F  8836FB04          mov [0x4fb],dh
00000473  832EF80406        sub word [0x4f8],byte +0x6
00000478  803EDE2001        cmp byte [0x20de],0x1
0000047D  7536              jnz 0x4b5
0000047F  C606DE2000        mov byte [0x20de],0x0
00000484  90                nop
00000485  803EDC2001        cmp byte [0x20dc],0x1
0000048A  7503              jnz 0x48f
0000048C  E9CDFE            jmp word 0x35c
0000048F  803EDD2001        cmp byte [0x20dd],0x1
00000494  750F              jnz 0x4a5
00000496  C606DD2000        mov byte [0x20dd],0x0
0000049B  90                nop
0000049C  8036DF2080        xor byte [0x20df],0x80
000004A1  90                nop
000004A2  EB11              jmp short 0x4b5
000004A4  90                nop
000004A5  803EC82001        cmp byte [0x20c8],0x1
000004AA  7509              jnz 0x4b5
000004AC  C606C82000        mov byte [0x20c8],0x0
000004B1  90                nop
000004B2  E9ECFC            jmp word 0x1a1
000004B5  8B36F604          mov si,[0x4f6]
000004B9  AC                lodsb
000004BA  FF06F604          inc word [0x4f6]
000004BE  8306F80406        add word [0x4f8],byte +0x6
000004C3  3C00              cmp al,0x0
000004C5  742E              jz 0x4f5
000004C7  3C20              cmp al,0x20
000004C9  74EA              jz 0x4b5
000004CB  8B1EF804          mov bx,[0x4f8]
000004CF  8A16FA04          mov dl,[0x4fa]
000004D3  8A36FB04          mov dh,[0x4fb]
000004D7  E8CA06            call word 0xba4
000004DA  BE5A24            mov si,0x245a
000004DD  BF4029            mov di,0x2940
000004E0  B800A0            mov ax,0xa000
000004E3  8EC0              mov es,ax
000004E5  B90055            mov cx,0x5500
000004E8  BADA03            mov dx,0x3da
000004EB  EC                in al,dx
000004EC  A808              test al,0x8
000004EE  74FB              jz 0x4eb
000004F0  A5                movsw
000004F1  E2FD              loop 0x4f0
000004F3  EBC0              jmp short 0x4b5
000004F5  C3                ret
000004F6  0000              add [bx+si],al
000004F8  0000              add [bx+si],al
000004FA  0000              add [bx+si],al
000004FC  8CC8              mov ax,cs
000004FE  8EC0              mov es,ax
00000500  BF5A24            mov di,0x245a
00000503  B90055            mov cx,0x5500
00000506  B80000            mov ax,0x0
00000509  AB                stosw
0000050A  E2FD              loop 0x509
0000050C  C606DE2000        mov byte [0x20de],0x0
00000511  90                nop
00000512  C606C82001        mov byte [0x20c8],0x1
00000517  90                nop
00000518  B85021            mov ax,0x2150
0000051B  BB2800            mov bx,0x28
0000051E  B200              mov dl,0x0
00000520  B607              mov dh,0x7
00000522  E83FFF            call word 0x464
00000525  B87921            mov ax,0x2179
00000528  BB3D00            mov bx,0x3d
0000052B  B20A              mov dl,0xa
0000052D  B630              mov dh,0x30
0000052F  E832FF            call word 0x464
00000532  B89B21            mov ax,0x219b
00000535  BB6500            mov bx,0x65
00000538  B214              mov dl,0x14
0000053A  B630              mov dh,0x30
0000053C  E825FF            call word 0x464
0000053F  B80615            mov ax,0x1506
00000542  B228              mov dl,0x28
00000544  B603              mov dh,0x3
00000546  BB6400            mov bx,0x64
00000549  E8DE01            call word 0x72a
0000054C  B8B021            mov ax,0x21b0
0000054F  BB8900            mov bx,0x89
00000552  B228              mov dl,0x28
00000554  B607              mov dh,0x7
00000556  E80BFF            call word 0x464
00000559  B89614            mov ax,0x1496
0000055C  B232              mov dl,0x32
0000055E  B610              mov dh,0x10
00000560  BB6700            mov bx,0x67
00000563  E8C401            call word 0x72a
00000566  B8BF21            mov ax,0x21bf
00000569  BB8900            mov bx,0x89
0000056C  B232              mov dl,0x32
0000056E  B607              mov dh,0x7
00000570  E8F1FE            call word 0x464
00000573  B8C014            mov ax,0x14c0
00000576  B23C              mov dl,0x3c
00000578  B620              mov dh,0x20
0000057A  BB6700            mov bx,0x67
0000057D  E8AA01            call word 0x72a
00000580  B8CE21            mov ax,0x21ce
00000583  BB8900            mov bx,0x89
00000586  B23C              mov dl,0x3c
00000588  B607              mov dh,0x7
0000058A  E8D7FE            call word 0x464
0000058D  B8B214            mov ax,0x14b2
00000590  B246              mov dl,0x46
00000592  B630              mov dh,0x30
00000594  BB6700            mov bx,0x67
00000597  E89001            call word 0x72a
0000059A  B8DD21            mov ax,0x21dd
0000059D  BB8900            mov bx,0x89
000005A0  B246              mov dl,0x46
000005A2  B607              mov dh,0x7
000005A4  E8BDFE            call word 0x464
000005A7  B8CE14            mov ax,0x14ce
000005AA  B250              mov dl,0x50
000005AC  B640              mov dh,0x40
000005AE  BB6700            mov bx,0x67
000005B1  E87601            call word 0x72a
000005B4  B8EC21            mov ax,0x21ec
000005B7  BB8900            mov bx,0x89
000005BA  B250              mov dl,0x50
000005BC  B607              mov dh,0x7
000005BE  E8A3FE            call word 0x464
000005C1  B8CE14            mov ax,0x14ce
000005C4  B25A              mov dl,0x5a
000005C6  B650              mov dh,0x50
000005C8  BB6700            mov bx,0x67
000005CB  E85C01            call word 0x72a
000005CE  B8FB21            mov ax,0x21fb
000005D1  BB8900            mov bx,0x89
000005D4  B25A              mov dl,0x5a
000005D6  B607              mov dh,0x7
000005D8  E889FE            call word 0x464
000005DB  B80A22            mov ax,0x220a
000005DE  BB4F00            mov bx,0x4f
000005E1  B26D              mov dl,0x6d
000005E3  B650              mov dh,0x50
000005E5  E87CFE            call word 0x464
000005E8  B82622            mov ax,0x2226
000005EB  BB3400            mov bx,0x34
000005EE  B277              mov dl,0x77
000005F0  B650              mov dh,0x50
000005F2  E86FFE            call word 0x464
000005F5  B8DC22            mov ax,0x22dc
000005F8  BB0400            mov bx,0x4
000005FB  B281              mov dl,0x81
000005FD  B607              mov dh,0x7
000005FF  E862FE            call word 0x464
00000602  C606C82000        mov byte [0x20c8],0x0
00000607  90                nop
00000608  B401              mov ah,0x1
0000060A  B90000            mov cx,0x0
0000060D  BA0000            mov dx,0x0
00000610  CD1A              int 0x1a
00000612  803EDE2001        cmp byte [0x20de],0x1
00000617  740C              jz 0x625
00000619  B400              mov ah,0x0
0000061B  CD1A              int 0x1a
0000061D  80FE01            cmp dh,0x1
00000620  75F0              jnz 0x612
00000622  EB23              jmp short 0x647
00000624  90                nop
00000625  803EDC2001        cmp byte [0x20dc],0x1
0000062A  7503              jnz 0x62f
0000062C  E92DFD            jmp word 0x35c
0000062F  803EDD2001        cmp byte [0x20dd],0x1
00000634  750E              jnz 0x644
00000636  C606DD2000        mov byte [0x20dd],0x0
0000063B  90                nop
0000063C  8036DF2080        xor byte [0x20df],0x80
00000641  90                nop
00000642  EBCE              jmp short 0x612
00000644  E95AFB            jmp word 0x1a1
00000647  8CC8              mov ax,cs
00000649  8EC0              mov es,ax
0000064B  BF5A24            mov di,0x245a
0000064E  B90055            mov cx,0x5500
00000651  B80000            mov ax,0x0
00000654  AB                stosw
00000655  E2FD              loop 0x654
00000657  C606DE2000        mov byte [0x20de],0x0
0000065C  90                nop
0000065D  C606C82001        mov byte [0x20c8],0x1
00000662  90                nop
00000663  B85021            mov ax,0x2150
00000666  BB2800            mov bx,0x28
00000669  B200              mov dl,0x0
0000066B  B607              mov dh,0x7
0000066D  E8F4FD            call word 0x464
00000670  B87921            mov ax,0x2179
00000673  BB3D00            mov bx,0x3d
00000676  B20A              mov dl,0xa
00000678  B630              mov dh,0x30
0000067A  E8E7FD            call word 0x464
0000067D  B89B21            mov ax,0x219b
00000680  BB6500            mov bx,0x65
00000683  B214              mov dl,0x14
00000685  B630              mov dh,0x30
00000687  E8DAFD            call word 0x464
0000068A  B84B22            mov ax,0x224b
0000068D  BB4600            mov bx,0x46
00000690  B228              mov dl,0x28
00000692  B610              mov dh,0x10
00000694  E8CDFD            call word 0x464
00000697  B86A22            mov ax,0x226a
0000069A  BB4000            mov bx,0x40
0000069D  B23C              mov dl,0x3c
0000069F  B610              mov dh,0x10
000006A1  E8C0FD            call word 0x464
000006A4  B88C22            mov ax,0x228c
000006A7  BB3700            mov bx,0x37
000006AA  B250              mov dl,0x50
000006AC  B607              mov dh,0x7
000006AE  E8B3FD            call word 0x464
000006B1  B8B022            mov ax,0x22b0
000006B4  BB1F00            mov bx,0x1f
000006B7  B25A              mov dl,0x5a
000006B9  B607              mov dh,0x7
000006BB  E8A6FD            call word 0x464
000006BE  B80A22            mov ax,0x220a
000006C1  BB4F00            mov bx,0x4f
000006C4  B26D              mov dl,0x6d
000006C6  B650              mov dh,0x50
000006C8  E899FD            call word 0x464
000006CB  B82622            mov ax,0x2226
000006CE  BB3400            mov bx,0x34
000006D1  B277              mov dl,0x77
000006D3  B650              mov dh,0x50
000006D5  E88CFD            call word 0x464
000006D8  B8DC22            mov ax,0x22dc
000006DB  BB0400            mov bx,0x4
000006DE  B281              mov dl,0x81
000006E0  B607              mov dh,0x7
000006E2  E87FFD            call word 0x464
000006E5  C606C82000        mov byte [0x20c8],0x0
000006EA  90                nop
000006EB  B401              mov ah,0x1
000006ED  B90000            mov cx,0x0
000006F0  BA0000            mov dx,0x0
000006F3  CD1A              int 0x1a
000006F5  803EDE2001        cmp byte [0x20de],0x1
000006FA  740C              jz 0x708
000006FC  B400              mov ah,0x0
000006FE  CD1A              int 0x1a
00000700  80FE01            cmp dh,0x1
00000703  75F0              jnz 0x6f5
00000705  E9F4FD            jmp word 0x4fc
00000708  803EDC2001        cmp byte [0x20dc],0x1
0000070D  7503              jnz 0x712
0000070F  E94AFC            jmp word 0x35c
00000712  803EDD2001        cmp byte [0x20dd],0x1
00000717  750E              jnz 0x727
00000719  C606DD2000        mov byte [0x20dd],0x0
0000071E  90                nop
0000071F  8036DF2080        xor byte [0x20df],0x80
00000724  90                nop
00000725  EBCE              jmp short 0x6f5
00000727  E977FA            jmp word 0x1a1
0000072A  E8C40C            call word 0x13f1
0000072D  BE5A24            mov si,0x245a
00000730  BF4029            mov di,0x2940
00000733  B800A0            mov ax,0xa000
00000736  8EC0              mov es,ax
00000738  B90055            mov cx,0x5500
0000073B  BADA03            mov dx,0x3da
0000073E  EC                in al,dx
0000073F  A808              test al,0x8
00000741  74FB              jz 0x73e
00000743  A5                movsw
00000744  E2FD              loop 0x743
00000746  B90000            mov cx,0x0
00000749  BA0000            mov dx,0x0
0000074C  B401              mov ah,0x1
0000074E  CD1A              int 0x1a
00000750  B400              mov ah,0x0
00000752  CD1A              int 0x1a
00000754  80FA03            cmp dl,0x3
00000757  72F7              jc 0x750
00000759  C3                ret
0000075A  C6064F2101        mov byte [0x214f],0x1
0000075F  90                nop
00000760  B81123            mov ax,0x2311
00000763  BB5200            mov bx,0x52
00000766  B214              mov dl,0x14
00000768  B607              mov dh,0x7
0000076A  E8F7FC            call word 0x464
0000076D  C6064F2100        mov byte [0x214f],0x0
00000772  90                nop
00000773  B90000            mov cx,0x0
00000776  BA0000            mov dx,0x0
00000779  B401              mov ah,0x1
0000077B  CD1A              int 0x1a
0000077D  B400              mov ah,0x0
0000077F  CD1A              int 0x1a
00000781  80FAB4            cmp dl,0xb4
00000784  72F7              jc 0x77d
00000786  E973FD            jmp word 0x4fc
00000789  A04B21            mov al,[0x214b]
0000078C  BBEF00            mov bx,0xef
0000078F  B200              mov dl,0x0
00000791  B600              mov dh,0x0
00000793  E80E04            call word 0xba4
00000796  FE0E4B21          dec byte [0x214b]
0000079A  A04B21            mov al,[0x214b]
0000079D  BBEF00            mov bx,0xef
000007A0  B200              mov dl,0x0
000007A2  B605              mov dh,0x5
000007A4  E8FD03            call word 0xba4
000007A7  803E4B2130        cmp byte [0x214b],0x30
000007AC  7502              jnz 0x7b0
000007AE  EBAA              jmp short 0x75a
000007B0  B90000            mov cx,0x0
000007B3  BA0000            mov dx,0x0
000007B6  B401              mov ah,0x1
000007B8  CD1A              int 0x1a
000007BA  B400              mov ah,0x0
000007BC  CD1A              int 0x1a
000007BE  80FA12            cmp dl,0x12
000007C1  72F7              jc 0x7ba
000007C3  E8DF0A            call word 0x12a5
000007C6  E87402            call word 0xa3d
000007C9  BB0000            mov bx,0x0
000007CC  80BF122100        cmp byte [bx+0x2112],0x0
000007D1  7503              jnz 0x7d6
000007D3  EB39              jmp short 0x80e
000007D5  90                nop
000007D6  891E1908          mov [0x819],bx
000007DA  8A971221          mov dl,[bx+0x2112]
000007DE  80BF282100        cmp byte [bx+0x2128],0x0
000007E3  7406              jz 0x7eb
000007E5  B82215            mov ax,0x1522
000007E8  EB11              jmp short 0x7fb
000007EA  90                nop
000007EB  803EC92001        cmp byte [0x20c9],0x1
000007F0  7506              jnz 0x7f8
000007F2  B8EA14            mov ax,0x14ea
000007F5  EB04              jmp short 0x7fb
000007F7  90                nop
000007F8  B8F814            mov ax,0x14f8
000007FB  D1E3              shl bx,1
000007FD  8B9FE620          mov bx,[bx+0x20e6]
00000801  E8480C            call word 0x144c
00000804  8B1E1908          mov bx,[0x819]
00000808  C687122100        mov byte [bx+0x2112],0x0
0000080D  90                nop
0000080E  43                inc bx
0000080F  83FB16            cmp bx,byte +0x16
00000812  7402              jz 0x816
00000814  EBB6              jmp short 0x7cc
00000816  E9DFF9            jmp word 0x1f8
00000819  0000              add [bx+si],al
0000081B  BB0200            mov bx,0x2
0000081E  E8EF01            call word 0xa10
00000821  8A36240A          mov dh,[0xa24]
00000825  8836AD08          mov [0x8ad],dh
00000829  BB0B00            mov bx,0xb
0000082C  E8E101            call word 0xa10
0000082F  B80080            mov ax,0x8000
00000832  B500              mov ch,0x0
00000834  8A0E240A          mov cl,[0xa24]
00000838  41                inc cx
00000839  D1E8              shr ax,1
0000083B  E2FC              loop 0x839
0000083D  B200              mov dl,0x0
0000083F  8506D520          test [0x20d5],ax
00000843  7405              jz 0x84a
00000845  B22C              mov dl,0x2c
00000847  EB2A              jmp short 0x873
00000849  90                nop
0000084A  8506D320          test [0x20d3],ax
0000084E  7405              jz 0x855
00000850  B222              mov dl,0x22
00000852  EB1F              jmp short 0x873
00000854  90                nop
00000855  8506D120          test [0x20d1],ax
00000859  7405              jz 0x860
0000085B  B218              mov dl,0x18
0000085D  EB14              jmp short 0x873
0000085F  90                nop
00000860  8506CF20          test [0x20cf],ax
00000864  7405              jz 0x86b
00000866  B20E              mov dl,0xe
00000868  EB09              jmp short 0x873
0000086A  90                nop
0000086B  8506CD20          test [0x20cd],ax
0000086F  743B              jz 0x8ac
00000871  B204              mov dl,0x4
00000873  A0240A            mov al,[0xa24]
00000876  B400              mov ah,0x0
00000878  B110              mov cl,0x10
0000087A  F6E1              mul cl
0000087C  0306CA20          add ax,[0x20ca]
00000880  2DC800            sub ax,0xc8
00000883  0216CC20          add dl,[0x20cc]
00000887  BB0000            mov bx,0x0
0000088A  80BF122100        cmp byte [bx+0x2112],0x0
0000088F  7409              jz 0x89a
00000891  43                inc bx
00000892  83FB16            cmp bx,byte +0x16
00000895  75F3              jnz 0x88a
00000897  EB13              jmp short 0x8ac
00000899  90                nop
0000089A  88971221          mov [bx+0x2112],dl
0000089E  8A36AD08          mov dh,[0x8ad]
000008A2  88B72821          mov [bx+0x2128],dh
000008A6  D1E3              shl bx,1
000008A8  8987E620          mov [bx+0x20e6],ax
000008AC  C3                ret
000008AD  00BB0000          add [bp+di+0x0],bh
000008B1  80BF122100        cmp byte [bx+0x2112],0x0
000008B6  7503              jnz 0x8bb
000008B8  E9E100            jmp word 0x99c
000008BB  891EA609          mov [0x9a6],bx
000008BF  8A971221          mov dl,[bx+0x2112]
000008C3  80BF282100        cmp byte [bx+0x2128],0x0
000008C8  7406              jz 0x8d0
000008CA  B82215            mov ax,0x1522
000008CD  EB11              jmp short 0x8e0
000008CF  90                nop
000008D0  803EC92001        cmp byte [0x20c9],0x1
000008D5  7506              jnz 0x8dd
000008D7  B8EA14            mov ax,0x14ea
000008DA  EB04              jmp short 0x8e0
000008DC  90                nop
000008DD  B8F814            mov ax,0x14f8
000008E0  D1E3              shl bx,1
000008E2  8B9FE620          mov bx,[bx+0x20e6]
000008E6  E8630B            call word 0x144c
000008E9  8B1EA609          mov bx,[0x9a6]
000008ED  FE871221          inc byte [bx+0x2112]
000008F1  FE871221          inc byte [bx+0x2112]
000008F5  80BF122182        cmp byte [bx+0x2112],0x82
000008FA  90                nop
000008FB  7509              jnz 0x906
000008FD  C687122100        mov byte [bx+0x2112],0x0
00000902  90                nop
00000903  E99600            jmp word 0x99c
00000906  8A971221          mov dl,[bx+0x2112]
0000090A  80BF282100        cmp byte [bx+0x2128],0x0
0000090F  7406              jz 0x917
00000911  B82215            mov ax,0x1522
00000914  EB11              jmp short 0x927
00000916  90                nop
00000917  803EC92001        cmp byte [0x20c9],0x1
0000091C  7506              jnz 0x924
0000091E  B8EA14            mov ax,0x14ea
00000921  EB04              jmp short 0x927
00000923  90                nop
00000924  B8F814            mov ax,0x14f8
00000927  D1E3              shl bx,1
00000929  8B9FE620          mov bx,[bx+0x20e6]
0000092D  B606              mov dh,0x6
0000092F  C606442100        mov byte [0x2144],0x0
00000934  90                nop
00000935  E8B90A            call word 0x13f1
00000938  803E442101        cmp byte [0x2144],0x1
0000093D  7503              jnz 0x942
0000093F  E947FE            jmp word 0x789
00000942  803E442102        cmp byte [0x2144],0x2
00000947  7407              jz 0x950
00000949  803E442104        cmp byte [0x2144],0x4
0000094E  7542              jnz 0x992
00000950  8B1EA609          mov bx,[0x9a6]
00000954  8A971221          mov dl,[bx+0x2112]
00000958  80BF282100        cmp byte [bx+0x2128],0x0
0000095D  7406              jz 0x965
0000095F  B82215            mov ax,0x1522
00000962  EB11              jmp short 0x975
00000964  90                nop
00000965  803EC92001        cmp byte [0x20c9],0x1
0000096A  7506              jnz 0x972
0000096C  B8EA14            mov ax,0x14ea
0000096F  EB04              jmp short 0x975
00000971  90                nop
00000972  B8F814            mov ax,0x14f8
00000975  D1E3              shl bx,1
00000977  8B9FE620          mov bx,[bx+0x20e6]
0000097B  E8CE0A            call word 0x144c
0000097E  8B1EA609          mov bx,[0x9a6]
00000982  C687122100        mov byte [bx+0x2112],0x0
00000987  90                nop
00000988  803E442104        cmp byte [0x2144],0x4
0000098D  7503              jnz 0x992
0000098F  E87506            call word 0x1007
00000992  C606442100        mov byte [0x2144],0x0
00000997  90                nop
00000998  8B1EA609          mov bx,[0x9a6]
0000099C  43                inc bx
0000099D  83FB16            cmp bx,byte +0x16
000009A0  7403              jz 0x9a5
000009A2  E90CFF            jmp word 0x8b1
000009A5  C3                ret
000009A6  0000              add [bx+si],al
000009A8  FE0E0E0A          dec byte [0xa0e]
000009AC  803E0E0A00        cmp byte [0xa0e],0x0
000009B1  755A              jnz 0xa0d
000009B3  C6060E0A02        mov byte [0xa0e],0x2
000009B8  90                nop
000009B9  B80615            mov ax,0x1506
000009BC  8B1EE420          mov bx,[0x20e4]
000009C0  B20A              mov dl,0xa
000009C2  E8870A            call word 0x144c
000009C5  FF06E420          inc word [0x20e4]
000009C9  813EE420FE00      cmp word [0x20e4],0xfe
000009CF  7509              jnz 0x9da
000009D1  C706E4200000      mov word [0x20e4],0x0
000009D7  EB34              jmp short 0xa0d
000009D9  90                nop
000009DA  B80615            mov ax,0x1506
000009DD  8B1EE420          mov bx,[0x20e4]
000009E1  B20A              mov dl,0xa
000009E3  B603              mov dh,0x3
000009E5  E8090A            call word 0x13f1
000009E8  F606DF2080        test byte [0x20df],0x80
000009ED  90                nop
000009EE  7412              jz 0xa02
000009F0  B0B6              mov al,0xb6
000009F2  E643              out 0x43,al
000009F4  B090              mov al,0x90
000009F6  E642              out 0x42,al
000009F8  B000              mov al,0x0
000009FA  E642              out 0x42,al
000009FC  E461              in al,0x61
000009FE  0C03              or al,0x3
00000A00  E661              out 0x61,al
00000A02  B90080            mov cx,0x8000
00000A05  E2FE              loop 0xa05
00000A07  E461              in al,0x61
00000A09  24FC              and al,0xfc
00000A0B  E661              out 0x61,al
00000A0D  C3                ret
00000A0E  0206A122          add al,[0x22a1]
00000A12  0AF7              or dh,bh
00000A14  E3B9              jcxz 0x9cf
00000A16  FB                sti
00000A17  FFF7              push di
00000A19  F1                int1
00000A1A  8916220A          mov [0xa22],dx
00000A1E  A2240A            mov [0xa24],al
00000A21  C3                ret
00000A22  0000              add [bx+si],al
00000A24  00FE              add dh,bh
00000A26  0E                push cs
00000A27  9E                sahf
00000A28  0A80069F          or al,[bx+si-0x60fa]
00000A2C  0A02              or al,[bp+si]
00000A2E  833EA00A00        cmp word [0xaa0],byte +0x0
00000A33  7404              jz 0xa39
00000A35  FF0EA00A          dec word [0xaa0]
00000A39  E80100            call word 0xa3d
00000A3C  C3                ret
00000A3D  C6064E2100        mov byte [0x214e],0x0
00000A42  90                nop
00000A43  C606E02000        mov byte [0x20e0],0x0
00000A48  90                nop
00000A49  C606C92000        mov byte [0x20c9],0x0
00000A4E  90                nop
00000A4F  C706CA201301      mov word [0x20ca],0x113
00000A55  A09F0A            mov al,[0xa9f]
00000A58  A2CC20            mov [0x20cc],al
00000A5B  C706CD20F07F      mov word [0x20cd],0x7ff0
00000A61  C706CF20F07F      mov word [0x20cf],0x7ff0
00000A67  C706D120F07F      mov word [0x20d1],0x7ff0
00000A6D  C706D320F07F      mov word [0x20d3],0x7ff0
00000A73  C706D520F07F      mov word [0x20d5],0x7ff0
00000A79  C606402101        mov byte [0x2140],0x1
00000A7E  90                nop
00000A7F  A09E0A            mov al,[0xa9e]
00000A82  A24121            mov [0x2141],al
00000A85  C606422100        mov byte [0x2142],0x0
00000A8A  90                nop
00000A8B  C606432100        mov byte [0x2143],0x0
00000A90  90                nop
00000A91  C606442100        mov byte [0x2144],0x0
00000A96  90                nop
00000A97  A1A00A            mov ax,[0xaa0]
00000A9A  A33E21            mov [0x213e],ax
00000A9D  C3                ret
00000A9E  37                aaa
00000A9F  1E                push ds
00000AA0  1000              adc [bx+si],al
00000AA2  E80300            call word 0xaa8
00000AA5  E2FB              loop 0xaa2
00000AA7  C3                ret
00000AA8  FE064921          inc byte [0x2149]
00000AAC  803E49213A        cmp byte [0x2149],0x3a
00000AB1  756A              jnz 0xb1d
00000AB3  C606492130        mov byte [0x2149],0x30
00000AB8  90                nop
00000AB9  FE064821          inc byte [0x2148]
00000ABD  803E48213A        cmp byte [0x2148],0x3a
00000AC2  7559              jnz 0xb1d
00000AC4  C606482130        mov byte [0x2148],0x30
00000AC9  90                nop
00000ACA  FE064721          inc byte [0x2147]
00000ACE  803E47213A        cmp byte [0x2147],0x3a
00000AD3  7548              jnz 0xb1d
00000AD5  C606472130        mov byte [0x2147],0x30
00000ADA  90                nop
00000ADB  FE064621          inc byte [0x2146]
00000ADF  803E46213A        cmp byte [0x2146],0x3a
00000AE4  7537              jnz 0xb1d
00000AE6  C606462130        mov byte [0x2146],0x30
00000AEB  90                nop
00000AEC  FE064521          inc byte [0x2145]
00000AF0  890E1E0B          mov [0xb1e],cx
00000AF4  A04B21            mov al,[0x214b]
00000AF7  BBEF00            mov bx,0xef
00000AFA  B200              mov dl,0x0
00000AFC  B600              mov dh,0x0
00000AFE  E8A300            call word 0xba4
00000B01  FE064B21          inc byte [0x214b]
00000B05  A04B21            mov al,[0x214b]
00000B08  BBEF00            mov bx,0xef
00000B0B  B200              mov dl,0x0
00000B0D  B605              mov dh,0x5
00000B0F  E89200            call word 0xba4
00000B12  8B0E1E0B          mov cx,[0xb1e]
00000B16  803E45213A        cmp byte [0x2145],0x3a
00000B1B  7500              jnz 0xb1d
00000B1D  C3                ret
00000B1E  0000              add [bx+si],al
00000B20  A04521            mov al,[0x2145]
00000B23  BB7700            mov bx,0x77
00000B26  B200              mov dl,0x0
00000B28  B605              mov dh,0x5
00000B2A  E87700            call word 0xba4
00000B2D  A04621            mov al,[0x2146]
00000B30  BB7E00            mov bx,0x7e
00000B33  B200              mov dl,0x0
00000B35  B605              mov dh,0x5
00000B37  E86A00            call word 0xba4
00000B3A  A04721            mov al,[0x2147]
00000B3D  BB8500            mov bx,0x85
00000B40  B200              mov dl,0x0
00000B42  B605              mov dh,0x5
00000B44  E85D00            call word 0xba4
00000B47  A04821            mov al,[0x2148]
00000B4A  BB8C00            mov bx,0x8c
00000B4D  B200              mov dl,0x0
00000B4F  B605              mov dh,0x5
00000B51  E85000            call word 0xba4
00000B54  A04921            mov al,[0x2149]
00000B57  BB9300            mov bx,0x93
00000B5A  B200              mov dl,0x0
00000B5C  B605              mov dh,0x5
00000B5E  E84300            call word 0xba4
00000B61  C3                ret
00000B62  A04521            mov al,[0x2145]
00000B65  BB7700            mov bx,0x77
00000B68  B200              mov dl,0x0
00000B6A  B600              mov dh,0x0
00000B6C  E83500            call word 0xba4
00000B6F  A04621            mov al,[0x2146]
00000B72  BB7E00            mov bx,0x7e
00000B75  B200              mov dl,0x0
00000B77  B600              mov dh,0x0
00000B79  E82800            call word 0xba4
00000B7C  A04721            mov al,[0x2147]
00000B7F  BB8500            mov bx,0x85
00000B82  B200              mov dl,0x0
00000B84  B600              mov dh,0x0
00000B86  E81B00            call word 0xba4
00000B89  A04821            mov al,[0x2148]
00000B8C  BB8C00            mov bx,0x8c
00000B8F  B200              mov dl,0x0
00000B91  B600              mov dh,0x0
00000B93  E80E00            call word 0xba4
00000B96  A04921            mov al,[0x2149]
00000B99  BB9300            mov bx,0x93
00000B9C  B200              mov dl,0x0
00000B9E  B600              mov dh,0x0
00000BA0  E80100            call word 0xba4
00000BA3  C3                ret
00000BA4  E80400            call word 0xbab
00000BA7  E84708            call word 0x13f1
00000BAA  C3                ret
00000BAB  3C30              cmp al,0x30
00000BAD  7506              jnz 0xbb5
00000BAF  B8A015            mov ax,0x15a0
00000BB2  E97501            jmp word 0xd2a
00000BB5  3C31              cmp al,0x31
00000BB7  7506              jnz 0xbbf
00000BB9  B8AE15            mov ax,0x15ae
00000BBC  E96B01            jmp word 0xd2a
00000BBF  3C32              cmp al,0x32
00000BC1  7506              jnz 0xbc9
00000BC3  B8BC15            mov ax,0x15bc
00000BC6  E96101            jmp word 0xd2a
00000BC9  3C33              cmp al,0x33
00000BCB  7506              jnz 0xbd3
00000BCD  B8CA15            mov ax,0x15ca
00000BD0  E95701            jmp word 0xd2a
00000BD3  3C34              cmp al,0x34
00000BD5  7506              jnz 0xbdd
00000BD7  B8D815            mov ax,0x15d8
00000BDA  E94D01            jmp word 0xd2a
00000BDD  3C35              cmp al,0x35
00000BDF  7506              jnz 0xbe7
00000BE1  B8E615            mov ax,0x15e6
00000BE4  E94301            jmp word 0xd2a
00000BE7  3C36              cmp al,0x36
00000BE9  7506              jnz 0xbf1
00000BEB  B8F415            mov ax,0x15f4
00000BEE  E93901            jmp word 0xd2a
00000BF1  3C37              cmp al,0x37
00000BF3  7506              jnz 0xbfb
00000BF5  B80216            mov ax,0x1602
00000BF8  E92F01            jmp word 0xd2a
00000BFB  3C38              cmp al,0x38
00000BFD  7506              jnz 0xc05
00000BFF  B81016            mov ax,0x1610
00000C02  E92501            jmp word 0xd2a
00000C05  3C39              cmp al,0x39
00000C07  7506              jnz 0xc0f
00000C09  B81E16            mov ax,0x161e
00000C0C  E91B01            jmp word 0xd2a
00000C0F  3C41              cmp al,0x41
00000C11  7506              jnz 0xc19
00000C13  B85616            mov ax,0x1656
00000C16  E91101            jmp word 0xd2a
00000C19  3C42              cmp al,0x42
00000C1B  7506              jnz 0xc23
00000C1D  B86416            mov ax,0x1664
00000C20  E90701            jmp word 0xd2a
00000C23  3C43              cmp al,0x43
00000C25  7506              jnz 0xc2d
00000C27  B87216            mov ax,0x1672
00000C2A  E9FD00            jmp word 0xd2a
00000C2D  3C44              cmp al,0x44
00000C2F  7506              jnz 0xc37
00000C31  B88016            mov ax,0x1680
00000C34  E9F300            jmp word 0xd2a
00000C37  3C45              cmp al,0x45
00000C39  7506              jnz 0xc41
00000C3B  B88E16            mov ax,0x168e
00000C3E  E9E900            jmp word 0xd2a
00000C41  3C46              cmp al,0x46
00000C43  7506              jnz 0xc4b
00000C45  B89C16            mov ax,0x169c
00000C48  E9DF00            jmp word 0xd2a
00000C4B  3C47              cmp al,0x47
00000C4D  7506              jnz 0xc55
00000C4F  B8AA16            mov ax,0x16aa
00000C52  E9D500            jmp word 0xd2a
00000C55  3C48              cmp al,0x48
00000C57  7506              jnz 0xc5f
00000C59  B8B816            mov ax,0x16b8
00000C5C  E9CB00            jmp word 0xd2a
00000C5F  3C49              cmp al,0x49
00000C61  7506              jnz 0xc69
00000C63  B8C616            mov ax,0x16c6
00000C66  E9C100            jmp word 0xd2a
00000C69  3C4A              cmp al,0x4a
00000C6B  7506              jnz 0xc73
00000C6D  B8D416            mov ax,0x16d4
00000C70  E9B700            jmp word 0xd2a
00000C73  3C4B              cmp al,0x4b
00000C75  7506              jnz 0xc7d
00000C77  B8E216            mov ax,0x16e2
00000C7A  E9AD00            jmp word 0xd2a
00000C7D  3C4C              cmp al,0x4c
00000C7F  7506              jnz 0xc87
00000C81  B8F016            mov ax,0x16f0
00000C84  E9A300            jmp word 0xd2a
00000C87  3C4D              cmp al,0x4d
00000C89  7506              jnz 0xc91
00000C8B  B8FE16            mov ax,0x16fe
00000C8E  E99900            jmp word 0xd2a
00000C91  3C4E              cmp al,0x4e
00000C93  7506              jnz 0xc9b
00000C95  B80C17            mov ax,0x170c
00000C98  E98F00            jmp word 0xd2a
00000C9B  3C4F              cmp al,0x4f
00000C9D  7506              jnz 0xca5
00000C9F  B81A17            mov ax,0x171a
00000CA2  E98500            jmp word 0xd2a
00000CA5  3C50              cmp al,0x50
00000CA7  7506              jnz 0xcaf
00000CA9  B82817            mov ax,0x1728
00000CAC  EB7C              jmp short 0xd2a
00000CAE  90                nop
00000CAF  3C51              cmp al,0x51
00000CB1  7506              jnz 0xcb9
00000CB3  B83617            mov ax,0x1736
00000CB6  EB72              jmp short 0xd2a
00000CB8  90                nop
00000CB9  3C52              cmp al,0x52
00000CBB  7506              jnz 0xcc3
00000CBD  B84417            mov ax,0x1744
00000CC0  EB68              jmp short 0xd2a
00000CC2  90                nop
00000CC3  3C53              cmp al,0x53
00000CC5  7506              jnz 0xccd
00000CC7  B85217            mov ax,0x1752
00000CCA  EB5E              jmp short 0xd2a
00000CCC  90                nop
00000CCD  3C54              cmp al,0x54
00000CCF  7506              jnz 0xcd7
00000CD1  B86017            mov ax,0x1760
00000CD4  EB54              jmp short 0xd2a
00000CD6  90                nop
00000CD7  3C55              cmp al,0x55
00000CD9  7506              jnz 0xce1
00000CDB  B86E17            mov ax,0x176e
00000CDE  EB4A              jmp short 0xd2a
00000CE0  90                nop
00000CE1  3C56              cmp al,0x56
00000CE3  7506              jnz 0xceb
00000CE5  B87C17            mov ax,0x177c
00000CE8  EB40              jmp short 0xd2a
00000CEA  90                nop
00000CEB  3C57              cmp al,0x57
00000CED  7506              jnz 0xcf5
00000CEF  B88A17            mov ax,0x178a
00000CF2  EB36              jmp short 0xd2a
00000CF4  90                nop
00000CF5  3C58              cmp al,0x58
00000CF7  7506              jnz 0xcff
00000CF9  B89817            mov ax,0x1798
00000CFC  EB2C              jmp short 0xd2a
00000CFE  90                nop
00000CFF  3C59              cmp al,0x59
00000D01  7506              jnz 0xd09
00000D03  B8A617            mov ax,0x17a6
00000D06  EB22              jmp short 0xd2a
00000D08  90                nop
00000D09  3C5A              cmp al,0x5a
00000D0B  7506              jnz 0xd13
00000D0D  B8B417            mov ax,0x17b4
00000D10  EB18              jmp short 0xd2a
00000D12  90                nop
00000D13  3C3D              cmp al,0x3d
00000D15  7506              jnz 0xd1d
00000D17  B82C16            mov ax,0x162c
00000D1A  EB0E              jmp short 0xd2a
00000D1C  90                nop
00000D1D  3C28              cmp al,0x28
00000D1F  7506              jnz 0xd27
00000D21  B84816            mov ax,0x1648
00000D24  EB04              jmp short 0xd2a
00000D26  90                nop
00000D27  B83A16            mov ax,0x163a
00000D2A  C3                ret
00000D2B  833ED52000        cmp word [0x20d5],byte +0x0
00000D30  7410              jz 0xd42
00000D32  803ECC2054        cmp byte [0x20cc],0x54
00000D37  755B              jnz 0xd94
00000D39  C6064E2101        mov byte [0x214e],0x1
00000D3E  90                nop
00000D3F  EB53              jmp short 0xd94
00000D41  90                nop
00000D42  833ED32000        cmp word [0x20d3],byte +0x0
00000D47  7410              jz 0xd59
00000D49  803ECC205E        cmp byte [0x20cc],0x5e
00000D4E  7544              jnz 0xd94
00000D50  C6064E2101        mov byte [0x214e],0x1
00000D55  90                nop
00000D56  EB3C              jmp short 0xd94
00000D58  90                nop
00000D59  833ED12000        cmp word [0x20d1],byte +0x0
00000D5E  7410              jz 0xd70
00000D60  803ECC2068        cmp byte [0x20cc],0x68
00000D65  752D              jnz 0xd94
00000D67  C6064E2101        mov byte [0x214e],0x1
00000D6C  90                nop
00000D6D  EB25              jmp short 0xd94
00000D6F  90                nop
00000D70  833ECF2000        cmp word [0x20cf],byte +0x0
00000D75  7410              jz 0xd87
00000D77  803ECC2072        cmp byte [0x20cc],0x72
00000D7C  7516              jnz 0xd94
00000D7E  C6064E2101        mov byte [0x214e],0x1
00000D83  90                nop
00000D84  EB0E              jmp short 0xd94
00000D86  90                nop
00000D87  803ECC207C        cmp byte [0x20cc],0x7c
00000D8C  7506              jnz 0xd94
00000D8E  C6064E2101        mov byte [0x214e],0x1
00000D93  90                nop
00000D94  C3                ret
00000D95  A04421            mov al,[0x2144]
00000D98  24F0              and al,0xf0
00000D9A  3C50              cmp al,0x50
00000D9C  7522              jnz 0xdc0
00000D9E  E81401            call word 0xeb5
00000DA1  B500              mov ch,0x0
00000DA3  8A0E4421          mov cl,[0x2144]
00000DA7  80E10F            and cl,0xf
00000DAA  FEC1              inc cl
00000DAC  B80080            mov ax,0x8000
00000DAF  D1E8              shr ax,1
00000DB1  E2FC              loop 0xdaf
00000DB3  3106D520          xor [0x20d5],ax
00000DB7  B90500            mov cx,0x5
00000DBA  E8E5FC            call word 0xaa2
00000DBD  E9AC00            jmp word 0xe6c
00000DC0  A04421            mov al,[0x2144]
00000DC3  24F0              and al,0xf0
00000DC5  3C40              cmp al,0x40
00000DC7  7522              jnz 0xdeb
00000DC9  E8E900            call word 0xeb5
00000DCC  B500              mov ch,0x0
00000DCE  8A0E4421          mov cl,[0x2144]
00000DD2  80E10F            and cl,0xf
00000DD5  FEC1              inc cl
00000DD7  B80080            mov ax,0x8000
00000DDA  D1E8              shr ax,1
00000DDC  E2FC              loop 0xdda
00000DDE  3106D320          xor [0x20d3],ax
00000DE2  B90A00            mov cx,0xa
00000DE5  E8BAFC            call word 0xaa2
00000DE8  E98100            jmp word 0xe6c
00000DEB  A04421            mov al,[0x2144]
00000DEE  24F0              and al,0xf0
00000DF0  3C30              cmp al,0x30
00000DF2  7522              jnz 0xe16
00000DF4  E8BE00            call word 0xeb5
00000DF7  B500              mov ch,0x0
00000DF9  8A0E4421          mov cl,[0x2144]
00000DFD  80E10F            and cl,0xf
00000E00  FEC1              inc cl
00000E02  B80080            mov ax,0x8000
00000E05  D1E8              shr ax,1
00000E07  E2FC              loop 0xe05
00000E09  3106D120          xor [0x20d1],ax
00000E0D  B90F00            mov cx,0xf
00000E10  E88FFC            call word 0xaa2
00000E13  EB57              jmp short 0xe6c
00000E15  90                nop
00000E16  A04421            mov al,[0x2144]
00000E19  24F0              and al,0xf0
00000E1B  3C20              cmp al,0x20
00000E1D  7522              jnz 0xe41
00000E1F  E89300            call word 0xeb5
00000E22  B500              mov ch,0x0
00000E24  8A0E4421          mov cl,[0x2144]
00000E28  80E10F            and cl,0xf
00000E2B  FEC1              inc cl
00000E2D  B80080            mov ax,0x8000
00000E30  D1E8              shr ax,1
00000E32  E2FC              loop 0xe30
00000E34  3106CF20          xor [0x20cf],ax
00000E38  B91400            mov cx,0x14
00000E3B  E864FC            call word 0xaa2
00000E3E  EB2C              jmp short 0xe6c
00000E40  90                nop
00000E41  A04421            mov al,[0x2144]
00000E44  24F0              and al,0xf0
00000E46  3C10              cmp al,0x10
00000E48  7522              jnz 0xe6c
00000E4A  E86800            call word 0xeb5
00000E4D  B500              mov ch,0x0
00000E4F  8A0E4421          mov cl,[0x2144]
00000E53  80E10F            and cl,0xf
00000E56  FEC1              inc cl
00000E58  B80080            mov ax,0x8000
00000E5B  D1E8              shr ax,1
00000E5D  E2FC              loop 0xe5b
00000E5F  3106CD20          xor [0x20cd],ax
00000E63  B91900            mov cx,0x19
00000E66  E839FC            call word 0xaa2
00000E69  EB20              jmp short 0xe8b
00000E6B  90                nop
00000E6C  803E442103        cmp byte [0x2144],0x3
00000E71  7518              jnz 0xe8b
00000E73  B80615            mov ax,0x1506
00000E76  8B1EE420          mov bx,[0x20e4]
00000E7A  B20A              mov dl,0xa
00000E7C  E8CD05            call word 0x144c
00000E7F  C706E4200000      mov word [0x20e4],0x0
00000E85  B96400            mov cx,0x64
00000E88  E817FC            call word 0xaa2
00000E8B  833ECD2000        cmp word [0x20cd],byte +0x0
00000E90  7522              jnz 0xeb4
00000E92  833ECF2000        cmp word [0x20cf],byte +0x0
00000E97  751B              jnz 0xeb4
00000E99  833ED12000        cmp word [0x20d1],byte +0x0
00000E9E  7514              jnz 0xeb4
00000EA0  833ED32000        cmp word [0x20d3],byte +0x0
00000EA5  750D              jnz 0xeb4
00000EA7  833ED52000        cmp word [0x20d5],byte +0x0
00000EAC  7506              jnz 0xeb4
00000EAE  C606E02001        mov byte [0x20e0],0x1
00000EB3  90                nop
00000EB4  C3                ret
00000EB5  803E412101        cmp byte [0x2141],0x1
00000EBA  7404              jz 0xec0
00000EBC  FE0E4121          dec byte [0x2141]
00000EC0  C3                ret
00000EC1  F606432180        test byte [0x2143],0x80
00000EC6  90                nop
00000EC7  7570              jnz 0xf39
00000EC9  BBFA00            mov bx,0xfa
00000ECC  A1CD20            mov ax,[0x20cd]
00000ECF  0B06CF20          or ax,[0x20cf]
00000ED3  0B06D120          or ax,[0x20d1]
00000ED7  0B06D320          or ax,[0x20d3]
00000EDB  0B06D520          or ax,[0x20d5]
00000EDF  B90A00            mov cx,0xa
00000EE2  D1E0              shl ax,1
00000EE4  A90080            test ax,0x8000
00000EE7  7505              jnz 0xeee
00000EE9  83EB10            sub bx,byte +0x10
00000EEC  E2F4              loop 0xee2
00000EEE  BA2A01            mov dx,0x12a
00000EF1  A1CD20            mov ax,[0x20cd]
00000EF4  0B06CF20          or ax,[0x20cf]
00000EF8  0B06D120          or ax,[0x20d1]
00000EFC  0B06D320          or ax,[0x20d3]
00000F00  0B06D520          or ax,[0x20d5]
00000F04  B90A00            mov cx,0xa
00000F07  D1E8              shr ax,1
00000F09  D1E8              shr ax,1
00000F0B  D1E8              shr ax,1
00000F0D  D1E8              shr ax,1
00000F0F  A90100            test ax,0x1
00000F12  7505              jnz 0xf19
00000F14  83C210            add dx,byte +0x10
00000F17  E2F4              loop 0xf0d
00000F19  3916CA20          cmp [0x20ca],dx
00000F1D  7406              jz 0xf25
00000F1F  391ECA20          cmp [0x20ca],bx
00000F23  7514              jnz 0xf39
00000F25  8036422180        xor byte [0x2142],0x80
00000F2A  90                nop
00000F2B  8006CC2002        add byte [0x20cc],0x2
00000F30  C606432180        mov byte [0x2143],0x80
00000F35  90                nop
00000F36  EB1A              jmp short 0xf52
00000F38  90                nop
00000F39  C606432100        mov byte [0x2143],0x0
00000F3E  90                nop
00000F3F  F606422180        test byte [0x2142],0x80
00000F44  90                nop
00000F45  7407              jz 0xf4e
00000F47  FF06CA20          inc word [0x20ca]
00000F4B  EB05              jmp short 0xf52
00000F4D  90                nop
00000F4E  FF0ECA20          dec word [0x20ca]
00000F52  8036C92080        xor byte [0x20c9],0x80
00000F57  90                nop
00000F58  8A264121          mov ah,[0x2141]
00000F5C  88264021          mov [0x2140],ah
00000F60  F606DF2080        test byte [0x20df],0x80
00000F65  90                nop
00000F66  7412              jz 0xf7a
00000F68  B0B6              mov al,0xb6
00000F6A  E643              out 0x43,al
00000F6C  B090              mov al,0x90
00000F6E  E642              out 0x42,al
00000F70  B00F              mov al,0xf
00000F72  E642              out 0x42,al
00000F74  E461              in al,0x61
00000F76  0C03              or al,0x3
00000F78  E661              out 0x61,al
00000F7A  B90080            mov cx,0x8000
00000F7D  E2FE              loop 0xf7d
00000F7F  E461              in al,0x61
00000F81  24FC              and al,0xfc
00000F83  E661              out 0x61,al
00000F85  C3                ret
00000F86  A1D720            mov ax,[0x20d7]
00000F89  A3E120            mov [0x20e1],ax
00000F8C  C606E3207B        mov byte [0x20e3],0x7b
00000F91  90                nop
00000F92  F606DF2080        test byte [0x20df],0x80
00000F97  90                nop
00000F98  7412              jz 0xfac
00000F9A  B0B6              mov al,0xb6
00000F9C  E643              out 0x43,al
00000F9E  B090              mov al,0x90
00000FA0  E642              out 0x42,al
00000FA2  B001              mov al,0x1
00000FA4  E642              out 0x42,al
00000FA6  E461              in al,0x61
00000FA8  0C03              or al,0x3
00000FAA  E661              out 0x61,al
00000FAC  B90080            mov cx,0x8000
00000FAF  E2FE              loop 0xfaf
00000FB1  E461              in al,0x61
00000FB3  24FC              and al,0xfc
00000FB5  E661              out 0x61,al
00000FB7  C3                ret
00000FB8  B82215            mov ax,0x1522
00000FBB  8B1EE120          mov bx,[0x20e1]
00000FBF  8A16E320          mov dl,[0x20e3]
00000FC3  E88604            call word 0x144c
00000FC6  FE0EE320          dec byte [0x20e3]
00000FCA  FE0EE320          dec byte [0x20e3]
00000FCE  803EE32009        cmp byte [0x20e3],0x9
00000FD3  7509              jnz 0xfde
00000FD5  C706E1200000      mov word [0x20e1],0x0
00000FDB  EB29              jmp short 0x1006
00000FDD  90                nop
00000FDE  B82215            mov ax,0x1522
00000FE1  8B1EE120          mov bx,[0x20e1]
00000FE5  8A16E320          mov dl,[0x20e3]
00000FE9  B604              mov dh,0x4
00000FEB  E80304            call word 0x13f1
00000FEE  803E442100        cmp byte [0x2144],0x0
00000FF3  7411              jz 0x1006
00000FF5  803E442104        cmp byte [0x2144],0x4
00000FFA  740A              jz 0x1006
00000FFC  803E442106        cmp byte [0x2144],0x6
00001001  7403              jz 0x1006
00001003  E80100            call word 0x1007
00001006  C3                ret
00001007  B82215            mov ax,0x1522
0000100A  8B1EE120          mov bx,[0x20e1]
0000100E  8A16E320          mov dl,[0x20e3]
00001012  E83704            call word 0x144c
00001015  C706E1200000      mov word [0x20e1],0x0
0000101B  C3                ret
0000101C  833ED72032        cmp word [0x20d7],byte +0x32
00001021  7404              jz 0x1027
00001023  FF0ED720          dec word [0x20d7]
00001027  C3                ret
00001028  813ED7200301      cmp word [0x20d7],0x103
0000102E  7404              jz 0x1034
00001030  FF06D720          inc word [0x20d7]
00001034  C3                ret
00001035  B435              mov ah,0x35
00001037  B015              mov al,0x15
00001039  CD21              int 0x21
0000103B  891E4D10          mov [0x104d],bx
0000103F  8C064F10          mov [0x104f],es
00001043  B425              mov ah,0x25
00001045  B015              mov al,0x15
00001047  BA6510            mov dx,0x1065
0000104A  CD21              int 0x21
0000104C  C3                ret
0000104D  0000              add [bx+si],al
0000104F  0000              add [bx+si],al
00001051  0000              add [bx+si],al
00001053  2EA14F10          mov ax,[cs:0x104f]
00001057  8ED8              mov ds,ax
00001059  B425              mov ah,0x25
0000105B  B015              mov al,0x15
0000105D  2E8B164D10        mov dx,[cs:0x104d]
00001062  CD21              int 0x21
00001064  C3                ret
00001065  80FC4F            cmp ah,0x4f
00001068  755A              jnz 0x10c4
0000106A  A880              test al,0x80
0000106C  7506              jnz 0x1074
0000106E  2EC606DE2001      mov byte [cs:0x20de],0x1
00001074  3C4B              cmp al,0x4b
00001076  7506              jnz 0x107e
00001078  2EC606D92001      mov byte [cs:0x20d9],0x1
0000107E  3CCB              cmp al,0xcb
00001080  7506              jnz 0x1088
00001082  2EC606D92000      mov byte [cs:0x20d9],0x0
00001088  3C4D              cmp al,0x4d
0000108A  7506              jnz 0x1092
0000108C  2EC606DA2001      mov byte [cs:0x20da],0x1
00001092  3CCD              cmp al,0xcd
00001094  7506              jnz 0x109c
00001096  2EC606DA2000      mov byte [cs:0x20da],0x0
0000109C  3C1D              cmp al,0x1d
0000109E  7506              jnz 0x10a6
000010A0  2EC606DB2001      mov byte [cs:0x20db],0x1
000010A6  3C9D              cmp al,0x9d
000010A8  7506              jnz 0x10b0
000010AA  2EC606DB2000      mov byte [cs:0x20db],0x0
000010B0  3C01              cmp al,0x1
000010B2  7506              jnz 0x10ba
000010B4  2EC606DC2001      mov byte [cs:0x20dc],0x1
000010BA  3C1F              cmp al,0x1f
000010BC  7506              jnz 0x10c4
000010BE  2EC606DD2001      mov byte [cs:0x20dd],0x1
000010C4  2EA35110          mov [cs:0x1051],ax
000010C8  A11C00            mov ax,[0x1c]
000010CB  A31A00            mov [0x1a],ax
000010CE  2EA15110          mov ax,[cs:0x1051]
000010D2  F8                clc
000010D3  CF                iretw
000010D4  C70690114600      mov word [0x1190],0x46
000010DA  C606921164        mov byte [0x1192],0x64
000010DF  90                nop
000010E0  E82E00            call word 0x1111
000010E3  C70690117A00      mov word [0x1190],0x7a
000010E9  C606921164        mov byte [0x1192],0x64
000010EE  90                nop
000010EF  E81F00            call word 0x1111
000010F2  C7069011AE00      mov word [0x1190],0xae
000010F8  C606921164        mov byte [0x1192],0x64
000010FD  90                nop
000010FE  E81000            call word 0x1111
00001101  C7069011E200      mov word [0x1190],0xe2
00001107  C606921164        mov byte [0x1192],0x64
0000110C  90                nop
0000110D  E80100            call word 0x1111
00001110  C3                ret
00001111  B83015            mov ax,0x1530
00001114  8B1E9011          mov bx,[0x1190]
00001118  8A169211          mov dl,[0x1192]
0000111C  B602              mov dh,0x2
0000111E  E8D002            call word 0x13f1
00001121  8006921107        add byte [0x1192],0x7
00001126  B83E15            mov ax,0x153e
00001129  8B1E9011          mov bx,[0x1190]
0000112D  8A169211          mov dl,[0x1192]
00001131  B602              mov dh,0x2
00001133  E8BB02            call word 0x13f1
00001136  8006921107        add byte [0x1192],0x7
0000113B  B84C15            mov ax,0x154c
0000113E  8B1E9011          mov bx,[0x1190]
00001142  8A169211          mov dl,[0x1192]
00001146  B602              mov dh,0x2
00001148  E8A602            call word 0x13f1
0000114B  8306901110        add word [0x1190],byte +0x10
00001150  802E92110E        sub byte [0x1192],0xe
00001155  B85A15            mov ax,0x155a
00001158  8B1E9011          mov bx,[0x1190]
0000115C  8A169211          mov dl,[0x1192]
00001160  B602              mov dh,0x2
00001162  E88C02            call word 0x13f1
00001165  8006921107        add byte [0x1192],0x7
0000116A  B86815            mov ax,0x1568
0000116D  8B1E9011          mov bx,[0x1190]
00001171  8A169211          mov dl,[0x1192]
00001175  B602              mov dh,0x2
00001177  E87702            call word 0x13f1
0000117A  8006921107        add byte [0x1192],0x7
0000117F  B87615            mov ax,0x1576
00001182  8B1E9011          mov bx,[0x1190]
00001186  8A169211          mov dl,[0x1192]
0000118A  B602              mov dh,0x2
0000118C  E86202            call word 0x13f1
0000118F  C3                ret
00001190  0000              add [bx+si],al
00001192  00A1CA20          add [bx+di+0x20ca],ah
00001196  A35412            mov [0x1254],ax
00001199  A0CC20            mov al,[0x20cc]
0000119C  A25612            mov [0x1256],al
0000119F  BECD20            mov si,0x20cd
000011A2  C606A21210        mov byte [0x12a2],0x10
000011A7  90                nop
000011A8  F606C92080        test byte [0x20c9],0x80
000011AD  90                nop
000011AE  7406              jz 0x11b6
000011B0  B8A414            mov ax,0x14a4
000011B3  EB04              jmp short 0x11b9
000011B5  90                nop
000011B6  B89614            mov ax,0x1496
000011B9  A3A012            mov [0x12a0],ax
000011BC  FC                cld
000011BD  AD                lodsw
000011BE  89365712          mov [0x1257],si
000011C2  E89400            call word 0x1259
000011C5  C606A21220        mov byte [0x12a2],0x20
000011CA  90                nop
000011CB  F606C92080        test byte [0x20c9],0x80
000011D0  90                nop
000011D1  7406              jz 0x11d9
000011D3  B8C014            mov ax,0x14c0
000011D6  EB04              jmp short 0x11dc
000011D8  90                nop
000011D9  B8B214            mov ax,0x14b2
000011DC  A3A012            mov [0x12a0],ax
000011DF  8B365712          mov si,[0x1257]
000011E3  FC                cld
000011E4  AD                lodsw
000011E5  89365712          mov [0x1257],si
000011E9  E86D00            call word 0x1259
000011EC  C606A21230        mov byte [0x12a2],0x30
000011F1  90                nop
000011F2  F606C92080        test byte [0x20c9],0x80
000011F7  90                nop
000011F8  7406              jz 0x1200
000011FA  B8B214            mov ax,0x14b2
000011FD  EB04              jmp short 0x1203
000011FF  90                nop
00001200  B8C014            mov ax,0x14c0
00001203  A3A012            mov [0x12a0],ax
00001206  8B365712          mov si,[0x1257]
0000120A  FC                cld
0000120B  AD                lodsw
0000120C  89365712          mov [0x1257],si
00001210  E84600            call word 0x1259
00001213  C606A21240        mov byte [0x12a2],0x40
00001218  90                nop
00001219  F606C92080        test byte [0x20c9],0x80
0000121E  90                nop
0000121F  7406              jz 0x1227
00001221  B8DC14            mov ax,0x14dc
00001224  EB04              jmp short 0x122a
00001226  90                nop
00001227  B8CE14            mov ax,0x14ce
0000122A  A3A012            mov [0x12a0],ax
0000122D  8B365712          mov si,[0x1257]
00001231  FC                cld
00001232  AD                lodsw
00001233  89365712          mov [0x1257],si
00001237  E81F00            call word 0x1259
0000123A  C606A21250        mov byte [0x12a2],0x50
0000123F  90                nop
00001240  8B365712          mov si,[0x1257]
00001244  FC                cld
00001245  AD                lodsw
00001246  89365712          mov [0x1257],si
0000124A  E80C00            call word 0x1259
0000124D  C606442100        mov byte [0x2144],0x0
00001252  90                nop
00001253  C3                ret
00001254  0000              add [bx+si],al
00001256  0000              add [bx+si],al
00001258  00D1              add cl,dl
0000125A  E0C6              loopne 0x1222
0000125C  06                push es
0000125D  9F                lahf
0000125E  120B              adc cl,[bp+di]
00001260  90                nop
00001261  A90080            test ax,0x8000
00001264  741C              jz 0x1282
00001266  A3A312            mov [0x12a3],ax
00001269  A1A012            mov ax,[0x12a0]
0000126C  8B1E5412          mov bx,[0x1254]
00001270  81EBC800          sub bx,0xc8
00001274  8A165612          mov dl,[0x1256]
00001278  8A36A212          mov dh,[0x12a2]
0000127C  E87201            call word 0x13f1
0000127F  A1A312            mov ax,[0x12a3]
00001282  D1E0              shl ax,1
00001284  8306541210        add word [0x1254],byte +0x10
00001289  FE0E9F12          dec byte [0x129f]
0000128D  FE06A212          inc byte [0x12a2]
00001291  75CE              jnz 0x1261
00001293  800656120A        add byte [0x1256],0xa
00001298  A1CA20            mov ax,[0x20ca]
0000129B  A35412            mov [0x1254],ax
0000129E  C3                ret
0000129F  0000              add [bx+si],al
000012A1  0000              add [bx+si],al
000012A3  0000              add [bx+si],al
000012A5  A1CA20            mov ax,[0x20ca]
000012A8  A35412            mov [0x1254],ax
000012AB  A0CC20            mov al,[0x20cc]
000012AE  A25612            mov [0x1256],al
000012B1  BECD20            mov si,0x20cd
000012B4  F606C92080        test byte [0x20c9],0x80
000012B9  90                nop
000012BA  7406              jz 0x12c2
000012BC  B8A414            mov ax,0x14a4
000012BF  EB04              jmp short 0x12c5
000012C1  90                nop
000012C2  B89614            mov ax,0x1496
000012C5  A3A012            mov [0x12a0],ax
000012C8  FC                cld
000012C9  AD                lodsw
000012CA  89365712          mov [0x1257],si
000012CE  E87100            call word 0x1342
000012D1  F606C92080        test byte [0x20c9],0x80
000012D6  90                nop
000012D7  7406              jz 0x12df
000012D9  B8C014            mov ax,0x14c0
000012DC  EB04              jmp short 0x12e2
000012DE  90                nop
000012DF  B8B214            mov ax,0x14b2
000012E2  A3A012            mov [0x12a0],ax
000012E5  8B365712          mov si,[0x1257]
000012E9  FC                cld
000012EA  AD                lodsw
000012EB  89365712          mov [0x1257],si
000012EF  E85000            call word 0x1342
000012F2  F606C92080        test byte [0x20c9],0x80
000012F7  90                nop
000012F8  7406              jz 0x1300
000012FA  B8B214            mov ax,0x14b2
000012FD  EB04              jmp short 0x1303
000012FF  90                nop
00001300  B8C014            mov ax,0x14c0
00001303  A3A012            mov [0x12a0],ax
00001306  8B365712          mov si,[0x1257]
0000130A  FC                cld
0000130B  AD                lodsw
0000130C  89365712          mov [0x1257],si
00001310  E82F00            call word 0x1342
00001313  F606C92080        test byte [0x20c9],0x80
00001318  90                nop
00001319  7406              jz 0x1321
0000131B  B8DC14            mov ax,0x14dc
0000131E  EB04              jmp short 0x1324
00001320  90                nop
00001321  B8CE14            mov ax,0x14ce
00001324  A3A012            mov [0x12a0],ax
00001327  8B365712          mov si,[0x1257]
0000132B  FC                cld
0000132C  AD                lodsw
0000132D  89365712          mov [0x1257],si
00001331  E80E00            call word 0x1342
00001334  8B365712          mov si,[0x1257]
00001338  FC                cld
00001339  AD                lodsw
0000133A  89365712          mov [0x1257],si
0000133E  E80100            call word 0x1342
00001341  C3                ret
00001342  D1E0              shl ax,1
00001344  C6069F120B        mov byte [0x129f],0xb
00001349  A90080            test ax,0x8000
0000134C  7418              jz 0x1366
0000134E  A3A312            mov [0x12a3],ax
00001351  A1A012            mov ax,[0x12a0]
00001354  8B1E5412          mov bx,[0x1254]
00001358  81EBC800          sub bx,0xc8
0000135C  8A165612          mov dl,[0x1256]
00001360  E8E900            call word 0x144c
00001363  A1A312            mov ax,[0x12a3]
00001366  D1E0              shl ax,1
00001368  8306541210        add word [0x1254],byte +0x10
0000136D  FE0E9F12          dec byte [0x129f]
00001371  75D6              jnz 0x1349
00001373  800656120A        add byte [0x1256],0xa
00001378  A1CA20            mov ax,[0x20ca]
0000137B  A35412            mov [0x1254],ax
0000137E  C3                ret
0000137F  8BF0              mov si,ax
00001381  8AC2              mov al,dl
00001383  B400              mov ah,0x0
00001385  D1E0              shl ax,1
00001387  D1E0              shl ax,1
00001389  D1E0              shl ax,1
0000138B  D1E0              shl ax,1
0000138D  D1E0              shl ax,1
0000138F  D1E0              shl ax,1
00001391  8BC8              mov cx,ax
00001393  D1E1              shl cx,1
00001395  D1E1              shl cx,1
00001397  03C1              add ax,cx
00001399  03C3              add ax,bx
0000139B  8BF8              mov di,ax
0000139D  B800A0            mov ax,0xa000
000013A0  8EC0              mov es,ax
000013A2  C606F01305        mov byte [0x13f0],0x5
000013A7  90                nop
000013A8  C606EF130B        mov byte [0x13ef],0xb
000013AD  90                nop
000013AE  B207              mov dl,0x7
000013B0  FC                cld
000013B1  AD                lodsw
000013B2  8BD8              mov bx,ax
000013B4  B91000            mov cx,0x10
000013B7  F7C30080          test bx,0x8000
000013BB  7406              jz 0x13c3
000013BD  8AC6              mov al,dh
000013BF  AA                stosb
000013C0  EB02              jmp short 0x13c4
000013C2  90                nop
000013C3  47                inc di
000013C4  D1E3              shl bx,1
000013C6  E2EF              loop 0x13b7
000013C8  81C73001          add di,0x130
000013CC  FECA              dec dl
000013CE  75E1              jnz 0x13b1
000013D0  81EFB008          sub di,0x8b0
000013D4  FE0EEF13          dec byte [0x13ef]
000013D8  803EEF1300        cmp byte [0x13ef],0x0
000013DD  75CF              jnz 0x13ae
000013DF  81C71008          add di,0x810
000013E3  FE0EF013          dec byte [0x13f0]
000013E7  803EF01300        cmp byte [0x13f0],0x0
000013EC  75BA              jnz 0x13a8
000013EE  C3                ret
000013EF  0000              add [bx+si],al
000013F1  8BF0              mov si,ax
000013F3  8AC2              mov al,dl
000013F5  B400              mov ah,0x0
000013F7  D1E0              shl ax,1
000013F9  D1E0              shl ax,1
000013FB  D1E0              shl ax,1
000013FD  D1E0              shl ax,1
000013FF  D1E0              shl ax,1
00001401  D1E0              shl ax,1
00001403  8BC8              mov cx,ax
00001405  D1E1              shl cx,1
00001407  D1E1              shl cx,1
00001409  03C1              add ax,cx
0000140B  B95A24            mov cx,0x245a
0000140E  03C1              add ax,cx
00001410  03C3              add ax,bx
00001412  8BF8              mov di,ax
00001414  8CC8              mov ax,cs
00001416  8EC0              mov es,ax
00001418  B207              mov dl,0x7
0000141A  FC                cld
0000141B  AD                lodsw
0000141C  8BD8              mov bx,ax
0000141E  B91000            mov cx,0x10
00001421  F7C30080          test bx,0x8000
00001425  7417              jz 0x143e
00001427  803E442100        cmp byte [0x2144],0x0
0000142C  750A              jnz 0x1438
0000142E  268A05            mov al,[es:di]
00001431  3C00              cmp al,0x0
00001433  7403              jz 0x1438
00001435  A24421            mov [0x2144],al
00001438  8AC6              mov al,dh
0000143A  AA                stosb
0000143B  EB02              jmp short 0x143f
0000143D  90                nop
0000143E  47                inc di
0000143F  D1E3              shl bx,1
00001441  E2DE              loop 0x1421
00001443  81C73001          add di,0x130
00001447  FECA              dec dl
00001449  75D0              jnz 0x141b
0000144B  C3                ret
0000144C  8BF0              mov si,ax
0000144E  8AC2              mov al,dl
00001450  B400              mov ah,0x0
00001452  D1E0              shl ax,1
00001454  D1E0              shl ax,1
00001456  D1E0              shl ax,1
00001458  D1E0              shl ax,1
0000145A  D1E0              shl ax,1
0000145C  D1E0              shl ax,1
0000145E  8BC8              mov cx,ax
00001460  D1E1              shl cx,1
00001462  D1E1              shl cx,1
00001464  03C1              add ax,cx
00001466  B95A24            mov cx,0x245a
00001469  03C1              add ax,cx
0000146B  03C3              add ax,bx
0000146D  8BF8              mov di,ax
0000146F  8CC8              mov ax,cs
00001471  8EC0              mov es,ax
00001473  B207              mov dl,0x7
00001475  FC                cld
00001476  AD                lodsw
00001477  8BD8              mov bx,ax
00001479  B91000            mov cx,0x10
0000147C  F7C30080          test bx,0x8000
00001480  7406              jz 0x1488
00001482  B000              mov al,0x0
00001484  AA                stosb
00001485  EB02              jmp short 0x1489
00001487  90                nop
00001488  47                inc di
00001489  D1E3              shl bx,1
0000148B  E2EF              loop 0x147c
0000148D  81C73001          add di,0x130
00001491  FECA              dec dl
00001493  75E1              jnz 0x1476
00001495  C3                ret
00001496  000C              add [si],cl
00001498  001E002D          add [0x2d00],bl
0000149C  003F              add [bx],bh
0000149E  0012              add [bp+si],dl
000014A0  0021              add [bx+di],ah
000014A2  0012              add [bp+si],dl
000014A4  000C              add [si],cl
000014A6  001E002D          add [0x2d00],bl
000014AA  003F              add [bx],bh
000014AC  0012              add [bp+si],dl
000014AE  0021              add [bx+di],ah
000014B0  80400021          add byte [bx+si+0x0],0x21
000014B4  40                inc ax
000014B5  9E                sahf
000014B6  40                inc ax
000014B7  AD                lodsw
000014B8  807F003F          cmp byte [bx+0x0],0x3f
000014BC  0021              add [bx+di],ah
000014BE  80400021          add byte [bx+si+0x0],0x21
000014C2  001E002D          add [0x2d00],bl
000014C6  807F40BF          cmp byte [bx+0x40],0xbf
000014CA  40                inc ax
000014CB  A10012            mov ax,[0x1200]
000014CE  001E807F          add [0x7f80],bl
000014D2  C0CCC0            ror ah,byte 0xc0
000014D5  FF00              inc word [bx+si]
000014D7  21804C00          and [bx+si+0x4c],ax
000014DB  2100              and [bx+si],ax
000014DD  1E                push ds
000014DE  807FC0CC          cmp byte [bx-0x40],0xcc
000014E2  C0FF00            sar bh,byte 0x0
000014E5  21804C40          and [bx+si+0x404c],ax
000014E9  800000            add byte [bx+si],0x0
000014EC  0000              add [bx+si],al
000014EE  0000              add [bx+si],al
000014F0  0008              add [bx+si],cl
000014F2  0004              add [si],al
000014F4  0008              add [bx+si],cl
000014F6  0004              add [si],al
000014F8  0000              add [bx+si],al
000014FA  0000              add [bx+si],al
000014FC  0000              add [bx+si],al
000014FE  0004              add [si],al
00001500  0008              add [bx+si],cl
00001502  0004              add [si],al
00001504  0008              add [bx+si],cl
00001506  F0                lock
00001507  0F                db 0x0f
00001508  F00FFF            lock ud0
0000150B  FF                db 0xff
0000150C  FF                db 0xff
0000150D  FF                db 0xff
0000150E  FF                db 0xff
0000150F  FF                db 0xff
00001510  FE                db 0xfe
00001511  7FFC              jg 0x150f
00001513  3F                aas
00001514  0004              add [si],al
00001516  000EC07F          add [0x7fc0],cl
0000151A  E0FF              loopne 0x151b
0000151C  E0FF              loopne 0x151d
0000151E  E0FF              loopne 0x151f
00001520  0000              add [bx+si],al
00001522  0000              add [bx+si],al
00001524  0000              add [bx+si],al
00001526  0000              add [bx+si],al
00001528  0004              add [si],al
0000152A  0004              add [si],al
0000152C  0004              add [si],al
0000152E  0004              add [si],al
00001530  FF0F              dec word [bx]
00001532  FF1F              call word far [bx]
00001534  FF                db 0xff
00001535  3F                aas
00001536  FF                db 0xff
00001537  7FFF              jg 0x1538
00001539  FF                db 0xff
0000153A  FF                db 0xff
0000153B  FF                db 0xff
0000153C  FF                db 0xff
0000153D  FF                db 0xff
0000153E  FF                db 0xff
0000153F  FF                db 0xff
00001540  FF                db 0xff
00001541  FF                db 0xff
00001542  FF                db 0xff
00001543  FF                db 0xff
00001544  FF                db 0xff
00001545  FF                db 0xff
00001546  FF                db 0xff
00001547  FF                db 0xff
00001548  FF                db 0xff
00001549  FF                db 0xff
0000154A  FF                db 0xff
0000154B  FF81FF00          inc word [bx+di+0xff]
0000154F  FE00              inc byte [bx+si]
00001551  FC                cld
00001552  00F8              add al,bh
00001554  00F8              add al,bh
00001556  00F0              add al,dh
00001558  0000              add [bx+si],al
0000155A  00F0              add al,dh
0000155C  00F8              add al,bh
0000155E  00FC              add ah,bh
00001560  00FE              add dh,bh
00001562  00FF              add bh,bh
00001564  00FF              add bh,bh
00001566  00FF              add bh,bh
00001568  00FF              add bh,bh
0000156A  00FF              add bh,bh
0000156C  00FF              add bh,bh
0000156E  00FF              add bh,bh
00001570  00FF              add bh,bh
00001572  00FF              add bh,bh
00001574  00FF              add bh,bh
00001576  00FF              add bh,bh
00001578  007F00            add [bx+0x0],bh
0000157B  3F                aas
0000157C  001F              add [bx],bl
0000157E  001F              add [bx],bl
00001580  000F              add [bx],cl
00001582  0000              add [bx+si],al
00001584  C7                db 0xc7
00001585  7128              jno 0x15af
00001587  8A08              mov cl,[bx+si]
00001589  82                db 0x82
0000158A  087208            or [bp+si+0x8],dh
0000158D  0A28              or ch,[bx+si]
0000158F  8AC7              mov al,bh
00001591  71F8              jno 0x158b
00001593  3C80              cmp al,0x80
00001595  A280A2            mov [0xa280],al
00001598  F0BC80A2          lock mov sp,0xa280
0000159C  80A2F82200        and byte [bp+si+0x22f8],0x0
000015A1  3800              cmp [bx+si],al
000015A3  44                inc sp
000015A4  004C00            add [si+0x0],cl
000015A7  54                push sp
000015A8  006400            add [si+0x0],ah
000015AB  44                inc sp
000015AC  0038              add [bx+si],bh
000015AE  0010              add [bx+si],dl
000015B0  0030              add [bx+si],dh
000015B2  0010              add [bx+si],dl
000015B4  0010              add [bx+si],dl
000015B6  0010              add [bx+si],dl
000015B8  0010              add [bx+si],dl
000015BA  0038              add [bx+si],bh
000015BC  0038              add [bx+si],bh
000015BE  004400            add [si+0x0],al
000015C1  0400              add al,0x0
000015C3  1800              sbb [bx+si],al
000015C5  2000              and [bx+si],al
000015C7  40                inc ax
000015C8  007C00            add [si+0x0],bh
000015CB  3800              cmp [bx+si],al
000015CD  44                inc sp
000015CE  0004              add [si],al
000015D0  0018              add [bx+si],bl
000015D2  0004              add [si],al
000015D4  004400            add [si+0x0],al
000015D7  3800              cmp [bx+si],al
000015D9  44                inc sp
000015DA  004400            add [si+0x0],al
000015DD  44                inc sp
000015DE  007C00            add [si+0x0],bh
000015E1  0400              add al,0x0
000015E3  0400              add al,0x0
000015E5  0400              add al,0x0
000015E7  7C00              jl 0x15e9
000015E9  40                inc ax
000015EA  004000            add [bx+si+0x0],al
000015ED  7800              js 0x15ef
000015EF  0400              add al,0x0
000015F1  44                inc sp
000015F2  0038              add [bx+si],bh
000015F4  0038              add [bx+si],bh
000015F6  004400            add [si+0x0],al
000015F9  40                inc ax
000015FA  007800            add [bx+si+0x0],bh
000015FD  44                inc sp
000015FE  004400            add [si+0x0],al
00001601  3800              cmp [bx+si],al
00001603  7C00              jl 0x1605
00001605  0400              add al,0x0
00001607  0800              or [bx+si],al
00001609  1000              adc [bx+si],al
0000160B  1000              adc [bx+si],al
0000160D  1000              adc [bx+si],al
0000160F  1000              adc [bx+si],al
00001611  3800              cmp [bx+si],al
00001613  44                inc sp
00001614  004400            add [si+0x0],al
00001617  3800              cmp [bx+si],al
00001619  44                inc sp
0000161A  004400            add [si+0x0],al
0000161D  3800              cmp [bx+si],al
0000161F  3800              cmp [bx+si],al
00001621  44                inc sp
00001622  004400            add [si+0x0],al
00001625  3C00              cmp al,0x0
00001627  0400              add al,0x0
00001629  44                inc sp
0000162A  0038              add [bx+si],bh
0000162C  0000              add [bx+si],al
0000162E  0000              add [bx+si],al
00001630  007C00            add [si+0x0],bh
00001633  0000              add [bx+si],al
00001635  7C00              jl 0x1637
00001637  0000              add [bx+si],al
00001639  0000              add [bx+si],al
0000163B  0000              add [bx+si],al
0000163D  0000              add [bx+si],al
0000163F  0000              add [bx+si],al
00001641  0000              add [bx+si],al
00001643  0000              add [bx+si],al
00001645  0000              add [bx+si],al
00001647  1000              adc [bx+si],al
00001649  1E                push ds
0000164A  0021              add [bx+di],ah
0000164C  804C8048          or byte [si-0x80],0x48
00001650  804C0021          or byte [si+0x0],0x21
00001654  001E0038          add [0x3800],bl
00001658  004400            add [si+0x0],al
0000165B  44                inc sp
0000165C  007C00            add [si+0x0],bh
0000165F  44                inc sp
00001660  004400            add [si+0x0],al
00001663  44                inc sp
00001664  007800            add [bx+si+0x0],bh
00001667  44                inc sp
00001668  004400            add [si+0x0],al
0000166B  7800              js 0x166d
0000166D  44                inc sp
0000166E  004400            add [si+0x0],al
00001671  7800              js 0x1673
00001673  3800              cmp [bx+si],al
00001675  44                inc sp
00001676  004000            add [bx+si+0x0],al
00001679  40                inc ax
0000167A  004000            add [bx+si+0x0],al
0000167D  44                inc sp
0000167E  0038              add [bx+si],bh
00001680  007800            add [bx+si+0x0],bh
00001683  44                inc sp
00001684  004400            add [si+0x0],al
00001687  44                inc sp
00001688  004400            add [si+0x0],al
0000168B  44                inc sp
0000168C  007800            add [bx+si+0x0],bh
0000168F  7C00              jl 0x1691
00001691  40                inc ax
00001692  004000            add [bx+si+0x0],al
00001695  7800              js 0x1697
00001697  40                inc ax
00001698  004000            add [bx+si+0x0],al
0000169B  7C00              jl 0x169d
0000169D  7C00              jl 0x169f
0000169F  40                inc ax
000016A0  004000            add [bx+si+0x0],al
000016A3  7800              js 0x16a5
000016A5  40                inc ax
000016A6  004000            add [bx+si+0x0],al
000016A9  40                inc ax
000016AA  0038              add [bx+si],bh
000016AC  004400            add [si+0x0],al
000016AF  40                inc ax
000016B0  005C00            add [si+0x0],bl
000016B3  44                inc sp
000016B4  004400            add [si+0x0],al
000016B7  3800              cmp [bx+si],al
000016B9  44                inc sp
000016BA  004400            add [si+0x0],al
000016BD  44                inc sp
000016BE  007C00            add [si+0x0],bh
000016C1  44                inc sp
000016C2  004400            add [si+0x0],al
000016C5  44                inc sp
000016C6  007C00            add [si+0x0],bh
000016C9  1000              adc [bx+si],al
000016CB  1000              adc [bx+si],al
000016CD  1000              adc [bx+si],al
000016CF  1000              adc [bx+si],al
000016D1  1000              adc [bx+si],al
000016D3  7C00              jl 0x16d5
000016D5  0400              add al,0x0
000016D7  0400              add al,0x0
000016D9  0400              add al,0x0
000016DB  0400              add al,0x0
000016DD  0400              add al,0x0
000016DF  44                inc sp
000016E0  0038              add [bx+si],bh
000016E2  004400            add [si+0x0],al
000016E5  48                dec ax
000016E6  005000            add [bx+si+0x0],dl
000016E9  60                pushaw
000016EA  005000            add [bx+si+0x0],dl
000016ED  48                dec ax
000016EE  004400            add [si+0x0],al
000016F1  40                inc ax
000016F2  004000            add [bx+si+0x0],al
000016F5  40                inc ax
000016F6  004000            add [bx+si+0x0],al
000016F9  40                inc ax
000016FA  004000            add [bx+si+0x0],al
000016FD  7C00              jl 0x16ff
000016FF  44                inc sp
00001700  006C00            add [si+0x0],ch
00001703  54                push sp
00001704  004400            add [si+0x0],al
00001707  44                inc sp
00001708  004400            add [si+0x0],al
0000170B  44                inc sp
0000170C  004400            add [si+0x0],al
0000170F  64005400          add [fs:si+0x0],dl
00001713  4C                dec sp
00001714  004400            add [si+0x0],al
00001717  44                inc sp
00001718  004400            add [si+0x0],al
0000171B  3800              cmp [bx+si],al
0000171D  44                inc sp
0000171E  004400            add [si+0x0],al
00001721  44                inc sp
00001722  004400            add [si+0x0],al
00001725  44                inc sp
00001726  0038              add [bx+si],bh
00001728  007800            add [bx+si+0x0],bh
0000172B  44                inc sp
0000172C  004400            add [si+0x0],al
0000172F  7800              js 0x1731
00001731  40                inc ax
00001732  004000            add [bx+si+0x0],al
00001735  40                inc ax
00001736  0038              add [bx+si],bh
00001738  004400            add [si+0x0],al
0000173B  44                inc sp
0000173C  004400            add [si+0x0],al
0000173F  44                inc sp
00001740  004C00            add [si+0x0],cl
00001743  3C00              cmp al,0x0
00001745  7800              js 0x1747
00001747  44                inc sp
00001748  004400            add [si+0x0],al
0000174B  7800              js 0x174d
0000174D  44                inc sp
0000174E  004400            add [si+0x0],al
00001751  44                inc sp
00001752  0038              add [bx+si],bh
00001754  004400            add [si+0x0],al
00001757  40                inc ax
00001758  0038              add [bx+si],bh
0000175A  0004              add [si],al
0000175C  004400            add [si+0x0],al
0000175F  3800              cmp [bx+si],al
00001761  7C00              jl 0x1763
00001763  1000              adc [bx+si],al
00001765  1000              adc [bx+si],al
00001767  1000              adc [bx+si],al
00001769  1000              adc [bx+si],al
0000176B  1000              adc [bx+si],al
0000176D  1000              adc [bx+si],al
0000176F  44                inc sp
00001770  004400            add [si+0x0],al
00001773  44                inc sp
00001774  004400            add [si+0x0],al
00001777  44                inc sp
00001778  004400            add [si+0x0],al
0000177B  3800              cmp [bx+si],al
0000177D  44                inc sp
0000177E  004400            add [si+0x0],al
00001781  44                inc sp
00001782  004400            add [si+0x0],al
00001785  44                inc sp
00001786  0028              add [bx+si],ch
00001788  0010              add [bx+si],dl
0000178A  004400            add [si+0x0],al
0000178D  44                inc sp
0000178E  004400            add [si+0x0],al
00001791  44                inc sp
00001792  005400            add [si+0x0],dl
00001795  6C                insb
00001796  004400            add [si+0x0],al
00001799  44                inc sp
0000179A  004400            add [si+0x0],al
0000179D  2800              sub [bx+si],al
0000179F  1000              adc [bx+si],al
000017A1  2800              sub [bx+si],al
000017A3  44                inc sp
000017A4  004400            add [si+0x0],al
000017A7  44                inc sp
000017A8  004400            add [si+0x0],al
000017AB  2800              sub [bx+si],al
000017AD  1000              adc [bx+si],al
000017AF  1000              adc [bx+si],al
000017B1  1000              adc [bx+si],al
000017B3  1000              adc [bx+si],al
000017B5  7C00              jl 0x17b7
000017B7  0400              add al,0x0
000017B9  0800              or [bx+si],al
000017BB  1000              adc [bx+si],al
000017BD  2000              and [bx+si],al
000017BF  40                inc ax
000017C0  007C00            add [si+0x0],bh
000017C3  0000              add [bx+si],al
000017C5  0000              add [bx+si],al
000017C7  0000              add [bx+si],al
000017C9  0000              add [bx+si],al
000017CB  0000              add [bx+si],al
000017CD  0000              add [bx+si],al
000017CF  0000              add [bx+si],al
000017D1  0000              add [bx+si],al
000017D3  0000              add [bx+si],al
000017D5  0000              add [bx+si],al
000017D7  0000              add [bx+si],al
000017D9  0000              add [bx+si],al
000017DB  0000              add [bx+si],al
000017DD  0000              add [bx+si],al
000017DF  00FF              add bh,bh
000017E1  07                pop es
000017E2  0018              add [bx+si],bl
000017E4  0020              add [bx+si],ah
000017E6  0040FF            add [bx+si-0x1],al
000017E9  40                inc ax
000017EA  3F                aas
000017EB  40                inc ax
000017EC  0000              add [bx+si],al
000017EE  FFE3              jmp bx
000017F0  0014              add [si],dl
000017F2  000C              add [si],cl
000017F4  0004              add [si],al
000017F6  07                pop es
000017F7  06                push es
000017F8  03FA              add di,dx
000017FA  0000              add [bx+si],al
000017FC  0FF810            psubb mm2,[bx+si]
000017FF  06                push es
00001800  2001              and [bx+di],al
00001802  A000E0            mov al,[0xe000]
00001805  C0C1C0            rol cl,byte 0xc0
00001808  0000              add [bx+si],al
0000180A  00FC              add ah,bh
0000180C  0002              add [bp+si],al
0000180E  0101              add [bx+di],ax
00001810  0201              add al,[bx+di]
00001812  82                db 0x82
00001813  00848000          add [si+0x80],al
00001817  00FF              add bh,bh
00001819  1F                pop ds
0000181A  006000            add [bx+si+0x0],ah
0000181D  806000A0          and byte [bx+si+0x0],0xa0
00001821  001F              add [bx],bl
00001823  0100              add [bx+si],ax
00001825  00FF              add bh,bh
00001827  0300              add ax,[bx+si]
00001829  8400              test [bx+si],al
0000182B  48                dec ax
0000182C  00480F            add [bx+si+0xf],cl
0000182F  50                push ax
00001830  0F9000            seto [bx+si]
00001833  0080FF40          add [bx+si+0x40ff],al
00001837  004000            add [bx+si+0x0],al
0000183A  800000            add byte [bx+si],0x0
0000183D  FF00              inc word [bx+si]
0000183F  C00000            rol byte [bx+si],byte 0x0
00001842  0000              add [bx+si],al
00001844  0000              add [bx+si],al
00001846  0000              add [bx+si],al
00001848  0000              add [bx+si],al
0000184A  0000              add [bx+si],al
0000184C  0000              add [bx+si],al
0000184E  0000              add [bx+si],al
00001850  0000              add [bx+si],al
00001852  0000              add [bx+si],al
00001854  0000              add [bx+si],al
00001856  0000              add [bx+si],al
00001858  0000              add [bx+si],al
0000185A  0000              add [bx+si],al
0000185C  0000              add [bx+si],al
0000185E  0000              add [bx+si],al
00001860  0000              add [bx+si],al
00001862  0000              add [bx+si],al
00001864  0000              add [bx+si],al
00001866  0000              add [bx+si],al
00001868  0000              add [bx+si],al
0000186A  0000              add [bx+si],al
0000186C  0000              add [bx+si],al
0000186E  0000              add [bx+si],al
00001870  0000              add [bx+si],al
00001872  0000              add [bx+si],al
00001874  0000              add [bx+si],al
00001876  0000              add [bx+si],al
00001878  0020              add [bx+si],ah
0000187A  001C              add [si],bl
0000187C  FC                cld
0000187D  03C3              add ax,bx
0000187F  0F                db 0x0f
00001880  3E1000            adc [ds:bx+si],al
00001883  1000              adc [bx+si],al
00001885  0800              or [bx+si],al
00001887  E200              loop 0x1889
00001889  1903              sbb [bp+di],ax
0000188B  050103            add ax,0x301
0000188E  81028002          add word [bp+si],0x280
00001892  40                inc ax
00001893  0481              add al,0x81
00001895  01820603          add [bp+si+0x306],ax
00001899  F9                stc
0000189A  0001              add [bx+di],al
0000189C  0002              add [bp+si],al
0000189E  07                pop es
0000189F  82                db 0x82
000018A0  084444            or [si+0x44],al
000018A3  80484028          or byte [bx+si+0x40],0x28
000018A7  C02800            shr byte [bx+si],byte 0x0
000018AA  1800              sbb [bx+si],al
000018AC  18E0              sbb al,ah
000018AE  0C10              or al,0x10
000018B0  0001              add [bx+di],al
000018B2  0002              add [bp+si],al
000018B4  0002              add [bp+si],al
000018B6  7E04              jng 0x18bc
000018B8  81030100          add word [bp+di],0x1
000018BC  0300              add ax,[bx+si]
000018BE  0020              add [bx+si],ah
000018C0  0020              add [bx+si],ah
000018C2  3F                aas
000018C3  40                inc ax
000018C4  20403F            and [bx+si+0x3f],al
000018C7  800080            add byte [bx+si],0x80
000018CA  0000              add [bx+si],al
000018CC  0020              add [bx+si],ah
000018CE  0020              add [bx+si],ah
000018D0  00C0              add al,al
000018D2  0000              add [bx+si],al
000018D4  00F0              add al,dh
000018D6  0008              add [bx+si],cl
000018D8  0008              add [bx+si],cl
000018DA  0000              add [bx+si],al
000018DC  0000              add [bx+si],al
000018DE  0000              add [bx+si],al
000018E0  0000              add [bx+si],al
000018E2  0000              add [bx+si],al
000018E4  0000              add [bx+si],al
000018E6  0000              add [bx+si],al
000018E8  0000              add [bx+si],al
000018EA  0000              add [bx+si],al
000018EC  0000              add [bx+si],al
000018EE  0000              add [bx+si],al
000018F0  0000              add [bx+si],al
000018F2  0000              add [bx+si],al
000018F4  0000              add [bx+si],al
000018F6  0000              add [bx+si],al
000018F8  0000              add [bx+si],al
000018FA  0000              add [bx+si],al
000018FC  E01F              loopne 0x191d
000018FE  1120              adc [bx+si],sp
00001900  0920              or [bx+si],sp
00001902  0910              or [bx+si],dx
00001904  0000              add [bx+si],al
00001906  0000              add [bx+si],al
00001908  0000              add [bx+si],al
0000190A  0FFC10            paddb mm2,[bx+si]
0000190D  03D0              add dx,ax
0000190F  0038              add [bx+si],bh
00001911  0000              add [bx+si],al
00001913  07                pop es
00001914  FF00              inc word [bx+si]
00001916  0000              add [bx+si],al
00001918  FE                db 0xfe
00001919  F1                int1
0000191A  010A              add [bp+si],cx
0000191C  00060003          add [0x300],al
00001920  40                inc ax
00001921  383F              cmp [bx],bh
00001923  C00000            rol byte [bx+si],byte 0x0
00001926  E00F              loopne 0x1937
00001928  1010              adc [bx+si],dl
0000192A  10901050          adc [bx+si+0x5010],dl
0000192E  0844F0            or [si-0x10],al
00001931  830000            add word [bx+si],byte +0x0
00001934  E07F              loopne 0x19b5
00001936  10800880          adc [bx+si-0x7ff8],al
0000193A  0480              add al,0x80
0000193C  0B10              or dx,[bx+si]
0000193E  F00F0000          lock sldt [bx+si]
00001942  FF0F              dec word [bx]
00001944  0010              add [bx+si],dl
00001946  0010              add [bx+si],dl
00001948  0010              add [bx+si],dl
0000194A  0D00F0            or ax,0xf000
0000194D  FF00              inc word [bx+si]
0000194F  000F              add [bx],cl
00001951  F8                clc
00001952  10061001          adc [0x110],al
00001956  90                nop
00001957  0000              add [bx+si],al
00001959  00FF              add bh,bh
0000195B  FF00              inc word [bx+si]
0000195D  00F8              add al,bh
0000195F  FF05              inc word [di]
00001961  0005              add [di],al
00001963  000A              add [bp+si],cl
00001965  0000              add [bx+si],al
00001967  1000              adc [bx+si],al
00001969  E000              loopne 0x196b
0000196B  00FF              add bh,bh
0000196D  FF00              inc word [bx+si]
0000196F  0000              add [bx+si],al
00001971  0000              add [bx+si],al
00001973  0000              add [bx+si],al
00001975  0000              add [bx+si],al
00001977  0000              add [bx+si],al
00001979  003F              add [bx],bh
0000197B  80C060            add al,0x60
0000197E  0011              add [bx+di],dl
00001980  000A              add [bp+si],cl
00001982  0000              add [bx+si],al
00001984  0000              add [bx+si],al
00001986  0000              add [bx+si],al
00001988  00FF              add bh,bh
0000198A  800040            add byte [bx+si],0x40
0000198D  004000            add [bx+si+0x0],al
00001990  051004            add ax,0x410
00001993  0802              or [bp+si],al
00001995  0802              or [bp+si],al
00001997  0401              add al,0x1
00001999  0401              add al,0x1
0000199B  0200              add al,[bx+si]
0000199D  0208              add cl,[bx+si]
0000199F  000C              add [si],cl
000019A1  800380            add byte [bp+di],0x80
000019A4  0080C080          add [bx+si-0x7f40],al
000019A8  7040              jo 0x19ea
000019AA  4C                dec sp
000019AB  C080024001        rol byte [bx+si+0x4002],byte 0x1
000019B0  40                inc ax
000019B1  01A00090          add [bx+si-0x7000],sp
000019B5  004800            add [bx+si+0x0],cl
000019B8  44                inc sp
000019B9  0009              add [bx+di],cl
000019BB  2809              sub [bx+di],cl
000019BD  2809              sub [bx+di],cl
000019BF  180A              sbb [bp+si],cl
000019C1  0C0A              or al,0xa
000019C3  0406              add al,0x6
000019C5  0406              add al,0x6
000019C7  0202              add al,[bp+si]
000019C9  0002              add [bp+si],al
000019CB  0001              add [bx+di],al
000019CD  0000              add [bx+si],al
000019CF  06                push es
000019D0  0005              add [di],al
000019D2  800700            add byte [bx],0x0
000019D5  000F              add [bx],cl
000019D7  1009              adc [bx+di],cl
000019D9  100A              adc [bp+si],cl
000019DB  100A              adc [bp+si],cl
000019DD  90                nop
000019DE  0A900C50          or dl,[bx+si+0x500c]
000019E2  0C30              or al,0x30
000019E4  A000A0            mov al,[0xa000]
000019E7  00A000A0          add [bx+si-0x6000],ah
000019EB  00C0              add al,al
000019ED  00C0              add al,al
000019EF  00C0              add al,al
000019F1  00F2              add dl,dh
000019F3  3F                aas
000019F4  043F              add al,0x3f
000019F6  8400              test [bx+si],al
000019F8  8400              test [bx+si],al
000019FA  08FF              or bh,bh
000019FC  0880C8FF          or [bx+si-0x38],al
00001A00  C001C0            rol byte [bx+di],byte 0xc0
00001A03  0100              add [bx+si],ax
00001A05  0000              add [bx+si],al
00001A07  00C0              add al,al
00001A09  034002            add ax,[bx+si+0x2]
00001A0C  40                inc ax
00001A0D  0407              add al,0x7
00001A0F  0A07              or al,[bx]
00001A11  0A00              or al,[bx+si]
00001A13  31E0              xor ax,sp
00001A15  40                inc ax
00001A16  1C20              sbb al,0x20
00001A18  E617              out 0x17,al
00001A1A  1808              sbb [bx+si],cl
00001A1C  40                inc ax
00001A1D  E080              loopne 0x199f
00001A1F  9F                lahf
00001A20  007000            add [bx+si+0x0],dh
00001A23  0800              or [bx+si],al
00001A25  0400              add al,0x0
00001A27  0400              add al,0x0
00001A29  0400              add al,0x0
00001A2B  0100              add [bx+si],ax
00001A2D  0180007F          add [bx+si+0x7f00],ax
00001A31  0000              add [bx+si],al
00001A33  0000              add [bx+si],al
00001A35  0000              add [bx+si],al
00001A37  0023              add [bp+di],ah
00001A39  A02060            mov al,[0x6020]
00001A3C  1060E0            adc [bx+si-0x20],ah
00001A3F  9F                lahf
00001A40  0000              add [bx+si],al
00001A42  0000              add [bx+si],al
00001A44  0000              add [bx+si],al
00001A46  2200              and al,[bx+si]
00001A48  21C0              and ax,ax
00001A4A  1030              adc [bx+si],dh
00001A4C  E00F              loopne 0x1a5d
00001A4E  0000              add [bx+si],al
00001A50  0000              add [bx+si],al
00001A52  0000              add [bx+si],al
00001A54  0400              add al,0x0
00001A56  0400              add al,0x0
00001A58  04C0              add al,0xc0
00001A5A  FB                sti
00001A5B  3F                aas
00001A5C  0000              add [bx+si],al
00001A5E  0000              add [bx+si],al
00001A60  0000              add [bx+si],al
00001A62  0000              add [bx+si],al
00001A64  E003              loopne 0x1a69
00001A66  2004              and [si],al
00001A68  1F                pop ds
00001A69  F8                clc
00001A6A  0000              add [bx+si],al
00001A6C  0000              add [bx+si],al
00001A6E  0000              add [bx+si],al
00001A70  0030              add [bx+si],dh
00001A72  0010              add [bx+si],dl
00001A74  0010              add [bx+si],dl
00001A76  FF                db 0xff
00001A77  EF                out dx,ax
00001A78  0000              add [bx+si],al
00001A7A  0000              add [bx+si],al
00001A7C  0000              add [bx+si],al
00001A7E  40                inc ax
00001A7F  01800680          add [bx+si-0x7ffa],ax
00001A83  187FE0            sbb [bx-0x20],bh
00001A86  0000              add [bx+si],al
00001A88  0000              add [bx+si],al
00001A8A  0000              add [bx+si],al
00001A8C  3000              xor [bx+si],al
00001A8E  3000              xor [bx+si],al
00001A90  50                push ax
00001A91  008FFF00          add [bx+0xff],cl
00001A95  0000              add [bx+si],al
00001A97  0000              add [bx+si],al
00001A99  0020              add [bx+si],ah
00001A9B  0410              add al,0x10
00001A9D  0410              add al,0x10
00001A9F  080F              or [bx],cl
00001AA1  F00000            lock add [bx+si],al
00001AA4  0000              add [bx+si],al
00001AA6  0000              add [bx+si],al
00001AA8  0008              add [bx+si],cl
00001AAA  0008              add [bx+si],cl
00001AAC  000C              add [si],cl
00001AAE  FFF3              push bx
00001AB0  0000              add [bx+si],al
00001AB2  0000              add [bx+si],al
00001AB4  0000              add [bx+si],al
00001AB6  0004              add [si],al
00001AB8  0008              add [bx+si],cl
00001ABA  007000            add [bx+si+0x0],dh
00001ABD  800000            add byte [bx+si],0x0
00001AC0  0000              add [bx+si],al
00001AC2  0000              add [bx+si],al
00001AC4  0000              add [bx+si],al
00001AC6  0000              add [bx+si],al
00001AC8  0000              add [bx+si],al
00001ACA  0000              add [bx+si],al
00001ACC  0000              add [bx+si],al
00001ACE  0000              add [bx+si],al
00001AD0  0000              add [bx+si],al
00001AD2  0000              add [bx+si],al
00001AD4  0000              add [bx+si],al
00001AD6  0000              add [bx+si],al
00001AD8  0000              add [bx+si],al
00001ADA  0000              add [bx+si],al
00001ADC  0000              add [bx+si],al
00001ADE  0000              add [bx+si],al
00001AE0  0000              add [bx+si],al
00001AE2  0000              add [bx+si],al
00001AE4  FF07              inc word [bx]
00001AE6  FF1F              call word far [bx]
00001AE8  FF                db 0xff
00001AE9  3F                aas
00001AEA  003F              add [bx],bh
00001AEC  C03F00            sar byte [bx],byte 0x0
00001AEF  0000              add [bx+si],al
00001AF1  00FF              add bh,bh
00001AF3  E3FF              jcxz 0x1af4
00001AF5  F3                rep
00001AF6  FF                db 0xff
00001AF7  FB                sti
00001AF8  F8                clc
00001AF9  F9                stc
00001AFA  FC                cld
00001AFB  0100              add [bx+si],ax
00001AFD  0000              add [bx+si],al
00001AFF  000F              add [bx],cl
00001B01  F8                clc
00001B02  1F                pop ds
00001B03  FE                db 0xfe
00001B04  1F                pop ds
00001B05  FF                db 0xff
00001B06  3F                aas
00001B07  3F                aas
00001B08  3E3F              ds aas
00001B0A  0000              add [bx+si],al
00001B0C  0000              add [bx+si],al
00001B0E  00FC              add ah,bh
00001B10  00FE              add dh,bh
00001B12  01FE              add si,di
00001B14  01FF              add di,di
00001B16  037F00            add di,[bx+0x0]
00001B19  0000              add [bx+si],al
00001B1B  00FF              add bh,bh
00001B1D  1F                pop ds
00001B1E  FF                db 0xff
00001B1F  7F9F              jg 0x1ac0
00001B21  FF1F              call word far [bx]
00001B23  FF00              inc word [bx+si]
00001B25  FE00              inc byte [bx+si]
00001B27  0000              add [bx+si],al
00001B29  00FF              add bh,bh
00001B2B  03FF              add di,di
00001B2D  87FF              xchg di,di
00001B2F  87F0              xchg si,ax
00001B31  8F                db 0x8f
00001B32  F00F0000          lock sldt [bx+si]
00001B36  0000              add [bx+si],al
00001B38  80FF80            cmp bh,0x80
00001B3B  FF00              inc word [bx+si]
00001B3D  FF00              inc word [bx+si]
00001B3F  0000              add [bx+si],al
00001B41  0000              add [bx+si],al
00001B43  0000              add [bx+si],al
00001B45  0000              add [bx+si],al
00001B47  0000              add [bx+si],al
00001B49  0000              add [bx+si],al
00001B4B  0000              add [bx+si],al
00001B4D  0000              add [bx+si],al
00001B4F  0000              add [bx+si],al
00001B51  0000              add [bx+si],al
00001B53  0000              add [bx+si],al
00001B55  0000              add [bx+si],al
00001B57  0000              add [bx+si],al
00001B59  0000              add [bx+si],al
00001B5B  0000              add [bx+si],al
00001B5D  0000              add [bx+si],al
00001B5F  0000              add [bx+si],al
00001B61  0000              add [bx+si],al
00001B63  0000              add [bx+si],al
00001B65  0000              add [bx+si],al
00001B67  0000              add [bx+si],al
00001B69  0000              add [bx+si],al
00001B6B  0000              add [bx+si],al
00001B6D  0000              add [bx+si],al
00001B6F  0000              add [bx+si],al
00001B71  0000              add [bx+si],al
00001B73  0000              add [bx+si],al
00001B75  0000              add [bx+si],al
00001B77  0000              add [bx+si],al
00001B79  00FF              add bh,bh
00001B7B  1F                pop ds
00001B7C  FF03              inc word [bp+di]
00001B7E  0300              add ax,[bx+si]
00001B80  0000              add [bx+si],al
00001B82  C10FFF            ror word [bx],byte 0xff
00001B85  0FFF              ud0
00001B87  07                pop es
00001B88  FF01              inc word [bx+di]
00001B8A  FFE0              jmp ax
00001B8C  FC                cld
00001B8D  F8                clc
00001B8E  FE                db 0xfe
00001B8F  FC                cld
00001B90  7EFC              jng 0x1b8e
00001B92  7FFC              jg 0x1b90
00001B94  3F                aas
00001B95  F8                clc
00001B96  7EFE              jng 0x1b96
00001B98  7CF8              jl 0x1b92
00001B9A  FC                cld
00001B9B  00FF              add bh,bh
00001B9D  00FF              add bh,bh
00001B9F  01F8              add ax,di
00001BA1  01F0              add ax,si
00001BA3  83837F873F        add word [bp+di-0x7881],byte +0x3f
00001BA8  C7                db 0xc7
00001BA9  3F                aas
00001BAA  C7                db 0xc7
00001BAB  FFE7              jmp di
00001BAD  FFE7              jmp di
00001BAF  1F                pop ds
00001BB0  F3                rep
00001BB1  0F                db 0x0f
00001BB2  00FE              add dh,bh
00001BB4  00FC              add ah,bh
00001BB6  00FC              add ah,bh
00001BB8  00F8              add al,bh
00001BBA  7EFC              jng 0x1bb8
00001BBC  FE                db 0xfe
00001BBD  FF                db 0xff
00001BBE  FC                cld
00001BBF  FF                db 0xff
00001BC0  FF1F              call word far [bx]
00001BC2  FF1F              call word far [bx]
00001BC4  C03FC0            sar byte [bx],byte 0xc0
00001BC7  3F                aas
00001BC8  C07FFF7F          sar byte [bx-0x1],byte 0x7f
00001BCC  FF                db 0xff
00001BCD  FF00              inc word [bx+si]
00001BCF  C000C0            rol byte [bx+si],byte 0xc0
00001BD2  0000              add [bx+si],al
00001BD4  0000              add [bx+si],al
00001BD6  0000              add [bx+si],al
00001BD8  00F0              add al,dh
00001BDA  00F0              add al,dh
00001BDC  0000              add [bx+si],al
00001BDE  0000              add [bx+si],al
00001BE0  0000              add [bx+si],al
00001BE2  0000              add [bx+si],al
00001BE4  0000              add [bx+si],al
00001BE6  0000              add [bx+si],al
00001BE8  0000              add [bx+si],al
00001BEA  0000              add [bx+si],al
00001BEC  0000              add [bx+si],al
00001BEE  0000              add [bx+si],al
00001BF0  0000              add [bx+si],al
00001BF2  0000              add [bx+si],al
00001BF4  0000              add [bx+si],al
00001BF6  0000              add [bx+si],al
00001BF8  0000              add [bx+si],al
00001BFA  0000              add [bx+si],al
00001BFC  0000              add [bx+si],al
00001BFE  0000              add [bx+si],al
00001C00  E01F              loopne 0x1c21
00001C02  F01F              lock pop ds
00001C04  F00F0000          lock sldt [bx+si]
00001C08  0000              add [bx+si],al
00001C0A  0000              add [bx+si],al
00001C0C  0000              add [bx+si],al
00001C0E  0FFC0F            paddb mm1,[bx]
00001C11  FFC7              inc di
00001C13  FF                db 0xff
00001C14  FF00              inc word [bx+si]
00001C16  0000              add [bx+si],al
00001C18  0000              add [bx+si],al
00001C1A  0000              add [bx+si],al
00001C1C  FE                db 0xfe
00001C1D  F1                int1
00001C1E  FF                db 0xff
00001C1F  F9                stc
00001C20  FF                db 0xff
00001C21  FC                cld
00001C22  3F                aas
00001C23  C00000            rol byte [bx+si],byte 0x0
00001C26  0000              add [bx+si],al
00001C28  0000              add [bx+si],al
00001C2A  E00F              loopne 0x1c3b
00001C2C  E00F              loopne 0x1c3d
00001C2E  E08F              loopne 0x1bbf
00001C30  F0830000          lock add word [bx+si],byte +0x0
00001C34  0000              add [bx+si],al
00001C36  0000              add [bx+si],al
00001C38  E07F              loopne 0x1cb9
00001C3A  F07FF8            lock jg 0x1c35
00001C3D  7FF0              jg 0x1c2f
00001C3F  0F0000            sldt [bx+si]
00001C42  0000              add [bx+si],al
00001C44  0000              add [bx+si],al
00001C46  FF0F              dec word [bx]
00001C48  FF0F              dec word [bx]
00001C4A  FF0F              dec word [bx]
00001C4C  F0FF00            lock inc word [bx+si]
00001C4F  0000              add [bx+si],al
00001C51  0000              add [bx+si],al
00001C53  000F              add [bx],cl
00001C55  F8                clc
00001C56  0FFE0F            paddd mm1,[bx]
00001C59  FF                db 0xff
00001C5A  FF                db 0xff
00001C5B  FF00              inc word [bx+si]
00001C5D  0000              add [bx+si],al
00001C5F  0000              add [bx+si],al
00001C61  00F8              add al,bh
00001C63  FF                db 0xff
00001C64  F8                clc
00001C65  FFF1              push cx
00001C67  FF00              inc word [bx+si]
00001C69  E000              loopne 0x1c6b
00001C6B  0000              add [bx+si],al
00001C6D  0000              add [bx+si],al
00001C6F  00FF              add bh,bh
00001C71  FF                db 0xff
00001C72  FF                db 0xff
00001C73  FF                db 0xff
00001C74  FF                db 0xff
00001C75  FF00              inc word [bx+si]
00001C77  0000              add [bx+si],al
00001C79  0000              add [bx+si],al
00001C7B  0000              add [bx+si],al
00001C7D  003F              add [bx],bh
00001C7F  80FFE0            cmp bh,0xe0
00001C82  FFF1              push cx
00001C84  0000              add [bx+si],al
00001C86  0000              add [bx+si],al
00001C88  0000              add [bx+si],al
00001C8A  0000              add [bx+si],al
00001C8C  00FF              add bh,bh
00001C8E  80FF80            cmp bh,0x80
00001C91  FF                db 0xff
00001C92  F8                clc
00001C93  0FF807            psubb mm0,[bx]
00001C96  FC                cld
00001C97  07                pop es
00001C98  FC                cld
00001C99  03FE              add di,si
00001C9B  03FE              add di,si
00001C9D  01FF              add di,di
00001C9F  01F7              add di,si
00001CA1  FFF3              push bx
00001CA3  7FFC              jg 0x1ca1
00001CA5  7FFF              jg 0x1ca6
00001CA7  7F3F              jg 0x1ce8
00001CA9  7F8F              jg 0x1c3a
00001CAB  3F                aas
00001CAC  833F7F            cmp word [bx],byte +0x7f
00001CAF  FC                cld
00001CB0  3F                aas
00001CB1  FE                db 0xfe
00001CB2  3F                aas
00001CB3  FE                db 0xfe
00001CB4  1F                pop ds
00001CB5  FF0F              dec word [bx]
00001CB7  FF87FF83          inc word [bx-0x7c01]
00001CBB  FFF0              push ax
00001CBD  C7                db 0xc7
00001CBE  F0                lock
00001CBF  C7                db 0xc7
00001CC0  F0E7F1            lock out 0xf1,ax
00001CC3  F3F1              rep int1
00001CC5  FB                sti
00001CC6  F9                stc
00001CC7  FB                sti
00001CC8  F9                stc
00001CC9  FD                std
00001CCA  FC                cld
00001CCB  FF                db 0xff
00001CCC  FC                cld
00001CCD  FF                db 0xff
00001CCE  FE                db 0xfe
00001CCF  FF                db 0xff
00001CD0  FF                db 0xff
00001CD1  F9                stc
00001CD2  FF                db 0xff
00001CD3  F8                clc
00001CD4  7FF8              jg 0x1cce
00001CD6  FF                db 0xff
00001CD7  FFF0              push ax
00001CD9  0F                db 0x0f
00001CDA  F00FF10F          lock psllw mm1,[bx]
00001CDE  F1                int1
00001CDF  0FF10F            psllw mm1,[bx]
00001CE2  F3                rep
00001CE3  8F                db 0x8f
00001CE4  F3CF              rep iretw
00001CE6  1F                pop ds
00001CE7  FF1F              call word far [bx]
00001CE9  FF1F              call word far [bx]
00001CEB  FF1F              call word far [bx]
00001CED  FF                db 0xff
00001CEE  3F                aas
00001CEF  FF                db 0xff
00001CF0  3F                aas
00001CF1  FF                db 0xff
00001CF2  3F                aas
00001CF3  FF01              inc word [bx+di]
00001CF5  C003C0            rol byte [bp+di],byte 0xc0
00001CF8  03FF              add di,di
00001CFA  03FF              add di,di
00001CFC  07                pop es
00001CFD  0007              add [bx],al
00001CFF  0007              add [bx],al
00001D01  003F              add [bx],bh
00001D03  FE                db 0xfe
00001D04  3F                aas
00001D05  FE                db 0xfe
00001D06  FF                db 0xff
00001D07  FF                db 0xff
00001D08  FF                db 0xff
00001D09  FF                db 0xff
00001D0A  3F                aas
00001D0B  FC                cld
00001D0C  3F                aas
00001D0D  FC                cld
00001D0E  3F                aas
00001D0F  F8                clc
00001D10  F8                clc
00001D11  F1                int1
00001D12  F8                clc
00001D13  F1                int1
00001D14  FFC0              inc ax
00001D16  1F                pop ds
00001D17  8003C0            add byte [bp+di],0xc0
00001D1A  01E0              add ax,sp
00001D1C  E7F7              out 0xf7,ax
00001D1E  801F00            sbb byte [bx],0x0
00001D21  0000              add [bx+si],al
00001D23  8000F0            add byte [bx+si],0xf0
00001D26  00F8              add al,bh
00001D28  00F8              add al,bh
00001D2A  00F8              add al,bh
00001D2C  FF00              inc word [bx+si]
00001D2E  FF00              inc word [bx+si]
00001D30  7F00              jg 0x1d32
00001D32  0000              add [bx+si],al
00001D34  0000              add [bx+si],al
00001D36  0000              add [bx+si],al
00001D38  0000              add [bx+si],al
00001D3A  C01FC0            rcr byte [bx],byte 0xc0
00001D3D  9F                lahf
00001D3E  E09F              loopne 0x1cdf
00001D40  0000              add [bx+si],al
00001D42  0000              add [bx+si],al
00001D44  0000              add [bx+si],al
00001D46  0000              add [bx+si],al
00001D48  C1FFC0            sar di,byte 0xc0
00001D4B  3F                aas
00001D4C  E00F              loopne 0x1d5d
00001D4E  0000              add [bx+si],al
00001D50  0000              add [bx+si],al
00001D52  0000              add [bx+si],al
00001D54  0000              add [bx+si],al
00001D56  FB                sti
00001D57  FF                db 0xff
00001D58  FB                sti
00001D59  FF                db 0xff
00001D5A  FB                sti
00001D5B  3F                aas
00001D5C  0000              add [bx+si],al
00001D5E  0000              add [bx+si],al
00001D60  0000              add [bx+si],al
00001D62  0000              add [bx+si],al
00001D64  FF                db 0xff
00001D65  FF1F              call word far [bx]
00001D67  F8                clc
00001D68  1F                pop ds
00001D69  F8                clc
00001D6A  0000              add [bx+si],al
00001D6C  0000              add [bx+si],al
00001D6E  0000              add [bx+si],al
00001D70  0000              add [bx+si],al
00001D72  FFCF              dec di
00001D74  FF                db 0xff
00001D75  EF                out dx,ax
00001D76  FF                db 0xff
00001D77  EF                out dx,ax
00001D78  0000              add [bx+si],al
00001D7A  0000              add [bx+si],al
00001D7C  0000              add [bx+si],al
00001D7E  0000              add [bx+si],al
00001D80  3F                aas
00001D81  FE                db 0xfe
00001D82  7FF8              jg 0x1d7c
00001D84  7FE0              jg 0x1d66
00001D86  0000              add [bx+si],al
00001D88  0000              add [bx+si],al
00001D8A  0000              add [bx+si],al
00001D8C  0000              add [bx+si],al
00001D8E  CF                iretw
00001D8F  FFCF              dec di
00001D91  FF8FFF00          dec word [bx+0xff]
00001D95  0000              add [bx+si],al
00001D97  0000              add [bx+si],al
00001D99  0000              add [bx+si],al
00001D9B  001F              add [bx],bl
00001D9D  F8                clc
00001D9E  0FF80F            psubb mm1,[bx]
00001DA1  F00000            lock add [bx+si],al
00001DA4  0000              add [bx+si],al
00001DA6  0000              add [bx+si],al
00001DA8  0000              add [bx+si],al
00001DAA  FFF7              push di
00001DAC  FFF7              push di
00001DAE  FFF3              push bx
00001DB0  0000              add [bx+si],al
00001DB2  0000              add [bx+si],al
00001DB4  0000              add [bx+si],al
00001DB6  0000              add [bx+si],al
00001DB8  00F8              add al,bh
00001DBA  00F0              add al,dh
00001DBC  00800000          add [bx+si+0x0],al
00001DC0  0000              add [bx+si],al
00001DC2  0000              add [bx+si],al
00001DC4  0000              add [bx+si],al
00001DC6  0000              add [bx+si],al
00001DC8  0000              add [bx+si],al
00001DCA  0000              add [bx+si],al
00001DCC  0000              add [bx+si],al
00001DCE  0000              add [bx+si],al
00001DD0  0000              add [bx+si],al
00001DD2  0000              add [bx+si],al
00001DD4  0000              add [bx+si],al
00001DD6  0000              add [bx+si],al
00001DD8  0000              add [bx+si],al
00001DDA  0000              add [bx+si],al
00001DDC  0000              add [bx+si],al
00001DDE  0000              add [bx+si],al
00001DE0  0000              add [bx+si],al
00001DE2  FF1F              call word far [bx]
00001DE4  007800            add [bx+si+0x0],bh
00001DE7  E000              loopne 0x1de9
00001DE9  C00080            rol byte [bx+si],byte 0x80
00001DEC  0000              add [bx+si],al
00001DEE  0000              add [bx+si],al
00001DF0  FF870004          inc word [bx+0x400]
00001DF4  0000              add [bx+si],al
00001DF6  0000              add [bx+si],al
00001DF8  0000              add [bx+si],al
00001DFA  0000              add [bx+si],al
00001DFC  0000              add [bx+si],al
00001DFE  0F                db 0x0f
00001DFF  F01004            lock adc [si],al
00001E02  0000              add [bx+si],al
00001E04  0000              add [bx+si],al
00001E06  0000              add [bx+si],al
00001E08  0000              add [bx+si],al
00001E0A  0000              add [bx+si],al
00001E0C  00FC              add ah,bh
00001E0E  0002              add [bp+si],al
00001E10  0000              add [bx+si],al
00001E12  0000              add [bx+si],al
00001E14  0000              add [bx+si],al
00001E16  0000              add [bx+si],al
00001E18  0000              add [bx+si],al
00001E1A  FF0F              dec word [bx]
00001E1C  0020              add [bx+si],ah
00001E1E  00800000          add [bx+si+0x0],al
00001E22  0000              add [bx+si],al
00001E24  0000              add [bx+si],al
00001E26  0000              add [bx+si],al
00001E28  FF8000C0          inc word [bx+si-0x4000]
00001E2C  004000            add [bx+si+0x0],al
00001E2F  0000              add [bx+si],al
00001E31  0000              add [bx+si],al
00001E33  0000              add [bx+si],al
00001E35  00E0              add al,ah
00001E37  FF6000            jmp word [bx+si+0x0]
00001E3A  0000              add [bx+si],al
00001E3C  0000              add [bx+si],al
00001E3E  0000              add [bx+si],al
00001E40  0000              add [bx+si],al
00001E42  0030              add [bx+si],dh
00001E44  0000              add [bx+si],al
00001E46  0000              add [bx+si],al
00001E48  0000              add [bx+si],al
00001E4A  0000              add [bx+si],al
00001E4C  0000              add [bx+si],al
00001E4E  0000              add [bx+si],al
00001E50  0000              add [bx+si],al
00001E52  0000              add [bx+si],al
00001E54  0000              add [bx+si],al
00001E56  0000              add [bx+si],al
00001E58  0000              add [bx+si],al
00001E5A  0000              add [bx+si],al
00001E5C  0000              add [bx+si],al
00001E5E  0000              add [bx+si],al
00001E60  0000              add [bx+si],al
00001E62  0000              add [bx+si],al
00001E64  0000              add [bx+si],al
00001E66  0000              add [bx+si],al
00001E68  0000              add [bx+si],al
00001E6A  0000              add [bx+si],al
00001E6C  0000              add [bx+si],al
00001E6E  0000              add [bx+si],al
00001E70  0000              add [bx+si],al
00001E72  0000              add [bx+si],al
00001E74  0000              add [bx+si],al
00001E76  0000              add [bx+si],al
00001E78  0000              add [bx+si],al
00001E7A  0000              add [bx+si],al
00001E7C  0000              add [bx+si],al
00001E7E  0000              add [bx+si],al
00001E80  003C              add [si],bh
00001E82  3C30              cmp al,0x30
00001E84  0000              add [bx+si],al
00001E86  0000              add [bx+si],al
00001E88  0000              add [bx+si],al
00001E8A  0000              add [bx+si],al
00001E8C  0000              add [bx+si],al
00001E8E  0000              add [bx+si],al
00001E90  0000              add [bx+si],al
00001E92  0000              add [bx+si],al
00001E94  0000              add [bx+si],al
00001E96  0000              add [bx+si],al
00001E98  0000              add [bx+si],al
00001E9A  0100              add [bx+si],ax
00001E9C  0000              add [bx+si],al
00001E9E  0000              add [bx+si],al
00001EA0  0000              add [bx+si],al
00001EA2  0000              add [bx+si],al
00001EA4  0000              add [bx+si],al
00001EA6  0000              add [bx+si],al
00001EA8  00800000          add [bx+si+0x0],al
00001EAC  0000              add [bx+si],al
00001EAE  0000              add [bx+si],al
00001EB0  0000              add [bx+si],al
00001EB2  0000              add [bx+si],al
00001EB4  0000              add [bx+si],al
00001EB6  0000              add [bx+si],al
00001EB8  3F                aas
00001EB9  00810300          add [bx+di+0x3],al
00001EBD  0000              add [bx+si],al
00001EBF  0000              add [bx+si],al
00001EC1  0000              add [bx+si],al
00001EC3  0000              add [bx+si],al
00001EC5  0000              add [bx+si],al
00001EC7  001F              add [bx],bl
00001EC9  0000              add [bx+si],al
00001ECB  0000              add [bx+si],al
00001ECD  0000              add [bx+si],al
00001ECF  0000              add [bx+si],al
00001ED1  0000              add [bx+si],al
00001ED3  0000              add [bx+si],al
00001ED5  0000              add [bx+si],al
00001ED7  FC                cld
00001ED8  000C              add [si],cl
00001EDA  0000              add [bx+si],al
00001EDC  0000              add [bx+si],al
00001EDE  0000              add [bx+si],al
00001EE0  0000              add [bx+si],al
00001EE2  0000              add [bx+si],al
00001EE4  0000              add [bx+si],al
00001EE6  0000              add [bx+si],al
00001EE8  0000              add [bx+si],al
00001EEA  0000              add [bx+si],al
00001EEC  0000              add [bx+si],al
00001EEE  0000              add [bx+si],al
00001EF0  0000              add [bx+si],al
00001EF2  0000              add [bx+si],al
00001EF4  0000              add [bx+si],al
00001EF6  0000              add [bx+si],al
00001EF8  0000              add [bx+si],al
00001EFA  0000              add [bx+si],al
00001EFC  0000              add [bx+si],al
00001EFE  03FF              add di,di
00001F00  03E0              add sp,ax
00001F02  024002            add al,[bx+si+0x2]
00001F05  40                inc ax
00001F06  0020              add [bx+si],ah
00001F08  0000              add [bx+si],al
00001F0A  0000              add [bx+si],al
00001F0C  3F                aas
00001F0D  F03000            lock xor [bx+si],al
00001F10  0000              add [bx+si],al
00001F12  0000              add [bx+si],al
00001F14  0000              add [bx+si],al
00001F16  0000              add [bx+si],al
00001F18  0000              add [bx+si],al
00001F1A  FC                cld
00001F1B  C3                ret
00001F1C  0002              add [bp+si],al
00001F1E  0000              add [bx+si],al
00001F20  0000              add [bx+si],al
00001F22  0000              add [bx+si],al
00001F24  0000              add [bx+si],al
00001F26  0000              add [bx+si],al
00001F28  C01F00            rcr byte [bx],byte 0x0
00001F2B  1000              adc [bx+si],al
00001F2D  0000              add [bx+si],al
00001F2F  0000              add [bx+si],al
00001F31  0000              add [bx+si],al
00001F33  0000              add [bx+si],al
00001F35  00E0              add al,ah
00001F37  7F10              jg 0x1f49
00001F39  0008              add [bx+si],cl
00001F3B  0004              add [si],al
00001F3D  0000              add [bx+si],al
00001F3F  0000              add [bx+si],al
00001F41  0000              add [bx+si],al
00001F43  00FF              add bh,bh
00001F45  0F0000            sldt [bx+si]
00001F48  0000              add [bx+si],al
00001F4A  0000              add [bx+si],al
00001F4C  0000              add [bx+si],al
00001F4E  0000              add [bx+si],al
00001F50  0000              add [bx+si],al
00001F52  07                pop es
00001F53  F8                clc
00001F54  00060001          add [0x100],al
00001F58  0000              add [bx+si],al
00001F5A  0000              add [bx+si],al
00001F5C  0000              add [bx+si],al
00001F5E  0000              add [bx+si],al
00001F60  FC                cld
00001F61  FF04              inc word [si]
00001F63  0000              add [bx+si],al
00001F65  0000              add [bx+si],al
00001F67  0000              add [bx+si],al
00001F69  0000              add [bx+si],al
00001F6B  0000              add [bx+si],al
00001F6D  00FF              add bh,bh
00001F6F  3F                aas
00001F70  0000              add [bx+si],al
00001F72  0000              add [bx+si],al
00001F74  0000              add [bx+si],al
00001F76  0000              add [bx+si],al
00001F78  0000              add [bx+si],al
00001F7A  0000              add [bx+si],al
00001F7C  07                pop es
00001F7D  E000              loopne 0x1f7f
00001F7F  7800              js 0x1f81
00001F81  1C00              sbb al,0x0
00001F83  0C00              or al,0x0
00001F85  0400              add al,0x0
00001F87  0000              add [bx+si],al
00001F89  00E0              add al,ah
00001F8B  FFF0              push ax
00001F8D  007000            add [bx+si+0x0],dh
00001F90  3000              xor [bx+si],al
00001F92  0000              add [bx+si],al
00001F94  0020              add [bx+si],ah
00001F96  0110              add [bx+si],dx
00001F98  0110              add [bx+si],dx
00001F9A  0008              add [bx+si],cl
00001F9C  0008              add [bx+si],cl
00001F9E  0004              add [si],al
00001FA0  0004              add [si],al
00001FA2  0000              add [bx+si],al
00001FA4  0000              add [bx+si],al
00001FA6  0000              add [bx+si],al
00001FA8  0000              add [bx+si],al
00001FAA  0000              add [bx+si],al
00001FAC  0000              add [bx+si],al
00001FAE  0000              add [bx+si],al
00001FB0  0000              add [bx+si],al
00001FB2  0000              add [bx+si],al
00001FB4  0000              add [bx+si],al
00001FB6  0000              add [bx+si],al
00001FB8  0000              add [bx+si],al
00001FBA  0000              add [bx+si],al
00001FBC  0000              add [bx+si],al
00001FBE  0000              add [bx+si],al
00001FC0  0000              add [bx+si],al
00001FC2  0000              add [bx+si],al
00001FC4  0000              add [bx+si],al
00001FC6  0000              add [bx+si],al
00001FC8  0000              add [bx+si],al
00001FCA  0000              add [bx+si],al
00001FCC  0000              add [bx+si],al
00001FCE  0100              add [bx+si],ax
00001FD0  0000              add [bx+si],al
00001FD2  0000              add [bx+si],al
00001FD4  0002              add [bp+si],al
00001FD6  0000              add [bx+si],al
00001FD8  0000              add [bx+si],al
00001FDA  0000              add [bx+si],al
00001FDC  0000              add [bx+si],al
00001FDE  0000              add [bx+si],al
00001FE0  0000              add [bx+si],al
00001FE2  004000            add [bx+si+0x0],al
00001FE5  0000              add [bx+si],al
00001FE7  0000              add [bx+si],al
00001FE9  0000              add [bx+si],al
00001FEB  0000              add [bx+si],al
00001FED  0000              add [bx+si],al
00001FEF  0000              add [bx+si],al
00001FF1  0000              add [bx+si],al
00001FF3  0000              add [bx+si],al
00001FF5  0000              add [bx+si],al
00001FF7  00800000          add [bx+si+0x0],al
00001FFB  0000              add [bx+si],al
00001FFD  0000              add [bx+si],al
00001FFF  00E0              add al,ah
00002001  7F20              jg 0x2023
00002003  0000              add [bx+si],al
00002005  0000              add [bx+si],al
00002007  0000              add [bx+si],al
00002009  0000              add [bx+si],al
0000200B  0000              add [bx+si],al
0000200D  0000              add [bx+si],al
0000200F  0000              add [bx+si],al
00002011  0200              add al,[bx+si]
00002013  0000              add [bx+si],al
00002015  0000              add [bx+si],al
00002017  0000              add [bx+si],al
00002019  38E0              cmp al,ah
0000201B  1C18              sbb al,0x18
0000201D  0800              or [bx+si],al
0000201F  0000              add [bx+si],al
00002021  0000              add [bx+si],al
00002023  60                pushaw
00002024  000F              add [bx],cl
00002026  0007              add [bx],al
00002028  0003              add [bp+di],al
0000202A  0003              add [bp+di],al
0000202C  0002              add [bp+si],al
0000202E  0002              add [bp+si],al
00002030  0000              add [bx+si],al
00002032  0000              add [bx+si],al
00002034  0000              add [bx+si],al
00002036  0000              add [bx+si],al
00002038  0000              add [bx+si],al
0000203A  0000              add [bx+si],al
0000203C  004000            add [bx+si+0x0],al
0000203F  0000              add [bx+si],al
00002041  0000              add [bx+si],al
00002043  0000              add [bx+si],al
00002045  0000              add [bx+si],al
00002047  0000              add [bx+si],al
00002049  0000              add [bx+si],al
0000204B  0000              add [bx+si],al
0000204D  0000              add [bx+si],al
0000204F  0000              add [bx+si],al
00002051  0000              add [bx+si],al
00002053  0000              add [bx+si],al
00002055  0000              add [bx+si],al
00002057  0000              add [bx+si],al
00002059  0000              add [bx+si],al
0000205B  0000              add [bx+si],al
0000205D  0000              add [bx+si],al
0000205F  0000              add [bx+si],al
00002061  0000              add [bx+si],al
00002063  0000              add [bx+si],al
00002065  0000              add [bx+si],al
00002067  0000              add [bx+si],al
00002069  0000              add [bx+si],al
0000206B  0000              add [bx+si],al
0000206D  0000              add [bx+si],al
0000206F  0000              add [bx+si],al
00002071  0000              add [bx+si],al
00002073  0000              add [bx+si],al
00002075  0000              add [bx+si],al
00002077  0000              add [bx+si],al
00002079  0000              add [bx+si],al
0000207B  0000              add [bx+si],al
0000207D  0000              add [bx+si],al
0000207F  0000              add [bx+si],al
00002081  0000              add [bx+si],al
00002083  0000              add [bx+si],al
00002085  0000              add [bx+si],al
00002087  0000              add [bx+si],al
00002089  0000              add [bx+si],al
0000208B  0000              add [bx+si],al
0000208D  0000              add [bx+si],al
0000208F  0000              add [bx+si],al
00002091  0000              add [bx+si],al
00002093  0000              add [bx+si],al
00002095  0000              add [bx+si],al
00002097  0000              add [bx+si],al
00002099  0000              add [bx+si],al
0000209B  0000              add [bx+si],al
0000209D  0000              add [bx+si],al
0000209F  0000              add [bx+si],al
000020A1  0000              add [bx+si],al
000020A3  0000              add [bx+si],al
000020A5  0000              add [bx+si],al
000020A7  0000              add [bx+si],al
000020A9  0000              add [bx+si],al
000020AB  0000              add [bx+si],al
000020AD  0000              add [bx+si],al
000020AF  0000              add [bx+si],al
000020B1  0000              add [bx+si],al
000020B3  0000              add [bx+si],al
000020B5  0000              add [bx+si],al
000020B7  0000              add [bx+si],al
000020B9  0000              add [bx+si],al
000020BB  0000              add [bx+si],al
000020BD  0000              add [bx+si],al
000020BF  0000              add [bx+si],al
000020C1  0000              add [bx+si],al
000020C3  0000              add [bx+si],al
000020C5  0000              add [bx+si],al
000020C7  0000              add [bx+si],al
000020C9  0013              add [bp+di],dl
000020CB  011EF07F          add [0x7ff0],bx
000020CF  F07FF0            lock jg 0x20c2
000020D2  7FF0              jg 0x20c4
000020D4  7FF0              jg 0x20c6
000020D6  7F9A              jg 0x2072
000020D8  0000              add [bx+si],al
000020DA  0000              add [bx+si],al
000020DC  0000              add [bx+si],al
000020DE  00800000          add [bx+si+0x0],al
000020E2  0000              add [bx+si],al
000020E4  0000              add [bx+si],al
000020E6  0000              add [bx+si],al
000020E8  0000              add [bx+si],al
000020EA  0000              add [bx+si],al
000020EC  0000              add [bx+si],al
000020EE  0000              add [bx+si],al
000020F0  0000              add [bx+si],al
000020F2  0000              add [bx+si],al
000020F4  0000              add [bx+si],al
000020F6  0000              add [bx+si],al
000020F8  0000              add [bx+si],al
000020FA  0000              add [bx+si],al
000020FC  0000              add [bx+si],al
000020FE  0000              add [bx+si],al
00002100  0000              add [bx+si],al
00002102  0000              add [bx+si],al
00002104  0000              add [bx+si],al
00002106  0000              add [bx+si],al
00002108  0000              add [bx+si],al
0000210A  0000              add [bx+si],al
0000210C  0000              add [bx+si],al
0000210E  0000              add [bx+si],al
00002110  0000              add [bx+si],al
00002112  0000              add [bx+si],al
00002114  0000              add [bx+si],al
00002116  0000              add [bx+si],al
00002118  0000              add [bx+si],al
0000211A  0000              add [bx+si],al
0000211C  0000              add [bx+si],al
0000211E  0000              add [bx+si],al
00002120  0000              add [bx+si],al
00002122  0000              add [bx+si],al
00002124  0000              add [bx+si],al
00002126  0000              add [bx+si],al
00002128  0000              add [bx+si],al
0000212A  0000              add [bx+si],al
0000212C  0000              add [bx+si],al
0000212E  0000              add [bx+si],al
00002130  0000              add [bx+si],al
00002132  0000              add [bx+si],al
00002134  0000              add [bx+si],al
00002136  0000              add [bx+si],al
00002138  0000              add [bx+si],al
0000213A  0000              add [bx+si],al
0000213C  0000              add [bx+si],al
0000213E  1000              adc [bx+si],al
00002140  0137              add [bx],si
00002142  0000              add [bx+si],al
00002144  0030              add [bx+si],dh
00002146  3030              xor [bx+si],dh
00002148  3030              xor [bx+si],dh
0000214A  0033              add [bp+di],dh
0000214C  0202              add al,[bp+si]
0000214E  0000              add [bx+si],al
00002150  53                push bx
00002151  2020              and [bx+si],ah
00002153  50                push ax
00002154  2020              and [bx+si],ah
00002156  41                inc cx
00002157  2020              and [bx+si],ah
00002159  43                inc bx
0000215A  2020              and [bx+si],ah
0000215C  45                inc bp
0000215D  2020              and [bx+si],ah
0000215F  2020              and [bx+si],ah
00002161  204920            and [bx+di+0x20],cl
00002164  204E20            and [bp+0x20],cl
00002167  205620            and [bp+0x20],dl
0000216A  204120            and [bx+di+0x20],al
0000216D  204420            and [si+0x20],al
00002170  204520            and [di+0x20],al
00002173  205220            and [bp+si+0x20],dl
00002176  205300            and [bp+di+0x0],dl
00002179  43                inc bx
0000217A  4F                dec di
0000217B  50                push ax
0000217C  59                pop cx
0000217D  52                push dx
0000217E  49                dec cx
0000217F  47                inc di
00002180  48                dec ax
00002181  54                push sp
00002182  2028              and [bx+si],ch
00002184  2020              and [bx+si],ah
00002186  3139              xor [bx+di],di
00002188  3935              cmp [di],si
0000218A  204259            and [bp+si+0x59],al
0000218D  205041            and [bx+si+0x41],dl
00002190  55                push bp
00002191  4C                dec sp
00002192  20532E            and [bp+di+0x2e],dl
00002195  205245            and [bp+si+0x45],dl
00002198  49                dec cx
00002199  44                inc sp
0000219A  00414C            add [bx+di+0x4c],al
0000219D  4C                dec sp
0000219E  205249            and [bp+si+0x49],dl
000021A1  47                inc di
000021A2  48                dec ax
000021A3  54                push sp
000021A4  53                push bx
000021A5  205245            and [bp+si+0x45],dl
000021A8  53                push bx
000021A9  45                inc bp
000021AA  52                push dx
000021AB  56                push si
000021AC  45                inc bp
000021AD  44                inc sp
000021AE  2E003D            add [cs:di],bh
000021B1  2020              and [bx+si],ah
000021B3  2031              and [bx+di],dh
000021B5  3030              xor [bx+si],dh
000021B7  20504F            and [bx+si+0x4f],dl
000021BA  49                dec cx
000021BB  4E                dec si
000021BC  54                push sp
000021BD  53                push bx
000021BE  003D              add [di],bh
000021C0  2020              and [bx+si],ah
000021C2  2020              and [bx+si],ah
000021C4  3235              xor dh,[di]
000021C6  20504F            and [bx+si+0x4f],dl
000021C9  49                dec cx
000021CA  4E                dec si
000021CB  54                push sp
000021CC  53                push bx
000021CD  003D              add [di],bh
000021CF  2020              and [bx+si],ah
000021D1  2020              and [bx+si],ah
000021D3  3230              xor dh,[bx+si]
000021D5  20504F            and [bx+si+0x4f],dl
000021D8  49                dec cx
000021D9  4E                dec si
000021DA  54                push sp
000021DB  53                push bx
000021DC  003D              add [di],bh
000021DE  2020              and [bx+si],ah
000021E0  2020              and [bx+si],ah
000021E2  3135              xor [di],si
000021E4  20504F            and [bx+si+0x4f],dl
000021E7  49                dec cx
000021E8  4E                dec si
000021E9  54                push sp
000021EA  53                push bx
000021EB  003D              add [di],bh
000021ED  2020              and [bx+si],ah
000021EF  2020              and [bx+si],ah
000021F1  3130              xor [bx+si],si
000021F3  20504F            and [bx+si+0x4f],dl
000021F6  49                dec cx
000021F7  4E                dec si
000021F8  54                push sp
000021F9  53                push bx
000021FA  003D              add [di],bh
000021FC  2020              and [bx+si],ah
000021FE  2020              and [bx+si],ah
00002200  2035              and [di],dh
00002202  20504F            and [bx+si+0x4f],dl
00002205  49                dec cx
00002206  4E                dec si
00002207  54                push sp
00002208  53                push bx
00002209  005052            add [bx+si+0x52],dl
0000220C  45                inc bp
0000220D  53                push bx
0000220E  53                push bx
0000220F  20414E            and [bx+di+0x4e],al
00002212  59                pop cx
00002213  204B45            and [bp+di+0x45],cl
00002216  59                pop cx
00002217  20544F            and [si+0x4f],dl
0000221A  205354            and [bp+di+0x54],dl
0000221D  41                inc cx
0000221E  52                push dx
0000221F  54                push sp
00002220  204741            and [bx+0x41],al
00002223  4D                dec bp
00002224  45                inc bp
00002225  005052            add [bx+si+0x52],dl
00002228  45                inc bp
00002229  53                push bx
0000222A  53                push bx
0000222B  204553            and [di+0x53],al
0000222E  43                inc bx
0000222F  204154            and [bx+di+0x54],al
00002232  20414E            and [bx+di+0x4e],al
00002235  59                pop cx
00002236  205449            and [si+0x49],dl
00002239  4D                dec bp
0000223A  45                inc bp
0000223B  20544F            and [si+0x4f],dl
0000223E  204558            and [di+0x58],al
00002241  49                dec cx
00002242  54                push sp
00002243  20544F            and [si+0x4f],dl
00002246  20444F            and [si+0x4f],al
00002249  53                push bx
0000224A  002E2E2E          add [0x2e2e],ch
0000224E  44                inc sp
0000224F  45                inc bp
00002250  44                inc sp
00002251  49                dec cx
00002252  43                inc bx
00002253  41                inc cx
00002254  54                push sp
00002255  45                inc bp
00002256  44                inc sp
00002257  20544F            and [si+0x4f],dl
0000225A  204D59            and [di+0x59],cl
0000225D  205749            and [bx+0x49],dl
00002260  46                inc si
00002261  45                inc bp
00002262  204445            and [si+0x45],al
00002265  42                inc dx
00002266  2E2E2E005448      add [cs:si+0x48],dl
0000226C  41                inc cx
0000226D  4E                dec si
0000226E  4B                dec bx
0000226F  53                push bx
00002270  20544F            and [si+0x4f],dl
00002273  204252            and [bp+si+0x52],al
00002276  45                inc bp
00002277  4E                dec si
00002278  54                push sp
00002279  204B59            and [bp+di+0x59],cl
0000227C  4C                dec sp
0000227D  45                inc bp
0000227E  20414E            and [bx+di+0x4e],al
00002281  44                inc sp
00002282  20544F            and [si+0x4f],dl
00002285  4D                dec bp
00002286  205357            and [bp+di+0x57],dl
00002289  41                inc cx
0000228A  4E                dec si
0000228B  005052            add [bx+si+0x52],dl
0000228E  45                inc bp
0000228F  53                push bx
00002290  53                push bx
00002291  205320            and [bp+di+0x20],dl
00002294  54                push sp
00002295  4F                dec di
00002296  20544F            and [si+0x4f],dl
00002299  47                inc di
0000229A  47                inc di
0000229B  4C                dec sp
0000229C  45                inc bp
0000229D  20534F            and [bp+di+0x4f],dl
000022A0  55                push bp
000022A1  4E                dec si
000022A2  44                inc sp
000022A3  204154            and [bx+di+0x54],al
000022A6  20414E            and [bx+di+0x4e],al
000022A9  59                pop cx
000022AA  205449            and [si+0x49],dl
000022AD  4D                dec bp
000022AE  45                inc bp
000022AF  004C45            add [si+0x45],cl
000022B2  46                inc si
000022B3  54                push sp
000022B4  20414E            and [bx+di+0x4e],al
000022B7  44                inc sp
000022B8  205249            and [bp+si+0x49],dl
000022BB  47                inc di
000022BC  48                dec ax
000022BD  54                push sp
000022BE  204355            and [bp+di+0x55],al
000022C1  52                push dx
000022C2  53                push bx
000022C3  4F                dec di
000022C4  52                push dx
000022C5  20544F            and [si+0x4f],dl
000022C8  204D4F            and [di+0x4f],cl
000022CB  56                push si
000022CC  45                inc bp
000022CD  2E204354          and [cs:bp+di+0x54],al
000022D1  52                push dx
000022D2  4C                dec sp
000022D3  20544F            and [si+0x4f],dl
000022D6  204649            and [bp+0x49],al
000022D9  52                push dx
000022DA  45                inc bp
000022DB  002E5448          add [0x4854],ch
000022DF  49                dec cx
000022E0  53                push bx
000022E1  204741            and [bx+0x41],al
000022E4  4D                dec bp
000022E5  45                inc bp
000022E6  20414E            and [bx+di+0x4e],al
000022E9  44                inc sp
000022EA  20534F            and [bp+di+0x4f],dl
000022ED  55                push bp
000022EE  52                push dx
000022EF  43                inc bx
000022F0  45                inc bp
000022F1  20434F            and [bp+di+0x4f],al
000022F4  44                inc sp
000022F5  45                inc bp
000022F6  204152            and [bx+di+0x52],al
000022F9  45                inc bp
000022FA  204652            and [bp+0x52],al
000022FD  45                inc bp
000022FE  45                inc bp
000022FF  4C                dec sp
00002300  59                pop cx
00002301  204449            and [si+0x49],al
00002304  53                push bx
00002305  54                push sp
00002306  52                push dx
00002307  49                dec cx
00002308  42                inc dx
00002309  55                push bp
0000230A  54                push sp
0000230B  41                inc cx
0000230C  42                inc dx
0000230D  4C                dec sp
0000230E  45                inc bp
0000230F  2E004720          add [cs:bx+0x20],al
00002313  204120            and [bx+di+0x20],al
00002316  204D20            and [di+0x20],cl
00002319  204520            and [di+0x20],al
0000231C  2020              and [bx+si],ah
0000231E  2020              and [bx+si],ah
00002320  204F20            and [bx+0x20],cl
00002323  205620            and [bp+0x20],dl
00002326  204520            and [di+0x20],al
00002329  205200            and [bp+si+0x0],dl
0000232C  47                inc di
0000232D  2020              and [bx+si],ah
0000232F  45                inc bp
00002330  2020              and [bx+si],ah
00002332  54                push sp
00002333  2020              and [bx+si],ah
00002335  2020              and [bx+si],ah
00002337  2020              and [bx+si],ah
00002339  52                push dx
0000233A  2020              and [bx+si],ah
0000233C  45                inc bp
0000233D  2020              and [bx+si],ah
0000233F  41                inc cx
00002340  2020              and [bx+si],ah
00002342  44                inc sp
00002343  2020              and [bx+si],ah
00002345  59                pop cx
00002346  0000              add [bx+si],al
00002348  0000              add [bx+si],al
0000234A  0000              add [bx+si],al
0000234C  153F3F            adc ax,0x3f3f
0000234F  3F                aas
00002350  15153F            adc ax,0x3f15
00002353  15153F            adc ax,0x3f15
00002356  3F                aas
00002357  3F                aas
00002358  153F15            adc ax,0x153f
0000235B  3F                aas
0000235C  3F                aas
0000235D  003F              add [bx],bh
0000235F  3F                aas
00002360  3F                aas
00002361  0C00              or al,0x0
00002363  152100            adc ax,0x21
00002366  2A00              sub al,[bx+si]
00002368  0000              add [bx+si],al
0000236A  3F                aas
0000236B  3F                aas
0000236C  0029              add [bx+di],ch
0000236E  2929              sub [bx+di],bp
00002370  0000              add [bx+si],al
00002372  0000              add [bx+si],al
00002374  0000              add [bx+si],al
00002376  0000              add [bx+si],al
00002378  0015              add [di],dl
0000237A  3F                aas
0000237B  15153F            adc ax,0x3f15
0000237E  15153F            adc ax,0x3f15
00002381  15153F            adc ax,0x3f15
00002384  15153F            adc ax,0x3f15
00002387  15153F            adc ax,0x3f15
0000238A  15153F            adc ax,0x3f15
0000238D  15153F            adc ax,0x3f15
00002390  15153F            adc ax,0x3f15
00002393  15153F            adc ax,0x3f15
00002396  15153F            adc ax,0x3f15
00002399  150000            adc ax,0x0
0000239C  0000              add [bx+si],al
0000239E  0000              add [bx+si],al
000023A0  0000              add [bx+si],al
000023A2  0000              add [bx+si],al
000023A4  0000              add [bx+si],al
000023A6  0000              add [bx+si],al
000023A8  0015              add [di],dl
000023AA  3F                aas
000023AB  15153F            adc ax,0x3f15
000023AE  15153F            adc ax,0x3f15
000023B1  15153F            adc ax,0x3f15
000023B4  15153F            adc ax,0x3f15
000023B7  15153F            adc ax,0x3f15
000023BA  15153F            adc ax,0x3f15
000023BD  15153F            adc ax,0x3f15
000023C0  15153F            adc ax,0x3f15
000023C3  15153F            adc ax,0x3f15
000023C6  15153F            adc ax,0x3f15
000023C9  150000            adc ax,0x0
000023CC  0000              add [bx+si],al
000023CE  0000              add [bx+si],al
000023D0  0000              add [bx+si],al
000023D2  0000              add [bx+si],al
000023D4  0000              add [bx+si],al
000023D6  0000              add [bx+si],al
000023D8  0015              add [di],dl
000023DA  3F                aas
000023DB  3F                aas
000023DC  153F3F            adc ax,0x3f3f
000023DF  153F3F            adc ax,0x3f3f
000023E2  153F3F            adc ax,0x3f3f
000023E5  153F3F            adc ax,0x3f3f
000023E8  153F3F            adc ax,0x3f3f
000023EB  153F3F            adc ax,0x3f3f
000023EE  153F3F            adc ax,0x3f3f
000023F1  153F3F            adc ax,0x3f3f
000023F4  153F3F            adc ax,0x3f3f
000023F7  153F3F            adc ax,0x3f3f
000023FA  0000              add [bx+si],al
000023FC  0000              add [bx+si],al
000023FE  0000              add [bx+si],al
00002400  0000              add [bx+si],al
00002402  0000              add [bx+si],al
00002404  0000              add [bx+si],al
00002406  0000              add [bx+si],al
00002408  0015              add [di],dl
0000240A  3F                aas
0000240B  3F                aas
0000240C  153F3F            adc ax,0x3f3f
0000240F  153F3F            adc ax,0x3f3f
00002412  153F3F            adc ax,0x3f3f
00002415  153F3F            adc ax,0x3f3f
00002418  153F3F            adc ax,0x3f3f
0000241B  153F3F            adc ax,0x3f3f
0000241E  153F3F            adc ax,0x3f3f
00002421  153F3F            adc ax,0x3f3f
00002424  153F3F            adc ax,0x3f3f
00002427  153F3F            adc ax,0x3f3f
0000242A  0000              add [bx+si],al
0000242C  0000              add [bx+si],al
0000242E  0000              add [bx+si],al
00002430  0000              add [bx+si],al
00002432  0000              add [bx+si],al
00002434  0000              add [bx+si],al
00002436  0000              add [bx+si],al
00002438  003F              add [bx],bh
0000243A  153F3F            adc ax,0x3f3f
0000243D  153F3F            adc ax,0x3f3f
00002440  153F3F            adc ax,0x3f3f
00002443  153F3F            adc ax,0x3f3f
00002446  153F3F            adc ax,0x3f3f
00002449  153F3F            adc ax,0x3f3f
0000244C  153F3F            adc ax,0x3f3f
0000244F  153F3F            adc ax,0x3f3f
00002452  153F3F            adc ax,0x3f3f
00002455  153F3F            adc ax,0x3f3f
00002458  153F00            adc ax,0x3f
