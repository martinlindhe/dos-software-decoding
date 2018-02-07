00000100  EB29              jmp short 0x12b
00000102  0808              or [bx+si],cl
00000104  50                push ax
00000105  4F                dec di
00000106  4E                dec si
00000107  47                inc di
00000108  205665            and [bp+0x65],dl
0000010B  7273              jc 0x180
0000010D  696F6E2032        imul bp,[bx+0x6e],word 0x3220
00000112  2E3120            xor [cs:bx+si],sp
00000115  666F              outsd
00000117  7220              jc 0x139
00000119  44                inc sp
0000011A  4F                dec di
0000011B  53                push bx
0000011C  206279            and [bp+si+0x79],ah
0000011F  20444A            and [si+0x4a],al
00000122  54                push sp
00000123  206F66            and [bx+0x66],ch
00000126  205250            and [bp+si+0x50],dl
00000129  4C                dec sp
0000012A  1AE8              sbb ch,al
0000012C  7E00              jng 0x12e
0000012E  E8DB00            call word 0x20c
00000131  E80201            call word 0x236
00000134  B44C              mov ah,0x4c
00000136  CD21              int 0x21
00000138  50                push ax
00000139  4F                dec di
0000013A  4E                dec si
0000013B  47                inc di
0000013C  205665            and [bp+0x65],dl
0000013F  7273              jc 0x1b4
00000141  696F6E2032        imul bp,[bx+0x6e],word 0x3220
00000146  2E3124            xor [cs:si],sp
00000149  43                inc bx
0000014A  6F                outsw
0000014B  6D                insw
0000014C  7075              jo 0x1c3
0000014E  7465              jz 0x1b5
00000150  723A              jc 0x18c
00000152  2020              and [bx+si],ah
00000154  3024              xor [si],ah
00000156  50                push ax
00000157  6C                insb
00000158  61                popaw
00000159  7965              jns 0x1c0
0000015B  7220              jc 0x17d
0000015D  313A              xor [bp+si],di
0000015F  2020              and [bx+si],ah
00000161  3024              xor [si],ah
00000163  50                push ax
00000164  6C                insb
00000165  61                popaw
00000166  7965              jns 0x1cd
00000168  7220              jc 0x18a
0000016A  323A              xor bh,[bp+si]
0000016C  2020              and [bx+si],ah
0000016E  3024              xor [si],ah
00000170  41                inc cx
00000171  49                dec cx
00000172  3D4824            cmp ax,0x2448
00000175  2020              and [bx+si],ah
00000177  2020              and [bx+si],ah
00000179  2400              and al,0x0
0000017B  0024              add [si],ah
0000017D  57                push di
0000017E  49                dec cx
0000017F  4E                dec si
00000180  4E                dec si
00000181  45                inc bp
00000182  52                push dx
00000183  2124              and [si],sp
00000185  0000              add [bx+si],al
00000187  0000              add [bx+si],al
00000189  0000              add [bx+si],al
0000018B  0000              add [bx+si],al
0000018D  0000              add [bx+si],al
0000018F  0000              add [bx+si],al
00000191  0000              add [bx+si],al
00000193  0000              add [bx+si],al
00000195  0000              add [bx+si],al
00000197  0000              add [bx+si],al
00000199  0000              add [bx+si],al
0000019B  00FF              add bh,bh
0000019D  FF                db 0xff
0000019E  FF                db 0xff
0000019F  FF                db 0xff
000001A0  FF                db 0xff
000001A1  FF                db 0xff
000001A2  FF                db 0xff
000001A3  FF18              call word far [bx+si]
000001A5  3C7E              cmp al,0x7e
000001A7  FF                db 0xff
000001A8  FF                db 0xff
000001A9  7E3C              jng 0x1e7
000001AB  18FC              sbb ah,bh
000001AD  B800A0            mov ax,0xa000
000001B0  8EC0              mov es,ax
000001B2  E440              in al,0x40
000001B4  A28501            mov [0x185],al
000001B7  C6068701FF        mov byte [0x187],0xff
000001BC  C606880100        mov byte [0x188],0x0
000001C1  C606890100        mov byte [0x189],0x0
000001C6  C6068A0112        mov byte [0x18a],0x12
000001CB  C6068B0100        mov byte [0x18b],0x0
000001D0  C6068C0100        mov byte [0x18c],0x0
000001D5  C6068D01FF        mov byte [0x18d],0xff
000001DA  B408              mov ah,0x8
000001DC  30FF              xor bh,bh
000001DE  CD10              int 0x10
000001E0  88268601          mov [0x186],ah
000001E4  B81100            mov ax,0x11
000001E7  CD10              int 0x10
000001E9  BA2000            mov dx,0x20
000001EC  E86203            call word 0x551
000001EF  BA3801            mov dx,0x138
000001F2  E86303            call word 0x558
000001F5  B8FFFF            mov ax,0xffff
000001F8  BF0005            mov di,0x500
000001FB  B94001            mov cx,0x140
000001FE  F3AB              rep stosw
00000200  BF8093            mov di,0x9380
00000203  B94001            mov cx,0x140
00000206  F3AB              rep stosw
00000208  E88104            call word 0x68c
0000020B  C3                ret
0000020C  803E8C01FF        cmp byte [0x18c],0xff
00000211  7418              jz 0x22b
00000213  E83700            call word 0x24d
00000216  E8F400            call word 0x30d
00000219  E87604            call word 0x692
0000021C  E8A604            call word 0x6c5
0000021F  E8FC01            call word 0x41e
00000222  E81502            call word 0x43a
00000225  E85D03            call word 0x585
00000228  E82B02            call word 0x456
0000022B  E8CA04            call word 0x6f8
0000022E  803E8B0100        cmp byte [0x18b],0x0
00000233  74D7              jz 0x20c
00000235  C3                ret
00000236  B80300            mov ax,0x3
00000239  CD10              int 0x10
0000023B  B80006            mov ax,0x600
0000023E  8A3E8601          mov bh,[0x186]
00000242  31C9              xor cx,cx
00000244  BA4F18            mov dx,0x184f
00000247  CD10              int 0x10
00000249  E84004            call word 0x68c
0000024C  C3                ret
0000024D  803E870100        cmp byte [0x187],0x0
00000252  7440              jz 0x294
00000254  C6068E01FF        mov byte [0x18e],0xff
00000259  B0FF              mov al,0xff
0000025B  B101              mov cl,0x1
0000025D  E8CC03            call word 0x62c
00000260  7402              jz 0x264
00000262  F6D8              neg al
00000264  A29201            mov [0x192],al
00000267  B01A              mov al,0x1a
00000269  E8A101            call word 0x40d
0000026C  A29401            mov [0x194],al
0000026F  C606950100        mov byte [0x195],0x0
00000274  A29601            mov [0x196],al
00000277  A29701            mov [0x197],al
0000027A  C60698014F        mov byte [0x198],0x4f
0000027F  A29901            mov [0x199],al
00000282  C6069A0100        mov byte [0x19a],0x0
00000287  C6069B0100        mov byte [0x19b],0x0
0000028C  E80600            call word 0x295
0000028F  C606870100        mov byte [0x187],0x0
00000294  C3                ret
00000295  31D2              xor dx,dx
00000297  E8B702            call word 0x551
0000029A  BA4901            mov dx,0x149
0000029D  803E880100        cmp byte [0x188],0x0
000002A2  7403              jz 0x2a7
000002A4  83C20D            add dx,byte +0xd
000002A7  52                push dx
000002A8  E8AD02            call word 0x558
000002AB  BA3800            mov dx,0x38
000002AE  E8A002            call word 0x551
000002B1  BA7001            mov dx,0x170
000002B4  A08801            mov al,[0x188]
000002B7  22068901          and al,[0x189]
000002BB  7403              jz 0x2c0
000002BD  83C205            add dx,byte +0x5
000002C0  E89502            call word 0x558
000002C3  BA4400            mov dx,0x44
000002C6  E88802            call word 0x551
000002C9  5A                pop dx
000002CA  803E890100        cmp byte [0x189],0x0
000002CF  7403              jz 0x2d4
000002D1  83C20D            add dx,byte +0xd
000002D4  E88102            call word 0x558
000002D7  31C0              xor ax,ax
000002D9  BF8007            mov di,0x780
000002DC  B90046            mov cx,0x4600
000002DF  F3AB              rep stosw
000002E1  E80700            call word 0x2eb
000002E4  E87602            call word 0x55d
000002E7  E88702            call word 0x571
000002EA  C3                ret
000002EB  A08801            mov al,[0x188]
000002EE  0A068901          or al,[0x189]
000002F2  7518              jnz 0x30c
000002F4  BA0004            mov dx,0x400
000002F7  E85702            call word 0x551
000002FA  BA8608            mov dx,0x886
000002FD  E85802            call word 0x558
00000300  BA001A            mov dx,0x1a00
00000303  E84B02            call word 0x551
00000306  BA5A0B            mov dx,0xb5a
00000309  E84C02            call word 0x558
0000030C  C3                ret
0000030D  803E8E0100        cmp byte [0x18e],0x0
00000312  743A              jz 0x34e
00000314  C606930100        mov byte [0x193],0x0
00000319  A09701            mov al,[0x197]
0000031C  FEC0              inc al
0000031E  A28F01            mov [0x18f],al
00000321  A09801            mov al,[0x198]
00000324  FEC8              dec al
00000326  A29001            mov [0x190],al
00000329  803E9201FF        cmp byte [0x192],0xff
0000032E  7410              jz 0x340
00000330  A09401            mov al,[0x194]
00000333  FEC0              inc al
00000335  A28F01            mov [0x18f],al
00000338  A09501            mov al,[0x195]
0000033B  FEC0              inc al
0000033D  A29001            mov [0x190],al
00000340  E80C00            call word 0x34f
00000343  E81B00            call word 0x361
00000346  E82500            call word 0x36e
00000349  C6068E0100        mov byte [0x18e],0x0
0000034E  C3                ret
0000034F  C6069101FF        mov byte [0x191],0xff
00000354  B101              mov cl,0x1
00000356  E8D302            call word 0x62c
00000359  7405              jz 0x360
0000035B  C606910101        mov byte [0x191],0x1
00000360  C3                ret
00000361  B104              mov cl,0x4
00000363  E8C602            call word 0x62c
00000366  7505              jnz 0x36d
00000368  C606910100        mov byte [0x191],0x0
0000036D  C3                ret
0000036E  803E9201FF        cmp byte [0x192],0xff
00000373  7515              jnz 0x38a
00000375  803E8801FF        cmp byte [0x188],0xff
0000037A  7421              jz 0x39d
0000037C  E81F00            call word 0x39e
0000037F  E85600            call word 0x3d8
00000382  E88800            call word 0x40d
00000385  A29601            mov [0x196],al
00000388  EB13              jmp short 0x39d
0000038A  803E8901FF        cmp byte [0x189],0xff
0000038F  740C              jz 0x39d
00000391  E80A00            call word 0x39e
00000394  E84100            call word 0x3d8
00000397  E87300            call word 0x40d
0000039A  A29901            mov [0x199],al
0000039D  C3                ret
0000039E  8A168F01          mov dl,[0x18f]
000003A2  8A1E9101          mov bl,[0x191]
000003A6  80FB00            cmp bl,0x0
000003A9  742A              jz 0x3d5
000003AB  B04F              mov al,0x4f
000003AD  FEC8              dec al
000003AF  3C37              cmp al,0x37
000003B1  7617              jna 0x3ca
000003B3  80FB01            cmp bl,0x1
000003B6  7406              jz 0x3be
000003B8  28D0              sub al,dl
000003BA  30D2              xor dl,dl
000003BC  EB08              jmp short 0x3c6
000003BE  B137              mov cl,0x37
000003C0  28D1              sub cl,dl
000003C2  28C8              sub al,cl
000003C4  B237              mov dl,0x37
000003C6  F6DB              neg bl
000003C8  EBE5              jmp short 0x3af
000003CA  FEC8              dec al
000003CC  80FB01            cmp bl,0x1
000003CF  7406              jz 0x3d7
000003D1  B237              mov dl,0x37
000003D3  28C2              sub dl,al
000003D5  88D0              mov al,dl
000003D7  C3                ret
000003D8  803E730148        cmp byte [0x173],0x48
000003DD  742D              jz 0x40c
000003DF  B90200            mov cx,0x2
000003E2  803E73014D        cmp byte [0x173],0x4d
000003E7  7403              jz 0x3ec
000003E9  83C102            add cx,byte +0x2
000003EC  51                push cx
000003ED  B102              mov cl,0x2
000003EF  E83A02            call word 0x62c
000003F2  7415              jz 0x409
000003F4  B101              mov cl,0x1
000003F6  E83302            call word 0x62c
000003F9  7508              jnz 0x403
000003FB  3C00              cmp al,0x0
000003FD  740A              jz 0x409
000003FF  FEC8              dec al
00000401  EB06              jmp short 0x409
00000403  3C37              cmp al,0x37
00000405  7402              jz 0x409
00000407  FEC0              inc al
00000409  59                pop cx
0000040A  E2E0              loop 0x3ec
0000040C  C3                ret
0000040D  3C00              cmp al,0x0
0000040F  740C              jz 0x41d
00000411  88C3              mov bl,al
00000413  FECB              dec bl
00000415  3C37              cmp al,0x37
00000417  7502              jnz 0x41b
00000419  FECB              dec bl
0000041B  88D8              mov al,bl
0000041D  C3                ret
0000041E  A09401            mov al,[0x194]
00000421  3A069601          cmp al,[0x196]
00000425  7412              jz 0x439
00000427  B3FF              mov bl,0xff
00000429  7902              jns 0x42d
0000042B  F6DB              neg bl
0000042D  53                push bx
0000042E  E82C01            call word 0x55d
00000431  5B                pop bx
00000432  001E9401          add [0x194],bl
00000436  E82401            call word 0x55d
00000439  C3                ret
0000043A  A09701            mov al,[0x197]
0000043D  3A069901          cmp al,[0x199]
00000441  7412              jz 0x455
00000443  B3FF              mov bl,0xff
00000445  7902              jns 0x449
00000447  F6DB              neg bl
00000449  53                push bx
0000044A  E82401            call word 0x571
0000044D  5B                pop bx
0000044E  001E9701          add [0x197],bl
00000452  E81C01            call word 0x571
00000455  C3                ret
00000456  803E900100        cmp byte [0x190],0x0
0000045B  7422              jz 0x47f
0000045D  803E90014F        cmp byte [0x190],0x4f
00000462  741B              jz 0x47f
00000464  C606930100        mov byte [0x193],0x0
00000469  E84000            call word 0x4ac
0000046C  E86500            call word 0x4d4
0000046F  A09101            mov al,[0x191]
00000472  00068F01          add [0x18f],al
00000476  A09201            mov al,[0x192]
00000479  00069001          add [0x190],al
0000047D  EB2C              jmp short 0x4ab
0000047F  E8B503            call word 0x837
00000482  E84201            call word 0x5c7
00000485  3C0F              cmp al,0xf
00000487  7407              jz 0x490
00000489  C6068E01FF        mov byte [0x18e],0xff
0000048E  EB1B              jmp short 0x4ab
00000490  E87B01            call word 0x60e
00000493  E8B403            call word 0x84a
00000496  B98006            mov cx,0x680
00000499  E8C001            call word 0x65c
0000049C  C6068701FF        mov byte [0x187],0xff
000004A1  C606880100        mov byte [0x188],0x0
000004A6  C606890100        mov byte [0x189],0x0
000004AB  C3                ret
000004AC  803E910100        cmp byte [0x191],0x0
000004B1  7420              jz 0x4d3
000004B3  803E9101FF        cmp byte [0x191],0xff
000004B8  7509              jnz 0x4c3
000004BA  803E8F0100        cmp byte [0x18f],0x0
000004BF  7409              jz 0x4ca
000004C1  EB10              jmp short 0x4d3
000004C3  803E8F0137        cmp byte [0x18f],0x37
000004C8  7509              jnz 0x4d3
000004CA  F61E9101          neg byte [0x191]
000004CE  C6069301FF        mov byte [0x193],0xff
000004D3  C3                ret
000004D4  803E9201FF        cmp byte [0x192],0xff
000004D9  7511              jnz 0x4ec
000004DB  A09501            mov al,[0x195]
000004DE  FEC0              inc al
000004E0  38069001          cmp [0x190],al
000004E4  756A              jnz 0x550
000004E6  8A1E9401          mov bl,[0x194]
000004EA  EB0F              jmp short 0x4fb
000004EC  A09801            mov al,[0x198]
000004EF  FEC8              dec al
000004F1  38069001          cmp [0x190],al
000004F5  7559              jnz 0x550
000004F7  8A1E9701          mov bl,[0x197]
000004FB  A08F01            mov al,[0x18f]
000004FE  28D8              sub al,bl
00000500  BA0300            mov dx,0x3
00000503  803E9101FF        cmp byte [0x191],0xff
00000508  740D              jz 0x517
0000050A  BA0200            mov dx,0x2
0000050D  803E910100        cmp byte [0x191],0x0
00000512  7403              jz 0x517
00000514  BA02FF            mov dx,0xff02
00000517  38F0              cmp al,dh
00000519  7C35              jl 0x550
0000051B  38D0              cmp al,dl
0000051D  7F31              jg 0x550
0000051F  F61E9201          neg byte [0x192]
00000523  C6069301FF        mov byte [0x193],0xff
00000528  803E910100        cmp byte [0x191],0x0
0000052D  751B              jnz 0x54a
0000052F  C606910101        mov byte [0x191],0x1
00000534  803E8F0100        cmp byte [0x18f],0x0
00000539  740F              jz 0x54a
0000053B  C6069101FF        mov byte [0x191],0xff
00000540  803E8F0137        cmp byte [0x18f],0x37
00000545  7403              jz 0x54a
00000547  E805FE            call word 0x34f
0000054A  E814FE            call word 0x361
0000054D  E81EFE            call word 0x36e
00000550  C3                ret
00000551  B402              mov ah,0x2
00000553  30FF              xor bh,bh
00000555  CD10              int 0x10
00000557  C3                ret
00000558  B409              mov ah,0x9
0000055A  CD21              int 0x21
0000055C  C3                ret
0000055D  BE9C01            mov si,0x19c
00000560  A09401            mov al,[0x194]
00000563  8A1E9501          mov bl,[0x195]
00000567  E8E200            call word 0x64c
0000056A  B90300            mov cx,0x3
0000056D  E84300            call word 0x5b3
00000570  C3                ret
00000571  BE9C01            mov si,0x19c
00000574  A09701            mov al,[0x197]
00000577  8A1E9801          mov bl,[0x198]
0000057B  E8CE00            call word 0x64c
0000057E  B90300            mov cx,0x3
00000581  E82F00            call word 0x5b3
00000584  C3                ret
00000585  803E930100        cmp byte [0x193],0x0
0000058A  7403              jz 0x58f
0000058C  E89E02            call word 0x82d
0000058F  E80D00            call word 0x59f
00000592  8A0E8A01          mov cl,[0x18a]
00000596  30ED              xor ch,ch
00000598  E8C100            call word 0x65c
0000059B  E80100            call word 0x59f
0000059E  C3                ret
0000059F  BEA401            mov si,0x1a4
000005A2  A08F01            mov al,[0x18f]
000005A5  8A1E9001          mov bl,[0x190]
000005A9  E8A000            call word 0x64c
000005AC  B90100            mov cx,0x1
000005AF  E80100            call word 0x5b3
000005B2  C3                ret
000005B3  51                push cx
000005B4  56                push si
000005B5  B90800            mov cx,0x8
000005B8  AC                lodsb
000005B9  263005            xor [es:di],al
000005BC  2E83C750          cs add di,byte +0x50
000005C0  E2F6              loop 0x5b8
000005C2  5E                pop si
000005C3  59                pop cx
000005C4  E2ED              loop 0x5b3
000005C6  C3                ret
000005C7  803E9201FF        cmp byte [0x192],0xff
000005CC  740F              jz 0x5dd
000005CE  FE069A01          inc byte [0x19a]
000005D2  BA0A00            mov dx,0xa
000005D5  E879FF            call word 0x551
000005D8  A09A01            mov al,[0x19a]
000005DB  EB0D              jmp short 0x5ea
000005DD  FE069B01          inc byte [0x19b]
000005E1  BA4E00            mov dx,0x4e
000005E4  E86AFF            call word 0x551
000005E7  A09B01            mov al,[0x19b]
000005EA  50                push ax
000005EB  C6067A0120        mov byte [0x17a],0x20
000005F0  30E4              xor ah,ah
000005F2  B30A              mov bl,0xa
000005F4  F6F3              div bl
000005F6  80C430            add ah,0x30
000005F9  88267B01          mov [0x17b],ah
000005FD  3C00              cmp al,0x0
000005FF  7405              jz 0x606
00000601  0430              add al,0x30
00000603  A27A01            mov [0x17a],al
00000606  BA7A01            mov dx,0x17a
00000609  E84CFF            call word 0x558
0000060C  58                pop ax
0000060D  C3                ret
0000060E  B91B00            mov cx,0x1b
00000611  B61D              mov dh,0x1d
00000613  28CE              sub dh,cl
00000615  B203              mov dl,0x3
00000617  803E920101        cmp byte [0x192],0x1
0000061C  7402              jz 0x620
0000061E  B246              mov dl,0x46
00000620  E82EFF            call word 0x551
00000623  BA7D01            mov dx,0x17d
00000626  E82FFF            call word 0x558
00000629  E2E6              loop 0x611
0000062B  C3                ret
0000062C  50                push ax
0000062D  E440              in al,0x40
0000062F  38068501          cmp [0x185],al
00000633  74F8              jz 0x62d
00000635  A28501            mov [0x185],al
00000638  D0E8              shr al,1
0000063A  B301              mov bl,0x1
0000063C  30ED              xor ch,ch
0000063E  49                dec cx
0000063F  E307              jcxz 0x648
00000641  D0E3              shl bl,1
00000643  80CB01            or bl,0x1
00000646  E2F9              loop 0x641
00000648  20D8              and al,bl
0000064A  58                pop ax
0000064B  C3                ret
0000064C  0403              add al,0x3
0000064E  30E4              xor ah,ah
00000650  30FF              xor bh,bh
00000652  BA8002            mov dx,0x280
00000655  F7E2              mul dx
00000657  01D8              add ax,bx
00000659  89C7              mov di,ax
0000065B  C3                ret
0000065C  E461              in al,0x61
0000065E  24FE              and al,0xfe
00000660  E661              out 0x61,al
00000662  B0B0              mov al,0xb0
00000664  E643              out 0x43,al
00000666  B0FF              mov al,0xff
00000668  E642              out 0x42,al
0000066A  E642              out 0x42,al
0000066C  E461              in al,0x61
0000066E  0C01              or al,0x1
00000670  E661              out 0x61,al
00000672  B080              mov al,0x80
00000674  E643              out 0x43,al
00000676  E442              in al,0x42
00000678  86E0              xchg ah,al
0000067A  E442              in al,0x42
0000067C  86E0              xchg ah,al
0000067E  3D57FB            cmp ax,0xfb57
00000681  77EF              ja 0x672
00000683  E461              in al,0x61
00000685  24FE              and al,0xfe
00000687  E661              out 0x61,al
00000689  E2D7              loop 0x662
0000068B  C3                ret
0000068C  B8000C            mov ax,0xc00
0000068F  CD21              int 0x21
00000691  C3                ret
00000692  803E880100        cmp byte [0x188],0x0
00000697  742B              jz 0x6c4
00000699  B412              mov ah,0x12
0000069B  CD16              int 0x16
0000069D  250201            and ax,0x102
000006A0  B101              mov cl,0x1
000006A2  D2E4              shl ah,cl
000006A4  30C4              xor ah,al
000006A6  741C              jz 0x6c4
000006A8  B3FF              mov bl,0xff
000006AA  A802              test al,0x2
000006AC  7409              jz 0x6b7
000006AE  803E940100        cmp byte [0x194],0x0
000006B3  740F              jz 0x6c4
000006B5  EB09              jmp short 0x6c0
000006B7  F6DB              neg bl
000006B9  803E940135        cmp byte [0x194],0x35
000006BE  7404              jz 0x6c4
000006C0  001E9601          add [0x196],bl
000006C4  C3                ret
000006C5  803E890100        cmp byte [0x189],0x0
000006CA  742B              jz 0x6f7
000006CC  B412              mov ah,0x12
000006CE  CD16              int 0x16
000006D0  250104            and ax,0x401
000006D3  B102              mov cl,0x2
000006D5  D2EC              shr ah,cl
000006D7  30C4              xor ah,al
000006D9  741C              jz 0x6f7
000006DB  B3FF              mov bl,0xff
000006DD  A801              test al,0x1
000006DF  7409              jz 0x6ea
000006E1  803E970100        cmp byte [0x197],0x0
000006E6  740F              jz 0x6f7
000006E8  EB09              jmp short 0x6f3
000006EA  F6DB              neg bl
000006EC  803E970135        cmp byte [0x197],0x35
000006F1  7404              jz 0x6f7
000006F3  001E9901          add [0x199],bl
000006F7  C3                ret
000006F8  B2FF              mov dl,0xff
000006FA  B406              mov ah,0x6
000006FC  CD21              int 0x21
000006FE  746D              jz 0x76d
00000700  88C3              mov bl,al
00000702  80E3DF            and bl,0xdf
00000705  3C1B              cmp al,0x1b
00000707  742F              jz 0x738
00000709  80FB51            cmp bl,0x51
0000070C  742F              jz 0x73d
0000070E  80FB50            cmp bl,0x50
00000711  742F              jz 0x742
00000713  80FB53            cmp bl,0x53
00000716  742F              jz 0x747
00000718  3C2D              cmp al,0x2d
0000071A  7430              jz 0x74c
0000071C  3C3D              cmp al,0x3d
0000071E  7431              jz 0x751
00000720  80FB52            cmp bl,0x52
00000723  7431              jz 0x756
00000725  80FB49            cmp bl,0x49
00000728  7431              jz 0x75b
0000072A  3C31              cmp al,0x31
0000072C  7432              jz 0x760
0000072E  3C32              cmp al,0x32
00000730  7433              jz 0x765
00000732  3C00              cmp al,0x0
00000734  7434              jz 0x76a
00000736  EB35              jmp short 0x76d
00000738  E83300            call word 0x76e
0000073B  EB30              jmp short 0x76d
0000073D  E83400            call word 0x774
00000740  EB2B              jmp short 0x76d
00000742  E84B00            call word 0x790
00000745  EB26              jmp short 0x76d
00000747  E84E00            call word 0x798
0000074A  EB21              jmp short 0x76d
0000074C  E84E00            call word 0x79d
0000074F  EB1C              jmp short 0x76d
00000751  E85500            call word 0x7a9
00000754  EB17              jmp short 0x76d
00000756  E85C00            call word 0x7b5
00000759  EB12              jmp short 0x76d
0000075B  E85D00            call word 0x7bb
0000075E  EB0D              jmp short 0x76d
00000760  E88500            call word 0x7e8
00000763  EB08              jmp short 0x76d
00000765  E89C00            call word 0x804
00000768  EB03              jmp short 0x76d
0000076A  E81FFF            call word 0x68c
0000076D  C3                ret
0000076E  C6068B01FF        mov byte [0x18b],0xff
00000773  C3                ret
00000774  A08801            mov al,[0x188]
00000777  0A068901          or al,[0x189]
0000077B  7412              jz 0x78f
0000077D  C6068701FF        mov byte [0x187],0xff
00000782  C606880100        mov byte [0x188],0x0
00000787  C606890100        mov byte [0x189],0x0
0000078C  E89100            call word 0x820
0000078F  C3                ret
00000790  E80CFE            call word 0x59f
00000793  F6168C01          not byte [0x18c]
00000797  C3                ret
00000798  F6168D01          not byte [0x18d]
0000079C  C3                ret
0000079D  803E8A0123        cmp byte [0x18a],0x23
000007A2  7404              jz 0x7a8
000007A4  FE068A01          inc byte [0x18a]
000007A8  C3                ret
000007A9  803E8A0101        cmp byte [0x18a],0x1
000007AE  7404              jz 0x7b4
000007B0  FE0E8A01          dec byte [0x18a]
000007B4  C3                ret
000007B5  C6068A0112        mov byte [0x18a],0x12
000007BA  C3                ret
000007BB  A08801            mov al,[0x188]
000007BE  22068901          and al,[0x189]
000007C2  7523              jnz 0x7e7
000007C4  B04D              mov al,0x4d
000007C6  803E730148        cmp byte [0x173],0x48
000007CB  740B              jz 0x7d8
000007CD  B04C              mov al,0x4c
000007CF  803E73014D        cmp byte [0x173],0x4d
000007D4  7402              jz 0x7d8
000007D6  B048              mov al,0x48
000007D8  A27301            mov [0x173],al
000007DB  BA3800            mov dx,0x38
000007DE  E870FD            call word 0x551
000007E1  BA7001            mov dx,0x170
000007E4  E871FD            call word 0x558
000007E7  C3                ret
000007E8  A08801            mov al,[0x188]
000007EB  0A068901          or al,[0x189]
000007EF  7512              jnz 0x803
000007F1  C6068701FF        mov byte [0x187],0xff
000007F6  C606880100        mov byte [0x188],0x0
000007FB  C6068901FF        mov byte [0x189],0xff
00000800  E81D00            call word 0x820
00000803  C3                ret
00000804  A08801            mov al,[0x188]
00000807  0A068901          or al,[0x189]
0000080B  7512              jnz 0x81f
0000080D  C6068701FF        mov byte [0x187],0xff
00000812  C6068801FF        mov byte [0x188],0xff
00000817  C6068901FF        mov byte [0x189],0xff
0000081C  E80100            call word 0x820
0000081F  C3                ret
00000820  803E8C0100        cmp byte [0x18c],0x0
00000825  7405              jz 0x82c
00000827  C6068C0100        mov byte [0x18c],0x0
0000082C  C3                ret
0000082D  BBA906            mov bx,0x6a9
00000830  B9000F            mov cx,0xf00
00000833  E82E00            call word 0x864
00000836  C3                ret
00000837  BBC507            mov bx,0x7c5
0000083A  B90040            mov cx,0x4000
0000083D  E82400            call word 0x864
00000840  BBA70B            mov bx,0xba7
00000843  B90020            mov cx,0x2000
00000846  E81B00            call word 0x864
00000849  C3                ret
0000084A  B90400            mov cx,0x4
0000084D  51                push cx
0000084E  BB8005            mov bx,0x580
00000851  B90040            mov cx,0x4000
00000854  E80D00            call word 0x864
00000857  BB0005            mov bx,0x500
0000085A  B90040            mov cx,0x4000
0000085D  E80400            call word 0x864
00000860  59                pop cx
00000861  E2EA              loop 0x84d
00000863  C3                ret
00000864  803E8D0100        cmp byte [0x18d],0x0
00000869  741A              jz 0x885
0000086B  B0B6              mov al,0xb6
0000086D  E643              out 0x43,al
0000086F  88D8              mov al,bl
00000871  E642              out 0x42,al
00000873  88F8              mov al,bh
00000875  E642              out 0x42,al
00000877  E461              in al,0x61
00000879  0C03              or al,0x3
0000087B  E661              out 0x61,al
0000087D  E2F0              loop 0x86f
0000087F  E461              in al,0x61
00000881  24FC              and al,0xfc
00000883  E661              out 0x61,al
00000885  C3                ret
00000886  2020              and [bx+si],ah
00000888  2020              and [bx+si],ah
0000088A  2020              and [bx+si],ah
0000088C  2020              and [bx+si],ah
0000088E  2020              and [bx+si],ah
00000890  2020              and [bx+si],ah
00000892  2020              and [bx+si],ah
00000894  207072            and [bx+si+0x72],dh
00000897  657373            gs jnc 0x90d
0000089A  2020              and [bx+si],ah
0000089C  3C45              cmp al,0x45
0000089E  7363              jnc 0x903
000008A0  3E2020            and [ds:bx+si],ah
000008A3  746F              jz 0x914
000008A5  206578            and [di+0x78],ah
000008A8  6974207072        imul si,[si+0x20],word 0x7270
000008AD  6F                outsw
000008AE  677261            jc 0x912
000008B1  6D                insw
000008B2  0D0A20            or ax,0x200a
000008B5  2020              and [bx+si],ah
000008B7  2020              and [bx+si],ah
000008B9  2020              and [bx+si],ah
000008BB  2020              and [bx+si],ah
000008BD  2020              and [bx+si],ah
000008BF  2020              and [bx+si],ah
000008C1  2020              and [bx+si],ah
000008C3  2020              and [bx+si],ah
000008C5  2020              and [bx+si],ah
000008C7  2020              and [bx+si],ah
000008C9  2020              and [bx+si],ah
000008CB  3C31              cmp al,0x31
000008CD  3E2020            and [ds:bx+si],ah
000008D0  20746F            and [si+0x6f],dh
000008D3  207374            and [bp+di+0x74],dh
000008D6  61                popaw
000008D7  7274              jc 0x94d
000008D9  206761            and [bx+0x61],ah
000008DC  6D                insw
000008DD  652028            and [gs:bx+si],ch
000008E0  636F6D            arpl [bx+0x6d],bp
000008E3  7075              jo 0x95a
000008E5  7465              jz 0x94c
000008E7  7220              jc 0x909
000008E9  2D7673            sub ax,0x7376
000008EC  2D2070            sub ax,0x7020
000008EF  6C                insb
000008F0  61                popaw
000008F1  7965              jns 0x958
000008F3  7229              jc 0x91e
000008F5  0D0A20            or ax,0x200a
000008F8  2020              and [bx+si],ah
000008FA  2020              and [bx+si],ah
000008FC  2020              and [bx+si],ah
000008FE  2020              and [bx+si],ah
00000900  2020              and [bx+si],ah
00000902  2020              and [bx+si],ah
00000904  2020              and [bx+si],ah
00000906  2020              and [bx+si],ah
00000908  2020              and [bx+si],ah
0000090A  2020              and [bx+si],ah
0000090C  2020              and [bx+si],ah
0000090E  3C32              cmp al,0x32
00000910  3E2020            and [ds:bx+si],ah
00000913  20746F            and [si+0x6f],dh
00000916  207374            and [bp+di+0x74],dh
00000919  61                popaw
0000091A  7274              jc 0x990
0000091C  206761            and [bx+0x61],ah
0000091F  6D                insw
00000920  652028            and [gs:bx+si],ch
00000923  20706C            and [bx+si+0x6c],dh
00000926  61                popaw
00000927  7965              jns 0x98e
00000929  7220              jc 0x94b
0000092B  202D              and [di],ch
0000092D  7673              jna 0x9a2
0000092F  2D2070            sub ax,0x7020
00000932  6C                insb
00000933  61                popaw
00000934  7965              jns 0x99b
00000936  7229              jc 0x961
00000938  0D0A20            or ax,0x200a
0000093B  2020              and [bx+si],ah
0000093D  2020              and [bx+si],ah
0000093F  2020              and [bx+si],ah
00000941  2020              and [bx+si],ah
00000943  2020              and [bx+si],ah
00000945  2020              and [bx+si],ah
00000947  2020              and [bx+si],ah
00000949  2020              and [bx+si],ah
0000094B  2020              and [bx+si],ah
0000094D  2020              and [bx+si],ah
0000094F  2020              and [bx+si],ah
00000951  3C53              cmp al,0x53
00000953  3E2020            and [ds:bx+si],ah
00000956  20736F            and [bp+di+0x6f],dh
00000959  756E              jnz 0x9c9
0000095B  64206F66          and [fs:bx+0x66],ch
0000095F  66202F            o32 and [bx],ch
00000962  206F6E            and [bx+0x6e],ch
00000965  0D0A20            or ax,0x200a
00000968  2020              and [bx+si],ah
0000096A  2020              and [bx+si],ah
0000096C  2020              and [bx+si],ah
0000096E  2020              and [bx+si],ah
00000970  2020              and [bx+si],ah
00000972  2020              and [bx+si],ah
00000974  2020              and [bx+si],ah
00000976  2020              and [bx+si],ah
00000978  2020              and [bx+si],ah
0000097A  2020              and [bx+si],ah
0000097C  2020              and [bx+si],ah
0000097E  3C50              cmp al,0x50
00000980  3E2020            and [ds:bx+si],ah
00000983  207061            and [bx+si+0x61],dh
00000986  7573              jnz 0x9fb
00000988  652020            and [gs:bx+si],ah
0000098B  6F                outsw
0000098C  6E                outsb
0000098D  202F              and [bx],ch
0000098F  206F66            and [bx+0x66],ch
00000992  660D0A202020      or eax,0x2020200a
00000998  2020              and [bx+si],ah
0000099A  2020              and [bx+si],ah
0000099C  2020              and [bx+si],ah
0000099E  2020              and [bx+si],ah
000009A0  2020              and [bx+si],ah
000009A2  2020              and [bx+si],ah
000009A4  2020              and [bx+si],ah
000009A6  2020              and [bx+si],ah
000009A8  2020              and [bx+si],ah
000009AA  2020              and [bx+si],ah
000009AC  3C2D              cmp al,0x2d
000009AE  3E2020            and [ds:bx+si],ah
000009B1  20746F            and [si+0x6f],dh
000009B4  20736C            and [bp+di+0x6c],dh
000009B7  6F                outsw
000009B8  7720              ja 0x9da
000009BA  6761              a32 popaw
000009BC  6D                insw
000009BD  6520646F          and [gs:si+0x6f],ah
000009C1  776E              ja 0xa31
000009C3  0D0A20            or ax,0x200a
000009C6  2020              and [bx+si],ah
000009C8  2020              and [bx+si],ah
000009CA  2020              and [bx+si],ah
000009CC  2020              and [bx+si],ah
000009CE  2020              and [bx+si],ah
000009D0  2020              and [bx+si],ah
000009D2  2020              and [bx+si],ah
000009D4  2020              and [bx+si],ah
000009D6  2020              and [bx+si],ah
000009D8  2020              and [bx+si],ah
000009DA  2020              and [bx+si],ah
000009DC  3C3D              cmp al,0x3d
000009DE  3E2020            and [ds:bx+si],ah
000009E1  20746F            and [si+0x6f],dh
000009E4  207370            and [bp+di+0x70],dh
000009E7  656564206761      and [fs:bx+0x61],ah
000009ED  6D                insw
000009EE  65207570          and [gs:di+0x70],dh
000009F2  0D0A20            or ax,0x200a
000009F5  2020              and [bx+si],ah
000009F7  2020              and [bx+si],ah
000009F9  2020              and [bx+si],ah
000009FB  2020              and [bx+si],ah
000009FD  2020              and [bx+si],ah
000009FF  2020              and [bx+si],ah
00000A01  2020              and [bx+si],ah
00000A03  2020              and [bx+si],ah
00000A05  2020              and [bx+si],ah
00000A07  2020              and [bx+si],ah
00000A09  2020              and [bx+si],ah
00000A0B  3C52              cmp al,0x52
00000A0D  3E2020            and [ds:bx+si],ah
00000A10  20746F            and [si+0x6f],dh
00000A13  207265            and [bp+si+0x65],dh
00000A16  7374              jnc 0xa8c
00000A18  6F                outsw
00000A19  7265              jc 0xa80
00000A1B  206465            and [si+0x65],ah
00000A1E  6661              popad
00000A20  756C              jnz 0xa8e
00000A22  7420              jz 0xa44
00000A24  6761              a32 popaw
00000A26  6D                insw
00000A27  65207370          and [gs:bp+di+0x70],dh
00000A2B  6565640D0A20      fs or ax,0x200a
00000A31  2020              and [bx+si],ah
00000A33  2020              and [bx+si],ah
00000A35  2020              and [bx+si],ah
00000A37  2020              and [bx+si],ah
00000A39  2020              and [bx+si],ah
00000A3B  2020              and [bx+si],ah
00000A3D  2020              and [bx+si],ah
00000A3F  2020              and [bx+si],ah
00000A41  2020              and [bx+si],ah
00000A43  2020              and [bx+si],ah
00000A45  2020              and [bx+si],ah
00000A47  3C49              cmp al,0x49
00000A49  3E2020            and [ds:bx+si],ah
00000A4C  20696E            and [bx+di+0x6e],ch
00000A4F  7465              jz 0xab6
00000A51  6C                insb
00000A52  6C                insb
00000A53  6967656E63        imul sp,[bx+0x65],word 0x636e
00000A58  65206F66          and [gs:bx+0x66],ch
00000A5C  20636F            and [bp+di+0x6f],ah
00000A5F  6D                insw
00000A60  7075              jo 0xad7
00000A62  7465              jz 0xac9
00000A64  7220              jc 0xa86
00000A66  6F                outsw
00000A67  7070              jo 0xad9
00000A69  6F                outsw
00000A6A  6E                outsb
00000A6B  656E              gs outsb
00000A6D  740D              jz 0xa7c
00000A6F  0A20              or ah,[bx+si]
00000A71  2020              and [bx+si],ah
00000A73  2020              and [bx+si],ah
00000A75  2020              and [bx+si],ah
00000A77  2020              and [bx+si],ah
00000A79  2020              and [bx+si],ah
00000A7B  2020              and [bx+si],ah
00000A7D  2020              and [bx+si],ah
00000A7F  2020              and [bx+si],ah
00000A81  2020              and [bx+si],ah
00000A83  2020              and [bx+si],ah
00000A85  2020              and [bx+si],ah
00000A87  2020              and [bx+si],ah
00000A89  2020              and [bx+si],ah
00000A8B  2020              and [bx+si],ah
00000A8D  2020              and [bx+si],ah
00000A8F  2020              and [bx+si],ah
00000A91  206D65            and [di+0x65],ch
00000A94  6469756D202F      imul si,[fs:di+0x6d],word 0x2f20
00000A9A  206C6F            and [si+0x6f],ch
00000A9D  7720              ja 0xabf
00000A9F  2F                das
00000AA0  206869            and [bx+si+0x69],ch
00000AA3  67680D0A          push word 0xa0d
00000AA7  0D0A20            or ax,0x200a
00000AAA  2020              and [bx+si],ah
00000AAC  2020              and [bx+si],ah
00000AAE  2020              and [bx+si],ah
00000AB0  2020              and [bx+si],ah
00000AB2  2020              and [bx+si],ah
00000AB4  2020              and [bx+si],ah
00000AB6  2020              and [bx+si],ah
00000AB8  647572            fs jnz 0xb2d
00000ABB  696E672067        imul bp,[bp+0x67],word 0x6720
00000AC0  61                popaw
00000AC1  6D                insw
00000AC2  653A0D            cmp cl,[gs:di]
00000AC5  0A20              or ah,[bx+si]
00000AC7  2020              and [bx+si],ah
00000AC9  2020              and [bx+si],ah
00000ACB  2020              and [bx+si],ah
00000ACD  2020              and [bx+si],ah
00000ACF  2020              and [bx+si],ah
00000AD1  2020              and [bx+si],ah
00000AD3  2020              and [bx+si],ah
00000AD5  2020              and [bx+si],ah
00000AD7  2020              and [bx+si],ah
00000AD9  2020              and [bx+si],ah
00000ADB  3C53              cmp al,0x53
00000ADD  686966            push word 0x6669
00000AE0  743E              jz 0xb20
00000AE2  20746F            and [si+0x6f],dh
00000AE5  206D6F            and [di+0x6f],ch
00000AE8  7665              jna 0xb4f
00000AEA  207061            and [bx+si+0x61],dh
00000AED  64646C            fs insb
00000AF0  65207570          and [gs:di+0x70],dh
00000AF4  0D0A20            or ax,0x200a
00000AF7  2020              and [bx+si],ah
00000AF9  2020              and [bx+si],ah
00000AFB  2020              and [bx+si],ah
00000AFD  2020              and [bx+si],ah
00000AFF  2020              and [bx+si],ah
00000B01  2020              and [bx+si],ah
00000B03  2020              and [bx+si],ah
00000B05  2020              and [bx+si],ah
00000B07  2020              and [bx+si],ah
00000B09  2020              and [bx+si],ah
00000B0B  3C43              cmp al,0x43
00000B0D  7472              jz 0xb81
00000B0F  6C                insb
00000B10  3E2020            and [ds:bx+si],ah
00000B13  746F              jz 0xb84
00000B15  206D6F            and [di+0x6f],ch
00000B18  7665              jna 0xb7f
00000B1A  207061            and [bx+si+0x61],dh
00000B1D  64646C            fs insb
00000B20  6520646F          and [gs:si+0x6f],ah
00000B24  776E              ja 0xb94
00000B26  0D0A20            or ax,0x200a
00000B29  2020              and [bx+si],ah
00000B2B  2020              and [bx+si],ah
00000B2D  2020              and [bx+si],ah
00000B2F  2020              and [bx+si],ah
00000B31  2020              and [bx+si],ah
00000B33  2020              and [bx+si],ah
00000B35  2020              and [bx+si],ah
00000B37  2020              and [bx+si],ah
00000B39  2020              and [bx+si],ah
00000B3B  2020              and [bx+si],ah
00000B3D  2020              and [bx+si],ah
00000B3F  3C51              cmp al,0x51
00000B41  3E2020            and [ds:bx+si],ah
00000B44  20746F            and [si+0x6f],dh
00000B47  207175            and [bx+di+0x75],dh
00000B4A  6974206375        imul si,[si+0x20],word 0x7563
00000B4F  7272              jc 0xbc3
00000B51  656E              gs outsb
00000B53  7420              jz 0xb75
00000B55  6761              a32 popaw
00000B57  6D                insw
00000B58  652420            gs and al,0x20
00000B5B  2020              and [bx+si],ah
00000B5D  2020              and [bx+si],ah
00000B5F  2020              and [bx+si],ah
00000B61  2020              and [bx+si],ah
00000B63  2020              and [bx+si],ah
00000B65  2020              and [bx+si],ah
00000B67  2020              and [bx+si],ah
00000B69  2020              and [bx+si],ah
00000B6B  2020              and [bx+si],ah
00000B6D  2020              and [bx+si],ah
00000B6F  2020              and [bx+si],ah
00000B71  204156            and [bx+di+0x56],al
00000B74  4F                dec di
00000B75  49                dec cx
00000B76  44                inc sp
00000B77  204D49            and [di+0x49],cl
00000B7A  53                push bx
00000B7B  53                push bx
00000B7C  49                dec cx
00000B7D  4E                dec si
00000B7E  47                inc di
00000B7F  204241            and [bp+si+0x41],al
00000B82  4C                dec sp
00000B83  4C                dec sp
00000B84  20464F            and [bp+0x4f],al
00000B87  52                push dx
00000B88  204849            and [bx+si+0x49],cl
00000B8B  47                inc di
00000B8C  48                dec ax
00000B8D  205343            and [bp+di+0x43],dl
00000B90  4F                dec di
00000B91  52                push dx
00000B92  45                inc bp
00000B93  24                db 0x24
