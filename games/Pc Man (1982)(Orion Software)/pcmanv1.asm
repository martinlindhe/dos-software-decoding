00000100  8CC8              mov ax,cs
00000102  051000            add ax,0x10
00000105  50                push ax
00000106  050001            add ax,0x100
00000109  8ED8              mov ds,ax
0000010B  B81300            mov ax,0x13
0000010E  50                push ax
0000010F  CB                retf
00000110  90                nop
00000111  90                nop
00000112  90                nop
00000113  E8CA0F            call word 0x10e0
00000116  B800B8            mov ax,0xb800
00000119  8EC0              mov es,ax
0000011B  B04F              mov al,0x4f
0000011D  E661              out 0x61,al
0000011F  B0B6              mov al,0xb6
00000121  E643              out 0x43,al
00000123  B80400            mov ax,0x4
00000126  CD10              int 0x10
00000128  BAD903            mov dx,0x3d9
0000012B  B010              mov al,0x10
0000012D  EE                out dx,al
0000012E  B203              mov dl,0x3
00000130  E8EE00            call word 0x221
00000133  BF5001            mov di,0x150
00000136  BE0000            mov si,0x0
00000139  BBF4FF            mov bx,0xfff4
0000013C  B91700            mov cx,0x17
0000013F  BAF71F            mov dx,0x1ff7
00000142  BD47E0            mov bp,0xe047
00000145  FC                cld
00000146  A5                movsw
00000147  A5                movsw
00000148  A5                movsw
00000149  A5                movsw
0000014A  A4                movsb
0000014B  03FA              add di,dx
0000014D  87D5              xchg dx,bp
0000014F  E2F5              loop 0x146
00000151  81EF7023          sub di,0x2370
00000155  03BFE604          add di,[bx+0x4e6]
00000159  83C302            add bx,byte +0x2
0000015C  75DE              jnz 0x13c
0000015E  BEE604            mov si,0x4e6
00000161  BD1201            mov bp,0x112
00000164  B400              mov ah,0x0
00000166  CD1A              int 0x1a
00000168  8BDA              mov bx,dx
0000016A  B400              mov ah,0x0
0000016C  CD1A              int 0x1a
0000016E  3BDA              cmp bx,dx
00000170  74F8              jz 0x16a
00000172  B401              mov ah,0x1
00000174  CD16              int 0x16
00000176  740C              jz 0x184
00000178  E8450F            call word 0x10c0
0000017B  90                nop
0000017C  3C13              cmp al,0x13
0000017E  7504              jnz 0x184
00000180  F61EA02F          neg byte [0x2fa0]
00000184  AD                lodsw
00000185  803EA02F00        cmp byte [0x2fa0],0x0
0000018A  7F06              jg 0x192
0000018C  E8D10E            call word 0x1060
0000018F  EB07              jmp short 0x198
00000191  90                nop
00000192  E642              out 0x42,al
00000194  8AC4              mov al,ah
00000196  E642              out 0x42,al
00000198  83ED02            sub bp,byte +0x2
0000019B  75C7              jnz 0x164
0000019D  B203              mov dl,0x3
0000019F  E87F00            call word 0x221
000001A2  B90500            mov cx,0x5
000001A5  BEF805            mov si,0x5f8
000001A8  FC                cld
000001A9  AD                lodsw
000001AA  8BD0              mov dx,ax
000001AC  B700              mov bh,0x0
000001AE  B402              mov ah,0x2
000001B0  CD10              int 0x10
000001B2  AC                lodsb
000001B3  3C00              cmp al,0x0
000001B5  7409              jz 0x1c0
000001B7  BB0200            mov bx,0x2
000001BA  B40E              mov ah,0xe
000001BC  CD10              int 0x10
000001BE  EBF2              jmp short 0x1b2
000001C0  E2E6              loop 0x1a8
000001C2  C6068F2F01        mov byte [0x2f8f],0x1
000001C7  E8F60E            call word 0x10c0
000001CA  80FC24            cmp ah,0x24
000001CD  741F              jz 0x1ee
000001CF  90                nop
000001D0  90                nop
000001D1  C6068F2F00        mov byte [0x2f8f],0x0
000001D6  90                nop
000001D7  90                nop
000001D8  90                nop
000001D9  90                nop
000001DA  90                nop
000001DB  90                nop
000001DC  90                nop
000001DD  90                nop
000001DE  90                nop
000001DF  90                nop
000001E0  3C20              cmp al,0x20
000001E2  740A              jz 0x1ee
000001E4  3C13              cmp al,0x13
000001E6  75DA              jnz 0x1c2
000001E8  F61EA02F          neg byte [0x2fa0]
000001EC  EBD4              jmp short 0x1c2
000001EE  C706242D0000      mov word [0x2d24],0x0
000001F4  C606F00603        mov byte [0x6f0],0x3
000001F9  C706F1060000      mov word [0x6f1],0x0
000001FF  06                push es
00000200  1E                push ds
00000201  07                pop es
00000202  BF7E2F            mov di,0x2f7e
00000205  B90500            mov cx,0x5
00000208  FC                cld
00000209  B000              mov al,0x0
0000020B  F3AA              rep stosb
0000020D  07                pop es
0000020E  E81D00            call word 0x22e
00000211  B002              mov al,0x2
00000213  E642              out 0x42,al
00000215  32C0              xor al,al
00000217  E642              out 0x42,al
00000219  BE7806            mov si,0x678
0000021C  B90200            mov cx,0x2
0000021F  EB87              jmp short 0x1a8
00000221  B90000            mov cx,0x0
00000224  E2FE              loop 0x224
00000226  B90000            mov cx,0x0
00000229  FECA              dec dl
0000022B  75F7              jnz 0x224
0000022D  C3                ret
0000022E  B80400            mov ax,0x4
00000231  CD10              int 0x10
00000233  B40B              mov ah,0xb
00000235  BB0001            mov bx,0x100
00000238  CD10              int 0x10
0000023A  B40B              mov ah,0xb
0000023C  BB1000            mov bx,0x10
0000023F  CD10              int 0x10
00000241  B632              mov dh,0x32
00000243  BF0D00            mov di,0xd
00000246  BB090A            mov bx,0xa09
00000249  B23E              mov dl,0x3e
0000024B  8A07              mov al,[bx]
0000024D  43                inc bx
0000024E  3C00              cmp al,0x0
00000250  7421              jz 0x273
00000252  B400              mov ah,0x0
00000254  8BF0              mov si,ax
00000256  D1E6              shl si,1
00000258  D1E6              shl si,1
0000025A  81C69109          add si,0x991
0000025E  BDFF1F            mov bp,0x1fff
00000261  B90400            mov cx,0x4
00000264  FC                cld
00000265  A4                movsb
00000266  03FD              add di,bp
00000268  F7DD              neg bp
0000026A  83C54E            add bp,byte +0x4e
0000026D  E2F6              loop 0x265
0000026F  81EFA000          sub di,0xa0
00000273  47                inc di
00000274  FECA              dec dl
00000276  75D3              jnz 0x24b
00000278  83C762            add di,byte +0x62
0000027B  FECE              dec dh
0000027D  75CA              jnz 0x249
0000027F  06                push es
00000280  1E                push ds
00000281  07                pop es
00000282  C606992CE6        mov byte [0x2c99],0xe6
00000287  BEEA19            mov si,0x19ea
0000028A  BF7316            mov di,0x1673
0000028D  B97703            mov cx,0x377
00000290  FC                cld
00000291  F3A4              rep movsb
00000293  07                pop es
00000294  B618              mov dh,0x18
00000296  BFAF00            mov di,0xaf
00000299  BB9216            mov bx,0x1692
0000029C  B21D              mov dl,0x1d
0000029E  8A07              mov al,[bx]
000002A0  43                inc bx
000002A1  3C02              cmp al,0x2
000002A3  7225              jc 0x2ca
000002A5  B400              mov ah,0x0
000002A7  8BF0              mov si,ax
000002A9  D1E6              shl si,1
000002AB  D1E6              shl si,1
000002AD  D1E6              shl si,1
000002AF  D1E6              shl si,1
000002B1  81C61516          add si,0x1615
000002B5  BDFE1F            mov bp,0x1ffe
000002B8  B90800            mov cx,0x8
000002BB  FC                cld
000002BC  A5                movsw
000002BD  03FD              add di,bp
000002BF  F7DD              neg bp
000002C1  83C54C            add bp,byte +0x4c
000002C4  E2F6              loop 0x2bc
000002C6  81EF4001          sub di,0x140
000002CA  83C702            add di,byte +0x2
000002CD  FECA              dec dl
000002CF  75CD              jnz 0x29e
000002D1  43                inc bx
000002D2  81C70601          add di,0x106
000002D6  FECE              dec dh
000002D8  75C2              jnz 0x29c
000002DA  B402              mov ah,0x2
000002DC  BA0101            mov dx,0x101
000002DF  B700              mov bh,0x0
000002E1  CD10              int 0x10
000002E3  BEC306            mov si,0x6c3
000002E6  B92700            mov cx,0x27
000002E9  FC                cld
000002EA  AC                lodsb
000002EB  BB0300            mov bx,0x3
000002EE  B40E              mov ah,0xe
000002F0  CD10              int 0x10
000002F2  E2F6              loop 0x2ea
000002F4  06                push es
000002F5  1E                push ds
000002F6  07                pop es
000002F7  BF882F            mov di,0x2f88
000002FA  BE832F            mov si,0x2f83
000002FD  B90500            mov cx,0x5
00000300  F3A4              rep movsb
00000302  07                pop es
00000303  BF000A            mov di,0xa00
00000306  E8BB0C            call word 0xfc4
00000309  E86C0C            call word 0xf78
0000030C  A1F106            mov ax,[0x6f1]
0000030F  40                inc ax
00000310  3D0C00            cmp ax,0xc
00000313  7E03              jng 0x318
00000315  B80C00            mov ax,0xc
00000318  A3F106            mov [0x6f1],ax
0000031B  8BF0              mov si,ax
0000031D  D1E6              shl si,1
0000031F  D1E6              shl si,1
00000321  8DB4EF06          lea si,[si+0x6ef]
00000325  FC                cld
00000326  AC                lodsb
00000327  A29A2C            mov [0x2c9a],al
0000032A  AC                lodsb
0000032B  A2262D            mov [0x2d26],al
0000032E  AD                lodsw
0000032F  A3272D            mov [0x2d27],ax
00000332  8B1EF106          mov bx,[0x6f1]
00000336  83FB08            cmp bx,byte +0x8
00000339  7E03              jng 0x33e
0000033B  BB0800            mov bx,0x8
0000033E  BF191D            mov di,0x1d19
00000341  BE2E2D            mov si,0x2d2e
00000344  BAFC1F            mov dx,0x1ffc
00000347  BD4CE0            mov bp,0xe04c
0000034A  B90E00            mov cx,0xe
0000034D  83C603            add si,byte +0x3
00000350  FC                cld
00000351  A5                movsw
00000352  A5                movsw
00000353  03FA              add di,dx
00000355  87D5              xchg dx,bp
00000357  E2F8              loop 0x351
00000359  81EFB004          sub di,0x4b0
0000035D  4B                dec bx
0000035E  75EA              jnz 0x34a
00000360  8A1EF006          mov bl,[0x6f0]
00000364  B700              mov bh,0x0
00000366  4B                dec bx
00000367  7436              jz 0x39f
00000369  8BFB              mov di,bx
0000036B  D1E7              shl di,1
0000036D  D1E7              shl di,1
0000036F  03FB              add di,bx
00000371  D1E7              shl di,1
00000373  D1E7              shl di,1
00000375  D1E7              shl di,1
00000377  D1E7              shl di,1
00000379  D1E7              shl di,1
0000037B  D1E7              shl di,1
0000037D  D1E7              shl di,1
0000037F  F7DF              neg di
00000381  81C73B1F          add di,0x1f3b
00000385  BE591F            mov si,0x1f59
00000388  BAFC1F            mov dx,0x1ffc
0000038B  BD4CE0            mov bp,0xe04c
0000038E  B90E00            mov cx,0xe
00000391  A5                movsw
00000392  A5                movsw
00000393  03FA              add di,dx
00000395  87D5              xchg dx,bp
00000397  E2F8              loop 0x391
00000399  83C750            add di,byte +0x50
0000039C  4B                dec bx
0000039D  75E6              jnz 0x385
0000039F  06                push es
000003A0  1E                push ds
000003A1  07                pop es
000003A2  FC                cld
000003A3  BF902F            mov di,0x2f90
000003A6  B90400            mov cx,0x4
000003A9  B80000            mov ax,0x0
000003AC  F3AB              rep stosw
000003AE  C7069B2C0000      mov word [0x2c9b],0x0
000003B4  C606C92C00        mov byte [0x2cc9],0x0
000003B9  C606BC2C00        mov byte [0x2cbc],0x0
000003BE  8D362507          lea si,[0x725]
000003C2  8D3E2D2A          lea di,[0x2a2d]
000003C6  B96C02            mov cx,0x26c
000003C9  F3A4              rep movsb
000003CB  07                pop es
000003CC  E80A06            call word 0x9d9
000003CF  BBF001            mov bx,0x1f0
000003D2  FC                cld
000003D3  8DB7392A          lea si,[bx+0x2a39]
000003D7  8BBF2E2A          mov di,[bx+0x2a2e]
000003DB  B90E00            mov cx,0xe
000003DE  BA4CE0            mov dx,0xe04c
000003E1  BDFC1F            mov bp,0x1ffc
000003E4  A5                movsw
000003E5  A5                movsw
000003E6  03FA              add di,dx
000003E8  87D5              xchg dx,bp
000003EA  E2F8              loop 0x3e4
000003EC  83EB7C            sub bx,byte +0x7c
000003EF  75E2              jnz 0x3d3
000003F1  BE091E            mov si,0x1e09
000003F4  8B3E2E2A          mov di,[0x2a2e]
000003F8  BA4CE0            mov dx,0xe04c
000003FB  B90E00            mov cx,0xe
000003FE  FC                cld
000003FF  A5                movsw
00000400  A5                movsw
00000401  03FA              add di,dx
00000403  F7DA              neg dx
00000405  83C248            add dx,byte +0x48
00000408  E2F5              loop 0x3ff
0000040A  BA0000            mov dx,0x0
0000040D  B402              mov ah,0x2
0000040F  B700              mov bh,0x0
00000411  CD10              int 0x10
00000413  BF070C            mov di,0xc07
00000416  BD0600            mov bp,0x6
00000419  3E8A86E906        mov al,[ds:bp+0x6e9]
0000041E  B90100            mov cx,0x1
00000421  BB0200            mov bx,0x2
00000424  B409              mov ah,0x9
00000426  CD10              int 0x10
00000428  1E                push ds
00000429  06                push es
0000042A  1F                pop ds
0000042B  BE0000            mov si,0x0
0000042E  BAFE1F            mov dx,0x1ffe
00000431  BB4EE0            mov bx,0xe04e
00000434  B90800            mov cx,0x8
00000437  A5                movsw
00000438  03FA              add di,dx
0000043A  03F2              add si,dx
0000043C  87D3              xchg dx,bx
0000043E  E2F7              loop 0x437
00000440  1F                pop ds
00000441  4D                dec bp
00000442  75D5              jnz 0x419
00000444  BF0000            mov di,0x0
00000447  B80000            mov ax,0x0
0000044A  BAFE1F            mov dx,0x1ffe
0000044D  BD4EE0            mov bp,0xe04e
00000450  B90800            mov cx,0x8
00000453  AB                stosw
00000454  03FA              add di,dx
00000456  87D5              xchg dx,bp
00000458  E2F9              loop 0x453
0000045A  B605              mov dh,0x5
0000045C  B90000            mov cx,0x0
0000045F  E2FE              loop 0x45f
00000461  B90000            mov cx,0x0
00000464  FECE              dec dh
00000466  75F7              jnz 0x45f
00000468  BF070C            mov di,0xc07
0000046B  B80000            mov ax,0x0
0000046E  B93000            mov cx,0x30
00000471  BAFE1F            mov dx,0x1ffe
00000474  BD4EE0            mov bp,0xe04e
00000477  AB                stosw
00000478  03FA              add di,dx
0000047A  87D5              xchg dx,bp
0000047C  E2F9              loop 0x477
0000047E  E85A01            call word 0x5db
00000481  B002              mov al,0x2
00000483  E642              out 0x42,al
00000485  32C0              xor al,al
00000487  E642              out 0x42,al
00000489  E8EC0A            call word 0xf78
0000048C  803E992C00        cmp byte [0x2c99],0x0
00000491  7519              jnz 0x4ac
00000493  8B3E2E2A          mov di,[0x2a2e]
00000497  BED11D            mov si,0x1dd1
0000049A  BA4CE0            mov dx,0xe04c
0000049D  BDFC1F            mov bp,0x1ffc
000004A0  B90E00            mov cx,0xe
000004A3  FC                cld
000004A4  A5                movsw
000004A5  A5                movsw
000004A6  03FA              add di,dx
000004A8  87D5              xchg dx,bp
000004AA  E2F8              loop 0x4a4
000004AC  B202              mov dl,0x2
000004AE  B90000            mov cx,0x0
000004B1  E2FE              loop 0x4b1
000004B3  B90000            mov cx,0x0
000004B6  FECA              dec dl
000004B8  75F7              jnz 0x4b1
000004BA  BB6C02            mov bx,0x26c
000004BD  8BBF2E2A          mov di,[bx+0x2a2e]
000004C1  BE712A            mov si,0x2a71
000004C4  03F3              add si,bx
000004C6  BA4CE0            mov dx,0xe04c
000004C9  BDFC1F            mov bp,0x1ffc
000004CC  8A8F352A          mov cl,[bx+0x2a35]
000004D0  B500              mov ch,0x0
000004D2  E309              jcxz 0x4dd
000004D4  FC                cld
000004D5  A5                movsw
000004D6  A5                movsw
000004D7  03FA              add di,dx
000004D9  87D5              xchg dx,bp
000004DB  E2F8              loop 0x4d5
000004DD  83EB7C            sub bx,byte +0x7c
000004E0  75DB              jnz 0x4bd
000004E2  803E992C00        cmp byte [0x2c99],0x0
000004E7  7403              jz 0x4ec
000004E9  EB22              jmp short 0x50d
000004EB  90                nop
000004EC  B707              mov bh,0x7
000004EE  BAD903            mov dx,0x3d9
000004F1  B020              mov al,0x20
000004F3  B410              mov ah,0x10
000004F5  B302              mov bl,0x2
000004F7  B90000            mov cx,0x0
000004FA  E2FE              loop 0x4fa
000004FC  B90080            mov cx,0x8000
000004FF  FECB              dec bl
00000501  75F7              jnz 0x4fa
00000503  EE                out dx,al
00000504  86C4              xchg al,ah
00000506  FECF              dec bh
00000508  75EB              jnz 0x4f5
0000050A  E921FD            jmp word 0x22e
0000050D  8B2E2E2A          mov bp,[0x2a2e]
00000511  BE7526            mov si,0x2675
00000514  B8D02C            mov ax,0x2cd0
00000517  A32307            mov [0x723],ax
0000051A  BF0200            mov di,0x2
0000051D  56                push si
0000051E  8B362307          mov si,[0x723]
00000522  B400              mov ah,0x0
00000524  CD1A              int 0x1a
00000526  8BDA              mov bx,dx
00000528  B400              mov ah,0x0
0000052A  CD1A              int 0x1a
0000052C  3BD3              cmp dx,bx
0000052E  74F8              jz 0x528
00000530  AD                lodsw
00000531  803EA02F00        cmp byte [0x2fa0],0x0
00000536  7C06              jl 0x53e
00000538  E642              out 0x42,al
0000053A  8AC4              mov al,ah
0000053C  E642              out 0x42,al
0000053E  4F                dec di
0000053F  75E1              jnz 0x522
00000541  89362307          mov [0x723],si
00000545  5E                pop si
00000546  FC                cld
00000547  8BFD              mov di,bp
00000549  BBFC1F            mov bx,0x1ffc
0000054C  BA4CE0            mov dx,0xe04c
0000054F  8A0E352A          mov cl,[0x2a35]
00000553  B500              mov ch,0x0
00000555  8BC1              mov ax,cx
00000557  F7D8              neg ax
00000559  050E00            add ax,0xe
0000055C  D1E0              shl ax,1
0000055E  D1E0              shl ax,1
00000560  E308              jcxz 0x56a
00000562  A5                movsw
00000563  A5                movsw
00000564  03FA              add di,dx
00000566  87D3              xchg dx,bx
00000568  E2F8              loop 0x562
0000056A  03F0              add si,ax
0000056C  81FE2D2A          cmp si,0x2a2d
00000570  75A8              jnz 0x51a
00000572  8BFD              mov di,bp
00000574  BE712A            mov si,0x2a71
00000577  BA4CE0            mov dx,0xe04c
0000057A  BDFC1F            mov bp,0x1ffc
0000057D  8A0E352A          mov cl,[0x2a35]
00000581  B500              mov ch,0x0
00000583  E309              jcxz 0x58e
00000585  FC                cld
00000586  A5                movsw
00000587  A5                movsw
00000588  03FA              add di,dx
0000058A  87D5              xchg dx,bp
0000058C  E2F8              loop 0x586
0000058E  A0F006            mov al,[0x6f0]
00000591  B400              mov ah,0x0
00000593  48                dec ax
00000594  A2F006            mov [0x6f0],al
00000597  7441              jz 0x5da
00000599  8BF8              mov di,ax
0000059B  D1E7              shl di,1
0000059D  D1E7              shl di,1
0000059F  03F8              add di,ax
000005A1  D1E7              shl di,1
000005A3  D1E7              shl di,1
000005A5  D1E7              shl di,1
000005A7  D1E7              shl di,1
000005A9  D1E7              shl di,1
000005AB  D1E7              shl di,1
000005AD  D1E7              shl di,1
000005AF  F7DF              neg di
000005B1  81C73B1F          add di,0x1f3b
000005B5  B80000            mov ax,0x0
000005B8  BAFC1F            mov dx,0x1ffc
000005BB  BD4CE0            mov bp,0xe04c
000005BE  B90E00            mov cx,0xe
000005C1  FC                cld
000005C2  AB                stosw
000005C3  AB                stosw
000005C4  03FA              add di,dx
000005C6  87D5              xchg dx,bp
000005C8  E2F8              loop 0x5c2
000005CA  C606442F01        mov byte [0x2f44],0x1
000005CF  C606432F00        mov byte [0x2f43],0x0
000005D4  E88A07            call word 0xd61
000005D7  E986FD            jmp word 0x360
000005DA  C3                ret
000005DB  B400              mov ah,0x0
000005DD  CD1A              int 0x1a
000005DF  8BDA              mov bx,dx
000005E1  B400              mov ah,0x0
000005E3  CD1A              int 0x1a
000005E5  3BDA              cmp bx,dx
000005E7  74F8              jz 0x5e1
000005E9  C706CE2C0000      mov word [0x2cce],0x0
000005EF  FE06CA2C          inc byte [0x2cca]
000005F3  A09B2C            mov al,[0x2c9b]
000005F6  3C00              cmp al,0x0
000005F8  7414              jz 0x60e
000005FA  FEC8              dec al
000005FC  A29B2C            mov [0x2c9b],al
000005FF  750D              jnz 0x60e
00000601  BBF001            mov bx,0x1f0
00000604  80A7382AFE        and byte [bx+0x2a38],0xfe
00000609  83EB7C            sub bx,byte +0x7c
0000060C  75F6              jnz 0x604
0000060E  FE0ECB2C          dec byte [0x2ccb]
00000612  7505              jnz 0x619
00000614  C606CB2C0E        mov byte [0x2ccb],0xe
00000619  BB0800            mov bx,0x8
0000061C  BE4516            mov si,0x1645
0000061F  803ECB2C07        cmp byte [0x2ccb],0x7
00000624  7F03              jg 0x629
00000626  83C610            add si,byte +0x10
00000629  8BBF2316          mov di,[bx+0x1623]
0000062D  8A05              mov al,[di]
0000062F  3C03              cmp al,0x3
00000631  7521              jnz 0x654
00000633  B90800            mov cx,0x8
00000636  8BBF2B16          mov di,[bx+0x162b]
0000063A  A12E2A            mov ax,[0x2a2e]
0000063D  2BC7              sub ax,di
0000063F  3D5F1F            cmp ax,0x1f5f
00000642  7410              jz 0x654
00000644  BAFE1F            mov dx,0x1ffe
00000647  A5                movsw
00000648  03FA              add di,dx
0000064A  F7DA              neg dx
0000064C  83C24C            add dx,byte +0x4c
0000064F  E2F6              loop 0x647
00000651  83EE10            sub si,byte +0x10
00000654  4B                dec bx
00000655  4B                dec bx
00000656  75D1              jnz 0x629
00000658  BBF001            mov bx,0x1f0
0000065B  B90500            mov cx,0x5
0000065E  8B872E2A          mov ax,[bx+0x2a2e]
00000662  8987332A          mov [bx+0x2a33],ax
00000666  8A87352A          mov al,[bx+0x2a35]
0000066A  8887362A          mov [bx+0x2a36],al
0000066E  83EB7C            sub bx,byte +0x7c
00000671  E2EB              loop 0x65e
00000673  E8F707            call word 0xe6d
00000676  F606312A01        test byte [0x2a31],0x1
0000067B  7541              jnz 0x6be
0000067D  F606302A01        test byte [0x2a30],0x1
00000682  753A              jnz 0x6be
00000684  B400              mov ah,0x0
00000686  A0302A            mov al,[0x2a30]
00000689  D1F8              sar ax,1
0000068B  BA1E00            mov dx,0x1e
0000068E  F7E2              mul dx
00000690  8BD8              mov bx,ax
00000692  A1312A            mov ax,[0x2a31]
00000695  D1F8              sar ax,1
00000697  03D8              add bx,ax
00000699  80BF731601        cmp byte [bx+0x1673],0x1
0000069E  7F3B              jg 0x6db
000006A0  A0BC2C            mov al,[0x2cbc]
000006A3  B400              mov ah,0x0
000006A5  8BF0              mov si,ax
000006A7  8A84BD2C          mov al,[si+0x2cbd]
000006AB  98                cbw
000006AC  8BF0              mov si,ax
000006AE  80B8731600        cmp byte [bx+si+0x1673],0x0
000006B3  740C              jz 0x6c1
000006B5  A0BC2C            mov al,[0x2cbc]
000006B8  A22D2A            mov [0x2a2d],al
000006BB  E99900            jmp word 0x757
000006BE  E98500            jmp word 0x746
000006C1  A02D2A            mov al,[0x2a2d]
000006C4  B400              mov ah,0x0
000006C6  8BF0              mov si,ax
000006C8  8A84BD2C          mov al,[si+0x2cbd]
000006CC  98                cbw
000006CD  8BF0              mov si,ax
000006CF  80B8731600        cmp byte [bx+si+0x1673],0x0
000006D4  75E5              jnz 0x6bb
000006D6  E9D600            jmp word 0x7af
000006D9  EBC5              jmp short 0x6a0
000006DB  B80104            mov ax,0x401
000006DE  E85908            call word 0xf3a
000006E1  B001              mov al,0x1
000006E3  86877316          xchg al,[bx+0x1673]
000006E7  3C03              cmp al,0x3
000006E9  7529              jnz 0x714
000006EB  C606912F19        mov byte [0x2f91],0x19
000006F0  B80404            mov ax,0x404
000006F3  E84408            call word 0xf3a
000006F6  C7068D2F0000      mov word [0x2f8d],0x0
000006FC  A09A2C            mov al,[0x2c9a]
000006FF  A29B2C            mov [0x2c9b],al
00000702  BEF001            mov si,0x1f0
00000705  808C382A01        or byte [si+0x2a38],0x1
0000070A  80B42D2A01        xor byte [si+0x2a2d],0x1
0000070F  83EE7C            sub si,byte +0x7c
00000712  75F1              jnz 0x705
00000714  FE0E992C          dec byte [0x2c99]
00000718  7501              jnz 0x71b
0000071A  C3                ret
0000071B  FC                cld
0000071C  06                push es
0000071D  1E                push ds
0000071E  07                pop es
0000071F  B80000            mov ax,0x0
00000722  B90800            mov cx,0x8
00000725  BF7E2A            mov di,0x2a7e
00000728  AB                stosw
00000729  47                inc di
0000072A  47                inc di
0000072B  E2FB              loop 0x728
0000072D  07                pop es
0000072E  C606902F02        mov byte [0x2f90],0x2
00000733  F61ECC2C          neg byte [0x2ccc]
00000737  7FA0              jg 0x6d9
00000739  FE06902F          inc byte [0x2f90]
0000073D  C706CE2C7C00      mov word [0x2cce],0x7c
00000743  EB6A              jmp short 0x7af
00000745  90                nop
00000746  A02D2A            mov al,[0x2a2d]
00000749  3206BC2C          xor al,[0x2cbc]
0000074D  A802              test al,0x2
0000074F  7506              jnz 0x757
00000751  A0BC2C            mov al,[0x2cbc]
00000754  A22D2A            mov [0x2a2d],al
00000757  A02D2A            mov al,[0x2a2d]
0000075A  B400              mov ah,0x0
0000075C  8BF0              mov si,ax
0000075E  D1E6              shl si,1
00000760  8B84C12C          mov ax,[si+0x2cc1]
00000764  03062E2A          add ax,[0x2a2e]
00000768  A32E2A            mov [0x2a2e],ax
0000076B  8BC6              mov ax,si
0000076D  A90400            test ax,0x4
00000770  750B              jnz 0x77d
00000772  48                dec ax
00000773  0206302A          add al,[0x2a30]
00000777  A2302A            mov [0x2a30],al
0000077A  EB08              jmp short 0x784
0000077C  90                nop
0000077D  2D0500            sub ax,0x5
00000780  0006312A          add [0x2a31],al
00000784  A0C92C            mov al,[0x2cc9]
00000787  FEC0              inc al
00000789  2403              and al,0x3
0000078B  A2C92C            mov [0x2cc9],al
0000078E  8BDE              mov bx,si
00000790  D1E3              shl bx,1
00000792  B400              mov ah,0x0
00000794  03D8              add bx,ax
00000796  D1E3              shl bx,1
00000798  8BB79C2C          mov si,[bx+0x2c9c]
0000079C  81C6611D          add si,0x1d61
000007A0  BF392A            mov di,0x2a39
000007A3  B90E00            mov cx,0xe
000007A6  06                push es
000007A7  1E                push ds
000007A8  07                pop es
000007A9  FC                cld
000007AA  A5                movsw
000007AB  A5                movsw
000007AC  E2FC              loop 0x7aa
000007AE  07                pop es
000007AF  BBF001            mov bx,0x1f0
000007B2  80BF372A02        cmp byte [bx+0x2a37],0x2
000007B7  7C08              jl 0x7c1
000007B9  C687372A01        mov byte [bx+0x2a37],0x1
000007BE  E9A400            jmp word 0x865
000007C1  F687312A01        test byte [bx+0x2a31],0x1
000007C6  7548              jnz 0x810
000007C8  F687302A01        test byte [bx+0x2a30],0x1
000007CD  7541              jnz 0x810
000007CF  C606CD2C00        mov byte [0x2ccd],0x0
000007D4  B400              mov ah,0x0
000007D6  8A87302A          mov al,[bx+0x2a30]
000007DA  D1F8              sar ax,1
000007DC  BA1E00            mov dx,0x1e
000007DF  F7E2              mul dx
000007E1  8BE8              mov bp,ax
000007E3  8B87312A          mov ax,[bx+0x2a31]
000007E7  D1F8              sar ax,1
000007E9  03E8              add bp,ax
000007EB  E86C02            call word 0xa5a
000007EE  38872D2A          cmp [bx+0x2a2d],al
000007F2  7425              jz 0x819
000007F4  8AD0              mov dl,al
000007F6  86972D2A          xchg dl,[bx+0x2a2d]
000007FA  80BF372A01        cmp byte [bx+0x2a37],0x1
000007FF  7418              jz 0x819
00000801  88972D2A          mov [bx+0x2a2d],dl
00000805  C687372A01        mov byte [bx+0x2a37],0x1
0000080A  EB59              jmp short 0x865
0000080C  90                nop
0000080D  EB0A              jmp short 0x819
0000080F  90                nop
00000810  8A872D2A          mov al,[bx+0x2a2d]
00000814  C606CD2C01        mov byte [0x2ccd],0x1
00000819  B400              mov ah,0x0
0000081B  8BF0              mov si,ax
0000081D  D1E6              shl si,1
0000081F  8BB4C12C          mov si,[si+0x2cc1]
00000823  01B72E2A          add [bx+0x2a2e],si
00000827  8AE0              mov ah,al
00000829  D1F8              sar ax,1
0000082B  98                cbw
0000082C  D0E4              shl ah,1
0000082E  FEC4              inc ah
00000830  F6DC              neg ah
00000832  247F              and al,0x7f
00000834  8AD0              mov dl,al
00000836  8AC4              mov al,ah
00000838  B600              mov dh,0x0
0000083A  8BFA              mov di,dx
0000083C  0081302A          add [bx+di+0x2a30],al
00000840  C687372A00        mov byte [bx+0x2a37],0x0
00000845  80BF382A02        cmp byte [bx+0x2a38],0x2
0000084A  7C0B              jl 0x857
0000084C  80BF382A06        cmp byte [bx+0x2a38],0x6
00000851  7D04              jnl 0x857
00000853  2881302A          sub [bx+di+0x2a30],al
00000857  803ECD2C01        cmp byte [0x2ccd],0x1
0000085C  7407              jz 0x865
0000085E  80BF382A06        cmp byte [bx+0x2a38],0x6
00000863  7DAB              jnl 0x810
00000865  83EB7C            sub bx,byte +0x7c
00000868  7403              jz 0x86d
0000086A  E945FF            jmp word 0x7b2
0000086D  E86901            call word 0x9d9
00000870  B90500            mov cx,0x5
00000873  BB0000            mov bx,0x0
00000876  8A87302A          mov al,[bx+0x2a30]
0000087A  3C00              cmp al,0x0
0000087C  B43A              mov ah,0x3a
0000087E  BA4024            mov dx,0x2440
00000881  7C09              jl 0x88c
00000883  3C39              cmp al,0x39
00000885  B4C6              mov ah,0xc6
00000887  BAC0DB            mov dx,0xdbc0
0000088A  7E0A              jng 0x896
0000088C  02C4              add al,ah
0000088E  8887302A          mov [bx+0x2a30],al
00000892  01972E2A          add [bx+0x2a2e],dx
00000896  80BF372A01        cmp byte [bx+0x2a37],0x1
0000089B  742C              jz 0x8c9
0000089D  80BF312A20        cmp byte [bx+0x2a31],0x20
000008A2  7512              jnz 0x8b6
000008A4  C687372A02        mov byte [bx+0x2a37],0x2
000008A9  3C0C              cmp al,0xc
000008AB  7C09              jl 0x8b6
000008AD  3C26              cmp al,0x26
000008AF  7F05              jg 0x8b6
000008B1  C687372A00        mov byte [bx+0x2a37],0x0
000008B6  80BF382A00        cmp byte [bx+0x2a38],0x0
000008BB  740C              jz 0x8c9
000008BD  80BF382A06        cmp byte [bx+0x2a38],0x6
000008C2  7D05              jnl 0x8c9
000008C4  C687372A02        mov byte [bx+0x2a37],0x2
000008C9  B400              mov ah,0x0
000008CB  D1E0              shl ax,1
000008CD  D1E0              shl ax,1
000008CF  F7D8              neg ax
000008D1  05CF00            add ax,0xcf
000008D4  3D0000            cmp ax,0x0
000008D7  7C0B              jl 0x8e4
000008D9  3D0E00            cmp ax,0xe
000008DC  7E09              jng 0x8e7
000008DE  B80E00            mov ax,0xe
000008E1  EB04              jmp short 0x8e7
000008E3  90                nop
000008E4  B80000            mov ax,0x0
000008E7  8887352A          mov [bx+0x2a35],al
000008EB  83C37C            add bx,byte +0x7c
000008EE  E286              loop 0x876
000008F0  E82E07            call word 0x1021
000008F3  E88206            call word 0xf78
000008F6  E86303            call word 0xc5c
000008F9  FC                cld
000008FA  BB6C02            mov bx,0x26c
000008FD  83EB7C            sub bx,byte +0x7c
00000900  BE712A            mov si,0x2a71
00000903  03F3              add si,bx
00000905  BA4CE0            mov dx,0xe04c
00000908  BDFC1F            mov bp,0x1ffc
0000090B  8BBF332A          mov di,[bx+0x2a33]
0000090F  8A8F362A          mov cl,[bx+0x2a36]
00000913  B500              mov ch,0x0
00000915  E308              jcxz 0x91f
00000917  A5                movsw
00000918  A5                movsw
00000919  03FA              add di,dx
0000091B  87D5              xchg dx,bp
0000091D  E2F8              loop 0x917
0000091F  3B1ECE2C          cmp bx,[0x2cce]
00000923  75D8              jnz 0x8fd
00000925  803E442F00        cmp byte [0x2f44],0x0
0000092A  7403              jz 0x92f
0000092C  E83204            call word 0xd61
0000092F  8B1ECE2C          mov bx,[0x2cce]
00000933  81EB6C02          sub bx,0x26c
00000937  BD4800            mov bp,0x48
0000093A  83C37C            add bx,byte +0x7c
0000093D  8BB71E2C          mov si,[bx+0x2c1e]
00000941  BA4CE0            mov dx,0xe04c
00000944  BDFC1F            mov bp,0x1ffc
00000947  BF612C            mov di,0x2c61
0000094A  03FB              add di,bx
0000094C  B90E00            mov cx,0xe
0000094F  06                push es
00000950  1E                push ds
00000951  07                pop es
00000952  1F                pop ds
00000953  A5                movsw
00000954  A5                movsw
00000955  03F2              add si,dx
00000957  87D5              xchg dx,bp
00000959  E2F8              loop 0x953
0000095B  06                push es
0000095C  1E                push ds
0000095D  07                pop es
0000095E  1F                pop ds
0000095F  BE292C            mov si,0x2c29
00000962  03F3              add si,bx
00000964  BA4CE0            mov dx,0xe04c
00000967  BDFC1F            mov bp,0x1ffc
0000096A  8BBF1E2C          mov di,[bx+0x2c1e]
0000096E  8A8F252C          mov cl,[bx+0x2c25]
00000972  B500              mov ch,0x0
00000974  E319              jcxz 0x98f
00000976  268A05            mov al,[es:di]
00000979  24C0              and al,0xc0
0000097B  0A04              or al,[si]
0000097D  46                inc si
0000097E  AA                stosb
0000097F  A5                movsw
00000980  268A05            mov al,[es:di]
00000983  2403              and al,0x3
00000985  0A04              or al,[si]
00000987  46                inc si
00000988  AA                stosb
00000989  03FA              add di,dx
0000098B  87D5              xchg dx,bp
0000098D  E2E7              loop 0x976
0000098F  83FB00            cmp bx,byte +0x0
00000992  75A6              jnz 0x93a
00000994  BBF001            mov bx,0x1f0
00000997  80BF382A02        cmp byte [bx+0x2a38],0x2
0000099C  7D24              jnl 0x9c2
0000099E  8B87302A          mov ax,[bx+0x2a30]
000009A2  2A06302A          sub al,[0x2a30]
000009A6  7D02              jnl 0x9aa
000009A8  F6D8              neg al
000009AA  2A26312A          sub ah,[0x2a31]
000009AE  7D02              jnl 0x9b2
000009B0  F6DC              neg ah
000009B2  02C4              add al,ah
000009B4  3C02              cmp al,0x2
000009B6  7F0A              jg 0x9c2
000009B8  80BF382A00        cmp byte [bx+0x2a38],0x0
000009BD  7419              jz 0x9d8
000009BF  E8F403            call word 0xdb6
000009C2  83EB7C            sub bx,byte +0x7c
000009C5  75D0              jnz 0x997
000009C7  BF3C1F            mov di,0x1f3c
000009CA  B80000            mov ax,0x0
000009CD  FC                cld
000009CE  AB                stosw
000009CF  AB                stosw
000009D0  83EF54            sub di,byte +0x54
000009D3  AB                stosw
000009D4  AB                stosw
000009D5  E903FC            jmp word 0x5db
000009D8  C3                ret
000009D9  06                push es
000009DA  1E                push ds
000009DB  07                pop es
000009DC  BB6C02            mov bx,0x26c
000009DF  BD8002            mov bp,0x280
000009E2  83EB7C            sub bx,byte +0x7c
000009E5  81EDA000          sub bp,0xa0
000009E9  B90800            mov cx,0x8
000009EC  8A872D2A          mov al,[bx+0x2a2d]
000009F0  B400              mov ah,0x0
000009F2  8BF0              mov si,ax
000009F4  D1E6              shl si,1
000009F6  D1E6              shl si,1
000009F8  D1E6              shl si,1
000009FA  D1E6              shl si,1
000009FC  D1E6              shl si,1
000009FE  81C6E120          add si,0x20e1
00000A02  B8C003            mov ax,0x3c0
00000A05  80BF382A06        cmp byte [bx+0x2a38],0x6
00000A0A  7D1D              jnl 0xa29
00000A0C  8BC5              mov ax,bp
00000A0E  F687382A01        test byte [bx+0x2a38],0x1
00000A13  7414              jz 0xa29
00000A15  B88002            mov ax,0x280
00000A18  803E9B2C46        cmp byte [0x2c9b],0x46
00000A1D  770A              ja 0xa29
00000A1F  803ECB2C08        cmp byte [0x2ccb],0x8
00000A24  7C03              jl 0xa29
00000A26  05A000            add ax,0xa0
00000A29  BF392A            mov di,0x2a39
00000A2C  03FB              add di,bx
00000A2E  E8DF01            call word 0xc10
00000A31  BE6121            mov si,0x2161
00000A34  B90400            mov cx,0x4
00000A37  E8D601            call word 0xc10
00000A3A  8B36CA2C          mov si,[0x2cca]
00000A3E  81E60200          and si,0x2
00000A42  D1E6              shl si,1
00000A44  D1E6              shl si,1
00000A46  81C67121          add si,0x2171
00000A4A  B90200            mov cx,0x2
00000A4D  E8C001            call word 0xc10
00000A50  83FD00            cmp bp,byte +0x0
00000A53  758D              jnz 0x9e2
00000A55  07                pop es
00000A56  C3                ret
00000A57  E9D100            jmp word 0xb2b
00000A5A  06                push es
00000A5B  1E                push ds
00000A5C  07                pop es
00000A5D  BF2A2D            mov di,0x2d2a
00000A60  B001              mov al,0x1
00000A62  B90400            mov cx,0x4
00000A65  FC                cld
00000A66  F3AA              rep stosb
00000A68  8A87382A          mov al,[bx+0x2a38]
00000A6C  D0F8              sar al,1
00000A6E  74E7              jz 0xa57
00000A70  FEC8              dec al
00000A72  7535              jnz 0xaa9
00000A74  8B872E2A          mov ax,[bx+0x2a2e]
00000A78  2D922E            sub ax,0x2e92
00000A7B  7518              jnz 0xa95
00000A7D  80AF382A02        sub byte [bx+0x2a38],0x2
00000A82  C787302A1926      mov word [bx+0x2a30],0x2619
00000A88  E87601            call word 0xc01
00000A8B  D1D0              rcl ax,1
00000A8D  B80000            mov ax,0x0
00000A90  D1D0              rcl ax,1
00000A92  E96A01            jmp word 0xbff
00000A95  3DE2FF            cmp ax,0xffe2
00000A98  7605              jna 0xa9f
00000A9A  B003              mov al,0x3
00000A9C  E96001            jmp word 0xbff
00000A9F  D1D0              rcl ax,1
00000AA1  B80000            mov ax,0x0
00000AA4  D1D0              rcl ax,1
00000AA6  E95601            jmp word 0xbff
00000AA9  FEC8              dec al
00000AAB  7545              jnz 0xaf2
00000AAD  8A872D2A          mov al,[bx+0x2a2d]
00000AB1  B400              mov ah,0x0
00000AB3  8BF0              mov si,ax
00000AB5  8BD3              mov dx,bx
00000AB7  B90000            mov cx,0x0
00000ABA  41                inc cx
00000ABB  83EA7C            sub dx,byte +0x7c
00000ABE  75FA              jnz 0xaba
00000AC0  D1E1              shl cx,1
00000AC2  03F1              add si,cx
00000AC4  D1E6              shl si,1
00000AC6  8B972E2A          mov dx,[bx+0x2a2e]
00000ACA  3B940C2D          cmp dx,[si+0x2d0c]
00000ACE  751F              jnz 0xaef
00000AD0  3401              xor al,0x1
00000AD2  3C03              cmp al,0x3
00000AD4  7519              jnz 0xaef
00000AD6  F687382A01        test byte [bx+0x2a38],0x1
00000ADB  7512              jnz 0xaef
00000ADD  E82101            call word 0xc01
00000AE0  3B06272D          cmp ax,[0x2d27]
00000AE4  B003              mov al,0x3
00000AE6  7307              jnc 0xaef
00000AE8  80AF382A02        sub byte [bx+0x2a38],0x2
00000AED  EB85              jmp short 0xa74
00000AEF  E90D01            jmp word 0xbff
00000AF2  81BF302A1A26      cmp word [bx+0x2a30],0x261a
00000AF8  7531              jnz 0xb2b
00000AFA  80AF382A02        sub byte [bx+0x2a38],0x2
00000AFF  8BD3              mov dx,bx
00000B01  B90000            mov cx,0x0
00000B04  41                inc cx
00000B05  83EA7C            sub dx,byte +0x7c
00000B08  75FA              jnz 0xb04
00000B0A  D1E1              shl cx,1
00000B0C  D1E1              shl cx,1
00000B0E  8BF1              mov si,cx
00000B10  8B84102D          mov ax,[si+0x2d10]
00000B14  89872E2A          mov [bx+0x2a2e],ax
00000B18  83F90C            cmp cx,byte +0xc
00000B1B  7505              jnz 0xb22
00000B1D  80AF382A02        sub byte [bx+0x2a38],0x2
00000B22  B003              mov al,0x3
00000B24  88872D2A          mov [bx+0x2a2d],al
00000B28  E9D400            jmp word 0xbff
00000B2B  A0262D            mov al,[0x2d26]
00000B2E  A2292D            mov [0x2d29],al
00000B31  8A97382A          mov dl,[bx+0x2a38]
00000B35  8ACA              mov cl,dl
00000B37  81F10100          xor cx,0x1
00000B3B  81E10100          and cx,0x1
00000B3F  80FA06            cmp dl,0x6
00000B42  7C08              jl 0xb4c
00000B44  C606292D3C        mov byte [0x2d29],0x3c
00000B49  B90100            mov cx,0x1
00000B4C  A0302A            mov al,[0x2a30]
00000B4F  80FA06            cmp dl,0x6
00000B52  7C02              jl 0xb56
00000B54  B01A              mov al,0x1a
00000B56  2A87302A          sub al,[bx+0x2a30]
00000B5A  E302              jcxz 0xb5e
00000B5C  F6D8              neg al
00000B5E  7410              jz 0xb70
00000B60  D0D0              rcl al,1
00000B62  B80000            mov ax,0x0
00000B65  D1D0              rcl ax,1
00000B67  8BF8              mov di,ax
00000B69  A0292D            mov al,[0x2d29]
00000B6C  88852A2D          mov [di+0x2d2a],al
00000B70  A0312A            mov al,[0x2a31]
00000B73  80FA06            cmp dl,0x6
00000B76  7C02              jl 0xb7a
00000B78  B026              mov al,0x26
00000B7A  2A87312A          sub al,[bx+0x2a31]
00000B7E  E302              jcxz 0xb82
00000B80  F6D8              neg al
00000B82  7410              jz 0xb94
00000B84  D0D0              rcl al,1
00000B86  B80100            mov ax,0x1
00000B89  D1D0              rcl ax,1
00000B8B  8BF8              mov di,ax
00000B8D  A0292D            mov al,[0x2d29]
00000B90  88852A2D          mov [di+0x2d2a],al
00000B94  B90400            mov cx,0x4
00000B97  8BF9              mov di,cx
00000B99  8A85BC2C          mov al,[di+0x2cbc]
00000B9D  98                cbw
00000B9E  8BF0              mov si,ax
00000BA0  3E80BA731600      cmp byte [ds:bp+si+0x1673],0x0
00000BA6  7505              jnz 0xbad
00000BA8  C685292D00        mov byte [di+0x2d29],0x0
00000BAD  E2E8              loop 0xb97
00000BAF  8A872D2A          mov al,[bx+0x2a2d]
00000BB3  B400              mov ah,0x0
00000BB5  8BF8              mov di,ax
00000BB7  80BF372A01        cmp byte [bx+0x2a37],0x1
00000BBC  7412              jz 0xbd0
00000BBE  8BC7              mov ax,di
00000BC0  8AA7312A          mov ah,[bx+0x2a31]
00000BC4  80F420            xor ah,0x20
00000BC7  A9FEFF            test ax,0xfffe
00000BCA  7404              jz 0xbd0
00000BCC  D0A52A2D          shl byte [di+0x2d2a],1
00000BD0  81F70100          xor di,0x1
00000BD4  C6852A2D00        mov byte [di+0x2d2a],0x0
00000BD9  B90400            mov cx,0x4
00000BDC  BD0000            mov bp,0x0
00000BDF  BE2A2D            mov si,0x2d2a
00000BE2  B400              mov ah,0x0
00000BE4  AC                lodsb
00000BE5  03E8              add bp,ax
00000BE7  E2FB              loop 0xbe4
00000BE9  E81500            call word 0xc01
00000BEC  F7E5              mul bp
00000BEE  BE2A2D            mov si,0x2d2a
00000BF1  B400              mov ah,0x0
00000BF3  AC                lodsb
00000BF4  2BD0              sub dx,ax
00000BF6  7DFB              jnl 0xbf3
00000BF8  B82B2D            mov ax,0x2d2b
00000BFB  F7D8              neg ax
00000BFD  03C6              add ax,si
00000BFF  07                pop es
00000C00  C3                ret
00000C01  A1242D            mov ax,[0x2d24]
00000C04  BADD98            mov dx,0x98dd
00000C07  F7E2              mul dx
00000C09  05EFD5            add ax,0xd5ef
00000C0C  A3242D            mov [0x2d24],ax
00000C0F  C3                ret
00000C10  03F0              add si,ax
00000C12  FC                cld
00000C13  A5                movsw
00000C14  A5                movsw
00000C15  E2FC              loop 0xc13
00000C17  C3                ret
00000C18  C606932F18        mov byte [0x2f93],0x18
00000C1D  A0F006            mov al,[0x6f0]
00000C20  B400              mov ah,0x0
00000C22  FEC0              inc al
00000C24  A2F006            mov [0x6f0],al
00000C27  8BF8              mov di,ax
00000C29  D1E7              shl di,1
00000C2B  D1E7              shl di,1
00000C2D  03F8              add di,ax
00000C2F  D1E7              shl di,1
00000C31  D1E7              shl di,1
00000C33  D1E7              shl di,1
00000C35  D1E7              shl di,1
00000C37  D1E7              shl di,1
00000C39  D1E7              shl di,1
00000C3B  D1E7              shl di,1
00000C3D  F7DF              neg di
00000C3F  81C7BB21          add di,0x21bb
00000C43  BE591F            mov si,0x1f59
00000C46  BAFC1F            mov dx,0x1ffc
00000C49  BD4CE0            mov bp,0xe04c
00000C4C  B90E00            mov cx,0xe
00000C4F  FC                cld
00000C50  A5                movsw
00000C51  A5                movsw
00000C52  03FA              add di,dx
00000C54  87D5              xchg dx,bp
00000C56  E2F8              loop 0xc50
00000C58  C3                ret
00000C59  E98E00            jmp word 0xcea
00000C5C  C606442F00        mov byte [0x2f44],0x0
00000C61  803E432F02        cmp byte [0x2f43],0x2
00000C66  75F1              jnz 0xc59
00000C68  813E2E2A862E      cmp word [0x2a2e],0x2e86
00000C6E  75E9              jnz 0xc59
00000C70  C606922F09        mov byte [0x2f92],0x9
00000C75  C606432F01        mov byte [0x2f43],0x1
00000C7A  C7063E2F3C00      mov word [0x2f3e],0x3c
00000C80  06                push es
00000C81  1E                push ds
00000C82  07                pop es
00000C83  BF452F            mov di,0x2f45
00000C86  8B1E412F          mov bx,[0x2f41]
00000C8A  BD0300            mov bp,0x3
00000C8D  803F00            cmp byte [bx],0x0
00000C90  7512              jnz 0xca4
00000C92  B80000            mov ax,0x0
00000C95  FC                cld
00000C96  AB                stosw
00000C97  AB                stosw
00000C98  43                inc bx
00000C99  4D                dec bp
00000C9A  83C71E            add di,byte +0x1e
00000C9D  FC                cld
00000C9E  AB                stosw
00000C9F  AB                stosw
00000CA0  AB                stosw
00000CA1  83EF24            sub di,byte +0x24
00000CA4  8A07              mov al,[bx]
00000CA6  43                inc bx
00000CA7  B400              mov ah,0x0
00000CA9  8BF0              mov si,ax
00000CAB  D1E6              shl si,1
00000CAD  D1E6              shl si,1
00000CAF  D1E6              shl si,1
00000CB1  81C6062F          add si,0x2f06
00000CB5  B90400            mov cx,0x4
00000CB8  F3A5              rep movsw
00000CBA  B80000            mov ax,0x0
00000CBD  AB                stosw
00000CBE  4D                dec bp
00000CBF  75E3              jnz 0xca4
00000CC1  BE062F            mov si,0x2f06
00000CC4  B90400            mov cx,0x4
00000CC7  F3A5              rep movsw
00000CC9  B80000            mov ax,0x0
00000CCC  AB                stosw
00000CCD  07                pop es
00000CCE  83EB03            sub bx,byte +0x3
00000CD1  BA0300            mov dx,0x3
00000CD4  8AE2              mov ah,dl
00000CD6  F6DC              neg ah
00000CD8  80C405            add ah,0x5
00000CDB  8A07              mov al,[bx]
00000CDD  E85A02            call word 0xf3a
00000CE0  43                inc bx
00000CE1  4A                dec dx
00000CE2  75F0              jnz 0xcd4
00000CE4  C606442F02        mov byte [0x2f44],0x2
00000CE9  C3                ret
00000CEA  803E432F00        cmp byte [0x2f43],0x0
00000CEF  7558              jnz 0xd49
00000CF1  A0992C            mov al,[0x2c99]
00000CF4  3A06402F          cmp al,[0x2f40]
00000CF8  7408              jz 0xd02
00000CFA  3CAA              cmp al,0xaa
00000CFC  7405              jz 0xd03
00000CFE  3C50              cmp al,0x50
00000D00  7401              jz 0xd03
00000D02  C3                ret
00000D03  A2402F            mov [0x2f40],al
00000D06  C606432F02        mov byte [0x2f43],0x2
00000D0B  C7063E2F8700      mov word [0x2f3e],0x87
00000D11  C606442F03        mov byte [0x2f44],0x3
00000D16  BF452F            mov di,0x2f45
00000D19  A1F106            mov ax,[0x6f1]
00000D1C  48                dec ax
00000D1D  3D0800            cmp ax,0x8
00000D20  7C0D              jl 0xd2f
00000D22  E8DCFE            call word 0xc01
00000D25  B000              mov al,0x0
00000D27  D1C0              rol ax,1
00000D29  D1C0              rol ax,1
00000D2B  D1C0              rol ax,1
00000D2D  B400              mov ah,0x0
00000D2F  BA3B00            mov dx,0x3b
00000D32  F7E2              mul dx
00000D34  052E2D            add ax,0x2d2e
00000D37  A3412F            mov [0x2f41],ax
00000D3A  8BF0              mov si,ax
00000D3C  83C603            add si,byte +0x3
00000D3F  B91C00            mov cx,0x1c
00000D42  06                push es
00000D43  1E                push ds
00000D44  07                pop es
00000D45  F3A5              rep movsw
00000D47  07                pop es
00000D48  C3                ret
00000D49  FF0E3E2F          dec word [0x2f3e]
00000D4D  7401              jz 0xd50
00000D4F  C3                ret
00000D50  C606432F00        mov byte [0x2f43],0x0
00000D55  C7063E2F0E01      mov word [0x2f3e],0x10e
00000D5B  C606442F01        mov byte [0x2f44],0x1
00000D60  C3                ret
00000D61  FC                cld
00000D62  803E442F02        cmp byte [0x2f44],0x2
00000D67  7F35              jg 0xd9e
00000D69  7418              jz 0xd83
00000D6B  BFE60D            mov di,0xde6
00000D6E  B80000            mov ax,0x0
00000D71  B91400            mov cx,0x14
00000D74  BAFC1F            mov dx,0x1ffc
00000D77  BD4CE0            mov bp,0xe04c
00000D7A  AB                stosw
00000D7B  AB                stosw
00000D7C  03FA              add di,dx
00000D7E  87D5              xchg dx,bp
00000D80  E2F8              loop 0xd7a
00000D82  C3                ret
00000D83  BFE60D            mov di,0xde6
00000D86  BE452F            mov si,0x2f45
00000D89  B91400            mov cx,0x14
00000D8C  BAFC1F            mov dx,0x1ffc
00000D8F  BD4CE0            mov bp,0xe04c
00000D92  B000              mov al,0x0
00000D94  AA                stosb
00000D95  A5                movsw
00000D96  AA                stosb
00000D97  03FA              add di,dx
00000D99  87D5              xchg dx,bp
00000D9B  E2F7              loop 0xd94
00000D9D  C3                ret
00000D9E  BF862E            mov di,0x2e86
00000DA1  BE452F            mov si,0x2f45
00000DA4  B90E00            mov cx,0xe
00000DA7  BA4CE0            mov dx,0xe04c
00000DAA  BDFC1F            mov bp,0x1ffc
00000DAD  A5                movsw
00000DAE  A5                movsw
00000DAF  03FA              add di,dx
00000DB1  87D5              xchg dx,bp
00000DB3  E2F8              loop 0xdad
00000DB5  C3                ret
00000DB6  FC                cld
00000DB7  8B3E8D2F          mov di,[0x2f8d]
00000DBB  8A85F125          mov al,[di+0x25f1]
00000DBF  B403              mov ah,0x3
00000DC1  E87601            call word 0xf3a
00000DC4  C687382A06        mov byte [bx+0x2a38],0x6
00000DC9  03F3              add si,bx
00000DCB  8BBF2E2A          mov di,[bx+0x2a2e]
00000DCF  8A8F352A          mov cl,[bx+0x2a35]
00000DD3  E87E00            call word 0xe54
00000DD6  8B3E2E2A          mov di,[0x2a2e]
00000DDA  8A0E352A          mov cl,[0x2a35]
00000DDE  E87300            call word 0xe54
00000DE1  E82E00            call word 0xe12
00000DE4  B002              mov al,0x2
00000DE6  E642              out 0x42,al
00000DE8  32C0              xor al,al
00000DEA  E642              out 0x42,al
00000DEC  BEF62F            mov si,0x2ff6
00000DEF  BD1800            mov bp,0x18
00000DF2  FC                cld
00000DF3  AD                lodsw
00000DF4  803EA02F00        cmp byte [0x2fa0],0x0
00000DF9  7C06              jl 0xe01
00000DFB  E642              out 0x42,al
00000DFD  8AC4              mov al,ah
00000DFF  E642              out 0x42,al
00000E01  B90A14            mov cx,0x140a
00000E04  E2FE              loop 0xe04
00000E06  4D                dec bp
00000E07  75EA              jnz 0xdf3
00000E09  E80600            call word 0xe12
00000E0C  83068D2F21        add word [0x2f8d],byte +0x21
00000E11  C3                ret
00000E12  BA4CE0            mov dx,0xe04c
00000E15  BDFC1F            mov bp,0x1ffc
00000E18  8B3E2E2A          mov di,[0x2a2e]
00000E1C  03BF2E2A          add di,[bx+0x2a2e]
00000E20  D1FF              sar di,1
00000E22  81C7A000          add di,0xa0
00000E26  BEF225            mov si,0x25f2
00000E29  03368D2F          add si,[0x2f8d]
00000E2D  8A0E352A          mov cl,[0x2a35]
00000E31  028F352A          add cl,[bx+0x2a35]
00000E35  D0F9              sar cl,1
00000E37  B500              mov ch,0x0
00000E39  E318              jcxz 0xe53
00000E3B  83F908            cmp cx,byte +0x8
00000E3E  7E03              jng 0xe43
00000E40  B90800            mov cx,0x8
00000E43  AD                lodsw
00000E44  263305            xor ax,[es:di]
00000E47  AB                stosw
00000E48  AD                lodsw
00000E49  263305            xor ax,[es:di]
00000E4C  AB                stosw
00000E4D  03FA              add di,dx
00000E4F  87D5              xchg dx,bp
00000E51  E2F0              loop 0xe43
00000E53  C3                ret
00000E54  B80000            mov ax,0x0
00000E57  BA4CE0            mov dx,0xe04c
00000E5A  BDFC1F            mov bp,0x1ffc
00000E5D  B500              mov ch,0x0
00000E5F  E308              jcxz 0xe69
00000E61  AB                stosw
00000E62  AB                stosw
00000E63  03FA              add di,dx
00000E65  87D5              xchg dx,bp
00000E67  E2F8              loop 0xe61
00000E69  C3                ret
00000E6A  58                pop ax
00000E6B  58                pop ax
00000E6C  C3                ret
00000E6D  B401              mov ah,0x1
00000E6F  CD16              int 0x16
00000E71  745C              jz 0xecf
00000E73  E84A02            call word 0x10c0
00000E76  90                nop
00000E77  3D0000            cmp ax,0x0
00000E7A  74EE              jz 0xe6a
00000E7C  3C13              cmp al,0x13
00000E7E  7504              jnz 0xe84
00000E80  F61EA02F          neg byte [0x2fa0]
00000E84  803E8F2F01        cmp byte [0x2f8f],0x1
00000E89  7444              jz 0xecf
00000E8B  24DF              and al,0xdf
00000E8D  B300              mov bl,0x0
00000E8F  80FC48            cmp ah,0x48
00000E92  7436              jz 0xeca
00000E94  3C45              cmp al,0x45
00000E96  7432              jz 0xeca
00000E98  3C49              cmp al,0x49
00000E9A  742E              jz 0xeca
00000E9C  FEC3              inc bl
00000E9E  80FC50            cmp ah,0x50
00000EA1  7427              jz 0xeca
00000EA3  3C4A              cmp al,0x4a
00000EA5  7423              jz 0xeca
00000EA7  3C44              cmp al,0x44
00000EA9  741F              jz 0xeca
00000EAB  FEC3              inc bl
00000EAD  80FC4B            cmp ah,0x4b
00000EB0  7418              jz 0xeca
00000EB2  3C41              cmp al,0x41
00000EB4  7414              jz 0xeca
00000EB6  3C4B              cmp al,0x4b
00000EB8  7410              jz 0xeca
00000EBA  FEC3              inc bl
00000EBC  80FC4D            cmp ah,0x4d
00000EBF  7409              jz 0xeca
00000EC1  3C4C              cmp al,0x4c
00000EC3  7405              jz 0xeca
00000EC5  3C53              cmp al,0x53
00000EC7  7401              jz 0xeca
00000EC9  C3                ret
00000ECA  881EBC2C          mov [0x2cbc],bl
00000ECE  C3                ret
00000ECF  803E8F2F01        cmp byte [0x2f8f],0x1
00000ED4  75F3              jnz 0xec9
00000ED6  A02D2A            mov al,[0x2a2d]
00000ED9  A2BC2C            mov [0x2cbc],al
00000EDC  FA                cli
00000EDD  BA0102            mov dx,0x201
00000EE0  B99001            mov cx,0x190
00000EE3  B0FF              mov al,0xff
00000EE5  B401              mov ah,0x1
00000EE7  EE                out dx,al
00000EE8  EC                in al,dx
00000EE9  22C4              and al,ah
00000EEB  E0FB              loopne 0xee8
00000EED  8BD9              mov bx,cx
00000EEF  E305              jcxz 0xef6
00000EF1  90                nop
00000EF2  90                nop
00000EF3  90                nop
00000EF4  E2FB              loop 0xef1
00000EF6  81C3CAFE          add bx,0xfeca
00000EFA  B99001            mov cx,0x190
00000EFD  B0FF              mov al,0xff
00000EFF  B402              mov ah,0x2
00000F01  EE                out dx,al
00000F02  EC                in al,dx
00000F03  22C4              and al,ah
00000F05  E0FB              loopne 0xf02
00000F07  FB                sti
00000F08  81C1BEFE          add cx,0xfebe
00000F0C  F7D9              neg cx
00000F0E  8BD1              mov dx,cx
00000F10  03CB              add cx,bx
00000F12  8BF1              mov si,cx
00000F14  7D02              jnl 0xf18
00000F16  F7DE              neg si
00000F18  2BD3              sub dx,bx
00000F1A  8BFA              mov di,dx
00000F1C  7D02              jnl 0xf20
00000F1E  F7DF              neg di
00000F20  03F7              add si,di
00000F22  83FE51            cmp si,byte +0x51
00000F25  7CA2              jl 0xec9
00000F27  B80000            mov ax,0x0
00000F2A  D1D1              rcl cx,1
00000F2C  D1D0              rcl ax,1
00000F2E  D1D2              rcl dx,1
00000F30  D1D0              rcl ax,1
00000F32  40                inc ax
00000F33  250300            and ax,0x3
00000F36  A2BC2C            mov [0x2cbc],al
00000F39  C3                ret
00000F3A  06                push es
00000F3B  1E                push ds
00000F3C  07                pop es
00000F3D  FD                std
00000F3E  8D3E7E2F          lea di,[0x2f7e]
00000F42  8ACC              mov cl,ah
00000F44  B500              mov ch,0x0
00000F46  03F9              add di,cx
00000F48  0205              add al,[di]
00000F4A  B4FF              mov ah,0xff
00000F4C  FEC4              inc ah
00000F4E  2C0A              sub al,0xa
00000F50  7DFA              jnl 0xf4c
00000F52  040A              add al,0xa
00000F54  AA                stosb
00000F55  8AC4              mov al,ah
00000F57  3C00              cmp al,0x0
00000F59  E0ED              loopne 0xf48
00000F5B  FC                cld
00000F5C  07                pop es
00000F5D  8BF7              mov si,di
00000F5F  B87E2F            mov ax,0x2f7e
00000F62  2BC7              sub ax,di
00000F64  7511              jnz 0xf77
00000F66  AC                lodsb
00000F67  3C00              cmp al,0x0
00000F69  750C              jnz 0xf77
00000F6B  803C01            cmp byte [si],0x1
00000F6E  7507              jnz 0xf77
00000F70  56                push si
00000F71  52                push dx
00000F72  E8A3FC            call word 0xc18
00000F75  5A                pop dx
00000F76  5E                pop si
00000F77  C3                ret
00000F78  FC                cld
00000F79  06                push es
00000F7A  1E                push ds
00000F7B  07                pop es
00000F7C  8D367E2F          lea si,[0x2f7e]
00000F80  8D3E882F          lea di,[0x2f88]
00000F84  B90500            mov cx,0x5
00000F87  F3A4              rep movsb
00000F89  07                pop es
00000F8A  BF8002            mov di,0x280
00000F8D  E83400            call word 0xfc4
00000F90  06                push es
00000F91  1E                push ds
00000F92  07                pop es
00000F93  8D367E2F          lea si,[0x2f7e]
00000F97  8D3E832F          lea di,[0x2f83]
00000F9B  B90500            mov cx,0x5
00000F9E  F3A6              repe cmpsb
00000FA0  7420              jz 0xfc2
00000FA2  4F                dec di
00000FA3  4E                dec si
00000FA4  8A05              mov al,[di]
00000FA6  3A04              cmp al,[si]
00000FA8  7F18              jg 0xfc2
00000FAA  41                inc cx
00000FAB  F3A4              rep movsb
00000FAD  8D36832F          lea si,[0x2f83]
00000FB1  8D3E882F          lea di,[0x2f88]
00000FB5  B90500            mov cx,0x5
00000FB8  F3A4              rep movsb
00000FBA  07                pop es
00000FBB  BF000A            mov di,0xa00
00000FBE  E80300            call word 0xfc4
00000FC1  C3                ret
00000FC2  07                pop es
00000FC3  C3                ret
00000FC4  C6067D2F01        mov byte [0x2f7d],0x1
00000FC9  BB0000            mov bx,0x0
00000FCC  8A87882F          mov al,[bx+0x2f88]
00000FD0  3C00              cmp al,0x0
00000FD2  7405              jz 0xfd9
00000FD4  C6067D2F00        mov byte [0x2f7d],0x0
00000FD9  803E7D2F00        cmp byte [0x2f7d],0x0
00000FDE  7416              jz 0xff6
00000FE0  BAFE1F            mov dx,0x1ffe
00000FE3  BD4EE0            mov bp,0xe04e
00000FE6  B90800            mov cx,0x8
00000FE9  B80000            mov ax,0x0
00000FEC  AB                stosw
00000FED  03FA              add di,dx
00000FEF  87D5              xchg dx,bp
00000FF1  E2F9              loop 0xfec
00000FF3  EB21              jmp short 0x1016
00000FF5  90                nop
00000FF6  BAFE1F            mov dx,0x1ffe
00000FF9  BD4EE0            mov bp,0xe04e
00000FFC  B90800            mov cx,0x8
00000FFF  B400              mov ah,0x0
00001001  8BF0              mov si,ax
00001003  D1E6              shl si,1
00001005  D1E6              shl si,1
00001007  D1E6              shl si,1
00001009  D1E6              shl si,1
0000100B  81C64125          add si,0x2541
0000100F  A5                movsw
00001010  03FA              add di,dx
00001012  87D5              xchg dx,bp
00001014  E2F9              loop 0x100f
00001016  81C7C2FE          add di,0xfec2
0000101A  43                inc bx
0000101B  83FB05            cmp bx,byte +0x5
0000101E  7CAC              jl 0xfcc
00001020  C3                ret
00001021  06                push es
00001022  8CD8              mov ax,ds
00001024  8EC0              mov es,ax
00001026  B90800            mov cx,0x8
00001029  BF902F            mov di,0x2f90
0000102C  BE0000            mov si,0x0
0000102F  B400              mov ah,0x0
00001031  FC                cld
00001032  B000              mov al,0x0
00001034  F3AE              repe scasb
00001036  7410              jz 0x1048
00001038  8A45FF            mov al,[di-0x1]
0000103B  FEC8              dec al
0000103D  8AE0              mov ah,al
0000103F  8845FF            mov [di-0x1],al
00001042  8BF7              mov si,di
00001044  E302              jcxz 0x1048
00001046  EBEA              jmp short 0x1032
00001048  07                pop es
00001049  83FE00            cmp si,byte +0x0
0000104C  7412              jz 0x1060
0000104E  BB902F            mov bx,0x2f90
00001051  2BF3              sub si,bx
00001053  D1E6              shl si,1
00001055  803EA02F00        cmp byte [0x2fa0],0x0
0000105A  7C04              jl 0x1060
0000105C  FFA4962F          jmp word [si+0x2f96]
00001060  B80200            mov ax,0x2
00001063  E642              out 0x42,al
00001065  8AC4              mov al,ah
00001067  E642              out 0x42,al
00001069  C3                ret
0000106A  F6C401            test ah,0x1
0000106D  74F1              jz 0x1060
0000106F  B89001            mov ax,0x190
00001072  E642              out 0x42,al
00001074  8AC4              mov al,ah
00001076  E642              out 0x42,al
00001078  C3                ret
00001079  8ADC              mov bl,ah
0000107B  B700              mov bh,0x0
0000107D  D1E3              shl bx,1
0000107F  8B87A22F          mov ax,[bx+0x2fa2]
00001083  E642              out 0x42,al
00001085  8AC4              mov al,ah
00001087  E642              out 0x42,al
00001089  C3                ret
0000108A  8ADC              mov bl,ah
0000108C  B700              mov bh,0x0
0000108E  D1E3              shl bx,1
00001090  8B87C42F          mov ax,[bx+0x2fc4]
00001094  E642              out 0x42,al
00001096  8AC4              mov al,ah
00001098  E642              out 0x42,al
0000109A  C3                ret
0000109B  A0A12F            mov al,[0x2fa1]
0000109E  FEC0              inc al
000010A0  3C08              cmp al,0x8
000010A2  7C02              jl 0x10a6
000010A4  B000              mov al,0x0
000010A6  A2A12F            mov [0x2fa1],al
000010A9  8AD8              mov bl,al
000010AB  B700              mov bh,0x0
000010AD  D1E3              shl bx,1
000010AF  8B87B42F          mov ax,[bx+0x2fb4]
000010B3  E642              out 0x42,al
000010B5  8AC4              mov al,ah
000010B7  E642              out 0x42,al
000010B9  C3                ret
000010BA  0000              add [bx+si],al
000010BC  0000              add [bx+si],al
000010BE  0000              add [bx+si],al
000010C0  B400              mov ah,0x0
000010C2  CD16              int 0x16
000010C4  3C1B              cmp al,0x1b
000010C6  7401              jz 0x10c9
000010C8  C3                ret
000010C9  B04D              mov al,0x4d
000010CB  E661              out 0x61,al
000010CD  B80300            mov ax,0x3
000010D0  CD10              int 0x10
000010D2  B8004C            mov ax,0x4c00
000010D5  CD21              int 0x21
000010D7  F4                hlt
000010D8  90                nop
000010D9  90                nop
000010DA  90                nop
000010DB  90                nop
000010DC  90                nop
000010DD  90                nop
000010DE  90                nop
000010DF  90                nop
000010E0  CD11              int 0x11
000010E2  2430              and al,0x30
000010E4  3C20              cmp al,0x20
000010E6  75EA              jnz 0x10d2
000010E8  C3                ret
000010E9  90                nop
000010EA  90                nop
000010EB  90                nop
000010EC  90                nop
000010ED  90                nop
000010EE  90                nop
000010EF  90                nop
000010F0  90                nop
000010F1  90                nop
000010F2  90                nop
000010F3  90                nop
000010F4  90                nop
000010F5  90                nop
000010F6  90                nop
000010F7  90                nop
000010F8  90                nop
000010F9  90                nop
000010FA  90                nop
000010FB  90                nop
000010FC  90                nop
000010FD  90                nop
000010FE  90                nop
000010FF  90                nop
00001100  0000              add [bx+si],al
00001102  3F                aas
00001103  FFF0              push ax
00001105  0000              add [bx+si],al
00001107  0000              add [bx+si],al
00001109  0003              add [bp+di],al
0000110B  FF                db 0xff
0000110C  FF                db 0xff
0000110D  FF00              inc word [bx+si]
0000110F  0000              add [bx+si],al
00001111  0000              add [bx+si],al
00001113  3F                aas
00001114  FF                db 0xff
00001115  FF                db 0xff
00001116  FFC0              inc ax
00001118  0000              add [bx+si],al
0000111A  0000              add [bx+si],al
0000111C  FF                db 0xff
0000111D  FF                db 0xff
0000111E  FF                db 0xff
0000111F  FFF0              push ax
00001121  0000              add [bx+si],al
00001123  0000              add [bx+si],al
00001125  FF                db 0xff
00001126  FF                db 0xff
00001127  FF                db 0xff
00001128  FFF0              push ax
0000112A  0000              add [bx+si],al
0000112C  0003              add [bp+di],al
0000112E  FF                db 0xff
0000112F  FFCF              dec di
00001131  FF                db 0xff
00001132  FC                cld
00001133  0000              add [bx+si],al
00001135  0003              add [bp+di],al
00001137  FF                db 0xff
00001138  FFCF              dec di
0000113A  FF                db 0xff
0000113B  FC                cld
0000113C  0000              add [bx+si],al
0000113E  0003              add [bp+di],al
00001140  FF                db 0xff
00001141  FFCF              dec di
00001143  FF                db 0xff
00001144  FF00              inc word [bx+si]
00001146  0000              add [bx+si],al
00001148  03FF              add di,di
0000114A  FFCF              dec di
0000114C  FF                db 0xff
0000114D  FF00              inc word [bx+si]
0000114F  0000              add [bx+si],al
00001151  03FF              add di,di
00001153  FFCF              dec di
00001155  FF                db 0xff
00001156  FF00              inc word [bx+si]
00001158  0000              add [bx+si],al
0000115A  03FF              add di,di
0000115C  FFCF              dec di
0000115E  FF                db 0xff
0000115F  FF00              inc word [bx+si]
00001161  0000              add [bx+si],al
00001163  03FF              add di,di
00001165  FFCF              dec di
00001167  FF                db 0xff
00001168  FC                cld
00001169  0000              add [bx+si],al
0000116B  0003              add [bp+di],al
0000116D  FF                db 0xff
0000116E  FFCF              dec di
00001170  FF                db 0xff
00001171  FC                cld
00001172  0000              add [bx+si],al
00001174  0003              add [bp+di],al
00001176  FF                db 0xff
00001177  FF                db 0xff
00001178  FF                db 0xff
00001179  FFF0              push ax
0000117B  0000              add [bx+si],al
0000117D  0003              add [bp+di],al
0000117F  FF                db 0xff
00001180  FF                db 0xff
00001181  FF                db 0xff
00001182  FFC0              inc ax
00001184  0000              add [bx+si],al
00001186  0003              add [bp+di],al
00001188  FF                db 0xff
00001189  FF                db 0xff
0000118A  FF                db 0xff
0000118B  FFC0              inc ax
0000118D  0000              add [bx+si],al
0000118F  0003              add [bp+di],al
00001191  FF                db 0xff
00001192  FF                db 0xff
00001193  FF                db 0xff
00001194  FF00              inc word [bx+si]
00001196  0000              add [bx+si],al
00001198  0003              add [bp+di],al
0000119A  FF                db 0xff
0000119B  FF                db 0xff
0000119C  FFC0              inc ax
0000119E  0000              add [bx+si],al
000011A0  0000              add [bx+si],al
000011A2  03FF              add di,di
000011A4  FFC0              inc ax
000011A6  0000              add [bx+si],al
000011A8  0000              add [bx+si],al
000011AA  0003              add [bp+di],al
000011AC  FF                db 0xff
000011AD  FFC0              inc ax
000011AF  0000              add [bx+si],al
000011B1  0000              add [bx+si],al
000011B3  0003              add [bp+di],al
000011B5  FF                db 0xff
000011B6  FFC0              inc ax
000011B8  0000              add [bx+si],al
000011BA  0000              add [bx+si],al
000011BC  0003              add [bp+di],al
000011BE  FF                db 0xff
000011BF  FFC0              inc ax
000011C1  0000              add [bx+si],al
000011C3  0000              add [bx+si],al
000011C5  0003              add [bp+di],al
000011C7  FF                db 0xff
000011C8  FFC0              inc ax
000011CA  0000              add [bx+si],al
000011CC  0000              add [bx+si],al
000011CE  0000              add [bx+si],al
000011D0  0003              add [bp+di],al
000011D2  FF                db 0xff
000011D3  FFF0              push ax
000011D5  0000              add [bx+si],al
000011D7  0000              add [bx+si],al
000011D9  00FF              add bh,bh
000011DB  FF                db 0xff
000011DC  FF                db 0xff
000011DD  FFC0              inc ax
000011DF  0000              add [bx+si],al
000011E1  000F              add [bx],cl
000011E3  FF                db 0xff
000011E4  FF                db 0xff
000011E5  FF                db 0xff
000011E6  FF                db 0xff
000011E7  FC                cld
000011E8  0000              add [bx+si],al
000011EA  003F              add [bx],bh
000011EC  FF                db 0xff
000011ED  FF                db 0xff
000011EE  FF                db 0xff
000011EF  FF                db 0xff
000011F0  FF00              inc word [bx+si]
000011F2  0000              add [bx+si],al
000011F4  FF                db 0xff
000011F5  FF                db 0xff
000011F6  FF                db 0xff
000011F7  FF                db 0xff
000011F8  FF                db 0xff
000011F9  FFC0              inc ax
000011FB  0000              add [bx+si],al
000011FD  FF                db 0xff
000011FE  FF                db 0xff
000011FF  FF                db 0xff
00001200  FF                db 0xff
00001201  FF                db 0xff
00001202  FFC0              inc ax
00001204  0003              add [bp+di],al
00001206  FF                db 0xff
00001207  FF                db 0xff
00001208  FF                db 0xff
00001209  FF                db 0xff
0000120A  FF                db 0xff
0000120B  FFF0              push ax
0000120D  0003              add [bp+di],al
0000120F  FF                db 0xff
00001210  FF                db 0xff
00001211  FF                db 0xff
00001212  3F                aas
00001213  FF                db 0xff
00001214  FFF0              push ax
00001216  000F              add [bx],cl
00001218  FF                db 0xff
00001219  FF                db 0xff
0000121A  FF                db 0xff
0000121B  3F                aas
0000121C  FF                db 0xff
0000121D  FF                db 0xff
0000121E  FC                cld
0000121F  000F              add [bx],cl
00001221  FF                db 0xff
00001222  FF                db 0xff
00001223  FF                db 0xff
00001224  3F                aas
00001225  FF                db 0xff
00001226  FF                db 0xff
00001227  FC                cld
00001228  000F              add [bx],cl
0000122A  FF                db 0xff
0000122B  FF                db 0xff
0000122C  FF                db 0xff
0000122D  3F                aas
0000122E  FF                db 0xff
0000122F  FF                db 0xff
00001230  FC                cld
00001231  000F              add [bx],cl
00001233  FF                db 0xff
00001234  FF                db 0xff
00001235  FF00              inc word [bx+si]
00001237  0000              add [bx+si],al
00001239  0000              add [bx+si],al
0000123B  0FFF              ud0
0000123D  FF                db 0xff
0000123E  FF                db 0xff
0000123F  3F                aas
00001240  FF                db 0xff
00001241  FF                db 0xff
00001242  FC                cld
00001243  000F              add [bx],cl
00001245  FF                db 0xff
00001246  FF                db 0xff
00001247  FF                db 0xff
00001248  3F                aas
00001249  FF                db 0xff
0000124A  FF                db 0xff
0000124B  FC                cld
0000124C  000F              add [bx],cl
0000124E  FF                db 0xff
0000124F  FF                db 0xff
00001250  FF                db 0xff
00001251  3F                aas
00001252  FF                db 0xff
00001253  FF                db 0xff
00001254  FC                cld
00001255  0003              add [bp+di],al
00001257  FF                db 0xff
00001258  FF                db 0xff
00001259  FF                db 0xff
0000125A  3F                aas
0000125B  FF                db 0xff
0000125C  FFF0              push ax
0000125E  0003              add [bp+di],al
00001260  FF                db 0xff
00001261  FF                db 0xff
00001262  FF                db 0xff
00001263  FF                db 0xff
00001264  FF                db 0xff
00001265  FFF0              push ax
00001267  0000              add [bx+si],al
00001269  FF                db 0xff
0000126A  FF                db 0xff
0000126B  FF                db 0xff
0000126C  FF                db 0xff
0000126D  FF                db 0xff
0000126E  FFC0              inc ax
00001270  0000              add [bx+si],al
00001272  FF                db 0xff
00001273  FF                db 0xff
00001274  FF                db 0xff
00001275  FF                db 0xff
00001276  FF                db 0xff
00001277  FFC0              inc ax
00001279  0000              add [bx+si],al
0000127B  3F                aas
0000127C  FF                db 0xff
0000127D  FF                db 0xff
0000127E  FF                db 0xff
0000127F  FF                db 0xff
00001280  FF00              inc word [bx+si]
00001282  0000              add [bx+si],al
00001284  0FFF              ud0
00001286  FF                db 0xff
00001287  FF                db 0xff
00001288  FF                db 0xff
00001289  FC                cld
0000128A  0000              add [bx+si],al
0000128C  0000              add [bx+si],al
0000128E  FF                db 0xff
0000128F  FF                db 0xff
00001290  FF                db 0xff
00001291  FFC0              inc ax
00001293  0000              add [bx+si],al
00001295  0000              add [bx+si],al
00001297  03FF              add di,di
00001299  FFF0              push ax
0000129B  0000              add [bx+si],al
0000129D  0000              add [bx+si],al
0000129F  0000              add [bx+si],al
000012A1  0000              add [bx+si],al
000012A3  0000              add [bx+si],al
000012A5  0000              add [bx+si],al
000012A7  0000              add [bx+si],al
000012A9  0000              add [bx+si],al
000012AB  0000              add [bx+si],al
000012AD  0000              add [bx+si],al
000012AF  0000              add [bx+si],al
000012B1  0000              add [bx+si],al
000012B3  0000              add [bx+si],al
000012B5  0000              add [bx+si],al
000012B7  0000              add [bx+si],al
000012B9  0000              add [bx+si],al
000012BB  0000              add [bx+si],al
000012BD  0000              add [bx+si],al
000012BF  0000              add [bx+si],al
000012C1  0000              add [bx+si],al
000012C3  0000              add [bx+si],al
000012C5  0000              add [bx+si],al
000012C7  0000              add [bx+si],al
000012C9  0000              add [bx+si],al
000012CB  0000              add [bx+si],al
000012CD  0000              add [bx+si],al
000012CF  0000              add [bx+si],al
000012D1  0000              add [bx+si],al
000012D3  0000              add [bx+si],al
000012D5  0000              add [bx+si],al
000012D7  0000              add [bx+si],al
000012D9  0000              add [bx+si],al
000012DB  0000              add [bx+si],al
000012DD  FF                db 0xff
000012DE  FF                db 0xff
000012DF  FF                db 0xff
000012E0  FF00              inc word [bx+si]
000012E2  0000              add [bx+si],al
000012E4  0000              add [bx+si],al
000012E6  FF                db 0xff
000012E7  FF                db 0xff
000012E8  FF                db 0xff
000012E9  FF00              inc word [bx+si]
000012EB  0000              add [bx+si],al
000012ED  0000              add [bx+si],al
000012EF  FF                db 0xff
000012F0  FF                db 0xff
000012F1  FF                db 0xff
000012F2  FF00              inc word [bx+si]
000012F4  0000              add [bx+si],al
000012F6  0000              add [bx+si],al
000012F8  FF                db 0xff
000012F9  FF                db 0xff
000012FA  FF                db 0xff
000012FB  FF00              inc word [bx+si]
000012FD  0000              add [bx+si],al
000012FF  0000              add [bx+si],al
00001301  FF                db 0xff
00001302  FF                db 0xff
00001303  FF                db 0xff
00001304  FF00              inc word [bx+si]
00001306  0000              add [bx+si],al
00001308  0000              add [bx+si],al
0000130A  FF                db 0xff
0000130B  FF                db 0xff
0000130C  FF                db 0xff
0000130D  FF00              inc word [bx+si]
0000130F  0000              add [bx+si],al
00001311  0000              add [bx+si],al
00001313  FF                db 0xff
00001314  FF                db 0xff
00001315  FF                db 0xff
00001316  FF00              inc word [bx+si]
00001318  0000              add [bx+si],al
0000131A  0000              add [bx+si],al
0000131C  FF                db 0xff
0000131D  FF                db 0xff
0000131E  FF                db 0xff
0000131F  FF00              inc word [bx+si]
00001321  0000              add [bx+si],al
00001323  0000              add [bx+si],al
00001325  0000              add [bx+si],al
00001327  0000              add [bx+si],al
00001329  0000              add [bx+si],al
0000132B  0000              add [bx+si],al
0000132D  0000              add [bx+si],al
0000132F  0000              add [bx+si],al
00001331  0000              add [bx+si],al
00001333  0000              add [bx+si],al
00001335  0000              add [bx+si],al
00001337  0000              add [bx+si],al
00001339  0000              add [bx+si],al
0000133B  0000              add [bx+si],al
0000133D  0000              add [bx+si],al
0000133F  0000              add [bx+si],al
00001341  0000              add [bx+si],al
00001343  0000              add [bx+si],al
00001345  0000              add [bx+si],al
00001347  0000              add [bx+si],al
00001349  0000              add [bx+si],al
0000134B  0000              add [bx+si],al
0000134D  0000              add [bx+si],al
0000134F  0000              add [bx+si],al
00001351  0000              add [bx+si],al
00001353  0000              add [bx+si],al
00001355  0000              add [bx+si],al
00001357  0000              add [bx+si],al
00001359  0000              add [bx+si],al
0000135B  0000              add [bx+si],al
0000135D  0000              add [bx+si],al
0000135F  0000              add [bx+si],al
00001361  0000              add [bx+si],al
00001363  0000              add [bx+si],al
00001365  0000              add [bx+si],al
00001367  0000              add [bx+si],al
00001369  0000              add [bx+si],al
0000136B  0000              add [bx+si],al
0000136D  0000              add [bx+si],al
0000136F  3000              xor [bx+si],al
00001371  0003              add [bp+di],al
00001373  0000              add [bx+si],al
00001375  0000              add [bx+si],al
00001377  00FC              add ah,bh
00001379  0000              add [bx+si],al
0000137B  0FC000            xadd [bx+si],al
0000137E  0000              add [bx+si],al
00001380  00FC              add ah,bh
00001382  0000              add [bx+si],al
00001384  0FC000            xadd [bx+si],al
00001387  0000              add [bx+si],al
00001389  00FF              add bh,bh
0000138B  0000              add [bx+si],al
0000138D  3F                aas
0000138E  C00000            rol byte [bx+si],byte 0x0
00001391  0003              add [bp+di],al
00001393  FF00              inc word [bx+si]
00001395  003F              add [bx],bh
00001397  F00000            lock add [bx+si],al
0000139A  0003              add [bp+di],al
0000139C  FFC0              inc ax
0000139E  00FF              add bh,bh
000013A0  F00000            lock add [bx+si],al
000013A3  0003              add [bp+di],al
000013A5  FFC0              inc ax
000013A7  00FF              add bh,bh
000013A9  F00000            lock add [bx+si],al
000013AC  000F              add [bx],cl
000013AE  FFF0              push ax
000013B0  03FF              add di,di
000013B2  FC                cld
000013B3  0000              add [bx+si],al
000013B5  000F              add [bx],cl
000013B7  FF                db 0xff
000013B8  FC                cld
000013B9  0FFF              ud0
000013BB  FC                cld
000013BC  0000              add [bx+si],al
000013BE  000F              add [bx],cl
000013C0  FF                db 0xff
000013C1  FC                cld
000013C2  0FFF              ud0
000013C4  FC                cld
000013C5  0000              add [bx+si],al
000013C7  003F              add [bx],bh
000013C9  FF                db 0xff
000013CA  FF                db 0xff
000013CB  3F                aas
000013CC  FF                db 0xff
000013CD  FF00              inc word [bx+si]
000013CF  0000              add [bx+si],al
000013D1  3F                aas
000013D2  FF                db 0xff
000013D3  FF                db 0xff
000013D4  FF                db 0xff
000013D5  FF                db 0xff
000013D6  FF00              inc word [bx+si]
000013D8  0000              add [bx+si],al
000013DA  FF                db 0xff
000013DB  FF                db 0xff
000013DC  FF                db 0xff
000013DD  FF                db 0xff
000013DE  FF                db 0xff
000013DF  FFC0              inc ax
000013E1  0000              add [bx+si],al
000013E3  FF                db 0xff
000013E4  FF                db 0xff
000013E5  FF                db 0xff
000013E6  FF                db 0xff
000013E7  FF                db 0xff
000013E8  FFC0              inc ax
000013EA  0003              add [bp+di],al
000013EC  FF                db 0xff
000013ED  FF                db 0xff
000013EE  FF                db 0xff
000013EF  FF                db 0xff
000013F0  FF                db 0xff
000013F1  FFF0              push ax
000013F3  0003              add [bp+di],al
000013F5  FF                db 0xff
000013F6  FF                db 0xff
000013F7  FF                db 0xff
000013F8  FF                db 0xff
000013F9  FF                db 0xff
000013FA  FFF0              push ax
000013FC  000F              add [bx],cl
000013FE  FF                db 0xff
000013FF  FC                cld
00001400  FF                db 0xff
00001401  FFCF              dec di
00001403  FF                db 0xff
00001404  FC                cld
00001405  000F              add [bx],cl
00001407  FF                db 0xff
00001408  FC                cld
00001409  FF                db 0xff
0000140A  FFCF              dec di
0000140C  FF                db 0xff
0000140D  FC                cld
0000140E  000F              add [bx],cl
00001410  FF                db 0xff
00001411  FC                cld
00001412  FF                db 0xff
00001413  FFCF              dec di
00001415  FF                db 0xff
00001416  FC                cld
00001417  003F              add [bx],bh
00001419  FF                db 0xff
0000141A  FC                cld
0000141B  FF                db 0xff
0000141C  FFCF              dec di
0000141E  FF                db 0xff
0000141F  FF00              inc word [bx+si]
00001421  3F                aas
00001422  FF                db 0xff
00001423  FC                cld
00001424  FF                db 0xff
00001425  FFCF              dec di
00001427  FF                db 0xff
00001428  FF00              inc word [bx+si]
0000142A  FF                db 0xff
0000142B  FF                db 0xff
0000142C  FC                cld
0000142D  FF                db 0xff
0000142E  FFCF              dec di
00001430  FF                db 0xff
00001431  FFC0              inc ax
00001433  FF                db 0xff
00001434  FF                db 0xff
00001435  FC                cld
00001436  FF                db 0xff
00001437  FFCF              dec di
00001439  FF                db 0xff
0000143A  FFC0              inc ax
0000143C  0000              add [bx+si],al
0000143E  0FFF              ud0
00001440  C00000            rol byte [bx+si],byte 0x0
00001443  0000              add [bx+si],al
00001445  0000              add [bx+si],al
00001447  FF                db 0xff
00001448  FF                db 0xff
00001449  FC                cld
0000144A  0000              add [bx+si],al
0000144C  0000              add [bx+si],al
0000144E  000F              add [bx],cl
00001450  FF                db 0xff
00001451  FF                db 0xff
00001452  FFC0              inc ax
00001454  0000              add [bx+si],al
00001456  0000              add [bx+si],al
00001458  3F                aas
00001459  FF                db 0xff
0000145A  FF                db 0xff
0000145B  FFF0              push ax
0000145D  0000              add [bx+si],al
0000145F  0000              add [bx+si],al
00001461  3F                aas
00001462  FF                db 0xff
00001463  FF                db 0xff
00001464  FFF0              push ax
00001466  0000              add [bx+si],al
00001468  0000              add [bx+si],al
0000146A  FF                db 0xff
0000146B  FF                db 0xff
0000146C  FF                db 0xff
0000146D  FF                db 0xff
0000146E  FC                cld
0000146F  0000              add [bx+si],al
00001471  0000              add [bx+si],al
00001473  FF                db 0xff
00001474  FFCF              dec di
00001476  FF                db 0xff
00001477  FC                cld
00001478  0000              add [bx+si],al
0000147A  0003              add [bp+di],al
0000147C  FF                db 0xff
0000147D  FFCF              dec di
0000147F  FF                db 0xff
00001480  FF00              inc word [bx+si]
00001482  0000              add [bx+si],al
00001484  03FF              add di,di
00001486  FFCF              dec di
00001488  FF                db 0xff
00001489  FF00              inc word [bx+si]
0000148B  0000              add [bx+si],al
0000148D  03FF              add di,di
0000148F  FFCF              dec di
00001491  FF                db 0xff
00001492  FF00              inc word [bx+si]
00001494  0000              add [bx+si],al
00001496  03FF              add di,di
00001498  FFCF              dec di
0000149A  FF                db 0xff
0000149B  FF00              inc word [bx+si]
0000149D  0000              add [bx+si],al
0000149F  03FF              add di,di
000014A1  FF                db 0xff
000014A2  FF                db 0xff
000014A3  FF                db 0xff
000014A4  FF00              inc word [bx+si]
000014A6  0000              add [bx+si],al
000014A8  03FF              add di,di
000014AA  FF                db 0xff
000014AB  FF                db 0xff
000014AC  FF                db 0xff
000014AD  FF00              inc word [bx+si]
000014AF  0000              add [bx+si],al
000014B1  03FF              add di,di
000014B3  FF                db 0xff
000014B4  FF                db 0xff
000014B5  FF                db 0xff
000014B6  FF00              inc word [bx+si]
000014B8  0000              add [bx+si],al
000014BA  03FF              add di,di
000014BC  FF                db 0xff
000014BD  FF                db 0xff
000014BE  FF                db 0xff
000014BF  FF00              inc word [bx+si]
000014C1  0000              add [bx+si],al
000014C3  03FF              add di,di
000014C5  FF                db 0xff
000014C6  FF                db 0xff
000014C7  FF                db 0xff
000014C8  FF00              inc word [bx+si]
000014CA  0000              add [bx+si],al
000014CC  03FF              add di,di
000014CE  FF                db 0xff
000014CF  FF                db 0xff
000014D0  FF                db 0xff
000014D1  FF00              inc word [bx+si]
000014D3  0000              add [bx+si],al
000014D5  03FF              add di,di
000014D7  FFCF              dec di
000014D9  FF                db 0xff
000014DA  FF00              inc word [bx+si]
000014DC  0000              add [bx+si],al
000014DE  03FF              add di,di
000014E0  FFCF              dec di
000014E2  FF                db 0xff
000014E3  FF00              inc word [bx+si]
000014E5  0000              add [bx+si],al
000014E7  03FF              add di,di
000014E9  FFCF              dec di
000014EB  FF                db 0xff
000014EC  FF00              inc word [bx+si]
000014EE  0000              add [bx+si],al
000014F0  03FF              add di,di
000014F2  FFCF              dec di
000014F4  FF                db 0xff
000014F5  FF00              inc word [bx+si]
000014F7  0000              add [bx+si],al
000014F9  03FF              add di,di
000014FB  FFCF              dec di
000014FD  FF                db 0xff
000014FE  FF00              inc word [bx+si]
00001500  0000              add [bx+si],al
00001502  03FF              add di,di
00001504  FFCF              dec di
00001506  FF                db 0xff
00001507  FF00              inc word [bx+si]
00001509  0000              add [bx+si],al
0000150B  03FF              add di,di
0000150D  FF                db 0xff
0000150E  FF00              inc word [bx+si]
00001510  0000              add [bx+si],al
00001512  0000              add [bx+si],al
00001514  03FF              add di,di
00001516  FF                db 0xff
00001517  FF                db 0xff
00001518  FC                cld
00001519  0000              add [bx+si],al
0000151B  0000              add [bx+si],al
0000151D  03FF              add di,di
0000151F  FF                db 0xff
00001520  FF                db 0xff
00001521  FFC0              inc ax
00001523  0000              add [bx+si],al
00001525  0003              add [bp+di],al
00001527  FF                db 0xff
00001528  FF                db 0xff
00001529  FF                db 0xff
0000152A  FFF0              push ax
0000152C  0000              add [bx+si],al
0000152E  0003              add [bp+di],al
00001530  FF                db 0xff
00001531  FF                db 0xff
00001532  FF                db 0xff
00001533  FFF0              push ax
00001535  0000              add [bx+si],al
00001537  0003              add [bp+di],al
00001539  FF                db 0xff
0000153A  FF                db 0xff
0000153B  FF                db 0xff
0000153C  FF                db 0xff
0000153D  FC                cld
0000153E  0000              add [bx+si],al
00001540  0003              add [bp+di],al
00001542  FF                db 0xff
00001543  FF                db 0xff
00001544  FF                db 0xff
00001545  FF                db 0xff
00001546  FC                cld
00001547  0000              add [bx+si],al
00001549  0003              add [bp+di],al
0000154B  FF                db 0xff
0000154C  FF                db 0xff
0000154D  FF                db 0xff
0000154E  FF                db 0xff
0000154F  FF00              inc word [bx+si]
00001551  0000              add [bx+si],al
00001553  03FF              add di,di
00001555  FF                db 0xff
00001556  FF                db 0xff
00001557  FF                db 0xff
00001558  FF00              inc word [bx+si]
0000155A  0000              add [bx+si],al
0000155C  03FF              add di,di
0000155E  FF                db 0xff
0000155F  FF                db 0xff
00001560  FF                db 0xff
00001561  FF00              inc word [bx+si]
00001563  0000              add [bx+si],al
00001565  03FF              add di,di
00001567  FF                db 0xff
00001568  FF                db 0xff
00001569  FF                db 0xff
0000156A  FF00              inc word [bx+si]
0000156C  0000              add [bx+si],al
0000156E  03FF              add di,di
00001570  FFCF              dec di
00001572  FF                db 0xff
00001573  FF00              inc word [bx+si]
00001575  0000              add [bx+si],al
00001577  03FF              add di,di
00001579  FFCF              dec di
0000157B  FF                db 0xff
0000157C  FF00              inc word [bx+si]
0000157E  0000              add [bx+si],al
00001580  03FF              add di,di
00001582  FFCF              dec di
00001584  FF                db 0xff
00001585  FF00              inc word [bx+si]
00001587  0000              add [bx+si],al
00001589  03FF              add di,di
0000158B  FFCF              dec di
0000158D  FF                db 0xff
0000158E  FF00              inc word [bx+si]
00001590  0000              add [bx+si],al
00001592  03FF              add di,di
00001594  FFCF              dec di
00001596  FF                db 0xff
00001597  FF00              inc word [bx+si]
00001599  0000              add [bx+si],al
0000159B  03FF              add di,di
0000159D  FFCF              dec di
0000159F  FF                db 0xff
000015A0  FF00              inc word [bx+si]
000015A2  0000              add [bx+si],al
000015A4  03FF              add di,di
000015A6  FFCF              dec di
000015A8  FF                db 0xff
000015A9  FF00              inc word [bx+si]
000015AB  0000              add [bx+si],al
000015AD  03FF              add di,di
000015AF  FFCF              dec di
000015B1  FF                db 0xff
000015B2  FF00              inc word [bx+si]
000015B4  0000              add [bx+si],al
000015B6  03FF              add di,di
000015B8  FFCF              dec di
000015BA  FF                db 0xff
000015BB  FF00              inc word [bx+si]
000015BD  0000              add [bx+si],al
000015BF  03FF              add di,di
000015C1  FFCF              dec di
000015C3  FF                db 0xff
000015C4  FF00              inc word [bx+si]
000015C6  0000              add [bx+si],al
000015C8  03FF              add di,di
000015CA  FFCF              dec di
000015CC  FF                db 0xff
000015CD  FF00              inc word [bx+si]
000015CF  0000              add [bx+si],al
000015D1  03FF              add di,di
000015D3  FFCF              dec di
000015D5  FF                db 0xff
000015D6  FF00              inc word [bx+si]
000015D8  0000              add [bx+si],al
000015DA  07                pop es
000015DB  0009              add [bx+di],cl
000015DD  0005              add [di],al
000015DF  000A              add [bp+si],cl
000015E1  0007              add [bx],al
000015E3  0007              add [bx],al
000015E5  005403            add [si+0x3],dl
000015E8  54                push sp
000015E9  0302              add ax,[bp+si]
000015EB  0002              add [bp+si],al
000015ED  00870387          add [bx-0x78fd],al
000015F1  0302              add ax,[bp+si]
000015F3  0002              add [bp+si],al
000015F5  00BD03BD          add [di-0x42fd],bh
000015F9  03870387          add ax,[bx-0x78fd]
000015FD  03BD03BD          add di,[di-0x42fd]
00001601  03F5              add si,bp
00001603  03F5              add si,bp
00001605  0332              add si,[bp+si]
00001607  0432              add al,0x32
00001609  0402              add al,0x2
0000160B  0002              add [bp+si],al
0000160D  007204            add [bp+si+0x4],dh
00001610  7204              jc 0x1616
00001612  0200              add al,[bx+si]
00001614  0200              add al,[bx+si]
00001616  B504              mov ch,0x4
00001618  B504              mov ch,0x4
0000161A  B504              mov ch,0x4
0000161C  B504              mov ch,0x4
0000161E  7204              jc 0x1624
00001620  7204              jc 0x1626
00001622  7204              jc 0x1628
00001624  7204              jc 0x162a
00001626  F5                cmc
00001627  03F5              add si,bp
00001629  0302              add ax,[bp+si]
0000162B  0002              add [bp+si],al
0000162D  0032              add [bp+si],dh
0000162F  0432              add al,0x32
00001631  0402              add al,0x2
00001633  0002              add [bp+si],al
00001635  007204            add [bp+si+0x4],dh
00001638  7204              jc 0x163e
0000163A  3204              xor al,[si]
0000163C  3204              xor al,[si]
0000163E  7204              jc 0x1644
00001640  7204              jc 0x1646
00001642  B504              mov ch,0x4
00001644  B504              mov ch,0x4
00001646  FD                std
00001647  04FD              add al,0xfd
00001649  0402              add al,0x2
0000164B  0002              add [bp+si],al
0000164D  004905            add [bx+di+0x5],cl
00001650  49                dec cx
00001651  050200            add ax,0x2
00001654  0200              add al,[bx+si]
00001656  99                cwd
00001657  059905            add ax,0x599
0000165A  99                cwd
0000165B  059905            add ax,0x599
0000165E  49                dec cx
0000165F  054905            add ax,0x549
00001662  49                dec cx
00001663  054905            add ax,0x549
00001666  7204              jc 0x166c
00001668  7204              jc 0x166e
0000166A  0200              add al,[bx+si]
0000166C  0200              add al,[bx+si]
0000166E  EE                out dx,al
0000166F  050200            add ax,0x2
00001672  EE                out dx,al
00001673  050200            add ax,0x2
00001676  49                dec cx
00001677  06                push es
00001678  49                dec cx
00001679  06                push es
0000167A  49                dec cx
0000167B  06                push es
0000167C  49                dec cx
0000167D  06                push es
0000167E  EE                out dx,al
0000167F  05EE05            add ax,0x5ee
00001682  EE                out dx,al
00001683  05EE05            add ax,0x5ee
00001686  7204              jc 0x168c
00001688  7204              jc 0x168e
0000168A  0200              add al,[bx+si]
0000168C  0200              add al,[bx+si]
0000168E  EE                out dx,al
0000168F  050200            add ax,0x2
00001692  EE                out dx,al
00001693  050200            add ax,0x2
00001696  49                dec cx
00001697  06                push es
00001698  49                dec cx
00001699  06                push es
0000169A  49                dec cx
0000169B  06                push es
0000169C  49                dec cx
0000169D  06                push es
0000169E  EE                out dx,al
0000169F  05EE05            add ax,0x5ee
000016A2  EE                out dx,al
000016A3  05EE05            add ax,0x5ee
000016A6  0E                push cs
000016A7  07                pop es
000016A8  0E                push cs
000016A9  07                pop es
000016AA  A806              test al,0x6
000016AC  A806              test al,0x6
000016AE  49                dec cx
000016AF  06                push es
000016B0  49                dec cx
000016B1  06                push es
000016B2  EE                out dx,al
000016B3  05EE05            add ax,0x5ee
000016B6  99                cwd
000016B7  059905            add ax,0x599
000016BA  49                dec cx
000016BB  054905            add ax,0x549
000016BE  FD                std
000016BF  04FD              add al,0xfd
000016C1  04B5              add al,0xb5
000016C3  04B5              add al,0xb5
000016C5  0472              add al,0x72
000016C7  0472              add al,0x72
000016C9  0402              add al,0x2
000016CB  0002              add [bp+si],al
000016CD  0032              add [bp+si],dh
000016CF  0432              add al,0x32
000016D1  0402              add al,0x2
000016D3  0002              add [bp+si],al
000016D5  00F5              add ch,dh
000016D7  03F5              add si,bp
000016D9  0302              add ax,[bp+si]
000016DB  0002              add [bp+si],al
000016DD  00870387          add [bx-0x78fd],al
000016E1  0302              add ax,[bp+si]
000016E3  0002              add [bp+si],al
000016E5  005403            add [si+0x3],dl
000016E8  54                push sp
000016E9  035403            add dx,[si+0x3]
000016EC  54                push sp
000016ED  035403            add dx,[si+0x3]
000016F0  54                push sp
000016F1  035403            add dx,[si+0x3]
000016F4  54                push sp
000016F5  0302              add ax,[bp+si]
000016F7  0013              add [bp+di],dl
000016F9  096279            or [bp+si+0x79],sp
000016FC  000D              add [di],cl
000016FE  0B4772            or ax,[bx+0x72]
00001701  6567204B75        and [gs:ebx+0x75],cl
00001706  7065              jo 0x176d
00001708  7262              jc 0x176c
0000170A  657267            gs jc 0x1774
0000170D  0003              add [bp+di],al
0000170F  105052            adc [bx+si+0x52],dl
00001712  45                inc bp
00001713  53                push bx
00001714  53                push bx
00001715  207370            and [bp+di+0x70],dh
00001718  61                popaw
00001719  636520            arpl [di+0x20],sp
0000171C  626172            bound sp,[bx+di+0x72]
0000171F  20464F            and [bp+0x4f],al
00001722  52                push dx
00001723  204B45            and [bp+di+0x45],cl
00001726  59                pop cx
00001727  42                inc dx
00001728  4F                dec di
00001729  41                inc cx
0000172A  52                push dx
0000172B  44                inc sp
0000172C  20504C            and [bx+si+0x4c],dl
0000172F  41                inc cx
00001730  59                pop cx
00001731  0002              add [bp+si],al
00001733  1220              adc ah,[bx+si]
00001735  2020              and [bx+si],ah
00001737  204F52            and [bx+0x52],cl
0000173A  2022              and [bp+si],ah
0000173C  4A                dec dx
0000173D  222D              and ch,[di]
0000173F  6B657920          imul sp,[di+0x79],byte +0x20
00001743  46                inc si
00001744  4F                dec di
00001745  52                push dx
00001746  204A4F            and [bp+si+0x4f],cl
00001749  59                pop cx
0000174A  53                push bx
0000174B  54                push sp
0000174C  49                dec cx
0000174D  43                inc bx
0000174E  4B                dec bx
0000174F  20504C            and [bx+si+0x4c],dl
00001752  41                inc cx
00001753  59                pop cx
00001754  2020              and [bx+si],ah
00001756  2020              and [bx+si],ah
00001758  00061828          add [0x2818],al
0000175C  43                inc bx
0000175D  2931              sub [bx+di],si
0000175F  3938              cmp [bx+si],di
00001761  3220              xor ah,[bx+si]
00001763  4F                dec di
00001764  52                push dx
00001765  49                dec cx
00001766  4F                dec di
00001767  4E                dec si
00001768  20534F            and [bp+di+0x4f],dl
0000176B  46                inc si
0000176C  54                push sp
0000176D  57                push di
0000176E  41                inc cx
0000176F  52                push dx
00001770  45                inc bp
00001771  2C20              sub al,0x20
00001773  49                dec cx
00001774  4E                dec si
00001775  43                inc bx
00001776  2E0003            add [cs:bp+di],al
00001779  0C50              or al,0x50
0000177B  52                push dx
0000177C  45                inc bp
0000177D  53                push bx
0000177E  53                push bx
0000177F  207370            and [bp+di+0x70],dh
00001782  61                popaw
00001783  636520            arpl [di+0x20],sp
00001786  626172            bound sp,[bx+di+0x72]
00001789  20464F            and [bp+0x4f],al
0000178C  52                push dx
0000178D  204B45            and [bp+di+0x45],cl
00001790  59                pop cx
00001791  42                inc dx
00001792  4F                dec di
00001793  41                inc cx
00001794  52                push dx
00001795  44                inc sp
00001796  20504C            and [bx+si+0x4c],dl
00001799  41                inc cx
0000179A  59                pop cx
0000179B  0002              add [bp+si],al
0000179D  0E                push cs
0000179E  2020              and [bx+si],ah
000017A0  2020              and [bx+si],ah
000017A2  4F                dec di
000017A3  52                push dx
000017A4  2022              and [bp+si],ah
000017A6  4A                dec dx
000017A7  222D              and ch,[di]
000017A9  6B657920          imul sp,[di+0x79],byte +0x20
000017AD  46                inc si
000017AE  4F                dec di
000017AF  52                push dx
000017B0  204A4F            and [bp+si+0x4f],cl
000017B3  59                pop cx
000017B4  53                push bx
000017B5  54                push sp
000017B6  49                dec cx
000017B7  43                inc bx
000017B8  4B                dec bx
000017B9  20504C            and [bx+si+0x4c],dl
000017BC  41                inc cx
000017BD  59                pop cx
000017BE  2020              and [bx+si],ah
000017C0  2020              and [bx+si],ah
000017C2  005343            add [bp+di+0x43],dl
000017C5  4F                dec di
000017C6  52                push dx
000017C7  45                inc bp
000017C8  0D0A20            or ax,0x200a
000017CB  2020              and [bx+si],ah
000017CD  2020              and [bx+si],ah
000017CF  300D              xor [di],cl
000017D1  0A0A              or cl,[bp+si]
000017D3  0A0A              or cl,[bp+si]
000017D5  204849            and [bx+si+0x49],cl
000017D8  47                inc di
000017D9  48                dec ax
000017DA  0D0A20            or ax,0x200a
000017DD  53                push bx
000017DE  43                inc bx
000017DF  4F                dec di
000017E0  52                push dx
000017E1  45                inc bp
000017E2  0D0A20            or ax,0x200a
000017E5  2020              and [bx+si],ah
000017E7  2020              and [bx+si],ah
000017E9  3021              xor [bx+di],ah
000017EB  59                pop cx
000017EC  44                inc sp
000017ED  41                inc cx
000017EE  45                inc bp
000017EF  52                push dx
000017F0  0300              add ax,[bx+si]
000017F2  00C8              add al,cl
000017F4  0C00              or al,0x0
000017F6  20781C            and [bx+si+0x1c],bh
000017F9  0020              add [bx+si],ah
000017FB  96                xchg ax,si
000017FC  1C00              sbb al,0x0
000017FE  285A1C            sub [bp+si+0x1c],bl
00001801  0028              add [bx+si],ch
00001803  783C              js 0x1841
00001805  00403C            add [bx+si+0x3c],al
00001808  3C00              cmp al,0x0
0000180A  40                inc ax
0000180B  3C3C              cmp al,0x3c
0000180D  00401E            add [bx+si+0x1e],al
00001810  3C00              cmp al,0x0
00001812  50                push ax
00001813  0A3C              or bh,[si]
00001815  0080143C          add [bx+si+0x3c14],al
00001819  0080053C          add [bx+si+0x3c05],al
0000181D  0080053C          add [bx+si+0x3c05],al
00001821  FF                db 0xff
00001822  FF00              inc word [bx+si]
00001824  0000              add [bx+si],al
00001826  7A2E              jpe 0x1856
00001828  190E007A          sbb [0x7a00],cx
0000182C  2E0E              cs push cs
0000182E  0E                push cs
0000182F  0000              add [bx+si],al
00001831  0000              add [bx+si],al
00001833  0000              add [bx+si],al
00001835  0000              add [bx+si],al
00001837  0000              add [bx+si],al
00001839  0000              add [bx+si],al
0000183B  0000              add [bx+si],al
0000183D  0000              add [bx+si],al
0000183F  0000              add [bx+si],al
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
000018A1  026D30            add ch,[di+0x30]
000018A4  1A26006D          sbb ah,[0x6d00]
000018A8  300E0E00          xor [0xe],cl
000018AC  0400              add al,0x0
000018AE  0000              add [bx+si],al
000018B0  0000              add [bx+si],al
000018B2  0000              add [bx+si],al
000018B4  0000              add [bx+si],al
000018B6  0000              add [bx+si],al
000018B8  0000              add [bx+si],al
000018BA  0000              add [bx+si],al
000018BC  0000              add [bx+si],al
000018BE  0000              add [bx+si],al
000018C0  0000              add [bx+si],al
000018C2  0000              add [bx+si],al
000018C4  0000              add [bx+si],al
000018C6  0000              add [bx+si],al
000018C8  0000              add [bx+si],al
000018CA  0000              add [bx+si],al
000018CC  0000              add [bx+si],al
000018CE  0000              add [bx+si],al
000018D0  0000              add [bx+si],al
000018D2  0000              add [bx+si],al
000018D4  0000              add [bx+si],al
000018D6  0000              add [bx+si],al
000018D8  0000              add [bx+si],al
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
000018FC  0000              add [bx+si],al
000018FE  0000              add [bx+si],al
00001900  0000              add [bx+si],al
00001902  0000              add [bx+si],al
00001904  0000              add [bx+si],al
00001906  0000              add [bx+si],al
00001908  0000              add [bx+si],al
0000190A  0000              add [bx+si],al
0000190C  0000              add [bx+si],al
0000190E  0000              add [bx+si],al
00001910  0000              add [bx+si],al
00001912  0000              add [bx+si],al
00001914  0000              add [bx+si],al
00001916  0000              add [bx+si],al
00001918  0000              add [bx+si],al
0000191A  0000              add [bx+si],al
0000191C  0003              add [bp+di],al
0000191E  8B2E1A26          mov bp,[0x261a]
00001922  008B2E0E          add [bp+di+0xe2e],cl
00001926  0E                push cs
00001927  0004              add [si],al
00001929  0000              add [bx+si],al
0000192B  0000              add [bx+si],al
0000192D  0000              add [bx+si],al
0000192F  0000              add [bx+si],al
00001931  0000              add [bx+si],al
00001933  0000              add [bx+si],al
00001935  0000              add [bx+si],al
00001937  0000              add [bx+si],al
00001939  0000              add [bx+si],al
0000193B  0000              add [bx+si],al
0000193D  0000              add [bx+si],al
0000193F  0000              add [bx+si],al
00001941  0000              add [bx+si],al
00001943  0000              add [bx+si],al
00001945  0000              add [bx+si],al
00001947  0000              add [bx+si],al
00001949  0000              add [bx+si],al
0000194B  0000              add [bx+si],al
0000194D  0000              add [bx+si],al
0000194F  0000              add [bx+si],al
00001951  0000              add [bx+si],al
00001953  0000              add [bx+si],al
00001955  0000              add [bx+si],al
00001957  0000              add [bx+si],al
00001959  0000              add [bx+si],al
0000195B  0000              add [bx+si],al
0000195D  0000              add [bx+si],al
0000195F  0000              add [bx+si],al
00001961  0000              add [bx+si],al
00001963  0000              add [bx+si],al
00001965  0000              add [bx+si],al
00001967  0000              add [bx+si],al
00001969  0000              add [bx+si],al
0000196B  0000              add [bx+si],al
0000196D  0000              add [bx+si],al
0000196F  0000              add [bx+si],al
00001971  0000              add [bx+si],al
00001973  0000              add [bx+si],al
00001975  0000              add [bx+si],al
00001977  0000              add [bx+si],al
00001979  0000              add [bx+si],al
0000197B  0000              add [bx+si],al
0000197D  0000              add [bx+si],al
0000197F  0000              add [bx+si],al
00001981  0000              add [bx+si],al
00001983  0000              add [bx+si],al
00001985  0000              add [bx+si],al
00001987  0000              add [bx+si],al
00001989  0000              add [bx+si],al
0000198B  0000              add [bx+si],al
0000198D  0000              add [bx+si],al
0000198F  0000              add [bx+si],al
00001991  0000              add [bx+si],al
00001993  0000              add [bx+si],al
00001995  0000              add [bx+si],al
00001997  0000              add [bx+si],al
00001999  00922E19          add [bp+si+0x192e],dl
0000199D  2600922E0E        add [es:bp+si+0xe2e],dl
000019A2  0E                push cs
000019A3  0000              add [bx+si],al
000019A5  0000              add [bx+si],al
000019A7  0000              add [bx+si],al
000019A9  0000              add [bx+si],al
000019AB  0000              add [bx+si],al
000019AD  0000              add [bx+si],al
000019AF  0000              add [bx+si],al
000019B1  0000              add [bx+si],al
000019B3  0000              add [bx+si],al
000019B5  0000              add [bx+si],al
000019B7  0000              add [bx+si],al
000019B9  0000              add [bx+si],al
000019BB  0000              add [bx+si],al
000019BD  0000              add [bx+si],al
000019BF  0000              add [bx+si],al
000019C1  0000              add [bx+si],al
000019C3  0000              add [bx+si],al
000019C5  0000              add [bx+si],al
000019C7  0000              add [bx+si],al
000019C9  0000              add [bx+si],al
000019CB  0000              add [bx+si],al
000019CD  0000              add [bx+si],al
000019CF  0000              add [bx+si],al
000019D1  0000              add [bx+si],al
000019D3  0000              add [bx+si],al
000019D5  0000              add [bx+si],al
000019D7  0000              add [bx+si],al
000019D9  0000              add [bx+si],al
000019DB  0000              add [bx+si],al
000019DD  0000              add [bx+si],al
000019DF  0000              add [bx+si],al
000019E1  0000              add [bx+si],al
000019E3  0000              add [bx+si],al
000019E5  0000              add [bx+si],al
000019E7  0000              add [bx+si],al
000019E9  0000              add [bx+si],al
000019EB  0000              add [bx+si],al
000019ED  0000              add [bx+si],al
000019EF  0000              add [bx+si],al
000019F1  0000              add [bx+si],al
000019F3  0000              add [bx+si],al
000019F5  0000              add [bx+si],al
000019F7  0000              add [bx+si],al
000019F9  0000              add [bx+si],al
000019FB  0000              add [bx+si],al
000019FD  0000              add [bx+si],al
000019FF  0000              add [bx+si],al
00001A01  0000              add [bx+si],al
00001A03  0000              add [bx+si],al
00001A05  0000              add [bx+si],al
00001A07  0000              add [bx+si],al
00001A09  0000              add [bx+si],al
00001A0B  0000              add [bx+si],al
00001A0D  0000              add [bx+si],al
00001A0F  0000              add [bx+si],al
00001A11  0000              add [bx+si],al
00001A13  0000              add [bx+si],al
00001A15  02AD2C1A          add ch,[di+0x1a2c]
00001A19  2600AD2C0E        add [es:di+0xe2c],ch
00001A1E  0E                push cs
00001A1F  0004              add [si],al
00001A21  0000              add [bx+si],al
00001A23  0000              add [bx+si],al
00001A25  0000              add [bx+si],al
00001A27  0000              add [bx+si],al
00001A29  0000              add [bx+si],al
00001A2B  0000              add [bx+si],al
00001A2D  0000              add [bx+si],al
00001A2F  0000              add [bx+si],al
00001A31  0000              add [bx+si],al
00001A33  0000              add [bx+si],al
00001A35  0000              add [bx+si],al
00001A37  0000              add [bx+si],al
00001A39  0000              add [bx+si],al
00001A3B  0000              add [bx+si],al
00001A3D  0000              add [bx+si],al
00001A3F  0000              add [bx+si],al
00001A41  0000              add [bx+si],al
00001A43  0000              add [bx+si],al
00001A45  0000              add [bx+si],al
00001A47  0000              add [bx+si],al
00001A49  0000              add [bx+si],al
00001A4B  0000              add [bx+si],al
00001A4D  0000              add [bx+si],al
00001A4F  0000              add [bx+si],al
00001A51  0000              add [bx+si],al
00001A53  0000              add [bx+si],al
00001A55  0000              add [bx+si],al
00001A57  0000              add [bx+si],al
00001A59  0000              add [bx+si],al
00001A5B  0000              add [bx+si],al
00001A5D  0000              add [bx+si],al
00001A5F  0000              add [bx+si],al
00001A61  0000              add [bx+si],al
00001A63  0000              add [bx+si],al
00001A65  0000              add [bx+si],al
00001A67  0000              add [bx+si],al
00001A69  0000              add [bx+si],al
00001A6B  0000              add [bx+si],al
00001A6D  0000              add [bx+si],al
00001A6F  0000              add [bx+si],al
00001A71  0000              add [bx+si],al
00001A73  0000              add [bx+si],al
00001A75  0000              add [bx+si],al
00001A77  0000              add [bx+si],al
00001A79  0000              add [bx+si],al
00001A7B  0000              add [bx+si],al
00001A7D  0000              add [bx+si],al
00001A7F  0000              add [bx+si],al
00001A81  0000              add [bx+si],al
00001A83  0000              add [bx+si],al
00001A85  0000              add [bx+si],al
00001A87  0000              add [bx+si],al
00001A89  0000              add [bx+si],al
00001A8B  0000              add [bx+si],al
00001A8D  0000              add [bx+si],al
00001A8F  0000              add [bx+si],al
00001A91  0000              add [bx+si],al
00001A93  0000              add [bx+si],al
00001A95  55                push bp
00001A96  0000              add [bx+si],al
00001A98  004040            add [bx+si+0x40],al
00001A9B  40                inc ax
00001A9C  40                inc ax
00001A9D  0101              add [bx+di],ax
00001A9F  0101              add [bx+di],ax
00001AA1  0000              add [bx+si],al
00001AA3  005505            add [di+0x5],dl
00001AA6  104040            adc [bx+si+0x40],al
00001AA9  50                push ax
00001AAA  0401              add al,0x1
00001AAC  014040            add [bx+si+0x40],ax
00001AAF  1005              adc [di],al
00001AB1  0101              add [bx+di],ax
00001AB3  0450              add al,0x50
00001AB5  150000            adc ax,0x0
00001AB8  004040            add [bx+si+0x40],al
00001ABB  40                inc ax
00001ABC  0000              add [bx+si],al
00001ABE  0101              add [bx+di],ax
00001AC0  0100              add [bx+si],ax
00001AC2  0000              add [bx+si],al
00001AC4  54                push sp
00001AC5  54                push sp
00001AC6  0000              add [bx+si],al
00001AC8  0000              add [bx+si],al
00001ACA  40                inc ax
00001ACB  40                inc ax
00001ACC  40                inc ax
00001ACD  0101              add [bx+di],ax
00001ACF  0100              add [bx+si],ax
00001AD1  0000              add [bx+si],al
00001AD3  0015              add [di],dl
00001AD5  40                inc ax
00001AD6  0000              add [bx+si],al
00001AD8  0001              add [bx+di],al
00001ADA  0000              add [bx+si],al
00001ADC  0000              add [bx+si],al
00001ADE  0000              add [bx+si],al
00001AE0  40                inc ax
00001AE1  0000              add [bx+si],al
00001AE3  0001              add [bx+di],al
00001AE5  154000            adc ax,0x40
00001AE8  005401            add [si+0x1],dl
00001AEB  0000              add [bx+si],al
00001AED  0000              add [bx+si],al
00001AEF  40                inc ax
00001AF0  150000            adc ax,0x0
00001AF3  015400            add [si+0x0],dx
00001AF6  0001              add [bx+di],al
00001AF8  0100              add [bx+si],ax
00001AFA  004040            add [bx+si+0x40],al
00001AFD  0101              add [bx+di],ax
00001AFF  0000              add [bx+si],al
00001B01  40                inc ax
00001B02  40                inc ax
00001B03  0000              add [bx+si],al
00001B05  0202              add al,[bp+si]
00001B07  0202              add al,[bp+si]
00001B09  1915              sbb [di],dx
00001B0B  0101              add [bx+di],ax
00001B0D  0101              add [bx+di],ax
00001B0F  0101              add [bx+di],ax
00001B11  0101              add [bx+di],ax
00001B13  16                push ss
00001B14  1A19              sbb bl,[bx+di]
00001B16  150101            adc ax,0x101
00001B19  0101              add [bx+di],ax
00001B1B  0101              add [bx+di],ax
00001B1D  0101              add [bx+di],ax
00001B1F  16                push ss
00001B20  1A00              sbb al,[bx+si]
00001B22  0000              add [bx+si],al
00001B24  0000              add [bx+si],al
00001B26  0003              add [bp+di],al
00001B28  0000              add [bx+si],al
00001B2A  0000              add [bx+si],al
00001B2C  0200              add al,[bx+si]
00001B2E  0000              add [bx+si],al
00001B30  0000              add [bx+si],al
00001B32  0019              add [bx+di],bl
00001B34  150101            adc ax,0x101
00001B37  0101              add [bx+di],ax
00001B39  0101              add [bx+di],ax
00001B3B  0101              add [bx+di],ax
00001B3D  0101              add [bx+di],ax
00001B3F  0101              add [bx+di],ax
00001B41  0101              add [bx+di],ax
00001B43  0101              add [bx+di],ax
00001B45  16                push ss
00001B46  1A03              sbb al,[bp+di]
00001B48  0000              add [bx+si],al
00001B4A  0000              add [bx+si],al
00001B4C  0000              add [bx+si],al
00001B4E  0000              add [bx+si],al
00001B50  0000              add [bx+si],al
00001B52  0203              add al,[bp+di]
00001B54  0000              add [bx+si],al
00001B56  0000              add [bx+si],al
00001B58  0000              add [bx+si],al
00001B5A  0000              add [bx+si],al
00001B5C  0000              add [bx+si],al
00001B5E  0200              add al,[bx+si]
00001B60  0000              add [bx+si],al
00001B62  0000              add [bx+si],al
00001B64  0003              add [bp+di],al
00001B66  0000              add [bx+si],al
00001B68  0000              add [bx+si],al
00001B6A  0200              add al,[bx+si]
00001B6C  0000              add [bx+si],al
00001B6E  0000              add [bx+si],al
00001B70  0003              add [bp+di],al
00001B72  0000              add [bx+si],al
00001B74  0000              add [bx+si],al
00001B76  0000              add [bx+si],al
00001B78  0000              add [bx+si],al
00001B7A  0000              add [bx+si],al
00001B7C  0000              add [bx+si],al
00001B7E  0000              add [bx+si],al
00001B80  0000              add [bx+si],al
00001B82  0000              add [bx+si],al
00001B84  0203              add al,[bp+di]
00001B86  0000              add [bx+si],al
00001B88  0000              add [bx+si],al
00001B8A  0000              add [bx+si],al
00001B8C  0000              add [bx+si],al
00001B8E  0000              add [bx+si],al
00001B90  0203              add al,[bp+di]
00001B92  0000              add [bx+si],al
00001B94  0000              add [bx+si],al
00001B96  0000              add [bx+si],al
00001B98  0000              add [bx+si],al
00001B9A  0000              add [bx+si],al
00001B9C  0200              add al,[bx+si]
00001B9E  0000              add [bx+si],al
00001BA0  0000              add [bx+si],al
00001BA2  0003              add [bp+di],al
00001BA4  0000              add [bx+si],al
00001BA6  0000              add [bx+si],al
00001BA8  0200              add al,[bx+si]
00001BAA  0000              add [bx+si],al
00001BAC  0000              add [bx+si],al
00001BAE  0003              add [bp+di],al
00001BB0  0000              add [bx+si],al
00001BB2  0000              add [bx+si],al
00001BB4  0000              add [bx+si],al
00001BB6  0000              add [bx+si],al
00001BB8  0000              add [bx+si],al
00001BBA  0000              add [bx+si],al
00001BBC  0000              add [bx+si],al
00001BBE  0000              add [bx+si],al
00001BC0  0000              add [bx+si],al
00001BC2  0203              add al,[bp+di]
00001BC4  0000              add [bx+si],al
00001BC6  0000              add [bx+si],al
00001BC8  0000              add [bx+si],al
00001BCA  0000              add [bx+si],al
00001BCC  0000              add [bx+si],al
00001BCE  07                pop es
00001BCF  0800              or [bx+si],al
00001BD1  0000              add [bx+si],al
00001BD3  0000              add [bx+si],al
00001BD5  0000              add [bx+si],al
00001BD7  0000              add [bx+si],al
00001BD9  0002              add [bp+si],al
00001BDB  0000              add [bx+si],al
00001BDD  0000              add [bx+si],al
00001BDF  0000              add [bx+si],al
00001BE1  0300              add ax,[bx+si]
00001BE3  0000              add [bx+si],al
00001BE5  0002              add [bp+si],al
00001BE7  0000              add [bx+si],al
00001BE9  0000              add [bx+si],al
00001BEB  0000              add [bx+si],al
00001BED  0300              add ax,[bx+si]
00001BEF  0000              add [bx+si],al
00001BF1  0000              add [bx+si],al
00001BF3  0000              add [bx+si],al
00001BF5  0000              add [bx+si],al
00001BF7  0000              add [bx+si],al
00001BF9  0000              add [bx+si],al
00001BFB  0000              add [bx+si],al
00001BFD  0000              add [bx+si],al
00001BFF  0002              add [bp+si],al
00001C01  0300              add ax,[bx+si]
00001C03  0000              add [bx+si],al
00001C05  0005              add [di],al
00001C07  06                push es
00001C08  0000              add [bx+si],al
00001C0A  0000              add [bx+si],al
00001C0C  0000              add [bx+si],al
00001C0E  0000              add [bx+si],al
00001C10  0000              add [bx+si],al
00001C12  050600            add ax,0x6
00001C15  0000              add [bx+si],al
00001C17  0002              add [bp+si],al
00001C19  0000              add [bx+si],al
00001C1B  0000              add [bx+si],al
00001C1D  0000              add [bx+si],al
00001C1F  0300              add ax,[bx+si]
00001C21  0000              add [bx+si],al
00001C23  0002              add [bp+si],al
00001C25  0000              add [bx+si],al
00001C27  0000              add [bx+si],al
00001C29  0000              add [bx+si],al
00001C2B  0300              add ax,[bx+si]
00001C2D  0000              add [bx+si],al
00001C2F  0005              add [di],al
00001C31  06                push es
00001C32  0000              add [bx+si],al
00001C34  0000              add [bx+si],al
00001C36  050101            add ax,0x101
00001C39  06                push es
00001C3A  0000              add [bx+si],al
00001C3C  0000              add [bx+si],al
00001C3E  0203              add al,[bp+di]
00001C40  0000              add [bx+si],al
00001C42  0000              add [bx+si],al
00001C44  0203              add al,[bp+di]
00001C46  0000              add [bx+si],al
00001C48  0000              add [bx+si],al
00001C4A  0000              add [bx+si],al
00001C4C  0000              add [bx+si],al
00001C4E  0000              add [bx+si],al
00001C50  0203              add al,[bp+di]
00001C52  0000              add [bx+si],al
00001C54  0000              add [bx+si],al
00001C56  0200              add al,[bx+si]
00001C58  0000              add [bx+si],al
00001C5A  0000              add [bx+si],al
00001C5C  0003              add [bp+di],al
00001C5E  0000              add [bx+si],al
00001C60  0000              add [bx+si],al
00001C62  0200              add al,[bx+si]
00001C64  0000              add [bx+si],al
00001C66  0000              add [bx+si],al
00001C68  0003              add [bp+di],al
00001C6A  0000              add [bx+si],al
00001C6C  0000              add [bx+si],al
00001C6E  0203              add al,[bp+di]
00001C70  0000              add [bx+si],al
00001C72  0000              add [bx+si],al
00001C74  0200              add al,[bx+si]
00001C76  0003              add [bp+di],al
00001C78  0000              add [bx+si],al
00001C7A  0000              add [bx+si],al
00001C7C  0203              add al,[bp+di]
00001C7E  0000              add [bx+si],al
00001C80  0000              add [bx+si],al
00001C82  0203              add al,[bp+di]
00001C84  0000              add [bx+si],al
00001C86  0000              add [bx+si],al
00001C88  0000              add [bx+si],al
00001C8A  0000              add [bx+si],al
00001C8C  0000              add [bx+si],al
00001C8E  0203              add al,[bp+di]
00001C90  0000              add [bx+si],al
00001C92  0000              add [bx+si],al
00001C94  0200              add al,[bx+si]
00001C96  0000              add [bx+si],al
00001C98  0000              add [bx+si],al
00001C9A  0003              add [bp+di],al
00001C9C  0000              add [bx+si],al
00001C9E  0000              add [bx+si],al
00001CA0  0200              add al,[bx+si]
00001CA2  0000              add [bx+si],al
00001CA4  0000              add [bx+si],al
00001CA6  0003              add [bp+di],al
00001CA8  0000              add [bx+si],al
00001CAA  0000              add [bx+si],al
00001CAC  0203              add al,[bp+di]
00001CAE  0000              add [bx+si],al
00001CB0  0000              add [bx+si],al
00001CB2  0200              add al,[bx+si]
00001CB4  0003              add [bp+di],al
00001CB6  0000              add [bx+si],al
00001CB8  0000              add [bx+si],al
00001CBA  0203              add al,[bp+di]
00001CBC  0000              add [bx+si],al
00001CBE  0000              add [bx+si],al
00001CC0  0203              add al,[bp+di]
00001CC2  0000              add [bx+si],al
00001CC4  0000              add [bx+si],al
00001CC6  0000              add [bx+si],al
00001CC8  0000              add [bx+si],al
00001CCA  0014              add [si],dl
00001CCC  0A03              or al,[bp+di]
00001CCE  0000              add [bx+si],al
00001CD0  0000              add [bx+si],al
00001CD2  0200              add al,[bx+si]
00001CD4  0000              add [bx+si],al
00001CD6  0000              add [bx+si],al
00001CD8  0003              add [bp+di],al
00001CDA  0000              add [bx+si],al
00001CDC  0000              add [bx+si],al
00001CDE  0200              add al,[bx+si]
00001CE0  0000              add [bx+si],al
00001CE2  0000              add [bx+si],al
00001CE4  0003              add [bp+di],al
00001CE6  0000              add [bx+si],al
00001CE8  0000              add [bx+si],al
00001CEA  0203              add al,[bp+di]
00001CEC  0000              add [bx+si],al
00001CEE  0000              add [bx+si],al
00001CF0  0200              add al,[bx+si]
00001CF2  0003              add [bp+di],al
00001CF4  0000              add [bx+si],al
00001CF6  0000              add [bx+si],al
00001CF8  0203              add al,[bp+di]
00001CFA  0000              add [bx+si],al
00001CFC  0000              add [bx+si],al
00001CFE  0203              add al,[bp+di]
00001D00  0000              add [bx+si],al
00001D02  0000              add [bx+si],al
00001D04  050101            add ax,0x101
00001D07  0101              add [bx+di],ax
00001D09  0D0003            or ax,0x300
00001D0C  0000              add [bx+si],al
00001D0E  0000              add [bx+si],al
00001D10  0200              add al,[bx+si]
00001D12  0000              add [bx+si],al
00001D14  0000              add [bx+si],al
00001D16  0003              add [bp+di],al
00001D18  0000              add [bx+si],al
00001D1A  0000              add [bx+si],al
00001D1C  0200              add al,[bx+si]
00001D1E  0000              add [bx+si],al
00001D20  0000              add [bx+si],al
00001D22  0003              add [bp+di],al
00001D24  0000              add [bx+si],al
00001D26  0000              add [bx+si],al
00001D28  0203              add al,[bp+di]
00001D2A  0000              add [bx+si],al
00001D2C  0000              add [bx+si],al
00001D2E  0200              add al,[bx+si]
00001D30  0003              add [bp+di],al
00001D32  0000              add [bx+si],al
00001D34  0000              add [bx+si],al
00001D36  0203              add al,[bp+di]
00001D38  0000              add [bx+si],al
00001D3A  0000              add [bx+si],al
00001D3C  0203              add al,[bp+di]
00001D3E  0000              add [bx+si],al
00001D40  0000              add [bx+si],al
00001D42  07                pop es
00001D43  0404              add al,0x4
00001D45  0404              add al,0x4
00001D47  0404              add al,0x4
00001D49  0800              or [bx+si],al
00001D4B  0000              add [bx+si],al
00001D4D  0007              add [bx],al
00001D4F  0404              add al,0x4
00001D51  0404              add al,0x4
00001D53  0404              add al,0x4
00001D55  0800              or [bx+si],al
00001D57  0000              add [bx+si],al
00001D59  0007              add [bx],al
00001D5B  0404              add al,0x4
00001D5D  0404              add al,0x4
00001D5F  0404              add al,0x4
00001D61  0800              or [bx+si],al
00001D63  0000              add [bx+si],al
00001D65  0007              add [bx],al
00001D67  0800              or [bx+si],al
00001D69  0000              add [bx+si],al
00001D6B  0007              add [bx],al
00001D6D  0404              add al,0x4
00001D6F  0800              or [bx+si],al
00001D71  0000              add [bx+si],al
00001D73  0002              add [bp+si],al
00001D75  0300              add ax,[bx+si]
00001D77  0000              add [bx+si],al
00001D79  0002              add [bp+si],al
00001D7B  0300              add ax,[bx+si]
00001D7D  0000              add [bx+si],al
00001D7F  0000              add [bx+si],al
00001D81  0000              add [bx+si],al
00001D83  0000              add [bx+si],al
00001D85  0000              add [bx+si],al
00001D87  0000              add [bx+si],al
00001D89  0000              add [bx+si],al
00001D8B  0000              add [bx+si],al
00001D8D  0000              add [bx+si],al
00001D8F  0000              add [bx+si],al
00001D91  0000              add [bx+si],al
00001D93  0000              add [bx+si],al
00001D95  0000              add [bx+si],al
00001D97  0000              add [bx+si],al
00001D99  0000              add [bx+si],al
00001D9B  0000              add [bx+si],al
00001D9D  0000              add [bx+si],al
00001D9F  0000              add [bx+si],al
00001DA1  0000              add [bx+si],al
00001DA3  0000              add [bx+si],al
00001DA5  0000              add [bx+si],al
00001DA7  0000              add [bx+si],al
00001DA9  0000              add [bx+si],al
00001DAB  0000              add [bx+si],al
00001DAD  0000              add [bx+si],al
00001DAF  0000              add [bx+si],al
00001DB1  0002              add [bp+si],al
00001DB3  0300              add ax,[bx+si]
00001DB5  0000              add [bx+si],al
00001DB7  0002              add [bp+si],al
00001DB9  0300              add ax,[bx+si]
00001DBB  0000              add [bx+si],al
00001DBD  0000              add [bx+si],al
00001DBF  0000              add [bx+si],al
00001DC1  0000              add [bx+si],al
00001DC3  0000              add [bx+si],al
00001DC5  0000              add [bx+si],al
00001DC7  0000              add [bx+si],al
00001DC9  0000              add [bx+si],al
00001DCB  0000              add [bx+si],al
00001DCD  0000              add [bx+si],al
00001DCF  0000              add [bx+si],al
00001DD1  0000              add [bx+si],al
00001DD3  0000              add [bx+si],al
00001DD5  0000              add [bx+si],al
00001DD7  0000              add [bx+si],al
00001DD9  0000              add [bx+si],al
00001DDB  0000              add [bx+si],al
00001DDD  0000              add [bx+si],al
00001DDF  0000              add [bx+si],al
00001DE1  0000              add [bx+si],al
00001DE3  0000              add [bx+si],al
00001DE5  0000              add [bx+si],al
00001DE7  0000              add [bx+si],al
00001DE9  0000              add [bx+si],al
00001DEB  0000              add [bx+si],al
00001DED  0000              add [bx+si],al
00001DEF  0002              add [bp+si],al
00001DF1  0300              add ax,[bx+si]
00001DF3  0000              add [bx+si],al
00001DF5  0002              add [bp+si],al
00001DF7  0300              add ax,[bx+si]
00001DF9  0000              add [bx+si],al
00001DFB  0000              add [bx+si],al
00001DFD  0000              add [bx+si],al
00001DFF  0000              add [bx+si],al
00001E01  0000              add [bx+si],al
00001E03  0000              add [bx+si],al
00001E05  0000              add [bx+si],al
00001E07  0000              add [bx+si],al
00001E09  0000              add [bx+si],al
00001E0B  0000              add [bx+si],al
00001E0D  0000              add [bx+si],al
00001E0F  0000              add [bx+si],al
00001E11  0000              add [bx+si],al
00001E13  0000              add [bx+si],al
00001E15  0000              add [bx+si],al
00001E17  0000              add [bx+si],al
00001E19  0000              add [bx+si],al
00001E1B  0000              add [bx+si],al
00001E1D  0000              add [bx+si],al
00001E1F  0000              add [bx+si],al
00001E21  0000              add [bx+si],al
00001E23  0000              add [bx+si],al
00001E25  0000              add [bx+si],al
00001E27  0000              add [bx+si],al
00001E29  0000              add [bx+si],al
00001E2B  0000              add [bx+si],al
00001E2D  0002              add [bp+si],al
00001E2F  0300              add ax,[bx+si]
00001E31  0000              add [bx+si],al
00001E33  0002              add [bp+si],al
00001E35  0F1300            movlps qword [bx+si],xmm0
00001E38  0000              add [bx+si],al
00001E3A  0000              add [bx+si],al
00001E3C  0000              add [bx+si],al
00001E3E  0000              add [bx+si],al
00001E40  0000              add [bx+si],al
00001E42  0000              add [bx+si],al
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
00001E6C  0203              add al,[bp+di]
00001E6E  0000              add [bx+si],al
00001E70  0000              add [bx+si],al
00001E72  0200              add al,[bx+si]
00001E74  0901              or [bx+di],ax
00001E76  0101              add [bx+di],ax
00001E78  01060000          add [0x0],ax
00001E7C  0000              add [bx+si],al
00001E7E  050600            add ax,0x6
00001E81  0000              add [bx+si],al
00001E83  0005              add [di],al
00001E85  0101              add [bx+di],ax
00001E87  0101              add [bx+di],ax
00001E89  0101              add [bx+di],ax
00001E8B  06                push es
00001E8C  0000              add [bx+si],al
00001E8E  0000              add [bx+si],al
00001E90  050101            add ax,0x101
00001E93  0101              add [bx+di],ax
00001E95  0101              add [bx+di],ax
00001E97  0101              add [bx+di],ax
00001E99  0101              add [bx+di],ax
00001E9B  0101              add [bx+di],ax
00001E9D  06                push es
00001E9E  0000              add [bx+si],al
00001EA0  0000              add [bx+si],al
00001EA2  050101            add ax,0x101
00001EA5  06                push es
00001EA6  0000              add [bx+si],al
00001EA8  0000              add [bx+si],al
00001EAA  0203              add al,[bp+di]
00001EAC  0000              add [bx+si],al
00001EAE  0000              add [bx+si],al
00001EB0  0200              add al,[bx+si]
00001EB2  1004              adc [si],al
00001EB4  0404              add al,0x4
00001EB6  0408              add al,0x8
00001EB8  0000              add [bx+si],al
00001EBA  0000              add [bx+si],al
00001EBC  0203              add al,[bp+di]
00001EBE  0000              add [bx+si],al
00001EC0  0000              add [bx+si],al
00001EC2  07                pop es
00001EC3  0404              add al,0x4
00001EC5  0404              add al,0x4
00001EC7  0404              add al,0x4
00001EC9  0800              or [bx+si],al
00001ECB  0000              add [bx+si],al
00001ECD  0007              add [bx],al
00001ECF  0404              add al,0x4
00001ED1  0404              add al,0x4
00001ED3  0C00              or al,0x0
00001ED5  0010              add [bx+si],dl
00001ED7  0404              add al,0x4
00001ED9  0404              add al,0x4
00001EDB  0800              or [bx+si],al
00001EDD  0000              add [bx+si],al
00001EDF  0002              add [bp+si],al
00001EE1  0000              add [bx+si],al
00001EE3  0300              add ax,[bx+si]
00001EE5  0000              add [bx+si],al
00001EE7  0002              add [bp+si],al
00001EE9  0300              add ax,[bx+si]
00001EEB  0000              add [bx+si],al
00001EED  0002              add [bp+si],al
00001EEF  0B11              or dx,[bx+di]
00001EF1  0000              add [bx+si],al
00001EF3  0000              add [bx+si],al
00001EF5  0000              add [bx+si],al
00001EF7  0000              add [bx+si],al
00001EF9  0002              add [bp+si],al
00001EFB  0300              add ax,[bx+si]
00001EFD  0000              add [bx+si],al
00001EFF  0000              add [bx+si],al
00001F01  0000              add [bx+si],al
00001F03  0000              add [bx+si],al
00001F05  0000              add [bx+si],al
00001F07  0000              add [bx+si],al
00001F09  0000              add [bx+si],al
00001F0B  0000              add [bx+si],al
00001F0D  0000              add [bx+si],al
00001F0F  0000              add [bx+si],al
00001F11  120E0B11          adc cl,[0x110b]
00001F15  0000              add [bx+si],al
00001F17  0000              add [bx+si],al
00001F19  0000              add [bx+si],al
00001F1B  0000              add [bx+si],al
00001F1D  0002              add [bp+si],al
00001F1F  0000              add [bx+si],al
00001F21  0300              add ax,[bx+si]
00001F23  0000              add [bx+si],al
00001F25  0002              add [bp+si],al
00001F27  0300              add ax,[bx+si]
00001F29  0000              add [bx+si],al
00001F2B  0002              add [bp+si],al
00001F2D  0300              add ax,[bx+si]
00001F2F  0000              add [bx+si],al
00001F31  0000              add [bx+si],al
00001F33  0000              add [bx+si],al
00001F35  0000              add [bx+si],al
00001F37  0002              add [bp+si],al
00001F39  0300              add ax,[bx+si]
00001F3B  0000              add [bx+si],al
00001F3D  0000              add [bx+si],al
00001F3F  0000              add [bx+si],al
00001F41  0000              add [bx+si],al
00001F43  0000              add [bx+si],al
00001F45  0000              add [bx+si],al
00001F47  0000              add [bx+si],al
00001F49  0000              add [bx+si],al
00001F4B  0000              add [bx+si],al
00001F4D  0000              add [bx+si],al
00001F4F  0002              add [bp+si],al
00001F51  0300              add ax,[bx+si]
00001F53  0000              add [bx+si],al
00001F55  0000              add [bx+si],al
00001F57  0000              add [bx+si],al
00001F59  0000              add [bx+si],al
00001F5B  0002              add [bp+si],al
00001F5D  0000              add [bx+si],al
00001F5F  0300              add ax,[bx+si]
00001F61  0000              add [bx+si],al
00001F63  0002              add [bp+si],al
00001F65  0300              add ax,[bx+si]
00001F67  0000              add [bx+si],al
00001F69  0002              add [bp+si],al
00001F6B  0300              add ax,[bx+si]
00001F6D  0000              add [bx+si],al
00001F6F  0000              add [bx+si],al
00001F71  0000              add [bx+si],al
00001F73  0000              add [bx+si],al
00001F75  0002              add [bp+si],al
00001F77  0300              add ax,[bx+si]
00001F79  0000              add [bx+si],al
00001F7B  0000              add [bx+si],al
00001F7D  0000              add [bx+si],al
00001F7F  0000              add [bx+si],al
00001F81  0000              add [bx+si],al
00001F83  0000              add [bx+si],al
00001F85  0000              add [bx+si],al
00001F87  0000              add [bx+si],al
00001F89  0000              add [bx+si],al
00001F8B  0000              add [bx+si],al
00001F8D  0002              add [bp+si],al
00001F8F  0300              add ax,[bx+si]
00001F91  0000              add [bx+si],al
00001F93  0000              add [bx+si],al
00001F95  0000              add [bx+si],al
00001F97  0000              add [bx+si],al
00001F99  0002              add [bp+si],al
00001F9B  0000              add [bx+si],al
00001F9D  0300              add ax,[bx+si]
00001F9F  0000              add [bx+si],al
00001FA1  0002              add [bp+si],al
00001FA3  0300              add ax,[bx+si]
00001FA5  0000              add [bx+si],al
00001FA7  0007              add [bx],al
00001FA9  0800              or [bx+si],al
00001FAB  0000              add [bx+si],al
00001FAD  0000              add [bx+si],al
00001FAF  0000              add [bx+si],al
00001FB1  0000              add [bx+si],al
00001FB3  0007              add [bx],al
00001FB5  0800              or [bx+si],al
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
00001FCB  0007              add [bx],al
00001FCD  0800              or [bx+si],al
00001FCF  0000              add [bx+si],al
00001FD1  0000              add [bx+si],al
00001FD3  0000              add [bx+si],al
00001FD5  0000              add [bx+si],al
00001FD7  0007              add [bx],al
00001FD9  0404              add al,0x4
00001FDB  0800              or [bx+si],al
00001FDD  0000              add [bx+si],al
00001FDF  0002              add [bp+si],al
00001FE1  0300              add ax,[bx+si]
00001FE3  0000              add [bx+si],al
00001FE5  0000              add [bx+si],al
00001FE7  0000              add [bx+si],al
00001FE9  0000              add [bx+si],al
00001FEB  0005              add [di],al
00001FED  06                push es
00001FEE  0000              add [bx+si],al
00001FF0  0000              add [bx+si],al
00001FF2  0000              add [bx+si],al
00001FF4  0000              add [bx+si],al
00001FF6  0000              add [bx+si],al
00001FF8  050600            add ax,0x6
00001FFB  0000              add [bx+si],al
00001FFD  0005              add [di],al
00001FFF  0101              add [bx+di],ax
00002001  0101              add [bx+di],ax
00002003  0101              add [bx+di],ax
00002005  06                push es
00002006  0000              add [bx+si],al
00002008  0000              add [bx+si],al
0000200A  0000              add [bx+si],al
0000200C  0000              add [bx+si],al
0000200E  0000              add [bx+si],al
00002010  050600            add ax,0x6
00002013  0000              add [bx+si],al
00002015  0000              add [bx+si],al
00002017  0000              add [bx+si],al
00002019  0000              add [bx+si],al
0000201B  0000              add [bx+si],al
0000201D  0002              add [bp+si],al
0000201F  0300              add ax,[bx+si]
00002021  0000              add [bx+si],al
00002023  0000              add [bx+si],al
00002025  0000              add [bx+si],al
00002027  0000              add [bx+si],al
00002029  0002              add [bp+si],al
0000202B  0300              add ax,[bx+si]
0000202D  0000              add [bx+si],al
0000202F  0000              add [bx+si],al
00002031  0000              add [bx+si],al
00002033  0000              add [bx+si],al
00002035  0002              add [bp+si],al
00002037  0300              add ax,[bx+si]
00002039  0000              add [bx+si],al
0000203B  0002              add [bp+si],al
0000203D  0000              add [bx+si],al
0000203F  0000              add [bx+si],al
00002041  0000              add [bx+si],al
00002043  0300              add ax,[bx+si]
00002045  0000              add [bx+si],al
00002047  0000              add [bx+si],al
00002049  0000              add [bx+si],al
0000204B  0000              add [bx+si],al
0000204D  0002              add [bp+si],al
0000204F  0300              add ax,[bx+si]
00002051  0000              add [bx+si],al
00002053  0000              add [bx+si],al
00002055  0000              add [bx+si],al
00002057  0000              add [bx+si],al
00002059  0000              add [bx+si],al
0000205B  0002              add [bp+si],al
0000205D  0300              add ax,[bx+si]
0000205F  0000              add [bx+si],al
00002061  0000              add [bx+si],al
00002063  0000              add [bx+si],al
00002065  0000              add [bx+si],al
00002067  0002              add [bp+si],al
00002069  0300              add ax,[bx+si]
0000206B  0000              add [bx+si],al
0000206D  0000              add [bx+si],al
0000206F  0000              add [bx+si],al
00002071  0000              add [bx+si],al
00002073  0002              add [bp+si],al
00002075  0300              add ax,[bx+si]
00002077  0000              add [bx+si],al
00002079  0002              add [bp+si],al
0000207B  0000              add [bx+si],al
0000207D  0000              add [bx+si],al
0000207F  0000              add [bx+si],al
00002081  0300              add ax,[bx+si]
00002083  0000              add [bx+si],al
00002085  0000              add [bx+si],al
00002087  0000              add [bx+si],al
00002089  0000              add [bx+si],al
0000208B  0002              add [bp+si],al
0000208D  0300              add ax,[bx+si]
0000208F  0000              add [bx+si],al
00002091  0000              add [bx+si],al
00002093  0000              add [bx+si],al
00002095  0000              add [bx+si],al
00002097  0000              add [bx+si],al
00002099  0002              add [bp+si],al
0000209B  0300              add ax,[bx+si]
0000209D  0000              add [bx+si],al
0000209F  0000              add [bx+si],al
000020A1  0000              add [bx+si],al
000020A3  0000              add [bx+si],al
000020A5  140A              adc al,0xa
000020A7  0300              add ax,[bx+si]
000020A9  0000              add [bx+si],al
000020AB  0000              add [bx+si],al
000020AD  0000              add [bx+si],al
000020AF  0000              add [bx+si],al
000020B1  140A              adc al,0xa
000020B3  0300              add ax,[bx+si]
000020B5  0000              add [bx+si],al
000020B7  0002              add [bp+si],al
000020B9  0000              add [bx+si],al
000020BB  0000              add [bx+si],al
000020BD  0000              add [bx+si],al
000020BF  1D0000            sbb ax,0x0
000020C2  0000              add [bx+si],al
000020C4  0000              add [bx+si],al
000020C6  0000              add [bx+si],al
000020C8  0014              add [si],dl
000020CA  0A03              or al,[bp+di]
000020CC  0000              add [bx+si],al
000020CE  0000              add [bx+si],al
000020D0  0000              add [bx+si],al
000020D2  0000              add [bx+si],al
000020D4  0000              add [bx+si],al
000020D6  0014              add [si],dl
000020D8  0A03              or al,[bp+di]
000020DA  0000              add [bx+si],al
000020DC  0000              add [bx+si],al
000020DE  050101            add ax,0x101
000020E1  0101              add [bx+di],ax
000020E3  0D0003            or ax,0x300
000020E6  0000              add [bx+si],al
000020E8  0000              add [bx+si],al
000020EA  050101            add ax,0x101
000020ED  0101              add [bx+di],ax
000020EF  0D0003            or ax,0x300
000020F2  0000              add [bx+si],al
000020F4  0000              add [bx+si],al
000020F6  0200              add al,[bx+si]
000020F8  0000              add [bx+si],al
000020FA  0000              add [bx+si],al
000020FC  001D              add [di],bl
000020FE  0000              add [bx+si],al
00002100  0000              add [bx+si],al
00002102  050101            add ax,0x101
00002105  0101              add [bx+di],ax
00002107  0D0003            or ax,0x300
0000210A  0000              add [bx+si],al
0000210C  0000              add [bx+si],al
0000210E  050101            add ax,0x101
00002111  0101              add [bx+di],ax
00002113  0101              add [bx+di],ax
00002115  0D0003            or ax,0x300
00002118  0000              add [bx+si],al
0000211A  0000              add [bx+si],al
0000211C  07                pop es
0000211D  0404              add al,0x4
0000211F  0404              add al,0x4
00002121  0C00              or al,0x0
00002123  0300              add ax,[bx+si]
00002125  0000              add [bx+si],al
00002127  0007              add [bx],al
00002129  0404              add al,0x4
0000212B  0404              add al,0x4
0000212D  0C00              or al,0x0
0000212F  0300              add ax,[bx+si]
00002131  0000              add [bx+si],al
00002133  0002              add [bp+si],al
00002135  0000              add [bx+si],al
00002137  0000              add [bx+si],al
00002139  0000              add [bx+si],al
0000213B  1D0000            sbb ax,0x0
0000213E  0000              add [bx+si],al
00002140  07                pop es
00002141  0404              add al,0x4
00002143  0404              add al,0x4
00002145  0C00              or al,0x0
00002147  0300              add ax,[bx+si]
00002149  0000              add [bx+si],al
0000214B  0007              add [bx],al
0000214D  0404              add al,0x4
0000214F  0404              add al,0x4
00002151  0404              add al,0x4
00002153  0C00              or al,0x0
00002155  0300              add ax,[bx+si]
00002157  0000              add [bx+si],al
00002159  0000              add [bx+si],al
0000215B  0000              add [bx+si],al
0000215D  0000              add [bx+si],al
0000215F  120E0300          adc cl,[0x3]
00002163  0000              add [bx+si],al
00002165  0000              add [bx+si],al
00002167  0000              add [bx+si],al
00002169  0000              add [bx+si],al
0000216B  120E0300          adc cl,[0x3]
0000216F  0000              add [bx+si],al
00002171  0002              add [bp+si],al
00002173  0000              add [bx+si],al
00002175  0000              add [bx+si],al
00002177  0000              add [bx+si],al
00002179  1D0000            sbb ax,0x0
0000217C  0000              add [bx+si],al
0000217E  0000              add [bx+si],al
00002180  0000              add [bx+si],al
00002182  0012              add [bp+si],dl
00002184  0E                push cs
00002185  0300              add ax,[bx+si]
00002187  0000              add [bx+si],al
00002189  0000              add [bx+si],al
0000218B  0000              add [bx+si],al
0000218D  0000              add [bx+si],al
0000218F  0000              add [bx+si],al
00002191  120E0300          adc cl,[0x3]
00002195  0000              add [bx+si],al
00002197  0000              add [bx+si],al
00002199  0000              add [bx+si],al
0000219B  0000              add [bx+si],al
0000219D  0002              add [bp+si],al
0000219F  0300              add ax,[bx+si]
000021A1  0000              add [bx+si],al
000021A3  0000              add [bx+si],al
000021A5  0000              add [bx+si],al
000021A7  0000              add [bx+si],al
000021A9  0002              add [bp+si],al
000021AB  0300              add ax,[bx+si]
000021AD  0000              add [bx+si],al
000021AF  0002              add [bp+si],al
000021B1  0000              add [bx+si],al
000021B3  0000              add [bx+si],al
000021B5  0000              add [bx+si],al
000021B7  0300              add ax,[bx+si]
000021B9  0000              add [bx+si],al
000021BB  0000              add [bx+si],al
000021BD  0000              add [bx+si],al
000021BF  0000              add [bx+si],al
000021C1  0002              add [bp+si],al
000021C3  0300              add ax,[bx+si]
000021C5  0000              add [bx+si],al
000021C7  0000              add [bx+si],al
000021C9  0000              add [bx+si],al
000021CB  0000              add [bx+si],al
000021CD  0000              add [bx+si],al
000021CF  0002              add [bp+si],al
000021D1  0300              add ax,[bx+si]
000021D3  0000              add [bx+si],al
000021D5  0000              add [bx+si],al
000021D7  0000              add [bx+si],al
000021D9  0000              add [bx+si],al
000021DB  0002              add [bp+si],al
000021DD  0300              add ax,[bx+si]
000021DF  0000              add [bx+si],al
000021E1  0000              add [bx+si],al
000021E3  0000              add [bx+si],al
000021E5  0000              add [bx+si],al
000021E7  0002              add [bp+si],al
000021E9  0300              add ax,[bx+si]
000021EB  0000              add [bx+si],al
000021ED  0002              add [bp+si],al
000021EF  0000              add [bx+si],al
000021F1  0000              add [bx+si],al
000021F3  0000              add [bx+si],al
000021F5  0300              add ax,[bx+si]
000021F7  0000              add [bx+si],al
000021F9  0000              add [bx+si],al
000021FB  0000              add [bx+si],al
000021FD  0000              add [bx+si],al
000021FF  0002              add [bp+si],al
00002201  0300              add ax,[bx+si]
00002203  0000              add [bx+si],al
00002205  0000              add [bx+si],al
00002207  0000              add [bx+si],al
00002209  0000              add [bx+si],al
0000220B  0000              add [bx+si],al
0000220D  0002              add [bp+si],al
0000220F  0300              add ax,[bx+si]
00002211  0000              add [bx+si],al
00002213  0000              add [bx+si],al
00002215  0000              add [bx+si],al
00002217  0000              add [bx+si],al
00002219  0007              add [bx],al
0000221B  0800              or [bx+si],al
0000221D  0000              add [bx+si],al
0000221F  0000              add [bx+si],al
00002221  0000              add [bx+si],al
00002223  0000              add [bx+si],al
00002225  0007              add [bx],al
00002227  0800              or [bx+si],al
00002229  0000              add [bx+si],al
0000222B  0007              add [bx],al
0000222D  0404              add al,0x4
0000222F  0404              add al,0x4
00002231  0404              add al,0x4
00002233  0800              or [bx+si],al
00002235  0000              add [bx+si],al
00002237  0000              add [bx+si],al
00002239  0000              add [bx+si],al
0000223B  0000              add [bx+si],al
0000223D  0007              add [bx],al
0000223F  0800              or [bx+si],al
00002241  0000              add [bx+si],al
00002243  0000              add [bx+si],al
00002245  0000              add [bx+si],al
00002247  0000              add [bx+si],al
00002249  0000              add [bx+si],al
0000224B  0002              add [bp+si],al
0000224D  0300              add ax,[bx+si]
0000224F  0000              add [bx+si],al
00002251  0005              add [di],al
00002253  06                push es
00002254  0000              add [bx+si],al
00002256  0000              add [bx+si],al
00002258  0000              add [bx+si],al
0000225A  0000              add [bx+si],al
0000225C  0000              add [bx+si],al
0000225E  050600            add ax,0x6
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
00002275  0005              add [di],al
00002277  06                push es
00002278  0000              add [bx+si],al
0000227A  0000              add [bx+si],al
0000227C  0000              add [bx+si],al
0000227E  0000              add [bx+si],al
00002280  0000              add [bx+si],al
00002282  050101            add ax,0x101
00002285  06                push es
00002286  0000              add [bx+si],al
00002288  0000              add [bx+si],al
0000228A  0203              add al,[bp+di]
0000228C  0000              add [bx+si],al
0000228E  0000              add [bx+si],al
00002290  0203              add al,[bp+di]
00002292  0000              add [bx+si],al
00002294  0000              add [bx+si],al
00002296  0000              add [bx+si],al
00002298  0000              add [bx+si],al
0000229A  0000              add [bx+si],al
0000229C  0203              add al,[bp+di]
0000229E  0000              add [bx+si],al
000022A0  0000              add [bx+si],al
000022A2  0000              add [bx+si],al
000022A4  0000              add [bx+si],al
000022A6  0000              add [bx+si],al
000022A8  0000              add [bx+si],al
000022AA  0000              add [bx+si],al
000022AC  0000              add [bx+si],al
000022AE  0000              add [bx+si],al
000022B0  0000              add [bx+si],al
000022B2  0000              add [bx+si],al
000022B4  0203              add al,[bp+di]
000022B6  0000              add [bx+si],al
000022B8  0000              add [bx+si],al
000022BA  0000              add [bx+si],al
000022BC  0000              add [bx+si],al
000022BE  0000              add [bx+si],al
000022C0  0200              add al,[bx+si]
000022C2  0003              add [bp+di],al
000022C4  0000              add [bx+si],al
000022C6  0000              add [bx+si],al
000022C8  0203              add al,[bp+di]
000022CA  0000              add [bx+si],al
000022CC  0000              add [bx+si],al
000022CE  0203              add al,[bp+di]
000022D0  0000              add [bx+si],al
000022D2  0000              add [bx+si],al
000022D4  0000              add [bx+si],al
000022D6  0000              add [bx+si],al
000022D8  0000              add [bx+si],al
000022DA  0203              add al,[bp+di]
000022DC  0000              add [bx+si],al
000022DE  0000              add [bx+si],al
000022E0  0000              add [bx+si],al
000022E2  0000              add [bx+si],al
000022E4  0000              add [bx+si],al
000022E6  0000              add [bx+si],al
000022E8  0000              add [bx+si],al
000022EA  0000              add [bx+si],al
000022EC  0000              add [bx+si],al
000022EE  0000              add [bx+si],al
000022F0  0000              add [bx+si],al
000022F2  0203              add al,[bp+di]
000022F4  0000              add [bx+si],al
000022F6  0000              add [bx+si],al
000022F8  0000              add [bx+si],al
000022FA  0000              add [bx+si],al
000022FC  0000              add [bx+si],al
000022FE  0200              add al,[bx+si]
00002300  0003              add [bp+di],al
00002302  0000              add [bx+si],al
00002304  0000              add [bx+si],al
00002306  0203              add al,[bp+di]
00002308  0000              add [bx+si],al
0000230A  0000              add [bx+si],al
0000230C  020F              add cl,[bx]
0000230E  1300              adc ax,[bx+si]
00002310  0000              add [bx+si],al
00002312  0000              add [bx+si],al
00002314  0000              add [bx+si],al
00002316  0000              add [bx+si],al
00002318  0203              add al,[bp+di]
0000231A  0000              add [bx+si],al
0000231C  0000              add [bx+si],al
0000231E  0000              add [bx+si],al
00002320  0000              add [bx+si],al
00002322  0000              add [bx+si],al
00002324  0000              add [bx+si],al
00002326  0000              add [bx+si],al
00002328  0000              add [bx+si],al
0000232A  0000              add [bx+si],al
0000232C  0000              add [bx+si],al
0000232E  0014              add [si],dl
00002330  0A0F              or cl,[bx]
00002332  1300              adc ax,[bx+si]
00002334  0000              add [bx+si],al
00002336  0000              add [bx+si],al
00002338  0000              add [bx+si],al
0000233A  0000              add [bx+si],al
0000233C  0200              add al,[bx+si]
0000233E  0003              add [bp+di],al
00002340  0000              add [bx+si],al
00002342  0000              add [bx+si],al
00002344  0203              add al,[bp+di]
00002346  0000              add [bx+si],al
00002348  0000              add [bx+si],al
0000234A  0200              add al,[bx+si]
0000234C  0901              or [bx+di],ax
0000234E  0101              add [bx+di],ax
00002350  01060000          add [0x0],ax
00002354  0000              add [bx+si],al
00002356  0203              add al,[bp+di]
00002358  0000              add [bx+si],al
0000235A  0000              add [bx+si],al
0000235C  050101            add ax,0x101
0000235F  0101              add [bx+di],ax
00002361  0101              add [bx+di],ax
00002363  06                push es
00002364  0000              add [bx+si],al
00002366  0000              add [bx+si],al
00002368  050101            add ax,0x101
0000236B  0101              add [bx+di],ax
0000236D  0D0000            or ax,0x0
00002370  0901              or [bx+di],ax
00002372  0101              add [bx+di],ax
00002374  01060000          add [0x0],ax
00002378  0000              add [bx+si],al
0000237A  0200              add al,[bx+si]
0000237C  0003              add [bp+di],al
0000237E  0000              add [bx+si],al
00002380  0000              add [bx+si],al
00002382  0203              add al,[bp+di]
00002384  0000              add [bx+si],al
00002386  0000              add [bx+si],al
00002388  0200              add al,[bx+si]
0000238A  1004              adc [si],al
0000238C  0404              add al,0x4
0000238E  0408              add al,0x8
00002390  0000              add [bx+si],al
00002392  0000              add [bx+si],al
00002394  07                pop es
00002395  0800              or [bx+si],al
00002397  0000              add [bx+si],al
00002399  0007              add [bx],al
0000239B  0404              add al,0x4
0000239D  0404              add al,0x4
0000239F  0404              add al,0x4
000023A1  0800              or [bx+si],al
000023A3  0000              add [bx+si],al
000023A5  0007              add [bx],al
000023A7  0404              add al,0x4
000023A9  0404              add al,0x4
000023AB  0404              add al,0x4
000023AD  0404              add al,0x4
000023AF  0404              add al,0x4
000023B1  0404              add al,0x4
000023B3  0800              or [bx+si],al
000023B5  0000              add [bx+si],al
000023B7  0007              add [bx],al
000023B9  0404              add al,0x4
000023BB  0800              or [bx+si],al
000023BD  0000              add [bx+si],al
000023BF  0002              add [bp+si],al
000023C1  0300              add ax,[bx+si]
000023C3  0000              add [bx+si],al
000023C5  0002              add [bp+si],al
000023C7  0B11              or dx,[bx+di]
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
000023FD  0002              add [bp+si],al
000023FF  0300              add ax,[bx+si]
00002401  0000              add [bx+si],al
00002403  0002              add [bp+si],al
00002405  0300              add ax,[bx+si]
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
0000243B  0002              add [bp+si],al
0000243D  0300              add ax,[bx+si]
0000243F  0000              add [bx+si],al
00002441  0002              add [bp+si],al
00002443  0300              add ax,[bx+si]
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
00002479  0002              add [bp+si],al
0000247B  0300              add ax,[bx+si]
0000247D  0000              add [bx+si],al
0000247F  0002              add [bp+si],al
00002481  0300              add ax,[bx+si]
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
000024B7  0002              add [bp+si],al
000024B9  0300              add ax,[bx+si]
000024BB  0000              add [bx+si],al
000024BD  0002              add [bp+si],al
000024BF  0300              add ax,[bx+si]
000024C1  0000              add [bx+si],al
000024C3  0005              add [di],al
000024C5  0101              add [bx+di],ax
000024C7  0101              add [bx+di],ax
000024C9  0101              add [bx+di],ax
000024CB  06                push es
000024CC  0000              add [bx+si],al
000024CE  0000              add [bx+si],al
000024D0  050101            add ax,0x101
000024D3  0101              add [bx+di],ax
000024D5  0101              add [bx+di],ax
000024D7  06                push es
000024D8  0000              add [bx+si],al
000024DA  0000              add [bx+si],al
000024DC  050101            add ax,0x101
000024DF  0101              add [bx+di],ax
000024E1  0101              add [bx+di],ax
000024E3  06                push es
000024E4  0000              add [bx+si],al
000024E6  0000              add [bx+si],al
000024E8  050600            add ax,0x6
000024EB  0000              add [bx+si],al
000024ED  0005              add [di],al
000024EF  0101              add [bx+di],ax
000024F1  06                push es
000024F2  0000              add [bx+si],al
000024F4  0000              add [bx+si],al
000024F6  0203              add al,[bp+di]
000024F8  0000              add [bx+si],al
000024FA  0000              add [bx+si],al
000024FC  0203              add al,[bp+di]
000024FE  0000              add [bx+si],al
00002500  0000              add [bx+si],al
00002502  07                pop es
00002503  0404              add al,0x4
00002505  0404              add al,0x4
00002507  0C00              or al,0x0
00002509  0300              add ax,[bx+si]
0000250B  0000              add [bx+si],al
0000250D  0002              add [bp+si],al
0000250F  0000              add [bx+si],al
00002511  0000              add [bx+si],al
00002513  0000              add [bx+si],al
00002515  0300              add ax,[bx+si]
00002517  0000              add [bx+si],al
00002519  0002              add [bp+si],al
0000251B  0000              add [bx+si],al
0000251D  0000              add [bx+si],al
0000251F  0000              add [bx+si],al
00002521  0300              add ax,[bx+si]
00002523  0000              add [bx+si],al
00002525  0002              add [bp+si],al
00002527  0300              add ax,[bx+si]
00002529  0000              add [bx+si],al
0000252B  0002              add [bp+si],al
0000252D  0000              add [bx+si],al
0000252F  0300              add ax,[bx+si]
00002531  0000              add [bx+si],al
00002533  0002              add [bp+si],al
00002535  0300              add ax,[bx+si]
00002537  0000              add [bx+si],al
00002539  0002              add [bp+si],al
0000253B  0300              add ax,[bx+si]
0000253D  0000              add [bx+si],al
0000253F  0000              add [bx+si],al
00002541  0000              add [bx+si],al
00002543  0000              add [bx+si],al
00002545  120E0300          adc cl,[0x3]
00002549  0000              add [bx+si],al
0000254B  0002              add [bp+si],al
0000254D  0000              add [bx+si],al
0000254F  0000              add [bx+si],al
00002551  0000              add [bx+si],al
00002553  0300              add ax,[bx+si]
00002555  0000              add [bx+si],al
00002557  0002              add [bp+si],al
00002559  0000              add [bx+si],al
0000255B  0000              add [bx+si],al
0000255D  0000              add [bx+si],al
0000255F  0300              add ax,[bx+si]
00002561  0000              add [bx+si],al
00002563  0002              add [bp+si],al
00002565  0300              add ax,[bx+si]
00002567  0000              add [bx+si],al
00002569  0002              add [bp+si],al
0000256B  0000              add [bx+si],al
0000256D  0300              add ax,[bx+si]
0000256F  0000              add [bx+si],al
00002571  0002              add [bp+si],al
00002573  0300              add ax,[bx+si]
00002575  0000              add [bx+si],al
00002577  0002              add [bp+si],al
00002579  0300              add ax,[bx+si]
0000257B  0000              add [bx+si],al
0000257D  0000              add [bx+si],al
0000257F  0000              add [bx+si],al
00002581  0000              add [bx+si],al
00002583  0002              add [bp+si],al
00002585  0300              add ax,[bx+si]
00002587  0000              add [bx+si],al
00002589  0002              add [bp+si],al
0000258B  0000              add [bx+si],al
0000258D  0000              add [bx+si],al
0000258F  0000              add [bx+si],al
00002591  0300              add ax,[bx+si]
00002593  0000              add [bx+si],al
00002595  0002              add [bp+si],al
00002597  0000              add [bx+si],al
00002599  0000              add [bx+si],al
0000259B  0000              add [bx+si],al
0000259D  0300              add ax,[bx+si]
0000259F  0000              add [bx+si],al
000025A1  0002              add [bp+si],al
000025A3  0300              add ax,[bx+si]
000025A5  0000              add [bx+si],al
000025A7  0002              add [bp+si],al
000025A9  0000              add [bx+si],al
000025AB  0300              add ax,[bx+si]
000025AD  0000              add [bx+si],al
000025AF  0002              add [bp+si],al
000025B1  0300              add ax,[bx+si]
000025B3  0000              add [bx+si],al
000025B5  0002              add [bp+si],al
000025B7  0300              add ax,[bx+si]
000025B9  0000              add [bx+si],al
000025BB  0000              add [bx+si],al
000025BD  0000              add [bx+si],al
000025BF  0000              add [bx+si],al
000025C1  0002              add [bp+si],al
000025C3  0300              add ax,[bx+si]
000025C5  0000              add [bx+si],al
000025C7  0002              add [bp+si],al
000025C9  0000              add [bx+si],al
000025CB  0000              add [bx+si],al
000025CD  0000              add [bx+si],al
000025CF  0300              add ax,[bx+si]
000025D1  0000              add [bx+si],al
000025D3  0002              add [bp+si],al
000025D5  0000              add [bx+si],al
000025D7  0000              add [bx+si],al
000025D9  0000              add [bx+si],al
000025DB  0300              add ax,[bx+si]
000025DD  0000              add [bx+si],al
000025DF  0002              add [bp+si],al
000025E1  0300              add ax,[bx+si]
000025E3  0000              add [bx+si],al
000025E5  0002              add [bp+si],al
000025E7  0000              add [bx+si],al
000025E9  0300              add ax,[bx+si]
000025EB  0000              add [bx+si],al
000025ED  0002              add [bp+si],al
000025EF  0300              add ax,[bx+si]
000025F1  0000              add [bx+si],al
000025F3  0007              add [bx],al
000025F5  0800              or [bx+si],al
000025F7  0000              add [bx+si],al
000025F9  0000              add [bx+si],al
000025FB  0000              add [bx+si],al
000025FD  0000              add [bx+si],al
000025FF  0007              add [bx],al
00002601  0800              or [bx+si],al
00002603  0000              add [bx+si],al
00002605  0002              add [bp+si],al
00002607  0000              add [bx+si],al
00002609  0000              add [bx+si],al
0000260B  0000              add [bx+si],al
0000260D  0300              add ax,[bx+si]
0000260F  0000              add [bx+si],al
00002611  0002              add [bp+si],al
00002613  0000              add [bx+si],al
00002615  0000              add [bx+si],al
00002617  0000              add [bx+si],al
00002619  0300              add ax,[bx+si]
0000261B  0000              add [bx+si],al
0000261D  0007              add [bx],al
0000261F  0800              or [bx+si],al
00002621  0000              add [bx+si],al
00002623  0007              add [bx],al
00002625  0404              add al,0x4
00002627  0800              or [bx+si],al
00002629  0000              add [bx+si],al
0000262B  0002              add [bp+si],al
0000262D  0300              add ax,[bx+si]
0000262F  0000              add [bx+si],al
00002631  0000              add [bx+si],al
00002633  0000              add [bx+si],al
00002635  0000              add [bx+si],al
00002637  0005              add [di],al
00002639  06                push es
0000263A  0000              add [bx+si],al
0000263C  0000              add [bx+si],al
0000263E  0000              add [bx+si],al
00002640  0000              add [bx+si],al
00002642  0000              add [bx+si],al
00002644  0200              add al,[bx+si]
00002646  0000              add [bx+si],al
00002648  0000              add [bx+si],al
0000264A  0003              add [bp+di],al
0000264C  0000              add [bx+si],al
0000264E  0000              add [bx+si],al
00002650  0200              add al,[bx+si]
00002652  0000              add [bx+si],al
00002654  0000              add [bx+si],al
00002656  0003              add [bp+di],al
00002658  0000              add [bx+si],al
0000265A  0000              add [bx+si],al
0000265C  0000              add [bx+si],al
0000265E  0000              add [bx+si],al
00002660  0000              add [bx+si],al
00002662  0000              add [bx+si],al
00002664  0000              add [bx+si],al
00002666  0000              add [bx+si],al
00002668  0000              add [bx+si],al
0000266A  0203              add al,[bp+di]
0000266C  0000              add [bx+si],al
0000266E  0000              add [bx+si],al
00002670  0000              add [bx+si],al
00002672  0000              add [bx+si],al
00002674  0000              add [bx+si],al
00002676  0203              add al,[bp+di]
00002678  0000              add [bx+si],al
0000267A  0000              add [bx+si],al
0000267C  0000              add [bx+si],al
0000267E  0000              add [bx+si],al
00002680  0000              add [bx+si],al
00002682  0200              add al,[bx+si]
00002684  0000              add [bx+si],al
00002686  0000              add [bx+si],al
00002688  0003              add [bp+di],al
0000268A  0000              add [bx+si],al
0000268C  0000              add [bx+si],al
0000268E  0200              add al,[bx+si]
00002690  0000              add [bx+si],al
00002692  0000              add [bx+si],al
00002694  0003              add [bp+di],al
00002696  0000              add [bx+si],al
00002698  0000              add [bx+si],al
0000269A  0000              add [bx+si],al
0000269C  0000              add [bx+si],al
0000269E  0000              add [bx+si],al
000026A0  0000              add [bx+si],al
000026A2  0000              add [bx+si],al
000026A4  0000              add [bx+si],al
000026A6  0000              add [bx+si],al
000026A8  0203              add al,[bp+di]
000026AA  0000              add [bx+si],al
000026AC  0000              add [bx+si],al
000026AE  0000              add [bx+si],al
000026B0  0000              add [bx+si],al
000026B2  0000              add [bx+si],al
000026B4  0203              add al,[bp+di]
000026B6  0000              add [bx+si],al
000026B8  0000              add [bx+si],al
000026BA  0000              add [bx+si],al
000026BC  0000              add [bx+si],al
000026BE  0000              add [bx+si],al
000026C0  0200              add al,[bx+si]
000026C2  0000              add [bx+si],al
000026C4  0000              add [bx+si],al
000026C6  0003              add [bp+di],al
000026C8  0000              add [bx+si],al
000026CA  0000              add [bx+si],al
000026CC  0200              add al,[bx+si]
000026CE  0000              add [bx+si],al
000026D0  0000              add [bx+si],al
000026D2  0003              add [bp+di],al
000026D4  0000              add [bx+si],al
000026D6  0000              add [bx+si],al
000026D8  0000              add [bx+si],al
000026DA  0000              add [bx+si],al
000026DC  0000              add [bx+si],al
000026DE  0000              add [bx+si],al
000026E0  0000              add [bx+si],al
000026E2  0000              add [bx+si],al
000026E4  0000              add [bx+si],al
000026E6  021B              add bl,[bp+di]
000026E8  17                pop ss
000026E9  0404              add al,0x4
000026EB  0404              add al,0x4
000026ED  0404              add al,0x4
000026EF  0404              add al,0x4
000026F1  181C              sbb [si],bl
000026F3  1B17              sbb dx,[bx]
000026F5  0404              add al,0x4
000026F7  0404              add al,0x4
000026F9  0404              add al,0x4
000026FB  0404              add al,0x4
000026FD  181C              sbb [si],bl
000026FF  0000              add [bx+si],al
00002701  0000              add [bx+si],al
00002703  0000              add [bx+si],al
00002705  0300              add ax,[bx+si]
00002707  0000              add [bx+si],al
00002709  0002              add [bp+si],al
0000270B  0000              add [bx+si],al
0000270D  0000              add [bx+si],al
0000270F  0000              add [bx+si],al
00002711  1B17              sbb dx,[bx]
00002713  0404              add al,0x4
00002715  0404              add al,0x4
00002717  0404              add al,0x4
00002719  0404              add al,0x4
0000271B  0404              add al,0x4
0000271D  0404              add al,0x4
0000271F  0404              add al,0x4
00002721  0404              add al,0x4
00002723  181C              sbb [si],bl
00002725  98                cbw
00002726  16                push ss
00002727  AC                lodsb
00002728  16                push ss
00002729  4A                dec dx
0000272A  195E19            sbb [bp+0x19],bx
0000272D  BB00E3            mov bx,0xe300
00002730  007B1D            add [bp+di+0x1d],bh
00002733  A31D00            mov [0x1d],ax
00002736  0000              add [bx+si],al
00002738  0000              add [bx+si],al
0000273A  0003              add [bp+di],al
0000273C  C003C0            rol byte [bp+di],byte 0xc0
0000273F  0000              add [bx+si],al
00002741  0000              add [bx+si],al
00002743  0000              add [bx+si],al
00002745  0F                db 0x0f
00002746  F03F              lock aas
00002748  FC                cld
00002749  FF                db 0xff
0000274A  FF                db 0xff
0000274B  FF                db 0xff
0000274C  FF                db 0xff
0000274D  FF                db 0xff
0000274E  FF                db 0xff
0000274F  FF                db 0xff
00002750  FF                db 0xff
00002751  3F                aas
00002752  FC                cld
00002753  0F                db 0x0f
00002754  F00000            lock add [bx+si],al
00002757  0000              add [bx+si],al
00002759  0000              add [bx+si],al
0000275B  0000              add [bx+si],al
0000275D  0000              add [bx+si],al
0000275F  0000              add [bx+si],al
00002761  0000              add [bx+si],al
00002763  0000              add [bx+si],al
00002765  0100              add [bx+si],ax
00002767  0000              add [bx+si],al
00002769  0000              add [bx+si],al
0000276B  0000              add [bx+si],al
0000276D  0000              add [bx+si],al
0000276F  0000              add [bx+si],al
00002771  0000              add [bx+si],al
00002773  0000              add [bx+si],al
00002775  0000              add [bx+si],al
00002777  0000              add [bx+si],al
00002779  0000              add [bx+si],al
0000277B  0000              add [bx+si],al
0000277D  0000              add [bx+si],al
0000277F  0000              add [bx+si],al
00002781  0000              add [bx+si],al
00002783  0000              add [bx+si],al
00002785  0000              add [bx+si],al
00002787  0000              add [bx+si],al
00002789  0000              add [bx+si],al
0000278B  0000              add [bx+si],al
0000278D  0000              add [bx+si],al
0000278F  0000              add [bx+si],al
00002791  0000              add [bx+si],al
00002793  0000              add [bx+si],al
00002795  0000              add [bx+si],al
00002797  0000              add [bx+si],al
00002799  0000              add [bx+si],al
0000279B  0000              add [bx+si],al
0000279D  0000              add [bx+si],al
0000279F  0000              add [bx+si],al
000027A1  0000              add [bx+si],al
000027A3  0000              add [bx+si],al
000027A5  0000              add [bx+si],al
000027A7  0000              add [bx+si],al
000027A9  0000              add [bx+si],al
000027AB  0000              add [bx+si],al
000027AD  0000              add [bx+si],al
000027AF  0000              add [bx+si],al
000027B1  0000              add [bx+si],al
000027B3  0000              add [bx+si],al
000027B5  0000              add [bx+si],al
000027B7  0000              add [bx+si],al
000027B9  0000              add [bx+si],al
000027BB  0000              add [bx+si],al
000027BD  0000              add [bx+si],al
000027BF  0000              add [bx+si],al
000027C1  0000              add [bx+si],al
000027C3  0000              add [bx+si],al
000027C5  0000              add [bx+si],al
000027C7  0000              add [bx+si],al
000027C9  0000              add [bx+si],al
000027CB  0000              add [bx+si],al
000027CD  0000              add [bx+si],al
000027CF  0000              add [bx+si],al
000027D1  0000              add [bx+si],al
000027D3  0000              add [bx+si],al
000027D5  0000              add [bx+si],al
000027D7  0000              add [bx+si],al
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
000027FF  0000              add [bx+si],al
00002801  0000              add [bx+si],al
00002803  0000              add [bx+si],al
00002805  0000              add [bx+si],al
00002807  0000              add [bx+si],al
00002809  0000              add [bx+si],al
0000280B  0000              add [bx+si],al
0000280D  0000              add [bx+si],al
0000280F  0000              add [bx+si],al
00002811  0000              add [bx+si],al
00002813  0000              add [bx+si],al
00002815  0000              add [bx+si],al
00002817  0000              add [bx+si],al
00002819  0000              add [bx+si],al
0000281B  0000              add [bx+si],al
0000281D  0000              add [bx+si],al
0000281F  0000              add [bx+si],al
00002821  0000              add [bx+si],al
00002823  0000              add [bx+si],al
00002825  0000              add [bx+si],al
00002827  0000              add [bx+si],al
00002829  0000              add [bx+si],al
0000282B  0000              add [bx+si],al
0000282D  0000              add [bx+si],al
0000282F  0000              add [bx+si],al
00002831  0000              add [bx+si],al
00002833  0000              add [bx+si],al
00002835  0000              add [bx+si],al
00002837  0000              add [bx+si],al
00002839  0000              add [bx+si],al
0000283B  0000              add [bx+si],al
0000283D  0000              add [bx+si],al
0000283F  0000              add [bx+si],al
00002841  0000              add [bx+si],al
00002843  0000              add [bx+si],al
00002845  0000              add [bx+si],al
00002847  0000              add [bx+si],al
00002849  0000              add [bx+si],al
0000284B  0000              add [bx+si],al
0000284D  0000              add [bx+si],al
0000284F  0000              add [bx+si],al
00002851  0000              add [bx+si],al
00002853  0000              add [bx+si],al
00002855  0000              add [bx+si],al
00002857  0000              add [bx+si],al
00002859  0000              add [bx+si],al
0000285B  0000              add [bx+si],al
0000285D  0000              add [bx+si],al
0000285F  0000              add [bx+si],al
00002861  0000              add [bx+si],al
00002863  0000              add [bx+si],al
00002865  0000              add [bx+si],al
00002867  0000              add [bx+si],al
00002869  0000              add [bx+si],al
0000286B  0000              add [bx+si],al
0000286D  0000              add [bx+si],al
0000286F  0000              add [bx+si],al
00002871  0000              add [bx+si],al
00002873  0000              add [bx+si],al
00002875  0000              add [bx+si],al
00002877  0000              add [bx+si],al
00002879  0000              add [bx+si],al
0000287B  0000              add [bx+si],al
0000287D  0000              add [bx+si],al
0000287F  0000              add [bx+si],al
00002881  0000              add [bx+si],al
00002883  0000              add [bx+si],al
00002885  0000              add [bx+si],al
00002887  0000              add [bx+si],al
00002889  0000              add [bx+si],al
0000288B  0000              add [bx+si],al
0000288D  0000              add [bx+si],al
0000288F  0000              add [bx+si],al
00002891  0000              add [bx+si],al
00002893  0000              add [bx+si],al
00002895  0000              add [bx+si],al
00002897  0000              add [bx+si],al
00002899  0000              add [bx+si],al
0000289B  0000              add [bx+si],al
0000289D  0000              add [bx+si],al
0000289F  0000              add [bx+si],al
000028A1  0000              add [bx+si],al
000028A3  0000              add [bx+si],al
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
000028EF  0000              add [bx+si],al
000028F1  0000              add [bx+si],al
000028F3  0000              add [bx+si],al
000028F5  0000              add [bx+si],al
000028F7  0000              add [bx+si],al
000028F9  0000              add [bx+si],al
000028FB  0000              add [bx+si],al
000028FD  0000              add [bx+si],al
000028FF  0000              add [bx+si],al
00002901  0000              add [bx+si],al
00002903  0000              add [bx+si],al
00002905  0000              add [bx+si],al
00002907  0000              add [bx+si],al
00002909  0000              add [bx+si],al
0000290B  0000              add [bx+si],al
0000290D  0000              add [bx+si],al
0000290F  0000              add [bx+si],al
00002911  0000              add [bx+si],al
00002913  0000              add [bx+si],al
00002915  0000              add [bx+si],al
00002917  0000              add [bx+si],al
00002919  0000              add [bx+si],al
0000291B  0000              add [bx+si],al
0000291D  0000              add [bx+si],al
0000291F  0000              add [bx+si],al
00002921  0000              add [bx+si],al
00002923  0000              add [bx+si],al
00002925  0000              add [bx+si],al
00002927  0000              add [bx+si],al
00002929  0000              add [bx+si],al
0000292B  0000              add [bx+si],al
0000292D  0000              add [bx+si],al
0000292F  0000              add [bx+si],al
00002931  0000              add [bx+si],al
00002933  0000              add [bx+si],al
00002935  0000              add [bx+si],al
00002937  0000              add [bx+si],al
00002939  0000              add [bx+si],al
0000293B  0000              add [bx+si],al
0000293D  0000              add [bx+si],al
0000293F  0000              add [bx+si],al
00002941  0000              add [bx+si],al
00002943  0000              add [bx+si],al
00002945  0000              add [bx+si],al
00002947  0000              add [bx+si],al
00002949  0000              add [bx+si],al
0000294B  0000              add [bx+si],al
0000294D  0000              add [bx+si],al
0000294F  0000              add [bx+si],al
00002951  0000              add [bx+si],al
00002953  0000              add [bx+si],al
00002955  0000              add [bx+si],al
00002957  0000              add [bx+si],al
00002959  0000              add [bx+si],al
0000295B  0000              add [bx+si],al
0000295D  0000              add [bx+si],al
0000295F  0000              add [bx+si],al
00002961  0000              add [bx+si],al
00002963  0000              add [bx+si],al
00002965  0000              add [bx+si],al
00002967  0000              add [bx+si],al
00002969  0000              add [bx+si],al
0000296B  0000              add [bx+si],al
0000296D  0000              add [bx+si],al
0000296F  0000              add [bx+si],al
00002971  0000              add [bx+si],al
00002973  0000              add [bx+si],al
00002975  0000              add [bx+si],al
00002977  0000              add [bx+si],al
00002979  0000              add [bx+si],al
0000297B  0000              add [bx+si],al
0000297D  0000              add [bx+si],al
0000297F  0000              add [bx+si],al
00002981  0000              add [bx+si],al
00002983  0000              add [bx+si],al
00002985  0000              add [bx+si],al
00002987  0000              add [bx+si],al
00002989  0000              add [bx+si],al
0000298B  0000              add [bx+si],al
0000298D  0000              add [bx+si],al
0000298F  0000              add [bx+si],al
00002991  0000              add [bx+si],al
00002993  0000              add [bx+si],al
00002995  0000              add [bx+si],al
00002997  0000              add [bx+si],al
00002999  0000              add [bx+si],al
0000299B  0000              add [bx+si],al
0000299D  0000              add [bx+si],al
0000299F  0000              add [bx+si],al
000029A1  0000              add [bx+si],al
000029A3  0000              add [bx+si],al
000029A5  0000              add [bx+si],al
000029A7  0000              add [bx+si],al
000029A9  0000              add [bx+si],al
000029AB  0000              add [bx+si],al
000029AD  0000              add [bx+si],al
000029AF  0000              add [bx+si],al
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
000029DF  0000              add [bx+si],al
000029E1  0000              add [bx+si],al
000029E3  0000              add [bx+si],al
000029E5  0000              add [bx+si],al
000029E7  0000              add [bx+si],al
000029E9  0000              add [bx+si],al
000029EB  0000              add [bx+si],al
000029ED  0000              add [bx+si],al
000029EF  0000              add [bx+si],al
000029F1  0000              add [bx+si],al
000029F3  0000              add [bx+si],al
000029F5  0000              add [bx+si],al
000029F7  0000              add [bx+si],al
000029F9  0000              add [bx+si],al
000029FB  0000              add [bx+si],al
000029FD  0000              add [bx+si],al
000029FF  0000              add [bx+si],al
00002A01  0000              add [bx+si],al
00002A03  0000              add [bx+si],al
00002A05  0000              add [bx+si],al
00002A07  0000              add [bx+si],al
00002A09  0000              add [bx+si],al
00002A0B  0000              add [bx+si],al
00002A0D  0000              add [bx+si],al
00002A0F  0000              add [bx+si],al
00002A11  0000              add [bx+si],al
00002A13  0000              add [bx+si],al
00002A15  0000              add [bx+si],al
00002A17  0000              add [bx+si],al
00002A19  0000              add [bx+si],al
00002A1B  0000              add [bx+si],al
00002A1D  0000              add [bx+si],al
00002A1F  0000              add [bx+si],al
00002A21  0000              add [bx+si],al
00002A23  0000              add [bx+si],al
00002A25  0000              add [bx+si],al
00002A27  0000              add [bx+si],al
00002A29  0000              add [bx+si],al
00002A2B  0000              add [bx+si],al
00002A2D  0000              add [bx+si],al
00002A2F  0000              add [bx+si],al
00002A31  0000              add [bx+si],al
00002A33  0000              add [bx+si],al
00002A35  0000              add [bx+si],al
00002A37  0000              add [bx+si],al
00002A39  0000              add [bx+si],al
00002A3B  0000              add [bx+si],al
00002A3D  0000              add [bx+si],al
00002A3F  0000              add [bx+si],al
00002A41  0000              add [bx+si],al
00002A43  0000              add [bx+si],al
00002A45  0000              add [bx+si],al
00002A47  0000              add [bx+si],al
00002A49  0000              add [bx+si],al
00002A4B  0000              add [bx+si],al
00002A4D  0000              add [bx+si],al
00002A4F  0000              add [bx+si],al
00002A51  0000              add [bx+si],al
00002A53  0000              add [bx+si],al
00002A55  0000              add [bx+si],al
00002A57  0000              add [bx+si],al
00002A59  0000              add [bx+si],al
00002A5B  0000              add [bx+si],al
00002A5D  0000              add [bx+si],al
00002A5F  0000              add [bx+si],al
00002A61  0000              add [bx+si],al
00002A63  0000              add [bx+si],al
00002A65  0000              add [bx+si],al
00002A67  0000              add [bx+si],al
00002A69  0000              add [bx+si],al
00002A6B  0000              add [bx+si],al
00002A6D  0000              add [bx+si],al
00002A6F  0000              add [bx+si],al
00002A71  0000              add [bx+si],al
00002A73  0000              add [bx+si],al
00002A75  0000              add [bx+si],al
00002A77  0000              add [bx+si],al
00002A79  0000              add [bx+si],al
00002A7B  0000              add [bx+si],al
00002A7D  0000              add [bx+si],al
00002A7F  0000              add [bx+si],al
00002A81  0000              add [bx+si],al
00002A83  0000              add [bx+si],al
00002A85  0000              add [bx+si],al
00002A87  0000              add [bx+si],al
00002A89  0000              add [bx+si],al
00002A8B  0000              add [bx+si],al
00002A8D  0000              add [bx+si],al
00002A8F  0000              add [bx+si],al
00002A91  0000              add [bx+si],al
00002A93  0000              add [bx+si],al
00002A95  0000              add [bx+si],al
00002A97  0000              add [bx+si],al
00002A99  0000              add [bx+si],al
00002A9B  0000              add [bx+si],al
00002A9D  0000              add [bx+si],al
00002A9F  0000              add [bx+si],al
00002AA1  0000              add [bx+si],al
00002AA3  0000              add [bx+si],al
00002AA5  0000              add [bx+si],al
00002AA7  0000              add [bx+si],al
00002AA9  0000              add [bx+si],al
00002AAB  0000              add [bx+si],al
00002AAD  0000              add [bx+si],al
00002AAF  0000              add [bx+si],al
00002AB1  0000              add [bx+si],al
00002AB3  0000              add [bx+si],al
00002AB5  0000              add [bx+si],al
00002AB7  0000              add [bx+si],al
00002AB9  0000              add [bx+si],al
00002ABB  0000              add [bx+si],al
00002ABD  0000              add [bx+si],al
00002ABF  0000              add [bx+si],al
00002AC1  0000              add [bx+si],al
00002AC3  0000              add [bx+si],al
00002AC5  0000              add [bx+si],al
00002AC7  0000              add [bx+si],al
00002AC9  0000              add [bx+si],al
00002ACB  0000              add [bx+si],al
00002ACD  0000              add [bx+si],al
00002ACF  0000              add [bx+si],al
00002AD1  0000              add [bx+si],al
00002AD3  0000              add [bx+si],al
00002AD5  0000              add [bx+si],al
00002AD7  0000              add [bx+si],al
00002AD9  0000              add [bx+si],al
00002ADB  0000              add [bx+si],al
00002ADD  0000              add [bx+si],al
00002ADF  0000              add [bx+si],al
00002AE1  0000              add [bx+si],al
00002AE3  0000              add [bx+si],al
00002AE5  0000              add [bx+si],al
00002AE7  0000              add [bx+si],al
00002AE9  0000              add [bx+si],al
00002AEB  0000              add [bx+si],al
00002AED  0000              add [bx+si],al
00002AEF  0000              add [bx+si],al
00002AF1  0000              add [bx+si],al
00002AF3  0000              add [bx+si],al
00002AF5  0000              add [bx+si],al
00002AF7  0000              add [bx+si],al
00002AF9  0001              add [bx+di],al
00002AFB  0000              add [bx+si],al
00002AFD  0000              add [bx+si],al
00002AFF  0000              add [bx+si],al
00002B01  0000              add [bx+si],al
00002B03  0000              add [bx+si],al
00002B05  0000              add [bx+si],al
00002B07  0000              add [bx+si],al
00002B09  0202              add al,[bp+si]
00002B0B  0202              add al,[bp+si]
00002B0D  0000              add [bx+si],al
00002B0F  0302              add ax,[bp+si]
00002B11  0202              add al,[bp+si]
00002B13  0000              add [bx+si],al
00002B15  0000              add [bx+si],al
00002B17  0001              add [bx+di],al
00002B19  0000              add [bx+si],al
00002B1B  0000              add [bx+si],al
00002B1D  0002              add [bp+si],al
00002B1F  0202              add al,[bp+si]
00002B21  0202              add al,[bp+si]
00002B23  0302              add ax,[bp+si]
00002B25  0200              add al,[bx+si]
00002B27  0200              add al,[bx+si]
00002B29  0002              add [bp+si],al
00002B2B  0000              add [bx+si],al
00002B2D  0200              add al,[bx+si]
00002B2F  0002              add [bp+si],al
00002B31  0000              add [bx+si],al
00002B33  0000              add [bx+si],al
00002B35  0001              add [bx+di],al
00002B37  0000              add [bx+si],al
00002B39  0000              add [bx+si],al
00002B3B  0002              add [bp+si],al
00002B3D  0000              add [bx+si],al
00002B3F  0200              add al,[bx+si]
00002B41  0000              add [bx+si],al
00002B43  0200              add al,[bx+si]
00002B45  0200              add al,[bx+si]
00002B47  0002              add [bp+si],al
00002B49  0202              add al,[bp+si]
00002B4B  0200              add al,[bx+si]
00002B4D  0002              add [bp+si],al
00002B4F  0000              add [bx+si],al
00002B51  0000              add [bx+si],al
00002B53  0001              add [bx+di],al
00002B55  0000              add [bx+si],al
00002B57  0000              add [bx+si],al
00002B59  0002              add [bp+si],al
00002B5B  0000              add [bx+si],al
00002B5D  0200              add al,[bx+si]
00002B5F  0000              add [bx+si],al
00002B61  0200              add al,[bx+si]
00002B63  0200              add al,[bx+si]
00002B65  0002              add [bp+si],al
00002B67  0000              add [bx+si],al
00002B69  0000              add [bx+si],al
00002B6B  0002              add [bp+si],al
00002B6D  0000              add [bx+si],al
00002B6F  0000              add [bx+si],al
00002B71  0001              add [bx+di],al
00002B73  0000              add [bx+si],al
00002B75  0000              add [bx+si],al
00002B77  0002              add [bp+si],al
00002B79  0000              add [bx+si],al
00002B7B  0200              add al,[bx+si]
00002B7D  0000              add [bx+si],al
00002B7F  0200              add al,[bx+si]
00002B81  0200              add al,[bx+si]
00002B83  0002              add [bp+si],al
00002B85  0000              add [bx+si],al
00002B87  0000              add [bx+si],al
00002B89  0002              add [bp+si],al
00002B8B  0000              add [bx+si],al
00002B8D  0000              add [bx+si],al
00002B8F  0001              add [bx+di],al
00002B91  0000              add [bx+si],al
00002B93  0000              add [bx+si],al
00002B95  0002              add [bp+si],al
00002B97  0000              add [bx+si],al
00002B99  0200              add al,[bx+si]
00002B9B  0000              add [bx+si],al
00002B9D  0200              add al,[bx+si]
00002B9F  0200              add al,[bx+si]
00002BA1  0002              add [bp+si],al
00002BA3  0202              add al,[bp+si]
00002BA5  0202              add al,[bp+si]
00002BA7  0202              add al,[bp+si]
00002BA9  0202              add al,[bp+si]
00002BAB  0202              add al,[bp+si]
00002BAD  0202              add al,[bp+si]
00002BAF  0202              add al,[bp+si]
00002BB1  0202              add al,[bp+si]
00002BB3  0202              add al,[bp+si]
00002BB5  0202              add al,[bp+si]
00002BB7  0202              add al,[bp+si]
00002BB9  0202              add al,[bp+si]
00002BBB  0200              add al,[bx+si]
00002BBD  0200              add al,[bx+si]
00002BBF  0000              add [bx+si],al
00002BC1  0000              add [bx+si],al
00002BC3  0200              add al,[bx+si]
00002BC5  0002              add [bp+si],al
00002BC7  0000              add [bx+si],al
00002BC9  0000              add [bx+si],al
00002BCB  0001              add [bx+di],al
00002BCD  0000              add [bx+si],al
00002BCF  0000              add [bx+si],al
00002BD1  0000              add [bx+si],al
00002BD3  0000              add [bx+si],al
00002BD5  0200              add al,[bx+si]
00002BD7  0000              add [bx+si],al
00002BD9  0200              add al,[bx+si]
00002BDB  0200              add al,[bx+si]
00002BDD  0000              add [bx+si],al
00002BDF  0000              add [bx+si],al
00002BE1  0200              add al,[bx+si]
00002BE3  0002              add [bp+si],al
00002BE5  0000              add [bx+si],al
00002BE7  0000              add [bx+si],al
00002BE9  0001              add [bx+di],al
00002BEB  0000              add [bx+si],al
00002BED  0000              add [bx+si],al
00002BEF  0000              add [bx+si],al
00002BF1  0000              add [bx+si],al
00002BF3  0200              add al,[bx+si]
00002BF5  0000              add [bx+si],al
00002BF7  0200              add al,[bx+si]
00002BF9  0200              add al,[bx+si]
00002BFB  0002              add [bp+si],al
00002BFD  0202              add al,[bp+si]
00002BFF  0200              add al,[bx+si]
00002C01  0002              add [bp+si],al
00002C03  0101              add [bx+di],ax
00002C05  0101              add [bx+di],ax
00002C07  0101              add [bx+di],ax
00002C09  0101              add [bx+di],ax
00002C0B  0100              add [bx+si],ax
00002C0D  0002              add [bp+si],al
00002C0F  0202              add al,[bp+si]
00002C11  0200              add al,[bx+si]
00002C13  0000              add [bx+si],al
00002C15  0200              add al,[bx+si]
00002C17  0200              add al,[bx+si]
00002C19  0002              add [bp+si],al
00002C1B  0000              add [bx+si],al
00002C1D  0200              add al,[bx+si]
00002C1F  0002              add [bp+si],al
00002C21  0000              add [bx+si],al
00002C23  0100              add [bx+si],ax
00002C25  0000              add [bx+si],al
00002C27  0000              add [bx+si],al
00002C29  0100              add [bx+si],ax
00002C2B  0002              add [bp+si],al
00002C2D  0000              add [bx+si],al
00002C2F  0200              add al,[bx+si]
00002C31  0000              add [bx+si],al
00002C33  0200              add al,[bx+si]
00002C35  0202              add al,[bp+si]
00002C37  0202              add al,[bp+si]
00002C39  0000              add [bx+si],al
00002C3B  0202              add al,[bp+si]
00002C3D  0202              add al,[bp+si]
00002C3F  0000              add [bx+si],al
00002C41  0100              add [bx+si],ax
00002C43  0000              add [bx+si],al
00002C45  0000              add [bx+si],al
00002C47  0101              add [bx+di],ax
00002C49  0102              add [bp+si],ax
00002C4B  0000              add [bx+si],al
00002C4D  0202              add al,[bp+si]
00002C4F  0202              add al,[bp+si]
00002C51  0200              add al,[bx+si]
00002C53  0200              add al,[bx+si]
00002C55  0000              add [bx+si],al
00002C57  0000              add [bx+si],al
00002C59  0100              add [bx+si],ax
00002C5B  0000              add [bx+si],al
00002C5D  0000              add [bx+si],al
00002C5F  0100              add [bx+si],ax
00002C61  0000              add [bx+si],al
00002C63  0000              add [bx+si],al
00002C65  0100              add [bx+si],ax
00002C67  0000              add [bx+si],al
00002C69  0000              add [bx+si],al
00002C6B  0200              add al,[bx+si]
00002C6D  0000              add [bx+si],al
00002C6F  0000              add [bx+si],al
00002C71  0200              add al,[bx+si]
00002C73  0000              add [bx+si],al
00002C75  0000              add [bx+si],al
00002C77  0100              add [bx+si],ax
00002C79  0000              add [bx+si],al
00002C7B  0000              add [bx+si],al
00002C7D  0100              add [bx+si],ax
00002C7F  0000              add [bx+si],al
00002C81  0000              add [bx+si],al
00002C83  0100              add [bx+si],ax
00002C85  0000              add [bx+si],al
00002C87  0000              add [bx+si],al
00002C89  0200              add al,[bx+si]
00002C8B  0000              add [bx+si],al
00002C8D  0000              add [bx+si],al
00002C8F  0202              add al,[bp+si]
00002C91  0202              add al,[bp+si]
00002C93  0000              add [bx+si],al
00002C95  0202              add al,[bp+si]
00002C97  0202              add al,[bp+si]
00002C99  0000              add [bx+si],al
00002C9B  0100              add [bx+si],ax
00002C9D  0000              add [bx+si],al
00002C9F  0000              add [bx+si],al
00002CA1  0101              add [bx+di],ax
00002CA3  0102              add [bp+si],ax
00002CA5  0000              add [bx+si],al
00002CA7  0202              add al,[bp+si]
00002CA9  0202              add al,[bp+si]
00002CAB  0200              add al,[bx+si]
00002CAD  0200              add al,[bx+si]
00002CAF  0002              add [bp+si],al
00002CB1  0000              add [bx+si],al
00002CB3  0200              add al,[bx+si]
00002CB5  0002              add [bp+si],al
00002CB7  0000              add [bx+si],al
00002CB9  0100              add [bx+si],ax
00002CBB  0000              add [bx+si],al
00002CBD  0000              add [bx+si],al
00002CBF  0100              add [bx+si],ax
00002CC1  0002              add [bp+si],al
00002CC3  0000              add [bx+si],al
00002CC5  0200              add al,[bx+si]
00002CC7  0000              add [bx+si],al
00002CC9  0200              add al,[bx+si]
00002CCB  0200              add al,[bx+si]
00002CCD  0002              add [bp+si],al
00002CCF  0202              add al,[bp+si]
00002CD1  0200              add al,[bx+si]
00002CD3  0002              add [bp+si],al
00002CD5  0101              add [bx+di],ax
00002CD7  0101              add [bx+di],ax
00002CD9  0101              add [bx+di],ax
00002CDB  0101              add [bx+di],ax
00002CDD  0100              add [bx+si],ax
00002CDF  0002              add [bp+si],al
00002CE1  0202              add al,[bp+si]
00002CE3  0200              add al,[bx+si]
00002CE5  0000              add [bx+si],al
00002CE7  0200              add al,[bx+si]
00002CE9  0200              add al,[bx+si]
00002CEB  0000              add [bx+si],al
00002CED  0000              add [bx+si],al
00002CEF  0200              add al,[bx+si]
00002CF1  0002              add [bp+si],al
00002CF3  0000              add [bx+si],al
00002CF5  0000              add [bx+si],al
00002CF7  0001              add [bx+di],al
00002CF9  0000              add [bx+si],al
00002CFB  0000              add [bx+si],al
00002CFD  0000              add [bx+si],al
00002CFF  0000              add [bx+si],al
00002D01  0200              add al,[bx+si]
00002D03  0000              add [bx+si],al
00002D05  0200              add al,[bx+si]
00002D07  0200              add al,[bx+si]
00002D09  0000              add [bx+si],al
00002D0B  0000              add [bx+si],al
00002D0D  0200              add al,[bx+si]
00002D0F  0002              add [bp+si],al
00002D11  0000              add [bx+si],al
00002D13  0000              add [bx+si],al
00002D15  0001              add [bx+di],al
00002D17  0000              add [bx+si],al
00002D19  0000              add [bx+si],al
00002D1B  0000              add [bx+si],al
00002D1D  0000              add [bx+si],al
00002D1F  0200              add al,[bx+si]
00002D21  0000              add [bx+si],al
00002D23  0200              add al,[bx+si]
00002D25  0200              add al,[bx+si]
00002D27  0002              add [bp+si],al
00002D29  0202              add al,[bp+si]
00002D2B  0202              add al,[bp+si]
00002D2D  0202              add al,[bp+si]
00002D2F  0202              add al,[bp+si]
00002D31  0202              add al,[bp+si]
00002D33  0202              add al,[bp+si]
00002D35  0202              add al,[bp+si]
00002D37  0202              add al,[bp+si]
00002D39  0202              add al,[bp+si]
00002D3B  0202              add al,[bp+si]
00002D3D  0202              add al,[bp+si]
00002D3F  0202              add al,[bp+si]
00002D41  0200              add al,[bx+si]
00002D43  0200              add al,[bx+si]
00002D45  0002              add [bp+si],al
00002D47  0000              add [bx+si],al
00002D49  0000              add [bx+si],al
00002D4B  0002              add [bp+si],al
00002D4D  0000              add [bx+si],al
00002D4F  0000              add [bx+si],al
00002D51  0001              add [bx+di],al
00002D53  0000              add [bx+si],al
00002D55  0000              add [bx+si],al
00002D57  0002              add [bp+si],al
00002D59  0000              add [bx+si],al
00002D5B  0200              add al,[bx+si]
00002D5D  0000              add [bx+si],al
00002D5F  0200              add al,[bx+si]
00002D61  0200              add al,[bx+si]
00002D63  0002              add [bp+si],al
00002D65  0000              add [bx+si],al
00002D67  0000              add [bx+si],al
00002D69  0002              add [bp+si],al
00002D6B  0000              add [bx+si],al
00002D6D  0000              add [bx+si],al
00002D6F  0001              add [bx+di],al
00002D71  0000              add [bx+si],al
00002D73  0000              add [bx+si],al
00002D75  0002              add [bp+si],al
00002D77  0000              add [bx+si],al
00002D79  0200              add al,[bx+si]
00002D7B  0000              add [bx+si],al
00002D7D  0200              add al,[bx+si]
00002D7F  0200              add al,[bx+si]
00002D81  0002              add [bp+si],al
00002D83  0202              add al,[bp+si]
00002D85  0200              add al,[bx+si]
00002D87  0002              add [bp+si],al
00002D89  0000              add [bx+si],al
00002D8B  0000              add [bx+si],al
00002D8D  0001              add [bx+di],al
00002D8F  0000              add [bx+si],al
00002D91  0000              add [bx+si],al
00002D93  0002              add [bp+si],al
00002D95  0000              add [bx+si],al
00002D97  0200              add al,[bx+si]
00002D99  0000              add [bx+si],al
00002D9B  0200              add al,[bx+si]
00002D9D  0200              add al,[bx+si]
00002D9F  0002              add [bp+si],al
00002DA1  0000              add [bx+si],al
00002DA3  0200              add al,[bx+si]
00002DA5  0002              add [bp+si],al
00002DA7  0000              add [bx+si],al
00002DA9  0000              add [bx+si],al
00002DAB  0001              add [bx+di],al
00002DAD  0000              add [bx+si],al
00002DAF  0000              add [bx+si],al
00002DB1  0002              add [bp+si],al
00002DB3  0000              add [bx+si],al
00002DB5  0200              add al,[bx+si]
00002DB7  0000              add [bx+si],al
00002DB9  0200              add al,[bx+si]
00002DBB  0202              add al,[bp+si]
00002DBD  0202              add al,[bp+si]
00002DBF  0000              add [bx+si],al
00002DC1  0302              add ax,[bp+si]
00002DC3  0202              add al,[bp+si]
00002DC5  0000              add [bx+si],al
00002DC7  0000              add [bx+si],al
00002DC9  0001              add [bx+di],al
00002DCB  0000              add [bx+si],al
00002DCD  0000              add [bx+si],al
00002DCF  0002              add [bp+si],al
00002DD1  0202              add al,[bp+si]
00002DD3  0202              add al,[bp+si]
00002DD5  0302              add ax,[bp+si]
00002DD7  0200              add al,[bx+si]
00002DD9  0000              add [bx+si],al
00002DDB  0000              add [bx+si],al
00002DDD  0000              add [bx+si],al
00002DDF  0000              add [bx+si],al
00002DE1  0000              add [bx+si],al
00002DE3  0000              add [bx+si],al
00002DE5  0000              add [bx+si],al
00002DE7  0001              add [bx+di],al
00002DE9  0000              add [bx+si],al
00002DEB  0000              add [bx+si],al
00002DED  0000              add [bx+si],al
00002DEF  0000              add [bx+si],al
00002DF1  0000              add [bx+si],al
00002DF3  0000              add [bx+si],al
00002DF5  0000              add [bx+si],al
00002DF7  0000              add [bx+si],al
00002DF9  0000              add [bx+si],al
00002DFB  0000              add [bx+si],al
00002DFD  0000              add [bx+si],al
00002DFF  0000              add [bx+si],al
00002E01  0000              add [bx+si],al
00002E03  0000              add [bx+si],al
00002E05  0001              add [bx+di],al
00002E07  0000              add [bx+si],al
00002E09  0000              add [bx+si],al
00002E0B  0000              add [bx+si],al
00002E0D  0000              add [bx+si],al
00002E0F  0000              add [bx+si],al
00002E11  0000              add [bx+si],al
00002E13  0000              add [bx+si],al
00002E15  0000              add [bx+si],al
00002E17  0000              add [bx+si],al
00002E19  0000              add [bx+si],al
00002E1B  0000              add [bx+si],al
00002E1D  0000              add [bx+si],al
00002E1F  0000              add [bx+si],al
00002E21  0000              add [bx+si],al
00002E23  0001              add [bx+di],al
00002E25  0000              add [bx+si],al
00002E27  0000              add [bx+si],al
00002E29  0000              add [bx+si],al
00002E2B  0000              add [bx+si],al
00002E2D  0000              add [bx+si],al
00002E2F  0000              add [bx+si],al
00002E31  0000              add [bx+si],al
00002E33  0000              add [bx+si],al
00002E35  0000              add [bx+si],al
00002E37  0000              add [bx+si],al
00002E39  0000              add [bx+si],al
00002E3B  0000              add [bx+si],al
00002E3D  0000              add [bx+si],al
00002E3F  0000              add [bx+si],al
00002E41  0001              add [bx+di],al
00002E43  0000              add [bx+si],al
00002E45  0000              add [bx+si],al
00002E47  0000              add [bx+si],al
00002E49  0000              add [bx+si],al
00002E4B  0000              add [bx+si],al
00002E4D  0000              add [bx+si],al
00002E4F  0000              add [bx+si],al
00002E51  0000              add [bx+si],al
00002E53  0000              add [bx+si],al
00002E55  0000              add [bx+si],al
00002E57  0000              add [bx+si],al
00002E59  0000              add [bx+si],al
00002E5B  0000              add [bx+si],al
00002E5D  0000              add [bx+si],al
00002E5F  0001              add [bx+di],al
00002E61  0000              add [bx+si],al
00002E63  0000              add [bx+si],al
00002E65  0000              add [bx+si],al
00002E67  0000              add [bx+si],al
00002E69  0000              add [bx+si],al
00002E6B  0000              add [bx+si],al
00002E6D  0000              add [bx+si],al
00002E6F  0000              add [bx+si],al
00002E71  0F0000            sldt [bx+si]
00002E74  3C0F              cmp al,0xf
00002E76  C000FC            rol byte [bx+si],byte 0xfc
00002E79  0F                db 0x0f
00002E7A  F003FC            lock add di,sp
00002E7D  0FFC0F            paddb mm1,[bx]
00002E80  FC                cld
00002E81  0FFF              ud0
00002E83  3F                aas
00002E84  FC                cld
00002E85  03FF              add di,di
00002E87  FFF0              push ax
00002E89  03FF              add di,di
00002E8B  FFF0              push ax
00002E8D  00FF              add bh,bh
00002E8F  FFC0              inc ax
00002E91  000F              add [bx],cl
00002E93  FC                cld
00002E94  0000              add [bx+si],al
00002E96  0000              add [bx+si],al
00002E98  0000              add [bx+si],al
00002E9A  0000              add [bx+si],al
00002E9C  0000              add [bx+si],al
00002E9E  C000C0            rol byte [bx+si],byte 0xc0
00002EA1  03C0              add ax,ax
00002EA3  00F0              add al,dh
00002EA5  03F0              add si,ax
00002EA7  03F0              add si,ax
00002EA9  0F                db 0x0f
00002EAA  F003FC            lock add di,sp
00002EAD  0FFC0F            paddb mm1,[bx]
00002EB0  FC                cld
00002EB1  0FFC0F            paddb mm1,[bx]
00002EB4  FC                cld
00002EB5  0FFF              ud0
00002EB7  3F                aas
00002EB8  FC                cld
00002EB9  0FFF              ud0
00002EBB  3F                aas
00002EBC  FC                cld
00002EBD  03FF              add di,di
00002EBF  FFF0              push ax
00002EC1  03FF              add di,di
00002EC3  FFF0              push ax
00002EC5  00FF              add bh,bh
00002EC7  FFC0              inc ax
00002EC9  000F              add [bx],cl
00002ECB  FC                cld
00002ECC  0000              add [bx+si],al
00002ECE  0000              add [bx+si],al
00002ED0  0000              add [bx+si],al
00002ED2  0FFC00            paddb mm0,[bx+si]
00002ED5  00FF              add bh,bh
00002ED7  FFC0              inc ax
00002ED9  03FF              add di,di
00002EDB  FFF0              push ax
00002EDD  03FF              add di,di
00002EDF  FFF0              push ax
00002EE1  0FFF              ud0
00002EE3  FF                db 0xff
00002EE4  FC                cld
00002EE5  0FFF              ud0
00002EE7  FF                db 0xff
00002EE8  FC                cld
00002EE9  0FFF              ud0
00002EEB  FF                db 0xff
00002EEC  FC                cld
00002EED  0FFF              ud0
00002EEF  FF                db 0xff
00002EF0  FC                cld
00002EF1  0FFF              ud0
00002EF3  FF                db 0xff
00002EF4  FC                cld
00002EF5  03FF              add di,di
00002EF7  FFF0              push ax
00002EF9  03FF              add di,di
00002EFB  FFF0              push ax
00002EFD  00FF              add bh,bh
00002EFF  FFC0              inc ax
00002F01  000F              add [bx],cl
00002F03  FC                cld
00002F04  0000              add [bx+si],al
00002F06  0000              add [bx+si],al
00002F08  0000              add [bx+si],al
00002F0A  0000              add [bx+si],al
00002F0C  0000              add [bx+si],al
00002F0E  C000C0            rol byte [bx+si],byte 0xc0
00002F11  03C0              add ax,ax
00002F13  00F0              add al,dh
00002F15  03F0              add si,ax
00002F17  03F0              add si,ax
00002F19  0F                db 0x0f
00002F1A  F003FC            lock add di,sp
00002F1D  0FFC0F            paddb mm1,[bx]
00002F20  FC                cld
00002F21  0FFC0F            paddb mm1,[bx]
00002F24  FC                cld
00002F25  0FFF              ud0
00002F27  3F                aas
00002F28  FC                cld
00002F29  0FFF              ud0
00002F2B  3F                aas
00002F2C  FC                cld
00002F2D  03FF              add di,di
00002F2F  FFF0              push ax
00002F31  03FF              add di,di
00002F33  FFF0              push ax
00002F35  00FF              add bh,bh
00002F37  FFC0              inc ax
00002F39  000F              add [bx],cl
00002F3B  FC                cld
00002F3C  0000              add [bx+si],al
00002F3E  0000              add [bx+si],al
00002F40  0000              add [bx+si],al
00002F42  0FFC00            paddb mm0,[bx+si]
00002F45  00FF              add bh,bh
00002F47  FFC0              inc ax
00002F49  03FF              add di,di
00002F4B  FFF0              push ax
00002F4D  03FF              add di,di
00002F4F  FFF0              push ax
00002F51  0FFF              ud0
00002F53  3F                aas
00002F54  FC                cld
00002F55  0FFC0F            paddb mm1,[bx]
00002F58  FC                cld
00002F59  0F                db 0x0f
00002F5A  F003FC            lock add di,sp
00002F5D  0FC000            xadd [bx+si],al
00002F60  FC                cld
00002F61  0F0000            sldt [bx+si]
00002F64  3C00              cmp al,0x0
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
00002F7A  0FFC00            paddb mm0,[bx+si]
00002F7D  00FF              add bh,bh
00002F7F  FFC0              inc ax
00002F81  03FF              add di,di
00002F83  FFF0              push ax
00002F85  03FF              add di,di
00002F87  FFF0              push ax
00002F89  0FFF              ud0
00002F8B  3F                aas
00002F8C  FC                cld
00002F8D  0FFF              ud0
00002F8F  3F                aas
00002F90  FC                cld
00002F91  0FFC0F            paddb mm1,[bx]
00002F94  FC                cld
00002F95  0FFC0F            paddb mm1,[bx]
00002F98  FC                cld
00002F99  0F                db 0x0f
00002F9A  F003FC            lock add di,sp
00002F9D  03F0              add si,ax
00002F9F  03F0              add si,ax
00002FA1  03C0              add ax,ax
00002FA3  00F0              add al,dh
00002FA5  00C0              add al,al
00002FA7  00C0              add al,al
00002FA9  0000              add [bx+si],al
00002FAB  0000              add [bx+si],al
00002FAD  0000              add [bx+si],al
00002FAF  0000              add [bx+si],al
00002FB1  000F              add [bx],cl
00002FB3  FC                cld
00002FB4  0000              add [bx+si],al
00002FB6  FF                db 0xff
00002FB7  FFC0              inc ax
00002FB9  03FF              add di,di
00002FBB  FFF0              push ax
00002FBD  03FF              add di,di
00002FBF  FFF0              push ax
00002FC1  0FFF              ud0
00002FC3  FF                db 0xff
00002FC4  FC                cld
00002FC5  0FFF              ud0
00002FC7  FF                db 0xff
00002FC8  FC                cld
00002FC9  0FFF              ud0
00002FCB  FF                db 0xff
00002FCC  FC                cld
00002FCD  0FFF              ud0
00002FCF  FF                db 0xff
00002FD0  FC                cld
00002FD1  0FFF              ud0
00002FD3  FF                db 0xff
00002FD4  FC                cld
00002FD5  03FF              add di,di
00002FD7  FFF0              push ax
00002FD9  03FF              add di,di
00002FDB  FFF0              push ax
00002FDD  00FF              add bh,bh
00002FDF  FFC0              inc ax
00002FE1  000F              add [bx],cl
00002FE3  FC                cld
00002FE4  0000              add [bx+si],al
00002FE6  0000              add [bx+si],al
00002FE8  0000              add [bx+si],al
00002FEA  0FFC00            paddb mm0,[bx+si]
00002FED  00FF              add bh,bh
00002FEF  FFC0              inc ax
00002FF1  03FF              add di,di
00002FF3  FFF0              push ax
00002FF5  03FF              add di,di
00002FF7  FFF0              push ax
00002FF9  0FFF              ud0
00002FFB  3F                aas
00002FFC  FC                cld
00002FFD  0FFF              ud0
00002FFF  3F                aas
00003000  FC                cld
00003001  0FFC0F            paddb mm1,[bx]
00003004  FC                cld
00003005  0FFC0F            paddb mm1,[bx]
00003008  FC                cld
00003009  0F                db 0x0f
0000300A  F003FC            lock add di,sp
0000300D  03F0              add si,ax
0000300F  03F0              add si,ax
00003011  03C0              add ax,ax
00003013  00F0              add al,dh
00003015  00C0              add al,al
00003017  00C0              add al,al
00003019  0000              add [bx+si],al
0000301B  0000              add [bx+si],al
0000301D  0000              add [bx+si],al
0000301F  0000              add [bx+si],al
00003021  000F              add [bx],cl
00003023  FC                cld
00003024  0000              add [bx+si],al
00003026  0FFF              ud0
00003028  C00003            rol byte [bx+si],byte 0x3
0000302B  FFF0              push ax
0000302D  0000              add [bx+si],al
0000302F  FFF0              push ax
00003031  0000              add [bx+si],al
00003033  3F                aas
00003034  FC                cld
00003035  0000              add [bx+si],al
00003037  0FFC00            paddb mm0,[bx+si]
0000303A  0003              add [bp+di],al
0000303C  FC                cld
0000303D  0000              add [bx+si],al
0000303F  0FFC00            paddb mm0,[bx+si]
00003042  003F              add [bx],bh
00003044  FC                cld
00003045  0000              add [bx+si],al
00003047  FFF0              push ax
00003049  0003              add [bp+di],al
0000304B  FFF0              push ax
0000304D  000F              add [bx],cl
0000304F  FFC0              inc ax
00003051  000F              add [bx],cl
00003053  FC                cld
00003054  0000              add [bx+si],al
00003056  0000              add [bx+si],al
00003058  0000              add [bx+si],al
0000305A  0FFC00            paddb mm0,[bx+si]
0000305D  00FF              add bh,bh
0000305F  FFC0              inc ax
00003061  03FF              add di,di
00003063  FFF0              push ax
00003065  003F              add [bx],bh
00003067  FFF0              push ax
00003069  0003              add [bp+di],al
0000306B  FF                db 0xff
0000306C  FC                cld
0000306D  0000              add [bx+si],al
0000306F  3F                aas
00003070  FC                cld
00003071  0000              add [bx+si],al
00003073  03FC              add di,sp
00003075  0000              add [bx+si],al
00003077  3F                aas
00003078  FC                cld
00003079  0003              add [bp+di],al
0000307B  FF                db 0xff
0000307C  FC                cld
0000307D  003F              add [bx],bh
0000307F  FFF0              push ax
00003081  03FF              add di,di
00003083  FFF0              push ax
00003085  00FF              add bh,bh
00003087  FFC0              inc ax
00003089  000F              add [bx],cl
0000308B  FC                cld
0000308C  0000              add [bx+si],al
0000308E  0000              add [bx+si],al
00003090  0000              add [bx+si],al
00003092  0FFC00            paddb mm0,[bx+si]
00003095  00FF              add bh,bh
00003097  FFC0              inc ax
00003099  03FF              add di,di
0000309B  FFF0              push ax
0000309D  03FF              add di,di
0000309F  FFF0              push ax
000030A1  0FFF              ud0
000030A3  FF                db 0xff
000030A4  FC                cld
000030A5  0FFF              ud0
000030A7  FF                db 0xff
000030A8  FC                cld
000030A9  0FFF              ud0
000030AB  FF                db 0xff
000030AC  FC                cld
000030AD  0FFF              ud0
000030AF  FF                db 0xff
000030B0  FC                cld
000030B1  0FFF              ud0
000030B3  FF                db 0xff
000030B4  FC                cld
000030B5  03FF              add di,di
000030B7  FFF0              push ax
000030B9  03FF              add di,di
000030BB  FFF0              push ax
000030BD  00FF              add bh,bh
000030BF  FFC0              inc ax
000030C1  000F              add [bx],cl
000030C3  FC                cld
000030C4  0000              add [bx+si],al
000030C6  0000              add [bx+si],al
000030C8  0000              add [bx+si],al
000030CA  0FFC00            paddb mm0,[bx+si]
000030CD  00FF              add bh,bh
000030CF  FFC0              inc ax
000030D1  03FF              add di,di
000030D3  FFF0              push ax
000030D5  003F              add [bx],bh
000030D7  FFF0              push ax
000030D9  0003              add [bp+di],al
000030DB  FF                db 0xff
000030DC  FC                cld
000030DD  0000              add [bx+si],al
000030DF  3F                aas
000030E0  FC                cld
000030E1  0000              add [bx+si],al
000030E3  03FC              add di,sp
000030E5  0000              add [bx+si],al
000030E7  3F                aas
000030E8  FC                cld
000030E9  0003              add [bp+di],al
000030EB  FF                db 0xff
000030EC  FC                cld
000030ED  003F              add [bx],bh
000030EF  FFF0              push ax
000030F1  03FF              add di,di
000030F3  FFF0              push ax
000030F5  00FF              add bh,bh
000030F7  FFC0              inc ax
000030F9  000F              add [bx],cl
000030FB  FC                cld
000030FC  0000              add [bx+si],al
000030FE  0000              add [bx+si],al
00003100  0000              add [bx+si],al
00003102  0FFC00            paddb mm0,[bx+si]
00003105  00FF              add bh,bh
00003107  FC                cld
00003108  0003              add [bp+di],al
0000310A  FFF0              push ax
0000310C  0003              add [bp+di],al
0000310E  FFC0              inc ax
00003110  000F              add [bx],cl
00003112  FF00              inc word [bx+si]
00003114  000F              add [bx],cl
00003116  FC                cld
00003117  0000              add [bx+si],al
00003119  0F                db 0x0f
0000311A  F00000            lock add [bx+si],al
0000311D  0FFC00            paddb mm0,[bx+si]
00003120  000F              add [bx],cl
00003122  FF00              inc word [bx+si]
00003124  0003              add [bp+di],al
00003126  FFC0              inc ax
00003128  0003              add [bp+di],al
0000312A  FFF0              push ax
0000312C  0000              add [bx+si],al
0000312E  FF                db 0xff
0000312F  FC                cld
00003130  0000              add [bx+si],al
00003132  0FFC00            paddb mm0,[bx+si]
00003135  0000              add [bx+si],al
00003137  0000              add [bx+si],al
00003139  000F              add [bx],cl
0000313B  FC                cld
0000313C  0000              add [bx+si],al
0000313E  FF                db 0xff
0000313F  FFC0              inc ax
00003141  03FF              add di,di
00003143  FFF0              push ax
00003145  03FF              add di,di
00003147  FF00              inc word [bx+si]
00003149  0FFF              ud0
0000314B  F0000F            lock add [bx],cl
0000314E  FF00              inc word [bx+si]
00003150  000F              add [bx],cl
00003152  F00000            lock add [bx+si],al
00003155  0FFF              ud0
00003157  0000              add [bx+si],al
00003159  0FFF              ud0
0000315B  F00003            lock add [bp+di],al
0000315E  FF                db 0xff
0000315F  FF00              inc word [bx+si]
00003161  03FF              add di,di
00003163  FFF0              push ax
00003165  00FF              add bh,bh
00003167  FFC0              inc ax
00003169  000F              add [bx],cl
0000316B  FC                cld
0000316C  0000              add [bx+si],al
0000316E  0000              add [bx+si],al
00003170  0000              add [bx+si],al
00003172  0FFC00            paddb mm0,[bx+si]
00003175  00FF              add bh,bh
00003177  FFC0              inc ax
00003179  03FF              add di,di
0000317B  FFF0              push ax
0000317D  03FF              add di,di
0000317F  FFF0              push ax
00003181  0FFF              ud0
00003183  FF                db 0xff
00003184  FC                cld
00003185  0FFF              ud0
00003187  FF                db 0xff
00003188  FC                cld
00003189  0FFF              ud0
0000318B  FF                db 0xff
0000318C  FC                cld
0000318D  0FFF              ud0
0000318F  FF                db 0xff
00003190  FC                cld
00003191  0FFF              ud0
00003193  FF                db 0xff
00003194  FC                cld
00003195  03FF              add di,di
00003197  FFF0              push ax
00003199  03FF              add di,di
0000319B  FFF0              push ax
0000319D  00FF              add bh,bh
0000319F  FFC0              inc ax
000031A1  000F              add [bx],cl
000031A3  FC                cld
000031A4  0000              add [bx+si],al
000031A6  0000              add [bx+si],al
000031A8  0000              add [bx+si],al
000031AA  0FFC00            paddb mm0,[bx+si]
000031AD  00FF              add bh,bh
000031AF  FFC0              inc ax
000031B1  03FF              add di,di
000031B3  FFF0              push ax
000031B5  03FF              add di,di
000031B7  FF00              inc word [bx+si]
000031B9  0FFF              ud0
000031BB  F0000F            lock add [bx],cl
000031BE  FF00              inc word [bx+si]
000031C0  000F              add [bx],cl
000031C2  F00000            lock add [bx+si],al
000031C5  0FFF              ud0
000031C7  0000              add [bx+si],al
000031C9  0FFF              ud0
000031CB  F00003            lock add [bp+di],al
000031CE  FF                db 0xff
000031CF  FF00              inc word [bx+si]
000031D1  03FF              add di,di
000031D3  FFF0              push ax
000031D5  00FF              add bh,bh
000031D7  FFC0              inc ax
000031D9  000F              add [bx],cl
000031DB  FC                cld
000031DC  0000              add [bx+si],al
000031DE  0000              add [bx+si],al
000031E0  0000              add [bx+si],al
000031E2  055000            add ax,0x50
000031E5  005555            add [di+0x55],dl
000031E8  0001              add [bx+di],al
000031EA  055040            add ax,0x4050
000031ED  07                pop es
000031EE  0D70D0            or ax,0xd070
000031F1  07                pop es
000031F2  FD                std
000031F3  7FD0              jg 0x31c5
000031F5  17                pop ss
000031F6  FD                std
000031F7  7FD4              jg 0x31cd
000031F9  15F55F            adc ax,0x5ff5
000031FC  54                push sp
000031FD  155555            adc ax,0x5555
00003200  54                push sp
00003201  0005              add [di],al
00003203  50                push ax
00003204  0000              add [bx+si],al
00003206  55                push bp
00003207  55                push bp
00003208  0001              add [bx+di],al
0000320A  55                push bp
0000320B  55                push bp
0000320C  40                inc ax
0000320D  05F55F            add ax,0x5ff5
00003210  50                push ax
00003211  07                pop es
00003212  FD                std
00003213  7FD0              jg 0x31e5
00003215  17                pop ss
00003216  FD                std
00003217  7FD4              jg 0x31ed
00003219  17                pop ss
0000321A  0D70D4            or ax,0xd470
0000321D  150550            adc ax,0x5005
00003220  54                push sp
00003221  0005              add [di],al
00003223  50                push ax
00003224  0000              add [bx+si],al
00003226  55                push bp
00003227  55                push bp
00003228  0001              add [bx+di],al
0000322A  F5                cmc
0000322B  5F                pop di
0000322C  40                inc ax
0000322D  07                pop es
0000322E  FD                std
0000322F  7FD0              jg 0x3201
00003231  043D              add al,0x3d
00003233  43                inc bx
00003234  D014              rcl byte [si],1
00003236  3D43D4            cmp ax,0xd443
00003239  15F55F            adc ax,0x5ff5
0000323C  54                push sp
0000323D  155555            adc ax,0x5555
00003240  54                push sp
00003241  0005              add [di],al
00003243  50                push ax
00003244  0000              add [bx+si],al
00003246  55                push bp
00003247  55                push bp
00003248  0001              add [bx+di],al
0000324A  F5                cmc
0000324B  5F                pop di
0000324C  40                inc ax
0000324D  07                pop es
0000324E  FD                std
0000324F  7FD0              jg 0x3221
00003251  07                pop es
00003252  C17C1017          sar word [si+0x10],byte 0x17
00003256  C17C1415          sar word [si+0x14],byte 0x15
0000325A  F5                cmc
0000325B  5F                pop di
0000325C  54                push sp
0000325D  155555            adc ax,0x5555
00003260  54                push sp
00003261  155555            adc ax,0x5555
00003264  54                push sp
00003265  155555            adc ax,0x5555
00003268  54                push sp
00003269  155555            adc ax,0x5555
0000326C  54                push sp
0000326D  155555            adc ax,0x5555
00003270  54                push sp
00003271  154551            adc ax,0x5145
00003274  54                push sp
00003275  050140            add ax,0x4001
00003278  50                push ax
00003279  1454              adc al,0x54
0000327B  151410            adc ax,0x1014
0000327E  1414              adc al,0x14
00003280  0400              add al,0x0
00003282  07                pop es
00003283  7000              jo 0x3285
00003285  00DD              add ch,bl
00003287  DD00              fld qword [bx+si]
00003289  0307              add ax,[bx]
0000328B  7040              jo 0x32cd
0000328D  0F                db 0x0f
0000328E  0DF0D0            or ax,0xd0f0
00003291  07                pop es
00003292  FF                db 0xff
00003293  7FF0              jg 0x3285
00003295  1F                pop ds
00003296  FD                std
00003297  FF                db 0xff
00003298  DC37              fdiv qword [bx]
0000329A  F77F74            idiv word [bx+0x74]
0000329D  1DDDDD            sbb ax,0xdddd
000032A0  DC00              fadd qword [bx+si]
000032A2  07                pop es
000032A3  7000              jo 0x32a5
000032A5  00DD              add ch,bl
000032A7  DD00              fld qword [bx+si]
000032A9  037777            add si,[bx+0x77]
000032AC  40                inc ax
000032AD  0DFDDF            or ax,0xdffd
000032B0  D007              rol byte [bx],1
000032B2  FF                db 0xff
000032B3  7FF0              jg 0x32a5
000032B5  1F                pop ds
000032B6  FD                std
000032B7  FF                db 0xff
000032B8  DC37              fdiv qword [bx]
000032BA  0F70F41D          pshufw mm6,mm4,0x1d
000032BE  0DD0DC            or ax,0xdcd0
000032C1  0007              add [bx],al
000032C3  7000              jo 0x32c5
000032C5  00DD              add ch,bl
000032C7  DD00              fld qword [bx+si]
000032C9  03F7              add si,di
000032CB  7F40              jg 0x330d
000032CD  0FFDFF            paddw mm7,mm7
000032D0  D004              rol byte [si],1
000032D2  3F                aas
000032D3  43                inc bx
000032D4  F01C3D            lock sbb al,0x3d
000032D7  C3                ret
000032D8  DC37              fdiv qword [bx]
000032DA  F77F74            idiv word [bx+0x74]
000032DD  1DDDDD            sbb ax,0xdddd
000032E0  DC00              fadd qword [bx+si]
000032E2  07                pop es
000032E3  7000              jo 0x32e5
000032E5  00DD              add ch,bl
000032E7  DD00              fld qword [bx+si]
000032E9  03F7              add si,di
000032EB  7F40              jg 0x332d
000032ED  0FFDFF            paddw mm7,mm7
000032F0  D007              rol byte [bx],1
000032F2  C3                ret
000032F3  7C30              jl 0x3325
000032F5  1F                pop ds
000032F6  C1FC1C            sar sp,byte 0x1c
000032F9  37                aaa
000032FA  F77F74            idiv word [bx+0x74]
000032FD  1DDDDD            sbb ax,0xdddd
00003300  DC37              fdiv qword [bx]
00003302  7777              ja 0x337b
00003304  741D              jz 0x3323
00003306  DDDD              fstp st5
00003308  DC37              fdiv qword [bx]
0000330A  7777              ja 0x3383
0000330C  741D              jz 0x332b
0000330E  DDDD              fstp st5
00003310  DC37              fdiv qword [bx]
00003312  47                inc di
00003313  7374              jnc 0x3389
00003315  0D01C0            or ax,0xc001
00003318  D0                db 0xd0
00003319  3474              xor al,0x74
0000331B  37                aaa
0000331C  3410              xor al,0x10
0000331E  1C1C              sbb al,0x1c
00003320  0C00              or al,0x0
00003322  0AA00000          or ah,[bx+si+0x0]
00003326  AA                stosb
00003327  AA                stosb
00003328  0002              add [bp+si],al
0000332A  0AA0800B          or ah,[bx+si+0xb80]
0000332E  0E                push cs
0000332F  B0E0              mov al,0xe0
00003331  0BFE              or di,si
00003333  BFE02B            mov di,0x2be0
00003336  FE                db 0xfe
00003337  BFE82A            mov di,0x2ae8
0000333A  FA                cli
0000333B  AF                scasw
0000333C  A82A              test al,0x2a
0000333E  AA                stosb
0000333F  AA                stosb
00003340  A800              test al,0x0
00003342  0AA00000          or ah,[bx+si+0x0]
00003346  AA                stosb
00003347  AA                stosb
00003348  0002              add [bp+si],al
0000334A  AA                stosb
0000334B  AA                stosb
0000334C  800AFA            or byte [bp+si],0xfa
0000334F  AF                scasw
00003350  A00BFE            mov al,[0xfe0b]
00003353  BFE02B            mov di,0x2be0
00003356  FE                db 0xfe
00003357  BFE82B            mov di,0x2be8
0000335A  0E                push cs
0000335B  B0E8              mov al,0xe8
0000335D  2A0A              sub cl,[bp+si]
0000335F  A0A800            mov al,[0xa8]
00003362  0AA00000          or ah,[bx+si+0x0]
00003366  AA                stosb
00003367  AA                stosb
00003368  0002              add [bp+si],al
0000336A  FA                cli
0000336B  AF                scasw
0000336C  800BFE            or byte [bp+di],0xfe
0000336F  BFE008            mov di,0x8e0
00003372  3E83E028          ds and ax,byte +0x28
00003376  3E83E82A          ds sub ax,byte +0x2a
0000337A  FA                cli
0000337B  AF                scasw
0000337C  A82A              test al,0x2a
0000337E  AA                stosb
0000337F  AA                stosb
00003380  A800              test al,0x0
00003382  0AA00000          or ah,[bx+si+0x0]
00003386  AA                stosb
00003387  AA                stosb
00003388  0002              add [bp+si],al
0000338A  FA                cli
0000338B  AF                scasw
0000338C  800BFE            or byte [bp+di],0xfe
0000338F  BFE00B            mov di,0xbe0
00003392  C2BC20            ret 0x20bc
00003395  2BC2              sub ax,dx
00003397  BC282A            mov sp,0x2a28
0000339A  FA                cli
0000339B  AF                scasw
0000339C  A82A              test al,0x2a
0000339E  AA                stosb
0000339F  AA                stosb
000033A0  A82A              test al,0x2a
000033A2  AA                stosb
000033A3  AA                stosb
000033A4  A82A              test al,0x2a
000033A6  AA                stosb
000033A7  AA                stosb
000033A8  A82A              test al,0x2a
000033AA  AA                stosb
000033AB  AA                stosb
000033AC  A82A              test al,0x2a
000033AE  AA                stosb
000033AF  AA                stosb
000033B0  A82A              test al,0x2a
000033B2  8AA2A80A          mov ah,[bp+si+0xaa8]
000033B6  0280A028          add al,[bx+si+0x28a0]
000033BA  A82A              test al,0x2a
000033BC  2820              sub [bx+si],ah
000033BE  2828              sub [bx+si],ch
000033C0  0800              or [bx+si],al
000033C2  0BB00000          or si,[bx+si+0x0]
000033C6  EE                out dx,al
000033C7  EE                out dx,al
000033C8  0003              add [bp+di],al
000033CA  0BB0800F          or si,[bx+si+0xf80]
000033CE  0E                push cs
000033CF  F0E00B            lock loopne 0x33dd
000033D2  FF                db 0xff
000033D3  BFF02F            mov di,0x2ff0
000033D6  FE                db 0xfe
000033D7  FF                db 0xff
000033D8  EC                in al,dx
000033D9  3BFB              cmp di,bx
000033DB  BFB82E            mov di,0x2eb8
000033DE  EE                out dx,al
000033DF  EE                out dx,al
000033E0  EC                in al,dx
000033E1  000B              add [bp+di],cl
000033E3  B000              mov al,0x0
000033E5  00EE              add dh,ch
000033E7  EE                out dx,al
000033E8  0003              add [bp+di],al
000033EA  BBBB80            mov bx,0x80bb
000033ED  0E                push cs
000033EE  FE                db 0xfe
000033EF  EF                out dx,ax
000033F0  E00B              loopne 0x33fd
000033F2  FF                db 0xff
000033F3  BFF02F            mov di,0x2ff0
000033F6  FE                db 0xfe
000033F7  FF                db 0xff
000033F8  EC                in al,dx
000033F9  3B0F              cmp cx,[bx]
000033FB  B0F8              mov al,0xf8
000033FD  2E0E              cs push cs
000033FF  E0EC              loopne 0x33ed
00003401  000B              add [bp+di],cl
00003403  B000              mov al,0x0
00003405  00EE              add dh,ch
00003407  EE                out dx,al
00003408  0003              add [bp+di],al
0000340A  FB                sti
0000340B  BF800F            mov di,0xf80
0000340E  FE                db 0xfe
0000340F  FFE0              jmp ax
00003411  083F              or [bx],bh
00003413  83F02C            xor ax,byte +0x2c
00003416  3EC3              ds ret
00003418  EC                in al,dx
00003419  3BFB              cmp di,bx
0000341B  BFB82E            mov di,0x2eb8
0000341E  EE                out dx,al
0000341F  EE                out dx,al
00003420  EC                in al,dx
00003421  000B              add [bp+di],cl
00003423  B000              mov al,0x0
00003425  00EE              add dh,ch
00003427  EE                out dx,al
00003428  0003              add [bp+di],al
0000342A  FB                sti
0000342B  BF800F            mov di,0xf80
0000342E  FE                db 0xfe
0000342F  FFE0              jmp ax
00003431  0BC3              or ax,bx
00003433  BC302F            mov sp,0x2f30
00003436  C2FC2C            ret 0x2cfc
00003439  3BFB              cmp di,bx
0000343B  BFB82E            mov di,0x2eb8
0000343E  EE                out dx,al
0000343F  EE                out dx,al
00003440  EC                in al,dx
00003441  3BBBBBB8          cmp di,[bp+di-0x4745]
00003445  2EEE              cs out dx,al
00003447  EE                out dx,al
00003448  EC                in al,dx
00003449  3BBBBBB8          cmp di,[bp+di-0x4745]
0000344D  2EEE              cs out dx,al
0000344F  EE                out dx,al
00003450  EC                in al,dx
00003451  3B8BB3B8          cmp cx,[bp+di-0x474d]
00003455  0E                push cs
00003456  02C0              add al,al
00003458  E038              loopne 0x3492
0000345A  B83B38            mov ax,0x383b
0000345D  202C              and [si],ch
0000345F  2C0C              sub al,0xc
00003461  0005              add [di],al
00003463  50                push ax
00003464  0000              add [bx+si],al
00003466  50                push ax
00003467  050001            add ax,0x100
0000346A  0000              add [bx+si],al
0000346C  40                inc ax
0000346D  043C              add al,0x3c
0000346F  3C10              cmp al,0x10
00003471  043C              add al,0x3c
00003473  3C10              cmp al,0x10
00003475  1000              adc [bx+si],al
00003477  0004              add [si],al
00003479  1000              adc [bx+si],al
0000347B  0004              add [si],al
0000347D  1000              adc [bx+si],al
0000347F  0004              add [si],al
00003481  0005              add [di],al
00003483  50                push ax
00003484  0000              add [bx+si],al
00003486  50                push ax
00003487  050001            add ax,0x100
0000348A  0000              add [bx+si],al
0000348C  40                inc ax
0000348D  043C              add al,0x3c
0000348F  3C10              cmp al,0x10
00003491  043C              add al,0x3c
00003493  3C10              cmp al,0x10
00003495  1000              adc [bx+si],al
00003497  0004              add [si],al
00003499  1000              adc [bx+si],al
0000349B  0004              add [si],al
0000349D  1000              adc [bx+si],al
0000349F  0004              add [si],al
000034A1  0005              add [di],al
000034A3  50                push ax
000034A4  0000              add [bx+si],al
000034A6  50                push ax
000034A7  050001            add ax,0x100
000034AA  0000              add [bx+si],al
000034AC  40                inc ax
000034AD  043C              add al,0x3c
000034AF  3C10              cmp al,0x10
000034B1  043C              add al,0x3c
000034B3  3C10              cmp al,0x10
000034B5  1000              adc [bx+si],al
000034B7  0004              add [si],al
000034B9  1000              adc [bx+si],al
000034BB  0004              add [si],al
000034BD  1000              adc [bx+si],al
000034BF  0004              add [si],al
000034C1  0005              add [di],al
000034C3  50                push ax
000034C4  0000              add [bx+si],al
000034C6  50                push ax
000034C7  050001            add ax,0x100
000034CA  0000              add [bx+si],al
000034CC  40                inc ax
000034CD  043C              add al,0x3c
000034CF  3C10              cmp al,0x10
000034D1  043C              add al,0x3c
000034D3  3C10              cmp al,0x10
000034D5  1000              adc [bx+si],al
000034D7  0004              add [si],al
000034D9  1000              adc [bx+si],al
000034DB  0004              add [si],al
000034DD  1000              adc [bx+si],al
000034DF  0004              add [si],al
000034E1  13C3              adc ax,bx
000034E3  C3                ret
000034E4  C41C              les bx,[si]
000034E6  3C3C              cmp al,0x3c
000034E8  3410              xor al,0x10
000034EA  0000              add [bx+si],al
000034EC  0410              add al,0x10
000034EE  0000              add [bx+si],al
000034F0  0410              add al,0x10
000034F2  44                inc sp
000034F3  1104              adc [si],ax
000034F5  050140            add ax,0x4001
000034F8  50                push ax
000034F9  1444              adc al,0x44
000034FB  1114              adc [si],dx
000034FD  1014              adc [si],dl
000034FF  1404              adc al,0x4
00003501  000F              add [bx],cl
00003503  F00000            lock add [bx+si],al
00003506  FF                db 0xff
00003507  FF00              inc word [bx+si]
00003509  03FF              add di,di
0000350B  FFC0              inc ax
0000350D  0FEBEB            por mm5,mm3
00003510  F00FEBEB          lock por mm5,mm3
00003514  F03F              lock aas
00003516  FF                db 0xff
00003517  FF                db 0xff
00003518  FC                cld
00003519  3F                aas
0000351A  FF                db 0xff
0000351B  FF                db 0xff
0000351C  FC                cld
0000351D  3F                aas
0000351E  FF                db 0xff
0000351F  FF                db 0xff
00003520  FC                cld
00003521  000F              add [bx],cl
00003523  F00000            lock add [bx+si],al
00003526  FF                db 0xff
00003527  FF00              inc word [bx+si]
00003529  03FF              add di,di
0000352B  FFC0              inc ax
0000352D  0FEBEB            por mm5,mm3
00003530  F00FEBEB          lock por mm5,mm3
00003534  F03F              lock aas
00003536  FF                db 0xff
00003537  FF                db 0xff
00003538  FC                cld
00003539  3F                aas
0000353A  FF                db 0xff
0000353B  FF                db 0xff
0000353C  FC                cld
0000353D  3F                aas
0000353E  FF                db 0xff
0000353F  FF                db 0xff
00003540  FC                cld
00003541  000F              add [bx],cl
00003543  F00000            lock add [bx+si],al
00003546  FF                db 0xff
00003547  FF00              inc word [bx+si]
00003549  03FF              add di,di
0000354B  FFC0              inc ax
0000354D  0FEBEB            por mm5,mm3
00003550  F00FEBEB          lock por mm5,mm3
00003554  F03F              lock aas
00003556  FF                db 0xff
00003557  FF                db 0xff
00003558  FC                cld
00003559  3F                aas
0000355A  FF                db 0xff
0000355B  FF                db 0xff
0000355C  FC                cld
0000355D  3F                aas
0000355E  FF                db 0xff
0000355F  FF                db 0xff
00003560  FC                cld
00003561  000F              add [bx],cl
00003563  F00000            lock add [bx+si],al
00003566  FF                db 0xff
00003567  FF00              inc word [bx+si]
00003569  03FF              add di,di
0000356B  FFC0              inc ax
0000356D  0FEBEB            por mm5,mm3
00003570  F00FEBEB          lock por mm5,mm3
00003574  F03F              lock aas
00003576  FF                db 0xff
00003577  FF                db 0xff
00003578  FC                cld
00003579  3F                aas
0000357A  FF                db 0xff
0000357B  FF                db 0xff
0000357C  FC                cld
0000357D  3F                aas
0000357E  FF                db 0xff
0000357F  FF                db 0xff
00003580  FC                cld
00003581  3EBEBEBC          ds mov si,0xbcbe
00003585  3BEB              cmp bp,bx
00003587  EBEC              jmp short 0x3575
00003589  3F                aas
0000358A  FF                db 0xff
0000358B  FF                db 0xff
0000358C  FC                cld
0000358D  3F                aas
0000358E  FF                db 0xff
0000358F  FF                db 0xff
00003590  FC                cld
00003591  3F                aas
00003592  CF                iretw
00003593  F3FC              rep cld
00003595  0F03C0            lsl ax,ax
00003598  F03CFC            lock cmp al,0xfc
0000359B  3F                aas
0000359C  3C30              cmp al,0x30
0000359E  3C3C              cmp al,0x3c
000035A0  0C00              or al,0x0
000035A2  0000              add [bx+si],al
000035A4  0000              add [bx+si],al
000035A6  A00A00            mov al,[0xa]
000035A9  03AC3AC0          add bp,[si-0x3fc6]
000035AD  03FC              add di,sp
000035AF  3F                aas
000035B0  C003FC            rol byte [bp+di],byte 0xfc
000035B3  3F                aas
000035B4  C000F0            rol byte [bx+si],byte 0xf0
000035B7  0F0000            sldt [bx+si]
000035BA  0000              add [bx+si],al
000035BC  0000              add [bx+si],al
000035BE  0000              add [bx+si],al
000035C0  0000              add [bx+si],al
000035C2  0000              add [bx+si],al
000035C4  0000              add [bx+si],al
000035C6  0000              add [bx+si],al
000035C8  0000              add [bx+si],al
000035CA  0000              add [bx+si],al
000035CC  0000              add [bx+si],al
000035CE  F00F0003          lock sldt [bp+di]
000035D2  FC                cld
000035D3  3F                aas
000035D4  C003FC            rol byte [bp+di],byte 0xfc
000035D7  3F                aas
000035D8  C003AC            rol byte [bp+di],byte 0xac
000035DB  3AC0              cmp al,al
000035DD  00A00A00          add [bx+si+0xa],ah
000035E1  0000              add [bx+si],al
000035E3  0000              add [bx+si],al
000035E5  0000              add [bx+si],al
000035E7  0000              add [bx+si],al
000035E9  00F0              add al,dh
000035EB  0F0003            sldt [bp+di]
000035EE  FC                cld
000035EF  3F                aas
000035F0  C002BC            rol byte [bp+si],byte 0xbc
000035F3  2BC0              sub ax,ax
000035F5  02BC2BC0          add bh,[si-0x3fd5]
000035F9  00F0              add al,dh
000035FB  0F0000            sldt [bx+si]
000035FE  0000              add [bx+si],al
00003600  0000              add [bx+si],al
00003602  0000              add [bx+si],al
00003604  0000              add [bx+si],al
00003606  0000              add [bx+si],al
00003608  0000              add [bx+si],al
0000360A  F00F0003          lock sldt [bp+di]
0000360E  FC                cld
0000360F  3F                aas
00003610  C003E8            rol byte [bp+di],byte 0xe8
00003613  3E8003E8          add byte [ds:bp+di],0xe8
00003617  3E8000F0          add byte [ds:bx+si],0xf0
0000361B  0F0000            sldt [bx+si]
0000361E  0000              add [bx+si],al
00003620  0000              add [bx+si],al
00003622  0000              add [bx+si],al
00003624  0000              add [bx+si],al
00003626  0000              add [bx+si],al
00003628  0000              add [bx+si],al
0000362A  0000              add [bx+si],al
0000362C  0000              add [bx+si],al
0000362E  0000              add [bx+si],al
00003630  0000              add [bx+si],al
00003632  0000              add [bx+si],al
00003634  0000              add [bx+si],al
00003636  0000              add [bx+si],al
00003638  0000              add [bx+si],al
0000363A  0000              add [bx+si],al
0000363C  0000              add [bx+si],al
0000363E  0000              add [bx+si],al
00003640  003F              add [bx],bh
00003642  F0F03CF0          lock cmp al,0xf0
00003646  FC                cld
00003647  F3FC              rep cld
00003649  FF                db 0xff
0000364A  3CFC              cmp al,0xfc
0000364C  3C3F              cmp al,0x3f
0000364E  F00000            lock add [bx+si],al
00003651  0F                db 0x0f
00003652  003F              add [bx],bh
00003654  000F              add [bx],cl
00003656  000F              add [bx],cl
00003658  000F              add [bx],cl
0000365A  000F              add [bx],cl
0000365C  00FF              add bh,bh
0000365E  F00000            lock add [bx+si],al
00003661  3F                aas
00003662  C0                db 0xc0
00003663  F0F000F0          lock add al,dh
00003667  0FC03C            xadd [si],bh
0000366A  00F0              add al,dh
0000366C  F0FFF0            lock push ax
0000366F  0000              add [bx+si],al
00003671  3F                aas
00003672  C0                db 0xc0
00003673  F0F000F0          lock add al,dh
00003677  0FC000            xadd [bx+si],al
0000367A  F0F0F03F          lock aas
0000367E  C00000            rol byte [bx+si],byte 0x0
00003681  03F0              add si,ax
00003683  0F                db 0x0f
00003684  F03CF0            lock cmp al,0xf0
00003687  F0                lock
00003688  F0                lock
00003689  FF                db 0xff
0000368A  FC                cld
0000368B  00F0              add al,dh
0000368D  03FC              add di,sp
0000368F  0000              add [bx+si],al
00003691  FFF0              push ax
00003693  F000FF            lock add bh,bh
00003696  C000F0            rol byte [bx+si],byte 0xf0
00003699  00F0              add al,dh
0000369B  F0F03F            lock aas
0000369E  C00000            rol byte [bx+si],byte 0x0
000036A1  0FC03C            xadd [si],bh
000036A4  00F0              add al,dh
000036A6  00FF              add bh,bh
000036A8  C0                db 0xc0
000036A9  F0F0F0F03F        lock aas
000036AE  C00000            rol byte [bx+si],byte 0x0
000036B1  FFF0              push ax
000036B3  F0F000F0          lock add al,dh
000036B7  03C0              add ax,ax
000036B9  0F000F            str [bx]
000036BC  000F              add [bx],cl
000036BE  0000              add [bx+si],al
000036C0  003F              add [bx],bh
000036C2  C0                db 0xc0
000036C3  F0F0F0F03F        lock aas
000036C8  C0                db 0xc0
000036C9  F0F0F0F03F        lock aas
000036CE  C00000            rol byte [bx+si],byte 0x0
000036D1  3F                aas
000036D2  C0                db 0xc0
000036D3  F0F0F0F03F        lock aas
000036D8  F000F0            lock add al,dh
000036DB  03C0              add ax,ax
000036DD  3F                aas
000036DE  0000              add [bx+si],al
000036E0  0000              add [bx+si],al
000036E2  0000              add [bx+si],al
000036E4  0000              add [bx+si],al
000036E6  0000              add [bx+si],al
000036E8  0000              add [bx+si],al
000036EA  0000              add [bx+si],al
000036EC  0000              add [bx+si],al
000036EE  0000              add [bx+si],al
000036F0  0002              add [bp+si],al
000036F2  0F03C0            lsl ax,ax
000036F5  F030CC            lock xor ah,cl
000036F8  330C              xor cx,[si]
000036FA  00CC              add ah,cl
000036FC  330C              xor cx,[si]
000036FE  030C              add cx,[si]
00003700  330C              xor cx,[si]
00003702  0C0C              or al,0xc
00003704  330C              xor cx,[si]
00003706  300C              xor [si],cl
00003708  330C              xor cx,[si]
0000370A  3F                aas
0000370B  C3                ret
0000370C  C0                db 0xc0
0000370D  F00000            lock add [bx+si],al
00003710  0000              add [bx+si],al
00003712  0430              add al,0x30
00003714  C3                ret
00003715  C0                db 0xc0
00003716  F030CC            lock xor ah,cl
00003719  330C              xor cx,[si]
0000371B  30CC              xor ah,cl
0000371D  330C              xor cx,[si]
0000371F  3F                aas
00003720  CC                int3
00003721  330C              xor cx,[si]
00003723  00CC              add ah,cl
00003725  330C              xor cx,[si]
00003727  00CC              add ah,cl
00003729  330C              xor cx,[si]
0000372B  00C3              add bl,al
0000372D  C0                db 0xc0
0000372E  F00000            lock add [bx+si],al
00003731  0000              add [bx+si],al
00003733  080F              or [bx],cl
00003735  03C0              add ax,ax
00003737  F030CC            lock xor ah,cl
0000373A  330C              xor cx,[si]
0000373C  30CC              xor ah,cl
0000373E  330C              xor cx,[si]
00003740  0F                db 0x0f
00003741  0C33              or al,0x33
00003743  0C30              or al,0x30
00003745  CC                int3
00003746  330C              xor cx,[si]
00003748  30CC              xor ah,cl
0000374A  330C              xor cx,[si]
0000374C  0F03C0            lsl ax,ax
0000374F  F00000            lock add [bx+si],al
00003752  0000              add [bx+si],al
00003754  10C3              adc bl,al
00003756  C0                db 0xc0
00003757  F03CCC            lock cmp al,0xcc
0000375A  330C              xor cx,[si]
0000375C  C3                ret
0000375D  CC                int3
0000375E  030C              add cx,[si]
00003760  C3                ret
00003761  CF                iretw
00003762  C3                ret
00003763  0CC3              or al,0xc3
00003765  CC                int3
00003766  330C              xor cx,[si]
00003768  C3                ret
00003769  CC                int3
0000376A  330C              xor cx,[si]
0000376C  C3                ret
0000376D  C3                ret
0000376E  C0                db 0xc0
0000376F  F03C00            lock cmp al,0x0
00003772  0000              add [bx+si],al
00003774  0000              add [bx+si],al
00003776  0000              add [bx+si],al
00003778  0000              add [bx+si],al
0000377A  0000              add [bx+si],al
0000377C  003C              add [si],bh
0000377E  0000              add [bx+si],al
00003780  F03F              lock aas
00003782  0003              add [bp+di],al
00003784  F03F              lock aas
00003786  C00FF0            ror byte [bx],byte 0xf0
00003789  3F                aas
0000378A  F03F              lock aas
0000378C  F03F              lock aas
0000378E  FC                cld
0000378F  FFF0              push ax
00003791  0FFF              ud0
00003793  FFC0              inc ax
00003795  0FFF              ud0
00003797  FFC0              inc ax
00003799  03FF              add di,di
0000379B  FF00              inc word [bx+si]
0000379D  003F              add [bx],bh
0000379F  F00000            lock add [bx+si],al
000037A2  0000              add [bx+si],al
000037A4  0000              add [bx+si],al
000037A6  0000              add [bx+si],al
000037A8  0000              add [bx+si],al
000037AA  0000              add [bx+si],al
000037AC  0000              add [bx+si],al
000037AE  0000              add [bx+si],al
000037B0  0000              add [bx+si],al
000037B2  0000              add [bx+si],al
000037B4  0000              add [bx+si],al
000037B6  0000              add [bx+si],al
000037B8  003C              add [si],bh
000037BA  0000              add [bx+si],al
000037BC  F03F              lock aas
000037BE  0003              add [bp+di],al
000037C0  F03F              lock aas
000037C2  C00FF0            ror byte [bx],byte 0xf0
000037C5  3F                aas
000037C6  FC                cld
000037C7  FFF0              push ax
000037C9  3F                aas
000037CA  FF                db 0xff
000037CB  FFF0              push ax
000037CD  0FFF              ud0
000037CF  FFC0              inc ax
000037D1  03FF              add di,di
000037D3  FF00              inc word [bx+si]
000037D5  003F              add [bx],bh
000037D7  F00000            lock add [bx+si],al
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
000037F0  0000              add [bx+si],al
000037F2  0000              add [bx+si],al
000037F4  00F0              add al,dh
000037F6  0000              add [bx+si],al
000037F8  3CFF              cmp al,0xff
000037FA  C00FFC            ror byte [bx],byte 0xfc
000037FD  3F                aas
000037FE  FC                cld
000037FF  FFF0              push ax
00003801  3F                aas
00003802  FF                db 0xff
00003803  FFF0              push ax
00003805  0FFF              ud0
00003807  FFC0              inc ax
00003809  03FF              add di,di
0000380B  FF00              inc word [bx+si]
0000380D  00FF              add bh,bh
0000380F  FC                cld
00003810  0000              add [bx+si],al
00003812  0000              add [bx+si],al
00003814  0000              add [bx+si],al
00003816  0000              add [bx+si],al
00003818  0000              add [bx+si],al
0000381A  0000              add [bx+si],al
0000381C  0000              add [bx+si],al
0000381E  0000              add [bx+si],al
00003820  0000              add [bx+si],al
00003822  0000              add [bx+si],al
00003824  0000              add [bx+si],al
00003826  0000              add [bx+si],al
00003828  0000              add [bx+si],al
0000382A  0000              add [bx+si],al
0000382C  0000              add [bx+si],al
0000382E  0000              add [bx+si],al
00003830  00F0              add al,dh
00003832  0000              add [bx+si],al
00003834  3CFF              cmp al,0xff
00003836  F03F              lock aas
00003838  FC                cld
00003839  3F                aas
0000383A  FF                db 0xff
0000383B  FFF0              push ax
0000383D  3F                aas
0000383E  FF                db 0xff
0000383F  FFF0              push ax
00003841  0FFF              ud0
00003843  FFC0              inc ax
00003845  00FF              add bh,bh
00003847  FC                cld
00003848  0000              add [bx+si],al
0000384A  0000              add [bx+si],al
0000384C  0000              add [bx+si],al
0000384E  0000              add [bx+si],al
00003850  0000              add [bx+si],al
00003852  0000              add [bx+si],al
00003854  0000              add [bx+si],al
00003856  0000              add [bx+si],al
00003858  0000              add [bx+si],al
0000385A  0000              add [bx+si],al
0000385C  0000              add [bx+si],al
0000385E  0000              add [bx+si],al
00003860  0000              add [bx+si],al
00003862  0000              add [bx+si],al
00003864  0000              add [bx+si],al
00003866  0000              add [bx+si],al
00003868  0000              add [bx+si],al
0000386A  0000              add [bx+si],al
0000386C  00FC              add ah,bh
0000386E  0000              add [bx+si],al
00003870  FC                cld
00003871  FF                db 0xff
00003872  FF                db 0xff
00003873  FF                db 0xff
00003874  FC                cld
00003875  3F                aas
00003876  FF                db 0xff
00003877  FFF0              push ax
00003879  0FFF              ud0
0000387B  FFC0              inc ax
0000387D  00FF              add bh,bh
0000387F  FC                cld
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
000038A0  0000              add [bx+si],al
000038A2  0000              add [bx+si],al
000038A4  0000              add [bx+si],al
000038A6  0000              add [bx+si],al
000038A8  00FF              add bh,bh
000038AA  FF                db 0xff
000038AB  FF                db 0xff
000038AC  FC                cld
000038AD  FF                db 0xff
000038AE  FF                db 0xff
000038AF  FF                db 0xff
000038B0  FC                cld
000038B1  3F                aas
000038B2  FF                db 0xff
000038B3  FFF0              push ax
000038B5  03FF              add di,di
000038B7  FF00              inc word [bx+si]
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
000038E1  003F              add [bx],bh
000038E3  F0003F            lock add [bx],bh
000038E6  FF                db 0xff
000038E7  FFF0              push ax
000038E9  FF                db 0xff
000038EA  FF                db 0xff
000038EB  FF                db 0xff
000038EC  FC                cld
000038ED  0FFF              ud0
000038EF  FFC0              inc ax
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
00003919  000F              add [bx],cl
0000391B  C00000            rol byte [bx+si],byte 0x0
0000391E  FF                db 0xff
0000391F  FC                cld
00003920  003F              add [bx],bh
00003922  FF                db 0xff
00003923  FFF0              push ax
00003925  3F                aas
00003926  FF                db 0xff
00003927  FFF0              push ax
00003929  0000              add [bx+si],al
0000392B  0000              add [bx+si],al
0000392D  0000              add [bx+si],al
0000392F  0000              add [bx+si],al
00003931  0000              add [bx+si],al
00003933  0000              add [bx+si],al
00003935  0000              add [bx+si],al
00003937  0000              add [bx+si],al
00003939  0000              add [bx+si],al
0000393B  0000              add [bx+si],al
0000393D  0000              add [bx+si],al
0000393F  0000              add [bx+si],al
00003941  0000              add [bx+si],al
00003943  0000              add [bx+si],al
00003945  0000              add [bx+si],al
00003947  0000              add [bx+si],al
00003949  0000              add [bx+si],al
0000394B  0000              add [bx+si],al
0000394D  0000              add [bx+si],al
0000394F  0000              add [bx+si],al
00003951  0003              add [bp+di],al
00003953  0000              add [bx+si],al
00003955  003F              add [bx],bh
00003957  F00003            lock add [bp+di],al
0000395A  FF                db 0xff
0000395B  FF00              inc word [bx+si]
0000395D  0FFF              ud0
0000395F  FFC0              inc ax
00003961  3F                aas
00003962  C00FF0            ror byte [bx],byte 0xf0
00003965  0000              add [bx+si],al
00003967  0000              add [bx+si],al
00003969  0000              add [bx+si],al
0000396B  0000              add [bx+si],al
0000396D  0000              add [bx+si],al
0000396F  0000              add [bx+si],al
00003971  0000              add [bx+si],al
00003973  0000              add [bx+si],al
00003975  0000              add [bx+si],al
00003977  0000              add [bx+si],al
00003979  0000              add [bx+si],al
0000397B  0000              add [bx+si],al
0000397D  0000              add [bx+si],al
0000397F  0000              add [bx+si],al
00003981  0000              add [bx+si],al
00003983  0000              add [bx+si],al
00003985  0000              add [bx+si],al
00003987  0000              add [bx+si],al
00003989  0003              add [bp+di],al
0000398B  0000              add [bx+si],al
0000398D  000F              add [bx],cl
0000398F  C00000            rol byte [bx+si],byte 0x0
00003992  3F                aas
00003993  F00003            lock add [bp+di],al
00003996  FF                db 0xff
00003997  FF00              inc word [bx+si]
00003999  0F                db 0x0f
0000399A  F03F              lock aas
0000399C  C00000            rol byte [bx+si],byte 0x0
0000399F  0000              add [bx+si],al
000039A1  0000              add [bx+si],al
000039A3  0000              add [bx+si],al
000039A5  0000              add [bx+si],al
000039A7  0000              add [bx+si],al
000039A9  0000              add [bx+si],al
000039AB  0000              add [bx+si],al
000039AD  0000              add [bx+si],al
000039AF  0000              add [bx+si],al
000039B1  0000              add [bx+si],al
000039B3  0000              add [bx+si],al
000039B5  0000              add [bx+si],al
000039B7  0000              add [bx+si],al
000039B9  0000              add [bx+si],al
000039BB  0000              add [bx+si],al
000039BD  0000              add [bx+si],al
000039BF  0000              add [bx+si],al
000039C1  0003              add [bp+di],al
000039C3  0000              add [bx+si],al
000039C5  000F              add [bx],cl
000039C7  C00000            rol byte [bx+si],byte 0x0
000039CA  3F                aas
000039CB  F00000            lock add [bx+si],al
000039CE  3F                aas
000039CF  F00000            lock add [bx+si],al
000039D2  F03C00            lock cmp al,0x0
000039D5  03C0              add ax,ax
000039D7  0F0000            sldt [bx+si]
000039DA  0000              add [bx+si],al
000039DC  0000              add [bx+si],al
000039DE  0000              add [bx+si],al
000039E0  0000              add [bx+si],al
000039E2  0000              add [bx+si],al
000039E4  0000              add [bx+si],al
000039E6  0000              add [bx+si],al
000039E8  0000              add [bx+si],al
000039EA  0000              add [bx+si],al
000039EC  0000              add [bx+si],al
000039EE  0000              add [bx+si],al
000039F0  0000              add [bx+si],al
000039F2  0000              add [bx+si],al
000039F4  0000              add [bx+si],al
000039F6  0000              add [bx+si],al
000039F8  0000              add [bx+si],al
000039FA  0300              add ax,[bx+si]
000039FC  0000              add [bx+si],al
000039FE  0300              add ax,[bx+si]
00003A00  0000              add [bx+si],al
00003A02  0FC000            xadd [bx+si],al
00003A05  003F              add [bx],bh
00003A07  F00000            lock add [bx+si],al
00003A0A  3CF0              cmp al,0xf0
00003A0C  0000              add [bx+si],al
00003A0E  F03C00            lock cmp al,0x0
00003A11  00C0              add al,al
00003A13  0C00              or al,0x0
00003A15  0000              add [bx+si],al
00003A17  0000              add [bx+si],al
00003A19  0000              add [bx+si],al
00003A1B  0000              add [bx+si],al
00003A1D  0000              add [bx+si],al
00003A1F  0000              add [bx+si],al
00003A21  0000              add [bx+si],al
00003A23  0000              add [bx+si],al
00003A25  0000              add [bx+si],al
00003A27  0000              add [bx+si],al
00003A29  0000              add [bx+si],al
00003A2B  0000              add [bx+si],al
00003A2D  0000              add [bx+si],al
00003A2F  0000              add [bx+si],al
00003A31  0000              add [bx+si],al
00003A33  0000              add [bx+si],al
00003A35  0003              add [bp+di],al
00003A37  0000              add [bx+si],al
00003A39  0003              add [bp+di],al
00003A3B  0000              add [bx+si],al
00003A3D  000F              add [bx],cl
00003A3F  C00000            rol byte [bx+si],byte 0x0
00003A42  0CC0              or al,0xc0
00003A44  0000              add [bx+si],al
00003A46  0000              add [bx+si],al
00003A48  0000              add [bx+si],al
00003A4A  3030              xor [bx+si],dh
00003A4C  0000              add [bx+si],al
00003A4E  0000              add [bx+si],al
00003A50  0000              add [bx+si],al
00003A52  0000              add [bx+si],al
00003A54  0000              add [bx+si],al
00003A56  0000              add [bx+si],al
00003A58  0000              add [bx+si],al
00003A5A  0000              add [bx+si],al
00003A5C  0000              add [bx+si],al
00003A5E  0000              add [bx+si],al
00003A60  0000              add [bx+si],al
00003A62  0000              add [bx+si],al
00003A64  0000              add [bx+si],al
00003A66  0000              add [bx+si],al
00003A68  0000              add [bx+si],al
00003A6A  0000              add [bx+si],al
00003A6C  0000              add [bx+si],al
00003A6E  0300              add ax,[bx+si]
00003A70  0000              add [bx+si],al
00003A72  0300              add ax,[bx+si]
00003A74  0000              add [bx+si],al
00003A76  0300              add ax,[bx+si]
00003A78  0000              add [bx+si],al
00003A7A  0300              add ax,[bx+si]
00003A7C  0000              add [bx+si],al
00003A7E  0000              add [bx+si],al
00003A80  0000              add [bx+si],al
00003A82  0000              add [bx+si],al
00003A84  0000              add [bx+si],al
00003A86  00C0              add al,al
00003A88  0000              add [bx+si],al
00003A8A  00C0              add al,al
00003A8C  0000              add [bx+si],al
00003A8E  C0C0C0            rol al,byte 0xc0
00003A91  0030              add [bx+si],dh
00003A93  C3                ret
00003A94  0000              add [bx+si],al
00003A96  0C0C              or al,0xc
00003A98  0000              add [bx+si],al
00003A9A  0000              add [bx+si],al
00003A9C  000F              add [bx],cl
00003A9E  F003FC            lock add di,sp
00003AA1  0000              add [bx+si],al
00003AA3  0000              add [bx+si],al
00003AA5  000C              add [si],cl
00003AA7  0C00              or al,0x0
00003AA9  0030              add [bx+si],dh
00003AAB  C3                ret
00003AAC  0000              add [bx+si],al
00003AAE  C0C0C0            rol al,byte 0xc0
00003AB1  0000              add [bx+si],al
00003AB3  C00000            rol byte [bx+si],byte 0x0
00003AB6  00C0              add al,al
00003AB8  0000              add [bx+si],al
00003ABA  0000              add [bx+si],al
00003ABC  0000              add [bx+si],al
00003ABE  00C0              add al,al
00003AC0  0000              add [bx+si],al
00003AC2  00C0              add al,al
00003AC4  0000              add [bx+si],al
00003AC6  C0C0C0            rol al,byte 0xc0
00003AC9  0030              add [bx+si],dh
00003ACB  C3                ret
00003ACC  0000              add [bx+si],al
00003ACE  0C0C              or al,0xc
00003AD0  0000              add [bx+si],al
00003AD2  0000              add [bx+si],al
00003AD4  000F              add [bx],cl
00003AD6  F003FC            lock add di,sp
00003AD9  0000              add [bx+si],al
00003ADB  0000              add [bx+si],al
00003ADD  000C              add [si],cl
00003ADF  0C00              or al,0x0
00003AE1  0030              add [bx+si],dh
00003AE3  C3                ret
00003AE4  0000              add [bx+si],al
00003AE6  C0C0C0            rol al,byte 0xc0
00003AE9  0000              add [bx+si],al
00003AEB  C00000            rol byte [bx+si],byte 0x0
00003AEE  00C0              add al,al
00003AF0  0000              add [bx+si],al
00003AF2  0000              add [bx+si],al
00003AF4  0000              add [bx+si],al
00003AF6  0000              add [bx+si],al
00003AF8  0000              add [bx+si],al
00003AFA  0000              add [bx+si],al
00003AFC  0000              add [bx+si],al
00003AFE  0000              add [bx+si],al
00003B00  0000              add [bx+si],al
00003B02  0000              add [bx+si],al
00003B04  0000              add [bx+si],al
00003B06  0000              add [bx+si],al
00003B08  0000              add [bx+si],al
00003B0A  0000              add [bx+si],al
00003B0C  0000              add [bx+si],al
00003B0E  0000              add [bx+si],al
00003B10  0000              add [bx+si],al
00003B12  0000              add [bx+si],al
00003B14  0000              add [bx+si],al
00003B16  0000              add [bx+si],al
00003B18  0000              add [bx+si],al
00003B1A  0000              add [bx+si],al
00003B1C  0000              add [bx+si],al
00003B1E  0000              add [bx+si],al
00003B20  0000              add [bx+si],al
00003B22  0000              add [bx+si],al
00003B24  0000              add [bx+si],al
00003B26  0000              add [bx+si],al
00003B28  0000              add [bx+si],al
00003B2A  0000              add [bx+si],al
00003B2C  0000              add [bx+si],al
00003B2E  7A2E              jpe 0x3b5e
00003B30  190E0076          sbb [0x7600],cx
00003B34  2E0E              cs push cs
00003B36  0E                push cs
00003B37  0000              add [bx+si],al
00003B39  0000              add [bx+si],al
00003B3B  0000              add [bx+si],al
00003B3D  0000              add [bx+si],al
00003B3F  0000              add [bx+si],al
00003B41  0000              add [bx+si],al
00003B43  0000              add [bx+si],al
00003B45  0000              add [bx+si],al
00003B47  0000              add [bx+si],al
00003B49  0000              add [bx+si],al
00003B4B  0000              add [bx+si],al
00003B4D  0000              add [bx+si],al
00003B4F  0000              add [bx+si],al
00003B51  0000              add [bx+si],al
00003B53  0000              add [bx+si],al
00003B55  0000              add [bx+si],al
00003B57  0000              add [bx+si],al
00003B59  0000              add [bx+si],al
00003B5B  0000              add [bx+si],al
00003B5D  0000              add [bx+si],al
00003B5F  0000              add [bx+si],al
00003B61  0000              add [bx+si],al
00003B63  0000              add [bx+si],al
00003B65  0000              add [bx+si],al
00003B67  0000              add [bx+si],al
00003B69  0000              add [bx+si],al
00003B6B  0000              add [bx+si],al
00003B6D  0000              add [bx+si],al
00003B6F  0000              add [bx+si],al
00003B71  0000              add [bx+si],al
00003B73  0000              add [bx+si],al
00003B75  0000              add [bx+si],al
00003B77  0000              add [bx+si],al
00003B79  0000              add [bx+si],al
00003B7B  0000              add [bx+si],al
00003B7D  0000              add [bx+si],al
00003B7F  0000              add [bx+si],al
00003B81  0000              add [bx+si],al
00003B83  0000              add [bx+si],al
00003B85  0000              add [bx+si],al
00003B87  0000              add [bx+si],al
00003B89  0000              add [bx+si],al
00003B8B  0000              add [bx+si],al
00003B8D  0000              add [bx+si],al
00003B8F  0000              add [bx+si],al
00003B91  0000              add [bx+si],al
00003B93  0000              add [bx+si],al
00003B95  0000              add [bx+si],al
00003B97  0000              add [bx+si],al
00003B99  0000              add [bx+si],al
00003B9B  0000              add [bx+si],al
00003B9D  0000              add [bx+si],al
00003B9F  0000              add [bx+si],al
00003BA1  0000              add [bx+si],al
00003BA3  0000              add [bx+si],al
00003BA5  0000              add [bx+si],al
00003BA7  0000              add [bx+si],al
00003BA9  026D30            add ch,[di+0x30]
00003BAC  1A26006D          sbb ah,[0x6d00]
00003BB0  300E0E00          xor [0xe],cl
00003BB4  0400              add al,0x0
00003BB6  0000              add [bx+si],al
00003BB8  0000              add [bx+si],al
00003BBA  0000              add [bx+si],al
00003BBC  0000              add [bx+si],al
00003BBE  0000              add [bx+si],al
00003BC0  0000              add [bx+si],al
00003BC2  0000              add [bx+si],al
00003BC4  0000              add [bx+si],al
00003BC6  0000              add [bx+si],al
00003BC8  0000              add [bx+si],al
00003BCA  0000              add [bx+si],al
00003BCC  0000              add [bx+si],al
00003BCE  0000              add [bx+si],al
00003BD0  0000              add [bx+si],al
00003BD2  0000              add [bx+si],al
00003BD4  0000              add [bx+si],al
00003BD6  0000              add [bx+si],al
00003BD8  0000              add [bx+si],al
00003BDA  0000              add [bx+si],al
00003BDC  0000              add [bx+si],al
00003BDE  0000              add [bx+si],al
00003BE0  0000              add [bx+si],al
00003BE2  0000              add [bx+si],al
00003BE4  0000              add [bx+si],al
00003BE6  0000              add [bx+si],al
00003BE8  0000              add [bx+si],al
00003BEA  0000              add [bx+si],al
00003BEC  0000              add [bx+si],al
00003BEE  0000              add [bx+si],al
00003BF0  0000              add [bx+si],al
00003BF2  0000              add [bx+si],al
00003BF4  0000              add [bx+si],al
00003BF6  0000              add [bx+si],al
00003BF8  0000              add [bx+si],al
00003BFA  0000              add [bx+si],al
00003BFC  0000              add [bx+si],al
00003BFE  0000              add [bx+si],al
00003C00  0000              add [bx+si],al
00003C02  0000              add [bx+si],al
00003C04  0000              add [bx+si],al
00003C06  0000              add [bx+si],al
00003C08  0000              add [bx+si],al
00003C0A  0000              add [bx+si],al
00003C0C  0000              add [bx+si],al
00003C0E  0000              add [bx+si],al
00003C10  0000              add [bx+si],al
00003C12  0000              add [bx+si],al
00003C14  0000              add [bx+si],al
00003C16  0000              add [bx+si],al
00003C18  0000              add [bx+si],al
00003C1A  0000              add [bx+si],al
00003C1C  0000              add [bx+si],al
00003C1E  0000              add [bx+si],al
00003C20  0000              add [bx+si],al
00003C22  0000              add [bx+si],al
00003C24  0003              add [bp+di],al
00003C26  8B2E1A26          mov bp,[0x261a]
00003C2A  008B2E0E          add [bp+di+0xe2e],cl
00003C2E  0E                push cs
00003C2F  0004              add [si],al
00003C31  0000              add [bx+si],al
00003C33  0000              add [bx+si],al
00003C35  0000              add [bx+si],al
00003C37  0000              add [bx+si],al
00003C39  0000              add [bx+si],al
00003C3B  0000              add [bx+si],al
00003C3D  0000              add [bx+si],al
00003C3F  0000              add [bx+si],al
00003C41  0000              add [bx+si],al
00003C43  0000              add [bx+si],al
00003C45  0000              add [bx+si],al
00003C47  0000              add [bx+si],al
00003C49  0000              add [bx+si],al
00003C4B  0000              add [bx+si],al
00003C4D  0000              add [bx+si],al
00003C4F  0000              add [bx+si],al
00003C51  0000              add [bx+si],al
00003C53  0000              add [bx+si],al
00003C55  0000              add [bx+si],al
00003C57  0000              add [bx+si],al
00003C59  0000              add [bx+si],al
00003C5B  0000              add [bx+si],al
00003C5D  0000              add [bx+si],al
00003C5F  0000              add [bx+si],al
00003C61  0000              add [bx+si],al
00003C63  0000              add [bx+si],al
00003C65  0000              add [bx+si],al
00003C67  0000              add [bx+si],al
00003C69  0000              add [bx+si],al
00003C6B  0000              add [bx+si],al
00003C6D  0000              add [bx+si],al
00003C6F  0000              add [bx+si],al
00003C71  0000              add [bx+si],al
00003C73  0000              add [bx+si],al
00003C75  0000              add [bx+si],al
00003C77  0000              add [bx+si],al
00003C79  0000              add [bx+si],al
00003C7B  0000              add [bx+si],al
00003C7D  0000              add [bx+si],al
00003C7F  0000              add [bx+si],al
00003C81  0000              add [bx+si],al
00003C83  0000              add [bx+si],al
00003C85  0000              add [bx+si],al
00003C87  0000              add [bx+si],al
00003C89  0000              add [bx+si],al
00003C8B  0000              add [bx+si],al
00003C8D  0000              add [bx+si],al
00003C8F  0000              add [bx+si],al
00003C91  0000              add [bx+si],al
00003C93  0000              add [bx+si],al
00003C95  0000              add [bx+si],al
00003C97  0000              add [bx+si],al
00003C99  0000              add [bx+si],al
00003C9B  0000              add [bx+si],al
00003C9D  0000              add [bx+si],al
00003C9F  0000              add [bx+si],al
00003CA1  00922E19          add [bp+si+0x192e],dl
00003CA5  2600922E0E        add [es:bp+si+0xe2e],dl
00003CAA  0E                push cs
00003CAB  0000              add [bx+si],al
00003CAD  0000              add [bx+si],al
00003CAF  0000              add [bx+si],al
00003CB1  0000              add [bx+si],al
00003CB3  0000              add [bx+si],al
00003CB5  0000              add [bx+si],al
00003CB7  0000              add [bx+si],al
00003CB9  0000              add [bx+si],al
00003CBB  0000              add [bx+si],al
00003CBD  0000              add [bx+si],al
00003CBF  0000              add [bx+si],al
00003CC1  0000              add [bx+si],al
00003CC3  0000              add [bx+si],al
00003CC5  0000              add [bx+si],al
00003CC7  0000              add [bx+si],al
00003CC9  0000              add [bx+si],al
00003CCB  0000              add [bx+si],al
00003CCD  0000              add [bx+si],al
00003CCF  0000              add [bx+si],al
00003CD1  0000              add [bx+si],al
00003CD3  0000              add [bx+si],al
00003CD5  0000              add [bx+si],al
00003CD7  0000              add [bx+si],al
00003CD9  0000              add [bx+si],al
00003CDB  0000              add [bx+si],al
00003CDD  0000              add [bx+si],al
00003CDF  0000              add [bx+si],al
00003CE1  0000              add [bx+si],al
00003CE3  0000              add [bx+si],al
00003CE5  0000              add [bx+si],al
00003CE7  0000              add [bx+si],al
00003CE9  0000              add [bx+si],al
00003CEB  0000              add [bx+si],al
00003CED  0000              add [bx+si],al
00003CEF  0000              add [bx+si],al
00003CF1  0000              add [bx+si],al
00003CF3  0000              add [bx+si],al
00003CF5  0000              add [bx+si],al
00003CF7  0000              add [bx+si],al
00003CF9  0000              add [bx+si],al
00003CFB  0000              add [bx+si],al
00003CFD  0000              add [bx+si],al
00003CFF  0000              add [bx+si],al
00003D01  0000              add [bx+si],al
00003D03  0000              add [bx+si],al
00003D05  0000              add [bx+si],al
00003D07  0000              add [bx+si],al
00003D09  0000              add [bx+si],al
00003D0B  0000              add [bx+si],al
00003D0D  0000              add [bx+si],al
00003D0F  0000              add [bx+si],al
00003D11  0000              add [bx+si],al
00003D13  0000              add [bx+si],al
00003D15  0000              add [bx+si],al
00003D17  0000              add [bx+si],al
00003D19  0000              add [bx+si],al
00003D1B  0000              add [bx+si],al
00003D1D  02AD2C1A          add ch,[di+0x1a2c]
00003D21  2600AD2C0E        add [es:di+0xe2c],ch
00003D26  0E                push cs
00003D27  0004              add [si],al
00003D29  0000              add [bx+si],al
00003D2B  0000              add [bx+si],al
00003D2D  0000              add [bx+si],al
00003D2F  0000              add [bx+si],al
00003D31  0000              add [bx+si],al
00003D33  0000              add [bx+si],al
00003D35  0000              add [bx+si],al
00003D37  0000              add [bx+si],al
00003D39  0000              add [bx+si],al
00003D3B  0000              add [bx+si],al
00003D3D  0000              add [bx+si],al
00003D3F  0000              add [bx+si],al
00003D41  0000              add [bx+si],al
00003D43  0000              add [bx+si],al
00003D45  0000              add [bx+si],al
00003D47  0000              add [bx+si],al
00003D49  0000              add [bx+si],al
00003D4B  0000              add [bx+si],al
00003D4D  0000              add [bx+si],al
00003D4F  0000              add [bx+si],al
00003D51  0000              add [bx+si],al
00003D53  0000              add [bx+si],al
00003D55  0000              add [bx+si],al
00003D57  0000              add [bx+si],al
00003D59  0000              add [bx+si],al
00003D5B  0000              add [bx+si],al
00003D5D  0000              add [bx+si],al
00003D5F  0000              add [bx+si],al
00003D61  0000              add [bx+si],al
00003D63  0000              add [bx+si],al
00003D65  0000              add [bx+si],al
00003D67  0000              add [bx+si],al
00003D69  0000              add [bx+si],al
00003D6B  0000              add [bx+si],al
00003D6D  0000              add [bx+si],al
00003D6F  0000              add [bx+si],al
00003D71  0000              add [bx+si],al
00003D73  0000              add [bx+si],al
00003D75  0000              add [bx+si],al
00003D77  0000              add [bx+si],al
00003D79  0000              add [bx+si],al
00003D7B  0000              add [bx+si],al
00003D7D  0000              add [bx+si],al
00003D7F  0000              add [bx+si],al
00003D81  0000              add [bx+si],al
00003D83  0000              add [bx+si],al
00003D85  0000              add [bx+si],al
00003D87  0000              add [bx+si],al
00003D89  0000              add [bx+si],al
00003D8B  0000              add [bx+si],al
00003D8D  0000              add [bx+si],al
00003D8F  0000              add [bx+si],al
00003D91  0000              add [bx+si],al
00003D93  0000              add [bx+si],al
00003D95  0000              add [bx+si],al
00003D97  0000              add [bx+si],al
00003D99  E6C8              out 0xc8,al
00003D9B  0000              add [bx+si],al
00003D9D  0038              add [bx+si],bh
00003D9F  007000            add [bx+si+0x0],dh
00003DA2  A800              test al,0x0
00003DA4  E000              loopne 0x3da6
00003DA6  1801              sbb [bx+di],al
00003DA8  50                push ax
00003DA9  018801C0          add [bx+si-0x3fff],cx
00003DAD  01F8              add ax,di
00003DAF  0130              add [bx+si],si
00003DB1  026802            add ch,[bx+si+0x2]
00003DB4  A002D8            mov al,[0xd802]
00003DB7  0210              add dl,[bx+si]
00003DB9  034803            add cx,[bx+si+0x3]
00003DBC  00E2              add dl,ah
00003DBE  1E                push ds
00003DBF  FF01              inc word [bx+di]
00003DC1  60                pushaw
00003DC2  FFA000FF          jmp word [bx+si-0x100]
00003DC6  FF01              inc word [bx+di]
00003DC8  0000              add [bx+si],al
00003DCA  000E0100          add [0x1],cl
00003DCE  0000              add [bx+si],al
00003DD0  0200              add al,[bx+si]
00003DD2  0200              add al,[bx+si]
00003DD4  E308              jcxz 0x3dde
00003DD6  280A              sub [bp+si],cl
00003DD8  D9                db 0xd9
00003DD9  0B550D            or dx,[di+0xd]
00003DDC  C6                db 0xc6
00003DDD  11D9              adc cx,bx
00003DDF  0B550D            or dx,[di+0xd]
00003DE2  3C0F              cmp al,0xf
00003DE4  C6                db 0xc6
00003DE5  11FF              adc di,di
00003DE7  13A91AC6          adc bp,[bx+di-0x39e6]
00003DEB  11FF              adc di,di
00003DED  13DA              adc bx,dx
00003DEF  16                push ss
00003DF0  A91AFE            test ax,0xfe1a
00003DF3  1DFE27            sbb ax,0x27fe
00003DF6  A91AFE            test ax,0xfe1a
00003DF9  1D4722            sbb ax,0x2247
00003DFC  FE                db 0xfe
00003DFD  27                daa
00003DFE  FD                std
00003DFF  2CFC              sub al,0xfc
00003E01  3BFE              cmp di,si
00003E03  27                daa
00003E04  0200              add al,[bx+si]
00003E06  F005F603          lock add ax,0x3f6
00003E0A  0200              add al,[bx+si]
00003E0C  F005F603          lock add ax,0x3f6
00003E10  0200              add al,[bx+si]
00003E12  0200              add al,[bx+si]
00003E14  6A30              push byte +0x30
00003E16  6E                outsb
00003E17  308A2E8E          xor [bp+si-0x71d2],cl
00003E1B  2E8A2E8E2E        mov ch,[cs:0x2e8e]
00003E20  AA                stosb
00003E21  2CAE              sub al,0xae
00003E23  2C00              sub al,0x0
00003E25  003C              add [si],bh
00003E27  0020              add [bx+si],ah
00003E29  3C00              cmp al,0x0
00003E2B  0000              add [bx+si],al
00003E2D  0000              add [bx+si],al
00003E2F  0105              add [di],ax
00003E31  0009              add [bx+di],cl
00003E33  60                pushaw
00003E34  0000              add [bx+si],al
00003E36  25A800            and ax,0xa8
00003E39  006815            add [bx+si+0x15],ch
00003E3C  0000              add [bx+si],al
00003E3E  50                push ax
00003E3F  0900              or [bx+si],ax
00003E41  00900A00          add [bx+si+0xa],dl
00003E45  00A00600          add [bx+si+0x6],ah
00003E49  006000            add [bx+si+0x0],ah
00003E4C  0000              add [bx+si],al
00003E4E  50                push ax
00003E4F  0000              add [bx+si],al
00003E51  00900000          add [bx+si+0x0],dl
00003E55  00A00000          add [bx+si+0x0],ah
00003E59  006000            add [bx+si+0x0],ah
00003E5C  0000              add [bx+si],al
00003E5E  50                push ax
00003E5F  0000              add [bx+si],al
00003E61  00900000          add [bx+si+0x0],dl
00003E65  00A00000          add [bx+si+0x0],ah
00003E69  0003              add [bp+di],al
00003E6B  0000              add [bx+si],al
00003E6D  0000              add [bx+si],al
00003E6F  0007              add [bx],al
00003E71  AA                stosb
00003E72  AA                stosb
00003E73  A007A2            mov al,[0xa207]
00003E76  AA                stosb
00003E77  A007AA            mov al,[0xaa07]
00003E7A  AA                stosb
00003E7B  2007              and [bx],al
00003E7D  AA                stosb
00003E7E  8AA007EA          mov ah,[bx+si-0x15f9]
00003E82  AA                stosb
00003E83  A005E2            mov al,[0xe205]
00003E86  AA                stosb
00003E87  A001EA            mov al,[0xea01]
00003E8A  AA                stosb
00003E8B  A001FA            mov al,[0xfa01]
00003E8E  A2A001            mov [0x1a0],al
00003E91  7EAA              jng 0x3e3d
00003E93  A0005F            mov al,[0x5f00]
00003E96  FA                cli
00003E97  A00015            mov al,[0x1500]
00003E9A  7FF0              jg 0x3e8c
00003E9C  0000              add [bx+si],al
00003E9E  55                push bp
00003E9F  50                push ax
00003EA0  0000              add [bx+si],al
00003EA2  0000              add [bx+si],al
00003EA4  00060000          add [0x0],al
00003EA8  0000              add [bx+si],al
00003EAA  40                inc ax
00003EAB  0000              add [bx+si],al
00003EAD  004000            add [bx+si+0x0],al
00003EB0  0001              add [bx+di],al
00003EB2  40                inc ax
00003EB3  0000              add [bx+si],al
00003EB5  034000            add ax,[bx+si+0x0]
00003EB8  000F              add [bx],cl
00003EBA  C00000            rol byte [bx+si],byte 0x0
00003EBD  3F                aas
00003EBE  C00000            rol byte [bx+si],byte 0x0
00003EC1  FF00              inc word [bx+si]
00003EC3  0003              add [bp+di],al
00003EC5  DF00              fild word [bx+si]
00003EC7  000F              add [bx],cl
00003EC9  7C00              jl 0x3ecb
00003ECB  003D              add [di],bh
00003ECD  F00000            lock add [bx+si],al
00003ED0  F7C0000F          test ax,0xf00
00003ED4  FF00              inc word [bx+si]
00003ED6  0017              add [bx],dl
00003ED8  F00000            lock add [bx+si],al
00003EDB  0000              add [bx+si],al
00003EDD  0000              add [bx+si],al
00003EDF  0100              add [bx+si],ax
00003EE1  0000              add [bx+si],al
00003EE3  0020              add [bx+si],ah
00003EE5  0000              add [bx+si],al
00003EE7  40                inc ax
00003EE8  A00001            mov al,[0x100]
00003EEB  42                inc dx
00003EEC  AA                stosb
00003EED  80054A            add byte [di],0x4a
00003EF0  AA                stosb
00003EF1  80054A            add byte [di],0x4a
00003EF4  AA                stosb
00003EF5  80054A            add byte [di],0x4a
00003EF8  AA                stosb
00003EF9  A815              test al,0x15
00003EFB  0AAAA015          or ch,[bp+si+0x15a0]
00003EFF  06                push es
00003F00  AA                stosb
00003F01  801505            adc byte [di],0x5
00003F04  AA                stosb
00003F05  0014              add [si],dl
00003F07  1000              adc [bx+si],al
00003F09  0015              add [di],dl
00003F0B  40                inc ax
00003F0C  0000              add [bx+si],al
00003F0E  155555            adc ax,0x5555
00003F11  40                inc ax
00003F12  155550            adc ax,0x5055
00003F15  0015              add [di],dl
00003F17  54                push sp
00003F18  0000              add [bx+si],al
00003F1A  0105              add [di],ax
00003F1C  0000              add [bx+si],al
00003F1E  0000              add [bx+si],al
00003F20  0002              add [bp+si],al
00003F22  A00A80            mov al,[0x800a]
00003F25  0AA82AA0          or ch,[bx+si-0x5fd6]
00003F29  2BEA              sub bp,dx
00003F2B  AA                stosb
00003F2C  A82F              test al,0x2f
00003F2E  AA                stosb
00003F2F  AA                stosb
00003F30  A82F              test al,0x2f
00003F32  AA                stosb
00003F33  AA                stosb
00003F34  A82B              test al,0x2b
00003F36  AA                stosb
00003F37  AA                stosb
00003F38  A80A              test al,0xa
00003F3A  EAAAA00AAA        jmp word 0xaa0a:0xa0aa
00003F3F  AA                stosb
00003F40  A002AA            mov al,[0xaa02]
00003F43  AA                stosb
00003F44  8000AA            add byte [bx+si],0xaa
00003F47  AA                stosb
00003F48  0000              add [bx+si],al
00003F4A  2AA80000          sub ch,[bx+si+0x0]
00003F4E  02800000          add al,[bx+si+0x0]
00003F52  0000              add [bx+si],al
00003F54  0002              add [bp+si],al
00003F56  050000            add ax,0x0
00003F59  0000              add [bx+si],al
00003F5B  0000              add [bx+si],al
00003F5D  0200              add al,[bx+si]
00003F5F  0000              add [bx+si],al
00003F61  02800000          add al,[bx+si+0x0]
00003F65  00800000          add [bx+si+0x0],al
00003F69  03C0              add ax,ax
00003F6B  0000              add [bx+si],al
00003F6D  03C0              add ax,ax
00003F6F  0000              add [bx+si],al
00003F71  03C0              add ax,ax
00003F73  0000              add [bx+si],al
00003F75  03C0              add ax,ax
00003F77  0000              add [bx+si],al
00003F79  03C0              add ax,ax
00003F7B  0000              add [bx+si],al
00003F7D  055150            add ax,0x5051
00003F80  0401              add al,0x1
00003F82  41                inc cx
00003F83  1005              adc [di],al
00003F85  55                push bp
00003F86  55                push bp
00003F87  50                push ax
00003F88  015554            add [di+0x54],dx
00003F8B  0000              add [bx+si],al
00003F8D  0000              add [bx+si],al
00003F8F  0004              add [si],al
00003F91  0000              add [bx+si],al
00003F93  002A              add [bp+si],ch
00003F95  A800              test al,0x0
00003F97  0283C280          add al,[bp+di-0x7f3e]
00003F9B  0803              or [bp+di],al
00003F9D  C02008            shl byte [bx+si],byte 0x8
00003FA0  0F                db 0x0f
00003FA1  F02023            lock and [bp+di],ah
00003FA4  FF                db 0xff
00003FA5  FFC8              dec ax
00003FA7  2F                das
00003FA8  FF                db 0xff
00003FA9  FF                db 0xff
00003FAA  F8                clc
00003FAB  23FF              and di,di
00003FAD  FFC8              dec ax
00003FAF  20FF              and bh,bh
00003FB1  FF08              dec word [bx+si]
00003FB3  203F              and [bx],bh
00003FB5  FC                cld
00003FB6  0820              or [bx+si],ah
00003FB8  3F                aas
00003FB9  FC                cld
00003FBA  0808              or [bx+si],cl
00003FBC  FF                db 0xff
00003FBD  FF20              jmp word [bx+si]
00003FBF  08FC              or ah,bh
00003FC1  3F                aas
00003FC2  2002              and [bp+si],al
00003FC4  800280            add byte [bp+si],0x80
00003FC7  002A              add [bp+si],ch
00003FC9  A800              test al,0x0
00003FCB  06                push es
00003FCC  0000              add [bx+si],al
00003FCE  003F              add [bx],bh
00003FD0  F00000            lock add [bx+si],al
00003FD3  FF                db 0xff
00003FD4  FC                cld
00003FD5  0003              add [bp+di],al
00003FD7  FF                db 0xff
00003FD8  FF00              inc word [bx+si]
00003FDA  0F                db 0x0f
00003FDB  F03F              lock aas
00003FDD  C00FCF            ror byte [bx],byte 0xcf
00003FE0  CF                iretw
00003FE1  C00FCF            ror byte [bx],byte 0xcf
00003FE4  CF                iretw
00003FE5  C00FCF            ror byte [bx],byte 0xcf
00003FE8  CF                iretw
00003FE9  C003F3            rol byte [bp+di],byte 0xf3
00003FEC  3F                aas
00003FED  0000              add [bx+si],al
00003FEF  F33C00            rep cmp al,0x0
00003FF2  0033              add [bp+di],dh
00003FF4  3000              xor [bx+si],al
00003FF6  0020              add [bx+si],ah
00003FF8  2000              and [bx+si],al
00003FFA  002A              add [bp+si],ch
00003FFC  A00000            mov al,[0x0]
00003FFF  2020              and [bx+si],ah
00004001  0000              add [bx+si],al
00004003  0A80003F          or al,[bx+si+0x3f00]
00004007  F0C00CC0          lock ror byte [si],byte 0xc0
0000400B  0C3F              or al,0x3f
0000400D  F00000            lock add [bx+si],al
00004010  C0                db 0xc0
00004011  30FF              xor bh,bh
00004013  FC                cld
00004014  C000F0            rol byte [bx+si],byte 0xf0
00004017  30CC              xor ah,cl
00004019  0CC3              or al,0xc3
0000401B  0CC0              or al,0xc0
0000401D  F03030            lock xor [bx+si],dh
00004020  C00CC3            ror byte [si],byte 0xc3
00004023  0C3C              or al,0x3c
00004025  F003FC            lock add di,sp
00004028  0300              add ax,[bx+si]
0000402A  0300              add ax,[bx+si]
0000402C  FF                db 0xff
0000402D  FC                cld
0000402E  33FC              xor di,sp
00004030  C3                ret
00004031  0CC3              or al,0xc3
00004033  0C3C              or al,0x3c
00004035  0C3F              or al,0x3f
00004037  F0C3              lock ret
00004039  0CC3              or al,0xc3
0000403B  0C3C              or al,0x3c
0000403D  300E0100          xor [0x1],cl
00004041  0000              add [bx+si],al
00004043  0000              add [bx+si],al
00004045  0000              add [bx+si],al
00004047  0000              add [bx+si],al
00004049  0000              add [bx+si],al
0000404B  0000              add [bx+si],al
0000404D  0000              add [bx+si],al
0000404F  0000              add [bx+si],al
00004051  0000              add [bx+si],al
00004053  0000              add [bx+si],al
00004055  0000              add [bx+si],al
00004057  0000              add [bx+si],al
00004059  0000              add [bx+si],al
0000405B  0000              add [bx+si],al
0000405D  0000              add [bx+si],al
0000405F  0000              add [bx+si],al
00004061  0000              add [bx+si],al
00004063  0000              add [bx+si],al
00004065  0000              add [bx+si],al
00004067  0000              add [bx+si],al
00004069  0000              add [bx+si],al
0000406B  0000              add [bx+si],al
0000406D  0000              add [bx+si],al
0000406F  0000              add [bx+si],al
00004071  0000              add [bx+si],al
00004073  0000              add [bx+si],al
00004075  0000              add [bx+si],al
00004077  0000              add [bx+si],al
00004079  0000              add [bx+si],al
0000407B  0000              add [bx+si],al
0000407D  0000              add [bx+si],al
0000407F  0000              add [bx+si],al
00004081  0000              add [bx+si],al
00004083  0000              add [bx+si],al
00004085  0000              add [bx+si],al
00004087  0000              add [bx+si],al
00004089  0000              add [bx+si],al
0000408B  0000              add [bx+si],al
0000408D  0000              add [bx+si],al
0000408F  0100              add [bx+si],ax
00004091  0000              add [bx+si],al
00004093  0000              add [bx+si],al
00004095  0000              add [bx+si],al
00004097  009B0F8A          add [bp+di-0x75f1],bl
0000409B  0F790F            vmwrite ecx,dword [bx]
0000409E  6A0F              push byte +0xf
000040A0  0100              add [bx+si],ax
000040A2  90                nop
000040A3  01B401E0          add [si-0x1fff],si
000040A7  0115              add [di],dx
000040A9  025802            add bl,[bx+si+0x2]
000040AC  1502E0            adc ax,0xe002
000040AF  01B40190          add [si-0x6fff],si
000040B3  01881302          add [bx+si+0x213],cx
000040B7  007017            add [bx+si+0x17],dh
000040BA  0200              add al,[bx+si]
000040BC  4C                dec sp
000040BD  1D0200            sbb ax,0x2
000040C0  1027              adc [bx],ah
000040C2  0200              add al,[bx+si]
000040C4  A302E0            mov [0xe002],ax
000040C7  0223              add ah,[bp+di]
000040C9  036B03            add bp,[bp+di+0x3]
000040CC  BB0311            mov bx,0x1103
000040CF  046F              add al,0x6f
000040D1  04D6              add al,0xd6
000040D3  0446              add al,0x46
000040D5  05C005            add ax,0x5c0
000040D8  45                inc bp
000040D9  06                push es
000040DA  D7                xlatb
000040DB  06                push es
000040DC  7507              jnz 0x40e5
000040DE  2208              and cl,[bx+si]
000040E0  DE08              fimul word [bx+si]
000040E2  AC                lodsb
000040E3  098C0A80          or [si-0x7ff6],cx
000040E7  0B8B0CAD          or cx,[bp+di-0x52f4]
000040EB  0DEA0E            or ax,0xeea
000040EE  44                inc sp
000040EF  10BD1158          adc [di+0x5811],bh
000040F3  1318              adc bx,[bx+si]
000040F5  15EA06            adc ax,0x6ea
000040F8  D40D              aam 0xd
000040FA  1E                push ds
000040FB  06                push es
000040FC  3D0C6A            cmp ax,0x6a0c
000040FF  05D40A            add ax,0xad4
00004102  CB                retf
00004103  0495              add al,0x95
00004105  093E047B          or [0x7b04],di
00004109  08C1              or cl,al
0000410B  03810752          add ax,[bx+di+0x5207]
0000410F  03A406F0          add sp,[si-0xffa]
00004113  02E1              add ah,cl
00004115  059A02            add ax,0x29a
00004118  3405              xor al,0x5
0000411A  4D                dec bp
0000411B  029A0409          add bl,[bp+si+0x904]
0000411F  0213              add dl,[bp+di]
00004121  04CD              add al,0xcd
00004123  019B0300          add [bp+di+0x3],bx
00004127  0000              add [bx+si],al
00004129  0000              add [bx+si],al
0000412B  0000              add [bx+si],al
0000412D  0000              add [bx+si],al
0000412F  007374            add [bp+di+0x74],dh
00004132  61                popaw
00004133  6B737461          imul si,[bp+di+0x74],byte +0x61
00004137  6B737461          imul si,[bp+di+0x74],byte +0x61
0000413B  6B737461          imul si,[bp+di+0x74],byte +0x61
0000413F  6B                db 0x6b
