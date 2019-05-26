00000100  E92527            jmp word 0x2828
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
00000118  3420              xor al,0x20
0000011A  42                inc dx
0000011B  4F                dec di
0000011C  52                push dx
0000011D  4C                dec sp
0000011E  41                inc cx
0000011F  4E                dec si
00000120  44                inc sp
00000121  20496E            and [bx+di+0x6e],cl
00000124  6302              arpl [bp+si],ax
00000126  0400              add al,0x0
00000128  734F              jnc 0x179
0000012A  0000              add [bx+si],al
0000012C  0000              add [bx+si],al
0000012E  0000              add [bx+si],al
00000130  0000              add [bx+si],al
00000132  0000              add [bx+si],al
00000134  0000              add [bx+si],al
00000136  0000              add [bx+si],al
00000138  0000              add [bx+si],al
0000013A  0000              add [bx+si],al
0000013C  0000              add [bx+si],al
0000013E  0000              add [bx+si],al
00000140  0000              add [bx+si],al
00000142  0000              add [bx+si],al
00000144  0000              add [bx+si],al
00000146  0000              add [bx+si],al
00000148  0000              add [bx+si],al
0000014A  0000              add [bx+si],al
0000014C  0000              add [bx+si],al
0000014E  0000              add [bx+si],al
00000150  0000              add [bx+si],al
00000152  0000              add [bx+si],al
00000154  0013              add [bp+di],dl
00000156  43                inc bx
00000157  6F                outsw
00000158  6C                insb
00000159  6F                outsw
0000015A  7220              jc 0x17c
0000015C  646973706C61      imul si,[fs:bp+di+0x70],word 0x616c
00000162  7920              jns 0x184
00000164  3830              cmp [bx+si],dh
00000166  7832              js 0x19a
00000168  356550            xor ax,0x5065
0000016B  1901              sbb [bx+di],ax
0000016D  03FE              add di,si
0000016F  F7                db 0xf7
00000170  0FFF              ud0
00000172  2E8A27            mov ah,[cs:bx]
00000175  0AE4              or ah,ah
00000177  F9                stc
00000178  740C              jz 0x186
0000017A  43                inc bx
0000017B  2E8A07            mov al,[cs:bx]
0000017E  E80D00            call word 0x18e
00000181  FECC              dec ah
00000183  75F5              jnz 0x17a
00000185  F8                clc
00000186  C3                ret
00000187  E82A00            call word 0x1b4
0000018A  0D0A00            or ax,0xa
0000018D  C3                ret
0000018E  53                push bx
0000018F  51                push cx
00000190  52                push dx
00000191  57                push di
00000192  56                push si
00000193  50                push ax
00000194  9C                pushfw
00000195  32E4              xor ah,ah
00000197  50                push ax
00000198  FF16A900          call word [0xa9]
0000019C  9D                popfw
0000019D  58                pop ax
0000019E  5E                pop si
0000019F  5F                pop di
000001A0  5A                pop dx
000001A1  59                pop cx
000001A2  5B                pop bx
000001A3  C3                ret
000001A4  3C80              cmp al,0x80
000001A6  7205              jc 0x1ad
000001A8  E8CF00            call word 0x27a
000001AB  EB03              jmp short 0x1b0
000001AD  E8BB00            call word 0x26b
000001B0  247F              and al,0x7f
000001B2  EBDA              jmp short 0x18e
000001B4  55                push bp
000001B5  8BEC              mov bp,sp
000001B7  875E02            xchg bx,[bp+0x2]
000001BA  50                push ax
000001BB  9C                pushfw
000001BC  2E8A07            mov al,[cs:bx]
000001BF  43                inc bx
000001C0  0AC0              or al,al
000001C2  7405              jz 0x1c9
000001C4  E8C7FF            call word 0x18e
000001C7  EBF3              jmp short 0x1bc
000001C9  9D                popfw
000001CA  58                pop ax
000001CB  875E02            xchg bx,[bp+0x2]
000001CE  5D                pop bp
000001CF  C3                ret
000001D0  55                push bp
000001D1  8BEC              mov bp,sp
000001D3  875E02            xchg bx,[bp+0x2]
000001D6  50                push ax
000001D7  9C                pushfw
000001D8  2E8A07            mov al,[cs:bx]
000001DB  43                inc bx
000001DC  0AC0              or al,al
000001DE  74E9              jz 0x1c9
000001E0  E8C1FF            call word 0x1a4
000001E3  EBF3              jmp short 0x1d8
000001E5  43                inc bx
000001E6  4B                dec bx
000001E7  7501              jnz 0x1ea
000001E9  C3                ret
000001EA  2EA02601          mov al,[cs:0x126]
000001EE  32E4              xor ah,ah
000001F0  03C0              add ax,ax
000001F2  03C0              add ax,ax
000001F4  03C0              add ax,ax
000001F6  50                push ax
000001F7  32C0              xor al,al
000001F9  D40A              aam
000001FB  58                pop ax
000001FC  48                dec ax
000001FD  75F7              jnz 0x1f6
000001FF  EBE5              jmp short 0x1e6
00000201  55                push bp
00000202  B40F              mov ah,0xf
00000204  CD10              int 0x10
00000206  5D                pop bp
00000207  3A065001          cmp al,[0x150]
0000020B  7405              jz 0x212
0000020D  B0FF              mov al,0xff
0000020F  E9AA00            jmp word 0x2bc
00000212  55                push bp
00000213  B80006            mov ax,0x600
00000216  8A3E5301          mov bh,[0x153]
0000021A  8B0E5601          mov cx,[0x156]
0000021E  2E8B166A01        mov dx,[cs:0x16a]
00000223  FECE              dec dh
00000225  FECA              dec dl
00000227  CD10              int 0x10
00000229  B402              mov ah,0x2
0000022B  8B165601          mov dx,[0x156]
0000022F  32FF              xor bh,bh
00000231  CD10              int 0x10
00000233  5D                pop bp
00000234  C3                ret
00000235  53                push bx
00000236  51                push cx
00000237  52                push dx
00000238  55                push bp
00000239  E84D00            call word 0x289
0000023C  B406              mov ah,0x6
0000023E  B001              mov al,0x1
00000240  8A3E5301          mov bh,[0x153]
00000244  8AEE              mov ch,dh
00000246  8A0E5601          mov cl,[0x156]
0000024A  2E8B166A01        mov dx,[cs:0x16a]
0000024F  FECE              dec dh
00000251  FECA              dec dl
00000253  3AEE              cmp ch,dh
00000255  7502              jnz 0x259
00000257  32C0              xor al,al
00000259  CD10              int 0x10
0000025B  5D                pop bp
0000025C  5A                pop dx
0000025D  59                pop cx
0000025E  5B                pop bx
0000025F  C3                ret
00000260  53                push bx
00000261  51                push cx
00000262  52                push dx
00000263  55                push bp
00000264  E82200            call word 0x289
00000267  B407              mov ah,0x7
00000269  EBD3              jmp short 0x23e
0000026B  50                push ax
0000026C  2EC606710100      mov byte [cs:0x171],0x0
00000272  A05201            mov al,[0x152]
00000275  A25501            mov [0x155],al
00000278  58                pop ax
00000279  C3                ret
0000027A  50                push ax
0000027B  2EC6067101FF      mov byte [cs:0x171],0xff
00000281  A05101            mov al,[0x151]
00000284  A25501            mov [0x155],al
00000287  58                pop ax
00000288  C3                ret
00000289  B403              mov ah,0x3
0000028B  32FF              xor bh,bh
0000028D  CD10              int 0x10
0000028F  C3                ret
00000290  53                push bx
00000291  51                push cx
00000292  52                push dx
00000293  55                push bp
00000294  E8F2FF            call word 0x289
00000297  B80006            mov ax,0x600
0000029A  8A3E5301          mov bh,[0x153]
0000029E  8BCA              mov cx,dx
000002A0  2E8A166A01        mov dl,[cs:0x16a]
000002A5  FECA              dec dl
000002A7  CD10              int 0x10
000002A9  5D                pop bp
000002AA  5A                pop dx
000002AB  59                pop cx
000002AC  5B                pop bx
000002AD  C3                ret
000002AE  2EA06D01          mov al,[cs:0x16d]
000002B2  3CFF              cmp al,0xff
000002B4  7506              jnz 0x2bc
000002B6  B40F              mov ah,0xf
000002B8  55                push bp
000002B9  CD10              int 0x10
000002BB  5D                pop bp
000002BC  C606560100        mov byte [0x156],0x0
000002C1  C606570100        mov byte [0x157],0x0
000002C6  C6065801FF        mov byte [0x158],0xff
000002CB  3C07              cmp al,0x7
000002CD  B750              mov bh,0x50
000002CF  B300              mov bl,0x0
000002D1  741A              jz 0x2ed
000002D3  3C02              cmp al,0x2
000002D5  7416              jz 0x2ed
000002D7  3C04              cmp al,0x4
000002D9  7202              jc 0x2dd
000002DB  B003              mov al,0x3
000002DD  B3FF              mov bl,0xff
000002DF  3C03              cmp al,0x3
000002E1  740A              jz 0x2ed
000002E3  B728              mov bh,0x28
000002E5  3C01              cmp al,0x1
000002E7  7404              jz 0x2ed
000002E9  32C0              xor al,al
000002EB  B300              mov bl,0x0
000002ED  A25001            mov [0x150],al
000002F0  881E5401          mov [0x154],bl
000002F4  2E883E6A01        mov [cs:0x16a],bh
000002F9  32E4              xor ah,ah
000002FB  55                push bp
000002FC  CD10              int 0x10
000002FE  5D                pop bp
000002FF  2EA06E01          mov al,[cs:0x16e]
00000303  2E8A1E6F01        mov bl,[cs:0x16f]
00000308  2E8A0E7001        mov cl,[cs:0x170]
0000030D  803E5401FF        cmp byte [0x154],0xff
00000312  7406              jz 0x31a
00000314  B0FF              mov al,0xff
00000316  B3F7              mov bl,0xf7
00000318  B10F              mov cl,0xf
0000031A  22C1              and al,cl
0000031C  A25101            mov [0x151],al
0000031F  A25501            mov [0x155],al
00000322  22D9              and bl,cl
00000324  881E5201          mov [0x152],bl
00000328  880E5301          mov [0x153],cl
0000032C  C3                ret
0000032D  BA1800            mov dx,0x18
00000330  E80100            call word 0x334
00000333  C3                ret
00000334  50                push ax
00000335  53                push bx
00000336  51                push cx
00000337  52                push dx
00000338  56                push si
00000339  57                push di
0000033A  55                push bp
0000033B  9C                pushfw
0000033C  86D6              xchg dl,dh
0000033E  03165601          add dx,[0x156]
00000342  2E3A366B01        cmp dh,[cs:0x16b]
00000347  730D              jnc 0x356
00000349  2E3A166A01        cmp dl,[cs:0x16a]
0000034E  7306              jnc 0x356
00000350  B402              mov ah,0x2
00000352  32FF              xor bh,bh
00000354  CD10              int 0x10
00000356  9D                popfw
00000357  5D                pop bp
00000358  5F                pop di
00000359  5E                pop si
0000035A  5A                pop dx
0000035B  59                pop cx
0000035C  5B                pop bx
0000035D  58                pop ax
0000035E  C3                ret
0000035F  5B                pop bx
00000360  59                pop cx
00000361  53                push bx
00000362  8AD0              mov dl,al
00000364  8AF1              mov dh,cl
00000366  FECA              dec dl
00000368  FECE              dec dh
0000036A  E9C7FF            jmp word 0x334
0000036D  803ED60000        cmp byte [0xd6],0x0
00000372  B0FF              mov al,0xff
00000374  750C              jnz 0x382
00000376  B401              mov ah,0x1
00000378  55                push bp
00000379  CD16              int 0x16
0000037B  5D                pop bp
0000037C  B000              mov al,0x0
0000037E  7402              jz 0x382
00000380  FEC8              dec al
00000382  32E4              xor ah,ah
00000384  2401              and al,0x1
00000386  C20100            ret 0x1
00000389  A0D600            mov al,[0xd6]
0000038C  C606D60000        mov byte [0xd6],0x0
00000391  0AC0              or al,al
00000393  7525              jnz 0x3ba
00000395  32E4              xor ah,ah
00000397  55                push bp
00000398  CD16              int 0x16
0000039A  5D                pop bp
0000039B  0AC0              or al,al
0000039D  750C              jnz 0x3ab
0000039F  8826D600          mov [0xd6],ah
000003A3  B003              mov al,0x3
000003A5  0AE4              or ah,ah
000003A7  7402              jz 0x3ab
000003A9  B01B              mov al,0x1b
000003AB  F706CE000400      test word [0xce],0x4
000003B1  7407              jz 0x3ba
000003B3  3C03              cmp al,0x3
000003B5  7503              jnz 0x3ba
000003B7  E98423            jmp word 0x273e
000003BA  32E4              xor ah,ah
000003BC  C20100            ret 0x1
000003BF  58                pop ax
000003C0  5A                pop dx
000003C1  50                push ax
000003C2  55                push bp
000003C3  52                push dx
000003C4  E8C2FE            call word 0x289
000003C7  58                pop ax
000003C8  3C0D              cmp al,0xd
000003CA  7506              jnz 0x3d2
000003CC  8A165601          mov dl,[0x156]
000003D0  EB69              jmp short 0x43b
000003D2  3C0A              cmp al,0xa
000003D4  750B              jnz 0x3e1
000003D6  FEC6              inc dh
000003D8  2E3A366B01        cmp dh,[cs:0x16b]
000003DD  725C              jc 0x43b
000003DF  EB40              jmp short 0x421
000003E1  3C08              cmp al,0x8
000003E3  750A              jnz 0x3ef
000003E5  3A165601          cmp dl,[0x156]
000003E9  7450              jz 0x43b
000003EB  FECA              dec dl
000003ED  EB4C              jmp short 0x43b
000003EF  3C07              cmp al,0x7
000003F1  7509              jnz 0x3fc
000003F3  B8070E            mov ax,0xe07
000003F6  32FF              xor bh,bh
000003F8  CD10              int 0x10
000003FA  EB45              jmp short 0x441
000003FC  52                push dx
000003FD  B409              mov ah,0x9
000003FF  32FF              xor bh,bh
00000401  B90100            mov cx,0x1
00000404  8A1E5501          mov bl,[0x155]
00000408  CD10              int 0x10
0000040A  5A                pop dx
0000040B  FEC2              inc dl
0000040D  2E3A166A01        cmp dl,[cs:0x16a]
00000412  7227              jc 0x43b
00000414  8A165601          mov dl,[0x156]
00000418  FEC6              inc dh
0000041A  2E3A366B01        cmp dh,[cs:0x16b]
0000041F  721A              jc 0x43b
00000421  FECE              dec dh
00000423  52                push dx
00000424  B80106            mov ax,0x601
00000427  8A3E5301          mov bh,[0x153]
0000042B  8B0E5601          mov cx,[0x156]
0000042F  2E8B166A01        mov dx,[cs:0x16a]
00000434  FECE              dec dh
00000436  FECA              dec dl
00000438  CD10              int 0x10
0000043A  5A                pop dx
0000043B  B402              mov ah,0x2
0000043D  32FF              xor bh,bh
0000043F  CD10              int 0x10
00000441  5D                pop bp
00000442  F706CE000400      test word [0xce],0x4
00000448  7414              jz 0x45e
0000044A  4C                dec sp
0000044B  E81FFF            call word 0x36d
0000044E  0BC0              or ax,ax
00000450  740C              jz 0x45e
00000452  4C                dec sp
00000453  E833FF            call word 0x389
00000456  3C13              cmp al,0x13
00000458  7504              jnz 0x45e
0000045A  4C                dec sp
0000045B  E82BFF            call word 0x389
0000045E  C3                ret
0000045F  58                pop ax
00000460  5A                pop dx
00000461  50                push ax
00000462  B405              mov ah,0x5
00000464  E95A05            jmp word 0x9c1
00000467  58                pop ax
00000468  5A                pop dx
00000469  50                push ax
0000046A  B404              mov ah,0x4
0000046C  E95205            jmp word 0x9c1
0000046F  B403              mov ah,0x3
00000471  E84D05            call word 0x9c1
00000474  32E4              xor ah,ah
00000476  C20100            ret 0x1
00000479  8BD8              mov bx,ax
0000047B  E967FD            jmp word 0x1e5
0000047E  E97606            jmp word 0xaf7
00000481  E805FE            call word 0x289
00000484  8AC2              mov al,dl
00000486  2A065601          sub al,[0x156]
0000048A  FEC0              inc al
0000048C  32E4              xor ah,ah
0000048E  C3                ret
0000048F  E8F7FD            call word 0x289
00000492  8AC6              mov al,dh
00000494  2A065701          sub al,[0x157]
00000498  FEC0              inc al
0000049A  32E4              xor ah,ah
0000049C  C3                ret
0000049D  5B                pop bx
0000049E  3C19              cmp al,0x19
000004A0  7704              ja 0x4a6
000004A2  2EA26B01          mov [cs:0x16b],al
000004A6  58                pop ax
000004A7  3C50              cmp al,0x50
000004A9  7704              ja 0x4af
000004AB  2EA26A01          mov [cs:0x16a],al
000004AF  58                pop ax
000004B0  2E3A066B01        cmp al,[cs:0x16b]
000004B5  7305              jnc 0x4bc
000004B7  FEC8              dec al
000004B9  A25701            mov [0x157],al
000004BC  58                pop ax
000004BD  2E3A066A01        cmp al,[cs:0x16a]
000004C2  7305              jnc 0x4c9
000004C4  FEC8              dec al
000004C6  A25601            mov [0x156],al
000004C9  FFE3              jmp bx
000004CB  241F              and al,0x1f
000004CD  A810              test al,0x10
000004CF  7404              jz 0x4d5
000004D1  240F              and al,0xf
000004D3  0C80              or al,0x80
000004D5  8026550170        and byte [0x155],0x70
000004DA  08065501          or [0x155],al
000004DE  C3                ret
000004DF  2407              and al,0x7
000004E1  B104              mov cl,0x4
000004E3  D2E0              shl al,cl
000004E5  802655018F        and byte [0x155],0x8f
000004EA  08065501          or [0x155],al
000004EE  0C0F              or al,0xf
000004F0  A25301            mov [0x153],al
000004F3  C3                ret
000004F4  55                push bp
000004F5  A35B01            mov [0x15b],ax
000004F8  C70659010000      mov word [0x159],0x0
000004FE  C7065D010000      mov word [0x15d],0x0
00000504  C7065F01C700      mov word [0x15f],0xc7
0000050A  A05801            mov al,[0x158]
0000050D  32E4              xor ah,ah
0000050F  CD10              int 0x10
00000511  33DB              xor bx,bx
00000513  881E6101          mov [0x161],bl
00000517  B40B              mov ah,0xb
00000519  CD10              int 0x10
0000051B  FEC7              inc bh
0000051D  B40B              mov ah,0xb
0000051F  CD10              int 0x10
00000521  5D                pop bp
00000522  C3                ret
00000523  C606580104        mov byte [0x158],0x4
00000528  B83F01            mov ax,0x13f
0000052B  EBC7              jmp short 0x4f4
0000052D  C606580105        mov byte [0x158],0x5
00000532  EBF4              jmp short 0x528
00000534  C606580106        mov byte [0x158],0x6
00000539  B87F02            mov ax,0x27f
0000053C  EBB6              jmp short 0x4f4
0000053E  240F              and al,0xf
00000540  8A266101          mov ah,[0x161]
00000544  80E410            and ah,0x10
00000547  0AC4              or al,ah
00000549  A26101            mov [0x161],al
0000054C  55                push bp
0000054D  32FF              xor bh,bh
0000054F  8A1E6101          mov bl,[0x161]
00000553  B40B              mov ah,0xb
00000555  CD10              int 0x10
00000557  5D                pop bp
00000558  C3                ret
00000559  55                push bp
0000055A  8A1E6101          mov bl,[0x161]
0000055E  80E3EF            and bl,0xef
00000561  B402              mov ah,0x2
00000563  803E580104        cmp byte [0x158],0x4
00000568  7402              jz 0x56c
0000056A  B401              mov ah,0x1
0000056C  3AC4              cmp al,ah
0000056E  7205              jc 0x575
00000570  2AC4              sub al,ah
00000572  80CB10            or bl,0x10
00000575  881E6101          mov [0x161],bl
00000579  B701              mov bh,0x1
0000057B  8AD8              mov bl,al
0000057D  B40B              mov ah,0xb
0000057F  CD10              int 0x10
00000581  5D                pop bp
00000582  EBC8              jmp short 0x54c
00000584  55                push bp
00000585  8BD8              mov bx,ax
00000587  B40B              mov ah,0xb
00000589  CD10              int 0x10
0000058B  5D                pop bp
0000058C  C3                ret
0000058D  5B                pop bx
0000058E  B97F02            mov cx,0x27f
00000591  803E580106        cmp byte [0x158],0x6
00000596  7403              jz 0x59b
00000598  B93F01            mov cx,0x13f
0000059B  3DC700            cmp ax,0xc7
0000059E  7703              ja 0x5a3
000005A0  A35F01            mov [0x15f],ax
000005A3  58                pop ax
000005A4  3BC1              cmp ax,cx
000005A6  7703              ja 0x5ab
000005A8  A35B01            mov [0x15b],ax
000005AB  58                pop ax
000005AC  3B065F01          cmp ax,[0x15f]
000005B0  7303              jnc 0x5b5
000005B2  A35D01            mov [0x15d],ax
000005B5  58                pop ax
000005B6  3B065B01          cmp ax,[0x15b]
000005BA  7303              jnc 0x5bf
000005BC  A35901            mov [0x159],ax
000005BF  FFE3              jmp bx
000005C1  5B                pop bx
000005C2  5A                pop dx
000005C3  59                pop cx
000005C4  53                push bx
000005C5  B40C              mov ah,0xc
000005C7  0BC9              or cx,cx
000005C9  781C              js 0x5e7
000005CB  030E5901          add cx,[0x159]
000005CF  3B0E5B01          cmp cx,[0x15b]
000005D3  7712              ja 0x5e7
000005D5  0BD2              or dx,dx
000005D7  780E              js 0x5e7
000005D9  03165D01          add dx,[0x15d]
000005DD  3B165F01          cmp dx,[0x15f]
000005E1  7704              ja 0x5e7
000005E3  55                push bp
000005E4  CD10              int 0x10
000005E6  5D                pop bp
000005E7  C3                ret
000005E8  B40C              mov ah,0xc
000005EA  A37F01            mov [0x17f],ax
000005ED  5F                pop di
000005EE  58                pop ax
000005EF  5A                pop dx
000005F0  5B                pop bx
000005F1  891E8701          mov [0x187],bx
000005F5  E89A00            call word 0x692
000005F8  890E8301          mov [0x183],cx
000005FC  E83B06            call word 0xc3a
000005FF  92                xchg ax,dx
00000600  5B                pop bx
00000601  57                push di
00000602  891E8501          mov [0x185],bx
00000606  E88900            call word 0x692
00000609  890E8101          mov [0x181],cx
0000060D  E82A06            call word 0xc3a
00000610  8BD8              mov bx,ax
00000612  3BDA              cmp bx,dx
00000614  7E3E              jng 0x654
00000616  8BC2              mov ax,dx
00000618  03C0              add ax,ax
0000061A  2BC3              sub ax,bx
0000061C  A38901            mov [0x189],ax
0000061F  8BCB              mov cx,bx
00000621  0BC9              or cx,cx
00000623  742E              jz 0x653
00000625  E87600            call word 0x69e
00000628  A18901            mov ax,[0x189]
0000062B  0BC0              or ax,ax
0000062D  7E14              jng 0x643
0000062F  03C2              add ax,dx
00000631  03C2              add ax,dx
00000633  2BC3              sub ax,bx
00000635  2BC3              sub ax,bx
00000637  A38901            mov [0x189],ax
0000063A  A18301            mov ax,[0x183]
0000063D  01068701          add [0x187],ax
00000641  EB07              jmp short 0x64a
00000643  03C2              add ax,dx
00000645  03C2              add ax,dx
00000647  A38901            mov [0x189],ax
0000064A  A18101            mov ax,[0x181]
0000064D  01068501          add [0x185],ax
00000651  E2D2              loop 0x625
00000653  C3                ret
00000654  8BC3              mov ax,bx
00000656  03C0              add ax,ax
00000658  2BC2              sub ax,dx
0000065A  A38901            mov [0x189],ax
0000065D  8BCA              mov cx,dx
0000065F  0BC9              or cx,cx
00000661  742E              jz 0x691
00000663  E83800            call word 0x69e
00000666  A18901            mov ax,[0x189]
00000669  0BC0              or ax,ax
0000066B  7E14              jng 0x681
0000066D  03C3              add ax,bx
0000066F  03C3              add ax,bx
00000671  2BC2              sub ax,dx
00000673  2BC2              sub ax,dx
00000675  A38901            mov [0x189],ax
00000678  A18101            mov ax,[0x181]
0000067B  01068501          add [0x185],ax
0000067F  EB07              jmp short 0x688
00000681  03C3              add ax,bx
00000683  03C3              add ax,bx
00000685  A38901            mov [0x189],ax
00000688  A18301            mov ax,[0x183]
0000068B  01068701          add [0x187],ax
0000068F  E2D2              loop 0x663
00000691  C3                ret
00000692  33C9              xor cx,cx
00000694  2BC3              sub ax,bx
00000696  7405              jz 0x69d
00000698  7802              js 0x69c
0000069A  41                inc cx
0000069B  C3                ret
0000069C  49                dec cx
0000069D  C3                ret
0000069E  51                push cx
0000069F  52                push dx
000006A0  A17F01            mov ax,[0x17f]
000006A3  8B0E8501          mov cx,[0x185]
000006A7  8B168701          mov dx,[0x187]
000006AB  E819FF            call word 0x5c7
000006AE  5A                pop dx
000006AF  59                pop cx
000006B0  C3                ret
000006B1  8BD8              mov bx,ax
000006B3  B8DD34            mov ax,0x34dd
000006B6  BA1200            mov dx,0x12
000006B9  3BD3              cmp dx,bx
000006BB  731A              jnc 0x6d7
000006BD  F7F3              div bx
000006BF  8BD8              mov bx,ax
000006C1  E461              in al,0x61
000006C3  A803              test al,0x3
000006C5  7508              jnz 0x6cf
000006C7  0C03              or al,0x3
000006C9  E661              out 0x61,al
000006CB  B0B6              mov al,0xb6
000006CD  E643              out 0x43,al
000006CF  8AC3              mov al,bl
000006D1  E642              out 0x42,al
000006D3  8AC7              mov al,bh
000006D5  E642              out 0x42,al
000006D7  C3                ret
000006D8  E461              in al,0x61
000006DA  24FC              and al,0xfc
000006DC  E661              out 0x61,al
000006DE  C3                ret
000006DF  91                xchg ax,cx
000006E0  5B                pop bx
000006E1  5F                pop di
000006E2  EB29              jmp short 0x70d
000006E4  50                push ax
000006E5  51                push cx
000006E6  B104              mov cl,0x4
000006E8  D3E8              shr ax,cl
000006EA  03D8              add bx,ax
000006EC  59                pop cx
000006ED  58                pop ax
000006EE  250F00            and ax,0xf
000006F1  C3                ret
000006F2  3BDA              cmp bx,dx
000006F4  7502              jnz 0x6f8
000006F6  3BC1              cmp ax,cx
000006F8  C3                ret
000006F9  03C1              add ax,cx
000006FB  03DA              add bx,dx
000006FD  EBE5              jmp short 0x6e4
000006FF  268B4504          mov ax,[es:di+0x4]
00000703  268B5D06          mov bx,[es:di+0x6]
00000707  50                push ax
00000708  0BC3              or ax,bx
0000070A  58                pop ax
0000070B  C3                ret
0000070C  5B                pop bx
0000070D  07                pop es
0000070E  53                push bx
0000070F  893E6B01          mov [0x16b],di
00000713  8C066D01          mov [0x16d],es
00000717  8BC1              mov ax,cx
00000719  050700            add ax,0x7
0000071C  BB0010            mov bx,0x1000
0000071F  7202              jc 0x723
00000721  33DB              xor bx,bx
00000723  24F8              and al,0xf8
00000725  E8BCFF            call word 0x6e4
00000728  8BC8              mov cx,ax
0000072A  8BD3              mov dx,bx
0000072C  C70673016701      mov word [0x173],0x167
00000732  8C1E7501          mov [0x175],ds
00000736  C43E6701          les di,[0x167]
0000073A  E8C2FF            call word 0x6ff
0000073D  7425              jz 0x764
0000073F  E8B0FF            call word 0x6f2
00000742  730D              jnc 0x751
00000744  893E7301          mov [0x173],di
00000748  8C067501          mov [0x175],es
0000074C  26C43D            les di,[es:di]
0000074F  EBE9              jmp short 0x73a
00000751  E87300            call word 0x7c7
00000754  7409              jz 0x75f
00000756  2BC1              sub ax,cx
00000758  1BDA              sbb bx,dx
0000075A  250F00            and ax,0xf
0000075D  EB36              jmp short 0x795
0000075F  26C43D            les di,[es:di]
00000762  EB54              jmp short 0x7b8
00000764  E86000            call word 0x7c7
00000767  8BC7              mov ax,di
00000769  8CC3              mov bx,es
0000076B  E88BFF            call word 0x6f9
0000076E  A3D700            mov [0xd7],ax
00000771  891ED900          mov [0xd9],bx
00000775  51                push cx
00000776  52                push dx
00000777  8BC8              mov cx,ax
00000779  8BD3              mov dx,bx
0000077B  8BC4              mov ax,sp
0000077D  8CD3              mov bx,ss
0000077F  83EB0E            sub bx,byte +0xe
00000782  E85FFF            call word 0x6e4
00000785  33C0              xor ax,ax
00000787  E868FF            call word 0x6f2
0000078A  5A                pop dx
0000078B  59                pop cx
0000078C  7703              ja 0x791
0000078E  E9811F            jmp word 0x2712
00000791  33C0              xor ax,ax
00000793  33DB              xor bx,bx
00000795  53                push bx
00000796  50                push ax
00000797  26FF7502          push word [es:di+0x2]
0000079B  26FF35            push word [es:di]
0000079E  8BC7              mov ax,di
000007A0  8CC3              mov bx,es
000007A2  E854FF            call word 0x6f9
000007A5  8BF8              mov di,ax
000007A7  8EC3              mov es,bx
000007A9  268F05            pop word [es:di]
000007AC  268F4502          pop word [es:di+0x2]
000007B0  268F4504          pop word [es:di+0x4]
000007B4  268F4506          pop word [es:di+0x6]
000007B8  06                push es
000007B9  06                push es
000007BA  C4367301          les si,[0x173]
000007BE  26893C            mov [es:si],di
000007C1  268F4402          pop word [es:si+0x2]
000007C5  07                pop es
000007C6  C3                ret
000007C7  06                push es
000007C8  06                push es
000007C9  C4366B01          les si,[0x16b]
000007CD  26893C            mov [es:si],di
000007D0  268F4402          pop word [es:si+0x2]
000007D4  07                pop es
000007D5  C3                ret
000007D6  91                xchg ax,cx
000007D7  5B                pop bx
000007D8  5F                pop di
000007D9  EB01              jmp short 0x7dc
000007DB  5B                pop bx
000007DC  07                pop es
000007DD  53                push bx
000007DE  8BC1              mov ax,cx
000007E0  268B0D            mov cx,[es:di]
000007E3  268B5502          mov dx,[es:di+0x2]
000007E7  050700            add ax,0x7
000007EA  BB0010            mov bx,0x1000
000007ED  7202              jc 0x7f1
000007EF  33DB              xor bx,bx
000007F1  24F8              and al,0xf8
000007F3  E8EEFE            call word 0x6e4
000007F6  A36F01            mov [0x16f],ax
000007F9  891E7101          mov [0x171],bx
000007FD  C43E6701          les di,[0x167]
00000801  8BC7              mov ax,di
00000803  8CC3              mov bx,es
00000805  E8EAFE            call word 0x6f2
00000808  7357              jnc 0x861
0000080A  268B05            mov ax,[es:di]
0000080D  268B5D02          mov bx,[es:di+0x2]
00000811  E8DEFE            call word 0x6f2
00000814  7306              jnc 0x81c
00000816  8BF8              mov di,ax
00000818  8EC3              mov es,bx
0000081A  EBEE              jmp short 0x80a
0000081C  06                push es
0000081D  8BF1              mov si,cx
0000081F  8EC2              mov es,dx
00000821  FF367101          push word [0x171]
00000825  FF366F01          push word [0x16f]
00000829  268904            mov [es:si],ax
0000082C  26895C02          mov [es:si+0x2],bx
00000830  268F4404          pop word [es:si+0x4]
00000834  268F4406          pop word [es:si+0x6]
00000838  07                pop es
00000839  26890D            mov [es:di],cx
0000083C  26895502          mov [es:di+0x2],dx
00000840  268B4504          mov ax,[es:di+0x4]
00000844  268B5D06          mov bx,[es:di+0x6]
00000848  E83C00            call word 0x887
0000084B  7403              jz 0x850
0000084D  26C43D            les di,[es:di]
00000850  268B4504          mov ax,[es:di+0x4]
00000854  268B5D06          mov bx,[es:di+0x6]
00000858  268B0D            mov cx,[es:di]
0000085B  268B5502          mov dx,[es:di+0x2]
0000085F  EB26              jmp short 0x887
00000861  890E6701          mov [0x167],cx
00000865  89166901          mov [0x169],dx
00000869  8BF9              mov di,cx
0000086B  8EC2              mov es,dx
0000086D  268905            mov [es:di],ax
00000870  26895D02          mov [es:di+0x2],bx
00000874  8BC8              mov cx,ax
00000876  8BD3              mov dx,bx
00000878  A16F01            mov ax,[0x16f]
0000087B  8B1E7101          mov bx,[0x171]
0000087F  26894504          mov [es:di+0x4],ax
00000883  26895D06          mov [es:di+0x6],bx
00000887  A37701            mov [0x177],ax
0000088A  891E7901          mov [0x179],bx
0000088E  03C7              add ax,di
00000890  8CC3              mov bx,es
00000892  031E7901          add bx,[0x179]
00000896  E84BFE            call word 0x6e4
00000899  E856FE            call word 0x6f2
0000089C  7551              jnz 0x8ef
0000089E  A1D700            mov ax,[0xd7]
000008A1  8B1ED900          mov bx,[0xd9]
000008A5  E84AFE            call word 0x6f2
000008A8  7431              jz 0x8db
000008AA  06                push es
000008AB  8BF1              mov si,cx
000008AD  8EC2              mov es,dx
000008AF  268B04            mov ax,[es:si]
000008B2  268B5C02          mov bx,[es:si+0x2]
000008B6  268B4C04          mov cx,[es:si+0x4]
000008BA  268B5406          mov dx,[es:si+0x6]
000008BE  07                pop es
000008BF  268905            mov [es:di],ax
000008C2  26895D02          mov [es:di+0x2],bx
000008C6  A17701            mov ax,[0x177]
000008C9  8B1E7901          mov bx,[0x179]
000008CD  E829FE            call word 0x6f9
000008D0  26894504          mov [es:di+0x4],ax
000008D4  26895D06          mov [es:di+0x6],bx
000008D8  33C0              xor ax,ax
000008DA  C3                ret
000008DB  893ED700          mov [0xd7],di
000008DF  8C06D900          mov [0xd9],es
000008E3  57                push di
000008E4  33C0              xor ax,ax
000008E6  FC                cld
000008E7  B90400            mov cx,0x4
000008EA  F3AB              rep stosw
000008EC  5F                pop di
000008ED  33C0              xor ax,ax
000008EF  C3                ret
000008F0  33C9              xor cx,cx
000008F2  33D2              xor dx,dx
000008F4  33F6              xor si,si
000008F6  C43E6701          les di,[0x167]
000008FA  E802FE            call word 0x6ff
000008FD  7408              jz 0x907
000008FF  E81D00            call word 0x91f
00000902  26C43D            les di,[es:di]
00000905  EBF3              jmp short 0x8fa
00000907  8BC4              mov ax,sp
00000909  8CD3              mov bx,ss
0000090B  83EB10            sub bx,byte +0x10
0000090E  E8D3FD            call word 0x6e4
00000911  33C0              xor ax,ax
00000913  2B1ED900          sub bx,[0xd9]
00000917  7203              jc 0x91c
00000919  E80300            call word 0x91f
0000091C  8BC2              mov ax,dx
0000091E  C3                ret
0000091F  3BF3              cmp si,bx
00000921  7302              jnc 0x925
00000923  8BF3              mov si,bx
00000925  E8D1FD            call word 0x6f9
00000928  8BC8              mov cx,ax
0000092A  8BD3              mov dx,bx
0000092C  C3                ret
0000092D  E8C0FF            call word 0x8f0
00000930  8BC6              mov ax,si
00000932  C3                ret
00000933  5B                pop bx
00000934  07                pop es
00000935  A1D700            mov ax,[0xd7]
00000938  268905            mov [es:di],ax
0000093B  8B16D900          mov dx,[0xd9]
0000093F  26895502          mov [es:di+0x2],dx
00000943  FFE3              jmp bx
00000945  5B                pop bx
00000946  07                pop es
00000947  268B05            mov ax,[es:di]
0000094A  A3D700            mov [0xd7],ax
0000094D  268B4502          mov ax,[es:di+0x2]
00000951  A3D900            mov [0xd9],ax
00000954  FFE3              jmp bx
00000956  891E7B01          mov [0x17b],bx
0000095A  89167D01          mov [0x17d],dx
0000095E  03D3              add dx,bx
00000960  5B                pop bx
00000961  891E2D01          mov [0x12d],bx
00000965  2E3B5721          cmp dx,[cs:bx+0x21]
00000969  7448              jz 0x9b3
0000096B  2E837F2100        cmp word [cs:bx+0x21],byte +0x0
00000970  7513              jnz 0x985
00000972  8BD3              mov dx,bx
00000974  1E                push ds
00000975  0E                push cs
00000976  1F                pop ds
00000977  B40F              mov ah,0xf
00000979  E84500            call word 0x9c1
0000097C  1F                pop ds
0000097D  0AC0              or al,al
0000097F  7537              jnz 0x9b8
00000981  8B1E2D01          mov bx,[0x12d]
00000985  A17B01            mov ax,[0x17b]
00000988  2E894721          mov [cs:bx+0x21],ax
0000098C  BA2500            mov dx,0x25
0000098F  03D3              add dx,bx
00000991  1E                push ds
00000992  0E                push cs
00000993  1F                pop ds
00000994  B41A              mov ah,0x1a
00000996  E82800            call word 0x9c1
00000999  1F                pop ds
0000099A  8B0E7D01          mov cx,[0x17d]
0000099E  8B162D01          mov dx,[0x12d]
000009A2  1E                push ds
000009A3  0E                push cs
000009A4  1F                pop ds
000009A5  B427              mov ah,0x27
000009A7  E81700            call word 0x9c1
000009AA  1F                pop ds
000009AB  0AC0              or al,al
000009AD  7509              jnz 0x9b8
000009AF  8B1E2D01          mov bx,[0x12d]
000009B3  83C325            add bx,byte +0x25
000009B6  FFE3              jmp bx
000009B8  FF362D01          push word [0x12d]
000009BC  B20B              mov dl,0xb
000009BE  E9FA1D            jmp word 0x27bb
000009C1  55                push bp
000009C2  CD21              int 0x21
000009C4  5D                pop bp
000009C5  C3                ret
000009C6  C706CE000000      mov word [0xce],0x0
000009CC  BEFB09            mov si,0x9fb
000009CF  BFA500            mov di,0xa5
000009D2  1E                push ds
000009D3  07                pop es
000009D4  0E                push cs
000009D5  1F                pop ds
000009D6  B92500            mov cx,0x25
000009D9  FC                cld
000009DA  F3A4              rep movsb
000009DC  06                push es
000009DD  1F                pop ds
000009DE  C606D60000        mov byte [0xd6],0x0
000009E3  C606D00000        mov byte [0xd0],0x0
000009E8  C606D3007F        mov byte [0xd3],0x7f
000009ED  1E                push ds
000009EE  0E                push cs
000009EF  1F                pop ds
000009F0  BA5627            mov dx,0x2756
000009F3  B82325            mov ax,0x2523
000009F6  E8C8FF            call word 0x9c1
000009F9  1F                pop ds
000009FA  C3                ret
000009FB  6D                insw
000009FC  038903BF          add cx,[bx+di-0x40fd]
00000A00  035F04            add bx,[bx+0x4]
00000A03  67046F            add al,0x6f
00000A06  04BF              add al,0xbf
00000A08  03890303          add cx,[bx+di+0x303]
00000A0C  0000              add [bx+si],al
00000A0E  0301              add ax,[bx+di]
00000A10  0001              add [bx+di],al
00000A12  0200              add al,[bx+si]
00000A14  0203              add al,[bp+di]
00000A16  0003              add [bp+di],al
00000A18  0400              add al,0x0
00000A1A  0305              add ax,[di]
00000A1C  0003              add [bp+di],al
00000A1E  0000              add [bx+si],al
00000A20  53                push bx
00000A21  51                push cx
00000A22  52                push dx
00000A23  57                push di
00000A24  56                push si
00000A25  4C                dec sp
00000A26  FF16A700          call word [0xa7]
00000A2A  E971F7            jmp word 0x19e
00000A2D  B2FF              mov dl,0xff
00000A2F  EB18              jmp short 0xa49
00000A31  06                push es
00000A32  57                push di
00000A33  C606890020        mov byte [0x89],0x20
00000A38  C7068A002020      mov word [0x8a],0x2020
00000A3E  BB0000            mov bx,0x0
00000A41  E80300            call word 0xa47
00000A44  5F                pop di
00000A45  07                pop es
00000A46  C3                ret
00000A47  32D2              xor dl,dl
00000A49  8A07              mov al,[bx]
00000A4B  E8A900            call word 0xaf7
00000A4E  3C41              cmp al,0x41
00000A50  7210              jc 0xa62
00000A52  3C4F              cmp al,0x4f
00000A54  770C              ja 0xa62
00000A56  807F013A          cmp byte [bx+0x1],0x3a
00000A5A  7506              jnz 0xa62
00000A5C  2C40              sub al,0x40
00000A5E  43                inc bx
00000A5F  43                inc bx
00000A60  EB02              jmp short 0xa64
00000A62  32C0              xor al,al
00000A64  BE8000            mov si,0x80
00000A67  8804              mov [si],al
00000A69  46                inc si
00000A6A  0AD2              or dl,dl
00000A6C  741A              jz 0xa88
00000A6E  8A07              mov al,[bx]
00000A70  E85E00            call word 0xad1
00000A73  7513              jnz 0xa88
00000A75  3C3F              cmp al,0x3f
00000A77  740F              jz 0xa88
00000A79  3C2A              cmp al,0x2a
00000A7B  740B              jz 0xa88
00000A7D  3C2E              cmp al,0x2e
00000A7F  7407              jz 0xa88
00000A81  B10B              mov cl,0xb
00000A83  E83D00            call word 0xac3
00000A86  EB10              jmp short 0xa98
00000A88  B108              mov cl,0x8
00000A8A  E81900            call word 0xaa6
00000A8D  803F2E            cmp byte [bx],0x2e
00000A90  7506              jnz 0xa98
00000A92  43                inc bx
00000A93  B103              mov cl,0x3
00000A95  E80E00            call word 0xaa6
00000A98  BE8C00            mov si,0x8c
00000A9B  C60400            mov byte [si],0x0
00000A9E  46                inc si
00000A9F  81FEA500          cmp si,0xa5
00000AA3  75F6              jnz 0xa9b
00000AA5  C3                ret
00000AA6  0AD2              or dl,dl
00000AA8  8A07              mov al,[bx]
00000AAA  7408              jz 0xab4
00000AAC  3C3F              cmp al,0x3f
00000AAE  7409              jz 0xab9
00000AB0  3C2A              cmp al,0x2a
00000AB2  740E              jz 0xac2
00000AB4  E81A00            call word 0xad1
00000AB7  740E              jz 0xac7
00000AB9  8804              mov [si],al
00000ABB  43                inc bx
00000ABC  46                inc si
00000ABD  FEC9              dec cl
00000ABF  75E5              jnz 0xaa6
00000AC1  C3                ret
00000AC2  43                inc bx
00000AC3  B03F              mov al,0x3f
00000AC5  EB02              jmp short 0xac9
00000AC7  B020              mov al,0x20
00000AC9  8804              mov [si],al
00000ACB  46                inc si
00000ACC  FEC9              dec cl
00000ACE  75F9              jnz 0xac9
00000AD0  C3                ret
00000AD1  E82300            call word 0xaf7
00000AD4  3C20              cmp al,0x20
00000AD6  720E              jc 0xae6
00000AD8  51                push cx
00000AD9  0E                push cs
00000ADA  07                pop es
00000ADB  BFE90A            mov di,0xae9
00000ADE  B90C00            mov cx,0xc
00000AE1  FC                cld
00000AE2  F2AE              repne scasb
00000AE4  59                pop cx
00000AE5  C3                ret
00000AE6  3AC0              cmp al,al
00000AE8  C3                ret
00000AE9  202E2C3B          and [0x3b2c],ch
00000AED  3A3D              cmp bh,[di]
00000AEF  3F                aas
00000AF0  2A5B5D            sub bl,[bp+di+0x5d]
00000AF3  3C3E              cmp al,0x3e
00000AF5  7B7D              jpo 0xb74
00000AF7  3C61              cmp al,0x61
00000AF9  7206              jc 0xb01
00000AFB  3C7A              cmp al,0x7a
00000AFD  7702              ja 0xb01
00000AFF  2C20              sub al,0x20
00000B01  C3                ret
00000B02  50                push ax
00000B03  8AC4              mov al,ah
00000B05  E80100            call word 0xb09
00000B08  58                pop ax
00000B09  50                push ax
00000B0A  D0C8              ror al,1
00000B0C  D0C8              ror al,1
00000B0E  D0C8              ror al,1
00000B10  D0C8              ror al,1
00000B12  E80100            call word 0xb16
00000B15  58                pop ax
00000B16  240F              and al,0xf
00000B18  0490              add al,0x90
00000B1A  27                daa
00000B1B  1440              adc al,0x40
00000B1D  27                daa
00000B1E  E96DF6            jmp word 0x18e
00000B21  0AE4              or ah,ah
00000B23  7408              jz 0xb2d
00000B25  F9                stc
00000B26  B80000            mov ax,0x0
00000B29  7802              js 0xb2d
00000B2B  FEC8              dec al
00000B2D  C3                ret
00000B2E  5B                pop bx
00000B2F  8CC8              mov ax,cs
00000B31  2E034706          add ax,[cs:bx+0x6]
00000B35  2E034708          add ax,[cs:bx+0x8]
00000B39  2E03470A          add ax,[cs:bx+0xa]
00000B3D  2E3B060200        cmp ax,[cs:0x2]
00000B42  7603              jna 0xb47
00000B44  E9A000            jmp word 0xbe7
00000B47  8CC8              mov ax,cs
00000B49  2E034706          add ax,[cs:bx+0x6]
00000B4D  8ED8              mov ds,ax
00000B4F  2E8B07            mov ax,[cs:bx]
00000B52  A3CE00            mov [0xce],ax
00000B55  2E8B4702          mov ax,[cs:bx+0x2]
00000B59  A3CA00            mov [0xca],ax
00000B5C  2E8B4704          mov ax,[cs:bx+0x4]
00000B60  A3CC00            mov [0xcc],ax
00000B63  C606660100        mov byte [0x166],0x0
00000B68  8CD8              mov ax,ds
00000B6A  2E034708          add ax,[cs:bx+0x8]
00000B6E  8BF8              mov di,ax
00000B70  2EA10200          mov ax,[cs:0x2]
00000B74  2BC7              sub ax,di
00000B76  2E3B470C          cmp ax,[cs:bx+0xc]
00000B7A  7204              jc 0xb80
00000B7C  2E8B470C          mov ax,[cs:bx+0xc]
00000B80  8BF0              mov si,ax
00000B82  BAFFFF            mov dx,0xffff
00000B85  2D0010            sub ax,0x1000
00000B88  7308              jnc 0xb92
00000B8A  8BD6              mov dx,si
00000B8C  B104              mov cl,0x4
00000B8E  D3E2              shl dx,cl
00000B90  33C0              xor ax,ax
00000B92  03C7              add ax,di
00000B94  8ED0              mov ss,ax
00000B96  8BE2              mov sp,dx
00000B98  83C30E            add bx,byte +0xe
00000B9B  53                push bx
00000B9C  893ED900          mov [0xd9],di
00000BA0  C706D7000000      mov word [0xd7],0x0
00000BA6  33C0              xor ax,ax
00000BA8  893E6901          mov [0x169],di
00000BAC  A36701            mov [0x167],ax
00000BAF  C43E6701          les di,[0x167]
00000BB3  B90400            mov cx,0x4
00000BB6  FC                cld
00000BB7  F3AB              rep stosw
00000BB9  E810FE            call word 0x9cc
00000BBC  E8EFF6            call word 0x2ae
00000BBF  F706CE000200      test word [0xce],0x2
00000BC5  7405              jz 0xbcc
00000BC7  C606C80001        mov byte [0xc8],0x1
00000BCC  1E                push ds
00000BCD  0E                push cs
00000BCE  1F                pop ds
00000BCF  BAA727            mov dx,0x27a7
00000BD2  B80025            mov ax,0x2500
00000BD5  E8E9FD            call word 0x9c1
00000BD8  1F                pop ds
00000BD9  1E                push ds
00000BDA  0E                push cs
00000BDB  1F                pop ds
00000BDC  BA1727            mov dx,0x2717
00000BDF  B80325            mov ax,0x2503
00000BE2  E8DCFD            call word 0x9c1
00000BE5  1F                pop ds
00000BE6  C3                ret
00000BE7  0E                push cs
00000BE8  1F                pop ds
00000BE9  BAF60B            mov dx,0xbf6
00000BEC  B409              mov ah,0x9
00000BEE  E8D0FD            call word 0x9c1
00000BF1  B400              mov ah,0x0
00000BF3  E8CBFD            call word 0x9c1
00000BF6  4E                dec si
00000BF7  6F                outsw
00000BF8  7420              jz 0xc1a
00000BFA  656E              gs outsb
00000BFC  6F                outsw
00000BFD  7567              jnz 0xc66
00000BFF  68206D            push word 0x6d20
00000C02  656D              gs insw
00000C04  6F                outsw
00000C05  7279              jc 0xc80
00000C07  0D0A50            or ax,0x500a
00000C0A  726F              jc 0xc7b
00000C0C  677261            jc 0xc70
00000C0F  6D                insw
00000C10  206162            and [bx+di+0x62],ah
00000C13  6F                outsw
00000C14  7274              jc 0xc8a
00000C16  65640D0A24        fs or ax,0x240a
00000C1B  F706CE000100      test word [0xce],0x1
00000C21  7508              jnz 0xc2b
00000C23  E807F7            call word 0x32d
00000C26  B400              mov ah,0x0
00000C28  E896FD            call word 0x9c1
00000C2B  FF36CA00          push word [0xca]
00000C2F  B89837            mov ax,0x3798
00000C32  50                push ax
00000C33  1E                push ds
00000C34  07                pop es
00000C35  8E1ECC00          mov ds,[0xcc]
00000C39  CB                retf
00000C3A  0BC0              or ax,ax
00000C3C  7902              jns 0xc40
00000C3E  F7D8              neg ax
00000C40  C3                ret
00000C41  50                push ax
00000C42  E80800            call word 0xc4d
00000C45  5B                pop bx
00000C46  D1E8              shr ax,1
00000C48  99                cwd
00000C49  F7F3              div bx
00000C4B  92                xchg ax,dx
00000C4C  C3                ret
00000C4D  8B1E2B01          mov bx,[0x12b]
00000C51  8B0E2901          mov cx,[0x129]
00000C55  53                push bx
00000C56  51                push cx
00000C57  8AC7              mov al,bh
00000C59  8AFB              mov bh,bl
00000C5B  8ADD              mov bl,ch
00000C5D  8AE9              mov ch,cl
00000C5F  32C9              xor cl,cl
00000C61  D0D8              rcr al,1
00000C63  D1DB              rcr bx,1
00000C65  D1D9              rcr cx,1
00000C67  58                pop ax
00000C68  03C8              add cx,ax
00000C6A  58                pop ax
00000C6B  13D8              adc bx,ax
00000C6D  B8E962            mov ax,0x62e9
00000C70  03C8              add cx,ax
00000C72  B81936            mov ax,0x3619
00000C75  13D8              adc bx,ax
00000C77  891E2B01          mov [0x12b],bx
00000C7B  890E2901          mov [0x129],cx
00000C7F  8BC3              mov ax,bx
00000C81  C3                ret
00000C82  0BC0              or ax,ax
00000C84  7906              jns 0xc8c
00000C86  F7D8              neg ax
00000C88  C6072D            mov byte [bx],0x2d
00000C8B  43                inc bx
00000C8C  32ED              xor ch,ch
00000C8E  BA1027            mov dx,0x2710
00000C91  E81500            call word 0xca9
00000C94  BAE803            mov dx,0x3e8
00000C97  E80F00            call word 0xca9
00000C9A  BA6400            mov dx,0x64
00000C9D  E80900            call word 0xca9
00000CA0  B20A              mov dl,0xa
00000CA2  E80400            call word 0xca9
00000CA5  8AC8              mov cl,al
00000CA7  EB14              jmp short 0xcbd
00000CA9  32C9              xor cl,cl
00000CAB  FEC1              inc cl
00000CAD  2BC2              sub ax,dx
00000CAF  73FA              jnc 0xcab
00000CB1  03C2              add ax,dx
00000CB3  FEC5              inc ch
00000CB5  FEC9              dec cl
00000CB7  7504              jnz 0xcbd
00000CB9  FECD              dec ch
00000CBB  7406              jz 0xcc3
00000CBD  80C130            add cl,0x30
00000CC0  880F              mov [bx],cl
00000CC2  43                inc bx
00000CC3  C3                ret
00000CC4  33C0              xor ax,ax
00000CC6  803F24            cmp byte [bx],0x24
00000CC9  BA0A00            mov dx,0xa
00000CCC  7504              jnz 0xcd2
00000CCE  BA1000            mov dx,0x10
00000CD1  43                inc bx
00000CD2  50                push ax
00000CD3  8A07              mov al,[bx]
00000CD5  E81FFE            call word 0xaf7
00000CD8  8AC8              mov cl,al
00000CDA  58                pop ax
00000CDB  80E930            sub cl,0x30
00000CDE  7225              jc 0xd05
00000CE0  80F90A            cmp cl,0xa
00000CE3  7212              jc 0xcf7
00000CE5  83FA10            cmp dx,byte +0x10
00000CE8  751B              jnz 0xd05
00000CEA  80E907            sub cl,0x7
00000CED  80F90A            cmp cl,0xa
00000CF0  7213              jc 0xd05
00000CF2  80F910            cmp cl,0x10
00000CF5  730E              jnc 0xd05
00000CF7  52                push dx
00000CF8  F7E2              mul dx
00000CFA  5A                pop dx
00000CFB  7211              jc 0xd0e
00000CFD  32ED              xor ch,ch
00000CFF  03C1              add ax,cx
00000D01  73CE              jnc 0xcd1
00000D03  EB09              jmp short 0xd0e
00000D05  83FA10            cmp dx,byte +0x10
00000D08  7404              jz 0xd0e
00000D0A  8BC8              mov cx,ax
00000D0C  03C9              add cx,cx
00000D0E  C3                ret
00000D0F  8A0F              mov cl,[bx]
00000D11  80F92D            cmp cl,0x2d
00000D14  7501              jnz 0xd17
00000D16  43                inc bx
00000D17  51                push cx
00000D18  E8A9FF            call word 0xcc4
00000D1B  59                pop cx
00000D1C  7208              jc 0xd26
00000D1E  80F92D            cmp cl,0x2d
00000D21  7502              jnz 0xd25
00000D23  F7D8              neg ax
00000D25  F8                clc
00000D26  C3                ret
00000D27  5B                pop bx
00000D28  07                pop es
00000D29  8BF7              mov si,di
00000D2B  268A0C            mov cl,[es:si]
00000D2E  32ED              xor ch,ch
00000D30  41                inc cx
00000D31  2BE1              sub sp,cx
00000D33  8BFC              mov di,sp
00000D35  1E                push ds
00000D36  06                push es
00000D37  1F                pop ds
00000D38  16                push ss
00000D39  07                pop es
00000D3A  FC                cld
00000D3B  F3A4              rep movsb
00000D3D  1F                pop ds
00000D3E  FFE3              jmp bx
00000D40  5E                pop si
00000D41  2E8A0C            mov cl,[cs:si]
00000D44  32ED              xor ch,ch
00000D46  41                inc cx
00000D47  2BE1              sub sp,cx
00000D49  8BFC              mov di,sp
00000D4B  1E                push ds
00000D4C  0E                push cs
00000D4D  1F                pop ds
00000D4E  16                push ss
00000D4F  07                pop es
00000D50  FC                cld
00000D51  F3A4              rep movsb
00000D53  1F                pop ds
00000D54  FFE6              jmp si
00000D56  5A                pop dx
00000D57  8AC1              mov al,cl
00000D59  8BDC              mov bx,sp
00000D5B  368A0F            mov cl,[ss:bx]
00000D5E  32ED              xor ch,ch
00000D60  03D9              add bx,cx
00000D62  43                inc bx
00000D63  368B3F            mov di,[ss:bx]
00000D66  43                inc bx
00000D67  43                inc bx
00000D68  368E07            mov es,[ss:bx]
00000D6B  43                inc bx
00000D6C  43                inc bx
00000D6D  8BF4              mov si,sp
00000D6F  3AC8              cmp cl,al
00000D71  7605              jna 0xd78
00000D73  8AC8              mov cl,al
00000D75  368804            mov [ss:si],al
00000D78  41                inc cx
00000D79  1E                push ds
00000D7A  16                push ss
00000D7B  1F                pop ds
00000D7C  FC                cld
00000D7D  F3A4              rep movsb
00000D7F  1F                pop ds
00000D80  8BE3              mov sp,bx
00000D82  FFE2              jmp dx
00000D84  5B                pop bx
00000D85  07                pop es
00000D86  8BF7              mov si,di
00000D88  32ED              xor ch,ch
00000D8A  2BE1              sub sp,cx
00000D8C  4C                dec sp
00000D8D  8BFC              mov di,sp
00000D8F  36880D            mov [ss:di],cl
00000D92  47                inc di
00000D93  1E                push ds
00000D94  06                push es
00000D95  1F                pop ds
00000D96  16                push ss
00000D97  07                pop es
00000D98  FC                cld
00000D99  F3A4              rep movsb
00000D9B  1F                pop ds
00000D9C  FFE3              jmp bx
00000D9E  5B                pop bx
00000D9F  32ED              xor ch,ch
00000DA1  8BF4              mov si,sp
00000DA3  368A04            mov al,[ss:si]
00000DA6  32E4              xor ah,ah
00000DA8  2BC1              sub ax,cx
00000DAA  8BFE              mov di,si
00000DAC  03F8              add di,ax
00000DAE  0BC0              or ax,ax
00000DB0  7427              jz 0xdd9
00000DB2  7911              jns 0xdc5
00000DB4  8BE7              mov sp,di
00000DB6  368A0C            mov cl,[ss:si]
00000DB9  41                inc cx
00000DBA  1E                push ds
00000DBB  16                push ss
00000DBC  1F                pop ds
00000DBD  16                push ss
00000DBE  07                pop es
00000DBF  FC                cld
00000DC0  F3A4              rep movsb
00000DC2  1F                pop ds
00000DC3  EB14              jmp short 0xdd9
00000DC5  36880C            mov [ss:si],cl
00000DC8  03F9              add di,cx
00000DCA  03F1              add si,cx
00000DCC  41                inc cx
00000DCD  1E                push ds
00000DCE  16                push ss
00000DCF  1F                pop ds
00000DD0  16                push ss
00000DD1  07                pop es
00000DD2  FD                std
00000DD3  F3A4              rep movsb
00000DD5  1F                pop ds
00000DD6  47                inc di
00000DD7  8BE7              mov sp,di
00000DD9  FFE3              jmp bx
00000DDB  E82100            call word 0xdff
00000DDE  E93907            jmp word 0x151a
00000DE1  E81B00            call word 0xdff
00000DE4  E94207            jmp word 0x1529
00000DE7  E81500            call word 0xdff
00000DEA  E94B07            jmp word 0x1538
00000DED  E80F00            call word 0xdff
00000DF0  E95407            jmp word 0x1547
00000DF3  E80900            call word 0xdff
00000DF6  E95D07            jmp word 0x1556
00000DF9  E80300            call word 0xdff
00000DFC  E96607            jmp word 0x1565
00000DFF  8BFC              mov di,sp
00000E01  83C704            add di,byte +0x4
00000E04  368A0D            mov cl,[ss:di]
00000E07  32ED              xor ch,ch
00000E09  47                inc di
00000E0A  8BF7              mov si,di
00000E0C  03F1              add si,cx
00000E0E  368A14            mov dl,[ss:si]
00000E11  32F6              xor dh,dh
00000E13  46                inc si
00000E14  8BDE              mov bx,si
00000E16  03DA              add bx,dx
00000E18  8AC1              mov al,cl
00000E1A  8AE2              mov ah,dl
00000E1C  3BCA              cmp cx,dx
00000E1E  7602              jna 0xe22
00000E20  87CA              xchg cx,dx
00000E22  0BC9              or cx,cx
00000E24  740B              jz 0xe31
00000E26  1E                push ds
00000E27  16                push ss
00000E28  07                pop es
00000E29  16                push ss
00000E2A  1F                pop ds
00000E2B  FC                cld
00000E2C  F3A6              repe cmpsb
00000E2E  1F                pop ds
00000E2F  7502              jnz 0xe33
00000E31  3AE0              cmp ah,al
00000E33  5A                pop dx
00000E34  59                pop cx
00000E35  8BE3              mov sp,bx
00000E37  51                push cx
00000E38  FFE2              jmp dx
00000E3A  8F06D100          pop word [0xd1]
00000E3E  8BFC              mov di,sp
00000E40  368A15            mov dl,[ss:di]
00000E43  32F6              xor dh,dh
00000E45  8BF7              mov si,di
00000E47  46                inc si
00000E48  03F2              add si,dx
00000E4A  368A0C            mov cl,[ss:si]
00000E4D  02D1              add dl,cl
00000E4F  7226              jc 0xe77
00000E51  368814            mov [ss:si],dl
00000E54  32ED              xor ch,ch
00000E56  2BF9              sub di,cx
00000E58  8BE7              mov sp,di
00000E5A  41                inc cx
00000E5B  1E                push ds
00000E5C  56                push si
00000E5D  16                push ss
00000E5E  07                pop es
00000E5F  16                push ss
00000E60  1F                pop ds
00000E61  FC                cld
00000E62  F3A4              rep movsb
00000E64  8BFE              mov di,si
00000E66  5E                pop si
00000E67  4E                dec si
00000E68  4F                dec di
00000E69  8BCA              mov cx,dx
00000E6B  41                inc cx
00000E6C  FD                std
00000E6D  F3A4              rep movsb
00000E6F  1F                pop ds
00000E70  47                inc di
00000E71  8BE7              mov sp,di
00000E73  FF26D100          jmp word [0xd1]
00000E77  B201              mov dl,0x1
00000E79  E94319            jmp word 0x27bf
00000E7C  8F06D100          pop word [0xd1]
00000E80  E89EFC            call word 0xb21
00000E83  8BC8              mov cx,ax
00000E85  58                pop ax
00000E86  E86E01            call word 0xff7
00000E89  48                dec ax
00000E8A  8BF4              mov si,sp
00000E8C  368A14            mov dl,[ss:si]
00000E8F  32F6              xor dh,dh
00000E91  8BFC              mov di,sp
00000E93  03FA              add di,dx
00000E95  2BD0              sub dx,ax
00000E97  7615              jna 0xeae
00000E99  03F0              add si,ax
00000E9B  3BD1              cmp dx,cx
00000E9D  7613              jna 0xeb2
00000E9F  03F1              add si,cx
00000EA1  8BD1              mov dx,cx
00000EA3  1E                push ds
00000EA4  16                push ss
00000EA5  07                pop es
00000EA6  16                push ss
00000EA7  1F                pop ds
00000EA8  FD                std
00000EA9  F3A4              rep movsb
00000EAB  1F                pop ds
00000EAC  EB02              jmp short 0xeb0
00000EAE  33D2              xor dx,dx
00000EB0  87F7              xchg si,di
00000EB2  368814            mov [ss:si],dl
00000EB5  8BE6              mov sp,si
00000EB7  FF26D100          jmp word [0xd1]
00000EBB  5B                pop bx
00000EBC  8BFC              mov di,sp
00000EBE  368A05            mov al,[ss:di]
00000EC1  32E4              xor ah,ah
00000EC3  03E0              add sp,ax
00000EC5  44                inc sp
00000EC6  FFE3              jmp bx
00000EC8  8F06D100          pop word [0xd1]
00000ECC  8BFC              mov di,sp
00000ECE  368A15            mov dl,[ss:di]
00000ED1  32F6              xor dh,dh
00000ED3  47                inc di
00000ED4  8BF7              mov si,di
00000ED6  03F2              add si,dx
00000ED8  368A0C            mov cl,[ss:si]
00000EDB  32ED              xor ch,ch
00000EDD  46                inc si
00000EDE  8BDE              mov bx,si
00000EE0  03D9              add bx,cx
00000EE2  33C0              xor ax,ax
00000EE4  2BD1              sub dx,cx
00000EE6  721E              jc 0xf06
00000EE8  40                inc ax
00000EE9  0BC9              or cx,cx
00000EEB  7419              jz 0xf06
00000EED  42                inc dx
00000EEE  1E                push ds
00000EEF  16                push ss
00000EF0  07                pop es
00000EF1  16                push ss
00000EF2  1F                pop ds
00000EF3  FC                cld
00000EF4  51                push cx
00000EF5  57                push di
00000EF6  56                push si
00000EF7  F3A6              repe cmpsb
00000EF9  5E                pop si
00000EFA  5F                pop di
00000EFB  59                pop cx
00000EFC  7407              jz 0xf05
00000EFE  40                inc ax
00000EFF  47                inc di
00000F00  4A                dec dx
00000F01  75F1              jnz 0xef4
00000F03  33C0              xor ax,ax
00000F05  1F                pop ds
00000F06  8BE3              mov sp,bx
00000F08  FF26D100          jmp word [0xd1]
00000F0C  880E3501          mov [0x135],cl
00000F10  A33601            mov [0x136],ax
00000F13  5B                pop bx
00000F14  8F063A01          pop word [0x13a]
00000F18  8F063C01          pop word [0x13c]
00000F1C  89263E01          mov [0x13e],sp
00000F20  8C164001          mov [0x140],ss
00000F24  53                push bx
00000F25  C43E3A01          les di,[0x13a]
00000F29  06                push es
00000F2A  57                push di
00000F2B  06                push es
00000F2C  E8F8FD            call word 0xd27
00000F2F  B80100            mov ax,0x1
00000F32  50                push ax
00000F33  A13601            mov ax,[0x136]
00000F36  48                dec ax
00000F37  E842FF            call word 0xe7c
00000F3A  C43E3E01          les di,[0x13e]
00000F3E  06                push es
00000F3F  E8E5FD            call word 0xd27
00000F42  E8F5FE            call word 0xe3a
00000F45  C43E3A01          les di,[0x13a]
00000F49  06                push es
00000F4A  E8DAFD            call word 0xd27
00000F4D  FF363601          push word [0x136]
00000F51  B8FF00            mov ax,0xff
00000F54  E825FF            call word 0xe7c
00000F57  E8E0FE            call word 0xe3a
00000F5A  8A0E3501          mov cl,[0x135]
00000F5E  E8F5FD            call word 0xd56
00000F61  E957FF            jmp word 0xebb
00000F64  A33801            mov [0x138],ax
00000F67  5B                pop bx
00000F68  8F063601          pop word [0x136]
00000F6C  8F063A01          pop word [0x13a]
00000F70  8F063C01          pop word [0x13c]
00000F74  53                push bx
00000F75  C43E3A01          les di,[0x13a]
00000F79  06                push es
00000F7A  57                push di
00000F7B  06                push es
00000F7C  E8A8FD            call word 0xd27
00000F7F  B80100            mov ax,0x1
00000F82  50                push ax
00000F83  A13601            mov ax,[0x136]
00000F86  48                dec ax
00000F87  E8F2FE            call word 0xe7c
00000F8A  C43E3A01          les di,[0x13a]
00000F8E  06                push es
00000F8F  E895FD            call word 0xd27
00000F92  A13601            mov ax,[0x136]
00000F95  03063801          add ax,[0x138]
00000F99  50                push ax
00000F9A  B8FF00            mov ax,0xff
00000F9D  E8DCFE            call word 0xe7c
00000FA0  E897FE            call word 0xe3a
00000FA3  B1FF              mov cl,0xff
00000FA5  E8AEFD            call word 0xd56
00000FA8  C3                ret
00000FA9  5B                pop bx
00000FAA  58                pop ax
00000FAB  FEC8              dec al
00000FAD  7504              jnz 0xfb3
00000FAF  86C4              xchg al,ah
00000FB1  FFE3              jmp bx
00000FB3  891ED100          mov [0xd1],bx
00000FB7  B201              mov dl,0x1
00000FB9  E90318            jmp word 0x27bf
00000FBC  8BF4              mov si,sp
00000FBE  368A5C02          mov bl,[ss:si+0x2]
00000FC2  32FF              xor bh,bh
00000FC4  368B4003          mov ax,[ss:bx+si+0x3]
00000FC8  8AE0              mov ah,al
00000FCA  B001              mov al,0x1
00000FCC  36894003          mov [ss:bx+si+0x3],ax
00000FD0  C3                ret
00000FD1  5B                pop bx
00000FD2  03E2              add sp,dx
00000FD4  8BF4              mov si,sp
00000FD6  368A04            mov al,[ss:si]
00000FD9  3AC1              cmp al,cl
00000FDB  7418              jz 0xff5
00000FDD  32E4              xor ah,ah
00000FDF  03F0              add si,ax
00000FE1  8BFC              mov di,sp
00000FE3  32ED              xor ch,ch
00000FE5  03F9              add di,cx
00000FE7  91                xchg ax,cx
00000FE8  41                inc cx
00000FE9  1E                push ds
00000FEA  16                push ss
00000FEB  1F                pop ds
00000FEC  16                push ss
00000FED  07                pop es
00000FEE  FD                std
00000FEF  F3A4              rep movsb
00000FF1  1F                pop ds
00000FF2  47                inc di
00000FF3  8BE7              mov sp,di
00000FF5  FFE3              jmp bx
00000FF7  0AE4              or ah,ah
00000FF9  7505              jnz 0x1000
00000FFB  0AC0              or al,al
00000FFD  7401              jz 0x1000
00000FFF  C3                ret
00001000  B202              mov dl,0x2
00001002  E9BA17            jmp word 0x27bf
00001005  5B                pop bx
00001006  5A                pop dx
00001007  8BF7              mov si,di
00001009  83EC20            sub sp,byte +0x20
0000100C  8BFC              mov di,sp
0000100E  51                push cx
0000100F  16                push ss
00001010  07                pop es
00001011  FC                cld
00001012  0AED              or ch,ch
00001014  7407              jz 0x101d
00001016  32C0              xor al,al
00001018  AA                stosb
00001019  FECD              dec ch
0000101B  75FB              jnz 0x1018
0000101D  1E                push ds
0000101E  8EDA              mov ds,dx
00001020  F3A4              rep movsb
00001022  1F                pop ds
00001023  59                pop cx
00001024  B420              mov ah,0x20
00001026  2AE5              sub ah,ch
00001028  2AE1              sub ah,cl
0000102A  7407              jz 0x1033
0000102C  32C0              xor al,al
0000102E  AA                stosb
0000102F  FECC              dec ah
00001031  75FB              jnz 0x102e
00001033  FFE3              jmp bx
00001035  5B                pop bx
00001036  83EC20            sub sp,byte +0x20
00001039  8BFC              mov di,sp
0000103B  16                push ss
0000103C  07                pop es
0000103D  B91000            mov cx,0x10
00001040  33C0              xor ax,ax
00001042  FC                cld
00001043  F3AB              rep stosw
00001045  FFE3              jmp bx
00001047  E8F000            call word 0x113a
0000104A  360807            or [ss:bx],al
0000104D  C3                ret
0000104E  91                xchg ax,cx
0000104F  5B                pop bx
00001050  58                pop ax
00001051  53                push bx
00001052  2AC8              sub cl,al
00001054  7217              jc 0x106d
00001056  FEC1              inc cl
00001058  8AE1              mov ah,cl
0000105A  E8DD00            call word 0x113a
0000105D  8ACC              mov cl,ah
0000105F  32ED              xor ch,ch
00001061  360807            or [ss:bx],al
00001064  D0E0              shl al,1
00001066  7303              jnc 0x106b
00001068  43                inc bx
00001069  B001              mov al,0x1
0000106B  E2F4              loop 0x1061
0000106D  C3                ret
0000106E  8BF4              mov si,sp
00001070  46                inc si
00001071  46                inc si
00001072  368B7C20          mov di,[ss:si+0x20]
00001076  368E4422          mov es,[ss:si+0x22]
0000107A  8AD5              mov dl,ch
0000107C  32F6              xor dh,dh
0000107E  03F2              add si,dx
00001080  32ED              xor ch,ch
00001082  1E                push ds
00001083  16                push ss
00001084  1F                pop ds
00001085  FC                cld
00001086  F3A4              rep movsb
00001088  1F                pop ds
00001089  C22400            ret 0x24
0000108C  5B                pop bx
0000108D  8AD5              mov dl,ch
0000108F  32F6              xor dh,dh
00001091  32ED              xor ch,ch
00001093  8BF4              mov si,sp
00001095  03F2              add si,dx
00001097  03F1              add si,cx
00001099  8BFC              mov di,sp
0000109B  83C720            add di,byte +0x20
0000109E  3BF7              cmp si,di
000010A0  740E              jz 0x10b0
000010A2  4E                dec si
000010A3  4F                dec di
000010A4  1E                push ds
000010A5  16                push ss
000010A6  07                pop es
000010A7  16                push ss
000010A8  1F                pop ds
000010A9  FD                std
000010AA  F3A4              rep movsb
000010AC  1F                pop ds
000010AD  47                inc di
000010AE  8BE7              mov sp,di
000010B0  FFE3              jmp bx
000010B2  B80100            mov ax,0x1
000010B5  EB02              jmp short 0x10b9
000010B7  33C0              xor ax,ax
000010B9  E89500            call word 0x1151
000010BC  F3A7              repe cmpsw
000010BE  8EDA              mov ds,dx
000010C0  7403              jz 0x10c5
000010C2  350100            xor ax,0x1
000010C5  0BC0              or ax,ax
000010C7  C24000            ret 0x40
000010CA  33C0              xor ax,ax
000010CC  EB03              jmp short 0x10d1
000010CE  B80100            mov ax,0x1
000010D1  E87D00            call word 0x1151
000010D4  48                dec ax
000010D5  7502              jnz 0x10d9
000010D7  87FE              xchg di,si
000010D9  AD                lodsw
000010DA  0B05              or ax,[di]
000010DC  AF                scasw
000010DD  7507              jnz 0x10e6
000010DF  E2F8              loop 0x10d9
000010E1  B80100            mov ax,0x1
000010E4  EB02              jmp short 0x10e8
000010E6  33C0              xor ax,ax
000010E8  8EDA              mov ds,dx
000010EA  0BC0              or ax,ax
000010EC  C24000            ret 0x40
000010EF  E85F00            call word 0x1151
000010F2  AD                lodsw
000010F3  0B05              or ax,[di]
000010F5  AB                stosw
000010F6  E2FA              loop 0x10f2
000010F8  8EDA              mov ds,dx
000010FA  C22000            ret 0x20
000010FD  E85100            call word 0x1151
00001100  AD                lodsw
00001101  F7D0              not ax
00001103  2305              and ax,[di]
00001105  AB                stosw
00001106  E2F8              loop 0x1100
00001108  8EDA              mov ds,dx
0000110A  C22000            ret 0x20
0000110D  E84100            call word 0x1151
00001110  AD                lodsw
00001111  2305              and ax,[di]
00001113  AB                stosw
00001114  E2FA              loop 0x1110
00001116  8EDA              mov ds,dx
00001118  C22000            ret 0x20
0000111B  8BDC              mov bx,sp
0000111D  368B4722          mov ax,[ss:bx+0x22]
00001121  0AE4              or ah,ah
00001123  7404              jz 0x1129
00001125  33C0              xor ax,ax
00001127  EB0C              jmp short 0x1135
00001129  E80E00            call word 0x113a
0000112C  362207            and al,[ss:bx]
0000112F  B80000            mov ax,0x0
00001132  7401              jz 0x1135
00001134  40                inc ax
00001135  0BC0              or ax,ax
00001137  C22200            ret 0x22
0000113A  8AD8              mov bl,al
0000113C  32FF              xor bh,bh
0000113E  B103              mov cl,0x3
00001140  D3EB              shr bx,cl
00001142  83C304            add bx,byte +0x4
00001145  03DC              add bx,sp
00001147  8AC8              mov cl,al
00001149  80E107            and cl,0x7
0000114C  B001              mov al,0x1
0000114E  D2E0              shl al,cl
00001150  C3                ret
00001151  8BF4              mov si,sp
00001153  83C604            add si,byte +0x4
00001156  8BFC              mov di,sp
00001158  83C724            add di,byte +0x24
0000115B  8CDA              mov dx,ds
0000115D  16                push ss
0000115E  07                pop es
0000115F  16                push ss
00001160  1F                pop ds
00001161  B91000            mov cx,0x10
00001164  FC                cld
00001165  C3                ret
00001166  3BC3              cmp ax,bx
00001168  B80000            mov ax,0x0
0000116B  7505              jnz 0x1172
0000116D  3BD1              cmp dx,cx
0000116F  7501              jnz 0x1172
00001171  40                inc ax
00001172  0BC0              or ax,ax
00001174  C3                ret
00001175  3BC3              cmp ax,bx
00001177  B80100            mov ax,0x1
0000117A  7505              jnz 0x1181
0000117C  3BD1              cmp dx,cx
0000117E  7501              jnz 0x1181
00001180  48                dec ax
00001181  0BC0              or ax,ax
00001183  C3                ret
00001184  5A                pop dx
00001185  BFE100            mov di,0xe1
00001188  E80600            call word 0x1191
0000118B  8BF7              mov si,di
0000118D  52                push dx
0000118E  BFDB00            mov di,0xdb
00001191  5B                pop bx
00001192  59                pop cx
00001193  8F05              pop word [di]
00001195  8F4502            pop word [di+0x2]
00001198  8F4504            pop word [di+0x4]
0000119B  51                push cx
0000119C  FFE3              jmp bx
0000119E  5B                pop bx
0000119F  59                pop cx
000011A0  FF7504            push word [di+0x4]
000011A3  FF7502            push word [di+0x2]
000011A6  FF35              push word [di]
000011A8  51                push cx
000011A9  FFE3              jmp bx
000011AB  33C0              xor ax,ax
000011AD  8905              mov [di],ax
000011AF  894502            mov [di+0x2],ax
000011B2  894504            mov [di+0x4],ax
000011B5  C3                ret
000011B6  C7058100          mov word [di],0x81
000011BA  33C0              xor ax,ax
000011BC  EBF1              jmp short 0x11af
000011BE  C7058221          mov word [di],0x2182
000011C2  C74502A2DA        mov word [di+0x2],0xdaa2
000011C7  C745040F49        mov word [di+0x4],0x490f
000011CC  C3                ret
000011CD  C70581FA          mov word [di],0xfa81
000011D1  C7450233F3        mov word [di+0x2],0xf333
000011D6  C745040435        mov word [di+0x4],0x3504
000011DB  C3                ret
000011DC  C70580D2          mov word [di],0xd280
000011E0  C74502F717        mov word [di+0x2],0x17f7
000011E5  C745047231        mov word [di+0x4],0x3172
000011EA  C3                ret
000011EB  8B04              mov ax,[si]
000011ED  8905              mov [di],ax
000011EF  8B4402            mov ax,[si+0x2]
000011F2  894502            mov [di+0x2],ax
000011F5  8B4404            mov ax,[si+0x4]
000011F8  894504            mov [di+0x4],ax
000011FB  C3                ret
000011FC  2E8B07            mov ax,[cs:bx]
000011FF  8905              mov [di],ax
00001201  2E8B4702          mov ax,[cs:bx+0x2]
00001205  894502            mov [di+0x2],ax
00001208  2E8B4704          mov ax,[cs:bx+0x4]
0000120C  894504            mov [di+0x4],ax
0000120F  C3                ret
00001210  D125              shl word [di],1
00001212  EB04              jmp short 0x1218
00001214  F8                clc
00001215  D05501            rcl byte [di+0x1],1
00001218  D15502            rcl word [di+0x2],1
0000121B  D15504            rcl word [di+0x4],1
0000121E  C3                ret
0000121F  F8                clc
00001220  D15D04            rcr word [di+0x4],1
00001223  D15D02            rcr word [di+0x2],1
00001226  D05D01            rcr byte [di+0x1],1
00001229  C3                ret
0000122A  8B05              mov ax,[di]
0000122C  0304              add ax,[si]
0000122E  8905              mov [di],ax
00001230  EB09              jmp short 0x123b
00001232  8A4501            mov al,[di+0x1]
00001235  024401            add al,[si+0x1]
00001238  884501            mov [di+0x1],al
0000123B  8B4502            mov ax,[di+0x2]
0000123E  134402            adc ax,[si+0x2]
00001241  894502            mov [di+0x2],ax
00001244  8B4504            mov ax,[di+0x4]
00001247  134404            adc ax,[si+0x4]
0000124A  894504            mov [di+0x4],ax
0000124D  C3                ret
0000124E  8A4501            mov al,[di+0x1]
00001251  2A4401            sub al,[si+0x1]
00001254  884501            mov [di+0x1],al
00001257  8B4502            mov ax,[di+0x2]
0000125A  1B4402            sbb ax,[si+0x2]
0000125D  894502            mov [di+0x2],ax
00001260  8B4504            mov ax,[di+0x4]
00001263  1B4404            sbb ax,[si+0x4]
00001266  894504            mov [di+0x4],ax
00001269  C3                ret
0000126A  F65501            not byte [di+0x1]
0000126D  F75502            not word [di+0x2]
00001270  F75504            not word [di+0x4]
00001273  80450101          add byte [di+0x1],0x1
00001277  83550200          adc word [di+0x2],byte +0x0
0000127B  83550400          adc word [di+0x4],byte +0x0
0000127F  C3                ret
00001280  8B4504            mov ax,[di+0x4]
00001283  3B4404            cmp ax,[si+0x4]
00001286  750E              jnz 0x1296
00001288  8B4502            mov ax,[di+0x2]
0000128B  3B4402            cmp ax,[si+0x2]
0000128E  7506              jnz 0x1296
00001290  8A4501            mov al,[di+0x1]
00001293  3A4401            cmp al,[si+0x1]
00001296  C3                ret
00001297  B380              mov bl,0x80
00001299  EB02              jmp short 0x129d
0000129B  32DB              xor bl,bl
0000129D  803C00            cmp byte [si],0x0
000012A0  7501              jnz 0x12a3
000012A2  C3                ret
000012A3  803D00            cmp byte [di],0x0
000012A6  7507              jnz 0x12af
000012A8  E840FF            call word 0x11eb
000012AB  305D05            xor [di+0x5],bl
000012AE  C3                ret
000012AF  56                push si
000012B0  8BD7              mov dx,di
000012B2  BFE700            mov di,0xe7
000012B5  E833FF            call word 0x11eb
000012B8  8BF7              mov si,di
000012BA  8BFA              mov di,dx
000012BC  8A7D05            mov bh,[di+0x5]
000012BF  80E780            and bh,0x80
000012C2  325C05            xor bl,[si+0x5]
000012C5  32DF              xor bl,bh
000012C7  804D0580          or byte [di+0x5],0x80
000012CB  804C0580          or byte [si+0x5],0x80
000012CF  8BCF              mov cx,di
000012D1  8A04              mov al,[si]
000012D3  2A05              sub al,[di]
000012D5  7411              jz 0x12e8
000012D7  7304              jnc 0x12dd
000012D9  F6D8              neg al
000012DB  8BFE              mov di,si
000012DD  E83FFF            call word 0x121f
000012E0  FE05              inc byte [di]
000012E2  FEC8              dec al
000012E4  75F7              jnz 0x12dd
000012E6  8BF9              mov di,cx
000012E8  F6C380            test bl,0x80
000012EB  750F              jnz 0x12fc
000012ED  E842FF            call word 0x1232
000012F0  7332              jnc 0x1324
000012F2  E82BFF            call word 0x1220
000012F5  FE05              inc byte [di]
000012F7  752B              jnz 0x1324
000012F9  F9                stc
000012FA  EB2E              jmp short 0x132a
000012FC  E84FFF            call word 0x124e
000012FF  7306              jnc 0x1307
00001301  80F780            xor bh,0x80
00001304  E863FF            call word 0x126a
00001307  8B4504            mov ax,[di+0x4]
0000130A  0A4501            or al,[di+0x1]
0000130D  0B4502            or ax,[di+0x2]
00001310  740D              jz 0x131f
00001312  F6450580          test byte [di+0x5],0x80
00001316  750C              jnz 0x1324
00001318  E8F9FE            call word 0x1214
0000131B  FE0D              dec byte [di]
0000131D  75F3              jnz 0x1312
0000131F  E889FE            call word 0x11ab
00001322  EB06              jmp short 0x132a
00001324  80F780            xor bh,0x80
00001327  307D05            xor [di+0x5],bh
0000132A  5E                pop si
0000132B  C3                ret
0000132C  803D00            cmp byte [di],0x0
0000132F  7453              jz 0x1384
00001331  803C00            cmp byte [si],0x0
00001334  744B              jz 0x1381
00001336  8A05              mov al,[di]
00001338  0204              add al,[si]
0000133A  E8A500            call word 0x13e2
0000133D  8AC8              mov cl,al
0000133F  BBE700            mov bx,0xe7
00001342  87FE              xchg di,si
00001344  87FB              xchg di,bx
00001346  E8A2FE            call word 0x11eb
00001349  87FB              xchg di,bx
0000134B  87FE              xchg di,si
0000134D  E85BFE            call word 0x11ab
00001350  880D              mov [di],cl
00001352  B505              mov ch,0x5
00001354  B108              mov cl,0x8
00001356  43                inc bx
00001357  D01F              rcr byte [bx],1
00001359  7303              jnc 0x135e
0000135B  E8D4FE            call word 0x1232
0000135E  E8BFFE            call word 0x1220
00001361  FEC9              dec cl
00001363  75F2              jnz 0x1357
00001365  FECD              dec ch
00001367  75EB              jnz 0x1354
00001369  9F                lahf
0000136A  F6450580          test byte [di+0x5],0x80
0000136E  7506              jnz 0x1376
00001370  9E                sahf
00001371  E8A1FE            call word 0x1215
00001374  FE0D              dec byte [di]
00001376  885405            mov [si+0x5],dl
00001379  307505            xor [di+0x5],dh
0000137C  803D00            cmp byte [di],0x0
0000137F  7503              jnz 0x1384
00001381  E827FE            call word 0x11ab
00001384  C3                ret
00001385  803D00            cmp byte [di],0x0
00001388  74FA              jz 0x1384
0000138A  8A05              mov al,[di]
0000138C  2A04              sub al,[si]
0000138E  F5                cmc
0000138F  E85000            call word 0x13e2
00001392  A2E700            mov [0xe7],al
00001395  BBEC00            mov bx,0xec
00001398  B90805            mov cx,0x508
0000139B  E8E2FE            call word 0x1280
0000139E  7203              jc 0x13a3
000013A0  E8ABFE            call word 0x124e
000013A3  F5                cmc
000013A4  D017              rcl byte [bx],1
000013A6  FEC9              dec cl
000013A8  7507              jnz 0x13b1
000013AA  4B                dec bx
000013AB  FECD              dec ch
000013AD  740D              jz 0x13bc
000013AF  B108              mov cl,0x8
000013B1  E860FE            call word 0x1214
000013B4  73E5              jnc 0x139b
000013B6  E895FE            call word 0x124e
000013B9  F8                clc
000013BA  EBE7              jmp short 0x13a3
000013BC  E855FE            call word 0x1214
000013BF  7204              jc 0x13c5
000013C1  E8BCFE            call word 0x1280
000013C4  F5                cmc
000013C5  87DE              xchg bx,si
000013C7  E821FE            call word 0x11eb
000013CA  87DE              xchg bx,si
000013CC  9F                lahf
000013CD  F6450580          test byte [di+0x5],0x80
000013D1  7506              jnz 0x13d9
000013D3  9E                sahf
000013D4  E83EFE            call word 0x1215
000013D7  EB06              jmp short 0x13df
000013D9  FE05              inc byte [di]
000013DB  7502              jnz 0x13df
000013DD  F9                stc
000013DE  C3                ret
000013DF  E994FF            jmp word 0x1376
000013E2  7208              jc 0x13ec
000013E4  0480              add al,0x80
000013E6  760B              jna 0x13f3
000013E8  5B                pop bx
000013E9  E9BFFD            jmp word 0x11ab
000013EC  0480              add al,0x80
000013EE  7303              jnc 0x13f3
000013F0  5B                pop bx
000013F1  F9                stc
000013F2  C3                ret
000013F3  8A7505            mov dh,[di+0x5]
000013F6  8A5405            mov dl,[si+0x5]
000013F9  32F2              xor dh,dl
000013FB  804D0580          or byte [di+0x5],0x80
000013FF  804C0580          or byte [si+0x5],0x80
00001403  F6D6              not dh
00001405  80E680            and dh,0x80
00001408  C3                ret
00001409  8A4505            mov al,[di+0x5]
0000140C  324405            xor al,[si+0x5]
0000140F  8A4505            mov al,[di+0x5]
00001412  7903              jns 0x1417
00001414  D0D0              rcl al,1
00001416  C3                ret
00001417  A880              test al,0x80
00001419  7407              jz 0x1422
0000141B  E80400            call word 0x1422
0000141E  740F              jz 0x142f
00001420  F5                cmc
00001421  C3                ret
00001422  8A05              mov al,[di]
00001424  3A04              cmp al,[si]
00001426  7507              jnz 0x142f
00001428  0AC0              or al,al
0000142A  7403              jz 0x142f
0000142C  E851FE            call word 0x1280
0000142F  C3                ret
00001430  0BC0              or ax,ax
00001432  7503              jnz 0x1437
00001434  E974FD            jmp word 0x11ab
00001437  8AF4              mov dh,ah
00001439  B99000            mov cx,0x90
0000143C  7904              jns 0x1442
0000143E  F7D8              neg ax
00001440  7806              js 0x1448
00001442  FEC9              dec cl
00001444  03C0              add ax,ax
00001446  79FA              jns 0x1442
00001448  0AF6              or dh,dh
0000144A  7803              js 0x144f
0000144C  80E47F            and ah,0x7f
0000144F  890D              mov [di],cx
00001451  C745020000        mov word [di+0x2],0x0
00001456  894504            mov [di+0x4],ax
00001459  C3                ret
0000145A  8A05              mov al,[di]
0000145C  2C80              sub al,0x80
0000145E  7705              ja 0x1465
00001460  E848FD            call word 0x11ab
00001463  EB1E              jmp short 0x1483
00001465  3C28              cmp al,0x28
00001467  731A              jnc 0x1483
00001469  32E4              xor ah,ah
0000146B  33DB              xor bx,bx
0000146D  33C9              xor cx,cx
0000146F  F9                stc
00001470  D1D9              rcr cx,1
00001472  D1DB              rcr bx,1
00001474  D0DC              rcr ah,1
00001476  FEC8              dec al
00001478  75F5              jnz 0x146f
0000147A  214D04            and [di+0x4],cx
0000147D  215D02            and [di+0x2],bx
00001480  206501            and [di+0x1],ah
00001483  C3                ret
00001484  56                push si
00001485  87F7              xchg si,di
00001487  BFE700            mov di,0xe7
0000148A  E85EFD            call word 0x11eb
0000148D  E8CAFF            call word 0x145a
00001490  87F7              xchg si,di
00001492  E802FE            call word 0x1297
00001495  5E                pop si
00001496  C3                ret
00001497  5B                pop bx
00001498  07                pop es
00001499  26FF7504          push word [es:di+0x4]
0000149D  26FF7502          push word [es:di+0x2]
000014A1  26FF35            push word [es:di]
000014A4  FFE3              jmp bx
000014A6  5B                pop bx
000014A7  2EFF7704          push word [cs:bx+0x4]
000014AB  2EFF7702          push word [cs:bx+0x2]
000014AF  2EFF37            push word [cs:bx]
000014B2  83C306            add bx,byte +0x6
000014B5  FFE3              jmp bx
000014B7  5B                pop bx
000014B8  58                pop ax
000014B9  59                pop cx
000014BA  5A                pop dx
000014BB  5F                pop di
000014BC  07                pop es
000014BD  268905            mov [es:di],ax
000014C0  26894D02          mov [es:di+0x2],cx
000014C4  26895504          mov [es:di+0x4],dx
000014C8  FFE3              jmp bx
000014CA  E8B7FC            call word 0x1184
000014CD  E8CBFD            call word 0x129b
000014D0  7204              jc 0x14d6
000014D2  E8C9FC            call word 0x119e
000014D5  C3                ret
000014D6  B203              mov dl,0x3
000014D8  E9E012            jmp word 0x27bb
000014DB  E8A6FC            call word 0x1184
000014DE  E8B6FD            call word 0x1297
000014E1  EBED              jmp short 0x14d0
000014E3  E89EFC            call word 0x1184
000014E6  E843FE            call word 0x132c
000014E9  EBE5              jmp short 0x14d0
000014EB  E896FC            call word 0x1184
000014EE  803C00            cmp byte [si],0x0
000014F1  7405              jz 0x14f8
000014F3  E88FFE            call word 0x1385
000014F6  EBD8              jmp short 0x14d0
000014F8  B204              mov dl,0x4
000014FA  E9BE12            jmp word 0x27bb
000014FD  8BDC              mov bx,sp
000014FF  36807F0200        cmp byte [ss:bx+0x2],0x0
00001504  7405              jz 0x150b
00001506  3680770780        xor byte [ss:bx+0x7],0x80
0000150B  C3                ret
0000150C  8BDC              mov bx,sp
0000150E  368067077F        and byte [ss:bx+0x7],0x7f
00001513  C3                ret
00001514  E86DFC            call word 0x1184
00001517  E8EFFE            call word 0x1409
0000151A  B80100            mov ax,0x1
0000151D  7401              jz 0x1520
0000151F  48                dec ax
00001520  0BC0              or ax,ax
00001522  C3                ret
00001523  E85EFC            call word 0x1184
00001526  E8E0FE            call word 0x1409
00001529  B80100            mov ax,0x1
0000152C  7501              jnz 0x152f
0000152E  48                dec ax
0000152F  0BC0              or ax,ax
00001531  C3                ret
00001532  E84FFC            call word 0x1184
00001535  E8D1FE            call word 0x1409
00001538  B80100            mov ax,0x1
0000153B  7301              jnc 0x153e
0000153D  48                dec ax
0000153E  0BC0              or ax,ax
00001540  C3                ret
00001541  E840FC            call word 0x1184
00001544  E8C2FE            call word 0x1409
00001547  B80100            mov ax,0x1
0000154A  7601              jna 0x154d
0000154C  48                dec ax
0000154D  0BC0              or ax,ax
0000154F  C3                ret
00001550  E831FC            call word 0x1184
00001553  E8B3FE            call word 0x1409
00001556  B80100            mov ax,0x1
00001559  7701              ja 0x155c
0000155B  48                dec ax
0000155C  0BC0              or ax,ax
0000155E  C3                ret
0000155F  E822FC            call word 0x1184
00001562  E8A4FE            call word 0x1409
00001565  B80100            mov ax,0x1
00001568  7201              jc 0x156b
0000156A  48                dec ax
0000156B  0BC0              or ax,ax
0000156D  C3                ret
0000156E  E81DFC            call word 0x118e
00001571  87F7              xchg si,di
00001573  BFE100            mov di,0xe1
00001576  E872FC            call word 0x11eb
00001579  87F7              xchg si,di
0000157B  E968FF            jmp word 0x14e6
0000157E  E80DFC            call word 0x118e
00001581  E8D6FE            call word 0x145a
00001584  E817FC            call word 0x119e
00001587  C3                ret
00001588  E803FC            call word 0x118e
0000158B  E8F6FE            call word 0x1484
0000158E  EBF4              jmp short 0x1584
00001590  3DDAFF            cmp ax,0xffda
00001593  7C05              jl 0x159a
00001595  3D2500            cmp ax,0x25
00001598  7E05              jng 0x159f
0000159A  B203              mov dl,0x3
0000159C  E91C12            jmp word 0x27bb
0000159F  50                push ax
000015A0  BFDB00            mov di,0xdb
000015A3  E810FC            call word 0x11b6
000015A6  58                pop ax
000015A7  E86906            call word 0x1c13
000015AA  EBD8              jmp short 0x1584
000015AC  E89EF6            call word 0xc4d
000015AF  BA8000            mov dx,0x80
000015B2  B020              mov al,0x20
000015B4  F6C780            test bh,0x80
000015B7  750C              jnz 0x15c5
000015B9  D1E1              shl cx,1
000015BB  D1D3              rcl bx,1
000015BD  FECA              dec dl
000015BF  FEC8              dec al
000015C1  75F1              jnz 0x15b4
000015C3  32D2              xor dl,dl
000015C5  80E77F            and bh,0x7f
000015C8  58                pop ax
000015C9  53                push bx
000015CA  51                push cx
000015CB  52                push dx
000015CC  FFE0              jmp ax
000015CE  BAFFFF            mov dx,0xffff
000015D1  EB02              jmp short 0x15d5
000015D3  33D2              xor dx,dx
000015D5  59                pop cx
000015D6  5B                pop bx
000015D7  58                pop ax
000015D8  58                pop ax
000015D9  51                push cx
000015DA  B18F              mov cl,0x8f
000015DC  2ACB              sub cl,bl
000015DE  7222              jc 0x1602
000015E0  80F90F            cmp cl,0xf
000015E3  771A              ja 0x15ff
000015E5  FEC1              inc cl
000015E7  8AFC              mov bh,ah
000015E9  80CC80            or ah,0x80
000015EC  D3E8              shr ax,cl
000015EE  7307              jnc 0x15f7
000015F0  0BD2              or dx,dx
000015F2  7403              jz 0x15f7
000015F4  40                inc ax
000015F5  780B              js 0x1602
000015F7  F6C780            test bh,0x80
000015FA  7402              jz 0x15fe
000015FC  F7D8              neg ax
000015FE  C3                ret
000015FF  33C0              xor ax,ax
00001601  C3                ret
00001602  B207              mov dl,0x7
00001604  E9B411            jmp word 0x27bb
00001607  BFDB00            mov di,0xdb
0000160A  E823FE            call word 0x1430
0000160D  E88EFB            call word 0x119e
00001610  C3                ret
00001611  BFE100            mov di,0xe1
00001614  E87AFB            call word 0x1191
00001617  5B                pop bx
00001618  58                pop ax
00001619  53                push bx
0000161A  BFDB00            mov di,0xdb
0000161D  E810FE            call word 0x1430
00001620  E87BFB            call word 0x119e
00001623  BFE100            mov di,0xe1
00001626  EBE5              jmp short 0x160d
00001628  E863FB            call word 0x118e
0000162B  803D00            cmp byte [di],0x0
0000162E  7441              jz 0x1671
00001630  F6450580          test byte [di+0x5],0x80
00001634  753F              jnz 0x1675
00001636  8BF7              mov si,di
00001638  BFED00            mov di,0xed
0000163B  E8ADFB            call word 0x11eb
0000163E  8A05              mov al,[di]
00001640  0480              add al,0x80
00001642  D0F8              sar al,1
00001644  0480              add al,0x80
00001646  8805              mov [di],al
00001648  2C14              sub al,0x14
0000164A  50                push ax
0000164B  BEDB00            mov si,0xdb
0000164E  BFF300            mov di,0xf3
00001651  E897FB            call word 0x11eb
00001654  BEED00            mov si,0xed
00001657  E82BFD            call word 0x1385
0000165A  E83EFC            call word 0x129b
0000165D  FE0D              dec byte [di]
0000165F  87FE              xchg di,si
00001661  E833FC            call word 0x1297
00001664  58                pop ax
00001665  3805              cmp [di],al
00001667  7606              jna 0x166f
00001669  50                push ax
0000166A  E87EFB            call word 0x11eb
0000166D  EBDC              jmp short 0x164b
0000166F  87FE              xchg di,si
00001671  E82AFB            call word 0x119e
00001674  C3                ret
00001675  B205              mov dl,0x5
00001677  E94111            jmp word 0x27bb
0000167A  BFED00            mov di,0xed
0000167D  E811FB            call word 0x1191
00001680  8BF7              mov si,di
00001682  BFDB00            mov di,0xdb
00001685  E836FB            call word 0x11be
00001688  FE0D              dec byte [di]
0000168A  E80AFC            call word 0x1297
0000168D  EB03              jmp short 0x1692
0000168F  E8FCFA            call word 0x118e
00001692  803D6C            cmp byte [di],0x6c
00001695  7261              jc 0x16f8
00001697  8BF7              mov si,di
00001699  BFED00            mov di,0xed
0000169C  E81FFB            call word 0x11be
0000169F  FE05              inc byte [di]
000016A1  87FE              xchg di,si
000016A3  8A5D05            mov bl,[di+0x5]
000016A6  8065057F          and byte [di+0x5],0x7f
000016AA  E85CFD            call word 0x1409
000016AD  885D05            mov [di+0x5],bl
000016B0  7209              jc 0x16bb
000016B2  E8D0FC            call word 0x1385
000016B5  E8CCFD            call word 0x1484
000016B8  E871FC            call word 0x132c
000016BB  F6450580          test byte [di+0x5],0x80
000016BF  7403              jz 0x16c4
000016C1  E8D7FB            call word 0x129b
000016C4  FE0C              dec byte [si]
000016C6  E840FD            call word 0x1409
000016C9  9C                pushfw
000016CA  7203              jc 0x16cf
000016CC  E8C8FB            call word 0x1297
000016CF  FE0C              dec byte [si]
000016D1  E835FD            call word 0x1409
000016D4  7209              jc 0x16df
000016D6  FE04              inc byte [si]
000016D8  804D0580          or byte [di+0x5],0x80
000016DC  E8BCFB            call word 0x129b
000016DF  803D6C            cmp byte [di],0x6c
000016E2  7208              jc 0x16ec
000016E4  BBFC16            mov bx,0x16fc
000016E7  B107              mov cl,0x7
000016E9  E89002            call word 0x197c
000016EC  9D                popfw
000016ED  7209              jc 0x16f8
000016EF  803D00            cmp byte [di],0x0
000016F2  7404              jz 0x16f8
000016F4  80750580          xor byte [di+0x5],0x80
000016F8  E8A3FA            call word 0x119e
000016FB  C3                ret
000016FC  58                pop ax
000016FD  9D                popfw
000016FE  399F3FD7          cmp [bx-0x28c1],bx
00001702  60                pushaw
00001703  43                inc bx
00001704  9D                popfw
00001705  30923067          xor [bp+si+0x6730],dl
00001709  AA                stosb
0000170A  3F                aas
0000170B  2832              sub [bp+si],dh
0000170D  D7                xlatb
0000170E  6E                outsb
0000170F  B62A              mov dh,0x2a
00001711  1DEF38            sbb ax,0x38ef
00001714  740D              jz 0x1723
00001716  D000              rol byte [bx+si],1
00001718  0DD07A            or ax,0x7ad0
0000171B  88888888          mov [bx+si-0x7778],cl
0000171F  087EAB            or [bp-0x55],bh
00001722  AA                stosb
00001723  AA                stosb
00001724  AA                stosb
00001725  AA                stosb
00001726  E865FA            call word 0x118e
00001729  803D00            cmp byte [di],0x0
0000172C  7406              jz 0x1734
0000172E  F6450580          test byte [di+0x5],0x80
00001732  7405              jz 0x1739
00001734  B206              mov dl,0x6
00001736  E98210            jmp word 0x27bb
00001739  8A05              mov al,[di]
0000173B  2C81              sub al,0x81
0000173D  98                cbw
0000173E  50                push ax
0000173F  C60581            mov byte [di],0x81
00001742  BEED00            mov si,0xed
00001745  87F7              xchg si,di
00001747  E883FA            call word 0x11cd
0000174A  FE0D              dec byte [di]
0000174C  E8DDFB            call word 0x132c
0000174F  87F7              xchg si,di
00001751  E862FA            call word 0x11b6
00001754  87F7              xchg si,di
00001756  E83EFB            call word 0x1297
00001759  87F7              xchg si,di
0000175B  FE05              inc byte [di]
0000175D  E83BFB            call word 0x129b
00001760  87F7              xchg si,di
00001762  E820FC            call word 0x1385
00001765  BB9E17            mov bx,0x179e
00001768  B106              mov cl,0x6
0000176A  E80F02            call word 0x197c
0000176D  FE05              inc byte [di]
0000176F  BEDB00            mov si,0xdb
00001772  87F7              xchg si,di
00001774  E865FA            call word 0x11dc
00001777  FE0D              dec byte [di]
00001779  87F7              xchg si,di
0000177B  E81DFB            call word 0x129b
0000177E  58                pop ax
0000177F  BFF300            mov di,0xf3
00001782  E8ABFC            call word 0x1430
00001785  87F7              xchg si,di
00001787  FE05              inc byte [di]
00001789  E8A0FB            call word 0x132c
0000178C  BEED00            mov si,0xed
0000178F  E809FB            call word 0x129b
00001792  803D67            cmp byte [di],0x67
00001795  7303              jnc 0x179a
00001797  E811FA            call word 0x11ab
0000179A  E801FA            call word 0x119e
0000179D  C3                ret
0000179E  7D8A              jnl 0x172a
000017A0  9D                popfw
000017A1  D8891D7D          fmul dword [bx+di+0x7d1d]
000017A5  E9A28B            jmp word 0xa34a
000017A8  2E3A7D8E          cmp bh,[cs:di-0x72]
000017AC  E338              jcxz 0x17e6
000017AE  8E637E            mov fs,[bp+di+0x7e]
000017B1  49                dec cx
000017B2  92                xchg ax,dx
000017B3  2449              and al,0x49
000017B5  127ECD            adc bh,[bp-0x33]
000017B8  CC                int3
000017B9  CC                int3
000017BA  CC                int3
000017BB  4C                dec sp
000017BC  7FAB              jg 0x1769
000017BE  AA                stosb
000017BF  AA                stosb
000017C0  AA                stosb
000017C1  2AE8              sub ch,al
000017C3  C9                leave
000017C4  F9                stc
000017C5  F6450580          test byte [di+0x5],0x80
000017C9  9C                pushfw
000017CA  8065057F          and byte [di+0x5],0x7f
000017CE  BEED00            mov si,0xed
000017D1  87F7              xchg si,di
000017D3  E806FA            call word 0x11dc
000017D6  87F7              xchg si,di
000017D8  E8AAFB            call word 0x1385
000017DB  803D88            cmp byte [di],0x88
000017DE  734E              jnc 0x182e
000017E0  8A1D              mov bl,[di]
000017E2  FEC3              inc bl
000017E4  8B4504            mov ax,[di+0x4]
000017E7  BAFFFF            mov dx,0xffff
000017EA  E8EDFD            call word 0x15da
000017ED  50                push ax
000017EE  87F7              xchg si,di
000017F0  E83DFC            call word 0x1430
000017F3  803D00            cmp byte [di],0x0
000017F6  7402              jz 0x17fa
000017F8  FE0D              dec byte [di]
000017FA  87F7              xchg si,di
000017FC  E898FA            call word 0x1297
000017FF  BB3418            mov bx,0x1834
00001802  B108              mov cl,0x8
00001804  E88F01            call word 0x1996
00001807  58                pop ax
00001808  BEED00            mov si,0xed
0000180B  D1E8              shr ax,1
0000180D  730C              jnc 0x181b
0000180F  50                push ax
00001810  87F7              xchg si,di
00001812  E8B8F9            call word 0x11cd
00001815  87F7              xchg si,di
00001817  E812FB            call word 0x132c
0000181A  58                pop ax
0000181B  0005              add [di],al
0000181D  720F              jc 0x182e
0000181F  9D                popfw
00001820  7408              jz 0x182a
00001822  87F7              xchg si,di
00001824  E88FF9            call word 0x11b6
00001827  E85BFB            call word 0x1385
0000182A  E871F9            call word 0x119e
0000182D  C3                ret
0000182E  58                pop ax
0000182F  B203              mov dl,0x3
00001831  E9870F            jmp word 0x27bb
00001834  6D                insw
00001835  2E1D1160          cs sbb ax,0x6011
00001839  317046            xor [bx+si+0x46],si
0000183C  2CFE              sub al,0xfe
0000183E  E57F              in ax,0x7f
00001840  7436              jz 0x1878
00001842  7C89              jl 0x17cd
00001844  8421              test [bx+di],ah
00001846  7753              ja 0x189b
00001848  3CFF              cmp al,0xff
0000184A  C3                ret
0000184B  2E7AD2            cs jpe 0x1820
0000184E  7D5B              jnl 0x18ab
00001850  95                xchg ax,bp
00001851  1D7C25            sbb ax,0x257c
00001854  B84658            mov ax,0x5846
00001857  637E16            arpl [bp+0x16],di
0000185A  FC                cld
0000185B  EF                out dx,ax
0000185C  FD                std
0000185D  7580              jnz 0x17df
0000185F  D2                db 0xd2
00001860  F717              not word [bx]
00001862  7231              jc 0x1895
00001864  E827F9            call word 0x118e
00001867  803D00            cmp byte [di],0x0
0000186A  74BE              jz 0x182a
0000186C  33C0              xor ax,ax
0000186E  F6450580          test byte [di+0x5],0x80
00001872  7405              jz 0x1879
00001874  40                inc ax
00001875  8065057F          and byte [di+0x5],0x7f
00001879  50                push ax
0000187A  8BF7              mov si,di
0000187C  BFED00            mov di,0xed
0000187F  E834F9            call word 0x11b6
00001882  87F7              xchg si,di
00001884  E882FB            call word 0x1409
00001887  720E              jc 0x1897
00001889  87F7              xchg si,di
0000188B  E8F7FA            call word 0x1385
0000188E  87F7              xchg si,di
00001890  E858F9            call word 0x11eb
00001893  58                pop ax
00001894  40                inc ax
00001895  40                inc ax
00001896  50                push ax
00001897  C7047E4A          mov word [si],0x4a7e
0000189B  C744028EE9        mov word [si+0x2],0xe98e
000018A0  C74404CF06        mov word [si+0x4],0x6cf
000018A5  E861FB            call word 0x1409
000018A8  7305              jnc 0x18af
000018AA  E8CA00            call word 0x1977
000018AD  EB5A              jmp short 0x1909
000018AF  BB2919            mov bx,0x1929
000018B2  B002              mov al,0x2
000018B4  50                push ax
000018B5  87F7              xchg si,di
000018B7  E842F9            call word 0x11fc
000018BA  83C306            add bx,byte +0x6
000018BD  87F7              xchg si,di
000018BF  E847FB            call word 0x1409
000018C2  58                pop ax
000018C3  7207              jc 0x18cc
000018C5  83C30C            add bx,byte +0xc
000018C8  FEC8              dec al
000018CA  75E8              jnz 0x18b4
000018CC  87F7              xchg si,di
000018CE  E81AF9            call word 0x11eb
000018D1  BFF300            mov di,0xf3
000018D4  E825F9            call word 0x11fc
000018D7  83C306            add bx,byte +0x6
000018DA  53                push bx
000018DB  87F7              xchg si,di
000018DD  E8B7F9            call word 0x1297
000018E0  BFED00            mov di,0xed
000018E3  E846FA            call word 0x132c
000018E6  87F7              xchg si,di
000018E8  E8CBF8            call word 0x11b6
000018EB  87F7              xchg si,di
000018ED  E8ABF9            call word 0x129b
000018F0  8BF7              mov si,di
000018F2  BFDB00            mov di,0xdb
000018F5  E88DFA            call word 0x1385
000018F8  E87C00            call word 0x1977
000018FB  5B                pop bx
000018FC  8BF7              mov si,di
000018FE  BFED00            mov di,0xed
00001901  E8F8F8            call word 0x11fc
00001904  87F7              xchg si,di
00001906  E892F9            call word 0x129b
00001909  58                pop ax
0000190A  A802              test al,0x2
0000190C  740F              jz 0x191d
0000190E  50                push ax
0000190F  8BF7              mov si,di
00001911  BFED00            mov di,0xed
00001914  E8A7F8            call word 0x11be
00001917  FE0D              dec byte [di]
00001919  E87BF9            call word 0x1297
0000191C  58                pop ax
0000191D  A801              test al,0x1
0000191F  7404              jz 0x1925
00001921  804D0580          or byte [di+0x5],0x80
00001925  E876F8            call word 0x119e
00001928  C3                ret
00001929  7FE7              jg 0x1912
0000192B  CF                iretw
0000192C  CC                int3
0000192D  13547F            adc dx,[si+0x7f]
00001930  F6F4              div ah
00001932  A23009            mov [0x930],al
00001935  7F6A              jg 0x19a1
00001937  C1910A0680        rcl word [bx+di+0x60a],byte 0x80
0000193C  B59E              mov ch,0x9e
0000193E  8A6F44            mov ch,[bx+0x44]
00001941  80822C3ACD        add byte [bp+si+0x3a2c],0xcd
00001946  13806AC1          adc ax,[bx+si-0x3e96]
0000194A  91                xchg ax,cx
0000194B  0A068100          or al,[0x81]
0000194F  0000              add [bx+si],al
00001951  0000              add [bx+si],al
00001953  8021A2            and byte [bx+di],0xa2
00001956  DA0F              fimul dword [bx]
00001958  49                dec cx
00001959  7DE8              jnl 0x1943
0000195B  A28B2E            mov [0x2e8b],al
0000195E  BA7D8E            mov dx,0x8e7d
00001961  E338              jcxz 0x199b
00001963  8E637E            mov fs,[bp+di+0x7e]
00001966  49                dec cx
00001967  92                xchg ax,dx
00001968  2449              and al,0x49
0000196A  92                xchg ax,dx
0000196B  7ECD              jng 0x193a
0000196D  CC                int3
0000196E  CC                int3
0000196F  CC                int3
00001970  4C                dec sp
00001971  7FAB              jg 0x191e
00001973  AA                stosb
00001974  AA                stosb
00001975  AA                stosb
00001976  AA                stosb
00001977  BB5919            mov bx,0x1959
0000197A  B105              mov cl,0x5
0000197C  8BF7              mov si,di
0000197E  BF0501            mov di,0x105
00001981  E867F8            call word 0x11eb
00001984  87FE              xchg di,si
00001986  53                push bx
00001987  51                push cx
00001988  E8A1F9            call word 0x132c
0000198B  59                pop cx
0000198C  5B                pop bx
0000198D  E80600            call word 0x1996
00001990  BE0501            mov si,0x105
00001993  E996F9            jmp word 0x132c
00001996  51                push cx
00001997  8BF7              mov si,di
00001999  BFF900            mov di,0xf9
0000199C  E84CF8            call word 0x11eb
0000199F  87FE              xchg di,si
000019A1  E858F8            call word 0x11fc
000019A4  83C306            add bx,byte +0x6
000019A7  EB13              jmp short 0x19bc
000019A9  51                push cx
000019AA  8BF7              mov si,di
000019AC  BFFF00            mov di,0xff
000019AF  E84AF8            call word 0x11fc
000019B2  83C306            add bx,byte +0x6
000019B5  87FE              xchg di,si
000019B7  53                push bx
000019B8  E8E0F8            call word 0x129b
000019BB  5B                pop bx
000019BC  BEF900            mov si,0xf9
000019BF  53                push bx
000019C0  E869F9            call word 0x132c
000019C3  5B                pop bx
000019C4  59                pop cx
000019C5  FEC9              dec cl
000019C7  75E0              jnz 0x19a9
000019C9  87F7              xchg si,di
000019CB  E8E8F7            call word 0x11b6
000019CE  87F7              xchg si,di
000019D0  E9C8F8            jmp word 0x129b
000019D3  53                push bx
000019D4  83FA19            cmp dx,byte +0x19
000019D7  7221              jc 0x19fa
000019D9  8BC1              mov ax,cx
000019DB  E843F1            call word 0xb21
000019DE  B207              mov dl,0x7
000019E0  F6450580          test byte [di+0x5],0x80
000019E4  7402              jz 0x19e8
000019E6  FEC2              inc dl
000019E8  2AC2              sub al,dl
000019EA  7302              jnc 0x19ee
000019EC  32C0              xor al,al
000019EE  3C09              cmp al,0x9
000019F0  7202              jc 0x19f4
000019F2  B009              mov al,0x9
000019F4  FEC0              inc al
000019F6  8AD0              mov dl,al
000019F8  8AF0              mov dh,al
000019FA  52                push dx
000019FB  E89900            call word 0x1a97
000019FE  5A                pop dx
000019FF  8AC2              mov al,dl
00001A01  FEC0              inc al
00001A03  0AF6              or dh,dh
00001A05  7511              jnz 0x1a18
00001A07  02C1              add al,cl
00001A09  7907              jns 0x1a12
00001A0B  C6060B0100        mov byte [0x10b],0x0
00001A10  EB09              jmp short 0x1a1b
00001A12  3C0C              cmp al,0xc
00001A14  7202              jc 0x1a18
00001A16  B00B              mov al,0xb
00001A18  E80D01            call word 0x1b28
00001A1B  5B                pop bx
00001A1C  BE0B01            mov si,0x10b
00001A1F  F6C580            test ch,0x80
00001A22  7405              jz 0x1a29
00001A24  B02D              mov al,0x2d
00001A26  E86A00            call word 0x1a93
00001A29  8AE9              mov ch,cl
00001A2B  0AF6              or dh,dh
00001A2D  7402              jz 0x1a31
00001A2F  B500              mov ch,0x0
00001A31  0AED              or ch,ch
00001A33  7905              jns 0x1a3a
00001A35  E85900            call word 0x1a91
00001A38  EB07              jmp short 0x1a41
00001A3A  E84B00            call word 0x1a88
00001A3D  FECD              dec ch
00001A3F  79F9              jns 0x1a3a
00001A41  0AD2              or dl,dl
00001A43  7419              jz 0x1a5e
00001A45  B02E              mov al,0x2e
00001A47  E84900            call word 0x1a93
00001A4A  FEC5              inc ch
00001A4C  7407              jz 0x1a55
00001A4E  E84000            call word 0x1a91
00001A51  FECA              dec dl
00001A53  75F5              jnz 0x1a4a
00001A55  FECA              dec dl
00001A57  7805              js 0x1a5e
00001A59  E82C00            call word 0x1a88
00001A5C  EBF7              jmp short 0x1a55
00001A5E  0AF6              or dh,dh
00001A60  7501              jnz 0x1a63
00001A62  C3                ret
00001A63  B045              mov al,0x45
00001A65  E82B00            call word 0x1a93
00001A68  B02B              mov al,0x2b
00001A6A  0AC9              or cl,cl
00001A6C  7904              jns 0x1a72
00001A6E  F6D9              neg cl
00001A70  B02D              mov al,0x2d
00001A72  E81E00            call word 0x1a93
00001A75  B02F              mov al,0x2f
00001A77  FEC0              inc al
00001A79  80E90A            sub cl,0xa
00001A7C  73F9              jnc 0x1a77
00001A7E  E81200            call word 0x1a93
00001A81  80C13A            add cl,0x3a
00001A84  8AC1              mov al,cl
00001A86  EB0B              jmp short 0x1a93
00001A88  8A04              mov al,[si]
00001A8A  0AC0              or al,al
00001A8C  7403              jz 0x1a91
00001A8E  46                inc si
00001A8F  EB02              jmp short 0x1a93
00001A91  B030              mov al,0x30
00001A93  8807              mov [bx],al
00001A95  43                inc bx
00001A96  C3                ret
00001A97  803D00            cmp byte [di],0x0
00001A9A  7513              jnz 0x1aaf
00001A9C  BB0B01            mov bx,0x10b
00001A9F  C7073030          mov word [bx],0x3030
00001AA3  43                inc bx
00001AA4  43                inc bx
00001AA5  81FB1701          cmp bx,0x117
00001AA9  75F4              jnz 0x1a9f
00001AAB  B90000            mov cx,0x0
00001AAE  C3                ret
00001AAF  8A6D05            mov ch,[di+0x5]
00001AB2  8065057F          and byte [di+0x5],0x7f
00001AB6  8A05              mov al,[di]
00001AB8  2C80              sub al,0x80
00001ABA  98                cbw
00001ABB  BB4D00            mov bx,0x4d
00001ABE  F7EB              imul bx
00001AC0  050500            add ax,0x5
00001AC3  8AC4              mov al,ah
00001AC5  3CD9              cmp al,0xd9
00001AC7  7502              jnz 0x1acb
00001AC9  FEC0              inc al
00001ACB  8AC8              mov cl,al
00001ACD  F6D8              neg al
00001ACF  51                push cx
00001AD0  E84001            call word 0x1c13
00001AD3  59                pop cx
00001AD4  803D81            cmp byte [di],0x81
00001AD7  7305              jnc 0x1ade
00001AD9  E8AB01            call word 0x1c87
00001ADC  FEC9              dec cl
00001ADE  804D0580          or byte [di+0x5],0x80
00001AE2  B084              mov al,0x84
00001AE4  2A05              sub al,[di]
00001AE6  C60500            mov byte [di],0x0
00001AE9  7409              jz 0x1af4
00001AEB  E831F7            call word 0x121f
00001AEE  D01D              rcr byte [di],1
00001AF0  FEC8              dec al
00001AF2  75F7              jnz 0x1aeb
00001AF4  BB0B01            mov bx,0x10b
00001AF7  BEE700            mov si,0xe7
00001AFA  8A4505            mov al,[di+0x5]
00001AFD  D0E8              shr al,1
00001AFF  D0E8              shr al,1
00001B01  D0E8              shr al,1
00001B03  D0E8              shr al,1
00001B05  0430              add al,0x30
00001B07  8807              mov [bx],al
00001B09  8065050F          and byte [di+0x5],0xf
00001B0D  87FE              xchg di,si
00001B0F  E8D9F6            call word 0x11eb
00001B12  87FE              xchg di,si
00001B14  E8F9F6            call word 0x1210
00001B17  E8F6F6            call word 0x1210
00001B1A  E80DF7            call word 0x122a
00001B1D  E8F0F6            call word 0x1210
00001B20  43                inc bx
00001B21  81FB1701          cmp bx,0x117
00001B25  75D3              jnz 0x1afa
00001B27  C3                ret
00001B28  32E4              xor ah,ah
00001B2A  BB0B01            mov bx,0x10b
00001B2D  03D8              add bx,ax
00001B2F  803F35            cmp byte [bx],0x35
00001B32  C60700            mov byte [bx],0x0
00001B35  721A              jc 0x1b51
00001B37  FEC8              dec al
00001B39  780D              js 0x1b48
00001B3B  4B                dec bx
00001B3C  FE07              inc byte [bx]
00001B3E  803F3A            cmp byte [bx],0x3a
00001B41  720E              jc 0x1b51
00001B43  C60700            mov byte [bx],0x0
00001B46  EBEF              jmp short 0x1b37
00001B48  C60731            mov byte [bx],0x31
00001B4B  C6470100          mov byte [bx+0x1],0x0
00001B4F  FEC1              inc cl
00001B51  C3                ret
00001B52  8A0F              mov cl,[bx]
00001B54  80F92D            cmp cl,0x2d
00001B57  7501              jnz 0x1b5a
00001B59  43                inc bx
00001B5A  51                push cx
00001B5B  E81300            call word 0x1b71
00001B5E  59                pop cx
00001B5F  720F              jc 0x1b70
00001B61  80F92D            cmp cl,0x2d
00001B64  7509              jnz 0x1b6f
00001B66  803D00            cmp byte [di],0x0
00001B69  7404              jz 0x1b6f
00001B6B  80750580          xor byte [di+0x5],0x80
00001B6F  F8                clc
00001B70  C3                ret
00001B71  E837F6            call word 0x11ab
00001B74  33C9              xor cx,cx
00001B76  8A07              mov al,[bx]
00001B78  E87CEF            call word 0xaf7
00001B7B  E88900            call word 0x1c07
00001B7E  7225              jc 0x1ba5
00001B80  8AD0              mov dl,al
00001B82  E80201            call word 0x1c87
00001B85  722E              jc 0x1bb5
00001B87  8AC2              mov al,dl
00001B89  32E4              xor ah,ah
00001B8B  53                push bx
00001B8C  51                push cx
00001B8D  BEED00            mov si,0xed
00001B90  87F7              xchg si,di
00001B92  E89BF8            call word 0x1430
00001B95  87F7              xchg si,di
00001B97  E801F7            call word 0x129b
00001B9A  59                pop cx
00001B9B  5B                pop bx
00001B9C  F6C540            test ch,0x40
00001B9F  7411              jz 0x1bb2
00001BA1  FEC9              dec cl
00001BA3  EB0D              jmp short 0x1bb2
00001BA5  3C2E              cmp al,0x2e
00001BA7  750D              jnz 0x1bb6
00001BA9  F6C540            test ch,0x40
00001BAC  F9                stc
00001BAD  7506              jnz 0x1bb5
00001BAF  80CD40            or ch,0x40
00001BB2  43                inc bx
00001BB3  EBC1              jmp short 0x1b76
00001BB5  C3                ret
00001BB6  3C45              cmp al,0x45
00001BB8  7535              jnz 0x1bef
00001BBA  E83200            call word 0x1bef
00001BBD  72F6              jc 0x1bb5
00001BBF  43                inc bx
00001BC0  8A07              mov al,[bx]
00001BC2  3C2B              cmp al,0x2b
00001BC4  7407              jz 0x1bcd
00001BC6  3C2D              cmp al,0x2d
00001BC8  7504              jnz 0x1bce
00001BCA  80CD20            or ch,0x20
00001BCD  43                inc bx
00001BCE  E83400            call word 0x1c05
00001BD1  72E2              jc 0x1bb5
00001BD3  8AC8              mov cl,al
00001BD5  43                inc bx
00001BD6  E82C00            call word 0x1c05
00001BD9  720D              jc 0x1be8
00001BDB  8AE1              mov ah,cl
00001BDD  D0E1              shl cl,1
00001BDF  D0E1              shl cl,1
00001BE1  02CC              add cl,ah
00001BE3  D0E1              shl cl,1
00001BE5  02C8              add cl,al
00001BE7  43                inc bx
00001BE8  F6C520            test ch,0x20
00001BEB  7402              jz 0x1bef
00001BED  F6D9              neg cl
00001BEF  80F9DA            cmp cl,0xda
00001BF2  7C0F              jl 0x1c03
00001BF4  80F926            cmp cl,0x26
00001BF7  7F0A              jg 0x1c03
00001BF9  53                push bx
00001BFA  51                push cx
00001BFB  8AC1              mov al,cl
00001BFD  E81300            call word 0x1c13
00001C00  59                pop cx
00001C01  5B                pop bx
00001C02  C3                ret
00001C03  F9                stc
00001C04  C3                ret
00001C05  8A07              mov al,[bx]
00001C07  3C30              cmp al,0x30
00001C09  7207              jc 0x1c12
00001C0B  3C3A              cmp al,0x3a
00001C0D  F5                cmc
00001C0E  7202              jc 0x1c12
00001C10  2C30              sub al,0x30
00001C12  C3                ret
00001C13  8AD0              mov dl,al
00001C15  0AC0              or al,al
00001C17  7902              jns 0x1c1b
00001C19  F6D8              neg al
00001C1B  8AF0              mov dh,al
00001C1D  24FC              and al,0xfc
00001C1F  8AD8              mov bl,al
00001C21  D0E8              shr al,1
00001C23  02D8              add bl,al
00001C25  B700              mov bh,0x0
00001C27  57                push di
00001C28  8D9F4B1C          lea bx,[bx+0x1c4b]
00001C2C  BFED00            mov di,0xed
00001C2F  E8CAF5            call word 0x11fc
00001C32  80E603            and dh,0x3
00001C35  7407              jz 0x1c3e
00001C37  E84D00            call word 0x1c87
00001C3A  FECE              dec dh
00001C3C  75F9              jnz 0x1c37
00001C3E  8BF7              mov si,di
00001C40  5F                pop di
00001C41  0AD2              or dl,dl
00001C43  7803              js 0x1c48
00001C45  E9E4F6            jmp word 0x132c
00001C48  E93AF7            jmp word 0x1385
00001C4B  81000000          add word [bx+si],0x0
00001C4F  0000              add [bx+si],al
00001C51  8E00              mov es,[bx+si]
00001C53  0000              add [bx+si],al
00001C55  40                inc ax
00001C56  1C9B              sbb al,0x9b
00001C58  0000              add [bx+si],al
00001C5A  20BC3EA8          and [si-0x57c2],bh
00001C5E  0010              add [bx+si],dl
00001C60  A5                movsw
00001C61  D468              aam 0x68
00001C63  B604              mov dh,0x4
00001C65  BFC91B            mov di,0x1bc9
00001C68  0E                push cs
00001C69  C3                ret
00001C6A  AC                lodsb
00001C6B  C5                db 0xc5
00001C6C  EB78              jmp short 0x1ce6
00001C6E  2DD0CD            sub ax,0xcdd0
00001C71  CE                into
00001C72  1BC2              sbb ax,dx
00001C74  53                push bx
00001C75  DEF9              fdivp st1
00001C77  7839              js 0x1cb2
00001C79  3F                aas
00001C7A  01EB              add bx,bp
00001C7C  2BA8ADC5          sub bp,[bx+si-0x3a53]
00001C80  1DF8C9            sbb ax,0xc9f8
00001C83  7BCE              jpo 0x1c53
00001C85  97                xchg ax,di
00001C86  40                inc ax
00001C87  803D00            cmp byte [di],0x0
00001C8A  7501              jnz 0x1c8d
00001C8C  C3                ret
00001C8D  804D0580          or byte [di+0x5],0x80
00001C91  56                push si
00001C92  BEE700            mov si,0xe7
00001C95  87FE              xchg di,si
00001C97  E851F5            call word 0x11eb
00001C9A  87FE              xchg di,si
00001C9C  E880F5            call word 0x121f
00001C9F  E87DF5            call word 0x121f
00001CA2  E88DF5            call word 0x1232
00001CA5  5E                pop si
00001CA6  7309              jnc 0x1cb1
00001CA8  E875F5            call word 0x1220
00001CAB  FE05              inc byte [di]
00001CAD  7502              jnz 0x1cb1
00001CAF  F9                stc
00001CB0  C3                ret
00001CB1  8065057F          and byte [di+0x5],0x7f
00001CB5  800503            add byte [di],0x3
00001CB8  C3                ret
00001CB9  B0FF              mov al,0xff
00001CBB  A23301            mov [0x133],al
00001CBE  5B                pop bx
00001CBF  E87309            call word 0x2635
00001CC2  5F                pop di
00001CC3  07                pop es
00001CC4  53                push bx
00001CC5  803ED00000        cmp byte [0xd0],0x0
00001CCA  7541              jnz 0x1d0d
00001CCC  81FFC700          cmp di,0xc7
00001CD0  750E              jnz 0x1ce0
00001CD2  8CC0              mov ax,es
00001CD4  8CDB              mov bx,ds
00001CD6  3BC3              cmp ax,bx
00001CD8  7506              jnz 0x1ce0
00001CDA  C606D0000A        mov byte [0xd0],0xa
00001CDF  C3                ret
00001CE0  803E330100        cmp byte [0x133],0x0
00001CE5  740E              jz 0x1cf5
00001CE7  E82400            call word 0x1d0e
00001CEA  7209              jc 0x1cf5
00001CEC  26C60500          mov byte [es:di],0x0
00001CF0  26884501          mov [es:di+0x1],al
00001CF4  C3                ret
00001CF5  E839ED            call word 0xa31
00001CF8  26C60500          mov byte [es:di],0x0
00001CFC  26C6450106        mov byte [es:di+0x1],0x6
00001D01  83C70B            add di,byte +0xb
00001D04  BE8000            mov si,0x80
00001D07  B92500            mov cx,0x25
00001D0A  FC                cld
00001D0B  F3A4              rep movsb
00001D0D  C3                ret
00001D0E  B90600            mov cx,0x6
00001D11  BB3E1D            mov bx,0x1d3e
00001D14  51                push cx
00001D15  53                push bx
00001D16  BE0000            mov si,0x0
00001D19  B90300            mov cx,0x3
00001D1C  8A04              mov al,[si]
00001D1E  E8D6ED            call word 0xaf7
00001D21  2E3A07            cmp al,[cs:bx]
00001D24  7409              jz 0x1d2f
00001D26  5B                pop bx
00001D27  59                pop cx
00001D28  83C304            add bx,byte +0x4
00001D2B  E2E7              loop 0x1d14
00001D2D  F9                stc
00001D2E  C3                ret
00001D2F  46                inc si
00001D30  43                inc bx
00001D31  E2E9              loop 0x1d1c
00001D33  59                pop cx
00001D34  59                pop cx
00001D35  803C3A            cmp byte [si],0x3a
00001D38  75F3              jnz 0x1d2d
00001D3A  2E8A07            mov al,[cs:bx]
00001D3D  C3                ret
00001D3E  43                inc bx
00001D3F  4F                dec di
00001D40  4E                dec si
00001D41  005452            add [si+0x52],dl
00001D44  4D                dec bp
00001D45  014B42            add [bp+di+0x42],cx
00001D48  44                inc sp
00001D49  024C53            add cl,[si+0x53]
00001D4C  54                push sp
00001D4D  034155            add ax,[bx+di+0x55]
00001D50  58                pop ax
00001D51  0455              add al,0x55
00001D53  53                push bx
00001D54  52                push dx
00001D55  05B0FF            add ax,0xffb0
00001D58  EB02              jmp short 0x1d5c
00001D5A  32C0              xor al,al
00001D5C  A23401            mov [0x134],al
00001D5F  8F06D100          pop word [0xd1]
00001D63  07                pop es
00001D64  FF36D100          push word [0xd1]
00001D68  E88B00            call word 0x1df6
00001D6B  803ED00000        cmp byte [0xd0],0x0
00001D70  754F              jnz 0x1dc1
00001D72  26807D0106        cmp byte [es:di+0x1],0x6
00001D77  7529              jnz 0x1da2
00001D79  E84600            call word 0x1dc2
00001D7C  803ED00000        cmp byte [0xd0],0x0
00001D81  753E              jnz 0x1dc1
00001D83  26C745190100      mov word [es:di+0x19],0x1
00001D89  26C60501          mov byte [es:di],0x1
00001D8D  803E340100        cmp byte [0x134],0x0
00001D92  7404              jz 0x1d98
00001D94  26C60502          mov byte [es:di],0x2
00001D98  26C6450300        mov byte [es:di+0x3],0x0
00001D9D  7522              jnz 0x1dc1
00001D9F  E98E01            jmp word 0x1f30
00001DA2  26C60503          mov byte [es:di],0x3
00001DA6  26807D0102        cmp byte [es:di+0x1],0x2
00001DAB  7504              jnz 0x1db1
00001DAD  26C60501          mov byte [es:di],0x1
00001DB1  26807D0103        cmp byte [es:di+0x1],0x3
00001DB6  7504              jnz 0x1dbc
00001DB8  26C60502          mov byte [es:di],0x2
00001DBC  26C6450200        mov byte [es:di+0x2],0x0
00001DC1  C3                ret
00001DC2  E81A00            call word 0x1ddf
00001DC5  B8020F            mov ax,0xf02
00001DC8  803E340100        cmp byte [0x134],0x0
00001DCD  7403              jz 0x1dd2
00001DCF  B80316            mov ax,0x1603
00001DD2  50                push ax
00001DD3  E89405            call word 0x236a
00001DD6  0AC0              or al,al
00001DD8  58                pop ax
00001DD9  7403              jz 0x1dde
00001DDB  A2D000            mov [0xd0],al
00001DDE  C3                ret
00001DDF  57                push di
00001DE0  83C717            add di,byte +0x17
00001DE3  B91900            mov cx,0x19
00001DE6  32C0              xor al,al
00001DE8  FC                cld
00001DE9  F3AA              rep stosb
00001DEB  5F                pop di
00001DEC  C3                ret
00001DED  8F06D100          pop word [0xd1]
00001DF1  07                pop es
00001DF2  FF36D100          push word [0xd1]
00001DF6  26807D0106        cmp byte [es:di+0x1],0x6
00001DFB  753C              jnz 0x1e39
00001DFD  26F60502          test byte [es:di],0x2
00001E01  7422              jz 0x1e25
00001E03  B01A              mov al,0x1a
00001E05  E81103            call word 0x2119
00001E08  268A4D03          mov cl,[es:di+0x3]
00001E0C  0AC9              or cl,cl
00001E0E  740E              jz 0x1e1e
00001E10  32ED              xor ch,ch
00001E12  E84305            call word 0x2358
00001E15  0AC0              or al,al
00001E17  7405              jz 0x1e1e
00001E19  C606D00008        mov byte [0xd0],0x8
00001E1E  33C9              xor cx,cx
00001E20  E83505            call word 0x2358
00001E23  EB06              jmp short 0x1e2b
00001E25  26F60501          test byte [es:di],0x1
00001E29  740E              jz 0x1e39
00001E2B  B410              mov ah,0x10
00001E2D  E83A05            call word 0x236a
00001E30  0AC0              or al,al
00001E32  7405              jz 0x1e39
00001E34  C606D00004        mov byte [0xd0],0x4
00001E39  26C60500          mov byte [es:di],0x0
00001E3D  C3                ret
00001E3E  8F06D100          pop word [0xd1]
00001E42  FF36D100          push word [0xd1]
00001E46  06                push es
00001E47  57                push di
00001E48  1E                push ds
00001E49  07                pop es
00001E4A  BFC700            mov di,0xc7
00001E4D  E80C00            call word 0x1e5c
00001E50  5F                pop di
00001E51  07                pop es
00001E52  C3                ret
00001E53  8F06D100          pop word [0xd1]
00001E57  07                pop es
00001E58  FF36D100          push word [0xd1]
00001E5C  893E2D01          mov [0x12d],di
00001E60  8C062F01          mov [0x12f],es
00001E64  26F60501          test byte [es:di],0x1
00001E68  740F              jz 0x1e79
00001E6A  26807D0100        cmp byte [es:di+0x1],0x0
00001E6F  750D              jnz 0x1e7e
00001E71  26C6450200        mov byte [es:di+0x2],0x0
00001E76  E93800            jmp word 0x1eb1
00001E79  C606D00005        mov byte [0xd0],0x5
00001E7E  C3                ret
00001E7F  8F06D100          pop word [0xd1]
00001E83  FF36D100          push word [0xd1]
00001E87  06                push es
00001E88  57                push di
00001E89  1E                push ds
00001E8A  07                pop es
00001E8B  BFC700            mov di,0xc7
00001E8E  E80C00            call word 0x1e9d
00001E91  5F                pop di
00001E92  07                pop es
00001E93  C3                ret
00001E94  8F06D100          pop word [0xd1]
00001E98  07                pop es
00001E99  FF36D100          push word [0xd1]
00001E9D  893E2D01          mov [0x12d],di
00001EA1  8C062F01          mov [0x12f],es
00001EA5  26F60502          test byte [es:di],0x2
00001EA9  7505              jnz 0x1eb0
00001EAB  C606D00006        mov byte [0xd0],0x6
00001EB0  C3                ret
00001EB1  8A2ED300          mov ch,[0xd3]
00001EB5  80FD80            cmp ch,0x80
00001EB8  7202              jc 0x1ebc
00001EBA  B57F              mov ch,0x7f
00001EBC  C606D3007F        mov byte [0xd3],0x7f
00001EC1  BB0000            mov bx,0x0
00001EC4  891ED400          mov [0xd4],bx
00001EC8  B100              mov cl,0x0
00001ECA  E853EB            call word 0xa20
00001ECD  3C0D              cmp al,0xd
00001ECF  7434              jz 0x1f05
00001ED1  B201              mov dl,0x1
00001ED3  3C08              cmp al,0x8
00001ED5  741C              jz 0x1ef3
00001ED7  3C7F              cmp al,0x7f
00001ED9  7418              jz 0x1ef3
00001EDB  FECA              dec dl
00001EDD  3C18              cmp al,0x18
00001EDF  7412              jz 0x1ef3
00001EE1  3C20              cmp al,0x20
00001EE3  72E5              jc 0x1eca
00001EE5  3ACD              cmp cl,ch
00001EE7  74E1              jz 0x1eca
00001EE9  8807              mov [bx],al
00001EEB  FEC1              inc cl
00001EED  43                inc bx
00001EEE  E89DE2            call word 0x18e
00001EF1  EBD7              jmp short 0x1eca
00001EF3  FEC9              dec cl
00001EF5  78D1              js 0x1ec8
00001EF7  4B                dec bx
00001EF8  E8B9E2            call word 0x1b4
00001EFB  0820              or [bx+si],ah
00001EFD  0800              or [bx+si],al
00001EFF  FECA              dec dl
00001F01  74C7              jz 0x1eca
00001F03  EBEE              jmp short 0x1ef3
00001F05  C6071A            mov byte [bx],0x1a
00001F08  C3                ret
00001F09  06                push es
00001F0A  57                push di
00001F0B  C43E2D01          les di,[0x12d]
00001F0F  26807D0106        cmp byte [es:di+0x1],0x6
00001F14  5F                pop di
00001F15  07                pop es
00001F16  C3                ret
00001F17  E8EFFF            call word 0x1f09
00001F1A  7407              jz 0x1f23
00001F1C  E8A600            call word 0x1fc5
00001F1F  3C1A              cmp al,0x1a
00001F21  7501              jnz 0x1f24
00001F23  C3                ret
00001F24  06                push es
00001F25  57                push di
00001F26  C43E2D01          les di,[0x12d]
00001F2A  E80300            call word 0x1f30
00001F2D  5F                pop di
00001F2E  07                pop es
00001F2F  C3                ret
00001F30  53                push bx
00001F31  51                push cx
00001F32  52                push dx
00001F33  06                push es
00001F34  57                push di
00001F35  268A4501          mov al,[es:di+0x1]
00001F39  3C00              cmp al,0x0
00001F3B  7510              jnz 0x1f4d
00001F3D  8B1ED400          mov bx,[0xd4]
00001F41  8A07              mov al,[bx]
00001F43  3C1A              cmp al,0x1a
00001F45  7474              jz 0x1fbb
00001F47  FF06D400          inc word [0xd4]
00001F4B  EB6E              jmp short 0x1fbb
00001F4D  3C01              cmp al,0x1
00001F4F  7517              jnz 0x1f68
00001F51  E8CCEA            call word 0xa20
00001F54  50                push ax
00001F55  3C20              cmp al,0x20
00001F57  7205              jc 0x1f5e
00001F59  E832E2            call word 0x18e
00001F5C  EB07              jmp short 0x1f65
00001F5E  3C0D              cmp al,0xd
00001F60  7503              jnz 0x1f65
00001F62  E822E2            call word 0x187
00001F65  58                pop ax
00001F66  EB53              jmp short 0x1fbb
00001F68  3C02              cmp al,0x2
00001F6A  7507              jnz 0x1f73
00001F6C  4C                dec sp
00001F6D  FF16A700          call word [0xa7]
00001F71  EB48              jmp short 0x1fbb
00001F73  3C04              cmp al,0x4
00001F75  7507              jnz 0x1f7e
00001F77  4C                dec sp
00001F78  FF16AF00          call word [0xaf]
00001F7C  EB3D              jmp short 0x1fbb
00001F7E  3C05              cmp al,0x5
00001F80  7507              jnz 0x1f89
00001F82  4C                dec sp
00001F83  FF16B300          call word [0xb3]
00001F87  EB32              jmp short 0x1fbb
00001F89  268A5D03          mov bl,[es:di+0x3]
00001F8D  32FF              xor bh,bh
00001F8F  0BDB              or bx,bx
00001F91  7513              jnz 0x1fa6
00001F93  B98000            mov cx,0x80
00001F96  E8C303            call word 0x235c
00001F99  0AC0              or al,al
00001F9B  7407              jz 0x1fa4
00001F9D  8BD9              mov bx,cx
00001F9F  26C641301A        mov byte [es:bx+di+0x30],0x1a
00001FA4  33DB              xor bx,bx
00001FA6  268A4130          mov al,[es:bx+di+0x30]
00001FAA  3C1A              cmp al,0x1a
00001FAC  740D              jz 0x1fbb
00001FAE  26FE4503          inc byte [es:di+0x3]
00001FB2  7907              jns 0x1fbb
00001FB4  26C6450300        mov byte [es:di+0x3],0x0
00001FB9  EB00              jmp short 0x1fbb
00001FBB  5F                pop di
00001FBC  07                pop es
00001FBD  26884502          mov [es:di+0x2],al
00001FC1  5A                pop dx
00001FC2  59                pop cx
00001FC3  5B                pop bx
00001FC4  C3                ret
00001FC5  06                push es
00001FC6  57                push di
00001FC7  C43E2D01          les di,[0x12d]
00001FCB  E80300            call word 0x1fd1
00001FCE  5F                pop di
00001FCF  07                pop es
00001FD0  C3                ret
00001FD1  268A4502          mov al,[es:di+0x2]
00001FD5  803ED00000        cmp byte [0xd0],0x0
00001FDA  7402              jz 0x1fde
00001FDC  B01A              mov al,0x1a
00001FDE  C3                ret
00001FDF  E835FF            call word 0x1f17
00001FE2  E8E0FF            call word 0x1fc5
00001FE5  3C20              cmp al,0x20
00001FE7  740C              jz 0x1ff5
00001FE9  3C09              cmp al,0x9
00001FEB  7408              jz 0x1ff5
00001FED  3C0D              cmp al,0xd
00001FEF  7404              jz 0x1ff5
00001FF1  3C0A              cmp al,0xa
00001FF3  7505              jnz 0x1ffa
00001FF5  E82CFF            call word 0x1f24
00001FF8  EBE8              jmp short 0x1fe2
00001FFA  BB0B01            mov bx,0x10b
00001FFD  E8C5FF            call word 0x1fc5
00002000  3C20              cmp al,0x20
00002002  741A              jz 0x201e
00002004  3C09              cmp al,0x9
00002006  7416              jz 0x201e
00002008  3C0D              cmp al,0xd
0000200A  741A              jz 0x2026
0000200C  3C1A              cmp al,0x1a
0000200E  7416              jz 0x2026
00002010  8807              mov [bx],al
00002012  43                inc bx
00002013  81FB2801          cmp bx,0x128
00002017  7405              jz 0x201e
00002019  E808FF            call word 0x1f24
0000201C  EBDF              jmp short 0x1ffd
0000201E  E8E8FE            call word 0x1f09
00002021  7503              jnz 0x2026
00002023  E8FEFE            call word 0x1f24
00002026  C60700            mov byte [bx],0x0
00002029  BB0B01            mov bx,0x10b
0000202C  803F00            cmp byte [bx],0x0
0000202F  C3                ret
00002030  7205              jc 0x2037
00002032  803F00            cmp byte [bx],0x0
00002035  7406              jz 0x203d
00002037  C606D00009        mov byte [0xd0],0x9
0000203C  F9                stc
0000203D  C3                ret
0000203E  5B                pop bx
0000203F  07                pop es
00002040  53                push bx
00002041  E8C5FE            call word 0x1f09
00002044  7509              jnz 0x204f
00002046  E87CFF            call word 0x1fc5
00002049  268805            mov [es:di],al
0000204C  E9D5FE            jmp word 0x1f24
0000204F  E8D2FE            call word 0x1f24
00002052  268805            mov [es:di],al
00002055  C3                ret
00002056  B1FF              mov cl,0xff
00002058  EB02              jmp short 0x205c
0000205A  32C9              xor cl,cl
0000205C  5B                pop bx
0000205D  07                pop es
0000205E  53                push bx
0000205F  51                push cx
00002060  E87CFF            call word 0x1fdf
00002063  59                pop cx
00002064  7416              jz 0x207c
00002066  51                push cx
00002067  E8A5EC            call word 0xd0f
0000206A  59                pop cx
0000206B  E8C2FF            call word 0x2030
0000206E  720C              jc 0x207c
00002070  0AC9              or cl,cl
00002072  7505              jnz 0x2079
00002074  268905            mov [es:di],ax
00002077  EB03              jmp short 0x207c
00002079  268805            mov [es:di],al
0000207C  C3                ret
0000207D  5B                pop bx
0000207E  07                pop es
0000207F  53                push bx
00002080  E85CFF            call word 0x1fdf
00002083  7415              jz 0x209a
00002085  57                push di
00002086  BFDB00            mov di,0xdb
00002089  E8C6FA            call word 0x1b52
0000208C  8BF7              mov si,di
0000208E  5F                pop di
0000208F  E89EFF            call word 0x2030
00002092  7206              jc 0x209a
00002094  B90300            mov cx,0x3
00002097  FC                cld
00002098  F3A5              rep movsw
0000209A  C3                ret
0000209B  5B                pop bx
0000209C  07                pop es
0000209D  53                push bx
0000209E  E876FE            call word 0x1f17
000020A1  E821FF            call word 0x1fc5
000020A4  3C0A              cmp al,0xa
000020A6  7505              jnz 0x20ad
000020A8  E879FE            call word 0x1f24
000020AB  EBF4              jmp short 0x20a1
000020AD  33DB              xor bx,bx
000020AF  E813FF            call word 0x1fc5
000020B2  3C0D              cmp al,0xd
000020B4  7419              jz 0x20cf
000020B6  3C1A              cmp al,0x1a
000020B8  7415              jz 0x20cf
000020BA  43                inc bx
000020BB  268801            mov [es:bx+di],al
000020BE  FEC9              dec cl
000020C0  7405              jz 0x20c7
000020C2  E85FFE            call word 0x1f24
000020C5  EBE8              jmp short 0x20af
000020C7  E83FFE            call word 0x1f09
000020CA  7503              jnz 0x20cf
000020CC  E855FE            call word 0x1f24
000020CF  26881D            mov [es:di],bl
000020D2  C3                ret
000020D3  C43E2D01          les di,[0x12d]
000020D7  26807D0100        cmp byte [es:di+0x1],0x0
000020DC  7503              jnz 0x20e1
000020DE  E9A6E0            jmp word 0x187
000020E1  E8E1FE            call word 0x1fc5
000020E4  3C0D              cmp al,0xd
000020E6  7409              jz 0x20f1
000020E8  3C1A              cmp al,0x1a
000020EA  7420              jz 0x210c
000020EC  E835FE            call word 0x1f24
000020EF  EBF0              jmp short 0x20e1
000020F1  E815FE            call word 0x1f09
000020F4  750A              jnz 0x2100
000020F6  E82BFE            call word 0x1f24
000020F9  3C0A              cmp al,0xa
000020FB  750F              jnz 0x210c
000020FD  E924FE            jmp word 0x1f24
00002100  26807D021A        cmp byte [es:di+0x2],0x1a
00002105  7405              jz 0x210c
00002107  26C6450200        mov byte [es:di+0x2],0x0
0000210C  C3                ret
0000210D  06                push es
0000210E  57                push di
0000210F  C43E2D01          les di,[0x12d]
00002113  E80300            call word 0x2119
00002116  5F                pop di
00002117  07                pop es
00002118  C3                ret
00002119  803ED00000        cmp byte [0xd0],0x0
0000211E  7562              jnz 0x2182
00002120  53                push bx
00002121  51                push cx
00002122  52                push dx
00002123  06                push es
00002124  57                push di
00002125  32E4              xor ah,ah
00002127  50                push ax
00002128  268A4501          mov al,[es:di+0x1]
0000212C  3C00              cmp al,0x0
0000212E  7404              jz 0x2134
00002130  3C01              cmp al,0x1
00002132  7506              jnz 0x213a
00002134  FF16A900          call word [0xa9]
00002138  EB43              jmp short 0x217d
0000213A  3C03              cmp al,0x3
0000213C  7506              jnz 0x2144
0000213E  FF16AB00          call word [0xab]
00002142  EB39              jmp short 0x217d
00002144  3C04              cmp al,0x4
00002146  7506              jnz 0x214e
00002148  FF16AD00          call word [0xad]
0000214C  EB2F              jmp short 0x217d
0000214E  3C05              cmp al,0x5
00002150  7506              jnz 0x2158
00002152  FF16B100          call word [0xb1]
00002156  EB25              jmp short 0x217d
00002158  58                pop ax
00002159  268A5D03          mov bl,[es:di+0x3]
0000215D  32FF              xor bh,bh
0000215F  26884130          mov [es:bx+di+0x30],al
00002163  26FE4503          inc byte [es:di+0x3]
00002167  7914              jns 0x217d
00002169  26C6450300        mov byte [es:di+0x3],0x0
0000216E  B98000            mov cx,0x80
00002171  E8E401            call word 0x2358
00002174  0AC0              or al,al
00002176  7405              jz 0x217d
00002178  C606D00008        mov byte [0xd0],0x8
0000217D  5F                pop di
0000217E  07                pop es
0000217F  5A                pop dx
00002180  59                pop cx
00002181  5B                pop bx
00002182  C3                ret
00002183  5B                pop bx
00002184  5A                pop dx
00002185  53                push bx
00002186  E898E9            call word 0xb21
00002189  3C01              cmp al,0x1
0000218B  7609              jna 0x2196
0000218D  91                xchg ax,cx
0000218E  49                dec cx
0000218F  B020              mov al,0x20
00002191  E879FF            call word 0x210d
00002194  E2F9              loop 0x218f
00002196  8BC2              mov ax,dx
00002198  E972FF            jmp word 0x210d
0000219B  91                xchg ax,cx
0000219C  5B                pop bx
0000219D  58                pop ax
0000219E  53                push bx
0000219F  51                push cx
000021A0  BB0000            mov bx,0x0
000021A3  E8DCEA            call word 0xc82
000021A6  58                pop ax
000021A7  E877E9            call word 0xb21
000021AA  81EB0000          sub bx,0x0
000021AE  2BC3              sub ax,bx
000021B0  7608              jna 0x21ba
000021B2  91                xchg ax,cx
000021B3  B020              mov al,0x20
000021B5  E855FF            call word 0x210d
000021B8  E2F9              loop 0x21b3
000021BA  8BCB              mov cx,bx
000021BC  BB0000            mov bx,0x0
000021BF  8A07              mov al,[bx]
000021C1  E849FF            call word 0x210d
000021C4  43                inc bx
000021C5  E2F8              loop 0x21bf
000021C7  C3                ret
000021C8  92                xchg ax,dx
000021C9  5B                pop bx
000021CA  58                pop ax
000021CB  53                push bx
000021CC  E8BFEF            call word 0x118e
000021CF  50                push ax
000021D0  91                xchg ax,cx
000021D1  BB0000            mov bx,0x0
000021D4  E8FCF7            call word 0x19d3
000021D7  EBCD              jmp short 0x21a6
000021D9  5B                pop bx
000021DA  59                pop cx
000021DB  53                push bx
000021DC  BFEE21            mov di,0x21ee
000021DF  0BC9              or cx,cx
000021E1  7503              jnz 0x21e6
000021E3  BFF321            mov di,0x21f3
000021E6  0E                push cs
000021E7  E83DEB            call word 0xd27
000021EA  E80C00            call word 0x21f9
000021ED  C3                ret
000021EE  0454              add al,0x54
000021F0  52                push dx
000021F1  55                push bp
000021F2  45                inc bp
000021F3  054641            add ax,0x4146
000021F6  4C                dec sp
000021F7  53                push bx
000021F8  45                inc bp
000021F9  E825E9            call word 0xb21
000021FC  5A                pop dx
000021FD  8BDC              mov bx,sp
000021FF  362A07            sub al,[ss:bx]
00002202  760B              jna 0x220f
00002204  8AC8              mov cl,al
00002206  32ED              xor ch,ch
00002208  B020              mov al,0x20
0000220A  E800FF            call word 0x210d
0000220D  E2F9              loop 0x2208
0000220F  368A0F            mov cl,[ss:bx]
00002212  32ED              xor ch,ch
00002214  43                inc bx
00002215  0BC9              or cx,cx
00002217  7409              jz 0x2222
00002219  368A07            mov al,[ss:bx]
0000221C  E8EEFE            call word 0x210d
0000221F  43                inc bx
00002220  E2F7              loop 0x2219
00002222  8BE3              mov sp,bx
00002224  FFE2              jmp dx
00002226  5B                pop bx
00002227  2E8A0F            mov cl,[cs:bx]
0000222A  32ED              xor ch,ch
0000222C  43                inc bx
0000222D  0BC9              or cx,cx
0000222F  7409              jz 0x223a
00002231  2E8A07            mov al,[cs:bx]
00002234  E8D6FE            call word 0x210d
00002237  43                inc bx
00002238  E2F7              loop 0x2231
0000223A  FFE3              jmp bx
0000223C  B00D              mov al,0xd
0000223E  E8CCFE            call word 0x210d
00002241  B00A              mov al,0xa
00002243  E9C7FE            jmp word 0x210d
00002246  B20D              mov dl,0xd
00002248  EB02              jmp short 0x224c
0000224A  B21A              mov dl,0x1a
0000224C  8F06D100          pop word [0xd1]
00002250  07                pop es
00002251  FF36D100          push word [0xd1]
00002255  26F60501          test byte [es:di],0x1
00002259  7411              jz 0x226c
0000225B  E873FD            call word 0x1fd1
0000225E  3AC2              cmp al,dl
00002260  7404              jz 0x2266
00002262  3C1A              cmp al,0x1a
00002264  7506              jnz 0x226c
00002266  B80100            mov ax,0x1
00002269  0BC0              or ax,ax
0000226B  C3                ret
0000226C  33C0              xor ax,ax
0000226E  C3                ret
0000226F  32C0              xor al,al
00002271  E947FA            jmp word 0x1cbb
00002274  B0FF              mov al,0xff
00002276  EB02              jmp short 0x227a
00002278  32C0              xor al,al
0000227A  A23401            mov [0x134],al
0000227D  890E3101          mov [0x131],cx
00002281  8F06D100          pop word [0xd1]
00002285  07                pop es
00002286  FF36D100          push word [0xd1]
0000228A  E85700            call word 0x22e4
0000228D  803ED00000        cmp byte [0xd0],0x0
00002292  7523              jnz 0x22b7
00002294  33C0              xor ax,ax
00002296  33D2              xor dx,dx
00002298  803E340100        cmp byte [0x134],0x0
0000229D  7518              jnz 0x22b7
0000229F  A13101            mov ax,[0x131]
000022A2  26894519          mov [es:di+0x19],ax
000022A6  B423              mov ah,0x23
000022A8  E8BF00            call word 0x236a
000022AB  0AC0              or al,al
000022AD  7526              jnz 0x22d5
000022AF  268B452C          mov ax,[es:di+0x2c]
000022B3  268B552E          mov dx,[es:di+0x2e]
000022B7  26894504          mov [es:di+0x4],ax
000022BB  26895506          mov [es:di+0x6],dx
000022BF  E800FB            call word 0x1dc2
000022C2  803ED00000        cmp byte [0xd0],0x0
000022C7  750B              jnz 0x22d4
000022C9  26C60503          mov byte [es:di],0x3
000022CD  A13101            mov ax,[0x131]
000022D0  26894519          mov [es:di+0x19],ax
000022D4  C3                ret
000022D5  C606D00002        mov byte [0xd0],0x2
000022DA  C3                ret
000022DB  8F06D100          pop word [0xd1]
000022DF  07                pop es
000022E0  FF36D100          push word [0xd1]
000022E4  26F60503          test byte [es:di],0x3
000022E8  7501              jnz 0x22eb
000022EA  C3                ret
000022EB  E93DFB            jmp word 0x1e2b
000022EE  5B                pop bx
000022EF  07                pop es
000022F0  53                push bx
000022F1  B90100            mov cx,0x1
000022F4  51                push cx
000022F5  8BD7              mov dx,di
000022F7  B41A              mov ah,0x1a
000022F9  E87100            call word 0x236d
000022FC  C43E2D01          les di,[0x12d]
00002300  59                pop cx
00002301  B427              mov ah,0x27
00002303  E86400            call word 0x236a
00002306  0AC0              or al,al
00002308  7409              jz 0x2313
0000230A  3C03              cmp al,0x3
0000230C  7405              jz 0x2313
0000230E  C606D0000A        mov byte [0xd0],0xa
00002313  C3                ret
00002314  5B                pop bx
00002315  07                pop es
00002316  53                push bx
00002317  B90100            mov cx,0x1
0000231A  51                push cx
0000231B  8BD7              mov dx,di
0000231D  B41A              mov ah,0x1a
0000231F  E84B00            call word 0x236d
00002322  C43E2D01          les di,[0x12d]
00002326  59                pop cx
00002327  B428              mov ah,0x28
00002329  E83E00            call word 0x236a
0000232C  0AC0              or al,al
0000232E  7405              jz 0x2335
00002330  C606D0000D        mov byte [0xd0],0xd
00002335  268B452C          mov ax,[es:di+0x2c]
00002339  268B552E          mov dx,[es:di+0x2e]
0000233D  263B5506          cmp dx,[es:di+0x6]
00002341  7210              jc 0x2353
00002343  7706              ja 0x234b
00002345  263B4504          cmp ax,[es:di+0x4]
00002349  7608              jna 0x2353
0000234B  26894504          mov [es:di+0x4],ax
0000234F  26895506          mov [es:di+0x6],dx
00002353  C3                ret
00002354  5B                pop bx
00002355  07                pop es
00002356  FFE3              jmp bx
00002358  B428              mov ah,0x28
0000235A  EB02              jmp short 0x235e
0000235C  B427              mov ah,0x27
0000235E  50                push ax
0000235F  51                push cx
00002360  8D5530            lea dx,[di+0x30]
00002363  B41A              mov ah,0x1a
00002365  E80500            call word 0x236d
00002368  59                pop cx
00002369  58                pop ax
0000236A  8D550B            lea dx,[di+0xb]
0000236D  1E                push ds
0000236E  06                push es
0000236F  1F                pop ds
00002370  E80200            call word 0x2375
00002373  1F                pop ds
00002374  C3                ret
00002375  06                push es
00002376  57                push di
00002377  E847E6            call word 0x9c1
0000237A  5F                pop di
0000237B  07                pop es
0000237C  C3                ret
0000237D  33D2              xor dx,dx
0000237F  5B                pop bx
00002380  5F                pop di
00002381  07                pop es
00002382  53                push bx
00002383  263B5506          cmp dx,[es:di+0x6]
00002387  7208              jc 0x2391
00002389  770F              ja 0x239a
0000238B  263B4504          cmp ax,[es:di+0x4]
0000238F  7709              ja 0x239a
00002391  2689452C          mov [es:di+0x2c],ax
00002395  2689552E          mov [es:di+0x2e],dx
00002399  C3                ret
0000239A  C606D0000E        mov byte [0xd0],0xe
0000239F  C3                ret
000023A0  E84C00            call word 0x23ef
000023A3  EBDA              jmp short 0x237f
000023A5  5B                pop bx
000023A6  07                pop es
000023A7  90                nop
000023A8  33C0              xor ax,ax
000023AA  268B552C          mov dx,[es:di+0x2c]
000023AE  263B5504          cmp dx,[es:di+0x4]
000023B2  750B              jnz 0x23bf
000023B4  268B552E          mov dx,[es:di+0x2e]
000023B8  263B5506          cmp dx,[es:di+0x6]
000023BC  7501              jnz 0x23bf
000023BE  40                inc ax
000023BF  0BC0              or ax,ax
000023C1  FFE3              jmp bx
000023C3  5B                pop bx
000023C4  07                pop es
000023C5  268B452C          mov ax,[es:di+0x2c]
000023C9  FFE3              jmp bx
000023CB  5B                pop bx
000023CC  07                pop es
000023CD  53                push bx
000023CE  268B452C          mov ax,[es:di+0x2c]
000023D2  268B552E          mov dx,[es:di+0x2e]
000023D6  E94C00            jmp word 0x2425
000023D9  5B                pop bx
000023DA  07                pop es
000023DB  268B4504          mov ax,[es:di+0x4]
000023DF  FFE3              jmp bx
000023E1  5B                pop bx
000023E2  07                pop es
000023E3  53                push bx
000023E4  268B4504          mov ax,[es:di+0x4]
000023E8  268B5506          mov dx,[es:di+0x6]
000023EC  E93600            jmp word 0x2425
000023EF  5E                pop si
000023F0  5F                pop di
000023F1  5A                pop dx
000023F2  59                pop cx
000023F3  5B                pop bx
000023F4  57                push di
000023F5  56                push si
000023F6  F6C780            test bh,0x80
000023F9  751E              jnz 0x2419
000023FB  80CF80            or bh,0x80
000023FE  B0A0              mov al,0xa0
00002400  2AC2              sub al,dl
00002402  721A              jc 0x241e
00002404  3C20              cmp al,0x20
00002406  7311              jnc 0x2419
00002408  0AC0              or al,al
0000240A  7408              jz 0x2414
0000240C  D1EB              shr bx,1
0000240E  D1D9              rcr cx,1
00002410  FEC8              dec al
00002412  EBF4              jmp short 0x2408
00002414  8BC1              mov ax,cx
00002416  8BD3              mov dx,bx
00002418  C3                ret
00002419  33C0              xor ax,ax
0000241B  33D2              xor dx,dx
0000241D  C3                ret
0000241E  B8FFFF            mov ax,0xffff
00002421  BAFFFF            mov dx,0xffff
00002424  C3                ret
00002425  8BDA              mov bx,dx
00002427  8BC8              mov cx,ax
00002429  0BC2              or ax,dx
0000242B  7413              jz 0x2440
0000242D  BAA000            mov dx,0xa0
00002430  F6C780            test bh,0x80
00002433  7508              jnz 0x243d
00002435  D1E1              shl cx,1
00002437  D1D3              rcl bx,1
00002439  FECA              dec dl
0000243B  EBF3              jmp short 0x2430
0000243D  80E77F            and bh,0x7f
00002440  58                pop ax
00002441  53                push bx
00002442  51                push cx
00002443  52                push dx
00002444  FFE0              jmp ax
00002446  91                xchg ax,cx
00002447  5B                pop bx
00002448  5F                pop di
00002449  53                push bx
0000244A  E927FE            jmp word 0x2274
0000244D  91                xchg ax,cx
0000244E  5B                pop bx
0000244F  5F                pop di
00002450  53                push bx
00002451  E924FE            jmp word 0x2278
00002454  91                xchg ax,cx
00002455  8F06D100          pop word [0xd1]
00002459  5F                pop di
0000245A  07                pop es
0000245B  8F062D01          pop word [0x12d]
0000245F  8F062F01          pop word [0x12f]
00002463  FF36D100          push word [0xd1]
00002467  E98AFE            jmp word 0x22f4
0000246A  91                xchg ax,cx
0000246B  8F06D100          pop word [0xd1]
0000246F  5F                pop di
00002470  07                pop es
00002471  8F062D01          pop word [0x12d]
00002475  8F062F01          pop word [0x12f]
00002479  FF36D100          push word [0xd1]
0000247D  E99AFE            jmp word 0x231a
00002480  8F06D100          pop word [0xd1]
00002484  07                pop es
00002485  FF36D100          push word [0xd1]
00002489  E8CC00            call word 0x2558
0000248C  750E              jnz 0x249c
0000248E  B413              mov ah,0x13
00002490  E8D7FE            call word 0x236a
00002493  0AC0              or al,al
00002495  7405              jz 0x249c
00002497  C606D00002        mov byte [0xd0],0x2
0000249C  C3                ret
0000249D  8F06D100          pop word [0xd1]
000024A1  E89101            call word 0x2635
000024A4  5F                pop di
000024A5  07                pop es
000024A6  FF36D100          push word [0xd1]
000024AA  E8AB00            call word 0x2558
000024AD  75ED              jnz 0x249c
000024AF  E87FE5            call word 0xa31
000024B2  57                push di
000024B3  83C71B            add di,byte +0x1b
000024B6  BE8000            mov si,0x80
000024B9  B90600            mov cx,0x6
000024BC  FC                cld
000024BD  F3A5              rep movsw
000024BF  5F                pop di
000024C0  B417              mov ah,0x17
000024C2  E8A5FE            call word 0x236a
000024C5  0AC0              or al,al
000024C7  75CE              jnz 0x2497
000024C9  83C70B            add di,byte +0xb
000024CC  BE8000            mov si,0x80
000024CF  B92500            mov cx,0x25
000024D2  FC                cld
000024D3  F3A4              rep movsb
000024D5  C3                ret
000024D6  B82827            mov ax,0x2728
000024D9  EB02              jmp short 0x24dd
000024DB  33C0              xor ax,ax
000024DD  8F06D100          pop word [0xd1]
000024E1  07                pop es
000024E2  FF36D100          push word [0xd1]
000024E6  F706CE000100      test word [0xce],0x1
000024EC  7564              jnz 0x2552
000024EE  E86700            call word 0x2558
000024F1  75E2              jnz 0x24d5
000024F3  50                push ax
000024F4  B40F              mov ah,0xf
000024F6  E871FE            call word 0x236a
000024F9  0AC0              or al,al
000024FB  58                pop ax
000024FC  7551              jnz 0x254f
000024FE  26C745190100      mov word [es:di+0x19],0x1
00002504  2689452C          mov [es:di+0x2c],ax
00002508  26C7452E0000      mov word [es:di+0x2e],0x0
0000250E  1E                push ds
0000250F  57                push di
00002510  06                push es
00002511  BF0000            mov di,0x0
00002514  BE3128            mov si,0x2831
00002517  1E                push ds
00002518  07                pop es
00002519  0E                push cs
0000251A  1F                pop ds
0000251B  B90400            mov cx,0x4
0000251E  FC                cld
0000251F  F3A5              rep movsw
00002521  07                pop es
00002522  5F                pop di
00002523  BA2828            mov dx,0x2828
00002526  B41A              mov ah,0x1a
00002528  E84AFE            call word 0x2375
0000252B  1F                pop ds
0000252C  268B4D1B          mov cx,[es:di+0x1b]
00002530  262B4D2C          sub cx,[es:di+0x2c]
00002534  B427              mov ah,0x27
00002536  E831FE            call word 0x236a
00002539  B410              mov ah,0x10
0000253B  E82CFE            call word 0x236a
0000253E  BF3128            mov di,0x2831
00002541  BE0000            mov si,0x0
00002544  0E                push cs
00002545  07                pop es
00002546  B90400            mov cx,0x4
00002549  FC                cld
0000254A  F3A5              rep movsw
0000254C  E9D902            jmp word 0x2828
0000254F  E945FF            jmp word 0x2497
00002552  C606D00011        mov byte [0xd0],0x11
00002557  C3                ret
00002558  26807D0106        cmp byte [es:di+0x1],0x6
0000255D  7405              jz 0x2564
0000255F  C606D00010        mov byte [0xd0],0x10
00002564  C3                ret
00002565  4C                dec sp
00002566  FF16A500          call word [0xa5]
0000256A  C3                ret
0000256B  880E4201          mov [0x142],cl
0000256F  893E4301          mov [0x143],di
00002573  5B                pop bx
00002574  8F064501          pop word [0x145]
00002578  59                pop cx
00002579  58                pop ax
0000257A  53                push bx
0000257B  51                push cx
0000257C  BB0000            mov bx,0x0
0000257F  E800E7            call word 0xc82
00002582  EB1B              jmp short 0x259f
00002584  880E4201          mov [0x142],cl
00002588  893E4301          mov [0x143],di
0000258C  5B                pop bx
0000258D  8F064501          pop word [0x145]
00002591  5A                pop dx
00002592  58                pop ax
00002593  53                push bx
00002594  E8F7EB            call word 0x118e
00002597  50                push ax
00002598  91                xchg ax,cx
00002599  BB0000            mov bx,0x0
0000259C  E834F4            call word 0x19d3
0000259F  59                pop cx
000025A0  C43E4301          les di,[0x143]
000025A4  57                push di
000025A5  8A164201          mov dl,[0x142]
000025A9  32F6              xor dh,dh
000025AB  93                xchg ax,bx
000025AC  2D0000            sub ax,0x0
000025AF  2BC8              sub cx,ax
000025B1  760D              jna 0x25c0
000025B3  47                inc di
000025B4  26C60520          mov byte [es:di],0x20
000025B8  FEC6              inc dh
000025BA  3AF2              cmp dh,dl
000025BC  7415              jz 0x25d3
000025BE  E2F3              loop 0x25b3
000025C0  91                xchg ax,cx
000025C1  BB0000            mov bx,0x0
000025C4  8A07              mov al,[bx]
000025C6  43                inc bx
000025C7  47                inc di
000025C8  268805            mov [es:di],al
000025CB  FEC6              inc dh
000025CD  3AF2              cmp dh,dl
000025CF  7402              jz 0x25d3
000025D1  E2F1              loop 0x25c4
000025D3  5F                pop di
000025D4  268835            mov [es:di],dh
000025D7  C3                ret
000025D8  32C0              xor al,al
000025DA  EB02              jmp short 0x25de
000025DC  B001              mov al,0x1
000025DE  A24701            mov [0x147],al
000025E1  893E4C01          mov [0x14c],di
000025E5  5B                pop bx
000025E6  8F064E01          pop word [0x14e]
000025EA  8F064801          pop word [0x148]
000025EE  8F064A01          pop word [0x14a]
000025F2  E84000            call word 0x2635
000025F5  53                push bx
000025F6  BB0000            mov bx,0x0
000025F9  803E470100        cmp byte [0x147],0x0
000025FE  750E              jnz 0x260e
00002600  E80CE7            call word 0xd0f
00002603  7223              jc 0x2628
00002605  C43E4801          les di,[0x148]
00002609  268905            mov [es:di],ax
0000260C  EB14              jmp short 0x2622
0000260E  BFDB00            mov di,0xdb
00002611  E83EF5            call word 0x1b52
00002614  7212              jc 0x2628
00002616  8BF7              mov si,di
00002618  C43E4801          les di,[0x148]
0000261C  B90300            mov cx,0x3
0000261F  FC                cld
00002620  F3A5              rep movsw
00002622  33C0              xor ax,ax
00002624  3807              cmp [bx],al
00002626  7405              jz 0x262d
00002628  93                xchg ax,bx
00002629  2D0000            sub ax,0x0
0000262C  40                inc ax
0000262D  C43E4C01          les di,[0x14c]
00002631  268905            mov [es:di],ax
00002634  C3                ret
00002635  58                pop ax
00002636  8BF4              mov si,sp
00002638  368A14            mov dl,[ss:si]
0000263B  32F6              xor dh,dh
0000263D  8BCA              mov cx,dx
0000263F  42                inc dx
00002640  83F97F            cmp cx,byte +0x7f
00002643  7603              jna 0x2648
00002645  B97F00            mov cx,0x7f
00002648  46                inc si
00002649  BF0000            mov di,0x0
0000264C  1E                push ds
0000264D  07                pop es
0000264E  16                push ss
0000264F  1F                pop ds
00002650  FC                cld
00002651  F3A4              rep movsb
00002653  06                push es
00002654  1F                pop ds
00002655  C60500            mov byte [di],0x0
00002658  03E2              add sp,dx
0000265A  FFE0              jmp ax
0000265C  C3                ret
0000265D  5B                pop bx
0000265E  8CDA              mov dx,ds
00002660  8BF7              mov si,di
00002662  1F                pop ds
00002663  5F                pop di
00002664  07                pop es
00002665  FC                cld
00002666  F3A4              rep movsb
00002668  8EDA              mov ds,dx
0000266A  FFE3              jmp bx
0000266C  5B                pop bx
0000266D  8CDA              mov dx,ds
0000266F  8BF7              mov si,di
00002671  1F                pop ds
00002672  2BE1              sub sp,cx
00002674  8BFC              mov di,sp
00002676  16                push ss
00002677  07                pop es
00002678  FC                cld
00002679  F3A4              rep movsb
0000267B  8EDA              mov ds,dx
0000267D  FFE3              jmp bx
0000267F  5B                pop bx
00002680  59                pop cx
00002681  5F                pop di
00002682  07                pop es
00002683  FC                cld
00002684  F3AA              rep stosb
00002686  FFE3              jmp bx
00002688  91                xchg ax,cx
00002689  8CDA              mov dx,ds
0000268B  5B                pop bx
0000268C  5F                pop di
0000268D  07                pop es
0000268E  5E                pop si
0000268F  1F                pop ds
00002690  FC                cld
00002691  3BF7              cmp si,di
00002693  7307              jnc 0x269c
00002695  03F1              add si,cx
00002697  03F9              add di,cx
00002699  4E                dec si
0000269A  4F                dec di
0000269B  FD                std
0000269C  F3A4              rep movsb
0000269E  8EDA              mov ds,dx
000026A0  FFE3              jmp bx
000026A2  5B                pop bx
000026A3  07                pop es
000026A4  1E                push ds
000026A5  06                push es
000026A6  57                push di
000026A7  55                push bp
000026A8  53                push bx
000026A9  B90900            mov cx,0x9
000026AC  26FF35            push word [es:di]
000026AF  47                inc di
000026B0  47                inc di
000026B1  E2F9              loop 0x26ac
000026B3  07                pop es
000026B4  1F                pop ds
000026B5  5F                pop di
000026B6  5E                pop si
000026B7  5D                pop bp
000026B8  5A                pop dx
000026B9  59                pop cx
000026BA  5B                pop bx
000026BB  58                pop ax
000026BC  C3                ret
000026BD  9C                pushfw
000026BE  06                push es
000026BF  1E                push ds
000026C0  57                push di
000026C1  56                push si
000026C2  55                push bp
000026C3  52                push dx
000026C4  51                push cx
000026C5  53                push bx
000026C6  50                push ax
000026C7  8BEC              mov bp,sp
000026C9  8B7E18            mov di,[bp+0x18]
000026CC  8E461A            mov es,[bp+0x1a]
000026CF  B90A00            mov cx,0xa
000026D2  268F05            pop word [es:di]
000026D5  47                inc di
000026D6  47                inc di
000026D7  E2F9              loop 0x26d2
000026D9  5B                pop bx
000026DA  5D                pop bp
000026DB  5F                pop di
000026DC  07                pop es
000026DD  1F                pop ds
000026DE  FFE3              jmp bx
000026E0  3BC1              cmp ax,cx
000026E2  7301              jnc 0x26e5
000026E4  C3                ret
000026E5  B208              mov dl,0x8
000026E7  E9D100            jmp word 0x27bb
000026EA  3BC1              cmp ax,cx
000026EC  7C05              jl 0x26f3
000026EE  3BC2              cmp ax,dx
000026F0  7F01              jg 0x26f3
000026F2  C3                ret
000026F3  B209              mov dl,0x9
000026F5  E9C300            jmp word 0x27bb
000026F8  8BC4              mov ax,sp
000026FA  2BC1              sub ax,cx
000026FC  7214              jc 0x2712
000026FE  3D0002            cmp ax,0x200
00002701  720F              jc 0x2712
00002703  B104              mov cl,0x4
00002705  D3E8              shr ax,cl
00002707  8CD1              mov cx,ss
00002709  03C1              add ax,cx
0000270B  3B06D900          cmp ax,[0xd9]
0000270F  7201              jc 0x2712
00002711  C3                ret
00002712  B20A              mov dl,0xa
00002714  E9A400            jmp word 0x27bb
00002717  5B                pop bx
00002718  58                pop ax
00002719  9D                popfw
0000271A  53                push bx
0000271B  FF36CE00          push word [0xce]
0000271F  C706CE000000      mov word [0xce],0x0
00002725  4C                dec sp
00002726  E844DC            call word 0x36d
00002729  0BC0              or ax,ax
0000272B  7404              jz 0x2731
0000272D  4C                dec sp
0000272E  E858DC            call word 0x389
00002731  8F06CE00          pop word [0xce]
00002735  3C03              cmp al,0x3
00002737  7401              jz 0x273a
00002739  C3                ret
0000273A  8F06D100          pop word [0xd1]
0000273E  E8DB00            call word 0x281c
00002741  E870DA            call word 0x1b4
00002744  5E                pop si
00002745  43                inc bx
00002746  0D0A55            or ax,0x550a
00002749  7365              jnc 0x27b0
0000274B  7220              jc 0x276d
0000274D  627265            bound si,[bp+si+0x65]
00002750  61                popaw
00002751  6B00E9            imul ax,[bx+si],byte -0x17
00002754  9D                popfw
00002755  00F7              add bh,dh
00002757  06                push es
00002758  CE                into
00002759  0004              add [si],al
0000275B  007501            add [di+0x1],dh
0000275E  CF                iretw
0000275F  FB                sti
00002760  EBDC              jmp short 0x273e
00002762  A0D000            mov al,[0xd0]
00002765  C606D00000        mov byte [0xd0],0x0
0000276A  32E4              xor ah,ah
0000276C  C3                ret
0000276D  803ED00000        cmp byte [0xd0],0x0
00002772  7514              jnz 0x2788
00002774  C3                ret
00002775  009001F1          add [bx+si-0xeff],dl
00002779  FF02              inc word [bp+si]
0000277B  0399F010          add bx,[bx+di+0x10f0]
0000277F  99                cwd
00002780  F299              repne cwd
00002782  F091              lock xchg ax,cx
00002784  0420              add al,0x20
00002786  2122              and [bp+si],sp
00002788  8F06D100          pop word [0xd1]
0000278C  8A16D000          mov dl,[0xd0]
00002790  E88900            call word 0x281c
00002793  8AC2              mov al,dl
00002795  BB7527            mov bx,0x2775
00002798  2ED7              cs xlatb
0000279A  8AD0              mov dl,al
0000279C  E815DA            call word 0x1b4
0000279F  0D0A49            or ax,0x490a
000027A2  2F                das
000027A3  4F                dec di
000027A4  00EB              add bl,ch
000027A6  325B58            xor bl,[bp+di+0x58]
000027A9  9D                popfw
000027AA  53                push bx
000027AB  B204              mov dl,0x4
000027AD  EB0C              jmp short 0x27bb
000027AF  0010              add [bx+si],dl
000027B1  1101              adc [bx+di],ax
000027B3  0203              add al,[bp+di]
000027B5  0492              add al,0x92
000027B7  90                nop
000027B8  91                xchg ax,cx
000027B9  FFF0              push ax
000027BB  8F06D100          pop word [0xd1]
000027BF  E85A00            call word 0x281c
000027C2  8AC2              mov al,dl
000027C4  BBAF27            mov bx,0x27af
000027C7  2ED7              cs xlatb
000027C9  8AD0              mov dl,al
000027CB  E8E6D9            call word 0x1b4
000027CE  0D0A52            or ax,0x520a
000027D1  756E              jnz 0x2841
000027D3  2D7469            sub ax,0x6974
000027D6  6D                insw
000027D7  6500832ED1        add [gs:bp+di-0x2ed2],al
000027DC  0003              add [bp+di],al
000027DE  E8D3D9            call word 0x1b4
000027E1  206572            and [di+0x72],ah
000027E4  726F              jc 0x2855
000027E6  7220              jc 0x2808
000027E8  008AC2E8          add [bp+si-0x173e],cl
000027EC  1BE3              sbb sp,bx
000027EE  C6066601FF        mov byte [0x166],0xff
000027F3  E8BED9            call word 0x1b4
000027F6  2C20              sub al,0x20
000027F8  50                push ax
000027F9  43                inc bx
000027FA  3D00A1            cmp ax,0xa100
000027FD  D100              rol word [bx+si],1
000027FF  E800E3            call word 0xb02
00002802  E8AFD9            call word 0x1b4
00002805  0D0A50            or ax,0x500a
00002808  726F              jc 0x2879
0000280A  677261            jc 0x286e
0000280D  6D                insw
0000280E  206162            and [bx+di+0x62],ah
00002811  6F                outsw
00002812  7274              jc 0x2888
00002814  65640D0A00        fs or ax,0xa
00002819  E9FFE3            jmp word 0xc1b
0000281C  52                push dx
0000281D  8126CE00FBFF      and word [0xce],0xfffb
00002823  E8A6E1            call word 0x9cc
00002826  5A                pop dx
00002827  C3                ret
00002828  E803E3            call word 0xb2e
0000282B  0000              add [bx+si],al
0000282D  1306090F          adc ax,[0xf09]
00002831  0E                push cs
00002832  07                pop es
00002833  680100            push word 0x1
00002836  0400              add al,0x0
00002838  40                inc ax
00002839  8BEC              mov bp,sp
0000283B  E96648            jmp word 0x70a4
0000283E  55                push bp
0000283F  8BEC              mov bp,sp
00002841  55                push bp
00002842  E90000            jmp word 0x2845
00002845  E8D3E3            call word 0xc1b
00002848  E90000            jmp word 0x284b
0000284B  8BE5              mov sp,bp
0000284D  5D                pop bp
0000284E  C3                ret
0000284F  55                push bp
00002850  8BEC              mov bp,sp
00002852  55                push bp
00002853  E90000            jmp word 0x2856
00002856  83EC14            sub sp,byte +0x14
00002859  8D7EEA            lea di,[bp-0x16]
0000285C  16                push ss
0000285D  57                push di
0000285E  C47EE6            les di,[bp-0x1a]
00002861  06                push es
00002862  57                push di
00002863  B82C00            mov ax,0x2c
00002866  B90800            mov cx,0x8
00002869  D3E0              shl ax,cl
0000286B  5F                pop di
0000286C  07                pop es
0000286D  268905            mov [es:di],ax
00002870  8D7EEA            lea di,[bp-0x16]
00002873  16                push ss
00002874  E82BFE            call word 0x26a2
00002877  CD21              int 0x21
00002879  E841FE            call word 0x26bd
0000287C  C47E08            les di,[bp+0x8]
0000287F  06                push es
00002880  57                push di
00002881  C47EE6            les di,[bp-0x1a]
00002884  268B4504          mov ax,[es:di+0x4]
00002888  5F                pop di
00002889  07                pop es
0000288A  268905            mov [es:di],ax
0000288D  C47E04            les di,[bp+0x4]
00002890  06                push es
00002891  57                push di
00002892  C47EE6            les di,[bp-0x1a]
00002895  268B4506          mov ax,[es:di+0x6]
00002899  5F                pop di
0000289A  07                pop es
0000289B  268905            mov [es:di],ax
0000289E  58                pop ax
0000289F  58                pop ax
000028A0  E90000            jmp word 0x28a3
000028A3  8BE5              mov sp,bp
000028A5  5D                pop bp
000028A6  C20800            ret 0x8
000028A9  55                push bp
000028AA  8BEC              mov bp,sp
000028AC  55                push bp
000028AD  E90000            jmp word 0x28b0
000028B0  B92200            mov cx,0x22
000028B3  E842FE            call word 0x26f8
000028B6  BF7210            mov di,0x1072
000028B9  1E                push ds
000028BA  57                push di
000028BB  BF7410            mov di,0x1074
000028BE  1E                push ds
000028BF  57                push di
000028C0  E88CFF            call word 0x284f
000028C3  E90000            jmp word 0x28c6
000028C6  8BE5              mov sp,bp
000028C8  5D                pop bp
000028C9  C3                ret
000028CA  55                push bp
000028CB  8BEC              mov bp,sp
000028CD  55                push bp
000028CE  E90000            jmp word 0x28d1
000028D1  83EC12            sub sp,byte +0x12
000028D4  B92200            mov cx,0x22
000028D7  E81EFE            call word 0x26f8
000028DA  8D7EFC            lea di,[bp-0x4]
000028DD  16                push ss
000028DE  57                push di
000028DF  8D7EFA            lea di,[bp-0x6]
000028E2  16                push ss
000028E3  57                push di
000028E4  E868FF            call word 0x284f
000028E7  8B46FC            mov ax,[bp-0x4]
000028EA  8AC4              mov al,ah
000028EC  32E4              xor ah,ah
000028EE  50                push ax
000028EF  A17210            mov ax,[0x1072]
000028F2  8AC4              mov al,ah
000028F4  32E4              xor ah,ah
000028F6  59                pop cx
000028F7  91                xchg ax,cx
000028F8  2BC1              sub ax,cx
000028FA  8946F8            mov [bp-0x8],ax
000028FD  8B46FC            mov ax,[bp-0x4]
00002900  32E4              xor ah,ah
00002902  50                push ax
00002903  A17210            mov ax,[0x1072]
00002906  32E4              xor ah,ah
00002908  59                pop cx
00002909  91                xchg ax,cx
0000290A  2BC1              sub ax,cx
0000290C  8946F6            mov [bp-0xa],ax
0000290F  8B46FA            mov ax,[bp-0x6]
00002912  8AC4              mov al,ah
00002914  32E4              xor ah,ah
00002916  50                push ax
00002917  A17410            mov ax,[0x1074]
0000291A  8AC4              mov al,ah
0000291C  32E4              xor ah,ah
0000291E  59                pop cx
0000291F  91                xchg ax,cx
00002920  2BC1              sub ax,cx
00002922  8946F4            mov [bp-0xc],ax
00002925  8B46FA            mov ax,[bp-0x6]
00002928  32E4              xor ah,ah
0000292A  50                push ax
0000292B  A17410            mov ax,[0x1074]
0000292E  32E4              xor ah,ah
00002930  59                pop cx
00002931  91                xchg ax,cx
00002932  2BC1              sub ax,cx
00002934  8946F2            mov [bp-0xe],ax
00002937  8D7EEC            lea di,[bp-0x14]
0000293A  16                push ss
0000293B  57                push di
0000293C  8B46F8            mov ax,[bp-0x8]
0000293F  50                push ax
00002940  E863EB            call word 0x14a6
00002943  96                xchg ax,si
00002944  0000              add [bx+si],al
00002946  00BA5BE8          add [bp+si-0x17a5],bh
0000294A  C5                db 0xc5
0000294B  EC                in al,dx
0000294C  E894EB            call word 0x14e3
0000294F  8B46F6            mov ax,[bp-0xa]
00002952  50                push ax
00002953  E850EB            call word 0x14a6
00002956  90                nop
00002957  0000              add [bx+si],al
00002959  00606A            add [bx+si+0x6a],ah
0000295C  E8B2EC            call word 0x1611
0000295F  E881EB            call word 0x14e3
00002962  E865EB            call word 0x14ca
00002965  8B46F4            mov ax,[bp-0xc]
00002968  50                push ax
00002969  E83AEB            call word 0x14a6
0000296C  8A00              mov al,[bx+si]
0000296E  0000              add [bx+si],al
00002970  007AE8            add [bp+si-0x18],bh
00002973  9C                pushfw
00002974  EC                in al,dx
00002975  E86BEB            call word 0x14e3
00002978  E84FEB            call word 0x14ca
0000297B  8B46F2            mov ax,[bp-0xe]
0000297E  50                push ax
0000297F  E824EB            call word 0x14a6
00002982  8400              test [bx+si],al
00002984  0000              add [bx+si],al
00002986  0020              add [bx+si],ah
00002988  E886EC            call word 0x1611
0000298B  E855EB            call word 0x14e3
0000298E  E839EB            call word 0x14ca
00002991  E823EB            call word 0x14b7
00002994  8D7EEC            lea di,[bp-0x14]
00002997  16                push ss
00002998  E8FCEA            call word 0x1497
0000299B  B80000            mov ax,0x0
0000299E  E866EC            call word 0x1607
000029A1  E8BBEB            call word 0x155f
000029A4  7503              jnz 0x29a9
000029A6  E91B00            jmp word 0x29c4
000029A9  8D7EEC            lea di,[bp-0x14]
000029AC  16                push ss
000029AD  57                push di
000029AE  8D7EEC            lea di,[bp-0x14]
000029B1  16                push ss
000029B2  E8E2EA            call word 0x1497
000029B5  E8EEEA            call word 0x14a6
000029B8  9B0000            wait add [bx+si],al
000029BB  80CB24            or bl,0x24
000029BE  E809EB            call word 0x14ca
000029C1  E8F3EA            call word 0x14b7
000029C4  8D7E04            lea di,[bp+0x4]
000029C7  16                push ss
000029C8  57                push di
000029C9  8D7EEC            lea di,[bp-0x14]
000029CC  16                push ss
000029CD  E8C7EA            call word 0x1497
000029D0  E8E4EA            call word 0x14b7
000029D3  E90000            jmp word 0x29d6
000029D6  8BE5              mov sp,bp
000029D8  5D                pop bp
000029D9  C3                ret
000029DA  55                push bp
000029DB  8BEC              mov bp,sp
000029DD  55                push bp
000029DE  E90000            jmp word 0x29e1
000029E1  B80100            mov ax,0x1
000029E4  F76E04            imul word [bp+0x4]
000029E7  E88FDA            call word 0x479
000029EA  E90000            jmp word 0x29ed
000029ED  8BE5              mov sp,bp
000029EF  5D                pop bp
000029F0  C20200            ret 0x2
000029F3  55                push bp
000029F4  8BEC              mov bp,sp
000029F6  55                push bp
000029F7  E90000            jmp word 0x29fa
000029FA  83EC19            sub sp,byte +0x19
000029FD  C47E04            les di,[bp+0x4]
00002A00  06                push es
00002A01  57                push di
00002A02  B80000            mov ax,0x0
00002A05  B90000            mov cx,0x0
00002A08  BA0100            mov dx,0x1
00002A0B  E8DCFC            call word 0x26ea
00002A0E  5F                pop di
00002A0F  07                pop es
00002A10  268805            mov [es:di],al
00002A13  E828F4            call word 0x1e3e
00002A16  8D7EE5            lea di,[bp-0x1b]
00002A19  16                push ss
00002A1A  B114              mov cl,0x14
00002A1C  E87CF6            call word 0x209b
00002A1F  E84BFD            call word 0x276d
00002A22  8D7EE5            lea di,[bp-0x1b]
00002A25  16                push ss
00002A26  E8FEE2            call word 0xd27
00002A29  E814E3            call word 0xd40
00002A2C  00E8              add al,ch
00002A2E  AB                stosw
00002A2F  E375              jcxz 0x2aa6
00002A31  03E9              add bp,cx
00002A33  0900              or [bx+si],ax
00002A35  8B4608            mov ax,[bp+0x8]
00002A38  89460A            mov [bp+0xa],ax
00002A3B  E93800            jmp word 0x2a76
00002A3E  8D7EE5            lea di,[bp-0x1b]
00002A41  16                push ss
00002A42  E8E2E2            call word 0xd27
00002A45  8D7EFC            lea di,[bp-0x4]
00002A48  16                push ss
00002A49  57                push di
00002A4A  8D7EFA            lea di,[bp-0x6]
00002A4D  16                push ss
00002A4E  E887FB            call word 0x25d8
00002A51  C47E04            les di,[bp+0x4]
00002A54  06                push es
00002A55  57                push di
00002A56  8B46FA            mov ax,[bp-0x6]
00002A59  3D0000            cmp ax,0x0
00002A5C  B80100            mov ax,0x1
00002A5F  7501              jnz 0x2a62
00002A61  48                dec ax
00002A62  B90000            mov cx,0x0
00002A65  BA0100            mov dx,0x1
00002A68  E87FFC            call word 0x26ea
00002A6B  5F                pop di
00002A6C  07                pop es
00002A6D  268805            mov [es:di],al
00002A70  8B46FC            mov ax,[bp-0x4]
00002A73  89460A            mov [bp+0xa],ax
00002A76  E90000            jmp word 0x2a79
00002A79  8B460A            mov ax,[bp+0xa]
00002A7C  8BE5              mov sp,bp
00002A7E  5D                pop bp
00002A7F  C20800            ret 0x8
00002A82  55                push bp
00002A83  8BEC              mov bp,sp
00002A85  55                push bp
00002A86  E90000            jmp word 0x2a89
00002A89  B92700            mov cx,0x27
00002A8C  E869FC            call word 0x26f8
00002A8F  50                push ax
00002A90  8B4608            mov ax,[bp+0x8]
00002A93  50                push ax
00002A94  C47E04            les di,[bp+0x4]
00002A97  06                push es
00002A98  57                push di
00002A99  E857FF            call word 0x29f3
00002A9C  89460A            mov [bp+0xa],ax
00002A9F  E8DDF3            call word 0x1e7f
00002AA2  E897F7            call word 0x223c
00002AA5  E8C5FC            call word 0x276d
00002AA8  E90000            jmp word 0x2aab
00002AAB  8B460A            mov ax,[bp+0xa]
00002AAE  8BE5              mov sp,bp
00002AB0  5D                pop bp
00002AB1  C20800            ret 0x8
00002AB4  55                push bp
00002AB5  8BEC              mov bp,sp
00002AB7  55                push bp
00002AB8  E90000            jmp word 0x2abb
00002ABB  50                push ax
00002ABC  C47E04            les di,[bp+0x4]
00002ABF  06                push es
00002AC0  57                push di
00002AC1  B80000            mov ax,0x0
00002AC4  B90000            mov cx,0x0
00002AC7  BA0100            mov dx,0x1
00002ACA  E81DFC            call word 0x26ea
00002ACD  5F                pop di
00002ACE  07                pop es
00002ACF  268805            mov [es:di],al
00002AD2  E890FA            call word 0x2565
00002AD5  7503              jnz 0x2ada
00002AD7  E9D000            jmp word 0x2baa
00002ADA  BFBB00            mov di,0xbb
00002ADD  1E                push ds
00002ADE  E872F3            call word 0x1e53
00002AE1  8D7EFD            lea di,[bp-0x3]
00002AE4  16                push ss
00002AE5  E856F5            call word 0x203e
00002AE8  E882FC            call word 0x276d
00002AEB  8A46FD            mov al,[bp-0x3]
00002AEE  32E4              xor ah,ah
00002AF0  3D1300            cmp ax,0x13
00002AF3  7403              jz 0x2af8
00002AF5  E98600            jmp word 0x2b7e
00002AF8  B80000            mov ax,0x0
00002AFB  B90000            mov cx,0x0
00002AFE  BA0100            mov dx,0x1
00002B01  E8E6FB            call word 0x26ea
00002B04  8846FC            mov [bp-0x4],al
00002B07  BFBB00            mov di,0xbb
00002B0A  1E                push ds
00002B0B  E845F3            call word 0x1e53
00002B0E  8D7EFD            lea di,[bp-0x3]
00002B11  16                push ss
00002B12  E829F5            call word 0x203e
00002B15  E855FC            call word 0x276d
00002B18  8A46FD            mov al,[bp-0x3]
00002B1B  32E4              xor ah,ah
00002B1D  3D0100            cmp ax,0x1
00002B20  7403              jz 0x2b25
00002B22  E91900            jmp word 0x2b3e
00002B25  C47E04            les di,[bp+0x4]
00002B28  06                push es
00002B29  57                push di
00002B2A  B80100            mov ax,0x1
00002B2D  B90000            mov cx,0x0
00002B30  BA0100            mov dx,0x1
00002B33  E8B4FB            call word 0x26ea
00002B36  5F                pop di
00002B37  07                pop es
00002B38  268805            mov [es:di],al
00002B3B  E92500            jmp word 0x2b63
00002B3E  3D1100            cmp ax,0x11
00002B41  7403              jz 0x2b46
00002B43  E91200            jmp word 0x2b58
00002B46  B80100            mov ax,0x1
00002B49  B90000            mov cx,0x0
00002B4C  BA0100            mov dx,0x1
00002B4F  E898FB            call word 0x26ea
00002B52  8846FC            mov [bp-0x4],al
00002B55  E90B00            jmp word 0x2b63
00002B58  3D0300            cmp ax,0x3
00002B5B  7403              jz 0x2b60
00002B5D  E90300            jmp word 0x2b63
00002B60  E8B8E0            call word 0xc1b
00002B63  8A46FC            mov al,[bp-0x4]
00002B66  32E4              xor ah,ah
00002B68  50                push ax
00002B69  C47E04            les di,[bp+0x4]
00002B6C  268A05            mov al,[es:di]
00002B6F  32E4              xor ah,ah
00002B71  59                pop cx
00002B72  0BC1              or ax,cx
00002B74  0BC0              or ax,ax
00002B76  7503              jnz 0x2b7b
00002B78  E98CFF            jmp word 0x2b07
00002B7B  E92C00            jmp word 0x2baa
00002B7E  3D0300            cmp ax,0x3
00002B81  7403              jz 0x2b86
00002B83  E90600            jmp word 0x2b8c
00002B86  E892E0            call word 0xc1b
00002B89  E91E00            jmp word 0x2baa
00002B8C  3D0100            cmp ax,0x1
00002B8F  7403              jz 0x2b94
00002B91  E91600            jmp word 0x2baa
00002B94  C47E04            les di,[bp+0x4]
00002B97  06                push es
00002B98  57                push di
00002B99  B80100            mov ax,0x1
00002B9C  B90000            mov cx,0x0
00002B9F  BA0100            mov dx,0x1
00002BA2  E845FB            call word 0x26ea
00002BA5  5F                pop di
00002BA6  07                pop es
00002BA7  268805            mov [es:di],al
00002BAA  E90000            jmp word 0x2bad
00002BAD  8BE5              mov sp,bp
00002BAF  5D                pop bp
00002BB0  C20400            ret 0x4
00002BB3  55                push bp
00002BB4  8BEC              mov bp,sp
00002BB6  55                push bp
00002BB7  E90000            jmp word 0x2bba
00002BBA  C47E08            les di,[bp+0x8]
00002BBD  06                push es
00002BBE  5A                pop dx
00002BBF  97                xchg ax,di
00002BC0  52                push dx
00002BC1  50                push ax
00002BC2  C47E04            les di,[bp+0x4]
00002BC5  06                push es
00002BC6  5A                pop dx
00002BC7  97                xchg ax,di
00002BC8  5B                pop bx
00002BC9  59                pop cx
00002BCA  E899E5            call word 0x1166
00002BCD  B90000            mov cx,0x0
00002BD0  BA0100            mov dx,0x1
00002BD3  E814FB            call word 0x26ea
00002BD6  88460C            mov [bp+0xc],al
00002BD9  E90000            jmp word 0x2bdc
00002BDC  8A460C            mov al,[bp+0xc]
00002BDF  32E4              xor ah,ah
00002BE1  0BC0              or ax,ax
00002BE3  8BE5              mov sp,bp
00002BE5  5D                pop bp
00002BE6  C20900            ret 0x9
00002BE9  55                push bp
00002BEA  8BEC              mov bp,sp
00002BEC  55                push bp
00002BED  E90000            jmp word 0x2bf0
00002BF0  50                push ax
00002BF1  8B460A            mov ax,[bp+0xa]
00002BF4  50                push ax
00002BF5  8B4608            mov ax,[bp+0x8]
00002BF8  E864D7            call word 0x35f
00002BFB  E881F2            call word 0x1e7f
00002BFE  B8C900            mov ax,0xc9
00002C01  50                push ax
00002C02  B80000            mov ax,0x0
00002C05  E87BF5            call word 0x2183
00002C08  E862FB            call word 0x276d
00002C0B  8B460A            mov ax,[bp+0xa]
00002C0E  050100            add ax,0x1
00002C11  50                push ax
00002C12  8B4606            mov ax,[bp+0x6]
00002C15  2D0100            sub ax,0x1
00002C18  59                pop cx
00002C19  91                xchg ax,cx
00002C1A  2BC8              sub cx,ax
00002C1C  7D03              jnl 0x2c21
00002C1E  E91F00            jmp word 0x2c40
00002C21  41                inc cx
00002C22  8946FC            mov [bp-0x4],ax
00002C25  51                push cx
00002C26  E856F2            call word 0x1e7f
00002C29  B8CD00            mov ax,0xcd
00002C2C  50                push ax
00002C2D  B80000            mov ax,0x0
00002C30  E850F5            call word 0x2183
00002C33  E837FB            call word 0x276d
00002C36  59                pop cx
00002C37  49                dec cx
00002C38  7406              jz 0x2c40
00002C3A  FF46FC            inc word [bp-0x4]
00002C3D  E9E5FF            jmp word 0x2c25
00002C40  E83CF2            call word 0x1e7f
00002C43  B8BB00            mov ax,0xbb
00002C46  50                push ax
00002C47  B80000            mov ax,0x0
00002C4A  E836F5            call word 0x2183
00002C4D  E81DFB            call word 0x276d
00002C50  8B4608            mov ax,[bp+0x8]
00002C53  050100            add ax,0x1
00002C56  50                push ax
00002C57  8B4604            mov ax,[bp+0x4]
00002C5A  2D0100            sub ax,0x1
00002C5D  59                pop cx
00002C5E  91                xchg ax,cx
00002C5F  2BC8              sub cx,ax
00002C61  7D03              jnl 0x2c66
00002C63  E94300            jmp word 0x2ca9
00002C66  41                inc cx
00002C67  8946FC            mov [bp-0x4],ax
00002C6A  51                push cx
00002C6B  8B460A            mov ax,[bp+0xa]
00002C6E  50                push ax
00002C6F  8B46FC            mov ax,[bp-0x4]
00002C72  E8EAD6            call word 0x35f
00002C75  E807F2            call word 0x1e7f
00002C78  B8BA00            mov ax,0xba
00002C7B  50                push ax
00002C7C  B80000            mov ax,0x0
00002C7F  E801F5            call word 0x2183
00002C82  E8E8FA            call word 0x276d
00002C85  8B4606            mov ax,[bp+0x6]
00002C88  50                push ax
00002C89  8B46FC            mov ax,[bp-0x4]
00002C8C  E8D0D6            call word 0x35f
00002C8F  E8EDF1            call word 0x1e7f
00002C92  B8BA00            mov ax,0xba
00002C95  50                push ax
00002C96  B80000            mov ax,0x0
00002C99  E8E7F4            call word 0x2183
00002C9C  E8CEFA            call word 0x276d
00002C9F  59                pop cx
00002CA0  49                dec cx
00002CA1  7406              jz 0x2ca9
00002CA3  FF46FC            inc word [bp-0x4]
00002CA6  E9C1FF            jmp word 0x2c6a
00002CA9  8B460A            mov ax,[bp+0xa]
00002CAC  50                push ax
00002CAD  8B4604            mov ax,[bp+0x4]
00002CB0  E8ACD6            call word 0x35f
00002CB3  E8C9F1            call word 0x1e7f
00002CB6  B8C800            mov ax,0xc8
00002CB9  50                push ax
00002CBA  B80000            mov ax,0x0
00002CBD  E8C3F4            call word 0x2183
00002CC0  E8AAFA            call word 0x276d
00002CC3  8B460A            mov ax,[bp+0xa]
00002CC6  050100            add ax,0x1
00002CC9  50                push ax
00002CCA  8B4606            mov ax,[bp+0x6]
00002CCD  2D0100            sub ax,0x1
00002CD0  59                pop cx
00002CD1  91                xchg ax,cx
00002CD2  2BC8              sub cx,ax
00002CD4  7D03              jnl 0x2cd9
00002CD6  E91F00            jmp word 0x2cf8
00002CD9  41                inc cx
00002CDA  8946FC            mov [bp-0x4],ax
00002CDD  51                push cx
00002CDE  E89EF1            call word 0x1e7f
00002CE1  B8CD00            mov ax,0xcd
00002CE4  50                push ax
00002CE5  B80000            mov ax,0x0
00002CE8  E898F4            call word 0x2183
00002CEB  E87FFA            call word 0x276d
00002CEE  59                pop cx
00002CEF  49                dec cx
00002CF0  7406              jz 0x2cf8
00002CF2  FF46FC            inc word [bp-0x4]
00002CF5  E9E5FF            jmp word 0x2cdd
00002CF8  E884F1            call word 0x1e7f
00002CFB  B8BC00            mov ax,0xbc
00002CFE  50                push ax
00002CFF  B80000            mov ax,0x0
00002D02  E87EF4            call word 0x2183
00002D05  E865FA            call word 0x276d
00002D08  E90000            jmp word 0x2d0b
00002D0B  8BE5              mov sp,bp
00002D0D  5D                pop bp
00002D0E  C20800            ret 0x8
00002D11  55                push bp
00002D12  8BEC              mov bp,sp
00002D14  55                push bp
00002D15  E90000            jmp word 0x2d18
00002D18  83EC30            sub sp,byte +0x30
00002D1B  8D7ECE            lea di,[bp-0x32]
00002D1E  16                push ss
00002D1F  57                push di
00002D20  8D7E04            lea di,[bp+0x4]
00002D23  16                push ss
00002D24  E800E0            call word 0xd27
00002D27  E845F5            call word 0x226f
00002D2A  8D7ECE            lea di,[bp-0x32]
00002D2D  16                push ss
00002D2E  57                push di
00002D2F  B88000            mov ax,0x80
00002D32  E818F7            call word 0x244d
00002D35  E82AFA            call word 0x2762
00002D38  3D0000            cmp ax,0x0
00002D3B  B80100            mov ax,0x1
00002D3E  7401              jz 0x2d41
00002D40  48                dec ax
00002D41  B90000            mov cx,0x0
00002D44  BA0100            mov dx,0x1
00002D47  E8A0F9            call word 0x26ea
00002D4A  884619            mov [bp+0x19],al
00002D4D  8D7ECE            lea di,[bp-0x32]
00002D50  16                push ss
00002D51  E887F5            call word 0x22db
00002D54  E816FA            call word 0x276d
00002D57  E90000            jmp word 0x2d5a
00002D5A  8A4619            mov al,[bp+0x19]
00002D5D  32E4              xor ah,ah
00002D5F  0BC0              or ax,ax
00002D61  8BE5              mov sp,bp
00002D63  5D                pop bp
00002D64  C21600            ret 0x16
00002D67  55                push bp
00002D68  8BEC              mov bp,sp
00002D6A  55                push bp
00002D6B  E90000            jmp word 0x2d6e
00002D6E  C47E04            les di,[bp+0x4]
00002D71  06                push es
00002D72  57                push di
00002D73  8A460A            mov al,[bp+0xa]
00002D76  32E4              xor ah,ah
00002D78  B90800            mov cx,0x8
00002D7B  D3E0              shl ax,cl
00002D7D  50                push ax
00002D7E  8A4608            mov al,[bp+0x8]
00002D81  32E4              xor ah,ah
00002D83  59                pop cx
00002D84  03C1              add ax,cx
00002D86  5F                pop di
00002D87  07                pop es
00002D88  268905            mov [es:di],ax
00002D8B  E90000            jmp word 0x2d8e
00002D8E  8BE5              mov sp,bp
00002D90  5D                pop bp
00002D91  C20800            ret 0x8
00002D94  55                push bp
00002D95  8BEC              mov bp,sp
00002D97  55                push bp
00002D98  E90000            jmp word 0x2d9b
00002D9B  C47E0A            les di,[bp+0xa]
00002D9E  06                push es
00002D9F  57                push di
00002DA0  8B4604            mov ax,[bp+0x4]
00002DA3  B90800            mov cx,0x8
00002DA6  D3E8              shr ax,cl
00002DA8  B90000            mov cx,0x0
00002DAB  BAFF00            mov dx,0xff
00002DAE  E839F9            call word 0x26ea
00002DB1  5F                pop di
00002DB2  07                pop es
00002DB3  268805            mov [es:di],al
00002DB6  C47E06            les di,[bp+0x6]
00002DB9  06                push es
00002DBA  57                push di
00002DBB  8B4604            mov ax,[bp+0x4]
00002DBE  86C4              xchg al,ah
00002DC0  B90800            mov cx,0x8
00002DC3  D3E8              shr ax,cl
00002DC5  B90000            mov cx,0x0
00002DC8  BAFF00            mov dx,0xff
00002DCB  E81CF9            call word 0x26ea
00002DCE  5F                pop di
00002DCF  07                pop es
00002DD0  268805            mov [es:di],al
00002DD3  E90000            jmp word 0x2dd6
00002DD6  8BE5              mov sp,bp
00002DD8  5D                pop bp
00002DD9  C20A00            ret 0xa
00002DDC  55                push bp
00002DDD  8BEC              mov bp,sp
00002DDF  55                push bp
00002DE0  E90000            jmp word 0x2de3
00002DE3  B8DC05            mov ax,0x5dc
00002DE6  E8C8D8            call word 0x6b1
00002DE9  B90800            mov cx,0x8
00002DEC  E809F9            call word 0x26f8
00002DEF  B83200            mov ax,0x32
00002DF2  50                push ax
00002DF3  E8E4FB            call word 0x29da
00002DF6  E8DFD8            call word 0x6d8
00002DF9  E90000            jmp word 0x2dfc
00002DFC  8BE5              mov sp,bp
00002DFE  5D                pop bp
00002DFF  C3                ret
00002E00  55                push bp
00002E01  8BEC              mov bp,sp
00002E03  55                push bp
00002E04  E90000            jmp word 0x2e07
00002E07  B88403            mov ax,0x384
00002E0A  E8A4D8            call word 0x6b1
00002E0D  B90800            mov cx,0x8
00002E10  E8E5F8            call word 0x26f8
00002E13  B8C800            mov ax,0xc8
00002E16  50                push ax
00002E17  E8C0FB            call word 0x29da
00002E1A  E8BBD8            call word 0x6d8
00002E1D  E90000            jmp word 0x2e20
00002E20  8BE5              mov sp,bp
00002E22  5D                pop bp
00002E23  C3                ret
00002E24  55                push bp
00002E25  8BEC              mov bp,sp
00002E27  55                push bp
00002E28  E90000            jmp word 0x2e2b
00002E2B  4C                dec sp
00002E2C  B90600            mov cx,0x6
00002E2F  E8C6F8            call word 0x26f8
00002E32  E8A7FF            call word 0x2ddc
00002E35  E847F0            call word 0x1e7f
00002E38  E8EBF3            call word 0x2226
00002E3B  1F                pop ds
00002E3C  202E2E2E          and [0x2e2e],ch
00002E40  207072            and [bx+si+0x72],dh
00002E43  657373            gs jnc 0x2eb9
00002E46  20616E            and [bx+di+0x6e],ah
00002E49  7920              jns 0x2e6b
00002E4B  6B657920          imul sp,[di+0x79],byte +0x20
00002E4F  746F              jz 0x2ec0
00002E51  20636F            and [bp+di+0x6f],ah
00002E54  6E                outsb
00002E55  7469              jz 0x2ec0
00002E57  6E                outsb
00002E58  7565              jnz 0x2ebf
00002E5A  20E8              and al,ch
00002E5C  0FF9BFBB00        psubw mm7,[bx+0xbb]
00002E61  1E                push ds
00002E62  E8EEEF            call word 0x1e53
00002E65  8D7EFD            lea di,[bp-0x3]
00002E68  16                push ss
00002E69  E8D2F1            call word 0x203e
00002E6C  E8FEF8            call word 0x276d
00002E6F  E80DF0            call word 0x1e7f
00002E72  E8C7F3            call word 0x223c
00002E75  E8F5F8            call word 0x276d
00002E78  E90000            jmp word 0x2e7b
00002E7B  8BE5              mov sp,bp
00002E7D  5D                pop bp
00002E7E  C3                ret
00002E7F  55                push bp
00002E80  8BEC              mov bp,sp
00002E82  55                push bp
00002E83  E90000            jmp word 0x2e86
00002E86  8A4604            mov al,[bp+0x4]
00002E89  32E4              xor ah,ah
00002E8B  50                push ax
00002E8C  E800D6            call word 0x48f
00002E8F  E8CDD4            call word 0x35f
00002E92  E90000            jmp word 0x2e95
00002E95  8BE5              mov sp,bp
00002E97  5D                pop bp
00002E98  C20200            ret 0x2
00002E9B  55                push bp
00002E9C  8BEC              mov bp,sp
00002E9E  55                push bp
00002E9F  E90000            jmp word 0x2ea2
00002EA2  4C                dec sp
00002EA3  E8DBD5            call word 0x481
00002EA6  2D0100            sub ax,0x1
00002EA9  B90800            mov cx,0x8
00002EAC  99                cwd
00002EAD  F7F9              idiv cx
00002EAF  B90000            mov cx,0x0
00002EB2  BAFF00            mov dx,0xff
00002EB5  E832F8            call word 0x26ea
00002EB8  8846FD            mov [bp-0x3],al
00002EBB  B80800            mov ax,0x8
00002EBE  50                push ax
00002EBF  8A46FD            mov al,[bp-0x3]
00002EC2  32E4              xor ah,ah
00002EC4  050100            add ax,0x1
00002EC7  59                pop cx
00002EC8  F7E9              imul cx
00002ECA  050100            add ax,0x1
00002ECD  B90000            mov cx,0x0
00002ED0  BAFF00            mov dx,0xff
00002ED3  E814F8            call word 0x26ea
00002ED6  8846FD            mov [bp-0x3],al
00002ED9  8A46FD            mov al,[bp-0x3]
00002EDC  32E4              xor ah,ah
00002EDE  3D5000            cmp ax,0x50
00002EE1  7F03              jg 0x2ee6
00002EE3  E90C00            jmp word 0x2ef2
00002EE6  E896EF            call word 0x1e7f
00002EE9  E850F3            call word 0x223c
00002EEC  E87EF8            call word 0x276d
00002EEF  E91800            jmp word 0x2f0a
00002EF2  B90800            mov cx,0x8
00002EF5  E800F8            call word 0x26f8
00002EF8  8A46FD            mov al,[bp-0x3]
00002EFB  32E4              xor ah,ah
00002EFD  B90100            mov cx,0x1
00002F00  BA5000            mov dx,0x50
00002F03  E8E4F7            call word 0x26ea
00002F06  50                push ax
00002F07  E875FF            call word 0x2e7f
00002F0A  E90000            jmp word 0x2f0d
00002F0D  8BE5              mov sp,bp
00002F0F  5D                pop bp
00002F10  C3                ret
00002F11  55                push bp
00002F12  8BEC              mov bp,sp
00002F14  55                push bp
00002F15  E90000            jmp word 0x2f18
00002F18  4C                dec sp
00002F19  BFBB00            mov di,0xbb
00002F1C  1E                push ds
00002F1D  E833EF            call word 0x1e53
00002F20  8D7EFD            lea di,[bp-0x3]
00002F23  16                push ss
00002F24  E817F1            call word 0x203e
00002F27  E843F8            call word 0x276d
00002F2A  8A46FD            mov al,[bp-0x3]
00002F2D  32E4              xor ah,ah
00002F2F  E84CD5            call word 0x47e
00002F32  B90000            mov cx,0x0
00002F35  BAFF00            mov dx,0xff
00002F38  E8AFF7            call word 0x26ea
00002F3B  884604            mov [bp+0x4],al
00002F3E  E90000            jmp word 0x2f41
00002F41  8A4604            mov al,[bp+0x4]
00002F44  32E4              xor ah,ah
00002F46  8BE5              mov sp,bp
00002F48  5D                pop bp
00002F49  C20100            ret 0x1
00002F4C  55                push bp
00002F4D  8BEC              mov bp,sp
00002F4F  55                push bp
00002F50  E90000            jmp word 0x2f53
00002F53  8A4604            mov al,[bp+0x4]
00002F56  32E4              xor ah,ah
00002F58  3D0000            cmp ax,0x0
00002F5B  B80100            mov ax,0x1
00002F5E  7401              jz 0x2f61
00002F60  48                dec ax
00002F61  50                push ax
00002F62  8A4604            mov al,[bp+0x4]
00002F65  32E4              xor ah,ah
00002F67  50                push ax
00002F68  C47E06            les di,[bp+0x6]
00002F6B  06                push es
00002F6C  E8B8DD            call word 0xd27
00002F6F  E849DF            call word 0xebb
00002F72  59                pop cx
00002F73  91                xchg ax,cx
00002F74  3BC1              cmp ax,cx
00002F76  B80100            mov ax,0x1
00002F79  7F01              jg 0x2f7c
00002F7B  48                dec ax
00002F7C  59                pop cx
00002F7D  0BC1              or ax,cx
00002F7F  0BC0              or ax,ax
00002F81  7503              jnz 0x2f86
00002F83  E91100            jmp word 0x2f97
00002F86  8D7E0A            lea di,[bp+0xa]
00002F89  16                push ss
00002F8A  57                push di
00002F8B  E8B2DD            call word 0xd40
00002F8E  00B1FFE8          add [bx+di-0x1701],dh
00002F92  C2DDE9            ret 0xe9dd
00002F95  3100              xor [bx+si],ax
00002F97  8D7E0A            lea di,[bp+0xa]
00002F9A  16                push ss
00002F9B  57                push di
00002F9C  C47E06            les di,[bp+0x6]
00002F9F  06                push es
00002FA0  E884DD            call word 0xd27
00002FA3  8A4604            mov al,[bp+0x4]
00002FA6  32E4              xor ah,ah
00002FA8  50                push ax
00002FA9  C47E06            les di,[bp+0x6]
00002FAC  06                push es
00002FAD  E877DD            call word 0xd27
00002FB0  E808DF            call word 0xebb
00002FB3  50                push ax
00002FB4  8A4604            mov al,[bp+0x4]
00002FB7  32E4              xor ah,ah
00002FB9  59                pop cx
00002FBA  91                xchg ax,cx
00002FBB  2BC1              sub ax,cx
00002FBD  050100            add ax,0x1
00002FC0  E8B9DE            call word 0xe7c
00002FC3  B1FF              mov cl,0xff
00002FC5  E88EDD            call word 0xd56
00002FC8  E90000            jmp word 0x2fcb
00002FCB  BA0600            mov dx,0x6
00002FCE  B1FF              mov cl,0xff
00002FD0  8BE5              mov sp,bp
00002FD2  5D                pop bp
00002FD3  E9FBDF            jmp word 0xfd1
00002FD6  55                push bp
00002FD7  8BEC              mov bp,sp
00002FD9  55                push bp
00002FDA  E90000            jmp word 0x2fdd
00002FDD  81EC0101          sub sp,0x101
00002FE1  8DBEFDFE          lea di,[bp-0x103]
00002FE5  16                push ss
00002FE6  57                push di
00002FE7  8D7E04            lea di,[bp+0x4]
00002FEA  16                push ss
00002FEB  E839DD            call word 0xd27
00002FEE  B1FF              mov cl,0xff
00002FF0  E863DD            call word 0xd56
00002FF3  B80100            mov ax,0x1
00002FF6  50                push ax
00002FF7  8D7E04            lea di,[bp+0x4]
00002FFA  16                push ss
00002FFB  E829DD            call word 0xd27
00002FFE  E8BADE            call word 0xebb
00003001  59                pop cx
00003002  91                xchg ax,cx
00003003  2BC8              sub cx,ax
00003005  7D03              jnl 0x300a
00003007  E93F00            jmp word 0x3049
0000300A  41                inc cx
0000300B  8846FD            mov [bp-0x3],al
0000300E  51                push cx
0000300F  8A46FD            mov al,[bp-0x3]
00003012  32E4              xor ah,ah
00003014  B90001            mov cx,0x100
00003017  E8C6F6            call word 0x26e0
0000301A  97                xchg ax,di
0000301B  57                push di
0000301C  8A46FD            mov al,[bp-0x3]
0000301F  32E4              xor ah,ah
00003021  B90001            mov cx,0x100
00003024  E8B9F6            call word 0x26e0
00003027  97                xchg ax,di
00003028  8A83FDFE          mov al,[bp+di-0x103]
0000302C  32E4              xor ah,ah
0000302E  E84DD4            call word 0x47e
00003031  B90000            mov cx,0x0
00003034  BAFF00            mov dx,0xff
00003037  E8B0F6            call word 0x26ea
0000303A  5F                pop di
0000303B  8883FDFE          mov [bp+di-0x103],al
0000303F  59                pop cx
00003040  49                dec cx
00003041  7406              jz 0x3049
00003043  FE46FD            inc byte [bp-0x3]
00003046  E9C5FF            jmp word 0x300e
00003049  8DBE0401          lea di,[bp+0x104]
0000304D  16                push ss
0000304E  57                push di
0000304F  8DBEFDFE          lea di,[bp-0x103]
00003053  16                push ss
00003054  E8D0DC            call word 0xd27
00003057  B1FF              mov cl,0xff
00003059  E8FADC            call word 0xd56
0000305C  E90000            jmp word 0x305f
0000305F  BA0001            mov dx,0x100
00003062  B1FF              mov cl,0xff
00003064  8BE5              mov sp,bp
00003066  5D                pop bp
00003067  E967DF            jmp word 0xfd1
0000306A  55                push bp
0000306B  8BEC              mov bp,sp
0000306D  55                push bp
0000306E  E90000            jmp word 0x3071
00003071  83EC18            sub sp,byte +0x18
00003074  8D7EEA            lea di,[bp-0x16]
00003077  16                push ss
00003078  57                push di
00003079  C47EE2            les di,[bp-0x1e]
0000307C  06                push es
0000307D  57                push di
0000307E  B80100            mov ax,0x1
00003081  B90800            mov cx,0x8
00003084  D3E0              shl ax,cl
00003086  5F                pop di
00003087  07                pop es
00003088  268905            mov [es:di],ax
0000308B  8A4606            mov al,[bp+0x6]
0000308E  32E4              xor ah,ah
00003090  B90000            mov cx,0x0
00003093  BAFF00            mov dx,0xff
00003096  E851F6            call word 0x26ea
00003099  8846E7            mov [bp-0x19],al
0000309C  8A4604            mov al,[bp+0x4]
0000309F  32E4              xor ah,ah
000030A1  B90000            mov cx,0x0
000030A4  BAFF00            mov dx,0xff
000030A7  E840F6            call word 0x26ea
000030AA  8846E6            mov [bp-0x1a],al
000030AD  B90E00            mov cx,0xe
000030B0  E845F6            call word 0x26f8
000030B3  8A46E7            mov al,[bp-0x19]
000030B6  32E4              xor ah,ah
000030B8  B90000            mov cx,0x0
000030BB  BAFF00            mov dx,0xff
000030BE  E829F6            call word 0x26ea
000030C1  50                push ax
000030C2  8A46E6            mov al,[bp-0x1a]
000030C5  32E4              xor ah,ah
000030C7  B90000            mov cx,0x0
000030CA  BAFF00            mov dx,0xff
000030CD  E81AF6            call word 0x26ea
000030D0  50                push ax
000030D1  C47EE2            les di,[bp-0x1e]
000030D4  83C704            add di,byte +0x4
000030D7  06                push es
000030D8  57                push di
000030D9  E88BFC            call word 0x2d67
000030DC  8D7EEA            lea di,[bp-0x16]
000030DF  16                push ss
000030E0  E8BFF5            call word 0x26a2
000030E3  CD10              int 0x10
000030E5  E8D5F5            call word 0x26bd
000030E8  58                pop ax
000030E9  58                pop ax
000030EA  E90000            jmp word 0x30ed
000030ED  8BE5              mov sp,bp
000030EF  5D                pop bp
000030F0  C20400            ret 0x4
000030F3  55                push bp
000030F4  8BEC              mov bp,sp
000030F6  55                push bp
000030F7  E90000            jmp word 0x30fa
000030FA  B92200            mov cx,0x22
000030FD  E8F8F5            call word 0x26f8
00003100  B80600            mov ax,0x6
00003103  B90000            mov cx,0x0
00003106  BA0F00            mov dx,0xf
00003109  E8DEF5            call word 0x26ea
0000310C  50                push ax
0000310D  B80700            mov ax,0x7
00003110  B90000            mov cx,0x0
00003113  BA0F00            mov dx,0xf
00003116  E8D1F5            call word 0x26ea
00003119  50                push ax
0000311A  E84DFF            call word 0x306a
0000311D  E90000            jmp word 0x3120
00003120  8BE5              mov sp,bp
00003122  5D                pop bp
00003123  C3                ret
00003124  55                push bp
00003125  8BEC              mov bp,sp
00003127  55                push bp
00003128  E90000            jmp word 0x312b
0000312B  B92200            mov cx,0x22
0000312E  E8C7F5            call word 0x26f8
00003131  B80400            mov ax,0x4
00003134  B90000            mov cx,0x0
00003137  BA0F00            mov dx,0xf
0000313A  E8ADF5            call word 0x26ea
0000313D  50                push ax
0000313E  B80700            mov ax,0x7
00003141  B90000            mov cx,0x0
00003144  BA0F00            mov dx,0xf
00003147  E8A0F5            call word 0x26ea
0000314A  50                push ax
0000314B  E81CFF            call word 0x306a
0000314E  E90000            jmp word 0x3151
00003151  8BE5              mov sp,bp
00003153  5D                pop bp
00003154  C3                ret
00003155  55                push bp
00003156  8BEC              mov bp,sp
00003158  55                push bp
00003159  E90000            jmp word 0x315c
0000315C  81EC0101          sub sp,0x101
00003160  8DBEFDFE          lea di,[bp-0x103]
00003164  16                push ss
00003165  57                push di
00003166  E8D7DB            call word 0xd40
00003169  00B1FFE8          add [bx+di-0x1701],dh
0000316D  E7DB              out 0xdb,ax
0000316F  B80100            mov ax,0x1
00003172  50                push ax
00003173  8A4604            mov al,[bp+0x4]
00003176  32E4              xor ah,ah
00003178  59                pop cx
00003179  91                xchg ax,cx
0000317A  2BC8              sub cx,ax
0000317C  7D03              jnl 0x3181
0000317E  E92F00            jmp word 0x31b0
00003181  41                inc cx
00003182  8846FD            mov [bp-0x3],al
00003185  51                push cx
00003186  8DBEFDFE          lea di,[bp-0x103]
0000318A  16                push ss
0000318B  57                push di
0000318C  8DBEFDFE          lea di,[bp-0x103]
00003190  16                push ss
00003191  E893DB            call word 0xd27
00003194  8A4606            mov al,[bp+0x6]
00003197  32E4              xor ah,ah
00003199  8AE0              mov ah,al
0000319B  B001              mov al,0x1
0000319D  50                push ax
0000319E  E899DC            call word 0xe3a
000031A1  B1FF              mov cl,0xff
000031A3  E8B0DB            call word 0xd56
000031A6  59                pop cx
000031A7  49                dec cx
000031A8  7406              jz 0x31b0
000031AA  FE46FD            inc byte [bp-0x3]
000031AD  E9D5FF            jmp word 0x3185
000031B0  8D7E08            lea di,[bp+0x8]
000031B3  16                push ss
000031B4  57                push di
000031B5  8DBEFDFE          lea di,[bp-0x103]
000031B9  16                push ss
000031BA  E86ADB            call word 0xd27
000031BD  B1FF              mov cl,0xff
000031BF  E894DB            call word 0xd56
000031C2  E90000            jmp word 0x31c5
000031C5  BA0400            mov dx,0x4
000031C8  B1FF              mov cl,0xff
000031CA  8BE5              mov sp,bp
000031CC  5D                pop bp
000031CD  E901DE            jmp word 0xfd1
000031D0  55                push bp
000031D1  8BEC              mov bp,sp
000031D3  55                push bp
000031D4  E90000            jmp word 0x31d7
000031D7  50                push ax
000031D8  8D7E04            lea di,[bp+0x4]
000031DB  16                push ss
000031DC  E848DB            call word 0xd27
000031DF  E8D9DC            call word 0xebb
000031E2  50                push ax
000031E3  8DBE0401          lea di,[bp+0x104]
000031E7  16                push ss
000031E8  E83CDB            call word 0xd27
000031EB  E8CDDC            call word 0xebb
000031EE  59                pop cx
000031EF  91                xchg ax,cx
000031F0  3BC1              cmp ax,cx
000031F2  7F03              jg 0x31f7
000031F4  E91500            jmp word 0x320c
000031F7  8DBE0402          lea di,[bp+0x204]
000031FB  16                push ss
000031FC  57                push di
000031FD  8D7E04            lea di,[bp+0x4]
00003200  16                push ss
00003201  E823DB            call word 0xd27
00003204  B1FF              mov cl,0xff
00003206  E84DDB            call word 0xd56
00003209  E99A00            jmp word 0x32a6
0000320C  8DBE0401          lea di,[bp+0x104]
00003210  16                push ss
00003211  E813DB            call word 0xd27
00003214  E8A4DC            call word 0xebb
00003217  50                push ax
00003218  8D7E04            lea di,[bp+0x4]
0000321B  16                push ss
0000321C  E808DB            call word 0xd27
0000321F  E899DC            call word 0xebb
00003222  59                pop cx
00003223  91                xchg ax,cx
00003224  2BC1              sub ax,cx
00003226  B90000            mov cx,0x0
00003229  BAFF00            mov dx,0xff
0000322C  E8BBF4            call word 0x26ea
0000322F  8846FD            mov [bp-0x3],al
00003232  8A46FD            mov al,[bp-0x3]
00003235  32E4              xor ah,ah
00003237  B90200            mov cx,0x2
0000323A  99                cwd
0000323B  F7F9              idiv cx
0000323D  B90000            mov cx,0x0
00003240  BAFF00            mov dx,0xff
00003243  E8A4F4            call word 0x26ea
00003246  8846FC            mov [bp-0x4],al
00003249  8DBE0402          lea di,[bp+0x204]
0000324D  16                push ss
0000324E  57                push di
0000324F  8DBE0401          lea di,[bp+0x104]
00003253  16                push ss
00003254  E8D0DA            call word 0xd27
00003257  B80100            mov ax,0x1
0000325A  50                push ax
0000325B  8A46FC            mov al,[bp-0x4]
0000325E  32E4              xor ah,ah
00003260  E819DC            call word 0xe7c
00003263  8D7E04            lea di,[bp+0x4]
00003266  16                push ss
00003267  E8BDDA            call word 0xd27
0000326A  E8CDDB            call word 0xe3a
0000326D  8DBE0401          lea di,[bp+0x104]
00003271  16                push ss
00003272  E8B2DA            call word 0xd27
00003275  8A46FC            mov al,[bp-0x4]
00003278  32E4              xor ah,ah
0000327A  50                push ax
0000327B  8D7E04            lea di,[bp+0x4]
0000327E  16                push ss
0000327F  E8A5DA            call word 0xd27
00003282  E836DC            call word 0xebb
00003285  59                pop cx
00003286  03C1              add ax,cx
00003288  050100            add ax,0x1
0000328B  50                push ax
0000328C  8A46FD            mov al,[bp-0x3]
0000328F  32E4              xor ah,ah
00003291  50                push ax
00003292  8A46FC            mov al,[bp-0x4]
00003295  32E4              xor ah,ah
00003297  59                pop cx
00003298  91                xchg ax,cx
00003299  2BC1              sub ax,cx
0000329B  E8DEDB            call word 0xe7c
0000329E  E899DB            call word 0xe3a
000032A1  B1FF              mov cl,0xff
000032A3  E8B0DA            call word 0xd56
000032A6  E90000            jmp word 0x32a9
000032A9  BA0002            mov dx,0x200
000032AC  B1FF              mov cl,0xff
000032AE  8BE5              mov sp,bp
000032B0  5D                pop bp
000032B1  E91DDD            jmp word 0xfd1
000032B4  55                push bp
000032B5  8BEC              mov bp,sp
000032B7  55                push bp
000032B8  E90000            jmp word 0x32bb
000032BB  B90800            mov cx,0x8
000032BE  E837F4            call word 0x26f8
000032C1  B85000            mov ax,0x50
000032C4  50                push ax
000032C5  8D7E04            lea di,[bp+0x4]
000032C8  16                push ss
000032C9  E85BDA            call word 0xd27
000032CC  E8ECDB            call word 0xebb
000032CF  59                pop cx
000032D0  91                xchg ax,cx
000032D1  2BC1              sub ax,cx
000032D3  B90200            mov cx,0x2
000032D6  99                cwd
000032D7  F7F9              idiv cx
000032D9  B90100            mov cx,0x1
000032DC  BA5000            mov dx,0x50
000032DF  E808F4            call word 0x26ea
000032E2  50                push ax
000032E3  E899FB            call word 0x2e7f
000032E6  E896EB            call word 0x1e7f
000032E9  8D7E04            lea di,[bp+0x4]
000032EC  16                push ss
000032ED  E837DA            call word 0xd27
000032F0  B80000            mov ax,0x0
000032F3  E803EF            call word 0x21f9
000032F6  E874F4            call word 0x276d
000032F9  E90000            jmp word 0x32fc
000032FC  8BE5              mov sp,bp
000032FE  5D                pop bp
000032FF  C20001            ret 0x100
00003302  55                push bp
00003303  8BEC              mov bp,sp
00003305  55                push bp
00003306  E90000            jmp word 0x3309
00003309  81EC0101          sub sp,0x101
0000330D  B88100            mov ax,0x81
00003310  B90000            mov cx,0x0
00003313  BAFF00            mov dx,0xff
00003316  E8D1F3            call word 0x26ea
00003319  8886FDFE          mov [bp-0x103],al
0000331D  8DBEFEFE          lea di,[bp-0x102]
00003321  16                push ss
00003322  57                push di
00003323  E81ADA            call word 0xd40
00003326  00B1FFE8          add [bx+di-0x1701],dh
0000332A  2ADA              sub bl,dl
0000332C  8CC8              mov ax,cs
0000332E  50                push ax
0000332F  8A86FDFE          mov al,[bp-0x103]
00003333  32E4              xor ah,ah
00003335  97                xchg ax,di
00003336  07                pop es
00003337  268A05            mov al,[es:di]
0000333A  32E4              xor ah,ah
0000333C  3D0D00            cmp ax,0xd
0000333F  7503              jnz 0x3344
00003341  E94400            jmp word 0x3388
00003344  8DBEFEFE          lea di,[bp-0x102]
00003348  16                push ss
00003349  57                push di
0000334A  8DBEFEFE          lea di,[bp-0x102]
0000334E  16                push ss
0000334F  E8D5D9            call word 0xd27
00003352  8CC8              mov ax,cs
00003354  50                push ax
00003355  8A86FDFE          mov al,[bp-0x103]
00003359  32E4              xor ah,ah
0000335B  97                xchg ax,di
0000335C  07                pop es
0000335D  268A05            mov al,[es:di]
00003360  32E4              xor ah,ah
00003362  8AE0              mov ah,al
00003364  B001              mov al,0x1
00003366  50                push ax
00003367  E8D0DA            call word 0xe3a
0000336A  B1FF              mov cl,0xff
0000336C  E8E7D9            call word 0xd56
0000336F  8A86FDFE          mov al,[bp-0x103]
00003373  32E4              xor ah,ah
00003375  050100            add ax,0x1
00003378  B90000            mov cx,0x0
0000337B  BAFF00            mov dx,0xff
0000337E  E869F3            call word 0x26ea
00003381  8886FDFE          mov [bp-0x103],al
00003385  E9A4FF            jmp word 0x332c
00003388  8D7E04            lea di,[bp+0x4]
0000338B  16                push ss
0000338C  57                push di
0000338D  8DBEFEFE          lea di,[bp-0x102]
00003391  16                push ss
00003392  E892D9            call word 0xd27
00003395  B1FF              mov cl,0xff
00003397  E8BCD9            call word 0xd56
0000339A  E90000            jmp word 0x339d
0000339D  BA0000            mov dx,0x0
000033A0  B1FF              mov cl,0xff
000033A2  8BE5              mov sp,bp
000033A4  5D                pop bp
000033A5  E929DC            jmp word 0xfd1
000033A8  55                push bp
000033A9  8BEC              mov bp,sp
000033AB  55                push bp
000033AC  E90000            jmp word 0x33af
000033AF  4C                dec sp
000033B0  B90800            mov cx,0x8
000033B3  E842F3            call word 0x26f8
000033B6  4C                dec sp
000033B7  E857FB            call word 0x2f11
000033BA  B90000            mov cx,0x0
000033BD  BAFF00            mov dx,0xff
000033C0  E827F3            call word 0x26ea
000033C3  8846FD            mov [bp-0x3],al
000033C6  8A46FD            mov al,[bp-0x3]
000033C9  32E4              xor ah,ah
000033CB  50                push ax
000033CC  E866DC            call word 0x1035
000033CF  B85900            mov ax,0x59
000033D2  E872DC            call word 0x1047
000033D5  B84E00            mov ax,0x4e
000033D8  E86CDC            call word 0x1047
000033DB  E83DDD            call word 0x111b
000033DE  7503              jnz 0x33e3
000033E0  E9CDFF            jmp word 0x33b0
000033E3  E899EA            call word 0x1e7f
000033E6  8A46FD            mov al,[bp-0x3]
000033E9  32E4              xor ah,ah
000033EB  50                push ax
000033EC  B80000            mov ax,0x0
000033EF  E891ED            call word 0x2183
000033F2  E847EE            call word 0x223c
000033F5  E875F3            call word 0x276d
000033F8  8A46FD            mov al,[bp-0x3]
000033FB  32E4              xor ah,ah
000033FD  3D5900            cmp ax,0x59
00003400  7403              jz 0x3405
00003402  E91200            jmp word 0x3417
00003405  B80100            mov ax,0x1
00003408  B90000            mov cx,0x0
0000340B  BA0100            mov dx,0x1
0000340E  E8D9F2            call word 0x26ea
00003411  884604            mov [bp+0x4],al
00003414  E90F00            jmp word 0x3426
00003417  B80000            mov ax,0x0
0000341A  B90000            mov cx,0x0
0000341D  BA0100            mov dx,0x1
00003420  E8C7F2            call word 0x26ea
00003423  884604            mov [bp+0x4],al
00003426  E90000            jmp word 0x3429
00003429  8A4604            mov al,[bp+0x4]
0000342C  32E4              xor ah,ah
0000342E  0BC0              or ax,ax
00003430  8BE5              mov sp,bp
00003432  5D                pop bp
00003433  C20100            ret 0x1
00003436  55                push bp
00003437  8BEC              mov bp,sp
00003439  55                push bp
0000343A  E90000            jmp word 0x343d
0000343D  8A4604            mov al,[bp+0x4]
00003440  32E4              xor ah,ah
00003442  B90001            mov cx,0x100
00003445  E898F2            call word 0x26e0
00003448  03C0              add ax,ax
0000344A  8BC8              mov cx,ax
0000344C  03C0              add ax,ax
0000344E  03C1              add ax,cx
00003450  97                xchg ax,di
00003451  81C77810          add di,0x1078
00003455  1E                push ds
00003456  E8CED8            call word 0xd27
00003459  E8E4D8            call word 0xd40
0000345C  00E8              add al,ch
0000345E  7BD9              jpo 0x3439
00003460  7503              jnz 0x3465
00003462  E91700            jmp word 0x347c
00003465  8D7E06            lea di,[bp+0x6]
00003468  16                push ss
00003469  57                push di
0000346A  8A4604            mov al,[bp+0x4]
0000346D  32E4              xor ah,ah
0000346F  8AE0              mov ah,al
00003471  B001              mov al,0x1
00003473  50                push ax
00003474  B1FF              mov cl,0xff
00003476  E8DDD8            call word 0xd56
00003479  E92600            jmp word 0x34a2
0000347C  8D7E06            lea di,[bp+0x6]
0000347F  16                push ss
00003480  57                push di
00003481  8A4604            mov al,[bp+0x4]
00003484  32E4              xor ah,ah
00003486  B90001            mov cx,0x100
00003489  E854F2            call word 0x26e0
0000348C  03C0              add ax,ax
0000348E  8BC8              mov cx,ax
00003490  03C0              add ax,ax
00003492  03C1              add ax,cx
00003494  97                xchg ax,di
00003495  81C77810          add di,0x1078
00003499  1E                push ds
0000349A  E88AD8            call word 0xd27
0000349D  B1FF              mov cl,0xff
0000349F  E8B4D8            call word 0xd56
000034A2  E90000            jmp word 0x34a5
000034A5  BA0200            mov dx,0x2
000034A8  B1FF              mov cl,0xff
000034AA  8BE5              mov sp,bp
000034AC  5D                pop bp
000034AD  E921DB            jmp word 0xfd1
000034B0  55                push bp
000034B1  8BEC              mov bp,sp
000034B3  55                push bp
000034B4  E90000            jmp word 0x34b7
000034B7  8A4606            mov al,[bp+0x6]
000034BA  32E4              xor ah,ah
000034BC  B90001            mov cx,0x100
000034BF  E81EF2            call word 0x26e0
000034C2  03C0              add ax,ax
000034C4  8BC8              mov cx,ax
000034C6  03C0              add ax,ax
000034C8  03C1              add ax,cx
000034CA  97                xchg ax,di
000034CB  81C77810          add di,0x1078
000034CF  1E                push ds
000034D0  E854D8            call word 0xd27
000034D3  E86AD8            call word 0xd40
000034D6  00E8              add al,ch
000034D8  01D9              add cx,bx
000034DA  7503              jnz 0x34df
000034DC  E92400            jmp word 0x3503
000034DF  8A4604            mov al,[bp+0x4]
000034E2  32E4              xor ah,ah
000034E4  0BC0              or ax,ax
000034E6  7503              jnz 0x34eb
000034E8  E90300            jmp word 0x34ee
000034EB  E88CCD            call word 0x27a
000034EE  E88EE9            call word 0x1e7f
000034F1  8A4606            mov al,[bp+0x6]
000034F4  32E4              xor ah,ah
000034F6  50                push ax
000034F7  B80000            mov ax,0x0
000034FA  E886EC            call word 0x2183
000034FD  E86DF2            call word 0x276d
00003500  E93A00            jmp word 0x353d
00003503  8A4604            mov al,[bp+0x4]
00003506  32E4              xor ah,ah
00003508  0BC0              or ax,ax
0000350A  7503              jnz 0x350f
0000350C  E90300            jmp word 0x3512
0000350F  E859CD            call word 0x26b
00003512  8A4606            mov al,[bp+0x6]
00003515  32E4              xor ah,ah
00003517  B90001            mov cx,0x100
0000351A  E8C3F1            call word 0x26e0
0000351D  03C0              add ax,ax
0000351F  8BC8              mov cx,ax
00003521  03C0              add ax,ax
00003523  03C1              add ax,cx
00003525  97                xchg ax,di
00003526  E856E9            call word 0x1e7f
00003529  81C77810          add di,0x1078
0000352D  1E                push ds
0000352E  E8F6D7            call word 0xd27
00003531  B80000            mov ax,0x0
00003534  E8C2EC            call word 0x21f9
00003537  E833F2            call word 0x276d
0000353A  E83DCD            call word 0x27a
0000353D  E90000            jmp word 0x3540
00003540  8BE5              mov sp,bp
00003542  5D                pop bp
00003543  C20400            ret 0x4
00003546  55                push bp
00003547  8BEC              mov bp,sp
00003549  55                push bp
0000354A  E90000            jmp word 0x354d
0000354D  B90A00            mov cx,0xa
00003550  E8A5F1            call word 0x26f8
00003553  8A4606            mov al,[bp+0x6]
00003556  32E4              xor ah,ah
00003558  B90000            mov cx,0x0
0000355B  BAFF00            mov dx,0xff
0000355E  E889F1            call word 0x26ea
00003561  50                push ax
00003562  8A4604            mov al,[bp+0x4]
00003565  32E4              xor ah,ah
00003567  B90000            mov cx,0x0
0000356A  BA0100            mov dx,0x1
0000356D  E87AF1            call word 0x26ea
00003570  50                push ax
00003571  E83CFF            call word 0x34b0
00003574  E808E9            call word 0x1e7f
00003577  E8C2EC            call word 0x223c
0000357A  E8F0F1            call word 0x276d
0000357D  E90000            jmp word 0x3580
00003580  8BE5              mov sp,bp
00003582  5D                pop bp
00003583  C20400            ret 0x4
00003586  55                push bp
00003587  8BEC              mov bp,sp
00003589  55                push bp
0000358A  E90000            jmp word 0x358d
0000358D  83EC18            sub sp,byte +0x18
00003590  8D7EEA            lea di,[bp-0x16]
00003593  16                push ss
00003594  57                push di
00003595  C47EE2            les di,[bp-0x1e]
00003598  06                push es
00003599  57                push di
0000359A  B80000            mov ax,0x0
0000359D  5F                pop di
0000359E  07                pop es
0000359F  268905            mov [es:di],ax
000035A2  8D7EEA            lea di,[bp-0x16]
000035A5  16                push ss
000035A6  E8F9F0            call word 0x26a2
000035A9  CD16              int 0x16
000035AB  E80FF1            call word 0x26bd
000035AE  C47EE2            les di,[bp-0x1e]
000035B1  268B05            mov ax,[es:di]
000035B4  3D0000            cmp ax,0x0
000035B7  7403              jz 0x35bc
000035B9  E90900            jmp word 0x35c5
000035BC  B90600            mov cx,0x6
000035BF  E836F1            call word 0x26f8
000035C2  E879F2            call word 0x283e
000035C5  B91000            mov cx,0x10
000035C8  E82DF1            call word 0x26f8
000035CB  8D7EE7            lea di,[bp-0x19]
000035CE  16                push ss
000035CF  57                push di
000035D0  8D7EE6            lea di,[bp-0x1a]
000035D3  16                push ss
000035D4  57                push di
000035D5  C47EE2            les di,[bp-0x1e]
000035D8  268B05            mov ax,[es:di]
000035DB  50                push ax
000035DC  E8B5F7            call word 0x2d94
000035DF  8A46E6            mov al,[bp-0x1a]
000035E2  32E4              xor ah,ah
000035E4  3D0000            cmp ax,0x0
000035E7  7503              jnz 0x35ec
000035E9  E94F00            jmp word 0x363b
000035EC  8A46E6            mov al,[bp-0x1a]
000035EF  32E4              xor ah,ah
000035F1  B90000            mov cx,0x0
000035F4  BAFF00            mov dx,0xff
000035F7  E8F0F0            call word 0x26ea
000035FA  884604            mov [bp+0x4],al
000035FD  8A46E7            mov al,[bp-0x19]
00003600  32E4              xor ah,ah
00003602  3D0E00            cmp ax,0xe
00003605  7403              jz 0x360a
00003607  E92E00            jmp word 0x3638
0000360A  8A46E6            mov al,[bp-0x1a]
0000360D  32E4              xor ah,ah
0000360F  3D0800            cmp ax,0x8
00003612  7403              jz 0x3617
00003614  E91200            jmp word 0x3629
00003617  B87F00            mov ax,0x7f
0000361A  B90000            mov cx,0x0
0000361D  BAFF00            mov dx,0xff
00003620  E8C7F0            call word 0x26ea
00003623  884604            mov [bp+0x4],al
00003626  E90F00            jmp word 0x3638
00003629  B80800            mov ax,0x8
0000362C  B90000            mov cx,0x0
0000362F  BAFF00            mov dx,0xff
00003632  E8B5F0            call word 0x26ea
00003635  884604            mov [bp+0x4],al
00003638  E93800            jmp word 0x3673
0000363B  8A46E7            mov al,[bp-0x19]
0000363E  32E4              xor ah,ah
00003640  3D0300            cmp ax,0x3
00003643  7403              jz 0x3648
00003645  E91200            jmp word 0x365a
00003648  B80000            mov ax,0x0
0000364B  B90000            mov cx,0x0
0000364E  BAFF00            mov dx,0xff
00003651  E896F0            call word 0x26ea
00003654  884604            mov [bp+0x4],al
00003657  E91900            jmp word 0x3673
0000365A  B80401            mov ax,0x104
0000365D  50                push ax
0000365E  8A46E7            mov al,[bp-0x19]
00003661  32E4              xor ah,ah
00003663  59                pop cx
00003664  91                xchg ax,cx
00003665  2BC1              sub ax,cx
00003667  B90000            mov cx,0x0
0000366A  BAFF00            mov dx,0xff
0000366D  E87AF0            call word 0x26ea
00003670  884604            mov [bp+0x4],al
00003673  58                pop ax
00003674  58                pop ax
00003675  E90000            jmp word 0x3678
00003678  8A4604            mov al,[bp+0x4]
0000367B  32E4              xor ah,ah
0000367D  8BE5              mov sp,bp
0000367F  5D                pop bp
00003680  C20100            ret 0x1
00003683  55                push bp
00003684  8BEC              mov bp,sp
00003686  55                push bp
00003687  E94400            jmp word 0x36ce
0000368A  034553            add ax,[di+0x53]
0000368D  43                inc bx
0000368E  0000              add [bx+si],al
00003690  024653            add al,[bp+0x53]
00003693  0000              add [bx+si],al
00003695  0002              add [bp+si],al
00003697  47                inc di
00003698  53                push bx
00003699  0000              add [bx+si],al
0000369B  0002              add [bp+si],al
0000369D  52                push dx
0000369E  53                push bx
0000369F  0000              add [bx+si],al
000036A1  0002              add [bp+si],al
000036A3  55                push bp
000036A4  53                push bx
000036A5  0000              add [bx+si],al
000036A7  005157            add [bx+di+0x57],dl
000036AA  45                inc bp
000036AB  52                push dx
000036AC  54                push sp
000036AD  59                pop cx
000036AE  55                push bp
000036AF  49                dec cx
000036B0  4F                dec di
000036B1  50                push ax
000036B2  41                inc cx
000036B3  53                push bx
000036B4  44                inc sp
000036B5  46                inc si
000036B6  47                inc di
000036B7  48                dec ax
000036B8  4A                dec dx
000036B9  4B                dec bx
000036BA  4C                dec sp
000036BB  5A                pop dx
000036BC  58                pop ax
000036BD  43                inc bx
000036BE  56                push si
000036BF  42                inc dx
000036C0  4E                dec si
000036C1  4D                dec bp
000036C2  3132              xor [bp+si],si
000036C4  3334              xor si,[si]
000036C6  353637            xor ax,0x3736
000036C9  3839              cmp [bx+di],bh
000036CB  302D              xor [di],ch
000036CD  3D83EC            cmp ax,0xec83
000036D0  07                pop es
000036D1  B80000            mov ax,0x0
000036D4  50                push ax
000036D5  B8FF00            mov ax,0xff
000036D8  59                pop cx
000036D9  91                xchg ax,cx
000036DA  2BC8              sub cx,ax
000036DC  7D03              jnl 0x36e1
000036DE  E9B208            jmp word 0x3f93
000036E1  41                inc cx
000036E2  8846FD            mov [bp-0x3],al
000036E5  51                push cx
000036E6  8A46FD            mov al,[bp-0x3]
000036E9  32E4              xor ah,ah
000036EB  3D0000            cmp ax,0x0
000036EE  7403              jz 0x36f3
000036F0  E92900            jmp word 0x371c
000036F3  8A46FD            mov al,[bp-0x3]
000036F6  32E4              xor ah,ah
000036F8  B90001            mov cx,0x100
000036FB  E8E2EF            call word 0x26e0
000036FE  03C0              add ax,ax
00003700  8BC8              mov cx,ax
00003702  03C0              add ax,ax
00003704  03C1              add ax,cx
00003706  97                xchg ax,di
00003707  81C77810          add di,0x1078
0000370B  1E                push ds
0000370C  57                push di
0000370D  E830D6            call word 0xd40
00003710  034E55            add cx,[bp+0x55]
00003713  4C                dec sp
00003714  B105              mov cl,0x5
00003716  E83DD6            call word 0xd56
00003719  E96D08            jmp word 0x3f89
0000371C  3D0100            cmp ax,0x1
0000371F  7C05              jl 0x3726
00003721  3D0800            cmp ax,0x8
00003724  7E03              jng 0x3729
00003726  E93900            jmp word 0x3762
00003729  8A46FD            mov al,[bp-0x3]
0000372C  32E4              xor ah,ah
0000372E  B90001            mov cx,0x100
00003731  E8ACEF            call word 0x26e0
00003734  03C0              add ax,ax
00003736  8BC8              mov cx,ax
00003738  03C0              add ax,ax
0000373A  03C1              add ax,cx
0000373C  97                xchg ax,di
0000373D  81C77810          add di,0x1078
00003741  1E                push ds
00003742  57                push di
00003743  B85E00            mov ax,0x5e
00003746  50                push ax
00003747  8A46FD            mov al,[bp-0x3]
0000374A  32E4              xor ah,ah
0000374C  054000            add ax,0x40
0000374F  8AE0              mov ah,al
00003751  B001              mov al,0x1
00003753  50                push ax
00003754  E865D8            call word 0xfbc
00003757  E8E0D6            call word 0xe3a
0000375A  B105              mov cl,0x5
0000375C  E8F7D5            call word 0xd56
0000375F  E92708            jmp word 0x3f89
00003762  3D0900            cmp ax,0x9
00003765  7403              jz 0x376a
00003767  E92900            jmp word 0x3793
0000376A  8A46FD            mov al,[bp-0x3]
0000376D  32E4              xor ah,ah
0000376F  B90001            mov cx,0x100
00003772  E86BEF            call word 0x26e0
00003775  03C0              add ax,ax
00003777  8BC8              mov cx,ax
00003779  03C0              add ax,ax
0000377B  03C1              add ax,cx
0000377D  97                xchg ax,di
0000377E  81C77810          add di,0x1078
00003782  1E                push ds
00003783  57                push di
00003784  E8B9D5            call word 0xd40
00003787  035461            add dx,[si+0x61]
0000378A  62B105E8          bound si,[bx+di-0x17fb]
0000378E  C6                db 0xc6
0000378F  D5E9              aad 0xe9
00003791  F6073D            test byte [bx],0x3d
00003794  0A00              or al,[bx+si]
00003796  7403              jz 0x379b
00003798  E92800            jmp word 0x37c3
0000379B  8A46FD            mov al,[bp-0x3]
0000379E  32E4              xor ah,ah
000037A0  B90001            mov cx,0x100
000037A3  E83AEF            call word 0x26e0
000037A6  03C0              add ax,ax
000037A8  8BC8              mov cx,ax
000037AA  03C0              add ax,ax
000037AC  03C1              add ax,cx
000037AE  97                xchg ax,di
000037AF  81C77810          add di,0x1078
000037B3  1E                push ds
000037B4  57                push di
000037B5  E888D5            call word 0xd40
000037B8  024C46            add cl,[si+0x46]
000037BB  B105              mov cl,0x5
000037BD  E896D5            call word 0xd56
000037C0  E9C607            jmp word 0x3f89
000037C3  3D0B00            cmp ax,0xb
000037C6  7403              jz 0x37cb
000037C8  E92800            jmp word 0x37f3
000037CB  8A46FD            mov al,[bp-0x3]
000037CE  32E4              xor ah,ah
000037D0  B90001            mov cx,0x100
000037D3  E80AEF            call word 0x26e0
000037D6  03C0              add ax,ax
000037D8  8BC8              mov cx,ax
000037DA  03C0              add ax,ax
000037DC  03C1              add ax,cx
000037DE  97                xchg ax,di
000037DF  81C77810          add di,0x1078
000037E3  1E                push ds
000037E4  57                push di
000037E5  E858D5            call word 0xd40
000037E8  025654            add dl,[bp+0x54]
000037EB  B105              mov cl,0x5
000037ED  E866D5            call word 0xd56
000037F0  E99607            jmp word 0x3f89
000037F3  3D0C00            cmp ax,0xc
000037F6  7403              jz 0x37fb
000037F8  E92800            jmp word 0x3823
000037FB  8A46FD            mov al,[bp-0x3]
000037FE  32E4              xor ah,ah
00003800  B90001            mov cx,0x100
00003803  E8DAEE            call word 0x26e0
00003806  03C0              add ax,ax
00003808  8BC8              mov cx,ax
0000380A  03C0              add ax,ax
0000380C  03C1              add ax,cx
0000380E  97                xchg ax,di
0000380F  81C77810          add di,0x1078
00003813  1E                push ds
00003814  57                push di
00003815  E828D5            call word 0xd40
00003818  024646            add al,[bp+0x46]
0000381B  B105              mov cl,0x5
0000381D  E836D5            call word 0xd56
00003820  E96607            jmp word 0x3f89
00003823  3D0D00            cmp ax,0xd
00003826  7403              jz 0x382b
00003828  E92800            jmp word 0x3853
0000382B  8A46FD            mov al,[bp-0x3]
0000382E  32E4              xor ah,ah
00003830  B90001            mov cx,0x100
00003833  E8AAEE            call word 0x26e0
00003836  03C0              add ax,ax
00003838  8BC8              mov cx,ax
0000383A  03C0              add ax,ax
0000383C  03C1              add ax,cx
0000383E  97                xchg ax,di
0000383F  81C77810          add di,0x1078
00003843  1E                push ds
00003844  57                push di
00003845  E8F8D4            call word 0xd40
00003848  024352            add al,[bp+di+0x52]
0000384B  B105              mov cl,0x5
0000384D  E806D5            call word 0xd56
00003850  E93607            jmp word 0x3f89
00003853  3D0E00            cmp ax,0xe
00003856  7C05              jl 0x385d
00003858  3D1A00            cmp ax,0x1a
0000385B  7E03              jng 0x3860
0000385D  E93900            jmp word 0x3899
00003860  8A46FD            mov al,[bp-0x3]
00003863  32E4              xor ah,ah
00003865  B90001            mov cx,0x100
00003868  E875EE            call word 0x26e0
0000386B  03C0              add ax,ax
0000386D  8BC8              mov cx,ax
0000386F  03C0              add ax,ax
00003871  03C1              add ax,cx
00003873  97                xchg ax,di
00003874  81C77810          add di,0x1078
00003878  1E                push ds
00003879  57                push di
0000387A  B85E00            mov ax,0x5e
0000387D  50                push ax
0000387E  8A46FD            mov al,[bp-0x3]
00003881  32E4              xor ah,ah
00003883  054000            add ax,0x40
00003886  8AE0              mov ah,al
00003888  B001              mov al,0x1
0000388A  50                push ax
0000388B  E82ED7            call word 0xfbc
0000388E  E8A9D5            call word 0xe3a
00003891  B105              mov cl,0x5
00003893  E8C0D4            call word 0xd56
00003896  E9F006            jmp word 0x3f89
00003899  3D1B00            cmp ax,0x1b
0000389C  7C05              jl 0x38a3
0000389E  3D1F00            cmp ax,0x1f
000038A1  7E03              jng 0x38a6
000038A3  E94200            jmp word 0x38e8
000038A6  8A46FD            mov al,[bp-0x3]
000038A9  32E4              xor ah,ah
000038AB  B90001            mov cx,0x100
000038AE  E82FEE            call word 0x26e0
000038B1  03C0              add ax,ax
000038B3  8BC8              mov cx,ax
000038B5  03C0              add ax,ax
000038B7  03C1              add ax,cx
000038B9  97                xchg ax,di
000038BA  81C77810          add di,0x1078
000038BE  1E                push ds
000038BF  57                push di
000038C0  8A46FD            mov al,[bp-0x3]
000038C3  32E4              xor ah,ah
000038C5  81E81B00          sub ax,0x1b
000038C9  B90500            mov cx,0x5
000038CC  E811EE            call word 0x26e0
000038CF  03C0              add ax,ax
000038D1  8BC8              mov cx,ax
000038D3  03C0              add ax,ax
000038D5  03C1              add ax,cx
000038D7  97                xchg ax,di
000038D8  81C78A36          add di,0x368a
000038DC  0E                push cs
000038DD  E847D4            call word 0xd27
000038E0  B105              mov cl,0x5
000038E2  E871D4            call word 0xd56
000038E5  E9A106            jmp word 0x3f89
000038E8  3D2000            cmp ax,0x20
000038EB  7C05              jl 0x38f2
000038ED  3D7E00            cmp ax,0x7e
000038F0  7E03              jng 0x38f5
000038F2  E92600            jmp word 0x391b
000038F5  8A46FD            mov al,[bp-0x3]
000038F8  32E4              xor ah,ah
000038FA  B90001            mov cx,0x100
000038FD  E8E0ED            call word 0x26e0
00003900  03C0              add ax,ax
00003902  8BC8              mov cx,ax
00003904  03C0              add ax,ax
00003906  03C1              add ax,cx
00003908  97                xchg ax,di
00003909  81C77810          add di,0x1078
0000390D  1E                push ds
0000390E  57                push di
0000390F  E82ED4            call word 0xd40
00003912  00B105E8          add [bx+di-0x17fb],dh
00003916  3ED4E9            ds aam 0xe9
00003919  6E                outsb
0000391A  06                push es
0000391B  3D7F00            cmp ax,0x7f
0000391E  7403              jz 0x3923
00003920  E92900            jmp word 0x394c
00003923  8A46FD            mov al,[bp-0x3]
00003926  32E4              xor ah,ah
00003928  B90001            mov cx,0x100
0000392B  E8B2ED            call word 0x26e0
0000392E  03C0              add ax,ax
00003930  8BC8              mov cx,ax
00003932  03C0              add ax,ax
00003934  03C1              add ax,cx
00003936  97                xchg ax,di
00003937  81C77810          add di,0x1078
0000393B  1E                push ds
0000393C  57                push di
0000393D  E800D4            call word 0xd40
00003940  034445            add ax,[si+0x45]
00003943  4C                dec sp
00003944  B105              mov cl,0x5
00003946  E80DD4            call word 0xd56
00003949  E93D06            jmp word 0x3f89
0000394C  3D8000            cmp ax,0x80
0000394F  7403              jz 0x3954
00003951  E92B00            jmp word 0x397f
00003954  8A46FD            mov al,[bp-0x3]
00003957  32E4              xor ah,ah
00003959  B90001            mov cx,0x100
0000395C  E881ED            call word 0x26e0
0000395F  03C0              add ax,ax
00003961  8BC8              mov cx,ax
00003963  03C0              add ax,ax
00003965  03C1              add ax,cx
00003967  97                xchg ax,di
00003968  81C77810          add di,0x1078
0000396C  1E                push ds
0000396D  57                push di
0000396E  E8CFD3            call word 0xd40
00003971  055E50            add ax,0x505e
00003974  6755              a32 push bp
00003976  70B1              jo 0x3929
00003978  05E8DA            add ax,0xdae8
0000397B  D3E9              shr cx,cl
0000397D  0A063D81          or al,[0x813d]
00003981  007C05            add [si+0x5],bh
00003984  3D8C00            cmp ax,0x8c
00003987  7E03              jng 0x398c
00003989  E95100            jmp word 0x39dd
0000398C  8A46FD            mov al,[bp-0x3]
0000398F  32E4              xor ah,ah
00003991  B90001            mov cx,0x100
00003994  E849ED            call word 0x26e0
00003997  03C0              add ax,ax
00003999  8BC8              mov cx,ax
0000399B  03C0              add ax,ax
0000399D  03C1              add ax,cx
0000399F  97                xchg ax,di
000039A0  81C77810          add di,0x1078
000039A4  1E                push ds
000039A5  57                push di
000039A6  E897D3            call word 0xd40
000039A9  0441              add al,0x41
000039AB  6C                insb
000039AC  742D              jz 0x39db
000039AE  B80401            mov ax,0x104
000039B1  50                push ax
000039B2  8A46FD            mov al,[bp-0x3]
000039B5  32E4              xor ah,ah
000039B7  59                pop cx
000039B8  91                xchg ax,cx
000039B9  2BC1              sub ax,cx
000039BB  81E87800          sub ax,0x78
000039BF  B90C00            mov cx,0xc
000039C2  E81BED            call word 0x26e0
000039C5  97                xchg ax,di
000039C6  2E8A85C236        mov al,[cs:di+0x36c2]
000039CB  32E4              xor ah,ah
000039CD  8AE0              mov ah,al
000039CF  B001              mov al,0x1
000039D1  50                push ax
000039D2  E865D4            call word 0xe3a
000039D5  B105              mov cl,0x5
000039D7  E87CD3            call word 0xd56
000039DA  E9AC05            jmp word 0x3f89
000039DD  3D8D00            cmp ax,0x8d
000039E0  7403              jz 0x39e5
000039E2  E92B00            jmp word 0x3a10
000039E5  8A46FD            mov al,[bp-0x3]
000039E8  32E4              xor ah,ah
000039EA  B90001            mov cx,0x100
000039ED  E8F0EC            call word 0x26e0
000039F0  03C0              add ax,ax
000039F2  8BC8              mov cx,ax
000039F4  03C0              add ax,ax
000039F6  03C1              add ax,cx
000039F8  97                xchg ax,di
000039F9  81C77810          add di,0x1078
000039FD  1E                push ds
000039FE  57                push di
000039FF  E83ED3            call word 0xd40
00003A02  055E48            add ax,0x485e
00003A05  6F                outsw
00003A06  6D                insw
00003A07  65B105            gs mov cl,0x5
00003A0A  E849D3            call word 0xd56
00003A0D  E97905            jmp word 0x3f89
00003A10  3D8E00            cmp ax,0x8e
00003A13  7403              jz 0x3a18
00003A15  E92B00            jmp word 0x3a43
00003A18  8A46FD            mov al,[bp-0x3]
00003A1B  32E4              xor ah,ah
00003A1D  B90001            mov cx,0x100
00003A20  E8BDEC            call word 0x26e0
00003A23  03C0              add ax,ax
00003A25  8BC8              mov cx,ax
00003A27  03C0              add ax,ax
00003A29  03C1              add ax,cx
00003A2B  97                xchg ax,di
00003A2C  81C77810          add di,0x1078
00003A30  1E                push ds
00003A31  57                push di
00003A32  E80BD3            call word 0xd40
00003A35  055E50            add ax,0x505e
00003A38  6744              a32 inc sp
00003A3A  6E                outsb
00003A3B  B105              mov cl,0x5
00003A3D  E816D3            call word 0xd56
00003A40  E94605            jmp word 0x3f89
00003A43  3D8F00            cmp ax,0x8f
00003A46  7403              jz 0x3a4b
00003A48  E92A00            jmp word 0x3a75
00003A4B  8A46FD            mov al,[bp-0x3]
00003A4E  32E4              xor ah,ah
00003A50  B90001            mov cx,0x100
00003A53  E88AEC            call word 0x26e0
00003A56  03C0              add ax,ax
00003A58  8BC8              mov cx,ax
00003A5A  03C0              add ax,ax
00003A5C  03C1              add ax,cx
00003A5E  97                xchg ax,di
00003A5F  81C77810          add di,0x1078
00003A63  1E                push ds
00003A64  57                push di
00003A65  E8D8D2            call word 0xd40
00003A68  045E              add al,0x5e
00003A6A  45                inc bp
00003A6B  6E                outsb
00003A6C  64B105            fs mov cl,0x5
00003A6F  E8E4D2            call word 0xd56
00003A72  E91405            jmp word 0x3f89
00003A75  3D9000            cmp ax,0x90
00003A78  7403              jz 0x3a7d
00003A7A  E92800            jmp word 0x3aa5
00003A7D  8A46FD            mov al,[bp-0x3]
00003A80  32E4              xor ah,ah
00003A82  B90001            mov cx,0x100
00003A85  E858EC            call word 0x26e0
00003A88  03C0              add ax,ax
00003A8A  8BC8              mov cx,ax
00003A8C  03C0              add ax,ax
00003A8E  03C1              add ax,cx
00003A90  97                xchg ax,di
00003A91  81C77810          add di,0x1078
00003A95  1E                push ds
00003A96  57                push di
00003A97  E8A6D2            call word 0xd40
00003A9A  025E1A            add bl,[bp+0x1a]
00003A9D  B105              mov cl,0x5
00003A9F  E8B4D2            call word 0xd56
00003AA2  E9E404            jmp word 0x3f89
00003AA5  3D9100            cmp ax,0x91
00003AA8  7403              jz 0x3aad
00003AAA  E92800            jmp word 0x3ad5
00003AAD  8A46FD            mov al,[bp-0x3]
00003AB0  32E4              xor ah,ah
00003AB2  B90001            mov cx,0x100
00003AB5  E828EC            call word 0x26e0
00003AB8  03C0              add ax,ax
00003ABA  8BC8              mov cx,ax
00003ABC  03C0              add ax,ax
00003ABE  03C1              add ax,cx
00003AC0  97                xchg ax,di
00003AC1  81C77810          add di,0x1078
00003AC5  1E                push ds
00003AC6  57                push di
00003AC7  E876D2            call word 0xd40
00003ACA  025E1B            add bl,[bp+0x1b]
00003ACD  B105              mov cl,0x5
00003ACF  E884D2            call word 0xd56
00003AD2  E9B404            jmp word 0x3f89
00003AD5  3D9200            cmp ax,0x92
00003AD8  7403              jz 0x3add
00003ADA  E92B00            jmp word 0x3b08
00003ADD  8A46FD            mov al,[bp-0x3]
00003AE0  32E4              xor ah,ah
00003AE2  B90001            mov cx,0x100
00003AE5  E8F8EB            call word 0x26e0
00003AE8  03C0              add ax,ax
00003AEA  8BC8              mov cx,ax
00003AEC  03C0              add ax,ax
00003AEE  03C1              add ax,cx
00003AF0  97                xchg ax,di
00003AF1  81C77810          add di,0x1078
00003AF5  1E                push ds
00003AF6  57                push di
00003AF7  E846D2            call word 0xd40
00003AFA  055E50            add ax,0x505e
00003AFD  7453              jz 0x3b52
00003AFF  63B105E8          arpl [bx+di-0x17fb],si
00003B03  51                push cx
00003B04  D2E9              shr cl,cl
00003B06  81043D93          add word [si],0x933d
00003B0A  007C05            add [si+0x5],bh
00003B0D  3DB000            cmp ax,0xb0
00003B10  7E03              jng 0x3b15
00003B12  E97800            jmp word 0x3b8d
00003B15  B8BB00            mov ax,0xbb
00003B18  50                push ax
00003B19  8A46FD            mov al,[bp-0x3]
00003B1C  32E4              xor ah,ah
00003B1E  59                pop cx
00003B1F  91                xchg ax,cx
00003B20  2BC1              sub ax,cx
00003B22  50                push ax
00003B23  B80000            mov ax,0x0
00003B26  50                push ax
00003B27  8A46FD            mov al,[bp-0x3]
00003B2A  32E4              xor ah,ah
00003B2C  B90001            mov cx,0x100
00003B2F  E8AEEB            call word 0x26e0
00003B32  03C0              add ax,ax
00003B34  8BC8              mov cx,ax
00003B36  03C0              add ax,ax
00003B38  03C1              add ax,cx
00003B3A  97                xchg ax,di
00003B3B  81C77810          add di,0x1078
00003B3F  1E                push ds
00003B40  B105              mov cl,0x5
00003B42  E826EA            call word 0x256b
00003B45  8A46FD            mov al,[bp-0x3]
00003B48  32E4              xor ah,ah
00003B4A  B90001            mov cx,0x100
00003B4D  E890EB            call word 0x26e0
00003B50  03C0              add ax,ax
00003B52  8BC8              mov cx,ax
00003B54  03C0              add ax,ax
00003B56  03C1              add ax,cx
00003B58  97                xchg ax,di
00003B59  81C77810          add di,0x1078
00003B5D  1E                push ds
00003B5E  57                push di
00003B5F  B84600            mov ax,0x46
00003B62  50                push ax
00003B63  8A46FD            mov al,[bp-0x3]
00003B66  32E4              xor ah,ah
00003B68  B90001            mov cx,0x100
00003B6B  E872EB            call word 0x26e0
00003B6E  03C0              add ax,ax
00003B70  8BC8              mov cx,ax
00003B72  03C0              add ax,ax
00003B74  03C1              add ax,cx
00003B76  97                xchg ax,di
00003B77  81C77810          add di,0x1078
00003B7B  1E                push ds
00003B7C  E8A8D1            call word 0xd27
00003B7F  E83AD4            call word 0xfbc
00003B82  E8B5D2            call word 0xe3a
00003B85  B105              mov cl,0x5
00003B87  E8CCD1            call word 0xd56
00003B8A  E9FC03            jmp word 0x3f89
00003B8D  3DB100            cmp ax,0xb1
00003B90  7403              jz 0x3b95
00003B92  E92900            jmp word 0x3bbe
00003B95  8A46FD            mov al,[bp-0x3]
00003B98  32E4              xor ah,ah
00003B9A  B90001            mov cx,0x100
00003B9D  E840EB            call word 0x26e0
00003BA0  03C0              add ax,ax
00003BA2  8BC8              mov cx,ax
00003BA4  03C0              add ax,ax
00003BA6  03C1              add ax,cx
00003BA8  97                xchg ax,di
00003BA9  81C77810          add di,0x1078
00003BAD  1E                push ds
00003BAE  57                push di
00003BAF  E88ED1            call word 0xd40
00003BB2  034465            add ax,[si+0x65]
00003BB5  6C                insb
00003BB6  B105              mov cl,0x5
00003BB8  E89BD1            call word 0xd56
00003BBB  E9CB03            jmp word 0x3f89
00003BBE  3DB200            cmp ax,0xb2
00003BC1  7403              jz 0x3bc6
00003BC3  E92900            jmp word 0x3bef
00003BC6  8A46FD            mov al,[bp-0x3]
00003BC9  32E4              xor ah,ah
00003BCB  B90001            mov cx,0x100
00003BCE  E80FEB            call word 0x26e0
00003BD1  03C0              add ax,ax
00003BD3  8BC8              mov cx,ax
00003BD5  03C0              add ax,ax
00003BD7  03C1              add ax,cx
00003BD9  97                xchg ax,di
00003BDA  81C77810          add di,0x1078
00003BDE  1E                push ds
00003BDF  57                push di
00003BE0  E85DD1            call word 0xd40
00003BE3  03496E            add cx,[bx+di+0x6e]
00003BE6  73B1              jnc 0x3b99
00003BE8  05E86A            add ax,0x6ae8
00003BEB  D1E9              shr cx,1
00003BED  9A033DB300        call word 0xb3:0x3d03
00003BF2  7403              jz 0x3bf7
00003BF4  E92A00            jmp word 0x3c21
00003BF7  8A46FD            mov al,[bp-0x3]
00003BFA  32E4              xor ah,ah
00003BFC  B90001            mov cx,0x100
00003BFF  E8DEEA            call word 0x26e0
00003C02  03C0              add ax,ax
00003C04  8BC8              mov cx,ax
00003C06  03C0              add ax,ax
00003C08  03C1              add ax,cx
00003C0A  97                xchg ax,di
00003C0B  81C77810          add di,0x1078
00003C0F  1E                push ds
00003C10  57                push di
00003C11  E82CD1            call word 0xd40
00003C14  0450              add al,0x50
00003C16  6744              a32 inc sp
00003C18  6E                outsb
00003C19  B105              mov cl,0x5
00003C1B  E838D1            call word 0xd56
00003C1E  E96803            jmp word 0x3f89
00003C21  3DB400            cmp ax,0xb4
00003C24  7403              jz 0x3c29
00003C26  E92A00            jmp word 0x3c53
00003C29  8A46FD            mov al,[bp-0x3]
00003C2C  32E4              xor ah,ah
00003C2E  B90001            mov cx,0x100
00003C31  E8ACEA            call word 0x26e0
00003C34  03C0              add ax,ax
00003C36  8BC8              mov cx,ax
00003C38  03C0              add ax,ax
00003C3A  03C1              add ax,cx
00003C3C  97                xchg ax,di
00003C3D  81C77810          add di,0x1078
00003C41  1E                push ds
00003C42  57                push di
00003C43  B81900            mov ax,0x19
00003C46  8AE0              mov ah,al
00003C48  B001              mov al,0x1
00003C4A  50                push ax
00003C4B  B105              mov cl,0x5
00003C4D  E806D1            call word 0xd56
00003C50  E93603            jmp word 0x3f89
00003C53  3DB500            cmp ax,0xb5
00003C56  7403              jz 0x3c5b
00003C58  E92900            jmp word 0x3c84
00003C5B  8A46FD            mov al,[bp-0x3]
00003C5E  32E4              xor ah,ah
00003C60  B90001            mov cx,0x100
00003C63  E87AEA            call word 0x26e0
00003C66  03C0              add ax,ax
00003C68  8BC8              mov cx,ax
00003C6A  03C0              add ax,ax
00003C6C  03C1              add ax,cx
00003C6E  97                xchg ax,di
00003C6F  81C77810          add di,0x1078
00003C73  1E                push ds
00003C74  57                push di
00003C75  E8C8D0            call word 0xd40
00003C78  03456E            add ax,[di+0x6e]
00003C7B  64B105            fs mov cl,0x5
00003C7E  E8D5D0            call word 0xd56
00003C81  E90503            jmp word 0x3f89
00003C84  3DB700            cmp ax,0xb7
00003C87  7403              jz 0x3c8c
00003C89  E92A00            jmp word 0x3cb6
00003C8C  8A46FD            mov al,[bp-0x3]
00003C8F  32E4              xor ah,ah
00003C91  B90001            mov cx,0x100
00003C94  E849EA            call word 0x26e0
00003C97  03C0              add ax,ax
00003C99  8BC8              mov cx,ax
00003C9B  03C0              add ax,ax
00003C9D  03C1              add ax,cx
00003C9F  97                xchg ax,di
00003CA0  81C77810          add di,0x1078
00003CA4  1E                push ds
00003CA5  57                push di
00003CA6  B81A00            mov ax,0x1a
00003CA9  8AE0              mov ah,al
00003CAB  B001              mov al,0x1
00003CAD  50                push ax
00003CAE  B105              mov cl,0x5
00003CB0  E8A3D0            call word 0xd56
00003CB3  E9D302            jmp word 0x3f89
00003CB6  3DB900            cmp ax,0xb9
00003CB9  7403              jz 0x3cbe
00003CBB  E92A00            jmp word 0x3ce8
00003CBE  8A46FD            mov al,[bp-0x3]
00003CC1  32E4              xor ah,ah
00003CC3  B90001            mov cx,0x100
00003CC6  E817EA            call word 0x26e0
00003CC9  03C0              add ax,ax
00003CCB  8BC8              mov cx,ax
00003CCD  03C0              add ax,ax
00003CCF  03C1              add ax,cx
00003CD1  97                xchg ax,di
00003CD2  81C77810          add di,0x1078
00003CD6  1E                push ds
00003CD7  57                push di
00003CD8  B81B00            mov ax,0x1b
00003CDB  8AE0              mov ah,al
00003CDD  B001              mov al,0x1
00003CDF  50                push ax
00003CE0  B105              mov cl,0x5
00003CE2  E871D0            call word 0xd56
00003CE5  E9A102            jmp word 0x3f89
00003CE8  3DBB00            cmp ax,0xbb
00003CEB  7403              jz 0x3cf0
00003CED  E92A00            jmp word 0x3d1a
00003CF0  8A46FD            mov al,[bp-0x3]
00003CF3  32E4              xor ah,ah
00003CF5  B90001            mov cx,0x100
00003CF8  E8E5E9            call word 0x26e0
00003CFB  03C0              add ax,ax
00003CFD  8BC8              mov cx,ax
00003CFF  03C0              add ax,ax
00003D01  03C1              add ax,cx
00003D03  97                xchg ax,di
00003D04  81C77810          add di,0x1078
00003D08  1E                push ds
00003D09  57                push di
00003D0A  E833D0            call word 0xd40
00003D0D  0450              add al,0x50
00003D0F  6755              a32 push bp
00003D11  70B1              jo 0x3cc4
00003D13  05E83F            add ax,0x3fe8
00003D16  D0E9              shr cl,1
00003D18  6F                outsw
00003D19  023D              add bh,[di]
00003D1B  BC0074            mov sp,0x7400
00003D1E  03E9              add bp,cx
00003D20  2A00              sub al,[bx+si]
00003D22  8A46FD            mov al,[bp-0x3]
00003D25  32E4              xor ah,ah
00003D27  B90001            mov cx,0x100
00003D2A  E8B3E9            call word 0x26e0
00003D2D  03C0              add ax,ax
00003D2F  8BC8              mov cx,ax
00003D31  03C0              add ax,ax
00003D33  03C1              add ax,cx
00003D35  97                xchg ax,di
00003D36  81C77810          add di,0x1078
00003D3A  1E                push ds
00003D3B  57                push di
00003D3C  B81800            mov ax,0x18
00003D3F  8AE0              mov ah,al
00003D41  B001              mov al,0x1
00003D43  50                push ax
00003D44  B105              mov cl,0x5
00003D46  E80DD0            call word 0xd56
00003D49  E93D02            jmp word 0x3f89
00003D4C  3DBD00            cmp ax,0xbd
00003D4F  7403              jz 0x3d54
00003D51  E92A00            jmp word 0x3d7e
00003D54  8A46FD            mov al,[bp-0x3]
00003D57  32E4              xor ah,ah
00003D59  B90001            mov cx,0x100
00003D5C  E881E9            call word 0x26e0
00003D5F  03C0              add ax,ax
00003D61  8BC8              mov cx,ax
00003D63  03C0              add ax,ax
00003D65  03C1              add ax,cx
00003D67  97                xchg ax,di
00003D68  81C77810          add di,0x1078
00003D6C  1E                push ds
00003D6D  57                push di
00003D6E  E8CFCF            call word 0xd40
00003D71  0448              add al,0x48
00003D73  6F                outsw
00003D74  6D                insw
00003D75  65B105            gs mov cl,0x5
00003D78  E8DBCF            call word 0xd56
00003D7B  E90B02            jmp word 0x3f89
00003D7E  3DC000            cmp ax,0xc0
00003D81  7C05              jl 0x3d88
00003D83  3DC900            cmp ax,0xc9
00003D86  7E03              jng 0x3d8b
00003D88  E97800            jmp word 0x3e03
00003D8B  B8CA00            mov ax,0xca
00003D8E  50                push ax
00003D8F  8A46FD            mov al,[bp-0x3]
00003D92  32E4              xor ah,ah
00003D94  59                pop cx
00003D95  91                xchg ax,cx
00003D96  2BC1              sub ax,cx
00003D98  50                push ax
00003D99  B80000            mov ax,0x0
00003D9C  50                push ax
00003D9D  8A46FD            mov al,[bp-0x3]
00003DA0  32E4              xor ah,ah
00003DA2  B90001            mov cx,0x100
00003DA5  E838E9            call word 0x26e0
00003DA8  03C0              add ax,ax
00003DAA  8BC8              mov cx,ax
00003DAC  03C0              add ax,ax
00003DAE  03C1              add ax,cx
00003DB0  97                xchg ax,di
00003DB1  81C77810          add di,0x1078
00003DB5  1E                push ds
00003DB6  B105              mov cl,0x5
00003DB8  E8B0E7            call word 0x256b
00003DBB  8A46FD            mov al,[bp-0x3]
00003DBE  32E4              xor ah,ah
00003DC0  B90001            mov cx,0x100
00003DC3  E81AE9            call word 0x26e0
00003DC6  03C0              add ax,ax
00003DC8  8BC8              mov cx,ax
00003DCA  03C0              add ax,ax
00003DCC  03C1              add ax,cx
00003DCE  97                xchg ax,di
00003DCF  81C77810          add di,0x1078
00003DD3  1E                push ds
00003DD4  57                push di
00003DD5  B84600            mov ax,0x46
00003DD8  50                push ax
00003DD9  8A46FD            mov al,[bp-0x3]
00003DDC  32E4              xor ah,ah
00003DDE  B90001            mov cx,0x100
00003DE1  E8FCE8            call word 0x26e0
00003DE4  03C0              add ax,ax
00003DE6  8BC8              mov cx,ax
00003DE8  03C0              add ax,ax
00003DEA  03C1              add ax,cx
00003DEC  97                xchg ax,di
00003DED  81C77810          add di,0x1078
00003DF1  1E                push ds
00003DF2  E832CF            call word 0xd27
00003DF5  E8C4D1            call word 0xfbc
00003DF8  E83FD0            call word 0xe3a
00003DFB  B105              mov cl,0x5
00003DFD  E856CF            call word 0xd56
00003E00  E98601            jmp word 0x3f89
00003E03  3DD200            cmp ax,0xd2
00003E06  7C05              jl 0x3e0d
00003E08  3DD800            cmp ax,0xd8
00003E0B  7E03              jng 0x3e10
00003E0D  E95100            jmp word 0x3e61
00003E10  8A46FD            mov al,[bp-0x3]
00003E13  32E4              xor ah,ah
00003E15  B90001            mov cx,0x100
00003E18  E8C5E8            call word 0x26e0
00003E1B  03C0              add ax,ax
00003E1D  8BC8              mov cx,ax
00003E1F  03C0              add ax,ax
00003E21  03C1              add ax,cx
00003E23  97                xchg ax,di
00003E24  81C77810          add di,0x1078
00003E28  1E                push ds
00003E29  57                push di
00003E2A  E813CF            call word 0xd40
00003E2D  0441              add al,0x41
00003E2F  6C                insb
00003E30  742D              jz 0x3e5f
00003E32  B80401            mov ax,0x104
00003E35  50                push ax
00003E36  8A46FD            mov al,[bp-0x3]
00003E39  32E4              xor ah,ah
00003E3B  59                pop cx
00003E3C  91                xchg ax,cx
00003E3D  2BC1              sub ax,cx
00003E3F  81E82C00          sub ax,0x2c
00003E43  B90700            mov cx,0x7
00003E46  E897E8            call word 0x26e0
00003E49  97                xchg ax,di
00003E4A  2E8A85BB36        mov al,[cs:di+0x36bb]
00003E4F  32E4              xor ah,ah
00003E51  8AE0              mov ah,al
00003E53  B001              mov al,0x1
00003E55  50                push ax
00003E56  E8E1CF            call word 0xe3a
00003E59  B105              mov cl,0x5
00003E5B  E8F8CE            call word 0xd56
00003E5E  E92801            jmp word 0x3f89
00003E61  3DDE00            cmp ax,0xde
00003E64  7C05              jl 0x3e6b
00003E66  3DE600            cmp ax,0xe6
00003E69  7E03              jng 0x3e6e
00003E6B  E95100            jmp word 0x3ebf
00003E6E  8A46FD            mov al,[bp-0x3]
00003E71  32E4              xor ah,ah
00003E73  B90001            mov cx,0x100
00003E76  E867E8            call word 0x26e0
00003E79  03C0              add ax,ax
00003E7B  8BC8              mov cx,ax
00003E7D  03C0              add ax,ax
00003E7F  03C1              add ax,cx
00003E81  97                xchg ax,di
00003E82  81C77810          add di,0x1078
00003E86  1E                push ds
00003E87  57                push di
00003E88  E8B5CE            call word 0xd40
00003E8B  0441              add al,0x41
00003E8D  6C                insb
00003E8E  742D              jz 0x3ebd
00003E90  B80401            mov ax,0x104
00003E93  50                push ax
00003E94  8A46FD            mov al,[bp-0x3]
00003E97  32E4              xor ah,ah
00003E99  59                pop cx
00003E9A  91                xchg ax,cx
00003E9B  2BC1              sub ax,cx
00003E9D  81E81E00          sub ax,0x1e
00003EA1  B90900            mov cx,0x9
00003EA4  E839E8            call word 0x26e0
00003EA7  97                xchg ax,di
00003EA8  2E8A85B236        mov al,[cs:di+0x36b2]
00003EAD  32E4              xor ah,ah
00003EAF  8AE0              mov ah,al
00003EB1  B001              mov al,0x1
00003EB3  50                push ax
00003EB4  E883CF            call word 0xe3a
00003EB7  B105              mov cl,0x5
00003EB9  E89ACE            call word 0xd56
00003EBC  E9CA00            jmp word 0x3f89
00003EBF  3DEB00            cmp ax,0xeb
00003EC2  7C05              jl 0x3ec9
00003EC4  3DF400            cmp ax,0xf4
00003EC7  7E03              jng 0x3ecc
00003EC9  E95100            jmp word 0x3f1d
00003ECC  8A46FD            mov al,[bp-0x3]
00003ECF  32E4              xor ah,ah
00003ED1  B90001            mov cx,0x100
00003ED4  E809E8            call word 0x26e0
00003ED7  03C0              add ax,ax
00003ED9  8BC8              mov cx,ax
00003EDB  03C0              add ax,ax
00003EDD  03C1              add ax,cx
00003EDF  97                xchg ax,di
00003EE0  81C77810          add di,0x1078
00003EE4  1E                push ds
00003EE5  57                push di
00003EE6  E857CE            call word 0xd40
00003EE9  0441              add al,0x41
00003EEB  6C                insb
00003EEC  742D              jz 0x3f1b
00003EEE  B80401            mov ax,0x104
00003EF1  50                push ax
00003EF2  8A46FD            mov al,[bp-0x3]
00003EF5  32E4              xor ah,ah
00003EF7  59                pop cx
00003EF8  91                xchg ax,cx
00003EF9  2BC1              sub ax,cx
00003EFB  81E81000          sub ax,0x10
00003EFF  B90A00            mov cx,0xa
00003F02  E8DBE7            call word 0x26e0
00003F05  97                xchg ax,di
00003F06  2E8A85A836        mov al,[cs:di+0x36a8]
00003F0B  32E4              xor ah,ah
00003F0D  8AE0              mov ah,al
00003F0F  B001              mov al,0x1
00003F11  50                push ax
00003F12  E825CF            call word 0xe3a
00003F15  B105              mov cl,0x5
00003F17  E83CCE            call word 0xd56
00003F1A  E96C00            jmp word 0x3f89
00003F1D  3DF500            cmp ax,0xf5
00003F20  7403              jz 0x3f25
00003F22  E92B00            jmp word 0x3f50
00003F25  8A46FD            mov al,[bp-0x3]
00003F28  32E4              xor ah,ah
00003F2A  B90001            mov cx,0x100
00003F2D  E8B0E7            call word 0x26e0
00003F30  03C0              add ax,ax
00003F32  8BC8              mov cx,ax
00003F34  03C0              add ax,ax
00003F36  03C1              add ax,cx
00003F38  97                xchg ax,di
00003F39  81C77810          add di,0x1078
00003F3D  1E                push ds
00003F3E  57                push di
00003F3F  E8FECD            call word 0xd40
00003F42  055368            add ax,0x6853
00003F45  54                push sp
00003F46  61                popaw
00003F47  62B105E8          bound si,[bx+di-0x17fb]
00003F4B  09CE              or si,cx
00003F4D  E93900            jmp word 0x3f89
00003F50  8A46FD            mov al,[bp-0x3]
00003F53  32E4              xor ah,ah
00003F55  50                push ax
00003F56  B80000            mov ax,0x0
00003F59  50                push ax
00003F5A  8D7EF7            lea di,[bp-0x9]
00003F5D  16                push ss
00003F5E  B105              mov cl,0x5
00003F60  E808E6            call word 0x256b
00003F63  8A46FD            mov al,[bp-0x3]
00003F66  32E4              xor ah,ah
00003F68  B90001            mov cx,0x100
00003F6B  E872E7            call word 0x26e0
00003F6E  03C0              add ax,ax
00003F70  8BC8              mov cx,ax
00003F72  03C0              add ax,ax
00003F74  03C1              add ax,cx
00003F76  97                xchg ax,di
00003F77  81C77810          add di,0x1078
00003F7B  1E                push ds
00003F7C  57                push di
00003F7D  8D7EF7            lea di,[bp-0x9]
00003F80  16                push ss
00003F81  E8A3CD            call word 0xd27
00003F84  B105              mov cl,0x5
00003F86  E8CDCD            call word 0xd56
00003F89  59                pop cx
00003F8A  49                dec cx
00003F8B  7406              jz 0x3f93
00003F8D  FE46FD            inc byte [bp-0x3]
00003F90  E952F7            jmp word 0x36e5
00003F93  E90000            jmp word 0x3f96
00003F96  8BE5              mov sp,bp
00003F98  5D                pop bp
00003F99  C3                ret
00003F9A  55                push bp
00003F9B  8BEC              mov bp,sp
00003F9D  55                push bp
00003F9E  E90000            jmp word 0x3fa1
00003FA1  B90D00            mov cx,0xd
00003FA4  E851E7            call word 0x26f8
00003FA7  E8D9F6            call word 0x3683
00003FAA  B88635            mov ax,0x3586
00003FAD  A3A700            mov [0xa7],ax
00003FB0  E90000            jmp word 0x3fb3
00003FB3  8BE5              mov sp,bp
00003FB5  5D                pop bp
00003FB6  C3                ret
00003FB7  55                push bp
00003FB8  8BEC              mov bp,sp
00003FBA  55                push bp
00003FBB  E90000            jmp word 0x3fbe
00003FBE  4C                dec sp
00003FBF  B90800            mov cx,0x8
00003FC2  E833E7            call word 0x26f8
00003FC5  4C                dec sp
00003FC6  E848EF            call word 0x2f11
00003FC9  B90000            mov cx,0x0
00003FCC  BAFF00            mov dx,0xff
00003FCF  E818E7            call word 0x26ea
00003FD2  8846FD            mov [bp-0x3],al
00003FD5  8A46FD            mov al,[bp-0x3]
00003FD8  32E4              xor ah,ah
00003FDA  50                push ax
00003FDB  E857D0            call word 0x1035
00003FDE  B85900            mov ax,0x59
00003FE1  E863D0            call word 0x1047
00003FE4  B84E00            mov ax,0x4e
00003FE7  E85DD0            call word 0x1047
00003FEA  E82ED1            call word 0x111b
00003FED  7503              jnz 0x3ff2
00003FEF  E9CDFF            jmp word 0x3fbf
00003FF2  8A46FD            mov al,[bp-0x3]
00003FF5  32E4              xor ah,ah
00003FF7  3D5900            cmp ax,0x59
00003FFA  B80100            mov ax,0x1
00003FFD  7401              jz 0x4000
00003FFF  48                dec ax
00004000  B90000            mov cx,0x0
00004003  BA0100            mov dx,0x1
00004006  E8E1E6            call word 0x26ea
00004009  884604            mov [bp+0x4],al
0000400C  E90000            jmp word 0x400f
0000400F  8A4604            mov al,[bp+0x4]
00004012  32E4              xor ah,ah
00004014  0BC0              or ax,ax
00004016  8BE5              mov sp,bp
00004018  5D                pop bp
00004019  C20100            ret 0x1
0000401C  55                push bp
0000401D  8BEC              mov bp,sp
0000401F  55                push bp
00004020  E90000            jmp word 0x4023
00004023  8B4604            mov ax,[bp+0x4]
00004026  2B4606            sub ax,[bp+0x6]
00004029  050100            add ax,0x1
0000402C  E812CC            call word 0xc41
0000402F  034606            add ax,[bp+0x6]
00004032  894608            mov [bp+0x8],ax
00004035  E90000            jmp word 0x4038
00004038  8B4608            mov ax,[bp+0x8]
0000403B  8BE5              mov sp,bp
0000403D  5D                pop bp
0000403E  C20600            ret 0x6
00004041  55                push bp
00004042  8BEC              mov bp,sp
00004044  55                push bp
00004045  E90000            jmp word 0x4048
00004048  50                push ax
00004049  B80100            mov ax,0x1
0000404C  50                push ax
0000404D  B8D007            mov ax,0x7d0
00004050  59                pop cx
00004051  91                xchg ax,cx
00004052  2BC8              sub cx,ax
00004054  7D03              jnl 0x4059
00004056  E92700            jmp word 0x4080
00004059  41                inc cx
0000405A  8946FC            mov [bp-0x4],ax
0000405D  51                push cx
0000405E  B90C00            mov cx,0xc
00004061  E894E6            call word 0x26f8
00004064  50                push ax
00004065  B8C800            mov ax,0xc8
00004068  50                push ax
00004069  B8A00F            mov ax,0xfa0
0000406C  2B46FC            sub ax,[bp-0x4]
0000406F  50                push ax
00004070  E8A9FF            call word 0x401c
00004073  E83BC6            call word 0x6b1
00004076  59                pop cx
00004077  49                dec cx
00004078  7406              jz 0x4080
0000407A  FF46FC            inc word [bp-0x4]
0000407D  E9DDFF            jmp word 0x405d
00004080  E855C6            call word 0x6d8
00004083  E90000            jmp word 0x4086
00004086  8BE5              mov sp,bp
00004088  5D                pop bp
00004089  C3                ret
0000408A  55                push bp
0000408B  8BEC              mov bp,sp
0000408D  55                push bp
0000408E  E90000            jmp word 0x4091
00004091  8B4608            mov ax,[bp+0x8]
00004094  3B4606            cmp ax,[bp+0x6]
00004097  7503              jnz 0x409c
00004099  E92F00            jmp word 0x40cb
0000409C  8B4608            mov ax,[bp+0x8]
0000409F  E80FC6            call word 0x6b1
000040A2  8B4604            mov ax,[bp+0x4]
000040A5  E8D1C3            call word 0x479
000040A8  8B4608            mov ax,[bp+0x8]
000040AB  3B4606            cmp ax,[bp+0x6]
000040AE  7F03              jg 0x40b3
000040B0  E90C00            jmp word 0x40bf
000040B3  8B4608            mov ax,[bp+0x8]
000040B6  2D0100            sub ax,0x1
000040B9  894608            mov [bp+0x8],ax
000040BC  E90900            jmp word 0x40c8
000040BF  8B4608            mov ax,[bp+0x8]
000040C2  050100            add ax,0x1
000040C5  894608            mov [bp+0x8],ax
000040C8  E9C6FF            jmp word 0x4091
000040CB  E90000            jmp word 0x40ce
000040CE  8BE5              mov sp,bp
000040D0  5D                pop bp
000040D1  C20600            ret 0x6
000040D4  55                push bp
000040D5  8BEC              mov bp,sp
000040D7  55                push bp
000040D8  E90000            jmp word 0x40db
000040DB  4C                dec sp
000040DC  B80100            mov ax,0x1
000040DF  50                push ax
000040E0  B80800            mov ax,0x8
000040E3  59                pop cx
000040E4  91                xchg ax,cx
000040E5  2BC8              sub cx,ax
000040E7  7D03              jnl 0x40ec
000040E9  E97D00            jmp word 0x4169
000040EC  41                inc cx
000040ED  8846FD            mov [bp-0x3],al
000040F0  51                push cx
000040F1  B90C00            mov cx,0xc
000040F4  E801E6            call word 0x26f8
000040F7  B8E803            mov ax,0x3e8
000040FA  50                push ax
000040FB  B86400            mov ax,0x64
000040FE  50                push ax
000040FF  8A46FD            mov al,[bp-0x3]
00004102  32E4              xor ah,ah
00004104  59                pop cx
00004105  F7E9              imul cx
00004107  59                pop cx
00004108  91                xchg ax,cx
00004109  2BC1              sub ax,cx
0000410B  50                push ax
0000410C  B84C04            mov ax,0x44c
0000410F  50                push ax
00004110  B86400            mov ax,0x64
00004113  50                push ax
00004114  8A46FD            mov al,[bp-0x3]
00004117  32E4              xor ah,ah
00004119  59                pop cx
0000411A  F7E9              imul cx
0000411C  59                pop cx
0000411D  91                xchg ax,cx
0000411E  2BC1              sub ax,cx
00004120  50                push ax
00004121  B80100            mov ax,0x1
00004124  50                push ax
00004125  E862FF            call word 0x408a
00004128  B90C00            mov cx,0xc
0000412B  E8CAE5            call word 0x26f8
0000412E  B84C04            mov ax,0x44c
00004131  50                push ax
00004132  B86400            mov ax,0x64
00004135  50                push ax
00004136  8A46FD            mov al,[bp-0x3]
00004139  32E4              xor ah,ah
0000413B  59                pop cx
0000413C  F7E9              imul cx
0000413E  59                pop cx
0000413F  91                xchg ax,cx
00004140  2BC1              sub ax,cx
00004142  50                push ax
00004143  B88403            mov ax,0x384
00004146  50                push ax
00004147  B86400            mov ax,0x64
0000414A  50                push ax
0000414B  8A46FD            mov al,[bp-0x3]
0000414E  32E4              xor ah,ah
00004150  59                pop cx
00004151  F7E9              imul cx
00004153  59                pop cx
00004154  91                xchg ax,cx
00004155  2BC1              sub ax,cx
00004157  50                push ax
00004158  B80100            mov ax,0x1
0000415B  50                push ax
0000415C  E82BFF            call word 0x408a
0000415F  59                pop cx
00004160  49                dec cx
00004161  7406              jz 0x4169
00004163  FE46FD            inc byte [bp-0x3]
00004166  E987FF            jmp word 0x40f0
00004169  B90800            mov cx,0x8
0000416C  E889E5            call word 0x26f8
0000416F  E8CFFE            call word 0x4041
00004172  E90000            jmp word 0x4175
00004175  8BE5              mov sp,bp
00004177  5D                pop bp
00004178  C3                ret
00004179  55                push bp
0000417A  8BEC              mov bp,sp
0000417C  55                push bp
0000417D  E90000            jmp word 0x4180
00004180  B90C00            mov cx,0xc
00004183  E872E5            call word 0x26f8
00004186  B8D007            mov ax,0x7d0
00004189  50                push ax
0000418A  B8F401            mov ax,0x1f4
0000418D  50                push ax
0000418E  B80200            mov ax,0x2
00004191  50                push ax
00004192  E8F5FE            call word 0x408a
00004195  B90800            mov cx,0x8
00004198  E85DE5            call word 0x26f8
0000419B  E8A3FE            call word 0x4041
0000419E  E90000            jmp word 0x41a1
000041A1  8BE5              mov sp,bp
000041A3  5D                pop bp
000041A4  C3                ret
000041A5  55                push bp
000041A6  8BEC              mov bp,sp
000041A8  55                push bp
000041A9  E90000            jmp word 0x41ac
000041AC  83EC16            sub sp,byte +0x16
000041AF  8D7EEA            lea di,[bp-0x16]
000041B2  16                push ss
000041B3  57                push di
000041B4  C47EE4            les di,[bp-0x1c]
000041B7  06                push es
000041B8  57                push di
000041B9  B80100            mov ax,0x1
000041BC  B90800            mov cx,0x8
000041BF  D3E0              shl ax,cl
000041C1  5F                pop di
000041C2  07                pop es
000041C3  268905            mov [es:di],ax
000041C6  8D7EEA            lea di,[bp-0x16]
000041C9  16                push ss
000041CA  E8D5E4            call word 0x26a2
000041CD  CD16              int 0x16
000041CF  E8EBE4            call word 0x26bd
000041D2  C47EE4            les di,[bp-0x1c]
000041D5  268B4512          mov ax,[es:di+0x12]
000041D9  254000            and ax,0x40
000041DC  3D0000            cmp ax,0x0
000041DF  B80100            mov ax,0x1
000041E2  7401              jz 0x41e5
000041E4  48                dec ax
000041E5  B90000            mov cx,0x0
000041E8  BA0100            mov dx,0x1
000041EB  E8FCE4            call word 0x26ea
000041EE  884604            mov [bp+0x4],al
000041F1  58                pop ax
000041F2  58                pop ax
000041F3  E90000            jmp word 0x41f6
000041F6  8A4604            mov al,[bp+0x4]
000041F9  32E4              xor ah,ah
000041FB  0BC0              or ax,ax
000041FD  8BE5              mov sp,bp
000041FF  5D                pop bp
00004200  C20100            ret 0x1
00004203  55                push bp
00004204  8BEC              mov bp,sp
00004206  55                push bp
00004207  E90000            jmp word 0x420a
0000420A  83EC30            sub sp,byte +0x30
0000420D  B94C00            mov cx,0x4c
00004210  E8E5E4            call word 0x26f8
00004213  4C                dec sp
00004214  E829CB            call word 0xd40
00004217  0B4D75            or cx,[di+0x75]
0000421A  6D                insw
0000421B  6D                insw
0000421C  6965732E64        imul sp,[di+0x73],word 0x642e
00004221  666E              o32 outsb
00004223  B114              mov cl,0x14
00004225  E876CB            call word 0xd9e
00004228  E8E6EA            call word 0x2d11
0000422B  3401              xor al,0x1
0000422D  7503              jnz 0x4232
0000422F  E92700            jmp word 0x4259
00004232  B81600            mov ax,0x16
00004235  A35D0E            mov [0xe5d],ax
00004238  B81000            mov ax,0x10
0000423B  A35B0E            mov [0xe5b],ax
0000423E  B81100            mov ax,0x11
00004241  A3610E            mov [0xe61],ax
00004244  B80C00            mov ax,0xc
00004247  A35F0E            mov [0xe5f],ax
0000424A  B80300            mov ax,0x3
0000424D  A36C10            mov [0x106c],ax
00004250  B86400            mov ax,0x64
00004253  A36810            mov [0x1068],ax
00004256  E98D00            jmp word 0x42e6
00004259  8D7ECE            lea di,[bp-0x32]
0000425C  16                push ss
0000425D  57                push di
0000425E  E8DFCA            call word 0xd40
00004261  0B4D75            or cx,[di+0x75]
00004264  6D                insw
00004265  6D                insw
00004266  6965732E64        imul sp,[di+0x73],word 0x642e
0000426B  666E              o32 outsb
0000426D  E8FFDF            call word 0x226f
00004270  E8FAE4            call word 0x276d
00004273  8D7ECE            lea di,[bp-0x32]
00004276  16                push ss
00004277  B90200            mov cx,0x2
0000427A  E8FBDF            call word 0x2278
0000427D  E8EDE4            call word 0x276d
00004280  8D7ECE            lea di,[bp-0x32]
00004283  16                push ss
00004284  E8CCDB            call word 0x1e53
00004287  BF5D0E            mov di,0xe5d
0000428A  1E                push ds
0000428B  E860E0            call word 0x22ee
0000428E  E8DCE4            call word 0x276d
00004291  8D7ECE            lea di,[bp-0x32]
00004294  16                push ss
00004295  E8BBDB            call word 0x1e53
00004298  BF5B0E            mov di,0xe5b
0000429B  1E                push ds
0000429C  E84FE0            call word 0x22ee
0000429F  E8CBE4            call word 0x276d
000042A2  8D7ECE            lea di,[bp-0x32]
000042A5  16                push ss
000042A6  E8AADB            call word 0x1e53
000042A9  BF610E            mov di,0xe61
000042AC  1E                push ds
000042AD  E83EE0            call word 0x22ee
000042B0  E8BAE4            call word 0x276d
000042B3  8D7ECE            lea di,[bp-0x32]
000042B6  16                push ss
000042B7  E899DB            call word 0x1e53
000042BA  BF5F0E            mov di,0xe5f
000042BD  1E                push ds
000042BE  E82DE0            call word 0x22ee
000042C1  E8A9E4            call word 0x276d
000042C4  8D7ECE            lea di,[bp-0x32]
000042C7  16                push ss
000042C8  E888DB            call word 0x1e53
000042CB  BF6C10            mov di,0x106c
000042CE  1E                push ds
000042CF  E81CE0            call word 0x22ee
000042D2  E898E4            call word 0x276d
000042D5  8D7ECE            lea di,[bp-0x32]
000042D8  16                push ss
000042D9  E877DB            call word 0x1e53
000042DC  BF6810            mov di,0x1068
000042DF  1E                push ds
000042E0  E80BE0            call word 0x22ee
000042E3  E887E4            call word 0x276d
000042E6  E90000            jmp word 0x42e9
000042E9  8BE5              mov sp,bp
000042EB  5D                pop bp
000042EC  C3                ret
000042ED  55                push bp
000042EE  8BEC              mov bp,sp
000042F0  55                push bp
000042F1  E90000            jmp word 0x42f4
000042F4  83EC33            sub sp,byte +0x33
000042F7  E807BF            call word 0x201
000042FA  E882DB            call word 0x1e7f
000042FD  E826DF            call word 0x2226
00004300  3320              xor sp,[bx+si]
00004302  2020              and [bx+si],ah
00004304  2020              and [bx+si],ah
00004306  2020              and [bx+si],ah
00004308  2020              and [bx+si],ah
0000430A  2020              and [bx+si],ah
0000430C  2020              and [bx+si],ah
0000430E  205468            and [si+0x68],dl
00004311  6973207072        imul si,[bp+di+0x20],word 0x7270
00004316  6F                outsw
00004317  677261            jc 0x437b
0000431A  6D                insw
0000431B  206973            and [bx+di+0x73],ch
0000431E  20696E            and [bx+di+0x6e],ch
00004321  207468            and [si+0x68],dh
00004324  65207075          and [gs:bx+si+0x75],dh
00004328  626C69            bound bp,[si+0x69]
0000432B  6320              arpl [bx+si],sp
0000432D  646F              fs outsw
0000432F  6D                insw
00004330  61                popaw
00004331  696E2EE805        imul bp,[bp+0x2e],word 0x5e8
00004336  DFE8              fucomip st0
00004338  33E4              xor sp,sp
0000433A  E842DB            call word 0x1e7f
0000433D  E8FCDE            call word 0x223c
00004340  E82AE4            call word 0x276d
00004343  E839DB            call word 0x1e7f
00004346  E8DDDE            call word 0x2226
00004349  42                inc dx
0000434A  2020              and [bx+si],ah
0000434C  2020              and [bx+si],ah
0000434E  2020              and [bx+si],ah
00004350  2020              and [bx+si],ah
00004352  2020              and [bx+si],ah
00004354  2020              and [bx+si],ah
00004356  2020              and [bx+si],ah
00004358  53                push bx
00004359  656E              gs outsb
0000435B  6420616E          and [fs:bx+di+0x6e],ah
0000435F  7920              jns 0x4381
00004361  636F6D            arpl [bx+0x6d],bp
00004364  6D                insw
00004365  656E              gs outsb
00004367  7473              jz 0x43dc
00004369  206F72            and [bx+0x72],ch
0000436C  207375            and [bp+di+0x75],dh
0000436F  6767657374        gs jnc 0x43e8
00004374  696F6E7320        imul bp,[bx+0x6e],word 0x2073
00004379  666F              outsd
0000437B  7220              jc 0x439d
0000437D  696D70726F        imul bp,[di+0x70],word 0x6f72
00004382  7665              jna 0x43e9
00004384  6D                insw
00004385  656E              gs outsb
00004387  7420              jz 0x43a9
00004389  746F              jz 0x43fa
0000438B  3AE8              cmp ch,al
0000438D  AD                lodsw
0000438E  DEE8              fsubp st0
00004390  DBE3              fninit
00004392  E8EADA            call word 0x1e7f
00004395  E8A4DE            call word 0x223c
00004398  E8D2E3            call word 0x276d
0000439B  E8E1DA            call word 0x1e7f
0000439E  E885DE            call word 0x2226
000043A1  2C20              sub al,0x20
000043A3  2020              and [bx+si],ah
000043A5  2020              and [bx+si],ah
000043A7  2020              and [bx+si],ah
000043A9  2020              and [bx+si],ah
000043AB  2020              and [bx+si],ah
000043AD  2020              and [bx+si],ah
000043AF  204175            and [bx+di+0x75],al
000043B2  7468              jz 0x441c
000043B4  6F                outsw
000043B5  7220              jc 0x43d7
000043B7  2020              and [bx+si],ah
000043B9  2020              and [bx+si],ah
000043BB  2020              and [bx+si],ah
000043BD  2020              and [bx+si],ah
000043BF  2020              and [bx+si],ah
000043C1  49                dec cx
000043C2  61                popaw
000043C3  696E20572E        imul bp,[bp+0x20],word 0x2e57
000043C8  204272            and [bp+si+0x72],al
000043CB  6F                outsw
000043CC  776E              ja 0x443c
000043CE  E86BDE            call word 0x223c
000043D1  E899E3            call word 0x276d
000043D4  E8A8DA            call word 0x1e7f
000043D7  E84CDE            call word 0x2226
000043DA  2920              sub [bx+si],sp
000043DC  2020              and [bx+si],ah
000043DE  2020              and [bx+si],ah
000043E0  2020              and [bx+si],ah
000043E2  2020              and [bx+si],ah
000043E4  2020              and [bx+si],ah
000043E6  2020              and [bx+si],ah
000043E8  20436F            and [bp+di+0x6f],al
000043EB  6D                insw
000043EC  7075              jo 0x4463
000043EE  53                push bx
000043EF  657276            gs jc 0x4468
000043F2  6520492E          and [gs:bx+di+0x2e],cl
000043F6  44                inc sp
000043F7  2E2020            and [cs:bx+si],ah
000043FA  37                aaa
000043FB  353230            xor ax,0x3032
000043FE  362C32            ss sub al,0x32
00004401  353631            xor ax,0x3136
00004404  E835DE            call word 0x223c
00004407  E863E3            call word 0x276d
0000440A  E872DA            call word 0x1e7f
0000440D  E82CDE            call word 0x223c
00004410  E85AE3            call word 0x276d
00004413  E869DA            call word 0x1e7f
00004416  E80DDE            call word 0x2226
00004419  1D2020            sbb ax,0x2020
0000441C  2020              and [bx+si],ah
0000441E  2020              and [bx+si],ah
00004420  2020              and [bx+si],ah
00004422  2020              and [bx+si],ah
00004424  2020              and [bx+si],ah
00004426  2020              and [bx+si],ah
00004428  3238              xor bh,[bx+si]
0000442A  3132              xor [bp+si],si
0000442C  20532E            and [bp+di+0x2e],dl
0000442F  2032              and [bp+si],dh
00004431  32362053          xor dh,[0x5320]
00004435  742E              jz 0x4465
00004437  E802DE            call word 0x223c
0000443A  E830E3            call word 0x276d
0000443D  E83FDA            call word 0x1e7f
00004440  E8E3DD            call word 0x2226
00004443  2220              and ah,[bx+si]
00004445  2020              and [bx+si],ah
00004447  2020              and [bx+si],ah
00004449  2020              and [bx+si],ah
0000444B  2020              and [bx+si],ah
0000444D  2020              and [bx+si],ah
0000444F  2020              and [bx+si],ah
00004451  204465            and [si+0x65],al
00004454  7320              jnc 0x4476
00004456  4D                dec bp
00004457  6F                outsw
00004458  696E65732C        imul bp,[bp+0x65],word 0x2c73
0000445D  205741            and [bx+0x41],dl
00004460  2039              and [bx+di],bh
00004462  3831              cmp [bx+di],dh
00004464  3838              cmp [bx+si],bh
00004466  E8D3DD            call word 0x223c
00004469  E801E3            call word 0x276d
0000446C  E810DA            call word 0x1e7f
0000446F  E8CADD            call word 0x223c
00004472  E8F8E2            call word 0x276d
00004475  E807DA            call word 0x1e7f
00004478  E8C1DD            call word 0x223c
0000447B  E8EFE2            call word 0x276d
0000447E  E8FED9            call word 0x1e7f
00004481  E8B8DD            call word 0x223c
00004484  E8E6E2            call word 0x276d
00004487  E8F5D9            call word 0x1e7f
0000448A  E899DD            call word 0x2226
0000448D  4D                dec bp
0000448E  54                push sp
0000448F  686973            push word 0x7369
00004492  207072            and [bx+si+0x72],dh
00004495  6F                outsw
00004496  677261            jc 0x44fa
00004499  6D                insw
0000449A  206973            and [bx+di+0x73],ch
0000449D  207772            and [bx+0x72],dh
000044A0  697474656E        imul si,[si+0x74],word 0x6e65
000044A5  20696E            and [bx+di+0x6e],ch
000044A8  205455            and [si+0x55],dl
000044AB  52                push dx
000044AC  42                inc dx
000044AD  4F                dec di
000044AE  205041            and [bx+si+0x41],dl
000044B1  53                push bx
000044B2  43                inc bx
000044B3  41                inc cx
000044B4  4C                dec sp
000044B5  2E2020            and [cs:bx+si],ah
000044B8  54                push sp
000044B9  6F                outsw
000044BA  207365            and [bp+di+0x65],dh
000044BD  65207768          and [gs:bx+0x68],dh
000044C1  792C              jns 0x44ef
000044C3  207472            and [si+0x72],dh
000044C6  7920              jns 0x44e8
000044C8  646566696E696E67  imul ebp,[gs:bp+0x69],dword 0x6c20676e
         -206C
000044D2  6F                outsw
000044D3  6F                outsw
000044D4  7020              jo 0x44f6
000044D6  64656C            gs insb
000044D9  61                popaw
000044DA  79E8              jns 0x44c4
000044DC  5E                pop si
000044DD  DDE8              fucomp st0
000044DF  8CE2              mov dx,fs
000044E1  E89BD9            call word 0x1e7f
000044E4  E83FDD            call word 0x2226
000044E7  41                inc cx
000044E8  6F                outsw
000044E9  66207A65          o32 and [bp+si+0x65],bh
000044ED  726F              jc 0x455e
000044EF  20616E            and [bx+di+0x6e],ah
000044F2  64204D75          and [fs:di+0x75],cl
000044F6  6D                insw
000044F7  6D                insw
000044F8  6965206465        imul sp,[di+0x20],word 0x6564
000044FD  6C                insb
000044FE  61                popaw
000044FF  7920              jns 0x4521
00004501  6F                outsw
00004502  66207A65          o32 and [bp+si+0x65],bh
00004506  726F              jc 0x4577
00004508  20616E            and [bx+di+0x6e],ah
0000450B  64207072          and [fs:bx+si+0x72],dh
0000450F  657061            gs jo 0x4573
00004512  7265              jc 0x4579
00004514  20746F            and [si+0x6f],dh
00004517  206C6F            and [si+0x6f],ch
0000451A  7365              jnc 0x4581
0000451C  20796F            and [bx+di+0x6f],bh
0000451F  7572              jnz 0x4593
00004521  207361            and [bp+di+0x61],dh
00004524  6E                outsb
00004525  6974792EE8        imul si,[si+0x79],word 0xe82e
0000452A  10DD              adc ch,bl
0000452C  E83EE2            call word 0x276d
0000452F  E84DD9            call word 0x1e7f
00004532  E807DD            call word 0x223c
00004535  E835E2            call word 0x276d
00004538  E844D9            call word 0x1e7f
0000453B  E8E8DC            call word 0x2226
0000453E  1D536F            sbb ax,0x6f53
00004541  7572              jnz 0x45b5
00004543  636520            arpl [di+0x20],sp
00004546  636F64            arpl [bx+0x64],bp
00004549  65206973          and [gs:bx+di+0x73],ch
0000454D  206E6F            and [bp+0x6f],ch
00004550  7420              jz 0x4572
00004552  61                popaw
00004553  7661              jna 0x45b6
00004555  696C61626C        imul bp,[si+0x61],word 0x6c62
0000455A  652EE8DDDC        cs call word 0x223c
0000455F  E80BE2            call word 0x276d
00004562  E81AD9            call word 0x1e7f
00004565  E8D4DC            call word 0x223c
00004568  E802E2            call word 0x276d
0000456B  E811D9            call word 0x1e7f
0000456E  E8CBDC            call word 0x223c
00004571  E8F9E1            call word 0x276d
00004574  B90700            mov cx,0x7
00004577  E87EE1            call word 0x26f8
0000457A  E8A7E8            call word 0x2e24
0000457D  E881BC            call word 0x201
00004580  E8FCD8            call word 0x1e7f
00004583  E8A0DC            call word 0x2226
00004586  4E                dec si
00004587  4C                dec sp
00004588  6F                outsw
00004589  6F                outsw
0000458A  7020              jo 0x45ac
0000458C  64656C            gs insb
0000458F  61                popaw
00004590  7920              jns 0x45b2
00004592  6973207468        imul si,[bp+di+0x20],word 0x6874
00004597  65206465          and [gs:si+0x65],ah
0000459B  6C                insb
0000459C  61                popaw
0000459D  7920              jns 0x45bf
0000459F  28696E            sub [bx+di+0x6e],ch
000045A2  206D69            and [di+0x69],ch
000045A5  6C                insb
000045A6  6C                insb
000045A7  697365636F        imul si,[bp+di+0x65],word 0x6f63
000045AC  6E                outsb
000045AD  647329            fs jnc 0x45d9
000045B0  20746F            and [si+0x6f],dh
000045B3  206170            and [bx+di+0x70],ah
000045B6  706C              jo 0x4624
000045B8  7920              jns 0x45da
000045BA  61                popaw
000045BB  667465            o32 jz 0x4623
000045BE  7220              jc 0x45e0
000045C0  7072              jo 0x4634
000045C2  6F                outsw
000045C3  677261            jc 0x4627
000045C6  6D                insw
000045C7  206861            and [bx+si+0x61],ch
000045CA  7320              jnc 0x45ec
000045CC  6D                insw
000045CD  6F                outsw
000045CE  7665              jna 0x4635
000045D0  6420616C          and [fs:bx+di+0x6c],ah
000045D4  6C                insb
000045D5  E864DC            call word 0x223c
000045D8  E892E1            call word 0x276d
000045DB  E8A1D8            call word 0x1e7f
000045DE  E845DC            call word 0x2226
000045E1  4B                dec bx
000045E2  4D                dec bp
000045E3  756D              jnz 0x4652
000045E5  6D                insw
000045E6  6965732E20        imul sp,[di+0x73],word 0x202e
000045EB  204D75            and [di+0x75],cl
000045EE  6D                insw
000045EF  6D                insw
000045F0  6965206465        imul sp,[di+0x20],word 0x6564
000045F5  6C                insb
000045F6  61                popaw
000045F7  7920              jns 0x4619
000045F9  61                popaw
000045FA  7070              jo 0x466c
000045FC  6C                insb
000045FD  6965732061        imul sp,[di+0x73],word 0x6120
00004602  667465            o32 jz 0x466a
00004605  7220              jc 0x4627
00004607  6D                insw
00004608  6F                outsw
00004609  7669              jna 0x4674
0000460B  6E                outsb
0000460C  67206561          and [ebp+0x61],ah
00004610  636820            arpl [bx+si+0x20],bp
00004613  4D                dec bp
00004614  756D              jnz 0x4683
00004616  6D                insw
00004617  69652E2020        imul sp,[di+0x2e],word 0x2020
0000461C  54                push sp
0000461D  6F                outsw
0000461E  207370            and [bp+di+0x70],dh
00004621  656564207468      and [fs:si+0x68],dh
00004627  65206761          and [gs:bx+0x61],ah
0000462B  6D                insw
0000462C  65E80CDC          gs call word 0x223c
00004630  E83AE1            call word 0x276d
00004633  E849D8            call word 0x1e7f
00004636  E8EDDB            call word 0x2226
00004639  4E                dec si
0000463A  7570              jnz 0x46ac
0000463C  2C20              sub al,0x20
0000463E  7265              jc 0x46a5
00004640  647563            fs jnz 0x46a6
00004643  65207468          and [gs:si+0x68],dh
00004647  65204D75          and [gs:di+0x75],cl
0000464B  6D                insw
0000464C  6D                insw
0000464D  6965206465        imul sp,[di+0x20],word 0x6564
00004652  6C                insb
00004653  61                popaw
00004654  792E              jns 0x4684
00004656  2020              and [bx+si],ah
00004658  54                push sp
00004659  6F                outsw
0000465A  206D61            and [di+0x61],ch
0000465D  6B652074          imul sp,[di+0x20],byte +0x74
00004661  686520            push word 0x2065
00004664  6761              a32 popaw
00004666  6D                insw
00004667  65206D6F          and [gs:di+0x6f],ch
0000466B  7265              jc 0x46d2
0000466D  206469            and [si+0x69],ah
00004670  66666963756C7420  imul esp,[bp+di+0x75],dword 0x7420746c
         -74
00004679  6F                outsw
0000467A  7761              ja 0x46dd
0000467C  7264              jc 0x46e2
0000467E  7320              jnc 0x46a0
00004680  7468              jz 0x46ea
00004682  6520656E          and [gs:di+0x6e],ah
00004686  642CE8            fs sub al,0xe8
00004689  B1DB              mov cl,0xdb
0000468B  E8DFE0            call word 0x276d
0000468E  E8EED7            call word 0x1e7f
00004691  E892DB            call word 0x2226
00004694  3469              xor al,0x69
00004696  6E                outsb
00004697  637265            arpl [bp+si+0x65],si
0000469A  61                popaw
0000469B  7365              jnc 0x4702
0000469D  207468            and [si+0x68],dh
000046A0  65204D75          and [gs:di+0x75],cl
000046A4  6D                insw
000046A5  6D                insw
000046A6  6965206465        imul sp,[di+0x20],word 0x6564
000046AB  6C                insb
000046AC  61                popaw
000046AD  7920              jns 0x46cf
000046AF  61                popaw
000046B0  6E                outsb
000046B1  64207265          and [fs:bp+si+0x65],dh
000046B5  647563            fs jnz 0x471b
000046B8  65207468          and [gs:si+0x68],dh
000046BC  65206C6F          and [gs:si+0x6f],ch
000046C0  6F                outsw
000046C1  7020              jo 0x46e3
000046C3  64656C            gs insb
000046C6  61                popaw
000046C7  792E              jns 0x46f7
000046C9  E870DB            call word 0x223c
000046CC  E89EE0            call word 0x276d
000046CF  E8ADD7            call word 0x1e7f
000046D2  E867DB            call word 0x223c
000046D5  E895E0            call word 0x276d
000046D8  E8A4D7            call word 0x1e7f
000046DB  E848DB            call word 0x2226
000046DE  4C                dec sp
000046DF  4C                dec sp
000046E0  696D697473        imul bp,[di+0x69],word 0x7374
000046E5  206172            and [bx+di+0x72],ah
000046E8  652030            and [gs:bx+si],dh
000046EB  202E2E20          and [0x202e],ch
000046EF  3332              xor si,[bp+si]
000046F1  37                aaa
000046F2  3637              ss aaa
000046F4  20666F            and [bp+0x6f],ah
000046F7  7220              jc 0x4719
000046F9  4C                dec sp
000046FA  6F                outsw
000046FB  6F                outsw
000046FC  7020              jo 0x471e
000046FE  61                popaw
000046FF  6E                outsb
00004700  64204D75          and [fs:di+0x75],cl
00004704  6D                insw
00004705  6D                insw
00004706  6965206465        imul sp,[di+0x20],word 0x6564
0000470B  6C                insb
0000470C  61                popaw
0000470D  7973              jns 0x4782
0000470F  20616E            and [bx+di+0x6e],ah
00004712  642031            and [fs:bx+di],dh
00004715  202E2E20          and [0x202e],ch
00004719  3235              xor dh,[di]
0000471B  352066            xor ax,0x6620
0000471E  6F                outsw
0000471F  7220              jc 0x4741
00004721  7468              jz 0x478b
00004723  65206E75          and [gs:bp+0x75],ch
00004727  6D                insw
00004728  626572            bound sp,[di+0x72]
0000472B  E80EDB            call word 0x223c
0000472E  E83CE0            call word 0x276d
00004731  E84BD7            call word 0x1e7f
00004734  E8EFDA            call word 0x2226
00004737  226F66            and ch,[bx+0x66]
0000473A  204D75            and [di+0x75],cl
0000473D  6D                insw
0000473E  6D                insw
0000473F  6965732061        imul sp,[di+0x73],word 0x6120
00004744  6E                outsb
00004745  64207468          and [fs:si+0x68],dh
00004749  65206E75          and [gs:bp+0x75],ch
0000474D  6D                insw
0000474E  626572            bound sp,[di+0x72]
00004751  206F66            and [bx+0x66],ch
00004754  20686F            and [bx+si+0x6f],ch
00004757  6C                insb
00004758  6573E8            gs jnc 0x4743
0000475B  DF                db 0xdf
0000475C  DA                db 0xda
0000475D  E80DE0            call word 0x276d
00004760  E81CD7            call word 0x1e7f
00004763  E8D6DA            call word 0x223c
00004766  E804E0            call word 0x276d
00004769  E813D7            call word 0x1e7f
0000476C  E8B7DA            call word 0x2226
0000476F  4B                dec bx
00004770  50                push ax
00004771  726F              jc 0x47e2
00004773  677261            jc 0x47d7
00004776  6D                insw
00004777  207769            and [bx+0x69],dh
0000477A  6C                insb
0000477B  6C                insb
0000477C  206C6F            and [si+0x6f],ch
0000477F  6F                outsw
00004780  6B2066            imul sp,[bx+si],byte +0x66
00004783  6F                outsw
00004784  7220              jc 0x47a6
00004786  61                popaw
00004787  206669            and [bp+0x69],ah
0000478A  6C                insb
0000478B  65206361          and [gs:bp+di+0x61],ah
0000478F  6C                insb
00004790  6C                insb
00004791  6564204D55        and [fs:di+0x55],cl
00004796  4D                dec bp
00004797  4D                dec bp
00004798  49                dec cx
00004799  45                inc bp
0000479A  53                push bx
0000479B  2E44              cs inc sp
0000479D  46                inc si
0000479E  4E                dec si
0000479F  2E2020            and [cs:bx+si],ah
000047A2  49                dec cx
000047A3  66207468          o32 and [si+0x68],dh
000047A7  657265            gs jc 0x480f
000047AA  206973            and [bx+di+0x73],ch
000047AD  206E6F            and [bp+0x6f],ch
000047B0  6E                outsb
000047B1  652C20            gs sub al,0x20
000047B4  6974207769        imul si,[si+0x20],word 0x6977
000047B9  6C                insb
000047BA  6C                insb
000047BB  E87EDA            call word 0x223c
000047BE  E8ACDF            call word 0x276d
000047C1  E8BBD6            call word 0x1e7f
000047C4  E85FDA            call word 0x2226
000047C7  46                inc si
000047C8  7573              jnz 0x483d
000047CA  65207072          and [gs:bx+si+0x72],dh
000047CE  65646566696E6564  imul ebp,[gs:bp+0x65],dword 0x6f632064
         -20636F
000047D9  6E                outsb
000047DA  7374              jnc 0x4850
000047DC  61                popaw
000047DD  6E                outsb
000047DE  7473              jz 0x4853
000047E0  2E2020            and [cs:bx+si],ah
000047E3  54                push sp
000047E4  686573            push word 0x7365
000047E7  65207061          and [gs:bx+si+0x61],dh
000047EB  7261              jc 0x484e
000047ED  6D                insw
000047EE  657465            gs jz 0x4856
000047F1  7273              jc 0x4866
000047F3  206D61            and [di+0x61],ch
000047F6  7920              jns 0x4818
000047F8  626520            bound sp,[di+0x20]
000047FB  7361              jnc 0x485e
000047FD  7665              jna 0x4864
000047FF  6420746F          and [fs:si+0x6f],dh
00004803  206469            and [si+0x69],ah
00004806  736B              jnc 0x4873
00004808  206166            and [bx+di+0x66],ah
0000480B  7465              jz 0x4872
0000480D  72E8              jc 0x47f7
0000480F  2BDA              sub bx,dx
00004811  E859DF            call word 0x276d
00004814  E868D6            call word 0x1e7f
00004817  E80CDA            call word 0x2226
0000481A  1472              adc al,0x72
0000481C  65646566696E696E  imul ebp,[gs:bp+0x69],dword 0x7420676e
         -672074
00004827  68656D            push word 0x6d65
0000482A  206E6F            and [bp+0x6f],ch
0000482D  772E              ja 0x485d
0000482F  E80ADA            call word 0x223c
00004832  E838DF            call word 0x276d
00004835  E847D6            call word 0x1e7f
00004838  E801DA            call word 0x223c
0000483B  E82FDF            call word 0x276d
0000483E  E83ED6            call word 0x1e7f
00004841  E8E2D9            call word 0x2226
00004844  4B                dec bx
00004845  54                push sp
00004846  686973            push word 0x7369
00004849  207072            and [bx+si+0x72],dh
0000484C  6F                outsw
0000484D  677261            jc 0x48b1
00004850  6D                insw
00004851  206861            and [bx+si+0x61],ch
00004854  7320              jnc 0x4876
00004856  626565            bound sp,[di+0x65]
00004859  6E                outsb
0000485A  207472            and [si+0x72],dh
0000485D  6965642062        imul sp,[di+0x64],word 0x6220
00004862  7574              jnz 0x48d8
00004864  206E6F            and [bp+0x6f],ch
00004867  7420              jz 0x4889
00004869  66756C            o32 jnz 0x48d8
0000486C  6C                insb
0000486D  7920              jns 0x488f
0000486F  7465              jz 0x48d6
00004871  7374              jnc 0x48e7
00004873  6564206F6E        and [fs:bx+0x6e],ch
00004878  206120            and [bx+di+0x20],ah
0000487B  50                push ax
0000487C  43                inc bx
0000487D  2D4154            sub ax,0x5441
00004880  2E2020            and [cs:bx+si],ah
00004883  49                dec cx
00004884  7420              jz 0x48a6
00004886  7368              jnc 0x48f0
00004888  6F                outsw
00004889  756C              jnz 0x48f7
0000488B  64207275          and [fs:bp+si+0x75],dh
0000488F  6E                outsb
00004890  E8A9D9            call word 0x223c
00004893  E8D7DE            call word 0x276d
00004896  E8E6D5            call word 0x1e7f
00004899  E88AD9            call word 0x2226
0000489C  4D                dec bp
0000489D  6F                outsw
0000489E  6B617920          imul sp,[bx+di+0x79],byte +0x20
000048A2  61                popaw
000048A3  7320              jnc 0x48c5
000048A5  6C                insb
000048A6  6F                outsw
000048A7  6E                outsb
000048A8  67206173          and [ecx+0x73],ah
000048AC  206465            and [si+0x65],ah
000048AF  6C                insb
000048B0  61                popaw
000048B1  7973              jns 0x4926
000048B3  206172            and [bx+di+0x72],ah
000048B6  65207365          and [gs:bp+di+0x65],dh
000048BA  7420              jz 0x48dc
000048BC  61                popaw
000048BD  7420              jz 0x48df
000048BF  61                popaw
000048C0  726F              jc 0x4931
000048C2  756E              jnz 0x4932
000048C4  6420666F          and [fs:bp+0x6f],ah
000048C8  7572              jnz 0x493c
000048CA  207469            and [si+0x69],dh
000048CD  6D                insw
000048CE  657320            gs jnc 0x48f1
000048D1  7768              ja 0x493b
000048D3  61                popaw
000048D4  7420              jz 0x48f6
000048D6  796F              jns 0x4947
000048D8  7520              jnz 0x48fa
000048DA  657870            gs js 0x494d
000048DD  65637420          arpl [gs:si+0x20],si
000048E1  666F              outsd
000048E3  7220              jc 0x4905
000048E5  61                popaw
000048E6  205043            and [bx+si+0x43],dl
000048E9  2EE84FD9          cs call word 0x223c
000048ED  E87DDE            call word 0x276d
000048F0  E88CD5            call word 0x1e7f
000048F3  E846D9            call word 0x223c
000048F6  E874DE            call word 0x276d
000048F9  E883D5            call word 0x1e7f
000048FC  E827D9            call word 0x2226
000048FF  124D61            adc cl,[di+0x61]
00004902  7869              js 0x496d
00004904  6D                insw
00004905  756D              jnz 0x4974
00004907  204D75            and [di+0x75],cl
0000490A  6D                insw
0000490B  6D                insw
0000490C  6965733F20        imul sp,[di+0x73],word 0x203f
00004911  28A15D0E          sub [bx+di+0xe5d],ah
00004915  50                push ax
00004916  B80000            mov ax,0x0
00004919  E87FD8            call word 0x219b
0000491C  B82900            mov ax,0x29
0000491F  50                push ax
00004920  B80000            mov ax,0x0
00004923  E85DD8            call word 0x2183
00004926  E844DE            call word 0x276d
00004929  B90800            mov cx,0x8
0000492C  E8C9DD            call word 0x26f8
0000492F  B81C00            mov ax,0x1c
00004932  B90100            mov cx,0x1
00004935  BA5000            mov dx,0x50
00004938  E8AFDD            call word 0x26ea
0000493B  50                push ax
0000493C  E840E5            call word 0x2e7f
0000493F  E8FCD4            call word 0x1e3e
00004942  BF5D0E            mov di,0xe5d
00004945  1E                push ds
00004946  E811D7            call word 0x205a
00004949  E887D7            call word 0x20d3
0000494C  E81EDE            call word 0x276d
0000494F  E82DD5            call word 0x1e7f
00004952  E8D1D8            call word 0x2226
00004955  124D69            adc cl,[di+0x69]
00004958  6E                outsb
00004959  696D756D20        imul bp,[di+0x75],word 0x206d
0000495E  4D                dec bp
0000495F  756D              jnz 0x49ce
00004961  6D                insw
00004962  6965733F20        imul sp,[di+0x73],word 0x203f
00004967  28A15B0E          sub [bx+di+0xe5b],ah
0000496B  50                push ax
0000496C  B80000            mov ax,0x0
0000496F  E829D8            call word 0x219b
00004972  B82900            mov ax,0x29
00004975  50                push ax
00004976  B80000            mov ax,0x0
00004979  E807D8            call word 0x2183
0000497C  E8EEDD            call word 0x276d
0000497F  B90800            mov cx,0x8
00004982  E873DD            call word 0x26f8
00004985  B81C00            mov ax,0x1c
00004988  B90100            mov cx,0x1
0000498B  BA5000            mov dx,0x50
0000498E  E859DD            call word 0x26ea
00004991  50                push ax
00004992  E8EAE4            call word 0x2e7f
00004995  E8A6D4            call word 0x1e3e
00004998  BF5B0E            mov di,0xe5b
0000499B  1E                push ds
0000499C  E8BBD6            call word 0x205a
0000499F  E831D7            call word 0x20d3
000049A2  E8C8DD            call word 0x276d
000049A5  E8D7D4            call word 0x1e7f
000049A8  E87BD8            call word 0x2226
000049AB  124D61            adc cl,[di+0x61]
000049AE  7869              js 0x4a19
000049B0  6D                insw
000049B1  756D              jnz 0x4a20
000049B3  20486F            and [bx+si+0x6f],cl
000049B6  6C                insb
000049B7  65733F            gs jnc 0x49f9
000049BA  2020              and [bx+si],ah
000049BC  2028              and [bx+si],ch
000049BE  A1610E            mov ax,[0xe61]
000049C1  50                push ax
000049C2  B80000            mov ax,0x0
000049C5  E8D3D7            call word 0x219b
000049C8  B82900            mov ax,0x29
000049CB  50                push ax
000049CC  B80000            mov ax,0x0
000049CF  E8B1D7            call word 0x2183
000049D2  E898DD            call word 0x276d
000049D5  B90800            mov cx,0x8
000049D8  E81DDD            call word 0x26f8
000049DB  B81C00            mov ax,0x1c
000049DE  B90100            mov cx,0x1
000049E1  BA5000            mov dx,0x50
000049E4  E803DD            call word 0x26ea
000049E7  50                push ax
000049E8  E894E4            call word 0x2e7f
000049EB  E850D4            call word 0x1e3e
000049EE  BF610E            mov di,0xe61
000049F1  1E                push ds
000049F2  E865D6            call word 0x205a
000049F5  E8DBD6            call word 0x20d3
000049F8  E872DD            call word 0x276d
000049FB  E881D4            call word 0x1e7f
000049FE  E825D8            call word 0x2226
00004A01  124D69            adc cl,[di+0x69]
00004A04  6E                outsb
00004A05  696D756D20        imul bp,[di+0x75],word 0x206d
00004A0A  48                dec ax
00004A0B  6F                outsw
00004A0C  6C                insb
00004A0D  65733F            gs jnc 0x4a4f
00004A10  2020              and [bx+si],ah
00004A12  2028              and [bx+si],ch
00004A14  A15F0E            mov ax,[0xe5f]
00004A17  50                push ax
00004A18  B80000            mov ax,0x0
00004A1B  E87DD7            call word 0x219b
00004A1E  B82900            mov ax,0x29
00004A21  50                push ax
00004A22  B80000            mov ax,0x0
00004A25  E85BD7            call word 0x2183
00004A28  E842DD            call word 0x276d
00004A2B  B90800            mov cx,0x8
00004A2E  E8C7DC            call word 0x26f8
00004A31  B81C00            mov ax,0x1c
00004A34  B90100            mov cx,0x1
00004A37  BA5000            mov dx,0x50
00004A3A  E8ADDC            call word 0x26ea
00004A3D  50                push ax
00004A3E  E83EE4            call word 0x2e7f
00004A41  E8FAD3            call word 0x1e3e
00004A44  BF5F0E            mov di,0xe5f
00004A47  1E                push ds
00004A48  E80FD6            call word 0x205a
00004A4B  E885D6            call word 0x20d3
00004A4E  E81CDD            call word 0x276d
00004A51  E82BD4            call word 0x1e7f
00004A54  E8CFD7            call word 0x2226
00004A57  124D75            adc cl,[di+0x75]
00004A5A  6D                insw
00004A5B  6D                insw
00004A5C  6965204465        imul sp,[di+0x20],word 0x6544
00004A61  6C                insb
00004A62  61                popaw
00004A63  793F              jns 0x4aa4
00004A65  2020              and [bx+si],ah
00004A67  2020              and [bx+si],ah
00004A69  28A16C10          sub [bx+di+0x106c],ah
00004A6D  50                push ax
00004A6E  B80000            mov ax,0x0
00004A71  E827D7            call word 0x219b
00004A74  B82900            mov ax,0x29
00004A77  50                push ax
00004A78  B80000            mov ax,0x0
00004A7B  E805D7            call word 0x2183
00004A7E  E8ECDC            call word 0x276d
00004A81  B90800            mov cx,0x8
00004A84  E871DC            call word 0x26f8
00004A87  B81C00            mov ax,0x1c
00004A8A  B90100            mov cx,0x1
00004A8D  BA5000            mov dx,0x50
00004A90  E857DC            call word 0x26ea
00004A93  50                push ax
00004A94  E8E8E3            call word 0x2e7f
00004A97  E8A4D3            call word 0x1e3e
00004A9A  BF6C10            mov di,0x106c
00004A9D  1E                push ds
00004A9E  E8B9D5            call word 0x205a
00004AA1  E82FD6            call word 0x20d3
00004AA4  E8C6DC            call word 0x276d
00004AA7  E8D5D3            call word 0x1e7f
00004AAA  E879D7            call word 0x2226
00004AAD  124C6F            adc cl,[si+0x6f]
00004AB0  6F                outsw
00004AB1  7020              jo 0x4ad3
00004AB3  44                inc sp
00004AB4  656C              gs insb
00004AB6  61                popaw
00004AB7  7920              jns 0x4ad9
00004AB9  2020              and [bx+si],ah
00004ABB  2020              and [bx+si],ah
00004ABD  2020              and [bx+si],ah
00004ABF  28A16810          sub [bx+di+0x1068],ah
00004AC3  50                push ax
00004AC4  B80000            mov ax,0x0
00004AC7  E8D1D6            call word 0x219b
00004ACA  B82900            mov ax,0x29
00004ACD  50                push ax
00004ACE  B80000            mov ax,0x0
00004AD1  E8AFD6            call word 0x2183
00004AD4  E896DC            call word 0x276d
00004AD7  B90800            mov cx,0x8
00004ADA  E81BDC            call word 0x26f8
00004ADD  B81C00            mov ax,0x1c
00004AE0  B90100            mov cx,0x1
00004AE3  BA5000            mov dx,0x50
00004AE6  E801DC            call word 0x26ea
00004AE9  50                push ax
00004AEA  E892E3            call word 0x2e7f
00004AED  E84ED3            call word 0x1e3e
00004AF0  BF6810            mov di,0x1068
00004AF3  1E                push ds
00004AF4  E863D5            call word 0x205a
00004AF7  E8D9D5            call word 0x20d3
00004AFA  E870DC            call word 0x276d
00004AFD  E87FD3            call word 0x1e7f
00004B00  E839D7            call word 0x223c
00004B03  E867DC            call word 0x276d
00004B06  E876D3            call word 0x1e7f
00004B09  E81AD7            call word 0x2226
00004B0C  1E                push ds
00004B0D  53                push bx
00004B0E  61                popaw
00004B0F  7665              jna 0x4b76
00004B11  207468            and [si+0x68],dh
00004B14  657365            gs jnc 0x4b7c
00004B17  206465            and [si+0x65],ah
00004B1A  66696E6974696F6E  imul ebp,[bp+0x69],dword 0x6e6f6974
00004B22  733F              jnc 0x4b63
00004B24  205B59            and [bp+di+0x59],bl
00004B27  2F                das
00004B28  4E                dec si
00004B29  5D                pop bp
00004B2A  20E8              and al,ch
00004B2C  3F                aas
00004B2D  DCB90800          fdivr qword [bx+di+0x8]
00004B31  E8C4DB            call word 0x26f8
00004B34  4C                dec sp
00004B35  E870E8            call word 0x33a8
00004B38  7503              jnz 0x4b3d
00004B3A  E90D01            jmp word 0x4c4a
00004B3D  8D7ECC            lea di,[bp-0x34]
00004B40  16                push ss
00004B41  57                push di
00004B42  E8FBC1            call word 0xd40
00004B45  0B4D75            or cx,[di+0x75]
00004B48  6D                insw
00004B49  6D                insw
00004B4A  6965732E64        imul sp,[di+0x73],word 0x642e
00004B4F  666E              o32 outsb
00004B51  E81BD7            call word 0x226f
00004B54  8D7ECC            lea di,[bp-0x34]
00004B57  16                push ss
00004B58  B90200            mov cx,0x2
00004B5B  E816D7            call word 0x2274
00004B5E  E801DC            call word 0x2762
00004B61  3D0000            cmp ax,0x0
00004B64  B80100            mov ax,0x1
00004B67  7401              jz 0x4b6a
00004B69  48                dec ax
00004B6A  B90000            mov cx,0x0
00004B6D  BA0100            mov dx,0x1
00004B70  E877DB            call word 0x26ea
00004B73  8846CB            mov [bp-0x35],al
00004B76  8A46CB            mov al,[bp-0x35]
00004B79  32E4              xor ah,ah
00004B7B  0BC0              or ax,ax
00004B7D  7503              jnz 0x4b82
00004B7F  E97300            jmp word 0x4bf5
00004B82  8D7ECC            lea di,[bp-0x34]
00004B85  16                push ss
00004B86  E80BD3            call word 0x1e94
00004B89  BF5D0E            mov di,0xe5d
00004B8C  1E                push ds
00004B8D  E884D7            call word 0x2314
00004B90  E8DADB            call word 0x276d
00004B93  8D7ECC            lea di,[bp-0x34]
00004B96  16                push ss
00004B97  E8FAD2            call word 0x1e94
00004B9A  BF5B0E            mov di,0xe5b
00004B9D  1E                push ds
00004B9E  E873D7            call word 0x2314
00004BA1  E8C9DB            call word 0x276d
00004BA4  8D7ECC            lea di,[bp-0x34]
00004BA7  16                push ss
00004BA8  E8E9D2            call word 0x1e94
00004BAB  BF610E            mov di,0xe61
00004BAE  1E                push ds
00004BAF  E862D7            call word 0x2314
00004BB2  E8B8DB            call word 0x276d
00004BB5  8D7ECC            lea di,[bp-0x34]
00004BB8  16                push ss
00004BB9  E8D8D2            call word 0x1e94
00004BBC  BF5F0E            mov di,0xe5f
00004BBF  1E                push ds
00004BC0  E851D7            call word 0x2314
00004BC3  E8A7DB            call word 0x276d
00004BC6  8D7ECC            lea di,[bp-0x34]
00004BC9  16                push ss
00004BCA  E8C7D2            call word 0x1e94
00004BCD  BF6C10            mov di,0x106c
00004BD0  1E                push ds
00004BD1  E840D7            call word 0x2314
00004BD4  E896DB            call word 0x276d
00004BD7  8D7ECC            lea di,[bp-0x34]
00004BDA  16                push ss
00004BDB  E8B6D2            call word 0x1e94
00004BDE  BF6810            mov di,0x1068
00004BE1  1E                push ds
00004BE2  E82FD7            call word 0x2314
00004BE5  E885DB            call word 0x276d
00004BE8  8D7ECC            lea di,[bp-0x34]
00004BEB  16                push ss
00004BEC  E8ECD6            call word 0x22db
00004BEF  E87BDB            call word 0x276d
00004BF2  E94900            jmp word 0x4c3e
00004BF5  E887D2            call word 0x1e7f
00004BF8  E82BD6            call word 0x2226
00004BFB  27                daa
00004BFC  43                inc bx
00004BFD  61                popaw
00004BFE  6E                outsb
00004BFF  6E                outsb
00004C00  6F                outsw
00004C01  7420              jz 0x4c23
00004C03  7772              ja 0x4c77
00004C05  6974652066        imul si,[si+0x65],word 0x6620
00004C0A  696C65204D        imul bp,[si+0x65],word 0x4d20
00004C0F  55                push bp
00004C10  4D                dec bp
00004C11  4D                dec bp
00004C12  49                dec cx
00004C13  45                inc bp
00004C14  53                push bx
00004C15  2E44              cs inc sp
00004C17  46                inc si
00004C18  4E                dec si
00004C19  2E2020            and [cs:bx+si],ah
00004C1C  52                push dx
00004C1D  657472            gs jz 0x4c92
00004C20  793F              jns 0x4c61
00004C22  20E8              and al,ch
00004C24  47                inc di
00004C25  DBB90800          fstp tword [bx+di+0x8]
00004C29  E8CCDA            call word 0x26f8
00004C2C  4C                dec sp
00004C2D  E878E7            call word 0x33a8
00004C30  3401              xor al,0x1
00004C32  B90000            mov cx,0x0
00004C35  BA0100            mov dx,0x1
00004C38  E8AFDA            call word 0x26ea
00004C3B  8846CB            mov [bp-0x35],al
00004C3E  8A46CB            mov al,[bp-0x35]
00004C41  32E4              xor ah,ah
00004C43  0BC0              or ax,ax
00004C45  7503              jnz 0x4c4a
00004C47  E9F3FE            jmp word 0x4b3d
00004C4A  E90000            jmp word 0x4c4d
00004C4D  8BE5              mov sp,bp
00004C4F  5D                pop bp
00004C50  C3                ret
00004C51  55                push bp
00004C52  8BEC              mov bp,sp
00004C54  55                push bp
00004C55  E90000            jmp word 0x4c58
00004C58  B80700            mov ax,0x7
00004C5B  051000            add ax,0x10
00004C5E  E86AB8            call word 0x4cb
00004C61  E90000            jmp word 0x4c64
00004C64  8BE5              mov sp,bp
00004C66  5D                pop bp
00004C67  C3                ret
00004C68  55                push bp
00004C69  8BEC              mov bp,sp
00004C6B  55                push bp
00004C6C  E90000            jmp word 0x4c6f
00004C6F  B80E00            mov ax,0xe
00004C72  E856B8            call word 0x4cb
00004C75  E90000            jmp word 0x4c78
00004C78  8BE5              mov sp,bp
00004C7A  5D                pop bp
00004C7B  C3                ret
00004C7C  55                push bp
00004C7D  8BEC              mov bp,sp
00004C7F  55                push bp
00004C80  E90000            jmp word 0x4c83
00004C83  B80700            mov ax,0x7
00004C86  E842B8            call word 0x4cb
00004C89  E90000            jmp word 0x4c8c
00004C8C  8BE5              mov sp,bp
00004C8E  5D                pop bp
00004C8F  C3                ret
00004C90  55                push bp
00004C91  8BEC              mov bp,sp
00004C93  55                push bp
00004C94  E90000            jmp word 0x4c97
00004C97  A17010            mov ax,[0x1070]
00004C9A  A3A900            mov [0xa9],ax
00004C9D  8A4604            mov al,[bp+0x4]
00004CA0  32E4              xor ah,ah
00004CA2  3D0F00            cmp ax,0xf
00004CA5  7403              jz 0x4caa
00004CA7  E92700            jmp word 0x4cd1
00004CAA  B90600            mov cx,0x6
00004CAD  E848DA            call word 0x26f8
00004CB0  E89EFF            call word 0x4c51
00004CB3  E8C9D1            call word 0x1e7f
00004CB6  8A4604            mov al,[bp+0x4]
00004CB9  32E4              xor ah,ah
00004CBB  50                push ax
00004CBC  B80000            mov ax,0x0
00004CBF  E8C1D4            call word 0x2183
00004CC2  E8A8DA            call word 0x276d
00004CC5  B90600            mov cx,0x6
00004CC8  E82DDA            call word 0x26f8
00004CCB  E89AFF            call word 0x4c68
00004CCE  E94100            jmp word 0x4d12
00004CD1  3D0100            cmp ax,0x1
00004CD4  7403              jz 0x4cd9
00004CD6  E92700            jmp word 0x4d00
00004CD9  B90600            mov cx,0x6
00004CDC  E819DA            call word 0x26f8
00004CDF  E89AFF            call word 0x4c7c
00004CE2  E89AD1            call word 0x1e7f
00004CE5  8A4604            mov al,[bp+0x4]
00004CE8  32E4              xor ah,ah
00004CEA  50                push ax
00004CEB  B80000            mov ax,0x0
00004CEE  E892D4            call word 0x2183
00004CF1  E879DA            call word 0x276d
00004CF4  B90600            mov cx,0x6
00004CF7  E8FED9            call word 0x26f8
00004CFA  E86BFF            call word 0x4c68
00004CFD  E91200            jmp word 0x4d12
00004D00  E87CD1            call word 0x1e7f
00004D03  8A4604            mov al,[bp+0x4]
00004D06  32E4              xor ah,ah
00004D08  50                push ax
00004D09  B80000            mov ax,0x0
00004D0C  E874D4            call word 0x2183
00004D0F  E85BDA            call word 0x276d
00004D12  B8904C            mov ax,0x4c90
00004D15  A3A900            mov [0xa9],ax
00004D18  E90000            jmp word 0x4d1b
00004D1B  8BE5              mov sp,bp
00004D1D  5D                pop bp
00004D1E  C20200            ret 0x2
00004D21  55                push bp
00004D22  8BEC              mov bp,sp
00004D24  55                push bp
00004D25  E90000            jmp word 0x4d28
00004D28  A1A900            mov ax,[0xa9]
00004D2B  A37010            mov [0x1070],ax
00004D2E  B8904C            mov ax,0x4c90
00004D31  A3A900            mov [0xa9],ax
00004D34  E848D1            call word 0x1e7f
00004D37  E8ECD4            call word 0x2226
00004D3A  49                dec cx
00004D3B  57                push di
00004D3C  68696C            push word 0x6c69
00004D3F  65206578          and [gs:di+0x78],ah
00004D43  706C              jo 0x4db1
00004D45  6F                outsw
00004D46  7269              jc 0x4db1
00004D48  6E                outsb
00004D49  6720746865        and [dword eax+ebp*2+0x65],dh
00004D4E  207079            and [bx+si+0x79],dh
00004D51  7261              jc 0x4db4
00004D53  6D                insw
00004D54  696420746F        imul sp,[si+0x20],word 0x6f74
00004D59  6D                insw
00004D5A  6220              bound sp,[bx+si]
00004D5C  6F                outsw
00004D5D  66207468          o32 and [si+0x68],dh
00004D61  6520796F          and [gs:bx+di+0x6f],bh
00004D65  756E              jnz 0x4dd5
00004D67  67204B69          and [ebx+0x69],cl
00004D6B  6E                outsb
00004D6C  67204D75          and [ebp+0x75],cl
00004D70  742C              jz 0x4d9e
00004D72  20796F            and [bx+di+0x6f],bh
00004D75  7520              jnz 0x4d97
00004D77  7765              ja 0x4dde
00004D79  7265              jc 0x4de0
00004D7B  206174            and [bx+di+0x74],ah
00004D7E  7461              jz 0x4de1
00004D80  636B65            arpl [bp+di+0x65],bp
00004D83  64E8B5D4          fs call word 0x223c
00004D87  E8E3D9            call word 0x276d
00004D8A  E8F2D0            call word 0x1e7f
00004D8D  E896D4            call word 0x2226
00004D90  1F                pop ds
00004D91  627920            bound di,[bx+di+0x20]
00004D94  61                popaw
00004D95  207061            and [bx+si+0x61],dh
00004D98  7274              jc 0x4e0e
00004D9A  7920              jns 0x4dbc
00004D9C  6F                outsw
00004D9D  6620616E          o32 and [bx+di+0x6e],ah
00004DA1  696D617465        imul bp,[di+0x61],word 0x6574
00004DA6  64204D75          and [fs:di+0x75],cl
00004DAA  6D                insw
00004DAB  6D                insw
00004DAC  6965732EE8        imul sp,[di+0x73],word 0xe82e
00004DB1  89D4              mov sp,dx
00004DB3  E8B7D9            call word 0x276d
00004DB6  E8C6D0            call word 0x1e7f
00004DB9  E880D4            call word 0x223c
00004DBC  E8AED9            call word 0x276d
00004DBF  E8BDD0            call word 0x1e7f
00004DC2  E861D4            call word 0x2226
00004DC5  135468            adc dx,[si+0x68]
00004DC8  657265            gs jc 0x4e30
00004DCB  206973            and [bx+di+0x73],ch
00004DCE  206E6F            and [bp+0x6f],ch
00004DD1  206573            and [di+0x73],ah
00004DD4  636170            arpl [bx+di+0x70],sp
00004DD7  652EE860D4        cs call word 0x223c
00004DDC  E88ED9            call word 0x276d
00004DDF  E89DD0            call word 0x1e7f
00004DE2  E857D4            call word 0x223c
00004DE5  E885D9            call word 0x276d
00004DE8  E894D0            call word 0x1e7f
00004DEB  E838D4            call word 0x2226
00004DEE  45                inc bp
00004DEF  48                dec ax
00004DF0  6F                outsw
00004DF1  7765              ja 0x4e58
00004DF3  7665              jna 0x4e5a
00004DF5  722C              jc 0x4e23
00004DF7  207468            and [si+0x68],dh
00004DFA  65207079          and [gs:bx+si+0x79],dh
00004DFE  7261              jc 0x4e61
00004E00  6D                insw
00004E01  6964206861        imul sp,[si+0x20],word 0x6168
00004E06  7320              jnc 0x4e28
00004E08  6D                insw
00004E09  61                popaw
00004E0A  6E                outsb
00004E0B  7920              jns 0x4e2d
00004E0D  7069              jo 0x4e78
00004E0F  7473              jz 0x4e84
00004E11  2C20              sub al,0x20
00004E13  61                popaw
00004E14  6E                outsb
00004E15  6420796F          and [fs:bx+di+0x6f],bh
00004E19  7520              jnz 0x4e3b
00004E1B  6D                insw
00004E1C  61                popaw
00004E1D  7920              jns 0x4e3f
00004E1F  626520            bound sp,[di+0x20]
00004E22  61                popaw
00004E23  626C65            bound bp,[si+0x65]
00004E26  20746F            and [si+0x6f],dh
00004E29  206465            and [si+0x65],ah
00004E2C  6C                insb
00004E2D  61                popaw
00004E2E  7920              jns 0x4e50
00004E30  796F              jns 0x4ea1
00004E32  7572              jnz 0x4ea6
00004E34  E805D4            call word 0x223c
00004E37  E833D9            call word 0x276d
00004E3A  E842D0            call word 0x1e7f
00004E3D  E8E6D3            call word 0x2226
00004E40  386576            cmp [di+0x76],ah
00004E43  656E              gs outsb
00004E45  7475              jz 0x4ebc
00004E47  61                popaw
00004E48  6C                insb
00004E49  20646F            and [si+0x6f],ah
00004E4C  776E              ja 0x4ebc
00004E4E  6661              popad
00004E50  6C                insb
00004E51  6C                insb
00004E52  206279            and [bp+si+0x79],ah
00004E55  206C75            and [si+0x75],ch
00004E58  7269              jc 0x4ec3
00004E5A  6E                outsb
00004E5B  6720746865        and [dword eax+ebp*2+0x65],dh
00004E60  204D75            and [di+0x75],cl
00004E63  6D                insw
00004E64  6D                insw
00004E65  6965732069        imul sp,[di+0x73],word 0x6920
00004E6A  6E                outsb
00004E6B  746F              jz 0x4edc
00004E6D  207468            and [si+0x68],dh
00004E70  657365            gs jnc 0x4ed8
00004E73  207069            and [bx+si+0x69],dh
00004E76  7473              jz 0x4eeb
00004E78  2EE8C0D3          cs call word 0x223c
00004E7C  E8EED8            call word 0x276d
00004E7F  E8FDCF            call word 0x1e7f
00004E82  E8B7D3            call word 0x223c
00004E85  E8E5D8            call word 0x276d
00004E88  E8F4CF            call word 0x1e7f
00004E8B  E898D3            call word 0x2226
00004E8E  4C                dec sp
00004E8F  59                pop cx
00004E90  6F                outsw
00004E91  7520              jnz 0x4eb3
00004E93  686176            push word 0x7661
00004E96  65206A75          and [gs:bp+si+0x75],ch
00004E9A  7374              jnc 0x4f10
00004E9C  206F6E            and [bx+0x6e],ch
00004E9F  65206164          and [gs:bx+di+0x64],ah
00004EA3  7661              jna 0x4f06
00004EA5  6E                outsb
00004EA6  7461              jz 0x4f09
00004EA8  6765202D20796F75  and [dword gs:0x756f7920],ch
00004EB0  206361            and [bp+di+0x61],ah
00004EB3  6E                outsb
00004EB4  206D6F            and [di+0x6f],ch
00004EB7  7665              jna 0x4f1e
00004EB9  206F6E            and [bx+0x6e],ch
00004EBC  65207370          and [gs:bp+di+0x70],dh
00004EC0  61                popaw
00004EC1  636520            arpl [di+0x20],sp
00004EC4  696E20616E        imul bp,[bp+0x20],word 0x6e61
00004EC9  7920              jns 0x4eeb
00004ECB  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
00004ED1  696F6E2C20        imul bp,[bx+0x6e],word 0x202c
00004ED6  7768              ja 0x4f40
00004ED8  696C65E85E        imul bp,[si+0x65],word 0x5ee8
00004EDD  D3E8              shr ax,cl
00004EDF  8CD8              mov ax,ds
00004EE1  E89BCF            call word 0x1e7f
00004EE4  E83FD3            call word 0x2226
00004EE7  357468            xor ax,0x6874
00004EEA  65204D75          and [gs:di+0x75],cl
00004EEE  6D                insw
00004EEF  6D                insw
00004EF0  696573206D        imul sp,[di+0x73],word 0x6d20
00004EF5  61                popaw
00004EF6  7920              jns 0x4f18
00004EF8  6F                outsw
00004EF9  6E                outsb
00004EFA  6C                insb
00004EFB  7920              jns 0x4f1d
00004EFD  6D                insw
00004EFE  6F                outsw
00004EFF  7665              jna 0x4f66
00004F01  20686F            and [bx+si+0x6f],ch
00004F04  7269              jc 0x4f6f
00004F06  7A6F              jpe 0x4f77
00004F08  6E                outsb
00004F09  7461              jz 0x4f6c
00004F0B  6C                insb
00004F0C  6C                insb
00004F0D  7920              jns 0x4f2f
00004F0F  6F                outsw
00004F10  7220              jc 0x4f32
00004F12  7665              jna 0x4f79
00004F14  7274              jc 0x4f8a
00004F16  6963616C6C        imul sp,[bp+di+0x61],word 0x6c6c
00004F1B  792E              jns 0x4f4b
00004F1D  E81CD3            call word 0x223c
00004F20  E84AD8            call word 0x276d
00004F23  E859CF            call word 0x1e7f
00004F26  E813D3            call word 0x223c
00004F29  E841D8            call word 0x276d
00004F2C  E850CF            call word 0x1e7f
00004F2F  E8F4D2            call word 0x2226
00004F32  2455              and al,0x55
00004F34  7365              jnc 0x4f9b
00004F36  207468            and [si+0x68],dh
00004F39  65206375          and [gs:bp+di+0x75],ah
00004F3D  7273              jc 0x4fb2
00004F3F  6F                outsw
00004F40  7220              jc 0x4f62
00004F42  636F6E            arpl [bx+0x6e],bp
00004F45  7472              jz 0x4fb9
00004F47  6F                outsw
00004F48  6C                insb
00004F49  7320              jnc 0x4f6b
00004F4B  746F              jz 0x4fbc
00004F4D  206D6F            and [di+0x6f],ch
00004F50  7665              jna 0x4fb7
00004F52  207468            and [si+0x68],dh
00004F55  6520B80200        and [gs:bx+si+0x2],bh
00004F5A  50                push ax
00004F5B  B80000            mov ax,0x0
00004F5E  E822D2            call word 0x2183
00004F61  E8C2D2            call word 0x2226
00004F64  17                pop ss
00004F65  2C20              sub al,0x20
00004F67  7768              ja 0x4fd1
00004F69  6963682072        imul sp,[bp+di+0x68],word 0x7220
00004F6E  657072            gs jo 0x4fe3
00004F71  657365            gs jnc 0x4fd9
00004F74  6E                outsb
00004F75  7473              jz 0x4fea
00004F77  20796F            and [bx+di+0x6f],bh
00004F7A  7572              jnz 0x4fee
00004F7C  E8BDD2            call word 0x223c
00004F7F  E8EBD7            call word 0x276d
00004F82  E8FACE            call word 0x1e7f
00004F85  E89ED2            call word 0x2226
00004F88  48                dec ax
00004F89  706F              jo 0x4ffa
00004F8B  7369              jnc 0x4ff6
00004F8D  7469              jz 0x4ff8
00004F8F  6F                outsw
00004F90  6E                outsb
00004F91  2E205468          and [cs:si+0x68],dl
00004F95  6520486F          and [gs:bx+si+0x6f],cl
00004F99  6D                insw
00004F9A  65206B65          and [gs:bp+di+0x65],ch
00004F9E  7920              jns 0x4fc0
00004FA0  676976657320      imul si,[esi+0x65],word 0x2073
00004FA6  6D                insw
00004FA7  6F                outsw
00004FA8  7665              jna 0x500f
00004FAA  6D                insw
00004FAB  656E              gs outsb
00004FAD  7420              jz 0x4fcf
00004FAF  7570              jnz 0x5021
00004FB1  20616E            and [bx+di+0x6e],ah
00004FB4  64206C65          and [fs:si+0x65],ch
00004FB8  66742C            o32 jz 0x4fe7
00004FBB  205067            and [bx+si+0x67],dl
00004FBE  55                push bp
00004FBF  7020              jo 0x4fe1
00004FC1  6973207570        imul si,[bp+di+0x20],word 0x7075
00004FC6  20616E            and [bx+di+0x6e],ah
00004FC9  64207269          and [fs:bp+si+0x69],dh
00004FCD  6768742C          push word 0x2c74
00004FD1  E868D2            call word 0x223c
00004FD4  E896D7            call word 0x276d
00004FD7  E8A5CE            call word 0x1e7f
00004FDA  E849D2            call word 0x2226
00004FDD  315067            xor [bx+si+0x67],dx
00004FE0  44                inc sp
00004FE1  6E                outsb
00004FE2  206973            and [bx+di+0x73],ch
00004FE5  20646F            and [si+0x6f],ah
00004FE8  776E              ja 0x5058
00004FEA  20616E            and [bx+di+0x6e],ah
00004FED  64207269          and [fs:bp+si+0x69],dh
00004FF1  6768742C          push word 0x2c74
00004FF5  20616E            and [bx+di+0x6e],ah
00004FF8  6420456E          and [fs:di+0x6e],al
00004FFC  64206973          and [fs:bx+di+0x73],ch
00005000  20646F            and [si+0x6f],ah
00005003  776E              ja 0x5073
00005005  20616E            and [bx+di+0x6e],ah
00005008  64206C65          and [fs:si+0x65],ch
0000500C  66742E            o32 jz 0x503d
0000500F  E82AD2            call word 0x223c
00005012  E858D7            call word 0x276d
00005015  E867CE            call word 0x1e7f
00005018  E821D2            call word 0x223c
0000501B  E84FD7            call word 0x276d
0000501E  E85ECE            call word 0x1e7f
00005021  E802D2            call word 0x2226
00005024  124D75            adc cl,[di+0x75]
00005027  6D                insw
00005028  6D                insw
00005029  696573206C        imul sp,[di+0x73],word 0x6c20
0000502E  6F                outsw
0000502F  6F                outsw
00005030  6B206C            imul sp,[bx+si],byte +0x6c
00005033  696B6520B8        imul bp,[bp+di+0x65],word 0xb820
00005038  0100              add [bx+si],ax
0000503A  50                push ax
0000503B  B80000            mov ax,0x0
0000503E  E842D1            call word 0x2183
00005041  E8E2D1            call word 0x2226
00005044  16                push ss
00005045  207768            and [bx+0x68],dh
00005048  696C652070        imul bp,[si+0x65],word 0x7020
0000504D  697473206C        imul si,[si+0x73],word 0x6c20
00005052  6F                outsw
00005053  6F                outsw
00005054  6B206C            imul sp,[bx+si],byte +0x6c
00005057  696B6520B8        imul bp,[bp+di+0x65],word 0xb820
0000505C  0F0050B8          lldt [bx+si-0x48]
00005060  0000              add [bx+si],al
00005062  E81ED1            call word 0x2183
00005065  B82E00            mov ax,0x2e
00005068  50                push ax
00005069  B80000            mov ax,0x0
0000506C  E814D1            call word 0x2183
0000506F  E8CAD1            call word 0x223c
00005072  E8F8D6            call word 0x276d
00005075  E807CE            call word 0x1e7f
00005078  E8C1D1            call word 0x223c
0000507B  E8EFD6            call word 0x276d
0000507E  E8FECD            call word 0x1e7f
00005081  E8A2D1            call word 0x2226
00005084  48                dec ax
00005085  49                dec cx
00005086  6620796F          o32 and [bx+di+0x6f],bh
0000508A  7520              jnz 0x50ac
0000508C  657363            gs jnc 0x50f2
0000508F  61                popaw
00005090  7065              jo 0x50f7
00005092  206672            and [bp+0x72],ah
00005095  6F                outsw
00005096  6D                insw
00005097  207468            and [si+0x68],dh
0000509A  65204D75          and [gs:di+0x75],cl
0000509E  6D                insw
0000509F  6D                insw
000050A0  6965732C20        imul sp,[di+0x73],word 0x202c
000050A5  796F              jns 0x5116
000050A7  7520              jnz 0x50c9
000050A9  6D                insw
000050AA  61                popaw
000050AB  7920              jns 0x50cd
000050AD  626520            bound sp,[di+0x20]
000050B0  61                popaw
000050B1  626C65            bound bp,[si+0x65]
000050B4  20746F            and [si+0x6f],dh
000050B7  207375            and [bp+di+0x75],dh
000050BA  7276              jc 0x5132
000050BC  6976652075        imul si,[bp+0x65],word 0x7520
000050C1  6E                outsb
000050C2  7469              jz 0x512d
000050C4  6C                insb
000050C5  20616E            and [bx+di+0x6e],ah
000050C8  6F                outsw
000050C9  7468              jz 0x5133
000050CB  6572E8            gs jc 0x50b6
000050CE  6C                insb
000050CF  D1E8              shr ax,1
000050D1  9AD6E8A9CD        call word 0xcda9:0xe8d6
000050D6  E84DD1            call word 0x2226
000050D9  1F                pop ds
000050DA  657870            gs js 0x514d
000050DD  6C                insb
000050DE  6F                outsw
000050DF  7265              jc 0x5146
000050E1  7220              jc 0x5103
000050E3  61                popaw
000050E4  7272              jc 0x5158
000050E6  6976657320        imul si,[bp+0x65],word 0x2073
000050EB  746F              jz 0x515c
000050ED  207265            and [bp+si+0x65],dh
000050F0  7363              jnc 0x5155
000050F2  7565              jnz 0x5159
000050F4  20796F            and [bx+di+0x6f],bh
000050F7  752E              jnz 0x5127
000050F9  E840D1            call word 0x223c
000050FC  E86ED6            call word 0x276d
000050FF  E87DCD            call word 0x1e7f
00005102  E837D1            call word 0x223c
00005105  E865D6            call word 0x276d
00005108  E874CD            call word 0x1e7f
0000510B  E818D1            call word 0x2226
0000510E  16                push ss
0000510F  54                push sp
00005110  686973            push word 0x7369
00005113  206973            and [bx+di+0x73],ch
00005116  207665            and [bp+0x65],dh
00005119  7279              jc 0x5194
0000511B  20756E            and [di+0x6e],dh
0000511E  6C                insb
0000511F  696B656C79        imul bp,[bp+di+0x65],word 0x796c
00005124  2EE814D1          cs call word 0x223c
00005128  E842D6            call word 0x276d
0000512B  E851CD            call word 0x1e7f
0000512E  E80BD1            call word 0x223c
00005131  E839D6            call word 0x276d
00005134  E848CD            call word 0x1e7f
00005137  E802D1            call word 0x223c
0000513A  E830D6            call word 0x276d
0000513D  E83FCD            call word 0x1e7f
00005140  E8E3D0            call word 0x2226
00005143  223C              and bh,[si]
00005145  7072              jo 0x51b9
00005147  657373            gs jnc 0x51bd
0000514A  204420            and [si+0x20],al
0000514D  746F              jz 0x51be
0000514F  206465            and [si+0x65],ah
00005152  66696E652067616D  imul ebp,[bp+0x65],dword 0x6d616720
0000515A  6520636F          and [gs:bp+di+0x6f],ah
0000515E  6E                outsb
0000515F  7374              jnc 0x51d5
00005161  61                popaw
00005162  6E                outsb
00005163  7473              jz 0x51d8
00005165  3EE8D3D0          ds call word 0x223c
00005169  E801D6            call word 0x276d
0000516C  E810CD            call word 0x1e7f
0000516F  E8B4D0            call word 0x2226
00005172  1D202E            sbb ax,0x2e20
00005175  2E207072          and [cs:bx+si+0x72],dh
00005179  657373            gs jnc 0x51ef
0000517C  207265            and [bp+si+0x65],dh
0000517F  7475              jz 0x51f6
00005181  726E              jc 0x51f1
00005183  20746F            and [si+0x6f],dh
00005186  20636F            and [bp+di+0x6f],ah
00005189  6E                outsb
0000518A  7469              jz 0x51f5
0000518C  6E                outsb
0000518D  7565              jnz 0x51f4
0000518F  20E8              and al,ch
00005191  DAD5              fcmovbe st5
00005193  A17010            mov ax,[0x1070]
00005196  A3A900            mov [0xa9],ax
00005199  E90000            jmp word 0x519c
0000519C  8BE5              mov sp,bp
0000519E  5D                pop bp
0000519F  C3                ret
000051A0  55                push bp
000051A1  8BEC              mov bp,sp
000051A3  55                push bp
000051A4  E93500            jmp word 0x51dc
000051A7  55                push bp
000051A8  8BC4              mov ax,sp
000051AA  FF76FE            push word [bp-0x2]
000051AD  8BE8              mov bp,ax
000051AF  55                push bp
000051B0  E90000            jmp word 0x51b3
000051B3  8A4608            mov al,[bp+0x8]
000051B6  32E4              xor ah,ah
000051B8  50                push ax
000051B9  8A4606            mov al,[bp+0x6]
000051BC  32E4              xor ah,ah
000051BE  E89EB1            call word 0x35f
000051C1  E8BBCC            call word 0x1e7f
000051C4  8A4604            mov al,[bp+0x4]
000051C7  32E4              xor ah,ah
000051C9  50                push ax
000051CA  B80000            mov ax,0x0
000051CD  E8B3CF            call word 0x2183
000051D0  E89AD5            call word 0x276d
000051D3  E90000            jmp word 0x51d6
000051D6  8BE5              mov sp,bp
000051D8  5D                pop bp
000051D9  C20600            ret 0x6
000051DC  50                push ax
000051DD  B80200            mov ax,0x2
000051E0  50                push ax
000051E1  B84F00            mov ax,0x4f
000051E4  59                pop cx
000051E5  91                xchg ax,cx
000051E6  2BC8              sub cx,ax
000051E8  7D03              jnl 0x51ed
000051EA  E94400            jmp word 0x5231
000051ED  41                inc cx
000051EE  8846FD            mov [bp-0x3],al
000051F1  51                push cx
000051F2  B90E00            mov cx,0xe
000051F5  E800D5            call word 0x26f8
000051F8  8A46FD            mov al,[bp-0x3]
000051FB  32E4              xor ah,ah
000051FD  B90000            mov cx,0x0
00005200  BAFF00            mov dx,0xff
00005203  E8E4D4            call word 0x26ea
00005206  50                push ax
00005207  B80200            mov ax,0x2
0000520A  2D0100            sub ax,0x1
0000520D  B90000            mov cx,0x0
00005210  BAFF00            mov dx,0xff
00005213  E8D4D4            call word 0x26ea
00005216  50                push ax
00005217  B8CD00            mov ax,0xcd
0000521A  B90000            mov cx,0x0
0000521D  BAFF00            mov dx,0xff
00005220  E8C7D4            call word 0x26ea
00005223  50                push ax
00005224  E880FF            call word 0x51a7
00005227  59                pop cx
00005228  49                dec cx
00005229  7406              jz 0x5231
0000522B  FE46FD            inc byte [bp-0x3]
0000522E  E9C0FF            jmp word 0x51f1
00005231  B80200            mov ax,0x2
00005234  50                push ax
00005235  B84F00            mov ax,0x4f
00005238  59                pop cx
00005239  91                xchg ax,cx
0000523A  2BC8              sub cx,ax
0000523C  7D03              jnl 0x5241
0000523E  E94400            jmp word 0x5285
00005241  41                inc cx
00005242  8846FD            mov [bp-0x3],al
00005245  51                push cx
00005246  B90E00            mov cx,0xe
00005249  E8ACD4            call word 0x26f8
0000524C  8A46FD            mov al,[bp-0x3]
0000524F  32E4              xor ah,ah
00005251  B90000            mov cx,0x0
00005254  BAFF00            mov dx,0xff
00005257  E890D4            call word 0x26ea
0000525A  50                push ax
0000525B  B81600            mov ax,0x16
0000525E  050100            add ax,0x1
00005261  B90000            mov cx,0x0
00005264  BAFF00            mov dx,0xff
00005267  E880D4            call word 0x26ea
0000526A  50                push ax
0000526B  B8CD00            mov ax,0xcd
0000526E  B90000            mov cx,0x0
00005271  BAFF00            mov dx,0xff
00005274  E873D4            call word 0x26ea
00005277  50                push ax
00005278  E82CFF            call word 0x51a7
0000527B  59                pop cx
0000527C  49                dec cx
0000527D  7406              jz 0x5285
0000527F  FE46FD            inc byte [bp-0x3]
00005282  E9C0FF            jmp word 0x5245
00005285  B80200            mov ax,0x2
00005288  50                push ax
00005289  B81600            mov ax,0x16
0000528C  59                pop cx
0000528D  91                xchg ax,cx
0000528E  2BC8              sub cx,ax
00005290  7D03              jnl 0x5295
00005292  E94400            jmp word 0x52d9
00005295  41                inc cx
00005296  8846FC            mov [bp-0x4],al
00005299  51                push cx
0000529A  B90E00            mov cx,0xe
0000529D  E858D4            call word 0x26f8
000052A0  B80200            mov ax,0x2
000052A3  2D0100            sub ax,0x1
000052A6  B90000            mov cx,0x0
000052A9  BAFF00            mov dx,0xff
000052AC  E83BD4            call word 0x26ea
000052AF  50                push ax
000052B0  8A46FC            mov al,[bp-0x4]
000052B3  32E4              xor ah,ah
000052B5  B90000            mov cx,0x0
000052B8  BAFF00            mov dx,0xff
000052BB  E82CD4            call word 0x26ea
000052BE  50                push ax
000052BF  B8BA00            mov ax,0xba
000052C2  B90000            mov cx,0x0
000052C5  BAFF00            mov dx,0xff
000052C8  E81FD4            call word 0x26ea
000052CB  50                push ax
000052CC  E8D8FE            call word 0x51a7
000052CF  59                pop cx
000052D0  49                dec cx
000052D1  7406              jz 0x52d9
000052D3  FE46FC            inc byte [bp-0x4]
000052D6  E9C0FF            jmp word 0x5299
000052D9  B80200            mov ax,0x2
000052DC  50                push ax
000052DD  B81600            mov ax,0x16
000052E0  59                pop cx
000052E1  91                xchg ax,cx
000052E2  2BC8              sub cx,ax
000052E4  7D03              jnl 0x52e9
000052E6  E94400            jmp word 0x532d
000052E9  41                inc cx
000052EA  8846FC            mov [bp-0x4],al
000052ED  51                push cx
000052EE  B90E00            mov cx,0xe
000052F1  E804D4            call word 0x26f8
000052F4  B84F00            mov ax,0x4f
000052F7  050100            add ax,0x1
000052FA  B90000            mov cx,0x0
000052FD  BAFF00            mov dx,0xff
00005300  E8E7D3            call word 0x26ea
00005303  50                push ax
00005304  8A46FC            mov al,[bp-0x4]
00005307  32E4              xor ah,ah
00005309  B90000            mov cx,0x0
0000530C  BAFF00            mov dx,0xff
0000530F  E8D8D3            call word 0x26ea
00005312  50                push ax
00005313  B8BA00            mov ax,0xba
00005316  B90000            mov cx,0x0
00005319  BAFF00            mov dx,0xff
0000531C  E8CBD3            call word 0x26ea
0000531F  50                push ax
00005320  E884FE            call word 0x51a7
00005323  59                pop cx
00005324  49                dec cx
00005325  7406              jz 0x532d
00005327  FE46FC            inc byte [bp-0x4]
0000532A  E9C0FF            jmp word 0x52ed
0000532D  B90E00            mov cx,0xe
00005330  E8C5D3            call word 0x26f8
00005333  B80200            mov ax,0x2
00005336  2D0100            sub ax,0x1
00005339  B90000            mov cx,0x0
0000533C  BAFF00            mov dx,0xff
0000533F  E8A8D3            call word 0x26ea
00005342  50                push ax
00005343  B80200            mov ax,0x2
00005346  2D0100            sub ax,0x1
00005349  B90000            mov cx,0x0
0000534C  BAFF00            mov dx,0xff
0000534F  E898D3            call word 0x26ea
00005352  50                push ax
00005353  B8C900            mov ax,0xc9
00005356  B90000            mov cx,0x0
00005359  BAFF00            mov dx,0xff
0000535C  E88BD3            call word 0x26ea
0000535F  50                push ax
00005360  E844FE            call word 0x51a7
00005363  B90E00            mov cx,0xe
00005366  E88FD3            call word 0x26f8
00005369  B80200            mov ax,0x2
0000536C  2D0100            sub ax,0x1
0000536F  B90000            mov cx,0x0
00005372  BAFF00            mov dx,0xff
00005375  E872D3            call word 0x26ea
00005378  50                push ax
00005379  B81600            mov ax,0x16
0000537C  050100            add ax,0x1
0000537F  B90000            mov cx,0x0
00005382  BAFF00            mov dx,0xff
00005385  E862D3            call word 0x26ea
00005388  50                push ax
00005389  B8C800            mov ax,0xc8
0000538C  B90000            mov cx,0x0
0000538F  BAFF00            mov dx,0xff
00005392  E855D3            call word 0x26ea
00005395  50                push ax
00005396  E80EFE            call word 0x51a7
00005399  B90E00            mov cx,0xe
0000539C  E859D3            call word 0x26f8
0000539F  B84F00            mov ax,0x4f
000053A2  050100            add ax,0x1
000053A5  B90000            mov cx,0x0
000053A8  BAFF00            mov dx,0xff
000053AB  E83CD3            call word 0x26ea
000053AE  50                push ax
000053AF  B80200            mov ax,0x2
000053B2  2D0100            sub ax,0x1
000053B5  B90000            mov cx,0x0
000053B8  BAFF00            mov dx,0xff
000053BB  E82CD3            call word 0x26ea
000053BE  50                push ax
000053BF  B8BB00            mov ax,0xbb
000053C2  B90000            mov cx,0x0
000053C5  BAFF00            mov dx,0xff
000053C8  E81FD3            call word 0x26ea
000053CB  50                push ax
000053CC  E8D8FD            call word 0x51a7
000053CF  B90E00            mov cx,0xe
000053D2  E823D3            call word 0x26f8
000053D5  B84F00            mov ax,0x4f
000053D8  050100            add ax,0x1
000053DB  B90000            mov cx,0x0
000053DE  BAFF00            mov dx,0xff
000053E1  E806D3            call word 0x26ea
000053E4  50                push ax
000053E5  B81600            mov ax,0x16
000053E8  050100            add ax,0x1
000053EB  B90000            mov cx,0x0
000053EE  BAFF00            mov dx,0xff
000053F1  E8F6D2            call word 0x26ea
000053F4  50                push ax
000053F5  B8BC00            mov ax,0xbc
000053F8  B90000            mov cx,0x0
000053FB  BAFF00            mov dx,0xff
000053FE  E8E9D2            call word 0x26ea
00005401  50                push ax
00005402  E8A2FD            call word 0x51a7
00005405  E90000            jmp word 0x5408
00005408  8BE5              mov sp,bp
0000540A  5D                pop bp
0000540B  C3                ret
0000540C  55                push bp
0000540D  8BEC              mov bp,sp
0000540F  55                push bp
00005410  E90000            jmp word 0x5413
00005413  B80200            mov ax,0x2
00005416  E828B8            call word 0xc41
00005419  3D0000            cmp ax,0x0
0000541C  B80100            mov ax,0x1
0000541F  7401              jz 0x5422
00005421  48                dec ax
00005422  B90000            mov cx,0x0
00005425  BA0100            mov dx,0x1
00005428  E8BFD2            call word 0x26ea
0000542B  884604            mov [bp+0x4],al
0000542E  E90000            jmp word 0x5431
00005431  8A4604            mov al,[bp+0x4]
00005434  32E4              xor ah,ah
00005436  0BC0              or ax,ax
00005438  8BE5              mov sp,bp
0000543A  5D                pop bp
0000543B  C20100            ret 0x1
0000543E  55                push bp
0000543F  8BEC              mov bp,sp
00005441  55                push bp
00005442  E90000            jmp word 0x5445
00005445  A0660E            mov al,[0xe66]
00005448  32E4              xor ah,ah
0000544A  3401              xor al,0x1
0000544C  7503              jnz 0x5451
0000544E  E93200            jmp word 0x5483
00005451  B8FA00            mov ax,0xfa
00005454  E822B0            call word 0x479
00005457  B90600            mov cx,0x6
0000545A  E89BD2            call word 0x26f8
0000545D  E87CD9            call word 0x2ddc
00005460  E81CCA            call word 0x1e7f
00005463  E8C0CD            call word 0x2226
00005466  1920              sbb [bx+si],sp
00005468  2E2E2E20416E      and [cs:bx+di+0x6e],al
0000546E  6F                outsw
0000546F  7468              jz 0x54d9
00005471  657220            gs jc 0x5494
00005474  6761              a32 popaw
00005476  6D                insw
00005477  653F              gs aas
00005479  205B59            and [bp+di+0x59],bl
0000547C  2F                das
0000547D  4E                dec si
0000547E  5D                pop bp
0000547F  20E8              and al,ch
00005481  EAD2E90000        jmp word 0x0:0xe9d2
00005486  8BE5              mov sp,bp
00005488  5D                pop bp
00005489  C3                ret
0000548A  55                push bp
0000548B  8BEC              mov bp,sp
0000548D  55                push bp
0000548E  E90000            jmp word 0x5491
00005491  A0660E            mov al,[0xe66]
00005494  32E4              xor ah,ah
00005496  3401              xor al,0x1
00005498  7503              jnz 0x549d
0000549A  E92000            jmp word 0x54bd
0000549D  B80100            mov ax,0x1
000054A0  50                push ax
000054A1  B81900            mov ax,0x19
000054A4  E8B8AE            call word 0x35f
000054A7  E88BAD            call word 0x235
000054AA  E8D2C9            call word 0x1e7f
000054AD  8D7E04            lea di,[bp+0x4]
000054B0  16                push ss
000054B1  E873B8            call word 0xd27
000054B4  B80000            mov ax,0x0
000054B7  E83FCD            call word 0x21f9
000054BA  E8B0D2            call word 0x276d
000054BD  E90000            jmp word 0x54c0
000054C0  8BE5              mov sp,bp
000054C2  5D                pop bp
000054C3  C20001            ret 0x100
000054C6  55                push bp
000054C7  8BEC              mov bp,sp
000054C9  55                push bp
000054CA  E90000            jmp word 0x54cd
000054CD  8D7E04            lea di,[bp+0x4]
000054D0  16                push ss
000054D1  57                push di
000054D2  C47EFA            les di,[bp-0x6]
000054D5  268A05            mov al,[es:di]
000054D8  32E4              xor ah,ah
000054DA  50                push ax
000054DB  C47EFA            les di,[bp-0x6]
000054DE  268A4501          mov al,[es:di+0x1]
000054E2  32E4              xor ah,ah
000054E4  E878AE            call word 0x35f
000054E7  E895C9            call word 0x1e7f
000054EA  B82000            mov ax,0x20
000054ED  50                push ax
000054EE  B80000            mov ax,0x0
000054F1  E88FCC            call word 0x2183
000054F4  E876D2            call word 0x276d
000054F7  58                pop ax
000054F8  58                pop ax
000054F9  E90000            jmp word 0x54fc
000054FC  8BE5              mov sp,bp
000054FE  5D                pop bp
000054FF  C20200            ret 0x2
00005502  55                push bp
00005503  8BEC              mov bp,sp
00005505  55                push bp
00005506  E90000            jmp word 0x5509
00005509  50                push ax
0000550A  8B4604            mov ax,[bp+0x4]
0000550D  50                push ax
0000550E  A1590E            mov ax,[0xe59]
00005511  2D0100            sub ax,0x1
00005514  59                pop cx
00005515  91                xchg ax,cx
00005516  2BC8              sub cx,ax
00005518  7D03              jnl 0x551d
0000551A  E93D00            jmp word 0x555a
0000551D  41                inc cx
0000551E  8946FC            mov [bp-0x4],ax
00005521  51                push cx
00005522  8B46FC            mov ax,[bp-0x4]
00005525  48                dec ax
00005526  B9FF00            mov cx,0xff
00005529  E8B4D1            call word 0x26e0
0000552C  03C0              add ax,ax
0000552E  97                xchg ax,di
0000552F  81C76A0E          add di,0xe6a
00005533  1E                push ds
00005534  57                push di
00005535  8B46FC            mov ax,[bp-0x4]
00005538  050100            add ax,0x1
0000553B  48                dec ax
0000553C  B9FF00            mov cx,0xff
0000553F  E89ED1            call word 0x26e0
00005542  03C0              add ax,ax
00005544  97                xchg ax,di
00005545  81C76A0E          add di,0xe6a
00005549  1E                push ds
0000554A  B90200            mov cx,0x2
0000554D  E80DD1            call word 0x265d
00005550  59                pop cx
00005551  49                dec cx
00005552  7406              jz 0x555a
00005554  FF46FC            inc word [bp-0x4]
00005557  E9C7FF            jmp word 0x5521
0000555A  A1590E            mov ax,[0xe59]
0000555D  2D0100            sub ax,0x1
00005560  A3590E            mov [0xe59],ax
00005563  E90000            jmp word 0x5566
00005566  8BE5              mov sp,bp
00005568  5D                pop bp
00005569  C20200            ret 0x2
0000556C  55                push bp
0000556D  8BEC              mov bp,sp
0000556F  55                push bp
00005570  E91B06            jmp word 0x5b8e
00005573  55                push bp
00005574  8BC4              mov ax,sp
00005576  FF76FE            push word [bp-0x2]
00005579  8BE8              mov bp,ax
0000557B  55                push bp
0000557C  E90000            jmp word 0x557f
0000557F  83EC04            sub sp,byte +0x4
00005582  B82003            mov ax,0x320
00005585  8946F8            mov [bp-0x8],ax
00005588  8B46F8            mov ax,[bp-0x8]
0000558B  3D6400            cmp ax,0x64
0000558E  7F03              jg 0x5593
00005590  E92C00            jmp word 0x55bf
00005593  B90C00            mov cx,0xc
00005596  E85FD1            call word 0x26f8
00005599  50                push ax
0000559A  8B46F8            mov ax,[bp-0x8]
0000559D  50                push ax
0000559E  8B46F8            mov ax,[bp-0x8]
000055A1  B90300            mov cx,0x3
000055A4  F7E9              imul cx
000055A6  50                push ax
000055A7  E872EA            call word 0x401c
000055AA  8946FA            mov [bp-0x6],ax
000055AD  8B46FA            mov ax,[bp-0x6]
000055B0  E8FEB0            call word 0x6b1
000055B3  8B46F8            mov ax,[bp-0x8]
000055B6  2D0200            sub ax,0x2
000055B9  8946F8            mov [bp-0x8],ax
000055BC  E9C9FF            jmp word 0x5588
000055BF  E816B1            call word 0x6d8
000055C2  E90000            jmp word 0x55c5
000055C5  8BE5              mov sp,bp
000055C7  5D                pop bp
000055C8  C3                ret
000055C9  55                push bp
000055CA  8BC4              mov ax,sp
000055CC  FF76FE            push word [bp-0x2]
000055CF  8BE8              mov bp,ax
000055D1  55                push bp
000055D2  E9CE00            jmp word 0x56a3
000055D5  55                push bp
000055D6  8BC4              mov ax,sp
000055D8  FF76FE            push word [bp-0x2]
000055DB  FF76FC            push word [bp-0x4]
000055DE  8BE8              mov bp,ax
000055E0  55                push bp
000055E1  E90000            jmp word 0x55e4
000055E4  83EC05            sub sp,byte +0x5
000055E7  B80100            mov ax,0x1
000055EA  50                push ax
000055EB  B80500            mov ax,0x5
000055EE  59                pop cx
000055EF  91                xchg ax,cx
000055F0  2BC8              sub cx,ax
000055F2  7D03              jnl 0x55f7
000055F4  E9A300            jmp word 0x569a
000055F7  41                inc cx
000055F8  8846F9            mov [bp-0x7],al
000055FB  51                push cx
000055FC  8A4606            mov al,[bp+0x6]
000055FF  32E4              xor ah,ah
00005601  50                push ax
00005602  8A4604            mov al,[bp+0x4]
00005605  32E4              xor ah,ah
00005607  E855AD            call word 0x35f
0000560A  E872C8            call word 0x1e7f
0000560D  B80200            mov ax,0x2
00005610  50                push ax
00005611  B80000            mov ax,0x0
00005614  E86CCB            call word 0x2183
00005617  E853D1            call word 0x276d
0000561A  B83C00            mov ax,0x3c
0000561D  E859AE            call word 0x479
00005620  8A4606            mov al,[bp+0x6]
00005623  32E4              xor ah,ah
00005625  50                push ax
00005626  8A4604            mov al,[bp+0x4]
00005629  32E4              xor ah,ah
0000562B  E831AD            call word 0x35f
0000562E  B90600            mov cx,0x6
00005631  E8C4D0            call word 0x26f8
00005634  E845F6            call word 0x4c7c
00005637  E845C8            call word 0x1e7f
0000563A  B80100            mov ax,0x1
0000563D  50                push ax
0000563E  B80000            mov ax,0x0
00005641  E83FCB            call word 0x2183
00005644  E826D1            call word 0x276d
00005647  B82003            mov ax,0x320
0000564A  8946F5            mov [bp-0xb],ax
0000564D  8B46F5            mov ax,[bp-0xb]
00005650  3D6400            cmp ax,0x64
00005653  7F03              jg 0x5658
00005655  E92C00            jmp word 0x5684
00005658  B90C00            mov cx,0xc
0000565B  E89AD0            call word 0x26f8
0000565E  50                push ax
0000565F  8B46F5            mov ax,[bp-0xb]
00005662  50                push ax
00005663  8B46F5            mov ax,[bp-0xb]
00005666  B90300            mov cx,0x3
00005669  F7E9              imul cx
0000566B  50                push ax
0000566C  E8ADE9            call word 0x401c
0000566F  8946F7            mov [bp-0x9],ax
00005672  8B46F7            mov ax,[bp-0x9]
00005675  E839B0            call word 0x6b1
00005678  8B46F5            mov ax,[bp-0xb]
0000567B  2D0200            sub ax,0x2
0000567E  8946F5            mov [bp-0xb],ax
00005681  E9C9FF            jmp word 0x564d
00005684  E851B0            call word 0x6d8
00005687  B90600            mov cx,0x6
0000568A  E86BD0            call word 0x26f8
0000568D  E8D8F5            call word 0x4c68
00005690  59                pop cx
00005691  49                dec cx
00005692  7406              jz 0x569a
00005694  FE46F9            inc byte [bp-0x7]
00005697  E961FF            jmp word 0x55fb
0000569A  E90000            jmp word 0x569d
0000569D  8BE5              mov sp,bp
0000569F  5D                pop bp
000056A0  C20400            ret 0x4
000056A3  8B5EFE            mov bx,[bp-0x2]
000056A6  368B4708          mov ax,[ss:bx+0x8]
000056AA  48                dec ax
000056AB  B9FF00            mov cx,0xff
000056AE  E82FD0            call word 0x26e0
000056B1  03C0              add ax,ax
000056B3  97                xchg ax,di
000056B4  81C76A0E          add di,0xe6a
000056B8  1E                push ds
000056B9  57                push di
000056BA  C47EF8            les di,[bp-0x8]
000056BD  268A05            mov al,[es:di]
000056C0  32E4              xor ah,ah
000056C2  48                dec ax
000056C3  48                dec ax
000056C4  B94E00            mov cx,0x4e
000056C7  E816D0            call word 0x26e0
000056CA  B92A00            mov cx,0x2a
000056CD  F7E1              mul cx
000056CF  97                xchg ax,di
000056D0  57                push di
000056D1  C47EF8            les di,[bp-0x8]
000056D4  268A4501          mov al,[es:di+0x1]
000056D8  32E4              xor ah,ah
000056DA  48                dec ax
000056DB  48                dec ax
000056DC  B91500            mov cx,0x15
000056DF  E8FECF            call word 0x26e0
000056E2  03C0              add ax,ax
000056E4  5F                pop di
000056E5  03F8              add di,ax
000056E7  57                push di
000056E8  B80000            mov ax,0x0
000056EB  B90000            mov cx,0x0
000056EE  BA0300            mov dx,0x3
000056F1  E8F6CF            call word 0x26ea
000056F4  5F                pop di
000056F5  88858D01          mov [di+0x18d],al
000056F9  8A4604            mov al,[bp+0x4]
000056FC  32E4              xor ah,ah
000056FE  3D0000            cmp ax,0x0
00005701  7403              jz 0x5706
00005703  E95F00            jmp word 0x5765
00005706  C47EF8            les di,[bp-0x8]
00005709  268A05            mov al,[es:di]
0000570C  32E4              xor ah,ah
0000570E  050100            add ax,0x1
00005711  48                dec ax
00005712  48                dec ax
00005713  B94E00            mov cx,0x4e
00005716  E8C7CF            call word 0x26e0
00005719  B92A00            mov cx,0x2a
0000571C  F7E1              mul cx
0000571E  97                xchg ax,di
0000571F  57                push di
00005720  C47EF8            les di,[bp-0x8]
00005723  268A4501          mov al,[es:di+0x1]
00005727  32E4              xor ah,ah
00005729  48                dec ax
0000572A  48                dec ax
0000572B  B91500            mov cx,0x15
0000572E  E8AFCF            call word 0x26e0
00005731  03C0              add ax,ax
00005733  5F                pop di
00005734  03F8              add di,ax
00005736  8A858D01          mov al,[di+0x18d]
0000573A  32E4              xor ah,ah
0000573C  3D0100            cmp ax,0x1
0000573F  7503              jnz 0x5744
00005741  E91E00            jmp word 0x5762
00005744  C47EF8            les di,[bp-0x8]
00005747  06                push es
00005748  57                push di
00005749  C47EF8            les di,[bp-0x8]
0000574C  268A05            mov al,[es:di]
0000574F  32E4              xor ah,ah
00005751  050100            add ax,0x1
00005754  B90200            mov cx,0x2
00005757  BA4F00            mov dx,0x4f
0000575A  E88DCF            call word 0x26ea
0000575D  5F                pop di
0000575E  07                pop es
0000575F  268805            mov [es:di],al
00005762  E93601            jmp word 0x589b
00005765  3D0100            cmp ax,0x1
00005768  7403              jz 0x576d
0000576A  E95F00            jmp word 0x57cc
0000576D  C47EF8            les di,[bp-0x8]
00005770  268A05            mov al,[es:di]
00005773  32E4              xor ah,ah
00005775  2D0100            sub ax,0x1
00005778  48                dec ax
00005779  48                dec ax
0000577A  B94E00            mov cx,0x4e
0000577D  E860CF            call word 0x26e0
00005780  B92A00            mov cx,0x2a
00005783  F7E1              mul cx
00005785  97                xchg ax,di
00005786  57                push di
00005787  C47EF8            les di,[bp-0x8]
0000578A  268A4501          mov al,[es:di+0x1]
0000578E  32E4              xor ah,ah
00005790  48                dec ax
00005791  48                dec ax
00005792  B91500            mov cx,0x15
00005795  E848CF            call word 0x26e0
00005798  03C0              add ax,ax
0000579A  5F                pop di
0000579B  03F8              add di,ax
0000579D  8A858D01          mov al,[di+0x18d]
000057A1  32E4              xor ah,ah
000057A3  3D0100            cmp ax,0x1
000057A6  7503              jnz 0x57ab
000057A8  E91E00            jmp word 0x57c9
000057AB  C47EF8            les di,[bp-0x8]
000057AE  06                push es
000057AF  57                push di
000057B0  C47EF8            les di,[bp-0x8]
000057B3  268A05            mov al,[es:di]
000057B6  32E4              xor ah,ah
000057B8  2D0100            sub ax,0x1
000057BB  B90200            mov cx,0x2
000057BE  BA4F00            mov dx,0x4f
000057C1  E826CF            call word 0x26ea
000057C4  5F                pop di
000057C5  07                pop es
000057C6  268805            mov [es:di],al
000057C9  E9CF00            jmp word 0x589b
000057CC  3D0200            cmp ax,0x2
000057CF  7403              jz 0x57d4
000057D1  E96100            jmp word 0x5835
000057D4  C47EF8            les di,[bp-0x8]
000057D7  268A05            mov al,[es:di]
000057DA  32E4              xor ah,ah
000057DC  48                dec ax
000057DD  48                dec ax
000057DE  B94E00            mov cx,0x4e
000057E1  E8FCCE            call word 0x26e0
000057E4  B92A00            mov cx,0x2a
000057E7  F7E1              mul cx
000057E9  97                xchg ax,di
000057EA  57                push di
000057EB  C47EF8            les di,[bp-0x8]
000057EE  268A4501          mov al,[es:di+0x1]
000057F2  32E4              xor ah,ah
000057F4  2D0100            sub ax,0x1
000057F7  48                dec ax
000057F8  48                dec ax
000057F9  B91500            mov cx,0x15
000057FC  E8E1CE            call word 0x26e0
000057FF  03C0              add ax,ax
00005801  5F                pop di
00005802  03F8              add di,ax
00005804  8A858D01          mov al,[di+0x18d]
00005808  32E4              xor ah,ah
0000580A  3D0100            cmp ax,0x1
0000580D  7503              jnz 0x5812
0000580F  E92000            jmp word 0x5832
00005812  C47EF8            les di,[bp-0x8]
00005815  06                push es
00005816  57                push di
00005817  C47EF8            les di,[bp-0x8]
0000581A  268A4501          mov al,[es:di+0x1]
0000581E  32E4              xor ah,ah
00005820  2D0100            sub ax,0x1
00005823  B90200            mov cx,0x2
00005826  BA1600            mov dx,0x16
00005829  E8BECE            call word 0x26ea
0000582C  5F                pop di
0000582D  07                pop es
0000582E  26884501          mov [es:di+0x1],al
00005832  E96600            jmp word 0x589b
00005835  3D0300            cmp ax,0x3
00005838  7403              jz 0x583d
0000583A  E95E00            jmp word 0x589b
0000583D  C47EF8            les di,[bp-0x8]
00005840  268A05            mov al,[es:di]
00005843  32E4              xor ah,ah
00005845  48                dec ax
00005846  48                dec ax
00005847  B94E00            mov cx,0x4e
0000584A  E893CE            call word 0x26e0
0000584D  B92A00            mov cx,0x2a
00005850  F7E1              mul cx
00005852  97                xchg ax,di
00005853  57                push di
00005854  C47EF8            les di,[bp-0x8]
00005857  268A4501          mov al,[es:di+0x1]
0000585B  32E4              xor ah,ah
0000585D  050100            add ax,0x1
00005860  48                dec ax
00005861  48                dec ax
00005862  B91500            mov cx,0x15
00005865  E878CE            call word 0x26e0
00005868  03C0              add ax,ax
0000586A  5F                pop di
0000586B  03F8              add di,ax
0000586D  8A858D01          mov al,[di+0x18d]
00005871  32E4              xor ah,ah
00005873  3D0100            cmp ax,0x1
00005876  7503              jnz 0x587b
00005878  E92000            jmp word 0x589b
0000587B  C47EF8            les di,[bp-0x8]
0000587E  06                push es
0000587F  57                push di
00005880  C47EF8            les di,[bp-0x8]
00005883  268A4501          mov al,[es:di+0x1]
00005887  32E4              xor ah,ah
00005889  050100            add ax,0x1
0000588C  B90200            mov cx,0x2
0000588F  BA1600            mov dx,0x16
00005892  E855CE            call word 0x26ea
00005895  5F                pop di
00005896  07                pop es
00005897  26884501          mov [es:di+0x1],al
0000589B  C47EF8            les di,[bp-0x8]
0000589E  268A05            mov al,[es:di]
000058A1  32E4              xor ah,ah
000058A3  48                dec ax
000058A4  48                dec ax
000058A5  B94E00            mov cx,0x4e
000058A8  E835CE            call word 0x26e0
000058AB  B92A00            mov cx,0x2a
000058AE  F7E1              mul cx
000058B0  97                xchg ax,di
000058B1  57                push di
000058B2  C47EF8            les di,[bp-0x8]
000058B5  268A4501          mov al,[es:di+0x1]
000058B9  32E4              xor ah,ah
000058BB  48                dec ax
000058BC  48                dec ax
000058BD  B91500            mov cx,0x15
000058C0  E81DCE            call word 0x26e0
000058C3  03C0              add ax,ax
000058C5  5F                pop di
000058C6  03F8              add di,ax
000058C8  81C78D01          add di,0x18d
000058CC  1E                push ds
000058CD  57                push di
000058CE  C47EF4            les di,[bp-0xc]
000058D1  268A05            mov al,[es:di]
000058D4  32E4              xor ah,ah
000058D6  3D0200            cmp ax,0x2
000058D9  7403              jz 0x58de
000058DB  E9F500            jmp word 0x59d3
000058DE  C47EF4            les di,[bp-0xc]
000058E1  268A4501          mov al,[es:di+0x1]
000058E5  32E4              xor ah,ah
000058E7  3D0600            cmp ax,0x6
000058EA  7F03              jg 0x58ef
000058EC  E90C00            jmp word 0x58fb
000058EF  B90C00            mov cx,0xc
000058F2  E803CE            call word 0x26f8
000058F5  E87BFC            call word 0x5573
000058F8  E90900            jmp word 0x5904
000058FB  B90600            mov cx,0x6
000058FE  E8F7CD            call word 0x26f8
00005901  E8D8D4            call word 0x2ddc
00005904  C47EF4            les di,[bp-0xc]
00005907  06                push es
00005908  57                push di
00005909  C47EF4            les di,[bp-0xc]
0000590C  268A4501          mov al,[es:di+0x1]
00005910  32E4              xor ah,ah
00005912  2D0100            sub ax,0x1
00005915  B90000            mov cx,0x0
00005918  BAFF00            mov dx,0xff
0000591B  E8CCCD            call word 0x26ea
0000591E  5F                pop di
0000591F  07                pop es
00005920  26884501          mov [es:di+0x1],al
00005924  C47EF4            les di,[bp-0xc]
00005927  268A4501          mov al,[es:di+0x1]
0000592B  32E4              xor ah,ah
0000592D  3D0000            cmp ax,0x0
00005930  7403              jz 0x5935
00005932  E97000            jmp word 0x59a5
00005935  B90601            mov cx,0x106
00005938  E8BDCD            call word 0x26f8
0000593B  E802B4            call word 0xd40
0000593E  234120            and ax,[bx+di+0x20]
00005941  686F6C            push word 0x6c6f
00005944  65206861          and [gs:bx+si+0x61],ch
00005948  7320              jnc 0x596a
0000594A  66696C6C65642077  imul ebp,[si+0x6c],dword 0x77206465
00005952  697468204D        imul si,[si+0x68],word 0x4d20
00005957  756D              jnz 0x59c6
00005959  6D                insw
0000595A  696573202E        imul sp,[di+0x73],word 0x2e20
0000595F  2E2E20B1FFE8      and [cs:bx+di-0x1701],dh
00005965  37                aaa
00005966  B4E8              mov ah,0xe8
00005968  20FB              and bl,bh
0000596A  C47EF4            les di,[bp-0xc]
0000596D  06                push es
0000596E  57                push di
0000596F  B80000            mov ax,0x0
00005972  B90000            mov cx,0x0
00005975  BA0300            mov dx,0x3
00005978  E86FCD            call word 0x26ea
0000597B  5F                pop di
0000597C  07                pop es
0000597D  268805            mov [es:di],al
00005980  B90800            mov cx,0x8
00005983  E872CD            call word 0x26f8
00005986  8B5EFE            mov bx,[bp-0x2]
00005989  368B4708          mov ax,[ss:bx+0x8]
0000598D  48                dec ax
0000598E  B9FF00            mov cx,0xff
00005991  E84CCD            call word 0x26e0
00005994  03C0              add ax,ax
00005996  97                xchg ax,di
00005997  81C76A0E          add di,0xe6a
0000599B  1E                push ds
0000599C  B90200            mov cx,0x2
0000599F  E8CACC            call word 0x266c
000059A2  E821FB            call word 0x54c6
000059A5  B90A00            mov cx,0xa
000059A8  E84DCD            call word 0x26f8
000059AB  8B5EFE            mov bx,[bp-0x2]
000059AE  368B4708          mov ax,[ss:bx+0x8]
000059B2  50                push ax
000059B3  E84CFB            call word 0x5502
000059B6  8B5EFE            mov bx,[bp-0x2]
000059B9  36C47F04          les di,[ss:bx+0x4]
000059BD  06                push es
000059BE  57                push di
000059BF  B80100            mov ax,0x1
000059C2  B90000            mov cx,0x0
000059C5  BA0300            mov dx,0x3
000059C8  E81FCD            call word 0x26ea
000059CB  5F                pop di
000059CC  07                pop es
000059CD  268805            mov [es:di],al
000059D0  E9AE01            jmp word 0x5b81
000059D3  3D0300            cmp ax,0x3
000059D6  7403              jz 0x59db
000059D8  E94D01            jmp word 0x5b28
000059DB  B90600            mov cx,0x6
000059DE  E817CD            call word 0x26f8
000059E1  E8F8D3            call word 0x2ddc
000059E4  B91300            mov cx,0x13
000059E7  E80ECD            call word 0x26f8
000059EA  C47EF8            les di,[bp-0x8]
000059ED  268A05            mov al,[es:di]
000059F0  32E4              xor ah,ah
000059F2  B90200            mov cx,0x2
000059F5  BA4F00            mov dx,0x4f
000059F8  E8EFCC            call word 0x26ea
000059FB  50                push ax
000059FC  C47EF8            les di,[bp-0x8]
000059FF  268A4501          mov al,[es:di+0x1]
00005A03  32E4              xor ah,ah
00005A05  B90200            mov cx,0x2
00005A08  BA1600            mov dx,0x16
00005A0B  E8DCCC            call word 0x26ea
00005A0E  50                push ax
00005A0F  E8C3FB            call word 0x55d5
00005A12  B90601            mov cx,0x106
00005A15  E8E0CC            call word 0x26f8
00005A18  E825B3            call word 0xd40
00005A1B  154D61            adc ax,0x614d
00005A1E  756C              jnz 0x5a8c
00005A20  6564206279        and [fs:bp+si+0x79],ah
00005A25  206120            and [bx+di+0x20],ah
00005A28  4D                dec bp
00005A29  756D              jnz 0x5a98
00005A2B  6D                insw
00005A2C  6965212121        imul sp,[di+0x21],word 0x2121
00005A31  B1FF              mov cl,0xff
00005A33  E868B3            call word 0xd9e
00005A36  E851FA            call word 0x548a
00005A39  B90600            mov cx,0x6
00005A3C  E8B9CC            call word 0x26f8
00005A3F  E8FCF9            call word 0x543e
00005A42  C47EF8            les di,[bp-0x8]
00005A45  268A05            mov al,[es:di]
00005A48  32E4              xor ah,ah
00005A4A  48                dec ax
00005A4B  48                dec ax
00005A4C  B94E00            mov cx,0x4e
00005A4F  E88ECC            call word 0x26e0
00005A52  B92A00            mov cx,0x2a
00005A55  F7E1              mul cx
00005A57  97                xchg ax,di
00005A58  57                push di
00005A59  C47EF8            les di,[bp-0x8]
00005A5C  268A4501          mov al,[es:di+0x1]
00005A60  32E4              xor ah,ah
00005A62  48                dec ax
00005A63  48                dec ax
00005A64  B91500            mov cx,0x15
00005A67  E876CC            call word 0x26e0
00005A6A  03C0              add ax,ax
00005A6C  5F                pop di
00005A6D  03F8              add di,ax
00005A6F  57                push di
00005A70  B80100            mov ax,0x1
00005A73  B90000            mov cx,0x0
00005A76  BA0300            mov dx,0x3
00005A79  E86ECC            call word 0x26ea
00005A7C  5F                pop di
00005A7D  88858D01          mov [di+0x18d],al
00005A81  8B5EFE            mov bx,[bp-0x2]
00005A84  36C47F04          les di,[ss:bx+0x4]
00005A88  06                push es
00005A89  57                push di
00005A8A  B80200            mov ax,0x2
00005A8D  B90000            mov cx,0x0
00005A90  BA0300            mov dx,0x3
00005A93  E854CC            call word 0x26ea
00005A96  5F                pop di
00005A97  07                pop es
00005A98  268805            mov [es:di],al
00005A9B  C47EF8            les di,[bp-0x8]
00005A9E  268A05            mov al,[es:di]
00005AA1  32E4              xor ah,ah
00005AA3  48                dec ax
00005AA4  48                dec ax
00005AA5  B94E00            mov cx,0x4e
00005AA8  E835CC            call word 0x26e0
00005AAB  B92A00            mov cx,0x2a
00005AAE  F7E1              mul cx
00005AB0  97                xchg ax,di
00005AB1  57                push di
00005AB2  C47EF8            les di,[bp-0x8]
00005AB5  268A4501          mov al,[es:di+0x1]
00005AB9  32E4              xor ah,ah
00005ABB  48                dec ax
00005ABC  48                dec ax
00005ABD  B91500            mov cx,0x15
00005AC0  E81DCC            call word 0x26e0
00005AC3  03C0              add ax,ax
00005AC5  5F                pop di
00005AC6  03F8              add di,ax
00005AC8  57                push di
00005AC9  B80200            mov ax,0x2
00005ACC  B90000            mov cx,0x0
00005ACF  BA0300            mov dx,0x3
00005AD2  E815CC            call word 0x26ea
00005AD5  5F                pop di
00005AD6  88858D01          mov [di+0x18d],al
00005ADA  C47EF8            les di,[bp-0x8]
00005ADD  268A05            mov al,[es:di]
00005AE0  32E4              xor ah,ah
00005AE2  48                dec ax
00005AE3  48                dec ax
00005AE4  B94E00            mov cx,0x4e
00005AE7  E8F6CB            call word 0x26e0
00005AEA  B92A00            mov cx,0x2a
00005AED  F7E1              mul cx
00005AEF  97                xchg ax,di
00005AF0  57                push di
00005AF1  C47EF8            les di,[bp-0x8]
00005AF4  268A4501          mov al,[es:di+0x1]
00005AF8  32E4              xor ah,ah
00005AFA  48                dec ax
00005AFB  48                dec ax
00005AFC  B91500            mov cx,0x15
00005AFF  E8DECB            call word 0x26e0
00005B02  03C0              add ax,ax
00005B04  5F                pop di
00005B05  03F8              add di,ax
00005B07  57                push di
00005B08  B8FF00            mov ax,0xff
00005B0B  B90000            mov cx,0x0
00005B0E  BAFF00            mov dx,0xff
00005B11  E8D6CB            call word 0x26ea
00005B14  5F                pop di
00005B15  88858E01          mov [di+0x18e],al
00005B19  B80000            mov ax,0x0
00005B1C  A36E10            mov [0x106e],ax
00005B1F  B80000            mov ax,0x0
00005B22  A36A10            mov [0x106a],ax
00005B25  E95900            jmp word 0x5b81
00005B28  C47EF8            les di,[bp-0x8]
00005B2B  268A05            mov al,[es:di]
00005B2E  32E4              xor ah,ah
00005B30  48                dec ax
00005B31  48                dec ax
00005B32  B94E00            mov cx,0x4e
00005B35  E8A8CB            call word 0x26e0
00005B38  B92A00            mov cx,0x2a
00005B3B  F7E1              mul cx
00005B3D  97                xchg ax,di
00005B3E  57                push di
00005B3F  C47EF8            les di,[bp-0x8]
00005B42  268A4501          mov al,[es:di+0x1]
00005B46  32E4              xor ah,ah
00005B48  48                dec ax
00005B49  48                dec ax
00005B4A  B91500            mov cx,0x15
00005B4D  E890CB            call word 0x26e0
00005B50  03C0              add ax,ax
00005B52  5F                pop di
00005B53  03F8              add di,ax
00005B55  57                push di
00005B56  B80100            mov ax,0x1
00005B59  B90000            mov cx,0x0
00005B5C  BA0300            mov dx,0x3
00005B5F  E888CB            call word 0x26ea
00005B62  5F                pop di
00005B63  88858D01          mov [di+0x18d],al
00005B67  8B5EFE            mov bx,[bp-0x2]
00005B6A  36C47F04          les di,[ss:bx+0x4]
00005B6E  06                push es
00005B6F  57                push di
00005B70  B80000            mov ax,0x0
00005B73  B90000            mov cx,0x0
00005B76  BA0300            mov dx,0x3
00005B79  E86ECB            call word 0x26ea
00005B7C  5F                pop di
00005B7D  07                pop es
00005B7E  268805            mov [es:di],al
00005B81  58                pop ax
00005B82  58                pop ax
00005B83  58                pop ax
00005B84  58                pop ax
00005B85  E90000            jmp word 0x5b88
00005B88  8BE5              mov sp,bp
00005B8A  5D                pop bp
00005B8B  C20200            ret 0x2
00005B8E  50                push ax
00005B8F  A16E10            mov ax,[0x106e]
00005B92  E8E4A8            call word 0x479
00005B95  8B4608            mov ax,[bp+0x8]
00005B98  48                dec ax
00005B99  B9FF00            mov cx,0xff
00005B9C  E841CB            call word 0x26e0
00005B9F  03C0              add ax,ax
00005BA1  97                xchg ax,di
00005BA2  81C76A0E          add di,0xe6a
00005BA6  1E                push ds
00005BA7  57                push di
00005BA8  C47EF8            les di,[bp-0x8]
00005BAB  268A05            mov al,[es:di]
00005BAE  32E4              xor ah,ah
00005BB0  50                push ax
00005BB1  A08B01            mov al,[0x18b]
00005BB4  32E4              xor ah,ah
00005BB6  59                pop cx
00005BB7  91                xchg ax,cx
00005BB8  3BC1              cmp ax,cx
00005BBA  7F03              jg 0x5bbf
00005BBC  E91402            jmp word 0x5dd3
00005BBF  C47EF8            les di,[bp-0x8]
00005BC2  268A4501          mov al,[es:di+0x1]
00005BC6  32E4              xor ah,ah
00005BC8  50                push ax
00005BC9  A08C01            mov al,[0x18c]
00005BCC  32E4              xor ah,ah
00005BCE  59                pop cx
00005BCF  91                xchg ax,cx
00005BD0  3BC1              cmp ax,cx
00005BD2  7F03              jg 0x5bd7
00005BD4  E9FE00            jmp word 0x5cd5
00005BD7  C47EF8            les di,[bp-0x8]
00005BDA  268A05            mov al,[es:di]
00005BDD  32E4              xor ah,ah
00005BDF  50                push ax
00005BE0  A08B01            mov al,[0x18b]
00005BE3  32E4              xor ah,ah
00005BE5  59                pop cx
00005BE6  91                xchg ax,cx
00005BE7  2BC1              sub ax,cx
00005BE9  B90000            mov cx,0x0
00005BEC  BAFF00            mov dx,0xff
00005BEF  E8F8CA            call word 0x26ea
00005BF2  8846FD            mov [bp-0x3],al
00005BF5  C47EF8            les di,[bp-0x8]
00005BF8  268A4501          mov al,[es:di+0x1]
00005BFC  32E4              xor ah,ah
00005BFE  50                push ax
00005BFF  A08C01            mov al,[0x18c]
00005C02  32E4              xor ah,ah
00005C04  59                pop cx
00005C05  91                xchg ax,cx
00005C06  2BC1              sub ax,cx
00005C08  B90000            mov cx,0x0
00005C0B  BAFF00            mov dx,0xff
00005C0E  E8D9CA            call word 0x26ea
00005C11  8846FC            mov [bp-0x4],al
00005C14  8A46FD            mov al,[bp-0x3]
00005C17  32E4              xor ah,ah
00005C19  50                push ax
00005C1A  8A46FC            mov al,[bp-0x4]
00005C1D  32E4              xor ah,ah
00005C1F  59                pop cx
00005C20  91                xchg ax,cx
00005C21  3BC1              cmp ax,cx
00005C23  7F03              jg 0x5c28
00005C25  E91900            jmp word 0x5c41
00005C28  B90A00            mov cx,0xa
00005C2B  E8CACA            call word 0x26f8
00005C2E  B80100            mov ax,0x1
00005C31  B90000            mov cx,0x0
00005C34  BA0700            mov dx,0x7
00005C37  E8B0CA            call word 0x26ea
00005C3A  50                push ax
00005C3B  E88BF9            call word 0x55c9
00005C3E  E99100            jmp word 0x5cd2
00005C41  8A46FC            mov al,[bp-0x4]
00005C44  32E4              xor ah,ah
00005C46  50                push ax
00005C47  8A46FD            mov al,[bp-0x3]
00005C4A  32E4              xor ah,ah
00005C4C  59                pop cx
00005C4D  91                xchg ax,cx
00005C4E  3BC1              cmp ax,cx
00005C50  7F03              jg 0x5c55
00005C52  E91900            jmp word 0x5c6e
00005C55  B90A00            mov cx,0xa
00005C58  E89DCA            call word 0x26f8
00005C5B  B80200            mov ax,0x2
00005C5E  B90000            mov cx,0x0
00005C61  BA0700            mov dx,0x7
00005C64  E883CA            call word 0x26ea
00005C67  50                push ax
00005C68  E85EF9            call word 0x55c9
00005C6B  E96400            jmp word 0x5cd2
00005C6E  8A46FD            mov al,[bp-0x3]
00005C71  32E4              xor ah,ah
00005C73  3D0000            cmp ax,0x0
00005C76  7403              jz 0x5c7b
00005C78  E91900            jmp word 0x5c94
00005C7B  C47E04            les di,[bp+0x4]
00005C7E  06                push es
00005C7F  57                push di
00005C80  B80300            mov ax,0x3
00005C83  B90000            mov cx,0x0
00005C86  BA0300            mov dx,0x3
00005C89  E85ECA            call word 0x26ea
00005C8C  5F                pop di
00005C8D  07                pop es
00005C8E  268805            mov [es:di],al
00005C91  E93E00            jmp word 0x5cd2
00005C94  B90700            mov cx,0x7
00005C97  E85ECA            call word 0x26f8
00005C9A  4C                dec sp
00005C9B  E86EF7            call word 0x540c
00005C9E  7503              jnz 0x5ca3
00005CA0  E91900            jmp word 0x5cbc
00005CA3  B90A00            mov cx,0xa
00005CA6  E84FCA            call word 0x26f8
00005CA9  B80100            mov ax,0x1
00005CAC  B90000            mov cx,0x0
00005CAF  BA0700            mov dx,0x7
00005CB2  E835CA            call word 0x26ea
00005CB5  50                push ax
00005CB6  E810F9            call word 0x55c9
00005CB9  E91600            jmp word 0x5cd2
00005CBC  B90A00            mov cx,0xa
00005CBF  E836CA            call word 0x26f8
00005CC2  B80200            mov ax,0x2
00005CC5  B90000            mov cx,0x0
00005CC8  BA0700            mov dx,0x7
00005CCB  E81CCA            call word 0x26ea
00005CCE  50                push ax
00005CCF  E8F7F8            call word 0x55c9
00005CD2  E9FB00            jmp word 0x5dd0
00005CD5  C47EF8            les di,[bp-0x8]
00005CD8  268A05            mov al,[es:di]
00005CDB  32E4              xor ah,ah
00005CDD  50                push ax
00005CDE  A08B01            mov al,[0x18b]
00005CE1  32E4              xor ah,ah
00005CE3  59                pop cx
00005CE4  91                xchg ax,cx
00005CE5  2BC1              sub ax,cx
00005CE7  B90000            mov cx,0x0
00005CEA  BAFF00            mov dx,0xff
00005CED  E8FAC9            call word 0x26ea
00005CF0  8846FD            mov [bp-0x3],al
00005CF3  A08C01            mov al,[0x18c]
00005CF6  32E4              xor ah,ah
00005CF8  50                push ax
00005CF9  C47EF8            les di,[bp-0x8]
00005CFC  268A4501          mov al,[es:di+0x1]
00005D00  32E4              xor ah,ah
00005D02  59                pop cx
00005D03  91                xchg ax,cx
00005D04  2BC1              sub ax,cx
00005D06  B90000            mov cx,0x0
00005D09  BAFF00            mov dx,0xff
00005D0C  E8DBC9            call word 0x26ea
00005D0F  8846FC            mov [bp-0x4],al
00005D12  8A46FD            mov al,[bp-0x3]
00005D15  32E4              xor ah,ah
00005D17  50                push ax
00005D18  8A46FC            mov al,[bp-0x4]
00005D1B  32E4              xor ah,ah
00005D1D  59                pop cx
00005D1E  91                xchg ax,cx
00005D1F  3BC1              cmp ax,cx
00005D21  7F03              jg 0x5d26
00005D23  E91900            jmp word 0x5d3f
00005D26  B90A00            mov cx,0xa
00005D29  E8CCC9            call word 0x26f8
00005D2C  B80100            mov ax,0x1
00005D2F  B90000            mov cx,0x0
00005D32  BA0700            mov dx,0x7
00005D35  E8B2C9            call word 0x26ea
00005D38  50                push ax
00005D39  E88DF8            call word 0x55c9
00005D3C  E99100            jmp word 0x5dd0
00005D3F  8A46FC            mov al,[bp-0x4]
00005D42  32E4              xor ah,ah
00005D44  50                push ax
00005D45  8A46FD            mov al,[bp-0x3]
00005D48  32E4              xor ah,ah
00005D4A  59                pop cx
00005D4B  91                xchg ax,cx
00005D4C  3BC1              cmp ax,cx
00005D4E  7F03              jg 0x5d53
00005D50  E91900            jmp word 0x5d6c
00005D53  B90A00            mov cx,0xa
00005D56  E89FC9            call word 0x26f8
00005D59  B80300            mov ax,0x3
00005D5C  B90000            mov cx,0x0
00005D5F  BA0700            mov dx,0x7
00005D62  E885C9            call word 0x26ea
00005D65  50                push ax
00005D66  E860F8            call word 0x55c9
00005D69  E96400            jmp word 0x5dd0
00005D6C  8A46FD            mov al,[bp-0x3]
00005D6F  32E4              xor ah,ah
00005D71  3D0000            cmp ax,0x0
00005D74  7403              jz 0x5d79
00005D76  E91900            jmp word 0x5d92
00005D79  C47E04            les di,[bp+0x4]
00005D7C  06                push es
00005D7D  57                push di
00005D7E  B80300            mov ax,0x3
00005D81  B90000            mov cx,0x0
00005D84  BA0300            mov dx,0x3
00005D87  E860C9            call word 0x26ea
00005D8A  5F                pop di
00005D8B  07                pop es
00005D8C  268805            mov [es:di],al
00005D8F  E93E00            jmp word 0x5dd0
00005D92  B90700            mov cx,0x7
00005D95  E860C9            call word 0x26f8
00005D98  4C                dec sp
00005D99  E870F6            call word 0x540c
00005D9C  7503              jnz 0x5da1
00005D9E  E91900            jmp word 0x5dba
00005DA1  B90A00            mov cx,0xa
00005DA4  E851C9            call word 0x26f8
00005DA7  B80100            mov ax,0x1
00005DAA  B90000            mov cx,0x0
00005DAD  BA0700            mov dx,0x7
00005DB0  E837C9            call word 0x26ea
00005DB3  50                push ax
00005DB4  E812F8            call word 0x55c9
00005DB7  E91600            jmp word 0x5dd0
00005DBA  B90A00            mov cx,0xa
00005DBD  E838C9            call word 0x26f8
00005DC0  B80300            mov ax,0x3
00005DC3  B90000            mov cx,0x0
00005DC6  BA0700            mov dx,0x7
00005DC9  E81EC9            call word 0x26ea
00005DCC  50                push ax
00005DCD  E8F9F7            call word 0x55c9
00005DD0  E91102            jmp word 0x5fe4
00005DD3  C47EF8            les di,[bp-0x8]
00005DD6  268A4501          mov al,[es:di+0x1]
00005DDA  32E4              xor ah,ah
00005DDC  50                push ax
00005DDD  A08C01            mov al,[0x18c]
00005DE0  32E4              xor ah,ah
00005DE2  59                pop cx
00005DE3  91                xchg ax,cx
00005DE4  3BC1              cmp ax,cx
00005DE6  7F03              jg 0x5deb
00005DE8  E9FE00            jmp word 0x5ee9
00005DEB  A08B01            mov al,[0x18b]
00005DEE  32E4              xor ah,ah
00005DF0  50                push ax
00005DF1  C47EF8            les di,[bp-0x8]
00005DF4  268A05            mov al,[es:di]
00005DF7  32E4              xor ah,ah
00005DF9  59                pop cx
00005DFA  91                xchg ax,cx
00005DFB  2BC1              sub ax,cx
00005DFD  B90000            mov cx,0x0
00005E00  BAFF00            mov dx,0xff
00005E03  E8E4C8            call word 0x26ea
00005E06  8846FD            mov [bp-0x3],al
00005E09  C47EF8            les di,[bp-0x8]
00005E0C  268A4501          mov al,[es:di+0x1]
00005E10  32E4              xor ah,ah
00005E12  50                push ax
00005E13  A08C01            mov al,[0x18c]
00005E16  32E4              xor ah,ah
00005E18  59                pop cx
00005E19  91                xchg ax,cx
00005E1A  2BC1              sub ax,cx
00005E1C  B90000            mov cx,0x0
00005E1F  BAFF00            mov dx,0xff
00005E22  E8C5C8            call word 0x26ea
00005E25  8846FC            mov [bp-0x4],al
00005E28  8A46FD            mov al,[bp-0x3]
00005E2B  32E4              xor ah,ah
00005E2D  50                push ax
00005E2E  8A46FC            mov al,[bp-0x4]
00005E31  32E4              xor ah,ah
00005E33  59                pop cx
00005E34  91                xchg ax,cx
00005E35  3BC1              cmp ax,cx
00005E37  7F03              jg 0x5e3c
00005E39  E91900            jmp word 0x5e55
00005E3C  B90A00            mov cx,0xa
00005E3F  E8B6C8            call word 0x26f8
00005E42  B80000            mov ax,0x0
00005E45  B90000            mov cx,0x0
00005E48  BA0700            mov dx,0x7
00005E4B  E89CC8            call word 0x26ea
00005E4E  50                push ax
00005E4F  E877F7            call word 0x55c9
00005E52  E99100            jmp word 0x5ee6
00005E55  8A46FC            mov al,[bp-0x4]
00005E58  32E4              xor ah,ah
00005E5A  50                push ax
00005E5B  8A46FD            mov al,[bp-0x3]
00005E5E  32E4              xor ah,ah
00005E60  59                pop cx
00005E61  91                xchg ax,cx
00005E62  3BC1              cmp ax,cx
00005E64  7F03              jg 0x5e69
00005E66  E91900            jmp word 0x5e82
00005E69  B90A00            mov cx,0xa
00005E6C  E889C8            call word 0x26f8
00005E6F  B80200            mov ax,0x2
00005E72  B90000            mov cx,0x0
00005E75  BA0700            mov dx,0x7
00005E78  E86FC8            call word 0x26ea
00005E7B  50                push ax
00005E7C  E84AF7            call word 0x55c9
00005E7F  E96400            jmp word 0x5ee6
00005E82  8A46FD            mov al,[bp-0x3]
00005E85  32E4              xor ah,ah
00005E87  3D0000            cmp ax,0x0
00005E8A  7403              jz 0x5e8f
00005E8C  E91900            jmp word 0x5ea8
00005E8F  C47E04            les di,[bp+0x4]
00005E92  06                push es
00005E93  57                push di
00005E94  B80300            mov ax,0x3
00005E97  B90000            mov cx,0x0
00005E9A  BA0300            mov dx,0x3
00005E9D  E84AC8            call word 0x26ea
00005EA0  5F                pop di
00005EA1  07                pop es
00005EA2  268805            mov [es:di],al
00005EA5  E93E00            jmp word 0x5ee6
00005EA8  B90700            mov cx,0x7
00005EAB  E84AC8            call word 0x26f8
00005EAE  4C                dec sp
00005EAF  E85AF5            call word 0x540c
00005EB2  7503              jnz 0x5eb7
00005EB4  E91900            jmp word 0x5ed0
00005EB7  B90A00            mov cx,0xa
00005EBA  E83BC8            call word 0x26f8
00005EBD  B80000            mov ax,0x0
00005EC0  B90000            mov cx,0x0
00005EC3  BA0700            mov dx,0x7
00005EC6  E821C8            call word 0x26ea
00005EC9  50                push ax
00005ECA  E8FCF6            call word 0x55c9
00005ECD  E91600            jmp word 0x5ee6
00005ED0  B90A00            mov cx,0xa
00005ED3  E822C8            call word 0x26f8
00005ED6  B80200            mov ax,0x2
00005ED9  B90000            mov cx,0x0
00005EDC  BA0700            mov dx,0x7
00005EDF  E808C8            call word 0x26ea
00005EE2  50                push ax
00005EE3  E8E3F6            call word 0x55c9
00005EE6  E9FB00            jmp word 0x5fe4
00005EE9  A08B01            mov al,[0x18b]
00005EEC  32E4              xor ah,ah
00005EEE  50                push ax
00005EEF  C47EF8            les di,[bp-0x8]
00005EF2  268A05            mov al,[es:di]
00005EF5  32E4              xor ah,ah
00005EF7  59                pop cx
00005EF8  91                xchg ax,cx
00005EF9  2BC1              sub ax,cx
00005EFB  B90000            mov cx,0x0
00005EFE  BAFF00            mov dx,0xff
00005F01  E8E6C7            call word 0x26ea
00005F04  8846FD            mov [bp-0x3],al
00005F07  A08C01            mov al,[0x18c]
00005F0A  32E4              xor ah,ah
00005F0C  50                push ax
00005F0D  C47EF8            les di,[bp-0x8]
00005F10  268A4501          mov al,[es:di+0x1]
00005F14  32E4              xor ah,ah
00005F16  59                pop cx
00005F17  91                xchg ax,cx
00005F18  2BC1              sub ax,cx
00005F1A  B90000            mov cx,0x0
00005F1D  BAFF00            mov dx,0xff
00005F20  E8C7C7            call word 0x26ea
00005F23  8846FC            mov [bp-0x4],al
00005F26  8A46FD            mov al,[bp-0x3]
00005F29  32E4              xor ah,ah
00005F2B  50                push ax
00005F2C  8A46FC            mov al,[bp-0x4]
00005F2F  32E4              xor ah,ah
00005F31  59                pop cx
00005F32  91                xchg ax,cx
00005F33  3BC1              cmp ax,cx
00005F35  7F03              jg 0x5f3a
00005F37  E91900            jmp word 0x5f53
00005F3A  B90A00            mov cx,0xa
00005F3D  E8B8C7            call word 0x26f8
00005F40  B80000            mov ax,0x0
00005F43  B90000            mov cx,0x0
00005F46  BA0700            mov dx,0x7
00005F49  E89EC7            call word 0x26ea
00005F4C  50                push ax
00005F4D  E879F6            call word 0x55c9
00005F50  E99100            jmp word 0x5fe4
00005F53  8A46FC            mov al,[bp-0x4]
00005F56  32E4              xor ah,ah
00005F58  50                push ax
00005F59  8A46FD            mov al,[bp-0x3]
00005F5C  32E4              xor ah,ah
00005F5E  59                pop cx
00005F5F  91                xchg ax,cx
00005F60  3BC1              cmp ax,cx
00005F62  7F03              jg 0x5f67
00005F64  E91900            jmp word 0x5f80
00005F67  B90A00            mov cx,0xa
00005F6A  E88BC7            call word 0x26f8
00005F6D  B80300            mov ax,0x3
00005F70  B90000            mov cx,0x0
00005F73  BA0700            mov dx,0x7
00005F76  E871C7            call word 0x26ea
00005F79  50                push ax
00005F7A  E84CF6            call word 0x55c9
00005F7D  E96400            jmp word 0x5fe4
00005F80  8A46FD            mov al,[bp-0x3]
00005F83  32E4              xor ah,ah
00005F85  3D0000            cmp ax,0x0
00005F88  7403              jz 0x5f8d
00005F8A  E91900            jmp word 0x5fa6
00005F8D  C47E04            les di,[bp+0x4]
00005F90  06                push es
00005F91  57                push di
00005F92  B80300            mov ax,0x3
00005F95  B90000            mov cx,0x0
00005F98  BA0300            mov dx,0x3
00005F9B  E84CC7            call word 0x26ea
00005F9E  5F                pop di
00005F9F  07                pop es
00005FA0  268805            mov [es:di],al
00005FA3  E93E00            jmp word 0x5fe4
00005FA6  B90700            mov cx,0x7
00005FA9  E84CC7            call word 0x26f8
00005FAC  4C                dec sp
00005FAD  E85CF4            call word 0x540c
00005FB0  7503              jnz 0x5fb5
00005FB2  E91900            jmp word 0x5fce
00005FB5  B90A00            mov cx,0xa
00005FB8  E83DC7            call word 0x26f8
00005FBB  B80000            mov ax,0x0
00005FBE  B90000            mov cx,0x0
00005FC1  BA0700            mov dx,0x7
00005FC4  E823C7            call word 0x26ea
00005FC7  50                push ax
00005FC8  E8FEF5            call word 0x55c9
00005FCB  E91600            jmp word 0x5fe4
00005FCE  B90A00            mov cx,0xa
00005FD1  E824C7            call word 0x26f8
00005FD4  B80300            mov ax,0x3
00005FD7  B90000            mov cx,0x0
00005FDA  BA0700            mov dx,0x7
00005FDD  E80AC7            call word 0x26ea
00005FE0  50                push ax
00005FE1  E8E5F5            call word 0x55c9
00005FE4  58                pop ax
00005FE5  58                pop ax
00005FE6  E90000            jmp word 0x5fe9
00005FE9  8BE5              mov sp,bp
00005FEB  5D                pop bp
00005FEC  C20600            ret 0x6
00005FEF  55                push bp
00005FF0  8BEC              mov bp,sp
00005FF2  55                push bp
00005FF3  E90000            jmp word 0x5ff6
00005FF6  50                push ax
00005FF7  B80200            mov ax,0x2
00005FFA  50                push ax
00005FFB  B84F00            mov ax,0x4f
00005FFE  59                pop cx
00005FFF  91                xchg ax,cx
00006000  2BC8              sub cx,ax
00006002  7D03              jnl 0x6007
00006004  E96600            jmp word 0x606d
00006007  41                inc cx
00006008  8846FD            mov [bp-0x3],al
0000600B  51                push cx
0000600C  B80200            mov ax,0x2
0000600F  50                push ax
00006010  B81600            mov ax,0x16
00006013  59                pop cx
00006014  91                xchg ax,cx
00006015  2BC8              sub cx,ax
00006017  7D03              jnl 0x601c
00006019  E94700            jmp word 0x6063
0000601C  41                inc cx
0000601D  8846FC            mov [bp-0x4],al
00006020  51                push cx
00006021  8A46FD            mov al,[bp-0x3]
00006024  32E4              xor ah,ah
00006026  48                dec ax
00006027  48                dec ax
00006028  B94E00            mov cx,0x4e
0000602B  E8B2C6            call word 0x26e0
0000602E  B92A00            mov cx,0x2a
00006031  F7E1              mul cx
00006033  97                xchg ax,di
00006034  57                push di
00006035  8A46FC            mov al,[bp-0x4]
00006038  32E4              xor ah,ah
0000603A  48                dec ax
0000603B  48                dec ax
0000603C  B91500            mov cx,0x15
0000603F  E89EC6            call word 0x26e0
00006042  03C0              add ax,ax
00006044  5F                pop di
00006045  03F8              add di,ax
00006047  57                push di
00006048  B80000            mov ax,0x0
0000604B  B90000            mov cx,0x0
0000604E  BA0300            mov dx,0x3
00006051  E896C6            call word 0x26ea
00006054  5F                pop di
00006055  88858D01          mov [di+0x18d],al
00006059  59                pop cx
0000605A  49                dec cx
0000605B  7406              jz 0x6063
0000605D  FE46FC            inc byte [bp-0x4]
00006060  E9BDFF            jmp word 0x6020
00006063  59                pop cx
00006064  49                dec cx
00006065  7406              jz 0x606d
00006067  FE46FD            inc byte [bp-0x3]
0000606A  E99EFF            jmp word 0x600b
0000606D  E90000            jmp word 0x6070
00006070  8BE5              mov sp,bp
00006072  5D                pop bp
00006073  C3                ret
00006074  55                push bp
00006075  8BEC              mov bp,sp
00006077  55                push bp
00006078  E90000            jmp word 0x607b
0000607B  C47E04            les di,[bp+0x4]
0000607E  06                push es
0000607F  57                push di
00006080  C47EFA            les di,[bp-0x6]
00006083  06                push es
00006084  57                push di
00006085  B90C00            mov cx,0xc
00006088  E86DC6            call word 0x26f8
0000608B  50                push ax
0000608C  B80200            mov ax,0x2
0000608F  50                push ax
00006090  B84F00            mov ax,0x4f
00006093  50                push ax
00006094  E885DF            call word 0x401c
00006097  B90200            mov cx,0x2
0000609A  BA4F00            mov dx,0x4f
0000609D  E84AC6            call word 0x26ea
000060A0  5F                pop di
000060A1  07                pop es
000060A2  268805            mov [es:di],al
000060A5  C47EFA            les di,[bp-0x6]
000060A8  06                push es
000060A9  57                push di
000060AA  B90C00            mov cx,0xc
000060AD  E848C6            call word 0x26f8
000060B0  50                push ax
000060B1  B80200            mov ax,0x2
000060B4  50                push ax
000060B5  B81600            mov ax,0x16
000060B8  50                push ax
000060B9  E860DF            call word 0x401c
000060BC  B90200            mov cx,0x2
000060BF  BA1600            mov dx,0x16
000060C2  E825C6            call word 0x26ea
000060C5  5F                pop di
000060C6  07                pop es
000060C7  26884501          mov [es:di+0x1],al
000060CB  58                pop ax
000060CC  58                pop ax
000060CD  E90000            jmp word 0x60d0
000060D0  8BE5              mov sp,bp
000060D2  5D                pop bp
000060D3  C20400            ret 0x4
000060D6  55                push bp
000060D7  8BEC              mov bp,sp
000060D9  55                push bp
000060DA  E90000            jmp word 0x60dd
000060DD  50                push ax
000060DE  B90C00            mov cx,0xc
000060E1  E814C6            call word 0x26f8
000060E4  50                push ax
000060E5  A15B0E            mov ax,[0xe5b]
000060E8  50                push ax
000060E9  A15D0E            mov ax,[0xe5d]
000060EC  2D0100            sub ax,0x1
000060EF  50                push ax
000060F0  E829DF            call word 0x401c
000060F3  A3590E            mov [0xe59],ax
000060F6  B80100            mov ax,0x1
000060F9  50                push ax
000060FA  A1590E            mov ax,[0xe59]
000060FD  59                pop cx
000060FE  91                xchg ax,cx
000060FF  2BC8              sub cx,ax
00006101  7D03              jnl 0x6106
00006103  E9BA00            jmp word 0x61c0
00006106  41                inc cx
00006107  8946FC            mov [bp-0x4],ax
0000610A  51                push cx
0000610B  8B46FC            mov ax,[bp-0x4]
0000610E  48                dec ax
0000610F  B9FF00            mov cx,0xff
00006112  E8CBC5            call word 0x26e0
00006115  03C0              add ax,ax
00006117  97                xchg ax,di
00006118  81C76A0E          add di,0xe6a
0000611C  1E                push ds
0000611D  57                push di
0000611E  B90A00            mov cx,0xa
00006121  E8D4C5            call word 0x26f8
00006124  8B46FC            mov ax,[bp-0x4]
00006127  48                dec ax
00006128  B9FF00            mov cx,0xff
0000612B  E8B2C5            call word 0x26e0
0000612E  03C0              add ax,ax
00006130  97                xchg ax,di
00006131  81C76A0E          add di,0xe6a
00006135  1E                push ds
00006136  57                push di
00006137  E83AFF            call word 0x6074
0000613A  C47EF6            les di,[bp-0xa]
0000613D  268A05            mov al,[es:di]
00006140  32E4              xor ah,ah
00006142  48                dec ax
00006143  48                dec ax
00006144  B94E00            mov cx,0x4e
00006147  E896C5            call word 0x26e0
0000614A  B92A00            mov cx,0x2a
0000614D  F7E1              mul cx
0000614F  97                xchg ax,di
00006150  57                push di
00006151  C47EF6            les di,[bp-0xa]
00006154  268A4501          mov al,[es:di+0x1]
00006158  32E4              xor ah,ah
0000615A  48                dec ax
0000615B  48                dec ax
0000615C  B91500            mov cx,0x15
0000615F  E87EC5            call word 0x26e0
00006162  03C0              add ax,ax
00006164  5F                pop di
00006165  03F8              add di,ax
00006167  8A858D01          mov al,[di+0x18d]
0000616B  32E4              xor ah,ah
0000616D  3D0000            cmp ax,0x0
00006170  7403              jz 0x6175
00006172  E9A9FF            jmp word 0x611e
00006175  C47EF6            les di,[bp-0xa]
00006178  268A05            mov al,[es:di]
0000617B  32E4              xor ah,ah
0000617D  48                dec ax
0000617E  48                dec ax
0000617F  B94E00            mov cx,0x4e
00006182  E85BC5            call word 0x26e0
00006185  B92A00            mov cx,0x2a
00006188  F7E1              mul cx
0000618A  97                xchg ax,di
0000618B  57                push di
0000618C  C47EF6            les di,[bp-0xa]
0000618F  268A4501          mov al,[es:di+0x1]
00006193  32E4              xor ah,ah
00006195  48                dec ax
00006196  48                dec ax
00006197  B91500            mov cx,0x15
0000619A  E843C5            call word 0x26e0
0000619D  03C0              add ax,ax
0000619F  5F                pop di
000061A0  03F8              add di,ax
000061A2  57                push di
000061A3  B80100            mov ax,0x1
000061A6  B90000            mov cx,0x0
000061A9  BA0300            mov dx,0x3
000061AC  E83BC5            call word 0x26ea
000061AF  5F                pop di
000061B0  88858D01          mov [di+0x18d],al
000061B4  58                pop ax
000061B5  58                pop ax
000061B6  59                pop cx
000061B7  49                dec cx
000061B8  7406              jz 0x61c0
000061BA  FF46FC            inc word [bp-0x4]
000061BD  E94AFF            jmp word 0x610a
000061C0  E90000            jmp word 0x61c3
000061C3  8BE5              mov sp,bp
000061C5  5D                pop bp
000061C6  C3                ret
000061C7  55                push bp
000061C8  8BEC              mov bp,sp
000061CA  55                push bp
000061CB  E90000            jmp word 0x61ce
000061CE  83EC06            sub sp,byte +0x6
000061D1  B90C00            mov cx,0xc
000061D4  E821C5            call word 0x26f8
000061D7  50                push ax
000061D8  A15F0E            mov ax,[0xe5f]
000061DB  50                push ax
000061DC  A1610E            mov ax,[0xe61]
000061DF  50                push ax
000061E0  E839DE            call word 0x401c
000061E3  8946FA            mov [bp-0x6],ax
000061E6  B80100            mov ax,0x1
000061E9  50                push ax
000061EA  8B46FA            mov ax,[bp-0x6]
000061ED  59                pop cx
000061EE  91                xchg ax,cx
000061EF  2BC8              sub cx,ax
000061F1  7D03              jnl 0x61f6
000061F3  E9EC00            jmp word 0x62e2
000061F6  41                inc cx
000061F7  8946FC            mov [bp-0x4],ax
000061FA  51                push cx
000061FB  8D7EF8            lea di,[bp-0x8]
000061FE  16                push ss
000061FF  57                push di
00006200  B90A00            mov cx,0xa
00006203  E8F2C4            call word 0x26f8
00006206  8D7EF8            lea di,[bp-0x8]
00006209  16                push ss
0000620A  57                push di
0000620B  E866FE            call word 0x6074
0000620E  C47EF2            les di,[bp-0xe]
00006211  268A05            mov al,[es:di]
00006214  32E4              xor ah,ah
00006216  48                dec ax
00006217  48                dec ax
00006218  B94E00            mov cx,0x4e
0000621B  E8C2C4            call word 0x26e0
0000621E  B92A00            mov cx,0x2a
00006221  F7E1              mul cx
00006223  97                xchg ax,di
00006224  57                push di
00006225  C47EF2            les di,[bp-0xe]
00006228  268A4501          mov al,[es:di+0x1]
0000622C  32E4              xor ah,ah
0000622E  48                dec ax
0000622F  48                dec ax
00006230  B91500            mov cx,0x15
00006233  E8AAC4            call word 0x26e0
00006236  03C0              add ax,ax
00006238  5F                pop di
00006239  03F8              add di,ax
0000623B  8A858D01          mov al,[di+0x18d]
0000623F  32E4              xor ah,ah
00006241  3D0000            cmp ax,0x0
00006244  7403              jz 0x6249
00006246  E9B7FF            jmp word 0x6200
00006249  C47EF2            les di,[bp-0xe]
0000624C  268A05            mov al,[es:di]
0000624F  32E4              xor ah,ah
00006251  48                dec ax
00006252  48                dec ax
00006253  B94E00            mov cx,0x4e
00006256  E887C4            call word 0x26e0
00006259  B92A00            mov cx,0x2a
0000625C  F7E1              mul cx
0000625E  97                xchg ax,di
0000625F  57                push di
00006260  C47EF2            les di,[bp-0xe]
00006263  268A4501          mov al,[es:di+0x1]
00006267  32E4              xor ah,ah
00006269  48                dec ax
0000626A  48                dec ax
0000626B  B91500            mov cx,0x15
0000626E  E86FC4            call word 0x26e0
00006271  03C0              add ax,ax
00006273  5F                pop di
00006274  03F8              add di,ax
00006276  57                push di
00006277  B80200            mov ax,0x2
0000627A  B90000            mov cx,0x0
0000627D  BA0300            mov dx,0x3
00006280  E867C4            call word 0x26ea
00006283  5F                pop di
00006284  88858D01          mov [di+0x18d],al
00006288  C47EF2            les di,[bp-0xe]
0000628B  268A05            mov al,[es:di]
0000628E  32E4              xor ah,ah
00006290  48                dec ax
00006291  48                dec ax
00006292  B94E00            mov cx,0x4e
00006295  E848C4            call word 0x26e0
00006298  B92A00            mov cx,0x2a
0000629B  F7E1              mul cx
0000629D  97                xchg ax,di
0000629E  57                push di
0000629F  C47EF2            les di,[bp-0xe]
000062A2  268A4501          mov al,[es:di+0x1]
000062A6  32E4              xor ah,ah
000062A8  48                dec ax
000062A9  48                dec ax
000062AA  B91500            mov cx,0x15
000062AD  E830C4            call word 0x26e0
000062B0  03C0              add ax,ax
000062B2  5F                pop di
000062B3  03F8              add di,ax
000062B5  57                push di
000062B6  B90C00            mov cx,0xc
000062B9  E83CC4            call word 0x26f8
000062BC  50                push ax
000062BD  B80200            mov ax,0x2
000062C0  50                push ax
000062C1  B80600            mov ax,0x6
000062C4  50                push ax
000062C5  E854DD            call word 0x401c
000062C8  B90000            mov cx,0x0
000062CB  BAFF00            mov dx,0xff
000062CE  E819C4            call word 0x26ea
000062D1  5F                pop di
000062D2  88858E01          mov [di+0x18e],al
000062D6  58                pop ax
000062D7  58                pop ax
000062D8  59                pop cx
000062D9  49                dec cx
000062DA  7406              jz 0x62e2
000062DC  FF46FC            inc word [bp-0x4]
000062DF  E918FF            jmp word 0x61fa
000062E2  E90000            jmp word 0x62e5
000062E5  8BE5              mov sp,bp
000062E7  5D                pop bp
000062E8  C3                ret
000062E9  55                push bp
000062EA  8BEC              mov bp,sp
000062EC  55                push bp
000062ED  E90000            jmp word 0x62f0
000062F0  BF8B01            mov di,0x18b
000062F3  1E                push ds
000062F4  57                push di
000062F5  B90A00            mov cx,0xa
000062F8  E8FDC3            call word 0x26f8
000062FB  BF8B01            mov di,0x18b
000062FE  1E                push ds
000062FF  57                push di
00006300  E871FD            call word 0x6074
00006303  C47EFA            les di,[bp-0x6]
00006306  268A05            mov al,[es:di]
00006309  32E4              xor ah,ah
0000630B  48                dec ax
0000630C  48                dec ax
0000630D  B94E00            mov cx,0x4e
00006310  E8CDC3            call word 0x26e0
00006313  B92A00            mov cx,0x2a
00006316  F7E1              mul cx
00006318  97                xchg ax,di
00006319  57                push di
0000631A  C47EFA            les di,[bp-0x6]
0000631D  268A4501          mov al,[es:di+0x1]
00006321  32E4              xor ah,ah
00006323  48                dec ax
00006324  48                dec ax
00006325  B91500            mov cx,0x15
00006328  E8B5C3            call word 0x26e0
0000632B  03C0              add ax,ax
0000632D  5F                pop di
0000632E  03F8              add di,ax
00006330  8A858D01          mov al,[di+0x18d]
00006334  32E4              xor ah,ah
00006336  3D0000            cmp ax,0x0
00006339  7403              jz 0x633e
0000633B  E9B7FF            jmp word 0x62f5
0000633E  C47EFA            les di,[bp-0x6]
00006341  268A05            mov al,[es:di]
00006344  32E4              xor ah,ah
00006346  48                dec ax
00006347  48                dec ax
00006348  B94E00            mov cx,0x4e
0000634B  E892C3            call word 0x26e0
0000634E  B92A00            mov cx,0x2a
00006351  F7E1              mul cx
00006353  97                xchg ax,di
00006354  57                push di
00006355  C47EFA            les di,[bp-0x6]
00006358  268A4501          mov al,[es:di+0x1]
0000635C  32E4              xor ah,ah
0000635E  48                dec ax
0000635F  48                dec ax
00006360  B91500            mov cx,0x15
00006363  E87AC3            call word 0x26e0
00006366  03C0              add ax,ax
00006368  5F                pop di
00006369  03F8              add di,ax
0000636B  57                push di
0000636C  B80300            mov ax,0x3
0000636F  B90000            mov cx,0x0
00006372  BA0300            mov dx,0x3
00006375  E872C3            call word 0x26ea
00006378  5F                pop di
00006379  88858D01          mov [di+0x18d],al
0000637D  58                pop ax
0000637E  58                pop ax
0000637F  E90000            jmp word 0x6382
00006382  8BE5              mov sp,bp
00006384  5D                pop bp
00006385  C3                ret
00006386  55                push bp
00006387  8BEC              mov bp,sp
00006389  55                push bp
0000638A  E90000            jmp word 0x638d
0000638D  8B4604            mov ax,[bp+0x4]
00006390  48                dec ax
00006391  B9FF00            mov cx,0xff
00006394  E849C3            call word 0x26e0
00006397  03C0              add ax,ax
00006399  97                xchg ax,di
0000639A  81C76A0E          add di,0xe6a
0000639E  1E                push ds
0000639F  57                push di
000063A0  C47EFA            les di,[bp-0x6]
000063A3  268A05            mov al,[es:di]
000063A6  32E4              xor ah,ah
000063A8  50                push ax
000063A9  C47EFA            les di,[bp-0x6]
000063AC  268A4501          mov al,[es:di+0x1]
000063B0  32E4              xor ah,ah
000063B2  E8AA9F            call word 0x35f
000063B5  B90600            mov cx,0x6
000063B8  E83DC3            call word 0x26f8
000063BB  E8BEE8            call word 0x4c7c
000063BE  E8BEBA            call word 0x1e7f
000063C1  B80100            mov ax,0x1
000063C4  50                push ax
000063C5  B80000            mov ax,0x0
000063C8  E8B8BD            call word 0x2183
000063CB  E89FC3            call word 0x276d
000063CE  B90600            mov cx,0x6
000063D1  E824C3            call word 0x26f8
000063D4  E891E8            call word 0x4c68
000063D7  58                pop ax
000063D8  58                pop ax
000063D9  E90000            jmp word 0x63dc
000063DC  8BE5              mov sp,bp
000063DE  5D                pop bp
000063DF  C20200            ret 0x2
000063E2  55                push bp
000063E3  8BEC              mov bp,sp
000063E5  55                push bp
000063E6  E9FA04            jmp word 0x68e3
000063E9  55                push bp
000063EA  8BC4              mov ax,sp
000063EC  FF76FE            push word [bp-0x2]
000063EF  8BE8              mov bp,ax
000063F1  55                push bp
000063F2  E93201            jmp word 0x6527
000063F5  55                push bp
000063F6  8BC4              mov ax,sp
000063F8  FF76FE            push word [bp-0x2]
000063FB  FF76FC            push word [bp-0x4]
000063FE  8BE8              mov bp,ax
00006400  55                push bp
00006401  E90000            jmp word 0x6404
00006404  BF8B01            mov di,0x18b
00006407  1E                push ds
00006408  57                push di
00006409  C47EF6            les di,[bp-0xa]
0000640C  268A05            mov al,[es:di]
0000640F  32E4              xor ah,ah
00006411  3D0200            cmp ax,0x2
00006414  7F03              jg 0x6419
00006416  E91E00            jmp word 0x6437
00006419  C47EF6            les di,[bp-0xa]
0000641C  06                push es
0000641D  57                push di
0000641E  C47EF6            les di,[bp-0xa]
00006421  268A05            mov al,[es:di]
00006424  32E4              xor ah,ah
00006426  2D0100            sub ax,0x1
00006429  B90200            mov cx,0x2
0000642C  BA4F00            mov dx,0x4f
0000642F  E8B8C2            call word 0x26ea
00006432  5F                pop di
00006433  07                pop es
00006434  268805            mov [es:di],al
00006437  58                pop ax
00006438  58                pop ax
00006439  E90000            jmp word 0x643c
0000643C  8BE5              mov sp,bp
0000643E  5D                pop bp
0000643F  C3                ret
00006440  55                push bp
00006441  8BC4              mov ax,sp
00006443  FF76FE            push word [bp-0x2]
00006446  FF76FC            push word [bp-0x4]
00006449  8BE8              mov bp,ax
0000644B  55                push bp
0000644C  E90000            jmp word 0x644f
0000644F  BF8B01            mov di,0x18b
00006452  1E                push ds
00006453  57                push di
00006454  C47EF6            les di,[bp-0xa]
00006457  268A4501          mov al,[es:di+0x1]
0000645B  32E4              xor ah,ah
0000645D  3D0200            cmp ax,0x2
00006460  7F03              jg 0x6465
00006462  E92000            jmp word 0x6485
00006465  C47EF6            les di,[bp-0xa]
00006468  06                push es
00006469  57                push di
0000646A  C47EF6            les di,[bp-0xa]
0000646D  268A4501          mov al,[es:di+0x1]
00006471  32E4              xor ah,ah
00006473  2D0100            sub ax,0x1
00006476  B90200            mov cx,0x2
00006479  BA1600            mov dx,0x16
0000647C  E86BC2            call word 0x26ea
0000647F  5F                pop di
00006480  07                pop es
00006481  26884501          mov [es:di+0x1],al
00006485  58                pop ax
00006486  58                pop ax
00006487  E90000            jmp word 0x648a
0000648A  8BE5              mov sp,bp
0000648C  5D                pop bp
0000648D  C3                ret
0000648E  55                push bp
0000648F  8BC4              mov ax,sp
00006491  FF76FE            push word [bp-0x2]
00006494  FF76FC            push word [bp-0x4]
00006497  8BE8              mov bp,ax
00006499  55                push bp
0000649A  E90000            jmp word 0x649d
0000649D  BF8B01            mov di,0x18b
000064A0  1E                push ds
000064A1  57                push di
000064A2  C47EF6            les di,[bp-0xa]
000064A5  268A05            mov al,[es:di]
000064A8  32E4              xor ah,ah
000064AA  3D4F00            cmp ax,0x4f
000064AD  7C03              jl 0x64b2
000064AF  E91E00            jmp word 0x64d0
000064B2  C47EF6            les di,[bp-0xa]
000064B5  06                push es
000064B6  57                push di
000064B7  C47EF6            les di,[bp-0xa]
000064BA  268A05            mov al,[es:di]
000064BD  32E4              xor ah,ah
000064BF  050100            add ax,0x1
000064C2  B90200            mov cx,0x2
000064C5  BA4F00            mov dx,0x4f
000064C8  E81FC2            call word 0x26ea
000064CB  5F                pop di
000064CC  07                pop es
000064CD  268805            mov [es:di],al
000064D0  58                pop ax
000064D1  58                pop ax
000064D2  E90000            jmp word 0x64d5
000064D5  8BE5              mov sp,bp
000064D7  5D                pop bp
000064D8  C3                ret
000064D9  55                push bp
000064DA  8BC4              mov ax,sp
000064DC  FF76FE            push word [bp-0x2]
000064DF  FF76FC            push word [bp-0x4]
000064E2  8BE8              mov bp,ax
000064E4  55                push bp
000064E5  E90000            jmp word 0x64e8
000064E8  BF8B01            mov di,0x18b
000064EB  1E                push ds
000064EC  57                push di
000064ED  C47EF6            les di,[bp-0xa]
000064F0  268A4501          mov al,[es:di+0x1]
000064F4  32E4              xor ah,ah
000064F6  3D1600            cmp ax,0x16
000064F9  7C03              jl 0x64fe
000064FB  E92000            jmp word 0x651e
000064FE  C47EF6            les di,[bp-0xa]
00006501  06                push es
00006502  57                push di
00006503  C47EF6            les di,[bp-0xa]
00006506  268A4501          mov al,[es:di+0x1]
0000650A  32E4              xor ah,ah
0000650C  050100            add ax,0x1
0000650F  B90200            mov cx,0x2
00006512  BA1600            mov dx,0x16
00006515  E8D2C1            call word 0x26ea
00006518  5F                pop di
00006519  07                pop es
0000651A  26884501          mov [es:di+0x1],al
0000651E  58                pop ax
0000651F  58                pop ax
00006520  E90000            jmp word 0x6523
00006523  8BE5              mov sp,bp
00006525  5D                pop bp
00006526  C3                ret
00006527  BF8B01            mov di,0x18b
0000652A  1E                push ds
0000652B  57                push di
0000652C  B90800            mov cx,0x8
0000652F  E8C6C1            call word 0x26f8
00006532  BF8B01            mov di,0x18b
00006535  1E                push ds
00006536  B90200            mov cx,0x2
00006539  E830C1            call word 0x266c
0000653C  E887EF            call word 0x54c6
0000653F  C47EF8            les di,[bp-0x8]
00006542  268A05            mov al,[es:di]
00006545  32E4              xor ah,ah
00006547  48                dec ax
00006548  48                dec ax
00006549  B94E00            mov cx,0x4e
0000654C  E891C1            call word 0x26e0
0000654F  B92A00            mov cx,0x2a
00006552  F7E1              mul cx
00006554  97                xchg ax,di
00006555  57                push di
00006556  C47EF8            les di,[bp-0x8]
00006559  268A4501          mov al,[es:di+0x1]
0000655D  32E4              xor ah,ah
0000655F  48                dec ax
00006560  48                dec ax
00006561  B91500            mov cx,0x15
00006564  E879C1            call word 0x26e0
00006567  03C0              add ax,ax
00006569  5F                pop di
0000656A  03F8              add di,ax
0000656C  57                push di
0000656D  B80000            mov ax,0x0
00006570  B90000            mov cx,0x0
00006573  BA0300            mov dx,0x3
00006576  E871C1            call word 0x26ea
00006579  5F                pop di
0000657A  88858D01          mov [di+0x18d],al
0000657E  8A4604            mov al,[bp+0x4]
00006581  32E4              xor ah,ah
00006583  3D0400            cmp ax,0x4
00006586  7403              jz 0x658b
00006588  E91500            jmp word 0x65a0
0000658B  B90A00            mov cx,0xa
0000658E  E867C1            call word 0x26f8
00006591  E8ACFE            call word 0x6440
00006594  B90A00            mov cx,0xa
00006597  E85EC1            call word 0x26f8
0000659A  E858FE            call word 0x63f5
0000659D  E9A400            jmp word 0x6644
000065A0  3D0200            cmp ax,0x2
000065A3  7403              jz 0x65a8
000065A5  E90C00            jmp word 0x65b4
000065A8  B90A00            mov cx,0xa
000065AB  E84AC1            call word 0x26f8
000065AE  E88FFE            call word 0x6440
000065B1  E99000            jmp word 0x6644
000065B4  3D0500            cmp ax,0x5
000065B7  7403              jz 0x65bc
000065B9  E91500            jmp word 0x65d1
000065BC  B90A00            mov cx,0xa
000065BF  E836C1            call word 0x26f8
000065C2  E87BFE            call word 0x6440
000065C5  B90A00            mov cx,0xa
000065C8  E82DC1            call word 0x26f8
000065CB  E8C0FE            call word 0x648e
000065CE  E97300            jmp word 0x6644
000065D1  3D0100            cmp ax,0x1
000065D4  7403              jz 0x65d9
000065D6  E90C00            jmp word 0x65e5
000065D9  B90A00            mov cx,0xa
000065DC  E819C1            call word 0x26f8
000065DF  E813FE            call word 0x63f5
000065E2  E95F00            jmp word 0x6644
000065E5  3D0000            cmp ax,0x0
000065E8  7403              jz 0x65ed
000065EA  E90C00            jmp word 0x65f9
000065ED  B90A00            mov cx,0xa
000065F0  E805C1            call word 0x26f8
000065F3  E898FE            call word 0x648e
000065F6  E94B00            jmp word 0x6644
000065F9  3D0600            cmp ax,0x6
000065FC  7403              jz 0x6601
000065FE  E91500            jmp word 0x6616
00006601  B90A00            mov cx,0xa
00006604  E8F1C0            call word 0x26f8
00006607  E8CFFE            call word 0x64d9
0000660A  B90A00            mov cx,0xa
0000660D  E8E8C0            call word 0x26f8
00006610  E8E2FD            call word 0x63f5
00006613  E92E00            jmp word 0x6644
00006616  3D0300            cmp ax,0x3
00006619  7403              jz 0x661e
0000661B  E90C00            jmp word 0x662a
0000661E  B90A00            mov cx,0xa
00006621  E8D4C0            call word 0x26f8
00006624  E8B2FE            call word 0x64d9
00006627  E91A00            jmp word 0x6644
0000662A  3D0700            cmp ax,0x7
0000662D  7403              jz 0x6632
0000662F  E91200            jmp word 0x6644
00006632  B90A00            mov cx,0xa
00006635  E8C0C0            call word 0x26f8
00006638  E89EFE            call word 0x64d9
0000663B  B90A00            mov cx,0xa
0000663E  E8B7C0            call word 0x26f8
00006641  E84AFE            call word 0x648e
00006644  C47EF8            les di,[bp-0x8]
00006647  268A05            mov al,[es:di]
0000664A  32E4              xor ah,ah
0000664C  48                dec ax
0000664D  48                dec ax
0000664E  B94E00            mov cx,0x4e
00006651  E88CC0            call word 0x26e0
00006654  B92A00            mov cx,0x2a
00006657  F7E1              mul cx
00006659  97                xchg ax,di
0000665A  57                push di
0000665B  C47EF8            les di,[bp-0x8]
0000665E  268A4501          mov al,[es:di+0x1]
00006662  32E4              xor ah,ah
00006664  48                dec ax
00006665  48                dec ax
00006666  B91500            mov cx,0x15
00006669  E874C0            call word 0x26e0
0000666C  03C0              add ax,ax
0000666E  5F                pop di
0000666F  03F8              add di,ax
00006671  8A858D01          mov al,[di+0x18d]
00006675  32E4              xor ah,ah
00006677  3D0000            cmp ax,0x0
0000667A  7403              jz 0x667f
0000667C  E96700            jmp word 0x66e6
0000667F  C47EF8            les di,[bp-0x8]
00006682  268A05            mov al,[es:di]
00006685  32E4              xor ah,ah
00006687  50                push ax
00006688  C47EF8            les di,[bp-0x8]
0000668B  268A4501          mov al,[es:di+0x1]
0000668F  32E4              xor ah,ah
00006691  E8CB9C            call word 0x35f
00006694  E8E8B7            call word 0x1e7f
00006697  B80200            mov ax,0x2
0000669A  50                push ax
0000669B  B80000            mov ax,0x0
0000669E  E8E2BA            call word 0x2183
000066A1  E8C9C0            call word 0x276d
000066A4  C47EF8            les di,[bp-0x8]
000066A7  268A05            mov al,[es:di]
000066AA  32E4              xor ah,ah
000066AC  48                dec ax
000066AD  48                dec ax
000066AE  B94E00            mov cx,0x4e
000066B1  E82CC0            call word 0x26e0
000066B4  B92A00            mov cx,0x2a
000066B7  F7E1              mul cx
000066B9  97                xchg ax,di
000066BA  57                push di
000066BB  C47EF8            les di,[bp-0x8]
000066BE  268A4501          mov al,[es:di+0x1]
000066C2  32E4              xor ah,ah
000066C4  48                dec ax
000066C5  48                dec ax
000066C6  B91500            mov cx,0x15
000066C9  E814C0            call word 0x26e0
000066CC  03C0              add ax,ax
000066CE  5F                pop di
000066CF  03F8              add di,ax
000066D1  57                push di
000066D2  B80300            mov ax,0x3
000066D5  B90000            mov cx,0x0
000066D8  BA0300            mov dx,0x3
000066DB  E80CC0            call word 0x26ea
000066DE  5F                pop di
000066DF  88858D01          mov [di+0x18d],al
000066E3  E9F201            jmp word 0x68d8
000066E6  3D0100            cmp ax,0x1
000066E9  7403              jz 0x66ee
000066EB  E9F700            jmp word 0x67e5
000066EE  B90700            mov cx,0x7
000066F1  E804C0            call word 0x26f8
000066F4  E8DDD9            call word 0x40d4
000066F7  C47EF8            les di,[bp-0x8]
000066FA  268A05            mov al,[es:di]
000066FD  32E4              xor ah,ah
000066FF  48                dec ax
00006700  48                dec ax
00006701  B94E00            mov cx,0x4e
00006704  E8D9BF            call word 0x26e0
00006707  B92A00            mov cx,0x2a
0000670A  F7E1              mul cx
0000670C  97                xchg ax,di
0000670D  57                push di
0000670E  C47EF8            les di,[bp-0x8]
00006711  268A4501          mov al,[es:di+0x1]
00006715  32E4              xor ah,ah
00006717  48                dec ax
00006718  48                dec ax
00006719  B91500            mov cx,0x15
0000671C  E8C1BF            call word 0x26e0
0000671F  03C0              add ax,ax
00006721  5F                pop di
00006722  03F8              add di,ax
00006724  57                push di
00006725  B80200            mov ax,0x2
00006728  B90000            mov cx,0x0
0000672B  BA0300            mov dx,0x3
0000672E  E8B9BF            call word 0x26ea
00006731  5F                pop di
00006732  88858D01          mov [di+0x18d],al
00006736  C47EF8            les di,[bp-0x8]
00006739  268A05            mov al,[es:di]
0000673C  32E4              xor ah,ah
0000673E  48                dec ax
0000673F  48                dec ax
00006740  B94E00            mov cx,0x4e
00006743  E89ABF            call word 0x26e0
00006746  B92A00            mov cx,0x2a
00006749  F7E1              mul cx
0000674B  97                xchg ax,di
0000674C  57                push di
0000674D  C47EF8            les di,[bp-0x8]
00006750  268A4501          mov al,[es:di+0x1]
00006754  32E4              xor ah,ah
00006756  48                dec ax
00006757  48                dec ax
00006758  B91500            mov cx,0x15
0000675B  E882BF            call word 0x26e0
0000675E  03C0              add ax,ax
00006760  5F                pop di
00006761  03F8              add di,ax
00006763  57                push di
00006764  B8FF00            mov ax,0xff
00006767  B90000            mov cx,0x0
0000676A  BAFF00            mov dx,0xff
0000676D  E87ABF            call word 0x26ea
00006770  5F                pop di
00006771  88858E01          mov [di+0x18e],al
00006775  B80000            mov ax,0x0
00006778  A36E10            mov [0x106e],ax
0000677B  B80000            mov ax,0x0
0000677E  A36A10            mov [0x106a],ax
00006781  B90601            mov cx,0x106
00006784  E871BF            call word 0x26f8
00006787  E8B6A5            call word 0xd40
0000678A  2453              and al,0x53
0000678C  7472              jz 0x6800
0000678E  61                popaw
0000678F  6967687420        imul sp,[bx+0x68],word 0x2074
00006794  696E746F20        imul bp,[bp+0x74],word 0x206f
00006799  7468              jz 0x6803
0000679B  65204D75          and [gs:di+0x75],cl
0000679F  6D                insw
000067A0  6D                insw
000067A1  6965277320        imul sp,[di+0x27],word 0x2073
000067A6  6D                insw
000067A7  6F                outsw
000067A8  7574              jnz 0x681e
000067AA  682021            push word 0x2120
000067AD  2121              and [bx+di],sp
000067AF  B1FF              mov cl,0xff
000067B1  E8EAA5            call word 0xd9e
000067B4  E8D3EC            call word 0x548a
000067B7  B90600            mov cx,0x6
000067BA  E83BBF            call word 0x26f8
000067BD  E87EEC            call word 0x543e
000067C0  B80100            mov ax,0x1
000067C3  B90000            mov cx,0x0
000067C6  BA0100            mov dx,0x1
000067C9  E81EBF            call word 0x26ea
000067CC  A2660E            mov [0xe66],al
000067CF  B80100            mov ax,0x1
000067D2  B90000            mov cx,0x0
000067D5  BA0100            mov dx,0x1
000067D8  E80FBF            call word 0x26ea
000067DB  8B5EFE            mov bx,[bp-0x2]
000067DE  36884704          mov [ss:bx+0x4],al
000067E2  E9F300            jmp word 0x68d8
000067E5  3D0200            cmp ax,0x2
000067E8  7403              jz 0x67ed
000067EA  E9EB00            jmp word 0x68d8
000067ED  B90600            mov cx,0x6
000067F0  E805BF            call word 0x26f8
000067F3  E883D9            call word 0x4179
000067F6  B90601            mov cx,0x106
000067F9  E8FCBE            call word 0x26f8
000067FC  E841A5            call word 0xd40
000067FF  1B4865            sbb cx,[bx+si+0x65]
00006802  61                popaw
00006803  64206669          and [fs:bp+0x69],ah
00006807  7273              jc 0x687c
00006809  7420              jz 0x682b
0000680B  696E746F20        imul bp,[bp+0x74],word 0x206f
00006810  7468              jz 0x687a
00006812  6520686F          and [gs:bx+si+0x6f],ch
00006816  6C                insb
00006817  652121            and [gs:bx+di],sp
0000681A  21B1FFE8          and [bx+di-0x1701],si
0000681E  7EA5              jng 0x67c5
00006820  E867EC            call word 0x548a
00006823  C47EF8            les di,[bp-0x8]
00006826  268A05            mov al,[es:di]
00006829  32E4              xor ah,ah
0000682B  48                dec ax
0000682C  48                dec ax
0000682D  B94E00            mov cx,0x4e
00006830  E8ADBE            call word 0x26e0
00006833  B92A00            mov cx,0x2a
00006836  F7E1              mul cx
00006838  97                xchg ax,di
00006839  57                push di
0000683A  C47EF8            les di,[bp-0x8]
0000683D  268A4501          mov al,[es:di+0x1]
00006841  32E4              xor ah,ah
00006843  48                dec ax
00006844  48                dec ax
00006845  B91500            mov cx,0x15
00006848  E895BE            call word 0x26e0
0000684B  03C0              add ax,ax
0000684D  5F                pop di
0000684E  03F8              add di,ax
00006850  57                push di
00006851  B80200            mov ax,0x2
00006854  B90000            mov cx,0x0
00006857  BA0300            mov dx,0x3
0000685A  E88DBE            call word 0x26ea
0000685D  5F                pop di
0000685E  88858D01          mov [di+0x18d],al
00006862  C47EF8            les di,[bp-0x8]
00006865  268A05            mov al,[es:di]
00006868  32E4              xor ah,ah
0000686A  48                dec ax
0000686B  48                dec ax
0000686C  B94E00            mov cx,0x4e
0000686F  E86EBE            call word 0x26e0
00006872  B92A00            mov cx,0x2a
00006875  F7E1              mul cx
00006877  97                xchg ax,di
00006878  57                push di
00006879  C47EF8            les di,[bp-0x8]
0000687C  268A4501          mov al,[es:di+0x1]
00006880  32E4              xor ah,ah
00006882  48                dec ax
00006883  48                dec ax
00006884  B91500            mov cx,0x15
00006887  E856BE            call word 0x26e0
0000688A  03C0              add ax,ax
0000688C  5F                pop di
0000688D  03F8              add di,ax
0000688F  57                push di
00006890  B8FF00            mov ax,0xff
00006893  B90000            mov cx,0x0
00006896  BAFF00            mov dx,0xff
00006899  E84EBE            call word 0x26ea
0000689C  5F                pop di
0000689D  88858E01          mov [di+0x18e],al
000068A1  B80000            mov ax,0x0
000068A4  A36E10            mov [0x106e],ax
000068A7  B80000            mov ax,0x0
000068AA  A36A10            mov [0x106a],ax
000068AD  B90600            mov cx,0x6
000068B0  E845BE            call word 0x26f8
000068B3  E888EB            call word 0x543e
000068B6  B80100            mov ax,0x1
000068B9  B90000            mov cx,0x0
000068BC  BA0100            mov dx,0x1
000068BF  E828BE            call word 0x26ea
000068C2  A2660E            mov [0xe66],al
000068C5  B80100            mov ax,0x1
000068C8  B90000            mov cx,0x0
000068CB  BA0100            mov dx,0x1
000068CE  E819BE            call word 0x26ea
000068D1  8B5EFE            mov bx,[bp-0x2]
000068D4  36884704          mov [ss:bx+0x4],al
000068D8  58                pop ax
000068D9  58                pop ax
000068DA  E90000            jmp word 0x68dd
000068DD  8BE5              mov sp,bp
000068DF  5D                pop bp
000068E0  C20200            ret 0x2
000068E3  4C                dec sp
000068E4  B80000            mov ax,0x0
000068E7  B90000            mov cx,0x0
000068EA  BA0100            mov dx,0x1
000068ED  E8FABD            call word 0x26ea
000068F0  884604            mov [bp+0x4],al
000068F3  BFBB00            mov di,0xbb
000068F6  1E                push ds
000068F7  E859B5            call word 0x1e53
000068FA  8D7EFD            lea di,[bp-0x3]
000068FD  16                push ss
000068FE  E83DB7            call word 0x203e
00006901  E869BE            call word 0x276d
00006904  8A46FD            mov al,[bp-0x3]
00006907  32E4              xor ah,ah
00006909  3DBD00            cmp ax,0xbd
0000690C  7408              jz 0x6916
0000690E  3D3700            cmp ax,0x37
00006911  7403              jz 0x6916
00006913  E91900            jmp word 0x692f
00006916  B90A00            mov cx,0xa
00006919  E8DCBD            call word 0x26f8
0000691C  B80400            mov ax,0x4
0000691F  B90000            mov cx,0x0
00006922  BA0700            mov dx,0x7
00006925  E8C2BD            call word 0x26ea
00006928  50                push ax
00006929  E8BDFA            call word 0x63e9
0000692C  E90701            jmp word 0x6a36
0000692F  3DBC00            cmp ax,0xbc
00006932  7408              jz 0x693c
00006934  3D3800            cmp ax,0x38
00006937  7403              jz 0x693c
00006939  E91900            jmp word 0x6955
0000693C  B90A00            mov cx,0xa
0000693F  E8B6BD            call word 0x26f8
00006942  B80200            mov ax,0x2
00006945  B90000            mov cx,0x0
00006948  BA0700            mov dx,0x7
0000694B  E89CBD            call word 0x26ea
0000694E  50                push ax
0000694F  E897FA            call word 0x63e9
00006952  E9E100            jmp word 0x6a36
00006955  3DBB00            cmp ax,0xbb
00006958  7408              jz 0x6962
0000695A  3D3900            cmp ax,0x39
0000695D  7403              jz 0x6962
0000695F  E91900            jmp word 0x697b
00006962  B90A00            mov cx,0xa
00006965  E890BD            call word 0x26f8
00006968  B80500            mov ax,0x5
0000696B  B90000            mov cx,0x0
0000696E  BA0700            mov dx,0x7
00006971  E876BD            call word 0x26ea
00006974  50                push ax
00006975  E871FA            call word 0x63e9
00006978  E9BB00            jmp word 0x6a36
0000697B  3DB900            cmp ax,0xb9
0000697E  7408              jz 0x6988
00006980  3D3400            cmp ax,0x34
00006983  7403              jz 0x6988
00006985  E91900            jmp word 0x69a1
00006988  B90A00            mov cx,0xa
0000698B  E86ABD            call word 0x26f8
0000698E  B80100            mov ax,0x1
00006991  B90000            mov cx,0x0
00006994  BA0700            mov dx,0x7
00006997  E850BD            call word 0x26ea
0000699A  50                push ax
0000699B  E84BFA            call word 0x63e9
0000699E  E99500            jmp word 0x6a36
000069A1  3DB700            cmp ax,0xb7
000069A4  7408              jz 0x69ae
000069A6  3D3600            cmp ax,0x36
000069A9  7403              jz 0x69ae
000069AB  E91900            jmp word 0x69c7
000069AE  B90A00            mov cx,0xa
000069B1  E844BD            call word 0x26f8
000069B4  B80000            mov ax,0x0
000069B7  B90000            mov cx,0x0
000069BA  BA0700            mov dx,0x7
000069BD  E82ABD            call word 0x26ea
000069C0  50                push ax
000069C1  E825FA            call word 0x63e9
000069C4  E96F00            jmp word 0x6a36
000069C7  3DB500            cmp ax,0xb5
000069CA  7408              jz 0x69d4
000069CC  3D3100            cmp ax,0x31
000069CF  7403              jz 0x69d4
000069D1  E91900            jmp word 0x69ed
000069D4  B90A00            mov cx,0xa
000069D7  E81EBD            call word 0x26f8
000069DA  B80600            mov ax,0x6
000069DD  B90000            mov cx,0x0
000069E0  BA0700            mov dx,0x7
000069E3  E804BD            call word 0x26ea
000069E6  50                push ax
000069E7  E8FFF9            call word 0x63e9
000069EA  E94900            jmp word 0x6a36
000069ED  3DB400            cmp ax,0xb4
000069F0  7408              jz 0x69fa
000069F2  3D3200            cmp ax,0x32
000069F5  7403              jz 0x69fa
000069F7  E91900            jmp word 0x6a13
000069FA  B90A00            mov cx,0xa
000069FD  E8F8BC            call word 0x26f8
00006A00  B80300            mov ax,0x3
00006A03  B90000            mov cx,0x0
00006A06  BA0700            mov dx,0x7
00006A09  E8DEBC            call word 0x26ea
00006A0C  50                push ax
00006A0D  E8D9F9            call word 0x63e9
00006A10  E92300            jmp word 0x6a36
00006A13  3DB300            cmp ax,0xb3
00006A16  7408              jz 0x6a20
00006A18  3D3300            cmp ax,0x33
00006A1B  7403              jz 0x6a20
00006A1D  E91600            jmp word 0x6a36
00006A20  B90A00            mov cx,0xa
00006A23  E8D2BC            call word 0x26f8
00006A26  B80700            mov ax,0x7
00006A29  B90000            mov cx,0x0
00006A2C  BA0700            mov dx,0x7
00006A2F  E8B8BC            call word 0x26ea
00006A32  50                push ax
00006A33  E8B3F9            call word 0x63e9
00006A36  E90000            jmp word 0x6a39
00006A39  8A4604            mov al,[bp+0x4]
00006A3C  32E4              xor ah,ah
00006A3E  0BC0              or ax,ax
00006A40  8BE5              mov sp,bp
00006A42  5D                pop bp
00006A43  C20100            ret 0x1
00006A46  55                push bp
00006A47  8BEC              mov bp,sp
00006A49  55                push bp
00006A4A  E90000            jmp word 0x6a4d
00006A4D  50                push ax
00006A4E  B80200            mov ax,0x2
00006A51  50                push ax
00006A52  B81600            mov ax,0x16
00006A55  59                pop cx
00006A56  91                xchg ax,cx
00006A57  2BC8              sub cx,ax
00006A59  7D03              jnl 0x6a5e
00006A5B  E9EF00            jmp word 0x6b4d
00006A5E  41                inc cx
00006A5F  8846FC            mov [bp-0x4],al
00006A62  51                push cx
00006A63  B80200            mov ax,0x2
00006A66  50                push ax
00006A67  B84F00            mov ax,0x4f
00006A6A  59                pop cx
00006A6B  91                xchg ax,cx
00006A6C  2BC8              sub cx,ax
00006A6E  7D03              jnl 0x6a73
00006A70  E9D000            jmp word 0x6b43
00006A73  41                inc cx
00006A74  8846FD            mov [bp-0x3],al
00006A77  51                push cx
00006A78  8A46FD            mov al,[bp-0x3]
00006A7B  32E4              xor ah,ah
00006A7D  48                dec ax
00006A7E  48                dec ax
00006A7F  B94E00            mov cx,0x4e
00006A82  E85BBC            call word 0x26e0
00006A85  B92A00            mov cx,0x2a
00006A88  F7E1              mul cx
00006A8A  97                xchg ax,di
00006A8B  57                push di
00006A8C  8A46FC            mov al,[bp-0x4]
00006A8F  32E4              xor ah,ah
00006A91  48                dec ax
00006A92  48                dec ax
00006A93  B91500            mov cx,0x15
00006A96  E847BC            call word 0x26e0
00006A99  03C0              add ax,ax
00006A9B  5F                pop di
00006A9C  03F8              add di,ax
00006A9E  81C78D01          add di,0x18d
00006AA2  1E                push ds
00006AA3  57                push di
00006AA4  8A46FD            mov al,[bp-0x3]
00006AA7  32E4              xor ah,ah
00006AA9  50                push ax
00006AAA  8A46FC            mov al,[bp-0x4]
00006AAD  32E4              xor ah,ah
00006AAF  E8AD98            call word 0x35f
00006AB2  C47EF4            les di,[bp-0xc]
00006AB5  268A05            mov al,[es:di]
00006AB8  32E4              xor ah,ah
00006ABA  3D0000            cmp ax,0x0
00006ABD  7403              jz 0x6ac2
00006ABF  E90300            jmp word 0x6ac5
00006AC2  E97200            jmp word 0x6b37
00006AC5  3D0100            cmp ax,0x1
00006AC8  7403              jz 0x6acd
00006ACA  E92500            jmp word 0x6af2
00006ACD  B90600            mov cx,0x6
00006AD0  E825BC            call word 0x26f8
00006AD3  E8A6E1            call word 0x4c7c
00006AD6  E8A6B3            call word 0x1e7f
00006AD9  B80100            mov ax,0x1
00006ADC  50                push ax
00006ADD  B80000            mov ax,0x0
00006AE0  E8A0B6            call word 0x2183
00006AE3  E887BC            call word 0x276d
00006AE6  B90600            mov cx,0x6
00006AE9  E80CBC            call word 0x26f8
00006AEC  E879E1            call word 0x4c68
00006AEF  E94500            jmp word 0x6b37
00006AF2  3D0200            cmp ax,0x2
00006AF5  7403              jz 0x6afa
00006AF7  E92500            jmp word 0x6b1f
00006AFA  B90600            mov cx,0x6
00006AFD  E8F8BB            call word 0x26f8
00006B00  E84EE1            call word 0x4c51
00006B03  E879B3            call word 0x1e7f
00006B06  B80F00            mov ax,0xf
00006B09  50                push ax
00006B0A  B80000            mov ax,0x0
00006B0D  E873B6            call word 0x2183
00006B10  E85ABC            call word 0x276d
00006B13  B90600            mov cx,0x6
00006B16  E8DFBB            call word 0x26f8
00006B19  E84CE1            call word 0x4c68
00006B1C  E91800            jmp word 0x6b37
00006B1F  3D0300            cmp ax,0x3
00006B22  7403              jz 0x6b27
00006B24  E91000            jmp word 0x6b37
00006B27  E855B3            call word 0x1e7f
00006B2A  B80200            mov ax,0x2
00006B2D  50                push ax
00006B2E  B80000            mov ax,0x0
00006B31  E84FB6            call word 0x2183
00006B34  E836BC            call word 0x276d
00006B37  58                pop ax
00006B38  58                pop ax
00006B39  59                pop cx
00006B3A  49                dec cx
00006B3B  7406              jz 0x6b43
00006B3D  FE46FD            inc byte [bp-0x3]
00006B40  E934FF            jmp word 0x6a77
00006B43  59                pop cx
00006B44  49                dec cx
00006B45  7406              jz 0x6b4d
00006B47  FE46FC            inc byte [bp-0x4]
00006B4A  E915FF            jmp word 0x6a62
00006B4D  E90000            jmp word 0x6b50
00006B50  8BE5              mov sp,bp
00006B52  5D                pop bp
00006B53  C3                ret
00006B54  55                push bp
00006B55  8BEC              mov bp,sp
00006B57  55                push bp
00006B58  E90000            jmp word 0x6b5b
00006B5B  50                push ax
00006B5C  B80000            mov ax,0x0
00006B5F  B90000            mov cx,0x0
00006B62  BAFF00            mov dx,0xff
00006B65  E882BB            call word 0x26ea
00006B68  A2690E            mov [0xe69],al
00006B6B  B80000            mov ax,0x0
00006B6E  B90000            mov cx,0x0
00006B71  BA0100            mov dx,0x1
00006B74  E873BB            call word 0x26ea
00006B77  A2660E            mov [0xe66],al
00006B7A  B80100            mov ax,0x1
00006B7D  8946FC            mov [bp-0x4],ax
00006B80  B90601            mov cx,0x106
00006B83  E872BB            call word 0x26f8
00006B86  E8B7A1            call word 0xd40
00006B89  00B1FFE8          add [bx+di-0x1701],dh
00006B8D  0FA2              cpuid
00006B8F  E8F8E8            call word 0x548a
00006B92  B80000            mov ax,0x0
00006B95  B90000            mov cx,0x0
00006B98  BA0100            mov dx,0x1
00006B9B  E84CBB            call word 0x26ea
00006B9E  A2670E            mov [0xe67],al
00006BA1  8B46FC            mov ax,[bp-0x4]
00006BA4  48                dec ax
00006BA5  B9FF00            mov cx,0xff
00006BA8  E835BB            call word 0x26e0
00006BAB  03C0              add ax,ax
00006BAD  97                xchg ax,di
00006BAE  8A856A0E          mov al,[di+0xe6a]
00006BB2  32E4              xor ah,ah
00006BB4  50                push ax
00006BB5  A08B01            mov al,[0x18b]
00006BB8  32E4              xor ah,ah
00006BBA  59                pop cx
00006BBB  91                xchg ax,cx
00006BBC  3BC1              cmp ax,cx
00006BBE  B80100            mov ax,0x1
00006BC1  7501              jnz 0x6bc4
00006BC3  48                dec ax
00006BC4  50                push ax
00006BC5  8B46FC            mov ax,[bp-0x4]
00006BC8  48                dec ax
00006BC9  B9FF00            mov cx,0xff
00006BCC  E811BB            call word 0x26e0
00006BCF  03C0              add ax,ax
00006BD1  97                xchg ax,di
00006BD2  8A856B0E          mov al,[di+0xe6b]
00006BD6  32E4              xor ah,ah
00006BD8  50                push ax
00006BD9  A08C01            mov al,[0x18c]
00006BDC  32E4              xor ah,ah
00006BDE  59                pop cx
00006BDF  91                xchg ax,cx
00006BE0  3BC1              cmp ax,cx
00006BE2  B80100            mov ax,0x1
00006BE5  7501              jnz 0x6be8
00006BE7  48                dec ax
00006BE8  59                pop cx
00006BE9  0BC1              or ax,cx
00006BEB  0BC0              or ax,ax
00006BED  7503              jnz 0x6bf2
00006BEF  E92100            jmp word 0x6c13
00006BF2  B90800            mov cx,0x8
00006BF5  E800BB            call word 0x26f8
00006BF8  8B46FC            mov ax,[bp-0x4]
00006BFB  48                dec ax
00006BFC  B9FF00            mov cx,0xff
00006BFF  E8DEBA            call word 0x26e0
00006C02  03C0              add ax,ax
00006C04  97                xchg ax,di
00006C05  81C76A0E          add di,0xe6a
00006C09  1E                push ds
00006C0A  B90200            mov cx,0x2
00006C0D  E85CBA            call word 0x266c
00006C10  E8B3E8            call word 0x54c6
00006C13  B90E00            mov cx,0xe
00006C16  E8DFBA            call word 0x26f8
00006C19  8B46FC            mov ax,[bp-0x4]
00006C1C  50                push ax
00006C1D  BF650E            mov di,0xe65
00006C20  1E                push ds
00006C21  57                push di
00006C22  E847E9            call word 0x556c
00006C25  A0650E            mov al,[0xe65]
00006C28  32E4              xor ah,ah
00006C2A  3D0000            cmp ax,0x0
00006C2D  7403              jz 0x6c32
00006C2F  E91900            jmp word 0x6c4b
00006C32  B90800            mov cx,0x8
00006C35  E8C0BA            call word 0x26f8
00006C38  8B46FC            mov ax,[bp-0x4]
00006C3B  50                push ax
00006C3C  E847F7            call word 0x6386
00006C3F  8B46FC            mov ax,[bp-0x4]
00006C42  050100            add ax,0x1
00006C45  8946FC            mov [bp-0x4],ax
00006C48  E94C00            jmp word 0x6c97
00006C4B  3D0100            cmp ax,0x1
00006C4E  7403              jz 0x6c53
00006C50  E90300            jmp word 0x6c56
00006C53  E94100            jmp word 0x6c97
00006C56  3D0200            cmp ax,0x2
00006C59  7403              jz 0x6c5e
00006C5B  E92800            jmp word 0x6c86
00006C5E  B90800            mov cx,0x8
00006C61  E894BA            call word 0x26f8
00006C64  8B46FC            mov ax,[bp-0x4]
00006C67  50                push ax
00006C68  E81BF7            call word 0x6386
00006C6B  8B46FC            mov ax,[bp-0x4]
00006C6E  050100            add ax,0x1
00006C71  8946FC            mov [bp-0x4],ax
00006C74  B80100            mov ax,0x1
00006C77  B90000            mov cx,0x0
00006C7A  BA0100            mov dx,0x1
00006C7D  E86ABA            call word 0x26ea
00006C80  A2660E            mov [0xe66],al
00006C83  E91100            jmp word 0x6c97
00006C86  3D0300            cmp ax,0x3
00006C89  7403              jz 0x6c8e
00006C8B  E90900            jmp word 0x6c97
00006C8E  8B46FC            mov ax,[bp-0x4]
00006C91  050100            add ax,0x1
00006C94  8946FC            mov [bp-0x4],ax
00006C97  A0660E            mov al,[0xe66]
00006C9A  32E4              xor ah,ah
00006C9C  3401              xor al,0x1
00006C9E  7503              jnz 0x6ca3
00006CA0  E92E00            jmp word 0x6cd1
00006CA3  E8BFB8            call word 0x2565
00006CA6  50                push ax
00006CA7  A0670E            mov al,[0xe67]
00006CAA  32E4              xor ah,ah
00006CAC  3401              xor al,0x1
00006CAE  59                pop cx
00006CAF  23C1              and ax,cx
00006CB1  0BC0              or ax,ax
00006CB3  7503              jnz 0x6cb8
00006CB5  E91600            jmp word 0x6cce
00006CB8  B90800            mov cx,0x8
00006CBB  E83ABA            call word 0x26f8
00006CBE  4C                dec sp
00006CBF  E820F7            call word 0x63e2
00006CC2  B90000            mov cx,0x0
00006CC5  BA0100            mov dx,0x1
00006CC8  E81FBA            call word 0x26ea
00006CCB  A2670E            mov [0xe67],al
00006CCE  E94C00            jmp word 0x6d1d
00006CD1  E891B8            call word 0x2565
00006CD4  7503              jnz 0x6cd9
00006CD6  E94400            jmp word 0x6d1d
00006CD9  B90800            mov cx,0x8
00006CDC  E819BA            call word 0x26f8
00006CDF  4C                dec sp
00006CE0  E82EC2            call word 0x2f11
00006CE3  B90000            mov cx,0x0
00006CE6  BAFF00            mov dx,0xff
00006CE9  E8FEB9            call word 0x26ea
00006CEC  A2680E            mov [0xe68],al
00006CEF  A0680E            mov al,[0xe68]
00006CF2  32E4              xor ah,ah
00006CF4  50                push ax
00006CF5  E83DA3            call word 0x1035
00006CF8  B85900            mov ax,0x59
00006CFB  E849A3            call word 0x1047
00006CFE  B84E00            mov ax,0x4e
00006D01  E843A3            call word 0x1047
00006D04  E814A4            call word 0x111b
00006D07  7503              jnz 0x6d0c
00006D09  E91100            jmp word 0x6d1d
00006D0C  A0680E            mov al,[0xe68]
00006D0F  32E4              xor ah,ah
00006D11  B90000            mov cx,0x0
00006D14  BAFF00            mov dx,0xff
00006D17  E8D0B9            call word 0x26ea
00006D1A  A2690E            mov [0xe69],al
00006D1D  8B46FC            mov ax,[bp-0x4]
00006D20  3B06590E          cmp ax,[0xe59]
00006D24  B80100            mov ax,0x1
00006D27  7F01              jg 0x6d2a
00006D29  48                dec ax
00006D2A  50                push ax
00006D2B  A0670E            mov al,[0xe67]
00006D2E  32E4              xor ah,ah
00006D30  59                pop cx
00006D31  0BC1              or ax,cx
00006D33  50                push ax
00006D34  A0690E            mov al,[0xe69]
00006D37  32E4              xor ah,ah
00006D39  3D0000            cmp ax,0x0
00006D3C  B80100            mov ax,0x1
00006D3F  7501              jnz 0x6d42
00006D41  48                dec ax
00006D42  59                pop cx
00006D43  0BC1              or ax,cx
00006D45  0BC0              or ax,ax
00006D47  7503              jnz 0x6d4c
00006D49  E946FE            jmp word 0x6b92
00006D4C  B90600            mov cx,0x6
00006D4F  E8A6B9            call word 0x26f8
00006D52  E854BB            call word 0x28a9
00006D55  B91E00            mov cx,0x1e
00006D58  E89DB9            call word 0x26f8
00006D5B  83EC06            sub sp,byte +0x6
00006D5E  E869BB            call word 0x28ca
00006D61  A16A10            mov ax,[0x106a]
00006D64  E8A0A8            call word 0x1607
00006D67  E8F5A7            call word 0x155f
00006D6A  50                push ax
00006D6B  A0660E            mov al,[0xe66]
00006D6E  32E4              xor ah,ah
00006D70  3401              xor al,0x1
00006D72  59                pop cx
00006D73  23C1              and ax,cx
00006D75  0BC0              or ax,ax
00006D77  7503              jnz 0x6d7c
00006D79  E92100            jmp word 0x6d9d
00006D7C  E8E6B7            call word 0x2565
00006D7F  7503              jnz 0x6d84
00006D81  E91600            jmp word 0x6d9a
00006D84  B90800            mov cx,0x8
00006D87  E86EB9            call word 0x26f8
00006D8A  4C                dec sp
00006D8B  E854F6            call word 0x63e2
00006D8E  B90000            mov cx,0x0
00006D91  BA0100            mov dx,0x1
00006D94  E853B9            call word 0x26ea
00006D97  A2660E            mov [0xe66],al
00006D9A  E9B8FF            jmp word 0x6d55
00006D9D  A1590E            mov ax,[0xe59]
00006DA0  3D0000            cmp ax,0x0
00006DA3  B80100            mov ax,0x1
00006DA6  7401              jz 0x6da9
00006DA8  48                dec ax
00006DA9  50                push ax
00006DAA  A0660E            mov al,[0xe66]
00006DAD  32E4              xor ah,ah
00006DAF  59                pop cx
00006DB0  0BC1              or ax,cx
00006DB2  0BC0              or ax,ax
00006DB4  7503              jnz 0x6db9
00006DB6  E9C1FD            jmp word 0x6b7a
00006DB9  A1590E            mov ax,[0xe59]
00006DBC  3D0000            cmp ax,0x0
00006DBF  7403              jz 0x6dc4
00006DC1  E96D00            jmp word 0x6e31
00006DC4  B90601            mov cx,0x106
00006DC7  E82EB9            call word 0x26f8
00006DCA  E8739F            call word 0xd40
00006DCD  22596F            and bl,[bx+di+0x6f]
00006DD0  7520              jnz 0x6df2
00006DD2  7769              ja 0x6e3d
00006DD4  6E                outsb
00006DD5  202E2E2E          and [0x2e2e],ch
00006DD9  204D75            and [di+0x75],cl
00006DDC  6D                insw
00006DDD  6D                insw
00006DDE  6965732061        imul sp,[di+0x73],word 0x6120
00006DE3  7265              jc 0x6e4a
00006DE5  206E6F            and [bp+0x6f],ch
00006DE8  206D6F            and [di+0x6f],ch
00006DEB  7265              jc 0x6e52
00006DED  2121              and [bx+di],sp
00006DEF  21B1FFE8          and [bx+di-0x1701],si
00006DF3  A99FE8            test ax,0xe89f
00006DF6  92                xchg ax,dx
00006DF7  E6B9              out 0xb9,al
00006DF9  06                push es
00006DFA  00E8              add al,ch
00006DFC  FA                cli
00006DFD  B8E83D            mov ax,0x3de8
00006E00  E6B9              out 0xb9,al
00006E02  0800              or [bx+si],al
00006E04  E8F1B8            call word 0x26f8
00006E07  4C                dec sp
00006E08  E8ACD1            call word 0x3fb7
00006E0B  7503              jnz 0x6e10
00006E0D  E91200            jmp word 0x6e22
00006E10  B85900            mov ax,0x59
00006E13  B90000            mov cx,0x0
00006E16  BAFF00            mov dx,0xff
00006E19  E8CEB8            call word 0x26ea
00006E1C  A2690E            mov [0xe69],al
00006E1F  E90F00            jmp word 0x6e31
00006E22  B84E00            mov ax,0x4e
00006E25  B90000            mov cx,0x0
00006E28  BAFF00            mov dx,0xff
00006E2B  E8BCB8            call word 0x26ea
00006E2E  A2690E            mov [0xe69],al
00006E31  A0690E            mov al,[0xe69]
00006E34  32E4              xor ah,ah
00006E36  3D0000            cmp ax,0x0
00006E39  7503              jnz 0x6e3e
00006E3B  E93CFD            jmp word 0x6b7a
00006E3E  E90000            jmp word 0x6e41
00006E41  8BE5              mov sp,bp
00006E43  5D                pop bp
00006E44  C3                ret
00006E45  55                push bp
00006E46  8BEC              mov bp,sp
00006E48  55                push bp
00006E49  E90000            jmp word 0x6e4c
00006E4C  83EC16            sub sp,byte +0x16
00006E4F  8D7EEA            lea di,[bp-0x16]
00006E52  16                push ss
00006E53  57                push di
00006E54  C47EE4            les di,[bp-0x1c]
00006E57  06                push es
00006E58  57                push di
00006E59  A1630E            mov ax,[0xe63]
00006E5C  5F                pop di
00006E5D  07                pop es
00006E5E  26894502          mov [es:di+0x2],ax
00006E62  C47EE4            les di,[bp-0x1c]
00006E65  06                push es
00006E66  57                push di
00006E67  B80100            mov ax,0x1
00006E6A  5F                pop di
00006E6B  07                pop es
00006E6C  26894504          mov [es:di+0x4],ax
00006E70  C47EE4            les di,[bp-0x1c]
00006E73  06                push es
00006E74  57                push di
00006E75  B80900            mov ax,0x9
00006E78  B90800            mov cx,0x8
00006E7B  D3E0              shl ax,cl
00006E7D  50                push ax
00006E7E  8A4604            mov al,[bp+0x4]
00006E81  32E4              xor ah,ah
00006E83  59                pop cx
00006E84  03C1              add ax,cx
00006E86  5F                pop di
00006E87  07                pop es
00006E88  268905            mov [es:di],ax
00006E8B  8D7EEA            lea di,[bp-0x16]
00006E8E  16                push ss
00006E8F  E810B8            call word 0x26a2
00006E92  CD10              int 0x10
00006E94  E826B8            call word 0x26bd
00006E97  C47EE4            les di,[bp-0x1c]
00006E9A  06                push es
00006E9B  57                push di
00006E9C  B80300            mov ax,0x3
00006E9F  B90800            mov cx,0x8
00006EA2  D3E0              shl ax,cl
00006EA4  5F                pop di
00006EA5  07                pop es
00006EA6  268905            mov [es:di],ax
00006EA9  C47EE4            les di,[bp-0x1c]
00006EAC  06                push es
00006EAD  57                push di
00006EAE  B80000            mov ax,0x0
00006EB1  5F                pop di
00006EB2  07                pop es
00006EB3  26894502          mov [es:di+0x2],ax
00006EB7  8D7EEA            lea di,[bp-0x16]
00006EBA  16                push ss
00006EBB  E8E4B7            call word 0x26a2
00006EBE  CD10              int 0x10
00006EC0  E8FAB7            call word 0x26bd
00006EC3  B91000            mov cx,0x10
00006EC6  E82FB8            call word 0x26f8
00006EC9  8D7EE9            lea di,[bp-0x17]
00006ECC  16                push ss
00006ECD  57                push di
00006ECE  8D7EE8            lea di,[bp-0x18]
00006ED1  16                push ss
00006ED2  57                push di
00006ED3  C47EE4            les di,[bp-0x1c]
00006ED6  268B4506          mov ax,[es:di+0x6]
00006EDA  50                push ax
00006EDB  E8B6BE            call word 0x2d94
00006EDE  8A46E8            mov al,[bp-0x18]
00006EE1  32E4              xor ah,ah
00006EE3  050100            add ax,0x1
00006EE6  B90000            mov cx,0x0
00006EE9  BAFF00            mov dx,0xff
00006EEC  E8FBB7            call word 0x26ea
00006EEF  8846E8            mov [bp-0x18],al
00006EF2  8A46E8            mov al,[bp-0x18]
00006EF5  32E4              xor ah,ah
00006EF7  3D4F00            cmp ax,0x4f
00006EFA  7F03              jg 0x6eff
00006EFC  E92300            jmp word 0x6f22
00006EFF  8A46E9            mov al,[bp-0x17]
00006F02  32E4              xor ah,ah
00006F04  050100            add ax,0x1
00006F07  B90000            mov cx,0x0
00006F0A  BAFF00            mov dx,0xff
00006F0D  E8DAB7            call word 0x26ea
00006F10  8846E9            mov [bp-0x17],al
00006F13  B80000            mov ax,0x0
00006F16  B90000            mov cx,0x0
00006F19  BAFF00            mov dx,0xff
00006F1C  E8CBB7            call word 0x26ea
00006F1F  8846E8            mov [bp-0x18],al
00006F22  B90E00            mov cx,0xe
00006F25  E8D0B7            call word 0x26f8
00006F28  8A46E9            mov al,[bp-0x17]
00006F2B  32E4              xor ah,ah
00006F2D  B90000            mov cx,0x0
00006F30  BAFF00            mov dx,0xff
00006F33  E8B4B7            call word 0x26ea
00006F36  50                push ax
00006F37  8A46E8            mov al,[bp-0x18]
00006F3A  32E4              xor ah,ah
00006F3C  B90000            mov cx,0x0
00006F3F  BAFF00            mov dx,0xff
00006F42  E8A5B7            call word 0x26ea
00006F45  50                push ax
00006F46  C47EE4            les di,[bp-0x1c]
00006F49  83C706            add di,byte +0x6
00006F4C  06                push es
00006F4D  57                push di
00006F4E  E816BE            call word 0x2d67
00006F51  C47EE4            les di,[bp-0x1c]
00006F54  06                push es
00006F55  57                push di
00006F56  B80000            mov ax,0x0
00006F59  5F                pop di
00006F5A  07                pop es
00006F5B  26894502          mov [es:di+0x2],ax
00006F5F  C47EE4            les di,[bp-0x1c]
00006F62  06                push es
00006F63  57                push di
00006F64  B80200            mov ax,0x2
00006F67  B90800            mov cx,0x8
00006F6A  D3E0              shl ax,cl
00006F6C  5F                pop di
00006F6D  07                pop es
00006F6E  268905            mov [es:di],ax
00006F71  8D7EEA            lea di,[bp-0x16]
00006F74  16                push ss
00006F75  E82AB7            call word 0x26a2
00006F78  CD10              int 0x10
00006F7A  E840B7            call word 0x26bd
00006F7D  58                pop ax
00006F7E  58                pop ax
00006F7F  E90000            jmp word 0x6f82
00006F82  8BE5              mov sp,bp
00006F84  5D                pop bp
00006F85  C20200            ret 0x2
00006F88  55                push bp
00006F89  8BEC              mov bp,sp
00006F8B  55                push bp
00006F8C  E90000            jmp word 0x6f8f
00006F8F  B90600            mov cx,0x6
00006F92  E863B7            call word 0x26f8
00006F95  E802D0            call word 0x3f9a
00006F98  B90800            mov cx,0x8
00006F9B  E85AB7            call word 0x26f8
00006F9E  E8FFE1            call word 0x51a0
00006FA1  B90800            mov cx,0x8
00006FA4  E851B7            call word 0x26f8
00006FA7  E845F0            call word 0x5fef
00006FAA  B90800            mov cx,0x8
00006FAD  E848B7            call word 0x26f8
00006FB0  E823F1            call word 0x60d6
00006FB3  B90C00            mov cx,0xc
00006FB6  E83FB7            call word 0x26f8
00006FB9  E80BF2            call word 0x61c7
00006FBC  B90600            mov cx,0x6
00006FBF  E836B7            call word 0x26f8
00006FC2  E824F3            call word 0x62e9
00006FC5  B90800            mov cx,0x8
00006FC8  E82DB7            call word 0x26f8
00006FCB  E878FA            call word 0x6a46
00006FCE  E90000            jmp word 0x6fd1
00006FD1  8BE5              mov sp,bp
00006FD3  5D                pop bp
00006FD4  C3                ret
00006FD5  55                push bp
00006FD6  8BEC              mov bp,sp
00006FD8  55                push bp
00006FD9  E90000            jmp word 0x6fdc
00006FDC  B93600            mov cx,0x36
00006FDF  E816B7            call word 0x26f8
00006FE2  E81ED2            call word 0x4203
00006FE5  B90600            mov cx,0x6
00006FE8  E80DB7            call word 0x26f8
00006FEB  E833DD            call word 0x4d21
00006FEE  B90800            mov cx,0x8
00006FF1  E804B7            call word 0x26f8
00006FF4  4C                dec sp
00006FF5  E819BF            call word 0x2f11
00006FF8  B90000            mov cx,0x0
00006FFB  BAFF00            mov dx,0xff
00006FFE  E8E9B6            call word 0x26ea
00007001  A2680E            mov [0xe68],al
00007004  A0680E            mov al,[0xe68]
00007007  32E4              xor ah,ah
00007009  3D4400            cmp ax,0x44
0000700C  7403              jz 0x7011
0000700E  E90900            jmp word 0x701a
00007011  B93900            mov cx,0x39
00007014  E8E1B6            call word 0x26f8
00007017  E8D3D2            call word 0x42ed
0000701A  E8E491            call word 0x201
0000701D  B90600            mov cx,0x6
00007020  E8D5B6            call word 0x26f8
00007023  E842DC            call word 0x4c68
00007026  B92200            mov cx,0x22
00007029  E8CCB6            call word 0x26f8
0000702C  B80F00            mov ax,0xf
0000702F  B90000            mov cx,0x0
00007032  BA0F00            mov dx,0xf
00007035  E8B2B6            call word 0x26ea
00007038  50                push ax
00007039  B80000            mov ax,0x0
0000703C  B90000            mov cx,0x0
0000703F  BA0F00            mov dx,0xf
00007042  E8A5B6            call word 0x26ea
00007045  50                push ax
00007046  E821C0            call word 0x306a
00007049  E90000            jmp word 0x704c
0000704C  8BE5              mov sp,bp
0000704E  5D                pop bp
0000704F  C3                ret
00007050  55                push bp
00007051  8BEC              mov bp,sp
00007053  55                push bp
00007054  E90000            jmp word 0x7057
00007057  4C                dec sp
00007058  A16810            mov ax,[0x1068]
0000705B  A36A10            mov [0x106a],ax
0000705E  A16C10            mov ax,[0x106c]
00007061  A36E10            mov [0x106e],ax
00007064  E89A91            call word 0x201
00007067  B90600            mov cx,0x6
0000706A  E88BB6            call word 0x26f8
0000706D  E818FF            call word 0x6f88
00007070  E8F2B4            call word 0x2565
00007073  7503              jnz 0x7078
00007075  E91400            jmp word 0x708c
00007078  BFBB00            mov di,0xbb
0000707B  1E                push ds
0000707C  E8D4AD            call word 0x1e53
0000707F  8D7EFD            lea di,[bp-0x3]
00007082  16                push ss
00007083  E8B8AF            call word 0x203e
00007086  E8E4B6            call word 0x276d
00007089  E9E4FF            jmp word 0x7070
0000708C  E8D6B4            call word 0x2565
0000708F  7503              jnz 0x7094
00007091  E9F8FF            jmp word 0x708c
00007094  B90800            mov cx,0x8
00007097  E85EB6            call word 0x26f8
0000709A  E8B7FA            call word 0x6b54
0000709D  E90000            jmp word 0x70a0
000070A0  8BE5              mov sp,bp
000070A2  5D                pop bp
000070A3  C3                ret
000070A4  B90600            mov cx,0x6
000070A7  E84EB6            call word 0x26f8
000070AA  E828FF            call word 0x6fd5
000070AD  B90700            mov cx,0x7
000070B0  E845B6            call word 0x26f8
000070B3  E89AFF            call word 0x7050
000070B6  A0690E            mov al,[0xe69]
000070B9  32E4              xor ah,ah
000070BB  3D4E00            cmp ax,0x4e
000070BE  7403              jz 0x70c3
000070C0  E9EAFF            jmp word 0x70ad
000070C3  B80100            mov ax,0x1
000070C6  50                push ax
000070C7  B81800            mov ax,0x18
000070CA  E89292            call word 0x35f
000070CD  B90600            mov cx,0x6
000070D0  E825B6            call word 0x26f8
000070D3  E81DC0            call word 0x30f3
000070D6  E90000            jmp word 0x70d9
000070D9  E83F9B            call word 0xc1b
