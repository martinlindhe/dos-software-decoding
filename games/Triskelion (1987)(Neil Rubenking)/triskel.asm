00000100  E90B0F            jmp word 0x100e
00000103  90                nop
00000104  90                nop
00000105  CDAB              int 0xab
00000107  43                inc bx
00000108  6F                outsw
00000109  7079              jo 0x184
0000010B  7269              jc 0x176
0000010D  67687420          push word 0x2074
00000111  284329            sub [bp+di+0x29],al
00000114  2031              and [bx+di],dh
00000116  3938              cmp [bx+si],di
00000118  352042            xor ax,0x4220
0000011B  4F                dec di
0000011C  52                push dx
0000011D  4C                dec sp
0000011E  41                inc cx
0000011F  4E                dec si
00000120  44                inc sp
00000121  20496E            and [bx+di+0x6e],cl
00000124  635019            arpl [bx+si+0x19],dx
00000127  01FF              add di,di
00000129  000F              add [bx],cl
0000012B  07                pop es
0000012C  07                pop es
0000012D  700F              jo 0x13e
0000012F  07                pop es
00000130  07                pop es
00000131  706B              jo 0x19e
00000133  693E4FC70612      imul di,[0xc74f],word 0x1206
00000139  0037              add [bx],dh
0000013B  00C7              add bh,al
0000013D  06                push es
0000013E  2100              and [bx+si],ax
00000140  0000              add [bx+si],al
00000142  E83100            call word 0x176
00000145  8BDA              mov bx,dx
00000147  E82C00            call word 0x176
0000014A  3BDA              cmp bx,dx
0000014C  74F9              jz 0x147
0000014E  8BDA              mov bx,dx
00000150  FF062100          inc word [0x21]
00000154  E81F00            call word 0x176
00000157  3BDA              cmp bx,dx
00000159  74F5              jz 0x150
0000015B  A12100            mov ax,[0x21]
0000015E  A31200            mov [0x12],ax
00000161  C3                ret
00000162  8BC8              mov cx,ax
00000164  52                push dx
00000165  E30D              jcxz 0x174
00000167  FF062100          inc word [0x21]
0000016B  51                push cx
0000016C  E80700            call word 0x176
0000016F  59                pop cx
00000170  3BDA              cmp bx,dx
00000172  E2F3              loop 0x167
00000174  5A                pop dx
00000175  C3                ret
00000176  A11200            mov ax,[0x12]
00000179  EB00              jmp short 0x17b
0000017B  EB00              jmp short 0x17d
0000017D  48                dec ax
0000017E  75F9              jnz 0x179
00000180  CD1A              int 0x1a
00000182  C3                ret
00000183  8A3E0800          mov bh,[0x8]
00000187  803E0900FF        cmp byte [0x9],0xff
0000018C  7402              jz 0x190
0000018E  32FF              xor bh,bh
00000190  C3                ret
00000191  50                push ax
00000192  A00000            mov al,[0x0]
00000195  A20800            mov [0x8],al
00000198  58                pop ax
00000199  C3                ret
0000019A  B403              mov ah,0x3
0000019C  32FF              xor bh,bh
0000019E  CD10              int 0x10
000001A0  C3                ret
000001A1  E8C800            call word 0x26c
000001A4  2EA02801          mov al,[cs:0x128]
000001A8  3CFF              cmp al,0xff
000001AA  7506              jnz 0x1b2
000001AC  55                push bp
000001AD  B40F              mov ah,0xf
000001AF  CD10              int 0x10
000001B1  5D                pop bp
000001B2  C606040000        mov byte [0x4],0x0
000001B7  C606050000        mov byte [0x5],0x0
000001BC  C6060900FF        mov byte [0x9],0xff
000001C1  3C07              cmp al,0x7
000001C3  B750              mov bh,0x50
000001C5  B300              mov bl,0x0
000001C7  BE2A01            mov si,0x12a
000001CA  7420              jz 0x1ec
000001CC  BE3201            mov si,0x132
000001CF  3C02              cmp al,0x2
000001D1  7416              jz 0x1e9
000001D3  3C04              cmp al,0x4
000001D5  7202              jc 0x1d9
000001D7  B003              mov al,0x3
000001D9  B3FF              mov bl,0xff
000001DB  3C03              cmp al,0x3
000001DD  740D              jz 0x1ec
000001DF  B728              mov bh,0x28
000001E1  3C01              cmp al,0x1
000001E3  7407              jz 0x1ec
000001E5  32C0              xor al,al
000001E7  B300              mov bl,0x0
000001E9  BE2E01            mov si,0x12e
000001EC  A20600            mov [0x6],al
000001EF  881E0700          mov [0x7],bl
000001F3  2E883E2501        mov [cs:0x125],bh
000001F8  2E8B04            mov ax,[cs:si]
000001FB  A30000            mov [0x0],ax
000001FE  2E8B4402          mov ax,[cs:si+0x2]
00000202  A30200            mov [0x2],ax
00000205  55                push bp
00000206  B40F              mov ah,0xf
00000208  CD10              int 0x10
0000020A  3A060600          cmp al,[0x6]
0000020E  7407              jz 0x217
00000210  A00600            mov al,[0x6]
00000213  32E4              xor ah,ah
00000215  CD10              int 0x10
00000217  5D                pop bp
00000218  E976FF            jmp word 0x191
0000021B  50                push ax
0000021C  53                push bx
0000021D  51                push cx
0000021E  52                push dx
0000021F  55                push bp
00000220  9C                pushfw
00000221  86D6              xchg dl,dh
00000223  03160400          add dx,[0x4]
00000227  2E3A162501        cmp dl,[cs:0x125]
0000022C  730D              jnc 0x23b
0000022E  2E3A362601        cmp dh,[cs:0x126]
00000233  7306              jnc 0x23b
00000235  B402              mov ah,0x2
00000237  32FF              xor bh,bh
00000239  CD10              int 0x10
0000023B  9D                popfw
0000023C  5D                pop bp
0000023D  5A                pop dx
0000023E  59                pop cx
0000023F  5B                pop bx
00000240  58                pop ax
00000241  C3                ret
00000242  E97D02            jmp word 0x4c2
00000245  8BD8              mov bx,ax
00000247  B8DD34            mov ax,0x34dd
0000024A  BA1200            mov dx,0x12
0000024D  3BD3              cmp dx,bx
0000024F  731A              jnc 0x26b
00000251  F7F3              div bx
00000253  8BD8              mov bx,ax
00000255  E461              in al,0x61
00000257  A803              test al,0x3
00000259  7508              jnz 0x263
0000025B  0C03              or al,0x3
0000025D  E661              out 0x61,al
0000025F  B0B6              mov al,0xb6
00000261  E643              out 0x43,al
00000263  8AC3              mov al,bl
00000265  E642              out 0x42,al
00000267  8AC7              mov al,bh
00000269  E642              out 0x42,al
0000026B  C3                ret
0000026C  E461              in al,0x61
0000026E  24FC              and al,0xfc
00000270  E661              out 0x61,al
00000272  C3                ret
00000273  803E940100        cmp byte [0x194],0x0
00000278  B0FF              mov al,0xff
0000027A  750A              jnz 0x286
0000027C  B401              mov ah,0x1
0000027E  CD16              int 0x16
00000280  B000              mov al,0x0
00000282  7402              jz 0x286
00000284  FEC8              dec al
00000286  250100            and ax,0x1
00000289  C20100            ret 0x1
0000028C  A09401            mov al,[0x194]
0000028F  C606940100        mov byte [0x194],0x0
00000294  0AC0              or al,al
00000296  7522              jnz 0x2ba
00000298  32E4              xor ah,ah
0000029A  CD16              int 0x16
0000029C  0AC0              or al,al
0000029E  750C              jnz 0x2ac
000002A0  88269401          mov [0x194],ah
000002A4  B01B              mov al,0x1b
000002A6  0AE4              or ah,ah
000002A8  7510              jnz 0x2ba
000002AA  B003              mov al,0x3
000002AC  803E960101        cmp byte [0x196],0x1
000002B1  7507              jnz 0x2ba
000002B3  3C03              cmp al,0x3
000002B5  7503              jnz 0x2ba
000002B7  E9EC03            jmp word 0x6a6
000002BA  32E4              xor ah,ah
000002BC  C20100            ret 0x1
000002BF  58                pop ax
000002C0  5A                pop dx
000002C1  50                push ax
000002C2  52                push dx
000002C3  55                push bp
000002C4  52                push dx
000002C5  E8D2FE            call word 0x19a
000002C8  58                pop ax
000002C9  3C0D              cmp al,0xd
000002CB  7506              jnz 0x2d3
000002CD  8A160400          mov dl,[0x4]
000002D1  EB67              jmp short 0x33a
000002D3  3C0A              cmp al,0xa
000002D5  750B              jnz 0x2e2
000002D7  FEC6              inc dh
000002D9  2E3A362601        cmp dh,[cs:0x126]
000002DE  725A              jc 0x33a
000002E0  EB3F              jmp short 0x321
000002E2  3C08              cmp al,0x8
000002E4  750A              jnz 0x2f0
000002E6  3A160400          cmp dl,[0x4]
000002EA  744E              jz 0x33a
000002EC  FECA              dec dl
000002EE  EB4A              jmp short 0x33a
000002F0  3C07              cmp al,0x7
000002F2  7508              jnz 0x2fc
000002F4  B40E              mov ah,0xe
000002F6  32FF              xor bh,bh
000002F8  CD10              int 0x10
000002FA  EB44              jmp short 0x340
000002FC  52                push dx
000002FD  B409              mov ah,0x9
000002FF  32FF              xor bh,bh
00000301  B90100            mov cx,0x1
00000304  8A1E0800          mov bl,[0x8]
00000308  CD10              int 0x10
0000030A  5A                pop dx
0000030B  FEC2              inc dl
0000030D  2E3A162501        cmp dl,[cs:0x125]
00000312  7226              jc 0x33a
00000314  8A160400          mov dl,[0x4]
00000318  FEC6              inc dh
0000031A  2E3A362601        cmp dh,[cs:0x126]
0000031F  7219              jc 0x33a
00000321  FECE              dec dh
00000323  52                push dx
00000324  B80106            mov ax,0x601
00000327  E859FE            call word 0x183
0000032A  8B0E0400          mov cx,[0x4]
0000032E  2E8B162501        mov dx,[cs:0x125]
00000333  FECE              dec dh
00000335  FECA              dec dl
00000337  CD10              int 0x10
00000339  5A                pop dx
0000033A  B402              mov ah,0x2
0000033C  32FF              xor bh,bh
0000033E  CD10              int 0x10
00000340  5D                pop bp
00000341  803E960101        cmp byte [0x196],0x1
00000346  7512              jnz 0x35a
00000348  4C                dec sp
00000349  E827FF            call word 0x273
0000034C  740C              jz 0x35a
0000034E  4C                dec sp
0000034F  E83AFF            call word 0x28c
00000352  3C13              cmp al,0x13
00000354  7504              jnz 0x35a
00000356  4C                dec sp
00000357  E832FF            call word 0x28c
0000035A  58                pop ax
0000035B  C3                ret
0000035C  58                pop ax
0000035D  5A                pop dx
0000035E  50                push ax
0000035F  B405              mov ah,0x5
00000361  EB11              jmp short 0x374
00000363  58                pop ax
00000364  5A                pop dx
00000365  50                push ax
00000366  B404              mov ah,0x4
00000368  EB0A              jmp short 0x374
0000036A  B403              mov ah,0x3
0000036C  E80500            call word 0x374
0000036F  32E4              xor ah,ah
00000371  C20100            ret 0x1
00000374  80FC3D            cmp ah,0x3d
00000377  7415              jz 0x38e
00000379  80FC3C            cmp ah,0x3c
0000037C  7410              jz 0x38e
0000037E  80FC3E            cmp ah,0x3e
00000381  7433              jz 0x3b6
00000383  80FC80            cmp ah,0x80
00000386  7448              jz 0x3d0
00000388  55                push bp
00000389  FC                cld
0000038A  CD21              int 0x21
0000038C  5D                pop bp
0000038D  C3                ret
0000038E  56                push si
0000038F  51                push cx
00000390  8B367A01          mov si,[0x17a]
00000394  8B0E7C01          mov cx,[0x17c]
00000398  833C00            cmp word [si],byte +0x0
0000039B  740B              jz 0x3a8
0000039D  46                inc si
0000039E  46                inc si
0000039F  E2F7              loop 0x398
000003A1  59                pop cx
000003A2  5E                pop si
000003A3  B80400            mov ax,0x4
000003A6  F9                stc
000003A7  C3                ret
000003A8  59                pop cx
000003A9  1E                push ds
000003AA  06                push es
000003AB  1F                pop ds
000003AC  E8D9FF            call word 0x388
000003AF  1F                pop ds
000003B0  7202              jc 0x3b4
000003B2  8904              mov [si],ax
000003B4  5E                pop si
000003B5  C3                ret
000003B6  51                push cx
000003B7  56                push si
000003B8  8B367A01          mov si,[0x17a]
000003BC  8B0E7C01          mov cx,[0x17c]
000003C0  391C              cmp [si],bx
000003C2  7504              jnz 0x3c8
000003C4  C7040000          mov word [si],0x0
000003C8  46                inc si
000003C9  46                inc si
000003CA  E2F4              loop 0x3c0
000003CC  5E                pop si
000003CD  59                pop cx
000003CE  EBB8              jmp short 0x388
000003D0  8B367A01          mov si,[0x17a]
000003D4  8B0E7C01          mov cx,[0x17c]
000003D8  8B1C              mov bx,[si]
000003DA  0BDB              or bx,bx
000003DC  7409              jz 0x3e7
000003DE  B43E              mov ah,0x3e
000003E0  E8A5FF            call word 0x388
000003E3  C7040000          mov word [si],0x0
000003E7  46                inc si
000003E8  46                inc si
000003E9  E2ED              loop 0x3d8
000003EB  C3                ret
000003EC  A37401            mov [0x174],ax
000003EF  BF4202            mov di,0x242
000003F2  893E7A01          mov [0x17a],di
000003F6  890E7C01          mov [0x17c],cx
000003FA  33C0              xor ax,ax
000003FC  1E                push ds
000003FD  07                pop es
000003FE  FC                cld
000003FF  F3AB              rep stosw
00000401  B023              mov al,0x23
00000403  BA8404            mov dx,0x484
00000406  E83500            call word 0x43e
00000409  E82AFD            call word 0x136
0000040C  C606960100        mov byte [0x196],0x0
00000411  B91E00            mov cx,0x1e
00000414  EB00              jmp short 0x416
00000416  BE4804            mov si,0x448
00000419  BF3801            mov di,0x138
0000041C  1E                push ds
0000041D  07                pop es
0000041E  0E                push cs
0000041F  1F                pop ds
00000420  FC                cld
00000421  F3A5              rep movsw
00000423  06                push es
00000424  1F                pop ds
00000425  33C0              xor ax,ax
00000427  A39401            mov [0x194],ax
0000042A  A28001            mov [0x180],al
0000042D  A38201            mov [0x182],ax
00000430  A38401            mov [0x184],ax
00000433  C60681017E        mov byte [0x181],0x7e
00000438  C60638000D        mov byte [0x38],0xd
0000043D  C3                ret
0000043E  1E                push ds
0000043F  0E                push cs
00000440  1F                pop ds
00000441  B425              mov ah,0x25
00000443  E82EFF            call word 0x374
00000446  1F                pop ds
00000447  C3                ret
00000448  7302              jnc 0x44c
0000044A  8C02              mov [bp+si],es
0000044C  BF025C            mov di,0x5c02
0000044F  036303            add sp,[bp+di+0x3]
00000452  6A03              push byte +0x3
00000454  BF028C            mov di,0x8c02
00000457  02FF              add bh,bh
00000459  FFC1              inc cx
0000045B  00FF              add bh,bh
0000045D  FF8200FF          inc word [bp+si-0x100]
00000461  FF4300            inc word [bp+di+0x0]
00000464  FF                db 0xff
00000465  FFC4              inc sp
00000467  00FF              add bh,bh
00000469  FFC5              inc bp
0000046B  00FF              add bh,bh
0000046D  FFC1              inc cx
0000046F  0000              add [bx+si],al
00000471  0000              add [bx+si],al
00000473  0000              add [bx+si],al
00000475  0000              add [bx+si],al
00000477  00FF              add bh,bh
00000479  FFC1              inc cx
0000047B  0000              add [bx+si],al
0000047D  0000              add [bx+si],al
0000047F  0000              add [bx+si],al
00000481  0000              add [bx+si],al
00000483  00CF              add bh,cl
00000485  53                push bx
00000486  51                push cx
00000487  52                push dx
00000488  57                push di
00000489  56                push si
0000048A  32E4              xor ah,ah
0000048C  50                push ax
0000048D  FF163C01          call word [0x13c]
00000491  5E                pop si
00000492  5F                pop di
00000493  5A                pop dx
00000494  59                pop cx
00000495  5B                pop bx
00000496  C3                ret
00000497  53                push bx
00000498  51                push cx
00000499  52                push dx
0000049A  57                push di
0000049B  56                push si
0000049C  4C                dec sp
0000049D  FF163A01          call word [0x13a]
000004A1  EBEE              jmp short 0x491
000004A3  55                push bp
000004A4  8BEC              mov bp,sp
000004A6  875E02            xchg bx,[bp+0x2]
000004A9  2E8A07            mov al,[cs:bx]
000004AC  43                inc bx
000004AD  0AC0              or al,al
000004AF  7405              jz 0x4b6
000004B1  E8D1FF            call word 0x485
000004B4  EBF3              jmp short 0x4a9
000004B6  875E02            xchg bx,[bp+0x2]
000004B9  5D                pop bp
000004BA  C3                ret
000004BB  E8E5FF            call word 0x4a3
000004BE  0D0A00            or ax,0xa
000004C1  C3                ret
000004C2  3C61              cmp al,0x61
000004C4  7206              jc 0x4cc
000004C6  3C7A              cmp al,0x7a
000004C8  7702              ja 0x4cc
000004CA  2C20              sub al,0x20
000004CC  C3                ret
000004CD  50                push ax
000004CE  8AC4              mov al,ah
000004D0  E80100            call word 0x4d4
000004D3  58                pop ax
000004D4  50                push ax
000004D5  D0C8              ror al,1
000004D7  D0C8              ror al,1
000004D9  D0C8              ror al,1
000004DB  D0C8              ror al,1
000004DD  E80100            call word 0x4e1
000004E0  58                pop ax
000004E1  240F              and al,0xf
000004E3  0490              add al,0x90
000004E5  27                daa
000004E6  1440              adc al,0x40
000004E8  27                daa
000004E9  EB9A              jmp short 0x485
000004EB  5E                pop si
000004EC  8CC8              mov ax,cs
000004EE  2E034406          add ax,[cs:si+0x6]
000004F2  2E034408          add ax,[cs:si+0x8]
000004F6  2E03440A          add ax,[cs:si+0xa]
000004FA  2E3B060200        cmp ax,[cs:0x2]
000004FF  7602              jna 0x503
00000501  CD20              int 0x20
00000503  8CCB              mov bx,cs
00000505  2E035C06          add bx,[cs:si+0x6]
00000509  8EDB              mov ds,bx
0000050B  2E035C08          add bx,[cs:si+0x8]
0000050F  2E8B160200        mov dx,[cs:0x2]
00000514  2BD3              sub dx,bx
00000516  2E3B540C          cmp dx,[cs:si+0xc]
0000051A  7204              jc 0x520
0000051C  2E8B540C          mov dx,[cs:si+0xc]
00000520  8BFA              mov di,dx
00000522  B8FEFF            mov ax,0xfffe
00000525  81EA0010          sub dx,0x1000
00000529  730B              jnc 0x536
0000052B  8BC2              mov ax,dx
0000052D  050010            add ax,0x1000
00000530  B104              mov cl,0x4
00000532  D3E0              shl ax,cl
00000534  33D2              xor dx,dx
00000536  03D3              add dx,bx
00000538  8ED2              mov ss,dx
0000053A  8BE0              mov sp,ax
0000053C  A38E01            mov [0x18e],ax
0000053F  33C0              xor ax,ax
00000541  A38A01            mov [0x18a],ax
00000544  891E8C01          mov [0x18c],bx
00000548  A32400            mov [0x24],ax
0000054B  891E2600          mov [0x26],bx
0000054F  57                push di
00000550  C43E2400          les di,[0x24]
00000554  B90400            mov cx,0x4
00000557  FC                cld
00000558  F3AB              rep stosw
0000055A  5F                pop di
0000055B  2EF7040100        test word [cs:si],0x1
00000560  750D              jnz 0x56f
00000562  8CC8              mov ax,cs
00000564  8EC0              mov es,ax
00000566  03DF              add bx,di
00000568  2BD8              sub bx,ax
0000056A  B44A              mov ah,0x4a
0000056C  E805FE            call word 0x374
0000056F  2E8B4402          mov ax,[cs:si+0x2]
00000573  A37601            mov [0x176],ax
00000576  2E8B4404          mov ax,[cs:si+0x4]
0000057A  A37801            mov [0x178],ax
0000057D  2E8B04            mov ax,[cs:si]
00000580  2E8B4C0E          mov cx,[cs:si+0xe]
00000584  51                push cx
00000585  56                push si
00000586  E863FE            call word 0x3ec
00000589  5E                pop si
0000058A  59                pop cx
0000058B  BF4202            mov di,0x242
0000058E  03F9              add di,cx
00000590  03F9              add di,cx
00000592  893E6001          mov [0x160],di
00000596  2E8B4410          mov ax,[cs:si+0x10]
0000059A  A36201            mov [0x162],ax
0000059D  03F8              add di,ax
0000059F  0BC0              or ax,ax
000005A1  740B              jz 0x5ae
000005A3  C7065C010000      mov word [0x15c],0x0
000005A9  C6065E0100        mov byte [0x15e],0x0
000005AE  893E6C01          mov [0x16c],di
000005B2  2E8B4412          mov ax,[cs:si+0x12]
000005B6  A36E01            mov [0x16e],ax
000005B9  0BC0              or ax,ax
000005BB  740B              jz 0x5c8
000005BD  C70668010100      mov word [0x168],0x1
000005C3  C6066A0100        mov byte [0x16a],0x0
000005C8  83C614            add si,byte +0x14
000005CB  56                push si
000005CC  B80035            mov ax,0x3500
000005CF  E8A2FD            call word 0x374
000005D2  891E9001          mov [0x190],bx
000005D6  8C069201          mov [0x192],es
000005DA  B000              mov al,0x0
000005DC  BA0000            mov dx,0x0
000005DF  E85CFE            call word 0x43e
000005E2  F70674010800      test word [0x174],0x8
000005E8  7408              jz 0x5f2
000005EA  B003              mov al,0x3
000005EC  BA8806            mov dx,0x688
000005EF  E84CFE            call word 0x43e
000005F2  F70674010400      test word [0x174],0x4
000005F8  7405              jz 0x5ff
000005FA  C606960101        mov byte [0x196],0x1
000005FF  C7067E010000      mov word [0x17e],0x0
00000605  33C0              xor ax,ax
00000607  A38801            mov [0x188],ax
0000060A  A29801            mov [0x198],al
0000060D  8B0E6201          mov cx,[0x162]
00000611  1E                push ds
00000612  BF5C01            mov di,0x15c
00000615  E86C06            call word 0xc84
00000618  8B0E6E01          mov cx,[0x16e]
0000061C  1E                push ds
0000061D  BF6801            mov di,0x168
00000620  E86506            call word 0xc88
00000623  C606FC0100        mov byte [0x1fc],0x0
00000628  E876FB            call word 0x1a1
0000062B  C3                ret
0000062C  5B                pop bx
0000062D  59                pop cx
0000062E  53                push bx
0000062F  8AD0              mov dl,al
00000631  8AF1              mov dh,cl
00000633  FECA              dec dl
00000635  FECE              dec dh
00000637  E9E1FB            jmp word 0x21b
0000063A  91                xchg ax,cx
0000063B  8CDA              mov dx,ds
0000063D  5B                pop bx
0000063E  5F                pop di
0000063F  07                pop es
00000640  5E                pop si
00000641  1F                pop ds
00000642  FC                cld
00000643  3BF7              cmp si,di
00000645  7307              jnc 0x64e
00000647  03F1              add si,cx
00000649  03F9              add di,cx
0000064B  4E                dec si
0000064C  4F                dec di
0000064D  FD                std
0000064E  F3A4              rep movsb
00000650  8EDA              mov ds,dx
00000652  FFE3              jmp bx
00000654  3BC1              cmp ax,cx
00000656  7301              jnc 0x659
00000658  C3                ret
00000659  B290              mov dl,0x90
0000065B  EB5E              jmp short 0x6bb
0000065D  3BC1              cmp ax,cx
0000065F  7C05              jl 0x666
00000661  3BC2              cmp ax,dx
00000663  7F01              jg 0x666
00000665  C3                ret
00000666  B291              mov dl,0x91
00000668  EB51              jmp short 0x6bb
0000066A  8BC4              mov ax,sp
0000066C  2BC1              sub ax,cx
0000066E  7214              jc 0x684
00000670  3D0002            cmp ax,0x200
00000673  720F              jc 0x684
00000675  B104              mov cl,0x4
00000677  D3E8              shr ax,cl
00000679  8CD1              mov cx,ss
0000067B  03C1              add ax,cx
0000067D  3B068C01          cmp ax,[0x18c]
00000681  7201              jc 0x684
00000683  C3                ret
00000684  B2FF              mov dl,0xff
00000686  EB33              jmp short 0x6bb
00000688  5B                pop bx
00000689  58                pop ax
0000068A  9D                popfw
0000068B  53                push bx
0000068C  800E960102        or byte [0x196],0x2
00000691  4C                dec sp
00000692  E85FF8            call word 0xfef4
00000695  7404              jz 0x69b
00000697  4C                dec sp
00000698  E872F8            call word 0xff0d
0000069B  8026960101        and byte [0x196],0x1
000006A0  3C03              cmp al,0x3
000006A2  7401              jz 0x6a5
000006A4  C3                ret
000006A5  8F                db 0x8f
000006A6  BA0100            mov dx,0x1
000006A9  EB16              jmp short 0x6c1
000006AB  803E800100        cmp byte [0x180],0x0
000006B0  7501              jnz 0x6b3
000006B2  C3                ret
000006B3  8A168001          mov dl,[0x180]
000006B7  B601              mov dh,0x1
000006B9  EB06              jmp short 0x6c1
000006BB  8F068601          pop word [0x186]
000006BF  B602              mov dh,0x2
000006C1  52                push dx
000006C2  E847FD            call word 0x40c
000006C5  5A                pop dx
000006C6  A18601            mov ax,[0x186]
000006C9  2D0300            sub ax,0x3
000006CC  87068801          xchg ax,[0x188]
000006D0  0BC0              or ax,ax
000006D2  750B              jnz 0x6df
000006D4  52                push dx
000006D5  52                push dx
000006D6  FF368801          push word [0x188]
000006DA  FF167E01          call word [0x17e]
000006DE  CD20              int 0x20
000006E0  FE01              inc byte [bx+di]
000006E2  7314              jnc 0x6f8
000006E4  E8BCFD            call word 0x4a3
000006E7  5E                pop si
000006E8  43                inc bx
000006E9  0D0A55            or ax,0x550a
000006EC  7365              jnc 0x753
000006EE  7220              jc 0x710
000006F0  42                inc dx
000006F1  7265              jc 0x758
000006F3  61                popaw
000006F4  6B00EB            imul ax,[bx+si],byte -0x15
000006F7  30C6              xor dh,al
000006F9  06                push es
000006FA  FC                cld
000006FB  01FF              add di,di
000006FD  770B              ja 0x70a
000006FF  E8A1FD            call word 0x4a3
00000702  0D0A49            or ax,0x490a
00000705  2F                das
00000706  4F                dec di
00000707  00EB              add bl,ch
00000709  0E                push cs
0000070A  E896FD            call word 0x4a3
0000070D  0D0A52            or ax,0x520a
00000710  756E              jnz 0x780
00000712  2D7469            sub ax,0x6974
00000715  6D                insw
00000716  6500E8            gs add al,ch
00000719  88FD              mov ch,bh
0000071B  206572            and [di+0x72],ah
0000071E  726F              jc 0x78f
00000720  7220              jc 0x742
00000722  008AC2E8          add [bp+si-0x173e],cl
00000726  AC                lodsb
00000727  FD                std
00000728  E878FD            call word 0x4a3
0000072B  2C20              sub al,0x20
0000072D  50                push ax
0000072E  43                inc bx
0000072F  3D00A1            cmp ax,0xa100
00000732  8801              mov [bx+di],al
00000734  E896FD            call word 0x4cd
00000737  E869FD            call word 0x4a3
0000073A  0D0A50            or ax,0x500a
0000073D  726F              jc 0x7ae
0000073F  677261            jc 0x7a3
00000742  6D                insw
00000743  206162            and [bx+di+0x62],ah
00000746  6F                outsw
00000747  7274              jc 0x7bd
00000749  65640D0A00        fs or ax,0xa
0000074E  B001              mov al,0x1
00000750  CD20              int 0x20
00000752  C70622020080      mov word [0x222],0x8000
00000758  EB06              jmp short 0x760
0000075A  C70622020000      mov word [0x222],0x0
00000760  0AC9              or cl,cl
00000762  740E              jz 0x772
00000764  333E2202          xor di,[0x222]
00000768  0AC0              or al,al
0000076A  7507              jnz 0x773
0000076C  8BC1              mov ax,cx
0000076E  8BDE              mov bx,si
00000770  8BD7              mov dx,di
00000772  C3                ret
00000773  3AC1              cmp al,cl
00000775  7605              jna 0x77c
00000777  91                xchg ax,cx
00000778  87DE              xchg bx,si
0000077A  87D7              xchg dx,di
0000077C  880E2602          mov [0x226],cl
00000780  2AC8              sub cl,al
00000782  80F928            cmp cl,0x28
00000785  7206              jc 0x78d
00000787  8A0E2602          mov cl,[0x226]
0000078B  EBDF              jmp short 0x76c
0000078D  893E2202          mov [0x222],di
00000791  8026230280        and byte [0x223],0x80
00000796  893E2402          mov [0x224],di
0000079A  30362502          xor [0x225],dh
0000079E  81CF0080          or di,0x8000
000007A2  80CE80            or dh,0x80
000007A5  80F910            cmp cl,0x10
000007A8  720B              jc 0x7b5
000007AA  8AE7              mov ah,bh
000007AC  8BDA              mov bx,dx
000007AE  33D2              xor dx,dx
000007B0  80E910            sub cl,0x10
000007B3  EBF0              jmp short 0x7a5
000007B5  80F908            cmp cl,0x8
000007B8  720D              jc 0x7c7
000007BA  8AE3              mov ah,bl
000007BC  8ADF              mov bl,bh
000007BE  8AFA              mov bh,dl
000007C0  8AD6              mov dl,dh
000007C2  32F6              xor dh,dh
000007C4  80E908            sub cl,0x8
000007C7  0AC9              or cl,cl
000007C9  740A              jz 0x7d5
000007CB  D1EA              shr dx,1
000007CD  D1DB              rcr bx,1
000007CF  D0DC              rcr ah,1
000007D1  FEC9              dec cl
000007D3  75F6              jnz 0x7cb
000007D5  A02602            mov al,[0x226]
000007D8  F606250280        test byte [0x225],0x80
000007DD  7514              jnz 0x7f3
000007DF  02E5              add ah,ch
000007E1  13DE              adc bx,si
000007E3  13D7              adc dx,di
000007E5  735E              jnc 0x845
000007E7  D1DA              rcr dx,1
000007E9  D1DB              rcr bx,1
000007EB  D0DC              rcr ah,1
000007ED  FEC0              inc al
000007EF  7554              jnz 0x845
000007F1  F9                stc
000007F2  C3                ret
000007F3  86E5              xchg ah,ch
000007F5  87DE              xchg bx,si
000007F7  87D7              xchg dx,di
000007F9  2AE5              sub ah,ch
000007FB  1BDE              sbb bx,si
000007FD  1BD7              sbb dx,di
000007FF  7314              jnc 0x815
00000801  8036230280        xor byte [0x223],0x80
00000806  F6D4              not ah
00000808  F7D3              not bx
0000080A  F7D2              not dx
0000080C  80C401            add ah,0x1
0000080F  83D300            adc bx,byte +0x0
00000812  83D200            adc dx,byte +0x0
00000815  B105              mov cl,0x5
00000817  0AF6              or dh,dh
00000819  7514              jnz 0x82f
0000081B  8AF2              mov dh,dl
0000081D  8AD7              mov dl,bh
0000081F  8AFB              mov bh,bl
00000821  8ADC              mov bl,ah
00000823  32E4              xor ah,ah
00000825  2C08              sub al,0x8
00000827  7615              jna 0x83e
00000829  FEC9              dec cl
0000082B  75EA              jnz 0x817
0000082D  EB0F              jmp short 0x83e
0000082F  F6C680            test dh,0x80
00000832  7511              jnz 0x845
00000834  D0E4              shl ah,1
00000836  D1D3              rcl bx,1
00000838  D1D2              rcl dx,1
0000083A  FEC8              dec al
0000083C  75F1              jnz 0x82f
0000083E  33C0              xor ax,ax
00000840  33DB              xor bx,bx
00000842  33D2              xor dx,dx
00000844  C3                ret
00000845  80E67F            and dh,0x7f
00000848  32362302          xor dh,[0x223]
0000084C  C3                ret
0000084D  0AC9              or cl,cl
0000084F  746F              jz 0x8c0
00000851  0AC0              or al,al
00000853  7471              jz 0x8c6
00000855  02C1              add al,cl
00000857  E80401            call word 0x95e
0000085A  A31002            mov [0x210],ax
0000085D  891E1202          mov [0x212],bx
00000861  89161402          mov [0x214],dx
00000865  32E4              xor ah,ah
00000867  33DB              xor bx,bx
00000869  33D2              xor dx,dx
0000086B  BF1602            mov di,0x216
0000086E  B105              mov cl,0x5
00000870  47                inc di
00000871  8A2D              mov ch,[di]
00000873  0AED              or ch,ch
00000875  750C              jnz 0x883
00000877  8AE3              mov ah,bl
00000879  8ADF              mov bl,bh
0000087B  8AFA              mov bh,dl
0000087D  8AD6              mov dl,dh
0000087F  32F6              xor dh,dh
00000881  EB1C              jmp short 0x89f
00000883  BE0800            mov si,0x8
00000886  D0DD              rcr ch,1
00000888  730C              jnc 0x896
0000088A  02261102          add ah,[0x211]
0000088E  131E1202          adc bx,[0x212]
00000892  13161402          adc dx,[0x214]
00000896  D1DA              rcr dx,1
00000898  D1DB              rcr bx,1
0000089A  D0DC              rcr ah,1
0000089C  4E                dec si
0000089D  75E7              jnz 0x886
0000089F  FEC9              dec cl
000008A1  75CD              jnz 0x870
000008A3  91                xchg ax,cx
000008A4  9F                lahf
000008A5  F6C680            test dh,0x80
000008A8  750D              jnz 0x8b7
000008AA  9E                sahf
000008AB  D0D5              rcl ch,1
000008AD  D1D3              rcl bx,1
000008AF  D1D2              rcl dx,1
000008B1  0AC9              or cl,cl
000008B3  7402              jz 0x8b7
000008B5  FEC9              dec cl
000008B7  91                xchg ax,cx
000008B8  32362302          xor dh,[0x223]
000008BC  0AC0              or al,al
000008BE  7506              jnz 0x8c6
000008C0  33C0              xor ax,ax
000008C2  33DB              xor bx,bx
000008C4  33D2              xor dx,dx
000008C6  C3                ret
000008C7  0AC0              or al,al
000008C9  74FB              jz 0x8c6
000008CB  2AC1              sub al,cl
000008CD  F5                cmc
000008CE  E88D00            call word 0x95e
000008D1  A21002            mov [0x210],al
000008D4  BF1502            mov di,0x215
000008D7  B105              mov cl,0x5
000008D9  BE0800            mov si,0x8
000008DC  3B161A02          cmp dx,[0x21a]
000008E0  750A              jnz 0x8ec
000008E2  3B1E1802          cmp bx,[0x218]
000008E6  7504              jnz 0x8ec
000008E8  3A261702          cmp ah,[0x217]
000008EC  720C              jc 0x8fa
000008EE  2A261702          sub ah,[0x217]
000008F2  1B1E1802          sbb bx,[0x218]
000008F6  1B161A02          sbb dx,[0x21a]
000008FA  F5                cmc
000008FB  D0D5              rcl ch,1
000008FD  4E                dec si
000008FE  750A              jnz 0x90a
00000900  882D              mov [di],ch
00000902  FEC9              dec cl
00000904  741B              jz 0x921
00000906  4F                dec di
00000907  BE0800            mov si,0x8
0000090A  D0E4              shl ah,1
0000090C  D1D3              rcl bx,1
0000090E  D1D2              rcl dx,1
00000910  73CA              jnc 0x8dc
00000912  2A261702          sub ah,[0x217]
00000916  1B1E1802          sbb bx,[0x218]
0000091A  1B161A02          sbb dx,[0x21a]
0000091E  F8                clc
0000091F  EBD9              jmp short 0x8fa
00000921  D0E4              shl ah,1
00000923  D1D3              rcl bx,1
00000925  D1D2              rcl dx,1
00000927  7211              jc 0x93a
00000929  3B161A02          cmp dx,[0x21a]
0000092D  750A              jnz 0x939
0000092F  3B1E1802          cmp bx,[0x218]
00000933  7504              jnz 0x939
00000935  3A261702          cmp ah,[0x217]
00000939  F5                cmc
0000093A  8B0E1002          mov cx,[0x210]
0000093E  8B1E1202          mov bx,[0x212]
00000942  8B161402          mov dx,[0x214]
00000946  9F                lahf
00000947  F6C680            test dh,0x80
0000094A  7509              jnz 0x955
0000094C  9E                sahf
0000094D  D0D5              rcl ch,1
0000094F  D1D3              rcl bx,1
00000951  D1D2              rcl dx,1
00000953  EB06              jmp short 0x95b
00000955  FEC1              inc cl
00000957  7502              jnz 0x95b
00000959  F9                stc
0000095A  C3                ret
0000095B  E959FF            jmp word 0x8b7
0000095E  720C              jc 0x96c
00000960  0480              add al,0x80
00000962  720F              jc 0x973
00000964  5B                pop bx
00000965  33C0              xor ax,ax
00000967  33DB              xor bx,bx
00000969  33D2              xor dx,dx
0000096B  C3                ret
0000096C  0480              add al,0x80
0000096E  7303              jnc 0x973
00000970  5B                pop bx
00000971  F9                stc
00000972  C3                ret
00000973  890E1602          mov [0x216],cx
00000977  8BCA              mov cx,dx
00000979  33CF              xor cx,di
0000097B  F6D5              not ch
0000097D  80E580            and ch,0x80
00000980  882E2302          mov [0x223],ch
00000984  80CE80            or dh,0x80
00000987  81CF0080          or di,0x8000
0000098B  89361802          mov [0x218],si
0000098F  893E1A02          mov [0x21a],di
00000993  C3                ret
00000994  57                push di
00000995  56                push si
00000996  51                push cx
00000997  E8C0FD            call word 0x75a
0000099A  59                pop cx
0000099B  5E                pop si
0000099C  5F                pop di
0000099D  C3                ret
0000099E  57                push di
0000099F  56                push si
000009A0  51                push cx
000009A1  E8AEFD            call word 0x752
000009A4  59                pop cx
000009A5  5E                pop si
000009A6  5F                pop di
000009A7  C3                ret
000009A8  57                push di
000009A9  56                push si
000009AA  51                push cx
000009AB  E89FFE            call word 0x84d
000009AE  59                pop cx
000009AF  5E                pop si
000009B0  5F                pop di
000009B1  C3                ret
000009B2  57                push di
000009B3  56                push si
000009B4  51                push cx
000009B5  E80FFF            call word 0x8c7
000009B8  59                pop cx
000009B9  5E                pop si
000009BA  5F                pop di
000009BB  C3                ret
000009BC  52                push dx
000009BD  33D7              xor dx,di
000009BF  5A                pop dx
000009C0  7905              jns 0x9c7
000009C2  52                push dx
000009C3  D1D2              rcl dx,1
000009C5  5A                pop dx
000009C6  C3                ret
000009C7  F6C680            test dh,0x80
000009CA  7407              jz 0x9d3
000009CC  E80400            call word 0x9d3
000009CF  7414              jz 0x9e5
000009D1  F5                cmc
000009D2  C3                ret
000009D3  3AC1              cmp al,cl
000009D5  750E              jnz 0x9e5
000009D7  0AC0              or al,al
000009D9  740A              jz 0x9e5
000009DB  3BD7              cmp dx,di
000009DD  7506              jnz 0x9e5
000009DF  3BDE              cmp bx,si
000009E1  7502              jnz 0x9e5
000009E3  3AE5              cmp ah,ch
000009E5  C3                ret
000009E6  0BC0              or ax,ax
000009E8  7505              jnz 0x9ef
000009EA  33DB              xor bx,bx
000009EC  33D2              xor dx,dx
000009EE  C3                ret
000009EF  8AFC              mov bh,ah
000009F1  8BD0              mov dx,ax
000009F3  0BD2              or dx,dx
000009F5  7902              jns 0x9f9
000009F7  F7DA              neg dx
000009F9  B89000            mov ax,0x90
000009FC  0AF6              or dh,dh
000009FE  7504              jnz 0xa04
00000A00  B088              mov al,0x88
00000A02  86D6              xchg dl,dh
00000A04  0BD2              or dx,dx
00000A06  7806              js 0xa0e
00000A08  FEC8              dec al
00000A0A  D1E2              shl dx,1
00000A0C  79FA              jns 0xa08
00000A0E  0AFF              or bh,bh
00000A10  7803              js 0xa15
00000A12  80E67F            and dh,0x7f
00000A15  33DB              xor bx,bx
00000A17  C3                ret
00000A18  3CA8              cmp al,0xa8
00000A1A  7349              jnc 0xa65
00000A1C  8BC8              mov cx,ax
00000A1E  8BF3              mov si,bx
00000A20  8BFA              mov di,dx
00000A22  32E4              xor ah,ah
00000A24  33DB              xor bx,bx
00000A26  33D2              xor dx,dx
00000A28  80E980            sub cl,0x80
00000A2B  7639              jna 0xa66
00000A2D  80F910            cmp cl,0x10
00000A30  720C              jc 0xa3e
00000A32  8AE7              mov ah,bh
00000A34  8BDA              mov bx,dx
00000A36  BAFFFF            mov dx,0xffff
00000A39  80E910            sub cl,0x10
00000A3C  EBEF              jmp short 0xa2d
00000A3E  80F908            cmp cl,0x8
00000A41  720D              jc 0xa50
00000A43  8AE3              mov ah,bl
00000A45  8ADF              mov bl,bh
00000A47  8AFA              mov bh,dl
00000A49  8AD6              mov dl,dh
00000A4B  B6FF              mov dh,0xff
00000A4D  80E908            sub cl,0x8
00000A50  0AC9              or cl,cl
00000A52  740B              jz 0xa5f
00000A54  F9                stc
00000A55  D1DA              rcr dx,1
00000A57  D1DB              rcr bx,1
00000A59  D0DC              rcr ah,1
00000A5B  FEC9              dec cl
00000A5D  75F5              jnz 0xa54
00000A5F  23D7              and dx,di
00000A61  23DE              and bx,si
00000A63  22E5              and ah,ch
00000A65  C3                ret
00000A66  32C0              xor al,al
00000A68  C3                ret
00000A69  52                push dx
00000A6A  53                push bx
00000A6B  50                push ax
00000A6C  E8A9FF            call word 0xa18
00000A6F  8BC8              mov cx,ax
00000A71  8BF3              mov si,bx
00000A73  8BFA              mov di,dx
00000A75  58                pop ax
00000A76  5B                pop bx
00000A77  5A                pop dx
00000A78  E9D7FC            jmp word 0x752
00000A7B  5B                pop bx
00000A7C  07                pop es
00000A7D  26FF7504          push word [es:di+0x4]
00000A81  26FF7502          push word [es:di+0x2]
00000A85  26FF35            push word [es:di]
00000A88  FFE3              jmp bx
00000A8A  5B                pop bx
00000A8B  2EFF7704          push word [cs:bx+0x4]
00000A8F  2EFF7702          push word [cs:bx+0x2]
00000A93  2EFF37            push word [cs:bx]
00000A96  83C306            add bx,byte +0x6
00000A99  FFE3              jmp bx
00000A9B  5B                pop bx
00000A9C  58                pop ax
00000A9D  59                pop cx
00000A9E  5A                pop dx
00000A9F  5F                pop di
00000AA0  07                pop es
00000AA1  268905            mov [es:di],ax
00000AA4  26894D02          mov [es:di+0x2],cx
00000AA8  26895504          mov [es:di+0x4],dx
00000AAC  FFE3              jmp bx
00000AAE  8F068601          pop word [0x186]
00000AB2  59                pop cx
00000AB3  5E                pop si
00000AB4  5F                pop di
00000AB5  58                pop ax
00000AB6  5B                pop bx
00000AB7  5A                pop dx
00000AB8  E89FFC            call word 0x75a
00000ABB  7207              jc 0xac4
00000ABD  52                push dx
00000ABE  53                push bx
00000ABF  50                push ax
00000AC0  FF268601          jmp word [0x186]
00000AC4  B201              mov dl,0x1
00000AC6  E9F6FB            jmp word 0x6bf
00000AC9  8F068601          pop word [0x186]
00000ACD  59                pop cx
00000ACE  5E                pop si
00000ACF  5F                pop di
00000AD0  58                pop ax
00000AD1  5B                pop bx
00000AD2  5A                pop dx
00000AD3  E87CFC            call word 0x752
00000AD6  EBE3              jmp short 0xabb
00000AD8  8F068601          pop word [0x186]
00000ADC  59                pop cx
00000ADD  5E                pop si
00000ADE  5F                pop di
00000ADF  58                pop ax
00000AE0  5B                pop bx
00000AE1  5A                pop dx
00000AE2  E868FD            call word 0x84d
00000AE5  EBD4              jmp short 0xabb
00000AE7  8F068601          pop word [0x186]
00000AEB  59                pop cx
00000AEC  5E                pop si
00000AED  5F                pop di
00000AEE  58                pop ax
00000AEF  5B                pop bx
00000AF0  5A                pop dx
00000AF1  0AC9              or cl,cl
00000AF3  7405              jz 0xafa
00000AF5  E8CFFD            call word 0x8c7
00000AF8  EBC1              jmp short 0xabb
00000AFA  B202              mov dl,0x2
00000AFC  E9C0FB            jmp word 0x6bf
00000AFF  8BDC              mov bx,sp
00000B01  368067077F        and byte [ss:bx+0x7],0x7f
00000B06  C3                ret
00000B07  8F068601          pop word [0x186]
00000B0B  59                pop cx
00000B0C  5E                pop si
00000B0D  5F                pop di
00000B0E  58                pop ax
00000B0F  5B                pop bx
00000B10  5A                pop dx
00000B11  E8A8FE            call word 0x9bc
00000B14  FF368601          push word [0x186]
00000B18  B80100            mov ax,0x1
00000B1B  7201              jc 0xb1e
00000B1D  48                dec ax
00000B1E  0BC0              or ax,ax
00000B20  C3                ret
00000B21  B5FF              mov ch,0xff
00000B23  EB02              jmp short 0xb27
00000B25  32ED              xor ch,ch
00000B27  5B                pop bx
00000B28  58                pop ax
00000B29  5A                pop dx
00000B2A  5A                pop dx
00000B2B  53                push bx
00000B2C  92                xchg ax,dx
00000B2D  B18F              mov cl,0x8f
00000B2F  2ACA              sub cl,dl
00000B31  7222              jc 0xb55
00000B33  80F90F            cmp cl,0xf
00000B36  771A              ja 0xb52
00000B38  FEC1              inc cl
00000B3A  8AFC              mov bh,ah
00000B3C  80CC80            or ah,0x80
00000B3F  D3E8              shr ax,cl
00000B41  7307              jnc 0xb4a
00000B43  0AED              or ch,ch
00000B45  7403              jz 0xb4a
00000B47  40                inc ax
00000B48  780B              js 0xb55
00000B4A  F6C780            test bh,0x80
00000B4D  7402              jz 0xb51
00000B4F  F7D8              neg ax
00000B51  C3                ret
00000B52  33C0              xor ax,ax
00000B54  C3                ret
00000B55  B292              mov dl,0x92
00000B57  E961FB            jmp word 0x6bb
00000B5A  E889FE            call word 0x9e6
00000B5D  59                pop cx
00000B5E  52                push dx
00000B5F  53                push bx
00000B60  50                push ax
00000B61  FFE1              jmp cx
00000B63  8F068601          pop word [0x186]
00000B67  59                pop cx
00000B68  5E                pop si
00000B69  5F                pop di
00000B6A  58                pop ax
00000B6B  E878FE            call word 0x9e6
00000B6E  52                push dx
00000B6F  53                push bx
00000B70  50                push ax
00000B71  57                push di
00000B72  56                push si
00000B73  51                push cx
00000B74  FF268601          jmp word [0x186]
00000B78  8F068601          pop word [0x186]
00000B7C  59                pop cx
00000B7D  5E                pop si
00000B7E  5F                pop di
00000B7F  B88121            mov ax,0x2181
00000B82  BBA2DA            mov bx,0xdaa2
00000B85  BA0F49            mov dx,0x490f
00000B88  E8C7FB            call word 0x752
00000B8B  EB07              jmp short 0xb94
00000B8D  8F068601          pop word [0x186]
00000B91  58                pop ax
00000B92  5B                pop bx
00000B93  5A                pop dx
00000B94  3C6C              cmp al,0x6c
00000B96  725B              jc 0xbf3
00000B98  B98321            mov cx,0x2183
00000B9B  BEA2DA            mov si,0xdaa2
00000B9E  BF0F49            mov di,0x490f
00000BA1  52                push dx
00000BA2  80E67F            and dh,0x7f
00000BA5  E814FE            call word 0x9bc
00000BA8  5A                pop dx
00000BA9  720F              jc 0xbba
00000BAB  E804FE            call word 0x9b2
00000BAE  57                push di
00000BAF  56                push si
00000BB0  51                push cx
00000BB1  E8B5FE            call word 0xa69
00000BB4  59                pop cx
00000BB5  5E                pop si
00000BB6  5F                pop di
00000BB7  E8EEFD            call word 0x9a8
00000BBA  F6C680            test dh,0x80
00000BBD  7403              jz 0xbc2
00000BBF  E8D2FD            call word 0x994
00000BC2  FEC9              dec cl
00000BC4  E8F5FD            call word 0x9bc
00000BC7  9C                pushfw
00000BC8  7203              jc 0xbcd
00000BCA  E8D1FD            call word 0x99e
00000BCD  FEC9              dec cl
00000BCF  E8EAFD            call word 0x9bc
00000BD2  7208              jc 0xbdc
00000BD4  FEC1              inc cl
00000BD6  80CE80            or dh,0x80
00000BD9  E87EFB            call word 0x75a
00000BDC  3C6C              cmp al,0x6c
00000BDE  7209              jc 0xbe9
00000BE0  BFF60B            mov di,0xbf6
00000BE3  B90700            mov cx,0x7
00000BE6  E83800            call word 0xc21
00000BE9  9D                popfw
00000BEA  7207              jc 0xbf3
00000BEC  0AC0              or al,al
00000BEE  7403              jz 0xbf3
00000BF0  80F680            xor dh,0x80
00000BF3  E9C7FE            jmp word 0xabd
00000BF6  58                pop ax
00000BF7  9D                popfw
00000BF8  399F3FD7          cmp [bx-0x28c1],bx
00000BFC  60                pushaw
00000BFD  43                inc bx
00000BFE  9D                popfw
00000BFF  30923067          xor [bp+si+0x6730],dl
00000C03  AA                stosb
00000C04  3F                aas
00000C05  2832              sub [bp+si],dh
00000C07  D7                xlatb
00000C08  6E                outsb
00000C09  B62A              mov dh,0x2a
00000C0B  1DEF38            sbb ax,0x38ef
00000C0E  740D              jz 0xc1d
00000C10  D000              rol byte [bx+si],1
00000C12  0DD07A            or ax,0x7ad0
00000C15  88888888          mov [bx+si-0x7778],cl
00000C19  087EAB            or [bp-0x55],bh
00000C1C  AA                stosb
00000C1D  AA                stosb
00000C1E  AA                stosb
00000C1F  AA                stosb
00000C20  8F                db 0x8f
00000C21  52                push dx
00000C22  53                push bx
00000C23  50                push ax
00000C24  51                push cx
00000C25  57                push di
00000C26  8BC8              mov cx,ax
00000C28  8BF3              mov si,bx
00000C2A  8BFA              mov di,dx
00000C2C  E81EFC            call word 0x84d
00000C2F  5F                pop di
00000C30  59                pop cx
00000C31  E80600            call word 0xc3a
00000C34  59                pop cx
00000C35  5E                pop si
00000C36  5F                pop di
00000C37  E913FC            jmp word 0x84d
00000C3A  A31C02            mov [0x21c],ax
00000C3D  891E1E02          mov [0x21e],bx
00000C41  89162002          mov [0x220],dx
00000C45  2E8B05            mov ax,[cs:di]
00000C48  2E8B5D02          mov bx,[cs:di+0x2]
00000C4C  2E8B5504          mov dx,[cs:di+0x4]
00000C50  51                push cx
00000C51  57                push di
00000C52  EB10              jmp short 0xc64
00000C54  51                push cx
00000C55  57                push di
00000C56  2E8B0D            mov cx,[cs:di]
00000C59  2E8B7502          mov si,[cs:di+0x2]
00000C5D  2E8B7D04          mov di,[cs:di+0x4]
00000C61  E8F6FA            call word 0x75a
00000C64  8B0E1C02          mov cx,[0x21c]
00000C68  8B361E02          mov si,[0x21e]
00000C6C  8B3E2002          mov di,[0x220]
00000C70  E8DAFB            call word 0x84d
00000C73  5F                pop di
00000C74  59                pop cx
00000C75  83C706            add di,byte +0x6
00000C78  E2DA              loop 0xc54
00000C7A  B98100            mov cx,0x81
00000C7D  33F6              xor si,si
00000C7F  33FF              xor di,di
00000C81  E9D6FA            jmp word 0x75a
00000C84  32C0              xor al,al
00000C86  EB04              jmp short 0xc8c
00000C88  B001              mov al,0x1
00000C8A  EB00              jmp short 0xc8c
00000C8C  A23A02            mov [0x23a],al
00000C8F  8F068601          pop word [0x186]
00000C93  07                pop es
00000C94  FF368601          push word [0x186]
00000C98  268A4502          mov al,[es:di+0x2]
00000C9C  240F              and al,0xf
00000C9E  7406              jz 0xca6
00000CA0  26806502DF        and byte [es:di+0x2],0xdf
00000CA5  C3                ret
00000CA6  26894D06          mov [es:di+0x6],cx
00000CAA  E8C500            call word 0xd72
00000CAD  803E800100        cmp byte [0x180],0x0
00000CB2  75F1              jnz 0xca5
00000CB4  E8EA00            call word 0xda1
00000CB7  803E800100        cmp byte [0x180],0x0
00000CBC  75E7              jnz 0xca5
00000CBE  F70674010200      test word [0x174],0x2
00000CC4  7415              jz 0xcdb
00000CC6  B80044            mov ax,0x4400
00000CC9  268B1D            mov bx,[es:di]
00000CCC  E8A5F6            call word 0x374
00000CCF  F7C28000          test dx,0x80
00000CD3  7406              jz 0xcdb
00000CD5  26C745060100      mov word [es:di+0x6],0x1
00000CDB  803E3A0201        cmp byte [0x23a],0x1
00000CE0  7312              jnc 0xcf4
00000CE2  26C6450280        mov byte [es:di+0x2],0x80
00000CE7  268B5D04          mov bx,[es:di+0x4]
00000CEB  26895D08          mov [es:di+0x8],bx
00000CEF  26895D0A          mov [es:di+0xa],bx
00000CF3  C3                ret
00000CF4  745B              jz 0xd51
00000CF6  B80242            mov ax,0x4202
00000CF9  268B1D            mov bx,[es:di]
00000CFC  33C9              xor cx,cx
00000CFE  33D2              xor dx,dx
00000D00  E871F6            call word 0x374
00000D03  268B4D06          mov cx,[es:di+0x6]
00000D07  81F98000          cmp cx,0x80
00000D0B  7203              jc 0xd10
00000D0D  B98000            mov cx,0x80
00000D10  2BC1              sub ax,cx
00000D12  83DA00            sbb dx,byte +0x0
00000D15  730A              jnc 0xd21
00000D17  03C1              add ax,cx
00000D19  7436              jz 0xd51
00000D1B  8BC8              mov cx,ax
00000D1D  33C0              xor ax,ax
00000D1F  33D2              xor dx,dx
00000D21  51                push cx
00000D22  8BCA              mov cx,dx
00000D24  8BD0              mov dx,ax
00000D26  B80042            mov ax,0x4200
00000D29  268B1D            mov bx,[es:di]
00000D2C  E845F6            call word 0x374
00000D2F  E80402            call word 0xf36
00000D32  5A                pop dx
00000D33  F7DA              neg dx
00000D35  268B7508          mov si,[es:di+0x8]
00000D39  26803C1A          cmp byte [es:si],0x1a
00000D3D  7406              jz 0xd45
00000D3F  46                inc si
00000D40  42                inc dx
00000D41  75F6              jnz 0xd39
00000D43  EB0C              jmp short 0xd51
00000D45  B80242            mov ax,0x4202
00000D48  268B1D            mov bx,[es:di]
00000D4B  B9FFFF            mov cx,0xffff
00000D4E  E823F6            call word 0x374
00000D51  26C6450240        mov byte [es:di+0x2],0x40
00000D56  268B4504          mov ax,[es:di+0x4]
00000D5A  26894508          mov [es:di+0x8],ax
00000D5E  26034506          add ax,[es:di+0x6]
00000D62  2689450A          mov [es:di+0xa],ax
00000D66  C3                ret
00000D67  26807D0240        cmp byte [es:di+0x2],0x40
00000D6C  7503              jnz 0xd71
00000D6E  E95102            jmp word 0xfc2
00000D71  C3                ret
00000D72  268A4502          mov al,[es:di+0x2]
00000D76  240F              and al,0xf
00000D78  7526              jnz 0xda0
00000D7A  E8EAFF            call word 0xd67
00000D7D  26C6450200        mov byte [es:di+0x2],0x0
00000D82  268B1D            mov bx,[es:di]
00000D85  83FB02            cmp bx,byte +0x2
00000D88  7616              jna 0xda0
00000D8A  83FBFF            cmp bx,byte -0x1
00000D8D  7411              jz 0xda0
00000D8F  26C705FFFF        mov word [es:di],0xffff
00000D94  B43E              mov ah,0x3e
00000D96  E8DBF5            call word 0x374
00000D99  7305              jnc 0xda0
00000D9B  C6068001FF        mov byte [0x180],0xff
00000DA0  C3                ret
00000DA1  26833DFF          cmp word [es:di],byte -0x1
00000DA5  752D              jnz 0xdd4
00000DA7  B8023D            mov ax,0x3d02
00000DAA  B201              mov dl,0x1
00000DAC  F6063A0201        test byte [0x23a],0x1
00000DB1  7406              jz 0xdb9
00000DB3  B43C              mov ah,0x3c
00000DB5  33C9              xor cx,cx
00000DB7  B2F1              mov dl,0xf1
00000DB9  52                push dx
00000DBA  8D550C            lea dx,[di+0xc]
00000DBD  E8B4F5            call word 0x374
00000DC0  5A                pop dx
00000DC1  7204              jc 0xdc7
00000DC3  268905            mov [es:di],ax
00000DC6  C3                ret
00000DC7  88168001          mov [0x180],dl
00000DCB  3C04              cmp al,0x4
00000DCD  7505              jnz 0xdd4
00000DCF  C6068001F3        mov byte [0x180],0xf3
00000DD4  C3                ret
00000DD5  8F068601          pop word [0x186]
00000DD9  07                pop es
00000DDA  893E3402          mov [0x234],di
00000DDE  8C063602          mov [0x236],es
00000DE2  26F6450280        test byte [es:di+0x2],0x80
00000DE7  7505              jnz 0xdee
00000DE9  C606800102        mov byte [0x180],0x2
00000DEE  FF268601          jmp word [0x186]
00000DF2  8F068601          pop word [0x186]
00000DF6  C70634026801      mov word [0x234],0x168
00000DFC  8C1E3602          mov [0x236],ds
00000E00  FF268601          jmp word [0x186]
00000E04  8A2E8101          mov ch,[0x181]
00000E08  80FD7E            cmp ch,0x7e
00000E0B  7202              jc 0xe0f
00000E0D  B57E              mov ch,0x7e
00000E0F  C60681017E        mov byte [0x181],0x7e
00000E14  BB3800            mov bx,0x38
00000E17  891E8201          mov [0x182],bx
00000E1B  32C9              xor cl,cl
00000E1D  E877F6            call word 0x497
00000E20  B201              mov dl,0x1
00000E22  3C08              cmp al,0x8
00000E24  7439              jz 0xe5f
00000E26  3C7F              cmp al,0x7f
00000E28  7435              jz 0xe5f
00000E2A  3C04              cmp al,0x4
00000E2C  7443              jz 0xe71
00000E2E  FECA              dec dl
00000E30  3C18              cmp al,0x18
00000E32  742B              jz 0xe5f
00000E34  3C1B              cmp al,0x1b
00000E36  7427              jz 0xe5f
00000E38  3C12              cmp al,0x12
00000E3A  7435              jz 0xe71
00000E3C  3C1A              cmp al,0x1a
00000E3E  7443              jz 0xe83
00000E40  3C0D              cmp al,0xd
00000E42  7445              jz 0xe89
00000E44  3C20              cmp al,0x20
00000E46  72D5              jc 0xe1d
00000E48  3ACD              cmp cl,ch
00000E4A  74D1              jz 0xe1d
00000E4C  8A27              mov ah,[bx]
00000E4E  8807              mov [bx],al
00000E50  FEC1              inc cl
00000E52  43                inc bx
00000E53  80FC20            cmp ah,0x20
00000E56  7302              jnc 0xe5a
00000E58  8827              mov [bx],ah
00000E5A  E84300            call word 0xea0
00000E5D  EBBE              jmp short 0xe1d
00000E5F  FEC9              dec cl
00000E61  78B8              js 0xe1b
00000E63  E83DF6            call word 0x4a3
00000E66  0820              or [bx+si],ah
00000E68  0800              or [bx+si],al
00000E6A  4B                dec bx
00000E6B  FECA              dec dl
00000E6D  75F0              jnz 0xe5f
00000E6F  EBAC              jmp short 0xe1d
00000E71  8A07              mov al,[bx]
00000E73  3C20              cmp al,0x20
00000E75  72A6              jc 0xe1d
00000E77  E82600            call word 0xea0
00000E7A  FEC1              inc cl
00000E7C  43                inc bx
00000E7D  FECA              dec dl
00000E7F  75F0              jnz 0xe71
00000E81  EB9A              jmp short 0xe1d
00000E83  0AF6              or dh,dh
00000E85  7496              jz 0xe1d
00000E87  EB04              jmp short 0xe8d
00000E89  0AF6              or dh,dh
00000E8B  7505              jnz 0xe92
00000E8D  C6071A            mov byte [bx],0x1a
00000E90  EB08              jmp short 0xe9a
00000E92  E826F6            call word 0x4bb
00000E95  C7070D0A          mov word [bx],0xa0d
00000E99  43                inc bx
00000E9A  43                inc bx
00000E9B  891E8401          mov [0x184],bx
00000E9F  C3                ret
00000EA0  8A269601          mov ah,[0x196]
00000EA4  C606960100        mov byte [0x196],0x0
00000EA9  50                push ax
00000EAA  E8D8F5            call word 0x485
00000EAD  58                pop ax
00000EAE  88269601          mov [0x196],ah
00000EB2  C3                ret
00000EB3  C43E3402          les di,[0x234]
00000EB7  803E800100        cmp byte [0x180],0x0
00000EBC  7575              jnz 0xf33
00000EBE  268A4502          mov al,[es:di+0x2]
00000EC2  A820              test al,0x20
00000EC4  7568              jnz 0xf2e
00000EC6  240F              and al,0xf
00000EC8  751B              jnz 0xee5
00000ECA  268B5D08          mov bx,[es:di+0x8]
00000ECE  263B5D0A          cmp bx,[es:di+0xa]
00000ED2  7207              jc 0xedb
00000ED4  E85F00            call word 0xf36
00000ED7  268B5D08          mov bx,[es:di+0x8]
00000EDB  268A07            mov al,[es:bx]
00000EDE  43                inc bx
00000EDF  26895D08          mov [es:di+0x8],bx
00000EE3  EB3F              jmp short 0xf24
00000EE5  06                push es
00000EE6  57                push di
00000EE7  3C01              cmp al,0x1
00000EE9  751C              jnz 0xf07
00000EEB  8B1E8201          mov bx,[0x182]
00000EEF  3B1E8401          cmp bx,[0x184]
00000EF3  7209              jc 0xefe
00000EF5  8AF0              mov dh,al
00000EF7  E80AFF            call word 0xe04
00000EFA  8B1E8201          mov bx,[0x182]
00000EFE  8A07              mov al,[bx]
00000F00  43                inc bx
00000F01  891E8201          mov [0x182],bx
00000F05  EB1B              jmp short 0xf22
00000F07  3C02              cmp al,0x2
00000F09  7507              jnz 0xf12
00000F0B  4C                dec sp
00000F0C  FF163A01          call word [0x13a]
00000F10  EB10              jmp short 0xf22
00000F12  3C04              cmp al,0x4
00000F14  7507              jnz 0xf1d
00000F16  4C                dec sp
00000F17  FF164201          call word [0x142]
00000F1B  EB05              jmp short 0xf22
00000F1D  4C                dec sp
00000F1E  FF164601          call word [0x146]
00000F22  5F                pop di
00000F23  07                pop es
00000F24  26884503          mov [es:di+0x3],al
00000F28  26804D0220        or byte [es:di+0x2],0x20
00000F2D  C3                ret
00000F2E  268A4503          mov al,[es:di+0x3]
00000F32  C3                ret
00000F33  B01A              mov al,0x1a
00000F35  C3                ret
00000F36  B43F              mov ah,0x3f
00000F38  268B1D            mov bx,[es:di]
00000F3B  268B4D06          mov cx,[es:di+0x6]
00000F3F  268B5504          mov dx,[es:di+0x4]
00000F43  1E                push ds
00000F44  06                push es
00000F45  1F                pop ds
00000F46  E82BF4            call word 0x374
00000F49  1F                pop ds
00000F4A  7302              jnc 0xf4e
00000F4C  33C0              xor ax,ax
00000F4E  268B5D04          mov bx,[es:di+0x4]
00000F52  0BC0              or ax,ax
00000F54  7505              jnz 0xf5b
00000F56  26C6071A          mov byte [es:bx],0x1a
00000F5A  40                inc ax
00000F5B  26895D08          mov [es:di+0x8],bx
00000F5F  03D8              add bx,ax
00000F61  26895D0A          mov [es:di+0xa],bx
00000F65  C3                ret
00000F66  57                push di
00000F67  E849FF            call word 0xeb3
00000F6A  26806502DF        and byte [es:di+0x2],0xdf
00000F6F  5F                pop di
00000F70  5B                pop bx
00000F71  07                pop es
00000F72  268805            mov [es:di],al
00000F75  FFE3              jmp bx
00000F77  C43E3402          les di,[0x234]
00000F7B  803E800100        cmp byte [0x180],0x0
00000F80  753F              jnz 0xfc1
00000F82  268A4D02          mov cl,[es:di+0x2]
00000F86  80E10F            and cl,0xf
00000F89  7513              jnz 0xf9e
00000F8B  268B5D08          mov bx,[es:di+0x8]
00000F8F  268807            mov [es:bx],al
00000F92  43                inc bx
00000F93  26895D08          mov [es:di+0x8],bx
00000F97  263B5D0A          cmp bx,[es:di+0xa]
00000F9B  7425              jz 0xfc2
00000F9D  C3                ret
00000F9E  50                push ax
00000F9F  80F901            cmp cl,0x1
00000FA2  740F              jz 0xfb3
00000FA4  80F903            cmp cl,0x3
00000FA7  740F              jz 0xfb8
00000FA9  80F904            cmp cl,0x4
00000FAC  740F              jz 0xfbd
00000FAE  FF164401          call word [0x144]
00000FB2  C3                ret
00000FB3  FF163C01          call word [0x13c]
00000FB7  C3                ret
00000FB8  FF163E01          call word [0x13e]
00000FBC  C3                ret
00000FBD  FF164001          call word [0x140]
00000FC1  C3                ret
00000FC2  268B4D08          mov cx,[es:di+0x8]
00000FC6  262B4D04          sub cx,[es:di+0x4]
00000FCA  741F              jz 0xfeb
00000FCC  B440              mov ah,0x40
00000FCE  268B1D            mov bx,[es:di]
00000FD1  268B5504          mov dx,[es:di+0x4]
00000FD5  26895508          mov [es:di+0x8],dx
00000FD9  1E                push ds
00000FDA  06                push es
00000FDB  1F                pop ds
00000FDC  E895F3            call word 0x374
00000FDF  1F                pop ds
00000FE0  7204              jc 0xfe6
00000FE2  3BC1              cmp ax,cx
00000FE4  7405              jz 0xfeb
00000FE6  C6068001F0        mov byte [0x180],0xf0
00000FEB  C3                ret
00000FEC  5B                pop bx
00000FED  2E8A0F            mov cl,[cs:bx]
00000FF0  32ED              xor ch,ch
00000FF2  43                inc bx
00000FF3  E30D              jcxz 0x1002
00000FF5  2E8A07            mov al,[cs:bx]
00000FF8  53                push bx
00000FF9  51                push cx
00000FFA  E87AFF            call word 0xf77
00000FFD  59                pop cx
00000FFE  5B                pop bx
00000FFF  43                inc bx
00001000  E2F3              loop 0xff5
00001002  FFE3              jmp bx
00001004  B00D              mov al,0xd
00001006  E86EFF            call word 0xf77
00001009  B00A              mov al,0xa
0000100B  E969FF            jmp word 0xf77
0000100E  E8DAF4            call word 0x4eb
00001011  0200              add al,[bx+si]
00001013  CA3F8E            retf 0x8e3f
00001016  49                dec cx
00001017  B002              mov al,0x2
00001019  6300              arpl [bx+si],ax
0000101B  0004              add [si],al
0000101D  00A01000          add [bx+si+0x10],ah
00001021  0000              add [bx+si],al
00001023  0000              add [bx+si],al
00001025  8BEC              mov bp,sp
00001027  E9D218            jmp word 0x28fc
0000102A  55                push bp
0000102B  8BEC              mov bp,sp
0000102D  55                push bp
0000102E  B412              mov ah,0x12
00001030  B310              mov bl,0x10
00001032  B9FFFF            mov cx,0xffff
00001035  CD10              int 0x10
00001037  83F9FF            cmp cx,byte -0x1
0000103A  7440              jz 0x107c
0000103C  8AC7              mov al,bh
0000103E  250100            and ax,0x1
00001041  3401              xor al,0x1
00001043  0404              add al,0x4
00001045  A36202            mov [0x262],ax
00001048  890E6402          mov [0x264],cx
0000104C  8AC3              mov al,bl
0000104E  250300            and ax,0x3
00001051  40                inc ax
00001052  B106              mov cl,0x6
00001054  D3E0              shl ax,cl
00001056  A36602            mov [0x266],ax
00001059  BB0400            mov bx,0x4
0000105C  3D4000            cmp ax,0x40
0000105F  7403              jz 0x1064
00001061  BB1000            mov bx,0x10
00001064  891E6E02          mov [0x26e],bx
00001068  B81000            mov ax,0x10
0000106B  A36C02            mov [0x26c],ax
0000106E  B87F02            mov ax,0x27f
00001071  A36802            mov [0x268],ax
00001074  B85D01            mov ax,0x15d
00001077  A36A02            mov [0x26a],ax
0000107A  EB05              jmp short 0x1081
0000107C  33C0              xor ax,ax
0000107E  A36202            mov [0x262],ax
00001081  B800A0            mov ax,0xa000
00001084  A3C602            mov [0x2c6],ax
00001087  B8F87F            mov ax,0x7ff8
0000108A  A3C802            mov [0x2c8],ax
0000108D  8BE5              mov sp,bp
0000108F  5D                pop bp
00001090  C3                ret
00001091  55                push bp
00001092  8BEC              mov bp,sp
00001094  55                push bp
00001095  B412              mov ah,0x12
00001097  B310              mov bl,0x10
00001099  B9FFFF            mov cx,0xffff
0000109C  CD10              int 0x10
0000109E  83F9FF            cmp cx,byte -0x1
000010A1  740D              jz 0x10b0
000010A3  B81000            mov ax,0x10
000010A6  F6C701            test bh,0x1
000010A9  7403              jz 0x10ae
000010AB  B80F00            mov ax,0xf
000010AE  CD10              int 0x10
000010B0  B80700            mov ax,0x7
000010B3  A37002            mov [0x270],ax
000010B6  33C0              xor ax,ax
000010B8  A37202            mov [0x272],ax
000010BB  B80300            mov ax,0x3
000010BE  A3BE02            mov [0x2be],ax
000010C1  B80400            mov ax,0x4
000010C4  A3C002            mov [0x2c0],ax
000010C7  33C0              xor ax,ax
000010C9  A3C202            mov [0x2c2],ax
000010CC  A3C402            mov [0x2c4],ax
000010CF  A3CA02            mov [0x2ca],ax
000010D2  A16802            mov ax,[0x268]
000010D5  A3CC02            mov [0x2cc],ax
000010D8  A16802            mov ax,[0x268]
000010DB  40                inc ax
000010DC  A3CE02            mov [0x2ce],ax
000010DF  33C0              xor ax,ax
000010E1  A3D002            mov [0x2d0],ax
000010E4  A16A02            mov ax,[0x26a]
000010E7  A3D202            mov [0x2d2],ax
000010EA  A16A02            mov ax,[0x26a]
000010ED  40                inc ax
000010EE  A3D402            mov [0x2d4],ax
000010F1  33C0              xor ax,ax
000010F3  A3D602            mov [0x2d6],ax
000010F6  A16802            mov ax,[0x268]
000010F9  A3D802            mov [0x2d8],ax
000010FC  A16802            mov ax,[0x268]
000010FF  40                inc ax
00001100  A3DA02            mov [0x2da],ax
00001103  33C0              xor ax,ax
00001105  A3DC02            mov [0x2dc],ax
00001108  A16A02            mov ax,[0x26a]
0000110B  A3DE02            mov [0x2de],ax
0000110E  A16A02            mov ax,[0x26a]
00001111  40                inc ax
00001112  A3E002            mov [0x2e0],ax
00001115  33C0              xor ax,ax
00001117  A3E402            mov [0x2e4],ax
0000111A  B90000            mov cx,0x0
0000111D  BA0100            mov dx,0x1
00001120  E83AF5            call word 0x65d
00001123  A2E602            mov [0x2e6],al
00001126  8BE5              mov sp,bp
00001128  5D                pop bp
00001129  C3                ret
0000112A  55                push bp
0000112B  8BEC              mov bp,sp
0000112D  55                push bp
0000112E  B412              mov ah,0x12
00001130  B310              mov bl,0x10
00001132  CD10              int 0x10
00001134  B80300            mov ax,0x3
00001137  F6C701            test bh,0x1
0000113A  7403              jz 0x113f
0000113C  B80700            mov ax,0x7
0000113F  CD10              int 0x10
00001141  8BE5              mov sp,bp
00001143  5D                pop bp
00001144  C3                ret
00001145  55                push bp
00001146  8BEC              mov bp,sp
00001148  55                push bp
00001149  8B4604            mov ax,[bp+0x4]
0000114C  A37002            mov [0x270],ax
0000114F  33C0              xor ax,ax
00001151  A3E402            mov [0x2e4],ax
00001154  8BE5              mov sp,bp
00001156  5D                pop bp
00001157  C20200            ret 0x2
0000115A  55                push bp
0000115B  8BEC              mov bp,sp
0000115D  55                push bp
0000115E  8B4604            mov ax,[bp+0x4]
00001161  250300            and ax,0x3
00001164  B90300            mov cx,0x3
00001167  D3E0              shl ax,cl
00001169  A37202            mov [0x272],ax
0000116C  8BE5              mov sp,bp
0000116E  5D                pop bp
0000116F  C20200            ret 0x2
00001172  55                push bp
00001173  8BEC              mov bp,sp
00001175  55                push bp
00001176  8B4606            mov ax,[bp+0x6]
00001179  A3C202            mov [0x2c2],ax
0000117C  8B4604            mov ax,[bp+0x4]
0000117F  A3C402            mov [0x2c4],ax
00001182  8BE5              mov sp,bp
00001184  5D                pop bp
00001185  C20400            ret 0x4
00001188  55                push bp
00001189  8BEC              mov bp,sp
0000118B  55                push bp
0000118C  55                push bp
0000118D  8B0EC202          mov cx,[0x2c2]
00001191  8B1EC402          mov bx,[0x2c4]
00001195  8B7606            mov si,[bp+0x6]
00001198  8B7E04            mov di,[bp+0x4]
0000119B  8936C202          mov [0x2c2],si
0000119F  893EC402          mov [0x2c4],di
000011A3  C706E2020000      mov word [0x2e2],0x0
000011A9  33C0              xor ax,ax
000011AB  3B1EDC02          cmp bx,[0x2dc]
000011AF  7D03              jnl 0x11b4
000011B1  80CC08            or ah,0x8
000011B4  3B1EDE02          cmp bx,[0x2de]
000011B8  7E03              jng 0x11bd
000011BA  80CC04            or ah,0x4
000011BD  3B0ED602          cmp cx,[0x2d6]
000011C1  7D03              jnl 0x11c6
000011C3  80CC02            or ah,0x2
000011C6  3B0ED802          cmp cx,[0x2d8]
000011CA  7E03              jng 0x11cf
000011CC  80CC01            or ah,0x1
000011CF  3B3EDC02          cmp di,[0x2dc]
000011D3  7D02              jnl 0x11d7
000011D5  0C08              or al,0x8
000011D7  3B3EDE02          cmp di,[0x2de]
000011DB  7E02              jng 0x11df
000011DD  0C04              or al,0x4
000011DF  3B36D602          cmp si,[0x2d6]
000011E3  7D02              jnl 0x11e7
000011E5  0C02              or al,0x2
000011E7  3B36D802          cmp si,[0x2d8]
000011EB  7E02              jng 0x11ef
000011ED  0C01              or al,0x1
000011EF  0BC0              or ax,ax
000011F1  7503              jnz 0x11f6
000011F3  E99900            jmp word 0x128f
000011F6  C706E2020100      mov word [0x2e2],0x1
000011FC  84E0              test al,ah
000011FE  7409              jz 0x1209
00001200  C706E2020200      mov word [0x2e2],0x2
00001206  E96E02            jmp word 0x1477
00001209  0AC0              or al,al
0000120B  7506              jnz 0x1213
0000120D  87CE              xchg cx,si
0000120F  87DF              xchg bx,di
00001211  86E0              xchg ah,al
00001213  A802              test al,0x2
00001215  7524              jnz 0x123b
00001217  A804              test al,0x4
00001219  753C              jnz 0x1257
0000121B  A808              test al,0x8
0000121D  7554              jnz 0x1273
0000121F  8BEF              mov bp,di
00001221  2BEB              sub bp,bx
00001223  A1D802            mov ax,[0x2d8]
00001226  2BC1              sub ax,cx
00001228  F7ED              imul bp
0000122A  8BEE              mov bp,si
0000122C  2BE9              sub bp,cx
0000122E  F7FD              idiv bp
00001230  03C3              add ax,bx
00001232  8B36D802          mov si,[0x2d8]
00001236  8BF8              mov di,ax
00001238  E96EFF            jmp word 0x11a9
0000123B  8BEF              mov bp,di
0000123D  2BEB              sub bp,bx
0000123F  A1D602            mov ax,[0x2d6]
00001242  2BC1              sub ax,cx
00001244  F7ED              imul bp
00001246  8BEE              mov bp,si
00001248  2BE9              sub bp,cx
0000124A  F7FD              idiv bp
0000124C  03C3              add ax,bx
0000124E  8B36D602          mov si,[0x2d6]
00001252  8BF8              mov di,ax
00001254  E952FF            jmp word 0x11a9
00001257  8BEE              mov bp,si
00001259  2BE9              sub bp,cx
0000125B  A1DE02            mov ax,[0x2de]
0000125E  2BC3              sub ax,bx
00001260  F7ED              imul bp
00001262  8BEF              mov bp,di
00001264  2BEB              sub bp,bx
00001266  F7FD              idiv bp
00001268  03C1              add ax,cx
0000126A  8BF0              mov si,ax
0000126C  8B3EDE02          mov di,[0x2de]
00001270  E936FF            jmp word 0x11a9
00001273  8BEE              mov bp,si
00001275  2BE9              sub bp,cx
00001277  A1DC02            mov ax,[0x2dc]
0000127A  2BC3              sub ax,bx
0000127C  F7ED              imul bp
0000127E  8BEF              mov bp,di
00001280  2BEB              sub bp,bx
00001282  F7FD              idiv bp
00001284  03C1              add ax,cx
00001286  8BF0              mov si,ax
00001288  8B3EDC02          mov di,[0x2dc]
0000128C  E91AFF            jmp word 0x11a9
0000128F  BACE03            mov dx,0x3ce
00001292  8A267202          mov ah,[0x272]
00001296  B003              mov al,0x3
00001298  EF                out dx,ax
00001299  B80502            mov ax,0x205
0000129C  EF                out dx,ax
0000129D  8BD6              mov dx,si
0000129F  3BD1              cmp dx,cx
000012A1  7304              jnc 0x12a7
000012A3  87CA              xchg cx,dx
000012A5  87DF              xchg bx,di
000012A7  2BD1              sub dx,cx
000012A9  2BFB              sub di,bx
000012AB  8BF3              mov si,bx
000012AD  D1E6              shl si,1
000012AF  D1E6              shl si,1
000012B1  03F3              add si,bx
000012B3  D1E6              shl si,1
000012B5  D1E6              shl si,1
000012B7  D1E6              shl si,1
000012B9  D1E6              shl si,1
000012BB  8BD9              mov bx,cx
000012BD  D1EB              shr bx,1
000012BF  D1EB              shr bx,1
000012C1  D1EB              shr bx,1
000012C3  03DE              add bx,si
000012C5  8BF2              mov si,dx
000012C7  BACE03            mov dx,0x3ce
000012CA  B008              mov al,0x8
000012CC  EE                out dx,al
000012CD  42                inc dx
000012CE  80E107            and cl,0x7
000012D1  B080              mov al,0x80
000012D3  D2C8              ror al,cl
000012D5  833EE40200        cmp word [0x2e4],byte +0x0
000012DA  7503              jnz 0x12df
000012DC  E9BC00            jmp word 0x139b
000012DF  56                push si
000012E0  C4367402          les si,[0x274]
000012E4  26803C01          cmp byte [es:si],0x1
000012E8  7508              jnz 0x12f2
000012EA  268A6401          mov ah,[es:si+0x1]
000012EE  5E                pop si
000012EF  E9A900            jmp word 0x139b
000012F2  5E                pop si
000012F3  897604            mov [bp+0x4],si
000012F6  897E06            mov [bp+0x6],di
000012F9  0BFF              or di,di
000012FB  790A              jns 0x1307
000012FD  F7DF              neg di
000012FF  3BFE              cmp di,si
00001301  7702              ja 0x1305
00001303  EB71              jmp short 0x1376
00001305  EB4C              jmp short 0x1353
00001307  3BFE              cmp di,si
00001309  7725              ja 0x1330
0000130B  8BCE              mov cx,si
0000130D  8BFE              mov di,si
0000130F  D1EF              shr di,1
00001311  F7DF              neg di
00001313  C4367402          les si,[0x274]
00001317  268A24            mov ah,[es:si]
0000131A  46                inc si
0000131B  E82501            call word 0x1443
0000131E  D0C8              ror al,1
00001320  83D300            adc bx,byte +0x0
00001323  037E06            add di,[bp+0x6]
00001326  78F3              js 0x131b
00001328  83C350            add bx,byte +0x50
0000132B  2B7E04            sub di,[bp+0x4]
0000132E  EBEB              jmp short 0x131b
00001330  8BCF              mov cx,di
00001332  D1EF              shr di,1
00001334  F7DF              neg di
00001336  C4367402          les si,[0x274]
0000133A  268A24            mov ah,[es:si]
0000133D  46                inc si
0000133E  E80201            call word 0x1443
00001341  83C350            add bx,byte +0x50
00001344  037E04            add di,[bp+0x4]
00001347  78F5              js 0x133e
00001349  D0C8              ror al,1
0000134B  83D300            adc bx,byte +0x0
0000134E  2B7E06            sub di,[bp+0x6]
00001351  EBEB              jmp short 0x133e
00001353  8BCF              mov cx,di
00001355  D1EF              shr di,1
00001357  F7DF              neg di
00001359  C4367402          les si,[0x274]
0000135D  268A24            mov ah,[es:si]
00001360  46                inc si
00001361  E8DF00            call word 0x1443
00001364  83EB50            sub bx,byte +0x50
00001367  037E04            add di,[bp+0x4]
0000136A  78F5              js 0x1361
0000136C  D0C8              ror al,1
0000136E  83D300            adc bx,byte +0x0
00001371  037E06            add di,[bp+0x6]
00001374  EBEB              jmp short 0x1361
00001376  8BCE              mov cx,si
00001378  8BFE              mov di,si
0000137A  D1EF              shr di,1
0000137C  F7DF              neg di
0000137E  C4367402          les si,[0x274]
00001382  268A24            mov ah,[es:si]
00001385  46                inc si
00001386  E8BA00            call word 0x1443
00001389  D0C8              ror al,1
0000138B  83D300            adc bx,byte +0x0
0000138E  2B7E06            sub di,[bp+0x6]
00001391  78F3              js 0x1386
00001393  83EB50            sub bx,byte +0x50
00001396  2B7E04            sub di,[bp+0x4]
00001399  EBEB              jmp short 0x1386
0000139B  8A267002          mov ah,[0x270]
0000139F  55                push bp
000013A0  8E06C602          mov es,[0x2c6]
000013A4  0BFF              or di,di
000013A6  7908              jns 0x13b0
000013A8  F7DF              neg di
000013AA  3BFE              cmp di,si
000013AC  774C              ja 0x13fa
000013AE  EB6D              jmp short 0x141d
000013B0  3BFE              cmp di,si
000013B2  7723              ja 0x13d7
000013B4  8BCE              mov cx,si
000013B6  8BEE              mov bp,si
000013B8  D1ED              shr bp,1
000013BA  F7DD              neg bp
000013BC  EE                out dx,al
000013BD  26803F00          cmp byte [es:bx],0x0
000013C1  268827            mov [es:bx],ah
000013C4  49                dec cx
000013C5  7879              js 0x1440
000013C7  D0C8              ror al,1
000013C9  83D300            adc bx,byte +0x0
000013CC  03EF              add bp,di
000013CE  78EC              js 0x13bc
000013D0  83C350            add bx,byte +0x50
000013D3  2BEE              sub bp,si
000013D5  EBE5              jmp short 0x13bc
000013D7  8BCF              mov cx,di
000013D9  8BEF              mov bp,di
000013DB  D1ED              shr bp,1
000013DD  F7DD              neg bp
000013DF  EE                out dx,al
000013E0  26803F00          cmp byte [es:bx],0x0
000013E4  268827            mov [es:bx],ah
000013E7  49                dec cx
000013E8  7856              js 0x1440
000013EA  83C350            add bx,byte +0x50
000013ED  03EE              add bp,si
000013EF  78EE              js 0x13df
000013F1  D0C8              ror al,1
000013F3  83D300            adc bx,byte +0x0
000013F6  2BEF              sub bp,di
000013F8  EBE5              jmp short 0x13df
000013FA  8BCF              mov cx,di
000013FC  8BEF              mov bp,di
000013FE  D1ED              shr bp,1
00001400  F7DD              neg bp
00001402  EE                out dx,al
00001403  26803F00          cmp byte [es:bx],0x0
00001407  268827            mov [es:bx],ah
0000140A  49                dec cx
0000140B  7833              js 0x1440
0000140D  83EB50            sub bx,byte +0x50
00001410  03EE              add bp,si
00001412  78EE              js 0x1402
00001414  D0C8              ror al,1
00001416  83D300            adc bx,byte +0x0
00001419  2BEF              sub bp,di
0000141B  EBE5              jmp short 0x1402
0000141D  8BCE              mov cx,si
0000141F  8BEE              mov bp,si
00001421  D1ED              shr bp,1
00001423  F7DD              neg bp
00001425  EE                out dx,al
00001426  26803F00          cmp byte [es:bx],0x0
0000142A  268827            mov [es:bx],ah
0000142D  49                dec cx
0000142E  7810              js 0x1440
00001430  D0C8              ror al,1
00001432  83D300            adc bx,byte +0x0
00001435  03EF              add bp,di
00001437  78EC              js 0x1425
00001439  83EB50            sub bx,byte +0x50
0000143C  2BEE              sub bp,si
0000143E  EBE5              jmp short 0x1425
00001440  5D                pop bp
00001441  EB25              jmp short 0x1468
00001443  EE                out dx,al
00001444  50                push ax
00001445  268A04            mov al,[es:si]
00001448  8E06C602          mov es,[0x2c6]
0000144C  268A27            mov ah,[es:bx]
0000144F  268807            mov [es:bx],al
00001452  8E067602          mov es,[0x276]
00001456  58                pop ax
00001457  FECC              dec ah
00001459  7507              jnz 0x1462
0000145B  8B367402          mov si,[0x274]
0000145F  268A24            mov ah,[es:si]
00001462  46                inc si
00001463  49                dec cx
00001464  7801              js 0x1467
00001466  C3                ret
00001467  58                pop ax
00001468  BACE03            mov dx,0x3ce
0000146B  B80300            mov ax,0x3
0000146E  EF                out dx,ax
0000146F  B80500            mov ax,0x5
00001472  EF                out dx,ax
00001473  B808FF            mov ax,0xff08
00001476  EF                out dx,ax
00001477  5D                pop bp
00001478  8BE5              mov sp,bp
0000147A  5D                pop bp
0000147B  C20400            ret 0x4
0000147E  55                push bp
0000147F  8BEC              mov bp,sp
00001481  55                push bp
00001482  C706E2020000      mov word [0x2e2],0x0
00001488  8B4604            mov ax,[bp+0x4]
0000148B  3B06DC02          cmp ax,[0x2dc]
0000148F  7C15              jl 0x14a6
00001491  3B06DE02          cmp ax,[0x2de]
00001495  7F0F              jg 0x14a6
00001497  8B7E06            mov di,[bp+0x6]
0000149A  3B3ED602          cmp di,[0x2d6]
0000149E  7C06              jl 0x14a6
000014A0  3B3ED802          cmp di,[0x2d8]
000014A4  7E08              jng 0x14ae
000014A6  C706E2020200      mov word [0x2e2],0x2
000014AC  EB49              jmp short 0x14f7
000014AE  A3C402            mov [0x2c4],ax
000014B1  D1E0              shl ax,1
000014B3  D1E0              shl ax,1
000014B5  034604            add ax,[bp+0x4]
000014B8  0500A0            add ax,0xa000
000014BB  8EC0              mov es,ax
000014BD  893EC202          mov [0x2c2],di
000014C1  89F9              mov cx,di
000014C3  D1EF              shr di,1
000014C5  D1EF              shr di,1
000014C7  D1EF              shr di,1
000014C9  BACE03            mov dx,0x3ce
000014CC  8A267202          mov ah,[0x272]
000014D0  B003              mov al,0x3
000014D2  EF                out dx,ax
000014D3  B80502            mov ax,0x205
000014D6  EF                out dx,ax
000014D7  B008              mov al,0x8
000014D9  EE                out dx,al
000014DA  42                inc dx
000014DB  B080              mov al,0x80
000014DD  80E107            and cl,0x7
000014E0  D2C8              ror al,cl
000014E2  EE                out dx,al
000014E3  268A05            mov al,[es:di]
000014E6  A07002            mov al,[0x270]
000014E9  268805            mov [es:di],al
000014EC  B0FF              mov al,0xff
000014EE  EE                out dx,al
000014EF  4A                dec dx
000014F0  B80500            mov ax,0x5
000014F3  EF                out dx,ax
000014F4  B003              mov al,0x3
000014F6  EF                out dx,ax
000014F7  8BE5              mov sp,bp
000014F9  5D                pop bp
000014FA  C20400            ret 0x4
000014FD  55                push bp
000014FE  8BEC              mov bp,sp
00001500  55                push bp
00001501  BACE03            mov dx,0x3ce
00001504  8A267202          mov ah,[0x272]
00001508  B003              mov al,0x3
0000150A  EF                out dx,ax
0000150B  B80502            mov ax,0x205
0000150E  EF                out dx,ax
0000150F  8B460A            mov ax,[bp+0xa]
00001512  8B5E08            mov bx,[bp+0x8]
00001515  8B7E06            mov di,[bp+0x6]
00001518  8BC8              mov cx,ax
0000151A  80E107            and cl,0x7
0000151D  B2FF              mov dl,0xff
0000151F  D2EA              shr dl,cl
00001521  88560A            mov [bp+0xa],dl
00001524  8BCF              mov cx,di
00001526  80E107            and cl,0x7
00001529  B280              mov dl,0x80
0000152B  D2FA              sar dl,cl
0000152D  885608            mov [bp+0x8],dl
00001530  8B4E04            mov cx,[bp+0x4]
00001533  8BD0              mov dx,ax
00001535  D1EA              shr dx,1
00001537  D1EA              shr dx,1
00001539  D1EA              shr dx,1
0000153B  D1EF              shr di,1
0000153D  D1EF              shr di,1
0000153F  D1EF              shr di,1
00001541  2BFA              sub di,dx
00001543  750B              jnz 0x1550
00001545  50                push ax
00001546  8A4608            mov al,[bp+0x8]
00001549  22460A            and al,[bp+0xa]
0000154C  884608            mov [bp+0x8],al
0000154F  58                pop ax
00001550  4F                dec di
00001551  2BCB              sub cx,bx
00001553  41                inc cx
00001554  8BF0              mov si,ax
00001556  D1EE              shr si,1
00001558  D1EE              shr si,1
0000155A  D1EE              shr si,1
0000155C  8BC3              mov ax,bx
0000155E  D1E0              shl ax,1
00001560  D1E0              shl ax,1
00001562  03C3              add ax,bx
00001564  0500A0            add ax,0xa000
00001567  8EC0              mov es,ax
00001569  BACE03            mov dx,0x3ce
0000156C  B008              mov al,0x8
0000156E  EE                out dx,al
0000156F  42                inc dx
00001570  8A267002          mov ah,[0x270]
00001574  8A460A            mov al,[bp+0xa]
00001577  EE                out dx,al
00001578  E81800            call word 0x1593
0000157B  0BFF              or di,di
0000157D  7812              js 0x1591
0000157F  7409              jz 0x158a
00001581  B0FF              mov al,0xff
00001583  EE                out dx,al
00001584  E80C00            call word 0x1593
00001587  4F                dec di
00001588  75FA              jnz 0x1584
0000158A  8A4608            mov al,[bp+0x8]
0000158D  EE                out dx,al
0000158E  E80200            call word 0x1593
00001591  EB11              jmp short 0x15a4
00001593  51                push cx
00001594  56                push si
00001595  268A04            mov al,[es:si]
00001598  268824            mov [es:si],ah
0000159B  83C650            add si,byte +0x50
0000159E  E2F5              loop 0x1595
000015A0  5E                pop si
000015A1  59                pop cx
000015A2  46                inc si
000015A3  C3                ret
000015A4  B0FF              mov al,0xff
000015A6  EE                out dx,al
000015A7  4A                dec dx
000015A8  B80300            mov ax,0x3
000015AB  EF                out dx,ax
000015AC  B80500            mov ax,0x5
000015AF  EF                out dx,ax
000015B0  8BE5              mov sp,bp
000015B2  5D                pop bp
000015B3  C20800            ret 0x8
000015B6  55                push bp
000015B7  8BEC              mov bp,sp
000015B9  55                push bp
000015BA  83EC44            sub sp,byte +0x44
000015BD  A1C202            mov ax,[0x2c2]
000015C0  8946BC            mov [bp-0x44],ax
000015C3  A1C402            mov ax,[0x2c4]
000015C6  8946BA            mov [bp-0x46],ax
000015C9  8B4604            mov ax,[bp+0x4]
000015CC  8946C6            mov [bp-0x3a],ax
000015CF  8D7EF8            lea di,[bp-0x8]
000015D2  16                push ss
000015D3  57                push di
000015D4  8B4604            mov ax,[bp+0x4]
000015D7  F72EBE02          imul word [0x2be]
000015DB  99                cwd
000015DC  F73EC002          idiv word [0x2c0]
000015E0  E877F5            call word 0xb5a
000015E3  E8B5F4            call word 0xa9b
000015E6  A1C402            mov ax,[0x2c4]
000015E9  8946C4            mov [bp-0x3c],ax
000015EC  A1C202            mov ax,[0x2c2]
000015EF  8946C2            mov [bp-0x3e],ax
000015F2  A1C202            mov ax,[0x2c2]
000015F5  8946C0            mov [bp-0x40],ax
000015F8  8D7EF8            lea di,[bp-0x8]
000015FB  16                push ss
000015FC  E87CF4            call word 0xa7b
000015FF  E81FF5            call word 0xb21
00001602  8946BE            mov [bp-0x42],ax
00001605  8D7EF2            lea di,[bp-0xe]
00001608  16                push ss
00001609  57                push di
0000160A  8D7EF8            lea di,[bp-0x8]
0000160D  16                push ss
0000160E  E86AF4            call word 0xa7b
00001611  8D7EF8            lea di,[bp-0x8]
00001614  16                push ss
00001615  E863F4            call word 0xa7b
00001618  E8BDF4            call word 0xad8
0000161B  E87DF4            call word 0xa9b
0000161E  8D7EEC            lea di,[bp-0x14]
00001621  16                push ss
00001622  57                push di
00001623  B80200            mov ax,0x2
00001626  50                push ax
00001627  8D7EF8            lea di,[bp-0x8]
0000162A  16                push ss
0000162B  E84DF4            call word 0xa7b
0000162E  E832F5            call word 0xb63
00001631  E8A4F4            call word 0xad8
00001634  B80100            mov ax,0x1
00001637  E820F5            call word 0xb5a
0000163A  E88CF4            call word 0xac9
0000163D  8B46C6            mov ax,[bp-0x3a]
00001640  E817F5            call word 0xb5a
00001643  E892F4            call word 0xad8
00001646  8B46C6            mov ax,[bp-0x3a]
00001649  E80EF5            call word 0xb5a
0000164C  E889F4            call word 0xad8
0000164F  E849F4            call word 0xa9b
00001652  8D7EE6            lea di,[bp-0x1a]
00001655  16                push ss
00001656  57                push di
00001657  B80200            mov ax,0x2
0000165A  50                push ax
0000165B  8D7EF8            lea di,[bp-0x8]
0000165E  16                push ss
0000165F  E819F4            call word 0xa7b
00001662  E8FEF4            call word 0xb63
00001665  E870F4            call word 0xad8
00001668  8D7EF8            lea di,[bp-0x8]
0000166B  16                push ss
0000166C  E80CF4            call word 0xa7b
0000166F  E866F4            call word 0xad8
00001672  E826F4            call word 0xa9b
00001675  8D7EE0            lea di,[bp-0x20]
00001678  16                push ss
00001679  57                push di
0000167A  B80200            mov ax,0x2
0000167D  F76EC6            imul word [bp-0x3a]
00001680  F76EC6            imul word [bp-0x3a]
00001683  E8D4F4            call word 0xb5a
00001686  E812F4            call word 0xa9b
00001689  8D7EDA            lea di,[bp-0x26]
0000168C  16                push ss
0000168D  57                push di
0000168E  33C0              xor ax,ax
00001690  E8C7F4            call word 0xb5a
00001693  E805F4            call word 0xa9b
00001696  B90A00            mov cx,0xa
00001699  E8CEEF            call word 0x66a
0000169C  8B46C2            mov ax,[bp-0x3e]
0000169F  50                push ax
000016A0  8B46C4            mov ax,[bp-0x3c]
000016A3  0346BE            add ax,[bp-0x42]
000016A6  50                push ax
000016A7  E8D4FD            call word 0x147e
000016AA  B90A00            mov cx,0xa
000016AD  E8BAEF            call word 0x66a
000016B0  8B46C2            mov ax,[bp-0x3e]
000016B3  50                push ax
000016B4  8B46C4            mov ax,[bp-0x3c]
000016B7  2B46BE            sub ax,[bp-0x42]
000016BA  50                push ax
000016BB  E8C0FD            call word 0x147e
000016BE  B90A00            mov cx,0xa
000016C1  E8A6EF            call word 0x66a
000016C4  8B46C0            mov ax,[bp-0x40]
000016C7  50                push ax
000016C8  8B46C4            mov ax,[bp-0x3c]
000016CB  0346BE            add ax,[bp-0x42]
000016CE  50                push ax
000016CF  E8ACFD            call word 0x147e
000016D2  B90A00            mov cx,0xa
000016D5  E892EF            call word 0x66a
000016D8  8B46C0            mov ax,[bp-0x40]
000016DB  50                push ax
000016DC  8B46C4            mov ax,[bp-0x3c]
000016DF  2B46BE            sub ax,[bp-0x42]
000016E2  50                push ax
000016E3  E898FD            call word 0x147e
000016E6  8D7ED4            lea di,[bp-0x2c]
000016E9  16                push ss
000016EA  57                push di
000016EB  8D7EDA            lea di,[bp-0x26]
000016EE  16                push ss
000016EF  E889F3            call word 0xa7b
000016F2  8D7EF2            lea di,[bp-0xe]
000016F5  16                push ss
000016F6  E882F3            call word 0xa7b
000016F9  E8B2F3            call word 0xaae
000016FC  E89CF3            call word 0xa9b
000016FF  8D7ECE            lea di,[bp-0x32]
00001702  16                push ss
00001703  57                push di
00001704  8D7EDA            lea di,[bp-0x26]
00001707  16                push ss
00001708  E870F3            call word 0xa7b
0000170B  8D7EEC            lea di,[bp-0x14]
0000170E  16                push ss
0000170F  E869F3            call word 0xa7b
00001712  E8B4F3            call word 0xac9
00001715  E883F3            call word 0xa9b
00001718  8D7EC8            lea di,[bp-0x38]
0000171B  16                push ss
0000171C  57                push di
0000171D  8D7EDA            lea di,[bp-0x26]
00001720  16                push ss
00001721  E857F3            call word 0xa7b
00001724  8D7EF2            lea di,[bp-0xe]
00001727  16                push ss
00001728  E850F3            call word 0xa7b
0000172B  E880F3            call word 0xaae
0000172E  8D7EEC            lea di,[bp-0x14]
00001731  16                push ss
00001732  E846F3            call word 0xa7b
00001735  E891F3            call word 0xac9
00001738  E860F3            call word 0xa9b
0000173B  8D7ED4            lea di,[bp-0x2c]
0000173E  16                push ss
0000173F  E839F3            call word 0xa7b
00001742  E8BAF3            call word 0xaff
00001745  8D7ECE            lea di,[bp-0x32]
00001748  16                push ss
00001749  E82FF3            call word 0xa7b
0000174C  E8B0F3            call word 0xaff
0000174F  E8B5F3            call word 0xb07
00001752  50                push ax
00001753  8D7ED4            lea di,[bp-0x2c]
00001756  16                push ss
00001757  E821F3            call word 0xa7b
0000175A  E8A2F3            call word 0xaff
0000175D  8D7EC8            lea di,[bp-0x38]
00001760  16                push ss
00001761  E817F3            call word 0xa7b
00001764  E898F3            call word 0xaff
00001767  E89DF3            call word 0xb07
0000176A  59                pop cx
0000176B  23C1              and ax,cx
0000176D  0BC0              or ax,ax
0000176F  7439              jz 0x17aa
00001771  8B46C2            mov ax,[bp-0x3e]
00001774  40                inc ax
00001775  8946C2            mov [bp-0x3e],ax
00001778  8B46C0            mov ax,[bp-0x40]
0000177B  48                dec ax
0000177C  8946C0            mov [bp-0x40],ax
0000177F  8D7EDA            lea di,[bp-0x26]
00001782  16                push ss
00001783  57                push di
00001784  8D7ED4            lea di,[bp-0x2c]
00001787  16                push ss
00001788  E8F0F2            call word 0xa7b
0000178B  E80DF3            call word 0xa9b
0000178E  8D7EF2            lea di,[bp-0xe]
00001791  16                push ss
00001792  57                push di
00001793  8D7EF2            lea di,[bp-0xe]
00001796  16                push ss
00001797  E8E1F2            call word 0xa7b
0000179A  8D7EE6            lea di,[bp-0x1a]
0000179D  16                push ss
0000179E  E8DAF2            call word 0xa7b
000017A1  E80AF3            call word 0xaae
000017A4  E8F4F2            call word 0xa9b
000017A7  E9BE00            jmp word 0x1868
000017AA  8D7ECE            lea di,[bp-0x32]
000017AD  16                push ss
000017AE  E8CAF2            call word 0xa7b
000017B1  E84BF3            call word 0xaff
000017B4  8D7ED4            lea di,[bp-0x2c]
000017B7  16                push ss
000017B8  E8C0F2            call word 0xa7b
000017BB  E841F3            call word 0xaff
000017BE  E846F3            call word 0xb07
000017C1  50                push ax
000017C2  8D7ECE            lea di,[bp-0x32]
000017C5  16                push ss
000017C6  E8B2F2            call word 0xa7b
000017C9  E833F3            call word 0xaff
000017CC  8D7EC8            lea di,[bp-0x38]
000017CF  16                push ss
000017D0  E8A8F2            call word 0xa7b
000017D3  E829F3            call word 0xaff
000017D6  E82EF3            call word 0xb07
000017D9  59                pop cx
000017DA  23C1              and ax,cx
000017DC  0BC0              or ax,ax
000017DE  7432              jz 0x1812
000017E0  8B46BE            mov ax,[bp-0x42]
000017E3  48                dec ax
000017E4  8946BE            mov [bp-0x42],ax
000017E7  8D7EDA            lea di,[bp-0x26]
000017EA  16                push ss
000017EB  57                push di
000017EC  8D7ECE            lea di,[bp-0x32]
000017EF  16                push ss
000017F0  E888F2            call word 0xa7b
000017F3  E8A5F2            call word 0xa9b
000017F6  8D7EEC            lea di,[bp-0x14]
000017F9  16                push ss
000017FA  57                push di
000017FB  8D7EEC            lea di,[bp-0x14]
000017FE  16                push ss
000017FF  E879F2            call word 0xa7b
00001802  8D7EE0            lea di,[bp-0x20]
00001805  16                push ss
00001806  E872F2            call word 0xa7b
00001809  E8BDF2            call word 0xac9
0000180C  E88CF2            call word 0xa9b
0000180F  E95600            jmp word 0x1868
00001812  8B46C2            mov ax,[bp-0x3e]
00001815  40                inc ax
00001816  8946C2            mov [bp-0x3e],ax
00001819  8B46C0            mov ax,[bp-0x40]
0000181C  48                dec ax
0000181D  8946C0            mov [bp-0x40],ax
00001820  8B46BE            mov ax,[bp-0x42]
00001823  48                dec ax
00001824  8946BE            mov [bp-0x42],ax
00001827  8D7EDA            lea di,[bp-0x26]
0000182A  16                push ss
0000182B  57                push di
0000182C  8D7EC8            lea di,[bp-0x38]
0000182F  16                push ss
00001830  E848F2            call word 0xa7b
00001833  E865F2            call word 0xa9b
00001836  8D7EEC            lea di,[bp-0x14]
00001839  16                push ss
0000183A  57                push di
0000183B  8D7EEC            lea di,[bp-0x14]
0000183E  16                push ss
0000183F  E839F2            call word 0xa7b
00001842  8D7EE0            lea di,[bp-0x20]
00001845  16                push ss
00001846  E832F2            call word 0xa7b
00001849  E87DF2            call word 0xac9
0000184C  E84CF2            call word 0xa9b
0000184F  8D7EF2            lea di,[bp-0xe]
00001852  16                push ss
00001853  57                push di
00001854  8D7EF2            lea di,[bp-0xe]
00001857  16                push ss
00001858  E820F2            call word 0xa7b
0000185B  8D7EE6            lea di,[bp-0x1a]
0000185E  16                push ss
0000185F  E819F2            call word 0xa7b
00001862  E849F2            call word 0xaae
00001865  E833F2            call word 0xa9b
00001868  B90A00            mov cx,0xa
0000186B  E8FCED            call word 0x66a
0000186E  8B46C2            mov ax,[bp-0x3e]
00001871  50                push ax
00001872  8B46C4            mov ax,[bp-0x3c]
00001875  0346BE            add ax,[bp-0x42]
00001878  50                push ax
00001879  E802FC            call word 0x147e
0000187C  B90A00            mov cx,0xa
0000187F  E8E8ED            call word 0x66a
00001882  8B46C2            mov ax,[bp-0x3e]
00001885  50                push ax
00001886  8B46C4            mov ax,[bp-0x3c]
00001889  2B46BE            sub ax,[bp-0x42]
0000188C  50                push ax
0000188D  E8EEFB            call word 0x147e
00001890  B90A00            mov cx,0xa
00001893  E8D4ED            call word 0x66a
00001896  8B46C0            mov ax,[bp-0x40]
00001899  50                push ax
0000189A  8B46C4            mov ax,[bp-0x3c]
0000189D  0346BE            add ax,[bp-0x42]
000018A0  50                push ax
000018A1  E8DAFB            call word 0x147e
000018A4  B90A00            mov cx,0xa
000018A7  E8C0ED            call word 0x66a
000018AA  8B46C0            mov ax,[bp-0x40]
000018AD  50                push ax
000018AE  8B46C4            mov ax,[bp-0x3c]
000018B1  2B46BE            sub ax,[bp-0x42]
000018B4  50                push ax
000018B5  E8C6FB            call word 0x147e
000018B8  8B46BE            mov ax,[bp-0x42]
000018BB  09C0              or ax,ax
000018BD  7403              jz 0x18c2
000018BF  E924FE            jmp word 0x16e6
000018C2  8B46BC            mov ax,[bp-0x44]
000018C5  A3C202            mov [0x2c2],ax
000018C8  8B46BA            mov ax,[bp-0x46]
000018CB  A3C402            mov [0x2c4],ax
000018CE  8BE5              mov sp,bp
000018D0  5D                pop bp
000018D1  C20200            ret 0x2
000018D4  61                popaw
000018D5  01E6              add si,sp
000018D7  01A40178          add [si+0x7801],sp
000018DB  007800            add [bx+si+0x0],bh
000018DE  CE                into
000018DF  006400            add [si+0x0],ah
000018E2  0F000C            str [si]
000018E5  0009              add [bx+di],cl
000018E7  0A0C              or cl,[si]
000018E9  0E                push cs
000018EA  0A14              or dl,[si]
000018EC  1E                push ds
000018ED  55                push bp
000018EE  8BEC              mov bp,sp
000018F0  55                push bp
000018F1  4C                dec sp
000018F2  4C                dec sp
000018F3  8B4604            mov ax,[bp+0x4]
000018F6  B90200            mov cx,0x2
000018F9  D1F8              sar ax,1
000018FB  8946FC            mov [bp-0x4],ax
000018FE  B90E00            mov cx,0xe
00001901  E866ED            call word 0x66a
00001904  A1C202            mov ax,[0x2c2]
00001907  2B46FC            sub ax,[bp-0x4]
0000190A  50                push ax
0000190B  A1C402            mov ax,[0x2c4]
0000190E  2B46FC            sub ax,[bp-0x4]
00001911  50                push ax
00001912  A1C202            mov ax,[0x2c2]
00001915  0346FC            add ax,[bp-0x4]
00001918  50                push ax
00001919  A1C402            mov ax,[0x2c4]
0000191C  0346FC            add ax,[bp-0x4]
0000191F  50                push ax
00001920  E8DAFB            call word 0x14fd
00001923  8BE5              mov sp,bp
00001925  5D                pop bp
00001926  C20200            ret 0x2
00001929  55                push bp
0000192A  8BEC              mov bp,sp
0000192C  55                push bp
0000192D  8B4604            mov ax,[bp+0x4]
00001930  3DFFFF            cmp ax,0xffff
00001933  7568              jnz 0x199d
00001935  B90A00            mov cx,0xa
00001938  E82FED            call word 0x66a
0000193B  8B4608            mov ax,[bp+0x8]
0000193E  48                dec ax
0000193F  B90300            mov cx,0x3
00001942  E80FED            call word 0x654
00001945  B93C00            mov cx,0x3c
00001948  F7E1              mul cx
0000194A  97                xchg ax,di
0000194B  57                push di
0000194C  8B4606            mov ax,[bp+0x6]
0000194F  051D00            add ax,0x1d
00001952  B91E00            mov cx,0x1e
00001955  99                cwd
00001956  F7F9              idiv cx
00001958  92                xchg ax,dx
00001959  5F                pop di
0000195A  B91E00            mov cx,0x1e
0000195D  E8F4EC            call word 0x654
00001960  D1E0              shl ax,1
00001962  03F8              add di,ax
00001964  8B85BF04          mov ax,[di+0x4bf]
00001968  50                push ax
00001969  8B4608            mov ax,[bp+0x8]
0000196C  48                dec ax
0000196D  B90300            mov cx,0x3
00001970  E8E1EC            call word 0x654
00001973  B93C00            mov cx,0x3c
00001976  F7E1              mul cx
00001978  97                xchg ax,di
00001979  57                push di
0000197A  8B4606            mov ax,[bp+0x6]
0000197D  051D00            add ax,0x1d
00001980  B91E00            mov cx,0x1e
00001983  99                cwd
00001984  F7F9              idiv cx
00001986  92                xchg ax,dx
00001987  5F                pop di
00001988  B91E00            mov cx,0x1e
0000198B  E8C6EC            call word 0x654
0000198E  D1E0              shl ax,1
00001990  03F8              add di,ax
00001992  8B857305          mov ax,[di+0x573]
00001996  50                push ax
00001997  E8D8F7            call word 0x1172
0000199A  E9A600            jmp word 0x1a43
0000199D  09C0              or ax,ax
0000199F  7550              jnz 0x19f1
000019A1  B90A00            mov cx,0xa
000019A4  E8C3EC            call word 0x66a
000019A7  8B4608            mov ax,[bp+0x8]
000019AA  48                dec ax
000019AB  B90300            mov cx,0x3
000019AE  E8A3EC            call word 0x654
000019B1  B93C00            mov cx,0x3c
000019B4  F7E1              mul cx
000019B6  97                xchg ax,di
000019B7  8B4606            mov ax,[bp+0x6]
000019BA  B91E00            mov cx,0x1e
000019BD  E894EC            call word 0x654
000019C0  D1E0              shl ax,1
000019C2  03F8              add di,ax
000019C4  8B855703          mov ax,[di+0x357]
000019C8  50                push ax
000019C9  8B4608            mov ax,[bp+0x8]
000019CC  48                dec ax
000019CD  B90300            mov cx,0x3
000019D0  E881EC            call word 0x654
000019D3  B93C00            mov cx,0x3c
000019D6  F7E1              mul cx
000019D8  97                xchg ax,di
000019D9  8B4606            mov ax,[bp+0x6]
000019DC  B91E00            mov cx,0x1e
000019DF  E872EC            call word 0x654
000019E2  D1E0              shl ax,1
000019E4  03F8              add di,ax
000019E6  8B850B04          mov ax,[di+0x40b]
000019EA  50                push ax
000019EB  E884F7            call word 0x1172
000019EE  E95200            jmp word 0x1a43
000019F1  3D0100            cmp ax,0x1
000019F4  754D              jnz 0x1a43
000019F6  B90A00            mov cx,0xa
000019F9  E86EEC            call word 0x66a
000019FC  8B4608            mov ax,[bp+0x8]
000019FF  48                dec ax
00001A00  B90300            mov cx,0x3
00001A03  E84EEC            call word 0x654
00001A06  B93C00            mov cx,0x3c
00001A09  F7E1              mul cx
00001A0B  97                xchg ax,di
00001A0C  8B4606            mov ax,[bp+0x6]
00001A0F  B91E00            mov cx,0x1e
00001A12  E83FEC            call word 0x654
00001A15  D1E0              shl ax,1
00001A17  03F8              add di,ax
00001A19  8B85BF04          mov ax,[di+0x4bf]
00001A1D  50                push ax
00001A1E  8B4608            mov ax,[bp+0x8]
00001A21  48                dec ax
00001A22  B90300            mov cx,0x3
00001A25  E82CEC            call word 0x654
00001A28  B93C00            mov cx,0x3c
00001A2B  F7E1              mul cx
00001A2D  97                xchg ax,di
00001A2E  8B4606            mov ax,[bp+0x6]
00001A31  B91E00            mov cx,0x1e
00001A34  E81DEC            call word 0x654
00001A37  D1E0              shl ax,1
00001A39  03F8              add di,ax
00001A3B  8B857305          mov ax,[di+0x573]
00001A3F  50                push ax
00001A40  E82FF7            call word 0x1172
00001A43  8BE5              mov sp,bp
00001A45  5D                pop bp
00001A46  C20600            ret 0x6
00001A49  55                push bp
00001A4A  8BEC              mov bp,sp
00001A4C  55                push bp
00001A4D  83EC08            sub sp,byte +0x8
00001A50  8B4608            mov ax,[bp+0x8]
00001A53  48                dec ax
00001A54  B90300            mov cx,0x3
00001A57  E8FAEB            call word 0x654
00001A5A  D1E0              shl ax,1
00001A5C  97                xchg ax,di
00001A5D  2E8B85D418        mov ax,[cs:di+0x18d4]
00001A62  8946F8            mov [bp-0x8],ax
00001A65  8B4608            mov ax,[bp+0x8]
00001A68  48                dec ax
00001A69  B90300            mov cx,0x3
00001A6C  E8E5EB            call word 0x654
00001A6F  D1E0              shl ax,1
00001A71  97                xchg ax,di
00001A72  2E8B85DA18        mov ax,[cs:di+0x18da]
00001A77  8946F6            mov [bp-0xa],ax
00001A7A  8A4604            mov al,[bp+0x4]
00001A7D  32E4              xor ah,ah
00001A7F  09C0              or ax,ax
00001A81  756B              jnz 0x1aee
00001A83  33C0              xor ax,ax
00001A85  B91D00            mov cx,0x1d
00001A88  41                inc cx
00001A89  8946FC            mov [bp-0x4],ax
00001A8C  51                push cx
00001A8D  8B4608            mov ax,[bp+0x8]
00001A90  48                dec ax
00001A91  B90300            mov cx,0x3
00001A94  E8BDEB            call word 0x654
00001A97  B91E00            mov cx,0x1e
00001A9A  F7E1              mul cx
00001A9C  97                xchg ax,di
00001A9D  8B46FC            mov ax,[bp-0x4]
00001AA0  B91E00            mov cx,0x1e
00001AA3  E8AEEB            call word 0x654
00001AA6  03F8              add di,ax
00001AA8  8A85FD02          mov al,[di+0x2fd]
00001AAC  32E4              xor ah,ah
00001AAE  8946FA            mov [bp-0x6],ax
00001AB1  B90800            mov cx,0x8
00001AB4  E8B3EB            call word 0x66a
00001AB7  8B46FA            mov ax,[bp-0x6]
00001ABA  50                push ax
00001ABB  E887F6            call word 0x1145
00001ABE  B90C00            mov cx,0xc
00001AC1  E8A6EB            call word 0x66a
00001AC4  8B4608            mov ax,[bp+0x8]
00001AC7  50                push ax
00001AC8  8B46FC            mov ax,[bp-0x4]
00001ACB  50                push ax
00001ACC  8B4606            mov ax,[bp+0x6]
00001ACF  50                push ax
00001AD0  E856FE            call word 0x1929
00001AD3  B90A00            mov cx,0xa
00001AD6  E891EB            call word 0x66a
00001AD9  2EA1E418          mov ax,[cs:0x18e4]
00001ADD  50                push ax
00001ADE  E80CFE            call word 0x18ed
00001AE1  59                pop cx
00001AE2  49                dec cx
00001AE3  7406              jz 0x1aeb
00001AE5  FF46FC            inc word [bp-0x4]
00001AE8  E9A1FF            jmp word 0x1a8c
00001AEB  E96900            jmp word 0x1b57
00001AEE  B81D00            mov ax,0x1d
00001AF1  B9E3FF            mov cx,0xffe3
00001AF4  49                dec cx
00001AF5  8946FC            mov [bp-0x4],ax
00001AF8  51                push cx
00001AF9  8B4608            mov ax,[bp+0x8]
00001AFC  48                dec ax
00001AFD  B90300            mov cx,0x3
00001B00  E851EB            call word 0x654
00001B03  B91E00            mov cx,0x1e
00001B06  F7E1              mul cx
00001B08  97                xchg ax,di
00001B09  8B46FC            mov ax,[bp-0x4]
00001B0C  B91E00            mov cx,0x1e
00001B0F  E842EB            call word 0x654
00001B12  03F8              add di,ax
00001B14  8A85FD02          mov al,[di+0x2fd]
00001B18  32E4              xor ah,ah
00001B1A  8946FA            mov [bp-0x6],ax
00001B1D  B90800            mov cx,0x8
00001B20  E847EB            call word 0x66a
00001B23  8B46FA            mov ax,[bp-0x6]
00001B26  50                push ax
00001B27  E81BF6            call word 0x1145
00001B2A  B90C00            mov cx,0xc
00001B2D  E83AEB            call word 0x66a
00001B30  8B4608            mov ax,[bp+0x8]
00001B33  50                push ax
00001B34  8B46FC            mov ax,[bp-0x4]
00001B37  50                push ax
00001B38  8B4606            mov ax,[bp+0x6]
00001B3B  50                push ax
00001B3C  E8EAFD            call word 0x1929
00001B3F  B90A00            mov cx,0xa
00001B42  E825EB            call word 0x66a
00001B45  2EA1E418          mov ax,[cs:0x18e4]
00001B49  50                push ax
00001B4A  E8A0FD            call word 0x18ed
00001B4D  59                pop cx
00001B4E  41                inc cx
00001B4F  7406              jz 0x1b57
00001B51  FF4EFC            dec word [bp-0x4]
00001B54  E9A1FF            jmp word 0x1af8
00001B57  8BE5              mov sp,bp
00001B59  5D                pop bp
00001B5A  C20600            ret 0x6
00001B5D  55                push bp
00001B5E  8BEC              mov bp,sp
00001B60  55                push bp
00001B61  83EC04            sub sp,byte +0x4
00001B64  8A4604            mov al,[bp+0x4]
00001B67  32E4              xor ah,ah
00001B69  09C0              or ax,ax
00001B6B  7403              jz 0x1b70
00001B6D  E90502            jmp word 0x1d75
00001B70  B90C00            mov cx,0xc
00001B73  E8F4EA            call word 0x66a
00001B76  8B4606            mov ax,[bp+0x6]
00001B79  50                push ax
00001B7A  33C0              xor ax,ax
00001B7C  50                push ax
00001B7D  50                push ax
00001B7E  E8A8FD            call word 0x1929
00001B81  B90800            mov cx,0x8
00001B84  E8E3EA            call word 0x66a
00001B87  33C0              xor ax,ax
00001B89  50                push ax
00001B8A  E8B8F5            call word 0x1145
00001B8D  B90A00            mov cx,0xa
00001B90  E8D7EA            call word 0x66a
00001B93  2EA1E418          mov ax,[cs:0x18e4]
00001B97  50                push ax
00001B98  E852FD            call word 0x18ed
00001B9B  B81D00            mov ax,0x1d
00001B9E  B9E4FF            mov cx,0xffe4
00001BA1  49                dec cx
00001BA2  8946FC            mov [bp-0x4],ax
00001BA5  51                push cx
00001BA6  B90C00            mov cx,0xc
00001BA9  E8BEEA            call word 0x66a
00001BAC  8B4606            mov ax,[bp+0x6]
00001BAF  50                push ax
00001BB0  8B46FC            mov ax,[bp-0x4]
00001BB3  50                push ax
00001BB4  33C0              xor ax,ax
00001BB6  50                push ax
00001BB7  E86FFD            call word 0x1929
00001BBA  B90800            mov cx,0x8
00001BBD  E8AAEA            call word 0x66a
00001BC0  33C0              xor ax,ax
00001BC2  50                push ax
00001BC3  E87FF5            call word 0x1145
00001BC6  B90A00            mov cx,0xa
00001BC9  E89EEA            call word 0x66a
00001BCC  2EA1E418          mov ax,[cs:0x18e4]
00001BD0  50                push ax
00001BD1  E819FD            call word 0x18ed
00001BD4  B90C00            mov cx,0xc
00001BD7  E890EA            call word 0x66a
00001BDA  8B4606            mov ax,[bp+0x6]
00001BDD  50                push ax
00001BDE  8B46FC            mov ax,[bp-0x4]
00001BE1  50                push ax
00001BE2  B80100            mov ax,0x1
00001BE5  50                push ax
00001BE6  E840FD            call word 0x1929
00001BE9  B90800            mov cx,0x8
00001BEC  E87BEA            call word 0x66a
00001BEF  8B4606            mov ax,[bp+0x6]
00001BF2  48                dec ax
00001BF3  B90300            mov cx,0x3
00001BF6  E85BEA            call word 0x654
00001BF9  B91E00            mov cx,0x1e
00001BFC  F7E1              mul cx
00001BFE  97                xchg ax,di
00001BFF  8B46FC            mov ax,[bp-0x4]
00001C02  B91E00            mov cx,0x1e
00001C05  E84CEA            call word 0x654
00001C08  03F8              add di,ax
00001C0A  8A85FD02          mov al,[di+0x2fd]
00001C0E  32E4              xor ah,ah
00001C10  50                push ax
00001C11  E831F5            call word 0x1145
00001C14  B90A00            mov cx,0xa
00001C17  E850EA            call word 0x66a
00001C1A  2EA1E418          mov ax,[cs:0x18e4]
00001C1E  50                push ax
00001C1F  E8CBFC            call word 0x18ed
00001C22  59                pop cx
00001C23  41                inc cx
00001C24  7406              jz 0x1c2c
00001C26  FF4EFC            dec word [bp-0x4]
00001C29  E979FF            jmp word 0x1ba5
00001C2C  B81D00            mov ax,0x1d
00001C2F  B9E4FF            mov cx,0xffe4
00001C32  49                dec cx
00001C33  8946FC            mov [bp-0x4],ax
00001C36  51                push cx
00001C37  B90C00            mov cx,0xc
00001C3A  E82DEA            call word 0x66a
00001C3D  8B4606            mov ax,[bp+0x6]
00001C40  50                push ax
00001C41  8B46FC            mov ax,[bp-0x4]
00001C44  50                push ax
00001C45  B80100            mov ax,0x1
00001C48  50                push ax
00001C49  E8DDFC            call word 0x1929
00001C4C  B90800            mov cx,0x8
00001C4F  E818EA            call word 0x66a
00001C52  33C0              xor ax,ax
00001C54  50                push ax
00001C55  E8EDF4            call word 0x1145
00001C58  B90A00            mov cx,0xa
00001C5B  E80CEA            call word 0x66a
00001C5E  2EA1E418          mov ax,[cs:0x18e4]
00001C62  50                push ax
00001C63  E887FC            call word 0x18ed
00001C66  B90C00            mov cx,0xc
00001C69  E8FEE9            call word 0x66a
00001C6C  8B4606            mov ax,[bp+0x6]
00001C6F  50                push ax
00001C70  8B46FC            mov ax,[bp-0x4]
00001C73  40                inc ax
00001C74  B91E00            mov cx,0x1e
00001C77  99                cwd
00001C78  F7F9              idiv cx
00001C7A  92                xchg ax,dx
00001C7B  50                push ax
00001C7C  33C0              xor ax,ax
00001C7E  50                push ax
00001C7F  E8A7FC            call word 0x1929
00001C82  B90800            mov cx,0x8
00001C85  E8E2E9            call word 0x66a
00001C88  8B4606            mov ax,[bp+0x6]
00001C8B  48                dec ax
00001C8C  B90300            mov cx,0x3
00001C8F  E8C2E9            call word 0x654
00001C92  B91E00            mov cx,0x1e
00001C95  F7E1              mul cx
00001C97  97                xchg ax,di
00001C98  8B46FC            mov ax,[bp-0x4]
00001C9B  B91E00            mov cx,0x1e
00001C9E  E8B3E9            call word 0x654
00001CA1  03F8              add di,ax
00001CA3  8A85FD02          mov al,[di+0x2fd]
00001CA7  32E4              xor ah,ah
00001CA9  50                push ax
00001CAA  E898F4            call word 0x1145
00001CAD  B90A00            mov cx,0xa
00001CB0  E8B7E9            call word 0x66a
00001CB3  2EA1E418          mov ax,[cs:0x18e4]
00001CB7  50                push ax
00001CB8  E832FC            call word 0x18ed
00001CBB  59                pop cx
00001CBC  41                inc cx
00001CBD  7406              jz 0x1cc5
00001CBF  FF4EFC            dec word [bp-0x4]
00001CC2  E971FF            jmp word 0x1c36
00001CC5  B90C00            mov cx,0xc
00001CC8  E89FE9            call word 0x66a
00001CCB  8B4606            mov ax,[bp+0x6]
00001CCE  50                push ax
00001CCF  B80100            mov ax,0x1
00001CD2  50                push ax
00001CD3  33C0              xor ax,ax
00001CD5  50                push ax
00001CD6  E850FC            call word 0x1929
00001CD9  B90800            mov cx,0x8
00001CDC  E88BE9            call word 0x66a
00001CDF  8B4606            mov ax,[bp+0x6]
00001CE2  48                dec ax
00001CE3  B90300            mov cx,0x3
00001CE6  E86BE9            call word 0x654
00001CE9  B91E00            mov cx,0x1e
00001CEC  F7E1              mul cx
00001CEE  97                xchg ax,di
00001CEF  8A85FD02          mov al,[di+0x2fd]
00001CF3  32E4              xor ah,ah
00001CF5  50                push ax
00001CF6  E84CF4            call word 0x1145
00001CF9  B90A00            mov cx,0xa
00001CFC  E86BE9            call word 0x66a
00001CFF  2EA1E418          mov ax,[cs:0x18e4]
00001D03  50                push ax
00001D04  E8E6FB            call word 0x18ed
00001D07  8B4606            mov ax,[bp+0x6]
00001D0A  48                dec ax
00001D0B  B90300            mov cx,0x3
00001D0E  E843E9            call word 0x654
00001D11  B91E00            mov cx,0x1e
00001D14  F7E1              mul cx
00001D16  97                xchg ax,di
00001D17  8A851A03          mov al,[di+0x31a]
00001D1B  32E4              xor ah,ah
00001D1D  8946FA            mov [bp-0x6],ax
00001D20  8B4606            mov ax,[bp+0x6]
00001D23  48                dec ax
00001D24  B90300            mov cx,0x3
00001D27  E82AE9            call word 0x654
00001D2A  B91E00            mov cx,0x1e
00001D2D  F7E1              mul cx
00001D2F  97                xchg ax,di
00001D30  81C7FD02          add di,0x2fd
00001D34  1E                push ds
00001D35  57                push di
00001D36  8B4606            mov ax,[bp+0x6]
00001D39  48                dec ax
00001D3A  B90300            mov cx,0x3
00001D3D  E814E9            call word 0x654
00001D40  B91E00            mov cx,0x1e
00001D43  F7E1              mul cx
00001D45  97                xchg ax,di
00001D46  81C7FE02          add di,0x2fe
00001D4A  1E                push ds
00001D4B  57                push di
00001D4C  B81D00            mov ax,0x1d
00001D4F  E8E8E8            call word 0x63a
00001D52  8B4606            mov ax,[bp+0x6]
00001D55  48                dec ax
00001D56  B90300            mov cx,0x3
00001D59  E8F8E8            call word 0x654
00001D5C  B91E00            mov cx,0x1e
00001D5F  F7E1              mul cx
00001D61  97                xchg ax,di
00001D62  8B46FA            mov ax,[bp-0x6]
00001D65  B90000            mov cx,0x0
00001D68  BAFF00            mov dx,0xff
00001D6B  E8EFE8            call word 0x65d
00001D6E  8885FD02          mov [di+0x2fd],al
00001D72  E90402            jmp word 0x1f79
00001D75  B90C00            mov cx,0xc
00001D78  E8EFE8            call word 0x66a
00001D7B  8B4606            mov ax,[bp+0x6]
00001D7E  50                push ax
00001D7F  33C0              xor ax,ax
00001D81  50                push ax
00001D82  50                push ax
00001D83  E8A3FB            call word 0x1929
00001D86  B90800            mov cx,0x8
00001D89  E8DEE8            call word 0x66a
00001D8C  33C0              xor ax,ax
00001D8E  50                push ax
00001D8F  E8B3F3            call word 0x1145
00001D92  B90A00            mov cx,0xa
00001D95  E8D2E8            call word 0x66a
00001D98  2EA1E418          mov ax,[cs:0x18e4]
00001D9C  50                push ax
00001D9D  E84DFB            call word 0x18ed
00001DA0  B80100            mov ax,0x1
00001DA3  B91C00            mov cx,0x1c
00001DA6  41                inc cx
00001DA7  8946FC            mov [bp-0x4],ax
00001DAA  51                push cx
00001DAB  B90C00            mov cx,0xc
00001DAE  E8B9E8            call word 0x66a
00001DB1  8B4606            mov ax,[bp+0x6]
00001DB4  50                push ax
00001DB5  8B46FC            mov ax,[bp-0x4]
00001DB8  50                push ax
00001DB9  33C0              xor ax,ax
00001DBB  50                push ax
00001DBC  E86AFB            call word 0x1929
00001DBF  B90800            mov cx,0x8
00001DC2  E8A5E8            call word 0x66a
00001DC5  33C0              xor ax,ax
00001DC7  50                push ax
00001DC8  E87AF3            call word 0x1145
00001DCB  B90A00            mov cx,0xa
00001DCE  E899E8            call word 0x66a
00001DD1  2EA1E418          mov ax,[cs:0x18e4]
00001DD5  50                push ax
00001DD6  E814FB            call word 0x18ed
00001DD9  B90C00            mov cx,0xc
00001DDC  E88BE8            call word 0x66a
00001DDF  8B4606            mov ax,[bp+0x6]
00001DE2  50                push ax
00001DE3  8B46FC            mov ax,[bp-0x4]
00001DE6  50                push ax
00001DE7  B8FFFF            mov ax,0xffff
00001DEA  50                push ax
00001DEB  E83BFB            call word 0x1929
00001DEE  B90800            mov cx,0x8
00001DF1  E876E8            call word 0x66a
00001DF4  8B4606            mov ax,[bp+0x6]
00001DF7  48                dec ax
00001DF8  B90300            mov cx,0x3
00001DFB  E856E8            call word 0x654
00001DFE  B91E00            mov cx,0x1e
00001E01  F7E1              mul cx
00001E03  97                xchg ax,di
00001E04  8B46FC            mov ax,[bp-0x4]
00001E07  B91E00            mov cx,0x1e
00001E0A  E847E8            call word 0x654
00001E0D  03F8              add di,ax
00001E0F  8A85FD02          mov al,[di+0x2fd]
00001E13  32E4              xor ah,ah
00001E15  50                push ax
00001E16  E82CF3            call word 0x1145
00001E19  B90A00            mov cx,0xa
00001E1C  E84BE8            call word 0x66a
00001E1F  2EA1E418          mov ax,[cs:0x18e4]
00001E23  50                push ax
00001E24  E8C6FA            call word 0x18ed
00001E27  59                pop cx
00001E28  49                dec cx
00001E29  7406              jz 0x1e31
00001E2B  FF46FC            inc word [bp-0x4]
00001E2E  E979FF            jmp word 0x1daa
00001E31  B80100            mov ax,0x1
00001E34  B91C00            mov cx,0x1c
00001E37  41                inc cx
00001E38  8946FC            mov [bp-0x4],ax
00001E3B  51                push cx
00001E3C  B90C00            mov cx,0xc
00001E3F  E828E8            call word 0x66a
00001E42  8B4606            mov ax,[bp+0x6]
00001E45  50                push ax
00001E46  8B46FC            mov ax,[bp-0x4]
00001E49  50                push ax
00001E4A  B8FFFF            mov ax,0xffff
00001E4D  50                push ax
00001E4E  E8D8FA            call word 0x1929
00001E51  B90800            mov cx,0x8
00001E54  E813E8            call word 0x66a
00001E57  33C0              xor ax,ax
00001E59  50                push ax
00001E5A  E8E8F2            call word 0x1145
00001E5D  B90A00            mov cx,0xa
00001E60  E807E8            call word 0x66a
00001E63  2EA1E418          mov ax,[cs:0x18e4]
00001E67  50                push ax
00001E68  E882FA            call word 0x18ed
00001E6B  B90C00            mov cx,0xc
00001E6E  E8F9E7            call word 0x66a
00001E71  8B4606            mov ax,[bp+0x6]
00001E74  50                push ax
00001E75  8B46FC            mov ax,[bp-0x4]
00001E78  051D00            add ax,0x1d
00001E7B  B91E00            mov cx,0x1e
00001E7E  99                cwd
00001E7F  F7F9              idiv cx
00001E81  92                xchg ax,dx
00001E82  50                push ax
00001E83  33C0              xor ax,ax
00001E85  50                push ax
00001E86  E8A0FA            call word 0x1929
00001E89  B90800            mov cx,0x8
00001E8C  E8DBE7            call word 0x66a
00001E8F  8B4606            mov ax,[bp+0x6]
00001E92  48                dec ax
00001E93  B90300            mov cx,0x3
00001E96  E8BBE7            call word 0x654
00001E99  B91E00            mov cx,0x1e
00001E9C  F7E1              mul cx
00001E9E  97                xchg ax,di
00001E9F  8B46FC            mov ax,[bp-0x4]
00001EA2  B91E00            mov cx,0x1e
00001EA5  E8ACE7            call word 0x654
00001EA8  03F8              add di,ax
00001EAA  8A85FD02          mov al,[di+0x2fd]
00001EAE  32E4              xor ah,ah
00001EB0  50                push ax
00001EB1  E891F2            call word 0x1145
00001EB4  B90A00            mov cx,0xa
00001EB7  E8B0E7            call word 0x66a
00001EBA  2EA1E418          mov ax,[cs:0x18e4]
00001EBE  50                push ax
00001EBF  E82BFA            call word 0x18ed
00001EC2  59                pop cx
00001EC3  49                dec cx
00001EC4  7406              jz 0x1ecc
00001EC6  FF46FC            inc word [bp-0x4]
00001EC9  E96FFF            jmp word 0x1e3b
00001ECC  B90C00            mov cx,0xc
00001ECF  E898E7            call word 0x66a
00001ED2  8B4606            mov ax,[bp+0x6]
00001ED5  50                push ax
00001ED6  B81D00            mov ax,0x1d
00001ED9  50                push ax
00001EDA  33C0              xor ax,ax
00001EDC  50                push ax
00001EDD  E849FA            call word 0x1929
00001EE0  B90800            mov cx,0x8
00001EE3  E884E7            call word 0x66a
00001EE6  8B4606            mov ax,[bp+0x6]
00001EE9  48                dec ax
00001EEA  B90300            mov cx,0x3
00001EED  E864E7            call word 0x654
00001EF0  B91E00            mov cx,0x1e
00001EF3  F7E1              mul cx
00001EF5  97                xchg ax,di
00001EF6  8A85FD02          mov al,[di+0x2fd]
00001EFA  32E4              xor ah,ah
00001EFC  50                push ax
00001EFD  E845F2            call word 0x1145
00001F00  B90A00            mov cx,0xa
00001F03  E864E7            call word 0x66a
00001F06  2EA1E418          mov ax,[cs:0x18e4]
00001F0A  50                push ax
00001F0B  E8DFF9            call word 0x18ed
00001F0E  8B4606            mov ax,[bp+0x6]
00001F11  48                dec ax
00001F12  B90300            mov cx,0x3
00001F15  E83CE7            call word 0x654
00001F18  B91E00            mov cx,0x1e
00001F1B  F7E1              mul cx
00001F1D  97                xchg ax,di
00001F1E  8A85FD02          mov al,[di+0x2fd]
00001F22  32E4              xor ah,ah
00001F24  8946FA            mov [bp-0x6],ax
00001F27  8B4606            mov ax,[bp+0x6]
00001F2A  48                dec ax
00001F2B  B90300            mov cx,0x3
00001F2E  E823E7            call word 0x654
00001F31  B91E00            mov cx,0x1e
00001F34  F7E1              mul cx
00001F36  97                xchg ax,di
00001F37  81C7FE02          add di,0x2fe
00001F3B  1E                push ds
00001F3C  57                push di
00001F3D  8B4606            mov ax,[bp+0x6]
00001F40  48                dec ax
00001F41  B90300            mov cx,0x3
00001F44  E80DE7            call word 0x654
00001F47  B91E00            mov cx,0x1e
00001F4A  F7E1              mul cx
00001F4C  97                xchg ax,di
00001F4D  81C7FD02          add di,0x2fd
00001F51  1E                push ds
00001F52  57                push di
00001F53  B81D00            mov ax,0x1d
00001F56  E8E1E6            call word 0x63a
00001F59  8B4606            mov ax,[bp+0x6]
00001F5C  48                dec ax
00001F5D  B90300            mov cx,0x3
00001F60  E8F1E6            call word 0x654
00001F63  B91E00            mov cx,0x1e
00001F66  F7E1              mul cx
00001F68  97                xchg ax,di
00001F69  8B46FA            mov ax,[bp-0x6]
00001F6C  B90000            mov cx,0x0
00001F6F  BAFF00            mov dx,0xff
00001F72  E8E8E6            call word 0x65d
00001F75  88851A03          mov [di+0x31a],al
00001F79  8B4606            mov ax,[bp+0x6]
00001F7C  3D0100            cmp ax,0x1
00001F7F  7547              jnz 0x1fc8
00001F81  A00D03            mov al,[0x30d]
00001F84  32E4              xor ah,ah
00001F86  B90000            mov cx,0x0
00001F89  BAFF00            mov dx,0xff
00001F8C  E8CEE6            call word 0x65d
00001F8F  A23803            mov [0x338],al
00001F92  A01503            mov al,[0x315]
00001F95  32E4              xor ah,ah
00001F97  B90000            mov cx,0x0
00001F9A  BAFF00            mov dx,0xff
00001F9D  E8BDE6            call word 0x65d
00001FA0  A23003            mov [0x330],al
00001FA3  A01203            mov al,[0x312]
00001FA6  32E4              xor ah,ah
00001FA8  B90000            mov cx,0x0
00001FAB  BAFF00            mov dx,0xff
00001FAE  E8ACE6            call word 0x65d
00001FB1  A25103            mov [0x351],al
00001FB4  A01A03            mov al,[0x31a]
00001FB7  32E4              xor ah,ah
00001FB9  B90000            mov cx,0x0
00001FBC  BAFF00            mov dx,0xff
00001FBF  E89BE6            call word 0x65d
00001FC2  A24903            mov [0x349],al
00001FC5  E99500            jmp word 0x205d
00001FC8  3D0200            cmp ax,0x2
00001FCB  7547              jnz 0x2014
00001FCD  A03003            mov al,[0x330]
00001FD0  32E4              xor ah,ah
00001FD2  B90000            mov cx,0x0
00001FD5  BAFF00            mov dx,0xff
00001FD8  E882E6            call word 0x65d
00001FDB  A21503            mov [0x315],al
00001FDE  A03803            mov al,[0x338]
00001FE1  32E4              xor ah,ah
00001FE3  B90000            mov cx,0x0
00001FE6  BAFF00            mov dx,0xff
00001FE9  E871E6            call word 0x65d
00001FEC  A20D03            mov [0x30d],al
00001FEF  A03303            mov al,[0x333]
00001FF2  32E4              xor ah,ah
00001FF4  B90000            mov cx,0x0
00001FF7  BAFF00            mov dx,0xff
00001FFA  E860E6            call word 0x65d
00001FFD  A24E03            mov [0x34e],al
00002000  A02B03            mov al,[0x32b]
00002003  32E4              xor ah,ah
00002005  B90000            mov cx,0x0
00002008  BAFF00            mov dx,0xff
0000200B  E84FE6            call word 0x65d
0000200E  A25603            mov [0x356],al
00002011  E94900            jmp word 0x205d
00002014  3D0300            cmp ax,0x3
00002017  7544              jnz 0x205d
00002019  A05103            mov al,[0x351]
0000201C  32E4              xor ah,ah
0000201E  B90000            mov cx,0x0
00002021  BAFF00            mov dx,0xff
00002024  E836E6            call word 0x65d
00002027  A21203            mov [0x312],al
0000202A  A04903            mov al,[0x349]
0000202D  32E4              xor ah,ah
0000202F  B90000            mov cx,0x0
00002032  BAFF00            mov dx,0xff
00002035  E825E6            call word 0x65d
00002038  A21A03            mov [0x31a],al
0000203B  A05603            mov al,[0x356]
0000203E  32E4              xor ah,ah
00002040  B90000            mov cx,0x0
00002043  BAFF00            mov dx,0xff
00002046  E814E6            call word 0x65d
00002049  A22B03            mov [0x32b],al
0000204C  A04E03            mov al,[0x34e]
0000204F  32E4              xor ah,ah
00002051  B90000            mov cx,0x0
00002054  BAFF00            mov dx,0xff
00002057  E803E6            call word 0x65d
0000205A  A23303            mov [0x333],al
0000205D  8BE5              mov sp,bp
0000205F  5D                pop bp
00002060  C20400            ret 0x4
00002063  55                push bp
00002064  8BEC              mov bp,sp
00002066  55                push bp
00002067  4C                dec sp
00002068  4C                dec sp
00002069  B90A00            mov cx,0xa
0000206C  E8FBE5            call word 0x66a
0000206F  8B4604            mov ax,[bp+0x4]
00002072  48                dec ax
00002073  B90300            mov cx,0x3
00002076  E8DBE5            call word 0x654
00002079  D1E0              shl ax,1
0000207B  97                xchg ax,di
0000207C  2E8B85D418        mov ax,[cs:di+0x18d4]
00002081  50                push ax
00002082  8B4604            mov ax,[bp+0x4]
00002085  48                dec ax
00002086  B90300            mov cx,0x3
00002089  E8C8E5            call word 0x654
0000208C  D1E0              shl ax,1
0000208E  97                xchg ax,di
0000208F  2E8B85DA18        mov ax,[cs:di+0x18da]
00002094  50                push ax
00002095  E8DAF0            call word 0x1172
00002098  B90800            mov cx,0x8
0000209B  E8CCE5            call word 0x66a
0000209E  B80F00            mov ax,0xf
000020A1  50                push ax
000020A2  E8A0F0            call word 0x1145
000020A5  B94C00            mov cx,0x4c
000020A8  E8BFE5            call word 0x66a
000020AB  2EA1E018          mov ax,[cs:0x18e0]
000020AF  2E0306E218        add ax,[cs:0x18e2]
000020B4  40                inc ax
000020B5  50                push ax
000020B6  E8FDF4            call word 0x15b6
000020B9  B94C00            mov cx,0x4c
000020BC  E8ABE5            call word 0x66a
000020BF  2EA1E018          mov ax,[cs:0x18e0]
000020C3  2E2B06E218        sub ax,[cs:0x18e2]
000020C8  48                dec ax
000020C9  50                push ax
000020CA  E8E9F4            call word 0x15b6
000020CD  B94C00            mov cx,0x4c
000020D0  E897E5            call word 0x66a
000020D3  2EA1E018          mov ax,[cs:0x18e0]
000020D7  2E0306E218        add ax,[cs:0x18e2]
000020DC  050200            add ax,0x2
000020DF  50                push ax
000020E0  E8D3F4            call word 0x15b6
000020E3  B94C00            mov cx,0x4c
000020E6  E881E5            call word 0x66a
000020E9  2EA1E018          mov ax,[cs:0x18e0]
000020ED  2E2B06E218        sub ax,[cs:0x18e2]
000020F2  2D0200            sub ax,0x2
000020F5  50                push ax
000020F6  E8BDF4            call word 0x15b6
000020F9  B94C00            mov cx,0x4c
000020FC  E86BE5            call word 0x66a
000020FF  2EA1E018          mov ax,[cs:0x18e0]
00002103  2E0306E218        add ax,[cs:0x18e2]
00002108  050300            add ax,0x3
0000210B  50                push ax
0000210C  E8A7F4            call word 0x15b6
0000210F  B94C00            mov cx,0x4c
00002112  E855E5            call word 0x66a
00002115  2EA1E018          mov ax,[cs:0x18e0]
00002119  2E2B06E218        sub ax,[cs:0x18e2]
0000211E  2D0300            sub ax,0x3
00002121  50                push ax
00002122  E891F4            call word 0x15b6
00002125  B90800            mov cx,0x8
00002128  E83FE5            call word 0x66a
0000212B  8B4604            mov ax,[bp+0x4]
0000212E  48                dec ax
0000212F  B90400            mov cx,0x4
00002132  E81FE5            call word 0x654
00002135  97                xchg ax,di
00002136  2E8A85E618        mov al,[cs:di+0x18e6]
0000213B  32E4              xor ah,ah
0000213D  50                push ax
0000213E  E804F0            call word 0x1145
00002141  33C0              xor ax,ax
00002143  B91400            mov cx,0x14
00002146  41                inc cx
00002147  8946FC            mov [bp-0x4],ax
0000214A  51                push cx
0000214B  8B4604            mov ax,[bp+0x4]
0000214E  48                dec ax
0000214F  B90300            mov cx,0x3
00002152  E8FFE4            call word 0x654
00002155  B91E00            mov cx,0x1e
00002158  F7E1              mul cx
0000215A  97                xchg ax,di
0000215B  8B46FC            mov ax,[bp-0x4]
0000215E  B91E00            mov cx,0x1e
00002161  E8F0E4            call word 0x654
00002164  03F8              add di,ax
00002166  57                push di
00002167  8B4604            mov ax,[bp+0x4]
0000216A  48                dec ax
0000216B  B90400            mov cx,0x4
0000216E  E8E3E4            call word 0x654
00002171  97                xchg ax,di
00002172  2E8A85E618        mov al,[cs:di+0x18e6]
00002177  32E4              xor ah,ah
00002179  5F                pop di
0000217A  B90000            mov cx,0x0
0000217D  BAFF00            mov dx,0xff
00002180  E8DAE4            call word 0x65d
00002183  8885FD02          mov [di+0x2fd],al
00002187  59                pop cx
00002188  49                dec cx
00002189  7406              jz 0x2191
0000218B  FF46FC            inc word [bp-0x4]
0000218E  E9B9FF            jmp word 0x214a
00002191  B81500            mov ax,0x15
00002194  B90700            mov cx,0x7
00002197  41                inc cx
00002198  8946FC            mov [bp-0x4],ax
0000219B  51                push cx
0000219C  8B4604            mov ax,[bp+0x4]
0000219F  48                dec ax
000021A0  B90300            mov cx,0x3
000021A3  E8AEE4            call word 0x654
000021A6  B91E00            mov cx,0x1e
000021A9  F7E1              mul cx
000021AB  97                xchg ax,di
000021AC  8B46FC            mov ax,[bp-0x4]
000021AF  B91E00            mov cx,0x1e
000021B2  E89FE4            call word 0x654
000021B5  03F8              add di,ax
000021B7  57                push di
000021B8  2EA0E918          mov al,[cs:0x18e9]
000021BC  32E4              xor ah,ah
000021BE  5F                pop di
000021BF  B90000            mov cx,0x0
000021C2  BAFF00            mov dx,0xff
000021C5  E895E4            call word 0x65d
000021C8  8885FD02          mov [di+0x2fd],al
000021CC  59                pop cx
000021CD  49                dec cx
000021CE  7406              jz 0x21d6
000021D0  FF46FC            inc word [bp-0x4]
000021D3  E9C5FF            jmp word 0x219b
000021D6  8BE5              mov sp,bp
000021D8  5D                pop bp
000021D9  C20200            ret 0x2
000021DC  55                push bp
000021DD  8BEC              mov bp,sp
000021DF  55                push bp
000021E0  83EC04            sub sp,byte +0x4
000021E3  B90800            mov cx,0x8
000021E6  E881E4            call word 0x66a
000021E9  2EA0E918          mov al,[cs:0x18e9]
000021ED  32E4              xor ah,ah
000021EF  50                push ax
000021F0  E852EF            call word 0x1145
000021F3  B90E00            mov cx,0xe
000021F6  E871E4            call word 0x66a
000021F9  33C0              xor ax,ax
000021FB  50                push ax
000021FC  50                push ax
000021FD  B8C800            mov ax,0xc8
00002200  50                push ax
00002201  B88C00            mov ax,0x8c
00002204  50                push ax
00002205  E8F5F2            call word 0x14fd
00002208  B80100            mov ax,0x1
0000220B  B90200            mov cx,0x2
0000220E  41                inc cx
0000220F  8946FC            mov [bp-0x4],ax
00002212  51                push cx
00002213  B81500            mov ax,0x15
00002216  B90700            mov cx,0x7
00002219  41                inc cx
0000221A  8946FA            mov [bp-0x6],ax
0000221D  51                push cx
0000221E  B90C00            mov cx,0xc
00002221  E846E4            call word 0x66a
00002224  8B46FC            mov ax,[bp-0x4]
00002227  50                push ax
00002228  8B46FA            mov ax,[bp-0x6]
0000222B  50                push ax
0000222C  33C0              xor ax,ax
0000222E  50                push ax
0000222F  E8F7F6            call word 0x1929
00002232  B90A00            mov cx,0xa
00002235  E832E4            call word 0x66a
00002238  A1C202            mov ax,[0x2c2]
0000223B  2D4501            sub ax,0x145
0000223E  50                push ax
0000223F  A1C402            mov ax,[0x2c4]
00002242  2D4100            sub ax,0x41
00002245  50                push ax
00002246  E829EF            call word 0x1172
00002249  B90800            mov cx,0x8
0000224C  E81BE4            call word 0x66a
0000224F  33C0              xor ax,ax
00002251  50                push ax
00002252  E8F0EE            call word 0x1145
00002255  B90A00            mov cx,0xa
00002258  E80FE4            call word 0x66a
0000225B  2EA1E418          mov ax,[cs:0x18e4]
0000225F  50                push ax
00002260  E88AF6            call word 0x18ed
00002263  59                pop cx
00002264  49                dec cx
00002265  7406              jz 0x226d
00002267  FF46FA            inc word [bp-0x6]
0000226A  E9B0FF            jmp word 0x221d
0000226D  59                pop cx
0000226E  49                dec cx
0000226F  7406              jz 0x2277
00002271  FF46FC            inc word [bp-0x4]
00002274  E99BFF            jmp word 0x2212
00002277  8BE5              mov sp,bp
00002279  5D                pop bp
0000227A  C3                ret
0000227B  55                push bp
0000227C  8BEC              mov bp,sp
0000227E  55                push bp
0000227F  E92600            jmp word 0x22a8
00002282  55                push bp
00002283  8BC4              mov ax,sp
00002285  FF76FE            push word [bp-0x2]
00002288  8BE8              mov bp,ax
0000228A  55                push bp
0000228B  B90A00            mov cx,0xa
0000228E  E8D9E3            call word 0x66a
00002291  A1C202            mov ax,[0x2c2]
00002294  034606            add ax,[bp+0x6]
00002297  50                push ax
00002298  A1C402            mov ax,[0x2c4]
0000229B  034604            add ax,[bp+0x4]
0000229E  50                push ax
0000229F  E8E6EE            call word 0x1188
000022A2  8BE5              mov sp,bp
000022A4  5D                pop bp
000022A5  C20400            ret 0x4
000022A8  83EC08            sub sp,byte +0x8
000022AB  2EA1E018          mov ax,[cs:0x18e0]
000022AF  F72EBE02          imul word [0x2be]
000022B3  99                cwd
000022B4  F73EC002          idiv word [0x2c0]
000022B8  A32706            mov [0x627],ax
000022BB  B90A00            mov cx,0xa
000022BE  E8A9E3            call word 0x66a
000022C1  B80100            mov ax,0x1
000022C4  50                push ax
000022C5  E89BFD            call word 0x2063
000022C8  B90A00            mov cx,0xa
000022CB  E89CE3            call word 0x66a
000022CE  B80200            mov ax,0x2
000022D1  50                push ax
000022D2  E88EFD            call word 0x2063
000022D5  B90A00            mov cx,0xa
000022D8  E88FE3            call word 0x66a
000022DB  B80300            mov ax,0x3
000022DE  50                push ax
000022DF  E881FD            call word 0x2063
000022E2  B80100            mov ax,0x1
000022E5  B90200            mov cx,0x2
000022E8  41                inc cx
000022E9  8846FD            mov [bp-0x3],al
000022EC  51                push cx
000022ED  33C0              xor ax,ax
000022EF  B91D00            mov cx,0x1d
000022F2  41                inc cx
000022F3  8846FC            mov [bp-0x4],al
000022F6  51                push cx
000022F7  8D7EF6            lea di,[bp-0xa]
000022FA  16                push ss
000022FB  57                push di
000022FC  E88BE7            call word 0xa8a
000022FF  8400              test [bx+si],al
00002301  0000              add [bx+si],al
00002303  00408A            add [bx+si-0x76],al
00002306  46                inc si
00002307  FC                cld
00002308  32E4              xor ah,ah
0000230A  50                push ax
0000230B  8A46FD            mov al,[bp-0x3]
0000230E  48                dec ax
0000230F  B90300            mov cx,0x3
00002312  E83FE3            call word 0x654
00002315  97                xchg ax,di
00002316  2E8A85EA18        mov al,[cs:di+0x18ea]
0000231B  32E4              xor ah,ah
0000231D  59                pop cx
0000231E  03C1              add ax,cx
00002320  B91E00            mov cx,0x1e
00002323  99                cwd
00002324  F7F9              idiv cx
00002326  92                xchg ax,dx
00002327  E830E8            call word 0xb5a
0000232A  E8ABE7            call word 0xad8
0000232D  BFF702            mov di,0x2f7
00002330  1E                push ds
00002331  E847E7            call word 0xa7b
00002334  E8A1E7            call word 0xad8
00002337  E861E7            call word 0xa9b
0000233A  8A46FD            mov al,[bp-0x3]
0000233D  32E4              xor ah,ah
0000233F  48                dec ax
00002340  B90300            mov cx,0x3
00002343  E80EE3            call word 0x654
00002346  B93C00            mov cx,0x3c
00002349  F7E1              mul cx
0000234B  97                xchg ax,di
0000234C  57                push di
0000234D  8A46FC            mov al,[bp-0x4]
00002350  32E4              xor ah,ah
00002352  5F                pop di
00002353  B91E00            mov cx,0x1e
00002356  E8FBE2            call word 0x654
00002359  D1E0              shl ax,1
0000235B  03F8              add di,ax
0000235D  57                push di
0000235E  8A46FD            mov al,[bp-0x3]
00002361  32E4              xor ah,ah
00002363  48                dec ax
00002364  B90300            mov cx,0x3
00002367  E8EAE2            call word 0x654
0000236A  D1E0              shl ax,1
0000236C  97                xchg ax,di
0000236D  2E8B85D418        mov ax,[cs:di+0x18d4]
00002372  50                push ax
00002373  8D7EF6            lea di,[bp-0xa]
00002376  16                push ss
00002377  E801E7            call word 0xa7b
0000237A  E8FBE7            call word 0xb78
0000237D  2EA1E018          mov ax,[cs:0x18e0]
00002381  E8D6E7            call word 0xb5a
00002384  E851E7            call word 0xad8
00002387  E89BE7            call word 0xb25
0000238A  59                pop cx
0000238B  03C1              add ax,cx
0000238D  5F                pop di
0000238E  89855703          mov [di+0x357],ax
00002392  8A46FD            mov al,[bp-0x3]
00002395  32E4              xor ah,ah
00002397  48                dec ax
00002398  B90300            mov cx,0x3
0000239B  E8B6E2            call word 0x654
0000239E  B93C00            mov cx,0x3c
000023A1  F7E1              mul cx
000023A3  97                xchg ax,di
000023A4  57                push di
000023A5  8A46FC            mov al,[bp-0x4]
000023A8  32E4              xor ah,ah
000023AA  5F                pop di
000023AB  B91E00            mov cx,0x1e
000023AE  E8A3E2            call word 0x654
000023B1  D1E0              shl ax,1
000023B3  03F8              add di,ax
000023B5  57                push di
000023B6  8A46FD            mov al,[bp-0x3]
000023B9  32E4              xor ah,ah
000023BB  48                dec ax
000023BC  B90300            mov cx,0x3
000023BF  E892E2            call word 0x654
000023C2  D1E0              shl ax,1
000023C4  97                xchg ax,di
000023C5  2E8B85DA18        mov ax,[cs:di+0x18da]
000023CA  50                push ax
000023CB  8D7EF6            lea di,[bp-0xa]
000023CE  16                push ss
000023CF  E8A9E6            call word 0xa7b
000023D2  E8B8E7            call word 0xb8d
000023D5  A12706            mov ax,[0x627]
000023D8  E87FE7            call word 0xb5a
000023DB  E8FAE6            call word 0xad8
000023DE  E844E7            call word 0xb25
000023E1  59                pop cx
000023E2  03C1              add ax,cx
000023E4  5F                pop di
000023E5  89850B04          mov [di+0x40b],ax
000023E9  8D7EF6            lea di,[bp-0xa]
000023EC  16                push ss
000023ED  57                push di
000023EE  E899E6            call word 0xa8a
000023F1  8400              test [bx+si],al
000023F3  0000              add [bx+si],al
000023F5  00408A            add [bx+si-0x76],al
000023F8  46                inc si
000023F9  FC                cld
000023FA  32E4              xor ah,ah
000023FC  50                push ax
000023FD  8A46FD            mov al,[bp-0x3]
00002400  48                dec ax
00002401  B90300            mov cx,0x3
00002404  E84DE2            call word 0x654
00002407  97                xchg ax,di
00002408  2E8A85EA18        mov al,[cs:di+0x18ea]
0000240D  32E4              xor ah,ah
0000240F  59                pop cx
00002410  03C1              add ax,cx
00002412  B91E00            mov cx,0x1e
00002415  99                cwd
00002416  F7F9              idiv cx
00002418  92                xchg ax,dx
00002419  E83EE7            call word 0xb5a
0000241C  E8B9E6            call word 0xad8
0000241F  B80600            mov ax,0x6
00002422  E835E7            call word 0xb5a
00002425  E886E6            call word 0xaae
00002428  BFF702            mov di,0x2f7
0000242B  1E                push ds
0000242C  E84CE6            call word 0xa7b
0000242F  E8A6E6            call word 0xad8
00002432  E866E6            call word 0xa9b
00002435  8A46FD            mov al,[bp-0x3]
00002438  32E4              xor ah,ah
0000243A  48                dec ax
0000243B  B90300            mov cx,0x3
0000243E  E813E2            call word 0x654
00002441  B93C00            mov cx,0x3c
00002444  F7E1              mul cx
00002446  97                xchg ax,di
00002447  57                push di
00002448  8A46FC            mov al,[bp-0x4]
0000244B  32E4              xor ah,ah
0000244D  5F                pop di
0000244E  B91E00            mov cx,0x1e
00002451  E800E2            call word 0x654
00002454  D1E0              shl ax,1
00002456  03F8              add di,ax
00002458  57                push di
00002459  8A46FD            mov al,[bp-0x3]
0000245C  32E4              xor ah,ah
0000245E  48                dec ax
0000245F  B90300            mov cx,0x3
00002462  E8EFE1            call word 0x654
00002465  D1E0              shl ax,1
00002467  97                xchg ax,di
00002468  2E8B85D418        mov ax,[cs:di+0x18d4]
0000246D  50                push ax
0000246E  8D7EF6            lea di,[bp-0xa]
00002471  16                push ss
00002472  E806E6            call word 0xa7b
00002475  E800E7            call word 0xb78
00002478  2EA1E018          mov ax,[cs:0x18e0]
0000247C  E8DBE6            call word 0xb5a
0000247F  E856E6            call word 0xad8
00002482  E8A0E6            call word 0xb25
00002485  59                pop cx
00002486  03C1              add ax,cx
00002488  5F                pop di
00002489  8985BF04          mov [di+0x4bf],ax
0000248D  8A46FD            mov al,[bp-0x3]
00002490  32E4              xor ah,ah
00002492  48                dec ax
00002493  B90300            mov cx,0x3
00002496  E8BBE1            call word 0x654
00002499  B93C00            mov cx,0x3c
0000249C  F7E1              mul cx
0000249E  97                xchg ax,di
0000249F  57                push di
000024A0  8A46FC            mov al,[bp-0x4]
000024A3  32E4              xor ah,ah
000024A5  5F                pop di
000024A6  B91E00            mov cx,0x1e
000024A9  E8A8E1            call word 0x654
000024AC  D1E0              shl ax,1
000024AE  03F8              add di,ax
000024B0  57                push di
000024B1  8A46FD            mov al,[bp-0x3]
000024B4  32E4              xor ah,ah
000024B6  48                dec ax
000024B7  B90300            mov cx,0x3
000024BA  E897E1            call word 0x654
000024BD  D1E0              shl ax,1
000024BF  97                xchg ax,di
000024C0  2E8B85DA18        mov ax,[cs:di+0x18da]
000024C5  50                push ax
000024C6  8D7EF6            lea di,[bp-0xa]
000024C9  16                push ss
000024CA  E8AEE5            call word 0xa7b
000024CD  E8BDE6            call word 0xb8d
000024D0  A12706            mov ax,[0x627]
000024D3  E884E6            call word 0xb5a
000024D6  E8FFE5            call word 0xad8
000024D9  E849E6            call word 0xb25
000024DC  59                pop cx
000024DD  03C1              add ax,cx
000024DF  5F                pop di
000024E0  89857305          mov [di+0x573],ax
000024E4  59                pop cx
000024E5  49                dec cx
000024E6  7406              jz 0x24ee
000024E8  FE46FC            inc byte [bp-0x4]
000024EB  E908FE            jmp word 0x22f6
000024EE  59                pop cx
000024EF  49                dec cx
000024F0  7406              jz 0x24f8
000024F2  FE46FD            inc byte [bp-0x3]
000024F5  E9F4FD            jmp word 0x22ec
000024F8  A04903            mov al,[0x349]
000024FB  32E4              xor ah,ah
000024FD  B90000            mov cx,0x0
00002500  BAFF00            mov dx,0xff
00002503  E857E1            call word 0x65d
00002506  A21A03            mov [0x31a],al
00002509  A00D03            mov al,[0x30d]
0000250C  32E4              xor ah,ah
0000250E  B90000            mov cx,0x0
00002511  BAFF00            mov dx,0xff
00002514  E846E1            call word 0x65d
00002517  A23803            mov [0x338],al
0000251A  A02B03            mov al,[0x32b]
0000251D  32E4              xor ah,ah
0000251F  B90000            mov cx,0x0
00002522  BAFF00            mov dx,0xff
00002525  E835E1            call word 0x65d
00002528  A25603            mov [0x356],al
0000252B  A1EF03            mov ax,[0x3ef]
0000252E  A39103            mov [0x391],ax
00002531  A17703            mov ax,[0x377]
00002534  A3CD03            mov [0x3cd],ax
00002537  A1B303            mov ax,[0x3b3]
0000253A  A30904            mov [0x409],ax
0000253D  A1A304            mov ax,[0x4a3]
00002540  A34504            mov [0x445],ax
00002543  A12B04            mov ax,[0x42b]
00002546  A38104            mov [0x481],ax
00002549  A16704            mov ax,[0x467]
0000254C  A3BD04            mov [0x4bd],ax
0000254F  A1BD03            mov ax,[0x3bd]
00002552  A38703            mov [0x387],ax
00002555  A1F903            mov ax,[0x3f9]
00002558  A3C303            mov [0x3c3],ax
0000255B  A18103            mov ax,[0x381]
0000255E  A3FF03            mov [0x3ff],ax
00002561  A17104            mov ax,[0x471]
00002564  A33B04            mov [0x43b],ax
00002567  A1AD04            mov ax,[0x4ad]
0000256A  A37704            mov [0x477],ax
0000256D  A13504            mov ax,[0x435]
00002570  A3B304            mov [0x4b3],ax
00002573  B90800            mov cx,0x8
00002576  E8F1E0            call word 0x66a
00002579  B80F00            mov ax,0xf
0000257C  50                push ax
0000257D  E8C5EB            call word 0x1145
00002580  B90A00            mov cx,0xa
00002583  E8E4E0            call word 0x66a
00002586  2EA1D418          mov ax,[cs:0x18d4]
0000258A  50                push ax
0000258B  2EA1DA18          mov ax,[cs:0x18da]
0000258F  50                push ax
00002590  E8DFEB            call word 0x1172
00002593  B90C00            mov cx,0xc
00002596  E8D1E0            call word 0x66a
00002599  B8ECFF            mov ax,0xffec
0000259C  50                push ax
0000259D  33C0              xor ax,ax
0000259F  50                push ax
000025A0  E8DFFC            call word 0x2282
000025A3  B90C00            mov cx,0xc
000025A6  E8C1E0            call word 0x66a
000025A9  B80A00            mov ax,0xa
000025AC  50                push ax
000025AD  33C0              xor ax,ax
000025AF  50                push ax
000025B0  E8CFFC            call word 0x2282
000025B3  B90C00            mov cx,0xc
000025B6  E8B1E0            call word 0x66a
000025B9  33C0              xor ax,ax
000025BB  50                push ax
000025BC  B8ECFF            mov ax,0xffec
000025BF  50                push ax
000025C0  E8BFFC            call word 0x2282
000025C3  B90C00            mov cx,0xc
000025C6  E8A1E0            call word 0x66a
000025C9  B8FAFF            mov ax,0xfffa
000025CC  50                push ax
000025CD  B80600            mov ax,0x6
000025D0  50                push ax
000025D1  E8AEFC            call word 0x2282
000025D4  B90A00            mov cx,0xa
000025D7  E890E0            call word 0x66a
000025DA  2EA1D618          mov ax,[cs:0x18d6]
000025DE  50                push ax
000025DF  2EA1DC18          mov ax,[cs:0x18dc]
000025E3  50                push ax
000025E4  E88BEB            call word 0x1172
000025E7  B90C00            mov cx,0xc
000025EA  E87DE0            call word 0x66a
000025ED  B81400            mov ax,0x14
000025F0  50                push ax
000025F1  33C0              xor ax,ax
000025F3  50                push ax
000025F4  E88BFC            call word 0x2282
000025F7  B90C00            mov cx,0xc
000025FA  E86DE0            call word 0x66a
000025FD  B8ECFF            mov ax,0xffec
00002600  50                push ax
00002601  33C0              xor ax,ax
00002603  50                push ax
00002604  E87BFC            call word 0x2282
00002607  B90C00            mov cx,0xc
0000260A  E85DE0            call word 0x66a
0000260D  B80800            mov ax,0x8
00002610  50                push ax
00002611  B8FCFF            mov ax,0xfffc
00002614  50                push ax
00002615  E86AFC            call word 0x2282
00002618  B90C00            mov cx,0xc
0000261B  E84CE0            call word 0x66a
0000261E  B80600            mov ax,0x6
00002621  50                push ax
00002622  B8FCFF            mov ax,0xfffc
00002625  50                push ax
00002626  E859FC            call word 0x2282
00002629  B90C00            mov cx,0xc
0000262C  E83BE0            call word 0x66a
0000262F  B80400            mov ax,0x4
00002632  50                push ax
00002633  B8FCFF            mov ax,0xfffc
00002636  50                push ax
00002637  E848FC            call word 0x2282
0000263A  B90C00            mov cx,0xc
0000263D  E82AE0            call word 0x66a
00002640  33C0              xor ax,ax
00002642  50                push ax
00002643  B8FCFF            mov ax,0xfffc
00002646  50                push ax
00002647  E838FC            call word 0x2282
0000264A  B90C00            mov cx,0xc
0000264D  E81AE0            call word 0x66a
00002650  B8FCFF            mov ax,0xfffc
00002653  50                push ax
00002654  B8FEFF            mov ax,0xfffe
00002657  50                push ax
00002658  E827FC            call word 0x2282
0000265B  B90C00            mov cx,0xc
0000265E  E809E0            call word 0x66a
00002661  B8FAFF            mov ax,0xfffa
00002664  50                push ax
00002665  33C0              xor ax,ax
00002667  50                push ax
00002668  E817FC            call word 0x2282
0000266B  B90C00            mov cx,0xc
0000266E  E8F9DF            call word 0x66a
00002671  B8F8FF            mov ax,0xfff8
00002674  50                push ax
00002675  B80200            mov ax,0x2
00002678  50                push ax
00002679  E806FC            call word 0x2282
0000267C  B90A00            mov cx,0xa
0000267F  E8E8DF            call word 0x66a
00002682  2EA1D818          mov ax,[cs:0x18d8]
00002686  50                push ax
00002687  2EA1DE18          mov ax,[cs:0x18de]
0000268B  50                push ax
0000268C  E8E3EA            call word 0x1172
0000268F  B90C00            mov cx,0xc
00002692  E8D5DF            call word 0x66a
00002695  B8FAFF            mov ax,0xfffa
00002698  50                push ax
00002699  B80200            mov ax,0x2
0000269C  50                push ax
0000269D  E8E2FB            call word 0x2282
000026A0  B90C00            mov cx,0xc
000026A3  E8C4DF            call word 0x66a
000026A6  B80600            mov ax,0x6
000026A9  50                push ax
000026AA  B8FEFF            mov ax,0xfffe
000026AD  50                push ax
000026AE  E8D1FB            call word 0x2282
000026B1  B90C00            mov cx,0xc
000026B4  E8B3DF            call word 0x66a
000026B7  B80400            mov ax,0x4
000026BA  50                push ax
000026BB  33C0              xor ax,ax
000026BD  50                push ax
000026BE  E8C1FB            call word 0x2282
000026C1  B90C00            mov cx,0xc
000026C4  E8A3DF            call word 0x66a
000026C7  B80400            mov ax,0x4
000026CA  50                push ax
000026CB  50                push ax
000026CC  E8B3FB            call word 0x2282
000026CF  B90C00            mov cx,0xc
000026D2  E895DF            call word 0x66a
000026D5  B8FEFF            mov ax,0xfffe
000026D8  50                push ax
000026D9  B80400            mov ax,0x4
000026DC  50                push ax
000026DD  E8A2FB            call word 0x2282
000026E0  B90C00            mov cx,0xc
000026E3  E884DF            call word 0x66a
000026E6  B8FAFF            mov ax,0xfffa
000026E9  50                push ax
000026EA  B80200            mov ax,0x2
000026ED  50                push ax
000026EE  E891FB            call word 0x2282
000026F1  B90C00            mov cx,0xc
000026F4  E873DF            call word 0x66a
000026F7  B80600            mov ax,0x6
000026FA  50                push ax
000026FB  33C0              xor ax,ax
000026FD  50                push ax
000026FE  E881FB            call word 0x2282
00002701  B90C00            mov cx,0xc
00002704  E863DF            call word 0x66a
00002707  B80400            mov ax,0x4
0000270A  50                push ax
0000270B  50                push ax
0000270C  E873FB            call word 0x2282
0000270F  B90C00            mov cx,0xc
00002712  E855DF            call word 0x66a
00002715  B8FEFF            mov ax,0xfffe
00002718  50                push ax
00002719  B80400            mov ax,0x4
0000271C  50                push ax
0000271D  E862FB            call word 0x2282
00002720  B90C00            mov cx,0xc
00002723  E844DF            call word 0x66a
00002726  B8FCFF            mov ax,0xfffc
00002729  50                push ax
0000272A  B80200            mov ax,0x2
0000272D  50                push ax
0000272E  E851FB            call word 0x2282
00002731  B90C00            mov cx,0xc
00002734  E833DF            call word 0x66a
00002737  B8FAFF            mov ax,0xfffa
0000273A  50                push ax
0000273B  B8FEFF            mov ax,0xfffe
0000273E  50                push ax
0000273F  E840FB            call word 0x2282
00002742  B90A00            mov cx,0xa
00002745  E822DF            call word 0x66a
00002748  E891FA            call word 0x21dc
0000274B  B80100            mov ax,0x1
0000274E  50                push ax
0000274F  B80C00            mov ax,0xc
00002752  E8D7DE            call word 0x62c
00002755  E89AE6            call word 0xdf2
00002758  E891E8            call word 0xfec
0000275B  16                push ss
0000275C  2020              and [bx+si],ah
0000275E  205420            and [si+0x20],dl
00002761  52                push dx
00002762  204920            and [bx+di+0x20],cl
00002765  53                push bx
00002766  204B20            and [bp+di+0x20],cl
00002769  45                inc bp
0000276A  204C20            and [si+0x20],cl
0000276D  49                dec cx
0000276E  204F20            and [bx+0x20],cl
00002771  4E                dec si
00002772  E836DF            call word 0x6ab
00002775  B80100            mov ax,0x1
00002778  50                push ax
00002779  B80E00            mov ax,0xe
0000277C  E8ADDE            call word 0x62c
0000277F  E870E6            call word 0xdf2
00002782  E867E8            call word 0xfec
00002785  185468            sbb [si+0x68],dl
00002788  65207075          and [gs:bx+si+0x75],dh
0000278C  7A7A              jpe 0x2808
0000278E  6C                insb
0000278F  65202D            and [gs:di],ch
00002792  2D2072            sub ax,0x7220
00002795  6F                outsw
00002796  7461              jz 0x27f9
00002798  7465              jz 0x27ff
0000279A  207468            and [si+0x68],dh
0000279D  65E863E8          gs call word 0x1004
000027A1  E807DF            call word 0x6ab
000027A4  E84BE6            call word 0xdf2
000027A7  E842E8            call word 0xfec
000027AA  197269            sbb [bp+si+0x69],si
000027AD  6E                outsb
000027AE  677320            jnc 0x27d1
000027B1  746F              jz 0x2822
000027B3  206D61            and [di+0x61],ch
000027B6  6B652074          imul sp,[di+0x20],byte +0x74
000027BA  686520            push word 0x2065
000027BD  63656E            arpl [di+0x6e],sp
000027C0  7472              jz 0x2834
000027C2  61                popaw
000027C3  6C                insb
000027C4  E83DE8            call word 0x1004
000027C7  E8E1DE            call word 0x6ab
000027CA  E825E6            call word 0xdf2
000027CD  E81CE8            call word 0xfec
000027D0  16                push ss
000027D1  7472              jz 0x2845
000027D3  69736B656C        imul si,[bp+di+0x6b],word 0x6c65
000027D8  696F6E2061        imul bp,[bx+0x6e],word 0x6120
000027DD  206469            and [si+0x69],ah
000027E0  6666657265        gs o32 jc 0x284a
000027E5  6E                outsb
000027E6  74E8              jz 0x27d0
000027E8  1AE8              sbb ch,al
000027EA  E8BEDE            call word 0x6ab
000027ED  E802E6            call word 0xdf2
000027F0  E8F9E7            call word 0xfec
000027F3  06                push es
000027F4  636F6C            arpl [bx+0x6c],bp
000027F7  6F                outsw
000027F8  722E              jc 0x2828
000027FA  E807E8            call word 0x1004
000027FD  E8ABDE            call word 0x6ab
00002800  B80100            mov ax,0x1
00002803  50                push ax
00002804  B81300            mov ax,0x13
00002807  E822DE            call word 0x62c
0000280A  E8E5E5            call word 0xdf2
0000280D  E8DCE7            call word 0xfec
00002810  15546F            adc ax,0x6f54
00002813  207475            and [si+0x75],dh
00002816  726E              jc 0x2886
00002818  207269            and [bp+si+0x69],dh
0000281B  6E                outsb
0000281C  677320            jnc 0x283f
0000281F  312C              xor [si],bp
00002821  2032              and [bp+si],dh
00002823  2C20              sub al,0x20
00002825  33E8              xor bp,ax
00002827  DB                db 0xdb
00002828  E7E8              out 0xe8,ax
0000282A  7FDE              jg 0x280a
0000282C  E8C3E5            call word 0xdf2
0000282F  E8BAE7            call word 0xfec
00002832  19636C            sbb [bp+di+0x6c],sp
00002835  6F                outsw
00002836  636B77            arpl [bp+di+0x77],bp
00002839  6973652C20        imul si,[bp+di+0x65],word 0x202c
0000283E  7072              jo 0x28b2
00002840  657373            gs jnc 0x28b6
00002843  2031              and [bx+di],dh
00002845  2C20              sub al,0x20
00002847  322C              xor ch,[si]
00002849  2033              and [bp+di],dh
0000284B  2EE8B5E7          cs call word 0x1004
0000284F  E859DE            call word 0x6ab
00002852  E89DE5            call word 0xdf2
00002855  E894E7            call word 0xfec
00002858  15466F            adc ax,0x6f46
0000285B  7220              jc 0x287d
0000285D  636F75            arpl [bx+0x75],bp
00002860  6E                outsb
00002861  7465              jz 0x28c8
00002863  7263              jc 0x28c8
00002865  6C                insb
00002866  6F                outsw
00002867  636B77            arpl [bp+di+0x77],bp
0000286A  6973652CE8        imul si,[bp+di+0x65],word 0xe82c
0000286F  93                xchg ax,bx
00002870  E7E8              out 0xe8,ax
00002872  37                aaa
00002873  DEE8              fsubp st0
00002875  7BE5              jpo 0x285c
00002877  E872E7            call word 0xfec
0000287A  117072            adc [bx+si+0x72],si
0000287D  657373            gs jnc 0x28f3
00002880  2034              and [si],dh
00002882  2C20              sub al,0x20
00002884  352C20            xor ax,0x202c
00002887  6F                outsw
00002888  7220              jc 0x28aa
0000288A  362EE875E7        cs call word 0x1004
0000288F  E819DE            call word 0x6ab
00002892  E85DE5            call word 0xdf2
00002895  E86CE7            call word 0x1004
00002898  E810DE            call word 0x6ab
0000289B  E854E5            call word 0xdf2
0000289E  E84BE7            call word 0xfec
000028A1  115072            adc [bx+si+0x72],dx
000028A4  657373            gs jnc 0x291a
000028A7  2022              and [bp+si],ah
000028A9  51                push cx
000028AA  2220              and ah,[bx+si]
000028AC  746F              jz 0x291d
000028AE  205175            and [bx+di+0x75],dl
000028B1  6974E8F5DD        imul si,[si-0x18],word 0xddf5
000028B6  8BE5              mov sp,bp
000028B8  5D                pop bp
000028B9  C3                ret
000028BA  55                push bp
000028BB  8BEC              mov bp,sp
000028BD  55                push bp
000028BE  B8D007            mov ax,0x7d0
000028C1  50                push ax
000028C2  8B4606            mov ax,[bp+0x6]
000028C5  48                dec ax
000028C6  B9F401            mov cx,0x1f4
000028C9  F7E9              imul cx
000028CB  59                pop cx
000028CC  03C1              add ax,cx
000028CE  E874D9            call word 0x245
000028D1  B81E00            mov ax,0x1e
000028D4  E88BD8            call word 0x162
000028D7  B8D007            mov ax,0x7d0
000028DA  50                push ax
000028DB  8B4606            mov ax,[bp+0x6]
000028DE  48                dec ax
000028DF  B9F401            mov cx,0x1f4
000028E2  F7E9              imul cx
000028E4  59                pop cx
000028E5  03C1              add ax,cx
000028E7  034604            add ax,[bp+0x4]
000028EA  E858D9            call word 0x245
000028ED  B81E00            mov ax,0x1e
000028F0  E86FD8            call word 0x162
000028F3  E876D9            call word 0x26c
000028F6  8BE5              mov sp,bp
000028F8  5D                pop bp
000028F9  C20400            ret 0x4
000028FC  E86DD9            call word 0x26c
000028FF  BFF702            mov di,0x2f7
00002902  1E                push ds
00002903  57                push di
00002904  E883E1            call word 0xa8a
00002907  82                db 0x82
00002908  21A2DA0F          and [bp+si+0xfda],sp
0000290C  49                dec cx
0000290D  B8B400            mov ax,0xb4
00002910  E847E2            call word 0xb5a
00002913  E8D1E1            call word 0xae7
00002916  E882E1            call word 0xa9b
00002919  B90600            mov cx,0x6
0000291C  E84BDD            call word 0x66a
0000291F  E808E7            call word 0x102a
00002922  B90600            mov cx,0x6
00002925  E842DD            call word 0x66a
00002928  E866E7            call word 0x1091
0000292B  B90800            mov cx,0x8
0000292E  E839DD            call word 0x66a
00002931  33C0              xor ax,ax
00002933  50                push ax
00002934  E823E8            call word 0x115a
00002937  B90E00            mov cx,0xe
0000293A  E82DDD            call word 0x66a
0000293D  E83BF9            call word 0x227b
00002940  B91400            mov cx,0x14
00002943  E824DD            call word 0x66a
00002946  B80100            mov ax,0x1
00002949  50                push ax
0000294A  33C0              xor ax,ax
0000294C  50                push ax
0000294D  B90000            mov cx,0x0
00002950  BA0100            mov dx,0x1
00002953  E807DD            call word 0x65d
00002956  50                push ax
00002957  E8EFF0            call word 0x1a49
0000295A  B91400            mov cx,0x14
0000295D  E80ADD            call word 0x66a
00002960  B80200            mov ax,0x2
00002963  50                push ax
00002964  33C0              xor ax,ax
00002966  50                push ax
00002967  B90000            mov cx,0x0
0000296A  BA0100            mov dx,0x1
0000296D  E8EDDC            call word 0x65d
00002970  50                push ax
00002971  E8D5F0            call word 0x1a49
00002974  B91400            mov cx,0x14
00002977  E8F0DC            call word 0x66a
0000297A  B80300            mov ax,0x3
0000297D  50                push ax
0000297E  33C0              xor ax,ax
00002980  50                push ax
00002981  B90000            mov cx,0x0
00002984  BA0100            mov dx,0x1
00002987  E8D3DC            call word 0x65d
0000298A  50                push ax
0000298B  E8BBF0            call word 0x1a49
0000298E  BF4C01            mov di,0x14c
00002991  1E                push ds
00002992  E840E4            call word 0xdd5
00002995  BF2906            mov di,0x629
00002998  1E                push ds
00002999  E8CAE5            call word 0xf66
0000299C  E80CDD            call word 0x6ab
0000299F  A02906            mov al,[0x629]
000029A2  32E4              xor ah,ah
000029A4  E89BD8            call word 0x242
000029A7  B90000            mov cx,0x0
000029AA  BAFF00            mov dx,0xff
000029AD  E8ADDC            call word 0x65d
000029B0  A22906            mov [0x629],al
000029B3  32E4              xor ah,ah
000029B5  3D3100            cmp ax,0x31
000029B8  752D              jnz 0x29e7
000029BA  B90E00            mov cx,0xe
000029BD  E8AADC            call word 0x66a
000029C0  B80100            mov ax,0x1
000029C3  50                push ax
000029C4  33C0              xor ax,ax
000029C6  B90000            mov cx,0x0
000029C9  BA0100            mov dx,0x1
000029CC  E88EDC            call word 0x65d
000029CF  50                push ax
000029D0  E88AF1            call word 0x1b5d
000029D3  B90A00            mov cx,0xa
000029D6  E891DC            call word 0x66a
000029D9  B80100            mov ax,0x1
000029DC  50                push ax
000029DD  B86400            mov ax,0x64
000029E0  50                push ax
000029E1  E8D6FE            call word 0x28ba
000029E4  E9F700            jmp word 0x2ade
000029E7  3D3200            cmp ax,0x32
000029EA  752D              jnz 0x2a19
000029EC  B90E00            mov cx,0xe
000029EF  E878DC            call word 0x66a
000029F2  B80200            mov ax,0x2
000029F5  50                push ax
000029F6  33C0              xor ax,ax
000029F8  B90000            mov cx,0x0
000029FB  BA0100            mov dx,0x1
000029FE  E85CDC            call word 0x65d
00002A01  50                push ax
00002A02  E858F1            call word 0x1b5d
00002A05  B90A00            mov cx,0xa
00002A08  E85FDC            call word 0x66a
00002A0B  B80200            mov ax,0x2
00002A0E  50                push ax
00002A0F  B86400            mov ax,0x64
00002A12  50                push ax
00002A13  E8A4FE            call word 0x28ba
00002A16  E9C500            jmp word 0x2ade
00002A19  3D3300            cmp ax,0x33
00002A1C  752D              jnz 0x2a4b
00002A1E  B90E00            mov cx,0xe
00002A21  E846DC            call word 0x66a
00002A24  B80300            mov ax,0x3
00002A27  50                push ax
00002A28  33C0              xor ax,ax
00002A2A  B90000            mov cx,0x0
00002A2D  BA0100            mov dx,0x1
00002A30  E82ADC            call word 0x65d
00002A33  50                push ax
00002A34  E826F1            call word 0x1b5d
00002A37  B90A00            mov cx,0xa
00002A3A  E82DDC            call word 0x66a
00002A3D  B80300            mov ax,0x3
00002A40  50                push ax
00002A41  B86400            mov ax,0x64
00002A44  50                push ax
00002A45  E872FE            call word 0x28ba
00002A48  E99300            jmp word 0x2ade
00002A4B  3D3400            cmp ax,0x34
00002A4E  752B              jnz 0x2a7b
00002A50  B90E00            mov cx,0xe
00002A53  E814DC            call word 0x66a
00002A56  B80100            mov ax,0x1
00002A59  50                push ax
00002A5A  B90000            mov cx,0x0
00002A5D  BA0100            mov dx,0x1
00002A60  E8FADB            call word 0x65d
00002A63  50                push ax
00002A64  E8F6F0            call word 0x1b5d
00002A67  B90A00            mov cx,0xa
00002A6A  E8FDDB            call word 0x66a
00002A6D  B80100            mov ax,0x1
00002A70  50                push ax
00002A71  B89CFF            mov ax,0xff9c
00002A74  50                push ax
00002A75  E842FE            call word 0x28ba
00002A78  E96300            jmp word 0x2ade
00002A7B  3D3500            cmp ax,0x35
00002A7E  752E              jnz 0x2aae
00002A80  B90E00            mov cx,0xe
00002A83  E8E4DB            call word 0x66a
00002A86  B80200            mov ax,0x2
00002A89  50                push ax
00002A8A  B80100            mov ax,0x1
00002A8D  B90000            mov cx,0x0
00002A90  BA0100            mov dx,0x1
00002A93  E8C7DB            call word 0x65d
00002A96  50                push ax
00002A97  E8C3F0            call word 0x1b5d
00002A9A  B90A00            mov cx,0xa
00002A9D  E8CADB            call word 0x66a
00002AA0  B80200            mov ax,0x2
00002AA3  50                push ax
00002AA4  B89CFF            mov ax,0xff9c
00002AA7  50                push ax
00002AA8  E80FFE            call word 0x28ba
00002AAB  E93000            jmp word 0x2ade
00002AAE  3D3600            cmp ax,0x36
00002AB1  752B              jnz 0x2ade
00002AB3  B90E00            mov cx,0xe
00002AB6  E8B1DB            call word 0x66a
00002AB9  B80300            mov ax,0x3
00002ABC  50                push ax
00002ABD  B80100            mov ax,0x1
00002AC0  B90000            mov cx,0x0
00002AC3  BA0100            mov dx,0x1
00002AC6  E894DB            call word 0x65d
00002AC9  50                push ax
00002ACA  E890F0            call word 0x1b5d
00002ACD  B90A00            mov cx,0xa
00002AD0  E897DB            call word 0x66a
00002AD3  B80300            mov ax,0x3
00002AD6  50                push ax
00002AD7  B89CFF            mov ax,0xff9c
00002ADA  50                push ax
00002ADB  E8DCFD            call word 0x28ba
00002ADE  A02906            mov al,[0x629]
00002AE1  32E4              xor ah,ah
00002AE3  E85CD7            call word 0x242
00002AE6  3D5100            cmp ax,0x51
00002AE9  7403              jz 0x2aee
00002AEB  E9A0FE            jmp word 0x298e
00002AEE  B90600            mov cx,0x6
00002AF1  E876DB            call word 0x66a
00002AF4  E833E6            call word 0x112a
00002AF7  33C0              xor ax,ax
00002AF9  CD20              int 0x20
00002AFB  BD                db 0xbd
