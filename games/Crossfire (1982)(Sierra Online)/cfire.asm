00000100  8CC8              mov ax,cs
00000102  051200            add ax,0x12
00000105  50                push ax
00000106  B80400            mov ax,0x4
00000109  50                push ax
0000010A  33C0              xor ax,ax
0000010C  8ED8              mov ds,ax
0000010E  CB                retf
0000010F  54                push sp
00000110  686520            push word 0x2065
00000113  44                inc sp
00000114  7570              jnz 0x186
00000116  6C                insb
00000117  696361746F        imul sp,[bp+di+0x61],word 0x6f74
0000011C  7273              jc 0x191
0000011E  3833              cmp [bp+di],dh
00000120  0000              add [bx+si],al
00000122  0000              add [bx+si],al
00000124  8CC8              mov ax,cs
00000126  05D506            add ax,0x6d5
00000129  2DC504            sub ax,0x4c5
0000012C  8ED8              mov ds,ax
0000012E  8CC8              mov ax,cs
00000130  059F08            add ax,0x89f
00000133  2DC504            sub ax,0x4c5
00000136  8ED0              mov ss,ax
00000138  BC0001            mov sp,0x100
0000013B  C606560300        mov byte [0x356],0x0
00000140  C606400300        mov byte [0x340],0x0
00000145  C606410300        mov byte [0x341],0x0
0000014A  C606420300        mov byte [0x342],0x0
0000014F  B84000            mov ax,0x40
00000152  8EC0              mov es,ax
00000154  26A06C00          mov al,[es:0x6c]
00000158  A23003            mov [0x330],al
0000015B  A23103            mov [0x331],al
0000015E  A23203            mov [0x332],al
00000161  A23303            mov [0x333],al
00000164  A23403            mov [0x334],al
00000167  A23503            mov [0x335],al
0000016A  FE063003          inc byte [0x330]
0000016E  FE063103          inc byte [0x331]
00000172  E8D601            call 0x34b
00000175  C6064703FF        mov byte [0x347],0xff
0000017A  E8A302            call 0x420
0000017D  C6060B1014        mov byte [0x100b],0x14
00000182  C606001008        mov byte [0x1000],0x8
00000187  C606011001        mov byte [0x1001],0x1
0000018C  C606021020        mov byte [0x1002],0x20
00000191  C606031050        mov byte [0x1003],0x50
00000196  C7060710C001      mov word [0x1007],0x1c0
0000019C  C606091010        mov byte [0x1009],0x10
000001A1  C70604100000      mov word [0x1004],0x0
000001A7  C606061000        mov byte [0x1006],0x0
000001AC  C6060A1000        mov byte [0x100a],0x0
000001B1  E86C19            call 0x1b20
000001B4  FE0E0010          dec byte [0x1000]
000001B8  7508              jnz 0x1c2
000001BA  E86312            call 0x1420
000001BD  C606001008        mov byte [0x1000],0x8
000001C2  FE0E0110          dec byte [0x1001]
000001C6  7508              jnz 0x1d0
000001C8  E85510            call 0x1220
000001CB  C606011001        mov byte [0x1001],0x1
000001D0  FE0E0910          dec byte [0x1009]
000001D4  752E              jnz 0x204
000001D6  803E57034A        cmp byte [0x357],0x4a
000001DB  7527              jnz 0x204
000001DD  C606091010        mov byte [0x1009],0x10
000001E2  803E0A1000        cmp byte [0x100a],0x0
000001E7  7405              jz 0x1ee
000001E9  C6060A10FF        mov byte [0x100a],0xff
000001EE  FE060A10          inc byte [0x100a]
000001F2  B400              mov ah,0x0
000001F4  A00A10            mov al,[0x100a]
000001F7  8BF0              mov si,ax
000001F9  E8241D            call 0x1f20
000001FC  88845803          mov [si+0x358],al
00000200  88265A03          mov [0x35a],ah
00000204  FE0E0210          dec byte [0x1002]
00000208  7511              jnz 0x21b
0000020A  E81306            call 0x820
0000020D  B020              mov al,0x20
0000020F  803E070300        cmp byte [0x307],0x0
00000214  7402              jz 0x218
00000216  B080              mov al,0x80
00000218  A20210            mov [0x1002],al
0000021B  FE0E0310          dec byte [0x1003]
0000021F  7508              jnz 0x229
00000221  E84F17            call 0x1973
00000224  C606031050        mov byte [0x1003],0x50
00000229  803E530300        cmp byte [0x353],0x0
0000022E  741D              jz 0x24d
00000230  FF0E0710          dec word [0x1007]
00000234  7517              jnz 0x24d
00000236  E8E716            call 0x1920
00000239  C606530300        mov byte [0x353],0x0
0000023E  8B361703          mov si,[0x317]
00000242  C684040005        mov byte [si+0x4],0x5
00000247  C7060710C001      mov word [0x1007],0x1c0
0000024D  803E470300        cmp byte [0x347],0x0
00000252  741E              jz 0x272
00000254  E8ED09            call 0xc44
00000257  0AE4              or ah,ah
00000259  7417              jz 0x272
0000025B  C606470300        mov byte [0x347],0x0
00000260  C6063D0300        mov byte [0x33d],0x0
00000265  C6063E0300        mov byte [0x33e],0x0
0000026A  C6063F0300        mov byte [0x33f],0x0
0000026F  E908FF            jmp 0x17a
00000272  B000              mov al,0x0
00000274  803E050305        cmp byte [0x305],0x5
00000279  7608              jna 0x283
0000027B  B005              mov al,0x5
0000027D  2A064C03          sub al,[0x34c]
00000281  D0E0              shl al,1
00000283  02060B10          add al,[0x100b]
00000287  B301              mov bl,0x1
00000289  FECB              dec bl
0000028B  75FC              jnz 0x289
0000028D  FEC8              dec al
0000028F  75F6              jnz 0x287
00000291  803E070300        cmp byte [0x307],0x0
00000296  7441              jz 0x2d9
00000298  803E061000        cmp byte [0x1006],0x0
0000029D  7507              jnz 0x2a6
0000029F  E8CC1D            call 0x206e
000002A2  FE0E0610          dec byte [0x1006]
000002A6  833E041000        cmp word [0x1004],byte +0x0
000002AB  7506              jnz 0x2b3
000002AD  C7060410000C      mov word [0x1004],0xc00
000002B3  FF0E0410          dec word [0x1004]
000002B7  7403              jz 0x2bc
000002B9  E9F5FE            jmp 0x1b1
000002BC  803E430300        cmp byte [0x343],0x0
000002C1  7506              jnz 0x2c9
000002C3  E85A1D            call 0x2020
000002C6  E9ACFE            jmp 0x175
000002C9  E8D81D            call 0x20a4
000002CC  803E050300        cmp byte [0x305],0x0
000002D1  7429              jz 0x2fc
000002D3  E8D803            call 0x6ae
000002D6  E9A9FE            jmp 0x182
000002D9  803E050300        cmp byte [0x305],0x0
000002DE  7403              jz 0x2e3
000002E0  E9CEFE            jmp 0x1b1
000002E3  833E041000        cmp word [0x1004],byte +0x0
000002E8  7506              jnz 0x2f0
000002EA  C7060410000C      mov word [0x1004],0xc00
000002F0  FF0E0410          dec word [0x1004]
000002F4  7403              jz 0x2f9
000002F6  E9B8FE            jmp 0x1b1
000002F9  E8A81D            call 0x20a4
000002FC  E82203            call 0x621
000002FF  E8AC03            call 0x6ae
00000302  803E0B1001        cmp byte [0x100b],0x1
00000307  7404              jz 0x30d
00000309  FE0E0B10          dec byte [0x100b]
0000030D  E972FE            jmp 0x182
00000310  0000              add [bx+si],al
00000312  2EFF0EF001        dec word [cs:0x1f0]
00000317  7931              jns 0x34a
00000319  50                push ax
0000031A  B80000            mov ax,0x0
0000031D  8EC0              mov es,ax
0000031F  2EA10000          mov ax,[cs:0x0]
00000323  26A37000          mov [es:0x70],ax
00000327  2EA10200          mov ax,[cs:0x2]
0000032B  26A37200          mov [es:0x72],ax
0000032F  FB                sti
00000330  E81109            call 0xc44
00000333  FA                cli
00000334  8D06F201          lea ax,[0x1f2]
00000338  26A37000          mov [es:0x70],ax
0000033C  8CC8              mov ax,cs
0000033E  26A37200          mov [es:0x72],ax
00000342  58                pop ax
00000343  2EC706F0010E01    mov word [cs:0x1f0],0x10e
0000034A  CF                iret
0000034B  50                push ax
0000034C  53                push bx
0000034D  51                push cx
0000034E  56                push si
0000034F  57                push di
00000350  E8CE0A            call 0xe21
00000353  8D36FD18          lea si,[0x18fd]
00000357  8B04              mov ax,[si]
00000359  3DFFFF            cmp ax,0xffff
0000035C  741D              jz 0x37b
0000035E  8B5C02            mov bx,[si+0x2]
00000361  8D7C06            lea di,[si+0x6]
00000364  8B0D              mov cx,[di]
00000366  83F900            cmp cx,byte +0x0
00000369  740B              jz 0x376
0000036B  E8D40A            call 0xe42
0000036E  034404            add ax,[si+0x4]
00000371  83C702            add di,byte +0x2
00000374  EBEE              jmp short 0x364
00000376  8D7502            lea si,[di+0x2]
00000379  EBDC              jmp short 0x357
0000037B  5F                pop di
0000037C  5E                pop si
0000037D  59                pop cx
0000037E  5B                pop bx
0000037F  58                pop ax
00000380  C3                ret
00000381  0000              add [bx+si],al
00000383  0000              add [bx+si],al
00000385  0000              add [bx+si],al
00000387  0000              add [bx+si],al
00000389  0000              add [bx+si],al
0000038B  0000              add [bx+si],al
0000038D  0000              add [bx+si],al
0000038F  0000              add [bx+si],al
00000391  0000              add [bx+si],al
00000393  0000              add [bx+si],al
00000395  0000              add [bx+si],al
00000397  0000              add [bx+si],al
00000399  0000              add [bx+si],al
0000039B  0000              add [bx+si],al
0000039D  0000              add [bx+si],al
0000039F  0000              add [bx+si],al
000003A1  0000              add [bx+si],al
000003A3  0000              add [bx+si],al
000003A5  0000              add [bx+si],al
000003A7  0000              add [bx+si],al
000003A9  0000              add [bx+si],al
000003AB  0000              add [bx+si],al
000003AD  0000              add [bx+si],al
000003AF  0000              add [bx+si],al
000003B1  0000              add [bx+si],al
000003B3  0000              add [bx+si],al
000003B5  0000              add [bx+si],al
000003B7  0000              add [bx+si],al
000003B9  0000              add [bx+si],al
000003BB  0000              add [bx+si],al
000003BD  0000              add [bx+si],al
000003BF  0000              add [bx+si],al
000003C1  0000              add [bx+si],al
000003C3  0000              add [bx+si],al
000003C5  0000              add [bx+si],al
000003C7  0000              add [bx+si],al
000003C9  0000              add [bx+si],al
000003CB  0000              add [bx+si],al
000003CD  0000              add [bx+si],al
000003CF  0000              add [bx+si],al
000003D1  0000              add [bx+si],al
000003D3  0000              add [bx+si],al
000003D5  0000              add [bx+si],al
000003D7  0000              add [bx+si],al
000003D9  0000              add [bx+si],al
000003DB  0000              add [bx+si],al
000003DD  0000              add [bx+si],al
000003DF  0000              add [bx+si],al
000003E1  0000              add [bx+si],al
000003E3  0000              add [bx+si],al
000003E5  0000              add [bx+si],al
000003E7  0000              add [bx+si],al
000003E9  0000              add [bx+si],al
000003EB  0000              add [bx+si],al
000003ED  0000              add [bx+si],al
000003EF  0000              add [bx+si],al
000003F1  0000              add [bx+si],al
000003F3  0000              add [bx+si],al
000003F5  0000              add [bx+si],al
000003F7  0000              add [bx+si],al
000003F9  0000              add [bx+si],al
000003FB  0000              add [bx+si],al
000003FD  0000              add [bx+si],al
000003FF  0000              add [bx+si],al
00000401  0000              add [bx+si],al
00000403  0000              add [bx+si],al
00000405  0000              add [bx+si],al
00000407  0000              add [bx+si],al
00000409  0000              add [bx+si],al
0000040B  0000              add [bx+si],al
0000040D  0000              add [bx+si],al
0000040F  0000              add [bx+si],al
00000411  0000              add [bx+si],al
00000413  0000              add [bx+si],al
00000415  0000              add [bx+si],al
00000417  0000              add [bx+si],al
00000419  0000              add [bx+si],al
0000041B  0000              add [bx+si],al
0000041D  0000              add [bx+si],al
0000041F  005053            add [bx+si+0x53],dl
00000422  51                push cx
00000423  52                push dx
00000424  56                push si
00000425  57                push di
00000426  803E57034B        cmp byte [0x357],0x4b
0000042B  740F              jz 0x43c
0000042D  803E57034A        cmp byte [0x357],0x4a
00000432  7408              jz 0x43c
00000434  E80D08            call 0xc44
00000437  A25703            mov [0x357],al
0000043A  EBEA              jmp short 0x426
0000043C  E8E209            call 0xe21
0000043F  8D368010          lea si,[0x1080]
00000443  8D3E0001          lea di,[0x100]
00000447  B00B              mov al,0xb
00000449  A20103            mov [0x301],al
0000044C  A21C03            mov [0x31c],al
0000044F  8A1C              mov bl,[si]
00000451  889D0600          mov [di+0x6],bl
00000455  8A5C01            mov bl,[si+0x1]
00000458  889D0700          mov [di+0x7],bl
0000045C  8A5C02            mov bl,[si+0x2]
0000045F  889D0800          mov [di+0x8],bl
00000463  8A5C03            mov bl,[si+0x3]
00000466  889D0900          mov [di+0x9],bl
0000046A  83C604            add si,byte +0x4
0000046D  83C70C            add di,byte +0xc
00000470  FEC8              dec al
00000472  75DB              jnz 0x44f
00000474  C706AE100600      mov word [0x10ae],0x6
0000047A  C706AC100700      mov word [0x10ac],0x7
00000480  B105              mov cl,0x5
00000482  A1AC10            mov ax,[0x10ac]
00000485  D3E0              shl ax,cl
00000487  2D1800            sub ax,0x18
0000048A  03063603          add ax,[0x336]
0000048E  8B1EAE10          mov bx,[0x10ae]
00000492  B105              mov cl,0x5
00000494  D3E3              shl bx,cl
00000496  83EB18            sub bx,byte +0x18
00000499  031E3803          add bx,[0x338]
0000049D  8D0E600D          lea cx,[0xd60]
000004A1  E89E09            call 0xe42
000004A4  FF0EAC10          dec word [0x10ac]
000004A8  75D6              jnz 0x480
000004AA  FF0EAE10          dec word [0x10ae]
000004AE  75CA              jnz 0x47a
000004B0  E84601            call 0x5f9
000004B3  E86B01            call 0x621
000004B6  E8F501            call 0x6ae
000004B9  C6064603FF        mov byte [0x346],0xff
000004BE  B8E200            mov ax,0xe2
000004C1  03063603          add ax,[0x336]
000004C5  BB1D00            mov bx,0x1d
000004C8  031E3803          add bx,[0x338]
000004CC  8D0EA009          lea cx,[0x9a0]
000004D0  E86F09            call 0xe42
000004D3  B8DE00            mov ax,0xde
000004D6  03063603          add ax,[0x336]
000004DA  BB5D00            mov bx,0x5d
000004DD  031E3803          add bx,[0x338]
000004E1  8D0EC00D          lea cx,[0xdc0]
000004E5  E85A09            call 0xe42
000004E8  B8E400            mov ax,0xe4
000004EB  03063603          add ax,[0x336]
000004EF  BB9D00            mov bx,0x9d
000004F2  031E3803          add bx,[0x338]
000004F6  8D0E300E          lea cx,[0xe30]
000004FA  E84509            call 0xe42
000004FD  8A1E3D03          mov bl,[0x33d]
00000501  881E3A03          mov [0x33a],bl
00000505  8A1E3E03          mov bl,[0x33e]
00000509  881E3B03          mov [0x33b],bl
0000050D  8A1E3F03          mov bl,[0x33f]
00000511  881E3C03          mov [0x33c],bl
00000515  B0FF              mov al,0xff
00000517  A23D03            mov [0x33d],al
0000051A  A23E03            mov [0x33e],al
0000051D  A23F03            mov [0x33f],al
00000520  A24303            mov [0x343],al
00000523  B86100            mov ax,0x61
00000526  BB2D00            mov bx,0x2d
00000529  8D0E3D03          lea cx,[0x33d]
0000052D  BA0300            mov dx,0x3
00000530  E8A718            call 0x1dda
00000533  C6063A0303        mov byte [0x33a],0x3
00000538  B87100            mov ax,0x71
0000053B  BBAD00            mov bx,0xad
0000053E  8D0E4303          lea cx,[0x343]
00000542  BA0100            mov dx,0x1
00000545  E89218            call 0x1dda
00000548  8A1E4003          mov bl,[0x340]
0000054C  881E3A03          mov [0x33a],bl
00000550  8A1E4103          mov bl,[0x341]
00000554  881E3B03          mov [0x33b],bl
00000558  8A1E4203          mov bl,[0x342]
0000055C  881E3C03          mov [0x33c],bl
00000560  B86100            mov ax,0x61
00000563  BB6D00            mov bx,0x6d
00000566  8D0E4003          lea cx,[0x340]
0000056A  BA0300            mov dx,0x3
0000056D  E86A18            call 0x1dda
00000570  C606460300        mov byte [0x346],0x0
00000575  8D3E0000          lea di,[0x0]
00000579  893E1503          mov [0x315],di
0000057D  A00003            mov al,[0x300]
00000580  A21B03            mov [0x31b],al
00000583  C70602030000      mov word [0x302],0x0
00000589  8B1E0203          mov bx,[0x302]
0000058D  899D0400          mov [di+0x4],bx
00000591  893E0203          mov [0x302],di
00000595  C685070000        mov byte [di+0x7],0x0
0000059A  83C708            add di,byte +0x8
0000059D  FEC8              dec al
0000059F  75E8              jnz 0x589
000005A1  C606060304        mov byte [0x306],0x4
000005A6  C606110306        mov byte [0x311],0x6
000005AB  C606040306        mov byte [0x304],0x6
000005B0  C606120320        mov byte [0x312],0x20
000005B5  C606130306        mov byte [0x313],0x6
000005BA  C6064E0306        mov byte [0x34e],0x6
000005BF  C606450301        mov byte [0x345],0x1
000005C4  C606440301        mov byte [0x344],0x1
000005C9  C6060A0323        mov byte [0x30a],0x23
000005CE  C6064D0323        mov byte [0x34d],0x23
000005D3  C6060B0300        mov byte [0x30b],0x0
000005D8  C6065A0300        mov byte [0x35a],0x0
000005DD  BF0500            mov di,0x5
000005E0  C6852303FF        mov byte [di+0x323],0xff
000005E5  4F                dec di
000005E6  79F8              jns 0x5e0
000005E8  C6062F0305        mov byte [0x32f],0x5
000005ED  C606290300        mov byte [0x329],0x0
000005F2  5F                pop di
000005F3  5E                pop si
000005F4  5A                pop dx
000005F5  59                pop cx
000005F6  5B                pop bx
000005F7  58                pop ax
000005F8  C3                ret
000005F9  50                push ax
000005FA  53                push bx
000005FB  51                push cx
000005FC  52                push dx
000005FD  56                push si
000005FE  B209              mov dl,0x9
00000600  B81200            mov ax,0x12
00000603  BE0000            mov si,0x0
00000606  8B9C0017          mov bx,[si+0x1700]
0000060A  83C30C            add bx,byte +0xc
0000060D  8B8C0217          mov cx,[si+0x1702]
00000611  E82E08            call 0xe42
00000614  83C604            add si,byte +0x4
00000617  FECA              dec dl
00000619  75EB              jnz 0x606
0000061B  5E                pop si
0000061C  5A                pop dx
0000061D  59                pop cx
0000061E  5B                pop bx
0000061F  58                pop ax
00000620  C3                ret
00000621  50                push ax
00000622  53                push bx
00000623  51                push cx
00000624  56                push si
00000625  57                push di
00000626  A00103            mov al,[0x301]
00000629  A20503            mov [0x305],al
0000062C  8D3E0001          lea di,[0x100]
00000630  C6850A0000        mov byte [di+0xa],0x0
00000635  C685040000        mov byte [di+0x4],0x0
0000063A  83C70C            add di,byte +0xc
0000063D  FEC8              dec al
0000063F  75EF              jnz 0x630
00000641  8D3E0002          lea di,[0x200]
00000645  8D360011          lea si,[0x1100]
00000649  B003              mov al,0x3
0000064B  8A1C              mov bl,[si]
0000064D  889D0000          mov [di+0x0],bl
00000651  8A5C01            mov bl,[si+0x1]
00000654  889D0100          mov [di+0x1],bl
00000658  8A5C02            mov bl,[si+0x2]
0000065B  889D0200          mov [di+0x2],bl
0000065F  8A5C03            mov bl,[si+0x3]
00000662  889D0300          mov [di+0x3],bl
00000666  C685040000        mov byte [di+0x4],0x0
0000066B  893E1703          mov [0x317],di
0000066F  E8AE12            call 0x1920
00000672  83C604            add si,byte +0x4
00000675  83C708            add di,byte +0x8
00000678  FEC8              dec al
0000067A  79CF              jns 0x64b
0000067C  C6064F030C        mov byte [0x34f],0xc
00000681  C606530300        mov byte [0x353],0x0
00000686  C606540304        mov byte [0x354],0x4
0000068B  8D3E0002          lea di,[0x200]
0000068F  893E1703          mov [0x317],di
00000693  A04D03            mov al,[0x34d]
00000696  3C0F              cmp al,0xf
00000698  7602              jna 0x69c
0000069A  2C05              sub al,0x5
0000069C  A20A03            mov [0x30a],al
0000069F  A24D03            mov [0x34d],al
000006A2  A04E03            mov al,[0x34e]
000006A5  A21303            mov [0x313],al
000006A8  5F                pop di
000006A9  5E                pop si
000006AA  59                pop cx
000006AB  5B                pop bx
000006AC  58                pop ax
000006AD  C3                ret
000006AE  50                push ax
000006AF  53                push bx
000006B0  57                push di
000006B1  C606480308        mov byte [0x348],0x8
000006B6  C606070300        mov byte [0x307],0x0
000006BB  C6064C0300        mov byte [0x34c],0x0
000006C0  A00103            mov al,[0x301]
000006C3  8D3E0001          lea di,[0x100]
000006C7  80BD040004        cmp byte [di+0x4],0x4
000006CC  742C              jz 0x6fa
000006CE  8A9D0600          mov bl,[di+0x6]
000006D2  889D0000          mov [di+0x0],bl
000006D6  8A9D0700          mov bl,[di+0x7]
000006DA  889D0100          mov [di+0x1],bl
000006DE  8A9D0800          mov bl,[di+0x8]
000006E2  889D0200          mov [di+0x2],bl
000006E6  8A9D0900          mov bl,[di+0x9]
000006EA  889D0300          mov [di+0x3],bl
000006EE  C685040000        mov byte [di+0x4],0x0
000006F3  893E1903          mov [0x319],di
000006F7  E81713            call 0x1a11
000006FA  83C70C            add di,byte +0xc
000006FD  FEC8              dec al
000006FF  75C6              jnz 0x6c7
00000701  8D3E0001          lea di,[0x100]
00000705  893E1903          mov [0x319],di
00000709  C606080380        mov byte [0x308],0x80
0000070E  C6060903A0        mov byte [0x309],0xa0
00000713  C606550300        mov byte [0x355],0x0
00000718  E8C312            call 0x19de
0000071B  C6060C0300        mov byte [0x30c],0x0
00000720  C6060D03FE        mov byte [0x30d],0xfe
00000725  C6060F0320        mov byte [0x30f],0x20
0000072A  C606100308        mov byte [0x310],0x8
0000072F  C6064A03FF        mov byte [0x34a],0xff
00000734  8A1E4D03          mov bl,[0x34d]
00000738  881E0A03          mov [0x30a],bl
0000073C  C60614030C        mov byte [0x314],0xc
00000741  C6064B0308        mov byte [0x34b],0x8
00000746  5F                pop di
00000747  5B                pop bx
00000748  58                pop ax
00000749  C3                ret
0000074A  0000              add [bx+si],al
0000074C  0000              add [bx+si],al
0000074E  0000              add [bx+si],al
00000750  0000              add [bx+si],al
00000752  0000              add [bx+si],al
00000754  0000              add [bx+si],al
00000756  0000              add [bx+si],al
00000758  0000              add [bx+si],al
0000075A  0000              add [bx+si],al
0000075C  0000              add [bx+si],al
0000075E  0000              add [bx+si],al
00000760  0000              add [bx+si],al
00000762  0000              add [bx+si],al
00000764  0000              add [bx+si],al
00000766  0000              add [bx+si],al
00000768  0000              add [bx+si],al
0000076A  0000              add [bx+si],al
0000076C  0000              add [bx+si],al
0000076E  0000              add [bx+si],al
00000770  0000              add [bx+si],al
00000772  0000              add [bx+si],al
00000774  0000              add [bx+si],al
00000776  0000              add [bx+si],al
00000778  0000              add [bx+si],al
0000077A  0000              add [bx+si],al
0000077C  0000              add [bx+si],al
0000077E  0000              add [bx+si],al
00000780  0000              add [bx+si],al
00000782  0000              add [bx+si],al
00000784  0000              add [bx+si],al
00000786  0000              add [bx+si],al
00000788  0000              add [bx+si],al
0000078A  0000              add [bx+si],al
0000078C  0000              add [bx+si],al
0000078E  0000              add [bx+si],al
00000790  0000              add [bx+si],al
00000792  0000              add [bx+si],al
00000794  0000              add [bx+si],al
00000796  0000              add [bx+si],al
00000798  0000              add [bx+si],al
0000079A  0000              add [bx+si],al
0000079C  0000              add [bx+si],al
0000079E  0000              add [bx+si],al
000007A0  0000              add [bx+si],al
000007A2  0000              add [bx+si],al
000007A4  0000              add [bx+si],al
000007A6  0000              add [bx+si],al
000007A8  0000              add [bx+si],al
000007AA  0000              add [bx+si],al
000007AC  0000              add [bx+si],al
000007AE  0000              add [bx+si],al
000007B0  0000              add [bx+si],al
000007B2  0000              add [bx+si],al
000007B4  0000              add [bx+si],al
000007B6  0000              add [bx+si],al
000007B8  0000              add [bx+si],al
000007BA  0000              add [bx+si],al
000007BC  0000              add [bx+si],al
000007BE  0000              add [bx+si],al
000007C0  0000              add [bx+si],al
000007C2  0000              add [bx+si],al
000007C4  0000              add [bx+si],al
000007C6  0000              add [bx+si],al
000007C8  0000              add [bx+si],al
000007CA  0000              add [bx+si],al
000007CC  0000              add [bx+si],al
000007CE  0000              add [bx+si],al
000007D0  0000              add [bx+si],al
000007D2  0000              add [bx+si],al
000007D4  0000              add [bx+si],al
000007D6  0000              add [bx+si],al
000007D8  0000              add [bx+si],al
000007DA  0000              add [bx+si],al
000007DC  0000              add [bx+si],al
000007DE  0000              add [bx+si],al
000007E0  0000              add [bx+si],al
000007E2  0000              add [bx+si],al
000007E4  0000              add [bx+si],al
000007E6  0000              add [bx+si],al
000007E8  0000              add [bx+si],al
000007EA  0000              add [bx+si],al
000007EC  0000              add [bx+si],al
000007EE  0000              add [bx+si],al
000007F0  0000              add [bx+si],al
000007F2  0000              add [bx+si],al
000007F4  0000              add [bx+si],al
000007F6  0000              add [bx+si],al
000007F8  0000              add [bx+si],al
000007FA  0000              add [bx+si],al
000007FC  0000              add [bx+si],al
000007FE  0000              add [bx+si],al
00000800  0000              add [bx+si],al
00000802  0000              add [bx+si],al
00000804  0000              add [bx+si],al
00000806  0000              add [bx+si],al
00000808  0000              add [bx+si],al
0000080A  0000              add [bx+si],al
0000080C  0000              add [bx+si],al
0000080E  0000              add [bx+si],al
00000810  0000              add [bx+si],al
00000812  0000              add [bx+si],al
00000814  0000              add [bx+si],al
00000816  0000              add [bx+si],al
00000818  0000              add [bx+si],al
0000081A  0000              add [bx+si],al
0000081C  0000              add [bx+si],al
0000081E  0000              add [bx+si],al
00000820  50                push ax
00000821  53                push bx
00000822  56                push si
00000823  803E0703FF        cmp byte [0x307],0xff
00000828  7521              jnz 0x84b
0000082A  803E550306        cmp byte [0x355],0x6
0000082F  7503              jnz 0x834
00000831  E9F201            jmp 0xa26
00000834  E8A711            call 0x19de
00000837  FE065503          inc byte [0x355]
0000083B  803E550306        cmp byte [0x355],0x6
00000840  7503              jnz 0x845
00000842  E9E101            jmp 0xa26
00000845  E89611            call 0x19de
00000848  E9DB01            jmp 0xa26
0000084B  E8D202            call 0xb20
0000084E  A21012            mov [0x1210],al
00000851  881E1112          mov [0x1211],bl
00000855  A00803            mov al,[0x308]
00000858  0A060903          or al,[0x309]
0000085C  241F              and al,0x1f
0000085E  742E              jz 0x88e
00000860  F60608031F        test byte [0x308],0x1f
00000865  7415              jz 0x87c
00000867  C606111200        mov byte [0x1211],0x0
0000086C  803E101200        cmp byte [0x1210],0x0
00000871  751B              jnz 0x88e
00000873  A00C03            mov al,[0x30c]
00000876  A21012            mov [0x1210],al
00000879  EB13              jmp short 0x88e
0000087B  90                nop
0000087C  C606101200        mov byte [0x1210],0x0
00000881  803E111200        cmp byte [0x1211],0x0
00000886  7506              jnz 0x88e
00000888  A00D03            mov al,[0x30d]
0000088B  A21112            mov [0x1211],al
0000088E  A00803            mov al,[0x308]
00000891  02061012          add al,[0x1210]
00000895  3CC0              cmp al,0xc0
00000897  7603              jna 0x89c
00000899  E99400            jmp 0x930
0000089C  3C20              cmp al,0x20
0000089E  7303              jnc 0x8a3
000008A0  E98D00            jmp 0x930
000008A3  A21212            mov [0x1212],al
000008A6  A00903            mov al,[0x309]
000008A9  02061112          add al,[0x1211]
000008AD  3CA0              cmp al,0xa0
000008AF  7603              jna 0x8b4
000008B1  EB7D              jmp short 0x930
000008B3  90                nop
000008B4  3C20              cmp al,0x20
000008B6  7303              jnc 0x8bb
000008B8  EB76              jmp short 0x930
000008BA  90                nop
000008BB  A21312            mov [0x1213],al
000008BE  3A060903          cmp al,[0x309]
000008C2  750C              jnz 0x8d0
000008C4  A01212            mov al,[0x1212]
000008C7  3A060803          cmp al,[0x308]
000008CB  7503              jnz 0x8d0
000008CD  EB61              jmp short 0x930
000008CF  90                nop
000008D0  E80B11            call 0x19de
000008D3  A01212            mov al,[0x1212]
000008D6  A20803            mov [0x308],al
000008D9  A01312            mov al,[0x1213]
000008DC  A20903            mov [0x309],al
000008DF  E8FC10            call 0x19de
000008E2  8B361703          mov si,[0x317]
000008E6  8A840100          mov al,[si+0x1]
000008EA  3A060903          cmp al,[0x309]
000008EE  7540              jnz 0x930
000008F0  8A840000          mov al,[si+0x0]
000008F4  3A060803          cmp al,[0x308]
000008F8  7536              jnz 0x930
000008FA  80BC040000        cmp byte [si+0x4],0x0
000008FF  752F              jnz 0x930
00000901  C6065303FF        mov byte [0x353],0xff
00000906  E81710            call 0x1920
00000909  FE0E5403          dec byte [0x354]
0000090D  B400              mov ah,0x0
0000090F  A05403            mov al,[0x354]
00000912  8BF8              mov di,ax
00000914  8A850012          mov al,[di+0x1200]
00000918  88840400          mov [si+0x4],al
0000091C  8A850412          mov al,[di+0x1204]
00000920  E8FD13            call 0x1d20
00000923  E8FA0F            call 0x1920
00000926  C6064F030C        mov byte [0x34f],0xc
0000092B  C6062603FE        mov byte [0x326],0xfe
00000930  A01012            mov al,[0x1210]
00000933  A20C03            mov [0x30c],al
00000936  A01112            mov al,[0x1211]
00000939  A20D03            mov [0x30d],al
0000093C  A00903            mov al,[0x309]
0000093F  3A064A03          cmp al,[0x34a]
00000943  7523              jnz 0x968
00000945  A00803            mov al,[0x308]
00000948  3A064903          cmp al,[0x349]
0000094C  751A              jnz 0x968
0000094E  803E0B03FF        cmp byte [0x30b],0xff
00000953  7503              jnz 0x958
00000955  E81B10            call 0x1973
00000958  C6064A03FF        mov byte [0x34a],0xff
0000095D  C6062603FE        mov byte [0x326],0xfe
00000962  A04D03            mov al,[0x34d]
00000965  A20A03            mov [0x30a],al
00000968  803E0A0300        cmp byte [0x30a],0x0
0000096D  7503              jnz 0x972
0000096F  E9B400            jmp 0xa26
00000972  803E140300        cmp byte [0x314],0x0
00000977  7407              jz 0x980
00000979  FE0E1403          dec byte [0x314]
0000097D  E9A600            jmp 0xa26
00000980  E8A102            call 0xc24
00000983  A21412            mov [0x1214],al
00000986  3C00              cmp al,0x0
00000988  7404              jz 0x98e
0000098A  3C02              cmp al,0x2
0000098C  7507              jnz 0x995
0000098E  F60609031F        test byte [0x309],0x1f
00000993  7415              jz 0x9aa
00000995  3C01              cmp al,0x1
00000997  7407              jz 0x9a0
00000999  3C03              cmp al,0x3
0000099B  7403              jz 0x9a0
0000099D  E98600            jmp 0xa26
000009A0  F60608031F        test byte [0x308],0x1f
000009A5  7403              jz 0x9aa
000009A7  EB7D              jmp short 0xa26
000009A9  90                nop
000009AA  B002              mov al,0x2
000009AC  E87106            call 0x1020
000009AF  80FC00            cmp ah,0x0
000009B2  7403              jz 0x9b7
000009B4  EB70              jmp short 0xa26
000009B6  90                nop
000009B7  C6060F03FF        mov byte [0x30f],0xff
000009BC  C60614030C        mov byte [0x314],0xc
000009C1  B400              mov ah,0x0
000009C3  A01412            mov al,[0x1214]
000009C6  8BF0              mov si,ax
000009C8  8A840812          mov al,[si+0x1208]
000009CC  88870200          mov [bx+0x2],al
000009D0  D0E0              shl al,1
000009D2  D0E0              shl al,1
000009D4  02060803          add al,[0x308]
000009D8  88870000          mov [bx+0x0],al
000009DC  8A840C12          mov al,[si+0x120c]
000009E0  88870300          mov [bx+0x3],al
000009E4  D0E0              shl al,1
000009E6  D0E0              shl al,1
000009E8  02060903          add al,[0x309]
000009EC  88870100          mov [bx+0x1],al
000009F0  C687060001        mov byte [bx+0x6],0x1
000009F5  E8BE0F            call 0x19b6
000009F8  E82507            call 0x1120
000009FB  FE0E0A03          dec byte [0x30a]
000009FF  803E0A030A        cmp byte [0x30a],0xa
00000A04  721B              jc 0xa21
00000A06  751E              jnz 0xa26
00000A08  B0C0              mov al,0xc0
00000A0A  2A060803          sub al,[0x308]
00000A0E  0420              add al,0x20
00000A10  A24903            mov [0x349],al
00000A13  B0A0              mov al,0xa0
00000A15  2A060903          sub al,[0x309]
00000A19  0420              add al,0x20
00000A1B  A24A03            mov [0x34a],al
00000A1E  E8520F            call 0x1973
00000A21  C6062503FE        mov byte [0x325],0xfe
00000A26  5E                pop si
00000A27  5B                pop bx
00000A28  58                pop ax
00000A29  C3                ret
00000A2A  0000              add [bx+si],al
00000A2C  0000              add [bx+si],al
00000A2E  0000              add [bx+si],al
00000A30  0000              add [bx+si],al
00000A32  0000              add [bx+si],al
00000A34  0000              add [bx+si],al
00000A36  0000              add [bx+si],al
00000A38  0000              add [bx+si],al
00000A3A  0000              add [bx+si],al
00000A3C  0000              add [bx+si],al
00000A3E  0000              add [bx+si],al
00000A40  0000              add [bx+si],al
00000A42  0000              add [bx+si],al
00000A44  0000              add [bx+si],al
00000A46  0000              add [bx+si],al
00000A48  0000              add [bx+si],al
00000A4A  0000              add [bx+si],al
00000A4C  0000              add [bx+si],al
00000A4E  0000              add [bx+si],al
00000A50  0000              add [bx+si],al
00000A52  0000              add [bx+si],al
00000A54  0000              add [bx+si],al
00000A56  0000              add [bx+si],al
00000A58  0000              add [bx+si],al
00000A5A  0000              add [bx+si],al
00000A5C  0000              add [bx+si],al
00000A5E  0000              add [bx+si],al
00000A60  0000              add [bx+si],al
00000A62  0000              add [bx+si],al
00000A64  0000              add [bx+si],al
00000A66  0000              add [bx+si],al
00000A68  0000              add [bx+si],al
00000A6A  0000              add [bx+si],al
00000A6C  0000              add [bx+si],al
00000A6E  0000              add [bx+si],al
00000A70  0000              add [bx+si],al
00000A72  0000              add [bx+si],al
00000A74  0000              add [bx+si],al
00000A76  0000              add [bx+si],al
00000A78  0000              add [bx+si],al
00000A7A  0000              add [bx+si],al
00000A7C  0000              add [bx+si],al
00000A7E  0000              add [bx+si],al
00000A80  0000              add [bx+si],al
00000A82  0000              add [bx+si],al
00000A84  0000              add [bx+si],al
00000A86  0000              add [bx+si],al
00000A88  0000              add [bx+si],al
00000A8A  0000              add [bx+si],al
00000A8C  0000              add [bx+si],al
00000A8E  0000              add [bx+si],al
00000A90  0000              add [bx+si],al
00000A92  0000              add [bx+si],al
00000A94  0000              add [bx+si],al
00000A96  0000              add [bx+si],al
00000A98  0000              add [bx+si],al
00000A9A  0000              add [bx+si],al
00000A9C  0000              add [bx+si],al
00000A9E  0000              add [bx+si],al
00000AA0  0000              add [bx+si],al
00000AA2  0000              add [bx+si],al
00000AA4  0000              add [bx+si],al
00000AA6  0000              add [bx+si],al
00000AA8  0000              add [bx+si],al
00000AAA  0000              add [bx+si],al
00000AAC  0000              add [bx+si],al
00000AAE  0000              add [bx+si],al
00000AB0  0000              add [bx+si],al
00000AB2  0000              add [bx+si],al
00000AB4  0000              add [bx+si],al
00000AB6  0000              add [bx+si],al
00000AB8  0000              add [bx+si],al
00000ABA  0000              add [bx+si],al
00000ABC  0000              add [bx+si],al
00000ABE  0000              add [bx+si],al
00000AC0  0000              add [bx+si],al
00000AC2  0000              add [bx+si],al
00000AC4  0000              add [bx+si],al
00000AC6  0000              add [bx+si],al
00000AC8  0000              add [bx+si],al
00000ACA  0000              add [bx+si],al
00000ACC  0000              add [bx+si],al
00000ACE  0000              add [bx+si],al
00000AD0  0000              add [bx+si],al
00000AD2  0000              add [bx+si],al
00000AD4  0000              add [bx+si],al
00000AD6  0000              add [bx+si],al
00000AD8  0000              add [bx+si],al
00000ADA  0000              add [bx+si],al
00000ADC  0000              add [bx+si],al
00000ADE  0000              add [bx+si],al
00000AE0  0000              add [bx+si],al
00000AE2  0000              add [bx+si],al
00000AE4  0000              add [bx+si],al
00000AE6  0000              add [bx+si],al
00000AE8  0000              add [bx+si],al
00000AEA  0000              add [bx+si],al
00000AEC  0000              add [bx+si],al
00000AEE  0000              add [bx+si],al
00000AF0  0000              add [bx+si],al
00000AF2  0000              add [bx+si],al
00000AF4  0000              add [bx+si],al
00000AF6  0000              add [bx+si],al
00000AF8  0000              add [bx+si],al
00000AFA  0000              add [bx+si],al
00000AFC  0000              add [bx+si],al
00000AFE  0000              add [bx+si],al
00000B00  0000              add [bx+si],al
00000B02  0000              add [bx+si],al
00000B04  0000              add [bx+si],al
00000B06  0000              add [bx+si],al
00000B08  0000              add [bx+si],al
00000B0A  0000              add [bx+si],al
00000B0C  0000              add [bx+si],al
00000B0E  0000              add [bx+si],al
00000B10  0000              add [bx+si],al
00000B12  0000              add [bx+si],al
00000B14  0000              add [bx+si],al
00000B16  0000              add [bx+si],al
00000B18  0000              add [bx+si],al
00000B1A  0000              add [bx+si],al
00000B1C  0000              add [bx+si],al
00000B1E  0000              add [bx+si],al
00000B20  56                push si
00000B21  06                push es
00000B22  803E4703FF        cmp byte [0x347],0xff
00000B27  7435              jz 0xb5e
00000B29  E81801            call 0xc44
00000B2C  80FCFF            cmp ah,0xff
00000B2F  7520              jnz 0xb51
00000B31  A20F03            mov [0x30f],al
00000B34  3C13              cmp al,0x13
00000B36  7508              jnz 0xb40
00000B38  80365603FF        xor byte [0x356],0xff
00000B3D  E85501            call 0xc95
00000B40  B84000            mov ax,0x40
00000B43  8EC0              mov es,ax
00000B45  26A06C00          mov al,[es:0x6c]
00000B49  A23003            mov [0x330],al
00000B4C  FEC0              inc al
00000B4E  A23103            mov [0x331],al
00000B51  803E57034A        cmp byte [0x357],0x4a
00000B56  7534              jnz 0xb8c
00000B58  E88900            call 0xbe4
00000B5B  EB2F              jmp short 0xb8c
00000B5D  90                nop
00000B5E  FE0E4B03          dec byte [0x34b]
00000B62  7528              jnz 0xb8c
00000B64  C6064B0308        mov byte [0x34b],0x8
00000B69  E8B401            call 0xd20
00000B6C  BE0000            mov si,0x0
00000B6F  3A849413          cmp al,[si+0x1394]
00000B73  7210              jc 0xb85
00000B75  83C602            add si,byte +0x2
00000B78  83FE10            cmp si,byte +0x10
00000B7B  75F2              jnz 0xb6f
00000B7D  C6060F0320        mov byte [0x30f],0x20
00000B82  EB08              jmp short 0xb8c
00000B84  90                nop
00000B85  8A849513          mov al,[si+0x1395]
00000B89  A20F03            mov [0x30f],al
00000B8C  803E0F034B        cmp byte [0x30f],0x4b
00000B91  7506              jnz 0xb99
00000B93  BE0000            mov si,0x0
00000B96  EB3C              jmp short 0xbd4
00000B98  90                nop
00000B99  803E0F034A        cmp byte [0x30f],0x4a
00000B9E  7506              jnz 0xba6
00000BA0  BE0200            mov si,0x2
00000BA3  EB2F              jmp short 0xbd4
00000BA5  90                nop
00000BA6  803E0F0349        cmp byte [0x30f],0x49
00000BAB  7506              jnz 0xbb3
00000BAD  BE0400            mov si,0x4
00000BB0  EB22              jmp short 0xbd4
00000BB2  90                nop
00000BB3  803E0F034C        cmp byte [0x30f],0x4c
00000BB8  7506              jnz 0xbc0
00000BBA  BE0600            mov si,0x6
00000BBD  EB15              jmp short 0xbd4
00000BBF  90                nop
00000BC0  803E0F0320        cmp byte [0x30f],0x20
00000BC5  7506              jnz 0xbcd
00000BC7  BE0800            mov si,0x8
00000BCA  EB08              jmp short 0xbd4
00000BCC  90                nop
00000BCD  B400              mov ah,0x0
00000BCF  A01003            mov al,[0x310]
00000BD2  8BF0              mov si,ax
00000BD4  8BC6              mov ax,si
00000BD6  A21003            mov [0x310],al
00000BD9  8A848013          mov al,[si+0x1380]
00000BDD  8A9C8113          mov bl,[si+0x1381]
00000BE1  07                pop es
00000BE2  5E                pop si
00000BE3  C3                ret
00000BE4  BE0200            mov si,0x2
00000BE7  803E580321        cmp byte [0x358],0x21
00000BEC  7221              jc 0xc0f
00000BEE  BE0600            mov si,0x6
00000BF1  803E5803E0        cmp byte [0x358],0xe0
00000BF6  7317              jnc 0xc0f
00000BF8  BE0400            mov si,0x4
00000BFB  803E590321        cmp byte [0x359],0x21
00000C00  720D              jc 0xc0f
00000C02  BE0000            mov si,0x0
00000C05  803E5903E0        cmp byte [0x359],0xe0
00000C0A  7303              jnc 0xc0f
00000C0C  BE0800            mov si,0x8
00000C0F  803E5A03FF        cmp byte [0x35a],0xff
00000C14  7506              jnz 0xc1c
00000C16  46                inc si
00000C17  C6065A0300        mov byte [0x35a],0x0
00000C1C  8A848A13          mov al,[si+0x138a]
00000C20  A20F03            mov [0x30f],al
00000C23  C3                ret
00000C24  A00F03            mov al,[0x30f]
00000C27  B400              mov ah,0x0
00000C29  3C53              cmp al,0x53
00000C2B  7414              jz 0xc41
00000C2D  FEC4              inc ah
00000C2F  3C45              cmp al,0x45
00000C31  740E              jz 0xc41
00000C33  FEC4              inc ah
00000C35  3C46              cmp al,0x46
00000C37  7408              jz 0xc41
00000C39  FEC4              inc ah
00000C3B  3C44              cmp al,0x44
00000C3D  7402              jz 0xc41
00000C3F  B4FF              mov ah,0xff
00000C41  8AC4              mov al,ah
00000C43  C3                ret
00000C44  53                push bx
00000C45  E81C00            call 0xc64
00000C48  80FCFF            cmp ah,0xff
00000C4B  7515              jnz 0xc62
00000C4D  3C1B              cmp al,0x1b
00000C4F  7511              jnz 0xc62
00000C51  E84100            call 0xc95
00000C54  E80D00            call 0xc64
00000C57  80FCFF            cmp ah,0xff
00000C5A  75F8              jnz 0xc54
00000C5C  3C1B              cmp al,0x1b
00000C5E  75F4              jnz 0xc54
00000C60  EBE3              jmp short 0xc45
00000C62  5B                pop bx
00000C63  C3                ret
00000C64  803E6703FF        cmp byte [0x367],0xff
00000C69  740F              jz 0xc7a
00000C6B  B401              mov ah,0x1
00000C6D  CD16              int 0x16
00000C6F  B400              mov ah,0x0
00000C71  7417              jz 0xc8a
00000C73  CD16              int 0x16
00000C75  B4FF              mov ah,0xff
00000C77  EB11              jmp short 0xc8a
00000C79  90                nop
00000C7A  B40B              mov ah,0xb
00000C7C  CD21              int 0x21
00000C7E  8AD8              mov bl,al
00000C80  3CFF              cmp al,0xff
00000C82  7504              jnz 0xc88
00000C84  B407              mov ah,0x7
00000C86  CD21              int 0x21
00000C88  8AE3              mov ah,bl
00000C8A  3C61              cmp al,0x61
00000C8C  7206              jc 0xc94
00000C8E  3C7A              cmp al,0x7a
00000C90  7702              ja 0xc94
00000C92  24DF              and al,0xdf
00000C94  C3                ret
00000C95  803E290300        cmp byte [0x329],0x0
00000C9A  740A              jz 0xca6
00000C9C  A02A03            mov al,[0x32a]
00000C9F  E661              out 0x61,al
00000CA1  C606290300        mov byte [0x329],0x0
00000CA6  BB0500            mov bx,0x5
00000CA9  C6872303FF        mov byte [bx+0x323],0xff
00000CAE  4B                dec bx
00000CAF  79F8              jns 0xca9
00000CB1  C3                ret
00000CB2  0000              add [bx+si],al
00000CB4  0000              add [bx+si],al
00000CB6  0000              add [bx+si],al
00000CB8  0000              add [bx+si],al
00000CBA  0000              add [bx+si],al
00000CBC  0000              add [bx+si],al
00000CBE  0000              add [bx+si],al
00000CC0  0000              add [bx+si],al
00000CC2  0000              add [bx+si],al
00000CC4  0000              add [bx+si],al
00000CC6  0000              add [bx+si],al
00000CC8  0000              add [bx+si],al
00000CCA  0000              add [bx+si],al
00000CCC  0000              add [bx+si],al
00000CCE  0000              add [bx+si],al
00000CD0  0000              add [bx+si],al
00000CD2  0000              add [bx+si],al
00000CD4  0000              add [bx+si],al
00000CD6  0000              add [bx+si],al
00000CD8  0000              add [bx+si],al
00000CDA  0000              add [bx+si],al
00000CDC  0000              add [bx+si],al
00000CDE  0000              add [bx+si],al
00000CE0  0000              add [bx+si],al
00000CE2  0000              add [bx+si],al
00000CE4  0000              add [bx+si],al
00000CE6  0000              add [bx+si],al
00000CE8  0000              add [bx+si],al
00000CEA  0000              add [bx+si],al
00000CEC  0000              add [bx+si],al
00000CEE  0000              add [bx+si],al
00000CF0  0000              add [bx+si],al
00000CF2  0000              add [bx+si],al
00000CF4  0000              add [bx+si],al
00000CF6  0000              add [bx+si],al
00000CF8  0000              add [bx+si],al
00000CFA  0000              add [bx+si],al
00000CFC  0000              add [bx+si],al
00000CFE  0000              add [bx+si],al
00000D00  0000              add [bx+si],al
00000D02  0000              add [bx+si],al
00000D04  0000              add [bx+si],al
00000D06  0000              add [bx+si],al
00000D08  0000              add [bx+si],al
00000D0A  0000              add [bx+si],al
00000D0C  0000              add [bx+si],al
00000D0E  0000              add [bx+si],al
00000D10  0000              add [bx+si],al
00000D12  0000              add [bx+si],al
00000D14  0000              add [bx+si],al
00000D16  0000              add [bx+si],al
00000D18  0000              add [bx+si],al
00000D1A  0000              add [bx+si],al
00000D1C  0000              add [bx+si],al
00000D1E  0000              add [bx+si],al
00000D20  50                push ax
00000D21  53                push bx
00000D22  F9                stc
00000D23  A03103            mov al,[0x331]
00000D26  12063403          adc al,[0x334]
00000D2A  12063503          adc al,[0x335]
00000D2E  A23003            mov [0x330],al
00000D31  BB0400            mov bx,0x4
00000D34  8A873003          mov al,[bx+0x330]
00000D38  88873103          mov [bx+0x331],al
00000D3C  4B                dec bx
00000D3D  79F5              jns 0xd34
00000D3F  5B                pop bx
00000D40  58                pop ax
00000D41  A03003            mov al,[0x330]
00000D44  C3                ret
00000D45  0000              add [bx+si],al
00000D47  0000              add [bx+si],al
00000D49  0000              add [bx+si],al
00000D4B  0000              add [bx+si],al
00000D4D  0000              add [bx+si],al
00000D4F  0000              add [bx+si],al
00000D51  0000              add [bx+si],al
00000D53  0000              add [bx+si],al
00000D55  0000              add [bx+si],al
00000D57  0000              add [bx+si],al
00000D59  0000              add [bx+si],al
00000D5B  0000              add [bx+si],al
00000D5D  0000              add [bx+si],al
00000D5F  0000              add [bx+si],al
00000D61  0000              add [bx+si],al
00000D63  0000              add [bx+si],al
00000D65  0000              add [bx+si],al
00000D67  0000              add [bx+si],al
00000D69  0000              add [bx+si],al
00000D6B  0000              add [bx+si],al
00000D6D  0000              add [bx+si],al
00000D6F  0000              add [bx+si],al
00000D71  0000              add [bx+si],al
00000D73  0000              add [bx+si],al
00000D75  0000              add [bx+si],al
00000D77  0000              add [bx+si],al
00000D79  0000              add [bx+si],al
00000D7B  0000              add [bx+si],al
00000D7D  0000              add [bx+si],al
00000D7F  0000              add [bx+si],al
00000D81  0000              add [bx+si],al
00000D83  0000              add [bx+si],al
00000D85  0000              add [bx+si],al
00000D87  0000              add [bx+si],al
00000D89  0000              add [bx+si],al
00000D8B  0000              add [bx+si],al
00000D8D  0000              add [bx+si],al
00000D8F  0000              add [bx+si],al
00000D91  0000              add [bx+si],al
00000D93  0000              add [bx+si],al
00000D95  0000              add [bx+si],al
00000D97  0000              add [bx+si],al
00000D99  0000              add [bx+si],al
00000D9B  0000              add [bx+si],al
00000D9D  0000              add [bx+si],al
00000D9F  0000              add [bx+si],al
00000DA1  0000              add [bx+si],al
00000DA3  0000              add [bx+si],al
00000DA5  0000              add [bx+si],al
00000DA7  0000              add [bx+si],al
00000DA9  0000              add [bx+si],al
00000DAB  0000              add [bx+si],al
00000DAD  0000              add [bx+si],al
00000DAF  0000              add [bx+si],al
00000DB1  0000              add [bx+si],al
00000DB3  0000              add [bx+si],al
00000DB5  0000              add [bx+si],al
00000DB7  0000              add [bx+si],al
00000DB9  0000              add [bx+si],al
00000DBB  0000              add [bx+si],al
00000DBD  0000              add [bx+si],al
00000DBF  0000              add [bx+si],al
00000DC1  0000              add [bx+si],al
00000DC3  0000              add [bx+si],al
00000DC5  0000              add [bx+si],al
00000DC7  0000              add [bx+si],al
00000DC9  0000              add [bx+si],al
00000DCB  0000              add [bx+si],al
00000DCD  0000              add [bx+si],al
00000DCF  0000              add [bx+si],al
00000DD1  0000              add [bx+si],al
00000DD3  0000              add [bx+si],al
00000DD5  0000              add [bx+si],al
00000DD7  0000              add [bx+si],al
00000DD9  0000              add [bx+si],al
00000DDB  0000              add [bx+si],al
00000DDD  0000              add [bx+si],al
00000DDF  0000              add [bx+si],al
00000DE1  0000              add [bx+si],al
00000DE3  0000              add [bx+si],al
00000DE5  0000              add [bx+si],al
00000DE7  0000              add [bx+si],al
00000DE9  0000              add [bx+si],al
00000DEB  0000              add [bx+si],al
00000DED  0000              add [bx+si],al
00000DEF  0000              add [bx+si],al
00000DF1  0000              add [bx+si],al
00000DF3  0000              add [bx+si],al
00000DF5  0000              add [bx+si],al
00000DF7  0000              add [bx+si],al
00000DF9  0000              add [bx+si],al
00000DFB  0000              add [bx+si],al
00000DFD  0000              add [bx+si],al
00000DFF  0000              add [bx+si],al
00000E01  0000              add [bx+si],al
00000E03  0000              add [bx+si],al
00000E05  0000              add [bx+si],al
00000E07  0000              add [bx+si],al
00000E09  0000              add [bx+si],al
00000E0B  0000              add [bx+si],al
00000E0D  0000              add [bx+si],al
00000E0F  0000              add [bx+si],al
00000E11  0000              add [bx+si],al
00000E13  0000              add [bx+si],al
00000E15  0000              add [bx+si],al
00000E17  0000              add [bx+si],al
00000E19  0000              add [bx+si],al
00000E1B  0000              add [bx+si],al
00000E1D  0000              add [bx+si],al
00000E1F  00FF              add bh,bh
00000E21  50                push ax
00000E22  53                push bx
00000E23  B400              mov ah,0x0
00000E25  B004              mov al,0x4
00000E27  CD10              int 0x10
00000E29  B40B              mov ah,0xb
00000E2B  B700              mov bh,0x0
00000E2D  B300              mov bl,0x0
00000E2F  CD10              int 0x10
00000E31  B40B              mov ah,0xb
00000E33  B701              mov bh,0x1
00000E35  B301              mov bl,0x1
00000E37  CD10              int 0x10
00000E39  2EC606000DFF      mov byte [cs:0xd00],0xff
00000E3F  5B                pop bx
00000E40  58                pop ax
00000E41  C3                ret
00000E42  50                push ax
00000E43  53                push bx
00000E44  51                push cx
00000E45  52                push dx
00000E46  57                push di
00000E47  56                push si
00000E48  06                push es
00000E49  93                xchg ax,bx
00000E4A  A801              test al,0x1
00000E4C  BA00B8            mov dx,0xb800
00000E4F  8EC2              mov es,dx
00000E51  7405              jz 0xe58
00000E53  BA00BA            mov dx,0xba00
00000E56  8EC2              mov es,dx
00000E58  8BF1              mov si,cx
00000E5A  8ACB              mov cl,bl
00000E5C  D1E8              shr ax,1
00000E5E  D1E0              shl ax,1
00000E60  D1E0              shl ax,1
00000E62  D1E0              shl ax,1
00000E64  D1E0              shl ax,1
00000E66  8BD0              mov dx,ax
00000E68  D1E2              shl dx,1
00000E6A  D1E2              shl dx,1
00000E6C  03C2              add ax,dx
00000E6E  D1EB              shr bx,1
00000E70  D1EB              shr bx,1
00000E72  03D8              add bx,ax
00000E74  80E103            and cl,0x3
00000E77  D0E1              shl cl,1
00000E79  B008              mov al,0x8
00000E7B  2AC1              sub al,cl
00000E7D  8AC8              mov cl,al
00000E7F  8A2C              mov ch,[si]
00000E81  8A5401            mov dl,[si+0x1]
00000E84  46                inc si
00000E85  46                inc si
00000E86  8BFB              mov di,bx
00000E88  8AF5              mov dh,ch
00000E8A  8A04              mov al,[si]
00000E8C  B400              mov ah,0x0
00000E8E  D3E0              shl ax,cl
00000E90  263025            xor [es:di],ah
00000E93  26304501          xor [es:di+0x1],al
00000E97  46                inc si
00000E98  47                inc di
00000E99  FECE              dec dh
00000E9B  75ED              jnz 0xe8a
00000E9D  FECA              dec dl
00000E9F  7411              jz 0xeb2
00000EA1  8CC0              mov ax,es
00000EA3  80F402            xor ah,0x2
00000EA6  8EC0              mov es,ax
00000EA8  80FCB8            cmp ah,0xb8
00000EAB  75D9              jnz 0xe86
00000EAD  83C350            add bx,byte +0x50
00000EB0  EBD4              jmp short 0xe86
00000EB2  07                pop es
00000EB3  5E                pop si
00000EB4  5F                pop di
00000EB5  5A                pop dx
00000EB6  59                pop cx
00000EB7  5B                pop bx
00000EB8  58                pop ax
00000EB9  C3                ret
00000EBA  C0                db 0xC0
00000EBB  F0FC              lock cld
00000EBD  50                push ax
00000EBE  53                push bx
00000EBF  51                push cx
00000EC0  52                push dx
00000EC1  57                push di
00000EC2  06                push es
00000EC3  93                xchg ax,bx
00000EC4  A801              test al,0x1
00000EC6  B900B8            mov cx,0xb800
00000EC9  8EC1              mov es,cx
00000ECB  7405              jz 0xed2
00000ECD  B900BA            mov cx,0xba00
00000ED0  8EC1              mov es,cx
00000ED2  8ACB              mov cl,bl
00000ED4  D1E8              shr ax,1
00000ED6  B550              mov ch,0x50
00000ED8  F6E5              mul ch
00000EDA  4B                dec bx
00000EDB  D1EB              shr bx,1
00000EDD  D1EB              shr bx,1
00000EDF  03D8              add bx,ax
00000EE1  80E103            and cl,0x3
00000EE4  D0E1              shl cl,1
00000EE6  B008              mov al,0x8
00000EE8  2AC1              sub al,cl
00000EEA  8AC8              mov cl,al
00000EEC  8BFB              mov di,bx
00000EEE  8AEE              mov ch,dh
00000EF0  80ED04            sub ch,0x4
00000EF3  B0FF              mov al,0xff
00000EF5  7310              jnc 0xf07
00000EF7  80C504            add ch,0x4
00000EFA  8AC5              mov al,ch
00000EFC  B400              mov ah,0x0
00000EFE  8BF8              mov di,ax
00000F00  2E8A85990D        mov al,[cs:di+0xd99]
00000F05  B500              mov ch,0x0
00000F07  B400              mov ah,0x0
00000F09  D3E0              shl ax,cl
00000F0B  260825            or [es:di],ah
00000F0E  263025            xor [es:di],ah
00000F11  26084501          or [es:di+0x1],al
00000F15  26304501          xor [es:di+0x1],al
00000F19  47                inc di
00000F1A  0AED              or ch,ch
00000F1C  75D2              jnz 0xef0
00000F1E  FECA              dec dl
00000F20  7411              jz 0xf33
00000F22  8CC0              mov ax,es
00000F24  80F402            xor ah,0x2
00000F27  8EC0              mov es,ax
00000F29  80FCB8            cmp ah,0xb8
00000F2C  75BE              jnz 0xeec
00000F2E  83C350            add bx,byte +0x50
00000F31  EBB9              jmp short 0xeec
00000F33  07                pop es
00000F34  5F                pop di
00000F35  5A                pop dx
00000F36  59                pop cx
00000F37  5B                pop bx
00000F38  58                pop ax
00000F39  C3                ret
00000F3A  803E6803FF        cmp byte [0x368],0xff
00000F3F  7401              jz 0xf42
00000F41  C3                ret
00000F42  53                push bx
00000F43  51                push cx
00000F44  BBA000            mov bx,0xa0
00000F47  B9B000            mov cx,0xb0
00000F4A  2E803E000DFF      cmp byte [cs:0xd00],0xff
00000F50  7409              jz 0xf5b
00000F52  50                push ax
00000F53  2EA0000D          mov al,[cs:0xd00]
00000F57  E8B60E            call 0x1e10
00000F5A  58                pop ax
00000F5B  E8B20E            call 0x1e10
00000F5E  2EA2000D          mov [cs:0xd00],al
00000F62  59                pop cx
00000F63  5B                pop bx
00000F64  C3                ret
00000F65  0000              add [bx+si],al
00000F67  0000              add [bx+si],al
00000F69  0000              add [bx+si],al
00000F6B  0000              add [bx+si],al
00000F6D  0000              add [bx+si],al
00000F6F  0000              add [bx+si],al
00000F71  0000              add [bx+si],al
00000F73  0000              add [bx+si],al
00000F75  0000              add [bx+si],al
00000F77  0000              add [bx+si],al
00000F79  0000              add [bx+si],al
00000F7B  0000              add [bx+si],al
00000F7D  0000              add [bx+si],al
00000F7F  0000              add [bx+si],al
00000F81  0000              add [bx+si],al
00000F83  0000              add [bx+si],al
00000F85  0000              add [bx+si],al
00000F87  0000              add [bx+si],al
00000F89  0000              add [bx+si],al
00000F8B  0000              add [bx+si],al
00000F8D  0000              add [bx+si],al
00000F8F  0000              add [bx+si],al
00000F91  0000              add [bx+si],al
00000F93  0000              add [bx+si],al
00000F95  0000              add [bx+si],al
00000F97  0000              add [bx+si],al
00000F99  0000              add [bx+si],al
00000F9B  0000              add [bx+si],al
00000F9D  0000              add [bx+si],al
00000F9F  0000              add [bx+si],al
00000FA1  0000              add [bx+si],al
00000FA3  0000              add [bx+si],al
00000FA5  0000              add [bx+si],al
00000FA7  0000              add [bx+si],al
00000FA9  0000              add [bx+si],al
00000FAB  0000              add [bx+si],al
00000FAD  0000              add [bx+si],al
00000FAF  0000              add [bx+si],al
00000FB1  0000              add [bx+si],al
00000FB3  0000              add [bx+si],al
00000FB5  0000              add [bx+si],al
00000FB7  0000              add [bx+si],al
00000FB9  0000              add [bx+si],al
00000FBB  0000              add [bx+si],al
00000FBD  0000              add [bx+si],al
00000FBF  0000              add [bx+si],al
00000FC1  0000              add [bx+si],al
00000FC3  0000              add [bx+si],al
00000FC5  0000              add [bx+si],al
00000FC7  0000              add [bx+si],al
00000FC9  0000              add [bx+si],al
00000FCB  0000              add [bx+si],al
00000FCD  0000              add [bx+si],al
00000FCF  0000              add [bx+si],al
00000FD1  0000              add [bx+si],al
00000FD3  0000              add [bx+si],al
00000FD5  0000              add [bx+si],al
00000FD7  0000              add [bx+si],al
00000FD9  0000              add [bx+si],al
00000FDB  0000              add [bx+si],al
00000FDD  0000              add [bx+si],al
00000FDF  0000              add [bx+si],al
00000FE1  0000              add [bx+si],al
00000FE3  0000              add [bx+si],al
00000FE5  0000              add [bx+si],al
00000FE7  0000              add [bx+si],al
00000FE9  0000              add [bx+si],al
00000FEB  0000              add [bx+si],al
00000FED  0000              add [bx+si],al
00000FEF  0000              add [bx+si],al
00000FF1  0000              add [bx+si],al
00000FF3  0000              add [bx+si],al
00000FF5  0000              add [bx+si],al
00000FF7  0000              add [bx+si],al
00000FF9  0000              add [bx+si],al
00000FFB  0000              add [bx+si],al
00000FFD  0000              add [bx+si],al
00000FFF  0000              add [bx+si],al
00001001  0000              add [bx+si],al
00001003  0000              add [bx+si],al
00001005  0000              add [bx+si],al
00001007  0000              add [bx+si],al
00001009  0000              add [bx+si],al
0000100B  0000              add [bx+si],al
0000100D  0000              add [bx+si],al
0000100F  0000              add [bx+si],al
00001011  0000              add [bx+si],al
00001013  0000              add [bx+si],al
00001015  0000              add [bx+si],al
00001017  0000              add [bx+si],al
00001019  0000              add [bx+si],al
0000101B  0000              add [bx+si],al
0000101D  0000              add [bx+si],al
0000101F  00803E07          add [bx+si+0x73e],al
00001023  03FF              add di,di
00001025  7428              jz 0x104f
00001027  8B1E0203          mov bx,[0x302]
0000102B  83FB00            cmp bx,byte +0x0
0000102E  741F              jz 0x104f
00001030  83BF040000        cmp word [bx+0x4],byte +0x0
00001035  7504              jnz 0x103b
00001037  3C01              cmp al,0x1
00001039  7414              jz 0x104f
0000103B  88870700          mov [bx+0x7],al
0000103F  8B870400          mov ax,[bx+0x4]
00001043  A30203            mov [0x302],ax
00001046  891E1503          mov [0x315],bx
0000104A  B400              mov ah,0x0
0000104C  EB03              jmp short 0x1051
0000104E  90                nop
0000104F  B4FF              mov ah,0xff
00001051  C3                ret
00001052  0000              add [bx+si],al
00001054  0000              add [bx+si],al
00001056  0000              add [bx+si],al
00001058  0000              add [bx+si],al
0000105A  0000              add [bx+si],al
0000105C  0000              add [bx+si],al
0000105E  0000              add [bx+si],al
00001060  0000              add [bx+si],al
00001062  0000              add [bx+si],al
00001064  0000              add [bx+si],al
00001066  0000              add [bx+si],al
00001068  0000              add [bx+si],al
0000106A  0000              add [bx+si],al
0000106C  0000              add [bx+si],al
0000106E  0000              add [bx+si],al
00001070  0000              add [bx+si],al
00001072  0000              add [bx+si],al
00001074  0000              add [bx+si],al
00001076  0000              add [bx+si],al
00001078  0000              add [bx+si],al
0000107A  0000              add [bx+si],al
0000107C  0000              add [bx+si],al
0000107E  0000              add [bx+si],al
00001080  0000              add [bx+si],al
00001082  0000              add [bx+si],al
00001084  0000              add [bx+si],al
00001086  0000              add [bx+si],al
00001088  0000              add [bx+si],al
0000108A  0000              add [bx+si],al
0000108C  0000              add [bx+si],al
0000108E  0000              add [bx+si],al
00001090  0000              add [bx+si],al
00001092  0000              add [bx+si],al
00001094  0000              add [bx+si],al
00001096  0000              add [bx+si],al
00001098  0000              add [bx+si],al
0000109A  0000              add [bx+si],al
0000109C  0000              add [bx+si],al
0000109E  0000              add [bx+si],al
000010A0  0000              add [bx+si],al
000010A2  0000              add [bx+si],al
000010A4  0000              add [bx+si],al
000010A6  0000              add [bx+si],al
000010A8  0000              add [bx+si],al
000010AA  0000              add [bx+si],al
000010AC  0000              add [bx+si],al
000010AE  0000              add [bx+si],al
000010B0  0000              add [bx+si],al
000010B2  0000              add [bx+si],al
000010B4  0000              add [bx+si],al
000010B6  0000              add [bx+si],al
000010B8  0000              add [bx+si],al
000010BA  0000              add [bx+si],al
000010BC  0000              add [bx+si],al
000010BE  0000              add [bx+si],al
000010C0  0000              add [bx+si],al
000010C2  0000              add [bx+si],al
000010C4  0000              add [bx+si],al
000010C6  0000              add [bx+si],al
000010C8  0000              add [bx+si],al
000010CA  0000              add [bx+si],al
000010CC  0000              add [bx+si],al
000010CE  0000              add [bx+si],al
000010D0  0000              add [bx+si],al
000010D2  0000              add [bx+si],al
000010D4  0000              add [bx+si],al
000010D6  0000              add [bx+si],al
000010D8  0000              add [bx+si],al
000010DA  0000              add [bx+si],al
000010DC  0000              add [bx+si],al
000010DE  0000              add [bx+si],al
000010E0  0000              add [bx+si],al
000010E2  0000              add [bx+si],al
000010E4  0000              add [bx+si],al
000010E6  0000              add [bx+si],al
000010E8  0000              add [bx+si],al
000010EA  0000              add [bx+si],al
000010EC  0000              add [bx+si],al
000010EE  0000              add [bx+si],al
000010F0  0000              add [bx+si],al
000010F2  0000              add [bx+si],al
000010F4  0000              add [bx+si],al
000010F6  0000              add [bx+si],al
000010F8  0000              add [bx+si],al
000010FA  0000              add [bx+si],al
000010FC  0000              add [bx+si],al
000010FE  0000              add [bx+si],al
00001100  0000              add [bx+si],al
00001102  0000              add [bx+si],al
00001104  0000              add [bx+si],al
00001106  0000              add [bx+si],al
00001108  0000              add [bx+si],al
0000110A  0000              add [bx+si],al
0000110C  0000              add [bx+si],al
0000110E  0000              add [bx+si],al
00001110  0000              add [bx+si],al
00001112  0000              add [bx+si],al
00001114  0000              add [bx+si],al
00001116  0000              add [bx+si],al
00001118  0000              add [bx+si],al
0000111A  0000              add [bx+si],al
0000111C  0000              add [bx+si],al
0000111E  0000              add [bx+si],al
00001120  50                push ax
00001121  53                push bx
00001122  56                push si
00001123  FE0E4F03          dec byte [0x34f]
00001127  7567              jnz 0x1190
00001129  A05403            mov al,[0x354]
0000112C  3C00              cmp al,0x0
0000112E  7460              jz 0x1190
00001130  3A060503          cmp al,[0x305]
00001134  775A              ja 0x1190
00001136  8B361703          mov si,[0x317]
0000113A  80BC040000        cmp byte [si+0x4],0x0
0000113F  740C              jz 0x114d
00001141  80BC040005        cmp byte [si+0x4],0x5
00001146  7543              jnz 0x118b
00001148  E84900            call 0x1194
0000114B  EBED              jmp short 0x113a
0000114D  E8D007            call 0x1920
00001150  8A840100          mov al,[si+0x1]
00001154  3A840300          cmp al,[si+0x3]
00001158  751E              jnz 0x1178
0000115A  B700              mov bh,0x0
0000115C  8A9C0200          mov bl,[si+0x2]
00001160  8A878016          mov al,[bx+0x1680]
00001164  88840100          mov [si+0x1],al
00001168  C6064F0306        mov byte [0x34f],0x6
0000116D  E8B007            call 0x1920
00001170  C6062303FE        mov byte [0x323],0xfe
00001175  EB19              jmp short 0x1190
00001177  90                nop
00001178  8A840300          mov al,[si+0x3]
0000117C  88840100          mov [si+0x1],al
00001180  E89D07            call 0x1920
00001183  C6062303FE        mov byte [0x323],0xfe
00001188  E80900            call 0x1194
0000118B  C6064F030C        mov byte [0x34f],0xc
00001190  5E                pop si
00001191  5B                pop bx
00001192  58                pop ax
00001193  C3                ret
00001194  80BC020003        cmp byte [si+0x2],0x3
00001199  7406              jz 0x11a1
0000119B  83C608            add si,byte +0x8
0000119E  EB05              jmp short 0x11a5
000011A0  90                nop
000011A1  8D360002          lea si,[0x200]
000011A5  89361703          mov [0x317],si
000011A9  C3                ret
000011AA  0000              add [bx+si],al
000011AC  0000              add [bx+si],al
000011AE  0000              add [bx+si],al
000011B0  0000              add [bx+si],al
000011B2  0000              add [bx+si],al
000011B4  0000              add [bx+si],al
000011B6  0000              add [bx+si],al
000011B8  0000              add [bx+si],al
000011BA  0000              add [bx+si],al
000011BC  0000              add [bx+si],al
000011BE  0000              add [bx+si],al
000011C0  0000              add [bx+si],al
000011C2  0000              add [bx+si],al
000011C4  0000              add [bx+si],al
000011C6  0000              add [bx+si],al
000011C8  0000              add [bx+si],al
000011CA  0000              add [bx+si],al
000011CC  0000              add [bx+si],al
000011CE  0000              add [bx+si],al
000011D0  0000              add [bx+si],al
000011D2  0000              add [bx+si],al
000011D4  0000              add [bx+si],al
000011D6  0000              add [bx+si],al
000011D8  0000              add [bx+si],al
000011DA  0000              add [bx+si],al
000011DC  0000              add [bx+si],al
000011DE  0000              add [bx+si],al
000011E0  0000              add [bx+si],al
000011E2  0000              add [bx+si],al
000011E4  0000              add [bx+si],al
000011E6  0000              add [bx+si],al
000011E8  0000              add [bx+si],al
000011EA  0000              add [bx+si],al
000011EC  0000              add [bx+si],al
000011EE  0000              add [bx+si],al
000011F0  0000              add [bx+si],al
000011F2  0000              add [bx+si],al
000011F4  0000              add [bx+si],al
000011F6  0000              add [bx+si],al
000011F8  0000              add [bx+si],al
000011FA  0000              add [bx+si],al
000011FC  0000              add [bx+si],al
000011FE  0000              add [bx+si],al
00001200  0000              add [bx+si],al
00001202  0000              add [bx+si],al
00001204  0000              add [bx+si],al
00001206  0000              add [bx+si],al
00001208  0000              add [bx+si],al
0000120A  0000              add [bx+si],al
0000120C  0000              add [bx+si],al
0000120E  0000              add [bx+si],al
00001210  0000              add [bx+si],al
00001212  0000              add [bx+si],al
00001214  0000              add [bx+si],al
00001216  0000              add [bx+si],al
00001218  0000              add [bx+si],al
0000121A  0000              add [bx+si],al
0000121C  0000              add [bx+si],al
0000121E  0000              add [bx+si],al
00001220  50                push ax
00001221  53                push bx
00001222  51                push cx
00001223  56                push si
00001224  57                push di
00001225  8B361503          mov si,[0x315]
00001229  80BC070000        cmp byte [si+0x7],0x0
0000122E  7503              jnz 0x1233
00001230  E9F100            jmp 0x1324
00001233  FE8C0600          dec byte [si+0x6]
00001237  7403              jz 0x123c
00001239  E9E800            jmp 0x1324
0000123C  C684060001        mov byte [si+0x6],0x1
00001241  80BC070001        cmp byte [si+0x7],0x1
00001246  7505              jnz 0x124d
00001248  C684060004        mov byte [si+0x6],0x4
0000124D  E86607            call 0x19b6
00001250  8A840000          mov al,[si+0x0]
00001254  02840200          add al,[si+0x2]
00001258  3CE1              cmp al,0xe1
0000125A  7203              jc 0x125f
0000125C  E9B500            jmp 0x1314
0000125F  3C00              cmp al,0x0
00001261  7303              jnc 0x1266
00001263  E9AE00            jmp 0x1314
00001266  8A9C0100          mov bl,[si+0x1]
0000126A  029C0300          add bl,[si+0x3]
0000126E  80FBBD            cmp bl,0xbd
00001271  7203              jc 0x1276
00001273  E99E00            jmp 0x1314
00001276  80FB00            cmp bl,0x0
00001279  7303              jnc 0x127e
0000127B  E99600            jmp 0x1314
0000127E  889C0100          mov [si+0x1],bl
00001282  88840000          mov [si+0x0],al
00001286  80BC070002        cmp byte [si+0x7],0x2
0000128B  755B              jnz 0x12e8
0000128D  8A0E0103          mov cl,[0x301]
00001291  8D3E0001          lea di,[0x100]
00001295  80BD040004        cmp byte [di+0x4],0x4
0000129A  7345              jnc 0x12e1
0000129C  8A850000          mov al,[di+0x0]
000012A0  2A840000          sub al,[si+0x0]
000012A4  7302              jnc 0x12a8
000012A6  F6D8              neg al
000012A8  3C08              cmp al,0x8
000012AA  7335              jnc 0x12e1
000012AC  8A850100          mov al,[di+0x1]
000012B0  2A840100          sub al,[si+0x1]
000012B4  7302              jnc 0x12b8
000012B6  F6D8              neg al
000012B8  3C08              cmp al,0x8
000012BA  7325              jnc 0x12e1
000012BC  80BD040002        cmp byte [di+0x4],0x2
000012C1  7404              jz 0x12c7
000012C3  FE0E4C03          dec byte [0x34c]
000012C7  C685040005        mov byte [di+0x4],0x5
000012CC  C6062403FE        mov byte [0x324],0xfe
000012D1  B700              mov bh,0x0
000012D3  8A9D0A00          mov bl,[di+0xa]
000012D7  8A878011          mov al,[bx+0x1180]
000012DB  E8420A            call 0x1d20
000012DE  EB34              jmp short 0x1314
000012E0  90                nop
000012E1  83C70C            add di,byte +0xc
000012E4  FEC9              dec cl
000012E6  75AD              jnz 0x1295
000012E8  A00803            mov al,[0x308]
000012EB  2A840000          sub al,[si+0x0]
000012EF  7302              jnc 0x12f3
000012F1  F6D8              neg al
000012F3  3C08              cmp al,0x8
000012F5  7317              jnc 0x130e
000012F7  A00903            mov al,[0x309]
000012FA  2A840100          sub al,[si+0x1]
000012FE  7302              jnc 0x1302
00001300  F6D8              neg al
00001302  3C08              cmp al,0x8
00001304  7308              jnc 0x130e
00001306  C6060703FF        mov byte [0x307],0xff
0000130B  EB07              jmp short 0x1314
0000130D  90                nop
0000130E  E8A506            call 0x19b6
00001311  EB11              jmp short 0x1324
00001313  90                nop
00001314  A10203            mov ax,[0x302]
00001317  89840400          mov [si+0x4],ax
0000131B  89360203          mov [0x302],si
0000131F  C684070000        mov byte [si+0x7],0x0
00001324  FE0E1B03          dec byte [0x31b]
00001328  7406              jz 0x1330
0000132A  83C608            add si,byte +0x8
0000132D  EB0B              jmp short 0x133a
0000132F  90                nop
00001330  8D360000          lea si,[0x0]
00001334  A00003            mov al,[0x300]
00001337  A21B03            mov [0x31b],al
0000133A  89361503          mov [0x315],si
0000133E  5F                pop di
0000133F  5E                pop si
00001340  59                pop cx
00001341  5B                pop bx
00001342  58                pop ax
00001343  C3                ret
00001344  0000              add [bx+si],al
00001346  0000              add [bx+si],al
00001348  0000              add [bx+si],al
0000134A  0000              add [bx+si],al
0000134C  0000              add [bx+si],al
0000134E  0000              add [bx+si],al
00001350  0000              add [bx+si],al
00001352  0000              add [bx+si],al
00001354  0000              add [bx+si],al
00001356  0000              add [bx+si],al
00001358  0000              add [bx+si],al
0000135A  0000              add [bx+si],al
0000135C  0000              add [bx+si],al
0000135E  0000              add [bx+si],al
00001360  0000              add [bx+si],al
00001362  0000              add [bx+si],al
00001364  0000              add [bx+si],al
00001366  0000              add [bx+si],al
00001368  0000              add [bx+si],al
0000136A  0000              add [bx+si],al
0000136C  0000              add [bx+si],al
0000136E  0000              add [bx+si],al
00001370  0000              add [bx+si],al
00001372  0000              add [bx+si],al
00001374  0000              add [bx+si],al
00001376  0000              add [bx+si],al
00001378  0000              add [bx+si],al
0000137A  0000              add [bx+si],al
0000137C  0000              add [bx+si],al
0000137E  0000              add [bx+si],al
00001380  0000              add [bx+si],al
00001382  0000              add [bx+si],al
00001384  0000              add [bx+si],al
00001386  0000              add [bx+si],al
00001388  0000              add [bx+si],al
0000138A  0000              add [bx+si],al
0000138C  0000              add [bx+si],al
0000138E  0000              add [bx+si],al
00001390  0000              add [bx+si],al
00001392  0000              add [bx+si],al
00001394  0000              add [bx+si],al
00001396  0000              add [bx+si],al
00001398  0000              add [bx+si],al
0000139A  0000              add [bx+si],al
0000139C  0000              add [bx+si],al
0000139E  0000              add [bx+si],al
000013A0  0000              add [bx+si],al
000013A2  0000              add [bx+si],al
000013A4  0000              add [bx+si],al
000013A6  0000              add [bx+si],al
000013A8  0000              add [bx+si],al
000013AA  0000              add [bx+si],al
000013AC  0000              add [bx+si],al
000013AE  0000              add [bx+si],al
000013B0  0000              add [bx+si],al
000013B2  0000              add [bx+si],al
000013B4  0000              add [bx+si],al
000013B6  0000              add [bx+si],al
000013B8  0000              add [bx+si],al
000013BA  0000              add [bx+si],al
000013BC  0000              add [bx+si],al
000013BE  0000              add [bx+si],al
000013C0  0000              add [bx+si],al
000013C2  0000              add [bx+si],al
000013C4  0000              add [bx+si],al
000013C6  0000              add [bx+si],al
000013C8  0000              add [bx+si],al
000013CA  0000              add [bx+si],al
000013CC  0000              add [bx+si],al
000013CE  0000              add [bx+si],al
000013D0  0000              add [bx+si],al
000013D2  0000              add [bx+si],al
000013D4  0000              add [bx+si],al
000013D6  0000              add [bx+si],al
000013D8  0000              add [bx+si],al
000013DA  0000              add [bx+si],al
000013DC  0000              add [bx+si],al
000013DE  0000              add [bx+si],al
000013E0  0000              add [bx+si],al
000013E2  0000              add [bx+si],al
000013E4  0000              add [bx+si],al
000013E6  0000              add [bx+si],al
000013E8  0000              add [bx+si],al
000013EA  0000              add [bx+si],al
000013EC  0000              add [bx+si],al
000013EE  0000              add [bx+si],al
000013F0  0000              add [bx+si],al
000013F2  0000              add [bx+si],al
000013F4  0000              add [bx+si],al
000013F6  0000              add [bx+si],al
000013F8  0000              add [bx+si],al
000013FA  0000              add [bx+si],al
000013FC  0000              add [bx+si],al
000013FE  0000              add [bx+si],al
00001400  0000              add [bx+si],al
00001402  0000              add [bx+si],al
00001404  0000              add [bx+si],al
00001406  0000              add [bx+si],al
00001408  0000              add [bx+si],al
0000140A  0000              add [bx+si],al
0000140C  0000              add [bx+si],al
0000140E  0000              add [bx+si],al
00001410  0000              add [bx+si],al
00001412  0000              add [bx+si],al
00001414  0000              add [bx+si],al
00001416  0000              add [bx+si],al
00001418  0000              add [bx+si],al
0000141A  0000              add [bx+si],al
0000141C  0000              add [bx+si],al
0000141E  0000              add [bx+si],al
00001420  50                push ax
00001421  53                push bx
00001422  56                push si
00001423  57                push di
00001424  8B361903          mov si,[0x319]
00001428  80BC040004        cmp byte [si+0x4],0x4
0000142D  7503              jnz 0x1432
0000142F  E91303            jmp 0x1745
00001432  80BC040005        cmp byte [si+0x4],0x5
00001437  7513              jnz 0x144c
00001439  E8D505            call 0x1a11
0000143C  C684040006        mov byte [si+0x4],0x6
00001441  C6840B0005        mov byte [si+0xb],0x5
00001446  E8C805            call 0x1a11
00001449  E9FA02            jmp 0x1746
0000144C  80BC040006        cmp byte [si+0x4],0x6
00001451  7266              jc 0x14b9
00001453  80BC0B0000        cmp byte [si+0xb],0x0
00001458  742A              jz 0x1484
0000145A  E8B405            call 0x1a11
0000145D  FE8C0B00          dec byte [si+0xb]
00001461  740A              jz 0x146d
00001463  FE840400          inc byte [si+0x4]
00001467  E8A705            call 0x1a11
0000146A  E9D902            jmp 0x1746
0000146D  FE840A00          inc byte [si+0xa]
00001471  80BC0A0004        cmp byte [si+0xa],0x4
00001476  750C              jnz 0x1484
00001478  C684040004        mov byte [si+0x4],0x4
0000147D  FE0E0503          dec byte [0x305]
00001481  E9C202            jmp 0x1746
00001484  803E0703FF        cmp byte [0x307],0xff
00001489  7503              jnz 0x148e
0000148B  E9B802            jmp 0x1746
0000148E  8A840600          mov al,[si+0x6]
00001492  88840000          mov [si+0x0],al
00001496  8A840700          mov al,[si+0x7]
0000149A  88840100          mov [si+0x1],al
0000149E  8A840800          mov al,[si+0x8]
000014A2  88840200          mov [si+0x2],al
000014A6  8A840900          mov al,[si+0x9]
000014AA  88840300          mov [si+0x3],al
000014AE  C684040000        mov byte [si+0x4],0x0
000014B3  E85B05            call 0x1a11
000014B6  E98D02            jmp 0x1746
000014B9  803E0703FF        cmp byte [0x307],0xff
000014BE  7503              jnz 0x14c3
000014C0  E98202            jmp 0x1745
000014C3  80BC040000        cmp byte [si+0x4],0x0
000014C8  7542              jnz 0x150c
000014CA  803E4C0305        cmp byte [0x34c],0x5
000014CF  7203              jc 0x14d4
000014D1  E97102            jmp 0x1745
000014D4  803E050306        cmp byte [0x305],0x6
000014D9  7225              jc 0x1500
000014DB  FE0E1203          dec byte [0x312]
000014DF  7403              jz 0x14e4
000014E1  E96102            jmp 0x1745
000014E4  C606120320        mov byte [0x312],0x20
000014E9  B400              mov ah,0x0
000014EB  A00503            mov al,[0x305]
000014EE  8BF8              mov di,ax
000014F0  E82DF8            call 0xd20
000014F3  02858812          add al,[di+0x1288]
000014F7  7207              jc 0x1500
000014F9  3C80              cmp al,0x80
000014FB  7203              jc 0x1500
000014FD  E94502            jmp 0x1745
00001500  E81B03            call 0x181e
00001503  C684040001        mov byte [si+0x4],0x1
00001508  FE064C03          inc byte [0x34c]
0000150C  80BC040001        cmp byte [si+0x4],0x1
00001511  7537              jnz 0x154a
00001513  E85302            call 0x1769
00001516  8A840200          mov al,[si+0x2]
0000151A  02840300          add al,[si+0x3]
0000151E  A28012            mov [0x1280],al
00001521  7802              js 0x1525
00001523  F6D8              neg al
00001525  02840500          add al,[si+0x5]
00001529  88840500          mov [si+0x5],al
0000152D  7403              jz 0x1532
0000152F  E91402            jmp 0x1746
00001532  803E801200        cmp byte [0x1280],0x0
00001537  7908              jns 0x1541
00001539  C684040002        mov byte [si+0x4],0x2
0000153E  EB06              jmp short 0x1546
00001540  90                nop
00001541  C684040000        mov byte [si+0x4],0x0
00001546  FE0E4C03          dec byte [0x34c]
0000154A  80BC040002        cmp byte [si+0x4],0x2
0000154F  7403              jz 0x1554
00001551  E9A600            jmp 0x15fa
00001554  803E4C0305        cmp byte [0x34c],0x5
00001559  7203              jc 0x155e
0000155B  E99600            jmp 0x15f4
0000155E  803E050306        cmp byte [0x305],0x6
00001563  724F              jc 0x15b4
00001565  FE0E1203          dec byte [0x312]
00001569  751A              jnz 0x1585
0000156B  C606120320        mov byte [0x312],0x20
00001570  E8ADF7            call 0xd20
00001573  0AC0              or al,al
00001575  780E              js 0x1585
00001577  E8A402            call 0x181e
0000157A  C684040001        mov byte [si+0x4],0x1
0000157F  FE064C03          inc byte [0x34c]
00001583  EB87              jmp short 0x150c
00001585  FE0E1103          dec byte [0x311]
00001589  7569              jnz 0x15f4
0000158B  A00403            mov al,[0x304]
0000158E  A21103            mov [0x311],al
00001591  B400              mov ah,0x0
00001593  8A840A00          mov al,[si+0xa]
00001597  8BF8              mov di,ax
00001599  E884F7            call 0xd20
0000159C  02859412          add al,[di+0x1294]
000015A0  7212              jc 0x15b4
000015A2  B700              mov bh,0x0
000015A4  8A1E0503          mov bl,[0x305]
000015A8  8BFB              mov di,bx
000015AA  02858812          add al,[di+0x1288]
000015AE  7204              jc 0x15b4
000015B0  3C20              cmp al,0x20
000015B2  7340              jnc 0x15f4
000015B4  C684040003        mov byte [si+0x4],0x3
000015B9  FE064C03          inc byte [0x34c]
000015BD  C684020000        mov byte [si+0x2],0x0
000015C2  C684030000        mov byte [si+0x3],0x0
000015C7  80BC010000        cmp byte [si+0x1],0x0
000015CC  7407              jz 0x15d5
000015CE  F68401001F        test byte [si+0x1],0x1f
000015D3  7408              jz 0x15dd
000015D5  C684030002        mov byte [si+0x3],0x2
000015DA  E99900            jmp 0x1676
000015DD  F684000080        test byte [si+0x0],0x80
000015E2  7508              jnz 0x15ec
000015E4  C684020002        mov byte [si+0x2],0x2
000015E9  E98A00            jmp 0x1676
000015EC  C6840200FE        mov byte [si+0x2],0xfe
000015F1  E98200            jmp 0x1676
000015F4  E89101            call 0x1788
000015F7  E94B01            jmp 0x1745
000015FA  80BC040003        cmp byte [si+0x4],0x3
000015FF  7403              jz 0x1604
00001601  E94101            jmp 0x1745
00001604  8A840000          mov al,[si+0x0]
00001608  0A840100          or al,[si+0x1]
0000160C  241F              and al,0x1f
0000160E  7403              jz 0x1613
00001610  EB69              jmp short 0x167b
00001612  90                nop
00001613  B400              mov ah,0x0
00001615  88268112          mov [0x1281],ah
00001619  88268212          mov [0x1282],ah
0000161D  A00803            mov al,[0x308]
00001620  2A840000          sub al,[si+0x0]
00001624  7307              jnc 0x162d
00001626  F6D8              neg al
00001628  C606811202        mov byte [0x1281],0x2
0000162D  A28312            mov [0x1283],al
00001630  A00903            mov al,[0x309]
00001633  2A840100          sub al,[si+0x1]
00001637  7307              jnc 0x1640
00001639  F6D8              neg al
0000163B  C606821202        mov byte [0x1282],0x2
00001640  A28412            mov [0x1284],al
00001643  8A1E8112          mov bl,[0x1281]
00001647  803E841200        cmp byte [0x1284],0x0
0000164C  7414              jz 0x1662
0000164E  803E831200        cmp byte [0x1283],0x0
00001653  7407              jz 0x165c
00001655  E8C8F6            call 0xd20
00001658  0AC0              or al,al
0000165A  7806              js 0x1662
0000165C  B304              mov bl,0x4
0000165E  021E8212          add bl,[0x1282]
00001662  B700              mov bh,0x0
00001664  8BFB              mov di,bx
00001666  8A859812          mov al,[di+0x1298]
0000166A  88840200          mov [si+0x2],al
0000166E  8A859912          mov al,[di+0x1299]
00001672  88840300          mov [si+0x3],al
00001676  C606871200        mov byte [0x1287],0x0
0000167B  8A840000          mov al,[si+0x0]
0000167F  02840200          add al,[si+0x2]
00001683  A28512            mov [0x1285],al
00001686  8A840100          mov al,[si+0x1]
0000168A  02840300          add al,[si+0x3]
0000168E  A28612            mov [0x1286],al
00001691  A08512            mov al,[0x1285]
00001694  2A060803          sub al,[0x308]
00001698  7302              jnc 0x169c
0000169A  F6D8              neg al
0000169C  3C0D              cmp al,0xd
0000169E  731E              jnc 0x16be
000016A0  A08612            mov al,[0x1286]
000016A3  2A060903          sub al,[0x309]
000016A7  7302              jnc 0x16ab
000016A9  F6D8              neg al
000016AB  3C0D              cmp al,0xd
000016AD  730F              jnc 0x16be
000016AF  E8B700            call 0x1769
000016B2  C6060703FF        mov byte [0x307],0xff
000016B7  FE0E4C03          dec byte [0x34c]
000016BB  E97BFD            jmp 0x1439
000016BE  8D3E0001          lea di,[0x100]
000016C2  B700              mov bh,0x0
000016C4  8A1E0103          mov bl,[0x301]
000016C8  80BD040003        cmp byte [di+0x4],0x3
000016CD  7568              jnz 0x1737
000016CF  8A850000          mov al,[di+0x0]
000016D3  2A068512          sub al,[0x1285]
000016D7  7302              jnc 0x16db
000016D9  F6D8              neg al
000016DB  3C0E              cmp al,0xe
000016DD  7358              jnc 0x1737
000016DF  8A850100          mov al,[di+0x1]
000016E3  2A068612          sub al,[0x1286]
000016E7  7302              jnc 0x16eb
000016E9  F6D8              neg al
000016EB  3C0E              cmp al,0xe
000016ED  7348              jnc 0x1737
000016EF  3BFE              cmp di,si
000016F1  7444              jz 0x1737
000016F3  803E871200        cmp byte [0x1287],0x0
000016F8  752C              jnz 0x1726
000016FA  80BC000021        cmp byte [si+0x0],0x21
000016FF  7225              jc 0x1726
00001701  80BC0000C0        cmp byte [si+0x0],0xc0
00001706  731E              jnc 0x1726
00001708  80BC010021        cmp byte [si+0x1],0x21
0000170D  7217              jc 0x1726
0000170F  80BC0100A0        cmp byte [si+0x1],0xa0
00001714  7310              jnc 0x1726
00001716  F69C0200          neg byte [si+0x2]
0000171A  F69C0300          neg byte [si+0x3]
0000171E  C6068712FF        mov byte [0x1287],0xff
00001723  E955FF            jmp 0x167b
00001726  C684040005        mov byte [si+0x4],0x5
0000172B  FE0E4C03          dec byte [0x34c]
0000172F  C6062403FE        mov byte [0x324],0xfe
00001734  E902FD            jmp 0x1439
00001737  83C70C            add di,byte +0xc
0000173A  4B                dec bx
0000173B  7402              jz 0x173f
0000173D  EB89              jmp short 0x16c8
0000173F  E82700            call 0x1769
00001742  E84300            call 0x1788
00001745  90                nop
00001746  FE0E1C03          dec byte [0x31c]
0000174A  740A              jz 0x1756
0000174C  83C60C            add si,byte +0xc
0000174F  89361903          mov [0x319],si
00001753  EB0F              jmp short 0x1764
00001755  90                nop
00001756  8D360001          lea si,[0x100]
0000175A  89361903          mov [0x319],si
0000175E  A00103            mov al,[0x301]
00001761  A21C03            mov [0x31c],al
00001764  5F                pop di
00001765  5E                pop si
00001766  5B                pop bx
00001767  58                pop ax
00001768  C3                ret
00001769  E8A502            call 0x1a11
0000176C  8A840000          mov al,[si+0x0]
00001770  02840200          add al,[si+0x2]
00001774  88840000          mov [si+0x0],al
00001778  8A840100          mov al,[si+0x1]
0000177C  02840300          add al,[si+0x3]
00001780  88840100          mov [si+0x1],al
00001784  E88A02            call 0x1a11
00001787  C3                ret
00001788  FE0E1303          dec byte [0x313]
0000178C  7403              jz 0x1791
0000178E  E98C00            jmp 0x181d
00001791  A04E03            mov al,[0x34e]
00001794  A21303            mov [0x313],al
00001797  B400              mov ah,0x0
00001799  8A840A00          mov al,[si+0xa]
0000179D  8BF8              mov di,ax
0000179F  E87EF5            call 0xd20
000017A2  0285A012          add al,[di+0x12a0]
000017A6  7275              jc 0x181d
000017A8  3C78              cmp al,0x78
000017AA  7371              jnc 0x181d
000017AC  B001              mov al,0x1
000017AE  E86FF8            call 0x1020
000017B1  80FC00            cmp ah,0x0
000017B4  7567              jnz 0x181d
000017B6  C687020000        mov byte [bx+0x2],0x0
000017BB  C687030000        mov byte [bx+0x3],0x0
000017C0  80BC010000        cmp byte [si+0x1],0x0
000017C5  741C              jz 0x17e3
000017C7  F68401001F        test byte [si+0x1],0x1f
000017CC  7515              jnz 0x17e3
000017CE  B102              mov cl,0x2
000017D0  8A840000          mov al,[si+0x0]
000017D4  3A060803          cmp al,[0x308]
000017D8  7202              jc 0x17dc
000017DA  B1FE              mov cl,0xfe
000017DC  888F0200          mov [bx+0x2],cl
000017E0  EB13              jmp short 0x17f5
000017E2  90                nop
000017E3  B102              mov cl,0x2
000017E5  8A840100          mov al,[si+0x1]
000017E9  3A060903          cmp al,[0x309]
000017ED  7202              jc 0x17f1
000017EF  B1FE              mov cl,0xfe
000017F1  888F0300          mov [bx+0x3],cl
000017F5  8A870200          mov al,[bx+0x2]
000017F9  D0E0              shl al,1
000017FB  02840000          add al,[si+0x0]
000017FF  88870000          mov [bx+0x0],al
00001803  8A870300          mov al,[bx+0x3]
00001807  D0E0              shl al,1
00001809  02840100          add al,[si+0x1]
0000180D  88870100          mov [bx+0x1],al
00001811  C687060004        mov byte [bx+0x6],0x4
00001816  891E1503          mov [0x315],bx
0000181A  E89901            call 0x19b6
0000181D  C3                ret
0000181E  B102              mov cl,0x2
00001820  80BC040000        cmp byte [si+0x4],0x0
00001825  7502              jnz 0x1829
00001827  B1FE              mov cl,0xfe
00001829  80BC020000        cmp byte [si+0x2],0x0
0000182E  7407              jz 0x1837
00001830  888C0200          mov [si+0x2],cl
00001834  EB05              jmp short 0x183b
00001836  90                nop
00001837  888C0300          mov [si+0x3],cl
0000183B  C684050010        mov byte [si+0x5],0x10
00001840  C3                ret
00001841  0000              add [bx+si],al
00001843  0000              add [bx+si],al
00001845  0000              add [bx+si],al
00001847  0000              add [bx+si],al
00001849  0000              add [bx+si],al
0000184B  0000              add [bx+si],al
0000184D  0000              add [bx+si],al
0000184F  0000              add [bx+si],al
00001851  0000              add [bx+si],al
00001853  0000              add [bx+si],al
00001855  0000              add [bx+si],al
00001857  0000              add [bx+si],al
00001859  0000              add [bx+si],al
0000185B  0000              add [bx+si],al
0000185D  0000              add [bx+si],al
0000185F  0000              add [bx+si],al
00001861  0000              add [bx+si],al
00001863  0000              add [bx+si],al
00001865  0000              add [bx+si],al
00001867  0000              add [bx+si],al
00001869  0000              add [bx+si],al
0000186B  0000              add [bx+si],al
0000186D  0000              add [bx+si],al
0000186F  0000              add [bx+si],al
00001871  0000              add [bx+si],al
00001873  0000              add [bx+si],al
00001875  0000              add [bx+si],al
00001877  0000              add [bx+si],al
00001879  0000              add [bx+si],al
0000187B  0000              add [bx+si],al
0000187D  0000              add [bx+si],al
0000187F  0000              add [bx+si],al
00001881  0000              add [bx+si],al
00001883  0000              add [bx+si],al
00001885  0000              add [bx+si],al
00001887  0000              add [bx+si],al
00001889  0000              add [bx+si],al
0000188B  0000              add [bx+si],al
0000188D  0000              add [bx+si],al
0000188F  0000              add [bx+si],al
00001891  0000              add [bx+si],al
00001893  0000              add [bx+si],al
00001895  0000              add [bx+si],al
00001897  0000              add [bx+si],al
00001899  0000              add [bx+si],al
0000189B  0000              add [bx+si],al
0000189D  0000              add [bx+si],al
0000189F  0000              add [bx+si],al
000018A1  0000              add [bx+si],al
000018A3  0000              add [bx+si],al
000018A5  0000              add [bx+si],al
000018A7  0000              add [bx+si],al
000018A9  0000              add [bx+si],al
000018AB  0000              add [bx+si],al
000018AD  0000              add [bx+si],al
000018AF  0000              add [bx+si],al
000018B1  0000              add [bx+si],al
000018B3  0000              add [bx+si],al
000018B5  0000              add [bx+si],al
000018B7  0000              add [bx+si],al
000018B9  0000              add [bx+si],al
000018BB  0000              add [bx+si],al
000018BD  0000              add [bx+si],al
000018BF  0000              add [bx+si],al
000018C1  0000              add [bx+si],al
000018C3  0000              add [bx+si],al
000018C5  0000              add [bx+si],al
000018C7  0000              add [bx+si],al
000018C9  0000              add [bx+si],al
000018CB  0000              add [bx+si],al
000018CD  0000              add [bx+si],al
000018CF  0000              add [bx+si],al
000018D1  0000              add [bx+si],al
000018D3  0000              add [bx+si],al
000018D5  0000              add [bx+si],al
000018D7  0000              add [bx+si],al
000018D9  0000              add [bx+si],al
000018DB  0000              add [bx+si],al
000018DD  0000              add [bx+si],al
000018DF  0000              add [bx+si],al
000018E1  0000              add [bx+si],al
000018E3  0000              add [bx+si],al
000018E5  0000              add [bx+si],al
000018E7  0000              add [bx+si],al
000018E9  0000              add [bx+si],al
000018EB  0000              add [bx+si],al
000018ED  0000              add [bx+si],al
000018EF  0000              add [bx+si],al
000018F1  0000              add [bx+si],al
000018F3  0000              add [bx+si],al
000018F5  0000              add [bx+si],al
000018F7  0000              add [bx+si],al
000018F9  0000              add [bx+si],al
000018FB  0000              add [bx+si],al
000018FD  0000              add [bx+si],al
000018FF  0000              add [bx+si],al
00001901  0000              add [bx+si],al
00001903  0000              add [bx+si],al
00001905  0000              add [bx+si],al
00001907  0000              add [bx+si],al
00001909  0000              add [bx+si],al
0000190B  0000              add [bx+si],al
0000190D  0000              add [bx+si],al
0000190F  0000              add [bx+si],al
00001911  0000              add [bx+si],al
00001913  0000              add [bx+si],al
00001915  0000              add [bx+si],al
00001917  0000              add [bx+si],al
00001919  0000              add [bx+si],al
0000191B  0000              add [bx+si],al
0000191D  0000              add [bx+si],al
0000191F  005053            add [bx+si+0x53],dl
00001922  51                push cx
00001923  57                push di
00001924  8B3E1703          mov di,[0x317]
00001928  80BD040001        cmp byte [di+0x4],0x1
0000192D  7208              jc 0x1937
0000192F  BB0500            mov bx,0x5
00001932  B90000            mov cx,0x0
00001935  EB06              jmp short 0x193d
00001937  BB0100            mov bx,0x1
0000193A  B90100            mov cx,0x1
0000193D  8A850000          mov al,[di+0x0]
00001941  B400              mov ah,0x0
00001943  2D0300            sub ax,0x3
00001946  2BC3              sub ax,bx
00001948  03063603          add ax,[0x336]
0000194C  8A9D0100          mov bl,[di+0x1]
00001950  B700              mov bh,0x0
00001952  83EB03            sub bx,byte +0x3
00001955  2BD9              sub bx,cx
00001957  031E3803          add bx,[0x338]
0000195B  50                push ax
0000195C  8A850400          mov al,[di+0x4]
00001960  B400              mov ah,0x0
00001962  D1E0              shl ax,1
00001964  8BF8              mov di,ax
00001966  8B8D8014          mov cx,[di+0x1480]
0000196A  58                pop ax
0000196B  E8D4F4            call 0xe42
0000196E  5F                pop di
0000196F  59                pop cx
00001970  5B                pop bx
00001971  58                pop ax
00001972  C3                ret
00001973  50                push ax
00001974  53                push bx
00001975  51                push cx
00001976  803E4A03FF        cmp byte [0x34a],0xff
0000197B  7435              jz 0x19b2
0000197D  A04903            mov al,[0x349]
00001980  B400              mov ah,0x0
00001982  2D0700            sub ax,0x7
00001985  40                inc ax
00001986  03063603          add ax,[0x336]
0000198A  8A1E4A03          mov bl,[0x34a]
0000198E  B700              mov bh,0x0
00001990  83EB07            sub bx,byte +0x7
00001993  43                inc bx
00001994  031E3803          add bx,[0x338]
00001998  8D0ED006          lea cx,[0x6d0]
0000199C  E8A3F4            call 0xe42
0000199F  803E0B0300        cmp byte [0x30b],0x0
000019A4  7507              jnz 0x19ad
000019A6  C6060B03FF        mov byte [0x30b],0xff
000019AB  EB05              jmp short 0x19b2
000019AD  C6060B0300        mov byte [0x30b],0x0
000019B2  59                pop cx
000019B3  5B                pop bx
000019B4  58                pop ax
000019B5  C3                ret
000019B6  50                push ax
000019B7  53                push bx
000019B8  51                push cx
000019B9  57                push di
000019BA  8B3E1503          mov di,[0x315]
000019BE  8A850000          mov al,[di+0x0]
000019C2  B400              mov ah,0x0
000019C4  03063603          add ax,[0x336]
000019C8  8A9D0100          mov bl,[di+0x1]
000019CC  B700              mov bh,0x0
000019CE  031E3803          add bx,[0x338]
000019D2  8D0E8006          lea cx,[0x680]
000019D6  E869F4            call 0xe42
000019D9  5F                pop di
000019DA  59                pop cx
000019DB  5B                pop bx
000019DC  58                pop ax
000019DD  C3                ret
000019DE  50                push ax
000019DF  53                push bx
000019E0  51                push cx
000019E1  56                push si
000019E2  B400              mov ah,0x0
000019E4  A00803            mov al,[0x308]
000019E7  2D0600            sub ax,0x6
000019EA  03063603          add ax,[0x336]
000019EE  B700              mov bh,0x0
000019F0  8A1E0903          mov bl,[0x309]
000019F4  83EB04            sub bx,byte +0x4
000019F7  031E3803          add bx,[0x338]
000019FB  B500              mov ch,0x0
000019FD  8A0E5503          mov cl,[0x355]
00001A01  D1E1              shl cx,1
00001A03  8BF1              mov si,cx
00001A05  8B8C0013          mov cx,[si+0x1300]
00001A09  E836F4            call 0xe42
00001A0C  5E                pop si
00001A0D  59                pop cx
00001A0E  5B                pop bx
00001A0F  58                pop ax
00001A10  C3                ret
00001A11  50                push ax
00001A12  53                push bx
00001A13  51                push cx
00001A14  57                push di
00001A15  8B3E1903          mov di,[0x319]
00001A19  80BD040006        cmp byte [di+0x4],0x6
00001A1E  7206              jc 0x1a26
00001A20  8A9D0400          mov bl,[di+0x4]
00001A24  EB04              jmp short 0x1a2a
00001A26  8A9D0A00          mov bl,[di+0xa]
00001A2A  B700              mov bh,0x0
00001A2C  D1E3              shl bx,1
00001A2E  8B8F0014          mov cx,[bx+0x1400]
00001A32  8A850000          mov al,[di+0x0]
00001A36  B400              mov ah,0x0
00001A38  2D0600            sub ax,0x6
00001A3B  03063603          add ax,[0x336]
00001A3F  8A9D0100          mov bl,[di+0x1]
00001A43  B700              mov bh,0x0
00001A45  83EB06            sub bx,byte +0x6
00001A48  031E3803          add bx,[0x338]
00001A4C  E8F3F3            call 0xe42
00001A4F  5F                pop di
00001A50  59                pop cx
00001A51  5B                pop bx
00001A52  58                pop ax
00001A53  C3                ret
00001A54  0000              add [bx+si],al
00001A56  0000              add [bx+si],al
00001A58  0000              add [bx+si],al
00001A5A  0000              add [bx+si],al
00001A5C  0000              add [bx+si],al
00001A5E  0000              add [bx+si],al
00001A60  0000              add [bx+si],al
00001A62  0000              add [bx+si],al
00001A64  0000              add [bx+si],al
00001A66  0000              add [bx+si],al
00001A68  0000              add [bx+si],al
00001A6A  0000              add [bx+si],al
00001A6C  0000              add [bx+si],al
00001A6E  0000              add [bx+si],al
00001A70  0000              add [bx+si],al
00001A72  0000              add [bx+si],al
00001A74  0000              add [bx+si],al
00001A76  0000              add [bx+si],al
00001A78  0000              add [bx+si],al
00001A7A  0000              add [bx+si],al
00001A7C  0000              add [bx+si],al
00001A7E  0000              add [bx+si],al
00001A80  0000              add [bx+si],al
00001A82  0000              add [bx+si],al
00001A84  0000              add [bx+si],al
00001A86  0000              add [bx+si],al
00001A88  0000              add [bx+si],al
00001A8A  0000              add [bx+si],al
00001A8C  0000              add [bx+si],al
00001A8E  0000              add [bx+si],al
00001A90  0000              add [bx+si],al
00001A92  0000              add [bx+si],al
00001A94  0000              add [bx+si],al
00001A96  0000              add [bx+si],al
00001A98  0000              add [bx+si],al
00001A9A  0000              add [bx+si],al
00001A9C  0000              add [bx+si],al
00001A9E  0000              add [bx+si],al
00001AA0  0000              add [bx+si],al
00001AA2  0000              add [bx+si],al
00001AA4  0000              add [bx+si],al
00001AA6  0000              add [bx+si],al
00001AA8  0000              add [bx+si],al
00001AAA  0000              add [bx+si],al
00001AAC  0000              add [bx+si],al
00001AAE  0000              add [bx+si],al
00001AB0  0000              add [bx+si],al
00001AB2  0000              add [bx+si],al
00001AB4  0000              add [bx+si],al
00001AB6  0000              add [bx+si],al
00001AB8  0000              add [bx+si],al
00001ABA  0000              add [bx+si],al
00001ABC  0000              add [bx+si],al
00001ABE  0000              add [bx+si],al
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
00001AE4  0000              add [bx+si],al
00001AE6  0000              add [bx+si],al
00001AE8  0000              add [bx+si],al
00001AEA  0000              add [bx+si],al
00001AEC  0000              add [bx+si],al
00001AEE  0000              add [bx+si],al
00001AF0  0000              add [bx+si],al
00001AF2  0000              add [bx+si],al
00001AF4  0000              add [bx+si],al
00001AF6  0000              add [bx+si],al
00001AF8  0000              add [bx+si],al
00001AFA  0000              add [bx+si],al
00001AFC  0000              add [bx+si],al
00001AFE  0000              add [bx+si],al
00001B00  0000              add [bx+si],al
00001B02  0000              add [bx+si],al
00001B04  0000              add [bx+si],al
00001B06  0000              add [bx+si],al
00001B08  0000              add [bx+si],al
00001B0A  0000              add [bx+si],al
00001B0C  0000              add [bx+si],al
00001B0E  0000              add [bx+si],al
00001B10  0000              add [bx+si],al
00001B12  0000              add [bx+si],al
00001B14  0000              add [bx+si],al
00001B16  0000              add [bx+si],al
00001B18  0000              add [bx+si],al
00001B1A  0000              add [bx+si],al
00001B1C  0000              add [bx+si],al
00001B1E  0000              add [bx+si],al
00001B20  50                push ax
00001B21  57                push di
00001B22  803E290300        cmp byte [0x329],0x0
00001B27  743F              jz 0x1b68
00001B29  A02F03            mov al,[0x32f]
00001B2C  B400              mov ah,0x0
00001B2E  8BF8              mov di,ax
00001B30  80BD2303FE        cmp byte [di+0x323],0xfe
00001B35  7427              jz 0x1b5e
00001B37  FE0E2903          dec byte [0x329]
00001B3B  7561              jnz 0x1b9e
00001B3D  51                push cx
00001B3E  B90600            mov cx,0x6
00001B41  BF0000            mov di,0x0
00001B44  B000              mov al,0x0
00001B46  80BD2303FF        cmp byte [di+0x323],0xff
00001B4B  7402              jz 0x1b4f
00001B4D  FEC0              inc al
00001B4F  47                inc di
00001B50  E2F4              loop 0x1b46
00001B52  59                pop cx
00001B53  3C01              cmp al,0x1
00001B55  7507              jnz 0x1b5e
00001B57  C606290360        mov byte [0x329],0x60
00001B5C  EB40              jmp short 0x1b9e
00001B5E  A02A03            mov al,[0x32a]
00001B61  E661              out 0x61,al
00001B63  C606290300        mov byte [0x329],0x0
00001B68  803E560300        cmp byte [0x356],0x0
00001B6D  753F              jnz 0x1bae
00001B6F  803E470300        cmp byte [0x347],0x0
00001B74  7538              jnz 0x1bae
00001B76  A02F03            mov al,[0x32f]
00001B79  B400              mov ah,0x0
00001B7B  3C05              cmp al,0x5
00001B7D  7502              jnz 0x1b81
00001B7F  B0FF              mov al,0xff
00001B81  FEC0              inc al
00001B83  A22F03            mov [0x32f],al
00001B86  8BF8              mov di,ax
00001B88  80BD2303FF        cmp byte [di+0x323],0xff
00001B8D  741F              jz 0x1bae
00001B8F  80BD2303FE        cmp byte [di+0x323],0xfe
00001B94  7503              jnz 0x1b99
00001B96  E81800            call 0x1bb1
00001B99  E83000            call 0x1bcc
00001B9C  EB10              jmp short 0x1bae
00001B9E  A02F03            mov al,[0x32f]
00001BA1  B400              mov ah,0x0
00001BA3  8BF8              mov di,ax
00001BA5  FE8D1D03          dec byte [di+0x31d]
00001BA9  7503              jnz 0x1bae
00001BAB  E84F00            call 0x1bfd
00001BAE  5F                pop di
00001BAF  58                pop ax
00001BB0  C3                ret
00001BB1  50                push ax
00001BB2  53                push bx
00001BB3  D1E7              shl di,1
00001BB5  8B9D8015          mov bx,[di+0x1580]
00001BB9  899D5B03          mov [di+0x35b],bx
00001BBD  8A07              mov al,[bx]
00001BBF  D1EF              shr di,1
00001BC1  88852303          mov [di+0x323],al
00001BC5  88851D03          mov [di+0x31d],al
00001BC9  5B                pop bx
00001BCA  58                pop ax
00001BCB  C3                ret
00001BCC  50                push ax
00001BCD  51                push cx
00001BCE  57                push di
00001BCF  E461              in al,0x61
00001BD1  A22A03            mov [0x32a],al
00001BD4  C606290360        mov byte [0x329],0x60
00001BD9  D1E7              shl di,1
00001BDB  8BBD5B03          mov di,[di+0x35b]
00001BDF  807D01FF          cmp byte [di+0x1],0xff
00001BE3  7414              jz 0x1bf9
00001BE5  B0B6              mov al,0xb6
00001BE7  E643              out 0x43,al
00001BE9  8A4502            mov al,[di+0x2]
00001BEC  E642              out 0x42,al
00001BEE  8A4501            mov al,[di+0x1]
00001BF1  E642              out 0x42,al
00001BF3  E461              in al,0x61
00001BF5  0C03              or al,0x3
00001BF7  E661              out 0x61,al
00001BF9  5F                pop di
00001BFA  59                pop cx
00001BFB  58                pop ax
00001BFC  C3                ret
00001BFD  50                push ax
00001BFE  53                push bx
00001BFF  57                push di
00001C00  8BDF              mov bx,di
00001C02  D1E3              shl bx,1
00001C04  8B9F5B03          mov bx,[bx+0x35b]
00001C08  8A6701            mov ah,[bx+0x1]
00001C0B  83C303            add bx,byte +0x3
00001C0E  803F00            cmp byte [bx],0x0
00001C11  742A              jz 0x1c3d
00001C13  8A07              mov al,[bx]
00001C15  88851D03          mov [di+0x31d],al
00001C19  D1E7              shl di,1
00001C1B  899D5B03          mov [di+0x35b],bx
00001C1F  807F01FF          cmp byte [bx+0x1],0xff
00001C23  7422              jz 0x1c47
00001C25  8A4702            mov al,[bx+0x2]
00001C28  E642              out 0x42,al
00001C2A  8A4701            mov al,[bx+0x1]
00001C2D  E642              out 0x42,al
00001C2F  80FCFF            cmp ah,0xff
00001C32  7518              jnz 0x1c4c
00001C34  A02A03            mov al,[0x32a]
00001C37  0C03              or al,0x3
00001C39  E661              out 0x61,al
00001C3B  EB0F              jmp short 0x1c4c
00001C3D  C6852303FF        mov byte [di+0x323],0xff
00001C42  C606290300        mov byte [0x329],0x0
00001C47  A02A03            mov al,[0x32a]
00001C4A  E661              out 0x61,al
00001C4C  5F                pop di
00001C4D  5B                pop bx
00001C4E  58                pop ax
00001C4F  C3                ret
00001C50  0000              add [bx+si],al
00001C52  0000              add [bx+si],al
00001C54  0000              add [bx+si],al
00001C56  0000              add [bx+si],al
00001C58  0000              add [bx+si],al
00001C5A  0000              add [bx+si],al
00001C5C  0000              add [bx+si],al
00001C5E  0000              add [bx+si],al
00001C60  0000              add [bx+si],al
00001C62  0000              add [bx+si],al
00001C64  0000              add [bx+si],al
00001C66  0000              add [bx+si],al
00001C68  0000              add [bx+si],al
00001C6A  0000              add [bx+si],al
00001C6C  0000              add [bx+si],al
00001C6E  0000              add [bx+si],al
00001C70  0000              add [bx+si],al
00001C72  0000              add [bx+si],al
00001C74  0000              add [bx+si],al
00001C76  0000              add [bx+si],al
00001C78  0000              add [bx+si],al
00001C7A  0000              add [bx+si],al
00001C7C  0000              add [bx+si],al
00001C7E  0000              add [bx+si],al
00001C80  0000              add [bx+si],al
00001C82  0000              add [bx+si],al
00001C84  0000              add [bx+si],al
00001C86  0000              add [bx+si],al
00001C88  0000              add [bx+si],al
00001C8A  0000              add [bx+si],al
00001C8C  0000              add [bx+si],al
00001C8E  0000              add [bx+si],al
00001C90  0000              add [bx+si],al
00001C92  0000              add [bx+si],al
00001C94  0000              add [bx+si],al
00001C96  0000              add [bx+si],al
00001C98  0000              add [bx+si],al
00001C9A  0000              add [bx+si],al
00001C9C  0000              add [bx+si],al
00001C9E  0000              add [bx+si],al
00001CA0  0000              add [bx+si],al
00001CA2  0000              add [bx+si],al
00001CA4  0000              add [bx+si],al
00001CA6  0000              add [bx+si],al
00001CA8  0000              add [bx+si],al
00001CAA  0000              add [bx+si],al
00001CAC  0000              add [bx+si],al
00001CAE  0000              add [bx+si],al
00001CB0  0000              add [bx+si],al
00001CB2  0000              add [bx+si],al
00001CB4  0000              add [bx+si],al
00001CB6  0000              add [bx+si],al
00001CB8  0000              add [bx+si],al
00001CBA  0000              add [bx+si],al
00001CBC  0000              add [bx+si],al
00001CBE  0000              add [bx+si],al
00001CC0  0000              add [bx+si],al
00001CC2  0000              add [bx+si],al
00001CC4  0000              add [bx+si],al
00001CC6  0000              add [bx+si],al
00001CC8  0000              add [bx+si],al
00001CCA  0000              add [bx+si],al
00001CCC  0000              add [bx+si],al
00001CCE  0000              add [bx+si],al
00001CD0  0000              add [bx+si],al
00001CD2  0000              add [bx+si],al
00001CD4  0000              add [bx+si],al
00001CD6  0000              add [bx+si],al
00001CD8  0000              add [bx+si],al
00001CDA  0000              add [bx+si],al
00001CDC  0000              add [bx+si],al
00001CDE  0000              add [bx+si],al
00001CE0  0000              add [bx+si],al
00001CE2  0000              add [bx+si],al
00001CE4  0000              add [bx+si],al
00001CE6  0000              add [bx+si],al
00001CE8  0000              add [bx+si],al
00001CEA  0000              add [bx+si],al
00001CEC  0000              add [bx+si],al
00001CEE  0000              add [bx+si],al
00001CF0  0000              add [bx+si],al
00001CF2  0000              add [bx+si],al
00001CF4  0000              add [bx+si],al
00001CF6  0000              add [bx+si],al
00001CF8  0000              add [bx+si],al
00001CFA  0000              add [bx+si],al
00001CFC  0000              add [bx+si],al
00001CFE  0000              add [bx+si],al
00001D00  0000              add [bx+si],al
00001D02  0000              add [bx+si],al
00001D04  0000              add [bx+si],al
00001D06  0000              add [bx+si],al
00001D08  0000              add [bx+si],al
00001D0A  0000              add [bx+si],al
00001D0C  0000              add [bx+si],al
00001D0E  0000              add [bx+si],al
00001D10  0000              add [bx+si],al
00001D12  0000              add [bx+si],al
00001D14  0000              add [bx+si],al
00001D16  0000              add [bx+si],al
00001D18  0000              add [bx+si],al
00001D1A  0000              add [bx+si],al
00001D1C  0000              add [bx+si],al
00001D1E  0000              add [bx+si],al
00001D20  50                push ax
00001D21  51                push cx
00001D22  57                push di
00001D23  803E4703FF        cmp byte [0x347],0xff
00001D28  7444              jz 0x1d6e
00001D2A  B400              mov ah,0x0
00001D2C  D1E0              shl ax,1
00001D2E  D1E0              shl ax,1
00001D30  D1E0              shl ax,1
00001D32  D1E0              shl ax,1
00001D34  0AC0              or al,al
00001D36  B90300            mov cx,0x3
00001D39  BF0200            mov di,0x2
00001D3C  12853D03          adc al,[di+0x33d]
00001D40  27                daa
00001D41  88853A03          mov [di+0x33a],al
00001D45  8AC4              mov al,ah
00001D47  B400              mov ah,0x0
00001D49  4F                dec di
00001D4A  E2F0              loop 0x1d3c
00001D4C  A03E03            mov al,[0x33e]
00001D4F  24F0              and al,0xf0
00001D51  3C90              cmp al,0x90
00001D53  7404              jz 0x1d59
00001D55  3C40              cmp al,0x40
00001D57  750B              jnz 0x1d64
00001D59  A03B03            mov al,[0x33b]
00001D5C  24F0              and al,0xf0
00001D5E  3C00              cmp al,0x0
00001D60  7402              jz 0x1d64
00001D62  3C50              cmp al,0x50
00001D64  9C                pushf
00001D65  E80A00            call 0x1d72
00001D68  9D                popf
00001D69  7503              jnz 0x1d6e
00001D6B  E84500            call 0x1db3
00001D6E  5F                pop di
00001D6F  59                pop cx
00001D70  58                pop ax
00001D71  C3                ret
00001D72  50                push ax
00001D73  53                push bx
00001D74  51                push cx
00001D75  52                push dx
00001D76  57                push di
00001D77  B86100            mov ax,0x61
00001D7A  BB2D00            mov bx,0x2d
00001D7D  8D0E3D03          lea cx,[0x33d]
00001D81  BA0300            mov dx,0x3
00001D84  E85300            call 0x1dda
00001D87  BF0200            mov di,0x2
00001D8A  0AC0              or al,al
00001D8C  B90300            mov cx,0x3
00001D8F  8A854003          mov al,[di+0x340]
00001D93  1A853D03          sbb al,[di+0x33d]
00001D97  2F                das
00001D98  4F                dec di
00001D99  E2F4              loop 0x1d8f
00001D9B  7310              jnc 0x1dad
00001D9D  B86100            mov ax,0x61
00001DA0  BB6D00            mov bx,0x6d
00001DA3  8D0E4003          lea cx,[0x340]
00001DA7  BA0300            mov dx,0x3
00001DAA  E82D00            call 0x1dda
00001DAD  5F                pop di
00001DAE  5A                pop dx
00001DAF  59                pop cx
00001DB0  5B                pop bx
00001DB1  58                pop ax
00001DB2  C3                ret
00001DB3  50                push ax
00001DB4  53                push bx
00001DB5  51                push cx
00001DB6  52                push dx
00001DB7  A04303            mov al,[0x343]
00001DBA  0401              add al,0x1
00001DBC  37                aaa
00001DBD  A23A03            mov [0x33a],al
00001DC0  B87100            mov ax,0x71
00001DC3  BBAD00            mov bx,0xad
00001DC6  8D0E4303          lea cx,[0x343]
00001DCA  BA0100            mov dx,0x1
00001DCD  E80A00            call 0x1dda
00001DD0  C6062803FE        mov byte [0x328],0xfe
00001DD5  5A                pop dx
00001DD6  59                pop cx
00001DD7  5B                pop bx
00001DD8  58                pop ax
00001DD9  C3                ret
00001DDA  50                push ax
00001DDB  53                push bx
00001DDC  51                push cx
00001DDD  52                push dx
00001DDE  57                push di
00001DDF  56                push si
00001DE0  8BF9              mov di,cx
00001DE2  8D363A03          lea si,[0x33a]
00001DE6  8BCB              mov cx,bx
00001DE8  8BD8              mov bx,ax
00001DEA  8A05              mov al,[di]
00001DEC  803E4603FF        cmp byte [0x346],0xff
00001DF1  7407              jz 0x1dfa
00001DF3  3A04              cmp al,[si]
00001DF5  740A              jz 0x1e01
00001DF7  E81600            call 0x1e10
00001DFA  8A04              mov al,[si]
00001DFC  E81100            call 0x1e10
00001DFF  8805              mov [di],al
00001E01  83C310            add bx,byte +0x10
00001E04  47                inc di
00001E05  46                inc si
00001E06  4A                dec dx
00001E07  75E1              jnz 0x1dea
00001E09  5E                pop si
00001E0A  5F                pop di
00001E0B  5A                pop dx
00001E0C  59                pop cx
00001E0D  5B                pop bx
00001E0E  58                pop ax
00001E0F  C3                ret
00001E10  50                push ax
00001E11  53                push bx
00001E12  8AE0              mov ah,al
00001E14  D0E8              shr al,1
00001E16  D0E8              shr al,1
00001E18  D0E8              shr al,1
00001E1A  D0E8              shr al,1
00001E1C  E80D00            call 0x1e2c
00001E1F  83C308            add bx,byte +0x8
00001E22  8AC4              mov al,ah
00001E24  240F              and al,0xf
00001E26  E80300            call 0x1e2c
00001E29  5B                pop bx
00001E2A  58                pop ax
00001E2B  C3                ret
00001E2C  50                push ax
00001E2D  53                push bx
00001E2E  51                push cx
00001E2F  57                push di
00001E30  B400              mov ah,0x0
00001E32  D1E0              shl ax,1
00001E34  8BF8              mov di,ax
00001E36  A13603            mov ax,[0x336]
00001E39  057E00            add ax,0x7e
00001E3C  03C3              add ax,bx
00001E3E  8BD9              mov bx,cx
00001E40  031E3803          add bx,[0x338]
00001E44  8B8D0015          mov cx,[di+0x1500]
00001E48  E8F7EF            call 0xe42
00001E4B  5F                pop di
00001E4C  59                pop cx
00001E4D  5B                pop bx
00001E4E  58                pop ax
00001E4F  C3                ret
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
00001E80  0000              add [bx+si],al
00001E82  0000              add [bx+si],al
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
00001E9A  0000              add [bx+si],al
00001E9C  0000              add [bx+si],al
00001E9E  0000              add [bx+si],al
00001EA0  0000              add [bx+si],al
00001EA2  0000              add [bx+si],al
00001EA4  0000              add [bx+si],al
00001EA6  0000              add [bx+si],al
00001EA8  0000              add [bx+si],al
00001EAA  0000              add [bx+si],al
00001EAC  0000              add [bx+si],al
00001EAE  0000              add [bx+si],al
00001EB0  0000              add [bx+si],al
00001EB2  0000              add [bx+si],al
00001EB4  0000              add [bx+si],al
00001EB6  0000              add [bx+si],al
00001EB8  0000              add [bx+si],al
00001EBA  0000              add [bx+si],al
00001EBC  0000              add [bx+si],al
00001EBE  0000              add [bx+si],al
00001EC0  0000              add [bx+si],al
00001EC2  0000              add [bx+si],al
00001EC4  0000              add [bx+si],al
00001EC6  0000              add [bx+si],al
00001EC8  0000              add [bx+si],al
00001ECA  0000              add [bx+si],al
00001ECC  0000              add [bx+si],al
00001ECE  0000              add [bx+si],al
00001ED0  0000              add [bx+si],al
00001ED2  0000              add [bx+si],al
00001ED4  0000              add [bx+si],al
00001ED6  0000              add [bx+si],al
00001ED8  0000              add [bx+si],al
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
00001EFE  0000              add [bx+si],al
00001F00  0000              add [bx+si],al
00001F02  0000              add [bx+si],al
00001F04  0000              add [bx+si],al
00001F06  0000              add [bx+si],al
00001F08  0000              add [bx+si],al
00001F0A  0000              add [bx+si],al
00001F0C  0000              add [bx+si],al
00001F0E  0000              add [bx+si],al
00001F10  0000              add [bx+si],al
00001F12  0000              add [bx+si],al
00001F14  0000              add [bx+si],al
00001F16  0000              add [bx+si],al
00001F18  0000              add [bx+si],al
00001F1A  0000              add [bx+si],al
00001F1C  0000              add [bx+si],al
00001F1E  0000              add [bx+si],al
00001F20  52                push dx
00001F21  51                push cx
00001F22  53                push bx
00001F23  8AE8              mov ch,al
00001F25  BA0102            mov dx,0x201
00001F28  EC                in al,dx
00001F29  B88000            mov ax,0x80
00001F2C  BB0000            mov bx,0x0
00001F2F  0AED              or ch,ch
00001F31  7510              jnz 0x1f43
00001F33  EE                out dx,al
00001F34  EC                in al,dx
00001F35  E84600            call 0x1f7e
00001F38  80FF00            cmp bh,0x0
00001F3B  7514              jnz 0x1f51
00001F3D  A801              test al,0x1
00001F3F  75F3              jnz 0x1f34
00001F41  EB0E              jmp short 0x1f51
00001F43  EE                out dx,al
00001F44  EC                in al,dx
00001F45  E83600            call 0x1f7e
00001F48  80FF00            cmp bh,0x0
00001F4B  7504              jnz 0x1f51
00001F4D  A802              test al,0x2
00001F4F  75F3              jnz 0x1f44
00001F51  83FB04            cmp bx,byte +0x4
00001F54  7303              jnc 0x1f59
00001F56  BB0000            mov bx,0x0
00001F59  D1E3              shl bx,1
00001F5B  D1E3              shl bx,1
00001F5D  0AFF              or bh,bh
00001F5F  750C              jnz 0x1f6d
00001F61  F6C380            test bl,0x80
00001F64  7403              jz 0x1f69
00001F66  83C310            add bx,byte +0x10
00001F69  0AFF              or bh,bh
00001F6B  7402              jz 0x1f6f
00001F6D  B3FF              mov bl,0xff
00001F6F  EC                in al,dx
00001F70  A810              test al,0x10
00001F72  B400              mov ah,0x0
00001F74  7502              jnz 0x1f78
00001F76  FECC              dec ah
00001F78  8AC3              mov al,bl
00001F7A  5B                pop bx
00001F7B  59                pop cx
00001F7C  5A                pop dx
00001F7D  C3                ret
00001F7E  43                inc bx
00001F7F  B90400            mov cx,0x4
00001F82  E2FE              loop 0x1f82
00001F84  C3                ret
00001F85  0000              add [bx+si],al
00001F87  0000              add [bx+si],al
00001F89  0000              add [bx+si],al
00001F8B  0000              add [bx+si],al
00001F8D  0000              add [bx+si],al
00001F8F  0000              add [bx+si],al
00001F91  0000              add [bx+si],al
00001F93  0000              add [bx+si],al
00001F95  0000              add [bx+si],al
00001F97  0000              add [bx+si],al
00001F99  0000              add [bx+si],al
00001F9B  0000              add [bx+si],al
00001F9D  0000              add [bx+si],al
00001F9F  0000              add [bx+si],al
00001FA1  0000              add [bx+si],al
00001FA3  0000              add [bx+si],al
00001FA5  0000              add [bx+si],al
00001FA7  0000              add [bx+si],al
00001FA9  0000              add [bx+si],al
00001FAB  0000              add [bx+si],al
00001FAD  0000              add [bx+si],al
00001FAF  0000              add [bx+si],al
00001FB1  0000              add [bx+si],al
00001FB3  0000              add [bx+si],al
00001FB5  0000              add [bx+si],al
00001FB7  0000              add [bx+si],al
00001FB9  0000              add [bx+si],al
00001FBB  0000              add [bx+si],al
00001FBD  0000              add [bx+si],al
00001FBF  0000              add [bx+si],al
00001FC1  0000              add [bx+si],al
00001FC3  0000              add [bx+si],al
00001FC5  0000              add [bx+si],al
00001FC7  0000              add [bx+si],al
00001FC9  0000              add [bx+si],al
00001FCB  0000              add [bx+si],al
00001FCD  0000              add [bx+si],al
00001FCF  0000              add [bx+si],al
00001FD1  0000              add [bx+si],al
00001FD3  0000              add [bx+si],al
00001FD5  0000              add [bx+si],al
00001FD7  0000              add [bx+si],al
00001FD9  0000              add [bx+si],al
00001FDB  0000              add [bx+si],al
00001FDD  0000              add [bx+si],al
00001FDF  0000              add [bx+si],al
00001FE1  0000              add [bx+si],al
00001FE3  0000              add [bx+si],al
00001FE5  0000              add [bx+si],al
00001FE7  0000              add [bx+si],al
00001FE9  0000              add [bx+si],al
00001FEB  0000              add [bx+si],al
00001FED  0000              add [bx+si],al
00001FEF  0000              add [bx+si],al
00001FF1  0000              add [bx+si],al
00001FF3  0000              add [bx+si],al
00001FF5  0000              add [bx+si],al
00001FF7  0000              add [bx+si],al
00001FF9  0000              add [bx+si],al
00001FFB  0000              add [bx+si],al
00001FFD  0000              add [bx+si],al
00001FFF  0000              add [bx+si],al
00002001  0000              add [bx+si],al
00002003  0000              add [bx+si],al
00002005  0000              add [bx+si],al
00002007  0000              add [bx+si],al
00002009  0000              add [bx+si],al
0000200B  0000              add [bx+si],al
0000200D  0000              add [bx+si],al
0000200F  0000              add [bx+si],al
00002011  0000              add [bx+si],al
00002013  0000              add [bx+si],al
00002015  0000              add [bx+si],al
00002017  0000              add [bx+si],al
00002019  0000              add [bx+si],al
0000201B  0000              add [bx+si],al
0000201D  0000              add [bx+si],al
0000201F  005053            add [bx+si+0x53],dl
00002022  51                push cx
00002023  52                push dx
00002024  803E4703FF        cmp byte [0x347],0xff
00002029  743E              jz 0x2069
0000202B  803E290300        cmp byte [0x329],0x0
00002030  7405              jz 0x2037
00002032  A02A03            mov al,[0x32a]
00002035  E661              out 0x61,al
00002037  B84300            mov ax,0x43
0000203A  03063603          add ax,[0x336]
0000203E  BB5900            mov bx,0x59
00002041  031E3803          add bx,[0x338]
00002045  B65C              mov dh,0x5c
00002047  B20F              mov dl,0xf
00002049  E871EE            call 0xebd
0000204C  B84B00            mov ax,0x4b
0000204F  03063603          add ax,[0x336]
00002053  BB5E00            mov bx,0x5e
00002056  031E3803          add bx,[0x338]
0000205A  8D0E0009          lea cx,[0x900]
0000205E  E8E1ED            call 0xe42
00002061  B048              mov al,0x48
00002063  E82F00            call 0x2095
00002066  E8B700            call 0x2120
00002069  5A                pop dx
0000206A  59                pop cx
0000206B  5B                pop bx
0000206C  58                pop ax
0000206D  C3                ret
0000206E  50                push ax
0000206F  53                push bx
00002070  51                push cx
00002071  52                push dx
00002072  A04303            mov al,[0x343]
00002075  2C01              sub al,0x1
00002077  2F                das
00002078  A23A03            mov [0x33a],al
0000207B  C6062703FE        mov byte [0x327],0xfe
00002080  B87100            mov ax,0x71
00002083  BBAD00            mov bx,0xad
00002086  8D0E4303          lea cx,[0x343]
0000208A  BA0100            mov dx,0x1
0000208D  E84AFD            call 0x1dda
00002090  5A                pop dx
00002091  59                pop cx
00002092  5B                pop bx
00002093  58                pop ax
00002094  C3                ret
00002095  50                push ax
00002096  53                push bx
00002097  BBFF1F            mov bx,0x1fff
0000209A  4B                dec bx
0000209B  75FD              jnz 0x209a
0000209D  FEC8              dec al
0000209F  75F6              jnz 0x2097
000020A1  5B                pop bx
000020A2  58                pop ax
000020A3  C3                ret
000020A4  50                push ax
000020A5  53                push bx
000020A6  56                push si
000020A7  8D360001          lea si,[0x100]
000020AB  8A1E0103          mov bl,[0x301]
000020AF  89361903          mov [0x319],si
000020B3  80BC040004        cmp byte [si+0x4],0x4
000020B8  7411              jz 0x20cb
000020BA  80BC040006        cmp byte [si+0x4],0x6
000020BF  7207              jc 0x20c8
000020C1  80BC0B0000        cmp byte [si+0xb],0x0
000020C6  7403              jz 0x20cb
000020C8  E846F9            call 0x1a11
000020CB  83C60C            add si,byte +0xc
000020CE  FECB              dec bl
000020D0  75DD              jnz 0x20af
000020D2  803E550306        cmp byte [0x355],0x6
000020D7  7403              jz 0x20dc
000020D9  E802F9            call 0x19de
000020DC  803E0B03FF        cmp byte [0x30b],0xff
000020E1  7503              jnz 0x20e6
000020E3  E88DF8            call 0x1973
000020E6  803E050300        cmp byte [0x305],0x0
000020EB  751B              jnz 0x2108
000020ED  8D360002          lea si,[0x200]
000020F1  B003              mov al,0x3
000020F3  89361703          mov [0x317],si
000020F7  80BC040005        cmp byte [si+0x4],0x5
000020FC  7403              jz 0x2101
000020FE  E81FF8            call 0x1920
00002101  83C608            add si,byte +0x8
00002104  FEC8              dec al
00002106  79EB              jns 0x20f3
00002108  C6064A03FF        mov byte [0x34a],0xff
0000210D  E81000            call 0x2120
00002110  803E290300        cmp byte [0x329],0x0
00002115  7405              jz 0x211c
00002117  A02A03            mov al,[0x32a]
0000211A  E661              out 0x61,al
0000211C  5E                pop si
0000211D  5B                pop bx
0000211E  58                pop ax
0000211F  C3                ret
00002120  50                push ax
00002121  E820EB            call 0xc44
00002124  80FCFF            cmp ah,0xff
00002127  74F8              jz 0x2121
00002129  58                pop ax
0000212A  C3                ret
0000212B  0000              add [bx+si],al
0000212D  0000              add [bx+si],al
0000212F  0000              add [bx+si],al
00002131  0000              add [bx+si],al
00002133  0000              add [bx+si],al
00002135  0000              add [bx+si],al
00002137  0000              add [bx+si],al
00002139  0000              add [bx+si],al
0000213B  0000              add [bx+si],al
0000213D  0000              add [bx+si],al
0000213F  0000              add [bx+si],al
00002141  0000              add [bx+si],al
00002143  0000              add [bx+si],al
00002145  0000              add [bx+si],al
00002147  0000              add [bx+si],al
00002149  0000              add [bx+si],al
0000214B  0000              add [bx+si],al
0000214D  0000              add [bx+si],al
0000214F  0000              add [bx+si],al
00002151  0000              add [bx+si],al
00002153  0000              add [bx+si],al
00002155  0000              add [bx+si],al
00002157  0000              add [bx+si],al
00002159  0000              add [bx+si],al
0000215B  0000              add [bx+si],al
0000215D  0000              add [bx+si],al
0000215F  0000              add [bx+si],al
00002161  0000              add [bx+si],al
00002163  0000              add [bx+si],al
00002165  0000              add [bx+si],al
00002167  0000              add [bx+si],al
00002169  0000              add [bx+si],al
0000216B  0000              add [bx+si],al
0000216D  0000              add [bx+si],al
0000216F  0000              add [bx+si],al
00002171  0000              add [bx+si],al
00002173  0000              add [bx+si],al
00002175  0000              add [bx+si],al
00002177  0000              add [bx+si],al
00002179  0000              add [bx+si],al
0000217B  0000              add [bx+si],al
0000217D  0000              add [bx+si],al
0000217F  0000              add [bx+si],al
00002181  0000              add [bx+si],al
00002183  0000              add [bx+si],al
00002185  0000              add [bx+si],al
00002187  0000              add [bx+si],al
00002189  0000              add [bx+si],al
0000218B  0000              add [bx+si],al
0000218D  0000              add [bx+si],al
0000218F  0000              add [bx+si],al
00002191  0000              add [bx+si],al
00002193  0000              add [bx+si],al
00002195  0000              add [bx+si],al
00002197  0000              add [bx+si],al
00002199  0000              add [bx+si],al
0000219B  0000              add [bx+si],al
0000219D  0000              add [bx+si],al
0000219F  0000              add [bx+si],al
000021A1  0000              add [bx+si],al
000021A3  0000              add [bx+si],al
000021A5  0000              add [bx+si],al
000021A7  0000              add [bx+si],al
000021A9  0000              add [bx+si],al
000021AB  0000              add [bx+si],al
000021AD  0000              add [bx+si],al
000021AF  0000              add [bx+si],al
000021B1  0000              add [bx+si],al
000021B3  0000              add [bx+si],al
000021B5  0000              add [bx+si],al
000021B7  0000              add [bx+si],al
000021B9  0000              add [bx+si],al
000021BB  0000              add [bx+si],al
000021BD  0000              add [bx+si],al
000021BF  0000              add [bx+si],al
000021C1  0000              add [bx+si],al
000021C3  0000              add [bx+si],al
000021C5  0000              add [bx+si],al
000021C7  0000              add [bx+si],al
000021C9  0000              add [bx+si],al
000021CB  0000              add [bx+si],al
000021CD  0000              add [bx+si],al
000021CF  0000              add [bx+si],al
000021D1  0000              add [bx+si],al
000021D3  0000              add [bx+si],al
000021D5  0000              add [bx+si],al
000021D7  0000              add [bx+si],al
000021D9  0000              add [bx+si],al
000021DB  0000              add [bx+si],al
000021DD  0000              add [bx+si],al
000021DF  0000              add [bx+si],al
000021E1  0000              add [bx+si],al
000021E3  0000              add [bx+si],al
000021E5  0000              add [bx+si],al
000021E7  0000              add [bx+si],al
000021E9  0000              add [bx+si],al
000021EB  0000              add [bx+si],al
000021ED  0000              add [bx+si],al
000021EF  0000              add [bx+si],al
000021F1  0000              add [bx+si],al
000021F3  0000              add [bx+si],al
000021F5  0000              add [bx+si],al
000021F7  0000              add [bx+si],al
000021F9  0000              add [bx+si],al
000021FB  0000              add [bx+si],al
000021FD  0000              add [bx+si],al
000021FF  0000              add [bx+si],al
00002201  0000              add [bx+si],al
00002203  0000              add [bx+si],al
00002205  0000              add [bx+si],al
00002207  0000              add [bx+si],al
00002209  0000              add [bx+si],al
0000220B  0000              add [bx+si],al
0000220D  0000              add [bx+si],al
0000220F  0000              add [bx+si],al
00002211  0000              add [bx+si],al
00002213  0000              add [bx+si],al
00002215  0000              add [bx+si],al
00002217  0000              add [bx+si],al
00002219  0000              add [bx+si],al
0000221B  0000              add [bx+si],al
0000221D  0000              add [bx+si],al
0000221F  0000              add [bx+si],al
00002221  0000              add [bx+si],al
00002223  0000              add [bx+si],al
00002225  0000              add [bx+si],al
00002227  0000              add [bx+si],al
00002229  0000              add [bx+si],al
0000222B  0000              add [bx+si],al
0000222D  0000              add [bx+si],al
0000222F  0000              add [bx+si],al
00002231  0000              add [bx+si],al
00002233  0000              add [bx+si],al
00002235  0000              add [bx+si],al
00002237  0000              add [bx+si],al
00002239  0000              add [bx+si],al
0000223B  0000              add [bx+si],al
0000223D  0000              add [bx+si],al
0000223F  0000              add [bx+si],al
00002241  0000              add [bx+si],al
00002243  0000              add [bx+si],al
00002245  0000              add [bx+si],al
00002247  0000              add [bx+si],al
00002249  0000              add [bx+si],al
0000224B  0000              add [bx+si],al
0000224D  0000              add [bx+si],al
0000224F  0000              add [bx+si],al
00002251  0000              add [bx+si],al
00002253  0000              add [bx+si],al
00002255  0000              add [bx+si],al
00002257  0000              add [bx+si],al
00002259  0000              add [bx+si],al
0000225B  0000              add [bx+si],al
0000225D  0000              add [bx+si],al
0000225F  0000              add [bx+si],al
00002261  0000              add [bx+si],al
00002263  0000              add [bx+si],al
00002265  0000              add [bx+si],al
00002267  0000              add [bx+si],al
00002269  0000              add [bx+si],al
0000226B  0000              add [bx+si],al
0000226D  0000              add [bx+si],al
0000226F  0000              add [bx+si],al
00002271  0000              add [bx+si],al
00002273  0000              add [bx+si],al
00002275  0000              add [bx+si],al
00002277  0000              add [bx+si],al
00002279  0000              add [bx+si],al
0000227B  0000              add [bx+si],al
0000227D  0000              add [bx+si],al
0000227F  0000              add [bx+si],al
00002281  0000              add [bx+si],al
00002283  0000              add [bx+si],al
00002285  0000              add [bx+si],al
00002287  0000              add [bx+si],al
00002289  0000              add [bx+si],al
0000228B  0000              add [bx+si],al
0000228D  0000              add [bx+si],al
0000228F  0000              add [bx+si],al
00002291  0000              add [bx+si],al
00002293  0000              add [bx+si],al
00002295  0000              add [bx+si],al
00002297  0000              add [bx+si],al
00002299  0000              add [bx+si],al
0000229B  0000              add [bx+si],al
0000229D  0000              add [bx+si],al
0000229F  0000              add [bx+si],al
000022A1  0000              add [bx+si],al
000022A3  0000              add [bx+si],al
000022A5  0000              add [bx+si],al
000022A7  0000              add [bx+si],al
000022A9  0000              add [bx+si],al
000022AB  0000              add [bx+si],al
000022AD  0000              add [bx+si],al
000022AF  0000              add [bx+si],al
000022B1  0000              add [bx+si],al
000022B3  0000              add [bx+si],al
000022B5  0000              add [bx+si],al
000022B7  0000              add [bx+si],al
000022B9  0000              add [bx+si],al
000022BB  0000              add [bx+si],al
000022BD  0000              add [bx+si],al
000022BF  0000              add [bx+si],al
000022C1  0000              add [bx+si],al
000022C3  0000              add [bx+si],al
000022C5  0000              add [bx+si],al
000022C7  0000              add [bx+si],al
000022C9  0000              add [bx+si],al
000022CB  0000              add [bx+si],al
000022CD  0000              add [bx+si],al
000022CF  0000              add [bx+si],al
000022D1  0000              add [bx+si],al
000022D3  0000              add [bx+si],al
000022D5  0000              add [bx+si],al
000022D7  0000              add [bx+si],al
000022D9  0000              add [bx+si],al
000022DB  0000              add [bx+si],al
000022DD  0000              add [bx+si],al
000022DF  0000              add [bx+si],al
000022E1  0000              add [bx+si],al
000022E3  0000              add [bx+si],al
000022E5  0000              add [bx+si],al
000022E7  0000              add [bx+si],al
000022E9  0000              add [bx+si],al
000022EB  0000              add [bx+si],al
000022ED  0000              add [bx+si],al
000022EF  0000              add [bx+si],al
000022F1  0000              add [bx+si],al
000022F3  0000              add [bx+si],al
000022F5  0000              add [bx+si],al
000022F7  0000              add [bx+si],al
000022F9  0000              add [bx+si],al
000022FB  0000              add [bx+si],al
000022FD  0000              add [bx+si],al
000022FF  0000              add [bx+si],al
00002301  0000              add [bx+si],al
00002303  0000              add [bx+si],al
00002305  0000              add [bx+si],al
00002307  0000              add [bx+si],al
00002309  0000              add [bx+si],al
0000230B  0000              add [bx+si],al
0000230D  0000              add [bx+si],al
0000230F  0000              add [bx+si],al
00002311  0000              add [bx+si],al
00002313  0000              add [bx+si],al
00002315  0000              add [bx+si],al
00002317  0000              add [bx+si],al
00002319  0000              add [bx+si],al
0000231B  0000              add [bx+si],al
0000231D  0000              add [bx+si],al
0000231F  0000              add [bx+si],al
00002321  0000              add [bx+si],al
00002323  0000              add [bx+si],al
00002325  0000              add [bx+si],al
00002327  0000              add [bx+si],al
00002329  0000              add [bx+si],al
0000232B  0000              add [bx+si],al
0000232D  0000              add [bx+si],al
0000232F  0000              add [bx+si],al
00002331  0000              add [bx+si],al
00002333  0000              add [bx+si],al
00002335  0000              add [bx+si],al
00002337  0000              add [bx+si],al
00002339  0000              add [bx+si],al
0000233B  0000              add [bx+si],al
0000233D  0000              add [bx+si],al
0000233F  0000              add [bx+si],al
00002341  0000              add [bx+si],al
00002343  0000              add [bx+si],al
00002345  0000              add [bx+si],al
00002347  0000              add [bx+si],al
00002349  0000              add [bx+si],al
0000234B  0000              add [bx+si],al
0000234D  0000              add [bx+si],al
0000234F  0000              add [bx+si],al
00002351  0000              add [bx+si],al
00002353  0000              add [bx+si],al
00002355  0000              add [bx+si],al
00002357  0000              add [bx+si],al
00002359  0000              add [bx+si],al
0000235B  0000              add [bx+si],al
0000235D  0000              add [bx+si],al
0000235F  0000              add [bx+si],al
00002361  0000              add [bx+si],al
00002363  0000              add [bx+si],al
00002365  0000              add [bx+si],al
00002367  0000              add [bx+si],al
00002369  0000              add [bx+si],al
0000236B  0000              add [bx+si],al
0000236D  0000              add [bx+si],al
0000236F  0000              add [bx+si],al
00002371  0000              add [bx+si],al
00002373  0000              add [bx+si],al
00002375  0000              add [bx+si],al
00002377  0000              add [bx+si],al
00002379  0000              add [bx+si],al
0000237B  0000              add [bx+si],al
0000237D  0000              add [bx+si],al
0000237F  0000              add [bx+si],al
00002381  0000              add [bx+si],al
00002383  0000              add [bx+si],al
00002385  0000              add [bx+si],al
00002387  0000              add [bx+si],al
00002389  0000              add [bx+si],al
0000238B  0000              add [bx+si],al
0000238D  0000              add [bx+si],al
0000238F  0000              add [bx+si],al
00002391  0000              add [bx+si],al
00002393  0000              add [bx+si],al
00002395  0000              add [bx+si],al
00002397  0000              add [bx+si],al
00002399  0000              add [bx+si],al
0000239B  0000              add [bx+si],al
0000239D  0000              add [bx+si],al
0000239F  0000              add [bx+si],al
000023A1  0000              add [bx+si],al
000023A3  0000              add [bx+si],al
000023A5  0000              add [bx+si],al
000023A7  0000              add [bx+si],al
000023A9  0000              add [bx+si],al
000023AB  0000              add [bx+si],al
000023AD  0000              add [bx+si],al
000023AF  0000              add [bx+si],al
000023B1  0000              add [bx+si],al
000023B3  0000              add [bx+si],al
000023B5  0000              add [bx+si],al
000023B7  0000              add [bx+si],al
000023B9  0000              add [bx+si],al
000023BB  0000              add [bx+si],al
000023BD  0000              add [bx+si],al
000023BF  0000              add [bx+si],al
000023C1  0000              add [bx+si],al
000023C3  0000              add [bx+si],al
000023C5  0000              add [bx+si],al
000023C7  0000              add [bx+si],al
000023C9  0000              add [bx+si],al
000023CB  0000              add [bx+si],al
000023CD  0000              add [bx+si],al
000023CF  0000              add [bx+si],al
000023D1  0000              add [bx+si],al
000023D3  0000              add [bx+si],al
000023D5  0000              add [bx+si],al
000023D7  0000              add [bx+si],al
000023D9  0000              add [bx+si],al
000023DB  0000              add [bx+si],al
000023DD  0000              add [bx+si],al
000023DF  0000              add [bx+si],al
000023E1  0000              add [bx+si],al
000023E3  0000              add [bx+si],al
000023E5  0000              add [bx+si],al
000023E7  0000              add [bx+si],al
000023E9  0000              add [bx+si],al
000023EB  0000              add [bx+si],al
000023ED  0000              add [bx+si],al
000023EF  0000              add [bx+si],al
000023F1  0000              add [bx+si],al
000023F3  0000              add [bx+si],al
000023F5  0000              add [bx+si],al
000023F7  0000              add [bx+si],al
000023F9  0000              add [bx+si],al
000023FB  0000              add [bx+si],al
000023FD  0000              add [bx+si],al
000023FF  0000              add [bx+si],al
00002401  0000              add [bx+si],al
00002403  0000              add [bx+si],al
00002405  0000              add [bx+si],al
00002407  0000              add [bx+si],al
00002409  0000              add [bx+si],al
0000240B  0000              add [bx+si],al
0000240D  0000              add [bx+si],al
0000240F  0000              add [bx+si],al
00002411  0000              add [bx+si],al
00002413  0000              add [bx+si],al
00002415  0000              add [bx+si],al
00002417  0000              add [bx+si],al
00002419  0000              add [bx+si],al
0000241B  0000              add [bx+si],al
0000241D  0000              add [bx+si],al
0000241F  0000              add [bx+si],al
00002421  0000              add [bx+si],al
00002423  0000              add [bx+si],al
00002425  0000              add [bx+si],al
00002427  0000              add [bx+si],al
00002429  0000              add [bx+si],al
0000242B  0000              add [bx+si],al
0000242D  0000              add [bx+si],al
0000242F  0000              add [bx+si],al
00002431  0000              add [bx+si],al
00002433  0000              add [bx+si],al
00002435  0000              add [bx+si],al
00002437  0000              add [bx+si],al
00002439  0000              add [bx+si],al
0000243B  0000              add [bx+si],al
0000243D  0000              add [bx+si],al
0000243F  0000              add [bx+si],al
00002441  0000              add [bx+si],al
00002443  0000              add [bx+si],al
00002445  0000              add [bx+si],al
00002447  0000              add [bx+si],al
00002449  0000              add [bx+si],al
0000244B  0000              add [bx+si],al
0000244D  0000              add [bx+si],al
0000244F  0000              add [bx+si],al
00002451  0000              add [bx+si],al
00002453  0000              add [bx+si],al
00002455  0000              add [bx+si],al
00002457  0000              add [bx+si],al
00002459  0000              add [bx+si],al
0000245B  0000              add [bx+si],al
0000245D  0000              add [bx+si],al
0000245F  0000              add [bx+si],al
00002461  0000              add [bx+si],al
00002463  0000              add [bx+si],al
00002465  0000              add [bx+si],al
00002467  0000              add [bx+si],al
00002469  0000              add [bx+si],al
0000246B  0000              add [bx+si],al
0000246D  0000              add [bx+si],al
0000246F  0000              add [bx+si],al
00002471  0000              add [bx+si],al
00002473  0000              add [bx+si],al
00002475  0000              add [bx+si],al
00002477  0000              add [bx+si],al
00002479  0000              add [bx+si],al
0000247B  0000              add [bx+si],al
0000247D  0000              add [bx+si],al
0000247F  0000              add [bx+si],al
00002481  0000              add [bx+si],al
00002483  0000              add [bx+si],al
00002485  0000              add [bx+si],al
00002487  0000              add [bx+si],al
00002489  0000              add [bx+si],al
0000248B  0000              add [bx+si],al
0000248D  0000              add [bx+si],al
0000248F  0000              add [bx+si],al
00002491  0000              add [bx+si],al
00002493  0000              add [bx+si],al
00002495  0000              add [bx+si],al
00002497  0000              add [bx+si],al
00002499  0000              add [bx+si],al
0000249B  0000              add [bx+si],al
0000249D  0000              add [bx+si],al
0000249F  0000              add [bx+si],al
000024A1  0000              add [bx+si],al
000024A3  0000              add [bx+si],al
000024A5  0000              add [bx+si],al
000024A7  0000              add [bx+si],al
000024A9  0000              add [bx+si],al
000024AB  0000              add [bx+si],al
000024AD  0000              add [bx+si],al
000024AF  0000              add [bx+si],al
000024B1  0000              add [bx+si],al
000024B3  0000              add [bx+si],al
000024B5  0000              add [bx+si],al
000024B7  0000              add [bx+si],al
000024B9  0000              add [bx+si],al
000024BB  0000              add [bx+si],al
000024BD  0000              add [bx+si],al
000024BF  0000              add [bx+si],al
000024C1  0000              add [bx+si],al
000024C3  0000              add [bx+si],al
000024C5  0000              add [bx+si],al
000024C7  0000              add [bx+si],al
000024C9  0000              add [bx+si],al
000024CB  0000              add [bx+si],al
000024CD  0000              add [bx+si],al
000024CF  0000              add [bx+si],al
000024D1  0000              add [bx+si],al
000024D3  0000              add [bx+si],al
000024D5  0000              add [bx+si],al
000024D7  0000              add [bx+si],al
000024D9  0000              add [bx+si],al
000024DB  0000              add [bx+si],al
000024DD  0000              add [bx+si],al
000024DF  0000              add [bx+si],al
000024E1  0000              add [bx+si],al
000024E3  0000              add [bx+si],al
000024E5  0000              add [bx+si],al
000024E7  0000              add [bx+si],al
000024E9  0000              add [bx+si],al
000024EB  0000              add [bx+si],al
000024ED  0000              add [bx+si],al
000024EF  0000              add [bx+si],al
000024F1  0000              add [bx+si],al
000024F3  0000              add [bx+si],al
000024F5  0000              add [bx+si],al
000024F7  0000              add [bx+si],al
000024F9  0000              add [bx+si],al
000024FB  0000              add [bx+si],al
000024FD  0000              add [bx+si],al
000024FF  0000              add [bx+si],al
00002501  0000              add [bx+si],al
00002503  0000              add [bx+si],al
00002505  0000              add [bx+si],al
00002507  0000              add [bx+si],al
00002509  0000              add [bx+si],al
0000250B  0000              add [bx+si],al
0000250D  0000              add [bx+si],al
0000250F  0000              add [bx+si],al
00002511  0000              add [bx+si],al
00002513  0000              add [bx+si],al
00002515  0000              add [bx+si],al
00002517  0000              add [bx+si],al
00002519  0000              add [bx+si],al
0000251B  0000              add [bx+si],al
0000251D  0000              add [bx+si],al
0000251F  00060000          add [0x0],al
00002523  0000              add [bx+si],al
00002525  0000              add [bx+si],al
00002527  0000              add [bx+si],al
00002529  0000              add [bx+si],al
0000252B  0000              add [bx+si],al
0000252D  0000              add [bx+si],al
0000252F  0000              add [bx+si],al
00002531  0000              add [bx+si],al
00002533  0000              add [bx+si],al
00002535  0000              add [bx+si],al
00002537  0000              add [bx+si],al
00002539  0000              add [bx+si],al
0000253B  0000              add [bx+si],al
0000253D  0000              add [bx+si],al
0000253F  0000              add [bx+si],al
00002541  0000              add [bx+si],al
00002543  0000              add [bx+si],al
00002545  0000              add [bx+si],al
00002547  0000              add [bx+si],al
00002549  0000              add [bx+si],al
0000254B  0000              add [bx+si],al
0000254D  0000              add [bx+si],al
0000254F  0000              add [bx+si],al
00002551  0000              add [bx+si],al
00002553  0000              add [bx+si],al
00002555  002D              add [di],ch
00002557  0007              add [bx],al
00002559  0000              add [bx+si],al
0000255B  0000              add [bx+si],al
0000255D  0000              add [bx+si],al
0000255F  0000              add [bx+si],al
00002561  0000              add [bx+si],al
00002563  0000              add [bx+si],al
00002565  0000              add [bx+si],al
00002567  0000              add [bx+si],al
00002569  0000              add [bx+si],al
0000256B  0000              add [bx+si],al
0000256D  0000              add [bx+si],al
0000256F  0000              add [bx+si],al
00002571  0000              add [bx+si],al
00002573  0000              add [bx+si],al
00002575  0000              add [bx+si],al
00002577  0000              add [bx+si],al
00002579  0000              add [bx+si],al
0000257B  0000              add [bx+si],al
0000257D  0000              add [bx+si],al
0000257F  0000              add [bx+si],al
00002581  0000              add [bx+si],al
00002583  0000              add [bx+si],al
00002585  0000              add [bx+si],al
00002587  0000              add [bx+si],al
00002589  0000              add [bx+si],al
0000258B  0000              add [bx+si],al
0000258D  0000              add [bx+si],al
0000258F  0000              add [bx+si],al
00002591  0000              add [bx+si],al
00002593  0000              add [bx+si],al
00002595  0000              add [bx+si],al
00002597  0000              add [bx+si],al
00002599  0000              add [bx+si],al
0000259B  0000              add [bx+si],al
0000259D  0000              add [bx+si],al
0000259F  0000              add [bx+si],al
000025A1  0000              add [bx+si],al
000025A3  0000              add [bx+si],al
000025A5  0000              add [bx+si],al
000025A7  0000              add [bx+si],al
000025A9  0000              add [bx+si],al
000025AB  0000              add [bx+si],al
000025AD  0000              add [bx+si],al
000025AF  0000              add [bx+si],al
000025B1  0000              add [bx+si],al
000025B3  0000              add [bx+si],al
000025B5  0000              add [bx+si],al
000025B7  0000              add [bx+si],al
000025B9  0000              add [bx+si],al
000025BB  0000              add [bx+si],al
000025BD  0000              add [bx+si],al
000025BF  0000              add [bx+si],al
000025C1  0000              add [bx+si],al
000025C3  0000              add [bx+si],al
000025C5  0000              add [bx+si],al
000025C7  0000              add [bx+si],al
000025C9  0000              add [bx+si],al
000025CB  0000              add [bx+si],al
000025CD  0000              add [bx+si],al
000025CF  0000              add [bx+si],al
000025D1  0000              add [bx+si],al
000025D3  0000              add [bx+si],al
000025D5  0000              add [bx+si],al
000025D7  0000              add [bx+si],al
000025D9  0000              add [bx+si],al
000025DB  0000              add [bx+si],al
000025DD  0000              add [bx+si],al
000025DF  0000              add [bx+si],al
000025E1  0000              add [bx+si],al
000025E3  0000              add [bx+si],al
000025E5  0000              add [bx+si],al
000025E7  0000              add [bx+si],al
000025E9  0000              add [bx+si],al
000025EB  0000              add [bx+si],al
000025ED  0000              add [bx+si],al
000025EF  0000              add [bx+si],al
000025F1  0000              add [bx+si],al
000025F3  0000              add [bx+si],al
000025F5  0000              add [bx+si],al
000025F7  0000              add [bx+si],al
000025F9  0000              add [bx+si],al
000025FB  0000              add [bx+si],al
000025FD  0000              add [bx+si],al
000025FF  0000              add [bx+si],al
00002601  0000              add [bx+si],al
00002603  0000              add [bx+si],al
00002605  0000              add [bx+si],al
00002607  0000              add [bx+si],al
00002609  0000              add [bx+si],al
0000260B  0000              add [bx+si],al
0000260D  0000              add [bx+si],al
0000260F  0000              add [bx+si],al
00002611  0000              add [bx+si],al
00002613  0000              add [bx+si],al
00002615  0000              add [bx+si],al
00002617  0000              add [bx+si],al
00002619  0000              add [bx+si],al
0000261B  0000              add [bx+si],al
0000261D  0000              add [bx+si],al
0000261F  0004              add [si],al
00002621  0900              or [bx+si],ax
00002623  0C00              or al,0x0
00002625  0000              add [bx+si],al
00002627  3300              xor ax,[bx+si]
00002629  0030              add [bx+si],dh
0000262B  3303              xor ax,[bp+di]
0000262D  00CC              add ah,cl
0000262F  330C              xor cx,[si]
00002631  C0CFCC            ror bh,0xcc
00002634  FC                cld
00002635  C0CC33            ror ah,0x33
00002638  0CC0              or al,0xc0
0000263A  3033              xor [bp+di],dh
0000263C  0300              add ax,[bx+si]
0000263E  0033              add [bp+di],dh
00002640  0000              add [bx+si],al
00002642  000C              add [si],cl
00002644  0000              add [bx+si],al
00002646  0000              add [bx+si],al
00002648  0000              add [bx+si],al
0000264A  0000              add [bx+si],al
0000264C  0000              add [bx+si],al
0000264E  0000              add [bx+si],al
00002650  0000              add [bx+si],al
00002652  0000              add [bx+si],al
00002654  0000              add [bx+si],al
00002656  0000              add [bx+si],al
00002658  0000              add [bx+si],al
0000265A  0000              add [bx+si],al
0000265C  0000              add [bx+si],al
0000265E  0000              add [bx+si],al
00002660  0000              add [bx+si],al
00002662  0000              add [bx+si],al
00002664  0000              add [bx+si],al
00002666  0000              add [bx+si],al
00002668  0000              add [bx+si],al
0000266A  0000              add [bx+si],al
0000266C  0000              add [bx+si],al
0000266E  0000              add [bx+si],al
00002670  040B              add al,0xb
00002672  0000              add [bx+si],al
00002674  0000              add [bx+si],al
00002676  0000              add [bx+si],al
00002678  0000              add [bx+si],al
0000267A  000C              add [si],cl
0000267C  0000              add [bx+si],al
0000267E  00CC              add ah,cl
00002680  C00003            rol byte [bx+si],0x3
00002683  3330              xor si,[bx+si]
00002685  000C              add [si],cl
00002687  000C              add [si],cl
00002689  00CC              add ah,cl
0000268B  F3CC              rep int3
0000268D  C00C00            ror byte [si],0x0
00002690  0C00              or al,0x0
00002692  0333              add si,[bp+di]
00002694  3000              xor [bx+si],al
00002696  00CC              add ah,cl
00002698  C00000            rol byte [bx+si],0x0
0000269B  0C00              or al,0x0
0000269D  0000              add [bx+si],al
0000269F  0000              add [bx+si],al
000026A1  0000              add [bx+si],al
000026A3  0000              add [bx+si],al
000026A5  0000              add [bx+si],al
000026A7  0000              add [bx+si],al
000026A9  0000              add [bx+si],al
000026AB  0000              add [bx+si],al
000026AD  0000              add [bx+si],al
000026AF  0000              add [bx+si],al
000026B1  0000              add [bx+si],al
000026B3  0000              add [bx+si],al
000026B5  0000              add [bx+si],al
000026B7  0000              add [bx+si],al
000026B9  0000              add [bx+si],al
000026BB  0000              add [bx+si],al
000026BD  0000              add [bx+si],al
000026BF  0004              add [si],al
000026C1  0C0C              or al,0xc
000026C3  000C              add [si],cl
000026C5  00C0              add al,al
000026C7  0000              add [bx+si],al
000026C9  C0C000            rol al,0x0
000026CC  00C0              add al,al
000026CE  C00C00            ror byte [si],0x0
000026D1  C0                db 0xC0
000026D2  3033              xor [bp+di],dh
000026D4  0300              add ax,[bx+si]
000026D6  0333              add si,[bp+di]
000026D8  0000              add [bx+si],al
000026DA  0033              add [bp+di],dh
000026DC  3000              xor [bx+si],al
000026DE  33CC              xor cx,sp
000026E0  F300C0            rep add al,al
000026E3  0000              add [bx+si],al
000026E5  C00033            rol byte [bx+si],0x33
000026E8  0000              add [bx+si],al
000026EA  C00C00            ror byte [si],0x0
000026ED  C0                db 0xC0
000026EE  3000              xor [bx+si],al
000026F0  0300              add ax,[bx+si]
000026F2  0000              add [bx+si],al
000026F4  0000              add [bx+si],al
000026F6  0000              add [bx+si],al
000026F8  0000              add [bx+si],al
000026FA  0000              add [bx+si],al
000026FC  0000              add [bx+si],al
000026FE  0000              add [bx+si],al
00002700  0000              add [bx+si],al
00002702  0000              add [bx+si],al
00002704  0000              add [bx+si],al
00002706  0000              add [bx+si],al
00002708  0000              add [bx+si],al
0000270A  0000              add [bx+si],al
0000270C  0000              add [bx+si],al
0000270E  0000              add [bx+si],al
00002710  040D              add al,0xd
00002712  3C00              cmp al,0x0
00002714  0F000F            str [bx]
00002717  333C              xor di,[si]
00002719  0003              add [bp+di],al
0000271B  3330              xor si,[bx+si]
0000271D  0033              add [bp+di],dh
0000271F  3333              xor si,[bp+di]
00002721  0030              add [bx+si],dh
00002723  0C03              or al,0x3
00002725  00C3              add bl,al
00002727  C0                db 0xC0
00002728  F0                db 0xF0
00002729  C0                db 0xC0
0000272A  300C              xor [si],cl
0000272C  0300              add ax,[bx+si]
0000272E  3333              xor si,[bp+di]
00002730  3300              xor ax,[bx+si]
00002732  0333              add si,[bp+di]
00002734  3000              xor [bx+si],al
00002736  00C0              add al,al
00002738  C00000            rol byte [bx+si],0x0
0000273B  C0C000            rol al,0x0
0000273E  0CC0              or al,0xc0
00002740  CC                int3
00002741  000C              add [si],cl
00002743  C0CC00            ror ah,0x0
00002746  0000              add [bx+si],al
00002748  0000              add [bx+si],al
0000274A  0000              add [bx+si],al
0000274C  0000              add [bx+si],al
0000274E  0000              add [bx+si],al
00002750  0000              add [bx+si],al
00002752  0000              add [bx+si],al
00002754  0000              add [bx+si],al
00002756  0000              add [bx+si],al
00002758  0000              add [bx+si],al
0000275A  0000              add [bx+si],al
0000275C  0000              add [bx+si],al
0000275E  0000              add [bx+si],al
00002760  040D              add al,0xd
00002762  000C              add [si],cl
00002764  0000              add [bx+si],al
00002766  0033              add [bp+di],dh
00002768  0000              add [bx+si],al
0000276A  0C0C              or al,0xc
0000276C  0C00              or al,0x0
0000276E  030C              add cx,[si]
00002770  3000              xor [bx+si],al
00002772  03CC              add cx,sp
00002774  F0000C            lock add [si],cl
00002777  330C              xor cx,[si]
00002779  00F0              add al,dh
0000277B  0C03              or al,0x3
0000277D  C00C33            ror byte [si],0x33
00002780  0C00              or al,0x0
00002782  03CC              add cx,sp
00002784  F00003            lock add [bp+di],al
00002787  3330              xor si,[bx+si]
00002789  000C              add [si],cl
0000278B  C0CC00            ror ah,0x0
0000278E  0033              add [bp+di],dh
00002790  0000              add [bx+si],al
00002792  000C              add [si],cl
00002794  0000              add [bx+si],al
00002796  0000              add [bx+si],al
00002798  0000              add [bx+si],al
0000279A  0000              add [bx+si],al
0000279C  0000              add [bx+si],al
0000279E  0000              add [bx+si],al
000027A0  0000              add [bx+si],al
000027A2  0000              add [bx+si],al
000027A4  0000              add [bx+si],al
000027A6  0000              add [bx+si],al
000027A8  0000              add [bx+si],al
000027AA  0000              add [bx+si],al
000027AC  0000              add [bx+si],al
000027AE  0000              add [bx+si],al
000027B0  040A              add al,0xa
000027B2  3300              xor ax,[bx+si]
000027B4  0000              add [bx+si],al
000027B6  0330              add si,[bx+si]
000027B8  3000              xor [bx+si],al
000027BA  0033              add [bp+di],dh
000027BC  3300              xor ax,[bx+si]
000027BE  0033              add [bp+di],dh
000027C0  33C0              xor ax,ax
000027C2  3333              xor si,[bp+di]
000027C4  C000F3            rol byte [bx+si],0xf3
000027C7  3330              xor si,[bx+si]
000027C9  0003              add [bp+di],al
000027CB  0330              add si,[bx+si]
000027CD  0000              add [bx+si],al
000027CF  0033              add [bp+di],dh
000027D1  0000              add [bx+si],al
000027D3  0033              add [bp+di],dh
000027D5  0000              add [bx+si],al
000027D7  0003              add [bp+di],al
000027D9  0000              add [bx+si],al
000027DB  0000              add [bx+si],al
000027DD  0000              add [bx+si],al
000027DF  0000              add [bx+si],al
000027E1  0000              add [bx+si],al
000027E3  0000              add [bx+si],al
000027E5  0000              add [bx+si],al
000027E7  0000              add [bx+si],al
000027E9  0000              add [bx+si],al
000027EB  0000              add [bx+si],al
000027ED  0000              add [bx+si],al
000027EF  0000              add [bx+si],al
000027F1  0000              add [bx+si],al
000027F3  0000              add [bx+si],al
000027F5  0000              add [bx+si],al
000027F7  0000              add [bx+si],al
000027F9  0000              add [bx+si],al
000027FB  0000              add [bx+si],al
000027FD  0000              add [bx+si],al
000027FF  0004              add [si],al
00002801  0A00              or al,[bx+si]
00002803  0033              add [bp+di],dh
00002805  0003              add [bp+di],al
00002807  0330              add si,[bx+si]
00002809  0033              add [bp+di],dh
0000280B  3300              xor ax,[bx+si]
0000280D  00F3              add bl,dh
0000280F  3300              xor ax,[bx+si]
00002811  0000              add [bx+si],al
00002813  F33300            rep xor ax,[bx+si]
00002816  0333              add si,[bp+di]
00002818  33C0              xor ax,ax
0000281A  0330              add si,[bx+si]
0000281C  3000              xor [bx+si],al
0000281E  3300              xor ax,[bx+si]
00002820  0000              add [bx+si],al
00002822  3300              xor ax,[bx+si]
00002824  0000              add [bx+si],al
00002826  3000              xor [bx+si],al
00002828  0000              add [bx+si],al
0000282A  0000              add [bx+si],al
0000282C  0000              add [bx+si],al
0000282E  0000              add [bx+si],al
00002830  0000              add [bx+si],al
00002832  0000              add [bx+si],al
00002834  0000              add [bx+si],al
00002836  0000              add [bx+si],al
00002838  0000              add [bx+si],al
0000283A  0000              add [bx+si],al
0000283C  0000              add [bx+si],al
0000283E  0000              add [bx+si],al
00002840  0000              add [bx+si],al
00002842  0000              add [bx+si],al
00002844  0000              add [bx+si],al
00002846  0000              add [bx+si],al
00002848  0000              add [bx+si],al
0000284A  0000              add [bx+si],al
0000284C  0000              add [bx+si],al
0000284E  0000              add [bx+si],al
00002850  030C              add cx,[si]
00002852  3030              xor [bx+si],dh
00002854  0003              add [bp+di],al
00002856  3300              xor ax,[bx+si]
00002858  0333              add si,[bp+di]
0000285A  0000              add [bx+si],al
0000285C  3300              xor ax,[bx+si]
0000285E  0333              add si,[bp+di]
00002860  3303              xor ax,[bp+di]
00002862  3330              xor si,[bx+si]
00002864  0033              add [bp+di],dh
00002866  0033              add [bp+di],dh
00002868  3300              xor ax,[bx+si]
0000286A  3333              xor si,[bp+di]
0000286C  0000              add [bx+si],al
0000286E  3300              xor ax,[bx+si]
00002870  0030              add [bx+si],dh
00002872  0000              add [bx+si],al
00002874  0300              add ax,[bx+si]
00002876  0000              add [bx+si],al
00002878  0000              add [bx+si],al
0000287A  0000              add [bx+si],al
0000287C  0000              add [bx+si],al
0000287E  0000              add [bx+si],al
00002880  0000              add [bx+si],al
00002882  0000              add [bx+si],al
00002884  0000              add [bx+si],al
00002886  0000              add [bx+si],al
00002888  0000              add [bx+si],al
0000288A  0000              add [bx+si],al
0000288C  0000              add [bx+si],al
0000288E  0000              add [bx+si],al
00002890  0000              add [bx+si],al
00002892  0000              add [bx+si],al
00002894  0000              add [bx+si],al
00002896  0000              add [bx+si],al
00002898  0000              add [bx+si],al
0000289A  0000              add [bx+si],al
0000289C  0000              add [bx+si],al
0000289E  0000              add [bx+si],al
000028A0  0101              add [bx+di],ax
000028A2  C00000            rol byte [bx+si],0x0
000028A5  0000              add [bx+si],al
000028A7  0000              add [bx+si],al
000028A9  0000              add [bx+si],al
000028AB  0000              add [bx+si],al
000028AD  0000              add [bx+si],al
000028AF  0000              add [bx+si],al
000028B1  0000              add [bx+si],al
000028B3  0000              add [bx+si],al
000028B5  0000              add [bx+si],al
000028B7  0000              add [bx+si],al
000028B9  0000              add [bx+si],al
000028BB  0000              add [bx+si],al
000028BD  0000              add [bx+si],al
000028BF  0000              add [bx+si],al
000028C1  0000              add [bx+si],al
000028C3  0000              add [bx+si],al
000028C5  0000              add [bx+si],al
000028C7  0000              add [bx+si],al
000028C9  0000              add [bx+si],al
000028CB  0000              add [bx+si],al
000028CD  0000              add [bx+si],al
000028CF  0000              add [bx+si],al
000028D1  0000              add [bx+si],al
000028D3  0000              add [bx+si],al
000028D5  0000              add [bx+si],al
000028D7  0000              add [bx+si],al
000028D9  0000              add [bx+si],al
000028DB  0000              add [bx+si],al
000028DD  0000              add [bx+si],al
000028DF  0000              add [bx+si],al
000028E1  0000              add [bx+si],al
000028E3  0000              add [bx+si],al
000028E5  0000              add [bx+si],al
000028E7  0000              add [bx+si],al
000028E9  0000              add [bx+si],al
000028EB  0000              add [bx+si],al
000028ED  0000              add [bx+si],al
000028EF  0004              add [si],al
000028F1  0D003F            or ax,0x3f00
000028F4  0000              add [bx+si],al
000028F6  0000              add [bx+si],al
000028F8  0000              add [bx+si],al
000028FA  0000              add [bx+si],al
000028FC  0000              add [bx+si],al
000028FE  0000              add [bx+si],al
00002900  0000              add [bx+si],al
00002902  0000              add [bx+si],al
00002904  0000              add [bx+si],al
00002906  0000              add [bx+si],al
00002908  0000              add [bx+si],al
0000290A  FC                cld
0000290B  000F              add [bx],cl
0000290D  C00000            rol byte [bx+si],0x0
00002910  0000              add [bx+si],al
00002912  0000              add [bx+si],al
00002914  0000              add [bx+si],al
00002916  0000              add [bx+si],al
00002918  0000              add [bx+si],al
0000291A  0000              add [bx+si],al
0000291C  0000              add [bx+si],al
0000291E  0000              add [bx+si],al
00002920  0000              add [bx+si],al
00002922  003F              add [bx],bh
00002924  0000              add [bx+si],al
00002926  0000              add [bx+si],al
00002928  0000              add [bx+si],al
0000292A  0000              add [bx+si],al
0000292C  0000              add [bx+si],al
0000292E  0000              add [bx+si],al
00002930  0000              add [bx+si],al
00002932  0000              add [bx+si],al
00002934  0000              add [bx+si],al
00002936  0000              add [bx+si],al
00002938  0000              add [bx+si],al
0000293A  0000              add [bx+si],al
0000293C  0000              add [bx+si],al
0000293E  0000              add [bx+si],al
00002940  0309              add cx,[bx+di]
00002942  0030              add [bx+si],dh
00002944  0000              add [bx+si],al
00002946  3000              xor [bx+si],al
00002948  0333              add si,[bp+di]
0000294A  0033              add [bp+di],dh
0000294C  3330              xor si,[bx+si]
0000294E  03FF              add di,di
00002950  0033              add [bp+di],dh
00002952  3330              xor si,[bx+si]
00002954  0333              add si,[bp+di]
00002956  0000              add [bx+si],al
00002958  3000              xor [bx+si],al
0000295A  0030              add [bx+si],dh
0000295C  0000              add [bx+si],al
0000295E  0000              add [bx+si],al
00002960  0000              add [bx+si],al
00002962  0000              add [bx+si],al
00002964  0000              add [bx+si],al
00002966  0000              add [bx+si],al
00002968  0000              add [bx+si],al
0000296A  0000              add [bx+si],al
0000296C  0000              add [bx+si],al
0000296E  0000              add [bx+si],al
00002970  0000              add [bx+si],al
00002972  0000              add [bx+si],al
00002974  0000              add [bx+si],al
00002976  0000              add [bx+si],al
00002978  0000              add [bx+si],al
0000297A  0000              add [bx+si],al
0000297C  0000              add [bx+si],al
0000297E  0000              add [bx+si],al
00002980  0000              add [bx+si],al
00002982  0000              add [bx+si],al
00002984  0000              add [bx+si],al
00002986  0000              add [bx+si],al
00002988  0000              add [bx+si],al
0000298A  0000              add [bx+si],al
0000298C  0000              add [bx+si],al
0000298E  0000              add [bx+si],al
00002990  05063C            add ax,0x3c06
00002993  03F0              add si,ax
00002995  0FC0FC            xadd ah,bh
00002998  0F                db 0x0F
00002999  3C3C              cmp al,0x3c
0000299B  F03C0F            lock cmp al,0xf
0000299E  3C3C              cmp al,0x3c
000029A0  F03C0F            lock cmp al,0xf
000029A3  3C3C              cmp al,0x3c
000029A5  F03C0F            lock cmp al,0xf
000029A8  3C3C              cmp al,0x3c
000029AA  F0FF03            lock inc word [bp+di]
000029AD  F00FC000          lock xadd [bx+si],al
000029B1  0000              add [bx+si],al
000029B3  0000              add [bx+si],al
000029B5  0000              add [bx+si],al
000029B7  0000              add [bx+si],al
000029B9  0000              add [bx+si],al
000029BB  0000              add [bx+si],al
000029BD  0000              add [bx+si],al
000029BF  0000              add [bx+si],al
000029C1  0000              add [bx+si],al
000029C3  0000              add [bx+si],al
000029C5  0000              add [bx+si],al
000029C7  0000              add [bx+si],al
000029C9  0000              add [bx+si],al
000029CB  0000              add [bx+si],al
000029CD  0000              add [bx+si],al
000029CF  0000              add [bx+si],al
000029D1  0000              add [bx+si],al
000029D3  0000              add [bx+si],al
000029D5  0000              add [bx+si],al
000029D7  0000              add [bx+si],al
000029D9  0000              add [bx+si],al
000029DB  0000              add [bx+si],al
000029DD  0000              add [bx+si],al
000029DF  0005              add [di],al
000029E1  06                push es
000029E2  FF00              inc word [bx+si]
000029E4  FC                cld
000029E5  03F0              add si,ax
000029E7  C3                ret
000029E8  C3                ret
000029E9  CF                iret
000029EA  0F                db 0x0F
000029EB  3C0F              cmp al,0xf
000029ED  C3                ret
000029EE  CF                iret
000029EF  0F                db 0x0F
000029F0  3C3C              cmp al,0x3c
000029F2  03CF              add cx,di
000029F4  0F                db 0x0F
000029F5  3CF0              cmp al,0xf0
000029F7  03CF              add cx,di
000029F9  0F                db 0x0F
000029FA  3CFF              cmp al,0xff
000029FC  C0FC03            sar ah,0x3
000029FF  F00000            lock add [bx+si],al
00002A02  0000              add [bx+si],al
00002A04  0000              add [bx+si],al
00002A06  0000              add [bx+si],al
00002A08  0000              add [bx+si],al
00002A0A  0000              add [bx+si],al
00002A0C  0000              add [bx+si],al
00002A0E  0000              add [bx+si],al
00002A10  0000              add [bx+si],al
00002A12  0000              add [bx+si],al
00002A14  0000              add [bx+si],al
00002A16  0000              add [bx+si],al
00002A18  0000              add [bx+si],al
00002A1A  0000              add [bx+si],al
00002A1C  0000              add [bx+si],al
00002A1E  0000              add [bx+si],al
00002A20  0000              add [bx+si],al
00002A22  0000              add [bx+si],al
00002A24  0000              add [bx+si],al
00002A26  0000              add [bx+si],al
00002A28  0000              add [bx+si],al
00002A2A  0000              add [bx+si],al
00002A2C  0000              add [bx+si],al
00002A2E  0000              add [bx+si],al
00002A30  0506F3            add ax,0xf306
00002A33  C0FC03            sar ah,0x3
00002A36  F0F3C3            lock rep ret
00002A39  CF                iret
00002A3A  0F                db 0x0F
00002A3B  3CF3              cmp al,0xf3
00002A3D  C3                ret
00002A3E  CF                iret
00002A3F  0F                db 0x0F
00002A40  3CFF              cmp al,0xff
00002A42  F3CF              rep iret
00002A44  0F                db 0x0F
00002A45  3C03              cmp al,0x3
00002A47  C3                ret
00002A48  CF                iret
00002A49  0F                db 0x0F
00002A4A  3C03              cmp al,0x3
00002A4C  C0FC03            sar ah,0x3
00002A4F  F00000            lock add [bx+si],al
00002A52  0000              add [bx+si],al
00002A54  0000              add [bx+si],al
00002A56  0000              add [bx+si],al
00002A58  0000              add [bx+si],al
00002A5A  0000              add [bx+si],al
00002A5C  0000              add [bx+si],al
00002A5E  0000              add [bx+si],al
00002A60  0000              add [bx+si],al
00002A62  0000              add [bx+si],al
00002A64  0000              add [bx+si],al
00002A66  0000              add [bx+si],al
00002A68  0000              add [bx+si],al
00002A6A  0000              add [bx+si],al
00002A6C  0000              add [bx+si],al
00002A6E  0000              add [bx+si],al
00002A70  0000              add [bx+si],al
00002A72  0000              add [bx+si],al
00002A74  0000              add [bx+si],al
00002A76  0000              add [bx+si],al
00002A78  0000              add [bx+si],al
00002A7A  0000              add [bx+si],al
00002A7C  0000              add [bx+si],al
00002A7E  0000              add [bx+si],al
00002A80  05063F            add ax,0x3f06
00002A83  00FC              add ah,bh
00002A85  03F0              add si,ax
00002A87  F3C3              rep ret
00002A89  CF                iret
00002A8A  0F                db 0x0F
00002A8B  3C3F              cmp al,0x3f
00002A8D  03CF              add cx,di
00002A8F  0F                db 0x0F
00002A90  3C3F              cmp al,0x3f
00002A92  03CF              add cx,di
00002A94  0F                db 0x0F
00002A95  3CF3              cmp al,0xf3
00002A97  C3                ret
00002A98  CF                iret
00002A99  0F                db 0x0F
00002A9A  3C3F              cmp al,0x3f
00002A9C  00FC              add ah,bh
00002A9E  03F0              add si,ax
00002AA0  0000              add [bx+si],al
00002AA2  0000              add [bx+si],al
00002AA4  0000              add [bx+si],al
00002AA6  0000              add [bx+si],al
00002AA8  0000              add [bx+si],al
00002AAA  0000              add [bx+si],al
00002AAC  0000              add [bx+si],al
00002AAE  0000              add [bx+si],al
00002AB0  0000              add [bx+si],al
00002AB2  0000              add [bx+si],al
00002AB4  0000              add [bx+si],al
00002AB6  0000              add [bx+si],al
00002AB8  0000              add [bx+si],al
00002ABA  0000              add [bx+si],al
00002ABC  0000              add [bx+si],al
00002ABE  0000              add [bx+si],al
00002AC0  0000              add [bx+si],al
00002AC2  0000              add [bx+si],al
00002AC4  0000              add [bx+si],al
00002AC6  0000              add [bx+si],al
00002AC8  0000              add [bx+si],al
00002ACA  0000              add [bx+si],al
00002ACC  0000              add [bx+si],al
00002ACE  0000              add [bx+si],al
00002AD0  0000              add [bx+si],al
00002AD2  0000              add [bx+si],al
00002AD4  0000              add [bx+si],al
00002AD6  0000              add [bx+si],al
00002AD8  0000              add [bx+si],al
00002ADA  0000              add [bx+si],al
00002ADC  0000              add [bx+si],al
00002ADE  0000              add [bx+si],al
00002AE0  0000              add [bx+si],al
00002AE2  0000              add [bx+si],al
00002AE4  0000              add [bx+si],al
00002AE6  0000              add [bx+si],al
00002AE8  0000              add [bx+si],al
00002AEA  0000              add [bx+si],al
00002AEC  0000              add [bx+si],al
00002AEE  0000              add [bx+si],al
00002AF0  0000              add [bx+si],al
00002AF2  0000              add [bx+si],al
00002AF4  0000              add [bx+si],al
00002AF6  0000              add [bx+si],al
00002AF8  0000              add [bx+si],al
00002AFA  0000              add [bx+si],al
00002AFC  0000              add [bx+si],al
00002AFE  0000              add [bx+si],al
00002B00  0000              add [bx+si],al
00002B02  0000              add [bx+si],al
00002B04  0000              add [bx+si],al
00002B06  0000              add [bx+si],al
00002B08  0000              add [bx+si],al
00002B0A  0000              add [bx+si],al
00002B0C  0000              add [bx+si],al
00002B0E  0000              add [bx+si],al
00002B10  0000              add [bx+si],al
00002B12  0000              add [bx+si],al
00002B14  0000              add [bx+si],al
00002B16  0000              add [bx+si],al
00002B18  0000              add [bx+si],al
00002B1A  0000              add [bx+si],al
00002B1C  0000              add [bx+si],al
00002B1E  0000              add [bx+si],al
00002B20  1307              adc ax,[bx]
00002B22  3F                aas
00002B23  C00F00            ror byte [bx],0x0
00002B26  F003C3            lock add ax,bx
00002B29  FFC0              inc ax
00002B2B  0000              add [bx+si],al
00002B2D  FF03              inc word [bp+di]
00002B2F  C03C3F            sar byte [si],0x3f
00002B32  FC                cld
00002B33  3F                aas
00002B34  F0F0F03F          lock aas
00002B38  C0FC0F            sar ah,0xf
00002B3B  C3                ret
00002B3C  C00000            rol byte [bx+si],0x0
00002B3F  03C3              add ax,bx
00002B41  C3                ret
00002B42  C03C3C            sar byte [si],0x3c
00002B45  003C              add [si],bh
00002B47  3CF0              cmp al,0xf0
00002B49  00F0              add al,dh
00002B4B  F0                db 0xF0
00002B4C  FF                db 0xFF
00002B4D  3F                aas
00002B4E  C3                ret
00002B4F  C00000            rol byte [bx+si],0x0
00002B52  03C3              add ax,bx
00002B54  C3                ret
00002B55  C03C3C            sar byte [si],0x3c
00002B58  003C              add [si],bh
00002B5A  3CF0              cmp al,0xf0
00002B5C  00F0              add al,dh
00002B5E  F0F3F3C3          lock rep ret
00002B62  FF00              inc word [bx+si]
00002B64  0003              add [bp+di],al
00002B66  C3                ret
00002B67  C0                db 0xC0
00002B68  F0F03F            lock aas
00002B6B  F03F              lock aas
00002B6D  F0F3F0FFF0        lock rep push ax
00002B72  F3F3C3            rep ret
00002B75  C00000            rol byte [bx+si],0x0
00002B78  03C3              add ax,bx
00002B7A  C0                db 0xC0
00002B7B  F0F03C00          lock cmp al,0x0
00002B7F  3C3C              cmp al,0x3c
00002B81  F0F0F0F0F003C3    lock add ax,bx
00002B88  C00000            rol byte [bx+si],0x0
00002B8B  03C3              add ax,bx
00002B8D  C03FC0            sar byte [bx],0xc0
00002B90  3C00              cmp al,0x0
00002B92  3C3C              cmp al,0x3c
00002B94  3F                aas
00002B95  C0                db 0xC0
00002B96  F0F0F003C3        lock add ax,bx
00002B9B  FFC0              inc ax
00002B9D  0000              add [bx+si],al
00002B9F  FF00              inc word [bx+si]
00002BA1  0F                db 0x0F
00002BA2  003F              add [bx],bh
00002BA4  FC                cld
00002BA5  3C3C              cmp al,0x3c
00002BA7  0000              add [bx+si],al
00002BA9  0000              add [bx+si],al
00002BAB  0000              add [bx+si],al
00002BAD  0000              add [bx+si],al
00002BAF  0000              add [bx+si],al
00002BB1  0000              add [bx+si],al
00002BB3  0000              add [bx+si],al
00002BB5  0000              add [bx+si],al
00002BB7  0000              add [bx+si],al
00002BB9  0000              add [bx+si],al
00002BBB  0000              add [bx+si],al
00002BBD  0000              add [bx+si],al
00002BBF  000A              add [bp+si],cl
00002BC1  07                pop es
00002BC2  3F                aas
00002BC3  C00000            rol byte [bx+si],0x0
00002BC6  0000              add [bx+si],al
00002BC8  0000              add [bx+si],al
00002BCA  0000              add [bx+si],al
00002BCC  F0F00000          lock add [bx+si],al
00002BD0  0000              add [bx+si],al
00002BD2  0000              add [bx+si],al
00002BD4  0000              add [bx+si],al
00002BD6  F0003F            lock add [bx],bh
00002BD9  C03FC0            sar byte [bx],0xc0
00002BDC  3F                aas
00002BDD  C03FC0            sar byte [bx],0xc0
00002BE0  3F                aas
00002BE1  C0                db 0xC0
00002BE2  F0F0F0F0F0F0F0F0  lock add al,dh
         -00F0
00002BEC  F000F0            lock add al,dh
00002BEF  F0F000FF          lock add bh,bh
00002BF3  F0F0F0F0F0F0F0F0  lock add al,dh
         -00F0
00002BFD  003F              add [bx],bh
00002BFF  C02FC0            shr byte [bx],0xc0
00002C02  3F                aas
00002C03  C0                db 0xC0
00002C04  F0003F            lock add [bx],bh
00002C07  F00000            lock add [bx+si],al
00002C0A  0000              add [bx+si],al
00002C0C  0000              add [bx+si],al
00002C0E  0000              add [bx+si],al
00002C10  0000              add [bx+si],al
00002C12  0000              add [bx+si],al
00002C14  0000              add [bx+si],al
00002C16  0000              add [bx+si],al
00002C18  0000              add [bx+si],al
00002C1A  0000              add [bx+si],al
00002C1C  0000              add [bx+si],al
00002C1E  0000              add [bx+si],al
00002C20  0000              add [bx+si],al
00002C22  0000              add [bx+si],al
00002C24  0000              add [bx+si],al
00002C26  0000              add [bx+si],al
00002C28  0000              add [bx+si],al
00002C2A  0000              add [bx+si],al
00002C2C  0000              add [bx+si],al
00002C2E  0000              add [bx+si],al
00002C30  0000              add [bx+si],al
00002C32  0000              add [bx+si],al
00002C34  0000              add [bx+si],al
00002C36  0000              add [bx+si],al
00002C38  0000              add [bx+si],al
00002C3A  0000              add [bx+si],al
00002C3C  0000              add [bx+si],al
00002C3E  0000              add [bx+si],al
00002C40  0000              add [bx+si],al
00002C42  0000              add [bx+si],al
00002C44  0000              add [bx+si],al
00002C46  0000              add [bx+si],al
00002C48  0000              add [bx+si],al
00002C4A  0000              add [bx+si],al
00002C4C  0000              add [bx+si],al
00002C4E  0000              add [bx+si],al
00002C50  0000              add [bx+si],al
00002C52  0000              add [bx+si],al
00002C54  0000              add [bx+si],al
00002C56  0000              add [bx+si],al
00002C58  0000              add [bx+si],al
00002C5A  0000              add [bx+si],al
00002C5C  0000              add [bx+si],al
00002C5E  0000              add [bx+si],al
00002C60  0207              add al,[bx]
00002C62  3F                aas
00002C63  C0                db 0xC0
00002C64  F0F0F0F0F0F0F0F0  lock aas
         -F0F03F
00002C6F  C00000            rol byte [bx+si],0x0
00002C72  0000              add [bx+si],al
00002C74  0000              add [bx+si],al
00002C76  0000              add [bx+si],al
00002C78  0000              add [bx+si],al
00002C7A  0000              add [bx+si],al
00002C7C  0000              add [bx+si],al
00002C7E  0000              add [bx+si],al
00002C80  0000              add [bx+si],al
00002C82  0000              add [bx+si],al
00002C84  0000              add [bx+si],al
00002C86  0000              add [bx+si],al
00002C88  0000              add [bx+si],al
00002C8A  0000              add [bx+si],al
00002C8C  0000              add [bx+si],al
00002C8E  0000              add [bx+si],al
00002C90  0000              add [bx+si],al
00002C92  0000              add [bx+si],al
00002C94  0000              add [bx+si],al
00002C96  0000              add [bx+si],al
00002C98  0000              add [bx+si],al
00002C9A  0000              add [bx+si],al
00002C9C  0000              add [bx+si],al
00002C9E  0000              add [bx+si],al
00002CA0  0000              add [bx+si],al
00002CA2  0000              add [bx+si],al
00002CA4  0000              add [bx+si],al
00002CA6  0000              add [bx+si],al
00002CA8  0000              add [bx+si],al
00002CAA  0000              add [bx+si],al
00002CAC  0000              add [bx+si],al
00002CAE  0000              add [bx+si],al
00002CB0  0207              add al,[bx]
00002CB2  0F                db 0x0F
00002CB3  00FF              add bh,bh
00002CB5  000F              add [bx],cl
00002CB7  000F              add [bx],cl
00002CB9  000F              add [bx],cl
00002CBB  000F              add [bx],cl
00002CBD  00FF              add bh,bh
00002CBF  F00000            lock add [bx+si],al
00002CC2  0000              add [bx+si],al
00002CC4  0000              add [bx+si],al
00002CC6  0000              add [bx+si],al
00002CC8  0000              add [bx+si],al
00002CCA  0000              add [bx+si],al
00002CCC  0000              add [bx+si],al
00002CCE  0000              add [bx+si],al
00002CD0  0000              add [bx+si],al
00002CD2  0000              add [bx+si],al
00002CD4  0000              add [bx+si],al
00002CD6  0000              add [bx+si],al
00002CD8  0000              add [bx+si],al
00002CDA  0000              add [bx+si],al
00002CDC  0000              add [bx+si],al
00002CDE  0000              add [bx+si],al
00002CE0  0000              add [bx+si],al
00002CE2  0000              add [bx+si],al
00002CE4  0000              add [bx+si],al
00002CE6  0000              add [bx+si],al
00002CE8  0000              add [bx+si],al
00002CEA  0000              add [bx+si],al
00002CEC  0000              add [bx+si],al
00002CEE  0000              add [bx+si],al
00002CF0  0000              add [bx+si],al
00002CF2  0000              add [bx+si],al
00002CF4  0000              add [bx+si],al
00002CF6  0000              add [bx+si],al
00002CF8  0000              add [bx+si],al
00002CFA  0000              add [bx+si],al
00002CFC  0000              add [bx+si],al
00002CFE  0000              add [bx+si],al
00002D00  0207              add al,[bx]
00002D02  3F                aas
00002D03  C0                db 0xC0
00002D04  F0F000F0          lock add al,dh
00002D08  03C0              add ax,ax
00002D0A  0F                db 0x0F
00002D0B  003C              add [si],bh
00002D0D  00FF              add bh,bh
00002D0F  F00000            lock add [bx+si],al
00002D12  0000              add [bx+si],al
00002D14  0000              add [bx+si],al
00002D16  0000              add [bx+si],al
00002D18  0000              add [bx+si],al
00002D1A  0000              add [bx+si],al
00002D1C  0000              add [bx+si],al
00002D1E  0000              add [bx+si],al
00002D20  0000              add [bx+si],al
00002D22  0000              add [bx+si],al
00002D24  0000              add [bx+si],al
00002D26  0000              add [bx+si],al
00002D28  0000              add [bx+si],al
00002D2A  0000              add [bx+si],al
00002D2C  0000              add [bx+si],al
00002D2E  0000              add [bx+si],al
00002D30  0000              add [bx+si],al
00002D32  0000              add [bx+si],al
00002D34  0000              add [bx+si],al
00002D36  0000              add [bx+si],al
00002D38  0000              add [bx+si],al
00002D3A  0000              add [bx+si],al
00002D3C  0000              add [bx+si],al
00002D3E  0000              add [bx+si],al
00002D40  0000              add [bx+si],al
00002D42  0000              add [bx+si],al
00002D44  0000              add [bx+si],al
00002D46  0000              add [bx+si],al
00002D48  0000              add [bx+si],al
00002D4A  0000              add [bx+si],al
00002D4C  0000              add [bx+si],al
00002D4E  0000              add [bx+si],al
00002D50  0207              add al,[bx]
00002D52  3F                aas
00002D53  C0                db 0xC0
00002D54  F0F000F0          lock add al,dh
00002D58  0FC000            xadd [bx+si],al
00002D5B  F0F0F03F          lock aas
00002D5F  C00000            rol byte [bx+si],0x0
00002D62  0000              add [bx+si],al
00002D64  0000              add [bx+si],al
00002D66  0000              add [bx+si],al
00002D68  0000              add [bx+si],al
00002D6A  0000              add [bx+si],al
00002D6C  0000              add [bx+si],al
00002D6E  0000              add [bx+si],al
00002D70  0000              add [bx+si],al
00002D72  0000              add [bx+si],al
00002D74  0000              add [bx+si],al
00002D76  0000              add [bx+si],al
00002D78  0000              add [bx+si],al
00002D7A  0000              add [bx+si],al
00002D7C  0000              add [bx+si],al
00002D7E  0000              add [bx+si],al
00002D80  0000              add [bx+si],al
00002D82  0000              add [bx+si],al
00002D84  0000              add [bx+si],al
00002D86  0000              add [bx+si],al
00002D88  0000              add [bx+si],al
00002D8A  0000              add [bx+si],al
00002D8C  0000              add [bx+si],al
00002D8E  0000              add [bx+si],al
00002D90  0000              add [bx+si],al
00002D92  0000              add [bx+si],al
00002D94  0000              add [bx+si],al
00002D96  0000              add [bx+si],al
00002D98  0000              add [bx+si],al
00002D9A  0000              add [bx+si],al
00002D9C  0000              add [bx+si],al
00002D9E  0000              add [bx+si],al
00002DA0  0207              add al,[bx]
00002DA2  03F0              add si,ax
00002DA4  0F                db 0x0F
00002DA5  F03CF0            lock cmp al,0xf0
00002DA8  F0                db 0xF0
00002DA9  F0                db 0xF0
00002DAA  FF                db 0xFF
00002DAB  FC                cld
00002DAC  00F0              add al,dh
00002DAE  00F0              add al,dh
00002DB0  0000              add [bx+si],al
00002DB2  0000              add [bx+si],al
00002DB4  0000              add [bx+si],al
00002DB6  0000              add [bx+si],al
00002DB8  0000              add [bx+si],al
00002DBA  0000              add [bx+si],al
00002DBC  0000              add [bx+si],al
00002DBE  0000              add [bx+si],al
00002DC0  0000              add [bx+si],al
00002DC2  0000              add [bx+si],al
00002DC4  0000              add [bx+si],al
00002DC6  0000              add [bx+si],al
00002DC8  0000              add [bx+si],al
00002DCA  0000              add [bx+si],al
00002DCC  0000              add [bx+si],al
00002DCE  0000              add [bx+si],al
00002DD0  0000              add [bx+si],al
00002DD2  0000              add [bx+si],al
00002DD4  0000              add [bx+si],al
00002DD6  0000              add [bx+si],al
00002DD8  0000              add [bx+si],al
00002DDA  0000              add [bx+si],al
00002DDC  0000              add [bx+si],al
00002DDE  0000              add [bx+si],al
00002DE0  0000              add [bx+si],al
00002DE2  0000              add [bx+si],al
00002DE4  0000              add [bx+si],al
00002DE6  0000              add [bx+si],al
00002DE8  0000              add [bx+si],al
00002DEA  0000              add [bx+si],al
00002DEC  0000              add [bx+si],al
00002DEE  0000              add [bx+si],al
00002DF0  0207              add al,[bx]
00002DF2  FFC0              inc ax
00002DF4  F000F0            lock add al,dh
00002DF7  00FF              add bh,bh
00002DF9  C000F0            rol byte [bx+si],0xf0
00002DFC  F0F03F            lock aas
00002DFF  C00000            rol byte [bx+si],0x0
00002E02  0000              add [bx+si],al
00002E04  0000              add [bx+si],al
00002E06  0000              add [bx+si],al
00002E08  0000              add [bx+si],al
00002E0A  0000              add [bx+si],al
00002E0C  0000              add [bx+si],al
00002E0E  0000              add [bx+si],al
00002E10  0000              add [bx+si],al
00002E12  0000              add [bx+si],al
00002E14  0000              add [bx+si],al
00002E16  0000              add [bx+si],al
00002E18  0000              add [bx+si],al
00002E1A  0000              add [bx+si],al
00002E1C  0000              add [bx+si],al
00002E1E  0000              add [bx+si],al
00002E20  0000              add [bx+si],al
00002E22  0000              add [bx+si],al
00002E24  0000              add [bx+si],al
00002E26  0000              add [bx+si],al
00002E28  0000              add [bx+si],al
00002E2A  0000              add [bx+si],al
00002E2C  0000              add [bx+si],al
00002E2E  0000              add [bx+si],al
00002E30  0000              add [bx+si],al
00002E32  0000              add [bx+si],al
00002E34  0000              add [bx+si],al
00002E36  0000              add [bx+si],al
00002E38  0000              add [bx+si],al
00002E3A  0000              add [bx+si],al
00002E3C  0000              add [bx+si],al
00002E3E  0000              add [bx+si],al
00002E40  0207              add al,[bx]
00002E42  3F                aas
00002E43  C0                db 0xC0
00002E44  F0F0F000FF        lock add bh,bh
00002E49  C0                db 0xC0
00002E4A  F0F0F0F03F        lock aas
00002E4F  C00000            rol byte [bx+si],0x0
00002E52  0000              add [bx+si],al
00002E54  0000              add [bx+si],al
00002E56  0000              add [bx+si],al
00002E58  0000              add [bx+si],al
00002E5A  0000              add [bx+si],al
00002E5C  0000              add [bx+si],al
00002E5E  0000              add [bx+si],al
00002E60  0000              add [bx+si],al
00002E62  0000              add [bx+si],al
00002E64  0000              add [bx+si],al
00002E66  0000              add [bx+si],al
00002E68  0000              add [bx+si],al
00002E6A  0000              add [bx+si],al
00002E6C  0000              add [bx+si],al
00002E6E  0000              add [bx+si],al
00002E70  0000              add [bx+si],al
00002E72  0000              add [bx+si],al
00002E74  0000              add [bx+si],al
00002E76  0000              add [bx+si],al
00002E78  0000              add [bx+si],al
00002E7A  0000              add [bx+si],al
00002E7C  0000              add [bx+si],al
00002E7E  0000              add [bx+si],al
00002E80  0000              add [bx+si],al
00002E82  0000              add [bx+si],al
00002E84  0000              add [bx+si],al
00002E86  0000              add [bx+si],al
00002E88  0000              add [bx+si],al
00002E8A  0000              add [bx+si],al
00002E8C  0000              add [bx+si],al
00002E8E  0000              add [bx+si],al
00002E90  0207              add al,[bx]
00002E92  FFF0              push ax
00002E94  F0F003C0          lock add ax,ax
00002E98  0F                db 0x0F
00002E99  003C              add [si],bh
00002E9B  003C              add [si],bh
00002E9D  003C              add [si],bh
00002E9F  0000              add [bx+si],al
00002EA1  0000              add [bx+si],al
00002EA3  0000              add [bx+si],al
00002EA5  0000              add [bx+si],al
00002EA7  0000              add [bx+si],al
00002EA9  0000              add [bx+si],al
00002EAB  0000              add [bx+si],al
00002EAD  0000              add [bx+si],al
00002EAF  0000              add [bx+si],al
00002EB1  0000              add [bx+si],al
00002EB3  0000              add [bx+si],al
00002EB5  0000              add [bx+si],al
00002EB7  0000              add [bx+si],al
00002EB9  0000              add [bx+si],al
00002EBB  0000              add [bx+si],al
00002EBD  0000              add [bx+si],al
00002EBF  0000              add [bx+si],al
00002EC1  0000              add [bx+si],al
00002EC3  0000              add [bx+si],al
00002EC5  0000              add [bx+si],al
00002EC7  0000              add [bx+si],al
00002EC9  0000              add [bx+si],al
00002ECB  0000              add [bx+si],al
00002ECD  0000              add [bx+si],al
00002ECF  0000              add [bx+si],al
00002ED1  0000              add [bx+si],al
00002ED3  0000              add [bx+si],al
00002ED5  0000              add [bx+si],al
00002ED7  0000              add [bx+si],al
00002ED9  0000              add [bx+si],al
00002EDB  0000              add [bx+si],al
00002EDD  0000              add [bx+si],al
00002EDF  0002              add [bp+si],al
00002EE1  07                pop es
00002EE2  3F                aas
00002EE3  C0                db 0xC0
00002EE4  F0F0F0F03F        lock aas
00002EE9  C0                db 0xC0
00002EEA  F0F0F0F03F        lock aas
00002EEF  C00000            rol byte [bx+si],0x0
00002EF2  0000              add [bx+si],al
00002EF4  0000              add [bx+si],al
00002EF6  0000              add [bx+si],al
00002EF8  0000              add [bx+si],al
00002EFA  0000              add [bx+si],al
00002EFC  0000              add [bx+si],al
00002EFE  0000              add [bx+si],al
00002F00  0000              add [bx+si],al
00002F02  0000              add [bx+si],al
00002F04  0000              add [bx+si],al
00002F06  0000              add [bx+si],al
00002F08  0000              add [bx+si],al
00002F0A  0000              add [bx+si],al
00002F0C  0000              add [bx+si],al
00002F0E  0000              add [bx+si],al
00002F10  0000              add [bx+si],al
00002F12  0000              add [bx+si],al
00002F14  0000              add [bx+si],al
00002F16  0000              add [bx+si],al
00002F18  0000              add [bx+si],al
00002F1A  0000              add [bx+si],al
00002F1C  0000              add [bx+si],al
00002F1E  0000              add [bx+si],al
00002F20  0000              add [bx+si],al
00002F22  0000              add [bx+si],al
00002F24  0000              add [bx+si],al
00002F26  0000              add [bx+si],al
00002F28  0000              add [bx+si],al
00002F2A  0000              add [bx+si],al
00002F2C  0000              add [bx+si],al
00002F2E  0000              add [bx+si],al
00002F30  0207              add al,[bx]
00002F32  3F                aas
00002F33  C0                db 0xC0
00002F34  F0F0F0F03F        lock aas
00002F39  F000F0            lock add al,dh
00002F3C  F0F03F            lock aas
00002F3F  C00000            rol byte [bx+si],0x0
00002F42  0000              add [bx+si],al
00002F44  0000              add [bx+si],al
00002F46  0000              add [bx+si],al
00002F48  0000              add [bx+si],al
00002F4A  0000              add [bx+si],al
00002F4C  0000              add [bx+si],al
00002F4E  0000              add [bx+si],al
00002F50  0000              add [bx+si],al
00002F52  0000              add [bx+si],al
00002F54  0000              add [bx+si],al
00002F56  0000              add [bx+si],al
00002F58  0000              add [bx+si],al
00002F5A  0000              add [bx+si],al
00002F5C  0000              add [bx+si],al
00002F5E  0000              add [bx+si],al
00002F60  0000              add [bx+si],al
00002F62  0000              add [bx+si],al
00002F64  0000              add [bx+si],al
00002F66  0000              add [bx+si],al
00002F68  0000              add [bx+si],al
00002F6A  0000              add [bx+si],al
00002F6C  0000              add [bx+si],al
00002F6E  0000              add [bx+si],al
00002F70  0000              add [bx+si],al
00002F72  0000              add [bx+si],al
00002F74  0000              add [bx+si],al
00002F76  0000              add [bx+si],al
00002F78  0000              add [bx+si],al
00002F7A  0000              add [bx+si],al
00002F7C  0000              add [bx+si],al
00002F7E  0000              add [bx+si],al
00002F80  051155            add ax,0x5511
00002F83  55                push bp
00002F84  55                push bp
00002F85  55                push bp
00002F86  40                inc ax
00002F87  40                inc ax
00002F88  0000              add [bx+si],al
00002F8A  004040            add [bx+si+0x40],al
00002F8D  0000              add [bx+si],al
00002F8F  004040            add [bx+si+0x40],al
00002F92  0000              add [bx+si],al
00002F94  004040            add [bx+si+0x40],al
00002F97  0000              add [bx+si],al
00002F99  004040            add [bx+si+0x40],al
00002F9C  0000              add [bx+si],al
00002F9E  004040            add [bx+si+0x40],al
00002FA1  0000              add [bx+si],al
00002FA3  004040            add [bx+si+0x40],al
00002FA6  0000              add [bx+si],al
00002FA8  004040            add [bx+si+0x40],al
00002FAB  0000              add [bx+si],al
00002FAD  004040            add [bx+si+0x40],al
00002FB0  0000              add [bx+si],al
00002FB2  004040            add [bx+si+0x40],al
00002FB5  0000              add [bx+si],al
00002FB7  004040            add [bx+si+0x40],al
00002FBA  0000              add [bx+si],al
00002FBC  004040            add [bx+si+0x40],al
00002FBF  0000              add [bx+si],al
00002FC1  004040            add [bx+si+0x40],al
00002FC4  0000              add [bx+si],al
00002FC6  004040            add [bx+si+0x40],al
00002FC9  0000              add [bx+si],al
00002FCB  004040            add [bx+si+0x40],al
00002FCE  0000              add [bx+si],al
00002FD0  004055            add [bx+si+0x55],al
00002FD3  55                push bp
00002FD4  55                push bp
00002FD5  55                push bp
00002FD6  40                inc ax
00002FD7  0000              add [bx+si],al
00002FD9  0000              add [bx+si],al
00002FDB  0000              add [bx+si],al
00002FDD  0000              add [bx+si],al
00002FDF  000D              add [di],cl
00002FE1  07                pop es
00002FE2  F0F0003F          lock add [bx],bh
00002FE6  C00000            rol byte [bx+si],0x0
00002FE9  0000              add [bx+si],al
00002FEB  0000              add [bx+si],al
00002FED  0000              add [bx+si],al
00002FEF  F0F0F0F0F00000    lock add [bx+si],al
00002FF6  0000              add [bx+si],al
00002FF8  0000              add [bx+si],al
00002FFA  0000              add [bx+si],al
00002FFC  F0F000F0          lock add al,dh
00003000  003F              add [bx],bh
00003002  C03FC0            sar byte [bx],0xc0
00003005  3F                aas
00003006  C03FC0            sar byte [bx],0xc0
00003009  FFF0              push ax
0000300B  F03F              lock aas
0000300D  F0F0F0F0F0F0F0F0  lock add al,dh
         -F0F0F0F000F0
0000301B  F000F0            lock add al,dh
0000301E  F0F000FF          lock add bh,bh
00003022  F0F0F0F0F0F0F0F0  lock add al,dh
         -F0F0F000F0
0000302F  00F0              add al,dh
00003031  F0F03F            lock aas
00003034  C03FC0            sar byte [bx],0xc0
00003037  3F                aas
00003038  C0                db 0xC0
00003039  F0003F            lock add [bx],bh
0000303C  C00000            rol byte [bx+si],0x0
0000303F  0000              add [bx+si],al
00003041  0000              add [bx+si],al
00003043  0000              add [bx+si],al
00003045  0000              add [bx+si],al
00003047  0000              add [bx+si],al
00003049  0000              add [bx+si],al
0000304B  0000              add [bx+si],al
0000304D  0000              add [bx+si],al
0000304F  0009              add [bx+di],cl
00003051  093F              or [bx],di
00003053  F03C00            lock cmp al,0x0
00003056  0000              add [bx+si],al
00003058  0000              add [bx+si],al
0000305A  00F0              add al,dh
0000305C  3C3C              cmp al,0x3c
0000305E  003C              add [si],bh
00003060  0000              add [bx+si],al
00003062  0000              add [bx+si],al
00003064  F0003F            lock add [bx],bh
00003067  F0003F            lock add [bx],bh
0000306A  F00FFC3F          lock paddb mm7,[bx]
0000306E  F03C3C            lock cmp al,0x3c
00003071  3C3F              cmp al,0x3f
00003073  3C3C              cmp al,0x3c
00003075  0000              add [bx+si],al
00003077  3C3C              cmp al,0x3c
00003079  3C3C              cmp al,0x3c
0000307B  3C3C              cmp al,0x3c
0000307D  0F                db 0x0F
0000307E  F0F03C3C          lock cmp al,0x3c
00003082  3C3C              cmp al,0x3c
00003084  3F                aas
00003085  3C00              cmp al,0x0
00003087  3C3F              cmp al,0x3f
00003089  F03C3C            lock cmp al,0x3c
0000308C  3C3F              cmp al,0x3f
0000308E  F03F              lock aas
00003090  F00000            lock add [bx+si],al
00003093  0000              add [bx+si],al
00003095  003C              add [si],bh
00003097  0000              add [bx+si],al
00003099  0000              add [bx+si],al
0000309B  0000              add [bx+si],al
0000309D  0000              add [bx+si],al
0000309F  3C00              cmp al,0x0
000030A1  0000              add [bx+si],al
000030A3  0000              add [bx+si],al
000030A5  0000              add [bx+si],al
000030A7  0000              add [bx+si],al
000030A9  0000              add [bx+si],al
000030AB  0000              add [bx+si],al
000030AD  0000              add [bx+si],al
000030AF  0000              add [bx+si],al
000030B1  0000              add [bx+si],al
000030B3  0000              add [bx+si],al
000030B5  0000              add [bx+si],al
000030B7  0000              add [bx+si],al
000030B9  0000              add [bx+si],al
000030BB  0000              add [bx+si],al
000030BD  0000              add [bx+si],al
000030BF  0000              add [bx+si],al
000030C1  0000              add [bx+si],al
000030C3  0000              add [bx+si],al
000030C5  0000              add [bx+si],al
000030C7  0000              add [bx+si],al
000030C9  0000              add [bx+si],al
000030CB  0000              add [bx+si],al
000030CD  0000              add [bx+si],al
000030CF  0000              add [bx+si],al
000030D1  0000              add [bx+si],al
000030D3  0000              add [bx+si],al
000030D5  0000              add [bx+si],al
000030D7  0000              add [bx+si],al
000030D9  0000              add [bx+si],al
000030DB  0000              add [bx+si],al
000030DD  0000              add [bx+si],al
000030DF  0000              add [bx+si],al
000030E1  0000              add [bx+si],al
000030E3  0000              add [bx+si],al
000030E5  0000              add [bx+si],al
000030E7  0000              add [bx+si],al
000030E9  0000              add [bx+si],al
000030EB  0000              add [bx+si],al
000030ED  0000              add [bx+si],al
000030EF  0000              add [bx+si],al
000030F1  0000              add [bx+si],al
000030F3  0000              add [bx+si],al
000030F5  0000              add [bx+si],al
000030F7  0000              add [bx+si],al
000030F9  0000              add [bx+si],al
000030FB  0000              add [bx+si],al
000030FD  0000              add [bx+si],al
000030FF  0000              add [bx+si],al
00003101  0000              add [bx+si],al
00003103  0000              add [bx+si],al
00003105  0000              add [bx+si],al
00003107  0000              add [bx+si],al
00003109  0000              add [bx+si],al
0000310B  0000              add [bx+si],al
0000310D  0000              add [bx+si],al
0000310F  0000              add [bx+si],al
00003111  0000              add [bx+si],al
00003113  0000              add [bx+si],al
00003115  0000              add [bx+si],al
00003117  0000              add [bx+si],al
00003119  0000              add [bx+si],al
0000311B  0000              add [bx+si],al
0000311D  0000              add [bx+si],al
0000311F  0000              add [bx+si],al
00003121  0000              add [bx+si],al
00003123  0000              add [bx+si],al
00003125  0000              add [bx+si],al
00003127  0000              add [bx+si],al
00003129  0000              add [bx+si],al
0000312B  0000              add [bx+si],al
0000312D  0000              add [bx+si],al
0000312F  0000              add [bx+si],al
00003131  0000              add [bx+si],al
00003133  0000              add [bx+si],al
00003135  0000              add [bx+si],al
00003137  0000              add [bx+si],al
00003139  0000              add [bx+si],al
0000313B  0000              add [bx+si],al
0000313D  0000              add [bx+si],al
0000313F  0000              add [bx+si],al
00003141  0000              add [bx+si],al
00003143  0000              add [bx+si],al
00003145  0000              add [bx+si],al
00003147  0000              add [bx+si],al
00003149  0000              add [bx+si],al
0000314B  0000              add [bx+si],al
0000314D  0000              add [bx+si],al
0000314F  0000              add [bx+si],al
00003151  0000              add [bx+si],al
00003153  0000              add [bx+si],al
00003155  0000              add [bx+si],al
00003157  0000              add [bx+si],al
00003159  0000              add [bx+si],al
0000315B  0000              add [bx+si],al
0000315D  0000              add [bx+si],al
0000315F  0000              add [bx+si],al
00003161  0000              add [bx+si],al
00003163  0000              add [bx+si],al
00003165  0000              add [bx+si],al
00003167  0000              add [bx+si],al
00003169  0000              add [bx+si],al
0000316B  0000              add [bx+si],al
0000316D  0000              add [bx+si],al
0000316F  0000              add [bx+si],al
00003171  0000              add [bx+si],al
00003173  0000              add [bx+si],al
00003175  0000              add [bx+si],al
00003177  0000              add [bx+si],al
00003179  0000              add [bx+si],al
0000317B  0000              add [bx+si],al
0000317D  0000              add [bx+si],al
0000317F  0000              add [bx+si],al
00003181  0000              add [bx+si],al
00003183  0000              add [bx+si],al
00003185  0000              add [bx+si],al
00003187  0000              add [bx+si],al
00003189  0000              add [bx+si],al
0000318B  0000              add [bx+si],al
0000318D  0000              add [bx+si],al
0000318F  0000              add [bx+si],al
00003191  0000              add [bx+si],al
00003193  0000              add [bx+si],al
00003195  0000              add [bx+si],al
00003197  0000              add [bx+si],al
00003199  0000              add [bx+si],al
0000319B  0000              add [bx+si],al
0000319D  0000              add [bx+si],al
0000319F  0000              add [bx+si],al
000031A1  0000              add [bx+si],al
000031A3  0000              add [bx+si],al
000031A5  0000              add [bx+si],al
000031A7  0000              add [bx+si],al
000031A9  0000              add [bx+si],al
000031AB  0000              add [bx+si],al
000031AD  0000              add [bx+si],al
000031AF  0000              add [bx+si],al
000031B1  0000              add [bx+si],al
000031B3  0000              add [bx+si],al
000031B5  0000              add [bx+si],al
000031B7  0000              add [bx+si],al
000031B9  0000              add [bx+si],al
000031BB  0000              add [bx+si],al
000031BD  0000              add [bx+si],al
000031BF  0000              add [bx+si],al
000031C1  0000              add [bx+si],al
000031C3  0000              add [bx+si],al
000031C5  0000              add [bx+si],al
000031C7  0000              add [bx+si],al
000031C9  0000              add [bx+si],al
000031CB  0000              add [bx+si],al
000031CD  0000              add [bx+si],al
000031CF  0000              add [bx+si],al
000031D1  0000              add [bx+si],al
000031D3  0000              add [bx+si],al
000031D5  0000              add [bx+si],al
000031D7  0000              add [bx+si],al
000031D9  0000              add [bx+si],al
000031DB  0000              add [bx+si],al
000031DD  0000              add [bx+si],al
000031DF  0000              add [bx+si],al
000031E1  0000              add [bx+si],al
000031E3  0000              add [bx+si],al
000031E5  0000              add [bx+si],al
000031E7  0000              add [bx+si],al
000031E9  0000              add [bx+si],al
000031EB  0000              add [bx+si],al
000031ED  0000              add [bx+si],al
000031EF  0000              add [bx+si],al
000031F1  0000              add [bx+si],al
000031F3  0000              add [bx+si],al
000031F5  0000              add [bx+si],al
000031F7  0000              add [bx+si],al
000031F9  0000              add [bx+si],al
000031FB  0000              add [bx+si],al
000031FD  0000              add [bx+si],al
000031FF  0000              add [bx+si],al
00003201  0000              add [bx+si],al
00003203  0000              add [bx+si],al
00003205  0000              add [bx+si],al
00003207  0000              add [bx+si],al
00003209  0000              add [bx+si],al
0000320B  0000              add [bx+si],al
0000320D  0000              add [bx+si],al
0000320F  0000              add [bx+si],al
00003211  0000              add [bx+si],al
00003213  0000              add [bx+si],al
00003215  0000              add [bx+si],al
00003217  0000              add [bx+si],al
00003219  0000              add [bx+si],al
0000321B  0000              add [bx+si],al
0000321D  0000              add [bx+si],al
0000321F  0000              add [bx+si],al
00003221  0000              add [bx+si],al
00003223  0000              add [bx+si],al
00003225  0000              add [bx+si],al
00003227  0000              add [bx+si],al
00003229  0000              add [bx+si],al
0000322B  0000              add [bx+si],al
0000322D  0000              add [bx+si],al
0000322F  0000              add [bx+si],al
00003231  0000              add [bx+si],al
00003233  0000              add [bx+si],al
00003235  0000              add [bx+si],al
00003237  0000              add [bx+si],al
00003239  0000              add [bx+si],al
0000323B  0000              add [bx+si],al
0000323D  0000              add [bx+si],al
0000323F  0000              add [bx+si],al
00003241  0000              add [bx+si],al
00003243  0000              add [bx+si],al
00003245  0000              add [bx+si],al
00003247  0000              add [bx+si],al
00003249  0000              add [bx+si],al
0000324B  0000              add [bx+si],al
0000324D  0000              add [bx+si],al
0000324F  0000              add [bx+si],al
00003251  0000              add [bx+si],al
00003253  0000              add [bx+si],al
00003255  0000              add [bx+si],al
00003257  0000              add [bx+si],al
00003259  0000              add [bx+si],al
0000325B  0000              add [bx+si],al
0000325D  0000              add [bx+si],al
0000325F  0000              add [bx+si],al
00003261  0000              add [bx+si],al
00003263  0000              add [bx+si],al
00003265  0000              add [bx+si],al
00003267  0000              add [bx+si],al
00003269  0000              add [bx+si],al
0000326B  0000              add [bx+si],al
0000326D  0000              add [bx+si],al
0000326F  0000              add [bx+si],al
00003271  0000              add [bx+si],al
00003273  0000              add [bx+si],al
00003275  0000              add [bx+si],al
00003277  0000              add [bx+si],al
00003279  0000              add [bx+si],al
0000327B  0000              add [bx+si],al
0000327D  0000              add [bx+si],al
0000327F  0000              add [bx+si],al
00003281  0000              add [bx+si],al
00003283  0000              add [bx+si],al
00003285  0000              add [bx+si],al
00003287  0000              add [bx+si],al
00003289  0000              add [bx+si],al
0000328B  0000              add [bx+si],al
0000328D  0000              add [bx+si],al
0000328F  0000              add [bx+si],al
00003291  0000              add [bx+si],al
00003293  0000              add [bx+si],al
00003295  0000              add [bx+si],al
00003297  0000              add [bx+si],al
00003299  0000              add [bx+si],al
0000329B  0000              add [bx+si],al
0000329D  0000              add [bx+si],al
0000329F  0000              add [bx+si],al
000032A1  3000              xor [bx+si],al
000032A3  0200              add al,[bx+si]
000032A5  7000              jo 0x32a7
000032A7  0200              add al,[bx+si]
000032A9  B000              mov al,0x0
000032AB  0230              add dh,[bx+si]
000032AD  0002              add [bp+si],al
000032AF  005000            add [bx+si+0x0],dl
000032B2  0200              add al,[bx+si]
000032B4  7000              jo 0x32b6
000032B6  0200              add al,[bx+si]
000032B8  90                nop
000032B9  0002              add [bp+si],al
000032BB  00B00002          add [bx+si+0x200],dh
000032BF  00D0              add al,dl
000032C1  0002              add [bp+si],al
000032C3  00E0              add al,ah
000032C5  50                push ax
000032C6  00FE              add dh,bh
000032C8  E090              loopne 0x325a
000032CA  00FE              add dh,bh
000032CC  0000              add [bx+si],al
000032CE  0000              add [bx+si],al
000032D0  0000              add [bx+si],al
000032D2  0000              add [bx+si],al
000032D4  0000              add [bx+si],al
000032D6  0000              add [bx+si],al
000032D8  0000              add [bx+si],al
000032DA  0000              add [bx+si],al
000032DC  0000              add [bx+si],al
000032DE  0000              add [bx+si],al
000032E0  0000              add [bx+si],al
000032E2  0000              add [bx+si],al
000032E4  0000              add [bx+si],al
000032E6  0000              add [bx+si],al
000032E8  0000              add [bx+si],al
000032EA  0000              add [bx+si],al
000032EC  0000              add [bx+si],al
000032EE  0000              add [bx+si],al
000032F0  0000              add [bx+si],al
000032F2  0000              add [bx+si],al
000032F4  0000              add [bx+si],al
000032F6  0000              add [bx+si],al
000032F8  0000              add [bx+si],al
000032FA  0000              add [bx+si],al
000032FC  0000              add [bx+si],al
000032FE  0000              add [bx+si],al
00003300  0000              add [bx+si],al
00003302  0000              add [bx+si],al
00003304  0000              add [bx+si],al
00003306  0000              add [bx+si],al
00003308  0000              add [bx+si],al
0000330A  0000              add [bx+si],al
0000330C  0000              add [bx+si],al
0000330E  0000              add [bx+si],al
00003310  0000              add [bx+si],al
00003312  0000              add [bx+si],al
00003314  0000              add [bx+si],al
00003316  0000              add [bx+si],al
00003318  0000              add [bx+si],al
0000331A  0000              add [bx+si],al
0000331C  0000              add [bx+si],al
0000331E  0000              add [bx+si],al
00003320  50                push ax
00003321  7000              jo 0x3323
00003323  7090              jo 0x32b5
00003325  7001              jo 0x3328
00003327  7090              jo 0x32b9
00003329  50                push ax
0000332A  025050            add dl,[bx+si+0x50]
0000332D  50                push ax
0000332E  035000            add dx,[bx+si+0x0]
00003331  0000              add [bx+si],al
00003333  0000              add [bx+si],al
00003335  0000              add [bx+si],al
00003337  0000              add [bx+si],al
00003339  0000              add [bx+si],al
0000333B  0000              add [bx+si],al
0000333D  0000              add [bx+si],al
0000333F  0000              add [bx+si],al
00003341  0000              add [bx+si],al
00003343  0000              add [bx+si],al
00003345  0000              add [bx+si],al
00003347  0000              add [bx+si],al
00003349  0000              add [bx+si],al
0000334B  0000              add [bx+si],al
0000334D  0000              add [bx+si],al
0000334F  0000              add [bx+si],al
00003351  0000              add [bx+si],al
00003353  0000              add [bx+si],al
00003355  0000              add [bx+si],al
00003357  0000              add [bx+si],al
00003359  0000              add [bx+si],al
0000335B  0000              add [bx+si],al
0000335D  0000              add [bx+si],al
0000335F  0000              add [bx+si],al
00003361  0000              add [bx+si],al
00003363  0000              add [bx+si],al
00003365  0000              add [bx+si],al
00003367  0000              add [bx+si],al
00003369  0000              add [bx+si],al
0000336B  0000              add [bx+si],al
0000336D  0000              add [bx+si],al
0000336F  0000              add [bx+si],al
00003371  0000              add [bx+si],al
00003373  0000              add [bx+si],al
00003375  0000              add [bx+si],al
00003377  0000              add [bx+si],al
00003379  0000              add [bx+si],al
0000337B  0000              add [bx+si],al
0000337D  0000              add [bx+si],al
0000337F  0000              add [bx+si],al
00003381  0000              add [bx+si],al
00003383  0000              add [bx+si],al
00003385  0000              add [bx+si],al
00003387  0000              add [bx+si],al
00003389  0000              add [bx+si],al
0000338B  0000              add [bx+si],al
0000338D  0000              add [bx+si],al
0000338F  0000              add [bx+si],al
00003391  0000              add [bx+si],al
00003393  0000              add [bx+si],al
00003395  0000              add [bx+si],al
00003397  0000              add [bx+si],al
00003399  0000              add [bx+si],al
0000339B  0000              add [bx+si],al
0000339D  0000              add [bx+si],al
0000339F  0001              add [bx+di],al
000033A1  0204              add al,[si]
000033A3  0800              or [bx+si],al
000033A5  0000              add [bx+si],al
000033A7  0000              add [bx+si],al
000033A9  0000              add [bx+si],al
000033AB  0000              add [bx+si],al
000033AD  0000              add [bx+si],al
000033AF  0000              add [bx+si],al
000033B1  0000              add [bx+si],al
000033B3  0000              add [bx+si],al
000033B5  0000              add [bx+si],al
000033B7  0000              add [bx+si],al
000033B9  0000              add [bx+si],al
000033BB  0000              add [bx+si],al
000033BD  0000              add [bx+si],al
000033BF  0000              add [bx+si],al
000033C1  0000              add [bx+si],al
000033C3  0000              add [bx+si],al
000033C5  0000              add [bx+si],al
000033C7  0000              add [bx+si],al
000033C9  0000              add [bx+si],al
000033CB  0000              add [bx+si],al
000033CD  0000              add [bx+si],al
000033CF  0000              add [bx+si],al
000033D1  0000              add [bx+si],al
000033D3  0000              add [bx+si],al
000033D5  0000              add [bx+si],al
000033D7  0000              add [bx+si],al
000033D9  0000              add [bx+si],al
000033DB  0000              add [bx+si],al
000033DD  0000              add [bx+si],al
000033DF  0000              add [bx+si],al
000033E1  0000              add [bx+si],al
000033E3  0000              add [bx+si],al
000033E5  0000              add [bx+si],al
000033E7  0000              add [bx+si],al
000033E9  0000              add [bx+si],al
000033EB  0000              add [bx+si],al
000033ED  0000              add [bx+si],al
000033EF  0000              add [bx+si],al
000033F1  0000              add [bx+si],al
000033F3  0000              add [bx+si],al
000033F5  0000              add [bx+si],al
000033F7  0000              add [bx+si],al
000033F9  0000              add [bx+si],al
000033FB  0000              add [bx+si],al
000033FD  0000              add [bx+si],al
000033FF  0000              add [bx+si],al
00003401  0000              add [bx+si],al
00003403  0000              add [bx+si],al
00003405  0000              add [bx+si],al
00003407  0000              add [bx+si],al
00003409  0000              add [bx+si],al
0000340B  0000              add [bx+si],al
0000340D  0000              add [bx+si],al
0000340F  0000              add [bx+si],al
00003411  0000              add [bx+si],al
00003413  0000              add [bx+si],al
00003415  0000              add [bx+si],al
00003417  0000              add [bx+si],al
00003419  0000              add [bx+si],al
0000341B  0000              add [bx+si],al
0000341D  0000              add [bx+si],al
0000341F  0004              add [si],al
00003421  0302              add ax,[bp+si]
00003423  01804020          add [bx+si+0x2040],ax
00003427  10FE              adc dh,bh
00003429  0002              add [bp+si],al
0000342B  0000              add [bx+si],al
0000342D  FE00              inc byte [bx+si]
0000342F  0200              add al,[bx+si]
00003431  0000              add [bx+si],al
00003433  0000              add [bx+si],al
00003435  0000              add [bx+si],al
00003437  0000              add [bx+si],al
00003439  0000              add [bx+si],al
0000343B  0000              add [bx+si],al
0000343D  0000              add [bx+si],al
0000343F  0000              add [bx+si],al
00003441  0000              add [bx+si],al
00003443  0000              add [bx+si],al
00003445  0000              add [bx+si],al
00003447  0000              add [bx+si],al
00003449  0000              add [bx+si],al
0000344B  0000              add [bx+si],al
0000344D  0000              add [bx+si],al
0000344F  0000              add [bx+si],al
00003451  0000              add [bx+si],al
00003453  0000              add [bx+si],al
00003455  0000              add [bx+si],al
00003457  0000              add [bx+si],al
00003459  0000              add [bx+si],al
0000345B  0000              add [bx+si],al
0000345D  0000              add [bx+si],al
0000345F  0000              add [bx+si],al
00003461  0000              add [bx+si],al
00003463  0000              add [bx+si],al
00003465  0000              add [bx+si],al
00003467  0000              add [bx+si],al
00003469  0000              add [bx+si],al
0000346B  0000              add [bx+si],al
0000346D  0000              add [bx+si],al
0000346F  0000              add [bx+si],al
00003471  0000              add [bx+si],al
00003473  0000              add [bx+si],al
00003475  0000              add [bx+si],al
00003477  0000              add [bx+si],al
00003479  0000              add [bx+si],al
0000347B  0000              add [bx+si],al
0000347D  0000              add [bx+si],al
0000347F  0000              add [bx+si],al
00003481  0000              add [bx+si],al
00003483  0000              add [bx+si],al
00003485  0000              add [bx+si],al
00003487  0000              add [bx+si],al
00003489  0000              add [bx+si],al
0000348B  0000              add [bx+si],al
0000348D  0000              add [bx+si],al
0000348F  0000              add [bx+si],al
00003491  0000              add [bx+si],al
00003493  0000              add [bx+si],al
00003495  0000              add [bx+si],al
00003497  0000              add [bx+si],al
00003499  0000              add [bx+si],al
0000349B  0000              add [bx+si],al
0000349D  0000              add [bx+si],al
0000349F  0000              add [bx+si],al
000034A1  0000              add [bx+si],al
000034A3  0000              add [bx+si],al
000034A5  0000              add [bx+si],al
000034A7  00FF              add bh,bh
000034A9  FF                db 0xFF
000034AA  FF                db 0xFF
000034AB  FF                db 0xFF
000034AC  FF                db 0xFF
000034AD  FF806040          inc word [bx+si+0x4060]
000034B1  2010              and [bx+si],dl
000034B3  0000              add [bx+si],al
000034B5  204060            and [bx+si+0x60],al
000034B8  0200              add al,[bx+si]
000034BA  FE00              inc byte [bx+si]
000034BC  0002              add [bp+si],al
000034BE  00FE              add dh,bh
000034C0  60                pusha
000034C1  40                inc ax
000034C2  2000              and [bx+si],al
000034C4  0000              add [bx+si],al
000034C6  0000              add [bx+si],al
000034C8  0000              add [bx+si],al
000034CA  0000              add [bx+si],al
000034CC  0000              add [bx+si],al
000034CE  0000              add [bx+si],al
000034D0  0000              add [bx+si],al
000034D2  0000              add [bx+si],al
000034D4  0000              add [bx+si],al
000034D6  0000              add [bx+si],al
000034D8  0000              add [bx+si],al
000034DA  0000              add [bx+si],al
000034DC  0000              add [bx+si],al
000034DE  0000              add [bx+si],al
000034E0  0000              add [bx+si],al
000034E2  0000              add [bx+si],al
000034E4  0000              add [bx+si],al
000034E6  0000              add [bx+si],al
000034E8  0000              add [bx+si],al
000034EA  0000              add [bx+si],al
000034EC  0000              add [bx+si],al
000034EE  0000              add [bx+si],al
000034F0  0000              add [bx+si],al
000034F2  0000              add [bx+si],al
000034F4  0000              add [bx+si],al
000034F6  0000              add [bx+si],al
000034F8  0000              add [bx+si],al
000034FA  0000              add [bx+si],al
000034FC  0000              add [bx+si],al
000034FE  0000              add [bx+si],al
00003500  0000              add [bx+si],al
00003502  0000              add [bx+si],al
00003504  0000              add [bx+si],al
00003506  0000              add [bx+si],al
00003508  0000              add [bx+si],al
0000350A  0000              add [bx+si],al
0000350C  0000              add [bx+si],al
0000350E  0000              add [bx+si],al
00003510  0000              add [bx+si],al
00003512  0000              add [bx+si],al
00003514  0000              add [bx+si],al
00003516  0000              add [bx+si],al
00003518  0000              add [bx+si],al
0000351A  0000              add [bx+si],al
0000351C  0000              add [bx+si],al
0000351E  0000              add [bx+si],al
00003520  0004              add [si],al
00003522  90                nop
00003523  053006            add ax,0x630
00003526  E005              loopne 0x352d
00003528  30069005          xor [0x590],al
0000352C  0000              add [bx+si],al
0000352E  0000              add [bx+si],al
00003530  0000              add [bx+si],al
00003532  0000              add [bx+si],al
00003534  0000              add [bx+si],al
00003536  0000              add [bx+si],al
00003538  0000              add [bx+si],al
0000353A  0000              add [bx+si],al
0000353C  0000              add [bx+si],al
0000353E  0000              add [bx+si],al
00003540  0000              add [bx+si],al
00003542  0000              add [bx+si],al
00003544  0000              add [bx+si],al
00003546  0000              add [bx+si],al
00003548  0000              add [bx+si],al
0000354A  0000              add [bx+si],al
0000354C  0000              add [bx+si],al
0000354E  0000              add [bx+si],al
00003550  0000              add [bx+si],al
00003552  0000              add [bx+si],al
00003554  0000              add [bx+si],al
00003556  0000              add [bx+si],al
00003558  0000              add [bx+si],al
0000355A  0000              add [bx+si],al
0000355C  0000              add [bx+si],al
0000355E  0000              add [bx+si],al
00003560  0000              add [bx+si],al
00003562  0000              add [bx+si],al
00003564  0000              add [bx+si],al
00003566  0000              add [bx+si],al
00003568  0000              add [bx+si],al
0000356A  0000              add [bx+si],al
0000356C  0000              add [bx+si],al
0000356E  0000              add [bx+si],al
00003570  0000              add [bx+si],al
00003572  0000              add [bx+si],al
00003574  0000              add [bx+si],al
00003576  0000              add [bx+si],al
00003578  0000              add [bx+si],al
0000357A  0000              add [bx+si],al
0000357C  0000              add [bx+si],al
0000357E  0000              add [bx+si],al
00003580  0000              add [bx+si],al
00003582  0000              add [bx+si],al
00003584  0000              add [bx+si],al
00003586  0000              add [bx+si],al
00003588  0000              add [bx+si],al
0000358A  0000              add [bx+si],al
0000358C  0000              add [bx+si],al
0000358E  0000              add [bx+si],al
00003590  0000              add [bx+si],al
00003592  0000              add [bx+si],al
00003594  0000              add [bx+si],al
00003596  0000              add [bx+si],al
00003598  0000              add [bx+si],al
0000359A  0000              add [bx+si],al
0000359C  0000              add [bx+si],al
0000359E  0000              add [bx+si],al
000035A0  0002              add [bp+si],al
000035A2  FE00              inc byte [bx+si]
000035A4  00FE              add dh,bh
000035A6  0200              add al,[bx+si]
000035A8  0000              add [bx+si],al
000035AA  4B                dec bx
000035AB  44                inc sp
000035AC  4A                dec dx
000035AD  53                push bx
000035AE  49                dec cx
000035AF  45                inc bp
000035B0  4C                dec sp
000035B1  46                inc si
000035B2  2020              and [bx+si],ah
000035B4  0449              add al,0x49
000035B6  0C4B              or al,0x4b
000035B8  304A54            xor [bp+si+0x54],cl
000035BB  4C                dec sp
000035BC  94                xchg ax,sp
000035BD  45                inc bp
000035BE  99                cwd
000035BF  44                inc sp
000035C0  B953D9            mov cx,0xd953
000035C3  46                inc si
000035C4  0000              add [bx+si],al
000035C6  0000              add [bx+si],al
000035C8  0000              add [bx+si],al
000035CA  0000              add [bx+si],al
000035CC  0000              add [bx+si],al
000035CE  0000              add [bx+si],al
000035D0  0000              add [bx+si],al
000035D2  0000              add [bx+si],al
000035D4  0000              add [bx+si],al
000035D6  0000              add [bx+si],al
000035D8  0000              add [bx+si],al
000035DA  0000              add [bx+si],al
000035DC  0000              add [bx+si],al
000035DE  0000              add [bx+si],al
000035E0  0000              add [bx+si],al
000035E2  0000              add [bx+si],al
000035E4  0000              add [bx+si],al
000035E6  0000              add [bx+si],al
000035E8  0000              add [bx+si],al
000035EA  0000              add [bx+si],al
000035EC  0000              add [bx+si],al
000035EE  0000              add [bx+si],al
000035F0  0000              add [bx+si],al
000035F2  0000              add [bx+si],al
000035F4  0000              add [bx+si],al
000035F6  0000              add [bx+si],al
000035F8  0000              add [bx+si],al
000035FA  0000              add [bx+si],al
000035FC  0000              add [bx+si],al
000035FE  0000              add [bx+si],al
00003600  0000              add [bx+si],al
00003602  0000              add [bx+si],al
00003604  0000              add [bx+si],al
00003606  0000              add [bx+si],al
00003608  0000              add [bx+si],al
0000360A  0000              add [bx+si],al
0000360C  0000              add [bx+si],al
0000360E  0000              add [bx+si],al
00003610  0000              add [bx+si],al
00003612  0000              add [bx+si],al
00003614  0000              add [bx+si],al
00003616  0000              add [bx+si],al
00003618  0000              add [bx+si],al
0000361A  0000              add [bx+si],al
0000361C  0000              add [bx+si],al
0000361E  0000              add [bx+si],al
00003620  50                push ax
00003621  04A0              add al,0xa0
00003623  04F0              add al,0xf0
00003625  0440              add al,0x40
00003627  050000            add ax,0x0
0000362A  0000              add [bx+si],al
0000362C  90                nop
0000362D  053006            add ax,0x630
00003630  E005              loopne 0x3637
00003632  30069005          xor [0x590],al
00003636  0000              add [bx+si],al
00003638  0000              add [bx+si],al
0000363A  0000              add [bx+si],al
0000363C  0000              add [bx+si],al
0000363E  0000              add [bx+si],al
00003640  0000              add [bx+si],al
00003642  0000              add [bx+si],al
00003644  0000              add [bx+si],al
00003646  0000              add [bx+si],al
00003648  0000              add [bx+si],al
0000364A  0000              add [bx+si],al
0000364C  0000              add [bx+si],al
0000364E  0000              add [bx+si],al
00003650  0000              add [bx+si],al
00003652  0000              add [bx+si],al
00003654  0000              add [bx+si],al
00003656  0000              add [bx+si],al
00003658  0000              add [bx+si],al
0000365A  0000              add [bx+si],al
0000365C  0000              add [bx+si],al
0000365E  0000              add [bx+si],al
00003660  0000              add [bx+si],al
00003662  0000              add [bx+si],al
00003664  0000              add [bx+si],al
00003666  0000              add [bx+si],al
00003668  0000              add [bx+si],al
0000366A  0000              add [bx+si],al
0000366C  0000              add [bx+si],al
0000366E  0000              add [bx+si],al
00003670  0000              add [bx+si],al
00003672  0000              add [bx+si],al
00003674  0000              add [bx+si],al
00003676  0000              add [bx+si],al
00003678  0000              add [bx+si],al
0000367A  0000              add [bx+si],al
0000367C  0000              add [bx+si],al
0000367E  0000              add [bx+si],al
00003680  0000              add [bx+si],al
00003682  0000              add [bx+si],al
00003684  0000              add [bx+si],al
00003686  0000              add [bx+si],al
00003688  0000              add [bx+si],al
0000368A  0000              add [bx+si],al
0000368C  0000              add [bx+si],al
0000368E  0000              add [bx+si],al
00003690  0000              add [bx+si],al
00003692  0000              add [bx+si],al
00003694  0000              add [bx+si],al
00003696  0000              add [bx+si],al
00003698  0000              add [bx+si],al
0000369A  0000              add [bx+si],al
0000369C  0000              add [bx+si],al
0000369E  0000              add [bx+si],al
000036A0  2007              and [bx],al
000036A2  7007              jo 0x36ab
000036A4  C00710            rol byte [bx],0x10
000036A7  086008            or [bx+si+0x8],ah
000036AA  0000              add [bx+si],al
000036AC  0000              add [bx+si],al
000036AE  0000              add [bx+si],al
000036B0  0000              add [bx+si],al
000036B2  0000              add [bx+si],al
000036B4  0000              add [bx+si],al
000036B6  0000              add [bx+si],al
000036B8  0000              add [bx+si],al
000036BA  0000              add [bx+si],al
000036BC  0000              add [bx+si],al
000036BE  0000              add [bx+si],al
000036C0  0000              add [bx+si],al
000036C2  0000              add [bx+si],al
000036C4  0000              add [bx+si],al
000036C6  0000              add [bx+si],al
000036C8  0000              add [bx+si],al
000036CA  0000              add [bx+si],al
000036CC  0000              add [bx+si],al
000036CE  0000              add [bx+si],al
000036D0  0000              add [bx+si],al
000036D2  0000              add [bx+si],al
000036D4  0000              add [bx+si],al
000036D6  0000              add [bx+si],al
000036D8  0000              add [bx+si],al
000036DA  0000              add [bx+si],al
000036DC  0000              add [bx+si],al
000036DE  0000              add [bx+si],al
000036E0  0000              add [bx+si],al
000036E2  0000              add [bx+si],al
000036E4  0000              add [bx+si],al
000036E6  0000              add [bx+si],al
000036E8  0000              add [bx+si],al
000036EA  0000              add [bx+si],al
000036EC  0000              add [bx+si],al
000036EE  0000              add [bx+si],al
000036F0  0000              add [bx+si],al
000036F2  0000              add [bx+si],al
000036F4  0000              add [bx+si],al
000036F6  0000              add [bx+si],al
000036F8  0000              add [bx+si],al
000036FA  0000              add [bx+si],al
000036FC  0000              add [bx+si],al
000036FE  0000              add [bx+si],al
00003700  0000              add [bx+si],al
00003702  0000              add [bx+si],al
00003704  0000              add [bx+si],al
00003706  0000              add [bx+si],al
00003708  0000              add [bx+si],al
0000370A  0000              add [bx+si],al
0000370C  0000              add [bx+si],al
0000370E  0000              add [bx+si],al
00003710  0000              add [bx+si],al
00003712  0000              add [bx+si],al
00003714  0000              add [bx+si],al
00003716  0000              add [bx+si],al
00003718  0000              add [bx+si],al
0000371A  0000              add [bx+si],al
0000371C  0000              add [bx+si],al
0000371E  0000              add [bx+si],al
00003720  40                inc ax
00003721  0A900AE0          or dl,[bx+si+0xe00a]
00003725  0A30              or dh,[bx+si]
00003727  0B800BD0          or ax,[bx+si+0xd00b]
0000372B  0B20              or sp,[bx+si]
0000372D  0C70              or al,0x70
0000372F  0CC0              or al,0xc0
00003731  0C10              or al,0x10
00003733  0D0000            or ax,0x0
00003736  0000              add [bx+si],al
00003738  0000              add [bx+si],al
0000373A  0000              add [bx+si],al
0000373C  0000              add [bx+si],al
0000373E  0000              add [bx+si],al
00003740  0000              add [bx+si],al
00003742  0000              add [bx+si],al
00003744  0000              add [bx+si],al
00003746  0000              add [bx+si],al
00003748  0000              add [bx+si],al
0000374A  0000              add [bx+si],al
0000374C  0000              add [bx+si],al
0000374E  0000              add [bx+si],al
00003750  0000              add [bx+si],al
00003752  0000              add [bx+si],al
00003754  0000              add [bx+si],al
00003756  0000              add [bx+si],al
00003758  0000              add [bx+si],al
0000375A  0000              add [bx+si],al
0000375C  0000              add [bx+si],al
0000375E  0000              add [bx+si],al
00003760  0000              add [bx+si],al
00003762  0000              add [bx+si],al
00003764  0000              add [bx+si],al
00003766  0000              add [bx+si],al
00003768  0000              add [bx+si],al
0000376A  0000              add [bx+si],al
0000376C  0000              add [bx+si],al
0000376E  0000              add [bx+si],al
00003770  0000              add [bx+si],al
00003772  0000              add [bx+si],al
00003774  0000              add [bx+si],al
00003776  0000              add [bx+si],al
00003778  0000              add [bx+si],al
0000377A  0000              add [bx+si],al
0000377C  0000              add [bx+si],al
0000377E  0000              add [bx+si],al
00003780  0000              add [bx+si],al
00003782  0000              add [bx+si],al
00003784  0000              add [bx+si],al
00003786  0000              add [bx+si],al
00003788  0000              add [bx+si],al
0000378A  0000              add [bx+si],al
0000378C  0000              add [bx+si],al
0000378E  0000              add [bx+si],al
00003790  0000              add [bx+si],al
00003792  0000              add [bx+si],al
00003794  0000              add [bx+si],al
00003796  0000              add [bx+si],al
00003798  0000              add [bx+si],al
0000379A  0000              add [bx+si],al
0000379C  0000              add [bx+si],al
0000379E  0000              add [bx+si],al
000037A0  8C15              mov [di],ss
000037A2  A015D0            mov al,[0xd015]
000037A5  15E015            adc ax,0x15e0
000037A8  10165016          adc [0x1650],dl
000037AC  1803              sbb [bp+di],al
000037AE  0010              add [bx+si],dl
000037B0  FF                db 0xFF
000037B1  FF10              call near [bx+si]
000037B3  0400              add al,0x0
000037B5  0000              add [bx+si],al
000037B7  0000              add [bx+si],al
000037B9  0000              add [bx+si],al
000037BB  0000              add [bx+si],al
000037BD  0000              add [bx+si],al
000037BF  000C              add [si],cl
000037C1  06                push es
000037C2  000C              add [si],cl
000037C4  06                push es
000037C5  800C07            or byte [si],0x7
000037C8  000C              add [si],cl
000037CA  07                pop es
000037CB  800C08            or byte [si],0x8
000037CE  000C              add [si],cl
000037D0  08800C09          or [bx+si+0x90c],al
000037D4  000C              add [si],cl
000037D6  09800C0A          or [bx+si+0xa0c],ax
000037DA  0000              add [bx+si],al
000037DC  0000              add [bx+si],al
000037DE  0000              add [bx+si],al
000037E0  0000              add [bx+si],al
000037E2  0000              add [bx+si],al
000037E4  0000              add [bx+si],al
000037E6  0000              add [bx+si],al
000037E8  0000              add [bx+si],al
000037EA  0000              add [bx+si],al
000037EC  0000              add [bx+si],al
000037EE  0000              add [bx+si],al
000037F0  1808              sbb [bx+si],cl
000037F2  0000              add [bx+si],al
000037F4  0000              add [bx+si],al
000037F6  0000              add [bx+si],al
000037F8  0000              add [bx+si],al
000037FA  0000              add [bx+si],al
000037FC  0000              add [bx+si],al
000037FE  0000              add [bx+si],al
00003800  1005              adc [di],al
00003802  0008              add [bx+si],cl
00003804  FF                db 0xFF
00003805  FF10              call near [bx+si]
00003807  050030            add ax,0x3000
0000380A  FF                db 0xFF
0000380B  FF10              call near [bx+si]
0000380D  050008            add ax,0x800
00003810  FF                db 0xFF
00003811  FF10              call near [bx+si]
00003813  050030            add ax,0x3000
00003816  FF                db 0xFF
00003817  FF10              call near [bx+si]
00003819  050008            add ax,0x800
0000381C  FF                db 0xFF
0000381D  FF10              call near [bx+si]
0000381F  050000            add ax,0x0
00003822  0000              add [bx+si],al
00003824  0000              add [bx+si],al
00003826  0000              add [bx+si],al
00003828  0000              add [bx+si],al
0000382A  0000              add [bx+si],al
0000382C  0000              add [bx+si],al
0000382E  0000              add [bx+si],al
00003830  1004              adc [si],al
00003832  0040FF            add [bx+si-0x1],al
00003835  FF10              call near [bx+si]
00003837  050050            add ax,0x5000
0000383A  FF                db 0xFF
0000383B  FF10              call near [bx+si]
0000383D  06                push es
0000383E  0060FF            add [bx+si-0x1],ah
00003841  FF10              call near [bx+si]
00003843  0C00              or al,0x0
00003845  70FF              jo 0x3846
00003847  FF18              call far [bx+si]
00003849  1800              sbb [bx+si],al
0000384B  B0FF              mov al,0xff
0000384D  FFB0FFFF          push word [bx+si+0xffff]
00003851  1818              sbb [bx+si],bl
00003853  00B0FFFF          add [bx+si+0xffff],dh
00003857  B0FF              mov al,0xff
00003859  FF18              call far [bx+si]
0000385B  1800              sbb [bx+si],al
0000385D  B0FF              mov al,0xff
0000385F  FFB0FFFF          push word [bx+si+0xffff]
00003863  1818              sbb [bx+si],bl
00003865  0000              add [bx+si],al
00003867  0000              add [bx+si],al
00003869  0000              add [bx+si],al
0000386B  0000              add [bx+si],al
0000386D  0000              add [bx+si],al
0000386F  00E0              add al,ah
00003871  FF                db 0xFF
00003872  FFE0              jmp ax
00003874  FF                db 0xFF
00003875  FF                db 0xFF
00003876  380F              cmp [bx],cl
00003878  00F0              add al,dh
0000387A  FF                db 0xFF
0000387B  FF                db 0xFF
0000387C  380F              cmp [bx],cl
0000387E  0000              add [bx+si],al
00003880  0000              add [bx+si],al
00003882  0000              add [bx+si],al
00003884  0000              add [bx+si],al
00003886  0000              add [bx+si],al
00003888  0000              add [bx+si],al
0000388A  0000              add [bx+si],al
0000388C  0000              add [bx+si],al
0000388E  0000              add [bx+si],al
00003890  0000              add [bx+si],al
00003892  0000              add [bx+si],al
00003894  0000              add [bx+si],al
00003896  0000              add [bx+si],al
00003898  0000              add [bx+si],al
0000389A  0000              add [bx+si],al
0000389C  0000              add [bx+si],al
0000389E  0000              add [bx+si],al
000038A0  8080404000        add byte [bx+si+0x4040],0x0
000038A5  0000              add [bx+si],al
000038A7  0000              add [bx+si],al
000038A9  0000              add [bx+si],al
000038AB  0000              add [bx+si],al
000038AD  0000              add [bx+si],al
000038AF  0000              add [bx+si],al
000038B1  0000              add [bx+si],al
000038B3  0000              add [bx+si],al
000038B5  0000              add [bx+si],al
000038B7  0000              add [bx+si],al
000038B9  0000              add [bx+si],al
000038BB  0000              add [bx+si],al
000038BD  0000              add [bx+si],al
000038BF  0000              add [bx+si],al
000038C1  0000              add [bx+si],al
000038C3  0000              add [bx+si],al
000038C5  0000              add [bx+si],al
000038C7  0000              add [bx+si],al
000038C9  0000              add [bx+si],al
000038CB  0000              add [bx+si],al
000038CD  0000              add [bx+si],al
000038CF  0000              add [bx+si],al
000038D1  0000              add [bx+si],al
000038D3  0000              add [bx+si],al
000038D5  0000              add [bx+si],al
000038D7  0000              add [bx+si],al
000038D9  0000              add [bx+si],al
000038DB  0000              add [bx+si],al
000038DD  0000              add [bx+si],al
000038DF  0000              add [bx+si],al
000038E1  0000              add [bx+si],al
000038E3  0000              add [bx+si],al
000038E5  0000              add [bx+si],al
000038E7  0000              add [bx+si],al
000038E9  0000              add [bx+si],al
000038EB  0000              add [bx+si],al
000038ED  0000              add [bx+si],al
000038EF  0000              add [bx+si],al
000038F1  0000              add [bx+si],al
000038F3  0000              add [bx+si],al
000038F5  0000              add [bx+si],al
000038F7  0000              add [bx+si],al
000038F9  0000              add [bx+si],al
000038FB  0000              add [bx+si],al
000038FD  0000              add [bx+si],al
000038FF  0000              add [bx+si],al
00003901  0000              add [bx+si],al
00003903  0000              add [bx+si],al
00003905  0000              add [bx+si],al
00003907  0000              add [bx+si],al
00003909  0000              add [bx+si],al
0000390B  0000              add [bx+si],al
0000390D  0000              add [bx+si],al
0000390F  0000              add [bx+si],al
00003911  0000              add [bx+si],al
00003913  0000              add [bx+si],al
00003915  0000              add [bx+si],al
00003917  0000              add [bx+si],al
00003919  0000              add [bx+si],al
0000391B  0000              add [bx+si],al
0000391D  0000              add [bx+si],al
0000391F  0003              add [bp+di],al
00003921  0024              add [si],ah
00003923  17                pop ss
00003924  17                pop ss
00003925  006A17            add [bp+si+0x17],ch
00003928  2B00              sub ax,[bx+si]
0000392A  B017              mov al,0x17
0000392C  3F                aas
0000392D  00F6              add dh,dh
0000392F  17                pop ss
00003930  53                push bx
00003931  00F6              add dh,dh
00003933  17                pop ss
00003934  67007118          add [ecx+0x18],dh
00003938  7B00              jpo 0x393a
0000393A  3C18              cmp al,0x18
0000393C  8F00              pop word [bx+si]
0000393E  6A17              push byte +0x17
00003940  A300B7            mov [0xb700],ax
00003943  1804              sbb [si],al
00003945  11CC              adc sp,cx
00003947  CC                int3
00003948  CC                int3
00003949  CC                int3
0000394A  C00000            rol byte [bx+si],0x0
0000394D  0CC0              or al,0xc0
0000394F  0000              add [bx+si],al
00003951  0CC0              or al,0xc0
00003953  CC                int3
00003954  CC                int3
00003955  CC                int3
00003956  C0C000            rol al,0x0
00003959  00C0              add al,al
0000395B  C00000            rol byte [bx+si],0x0
0000395E  C0C000            rol al,0x0
00003961  00C0              add al,al
00003963  C00000            rol byte [bx+si],0x0
00003966  C0C000            rol al,0x0
00003969  00C0              add al,al
0000396B  C00000            rol byte [bx+si],0x0
0000396E  C0C000            rol al,0x0
00003971  00C0              add al,al
00003973  C00000            rol byte [bx+si],0x0
00003976  C0C000            rol al,0x0
00003979  00C0              add al,al
0000397B  CC                int3
0000397C  CC                int3
0000397D  CC                int3
0000397E  C00000            rol byte [bx+si],0x0
00003981  0CC0              or al,0xc0
00003983  0000              add [bx+si],al
00003985  0CCC              or al,0xcc
00003987  CC                int3
00003988  CC                int3
00003989  CC                int3
0000398A  0411              add al,0x11
0000398C  CC                int3
0000398D  CC                int3
0000398E  CC                int3
0000398F  CC                int3
00003990  C00000            rol byte [bx+si],0x0
00003993  0CC0              or al,0xc0
00003995  0000              add [bx+si],al
00003997  0CC0              or al,0xc0
00003999  CC                int3
0000399A  CC                int3
0000399B  0CC0              or al,0xc0
0000399D  C00C0C            ror byte [si],0xc
000039A0  C0C00C            rol al,0xc
000039A3  0CC0              or al,0xc0
000039A5  C00C0C            ror byte [si],0xc
000039A8  C0CCCC            ror ah,0xcc
000039AB  0CC0              or al,0xc0
000039AD  0000              add [bx+si],al
000039AF  0CC0              or al,0xc0
000039B1  0000              add [bx+si],al
000039B3  0CC0              or al,0xc0
000039B5  CC                int3
000039B6  C0CCC0            ror ah,0xc0
000039B9  C0C0C0            rol al,0xc0
000039BC  C0C0C0            rol al,0xc0
000039BF  C0C0C0            rol al,0xc0
000039C2  C0CCC0            ror ah,0xc0
000039C5  C0C00C            rol al,0xc
000039C8  C0C0C0            rol al,0xc0
000039CB  0CCC              or al,0xcc
000039CD  C0CCCC            ror ah,0xcc
000039D0  0411              add al,0x11
000039D2  CC                int3
000039D3  CC                int3
000039D4  CC                int3
000039D5  CC                int3
000039D6  C00000            rol byte [bx+si],0x0
000039D9  0CC0              or al,0xc0
000039DB  0000              add [bx+si],al
000039DD  0CC0              or al,0xc0
000039DF  CC                int3
000039E0  CC                int3
000039E1  0CC0              or al,0xc0
000039E3  C00C0C            ror byte [si],0xc
000039E6  C0C00C            rol al,0xc
000039E9  0CC0              or al,0xc0
000039EB  C00C0C            ror byte [si],0xc
000039EE  C0C00C            rol al,0xc
000039F1  0CC0              or al,0xc0
000039F3  C00C0C            ror byte [si],0xc
000039F6  C0C00C            rol al,0xc
000039F9  0CC0              or al,0xc0
000039FB  C00C0C            ror byte [si],0xc
000039FE  C0C00C            rol al,0xc
00003A01  0CC0              or al,0xc0
00003A03  C00C0C            ror byte [si],0xc
00003A06  C0CCCC            ror ah,0xcc
00003A09  0CC0              or al,0xc0
00003A0B  0000              add [bx+si],al
00003A0D  0CC0              or al,0xc0
00003A0F  0000              add [bx+si],al
00003A11  0CCC              or al,0xcc
00003A13  CC                int3
00003A14  CC                int3
00003A15  CC                int3
00003A16  0411              add al,0x11
00003A18  CC                int3
00003A19  CC                int3
00003A1A  CC                int3
00003A1B  CC                int3
00003A1C  C00000            rol byte [bx+si],0x0
00003A1F  0CC0              or al,0xc0
00003A21  0000              add [bx+si],al
00003A23  0CC0              or al,0xc0
00003A25  CC                int3
00003A26  CC                int3
00003A27  CC                int3
00003A28  C0C000            rol al,0x0
00003A2B  00C0              add al,al
00003A2D  C00000            rol byte [bx+si],0x0
00003A30  C0CCCC            ror ah,0xcc
00003A33  CC                int3
00003A34  C00000            rol byte [bx+si],0x0
00003A37  0CC0              or al,0xc0
00003A39  0000              add [bx+si],al
00003A3B  0CCC              or al,0xcc
00003A3D  CC                int3
00003A3E  CC                int3
00003A3F  0C00              or al,0x0
00003A41  000C              add [si],cl
00003A43  0C00              or al,0x0
00003A45  000C              add [si],cl
00003A47  0C00              or al,0x0
00003A49  000C              add [si],cl
00003A4B  0CCC              or al,0xcc
00003A4D  CC                int3
00003A4E  CC                int3
00003A4F  0CC0              or al,0xc0
00003A51  0000              add [bx+si],al
00003A53  0CC0              or al,0xc0
00003A55  0000              add [bx+si],al
00003A57  0CCC              or al,0xcc
00003A59  CC                int3
00003A5A  CC                int3
00003A5B  CC                int3
00003A5C  0311              add dx,[bx+di]
00003A5E  0CCC              or al,0xcc
00003A60  CC                int3
00003A61  0C00              or al,0x0
00003A63  0C0C              or al,0xc
00003A65  000C              add [si],cl
00003A67  0CC0              or al,0xc0
00003A69  CC                int3
00003A6A  00C0              add al,al
00003A6C  C000C0            rol byte [bx+si],0xc0
00003A6F  C000C0            rol byte [bx+si],0xc0
00003A72  C000C0            rol byte [bx+si],0xc0
00003A75  C000C0            rol byte [bx+si],0xc0
00003A78  C000C0            rol byte [bx+si],0xc0
00003A7B  C000C0            rol byte [bx+si],0xc0
00003A7E  C000C0            rol byte [bx+si],0xc0
00003A81  C000C0            rol byte [bx+si],0xc0
00003A84  C00CC0            ror byte [si],0xc0
00003A87  CC                int3
00003A88  0C00              or al,0x0
00003A8A  0C0C              or al,0xc
00003A8C  000C              add [si],cl
00003A8E  0CCC              or al,0xcc
00003A90  CC                int3
00003A91  0411              add al,0x11
00003A93  CC                int3
00003A94  CC                int3
00003A95  CC                int3
00003A96  CC                int3
00003A97  C00000            rol byte [bx+si],0x0
00003A9A  0CC0              or al,0xc0
00003A9C  0000              add [bx+si],al
00003A9E  0CC0              or al,0xc0
00003AA0  CC                int3
00003AA1  CC                int3
00003AA2  CC                int3
00003AA3  C0C000            rol al,0x0
00003AA6  00C0              add al,al
00003AA8  C00000            rol byte [bx+si],0x0
00003AAB  C0C000            rol al,0x0
00003AAE  00C0              add al,al
00003AB0  CC                int3
00003AB1  CC                int3
00003AB2  00C0              add al,al
00003AB4  000C              add [si],cl
00003AB6  00C0              add al,al
00003AB8  000C              add [si],cl
00003ABA  00C0              add al,al
00003ABC  CC                int3
00003ABD  CC                int3
00003ABE  00C0              add al,al
00003AC0  C00000            rol byte [bx+si],0x0
00003AC3  C0C000            rol al,0x0
00003AC6  00C0              add al,al
00003AC8  C00000            rol byte [bx+si],0x0
00003ACB  C0C000            rol al,0x0
00003ACE  00C0              add al,al
00003AD0  C00000            rol byte [bx+si],0x0
00003AD3  CC                int3
00003AD4  C00000            rol byte [bx+si],0x0
00003AD7  0411              add al,0x11
00003AD9  CC                int3
00003ADA  CC                int3
00003ADB  CC                int3
00003ADC  CC                int3
00003ADD  C00000            rol byte [bx+si],0x0
00003AE0  0CC0              or al,0xc0
00003AE2  0000              add [bx+si],al
00003AE4  0CC0              or al,0xc0
00003AE6  CC                int3
00003AE7  CC                int3
00003AE8  CC                int3
00003AE9  C0C000            rol al,0x0
00003AEC  00C0              add al,al
00003AEE  C00000            rol byte [bx+si],0x0
00003AF1  C0CCCC            ror ah,0xcc
00003AF4  00C0              add al,al
00003AF6  000C              add [si],cl
00003AF8  00C0              add al,al
00003AFA  000C              add [si],cl
00003AFC  00C0              add al,al
00003AFE  CC                int3
00003AFF  CC                int3
00003B00  00C0              add al,al
00003B02  C00000            rol byte [bx+si],0x0
00003B05  C0C000            rol al,0x0
00003B08  00C0              add al,al
00003B0A  C00000            rol byte [bx+si],0x0
00003B0D  C0CCCC            ror ah,0xcc
00003B10  CC                int3
00003B11  C00000            rol byte [bx+si],0x0
00003B14  0CC0              or al,0xc0
00003B16  0000              add [bx+si],al
00003B18  0CCC              or al,0xcc
00003B1A  CC                int3
00003B1B  CC                int3
00003B1C  CC                int3
00003B1D  44                inc sp
00003B1E  0000              add [bx+si],al
00003B20  0014              add [si],dl
00003B22  0024              add [si],ah
00003B24  17                pop ss
00003B25  6A17              push byte +0x17
00003B27  B017              mov al,0x17
00003B29  F617              not byte [bx]
00003B2B  F617              not byte [bx]
00003B2D  7118              jno 0x3b47
00003B2F  3C18              cmp al,0x18
00003B31  6A17              push byte +0x17
00003B33  B718              mov bh,0x18
00003B35  0000              add [bx+si],al
00003B37  94                xchg ax,sp
00003B38  0020              add [bx+si],ah
00003B3A  0007              add [bx],al
00003B3C  005E1A            add [bp+0x1a],bl
00003B3F  57                push di
00003B40  1B00              sbb ax,[bx+si]
00003B42  00360034          add [0x3400],dh
00003B46  0007              add [bx],al
00003B48  00A21B55          add [bp+si+0x551b],ah
00003B4C  1A571B            sbb dl,[bx+0x1b]
00003B4F  661C12            o32 sbb al,0x12
00003B52  1C37              sbb al,0x37
00003B54  1BD3              sbb dx,bx
00003B56  1AD3              sbb dl,bl
00003B58  1ABA1A47          sbb bh,[bp+si+0x471a]
00003B5C  1B551A            sbb dx,[di+0x1a]
00003B5F  DC1A              fcomp qword [bp+si]
00003B61  661C55            o32 sbb al,0x55
00003B64  1ADC              sbb bl,ah
00003B66  1A771A            sbb dh,[bx+0x1a]
00003B69  661C89            o32 sbb al,0x89
00003B6C  1B0E1B55          sbb cx,[0x551b]
00003B70  1ADC              sbb bl,ah
00003B72  1AC3              sbb al,bl
00003B74  1A661C            sbb ah,[bp+0x1c]
00003B77  021C              add bl,[si]
00003B79  55                push bp
00003B7A  1ADC              sbb bl,ah
00003B7C  1A771A            sbb dh,[bx+0x1a]
00003B7F  55                push bp
00003B80  1AC3              sbb al,bl
00003B82  1A00              sbb al,[bx+si]
00003B84  0032              add [bp+si],dh
00003B86  003E0008          add [0x800],bh
00003B8A  008C1C8C          add [si+0x8c1c],cl
00003B8E  1C8C              sbb al,0x8c
00003B90  1C8C              sbb al,0x8c
00003B92  1C8C              sbb al,0x8c
00003B94  1C8C              sbb al,0x8c
00003B96  1C8C              sbb al,0x8c
00003B98  1C8C              sbb al,0x8c
00003B9A  1C8C              sbb al,0x8c
00003B9C  1C8C              sbb al,0x8c
00003B9E  1C8C              sbb al,0x8c
00003BA0  1C8C              sbb al,0x8c
00003BA2  1C8C              sbb al,0x8c
00003BA4  1C8C              sbb al,0x8c
00003BA6  1C8C              sbb al,0x8c
00003BA8  1C8C              sbb al,0x8c
00003BAA  1C8C              sbb al,0x8c
00003BAC  1C8C              sbb al,0x8c
00003BAE  1C8C              sbb al,0x8c
00003BB0  1C8C              sbb al,0x8c
00003BB2  1C8C              sbb al,0x8c
00003BB4  1C8C              sbb al,0x8c
00003BB6  1C8C              sbb al,0x8c
00003BB8  1C8C              sbb al,0x8c
00003BBA  1C8C              sbb al,0x8c
00003BBC  1C8C              sbb al,0x8c
00003BBE  1C00              sbb al,0x0
00003BC0  004500            add [di+0x0],al
00003BC3  7000              jo 0x3bc5
00003BC5  07                pop es
00003BC6  0022              add [bp+si],ah
00003BC8  1CEC              sbb al,0xec
00003BCA  1A661C            sbb ah,[bp+0x1c]
00003BCD  5E                pop si
00003BCE  1A881A98          sbb cl,[bx+si+0x981a]
00003BD2  1ABA1ADC          sbb bh,[bp+si+0xdc1a]
00003BD6  1A691C            sbb ch,[bx+di+0x1c]
00003BD9  661C22            o32 sbb al,0x22
00003BDC  1C57              sbb al,0x57
00003BDE  1BFC              sbb di,sp
00003BE0  1A881A66          sbb cl,[bx+si+0x661a]
00003BE4  1CB2              sbb al,0xb2
00003BE6  1B701C            sbb si,[bx+si+0x1c]
00003BE9  881A              mov [bp+si],bl
00003BEB  57                push di
00003BEC  1B5E1A            sbb bx,[bp+0x1a]
00003BEF  EC                in al,dx
00003BF0  1A551A            sbb dl,[di+0x1a]
00003BF3  0E                push cs
00003BF4  1B771A            sbb si,[bx+0x1a]
00003BF7  791C              jns 0x3c15
00003BF9  0000              add [bx+si],al
00003BFB  92                xchg ax,dx
00003BFC  007A00            add [bp+si+0x0],bh
00003BFF  07                pop es
00003C00  00EC              add ah,ch
00003C02  1A0E1B66          sbb cl,[0x661b]
00003C06  1C66              sbb al,0x66
00003C08  1CA2              sbb al,0xa2
00003C0A  1B701C            sbb si,[bx+si+0x1c]
00003C0D  EC                in al,dx
00003C0E  1A571B            sbb dl,[bx+0x1b]
00003C11  1E                push ds
00003C12  1B27              sbb sp,[bx]
00003C14  1BBA1A6E          sbb di,[bp+si+0x6e1a]
00003C18  1AC3              sbb al,bl
00003C1A  1A791C            sbb bh,[bx+di+0x1c]
00003C1D  0000              add [bx+si],al
00003C1F  1A00              sbb al,[bx+si]
00003C21  C00007            rol byte [bx+si],0x7
00003C24  00691B            add [bx+di+0x1b],ch
00003C27  EC                in al,dx
00003C28  1AFC              sbb bh,ah
00003C2A  1A571B            sbb dl,[bx+0x1b]
00003C2D  0E                push cs
00003C2E  1BBA1A98          sbb di,[bp+si+0x981a]
00003C32  1AAA1A27          sbb ch,[bp+si+0x271a]
00003C36  1B661C            sbb sp,[bp+0x1c]
00003C39  42                inc dx
00003C3A  1C5D              sbb al,0x5d
00003C3C  1C54              sbb al,0x54
00003C3E  1C42              sbb al,0x42
00003C40  1C90              sbb al,0x90
00003C42  1C42              sbb al,0x42
00003C44  1C5D              sbb al,0x5d
00003C46  1C54              sbb al,0x54
00003C48  1C4B              sbb al,0x4b
00003C4A  1C66              sbb al,0x66
00003C4C  1C5E              sbb al,0x5e
00003C4E  1A571B            sbb dl,[bx+0x1b]
00003C51  661CF2            o32 sbb al,0xf2
00003C54  1BE2              sbb sp,dx
00003C56  1B821CC2          sbb ax,[bp+si+0xc21c]
00003C5A  1B991BE2          sbb bx,[bx+di+0xe21b]
00003C5E  1B791B            sbb di,[bx+di+0x1b]
00003C61  661C12            o32 sbb al,0x12
00003C64  1C32              sbb al,0x32
00003C66  1C12              sbb al,0x12
00003C68  1C22              sbb al,0x22
00003C6A  1C79              sbb al,0x79
00003C6C  1BD2              sbb dx,dx
00003C6E  1B12              sbb dx,[bp+si]
00003C70  1C00              sbb al,0x0
00003C72  00FF              add bh,bh
00003C74  FF01              inc word [bx+di]
00003C76  07                pop es
00003C77  0000              add [bx+si],al
00003C79  3C0C              cmp al,0xc
00003C7B  3F                aas
00003C7C  C3                ret
00003C7D  3C02              cmp al,0x2
00003C7F  07                pop es
00003C80  C000C0            rol byte [bx+si],0xc0
00003C83  00C0              add al,al
00003C85  003C              add [si],bh
00003C87  00C0              add al,al
00003C89  C0C0C0            rol al,0xc0
00003C8C  3F                aas
00003C8D  0001              add [bx+di],al
00003C8F  07                pop es
00003C90  0000              add [bx+si],al
00003C92  3F                aas
00003C93  C0C0C0            rol al,0xc0
00003C96  3F                aas
00003C97  0207              add al,[bx]
00003C99  00C0              add al,al
00003C9B  00C0              add al,al
00003C9D  00C0              add al,al
00003C9F  3F                aas
00003CA0  00C0              add al,al
00003CA2  C0C0C0            rol al,0xc0
00003CA5  3F                aas
00003CA6  0000              add [bx+si],al
00003CA8  0207              add al,[bx]
00003CAA  0000              add [bx+si],al
00003CAC  0000              add [bx+si],al
00003CAE  3F                aas
00003CAF  00C0              add al,al
00003CB1  C0FF00            sar bh,0x0
00003CB4  C0003F            rol byte [bx+si],0x3f
00003CB7  0002              add [bp+si],al
00003CB9  0800              or [bx+si],al
00003CBB  0000              add [bx+si],al
00003CBD  003F              add [bx],bh
00003CBF  00C0              add al,al
00003CC1  C0C0C0            rol al,0xc0
00003CC4  3F                aas
00003CC5  0000              add [bx+si],al
00003CC7  C03F00            sar byte [bx],0x0
00003CCA  0207              add al,[bx]
00003CCC  C000C0            rol byte [bx+si],0xc0
00003CCF  00C0              add al,al
00003CD1  00FF              add bh,bh
00003CD3  00C0              add al,al
00003CD5  C0C0C0            rol al,0xc0
00003CD8  C0C001            rol al,0x1
00003CDB  07                pop es
00003CDC  0C00              or al,0x0
00003CDE  000C              add [si],cl
00003CE0  0C0C              or al,0xc
00003CE2  0C02              or al,0x2
00003CE4  07                pop es
00003CE5  C000C0            rol byte [bx+si],0xc0
00003CE8  00C0              add al,al
00003CEA  C0C300            rol bl,0x0
00003CED  CC                int3
00003CEE  00F3              add bl,dh
00003CF0  00C0              add al,al
00003CF2  C00107            rol byte [bx+di],0x7
00003CF5  300C              xor [si],cl
00003CF7  0C0C              or al,0xc
00003CF9  0C0C              or al,0xc
00003CFB  0302              add ax,[bp+si]
00003CFD  07                pop es
00003CFE  0000              add [bx+si],al
00003D00  0000              add [bx+si],al
00003D02  CF                iret
00003D03  0030              add [bx+si],dh
00003D05  C0                db 0xC0
00003D06  30C0              xor al,al
00003D08  30C0              xor al,al
00003D0A  30C0              xor al,al
00003D0C  0207              add al,[bx]
00003D0E  0000              add [bx+si],al
00003D10  0000              add [bx+si],al
00003D12  3F                aas
00003D13  00C0              add al,al
00003D15  C0C0C0            rol al,0xc0
00003D18  C0C03F            rol al,0x3f
00003D1B  0002              add [bp+si],al
00003D1D  0800              or [bx+si],al
00003D1F  0000              add [bx+si],al
00003D21  003F              add [bx],bh
00003D23  00C0              add al,al
00003D25  C0C0C0            rol al,0xc0
00003D28  FF00              inc word [bx+si]
00003D2A  C000C0            rol byte [bx+si],0xc0
00003D2D  0002              add [bp+si],al
00003D2F  07                pop es
00003D30  0000              add [bx+si],al
00003D32  0000              add [bx+si],al
00003D34  CF                iret
00003D35  00F0              add al,dh
00003D37  C0C000            rol al,0x0
00003D3A  C000C0            rol byte [bx+si],0xc0
00003D3D  0001              add [bx+di],al
00003D3F  07                pop es
00003D40  0000              add [bx+si],al
00003D42  3F                aas
00003D43  C03C0C            sar byte [si],0xc
00003D46  FC                cld
00003D47  0207              add al,[bx]
00003D49  0000              add [bx+si],al
00003D4B  0C00              or al,0x0
00003D4D  0C00              or al,0x0
00003D4F  FFC0              inc ax
00003D51  0C00              or al,0x0
00003D53  0C00              or al,0x0
00003D55  0C00              or al,0x0
00003D57  0207              add al,[bx]
00003D59  0000              add [bx+si],al
00003D5B  0000              add [bx+si],al
00003D5D  C0C0C0            rol al,0xc0
00003D60  C0C0C0            rol al,0xc0
00003D63  C0C03F            rol al,0x3f
00003D66  0002              add [bp+si],al
00003D68  07                pop es
00003D69  0000              add [bx+si],al
00003D6B  0000              add [bx+si],al
00003D6D  C0C0C0            rol al,0xc0
00003D70  C0C0C0            rol al,0xc0
00003D73  3300              xor ax,[bx+si]
00003D75  0C00              or al,0x0
00003D77  0208              add cl,[bx+si]
00003D79  0000              add [bx+si],al
00003D7B  0000              add [bx+si],al
00003D7D  C3                ret
00003D7E  00C3              add bl,al
00003D80  00C3              add bl,al
00003D82  003C              add [si],bh
00003D84  0003              add [bp+di],al
00003D86  003C              add [si],bh
00003D88  0002              add [bp+si],al
00003D8A  07                pop es
00003D8B  3F                aas
00003D8C  00C0              add al,al
00003D8E  C0C000            rol al,0x0
00003D91  C000C0            rol byte [bx+si],0xc0
00003D94  00C0              add al,al
00003D96  C03F00            sar byte [bx],0x0
00003D99  0207              add al,[bx]
00003D9B  FFC0              inc ax
00003D9D  C000C0            rol byte [bx+si],0xc0
00003DA0  00FF              add bh,bh
00003DA2  00C0              add al,al
00003DA4  00C0              add al,al
00003DA6  00FF              add bh,bh
00003DA8  C00207            rol byte [bp+si],0x7
00003DAB  FFC0              inc ax
00003DAD  C000C0            rol byte [bx+si],0xc0
00003DB0  00FF              add bh,bh
00003DB2  00C0              add al,al
00003DB4  00C0              add al,al
00003DB6  00C0              add al,al
00003DB8  0001              add [bx+di],al
00003DBA  07                pop es
00003DBB  3F                aas
00003DBC  0C0C              or al,0xc
00003DBE  0C0C              or al,0xc
00003DC0  0C3F              or al,0x3f
00003DC2  0207              add al,[bx]
00003DC4  03F0              add si,ax
00003DC6  00C0              add al,al
00003DC8  00C0              add al,al
00003DCA  00C0              add al,al
00003DCC  00C0              add al,al
00003DCE  C0C03F            rol al,0x3f
00003DD1  0002              add [bp+si],al
00003DD3  07                pop es
00003DD4  C0C0C3            rol al,0xc3
00003DD7  00CC              add ah,cl
00003DD9  00F0              add al,dh
00003DDB  00CC              add ah,cl
00003DDD  00C3              add bl,al
00003DDF  00C0              add al,al
00003DE1  C00207            rol byte [bp+si],0x7
00003DE4  C000C0            rol byte [bx+si],0xc0
00003DE7  00C0              add al,al
00003DE9  00C0              add al,al
00003DEB  00C0              add al,al
00003DED  00C0              add al,al
00003DEF  00FF              add bh,bh
00003DF1  C00207            rol byte [bp+si],0x7
00003DF4  C0C0F3            rol al,0xf3
00003DF7  C0CCC0            ror ah,0xc0
00003DFA  CC                int3
00003DFB  C0C0C0            rol al,0xc0
00003DFE  C0C0C0            rol al,0xc0
00003E01  C00207            rol byte [bp+si],0x7
00003E04  C0C0C0            rol al,0xc0
00003E07  C0                db 0xC0
00003E08  F0C0CCC0          lock ror ah,0xc0
00003E0C  C3                ret
00003E0D  C0C0C0            rol al,0xc0
00003E10  C0C002            rol al,0x2
00003E13  07                pop es
00003E14  3F                aas
00003E15  00C0              add al,al
00003E17  C0C0C0            rol al,0xc0
00003E1A  C0C0C0            rol al,0xc0
00003E1D  C0C0C0            rol al,0xc0
00003E20  3F                aas
00003E21  0002              add [bp+si],al
00003E23  07                pop es
00003E24  FF00              inc word [bx+si]
00003E26  C0C0C0            rol al,0xc0
00003E29  C0FF00            sar bh,0x0
00003E2C  CC                int3
00003E2D  00C3              add bl,al
00003E2F  00C0              add al,al
00003E31  C00207            rol byte [bp+si],0x7
00003E34  3F                aas
00003E35  00C0              add al,al
00003E37  C0C000            rol al,0x0
00003E3A  3F                aas
00003E3B  0000              add [bx+si],al
00003E3D  C0C0C0            rol al,0xc0
00003E40  3F                aas
00003E41  0002              add [bp+si],al
00003E43  07                pop es
00003E44  FFC0              inc ax
00003E46  0C00              or al,0x0
00003E48  0C00              or al,0x0
00003E4A  0C00              or al,0x0
00003E4C  0C00              or al,0x0
00003E4E  0C00              or al,0x0
00003E50  0C00              or al,0x0
00003E52  0207              add al,[bx]
00003E54  C0C0C0            rol al,0xc0
00003E57  C0                db 0xC0
00003E58  3300              xor ax,[bx+si]
00003E5A  0C00              or al,0x0
00003E5C  0C00              or al,0x0
00003E5E  0C00              or al,0x0
00003E60  0C00              or al,0x0
00003E62  0107              add [bx],ax
00003E64  0C3C              or al,0x3c
00003E66  0C0C              or al,0xc
00003E68  0C0C              or al,0xc
00003E6A  3F                aas
00003E6B  0107              add [bx],ax
00003E6D  3CC3              cmp al,0xc3
00003E6F  030C              add cx,[si]
00003E71  30C0              xor al,al
00003E73  FF01              inc word [bx+di]
00003E75  07                pop es
00003E76  3CC3              cmp al,0xc3
00003E78  C3                ret
00003E79  3CC3              cmp al,0xc3
00003E7B  C3                ret
00003E7C  3C01              cmp al,0x1
00003E7E  07                pop es
00003E7F  3CC3              cmp al,0xc3
00003E81  C3                ret
00003E82  3F                aas
00003E83  030C              add cx,[si]
00003E85  FC                cld
00003E86  0101              add [bx+di],ax
00003E88  0001              add [bx+di],al
00003E8A  050000            add ax,0x0
00003E8D  0C00              or al,0x0
00003E8F  0C01              or al,0x1
00003E91  07                pop es
00003E92  030C              add cx,[si]
00003E94  3030              xor [bx+si],dh
00003E96  300C              xor [si],cl
00003E98  0301              add ax,[bx+di]
00003E9A  07                pop es
00003E9B  300C              xor [si],cl
00003E9D  0303              add ax,[bp+di]
00003E9F  030C              add cx,[si]
00003EA1  3002              xor [bp+si],al
00003EA3  0400              add al,0x0
00003EA5  0000              add [bx+si],al
00003EA7  0000              add [bx+si],al
00003EA9  00FF              add bh,bh
00003EAB  C00201            rol byte [bp+si],0x1
00003EAE  3333              xor si,[bp+di]
00003EB0  0108              add [bx+si],cx
00003EB2  0000              add [bx+si],al
00003EB4  0000              add [bx+si],al
00003EB6  0003              add [bp+di],al
00003EB8  030C              add cx,[si]
00003EBA  0000              add [bx+si],al
00003EBC  0000              add [bx+si],al
00003EBE  0000              add [bx+si],al
00003EC0  0000              add [bx+si],al
00003EC2  0000              add [bx+si],al
00003EC4  0000              add [bx+si],al
00003EC6  0000              add [bx+si],al
00003EC8  0000              add [bx+si],al
00003ECA  0000              add [bx+si],al
00003ECC  0000              add [bx+si],al
00003ECE  0000              add [bx+si],al
00003ED0  0000              add [bx+si],al
00003ED2  0000              add [bx+si],al
00003ED4  0000              add [bx+si],al
00003ED6  0000              add [bx+si],al
00003ED8  0000              add [bx+si],al
00003EDA  0000              add [bx+si],al
00003EDC  0000              add [bx+si],al
00003EDE  0000              add [bx+si],al
00003EE0  0000              add [bx+si],al
00003EE2  0000              add [bx+si],al
00003EE4  0000              add [bx+si],al
00003EE6  0000              add [bx+si],al
00003EE8  0000              add [bx+si],al
00003EEA  0000              add [bx+si],al
00003EEC  0000              add [bx+si],al
00003EEE  0000              add [bx+si],al
00003EF0  0000              add [bx+si],al
00003EF2  0000              add [bx+si],al
00003EF4  0000              add [bx+si],al
00003EF6  0000              add [bx+si],al
00003EF8  0000              add [bx+si],al
00003EFA  0000              add [bx+si],al
00003EFC  0000              add [bx+si],al
00003EFE  0000              add [bx+si],al
00003F00  0000              add [bx+si],al
00003F02  0000              add [bx+si],al
00003F04  0000              add [bx+si],al
00003F06  0000              add [bx+si],al
00003F08  0000              add [bx+si],al
00003F0A  0000              add [bx+si],al
00003F0C  0000              add [bx+si],al
00003F0E  0000              add [bx+si],al
00003F10  0000              add [bx+si],al
00003F12  0000              add [bx+si],al
00003F14  0000              add [bx+si],al
00003F16  0000              add [bx+si],al
00003F18  0000              add [bx+si],al
00003F1A  0000              add [bx+si],al
00003F1C  0000              add [bx+si],al
00003F1E  0000              add [bx+si],al
00003F20  0000              add [bx+si],al
00003F22  0000              add [bx+si],al
00003F24  0000              add [bx+si],al
00003F26  0000              add [bx+si],al
00003F28  0000              add [bx+si],al
00003F2A  0000              add [bx+si],al
00003F2C  0000              add [bx+si],al
00003F2E  0000              add [bx+si],al
00003F30  0000              add [bx+si],al
00003F32  0000              add [bx+si],al
00003F34  0000              add [bx+si],al
00003F36  0000              add [bx+si],al
00003F38  0000              add [bx+si],al
00003F3A  0000              add [bx+si],al
00003F3C  0000              add [bx+si],al
00003F3E  0000              add [bx+si],al
00003F40  0000              add [bx+si],al
00003F42  0000              add [bx+si],al
00003F44  0000              add [bx+si],al
00003F46  0000              add [bx+si],al
00003F48  0000              add [bx+si],al
00003F4A  0000              add [bx+si],al
00003F4C  0000              add [bx+si],al
00003F4E  0000              add [bx+si],al
00003F50  0000              add [bx+si],al
00003F52  0000              add [bx+si],al
00003F54  0000              add [bx+si],al
00003F56  0000              add [bx+si],al
00003F58  0000              add [bx+si],al
00003F5A  0000              add [bx+si],al
00003F5C  0000              add [bx+si],al
00003F5E  0000              add [bx+si],al
00003F60  0000              add [bx+si],al
00003F62  0000              add [bx+si],al
00003F64  0000              add [bx+si],al
00003F66  0000              add [bx+si],al
00003F68  0000              add [bx+si],al
00003F6A  0000              add [bx+si],al
00003F6C  0000              add [bx+si],al
00003F6E  0000              add [bx+si],al
00003F70  0000              add [bx+si],al
00003F72  0000              add [bx+si],al
00003F74  0000              add [bx+si],al
00003F76  0000              add [bx+si],al
00003F78  0000              add [bx+si],al
00003F7A  0000              add [bx+si],al
00003F7C  0000              add [bx+si],al
00003F7E  0000              add [bx+si],al
00003F80  0000              add [bx+si],al
00003F82  0000              add [bx+si],al
00003F84  0000              add [bx+si],al
00003F86  0000              add [bx+si],al
00003F88  0000              add [bx+si],al
00003F8A  0000              add [bx+si],al
00003F8C  0000              add [bx+si],al
00003F8E  0000              add [bx+si],al
00003F90  0000              add [bx+si],al
00003F92  0000              add [bx+si],al
00003F94  0000              add [bx+si],al
00003F96  0000              add [bx+si],al
00003F98  0000              add [bx+si],al
00003F9A  0000              add [bx+si],al
00003F9C  0000              add [bx+si],al
00003F9E  0000              add [bx+si],al
00003FA0  0000              add [bx+si],al
00003FA2  0000              add [bx+si],al
00003FA4  0000              add [bx+si],al
00003FA6  0000              add [bx+si],al
00003FA8  0000              add [bx+si],al
00003FAA  0000              add [bx+si],al
00003FAC  0000              add [bx+si],al
00003FAE  0000              add [bx+si],al
00003FB0  0000              add [bx+si],al
00003FB2  0000              add [bx+si],al
00003FB4  0000              add [bx+si],al
00003FB6  0000              add [bx+si],al
00003FB8  0000              add [bx+si],al
00003FBA  0000              add [bx+si],al
00003FBC  0000              add [bx+si],al
00003FBE  0000              add [bx+si],al
00003FC0  0000              add [bx+si],al
00003FC2  0000              add [bx+si],al
00003FC4  0000              add [bx+si],al
00003FC6  0000              add [bx+si],al
00003FC8  0000              add [bx+si],al
00003FCA  0000              add [bx+si],al
00003FCC  0000              add [bx+si],al
00003FCE  0000              add [bx+si],al
00003FD0  0000              add [bx+si],al
00003FD2  0000              add [bx+si],al
00003FD4  0000              add [bx+si],al
00003FD6  0000              add [bx+si],al
00003FD8  0000              add [bx+si],al
00003FDA  0000              add [bx+si],al
00003FDC  0000              add [bx+si],al
00003FDE  0000              add [bx+si],al
00003FE0  0000              add [bx+si],al
00003FE2  0000              add [bx+si],al
00003FE4  0000              add [bx+si],al
00003FE6  0000              add [bx+si],al
00003FE8  0000              add [bx+si],al
00003FEA  0000              add [bx+si],al
00003FEC  0000              add [bx+si],al
00003FEE  0000              add [bx+si],al
00003FF0  0000              add [bx+si],al
00003FF2  0000              add [bx+si],al
00003FF4  0000              add [bx+si],al
00003FF6  0000              add [bx+si],al
00003FF8  0000              add [bx+si],al
00003FFA  0000              add [bx+si],al
00003FFC  0000              add [bx+si],al
00003FFE  0000              add [bx+si],al
00004000  0000              add [bx+si],al
00004002  0000              add [bx+si],al
00004004  0000              add [bx+si],al
00004006  0000              add [bx+si],al
00004008  0000              add [bx+si],al
0000400A  0000              add [bx+si],al
0000400C  0000              add [bx+si],al
0000400E  0000              add [bx+si],al
00004010  0000              add [bx+si],al
00004012  0000              add [bx+si],al
00004014  0000              add [bx+si],al
00004016  0000              add [bx+si],al
00004018  0000              add [bx+si],al
0000401A  0000              add [bx+si],al
0000401C  0000              add [bx+si],al
0000401E  0000              add [bx+si],al
00004020  0000              add [bx+si],al
00004022  0000              add [bx+si],al
00004024  0000              add [bx+si],al
00004026  0000              add [bx+si],al
00004028  0000              add [bx+si],al
0000402A  0000              add [bx+si],al
0000402C  0000              add [bx+si],al
0000402E  0000              add [bx+si],al
00004030  0000              add [bx+si],al
00004032  0000              add [bx+si],al
00004034  0000              add [bx+si],al
00004036  0000              add [bx+si],al
00004038  0000              add [bx+si],al
0000403A  0000              add [bx+si],al
0000403C  0000              add [bx+si],al
0000403E  0000              add [bx+si],al
00004040  0000              add [bx+si],al
00004042  0000              add [bx+si],al
00004044  0000              add [bx+si],al
00004046  0000              add [bx+si],al
00004048  0000              add [bx+si],al
0000404A  0000              add [bx+si],al
0000404C  0000              add [bx+si],al
0000404E  0000              add [bx+si],al
00004050  0000              add [bx+si],al
00004052  0000              add [bx+si],al
00004054  0000              add [bx+si],al
00004056  0000              add [bx+si],al
00004058  0000              add [bx+si],al
0000405A  0000              add [bx+si],al
0000405C  0000              add [bx+si],al
0000405E  0000              add [bx+si],al
00004060  0000              add [bx+si],al
00004062  0000              add [bx+si],al
00004064  0000              add [bx+si],al
00004066  0000              add [bx+si],al
00004068  0000              add [bx+si],al
0000406A  0000              add [bx+si],al
0000406C  0000              add [bx+si],al
0000406E  0000              add [bx+si],al
00004070  0000              add [bx+si],al
00004072  0000              add [bx+si],al
00004074  0000              add [bx+si],al
00004076  0000              add [bx+si],al
00004078  0000              add [bx+si],al
0000407A  0000              add [bx+si],al
0000407C  0000              add [bx+si],al
0000407E  0000              add [bx+si],al
00004080  0000              add [bx+si],al
00004082  0000              add [bx+si],al
00004084  0000              add [bx+si],al
00004086  0000              add [bx+si],al
00004088  0000              add [bx+si],al
0000408A  0000              add [bx+si],al
0000408C  0000              add [bx+si],al
0000408E  0000              add [bx+si],al
00004090  0000              add [bx+si],al
00004092  0000              add [bx+si],al
00004094  0000              add [bx+si],al
00004096  0000              add [bx+si],al
00004098  0000              add [bx+si],al
0000409A  0000              add [bx+si],al
0000409C  0000              add [bx+si],al
0000409E  0000              add [bx+si],al
000040A0  0000              add [bx+si],al
000040A2  0000              add [bx+si],al
000040A4  0000              add [bx+si],al
000040A6  0000              add [bx+si],al
000040A8  0000              add [bx+si],al
000040AA  0000              add [bx+si],al
000040AC  0000              add [bx+si],al
000040AE  0000              add [bx+si],al
000040B0  0000              add [bx+si],al
000040B2  0000              add [bx+si],al
000040B4  0000              add [bx+si],al
000040B6  0000              add [bx+si],al
000040B8  0000              add [bx+si],al
000040BA  0000              add [bx+si],al
000040BC  0000              add [bx+si],al
000040BE  0000              add [bx+si],al
000040C0  0000              add [bx+si],al
000040C2  0000              add [bx+si],al
000040C4  0000              add [bx+si],al
000040C6  0000              add [bx+si],al
000040C8  0000              add [bx+si],al
000040CA  0000              add [bx+si],al
000040CC  0000              add [bx+si],al
000040CE  0000              add [bx+si],al
000040D0  0000              add [bx+si],al
000040D2  0000              add [bx+si],al
000040D4  0000              add [bx+si],al
000040D6  0000              add [bx+si],al
000040D8  0000              add [bx+si],al
000040DA  0000              add [bx+si],al
000040DC  0000              add [bx+si],al
000040DE  0000              add [bx+si],al
000040E0  0000              add [bx+si],al
000040E2  0000              add [bx+si],al
000040E4  0000              add [bx+si],al
000040E6  0000              add [bx+si],al
000040E8  0000              add [bx+si],al
000040EA  0000              add [bx+si],al
000040EC  0000              add [bx+si],al
000040EE  0000              add [bx+si],al
000040F0  0000              add [bx+si],al
000040F2  0000              add [bx+si],al
000040F4  0000              add [bx+si],al
000040F6  0000              add [bx+si],al
000040F8  0000              add [bx+si],al
000040FA  0000              add [bx+si],al
000040FC  0000              add [bx+si],al
000040FE  0000              add [bx+si],al
00004100  0000              add [bx+si],al
00004102  0000              add [bx+si],al
00004104  0000              add [bx+si],al
00004106  0000              add [bx+si],al
00004108  0000              add [bx+si],al
0000410A  0000              add [bx+si],al
0000410C  0000              add [bx+si],al
0000410E  0000              add [bx+si],al
00004110  0000              add [bx+si],al
00004112  0000              add [bx+si],al
00004114  0000              add [bx+si],al
00004116  0000              add [bx+si],al
00004118  0000              add [bx+si],al
0000411A  0000              add [bx+si],al
0000411C  0000              add [bx+si],al
0000411E  0000              add [bx+si],al
