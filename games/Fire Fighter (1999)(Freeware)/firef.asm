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
00000154  0014              add [si],dl
00000156  44                inc sp
00000157  656661            gs popad
0000015A  756C              jnz 0x1c8
0000015C  7420              jz 0x17e
0000015E  646973706C61      imul si,[fs:bp+di+0x70],word 0x616c
00000164  7920              jns 0x186
00000166  6D                insw
00000167  6F                outsw
00000168  646550            gs push ax
0000016B  1901              sbb [bx+di],ax
0000016D  FF                db 0xff
0000016E  FE                db 0xfe
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
0000282B  0400              add al,0x0
0000282D  0006F60E          add [0xef6],al
00002831  5F                pop di
00002832  07                pop es
00002833  5A                pop dx
00002834  0100              add [bx+si],ax
00002836  0400              add al,0x0
00002838  048B              add al,0x8b
0000283A  EC                in al,dx
0000283B  E9184D            jmp word 0x7556
0000283E  55                push bp
0000283F  8BEC              mov bp,sp
00002841  55                push bp
00002842  E90000            jmp word 0x2845
00002845  A07915            mov al,[0x1579]
00002848  32E4              xor ah,ah
0000284A  0BC0              or ax,ax
0000284C  7503              jnz 0x2851
0000284E  E90900            jmp word 0x285a
00002851  B80100            mov ax,0x1
00002854  E865DA            call word 0x2bc
00002857  E90600            jmp word 0x2860
0000285A  B8FF00            mov ax,0xff
0000285D  E85CDA            call word 0x2bc
00002860  E90000            jmp word 0x2863
00002863  8BE5              mov sp,bp
00002865  5D                pop bp
00002866  C3                ret
00002867  55                push bp
00002868  8BEC              mov bp,sp
0000286A  55                push bp
0000286B  E90000            jmp word 0x286e
0000286E  4C                dec sp
0000286F  E8F3FC            call word 0x2565
00002872  7503              jnz 0x2877
00002874  E91400            jmp word 0x288b
00002877  BFBB00            mov di,0xbb
0000287A  1E                push ds
0000287B  E8D5F5            call word 0x1e53
0000287E  8D7EFD            lea di,[bp-0x3]
00002881  16                push ss
00002882  E8B9F7            call word 0x203e
00002885  E8E5FE            call word 0x276d
00002888  E9E4FF            jmp word 0x286f
0000288B  E90000            jmp word 0x288e
0000288E  8BE5              mov sp,bp
00002890  5D                pop bp
00002891  C3                ret
00002892  55                push bp
00002893  8BEC              mov bp,sp
00002895  55                push bp
00002896  E90000            jmp word 0x2899
00002899  50                push ax
0000289A  B87701            mov ax,0x177
0000289D  50                push ax
0000289E  B8DC05            mov ax,0x5dc
000028A1  59                pop cx
000028A2  91                xchg ax,cx
000028A3  2BC8              sub cx,ax
000028A5  7D03              jnl 0x28aa
000028A7  E91B00            jmp word 0x28c5
000028AA  41                inc cx
000028AB  8946FC            mov [bp-0x4],ax
000028AE  51                push cx
000028AF  8B46FC            mov ax,[bp-0x4]
000028B2  E8FCDD            call word 0x6b1
000028B5  B80200            mov ax,0x2
000028B8  E8BEDB            call word 0x479
000028BB  59                pop cx
000028BC  49                dec cx
000028BD  7406              jz 0x28c5
000028BF  FF46FC            inc word [bp-0x4]
000028C2  E9E9FF            jmp word 0x28ae
000028C5  B8DC05            mov ax,0x5dc
000028C8  50                push ax
000028C9  B87701            mov ax,0x177
000028CC  59                pop cx
000028CD  91                xchg ax,cx
000028CE  2BC8              sub cx,ax
000028D0  7E03              jng 0x28d5
000028D2  E91B00            jmp word 0x28f0
000028D5  49                dec cx
000028D6  8946FC            mov [bp-0x4],ax
000028D9  51                push cx
000028DA  8B46FC            mov ax,[bp-0x4]
000028DD  E8D1DD            call word 0x6b1
000028E0  B80200            mov ax,0x2
000028E3  E893DB            call word 0x479
000028E6  59                pop cx
000028E7  41                inc cx
000028E8  7406              jz 0x28f0
000028EA  FF4EFC            dec word [bp-0x4]
000028ED  E9E9FF            jmp word 0x28d9
000028F0  E8E5DD            call word 0x6d8
000028F3  E90000            jmp word 0x28f6
000028F6  8BE5              mov sp,bp
000028F8  5D                pop bp
000028F9  C3                ret
000028FA  55                push bp
000028FB  8BEC              mov bp,sp
000028FD  55                push bp
000028FE  E90000            jmp word 0x2901
00002901  83EC08            sub sp,byte +0x8
00002904  8D7EF8            lea di,[bp-0x8]
00002907  16                push ss
00002908  57                push di
00002909  E89AEB            call word 0x14a6
0000290C  8600              xchg al,[bx+si]
0000290E  0000              add [bx+si],al
00002910  8002E8            add byte [bp+si],0xe8
00002913  A2EBB8            mov [0xb8eb],al
00002916  0100              add [bx+si],ax
00002918  50                push ax
00002919  8B4606            mov ax,[bp+0x6]
0000291C  59                pop cx
0000291D  91                xchg ax,cx
0000291E  2BC8              sub cx,ax
00002920  7D03              jnl 0x2925
00002922  E92700            jmp word 0x294c
00002925  41                inc cx
00002926  8946F6            mov [bp-0xa],ax
00002929  51                push cx
0000292A  8D7EF8            lea di,[bp-0x8]
0000292D  16                push ss
0000292E  57                push di
0000292F  8D7EF8            lea di,[bp-0x8]
00002932  16                push ss
00002933  E861EB            call word 0x1497
00002936  B80200            mov ax,0x2
00002939  E8CBEC            call word 0x1607
0000293C  E8A4EB            call word 0x14e3
0000293F  E875EB            call word 0x14b7
00002942  59                pop cx
00002943  49                dec cx
00002944  7406              jz 0x294c
00002946  FF46F6            inc word [bp-0xa]
00002949  E9DDFF            jmp word 0x2929
0000294C  B80100            mov ax,0x1
0000294F  50                push ax
00002950  8B4608            mov ax,[bp+0x8]
00002953  2D0100            sub ax,0x1
00002956  59                pop cx
00002957  91                xchg ax,cx
00002958  2BC8              sub cx,ax
0000295A  7D03              jnl 0x295f
0000295C  E92A00            jmp word 0x2989
0000295F  41                inc cx
00002960  8946F6            mov [bp-0xa],ax
00002963  51                push cx
00002964  8D7EF8            lea di,[bp-0x8]
00002967  16                push ss
00002968  57                push di
00002969  8D7EF8            lea di,[bp-0x8]
0000296C  16                push ss
0000296D  E827EB            call word 0x1497
00002970  E833EB            call word 0x14a6
00002973  8106967C9C07      add word [0x7c96],0x79c
00002979  E867EB            call word 0x14e3
0000297C  E838EB            call word 0x14b7
0000297F  59                pop cx
00002980  49                dec cx
00002981  7406              jz 0x2989
00002983  FF46F6            inc word [bp-0xa]
00002986  E9DAFF            jmp word 0x2963
00002989  8B4604            mov ax,[bp+0x4]
0000298C  3D0000            cmp ax,0x0
0000298F  B80100            mov ax,0x1
00002992  7501              jnz 0x2995
00002994  48                dec ax
00002995  50                push ax
00002996  A07D15            mov al,[0x157d]
00002999  32E4              xor ah,ah
0000299B  59                pop cx
0000299C  23C1              and ax,cx
0000299E  0BC0              or ax,ax
000029A0  7503              jnz 0x29a5
000029A2  E91900            jmp word 0x29be
000029A5  8D7EF8            lea di,[bp-0x8]
000029A8  16                push ss
000029A9  E8EBEA            call word 0x1497
000029AC  E81FEC            call word 0x15ce
000029AF  E8FFDC            call word 0x6b1
000029B2  8B4604            mov ax,[bp+0x4]
000029B5  E8C1DA            call word 0x479
000029B8  E81DDD            call word 0x6d8
000029BB  E90600            jmp word 0x29c4
000029BE  8B4604            mov ax,[bp+0x4]
000029C1  E8B5DA            call word 0x479
000029C4  E90000            jmp word 0x29c7
000029C7  8BE5              mov sp,bp
000029C9  5D                pop bp
000029CA  C20600            ret 0x6
000029CD  55                push bp
000029CE  8BEC              mov bp,sp
000029D0  55                push bp
000029D1  E90000            jmp word 0x29d4
000029D4  4C                dec sp
000029D5  B80000            mov ax,0x0
000029D8  884604            mov [bp+0x4],al
000029DB  BFBB00            mov di,0xbb
000029DE  1E                push ds
000029DF  E871F4            call word 0x1e53
000029E2  8D7EFD            lea di,[bp-0x3]
000029E5  16                push ss
000029E6  E855F6            call word 0x203e
000029E9  E881FD            call word 0x276d
000029EC  8A46FD            mov al,[bp-0x3]
000029EF  32E4              xor ah,ah
000029F1  50                push ax
000029F2  B81B00            mov ax,0x1b
000029F5  59                pop cx
000029F6  91                xchg ax,cx
000029F7  3BC1              cmp ax,cx
000029F9  7403              jz 0x29fe
000029FB  E97D00            jmp word 0x2a7b
000029FE  BFBB00            mov di,0xbb
00002A01  1E                push ds
00002A02  E84EF4            call word 0x1e53
00002A05  8D7EFD            lea di,[bp-0x3]
00002A08  16                push ss
00002A09  E832F6            call word 0x203e
00002A0C  E85EFD            call word 0x276d
00002A0F  8A46FD            mov al,[bp-0x3]
00002A12  32E4              xor ah,ah
00002A14  50                push ax
00002A15  B84800            mov ax,0x48
00002A18  59                pop cx
00002A19  91                xchg ax,cx
00002A1A  3BC1              cmp ax,cx
00002A1C  7403              jz 0x2a21
00002A1E  E90900            jmp word 0x2a2a
00002A21  B80100            mov ax,0x1
00002A24  884604            mov [bp+0x4],al
00002A27  E94E00            jmp word 0x2a78
00002A2A  8A46FD            mov al,[bp-0x3]
00002A2D  32E4              xor ah,ah
00002A2F  50                push ax
00002A30  B85000            mov ax,0x50
00002A33  59                pop cx
00002A34  91                xchg ax,cx
00002A35  3BC1              cmp ax,cx
00002A37  7403              jz 0x2a3c
00002A39  E90900            jmp word 0x2a45
00002A3C  B80200            mov ax,0x2
00002A3F  884604            mov [bp+0x4],al
00002A42  E93300            jmp word 0x2a78
00002A45  8A46FD            mov al,[bp-0x3]
00002A48  32E4              xor ah,ah
00002A4A  50                push ax
00002A4B  B84B00            mov ax,0x4b
00002A4E  59                pop cx
00002A4F  91                xchg ax,cx
00002A50  3BC1              cmp ax,cx
00002A52  7403              jz 0x2a57
00002A54  E90900            jmp word 0x2a60
00002A57  B80300            mov ax,0x3
00002A5A  884604            mov [bp+0x4],al
00002A5D  E91800            jmp word 0x2a78
00002A60  8A46FD            mov al,[bp-0x3]
00002A63  32E4              xor ah,ah
00002A65  50                push ax
00002A66  B84D00            mov ax,0x4d
00002A69  59                pop cx
00002A6A  91                xchg ax,cx
00002A6B  3BC1              cmp ax,cx
00002A6D  7403              jz 0x2a72
00002A6F  E90600            jmp word 0x2a78
00002A72  B80400            mov ax,0x4
00002A75  884604            mov [bp+0x4],al
00002A78  E96000            jmp word 0x2adb
00002A7B  8A46FD            mov al,[bp-0x3]
00002A7E  32E4              xor ah,ah
00002A80  E8FBD9            call word 0x47e
00002A83  8846FD            mov [bp-0x3],al
00002A86  8A46FD            mov al,[bp-0x3]
00002A89  32E4              xor ah,ah
00002A8B  3D4600            cmp ax,0x46
00002A8E  7403              jz 0x2a93
00002A90  E90900            jmp word 0x2a9c
00002A93  B80600            mov ax,0x6
00002A96  884604            mov [bp+0x4],al
00002A99  E93F00            jmp word 0x2adb
00002A9C  8A46FD            mov al,[bp-0x3]
00002A9F  32E4              xor ah,ah
00002AA1  3D4400            cmp ax,0x44
00002AA4  7403              jz 0x2aa9
00002AA6  E90900            jmp word 0x2ab2
00002AA9  B80500            mov ax,0x5
00002AAC  884604            mov [bp+0x4],al
00002AAF  E92900            jmp word 0x2adb
00002AB2  8A46FD            mov al,[bp-0x3]
00002AB5  32E4              xor ah,ah
00002AB7  3D4200            cmp ax,0x42
00002ABA  7403              jz 0x2abf
00002ABC  E90900            jmp word 0x2ac8
00002ABF  B80700            mov ax,0x7
00002AC2  884604            mov [bp+0x4],al
00002AC5  E91300            jmp word 0x2adb
00002AC8  8A46FD            mov al,[bp-0x3]
00002ACB  32E4              xor ah,ah
00002ACD  3D5100            cmp ax,0x51
00002AD0  7403              jz 0x2ad5
00002AD2  E90600            jmp word 0x2adb
00002AD5  B80800            mov ax,0x8
00002AD8  884604            mov [bp+0x4],al
00002ADB  E90000            jmp word 0x2ade
00002ADE  8A4604            mov al,[bp+0x4]
00002AE1  32E4              xor ah,ah
00002AE3  8BE5              mov sp,bp
00002AE5  5D                pop bp
00002AE6  C20100            ret 0x1
00002AE9  55                push bp
00002AEA  8BEC              mov bp,sp
00002AEC  55                push bp
00002AED  E90000            jmp word 0x2af0
00002AF0  50                push ax
00002AF1  8B4604            mov ax,[bp+0x4]
00002AF4  2B4606            sub ax,[bp+0x6]
00002AF7  050100            add ax,0x1
00002AFA  E844E1            call word 0xc41
00002AFD  034606            add ax,[bp+0x6]
00002B00  8946FC            mov [bp-0x4],ax
00002B03  8B46FC            mov ax,[bp-0x4]
00002B06  3B4606            cmp ax,[bp+0x6]
00002B09  B80100            mov ax,0x1
00002B0C  7D01              jnl 0x2b0f
00002B0E  48                dec ax
00002B0F  50                push ax
00002B10  8B46FC            mov ax,[bp-0x4]
00002B13  3B4604            cmp ax,[bp+0x4]
00002B16  B80100            mov ax,0x1
00002B19  7E01              jng 0x2b1c
00002B1B  48                dec ax
00002B1C  59                pop cx
00002B1D  23C1              and ax,cx
00002B1F  0BC0              or ax,ax
00002B21  7503              jnz 0x2b26
00002B23  E9CBFF            jmp word 0x2af1
00002B26  8B46FC            mov ax,[bp-0x4]
00002B29  894608            mov [bp+0x8],ax
00002B2C  E90000            jmp word 0x2b2f
00002B2F  8B4608            mov ax,[bp+0x8]
00002B32  8BE5              mov sp,bp
00002B34  5D                pop bp
00002B35  C20600            ret 0x6
00002B38  55                push bp
00002B39  8BEC              mov bp,sp
00002B3B  55                push bp
00002B3C  E90000            jmp word 0x2b3f
00002B3F  B90E00            mov cx,0xe
00002B42  E8B3FB            call word 0x26f8
00002B45  50                push ax
00002B46  B80100            mov ax,0x1
00002B49  50                push ax
00002B4A  B86400            mov ax,0x64
00002B4D  50                push ax
00002B4E  E898FF            call word 0x2ae9
00002B51  894604            mov [bp+0x4],ax
00002B54  E90000            jmp word 0x2b57
00002B57  8B4604            mov ax,[bp+0x4]
00002B5A  8BE5              mov sp,bp
00002B5C  5D                pop bp
00002B5D  C20200            ret 0x2
00002B60  55                push bp
00002B61  8BEC              mov bp,sp
00002B63  55                push bp
00002B64  E90000            jmp word 0x2b67
00002B67  50                push ax
00002B68  8D7EFC            lea di,[bp-0x4]
00002B6B  16                push ss
00002B6C  57                push di
00002B6D  B82000            mov ax,0x20
00002B70  8AE0              mov ah,al
00002B72  B001              mov al,0x1
00002B74  50                push ax
00002B75  B101              mov cl,0x1
00002B77  E8DCE1            call word 0xd56
00002B7A  A07915            mov al,[0x1579]
00002B7D  32E4              xor ah,ah
00002B7F  0BC0              or ax,ax
00002B81  7503              jnz 0x2b86
00002B83  E91C00            jmp word 0x2ba2
00002B86  B80200            mov ax,0x2
00002B89  E853D9            call word 0x4df
00002B8C  E8F0F2            call word 0x1e7f
00002B8F  8D7EFC            lea di,[bp-0x4]
00002B92  16                push ss
00002B93  E891E1            call word 0xd27
00002B96  B80000            mov ax,0x0
00002B99  E85DF6            call word 0x21f9
00002B9C  E8CEFB            call word 0x276d
00002B9F  E91F00            jmp word 0x2bc1
00002BA2  B80100            mov ax,0x1
00002BA5  97                xchg ax,di
00002BA6  57                push di
00002BA7  B8F900            mov ax,0xf9
00002BAA  5F                pop di
00002BAB  8843FC            mov [bp+di-0x4],al
00002BAE  E8CEF2            call word 0x1e7f
00002BB1  8D7EFC            lea di,[bp-0x4]
00002BB4  16                push ss
00002BB5  E86FE1            call word 0xd27
00002BB8  B80000            mov ax,0x0
00002BBB  E83BF6            call word 0x21f9
00002BBE  E8ACFB            call word 0x276d
00002BC1  E90000            jmp word 0x2bc4
00002BC4  8BE5              mov sp,bp
00002BC6  5D                pop bp
00002BC7  C3                ret
00002BC8  55                push bp
00002BC9  8BEC              mov bp,sp
00002BCB  55                push bp
00002BCC  E90000            jmp word 0x2bcf
00002BCF  50                push ax
00002BD0  8D7EFC            lea di,[bp-0x4]
00002BD3  16                push ss
00002BD4  57                push di
00002BD5  B82000            mov ax,0x20
00002BD8  8AE0              mov ah,al
00002BDA  B001              mov al,0x1
00002BDC  50                push ax
00002BDD  B101              mov cl,0x1
00002BDF  E874E1            call word 0xd56
00002BE2  A07915            mov al,[0x1579]
00002BE5  32E4              xor ah,ah
00002BE7  0BC0              or ax,ax
00002BE9  7503              jnz 0x2bee
00002BEB  E91C00            jmp word 0x2c0a
00002BEE  B80100            mov ax,0x1
00002BF1  E8EBD8            call word 0x4df
00002BF4  E888F2            call word 0x1e7f
00002BF7  8D7EFC            lea di,[bp-0x4]
00002BFA  16                push ss
00002BFB  E829E1            call word 0xd27
00002BFE  B80000            mov ax,0x0
00002C01  E8F5F5            call word 0x21f9
00002C04  E866FB            call word 0x276d
00002C07  E91F00            jmp word 0x2c29
00002C0A  B80100            mov ax,0x1
00002C0D  97                xchg ax,di
00002C0E  57                push di
00002C0F  B84F00            mov ax,0x4f
00002C12  5F                pop di
00002C13  8843FC            mov [bp+di-0x4],al
00002C16  E866F2            call word 0x1e7f
00002C19  8D7EFC            lea di,[bp-0x4]
00002C1C  16                push ss
00002C1D  E807E1            call word 0xd27
00002C20  B80000            mov ax,0x0
00002C23  E8D3F5            call word 0x21f9
00002C26  E844FB            call word 0x276d
00002C29  E90000            jmp word 0x2c2c
00002C2C  8BE5              mov sp,bp
00002C2E  5D                pop bp
00002C2F  C3                ret
00002C30  55                push bp
00002C31  8BEC              mov bp,sp
00002C33  55                push bp
00002C34  E90000            jmp word 0x2c37
00002C37  50                push ax
00002C38  8D7EFC            lea di,[bp-0x4]
00002C3B  16                push ss
00002C3C  57                push di
00002C3D  B82000            mov ax,0x20
00002C40  8AE0              mov ah,al
00002C42  B001              mov al,0x1
00002C44  50                push ax
00002C45  B101              mov cl,0x1
00002C47  E80CE1            call word 0xd56
00002C4A  B80100            mov ax,0x1
00002C4D  97                xchg ax,di
00002C4E  57                push di
00002C4F  B87F00            mov ax,0x7f
00002C52  5F                pop di
00002C53  8843FC            mov [bp+di-0x4],al
00002C56  A07915            mov al,[0x1579]
00002C59  32E4              xor ah,ah
00002C5B  0BC0              or ax,ax
00002C5D  7503              jnz 0x2c62
00002C5F  E92400            jmp word 0x2c86
00002C62  B80200            mov ax,0x2
00002C65  E877D8            call word 0x4df
00002C68  A07A15            mov al,[0x157a]
00002C6B  32E4              xor ah,ah
00002C6D  0BC0              or ax,ax
00002C6F  7503              jnz 0x2c74
00002C71  E90C00            jmp word 0x2c80
00002C74  B80F00            mov ax,0xf
00002C77  051000            add ax,0x10
00002C7A  E84ED8            call word 0x4cb
00002C7D  E90600            jmp word 0x2c86
00002C80  B80F00            mov ax,0xf
00002C83  E845D8            call word 0x4cb
00002C86  E8F6F1            call word 0x1e7f
00002C89  8D7EFC            lea di,[bp-0x4]
00002C8C  16                push ss
00002C8D  E897E0            call word 0xd27
00002C90  B80000            mov ax,0x0
00002C93  E863F5            call word 0x21f9
00002C96  E8D4FA            call word 0x276d
00002C99  E90000            jmp word 0x2c9c
00002C9C  8BE5              mov sp,bp
00002C9E  5D                pop bp
00002C9F  C3                ret
00002CA0  55                push bp
00002CA1  8BEC              mov bp,sp
00002CA3  55                push bp
00002CA4  E90000            jmp word 0x2ca7
00002CA7  50                push ax
00002CA8  8D7EFC            lea di,[bp-0x4]
00002CAB  16                push ss
00002CAC  57                push di
00002CAD  B82000            mov ax,0x20
00002CB0  8AE0              mov ah,al
00002CB2  B001              mov al,0x1
00002CB4  50                push ax
00002CB5  B101              mov cl,0x1
00002CB7  E89CE0            call word 0xd56
00002CBA  A07915            mov al,[0x1579]
00002CBD  32E4              xor ah,ah
00002CBF  0BC0              or ax,ax
00002CC1  7503              jnz 0x2cc6
00002CC3  E91B00            jmp word 0x2ce1
00002CC6  B80400            mov ax,0x4
00002CC9  E813D8            call word 0x4df
00002CCC  B80000            mov ax,0x0
00002CCF  E8F9D7            call word 0x4cb
00002CD2  B80100            mov ax,0x1
00002CD5  97                xchg ax,di
00002CD6  57                push di
00002CD7  B8B000            mov ax,0xb0
00002CDA  5F                pop di
00002CDB  8843FC            mov [bp+di-0x4],al
00002CDE  E90C00            jmp word 0x2ced
00002CE1  B80100            mov ax,0x1
00002CE4  97                xchg ax,di
00002CE5  57                push di
00002CE6  B8B200            mov ax,0xb2
00002CE9  5F                pop di
00002CEA  8843FC            mov [bp+di-0x4],al
00002CED  E88FF1            call word 0x1e7f
00002CF0  8D7EFC            lea di,[bp-0x4]
00002CF3  16                push ss
00002CF4  E830E0            call word 0xd27
00002CF7  B80000            mov ax,0x0
00002CFA  E8FCF4            call word 0x21f9
00002CFD  E86DFA            call word 0x276d
00002D00  E90000            jmp word 0x2d03
00002D03  8BE5              mov sp,bp
00002D05  5D                pop bp
00002D06  C3                ret
00002D07  55                push bp
00002D08  8BEC              mov bp,sp
00002D0A  55                push bp
00002D0B  E90000            jmp word 0x2d0e
00002D0E  50                push ax
00002D0F  8D7EFC            lea di,[bp-0x4]
00002D12  16                push ss
00002D13  57                push di
00002D14  B82000            mov ax,0x20
00002D17  8AE0              mov ah,al
00002D19  B001              mov al,0x1
00002D1B  50                push ax
00002D1C  B101              mov cl,0x1
00002D1E  E835E0            call word 0xd56
00002D21  A07915            mov al,[0x1579]
00002D24  32E4              xor ah,ah
00002D26  0BC0              or ax,ax
00002D28  7503              jnz 0x2d2d
00002D2A  E91B00            jmp word 0x2d48
00002D2D  B80400            mov ax,0x4
00002D30  E8ACD7            call word 0x4df
00002D33  B80000            mov ax,0x0
00002D36  E892D7            call word 0x4cb
00002D39  B80100            mov ax,0x1
00002D3C  97                xchg ax,di
00002D3D  57                push di
00002D3E  B82000            mov ax,0x20
00002D41  5F                pop di
00002D42  8843FC            mov [bp+di-0x4],al
00002D45  E90C00            jmp word 0x2d54
00002D48  B80100            mov ax,0x1
00002D4B  97                xchg ax,di
00002D4C  57                push di
00002D4D  B8DB00            mov ax,0xdb
00002D50  5F                pop di
00002D51  8843FC            mov [bp+di-0x4],al
00002D54  E828F1            call word 0x1e7f
00002D57  8D7EFC            lea di,[bp-0x4]
00002D5A  16                push ss
00002D5B  E8C9DF            call word 0xd27
00002D5E  B80000            mov ax,0x0
00002D61  E895F4            call word 0x21f9
00002D64  E806FA            call word 0x276d
00002D67  E90000            jmp word 0x2d6a
00002D6A  8BE5              mov sp,bp
00002D6C  5D                pop bp
00002D6D  C3                ret
00002D6E  55                push bp
00002D6F  8BEC              mov bp,sp
00002D71  55                push bp
00002D72  E90000            jmp word 0x2d75
00002D75  50                push ax
00002D76  8D7EFC            lea di,[bp-0x4]
00002D79  16                push ss
00002D7A  57                push di
00002D7B  B82000            mov ax,0x20
00002D7E  8AE0              mov ah,al
00002D80  B001              mov al,0x1
00002D82  50                push ax
00002D83  B101              mov cl,0x1
00002D85  E8CEDF            call word 0xd56
00002D88  B80100            mov ax,0x1
00002D8B  97                xchg ax,di
00002D8C  57                push di
00002D8D  B82B00            mov ax,0x2b
00002D90  5F                pop di
00002D91  8843FC            mov [bp+di-0x4],al
00002D94  A07915            mov al,[0x1579]
00002D97  32E4              xor ah,ah
00002D99  0BC0              or ax,ax
00002D9B  7503              jnz 0x2da0
00002D9D  E90C00            jmp word 0x2dac
00002DA0  B80200            mov ax,0x2
00002DA3  E839D7            call word 0x4df
00002DA6  B80000            mov ax,0x0
00002DA9  E81FD7            call word 0x4cb
00002DAC  E8D0F0            call word 0x1e7f
00002DAF  8D7EFC            lea di,[bp-0x4]
00002DB2  16                push ss
00002DB3  E871DF            call word 0xd27
00002DB6  B80000            mov ax,0x0
00002DB9  E83DF4            call word 0x21f9
00002DBC  E8AEF9            call word 0x276d
00002DBF  E90000            jmp word 0x2dc2
00002DC2  8BE5              mov sp,bp
00002DC4  5D                pop bp
00002DC5  C3                ret
00002DC6  55                push bp
00002DC7  8BEC              mov bp,sp
00002DC9  55                push bp
00002DCA  E90000            jmp word 0x2dcd
00002DCD  50                push ax
00002DCE  8D7EFC            lea di,[bp-0x4]
00002DD1  16                push ss
00002DD2  57                push di
00002DD3  B82000            mov ax,0x20
00002DD6  8AE0              mov ah,al
00002DD8  B001              mov al,0x1
00002DDA  50                push ax
00002DDB  B101              mov cl,0x1
00002DDD  E876DF            call word 0xd56
00002DE0  B80100            mov ax,0x1
00002DE3  97                xchg ax,di
00002DE4  57                push di
00002DE5  B82000            mov ax,0x20
00002DE8  5F                pop di
00002DE9  8843FC            mov [bp+di-0x4],al
00002DEC  A07915            mov al,[0x1579]
00002DEF  32E4              xor ah,ah
00002DF1  0BC0              or ax,ax
00002DF3  7503              jnz 0x2df8
00002DF5  E90C00            jmp word 0x2e04
00002DF8  B80000            mov ax,0x0
00002DFB  E8E1D6            call word 0x4df
00002DFE  B80F00            mov ax,0xf
00002E01  E8C7D6            call word 0x4cb
00002E04  E878F0            call word 0x1e7f
00002E07  8D7EFC            lea di,[bp-0x4]
00002E0A  16                push ss
00002E0B  E819DF            call word 0xd27
00002E0E  B80000            mov ax,0x0
00002E11  E8E5F3            call word 0x21f9
00002E14  E856F9            call word 0x276d
00002E17  E90000            jmp word 0x2e1a
00002E1A  8BE5              mov sp,bp
00002E1C  5D                pop bp
00002E1D  C3                ret
00002E1E  55                push bp
00002E1F  8BEC              mov bp,sp
00002E21  55                push bp
00002E22  E90000            jmp word 0x2e25
00002E25  8A4606            mov al,[bp+0x6]
00002E28  32E4              xor ah,ah
00002E2A  3D0000            cmp ax,0x0
00002E2D  7403              jz 0x2e32
00002E2F  E90C00            jmp word 0x2e3e
00002E32  B90800            mov cx,0x8
00002E35  E8C0F8            call word 0x26f8
00002E38  E825FD            call word 0x2b60
00002E3B  E99200            jmp word 0x2ed0
00002E3E  3D0100            cmp ax,0x1
00002E41  7403              jz 0x2e46
00002E43  E90C00            jmp word 0x2e52
00002E46  B90800            mov cx,0x8
00002E49  E8ACF8            call word 0x26f8
00002E4C  E8E1FD            call word 0x2c30
00002E4F  E97E00            jmp word 0x2ed0
00002E52  3D0300            cmp ax,0x3
00002E55  7403              jz 0x2e5a
00002E57  E90C00            jmp word 0x2e66
00002E5A  B90800            mov cx,0x8
00002E5D  E898F8            call word 0x26f8
00002E60  E865FD            call word 0x2bc8
00002E63  E96A00            jmp word 0x2ed0
00002E66  3D0200            cmp ax,0x2
00002E69  7403              jz 0x2e6e
00002E6B  E90C00            jmp word 0x2e7a
00002E6E  B90800            mov cx,0x8
00002E71  E884F8            call word 0x26f8
00002E74  E8F7FE            call word 0x2d6e
00002E77  E95600            jmp word 0x2ed0
00002E7A  3D0A00            cmp ax,0xa
00002E7D  7403              jz 0x2e82
00002E7F  E90C00            jmp word 0x2e8e
00002E82  B90800            mov cx,0x8
00002E85  E870F8            call word 0x26f8
00002E88  E83BFF            call word 0x2dc6
00002E8B  E94200            jmp word 0x2ed0
00002E8E  3D0400            cmp ax,0x4
00002E91  741C              jz 0x2eaf
00002E93  3D0500            cmp ax,0x5
00002E96  7417              jz 0x2eaf
00002E98  3D0600            cmp ax,0x6
00002E9B  7412              jz 0x2eaf
00002E9D  3D0700            cmp ax,0x7
00002EA0  740D              jz 0x2eaf
00002EA2  3D0800            cmp ax,0x8
00002EA5  7408              jz 0x2eaf
00002EA7  3D0900            cmp ax,0x9
00002EAA  7403              jz 0x2eaf
00002EAC  E92100            jmp word 0x2ed0
00002EAF  8A4604            mov al,[bp+0x4]
00002EB2  32E4              xor ah,ah
00002EB4  0BC0              or ax,ax
00002EB6  7503              jnz 0x2ebb
00002EB8  E90C00            jmp word 0x2ec7
00002EBB  B90800            mov cx,0x8
00002EBE  E837F8            call word 0x26f8
00002EC1  E8DCFD            call word 0x2ca0
00002EC4  E90900            jmp word 0x2ed0
00002EC7  B90800            mov cx,0x8
00002ECA  E82BF8            call word 0x26f8
00002ECD  E837FE            call word 0x2d07
00002ED0  E90000            jmp word 0x2ed3
00002ED3  8BE5              mov sp,bp
00002ED5  5D                pop bp
00002ED6  C20400            ret 0x4
00002ED9  55                push bp
00002EDA  8BEC              mov bp,sp
00002EDC  55                push bp
00002EDD  E9EE00            jmp word 0x2fce
00002EE0  55                push bp
00002EE1  8BC4              mov ax,sp
00002EE3  FF76FE            push word [bp-0x2]
00002EE6  8BE8              mov bp,ax
00002EE8  55                push bp
00002EE9  E90000            jmp word 0x2eec
00002EEC  A07915            mov al,[0x1579]
00002EEF  32E4              xor ah,ah
00002EF1  3401              xor al,0x1
00002EF3  7503              jnz 0x2ef8
00002EF5  E91000            jmp word 0x2f08
00002EF8  E884EF            call word 0x1e7f
00002EFB  E842DE            call word 0xd40
00002EFE  00B81400          add [bx+si+0x14],bh
00002F02  E8F4F2            call word 0x21f9
00002F05  E865F8            call word 0x276d
00002F08  A07915            mov al,[0x1579]
00002F0B  32E4              xor ah,ah
00002F0D  50                push ax
00002F0E  8D7E04            lea di,[bp+0x4]
00002F11  16                push ss
00002F12  E812DE            call word 0xd27
00002F15  E8A3DF            call word 0xebb
00002F18  3D2800            cmp ax,0x28
00002F1B  B80100            mov ax,0x1
00002F1E  7D01              jnl 0x2f21
00002F20  48                dec ax
00002F21  59                pop cx
00002F22  23C1              and ax,cx
00002F24  0BC0              or ax,ax
00002F26  7503              jnz 0x2f2b
00002F28  E91600            jmp word 0x2f41
00002F2B  E851EF            call word 0x1e7f
00002F2E  8D7E04            lea di,[bp+0x4]
00002F31  16                push ss
00002F32  E8F2DD            call word 0xd27
00002F35  B80000            mov ax,0x0
00002F38  E8BEF2            call word 0x21f9
00002F3B  E82FF8            call word 0x276d
00002F3E  E91600            jmp word 0x2f57
00002F41  E83BEF            call word 0x1e7f
00002F44  8D7E04            lea di,[bp+0x4]
00002F47  16                push ss
00002F48  E8DCDD            call word 0xd27
00002F4B  B80000            mov ax,0x0
00002F4E  E8A8F2            call word 0x21f9
00002F51  E8E8F2            call word 0x223c
00002F54  E816F8            call word 0x276d
00002F57  E90000            jmp word 0x2f5a
00002F5A  8BE5              mov sp,bp
00002F5C  5D                pop bp
00002F5D  C22A00            ret 0x2a
00002F60  55                push bp
00002F61  8BC4              mov ax,sp
00002F63  FF76FE            push word [bp-0x2]
00002F66  8BE8              mov bp,ax
00002F68  55                push bp
00002F69  E90000            jmp word 0x2f6c
00002F6C  4C                dec sp
00002F6D  E80FEF            call word 0x1e7f
00002F70  E8CDDD            call word 0xd40
00002F73  008B5EFE          add [bp+di-0x1a2],cl
00002F77  368B47FC          mov ax,[ss:bx-0x4]
00002F7B  E87BF2            call word 0x21f9
00002F7E  E8A5F2            call word 0x2226
00002F81  1B5479            sbb dx,[si+0x79]
00002F84  7065              jo 0x2feb
00002F86  203C              and [si],bh
00002F88  7370              jnc 0x2ffa
00002F8A  61                popaw
00002F8B  63653E            arpl [di+0x3e],sp
00002F8E  20746F            and [si+0x6f],dh
00002F91  20636F            and [bp+di+0x6f],ah
00002F94  6E                outsb
00002F95  7469              jz 0x3000
00002F97  6E                outsb
00002F98  7565              jnz 0x2fff
00002F9A  2E2E2EE8CDF7      cs call word 0x276d
00002FA0  BFBB00            mov di,0xbb
00002FA3  1E                push ds
00002FA4  E8ACEE            call word 0x1e53
00002FA7  8D7EFB            lea di,[bp-0x5]
00002FAA  16                push ss
00002FAB  E890F0            call word 0x203e
00002FAE  E8BCF7            call word 0x276d
00002FB1  8A46FB            mov al,[bp-0x5]
00002FB4  32E4              xor ah,ah
00002FB6  3D2000            cmp ax,0x20
00002FB9  7403              jz 0x2fbe
00002FBB  E9E2FF            jmp word 0x2fa0
00002FBE  B90600            mov cx,0x6
00002FC1  E834F7            call word 0x26f8
00002FC4  E877F8            call word 0x283e
00002FC7  E90000            jmp word 0x2fca
00002FCA  8BE5              mov sp,bp
00002FCC  5D                pop bp
00002FCD  C3                ret
00002FCE  50                push ax
00002FCF  A07915            mov al,[0x1579]
00002FD2  32E4              xor ah,ah
00002FD4  0BC0              or ax,ax
00002FD6  7503              jnz 0x2fdb
00002FD8  E90900            jmp word 0x2fe4
00002FDB  B80000            mov ax,0x0
00002FDE  8946FC            mov [bp-0x4],ax
00002FE1  E90600            jmp word 0x2fea
00002FE4  B81400            mov ax,0x14
00002FE7  8946FC            mov [bp-0x4],ax
00002FEA  B90600            mov cx,0x6
00002FED  E808F7            call word 0x26f8
00002FF0  E84BF8            call word 0x283e
00002FF3  B93200            mov cx,0x32
00002FF6  E8FFF6            call word 0x26f8
00002FF9  E844DD            call word 0xd40
00002FFC  28496E            sub [bx+di+0x6e],cl
00002FFF  207468            and [si+0x68],dh
00003002  6973206761        imul si,[bp+di+0x20],word 0x6167
00003007  6D                insw
00003008  6520796F          and [gs:bx+di+0x6f],bh
0000300C  7520              jnz 0x302e
0000300E  7769              ja 0x3079
00003010  6C                insb
00003011  6C                insb
00003012  206174            and [bx+di+0x74],ah
00003015  7465              jz 0x307c
00003017  6D                insw
00003018  7074              jo 0x308e
0000301A  20746F            and [si+0x6f],dh
0000301D  207075            and [bx+si+0x75],dh
00003020  7420              jz 0x3042
00003022  6F                outsw
00003023  7574              jnz 0x3099
00003025  B129              mov cl,0x29
00003027  E874DD            call word 0xd9e
0000302A  E8B3FE            call word 0x2ee0
0000302D  B93200            mov cx,0x32
00003030  E8C5F6            call word 0x26f8
00003033  E80ADD            call word 0xd40
00003036  286669            sub [bp+0x69],ah
00003039  7265              jc 0x30a0
0000303B  7320              jnc 0x305d
0000303D  7374              jnc 0x30b3
0000303F  61                popaw
00003040  7274              jc 0x30b6
00003042  6564206279        and [fs:bp+si+0x79],ah
00003047  206C69            and [si+0x69],ch
0000304A  6768746E          push word 0x6e74
0000304E  696E672069        imul bp,[bp+0x67],word 0x6920
00003053  6E                outsb
00003054  206120            and [bx+di+0x20],ah
00003057  666F              outsd
00003059  7265              jc 0x30c0
0000305B  7374              jnc 0x30d1
0000305D  2E20B129E8        and [cs:bx+di-0x17d7],dh
00003062  3ADD              cmp bl,ch
00003064  E879FE            call word 0x2ee0
00003067  E815EE            call word 0x1e7f
0000306A  E8CFF1            call word 0x223c
0000306D  E8FDF6            call word 0x276d
00003070  B93200            mov cx,0x32
00003073  E882F6            call word 0x26f8
00003076  E8C7DC            call word 0xd40
00003079  285468            sub [si+0x68],dl
0000307C  6520666F          and [gs:bp+0x6f],ah
00003080  7265              jc 0x30e7
00003082  7374              jnc 0x30f8
00003084  206973            and [bx+di+0x73],ch
00003087  2032              and [bp+si],dh
00003089  352061            xor ax,0x6120
0000308C  7265              jc 0x30f3
0000308E  61                popaw
0000308F  7320              jnc 0x30b1
00003091  7371              jnc 0x3104
00003093  7561              jnz 0x30f6
00003095  7265              jc 0x30fc
00003097  2C20              sub al,0x20
00003099  61                popaw
0000309A  6E                outsb
0000309B  6420636F          and [fs:bp+di+0x6f],ah
0000309F  6E                outsb
000030A0  2D20B1            sub ax,0xb120
000030A3  29E8              sub ax,bp
000030A5  F7DC              neg sp
000030A7  E836FE            call word 0x2ee0
000030AA  B93200            mov cx,0x32
000030AD  E848F6            call word 0x26f8
000030B0  E88DDC            call word 0xd40
000030B3  287461            sub [si+0x61],dh
000030B6  696E73206C        imul bp,[bp+0x73],word 0x6c20
000030BB  61                popaw
000030BC  6B657320          imul sp,[di+0x73],byte +0x20
000030C0  61                popaw
000030C1  6E                outsb
000030C2  6420686F          and [fs:bx+si+0x6f],ch
000030C6  7573              jnz 0x313b
000030C8  65732E            gs jnc 0x30f9
000030CB  2020              and [bx+si],ah
000030CD  59                pop cx
000030CE  6F                outsw
000030CF  7572              jnz 0x3143
000030D1  20676F            and [bx+0x6f],ah
000030D4  61                popaw
000030D5  6C                insb
000030D6  206973            and [bx+di+0x73],ch
000030D9  20746F            and [si+0x6f],dh
000030DC  B129              mov cl,0x29
000030DE  E8BDDC            call word 0xd9e
000030E1  E8FCFD            call word 0x2ee0
000030E4  B93200            mov cx,0x32
000030E7  E80EF6            call word 0x26f8
000030EA  E853DC            call word 0xd40
000030ED  287361            sub [bp+di+0x61],dh
000030F0  7665              jna 0x3157
000030F2  206173            and [bx+di+0x73],ah
000030F5  206D61            and [di+0x61],ch
000030F8  6E                outsb
000030F9  7920              jns 0x311b
000030FB  686F75            push word 0x756f
000030FE  7365              jnc 0x3165
00003100  7320              jnc 0x3122
00003102  61                popaw
00003103  6E                outsb
00003104  64206173          and [fs:bx+di+0x73],ah
00003108  206D75            and [di+0x75],ch
0000310B  636820            arpl [bx+si+0x20],bp
0000310E  666F              outsd
00003110  7265              jc 0x3177
00003112  7374              jnc 0x3188
00003114  2020              and [bx+si],ah
00003116  B129              mov cl,0x29
00003118  E883DC            call word 0xd9e
0000311B  E8C2FD            call word 0x2ee0
0000311E  B93200            mov cx,0x32
00003121  E8D4F5            call word 0x26f8
00003124  E819DC            call word 0xd40
00003127  0C61              or al,0x61
00003129  7320              jnc 0x314b
0000312B  796F              jns 0x319c
0000312D  7520              jnz 0x314f
0000312F  63616E            arpl [bx+di+0x6e],sp
00003132  2E20B129E8        and [cs:bx+di-0x17d7],dh
00003137  65DCE8            gs fsub to st0
0000313A  A4                movsb
0000313B  FD                std
0000313C  E840ED            call word 0x1e7f
0000313F  E8FAF0            call word 0x223c
00003142  E828F6            call word 0x276d
00003145  E837ED            call word 0x1e7f
00003148  E8F1F0            call word 0x223c
0000314B  E81FF6            call word 0x276d
0000314E  B93200            mov cx,0x32
00003151  E8A4F5            call word 0x26f8
00003154  E8E9DB            call word 0xd40
00003157  285468            sub [si+0x68],dl
0000315A  65207379          and [gs:bp+di+0x79],dh
0000315E  6D                insw
0000315F  626F6C            bound bp,[bx+0x6c]
00003162  7320              jnc 0x3184
00003164  7573              jnz 0x31d9
00003166  6564206F6E        and [fs:bx+0x6e],ch
0000316B  207468            and [si+0x68],dh
0000316E  65206761          and [gs:bx+0x61],ah
00003172  6D                insw
00003173  65207363          and [gs:bp+di+0x63],dh
00003177  7265              jc 0x31de
00003179  656E              gs outsb
0000317B  206172            and [bx+di+0x72],ah
0000317E  653AB129E8        cmp dh,[gs:bx+di-0x17d7]
00003183  19DC              sbb sp,bx
00003185  E858FD            call word 0x2ee0
00003188  E8F4EC            call word 0x1e7f
0000318B  E8AEF0            call word 0x223c
0000318E  E8DCF5            call word 0x276d
00003191  E8EBEC            call word 0x1e7f
00003194  E8A9DB            call word 0xd40
00003197  008B46FC          add [bp+di-0x3ba],cl
0000319B  050400            add ax,0x4
0000319E  E858F0            call word 0x21f9
000031A1  E8C9F5            call word 0x276d
000031A4  B90800            mov cx,0x8
000031A7  E84EF5            call word 0x26f8
000031AA  E8B3F9            call word 0x2b60
000031AD  B90800            mov cx,0x8
000031B0  E845F5            call word 0x26f8
000031B3  E810FC            call word 0x2dc6
000031B6  E8C6EC            call word 0x1e7f
000031B9  E884DB            call word 0xd40
000031BC  00B80600          add [bx+si+0x6],bh
000031C0  E836F0            call word 0x21f9
000031C3  E8A7F5            call word 0x276d
000031C6  B90800            mov cx,0x8
000031C9  E82CF5            call word 0x26f8
000031CC  E861FA            call word 0x2c30
000031CF  B90800            mov cx,0x8
000031D2  E823F5            call word 0x26f8
000031D5  E8EEFB            call word 0x2dc6
000031D8  E8A4EC            call word 0x1e7f
000031DB  E862DB            call word 0xd40
000031DE  00B80400          add [bx+si+0x4],bh
000031E2  E814F0            call word 0x21f9
000031E5  E885F5            call word 0x276d
000031E8  B90800            mov cx,0x8
000031EB  E80AF5            call word 0x26f8
000031EE  E8D7F9            call word 0x2bc8
000031F1  B90800            mov cx,0x8
000031F4  E801F5            call word 0x26f8
000031F7  E8CCFB            call word 0x2dc6
000031FA  E882EC            call word 0x1e7f
000031FD  E840DB            call word 0xd40
00003200  00B80400          add [bx+si+0x4],bh
00003204  E8F2EF            call word 0x21f9
00003207  E863F5            call word 0x276d
0000320A  B90800            mov cx,0x8
0000320D  E8E8F4            call word 0x26f8
00003210  E88DFA            call word 0x2ca0
00003213  B90800            mov cx,0x8
00003216  E8DFF4            call word 0x26f8
00003219  E8AAFB            call word 0x2dc6
0000321C  E860EC            call word 0x1e7f
0000321F  E81EDB            call word 0xd40
00003222  00B80700          add [bx+si+0x7],bh
00003226  E8D0EF            call word 0x21f9
00003229  E841F5            call word 0x276d
0000322C  B90800            mov cx,0x8
0000322F  E8C6F4            call word 0x26f8
00003232  E839FB            call word 0x2d6e
00003235  B90800            mov cx,0x8
00003238  E8BDF4            call word 0x26f8
0000323B  E888FB            call word 0x2dc6
0000323E  E83EEC            call word 0x1e7f
00003241  E8F8EF            call word 0x223c
00003244  E826F5            call word 0x276d
00003247  B93200            mov cx,0x32
0000324A  E8ABF4            call word 0x26f8
0000324D  E8F0DA            call word 0xd40
00003250  262020            and [es:bx+si],ah
00003253  46                inc si
00003254  6F                outsw
00003255  7265              jc 0x32bc
00003257  7374              jnc 0x32cd
00003259  2020              and [bx+si],ah
0000325B  48                dec ax
0000325C  6F                outsw
0000325D  7573              jnz 0x32d2
0000325F  652020            and [gs:bx+si],ah
00003262  4C                dec sp
00003263  61                popaw
00003264  6B652020          imul sp,[di+0x20],byte +0x20
00003268  46                inc si
00003269  6972652020        imul si,[bp+si+0x65],word 0x2020
0000326E  46                inc si
0000326F  6972656272        imul si,[bp+si+0x65],word 0x7262
00003274  6561              gs popaw
00003276  6BB129E822        imul si,[bx+di-0x17d7],byte +0x22
0000327B  DBE8              fucomi st0
0000327D  61                popaw
0000327E  FC                cld
0000327F  E8FDEB            call word 0x1e7f
00003282  E8B7EF            call word 0x223c
00003285  E8E5F4            call word 0x276d
00003288  E8F4EB            call word 0x1e7f
0000328B  E8AEEF            call word 0x223c
0000328E  E8DCF4            call word 0x276d
00003291  B90900            mov cx,0x9
00003294  E861F4            call word 0x26f8
00003297  E8C6FC            call word 0x2f60
0000329A  E8E2EB            call word 0x1e7f
0000329D  E89CEF            call word 0x223c
000032A0  E8CAF4            call word 0x276d
000032A3  E8D9EB            call word 0x1e7f
000032A6  E893EF            call word 0x223c
000032A9  E8C1F4            call word 0x276d
000032AC  B93200            mov cx,0x32
000032AF  E846F4            call word 0x26f8
000032B2  E88BDA            call word 0xd40
000032B5  284F6E            sub [bx+0x6e],cl
000032B8  636520            arpl [di+0x20],sp
000032BB  61                popaw
000032BC  206669            and [bp+0x69],ah
000032BF  7265              jc 0x3326
000032C1  207374            and [bp+di+0x74],dh
000032C4  61                popaw
000032C5  7274              jc 0x333b
000032C7  732C              jnc 0x32f5
000032C9  206974            and [bx+di+0x74],ch
000032CC  207769            and [bx+0x69],dh
000032CF  6C                insb
000032D0  6C                insb
000032D1  206275            and [bp+si+0x75],ah
000032D4  726E              jc 0x3344
000032D6  20666F            and [bp+0x6f],ah
000032D9  7220              jc 0x32fb
000032DB  61                popaw
000032DC  2020              and [bx+si],ah
000032DE  B129              mov cl,0x29
000032E0  E8BBDA            call word 0xd9e
000032E3  E8FAFB            call word 0x2ee0
000032E6  B93200            mov cx,0x32
000032E9  E80CF4            call word 0x26f8
000032EC  E851DA            call word 0xd40
000032EF  286E75            sub [bp+0x75],ch
000032F2  6D                insw
000032F3  626572            bound sp,[di+0x72]
000032F6  206F66            and [bx+0x66],ch
000032F9  207475            and [si+0x75],dh
000032FC  726E              jc 0x336c
000032FE  732C              jnc 0x332c
00003300  20616E            and [bx+di+0x6e],ah
00003303  64207468          and [fs:si+0x68],dh
00003307  656E              gs outsb
00003309  206275            and [bp+si+0x75],ah
0000330C  726E              jc 0x337c
0000330E  206974            and [bx+di+0x74],ch
00003311  7365              jnc 0x3378
00003313  6C                insb
00003314  662020            o32 and [bx+si],ah
00003317  20B129E8          and [bx+di-0x17d7],dh
0000331B  81DAE8C0          sbb dx,0xc0e8
0000331F  FB                sti
00003320  B93200            mov cx,0x32
00003323  E8D2F3            call word 0x26f8
00003326  E817DA            call word 0xd40
00003329  286F75            sub [bx+0x75],ch
0000332C  742E              jz 0x335c
0000332E  2020              and [bx+si],ah
00003330  57                push di
00003331  68656E            push word 0x6e65
00003334  207468            and [si+0x68],dh
00003337  6973206861        imul si,[bp+di+0x20],word 0x6168
0000333C  7070              jo 0x33ae
0000333E  656E              gs outsb
00003340  7320              jnc 0x3362
00003342  7468              jz 0x33ac
00003344  65206172          and [gs:bx+di+0x72],ah
00003348  6561              gs popaw
0000334A  20676F            and [bx+0x6f],ah
0000334D  657320            gs jnc 0x3370
00003350  2020              and [bx+si],ah
00003352  B129              mov cl,0x29
00003354  E847DA            call word 0xd9e
00003357  E886FB            call word 0x2ee0
0000335A  B93200            mov cx,0x32
0000335D  E898F3            call word 0x26f8
00003360  E8DDD9            call word 0xd40
00003363  06                push es
00003364  626C61            bound bp,[si+0x61]
00003367  636B2E            arpl [bp+di+0x2e],bp
0000336A  B129              mov cl,0x29
0000336C  E82FDA            call word 0xd9e
0000336F  E86EFB            call word 0x2ee0
00003372  E80AEB            call word 0x1e7f
00003375  E8C4EE            call word 0x223c
00003378  E8F2F3            call word 0x276d
0000337B  B93200            mov cx,0x32
0000337E  E877F3            call word 0x26f8
00003381  E8BCD9            call word 0xd40
00003384  285768            sub [bx+0x68],dl
00003387  696C652061        imul bp,[si+0x65],word 0x6120
0000338C  206669            and [bp+0x69],ah
0000338F  7265              jc 0x33f6
00003391  206973            and [bx+di+0x73],ch
00003394  206275            and [bp+si+0x75],ah
00003397  726E              jc 0x3407
00003399  696E672069        imul bp,[bp+0x67],word 0x6920
0000339E  7420              jz 0x33c0
000033A0  6D                insw
000033A1  61                popaw
000033A2  7920              jns 0x33c4
000033A4  7370              jnc 0x3416
000033A6  7265              jc 0x340d
000033A8  61                popaw
000033A9  6420746F          and [fs:si+0x6f],dh
000033AD  B129              mov cl,0x29
000033AF  E8ECD9            call word 0xd9e
000033B2  E82BFB            call word 0x2ee0
000033B5  B93200            mov cx,0x32
000033B8  E83DF3            call word 0x26f8
000033BB  E882D9            call word 0xd40
000033BE  286164            sub [bx+di+0x64],ah
000033C1  6A61              push byte +0x61
000033C3  63656E            arpl [di+0x6e],sp
000033C6  7420              jz 0x33e8
000033C8  61                popaw
000033C9  7265              jc 0x3430
000033CB  61                popaw
000033CC  732E              jnc 0x33fc
000033CE  2020              and [bx+si],ah
000033D0  54                push sp
000033D1  686520            push word 0x2065
000033D4  7370              jnc 0x3446
000033D6  7265              jc 0x343d
000033D8  61                popaw
000033D9  64206F66          and [fs:bx+0x66],ch
000033DD  206669            and [bp+0x69],ah
000033E0  7265              jc 0x3447
000033E2  206973            and [bx+di+0x73],ch
000033E5  2020              and [bx+si],ah
000033E7  B129              mov cl,0x29
000033E9  E8B2D9            call word 0xd9e
000033EC  E8F1FA            call word 0x2ee0
000033EF  B93200            mov cx,0x32
000033F2  E803F3            call word 0x26f8
000033F5  E848D9            call word 0xd40
000033F8  27                daa
000033F9  636F6E            arpl [bx+0x6e],bp
000033FC  7472              jz 0x3470
000033FE  6F                outsw
000033FF  6C                insb
00003400  6C                insb
00003401  6564206279        and [fs:bp+si+0x79],ah
00003406  207468            and [si+0x68],dh
00003409  65207769          and [gs:bx+0x69],dh
0000340D  6E                outsb
0000340E  6427              fs daa
00003410  7320              jnc 0x3432
00003412  646972656374      imul si,[fs:bp+si+0x65],word 0x7463
00003418  696F6E2061        imul bp,[bx+0x6e],word 0x6120
0000341D  6E                outsb
0000341E  6420B129E8        and [fs:bx+di-0x17d7],dh
00003423  79D9              jns 0x33fe
00003425  E8B8FA            call word 0x2ee0
00003428  B93200            mov cx,0x32
0000342B  E8CAF2            call word 0x26f8
0000342E  E80FD9            call word 0xd40
00003431  287370            sub [bp+di+0x70],dh
00003434  6565642E2020      and [cs:bx+si],ah
0000343A  54                push sp
0000343B  686573            push word 0x7365
0000343E  65206172          and [gs:bx+di+0x72],ah
00003442  65206469          and [gs:si+0x69],ah
00003446  7370              jnc 0x34b8
00003448  6C                insb
00003449  61                popaw
0000344A  7965              jns 0x34b1
0000344C  64206F6E          and [fs:bx+0x6e],ch
00003450  207468            and [si+0x68],dh
00003453  65206761          and [gs:bx+0x61],ah
00003457  6D                insw
00003458  6520B129E8        and [gs:bx+di-0x17d7],dh
0000345D  3F                aas
0000345E  D9E8              fld1
00003460  7EFA              jng 0x345c
00003462  B93200            mov cx,0x32
00003465  E890F2            call word 0x26f8
00003468  E8D5D8            call word 0xd40
0000346B  287363            sub [bp+di+0x63],dh
0000346E  7265              jc 0x34d5
00003470  656E              gs outsb
00003472  20616E            and [bx+di+0x6e],ah
00003475  64207769          and [fs:bx+0x69],dh
00003479  6C                insb
0000347A  6C                insb
0000347B  206368            and [bp+di+0x68],ah
0000347E  61                popaw
0000347F  6E                outsb
00003480  676520746872      and [dword gs:eax+ebp*2+0x72],dh
00003486  6F                outsw
00003487  7567              jnz 0x34f0
00003489  686F75            push word 0x756f
0000348C  7420              jz 0x34ae
0000348E  7468              jz 0x34f8
00003490  652020            and [gs:bx+si],ah
00003493  20B129E8          and [bx+di-0x17d7],dh
00003497  05D9E8            add ax,0xe8d9
0000349A  44                inc sp
0000349B  FA                cli
0000349C  B93200            mov cx,0x32
0000349F  E856F2            call word 0x26f8
000034A2  E89BD8            call word 0xd40
000034A5  056761            add ax,0x6167
000034A8  6D                insw
000034A9  652EB129          cs mov cl,0x29
000034AD  E8EED8            call word 0xd9e
000034B0  E82DFA            call word 0x2ee0
000034B3  E8C9E9            call word 0x1e7f
000034B6  E883ED            call word 0x223c
000034B9  E8B1F2            call word 0x276d
000034BC  B93200            mov cx,0x32
000034BF  E836F2            call word 0x26f8
000034C2  E87BD8            call word 0xd40
000034C5  284C61            sub [si+0x61],cl
000034C8  6B657320          imul sp,[di+0x73],byte +0x20
000034CC  63616E            arpl [bx+di+0x6e],sp
000034CF  6E                outsb
000034D0  6F                outsw
000034D1  7420              jz 0x34f3
000034D3  636174            arpl [bx+di+0x74],sp
000034D6  636820            arpl [bx+si+0x20],bp
000034D9  6F                outsw
000034DA  6E                outsb
000034DB  206669            and [bp+0x69],ah
000034DE  7265              jc 0x3545
000034E0  2028              and [bx+si],ch
000034E2  7468              jz 0x354c
000034E4  6973206973        imul si,[bp+di+0x20],word 0x7369
000034E9  20616E            and [bx+di+0x6e],ah
000034EC  2020              and [bx+si],ah
000034EE  B129              mov cl,0x29
000034F0  E8ABD8            call word 0xd9e
000034F3  E8EAF9            call word 0x2ee0
000034F6  B93200            mov cx,0x32
000034F9  E8FCF1            call word 0x26f8
000034FC  E841D8            call word 0xd40
000034FF  28756E            sub [di+0x6e],dh
00003502  706F              jo 0x3573
00003504  6C                insb
00003505  6C                insb
00003506  7574              jnz 0x357c
00003508  656420666F        and [fs:bp+0x6f],ah
0000350D  7265              jc 0x3574
0000350F  7374              jnc 0x3585
00003511  292C              sub [si],bp
00003513  20616E            and [bx+di+0x6e],ah
00003516  6420736F          and [fs:bp+di+0x6f],dh
0000351A  207468            and [si+0x68],dh
0000351D  657920            gs jns 0x3540
00003520  666F              outsd
00003522  726D              jc 0x3591
00003524  206120            and [bx+di+0x20],ah
00003527  20B129E8          and [bx+di-0x17d7],dh
0000352B  71D8              jno 0x3505
0000352D  E8B0F9            call word 0x2ee0
00003530  B93200            mov cx,0x32
00003533  E8C2F1            call word 0x26f8
00003536  E807D8            call word 0xd40
00003539  126E61            adc ch,[bp+0x61]
0000353C  7475              jz 0x35b3
0000353E  7261              jc 0x35a1
00003540  6C                insb
00003541  206669            and [bp+0x69],ah
00003544  7265              jc 0x35ab
00003546  627265            bound si,[bp+si+0x65]
00003549  61                popaw
0000354A  6B2EB129E8        imul bp,[0x29b1],byte -0x18
0000354F  4D                dec bp
00003550  D8E8              fsubr st0
00003552  8CF9              mov cx,segr7
00003554  E828E9            call word 0x1e7f
00003557  E8E2EC            call word 0x223c
0000355A  E810F2            call word 0x276d
0000355D  B93200            mov cx,0x32
00003560  E895F1            call word 0x26f8
00003563  E8DAD7            call word 0xd40
00003566  284120            sub [bx+di+0x20],al
00003569  686F75            push word 0x756f
0000356C  7365              jnc 0x35d3
0000356E  206164            and [bx+di+0x64],ah
00003571  6A61              push byte +0x61
00003573  63656E            arpl [di+0x6e],sp
00003576  7420              jz 0x3598
00003578  746F              jz 0x35e9
0000357A  206120            and [bx+di+0x20],ah
0000357D  666972652077696C  imul esi,[bp+si+0x65],dword 0x6c697720
00003585  6C                insb
00003586  20626C            and [bp+si+0x6c],ah
00003589  696E6B2074        imul bp,[bp+0x6b],word 0x7420
0000358E  6F                outsw
0000358F  B129              mov cl,0x29
00003591  E80AD8            call word 0xd9e
00003594  E849F9            call word 0x2ee0
00003597  B93200            mov cx,0x32
0000359A  E85BF1            call word 0x26f8
0000359D  E8A0D7            call word 0xd40
000035A0  1E                push ds
000035A1  7368              jnc 0x360b
000035A3  6F                outsw
000035A4  7720              ja 0x35c6
000035A6  7468              jz 0x3610
000035A8  61                popaw
000035A9  7420              jz 0x35cb
000035AB  6974206D61        imul si,[si+0x20],word 0x616d
000035B0  7920              jns 0x35d2
000035B2  626520            bound sp,[di+0x20]
000035B5  696E206461        imul bp,[bp+0x20],word 0x6164
000035BA  6E                outsb
000035BB  6765722E          gs jc 0x35ed
000035BF  B129              mov cl,0x29
000035C1  E8DAD7            call word 0xd9e
000035C4  E819F9            call word 0x2ee0
000035C7  E8B5E8            call word 0x1e7f
000035CA  E86FEC            call word 0x223c
000035CD  E89DF1            call word 0x276d
000035D0  E8ACE8            call word 0x1e7f
000035D3  E866EC            call word 0x223c
000035D6  E894F1            call word 0x276d
000035D9  B90900            mov cx,0x9
000035DC  E819F1            call word 0x26f8
000035DF  E87EF9            call word 0x2f60
000035E2  E89AE8            call word 0x1e7f
000035E5  E854EC            call word 0x223c
000035E8  E882F1            call word 0x276d
000035EB  B93200            mov cx,0x32
000035EE  E807F1            call word 0x26f8
000035F1  E84CD7            call word 0xd40
000035F4  284561            sub [di+0x61],al
000035F7  636820            arpl [bx+si+0x20],bp
000035FA  7475              jz 0x3671
000035FC  726E              jc 0x366c
000035FE  206F66            and [bx+0x66],ch
00003601  207468            and [si+0x68],dh
00003604  65206761          and [gs:bx+0x61],ah
00003608  6D                insw
00003609  6520796F          and [gs:bx+di+0x6f],bh
0000360D  7520              jnz 0x362f
0000360F  646F              fs outsw
00003611  20736F            and [bp+di+0x6f],dh
00003614  6D                insw
00003615  657468            gs jz 0x3680
00003618  696E672020        imul bp,[bp+0x67],word 0x2020
0000361D  B129              mov cl,0x29
0000361F  E87CD7            call word 0xd9e
00003622  E8BBF8            call word 0x2ee0
00003625  B93200            mov cx,0x32
00003628  E8CDF0            call word 0x26f8
0000362B  E812D7            call word 0xd40
0000362E  28696E            sub [bx+di+0x6e],ch
00003631  20616E            and [bx+di+0x6e],ah
00003634  206172            and [bx+di+0x72],ah
00003637  6561              gs popaw
00003639  206F66            and [bx+0x66],ch
0000363C  207468            and [si+0x68],dh
0000363F  6520666F          and [gs:bp+0x6f],ah
00003643  7265              jc 0x36aa
00003645  7374              jnc 0x36bb
00003647  3B20              cmp sp,[bx+si]
00003649  61                popaw
0000364A  667465            o32 jz 0x36b2
0000364D  7220              jc 0x366f
0000364F  796F              jns 0x36c0
00003651  7572              jnz 0x36c5
00003653  2020              and [bx+si],ah
00003655  2020              and [bx+si],ah
00003657  B129              mov cl,0x29
00003659  E842D7            call word 0xd9e
0000365C  E881F8            call word 0x2ee0
0000365F  B93200            mov cx,0x32
00003662  E893F0            call word 0x26f8
00003665  E8D8D6            call word 0xd40
00003668  287475            sub [si+0x75],dh
0000366B  726E              jc 0x36db
0000366D  207468            and [si+0x68],dh
00003670  65206761          and [gs:bx+0x61],ah
00003674  6D                insw
00003675  65207363          and [gs:bp+di+0x63],dh
00003679  7265              jc 0x36e0
0000367B  656E              gs outsb
0000367D  206973            and [bx+di+0x73],ch
00003680  207570            and [di+0x70],dh
00003683  6461              fs popaw
00003685  7465              jz 0x36ec
00003687  642E2020          and [cs:bx+si],ah
0000368B  54                push sp
0000368C  6F                outsw
0000368D  20646F            and [si+0x6f],ah
00003690  20B129E8          and [bx+di-0x17d7],dh
00003694  08D7              or bh,dl
00003696  E847F8            call word 0x2ee0
00003699  B93200            mov cx,0x32
0000369C  E859F0            call word 0x26f8
0000369F  E89ED6            call word 0xd40
000036A2  28736F            sub [bp+di+0x6f],dh
000036A5  6D                insw
000036A6  657468            gs jz 0x3711
000036A9  696E672079        imul bp,[bp+0x67],word 0x7920
000036AE  6F                outsw
000036AF  7520              jnz 0x36d1
000036B1  6D                insw
000036B2  6F                outsw
000036B3  7665              jna 0x371a
000036B5  207468            and [si+0x68],dh
000036B8  65206375          and [gs:bp+di+0x75],ah
000036BC  7273              jc 0x3731
000036BE  6F                outsw
000036BF  7220              jc 0x36e1
000036C1  746F              jz 0x3732
000036C3  207468            and [si+0x68],dh
000036C6  652020            and [gs:bx+si],ah
000036C9  2020              and [bx+si],ah
000036CB  B129              mov cl,0x29
000036CD  E8CED6            call word 0xd9e
000036D0  E80DF8            call word 0x2ee0
000036D3  B93200            mov cx,0x32
000036D6  E81FF0            call word 0x26f8
000036D9  E864D6            call word 0xd40
000036DC  286465            sub [si+0x65],ah
000036DF  7369              jnc 0x374a
000036E1  7265              jc 0x3748
000036E3  64206172          and [fs:bx+di+0x72],ah
000036E7  6561              gs popaw
000036E9  206F66            and [bx+0x66],ch
000036EC  207468            and [si+0x68],dh
000036EF  6520666F          and [gs:bp+0x6f],ah
000036F3  7265              jc 0x375a
000036F5  7374              jnc 0x376b
000036F7  2C20              sub al,0x20
000036F9  7573              jnz 0x376e
000036FB  696E672074        imul bp,[bp+0x67],word 0x7420
00003700  686520            push word 0x2065
00003703  2020              and [bx+si],ah
00003705  B129              mov cl,0x29
00003707  E894D6            call word 0xd9e
0000370A  E8D3F7            call word 0x2ee0
0000370D  B93200            mov cx,0x32
00003710  E8E5EF            call word 0x26f8
00003713  E82AD6            call word 0xd40
00003716  286172            sub [bx+di+0x72],ah
00003719  726F              jc 0x378a
0000371B  7720              ja 0x373d
0000371D  6B657973          imul sp,[di+0x79],byte +0x73
00003721  2C20              sub al,0x20
00003723  61                popaw
00003724  6E                outsb
00003725  64207468          and [fs:si+0x68],dh
00003729  656E              gs outsb
0000372B  207479            and [si+0x79],dh
0000372E  7065              jo 0x3795
00003730  206120            and [bx+di+0x20],ah
00003733  6C                insb
00003734  657474            gs jz 0x37ab
00003737  65723A            gs jc 0x3774
0000373A  2020              and [bx+si],ah
0000373C  2020              and [bx+si],ah
0000373E  20B129E8          and [bx+di-0x17d7],dh
00003742  5A                pop dx
00003743  D6                salc
00003744  E899F7            call word 0x2ee0
00003747  E835E7            call word 0x1e7f
0000374A  E8EFEA            call word 0x223c
0000374D  E81DF0            call word 0x276d
00003750  B93200            mov cx,0x32
00003753  E8A2EF            call word 0x26f8
00003756  E8E7D5            call word 0xd40
00003759  1920              sbb [bx+si],sp
0000375B  2020              and [bx+si],ah
0000375D  2020              and [bx+si],ah
0000375F  2020              and [bx+si],ah
00003761  2020              and [bx+si],ah
00003763  2020              and [bx+si],ah
00003765  44                inc sp
00003766  202D              and [di],ch
00003768  206472            and [si+0x72],ah
0000376B  6F                outsw
0000376C  7020              jo 0x378e
0000376E  7761              ja 0x37d1
00003770  7465              jz 0x37d7
00003772  72B1              jc 0x3725
00003774  29E8              sub ax,bp
00003776  26D6              es salc
00003778  E865F7            call word 0x2ee0
0000377B  B93200            mov cx,0x32
0000377E  E877EF            call word 0x26f8
00003781  E8BCD5            call word 0xd40
00003784  1E                push ds
00003785  2020              and [bx+si],ah
00003787  2020              and [bx+si],ah
00003789  2020              and [bx+si],ah
0000378B  2020              and [bx+si],ah
0000378D  2020              and [bx+si],ah
0000378F  204620            and [bp+0x20],al
00003792  2D2062            sub ax,0x6220
00003795  7569              jnz 0x3800
00003797  6C                insb
00003798  64206669          and [fs:bp+0x69],ah
0000379C  7265              jc 0x3803
0000379E  627265            bound si,[bp+si+0x65]
000037A1  61                popaw
000037A2  6BB129E8F6        imul si,[bx+di-0x17d7],byte -0xa
000037A7  D5E8              aad 0xe8
000037A9  35F7B9            xor ax,0xb9f7
000037AC  3200              xor al,[bx+si]
000037AE  E847EF            call word 0x26f8
000037B1  E88CD5            call word 0xd40
000037B4  1D2020            sbb ax,0x2020
000037B7  2020              and [bx+si],ah
000037B9  2020              and [bx+si],ah
000037BB  2020              and [bx+si],ah
000037BD  2020              and [bx+si],ah
000037BF  204220            and [bp+si+0x20],al
000037C2  2D2073            sub ax,0x7320
000037C5  7461              jz 0x3828
000037C7  7274              jc 0x383d
000037C9  206261            and [bp+si+0x61],ah
000037CC  636B66            arpl [bp+di+0x66],bp
000037CF  697265B129        imul si,[bp+si+0x65],word 0x29b1
000037D4  E8C7D5            call word 0xd9e
000037D7  E806F7            call word 0x2ee0
000037DA  E8A2E6            call word 0x1e7f
000037DD  E85CEA            call word 0x223c
000037E0  E88AEF            call word 0x276d
000037E3  B93200            mov cx,0x32
000037E6  E80FEF            call word 0x26f8
000037E9  E854D5            call word 0xd40
000037EC  284472            sub [si+0x72],al
000037EF  6F                outsw
000037F0  7070              jo 0x3862
000037F2  696E672077        imul bp,[bp+0x67],word 0x7720
000037F7  61                popaw
000037F8  7465              jz 0x385f
000037FA  7220              jc 0x381c
000037FC  6F                outsw
000037FD  6E                outsb
000037FE  206120            and [bx+di+0x20],ah
00003801  666972652077696C  imul esi,[bp+si+0x65],dword 0x6c697720
00003809  6C                insb
0000380A  206D61            and [di+0x61],ch
0000380D  6B652069          imul sp,[di+0x20],byte +0x69
00003811  7420              jz 0x3833
00003813  2020              and [bx+si],ah
00003815  B129              mov cl,0x29
00003817  E884D5            call word 0xd9e
0000381A  E8C3F6            call word 0x2ee0
0000381D  B93200            mov cx,0x32
00003820  E8D5EE            call word 0x26f8
00003823  E81AD5            call word 0xd40
00003826  286275            sub [bp+si+0x75],ah
00003829  726E              jc 0x3899
0000382B  206F75            and [bx+0x75],ch
0000382E  7420              jz 0x3850
00003830  736F              jnc 0x38a1
00003832  6F                outsw
00003833  6E                outsb
00003834  65722C            gs jc 0x3863
00003837  207468            and [si+0x68],dh
0000383A  6F                outsw
0000383B  7567              jnz 0x38a4
0000383D  68206E            push word 0x6e20
00003840  6F                outsw
00003841  7420              jz 0x3863
00003843  6E                outsb
00003844  65636573          arpl [gs:di+0x73],sp
00003848  7361              jnc 0x38ab
0000384A  7269              jc 0x38b5
0000384C  6C                insb
0000384D  7920              jns 0x386f
0000384F  B129              mov cl,0x29
00003851  E84AD5            call word 0xd9e
00003854  E889F6            call word 0x2ee0
00003857  B93200            mov cx,0x32
0000385A  E89BEE            call word 0x26f8
0000385D  E8E0D4            call word 0xd40
00003860  28696E            sub [bx+di+0x6e],ch
00003863  207468            and [si+0x68],dh
00003866  61                popaw
00003867  7420              jz 0x3889
00003869  7475              jz 0x38e0
0000386B  726E              jc 0x38db
0000386D  2E2020            and [cs:bx+si],ah
00003870  54                push sp
00003871  686520            push word 0x2065
00003874  7761              ja 0x38d7
00003876  7465              jz 0x38dd
00003878  7227              jc 0x38a1
0000387A  7320              jnc 0x389c
0000387C  65666665637469    o32 arpl [gs:si+0x69],si
00003883  7665              jna 0x38ea
00003885  6E                outsb
00003886  657373            gs jnc 0x38fc
00003889  B129              mov cl,0x29
0000388B  E810D5            call word 0xd9e
0000388E  E84FF6            call word 0x2ee0
00003891  B93200            mov cx,0x32
00003894  E861EE            call word 0x26f8
00003897  E8A6D4            call word 0xd40
0000389A  287769            sub [bx+0x69],dh
0000389D  6C                insb
0000389E  6C                insb
0000389F  207661            and [bp+0x61],dh
000038A2  7279              jc 0x391d
000038A4  2C20              sub al,0x20
000038A6  61                popaw
000038A7  6E                outsb
000038A8  6420736F          and [fs:bp+di+0x6f],dh
000038AC  6D                insw
000038AD  657469            gs jz 0x3919
000038B0  6D                insw
000038B1  657320            gs jnc 0x38d4
000038B4  736F              jnc 0x3925
000038B6  6D                insw
000038B7  65207761          and [gs:bx+0x61],dh
000038BB  7465              jz 0x3922
000038BD  7220              jc 0x38df
000038BF  7769              ja 0x392a
000038C1  6C                insb
000038C2  6C                insb
000038C3  B129              mov cl,0x29
000038C5  E8D6D4            call word 0xd9e
000038C8  E815F6            call word 0x2ee0
000038CB  B93200            mov cx,0x32
000038CE  E827EE            call word 0x26f8
000038D1  E86CD4            call word 0xd40
000038D4  28626C            sub [bp+si+0x6c],ah
000038D7  6F                outsw
000038D8  7720              ja 0x38fa
000038DA  646F              fs outsw
000038DC  776E              ja 0x394c
000038DE  7769              ja 0x3949
000038E0  6E                outsb
000038E1  6420746F          and [fs:si+0x6f],dh
000038E5  207468            and [si+0x68],dh
000038E8  65206E65          and [gs:bp+0x65],ch
000038EC  7874              js 0x3962
000038EE  206172            and [bx+di+0x72],ah
000038F1  6561              gs popaw
000038F3  2E2020            and [cs:bx+si],ah
000038F6  44                inc sp
000038F7  726F              jc 0x3968
000038F9  702D              jo 0x3928
000038FB  2020              and [bx+si],ah
000038FD  B129              mov cl,0x29
000038FF  E89CD4            call word 0xd9e
00003902  E8DBF5            call word 0x2ee0
00003905  B93200            mov cx,0x32
00003908  E8EDED            call word 0x26f8
0000390B  E832D4            call word 0xd40
0000390E  287069            sub [bx+si+0x69],dh
00003911  6E                outsb
00003912  67207761          and [edi+0x61],dh
00003916  7465              jz 0x397d
00003918  7220              jc 0x393a
0000391A  6F                outsw
0000391B  6E                outsb
0000391C  206120            and [bx+di+0x20],ah
0000391F  686F75            push word 0x756f
00003922  7365              jnc 0x3989
00003924  206F72            and [bx+0x72],ch
00003927  20666F            and [bp+0x6f],ah
0000392A  7265              jc 0x3991
0000392C  7374              jnc 0x39a2
0000392E  206172            and [bx+di+0x72],ah
00003931  6561              gs popaw
00003933  2020              and [bx+si],ah
00003935  2020              and [bx+si],ah
00003937  B129              mov cl,0x29
00003939  E862D4            call word 0xd9e
0000393C  E8A1F5            call word 0x2ee0
0000393F  B93200            mov cx,0x32
00003942  E8B3ED            call word 0x26f8
00003945  E8F8D3            call word 0xd40
00003948  287468            sub [si+0x68],dh
0000394B  61                popaw
0000394C  7420              jz 0x396e
0000394E  6973206E6F        imul si,[bp+di+0x20],word 0x6f6e
00003953  7420              jz 0x3975
00003955  627572            bound si,[di+0x72]
00003958  6E                outsb
00003959  696E672077        imul bp,[bp+0x67],word 0x7720
0000395E  696C6C2068        imul bp,[si+0x6c],word 0x6820
00003963  656C              gs insb
00003965  7020              jo 0x3987
00003967  6B656570          imul sp,[di+0x65],byte +0x70
0000396B  206974            and [bx+di+0x74],ch
0000396E  2020              and [bx+si],ah
00003970  20B129E8          and [bx+di-0x17d7],dh
00003974  28D4              sub ah,dl
00003976  E867F5            call word 0x2ee0
00003979  B93200            mov cx,0x32
0000397C  E879ED            call word 0x26f8
0000397F  E8BED3            call word 0xd40
00003982  16                push ss
00003983  66726F            o32 jc 0x39f5
00003986  6D                insw
00003987  206361            and [bp+di+0x61],ah
0000398A  7463              jz 0x39ef
0000398C  68696E            push word 0x6e69
0000398F  67206669          and [esi+0x69],ah
00003993  7265              jc 0x39fa
00003995  2E2020            and [cs:bx+si],ah
00003998  20B129E8          and [bx+di-0x17d7],dh
0000399C  00D4              add ah,dl
0000399E  E83FF5            call word 0x2ee0
000039A1  E8DBE4            call word 0x1e7f
000039A4  E895E8            call word 0x223c
000039A7  E8C3ED            call word 0x276d
000039AA  E8D2E4            call word 0x1e7f
000039AD  E88CE8            call word 0x223c
000039B0  E8BAED            call word 0x276d
000039B3  B90900            mov cx,0x9
000039B6  E83FED            call word 0x26f8
000039B9  E8A4F5            call word 0x2f60
000039BC  E8C0E4            call word 0x1e7f
000039BF  E87AE8            call word 0x223c
000039C2  E8A8ED            call word 0x276d
000039C5  E8B7E4            call word 0x1e7f
000039C8  E871E8            call word 0x223c
000039CB  E89FED            call word 0x276d
000039CE  E8AEE4            call word 0x1e7f
000039D1  E868E8            call word 0x223c
000039D4  E896ED            call word 0x276d
000039D7  B93200            mov cx,0x32
000039DA  E81BED            call word 0x26f8
000039DD  E860D3            call word 0xd40
000039E0  284275            sub [bp+si+0x75],al
000039E3  696C64696E        imul bp,[si+0x64],word 0x6e69
000039E8  67206120          and [ecx+0x20],ah
000039EC  6669726562726561  imul esi,[bp+si+0x65],dword 0x61657262
000039F4  6B2069            imul sp,[bx+si],byte +0x69
000039F7  6E                outsb
000039F8  20616E            and [bx+di+0x6e],ah
000039FB  206172            and [bx+di+0x72],ah
000039FE  6561              gs popaw
00003A00  206372            and [bp+di+0x72],ah
00003A03  6561              gs popaw
00003A05  7465              jz 0x3a6c
00003A07  7320              jnc 0x3a29
00003A09  B129              mov cl,0x29
00003A0B  E890D3            call word 0xd9e
00003A0E  E8CFF4            call word 0x2ee0
00003A11  B93200            mov cx,0x32
00003A14  E8E1EC            call word 0x26f8
00003A17  E826D3            call word 0xd40
00003A1A  286120            sub [bx+di+0x20],ah
00003A1D  626172            bound sp,[bx+di+0x72]
00003A20  7269              jc 0x3a8b
00003A22  657220            gs jc 0x3a45
00003A25  7468              jz 0x3a8f
00003A27  726F              jc 0x3a98
00003A29  7567              jnz 0x3a92
00003A2B  682077            push word 0x7720
00003A2E  686963            push word 0x6369
00003A31  682066            push word 0x6620
00003A34  697265206E        imul si,[bp+si+0x65],word 0x6e20
00003A39  6F                outsw
00003A3A  726D              jc 0x3aa9
00003A3C  61                popaw
00003A3D  6C                insb
00003A3E  6C                insb
00003A3F  7920              jns 0x3a61
00003A41  2020              and [bx+si],ah
00003A43  B129              mov cl,0x29
00003A45  E856D3            call word 0xd9e
00003A48  E895F4            call word 0x2ee0
00003A4B  B93200            mov cx,0x32
00003A4E  E8A7EC            call word 0x26f8
00003A51  E8ECD2            call word 0xd40
00003A54  286361            sub [bp+di+0x61],ah
00003A57  6E                outsb
00003A58  6E                outsb
00003A59  6F                outsw
00003A5A  7420              jz 0x3a7c
00003A5C  627572            bound si,[di+0x72]
00003A5F  6E                outsb
00003A60  2E2020            and [cs:bx+si],ah
00003A63  4F                dec di
00003A64  6E                outsb
00003A65  636520            arpl [di+0x20],sp
00003A68  696E206120        imul bp,[bp+0x20],word 0x2061
00003A6D  677265            jc 0x3ad5
00003A70  61                popaw
00003A71  7420              jz 0x3a93
00003A73  7768              ja 0x3add
00003A75  696C652C20        imul bp,[si+0x65],word 0x202c
00003A7A  2020              and [bx+si],ah
00003A7C  20B129E8          and [bx+di-0x17d7],dh
00003A80  1CD3              sbb al,0xd3
00003A82  E85BF4            call word 0x2ee0
00003A85  B93200            mov cx,0x32
00003A88  E86DEC            call word 0x26f8
00003A8B  E8B2D2            call word 0xd40
00003A8E  28686F            sub [bx+si+0x6f],ch
00003A91  7765              ja 0x3af8
00003A93  7665              jna 0x3afa
00003A95  722C              jc 0x3ac3
00003A97  206966            and [bx+di+0x66],ch
00003A9A  207468            and [si+0x68],dh
00003A9D  65207769          and [gs:bx+0x69],dh
00003AA1  6E                outsb
00003AA2  64206973          and [fs:bx+di+0x73],ch
00003AA6  206869            and [bx+si+0x69],ch
00003AA9  67682C20          push word 0x202c
00003AAD  61                popaw
00003AAE  206669            and [bp+0x69],ah
00003AB1  7265              jc 0x3b18
00003AB3  2020              and [bx+si],ah
00003AB5  2020              and [bx+si],ah
00003AB7  B129              mov cl,0x29
00003AB9  E8E2D2            call word 0xd9e
00003ABC  E821F4            call word 0x2ee0
00003ABF  B93200            mov cx,0x32
00003AC2  E833EC            call word 0x26f8
00003AC5  E878D2            call word 0xd40
00003AC8  286D69            sub [di+0x69],ch
00003ACB  67687420          push word 0x2074
00003ACF  6A75              push byte +0x75
00003AD1  6D                insw
00003AD2  7020              jo 0x3af4
00003AD4  6F                outsw
00003AD5  6E                outsb
00003AD6  652E2020          and [cs:bx+si],ah
00003ADA  46                inc si
00003ADB  6972656272        imul si,[bp+si+0x65],word 0x7262
00003AE0  6561              gs popaw
00003AE2  6B732061          imul si,[bp+di+0x20],byte +0x61
00003AE6  7265              jc 0x3b4d
00003AE8  206861            and [bx+si+0x61],ch
00003AEB  7264              jc 0x3b51
00003AED  20746F            and [si+0x6f],dh
00003AF0  20B129E8          and [bx+di-0x17d7],dh
00003AF4  A8D2              test al,0xd2
00003AF6  E8E7F3            call word 0x2ee0
00003AF9  B93200            mov cx,0x32
00003AFC  E8F9EB            call word 0x26f8
00003AFF  E83ED2            call word 0xd40
00003B02  286275            sub [bp+si+0x75],ah
00003B05  696C642C20        imul bp,[si+0x64],word 0x202c
00003B0A  61                popaw
00003B0B  6E                outsb
00003B0C  6420796F          and [fs:bx+di+0x6f],bh
00003B10  7520              jnz 0x3b32
00003B12  686176            push word 0x7661
00003B15  65206C69          and [gs:si+0x69],ch
00003B19  6D                insw
00003B1A  6974656420        imul si,[si+0x65],word 0x2064
00003B1F  776F              ja 0x3b90
00003B21  726B              jc 0x3b8e
00003B23  206372            and [bp+di+0x72],ah
00003B26  657773            gs ja 0x3b9c
00003B29  2C20              sub al,0x20
00003B2B  B129              mov cl,0x29
00003B2D  E86ED2            call word 0xd9e
00003B30  E8ADF3            call word 0x2ee0
00003B33  B93200            mov cx,0x32
00003B36  E8BFEB            call word 0x26f8
00003B39  E804D2            call word 0xd40
00003B3C  28736F            sub [bp+di+0x6f],dh
00003B3F  20796F            and [bx+di+0x6f],bh
00003B42  7520              jnz 0x3b64
00003B44  63616E            arpl [bx+di+0x6e],sp
00003B47  206F6E            and [bx+0x6e],ch
00003B4A  6C                insb
00003B4B  7920              jns 0x3b6d
00003B4D  627569            bound si,[di+0x69]
00003B50  6C                insb
00003B51  64206120          and [fs:bx+di+0x20],ah
00003B55  6C                insb
00003B56  696D697465        imul bp,[di+0x69],word 0x6574
00003B5B  64206E75          and [fs:bp+0x75],ch
00003B5F  6D                insw
00003B60  626572            bound sp,[di+0x72]
00003B63  2E20B129E8        and [cs:bx+di-0x17d7],dh
00003B68  34D2              xor al,0xd2
00003B6A  E873F3            call word 0x2ee0
00003B6D  B93200            mov cx,0x32
00003B70  E885EB            call word 0x26f8
00003B73  E8CAD1            call word 0xd40
00003B76  28596F            sub [bx+di+0x6f],bl
00003B79  7520              jnz 0x3b9b
00003B7B  7374              jnc 0x3bf1
00003B7D  61                popaw
00003B7E  7274              jc 0x3bf4
00003B80  207468            and [si+0x68],dh
00003B83  65206761          and [gs:bx+0x61],ah
00003B87  6D                insw
00003B88  65207769          and [gs:bx+0x69],dh
00003B8C  7468              jz 0x3bf6
00003B8E  207477            and [si+0x77],dh
00003B91  6F                outsw
00003B92  2C20              sub al,0x20
00003B94  61                popaw
00003B95  6E                outsb
00003B96  64206576          and [fs:di+0x76],ah
00003B9A  657279            gs jc 0x3c16
00003B9D  2020              and [bx+si],ah
00003B9F  B129              mov cl,0x29
00003BA1  E8FAD1            call word 0xd9e
00003BA4  E839F3            call word 0x2ee0
00003BA7  B93200            mov cx,0x32
00003BAA  E84BEB            call word 0x26f8
00003BAD  E890D1            call word 0xd40
00003BB0  286665            sub [bp+0x65],ah
00003BB3  7720              ja 0x3bd5
00003BB5  7475              jz 0x3c2c
00003BB7  726E              jc 0x3c27
00003BB9  7320              jnc 0x3bdb
00003BBB  796F              jns 0x3c2c
00003BBD  7520              jnz 0x3bdf
00003BBF  63616E            arpl [bx+di+0x6e],sp
00003BC2  206275            and [bp+si+0x75],ah
00003BC5  696C642061        imul bp,[si+0x64],word 0x6120
00003BCA  6E                outsb
00003BCB  6F                outsw
00003BCC  7468              jz 0x3c36
00003BCE  65722E            gs jc 0x3bff
00003BD1  2020              and [bx+si],ah
00003BD3  59                pop cx
00003BD4  6F                outsw
00003BD5  7572              jnz 0x3c49
00003BD7  2020              and [bx+si],ah
00003BD9  B129              mov cl,0x29
00003BDB  E8C0D1            call word 0xd9e
00003BDE  E8FFF2            call word 0x2ee0
00003BE1  B93200            mov cx,0x32
00003BE4  E811EB            call word 0x26f8
00003BE7  E856D1            call word 0xd40
00003BEA  286669            sub [bp+0x69],ah
00003BED  7265              jc 0x3c54
00003BEF  627265            bound si,[bp+si+0x65]
00003BF2  61                popaw
00003BF3  6B2073            imul sp,[bx+si],byte +0x73
00003BF6  7461              jz 0x3c59
00003BF8  7475              jz 0x3c6f
00003BFA  7320              jnc 0x3c1c
00003BFC  6973207368        imul si,[bp+di+0x20],word 0x6873
00003C01  6F                outsw
00003C02  776E              ja 0x3c72
00003C04  206F6E            and [bx+0x6e],ch
00003C07  207468            and [si+0x68],dh
00003C0A  65206761          and [gs:bx+0x61],ah
00003C0E  6D                insw
00003C0F  652020            and [gs:bx+si],ah
00003C12  20B129E8          and [bx+di-0x17d7],dh
00003C16  86D1              xchg dl,cl
00003C18  E8C5F2            call word 0x2ee0
00003C1B  B93200            mov cx,0x32
00003C1E  E8D7EA            call word 0x26f8
00003C21  E81CD1            call word 0xd40
00003C24  07                pop es
00003C25  7363              jnc 0x3c8a
00003C27  7265              jc 0x3c8e
00003C29  656E              gs outsb
00003C2B  2EB129            cs mov cl,0x29
00003C2E  E86DD1            call word 0xd9e
00003C31  E8ACF2            call word 0x2ee0
00003C34  E848E2            call word 0x1e7f
00003C37  E802E6            call word 0x223c
00003C3A  E830EB            call word 0x276d
00003C3D  B93200            mov cx,0x32
00003C40  E8B5EA            call word 0x26f8
00003C43  E8FAD0            call word 0xd40
00003C46  284120            sub [bx+di+0x20],al
00003C49  626163            bound sp,[bx+di+0x63]
00003C4C  6B666972          imul sp,[bp+0x69],byte +0x72
00003C50  65206973          and [gs:bx+di+0x73],ch
00003C54  206120            and [bx+di+0x20],ah
00003C57  6669726520796F75  imul esi,[bp+si+0x65],dword 0x756f7920
00003C5F  207374            and [bp+di+0x74],dh
00003C62  61                popaw
00003C63  7274              jc 0x3cd9
00003C65  20746F            and [si+0x6f],dh
00003C68  206372            and [bp+di+0x72],ah
00003C6B  6561              gs popaw
00003C6D  7465              jz 0x3cd4
00003C6F  B129              mov cl,0x29
00003C71  E82AD1            call word 0xd9e
00003C74  E869F2            call word 0x2ee0
00003C77  B93200            mov cx,0x32
00003C7A  E87BEA            call word 0x26f8
00003C7D  E8C0D0            call word 0xd40
00003C80  286120            sub [bx+di+0x20],ah
00003C83  627572            bound si,[di+0x72]
00003C86  6E                outsb
00003C87  65642D6F75        fs sub ax,0x756f
00003C8C  7420              jz 0x3cae
00003C8E  61                popaw
00003C8F  7265              jc 0x3cf6
00003C91  61                popaw
00003C92  2C20              sub al,0x20
00003C94  7768              ja 0x3cfe
00003C96  6963682077        imul sp,[bp+di+0x68],word 0x7720
00003C9B  696C6C2062        imul bp,[si+0x6c],word 0x6220
00003CA0  6C                insb
00003CA1  6F                outsw
00003CA2  636B20            arpl [bp+di+0x20],bp
00003CA5  66697265B129E8F0  imul esi,[bp+si+0x65],dword 0xf0e829b1
00003CAD  D0E8              shr al,1
00003CAF  2F                das
00003CB0  F2B93200          repne mov cx,0x32
00003CB4  E841EA            call word 0x26f8
00003CB7  E886D0            call word 0xd40
00003CBA  287370            sub [bp+di+0x70],dh
00003CBD  7265              jc 0x3d24
00003CBF  61                popaw
00003CC0  642E2020          and [cs:bx+si],ah
00003CC4  49                dec cx
00003CC5  7420              jz 0x3ce7
00003CC7  7769              ja 0x3d32
00003CC9  6C                insb
00003CCA  6C                insb
00003CCB  207370            and [bp+di+0x70],dh
00003CCE  7265              jc 0x3d35
00003CD0  61                popaw
00003CD1  64206C69          and [fs:si+0x69],ch
00003CD5  6B652061          imul sp,[di+0x20],byte +0x61
00003CD9  206E6F            and [bp+0x6f],ch
00003CDC  726D              jc 0x3d4b
00003CDE  61                popaw
00003CDF  6C                insb
00003CE0  2020              and [bx+si],ah
00003CE2  20B129E8          and [bx+di-0x17d7],dh
00003CE6  B6D0              mov dh,0xd0
00003CE8  E8F5F1            call word 0x2ee0
00003CEB  B93200            mov cx,0x32
00003CEE  E807EA            call word 0x26f8
00003CF1  E84CD0            call word 0xd40
00003CF4  286669            sub [bp+0x69],ah
00003CF7  7265              jc 0x3d5e
00003CF9  2C20              sub al,0x20
00003CFB  627574            bound si,[di+0x74]
00003CFE  207769            and [bx+0x69],dh
00003D01  6C                insb
00003D02  6C                insb
00003D03  206275            and [bp+si+0x75],ah
00003D06  726E              jc 0x3d76
00003D08  206F75            and [bx+0x75],ch
00003D0B  7420              jz 0x3d2d
00003D0D  7477              jz 0x3d86
00003D0F  6963652061        imul sp,[bp+di+0x65],word 0x6120
00003D14  7320              jnc 0x3d36
00003D16  6661              popad
00003D18  7374              jnc 0x3d8e
00003D1A  2E2020            and [cs:bx+si],ah
00003D1D  B129              mov cl,0x29
00003D1F  E87CD0            call word 0xd9e
00003D22  E8BBF1            call word 0x2ee0
00003D25  E857E1            call word 0x1e7f
00003D28  E811E5            call word 0x223c
00003D2B  E83FEA            call word 0x276d
00003D2E  E84EE1            call word 0x1e7f
00003D31  E808E5            call word 0x223c
00003D34  E836EA            call word 0x276d
00003D37  B90900            mov cx,0x9
00003D3A  E8BBE9            call word 0x26f8
00003D3D  E820F2            call word 0x2f60
00003D40  B93200            mov cx,0x32
00003D43  E8B2E9            call word 0x26f8
00003D46  E8F7CF            call word 0xd40
00003D49  284F6E            sub [bx+0x6e],cl
00003D4C  636520            arpl [di+0x20],sp
00003D4F  61                popaw
00003D50  6C                insb
00003D51  6C                insb
00003D52  207468            and [si+0x68],dh
00003D55  65206669          and [gs:bp+0x69],ah
00003D59  7265              jc 0x3dc0
00003D5B  7320              jnc 0x3d7d
00003D5D  61                popaw
00003D5E  7265              jc 0x3dc5
00003D60  206F75            and [bx+0x75],ch
00003D63  7420              jz 0x3d85
00003D65  7468              jz 0x3dcf
00003D67  65206761          and [gs:bx+0x61],ah
00003D6B  6D                insw
00003D6C  6520656E          and [gs:di+0x6e],ah
00003D70  6473B1            fs jnc 0x3d24
00003D73  29E8              sub ax,bp
00003D75  27                daa
00003D76  D0E8              shr al,1
00003D78  66F1              o32 int1
00003D7A  B93200            mov cx,0x32
00003D7D  E878E9            call word 0x26f8
00003D80  E8BDCF            call word 0xd40
00003D83  28616E            sub [bx+di+0x6e],ah
00003D86  6420796F          and [fs:bx+di+0x6f],bh
00003D8A  7520              jnz 0x3dac
00003D8C  67657420          gs jz 0x3db0
00003D90  796F              jns 0x3e01
00003D92  7572              jnz 0x3e06
00003D94  207363            and [bp+di+0x63],dh
00003D97  6F                outsw
00003D98  7265              jc 0x3dff
00003D9A  2C20              sub al,0x20
00003D9C  626173            bound sp,[bx+di+0x73]
00003D9F  6564206F6E        and [fs:bx+0x6e],ch
00003DA4  20686F            and [bx+si+0x6f],ch
00003DA7  7720              ja 0x3dc9
00003DA9  2020              and [bx+si],ah
00003DAB  20B129E8          and [bx+di-0x17d7],dh
00003DAF  ED                in ax,dx
00003DB0  CF                iretw
00003DB1  E82CF1            call word 0x2ee0
00003DB4  B93200            mov cx,0x32
00003DB7  E83EE9            call word 0x26f8
00003DBA  E883CF            call word 0xd40
00003DBD  286D61            sub [di+0x61],ch
00003DC0  6E                outsb
00003DC1  7920              jns 0x3de3
00003DC3  686F75            push word 0x756f
00003DC6  7365              jnc 0x3e2d
00003DC8  7320              jnc 0x3dea
00003DCA  61                popaw
00003DCB  6E                outsb
00003DCC  6420666F          and [fs:bp+0x6f],ah
00003DD0  7265              jc 0x3e37
00003DD2  7374              jnc 0x3e48
00003DD4  206172            and [bx+di+0x72],ah
00003DD7  6561              gs popaw
00003DD9  7320              jnc 0x3dfb
00003DDB  796F              jns 0x3e4c
00003DDD  7520              jnz 0x3dff
00003DDF  686176            push word 0x7661
00003DE2  652020            and [gs:bx+si],ah
00003DE5  20B129E8          and [bx+di-0x17d7],dh
00003DE9  B3CF              mov bl,0xcf
00003DEB  E8F2F0            call word 0x2ee0
00003DEE  B93200            mov cx,0x32
00003DF1  E804E9            call word 0x26f8
00003DF4  E849CF            call word 0xd40
00003DF7  287361            sub [bp+di+0x61],dh
00003DFA  7665              jna 0x3e61
00003DFC  642E2020          and [cs:bx+si],ah
00003E00  59                pop cx
00003E01  6F                outsw
00003E02  7520              jnz 0x3e24
00003E04  67657420          gs jz 0x3e28
00003E08  61                popaw
00003E09  207065            and [bx+si+0x65],dh
00003E0C  7266              jc 0x3e74
00003E0E  65637420          arpl [gs:si+0x20],si
00003E12  7363              jnc 0x3e77
00003E14  6F                outsw
00003E15  7265              jc 0x3e7c
00003E17  206966            and [bx+di+0x66],ch
00003E1A  20796F            and [bx+di+0x6f],bh
00003E1D  7520              jnz 0x3e3f
00003E1F  20B129E8          and [bx+di-0x17d7],dh
00003E23  79CF              jns 0x3df4
00003E25  E8B8F0            call word 0x2ee0
00003E28  B93200            mov cx,0x32
00003E2B  E8CAE8            call word 0x26f8
00003E2E  E80FCF            call word 0xd40
00003E31  287374            sub [bp+di+0x74],dh
00003E34  6F                outsw
00003E35  7020              jo 0x3e57
00003E37  61                popaw
00003E38  6C                insb
00003E39  6C                insb
00003E3A  207468            and [si+0x68],dh
00003E3D  6520696E          and [gs:bx+di+0x6e],ch
00003E41  6974616C20        imul si,[si+0x61],word 0x206c
00003E46  6669726573206265  imul esi,[bp+si+0x65],dword 0x65622073
00003E4E  666F              outsd
00003E50  7265              jc 0x3eb7
00003E52  207468            and [si+0x68],dh
00003E55  657920            gs jns 0x3e78
00003E58  2020              and [bx+si],ah
00003E5A  B129              mov cl,0x29
00003E5C  E83FCF            call word 0xd9e
00003E5F  E87EF0            call word 0x2ee0
00003E62  B93200            mov cx,0x32
00003E65  E890E8            call word 0x26f8
00003E68  E8D5CE            call word 0xd40
00003E6B  287370            sub [bp+di+0x70],dh
00003E6E  7265              jc 0x3ed5
00003E70  61                popaw
00003E71  642E2020          and [cs:bx+si],ah
00003E75  285468            sub [si+0x68],dl
00003E78  6973206973        imul si,[bp+di+0x20],word 0x7369
00003E7D  20616C            and [bx+di+0x6c],ah
00003E80  6D                insw
00003E81  6F                outsw
00003E82  7374              jnc 0x3ef8
00003E84  20696D            and [bx+di+0x6d],ch
00003E87  706F              jo 0x3ef8
00003E89  7373              jnc 0x3efe
00003E8B  69626C652E        imul sp,[bp+si+0x6c],word 0x2e65
00003E90  2920              sub [bx+si],sp
00003E92  2020              and [bx+si],ah
00003E94  B129              mov cl,0x29
00003E96  E805CF            call word 0xd9e
00003E99  E844F0            call word 0x2ee0
00003E9C  E8E0DF            call word 0x1e7f
00003E9F  E89AE3            call word 0x223c
00003EA2  E8C8E8            call word 0x276d
00003EA5  B93200            mov cx,0x32
00003EA8  E84DE8            call word 0x26f8
00003EAB  E892CE            call word 0xd40
00003EAE  285468            sub [si+0x68],dl
00003EB1  65206761          and [gs:bx+0x61],ah
00003EB5  6D                insw
00003EB6  65206861          and [gs:bx+si+0x61],ch
00003EBA  7320              jnc 0x3edc
00003EBC  7468              jz 0x3f26
00003EBE  7265              jc 0x3f25
00003EC0  65206469          and [gs:si+0x69],ah
00003EC4  66666963756C7479  imul esp,[bp+di+0x75],dword 0x2079746c
         -20
00003ECD  6C                insb
00003ECE  657665            gs jna 0x3f36
00003ED1  6C                insb
00003ED2  732E              jnc 0x3f02
00003ED4  2020              and [bx+si],ah
00003ED6  20B129E8          and [bx+di-0x17d7],dh
00003EDA  C2CEE8            ret 0xe8ce
00003EDD  01F0              add ax,si
00003EDF  B93200            mov cx,0x32
00003EE2  E813E8            call word 0x26f8
00003EE5  E858CE            call word 0xd40
00003EE8  284173            sub [bx+di+0x73],al
00003EEB  207468            and [si+0x68],dh
00003EEE  65206C65          and [gs:si+0x65],ch
00003EF2  7665              jna 0x3f59
00003EF4  6C                insb
00003EF5  20676F            and [bx+0x6f],ah
00003EF8  657320            gs jnc 0x3f1b
00003EFB  7570              jnz 0x3f6d
00003EFD  207468            and [si+0x68],dh
00003F00  657265            gs jc 0x3f68
00003F03  206172            and [bx+di+0x72],ah
00003F06  65206D6F          and [gs:di+0x6f],ch
00003F0A  7265              jc 0x3f71
00003F0C  2020              and [bx+si],ah
00003F0E  2020              and [bx+si],ah
00003F10  20B129E8          and [bx+di-0x17d7],dh
00003F14  88CE              mov dh,cl
00003F16  E8C7EF            call word 0x2ee0
00003F19  B93200            mov cx,0x32
00003F1C  E8D9E7            call word 0x26f8
00003F1F  E81ECE            call word 0xd40
00003F22  28686F            sub [bx+si+0x6f],ch
00003F25  7573              jnz 0x3f9a
00003F27  657320            gs jnc 0x3f4a
00003F2A  746F              jz 0x3f9b
00003F2C  207361            and [bp+di+0x61],dh
00003F2F  7665              jna 0x3f96
00003F31  2C20              sub al,0x20
00003F33  6D                insw
00003F34  6F                outsw
00003F35  7265              jc 0x3f9c
00003F37  20696E            and [bx+di+0x6e],ch
00003F3A  697469616C        imul si,[si+0x69],word 0x6c61
00003F3F  206669            and [bp+0x69],ah
00003F42  7265              jc 0x3fa9
00003F44  732C              jnc 0x3f72
00003F46  206665            and [bp+0x65],ah
00003F49  772D              ja 0x3f78
00003F4B  B129              mov cl,0x29
00003F4D  E84ECE            call word 0xd9e
00003F50  E88DEF            call word 0x2ee0
00003F53  B93200            mov cx,0x32
00003F56  E89FE7            call word 0x26f8
00003F59  E8E4CD            call word 0xd40
00003F5C  286572            sub [di+0x72],ah
00003F5F  206C61            and [si+0x61],ch
00003F62  6B65732C          imul sp,[di+0x73],byte +0x2c
00003F66  20616E            and [bx+di+0x6e],ah
00003F69  64206120          and [fs:bx+di+0x20],ah
00003F6D  677265            jc 0x3fd5
00003F70  61                popaw
00003F71  7465              jz 0x3fd8
00003F73  7220              jc 0x3f95
00003F75  706F              jo 0x3fe6
00003F77  7373              jnc 0x3fec
00003F79  69626C6520        imul sp,[bp+si+0x6c],word 0x2065
00003F7E  7363              jnc 0x3fe3
00003F80  6F                outsw
00003F81  7265              jc 0x3fe8
00003F83  2E20B129E8        and [cs:bx+di-0x17d7],dh
00003F88  14CE              adc al,0xce
00003F8A  E853EF            call word 0x2ee0
00003F8D  E8EFDE            call word 0x1e7f
00003F90  E8A9E2            call word 0x223c
00003F93  E8D7E7            call word 0x276d
00003F96  B93200            mov cx,0x32
00003F99  E85CE7            call word 0x26f8
00003F9C  E8A1CD            call word 0xd40
00003F9F  284F6E            sub [bx+0x6e],cl
00003FA2  636520            arpl [di+0x20],sp
00003FA5  7468              jz 0x400f
00003FA7  65206761          and [gs:bx+0x61],ah
00003FAB  6D                insw
00003FAC  65206861          and [gs:bx+si+0x61],ch
00003FB0  7320              jnc 0x3fd2
00003FB2  7374              jnc 0x4028
00003FB4  61                popaw
00003FB5  7274              jc 0x402b
00003FB7  65642C20          fs sub al,0x20
00003FBB  796F              jns 0x402c
00003FBD  7520              jnz 0x3fdf
00003FBF  63616E            arpl [bx+di+0x6e],sp
00003FC2  207175            and [bx+di+0x75],dh
00003FC5  697420B129        imul si,[si+0x20],word 0x29b1
00003FCA  E8D1CD            call word 0xd9e
00003FCD  E810EF            call word 0x2ee0
00003FD0  B93200            mov cx,0x32
00003FD3  E822E7            call word 0x26f8
00003FD6  E867CD            call word 0xd40
00003FD9  286279            sub [bp+si+0x79],ah
00003FDC  207479            and [si+0x79],dh
00003FDF  7069              jo 0x404a
00003FE1  6E                outsb
00003FE2  67205120          and [ecx+0x20],dl
00003FE6  696E737465        imul bp,[bp+0x73],word 0x6574
00003FEB  61                popaw
00003FEC  64206F66          and [fs:bx+0x66],ch
00003FF0  20442C            and [si+0x2c],al
00003FF3  20462C            and [bp+0x2c],al
00003FF6  206F72            and [bx+0x72],ch
00003FF9  20422E            and [bp+si+0x2e],al
00003FFC  2020              and [bx+si],ah
00003FFE  2020              and [bx+si],ah
00004000  2020              and [bx+si],ah
00004002  B129              mov cl,0x29
00004004  E897CD            call word 0xd9e
00004007  E8D6EE            call word 0x2ee0
0000400A  E872DE            call word 0x1e7f
0000400D  E82CE2            call word 0x223c
00004010  E85AE7            call word 0x276d
00004013  B93200            mov cx,0x32
00004016  E8DFE6            call word 0x26f8
00004019  E824CD            call word 0xd40
0000401C  284F6E            sub [bx+0x6e],cl
0000401F  65206869          and [gs:bx+si+0x69],ch
00004023  6E                outsb
00004024  743A              jz 0x4060
00004026  2020              and [bx+si],ah
00004028  57                push di
00004029  41                inc cx
0000402A  54                push sp
0000402B  43                inc bx
0000402C  48                dec ax
0000402D  205448            and [si+0x48],dl
00004030  45                inc bp
00004031  205749            and [bx+0x49],dl
00004034  4E                dec si
00004035  44                inc sp
00004036  2E2020            and [cs:bx+si],ah
00004039  47                inc di
0000403A  6F                outsw
0000403B  6F                outsw
0000403C  64206C75          and [fs:si+0x75],ch
00004040  636B2E            arpl [bp+di+0x2e],bp
00004043  2020              and [bx+si],ah
00004045  B129              mov cl,0x29
00004047  E854CD            call word 0xd9e
0000404A  E893EE            call word 0x2ee0
0000404D  E82FDE            call word 0x1e7f
00004050  E8E9E1            call word 0x223c
00004053  E817E7            call word 0x276d
00004056  E826DE            call word 0x1e7f
00004059  E8E0E1            call word 0x223c
0000405C  E80EE7            call word 0x276d
0000405F  B93200            mov cx,0x32
00004062  E893E6            call word 0x26f8
00004065  E8D8CC            call word 0xd40
00004068  285468            sub [si+0x68],dl
0000406B  6973206761        imul si,[bp+di+0x20],word 0x6167
00004070  6D                insw
00004071  65207761          and [gs:bx+0x61],dh
00004075  7320              jnc 0x4097
00004077  7772              ja 0x40eb
00004079  697474656E        imul si,[si+0x74],word 0x6e65
0000407E  206279            and [bp+si+0x79],ah
00004081  204562            and [di+0x62],al
00004084  656E              gs outsb
00004086  205370            and [bp+di+0x70],dl
00004089  7269              jc 0x40f4
0000408B  6E                outsb
0000408C  736F              jnc 0x40fd
0000408E  636B2C            arpl [bp+di+0x2c],bp
00004091  B129              mov cl,0x29
00004093  E808CD            call word 0xd9e
00004096  E847EE            call word 0x2ee0
00004099  B93200            mov cx,0x32
0000409C  E859E6            call word 0x26f8
0000409F  E89ECC            call word 0xd40
000040A2  2837              sub [bx],dh
000040A4  3035              xor [di],dh
000040A6  205368            and [bp+di+0x68],dl
000040A9  7261              jc 0x410c
000040AB  64657220          gs jc 0x40cf
000040AF  53                push bx
000040B0  742E              jz 0x40e0
000040B2  2C20              sub al,0x20
000040B4  53                push bx
000040B5  61                popaw
000040B6  6E                outsb
000040B7  204672            and [bp+0x72],al
000040BA  61                popaw
000040BB  6E                outsb
000040BC  636973            arpl [bx+di+0x73],bp
000040BF  636F2C            arpl [bx+0x2c],bp
000040C2  204341            and [bp+di+0x41],al
000040C5  2039              and [bx+di],bh
000040C7  3431              xor al,0x31
000040C9  3137              xor [bx],si
000040CB  B129              mov cl,0x29
000040CD  E8CECC            call word 0xd9e
000040D0  E80DEE            call word 0x2ee0
000040D3  B93200            mov cx,0x32
000040D6  E81FE6            call word 0x26f8
000040D9  E864CC            call word 0xd40
000040DC  286173            sub [bx+di+0x73],ah
000040DF  204672            and [bp+0x72],al
000040E2  65657761          gs ja 0x4147
000040E6  7265              jc 0x414d
000040E8  2E2020            and [cs:bx+si],ah
000040EB  54                push sp
000040EC  686520            push word 0x2065
000040EF  61                popaw
000040F0  7574              jnz 0x4166
000040F2  686F72            push word 0x726f
000040F5  207265            and [bp+si+0x65],dh
000040F8  7175              jno 0x416f
000040FA  657374            gs jnc 0x4171
000040FD  7320              jnc 0x411f
000040FF  2431              and al,0x31
00004101  3020              xor [bx+si],ah
00004103  2020              and [bx+si],ah
00004105  B129              mov cl,0x29
00004107  E894CC            call word 0xd9e
0000410A  E8D3ED            call word 0x2ee0
0000410D  B93200            mov cx,0x32
00004110  E8E5E5            call word 0x26f8
00004113  E82ACC            call word 0xd40
00004116  20666F            and [bp+0x6f],ah
00004119  7220              jc 0x413b
0000411B  657665            gs jna 0x4183
0000411E  7279              jc 0x4199
00004120  20636F            and [bp+di+0x6f],ah
00004123  7079              jo 0x419e
00004125  206D61            and [di+0x61],ch
00004128  6465206F66        and [gs:bx+0x66],ch
0000412D  207468            and [si+0x68],dh
00004130  65206761          and [gs:bx+0x61],ah
00004134  6D                insw
00004135  652EB129          cs mov cl,0x29
00004139  E862CC            call word 0xd9e
0000413C  E8A1ED            call word 0x2ee0
0000413F  E83DDD            call word 0x1e7f
00004142  E8F7E0            call word 0x223c
00004145  E825E6            call word 0x276d
00004148  B90900            mov cx,0x9
0000414B  E8AAE5            call word 0x26f8
0000414E  E80FEE            call word 0x2f60
00004151  E90000            jmp word 0x4154
00004154  8BE5              mov sp,bp
00004156  5D                pop bp
00004157  C3                ret
00004158  55                push bp
00004159  8BEC              mov bp,sp
0000415B  55                push bp
0000415C  E90000            jmp word 0x415f
0000415F  A08C15            mov al,[0x158c]
00004162  32E4              xor ah,ah
00004164  3D0000            cmp ax,0x0
00004167  B80100            mov ax,0x1
0000416A  7F01              jg 0x416d
0000416C  48                dec ax
0000416D  50                push ax
0000416E  A08C15            mov al,[0x158c]
00004171  32E4              xor ah,ah
00004173  3D0400            cmp ax,0x4
00004176  B80100            mov ax,0x1
00004179  7C01              jl 0x417c
0000417B  48                dec ax
0000417C  59                pop cx
0000417D  23C1              and ax,cx
0000417F  0BC0              or ax,ax
00004181  7503              jnz 0x4186
00004183  E91500            jmp word 0x419b
00004186  C47E04            les di,[bp+0x4]
00004189  06                push es
0000418A  57                push di
0000418B  8A460C            mov al,[bp+0xc]
0000418E  32E4              xor ah,ah
00004190  050100            add ax,0x1
00004193  5F                pop di
00004194  07                pop es
00004195  268905            mov [es:di],ax
00004198  E94B00            jmp word 0x41e6
0000419B  A08C15            mov al,[0x158c]
0000419E  32E4              xor ah,ah
000041A0  3D0400            cmp ax,0x4
000041A3  B80100            mov ax,0x1
000041A6  7F01              jg 0x41a9
000041A8  48                dec ax
000041A9  50                push ax
000041AA  A08C15            mov al,[0x158c]
000041AD  32E4              xor ah,ah
000041AF  3D0700            cmp ax,0x7
000041B2  B80100            mov ax,0x1
000041B5  7E01              jng 0x41b8
000041B7  48                dec ax
000041B8  59                pop cx
000041B9  23C1              and ax,cx
000041BB  0BC0              or ax,ax
000041BD  7503              jnz 0x41c2
000041BF  E91500            jmp word 0x41d7
000041C2  C47E04            les di,[bp+0x4]
000041C5  06                push es
000041C6  57                push di
000041C7  8A460C            mov al,[bp+0xc]
000041CA  32E4              xor ah,ah
000041CC  2D0100            sub ax,0x1
000041CF  5F                pop di
000041D0  07                pop es
000041D1  268905            mov [es:di],ax
000041D4  E90F00            jmp word 0x41e6
000041D7  C47E04            les di,[bp+0x4]
000041DA  06                push es
000041DB  57                push di
000041DC  8A460C            mov al,[bp+0xc]
000041DF  32E4              xor ah,ah
000041E1  5F                pop di
000041E2  07                pop es
000041E3  268905            mov [es:di],ax
000041E6  A08C15            mov al,[0x158c]
000041E9  32E4              xor ah,ah
000041EB  3D0200            cmp ax,0x2
000041EE  B80100            mov ax,0x1
000041F1  7C01              jl 0x41f4
000041F3  48                dec ax
000041F4  50                push ax
000041F5  A08C15            mov al,[0x158c]
000041F8  32E4              xor ah,ah
000041FA  3D0600            cmp ax,0x6
000041FD  B80100            mov ax,0x1
00004200  7F01              jg 0x4203
00004202  48                dec ax
00004203  59                pop cx
00004204  0BC1              or ax,cx
00004206  0BC0              or ax,ax
00004208  7503              jnz 0x420d
0000420A  E91500            jmp word 0x4222
0000420D  C47E08            les di,[bp+0x8]
00004210  06                push es
00004211  57                push di
00004212  8A460E            mov al,[bp+0xe]
00004215  32E4              xor ah,ah
00004217  2D0100            sub ax,0x1
0000421A  5F                pop di
0000421B  07                pop es
0000421C  268905            mov [es:di],ax
0000421F  E94B00            jmp word 0x426d
00004222  A08C15            mov al,[0x158c]
00004225  32E4              xor ah,ah
00004227  3D0200            cmp ax,0x2
0000422A  B80100            mov ax,0x1
0000422D  7F01              jg 0x4230
0000422F  48                dec ax
00004230  50                push ax
00004231  A08C15            mov al,[0x158c]
00004234  32E4              xor ah,ah
00004236  3D0600            cmp ax,0x6
00004239  B80100            mov ax,0x1
0000423C  7C01              jl 0x423f
0000423E  48                dec ax
0000423F  59                pop cx
00004240  23C1              and ax,cx
00004242  0BC0              or ax,ax
00004244  7503              jnz 0x4249
00004246  E91500            jmp word 0x425e
00004249  C47E08            les di,[bp+0x8]
0000424C  06                push es
0000424D  57                push di
0000424E  8A460E            mov al,[bp+0xe]
00004251  32E4              xor ah,ah
00004253  050100            add ax,0x1
00004256  5F                pop di
00004257  07                pop es
00004258  268905            mov [es:di],ax
0000425B  E90F00            jmp word 0x426d
0000425E  C47E08            les di,[bp+0x8]
00004261  06                push es
00004262  57                push di
00004263  8A460E            mov al,[bp+0xe]
00004266  32E4              xor ah,ah
00004268  5F                pop di
00004269  07                pop es
0000426A  268905            mov [es:di],ax
0000426D  E90000            jmp word 0x4270
00004270  8BE5              mov sp,bp
00004272  5D                pop bp
00004273  C20C00            ret 0xc
00004276  55                push bp
00004277  8BEC              mov bp,sp
00004279  55                push bp
0000427A  E90000            jmp word 0x427d
0000427D  A08C15            mov al,[0x158c]
00004280  32E4              xor ah,ah
00004282  3D0000            cmp ax,0x0
00004285  B80100            mov ax,0x1
00004288  7F01              jg 0x428b
0000428A  48                dec ax
0000428B  50                push ax
0000428C  A08C15            mov al,[0x158c]
0000428F  32E4              xor ah,ah
00004291  3D0400            cmp ax,0x4
00004294  B80100            mov ax,0x1
00004297  7C01              jl 0x429a
00004299  48                dec ax
0000429A  59                pop cx
0000429B  23C1              and ax,cx
0000429D  0BC0              or ax,ax
0000429F  7503              jnz 0x42a4
000042A1  E91500            jmp word 0x42b9
000042A4  C47E04            les di,[bp+0x4]
000042A7  06                push es
000042A8  57                push di
000042A9  8A460C            mov al,[bp+0xc]
000042AC  32E4              xor ah,ah
000042AE  2D0100            sub ax,0x1
000042B1  5F                pop di
000042B2  07                pop es
000042B3  268905            mov [es:di],ax
000042B6  E94B00            jmp word 0x4304
000042B9  A08C15            mov al,[0x158c]
000042BC  32E4              xor ah,ah
000042BE  3D0400            cmp ax,0x4
000042C1  B80100            mov ax,0x1
000042C4  7F01              jg 0x42c7
000042C6  48                dec ax
000042C7  50                push ax
000042C8  A08C15            mov al,[0x158c]
000042CB  32E4              xor ah,ah
000042CD  3D0700            cmp ax,0x7
000042D0  B80100            mov ax,0x1
000042D3  7E01              jng 0x42d6
000042D5  48                dec ax
000042D6  59                pop cx
000042D7  23C1              and ax,cx
000042D9  0BC0              or ax,ax
000042DB  7503              jnz 0x42e0
000042DD  E91500            jmp word 0x42f5
000042E0  C47E04            les di,[bp+0x4]
000042E3  06                push es
000042E4  57                push di
000042E5  8A460C            mov al,[bp+0xc]
000042E8  32E4              xor ah,ah
000042EA  050100            add ax,0x1
000042ED  5F                pop di
000042EE  07                pop es
000042EF  268905            mov [es:di],ax
000042F2  E90F00            jmp word 0x4304
000042F5  C47E04            les di,[bp+0x4]
000042F8  06                push es
000042F9  57                push di
000042FA  8A460C            mov al,[bp+0xc]
000042FD  32E4              xor ah,ah
000042FF  5F                pop di
00004300  07                pop es
00004301  268905            mov [es:di],ax
00004304  A08C15            mov al,[0x158c]
00004307  32E4              xor ah,ah
00004309  3D0200            cmp ax,0x2
0000430C  B80100            mov ax,0x1
0000430F  7C01              jl 0x4312
00004311  48                dec ax
00004312  50                push ax
00004313  A08C15            mov al,[0x158c]
00004316  32E4              xor ah,ah
00004318  3D0600            cmp ax,0x6
0000431B  B80100            mov ax,0x1
0000431E  7F01              jg 0x4321
00004320  48                dec ax
00004321  59                pop cx
00004322  0BC1              or ax,cx
00004324  0BC0              or ax,ax
00004326  7503              jnz 0x432b
00004328  E91500            jmp word 0x4340
0000432B  C47E08            les di,[bp+0x8]
0000432E  06                push es
0000432F  57                push di
00004330  8A460E            mov al,[bp+0xe]
00004333  32E4              xor ah,ah
00004335  050100            add ax,0x1
00004338  5F                pop di
00004339  07                pop es
0000433A  268905            mov [es:di],ax
0000433D  E94B00            jmp word 0x438b
00004340  A08C15            mov al,[0x158c]
00004343  32E4              xor ah,ah
00004345  3D0200            cmp ax,0x2
00004348  B80100            mov ax,0x1
0000434B  7F01              jg 0x434e
0000434D  48                dec ax
0000434E  50                push ax
0000434F  A08C15            mov al,[0x158c]
00004352  32E4              xor ah,ah
00004354  3D0600            cmp ax,0x6
00004357  B80100            mov ax,0x1
0000435A  7C01              jl 0x435d
0000435C  48                dec ax
0000435D  59                pop cx
0000435E  23C1              and ax,cx
00004360  0BC0              or ax,ax
00004362  7503              jnz 0x4367
00004364  E91500            jmp word 0x437c
00004367  C47E08            les di,[bp+0x8]
0000436A  06                push es
0000436B  57                push di
0000436C  8A460E            mov al,[bp+0xe]
0000436F  32E4              xor ah,ah
00004371  2D0100            sub ax,0x1
00004374  5F                pop di
00004375  07                pop es
00004376  268905            mov [es:di],ax
00004379  E90F00            jmp word 0x438b
0000437C  C47E08            les di,[bp+0x8]
0000437F  06                push es
00004380  57                push di
00004381  8A460E            mov al,[bp+0xe]
00004384  32E4              xor ah,ah
00004386  5F                pop di
00004387  07                pop es
00004388  268905            mov [es:di],ax
0000438B  E90000            jmp word 0x438e
0000438E  8BE5              mov sp,bp
00004390  5D                pop bp
00004391  C20C00            ret 0xc
00004394  55                push bp
00004395  8BEC              mov bp,sp
00004397  55                push bp
00004398  E90000            jmp word 0x439b
0000439B  83EC04            sub sp,byte +0x4
0000439E  B91200            mov cx,0x12
000043A1  E854E3            call word 0x26f8
000043A4  8A460A            mov al,[bp+0xa]
000043A7  32E4              xor ah,ah
000043A9  50                push ax
000043AA  8A4608            mov al,[bp+0x8]
000043AD  32E4              xor ah,ah
000043AF  50                push ax
000043B0  8D7EFC            lea di,[bp-0x4]
000043B3  16                push ss
000043B4  57                push di
000043B5  8D7EFA            lea di,[bp-0x6]
000043B8  16                push ss
000043B9  57                push di
000043BA  E89BFD            call word 0x4158
000043BD  8B4606            mov ax,[bp+0x6]
000043C0  3B46FC            cmp ax,[bp-0x4]
000043C3  B80100            mov ax,0x1
000043C6  7401              jz 0x43c9
000043C8  48                dec ax
000043C9  50                push ax
000043CA  8B4604            mov ax,[bp+0x4]
000043CD  3B46FA            cmp ax,[bp-0x6]
000043D0  B80100            mov ax,0x1
000043D3  7401              jz 0x43d6
000043D5  48                dec ax
000043D6  59                pop cx
000043D7  23C1              and ax,cx
000043D9  0BC0              or ax,ax
000043DB  7503              jnz 0x43e0
000043DD  E90900            jmp word 0x43e9
000043E0  B80100            mov ax,0x1
000043E3  88460C            mov [bp+0xc],al
000043E6  E90600            jmp word 0x43ef
000043E9  B80000            mov ax,0x0
000043EC  88460C            mov [bp+0xc],al
000043EF  E90000            jmp word 0x43f2
000043F2  8A460C            mov al,[bp+0xc]
000043F5  32E4              xor ah,ah
000043F7  0BC0              or ax,ax
000043F9  8BE5              mov sp,bp
000043FB  5D                pop bp
000043FC  C20900            ret 0x9
000043FF  55                push bp
00004400  8BEC              mov bp,sp
00004402  55                push bp
00004403  E90000            jmp word 0x4406
00004406  83EC04            sub sp,byte +0x4
00004409  B91200            mov cx,0x12
0000440C  E8E9E2            call word 0x26f8
0000440F  8A460A            mov al,[bp+0xa]
00004412  32E4              xor ah,ah
00004414  50                push ax
00004415  8A4608            mov al,[bp+0x8]
00004418  32E4              xor ah,ah
0000441A  50                push ax
0000441B  8D7EFC            lea di,[bp-0x4]
0000441E  16                push ss
0000441F  57                push di
00004420  8D7EFA            lea di,[bp-0x6]
00004423  16                push ss
00004424  57                push di
00004425  E84EFE            call word 0x4276
00004428  8B4606            mov ax,[bp+0x6]
0000442B  3B46FC            cmp ax,[bp-0x4]
0000442E  B80100            mov ax,0x1
00004431  7401              jz 0x4434
00004433  48                dec ax
00004434  50                push ax
00004435  8B4604            mov ax,[bp+0x4]
00004438  3B46FA            cmp ax,[bp-0x6]
0000443B  B80100            mov ax,0x1
0000443E  7401              jz 0x4441
00004440  48                dec ax
00004441  59                pop cx
00004442  23C1              and ax,cx
00004444  0BC0              or ax,ax
00004446  7503              jnz 0x444b
00004448  E90900            jmp word 0x4454
0000444B  B80100            mov ax,0x1
0000444E  88460C            mov [bp+0xc],al
00004451  E90600            jmp word 0x445a
00004454  B80000            mov ax,0x0
00004457  88460C            mov [bp+0xc],al
0000445A  E90000            jmp word 0x445d
0000445D  8A460C            mov al,[bp+0xc]
00004460  32E4              xor ah,ah
00004462  0BC0              or ax,ax
00004464  8BE5              mov sp,bp
00004466  5D                pop bp
00004467  C20900            ret 0x9
0000446A  55                push bp
0000446B  8BEC              mov bp,sp
0000446D  55                push bp
0000446E  E90000            jmp word 0x4471
00004471  8B4606            mov ax,[bp+0x6]
00004474  3D0100            cmp ax,0x1
00004477  B80100            mov ax,0x1
0000447A  7D01              jnl 0x447d
0000447C  48                dec ax
0000447D  50                push ax
0000447E  8B4606            mov ax,[bp+0x6]
00004481  3D1900            cmp ax,0x19
00004484  B80100            mov ax,0x1
00004487  7E01              jng 0x448a
00004489  48                dec ax
0000448A  59                pop cx
0000448B  23C1              and ax,cx
0000448D  50                push ax
0000448E  8B4604            mov ax,[bp+0x4]
00004491  3D0100            cmp ax,0x1
00004494  B80100            mov ax,0x1
00004497  7D01              jnl 0x449a
00004499  48                dec ax
0000449A  59                pop cx
0000449B  23C1              and ax,cx
0000449D  50                push ax
0000449E  8B4604            mov ax,[bp+0x4]
000044A1  3D1900            cmp ax,0x19
000044A4  B80100            mov ax,0x1
000044A7  7E01              jng 0x44aa
000044A9  48                dec ax
000044AA  59                pop cx
000044AB  23C1              and ax,cx
000044AD  0BC0              or ax,ax
000044AF  7503              jnz 0x44b4
000044B1  E90900            jmp word 0x44bd
000044B4  B80100            mov ax,0x1
000044B7  884608            mov [bp+0x8],al
000044BA  E90600            jmp word 0x44c3
000044BD  B80000            mov ax,0x0
000044C0  884608            mov [bp+0x8],al
000044C3  E90000            jmp word 0x44c6
000044C6  8A4608            mov al,[bp+0x8]
000044C9  32E4              xor ah,ah
000044CB  0BC0              or ax,ax
000044CD  8BE5              mov sp,bp
000044CF  5D                pop bp
000044D0  C20500            ret 0x5
000044D3  55                push bp
000044D4  8BEC              mov bp,sp
000044D6  55                push bp
000044D7  E90000            jmp word 0x44da
000044DA  50                push ax
000044DB  B80100            mov ax,0x1
000044DE  50                push ax
000044DF  A17E15            mov ax,[0x157e]
000044E2  59                pop cx
000044E3  91                xchg ax,cx
000044E4  2BC8              sub cx,ax
000044E6  7D03              jnl 0x44eb
000044E8  E99601            jmp word 0x4681
000044EB  41                inc cx
000044EC  8946FC            mov [bp-0x4],ax
000044EF  51                push cx
000044F0  8B46FC            mov ax,[bp-0x4]
000044F3  48                dec ax
000044F4  03C0              add ax,ax
000044F6  03C0              add ax,ax
000044F8  97                xchg ax,di
000044F9  81C71315          add di,0x1513
000044FD  1E                push ds
000044FE  57                push di
000044FF  C47EF6            les di,[bp-0xa]
00004502  268A4502          mov al,[es:di+0x2]
00004506  32E4              xor ah,ah
00004508  50                push ax
00004509  8A4608            mov al,[bp+0x8]
0000450C  32E4              xor ah,ah
0000450E  2D0100            sub ax,0x1
00004511  59                pop cx
00004512  91                xchg ax,cx
00004513  3BC1              cmp ax,cx
00004515  B80100            mov ax,0x1
00004518  7D01              jnl 0x451b
0000451A  48                dec ax
0000451B  50                push ax
0000451C  C47EF6            les di,[bp-0xa]
0000451F  268A4502          mov al,[es:di+0x2]
00004523  32E4              xor ah,ah
00004525  50                push ax
00004526  8A4608            mov al,[bp+0x8]
00004529  32E4              xor ah,ah
0000452B  050100            add ax,0x1
0000452E  59                pop cx
0000452F  91                xchg ax,cx
00004530  3BC1              cmp ax,cx
00004532  B80100            mov ax,0x1
00004535  7E01              jng 0x4538
00004537  48                dec ax
00004538  59                pop cx
00004539  23C1              and ax,cx
0000453B  50                push ax
0000453C  C47EF6            les di,[bp-0xa]
0000453F  268A4503          mov al,[es:di+0x3]
00004543  32E4              xor ah,ah
00004545  50                push ax
00004546  8A4606            mov al,[bp+0x6]
00004549  32E4              xor ah,ah
0000454B  2D0100            sub ax,0x1
0000454E  59                pop cx
0000454F  91                xchg ax,cx
00004550  3BC1              cmp ax,cx
00004552  B80100            mov ax,0x1
00004555  7D01              jnl 0x4558
00004557  48                dec ax
00004558  59                pop cx
00004559  23C1              and ax,cx
0000455B  50                push ax
0000455C  C47EF6            les di,[bp-0xa]
0000455F  268A4503          mov al,[es:di+0x3]
00004563  32E4              xor ah,ah
00004565  50                push ax
00004566  8A4606            mov al,[bp+0x6]
00004569  32E4              xor ah,ah
0000456B  050100            add ax,0x1
0000456E  59                pop cx
0000456F  91                xchg ax,cx
00004570  3BC1              cmp ax,cx
00004572  B80100            mov ax,0x1
00004575  7E01              jng 0x4578
00004577  48                dec ax
00004578  59                pop cx
00004579  23C1              and ax,cx
0000457B  0BC0              or ax,ax
0000457D  7503              jnz 0x4582
0000457F  E9F300            jmp word 0x4675
00004582  8A4604            mov al,[bp+0x4]
00004585  32E4              xor ah,ah
00004587  0BC0              or ax,ax
00004589  7503              jnz 0x458e
0000458B  E97B00            jmp word 0x4609
0000458E  C47EF6            les di,[bp-0xa]
00004591  268B05            mov ax,[es:di]
00004594  3D0000            cmp ax,0x0
00004597  7403              jz 0x459c
00004599  E95700            jmp word 0x45f3
0000459C  C47EF6            les di,[bp-0xa]
0000459F  268A4502          mov al,[es:di+0x2]
000045A3  32E4              xor ah,ah
000045A5  48                dec ax
000045A6  B9C800            mov cx,0xc8
000045A9  F7E1              mul cx
000045AB  97                xchg ax,di
000045AC  57                push di
000045AD  C47EF6            les di,[bp-0xa]
000045B0  268A4503          mov al,[es:di+0x3]
000045B4  32E4              xor ah,ah
000045B6  48                dec ax
000045B7  B90800            mov cx,0x8
000045BA  F7E1              mul cx
000045BC  5F                pop di
000045BD  03F8              add di,ax
000045BF  57                push di
000045C0  B80100            mov ax,0x1
000045C3  5F                pop di
000045C4  88859001          mov [di+0x190],al
000045C8  B80100            mov ax,0x1
000045CB  A27A15            mov [0x157a],al
000045CE  C47EF6            les di,[bp-0xa]
000045D1  268A4503          mov al,[es:di+0x3]
000045D5  32E4              xor ah,ah
000045D7  50                push ax
000045D8  C47EF6            les di,[bp-0xa]
000045DB  268A4502          mov al,[es:di+0x2]
000045DF  32E4              xor ah,ah
000045E1  E87BBD            call word 0x35f
000045E4  B90800            mov cx,0x8
000045E7  E80EE1            call word 0x26f8
000045EA  E843E6            call word 0x2c30
000045ED  B80000            mov ax,0x0
000045F0  A27A15            mov [0x157a],al
000045F3  C47EF6            les di,[bp-0xa]
000045F6  06                push es
000045F7  57                push di
000045F8  C47EF6            les di,[bp-0xa]
000045FB  268B05            mov ax,[es:di]
000045FE  050100            add ax,0x1
00004601  5F                pop di
00004602  07                pop es
00004603  268905            mov [es:di],ax
00004606  E96C00            jmp word 0x4675
00004609  C47EF6            les di,[bp-0xa]
0000460C  06                push es
0000460D  57                push di
0000460E  C47EF6            les di,[bp-0xa]
00004611  268B05            mov ax,[es:di]
00004614  2D0100            sub ax,0x1
00004617  5F                pop di
00004618  07                pop es
00004619  268905            mov [es:di],ax
0000461C  C47EF6            les di,[bp-0xa]
0000461F  268B05            mov ax,[es:di]
00004622  3D0000            cmp ax,0x0
00004625  7403              jz 0x462a
00004627  E94B00            jmp word 0x4675
0000462A  C47EF6            les di,[bp-0xa]
0000462D  268A4502          mov al,[es:di+0x2]
00004631  32E4              xor ah,ah
00004633  48                dec ax
00004634  B9C800            mov cx,0xc8
00004637  F7E1              mul cx
00004639  97                xchg ax,di
0000463A  57                push di
0000463B  C47EF6            les di,[bp-0xa]
0000463E  268A4503          mov al,[es:di+0x3]
00004642  32E4              xor ah,ah
00004644  48                dec ax
00004645  B90800            mov cx,0x8
00004648  F7E1              mul cx
0000464A  5F                pop di
0000464B  03F8              add di,ax
0000464D  57                push di
0000464E  B80000            mov ax,0x0
00004651  5F                pop di
00004652  88859001          mov [di+0x190],al
00004656  C47EF6            les di,[bp-0xa]
00004659  268A4503          mov al,[es:di+0x3]
0000465D  32E4              xor ah,ah
0000465F  50                push ax
00004660  C47EF6            les di,[bp-0xa]
00004663  268A4502          mov al,[es:di+0x2]
00004667  32E4              xor ah,ah
00004669  E8F3BC            call word 0x35f
0000466C  B90800            mov cx,0x8
0000466F  E886E0            call word 0x26f8
00004672  E8BBE5            call word 0x2c30
00004675  58                pop ax
00004676  58                pop ax
00004677  59                pop cx
00004678  49                dec cx
00004679  7406              jz 0x4681
0000467B  FF46FC            inc word [bp-0x4]
0000467E  E96EFE            jmp word 0x44ef
00004681  E90000            jmp word 0x4684
00004684  8BE5              mov sp,bp
00004686  5D                pop bp
00004687  C20600            ret 0x6
0000468A  55                push bp
0000468B  8BEC              mov bp,sp
0000468D  55                push bp
0000468E  E90000            jmp word 0x4691
00004691  50                push ax
00004692  B80100            mov ax,0x1
00004695  50                push ax
00004696  A17E15            mov ax,[0x157e]
00004699  59                pop cx
0000469A  91                xchg ax,cx
0000469B  2BC8              sub cx,ax
0000469D  7D03              jnl 0x46a2
0000469F  E97900            jmp word 0x471b
000046A2  41                inc cx
000046A3  8946FC            mov [bp-0x4],ax
000046A6  51                push cx
000046A7  8B46FC            mov ax,[bp-0x4]
000046AA  48                dec ax
000046AB  03C0              add ax,ax
000046AD  03C0              add ax,ax
000046AF  97                xchg ax,di
000046B0  81C71315          add di,0x1513
000046B4  1E                push ds
000046B5  57                push di
000046B6  C47EF6            les di,[bp-0xa]
000046B9  268A4502          mov al,[es:di+0x2]
000046BD  32E4              xor ah,ah
000046BF  50                push ax
000046C0  8A4606            mov al,[bp+0x6]
000046C3  32E4              xor ah,ah
000046C5  59                pop cx
000046C6  91                xchg ax,cx
000046C7  3BC1              cmp ax,cx
000046C9  B80100            mov ax,0x1
000046CC  7401              jz 0x46cf
000046CE  48                dec ax
000046CF  50                push ax
000046D0  C47EF6            les di,[bp-0xa]
000046D3  268A4503          mov al,[es:di+0x3]
000046D7  32E4              xor ah,ah
000046D9  50                push ax
000046DA  8A4604            mov al,[bp+0x4]
000046DD  32E4              xor ah,ah
000046DF  59                pop cx
000046E0  91                xchg ax,cx
000046E1  3BC1              cmp ax,cx
000046E3  B80100            mov ax,0x1
000046E6  7401              jz 0x46e9
000046E8  48                dec ax
000046E9  59                pop cx
000046EA  23C1              and ax,cx
000046EC  0BC0              or ax,ax
000046EE  7503              jnz 0x46f3
000046F0  E91C00            jmp word 0x470f
000046F3  C47EF6            les di,[bp-0xa]
000046F6  06                push es
000046F7  57                push di
000046F8  B80000            mov ax,0x0
000046FB  5F                pop di
000046FC  07                pop es
000046FD  26884502          mov [es:di+0x2],al
00004701  C47EF6            les di,[bp-0xa]
00004704  06                push es
00004705  57                push di
00004706  B80000            mov ax,0x0
00004709  5F                pop di
0000470A  07                pop es
0000470B  26884503          mov [es:di+0x3],al
0000470F  58                pop ax
00004710  58                pop ax
00004711  59                pop cx
00004712  49                dec cx
00004713  7406              jz 0x471b
00004715  FF46FC            inc word [bp-0x4]
00004718  E98BFF            jmp word 0x46a6
0000471B  E90000            jmp word 0x471e
0000471E  8BE5              mov sp,bp
00004720  5D                pop bp
00004721  C20400            ret 0x4
00004724  55                push bp
00004725  8BEC              mov bp,sp
00004727  55                push bp
00004728  E90000            jmp word 0x472b
0000472B  83EC0D            sub sp,byte +0xd
0000472E  B83200            mov ax,0x32
00004731  8946F6            mov [bp-0xa],ax
00004734  B90800            mov cx,0x8
00004737  E8BEDF            call word 0x26f8
0000473A  50                push ax
0000473B  E8FAE3            call word 0x2b38
0000473E  3B46F6            cmp ax,[bp-0xa]
00004741  7F03              jg 0x4746
00004743  E90900            jmp word 0x474f
00004746  B80100            mov ax,0x1
00004749  8946F4            mov [bp-0xc],ax
0000474C  E90600            jmp word 0x4755
0000474F  B80200            mov ax,0x2
00004752  8946F4            mov [bp-0xc],ax
00004755  B80000            mov ax,0x0
00004758  8946F2            mov [bp-0xe],ax
0000475B  A18D15            mov ax,[0x158d]
0000475E  3D1400            cmp ax,0x14
00004761  7F03              jg 0x4766
00004763  E91E00            jmp word 0x4784
00004766  B90800            mov cx,0x8
00004769  E88CDF            call word 0x26f8
0000476C  50                push ax
0000476D  E8C8E3            call word 0x2b38
00004770  3B46F6            cmp ax,[bp-0xa]
00004773  7C03              jl 0x4778
00004775  E90C00            jmp word 0x4784
00004778  B80100            mov ax,0x1
0000477B  8946F2            mov [bp-0xe],ax
0000477E  B80100            mov ax,0x1
00004781  8946F4            mov [bp-0xc],ax
00004784  A07715            mov al,[0x1577]
00004787  32E4              xor ah,ah
00004789  48                dec ax
0000478A  B9C800            mov cx,0xc8
0000478D  F7E1              mul cx
0000478F  97                xchg ax,di
00004790  57                push di
00004791  A07815            mov al,[0x1578]
00004794  32E4              xor ah,ah
00004796  48                dec ax
00004797  B90800            mov cx,0x8
0000479A  F7E1              mul cx
0000479C  5F                pop di
0000479D  03F8              add di,ax
0000479F  81C78B01          add di,0x18b
000047A3  1E                push ds
000047A4  57                push di
000047A5  C47EED            les di,[bp-0x13]
000047A8  268A4504          mov al,[es:di+0x4]
000047AC  32E4              xor ah,ah
000047AE  8846F1            mov [bp-0xf],al
000047B1  B80100            mov ax,0x1
000047B4  50                push ax
000047B5  8B46F4            mov ax,[bp-0xc]
000047B8  59                pop cx
000047B9  91                xchg ax,cx
000047BA  2BC8              sub cx,ax
000047BC  7D03              jnl 0x47c1
000047BE  E97C01            jmp word 0x493d
000047C1  41                inc cx
000047C2  8946FC            mov [bp-0x4],ax
000047C5  51                push cx
000047C6  C47EED            les di,[bp-0x13]
000047C9  268A4506          mov al,[es:di+0x6]
000047CD  32E4              xor ah,ah
000047CF  0BC0              or ax,ax
000047D1  7503              jnz 0x47d6
000047D3  E91900            jmp word 0x47ef
000047D6  8A46F1            mov al,[bp-0xf]
000047D9  32E4              xor ah,ah
000047DB  3D0A00            cmp ax,0xa
000047DE  7C03              jl 0x47e3
000047E0  E90900            jmp word 0x47ec
000047E3  8A46F1            mov al,[bp-0xf]
000047E6  32E4              xor ah,ah
000047E8  40                inc ax
000047E9  8846F1            mov [bp-0xf],al
000047EC  E96600            jmp word 0x4855
000047EF  C47EED            les di,[bp-0x13]
000047F2  268A4504          mov al,[es:di+0x4]
000047F6  32E4              xor ah,ah
000047F8  3D0300            cmp ax,0x3
000047FB  7C03              jl 0x4800
000047FD  E95500            jmp word 0x4855
00004800  C47EED            les di,[bp-0x13]
00004803  06                push es
00004804  57                push di
00004805  C47EED            les di,[bp-0x13]
00004808  268B05            mov ax,[es:di]
0000480B  50                push ax
0000480C  A18F15            mov ax,[0x158f]
0000480F  B90400            mov cx,0x4
00004812  99                cwd
00004813  F7F9              idiv cx
00004815  59                pop cx
00004816  91                xchg ax,cx
00004817  2BC1              sub ax,cx
00004819  50                push ax
0000481A  A18F15            mov ax,[0x158f]
0000481D  50                push ax
0000481E  B90800            mov cx,0x8
00004821  E8D4DE            call word 0x26f8
00004824  50                push ax
00004825  E810E3            call word 0x2b38
00004828  59                pop cx
00004829  F7E9              imul cx
0000482B  B9C800            mov cx,0xc8
0000482E  99                cwd
0000482F  F7F9              idiv cx
00004831  59                pop cx
00004832  91                xchg ax,cx
00004833  2BC1              sub ax,cx
00004835  5F                pop di
00004836  07                pop es
00004837  268905            mov [es:di],ax
0000483A  C47EED            les di,[bp-0x13]
0000483D  268B05            mov ax,[es:di]
00004840  3D18FC            cmp ax,0xfc18
00004843  7C03              jl 0x4848
00004845  E90D00            jmp word 0x4855
00004848  C47EED            les di,[bp-0x13]
0000484B  06                push es
0000484C  57                push di
0000484D  B818FC            mov ax,0xfc18
00004850  5F                pop di
00004851  07                pop es
00004852  268905            mov [es:di],ax
00004855  B90A00            mov cx,0xa
00004858  E89DDE            call word 0x26f8
0000485B  C47EED            les di,[bp-0x13]
0000485E  268A4504          mov al,[es:di+0x4]
00004862  32E4              xor ah,ah
00004864  50                push ax
00004865  C47EED            les di,[bp-0x13]
00004868  268A4507          mov al,[es:di+0x7]
0000486C  32E4              xor ah,ah
0000486E  50                push ax
0000486F  E8ACE5            call word 0x2e1e
00004872  A07815            mov al,[0x1578]
00004875  32E4              xor ah,ah
00004877  50                push ax
00004878  A07715            mov al,[0x1577]
0000487B  32E4              xor ah,ah
0000487D  E8DFBA            call word 0x35f
00004880  A07915            mov al,[0x1579]
00004883  32E4              xor ah,ah
00004885  0BC0              or ax,ax
00004887  7503              jnz 0x488c
00004889  E90600            jmp word 0x4892
0000488C  B80F00            mov ax,0xf
0000488F  E839BC            call word 0x4cb
00004892  E8EAD5            call word 0x1e7f
00004895  B85800            mov ax,0x58
00004898  50                push ax
00004899  B80000            mov ax,0x0
0000489C  E8E4D8            call word 0x2183
0000489F  E8CBDE            call word 0x276d
000048A2  A07815            mov al,[0x1578]
000048A5  32E4              xor ah,ah
000048A7  50                push ax
000048A8  A07715            mov al,[0x1577]
000048AB  32E4              xor ah,ah
000048AD  E8AFBA            call word 0x35f
000048B0  B91400            mov cx,0x14
000048B3  E842DE            call word 0x26f8
000048B6  B80600            mov ax,0x6
000048B9  50                push ax
000048BA  B80300            mov ax,0x3
000048BD  50                push ax
000048BE  B84B00            mov ax,0x4b
000048C1  50                push ax
000048C2  E835E0            call word 0x28fa
000048C5  C47EED            les di,[bp-0x13]
000048C8  268A4504          mov al,[es:di+0x4]
000048CC  32E4              xor ah,ah
000048CE  3D0100            cmp ax,0x1
000048D1  B80100            mov ax,0x1
000048D4  7401              jz 0x48d7
000048D6  48                dec ax
000048D7  50                push ax
000048D8  C47EED            les di,[bp-0x13]
000048DB  268A4505          mov al,[es:di+0x5]
000048DF  32E4              xor ah,ah
000048E1  59                pop cx
000048E2  23C1              and ax,cx
000048E4  0BC0              or ax,ax
000048E6  7503              jnz 0x48eb
000048E8  E90600            jmp word 0x48f1
000048EB  B80100            mov ax,0x1
000048EE  A27A15            mov [0x157a],al
000048F1  B90A00            mov cx,0xa
000048F4  E801DE            call word 0x26f8
000048F7  C47EED            les di,[bp-0x13]
000048FA  268A4504          mov al,[es:di+0x4]
000048FE  32E4              xor ah,ah
00004900  50                push ax
00004901  C47EED            les di,[bp-0x13]
00004904  268A4507          mov al,[es:di+0x7]
00004908  32E4              xor ah,ah
0000490A  50                push ax
0000490B  E810E5            call word 0x2e1e
0000490E  B80000            mov ax,0x0
00004911  A27A15            mov [0x157a],al
00004914  A07815            mov al,[0x1578]
00004917  32E4              xor ah,ah
00004919  50                push ax
0000491A  A07715            mov al,[0x1577]
0000491D  32E4              xor ah,ah
0000491F  E83DBA            call word 0x35f
00004922  8B46F2            mov ax,[bp-0xe]
00004925  3D0000            cmp ax,0x0
00004928  7F03              jg 0x492d
0000492A  E90600            jmp word 0x4933
0000492D  B89600            mov ax,0x96
00004930  E846BB            call word 0x479
00004933  59                pop cx
00004934  49                dec cx
00004935  7406              jz 0x493d
00004937  FF46FC            inc word [bp-0x4]
0000493A  E988FE            jmp word 0x47c5
0000493D  C47EED            les di,[bp-0x13]
00004940  06                push es
00004941  57                push di
00004942  8A46F1            mov al,[bp-0xf]
00004945  32E4              xor ah,ah
00004947  5F                pop di
00004948  07                pop es
00004949  26884504          mov [es:di+0x4],al
0000494D  C47EED            les di,[bp-0x13]
00004950  268A4506          mov al,[es:di+0x6]
00004954  32E4              xor ah,ah
00004956  50                push ax
00004957  C47EED            les di,[bp-0x13]
0000495A  268A4504          mov al,[es:di+0x4]
0000495E  32E4              xor ah,ah
00004960  3D0A00            cmp ax,0xa
00004963  B80100            mov ax,0x1
00004966  7401              jz 0x4969
00004968  48                dec ax
00004969  59                pop cx
0000496A  23C1              and ax,cx
0000496C  0BC0              or ax,ax
0000496E  7503              jnz 0x4973
00004970  E95500            jmp word 0x49c8
00004973  C47EED            les di,[bp-0x13]
00004976  06                push es
00004977  57                push di
00004978  B80000            mov ax,0x0
0000497B  5F                pop di
0000497C  07                pop es
0000497D  26884506          mov [es:di+0x6],al
00004981  C47EED            les di,[bp-0x13]
00004984  06                push es
00004985  57                push di
00004986  B80000            mov ax,0x0
00004989  5F                pop di
0000498A  07                pop es
0000498B  26884507          mov [es:di+0x7],al
0000498F  B90800            mov cx,0x8
00004992  E863DD            call word 0x26f8
00004995  E82EE4            call word 0x2dc6
00004998  A07815            mov al,[0x1578]
0000499B  32E4              xor ah,ah
0000499D  50                push ax
0000499E  A07715            mov al,[0x1577]
000049A1  32E4              xor ah,ah
000049A3  E8B9B9            call word 0x35f
000049A6  A18215            mov ax,[0x1582]
000049A9  050100            add ax,0x1
000049AC  A38215            mov [0x1582],ax
000049AF  B90E00            mov cx,0xe
000049B2  E843DD            call word 0x26f8
000049B5  A07715            mov al,[0x1577]
000049B8  32E4              xor ah,ah
000049BA  50                push ax
000049BB  A07815            mov al,[0x1578]
000049BE  32E4              xor ah,ah
000049C0  50                push ax
000049C1  B80000            mov ax,0x0
000049C4  50                push ax
000049C5  E80BFB            call word 0x44d3
000049C8  58                pop ax
000049C9  58                pop ax
000049CA  8B46F2            mov ax,[bp-0xe]
000049CD  3D0000            cmp ax,0x0
000049D0  7F03              jg 0x49d5
000049D2  E94202            jmp word 0x4c17
000049D5  B91200            mov cx,0x12
000049D8  E81DDD            call word 0x26f8
000049DB  A07715            mov al,[0x1577]
000049DE  32E4              xor ah,ah
000049E0  50                push ax
000049E1  A07815            mov al,[0x1578]
000049E4  32E4              xor ah,ah
000049E6  50                push ax
000049E7  8D7EFA            lea di,[bp-0x6]
000049EA  16                push ss
000049EB  57                push di
000049EC  8D7EF8            lea di,[bp-0x8]
000049EF  16                push ss
000049F0  57                push di
000049F1  E864F7            call word 0x4158
000049F4  B90B00            mov cx,0xb
000049F7  E8FEDC            call word 0x26f8
000049FA  4C                dec sp
000049FB  8B46FA            mov ax,[bp-0x6]
000049FE  50                push ax
000049FF  8B46F8            mov ax,[bp-0x8]
00004A02  50                push ax
00004A03  E864FA            call word 0x446a
00004A06  7503              jnz 0x4a0b
00004A08  E90C02            jmp word 0x4c17
00004A0B  8B46FA            mov ax,[bp-0x6]
00004A0E  48                dec ax
00004A0F  B9C800            mov cx,0xc8
00004A12  F7E1              mul cx
00004A14  97                xchg ax,di
00004A15  57                push di
00004A16  8B46F8            mov ax,[bp-0x8]
00004A19  48                dec ax
00004A1A  B90800            mov cx,0x8
00004A1D  F7E1              mul cx
00004A1F  5F                pop di
00004A20  03F8              add di,ax
00004A22  81C78B01          add di,0x18b
00004A26  1E                push ds
00004A27  57                push di
00004A28  C47EED            les di,[bp-0x13]
00004A2B  268A4504          mov al,[es:di+0x4]
00004A2F  32E4              xor ah,ah
00004A31  8846F1            mov [bp-0xf],al
00004A34  C47EED            les di,[bp-0x13]
00004A37  268A4506          mov al,[es:di+0x6]
00004A3B  32E4              xor ah,ah
00004A3D  0BC0              or ax,ax
00004A3F  7503              jnz 0x4a44
00004A41  E91900            jmp word 0x4a5d
00004A44  8A46F1            mov al,[bp-0xf]
00004A47  32E4              xor ah,ah
00004A49  3D0A00            cmp ax,0xa
00004A4C  7C03              jl 0x4a51
00004A4E  E90900            jmp word 0x4a5a
00004A51  8A46F1            mov al,[bp-0xf]
00004A54  32E4              xor ah,ah
00004A56  40                inc ax
00004A57  8846F1            mov [bp-0xf],al
00004A5A  E96600            jmp word 0x4ac3
00004A5D  C47EED            les di,[bp-0x13]
00004A60  268A4504          mov al,[es:di+0x4]
00004A64  32E4              xor ah,ah
00004A66  3D0300            cmp ax,0x3
00004A69  7C03              jl 0x4a6e
00004A6B  E95500            jmp word 0x4ac3
00004A6E  C47EED            les di,[bp-0x13]
00004A71  06                push es
00004A72  57                push di
00004A73  C47EED            les di,[bp-0x13]
00004A76  268B05            mov ax,[es:di]
00004A79  50                push ax
00004A7A  A18F15            mov ax,[0x158f]
00004A7D  B90400            mov cx,0x4
00004A80  99                cwd
00004A81  F7F9              idiv cx
00004A83  59                pop cx
00004A84  91                xchg ax,cx
00004A85  2BC1              sub ax,cx
00004A87  50                push ax
00004A88  A18F15            mov ax,[0x158f]
00004A8B  50                push ax
00004A8C  B90800            mov cx,0x8
00004A8F  E866DC            call word 0x26f8
00004A92  50                push ax
00004A93  E8A2E0            call word 0x2b38
00004A96  59                pop cx
00004A97  F7E9              imul cx
00004A99  B9C800            mov cx,0xc8
00004A9C  99                cwd
00004A9D  F7F9              idiv cx
00004A9F  59                pop cx
00004AA0  91                xchg ax,cx
00004AA1  2BC1              sub ax,cx
00004AA3  5F                pop di
00004AA4  07                pop es
00004AA5  268905            mov [es:di],ax
00004AA8  C47EED            les di,[bp-0x13]
00004AAB  268B05            mov ax,[es:di]
00004AAE  3D18FC            cmp ax,0xfc18
00004AB1  7C03              jl 0x4ab6
00004AB3  E90D00            jmp word 0x4ac3
00004AB6  C47EED            les di,[bp-0x13]
00004AB9  06                push es
00004ABA  57                push di
00004ABB  B818FC            mov ax,0xfc18
00004ABE  5F                pop di
00004ABF  07                pop es
00004AC0  268905            mov [es:di],ax
00004AC3  8B46F8            mov ax,[bp-0x8]
00004AC6  50                push ax
00004AC7  8B46FA            mov ax,[bp-0x6]
00004ACA  E892B8            call word 0x35f
00004ACD  B90A00            mov cx,0xa
00004AD0  E825DC            call word 0x26f8
00004AD3  C47EED            les di,[bp-0x13]
00004AD6  268A4504          mov al,[es:di+0x4]
00004ADA  32E4              xor ah,ah
00004ADC  50                push ax
00004ADD  C47EED            les di,[bp-0x13]
00004AE0  268A4507          mov al,[es:di+0x7]
00004AE4  32E4              xor ah,ah
00004AE6  50                push ax
00004AE7  E834E3            call word 0x2e1e
00004AEA  8B46F8            mov ax,[bp-0x8]
00004AED  50                push ax
00004AEE  8B46FA            mov ax,[bp-0x6]
00004AF1  E86BB8            call word 0x35f
00004AF4  A07915            mov al,[0x1579]
00004AF7  32E4              xor ah,ah
00004AF9  0BC0              or ax,ax
00004AFB  7503              jnz 0x4b00
00004AFD  E90600            jmp word 0x4b06
00004B00  B80F00            mov ax,0xf
00004B03  E8C5B9            call word 0x4cb
00004B06  E876D3            call word 0x1e7f
00004B09  B85800            mov ax,0x58
00004B0C  50                push ax
00004B0D  B80000            mov ax,0x0
00004B10  E870D6            call word 0x2183
00004B13  E857DC            call word 0x276d
00004B16  8B46F8            mov ax,[bp-0x8]
00004B19  50                push ax
00004B1A  8B46FA            mov ax,[bp-0x6]
00004B1D  E83FB8            call word 0x35f
00004B20  B91400            mov cx,0x14
00004B23  E8D2DB            call word 0x26f8
00004B26  B80600            mov ax,0x6
00004B29  50                push ax
00004B2A  B80300            mov ax,0x3
00004B2D  50                push ax
00004B2E  B84B00            mov ax,0x4b
00004B31  50                push ax
00004B32  E8C5DD            call word 0x28fa
00004B35  C47EED            les di,[bp-0x13]
00004B38  268A4504          mov al,[es:di+0x4]
00004B3C  32E4              xor ah,ah
00004B3E  3D0100            cmp ax,0x1
00004B41  B80100            mov ax,0x1
00004B44  7401              jz 0x4b47
00004B46  48                dec ax
00004B47  50                push ax
00004B48  C47EED            les di,[bp-0x13]
00004B4B  268A4505          mov al,[es:di+0x5]
00004B4F  32E4              xor ah,ah
00004B51  59                pop cx
00004B52  23C1              and ax,cx
00004B54  0BC0              or ax,ax
00004B56  7503              jnz 0x4b5b
00004B58  E90600            jmp word 0x4b61
00004B5B  B80100            mov ax,0x1
00004B5E  A27A15            mov [0x157a],al
00004B61  B90A00            mov cx,0xa
00004B64  E891DB            call word 0x26f8
00004B67  C47EED            les di,[bp-0x13]
00004B6A  268A4504          mov al,[es:di+0x4]
00004B6E  32E4              xor ah,ah
00004B70  50                push ax
00004B71  C47EED            les di,[bp-0x13]
00004B74  268A4507          mov al,[es:di+0x7]
00004B78  32E4              xor ah,ah
00004B7A  50                push ax
00004B7B  E8A0E2            call word 0x2e1e
00004B7E  B80000            mov ax,0x0
00004B81  A27A15            mov [0x157a],al
00004B84  8B46F8            mov ax,[bp-0x8]
00004B87  50                push ax
00004B88  8B46FA            mov ax,[bp-0x6]
00004B8B  E8D1B7            call word 0x35f
00004B8E  C47EED            les di,[bp-0x13]
00004B91  06                push es
00004B92  57                push di
00004B93  8A46F1            mov al,[bp-0xf]
00004B96  32E4              xor ah,ah
00004B98  5F                pop di
00004B99  07                pop es
00004B9A  26884504          mov [es:di+0x4],al
00004B9E  C47EED            les di,[bp-0x13]
00004BA1  268A4506          mov al,[es:di+0x6]
00004BA5  32E4              xor ah,ah
00004BA7  50                push ax
00004BA8  C47EED            les di,[bp-0x13]
00004BAB  268A4504          mov al,[es:di+0x4]
00004BAF  32E4              xor ah,ah
00004BB1  3D0A00            cmp ax,0xa
00004BB4  B80100            mov ax,0x1
00004BB7  7401              jz 0x4bba
00004BB9  48                dec ax
00004BBA  59                pop cx
00004BBB  23C1              and ax,cx
00004BBD  0BC0              or ax,ax
00004BBF  7503              jnz 0x4bc4
00004BC1  E95100            jmp word 0x4c15
00004BC4  C47EED            les di,[bp-0x13]
00004BC7  06                push es
00004BC8  57                push di
00004BC9  B80000            mov ax,0x0
00004BCC  5F                pop di
00004BCD  07                pop es
00004BCE  26884506          mov [es:di+0x6],al
00004BD2  C47EED            les di,[bp-0x13]
00004BD5  06                push es
00004BD6  57                push di
00004BD7  B80000            mov ax,0x0
00004BDA  5F                pop di
00004BDB  07                pop es
00004BDC  26884507          mov [es:di+0x7],al
00004BE0  B90800            mov cx,0x8
00004BE3  E812DB            call word 0x26f8
00004BE6  E8DDE1            call word 0x2dc6
00004BE9  A07815            mov al,[0x1578]
00004BEC  32E4              xor ah,ah
00004BEE  50                push ax
00004BEF  A07715            mov al,[0x1577]
00004BF2  32E4              xor ah,ah
00004BF4  E868B7            call word 0x35f
00004BF7  A18215            mov ax,[0x1582]
00004BFA  050100            add ax,0x1
00004BFD  A38215            mov [0x1582],ax
00004C00  B90E00            mov cx,0xe
00004C03  E8F2DA            call word 0x26f8
00004C06  8B46FA            mov ax,[bp-0x6]
00004C09  50                push ax
00004C0A  8B46F8            mov ax,[bp-0x8]
00004C0D  50                push ax
00004C0E  B80000            mov ax,0x0
00004C11  50                push ax
00004C12  E8BEF8            call word 0x44d3
00004C15  58                pop ax
00004C16  58                pop ax
00004C17  A07815            mov al,[0x1578]
00004C1A  32E4              xor ah,ah
00004C1C  50                push ax
00004C1D  A07715            mov al,[0x1577]
00004C20  32E4              xor ah,ah
00004C22  E83AB7            call word 0x35f
00004C25  E90000            jmp word 0x4c28
00004C28  8BE5              mov sp,bp
00004C2A  5D                pop bp
00004C2B  C3                ret
00004C2C  55                push bp
00004C2D  8BEC              mov bp,sp
00004C2F  55                push bp
00004C30  E90000            jmp word 0x4c33
00004C33  B80000            mov ax,0x0
00004C36  884604            mov [bp+0x4],al
00004C39  A07715            mov al,[0x1577]
00004C3C  32E4              xor ah,ah
00004C3E  48                dec ax
00004C3F  B9C800            mov cx,0xc8
00004C42  F7E1              mul cx
00004C44  97                xchg ax,di
00004C45  57                push di
00004C46  A07815            mov al,[0x1578]
00004C49  32E4              xor ah,ah
00004C4B  48                dec ax
00004C4C  B90800            mov cx,0x8
00004C4F  F7E1              mul cx
00004C51  5F                pop di
00004C52  03F8              add di,ax
00004C54  81C78B01          add di,0x18b
00004C58  1E                push ds
00004C59  57                push di
00004C5A  C47EFA            les di,[bp-0x6]
00004C5D  268A4504          mov al,[es:di+0x4]
00004C61  32E4              xor ah,ah
00004C63  3D0000            cmp ax,0x0
00004C66  7403              jz 0x4c6b
00004C68  E96F00            jmp word 0x4cda
00004C6B  A18615            mov ax,[0x1586]
00004C6E  3D0000            cmp ax,0x0
00004C71  7F03              jg 0x4c76
00004C73  E96400            jmp word 0x4cda
00004C76  B80100            mov ax,0x1
00004C79  884604            mov [bp+0x4],al
00004C7C  A18615            mov ax,[0x1586]
00004C7F  2D0100            sub ax,0x1
00004C82  A38615            mov [0x1586],ax
00004C85  C47EFA            les di,[bp-0x6]
00004C88  06                push es
00004C89  57                push di
00004C8A  B80200            mov ax,0x2
00004C8D  5F                pop di
00004C8E  07                pop es
00004C8F  26884504          mov [es:di+0x4],al
00004C93  C47EFA            les di,[bp-0x6]
00004C96  06                push es
00004C97  57                push di
00004C98  B80000            mov ax,0x0
00004C9B  5F                pop di
00004C9C  07                pop es
00004C9D  268905            mov [es:di],ax
00004CA0  A07815            mov al,[0x1578]
00004CA3  32E4              xor ah,ah
00004CA5  50                push ax
00004CA6  A07715            mov al,[0x1577]
00004CA9  32E4              xor ah,ah
00004CAB  E8B1B6            call word 0x35f
00004CAE  B90800            mov cx,0x8
00004CB1  E844DA            call word 0x26f8
00004CB4  E8B7E0            call word 0x2d6e
00004CB7  A07815            mov al,[0x1578]
00004CBA  32E4              xor ah,ah
00004CBC  50                push ax
00004CBD  A07715            mov al,[0x1577]
00004CC0  32E4              xor ah,ah
00004CC2  E89AB6            call word 0x35f
00004CC5  B91400            mov cx,0x14
00004CC8  E82DDA            call word 0x26f8
00004CCB  B80700            mov ax,0x7
00004CCE  50                push ax
00004CCF  B80400            mov ax,0x4
00004CD2  50                push ax
00004CD3  B84B00            mov ax,0x4b
00004CD6  50                push ax
00004CD7  E820DC            call word 0x28fa
00004CDA  58                pop ax
00004CDB  58                pop ax
00004CDC  E90000            jmp word 0x4cdf
00004CDF  8A4604            mov al,[bp+0x4]
00004CE2  32E4              xor ah,ah
00004CE4  0BC0              or ax,ax
00004CE6  8BE5              mov sp,bp
00004CE8  5D                pop bp
00004CE9  C20100            ret 0x1
00004CEC  55                push bp
00004CED  8BEC              mov bp,sp
00004CEF  55                push bp
00004CF0  E90000            jmp word 0x4cf3
00004CF3  B80000            mov ax,0x0
00004CF6  884604            mov [bp+0x4],al
00004CF9  A07715            mov al,[0x1577]
00004CFC  32E4              xor ah,ah
00004CFE  48                dec ax
00004CFF  B9C800            mov cx,0xc8
00004D02  F7E1              mul cx
00004D04  97                xchg ax,di
00004D05  57                push di
00004D06  A07815            mov al,[0x1578]
00004D09  32E4              xor ah,ah
00004D0B  48                dec ax
00004D0C  B90800            mov cx,0x8
00004D0F  F7E1              mul cx
00004D11  5F                pop di
00004D12  03F8              add di,ax
00004D14  81C78B01          add di,0x18b
00004D18  1E                push ds
00004D19  57                push di
00004D1A  C47EFA            les di,[bp-0x6]
00004D1D  268A4504          mov al,[es:di+0x4]
00004D21  32E4              xor ah,ah
00004D23  50                push ax
00004D24  E80EC3            call word 0x1035
00004D27  B80000            mov ax,0x0
00004D2A  E81AC3            call word 0x1047
00004D2D  B80100            mov ax,0x1
00004D30  E814C3            call word 0x1047
00004D33  E8E5C3            call word 0x111b
00004D36  7503              jnz 0x4d3b
00004D38  E9A400            jmp word 0x4ddf
00004D3B  B80100            mov ax,0x1
00004D3E  884604            mov [bp+0x4],al
00004D41  C47EFA            les di,[bp-0x6]
00004D44  268A4504          mov al,[es:di+0x4]
00004D48  32E4              xor ah,ah
00004D4A  3D0100            cmp ax,0x1
00004D4D  7403              jz 0x4d52
00004D4F  E91E00            jmp word 0x4d70
00004D52  A18415            mov ax,[0x1584]
00004D55  050100            add ax,0x1
00004D58  A38415            mov [0x1584],ax
00004D5B  B90C00            mov cx,0xc
00004D5E  E897D9            call word 0x26f8
00004D61  A07715            mov al,[0x1577]
00004D64  32E4              xor ah,ah
00004D66  50                push ax
00004D67  A07815            mov al,[0x1578]
00004D6A  32E4              xor ah,ah
00004D6C  50                push ax
00004D6D  E81AF9            call word 0x468a
00004D70  C47EFA            les di,[bp-0x6]
00004D73  06                push es
00004D74  57                push di
00004D75  B80600            mov ax,0x6
00004D78  5F                pop di
00004D79  07                pop es
00004D7A  26884504          mov [es:di+0x4],al
00004D7E  C47EFA            les di,[bp-0x6]
00004D81  06                push es
00004D82  57                push di
00004D83  B80100            mov ax,0x1
00004D86  5F                pop di
00004D87  07                pop es
00004D88  26884506          mov [es:di+0x6],al
00004D8C  C47EFA            les di,[bp-0x6]
00004D8F  06                push es
00004D90  57                push di
00004D91  B80100            mov ax,0x1
00004D94  5F                pop di
00004D95  07                pop es
00004D96  26884507          mov [es:di+0x7],al
00004D9A  B90800            mov cx,0x8
00004D9D  E858D9            call word 0x26f8
00004DA0  E8FDDE            call word 0x2ca0
00004DA3  A07815            mov al,[0x1578]
00004DA6  32E4              xor ah,ah
00004DA8  50                push ax
00004DA9  A07715            mov al,[0x1577]
00004DAC  32E4              xor ah,ah
00004DAE  E8AEB5            call word 0x35f
00004DB1  B91400            mov cx,0x14
00004DB4  E841D9            call word 0x26f8
00004DB7  B80800            mov ax,0x8
00004DBA  50                push ax
00004DBB  B80500            mov ax,0x5
00004DBE  50                push ax
00004DBF  B84B00            mov ax,0x4b
00004DC2  50                push ax
00004DC3  E834DB            call word 0x28fa
00004DC6  B90E00            mov cx,0xe
00004DC9  E82CD9            call word 0x26f8
00004DCC  A07715            mov al,[0x1577]
00004DCF  32E4              xor ah,ah
00004DD1  50                push ax
00004DD2  A07815            mov al,[0x1578]
00004DD5  32E4              xor ah,ah
00004DD7  50                push ax
00004DD8  B80100            mov ax,0x1
00004DDB  50                push ax
00004DDC  E8F4F6            call word 0x44d3
00004DDF  58                pop ax
00004DE0  58                pop ax
00004DE1  E90000            jmp word 0x4de4
00004DE4  8A4604            mov al,[bp+0x4]
00004DE7  32E4              xor ah,ah
00004DE9  0BC0              or ax,ax
00004DEB  8BE5              mov sp,bp
00004DED  5D                pop bp
00004DEE  C20100            ret 0x1
00004DF1  55                push bp
00004DF2  8BEC              mov bp,sp
00004DF4  55                push bp
00004DF5  E90000            jmp word 0x4df8
00004DF8  50                push ax
00004DF9  B80000            mov ax,0x0
00004DFC  8846FD            mov [bp-0x3],al
00004DFF  A07815            mov al,[0x1578]
00004E02  32E4              xor ah,ah
00004E04  50                push ax
00004E05  A07715            mov al,[0x1577]
00004E08  32E4              xor ah,ah
00004E0A  E852B5            call word 0x35f
00004E0D  B80F00            mov ax,0xf
00004E10  E8B8B6            call word 0x4cb
00004E13  B90700            mov cx,0x7
00004E16  E8DFD8            call word 0x26f8
00004E19  E84BDA            call word 0x2867
00004E1C  B90800            mov cx,0x8
00004E1F  E8D6D8            call word 0x26f8
00004E22  4C                dec sp
00004E23  E8A7DB            call word 0x29cd
00004E26  8846FC            mov [bp-0x4],al
00004E29  8A46FC            mov al,[bp-0x4]
00004E2C  32E4              xor ah,ah
00004E2E  3D0000            cmp ax,0x0
00004E31  7F03              jg 0x4e36
00004E33  E92401            jmp word 0x4f5a
00004E36  8A46FC            mov al,[bp-0x4]
00004E39  32E4              xor ah,ah
00004E3B  3D0100            cmp ax,0x1
00004E3E  7403              jz 0x4e43
00004E40  E92900            jmp word 0x4e6c
00004E43  A07715            mov al,[0x1577]
00004E46  32E4              xor ah,ah
00004E48  3D0100            cmp ax,0x1
00004E4B  7F03              jg 0x4e50
00004E4D  E91900            jmp word 0x4e69
00004E50  A07715            mov al,[0x1577]
00004E53  32E4              xor ah,ah
00004E55  2D0100            sub ax,0x1
00004E58  A27715            mov [0x1577],al
00004E5B  A07815            mov al,[0x1578]
00004E5E  32E4              xor ah,ah
00004E60  50                push ax
00004E61  A07715            mov al,[0x1577]
00004E64  32E4              xor ah,ah
00004E66  E8F6B4            call word 0x35f
00004E69  E9EE00            jmp word 0x4f5a
00004E6C  3D0200            cmp ax,0x2
00004E6F  7403              jz 0x4e74
00004E71  E92900            jmp word 0x4e9d
00004E74  A07715            mov al,[0x1577]
00004E77  32E4              xor ah,ah
00004E79  3D1900            cmp ax,0x19
00004E7C  7C03              jl 0x4e81
00004E7E  E91900            jmp word 0x4e9a
00004E81  A07715            mov al,[0x1577]
00004E84  32E4              xor ah,ah
00004E86  050100            add ax,0x1
00004E89  A27715            mov [0x1577],al
00004E8C  A07815            mov al,[0x1578]
00004E8F  32E4              xor ah,ah
00004E91  50                push ax
00004E92  A07715            mov al,[0x1577]
00004E95  32E4              xor ah,ah
00004E97  E8C5B4            call word 0x35f
00004E9A  E9BD00            jmp word 0x4f5a
00004E9D  3D0300            cmp ax,0x3
00004EA0  7403              jz 0x4ea5
00004EA2  E92900            jmp word 0x4ece
00004EA5  A07815            mov al,[0x1578]
00004EA8  32E4              xor ah,ah
00004EAA  3D0100            cmp ax,0x1
00004EAD  7F03              jg 0x4eb2
00004EAF  E91900            jmp word 0x4ecb
00004EB2  A07815            mov al,[0x1578]
00004EB5  32E4              xor ah,ah
00004EB7  2D0100            sub ax,0x1
00004EBA  A27815            mov [0x1578],al
00004EBD  A07815            mov al,[0x1578]
00004EC0  32E4              xor ah,ah
00004EC2  50                push ax
00004EC3  A07715            mov al,[0x1577]
00004EC6  32E4              xor ah,ah
00004EC8  E894B4            call word 0x35f
00004ECB  E98C00            jmp word 0x4f5a
00004ECE  3D0400            cmp ax,0x4
00004ED1  7403              jz 0x4ed6
00004ED3  E92900            jmp word 0x4eff
00004ED6  A07815            mov al,[0x1578]
00004ED9  32E4              xor ah,ah
00004EDB  3D1900            cmp ax,0x19
00004EDE  7C03              jl 0x4ee3
00004EE0  E91900            jmp word 0x4efc
00004EE3  A07815            mov al,[0x1578]
00004EE6  32E4              xor ah,ah
00004EE8  050100            add ax,0x1
00004EEB  A27815            mov [0x1578],al
00004EEE  A07815            mov al,[0x1578]
00004EF1  32E4              xor ah,ah
00004EF3  50                push ax
00004EF4  A07715            mov al,[0x1577]
00004EF7  32E4              xor ah,ah
00004EF9  E863B4            call word 0x35f
00004EFC  E95B00            jmp word 0x4f5a
00004EFF  3D0500            cmp ax,0x5
00004F02  7403              jz 0x4f07
00004F04  E90C00            jmp word 0x4f13
00004F07  B91300            mov cx,0x13
00004F0A  E8EBD7            call word 0x26f8
00004F0D  E814F8            call word 0x4724
00004F10  E94700            jmp word 0x4f5a
00004F13  3D0600            cmp ax,0x6
00004F16  7403              jz 0x4f1b
00004F18  E91000            jmp word 0x4f2b
00004F1B  B90700            mov cx,0x7
00004F1E  E8D7D7            call word 0x26f8
00004F21  4C                dec sp
00004F22  E807FD            call word 0x4c2c
00004F25  8846FD            mov [bp-0x3],al
00004F28  E92F00            jmp word 0x4f5a
00004F2B  3D0700            cmp ax,0x7
00004F2E  7403              jz 0x4f33
00004F30  E91000            jmp word 0x4f43
00004F33  B90700            mov cx,0x7
00004F36  E8BFD7            call word 0x26f8
00004F39  4C                dec sp
00004F3A  E8AFFD            call word 0x4cec
00004F3D  8846FD            mov [bp-0x3],al
00004F40  E91700            jmp word 0x4f5a
00004F43  3D0800            cmp ax,0x8
00004F46  7403              jz 0x4f4b
00004F48  E90F00            jmp word 0x4f5a
00004F4B  B80200            mov ax,0x2
00004F4E  E86BB3            call word 0x2bc
00004F51  B80700            mov ax,0x7
00004F54  E874B5            call word 0x4cb
00004F57  E8C1BC            call word 0xc1b
00004F5A  8A46FC            mov al,[bp-0x4]
00004F5D  32E4              xor ah,ah
00004F5F  3D0500            cmp ax,0x5
00004F62  7403              jz 0x4f67
00004F64  E90600            jmp word 0x4f6d
00004F67  B80100            mov ax,0x1
00004F6A  8846FD            mov [bp-0x3],al
00004F6D  8A46FD            mov al,[bp-0x3]
00004F70  32E4              xor ah,ah
00004F72  0BC0              or ax,ax
00004F74  7503              jnz 0x4f79
00004F76  E9A3FE            jmp word 0x4e1c
00004F79  E90000            jmp word 0x4f7c
00004F7C  8BE5              mov sp,bp
00004F7E  5D                pop bp
00004F7F  C3                ret
00004F80  55                push bp
00004F81  8BEC              mov bp,sp
00004F83  55                push bp
00004F84  E92201            jmp word 0x50a9
00004F87  55                push bp
00004F88  8BC4              mov ax,sp
00004F8A  FF76FE            push word [bp-0x2]
00004F8D  8BE8              mov bp,ax
00004F8F  55                push bp
00004F90  E90000            jmp word 0x4f93
00004F93  A18F15            mov ax,[0x158f]
00004F96  F72E8D15          imul word [0x158d]
00004F9A  B92D00            mov cx,0x2d
00004F9D  99                cwd
00004F9E  F7F9              idiv cx
00004FA0  894604            mov [bp+0x4],ax
00004FA3  E90000            jmp word 0x4fa6
00004FA6  8B4604            mov ax,[bp+0x4]
00004FA9  8BE5              mov sp,bp
00004FAB  5D                pop bp
00004FAC  C20200            ret 0x2
00004FAF  55                push bp
00004FB0  8BC4              mov ax,sp
00004FB2  FF76FE            push word [bp-0x2]
00004FB5  8BE8              mov bp,ax
00004FB7  55                push bp
00004FB8  E90000            jmp word 0x4fbb
00004FBB  B91300            mov cx,0x13
00004FBE  E837D7            call word 0x26f8
00004FC1  4C                dec sp
00004FC2  8A460A            mov al,[bp+0xa]
00004FC5  32E4              xor ah,ah
00004FC7  50                push ax
00004FC8  8A4608            mov al,[bp+0x8]
00004FCB  32E4              xor ah,ah
00004FCD  50                push ax
00004FCE  8B4606            mov ax,[bp+0x6]
00004FD1  50                push ax
00004FD2  8B4604            mov ax,[bp+0x4]
00004FD5  50                push ax
00004FD6  E8BBF3            call word 0x4394
00004FD9  50                push ax
00004FDA  A18D15            mov ax,[0x158d]
00004FDD  3D0000            cmp ax,0x0
00004FE0  B80100            mov ax,0x1
00004FE3  7F01              jg 0x4fe6
00004FE5  48                dec ax
00004FE6  59                pop cx
00004FE7  23C1              and ax,cx
00004FE9  0BC0              or ax,ax
00004FEB  7503              jnz 0x4ff0
00004FED  E94000            jmp word 0x5030
00004FF0  8B4606            mov ax,[bp+0x6]
00004FF3  48                dec ax
00004FF4  B9C800            mov cx,0xc8
00004FF7  F7E1              mul cx
00004FF9  97                xchg ax,di
00004FFA  57                push di
00004FFB  8B4604            mov ax,[bp+0x4]
00004FFE  48                dec ax
00004FFF  B90800            mov cx,0x8
00005002  F7E1              mul cx
00005004  5F                pop di
00005005  03F8              add di,ax
00005007  81C78B01          add di,0x18b
0000500B  1E                push ds
0000500C  57                push di
0000500D  C47EF8            les di,[bp-0x8]
00005010  06                push es
00005011  57                push di
00005012  C47EF8            les di,[bp-0x8]
00005015  268B05            mov ax,[es:di]
00005018  50                push ax
00005019  B90A00            mov cx,0xa
0000501C  E8D9D6            call word 0x26f8
0000501F  50                push ax
00005020  E864FF            call word 0x4f87
00005023  59                pop cx
00005024  03C1              add ax,cx
00005026  5F                pop di
00005027  07                pop es
00005028  268905            mov [es:di],ax
0000502B  58                pop ax
0000502C  58                pop ax
0000502D  E97000            jmp word 0x50a0
00005030  B91300            mov cx,0x13
00005033  E8C2D6            call word 0x26f8
00005036  4C                dec sp
00005037  8A460A            mov al,[bp+0xa]
0000503A  32E4              xor ah,ah
0000503C  50                push ax
0000503D  8A4608            mov al,[bp+0x8]
00005040  32E4              xor ah,ah
00005042  50                push ax
00005043  8B4606            mov ax,[bp+0x6]
00005046  50                push ax
00005047  8B4604            mov ax,[bp+0x4]
0000504A  50                push ax
0000504B  E8B1F3            call word 0x43ff
0000504E  3401              xor al,0x1
00005050  7503              jnz 0x5055
00005052  E94B00            jmp word 0x50a0
00005055  8B4606            mov ax,[bp+0x6]
00005058  48                dec ax
00005059  B9C800            mov cx,0xc8
0000505C  F7E1              mul cx
0000505E  97                xchg ax,di
0000505F  57                push di
00005060  8B4604            mov ax,[bp+0x4]
00005063  48                dec ax
00005064  B90800            mov cx,0x8
00005067  F7E1              mul cx
00005069  5F                pop di
0000506A  03F8              add di,ax
0000506C  81C78B01          add di,0x18b
00005070  1E                push ds
00005071  57                push di
00005072  C47EF8            les di,[bp-0x8]
00005075  06                push es
00005076  57                push di
00005077  C47EF8            les di,[bp-0x8]
0000507A  268B05            mov ax,[es:di]
0000507D  50                push ax
0000507E  A18F15            mov ax,[0x158f]
00005081  50                push ax
00005082  B90A00            mov cx,0xa
00005085  E870D6            call word 0x26f8
00005088  50                push ax
00005089  E8FBFE            call word 0x4f87
0000508C  59                pop cx
0000508D  91                xchg ax,cx
0000508E  2BC1              sub ax,cx
00005090  B93200            mov cx,0x32
00005093  99                cwd
00005094  F7F9              idiv cx
00005096  59                pop cx
00005097  03C1              add ax,cx
00005099  5F                pop di
0000509A  07                pop es
0000509B  268905            mov [es:di],ax
0000509E  58                pop ax
0000509F  58                pop ax
000050A0  E90000            jmp word 0x50a3
000050A3  8BE5              mov sp,bp
000050A5  5D                pop bp
000050A6  C20800            ret 0x8
000050A9  83EC07            sub sp,byte +0x7
000050AC  B80100            mov ax,0x1
000050AF  50                push ax
000050B0  B81900            mov ax,0x19
000050B3  59                pop cx
000050B4  91                xchg ax,cx
000050B5  2BC8              sub cx,ax
000050B7  7D03              jnl 0x50bc
000050B9  E91B03            jmp word 0x53d7
000050BC  41                inc cx
000050BD  8846FD            mov [bp-0x3],al
000050C0  51                push cx
000050C1  B80100            mov ax,0x1
000050C4  50                push ax
000050C5  B81900            mov ax,0x19
000050C8  59                pop cx
000050C9  91                xchg ax,cx
000050CA  2BC8              sub cx,ax
000050CC  7D03              jnl 0x50d1
000050CE  E9FC02            jmp word 0x53cd
000050D1  41                inc cx
000050D2  8846FC            mov [bp-0x4],al
000050D5  51                push cx
000050D6  8A46FD            mov al,[bp-0x3]
000050D9  32E4              xor ah,ah
000050DB  48                dec ax
000050DC  B9C800            mov cx,0xc8
000050DF  F7E1              mul cx
000050E1  97                xchg ax,di
000050E2  57                push di
000050E3  8A46FC            mov al,[bp-0x4]
000050E6  32E4              xor ah,ah
000050E8  48                dec ax
000050E9  B90800            mov cx,0x8
000050EC  F7E1              mul cx
000050EE  5F                pop di
000050EF  03F8              add di,ax
000050F1  81C78B01          add di,0x18b
000050F5  1E                push ds
000050F6  57                push di
000050F7  C47EEF            les di,[bp-0x11]
000050FA  268A4506          mov al,[es:di+0x6]
000050FE  32E4              xor ah,ah
00005100  0BC0              or ax,ax
00005102  7503              jnz 0x5107
00005104  E97501            jmp word 0x527c
00005107  C47EEF            les di,[bp-0x11]
0000510A  268A4504          mov al,[es:di+0x4]
0000510E  32E4              xor ah,ah
00005110  3D0A00            cmp ax,0xa
00005113  7C03              jl 0x5118
00005115  E91500            jmp word 0x512d
00005118  C47EEF            les di,[bp-0x11]
0000511B  06                push es
0000511C  57                push di
0000511D  C47EEF            les di,[bp-0x11]
00005120  268A4504          mov al,[es:di+0x4]
00005124  32E4              xor ah,ah
00005126  40                inc ax
00005127  5F                pop di
00005128  07                pop es
00005129  26884504          mov [es:di+0x4],al
0000512D  C47EEF            les di,[bp-0x11]
00005130  06                push es
00005131  57                push di
00005132  B80000            mov ax,0x0
00005135  5F                pop di
00005136  07                pop es
00005137  26894502          mov [es:di+0x2],ax
0000513B  8A46FD            mov al,[bp-0x3]
0000513E  32E4              xor ah,ah
00005140  2D0100            sub ax,0x1
00005143  50                push ax
00005144  8A46FD            mov al,[bp-0x3]
00005147  32E4              xor ah,ah
00005149  050100            add ax,0x1
0000514C  59                pop cx
0000514D  91                xchg ax,cx
0000514E  2BC8              sub cx,ax
00005150  7D03              jnl 0x5155
00005152  E92401            jmp word 0x5279
00005155  41                inc cx
00005156  8946FA            mov [bp-0x6],ax
00005159  51                push cx
0000515A  8A46FC            mov al,[bp-0x4]
0000515D  32E4              xor ah,ah
0000515F  2D0100            sub ax,0x1
00005162  50                push ax
00005163  8A46FC            mov al,[bp-0x4]
00005166  32E4              xor ah,ah
00005168  050100            add ax,0x1
0000516B  59                pop cx
0000516C  91                xchg ax,cx
0000516D  2BC8              sub cx,ax
0000516F  7D03              jnl 0x5174
00005171  E9FB00            jmp word 0x526f
00005174  41                inc cx
00005175  8946F8            mov [bp-0x8],ax
00005178  51                push cx
00005179  B90B00            mov cx,0xb
0000517C  E879D5            call word 0x26f8
0000517F  4C                dec sp
00005180  8B46FA            mov ax,[bp-0x6]
00005183  50                push ax
00005184  8B46F8            mov ax,[bp-0x8]
00005187  50                push ax
00005188  E8DFF2            call word 0x446a
0000518B  50                push ax
0000518C  8B46FA            mov ax,[bp-0x6]
0000518F  50                push ax
00005190  8A46FD            mov al,[bp-0x3]
00005193  32E4              xor ah,ah
00005195  59                pop cx
00005196  91                xchg ax,cx
00005197  3BC1              cmp ax,cx
00005199  B80100            mov ax,0x1
0000519C  7501              jnz 0x519f
0000519E  48                dec ax
0000519F  50                push ax
000051A0  8B46F8            mov ax,[bp-0x8]
000051A3  50                push ax
000051A4  8A46FC            mov al,[bp-0x4]
000051A7  32E4              xor ah,ah
000051A9  59                pop cx
000051AA  91                xchg ax,cx
000051AB  3BC1              cmp ax,cx
000051AD  B80100            mov ax,0x1
000051B0  7501              jnz 0x51b3
000051B2  48                dec ax
000051B3  59                pop cx
000051B4  0BC1              or ax,cx
000051B6  59                pop cx
000051B7  23C1              and ax,cx
000051B9  0BC0              or ax,ax
000051BB  7503              jnz 0x51c0
000051BD  E9A500            jmp word 0x5265
000051C0  8B46FA            mov ax,[bp-0x6]
000051C3  48                dec ax
000051C4  B9C800            mov cx,0xc8
000051C7  F7E1              mul cx
000051C9  97                xchg ax,di
000051CA  57                push di
000051CB  8B46F8            mov ax,[bp-0x8]
000051CE  48                dec ax
000051CF  B90800            mov cx,0x8
000051D2  F7E1              mul cx
000051D4  5F                pop di
000051D5  03F8              add di,ax
000051D7  8A858F01          mov al,[di+0x18f]
000051DB  32E4              xor ah,ah
000051DD  3D0300            cmp ax,0x3
000051E0  7C03              jl 0x51e5
000051E2  E91D00            jmp word 0x5202
000051E5  B91000            mov cx,0x10
000051E8  E80DD5            call word 0x26f8
000051EB  8A46FD            mov al,[bp-0x3]
000051EE  32E4              xor ah,ah
000051F0  50                push ax
000051F1  8A46FC            mov al,[bp-0x4]
000051F4  32E4              xor ah,ah
000051F6  50                push ax
000051F7  8B46FA            mov ax,[bp-0x6]
000051FA  50                push ax
000051FB  8B46F8            mov ax,[bp-0x8]
000051FE  50                push ax
000051FF  E8ADFD            call word 0x4faf
00005202  8B46FA            mov ax,[bp-0x6]
00005205  48                dec ax
00005206  B9C800            mov cx,0xc8
00005209  F7E1              mul cx
0000520B  97                xchg ax,di
0000520C  57                push di
0000520D  8B46F8            mov ax,[bp-0x8]
00005210  48                dec ax
00005211  B90800            mov cx,0x8
00005214  F7E1              mul cx
00005216  5F                pop di
00005217  03F8              add di,ax
00005219  8A859101          mov al,[di+0x191]
0000521D  32E4              xor ah,ah
0000521F  50                push ax
00005220  8B46FA            mov ax,[bp-0x6]
00005223  48                dec ax
00005224  B9C800            mov cx,0xc8
00005227  F7E1              mul cx
00005229  97                xchg ax,di
0000522A  57                push di
0000522B  8B46F8            mov ax,[bp-0x8]
0000522E  48                dec ax
0000522F  B90800            mov cx,0x8
00005232  F7E1              mul cx
00005234  5F                pop di
00005235  03F8              add di,ax
00005237  8A858F01          mov al,[di+0x18f]
0000523B  32E4              xor ah,ah
0000523D  3D0A00            cmp ax,0xa
00005240  B80100            mov ax,0x1
00005243  7401              jz 0x5246
00005245  48                dec ax
00005246  59                pop cx
00005247  0BC1              or ax,cx
00005249  0BC0              or ax,ax
0000524B  7503              jnz 0x5250
0000524D  E91500            jmp word 0x5265
00005250  C47EEF            les di,[bp-0x11]
00005253  06                push es
00005254  57                push di
00005255  C47EEF            les di,[bp-0x11]
00005258  268B4502          mov ax,[es:di+0x2]
0000525C  050100            add ax,0x1
0000525F  5F                pop di
00005260  07                pop es
00005261  26894502          mov [es:di+0x2],ax
00005265  59                pop cx
00005266  49                dec cx
00005267  7406              jz 0x526f
00005269  FF46F8            inc word [bp-0x8]
0000526C  E909FF            jmp word 0x5178
0000526F  59                pop cx
00005270  49                dec cx
00005271  7406              jz 0x5279
00005273  FF46FA            inc word [bp-0x6]
00005276  E9E0FE            jmp word 0x5159
00005279  E94501            jmp word 0x53c1
0000527C  C47EEF            les di,[bp-0x11]
0000527F  268A4504          mov al,[es:di+0x4]
00005283  32E4              xor ah,ah
00005285  3D0200            cmp ax,0x2
00005288  7403              jz 0x528d
0000528A  E93401            jmp word 0x53c1
0000528D  C47EEF            les di,[bp-0x11]
00005290  06                push es
00005291  57                push di
00005292  B80000            mov ax,0x0
00005295  5F                pop di
00005296  07                pop es
00005297  26894502          mov [es:di+0x2],ax
0000529B  8A46FD            mov al,[bp-0x3]
0000529E  32E4              xor ah,ah
000052A0  2D0100            sub ax,0x1
000052A3  50                push ax
000052A4  8A46FD            mov al,[bp-0x3]
000052A7  32E4              xor ah,ah
000052A9  050100            add ax,0x1
000052AC  59                pop cx
000052AD  91                xchg ax,cx
000052AE  2BC8              sub cx,ax
000052B0  7D03              jnl 0x52b5
000052B2  E9E200            jmp word 0x5397
000052B5  41                inc cx
000052B6  8946FA            mov [bp-0x6],ax
000052B9  51                push cx
000052BA  8A46FC            mov al,[bp-0x4]
000052BD  32E4              xor ah,ah
000052BF  2D0100            sub ax,0x1
000052C2  50                push ax
000052C3  8A46FC            mov al,[bp-0x4]
000052C6  32E4              xor ah,ah
000052C8  050100            add ax,0x1
000052CB  59                pop cx
000052CC  91                xchg ax,cx
000052CD  2BC8              sub cx,ax
000052CF  7D03              jnl 0x52d4
000052D1  E9B900            jmp word 0x538d
000052D4  41                inc cx
000052D5  8946F8            mov [bp-0x8],ax
000052D8  51                push cx
000052D9  B90B00            mov cx,0xb
000052DC  E819D4            call word 0x26f8
000052DF  4C                dec sp
000052E0  8B46FA            mov ax,[bp-0x6]
000052E3  50                push ax
000052E4  8B46F8            mov ax,[bp-0x8]
000052E7  50                push ax
000052E8  E87FF1            call word 0x446a
000052EB  50                push ax
000052EC  8B46FA            mov ax,[bp-0x6]
000052EF  50                push ax
000052F0  8A46FD            mov al,[bp-0x3]
000052F3  32E4              xor ah,ah
000052F5  59                pop cx
000052F6  91                xchg ax,cx
000052F7  3BC1              cmp ax,cx
000052F9  B80100            mov ax,0x1
000052FC  7501              jnz 0x52ff
000052FE  48                dec ax
000052FF  50                push ax
00005300  8B46F8            mov ax,[bp-0x8]
00005303  50                push ax
00005304  8A46FC            mov al,[bp-0x4]
00005307  32E4              xor ah,ah
00005309  59                pop cx
0000530A  91                xchg ax,cx
0000530B  3BC1              cmp ax,cx
0000530D  B80100            mov ax,0x1
00005310  7501              jnz 0x5313
00005312  48                dec ax
00005313  59                pop cx
00005314  0BC1              or ax,cx
00005316  59                pop cx
00005317  23C1              and ax,cx
00005319  0BC0              or ax,ax
0000531B  7503              jnz 0x5320
0000531D  E96300            jmp word 0x5383
00005320  8B46FA            mov ax,[bp-0x6]
00005323  48                dec ax
00005324  B9C800            mov cx,0xc8
00005327  F7E1              mul cx
00005329  97                xchg ax,di
0000532A  57                push di
0000532B  8B46F8            mov ax,[bp-0x8]
0000532E  48                dec ax
0000532F  B90800            mov cx,0x8
00005332  F7E1              mul cx
00005334  5F                pop di
00005335  03F8              add di,ax
00005337  8A859101          mov al,[di+0x191]
0000533B  32E4              xor ah,ah
0000533D  50                push ax
0000533E  8B46FA            mov ax,[bp-0x6]
00005341  48                dec ax
00005342  B9C800            mov cx,0xc8
00005345  F7E1              mul cx
00005347  97                xchg ax,di
00005348  57                push di
00005349  8B46F8            mov ax,[bp-0x8]
0000534C  48                dec ax
0000534D  B90800            mov cx,0x8
00005350  F7E1              mul cx
00005352  5F                pop di
00005353  03F8              add di,ax
00005355  8A858F01          mov al,[di+0x18f]
00005359  32E4              xor ah,ah
0000535B  3D0A00            cmp ax,0xa
0000535E  B80100            mov ax,0x1
00005361  7401              jz 0x5364
00005363  48                dec ax
00005364  59                pop cx
00005365  0BC1              or ax,cx
00005367  0BC0              or ax,ax
00005369  7503              jnz 0x536e
0000536B  E91500            jmp word 0x5383
0000536E  C47EEF            les di,[bp-0x11]
00005371  06                push es
00005372  57                push di
00005373  C47EEF            les di,[bp-0x11]
00005376  268B4502          mov ax,[es:di+0x2]
0000537A  050100            add ax,0x1
0000537D  5F                pop di
0000537E  07                pop es
0000537F  26894502          mov [es:di+0x2],ax
00005383  59                pop cx
00005384  49                dec cx
00005385  7406              jz 0x538d
00005387  FF46F8            inc word [bp-0x8]
0000538A  E94BFF            jmp word 0x52d8
0000538D  59                pop cx
0000538E  49                dec cx
0000538F  7406              jz 0x5397
00005391  FF46FA            inc word [bp-0x6]
00005394  E922FF            jmp word 0x52b9
00005397  C47EEF            les di,[bp-0x11]
0000539A  268B4502          mov ax,[es:di+0x2]
0000539E  3D0600            cmp ax,0x6
000053A1  7F03              jg 0x53a6
000053A3  E91B00            jmp word 0x53c1
000053A6  C47EEF            les di,[bp-0x11]
000053A9  06                push es
000053AA  57                push di
000053AB  B80000            mov ax,0x0
000053AE  5F                pop di
000053AF  07                pop es
000053B0  26884504          mov [es:di+0x4],al
000053B4  C47EEF            les di,[bp-0x11]
000053B7  06                push es
000053B8  57                push di
000053B9  B86400            mov ax,0x64
000053BC  5F                pop di
000053BD  07                pop es
000053BE  268905            mov [es:di],ax
000053C1  58                pop ax
000053C2  58                pop ax
000053C3  59                pop cx
000053C4  49                dec cx
000053C5  7406              jz 0x53cd
000053C7  FE46FC            inc byte [bp-0x4]
000053CA  E908FD            jmp word 0x50d5
000053CD  59                pop cx
000053CE  49                dec cx
000053CF  7406              jz 0x53d7
000053D1  FE46FD            inc byte [bp-0x3]
000053D4  E9E9FC            jmp word 0x50c0
000053D7  E90000            jmp word 0x53da
000053DA  8BE5              mov sp,bp
000053DC  5D                pop bp
000053DD  C3                ret
000053DE  55                push bp
000053DF  8BEC              mov bp,sp
000053E1  55                push bp
000053E2  E90000            jmp word 0x53e5
000053E5  83EC0A            sub sp,byte +0xa
000053E8  B80100            mov ax,0x1
000053EB  A27B15            mov [0x157b],al
000053EE  B80100            mov ax,0x1
000053F1  50                push ax
000053F2  B81900            mov ax,0x19
000053F5  59                pop cx
000053F6  91                xchg ax,cx
000053F7  2BC8              sub cx,ax
000053F9  7D03              jnl 0x53fe
000053FB  E91005            jmp word 0x590e
000053FE  41                inc cx
000053FF  8846FD            mov [bp-0x3],al
00005402  51                push cx
00005403  B80100            mov ax,0x1
00005406  50                push ax
00005407  B81900            mov ax,0x19
0000540A  59                pop cx
0000540B  91                xchg ax,cx
0000540C  2BC8              sub cx,ax
0000540E  7D03              jnl 0x5413
00005410  E9F104            jmp word 0x5904
00005413  41                inc cx
00005414  8846FC            mov [bp-0x4],al
00005417  51                push cx
00005418  8A46FD            mov al,[bp-0x3]
0000541B  32E4              xor ah,ah
0000541D  48                dec ax
0000541E  B9C800            mov cx,0xc8
00005421  F7E1              mul cx
00005423  97                xchg ax,di
00005424  57                push di
00005425  8A46FC            mov al,[bp-0x4]
00005428  32E4              xor ah,ah
0000542A  48                dec ax
0000542B  B90800            mov cx,0x8
0000542E  F7E1              mul cx
00005430  5F                pop di
00005431  03F8              add di,ax
00005433  81C78B01          add di,0x18b
00005437  1E                push ds
00005438  57                push di
00005439  C47EEC            les di,[bp-0x14]
0000543C  268A4504          mov al,[es:di+0x4]
00005440  32E4              xor ah,ah
00005442  50                push ax
00005443  E8EFBB            call word 0x1035
00005446  B80000            mov ax,0x0
00005449  E8FBBB            call word 0x1047
0000544C  B80100            mov ax,0x1
0000544F  E8F5BB            call word 0x1047
00005452  E8C6BC            call word 0x111b
00005455  50                push ax
00005456  C47EEC            les di,[bp-0x14]
00005459  268B05            mov ax,[es:di]
0000545C  3D6400            cmp ax,0x64
0000545F  B80100            mov ax,0x1
00005462  7D01              jnl 0x5465
00005464  48                dec ax
00005465  59                pop cx
00005466  23C1              and ax,cx
00005468  0BC0              or ax,ax
0000546A  7503              jnz 0x546f
0000546C  E95501            jmp word 0x55c4
0000546F  B80000            mov ax,0x0
00005472  A27B15            mov [0x157b],al
00005475  8A46FC            mov al,[bp-0x4]
00005478  32E4              xor ah,ah
0000547A  50                push ax
0000547B  8A46FD            mov al,[bp-0x3]
0000547E  32E4              xor ah,ah
00005480  E8DCAE            call word 0x35f
00005483  B90800            mov cx,0x8
00005486  E86FD2            call word 0x26f8
00005489  E814D8            call word 0x2ca0
0000548C  8A46FC            mov al,[bp-0x4]
0000548F  32E4              xor ah,ah
00005491  50                push ax
00005492  8A46FD            mov al,[bp-0x3]
00005495  32E4              xor ah,ah
00005497  E8C5AE            call word 0x35f
0000549A  B91400            mov cx,0x14
0000549D  E858D2            call word 0x26f8
000054A0  B80800            mov ax,0x8
000054A3  50                push ax
000054A4  B80500            mov ax,0x5
000054A7  50                push ax
000054A8  B84B00            mov ax,0x4b
000054AB  50                push ax
000054AC  E84BD4            call word 0x28fa
000054AF  B90A00            mov cx,0xa
000054B2  E843D2            call word 0x26f8
000054B5  C47EEC            les di,[bp-0x14]
000054B8  268A4504          mov al,[es:di+0x4]
000054BC  32E4              xor ah,ah
000054BE  50                push ax
000054BF  C47EEC            les di,[bp-0x14]
000054C2  268A4507          mov al,[es:di+0x7]
000054C6  32E4              xor ah,ah
000054C8  50                push ax
000054C9  E852D9            call word 0x2e1e
000054CC  8A46FC            mov al,[bp-0x4]
000054CF  32E4              xor ah,ah
000054D1  50                push ax
000054D2  8A46FD            mov al,[bp-0x3]
000054D5  32E4              xor ah,ah
000054D7  E885AE            call word 0x35f
000054DA  C47EEC            les di,[bp-0x14]
000054DD  268A4504          mov al,[es:di+0x4]
000054E1  32E4              xor ah,ah
000054E3  3D0100            cmp ax,0x1
000054E6  7403              jz 0x54eb
000054E8  E93300            jmp word 0x551e
000054EB  B90C00            mov cx,0xc
000054EE  E807D2            call word 0x26f8
000054F1  8A46FD            mov al,[bp-0x3]
000054F4  32E4              xor ah,ah
000054F6  50                push ax
000054F7  8A46FC            mov al,[bp-0x4]
000054FA  32E4              xor ah,ah
000054FC  50                push ax
000054FD  E88AF1            call word 0x468a
00005500  A18415            mov ax,[0x1584]
00005503  050100            add ax,0x1
00005506  A38415            mov [0x1584],ax
00005509  B91400            mov cx,0x14
0000550C  E8E9D1            call word 0x26f8
0000550F  B80900            mov ax,0x9
00005512  50                push ax
00005513  B80500            mov ax,0x5
00005516  50                push ax
00005517  B84B00            mov ax,0x4b
0000551A  50                push ax
0000551B  E8DCD3            call word 0x28fa
0000551E  B90800            mov cx,0x8
00005521  E8D4D1            call word 0x26f8
00005524  E879D7            call word 0x2ca0
00005527  8A46FC            mov al,[bp-0x4]
0000552A  32E4              xor ah,ah
0000552C  50                push ax
0000552D  8A46FD            mov al,[bp-0x3]
00005530  32E4              xor ah,ah
00005532  E82AAE            call word 0x35f
00005535  C47EEC            les di,[bp-0x14]
00005538  268A4504          mov al,[es:di+0x4]
0000553C  32E4              xor ah,ah
0000553E  3D0100            cmp ax,0x1
00005541  7403              jz 0x5546
00005543  E91500            jmp word 0x555b
00005546  B91400            mov cx,0x14
00005549  E8ACD1            call word 0x26f8
0000554C  B80800            mov ax,0x8
0000554F  50                push ax
00005550  B80500            mov ax,0x5
00005553  50                push ax
00005554  B84B00            mov ax,0x4b
00005557  50                push ax
00005558  E89FD3            call word 0x28fa
0000555B  B90800            mov cx,0x8
0000555E  E897D1            call word 0x26f8
00005561  50                push ax
00005562  E8D3D5            call word 0x2b38
00005565  3D4100            cmp ax,0x41
00005568  7F03              jg 0x556d
0000556A  E91100            jmp word 0x557e
0000556D  C47EEC            les di,[bp-0x14]
00005570  06                push es
00005571  57                push di
00005572  B80500            mov ax,0x5
00005575  5F                pop di
00005576  07                pop es
00005577  26884504          mov [es:di+0x4],al
0000557B  E90E00            jmp word 0x558c
0000557E  C47EEC            les di,[bp-0x14]
00005581  06                push es
00005582  57                push di
00005583  B80400            mov ax,0x4
00005586  5F                pop di
00005587  07                pop es
00005588  26884504          mov [es:di+0x4],al
0000558C  C47EEC            les di,[bp-0x14]
0000558F  06                push es
00005590  57                push di
00005591  B80100            mov ax,0x1
00005594  5F                pop di
00005595  07                pop es
00005596  26884506          mov [es:di+0x6],al
0000559A  C47EEC            les di,[bp-0x14]
0000559D  06                push es
0000559E  57                push di
0000559F  B80100            mov ax,0x1
000055A2  5F                pop di
000055A3  07                pop es
000055A4  26884507          mov [es:di+0x7],al
000055A8  B90E00            mov cx,0xe
000055AB  E84AD1            call word 0x26f8
000055AE  8A46FD            mov al,[bp-0x3]
000055B1  32E4              xor ah,ah
000055B3  50                push ax
000055B4  8A46FC            mov al,[bp-0x4]
000055B7  32E4              xor ah,ah
000055B9  50                push ax
000055BA  B80100            mov ax,0x1
000055BD  50                push ax
000055BE  E812EF            call word 0x44d3
000055C1  E93403            jmp word 0x58f8
000055C4  C47EEC            les di,[bp-0x14]
000055C7  268A4504          mov al,[es:di+0x4]
000055CB  32E4              xor ah,ah
000055CD  3D0A00            cmp ax,0xa
000055D0  B80100            mov ax,0x1
000055D3  7401              jz 0x55d6
000055D5  48                dec ax
000055D6  50                push ax
000055D7  C47EEC            les di,[bp-0x14]
000055DA  268A4506          mov al,[es:di+0x6]
000055DE  32E4              xor ah,ah
000055E0  59                pop cx
000055E1  23C1              and ax,cx
000055E3  0BC0              or ax,ax
000055E5  7503              jnz 0x55ea
000055E7  E96D00            jmp word 0x5657
000055EA  A18215            mov ax,[0x1582]
000055ED  050100            add ax,0x1
000055F0  A38215            mov [0x1582],ax
000055F3  C47EEC            les di,[bp-0x14]
000055F6  06                push es
000055F7  57                push di
000055F8  B80000            mov ax,0x0
000055FB  5F                pop di
000055FC  07                pop es
000055FD  26884506          mov [es:di+0x6],al
00005601  8A46FC            mov al,[bp-0x4]
00005604  32E4              xor ah,ah
00005606  50                push ax
00005607  8A46FD            mov al,[bp-0x3]
0000560A  32E4              xor ah,ah
0000560C  E850AD            call word 0x35f
0000560F  B90800            mov cx,0x8
00005612  E8E3D0            call word 0x26f8
00005615  E8AED7            call word 0x2dc6
00005618  8A46FC            mov al,[bp-0x4]
0000561B  32E4              xor ah,ah
0000561D  50                push ax
0000561E  8A46FD            mov al,[bp-0x3]
00005621  32E4              xor ah,ah
00005623  E839AD            call word 0x35f
00005626  B91400            mov cx,0x14
00005629  E8CCD0            call word 0x26f8
0000562C  B80900            mov ax,0x9
0000562F  50                push ax
00005630  B80100            mov ax,0x1
00005633  50                push ax
00005634  B86400            mov ax,0x64
00005637  50                push ax
00005638  E8BFD2            call word 0x28fa
0000563B  B90E00            mov cx,0xe
0000563E  E8B7D0            call word 0x26f8
00005641  8A46FD            mov al,[bp-0x3]
00005644  32E4              xor ah,ah
00005646  50                push ax
00005647  8A46FC            mov al,[bp-0x4]
0000564A  32E4              xor ah,ah
0000564C  50                push ax
0000564D  B80000            mov ax,0x0
00005650  50                push ax
00005651  E87FEE            call word 0x44d3
00005654  E9A102            jmp word 0x58f8
00005657  C47EEC            les di,[bp-0x14]
0000565A  268A4506          mov al,[es:di+0x6]
0000565E  32E4              xor ah,ah
00005660  50                push ax
00005661  C47EEC            les di,[bp-0x14]
00005664  268A4507          mov al,[es:di+0x7]
00005668  32E4              xor ah,ah
0000566A  59                pop cx
0000566B  23C1              and ax,cx
0000566D  50                push ax
0000566E  C47EEC            les di,[bp-0x14]
00005671  268B4502          mov ax,[es:di+0x2]
00005675  3D0700            cmp ax,0x7
00005678  B80100            mov ax,0x1
0000567B  7D01              jnl 0x567e
0000567D  48                dec ax
0000567E  59                pop cx
0000567F  23C1              and ax,cx
00005681  0BC0              or ax,ax
00005683  7503              jnz 0x5688
00005685  E92E00            jmp word 0x56b6
00005688  B80000            mov ax,0x0
0000568B  A27B15            mov [0x157b],al
0000568E  C47EEC            les di,[bp-0x14]
00005691  06                push es
00005692  57                push di
00005693  B80000            mov ax,0x0
00005696  5F                pop di
00005697  07                pop es
00005698  26884507          mov [es:di+0x7],al
0000569C  8A46FC            mov al,[bp-0x4]
0000569F  32E4              xor ah,ah
000056A1  50                push ax
000056A2  8A46FD            mov al,[bp-0x3]
000056A5  32E4              xor ah,ah
000056A7  E8B5AC            call word 0x35f
000056AA  B90800            mov cx,0x8
000056AD  E848D0            call word 0x26f8
000056B0  E854D6            call word 0x2d07
000056B3  E94202            jmp word 0x58f8
000056B6  C47EEC            les di,[bp-0x14]
000056B9  268A4504          mov al,[es:di+0x4]
000056BD  32E4              xor ah,ah
000056BF  3D0200            cmp ax,0x2
000056C2  B80100            mov ax,0x1
000056C5  7401              jz 0x56c8
000056C7  48                dec ax
000056C8  50                push ax
000056C9  C47EEC            les di,[bp-0x14]
000056CC  268B05            mov ax,[es:di]
000056CF  3D6400            cmp ax,0x64
000056D2  B80100            mov ax,0x1
000056D5  7D01              jnl 0x56d8
000056D7  48                dec ax
000056D8  59                pop cx
000056D9  23C1              and ax,cx
000056DB  0BC0              or ax,ax
000056DD  7503              jnz 0x56e2
000056DF  E90002            jmp word 0x58e2
000056E2  B91200            mov cx,0x12
000056E5  E810D0            call word 0x26f8
000056E8  8A46FD            mov al,[bp-0x3]
000056EB  32E4              xor ah,ah
000056ED  50                push ax
000056EE  8A46FC            mov al,[bp-0x4]
000056F1  32E4              xor ah,ah
000056F3  50                push ax
000056F4  8D7EFA            lea di,[bp-0x6]
000056F7  16                push ss
000056F8  57                push di
000056F9  8D7EF8            lea di,[bp-0x8]
000056FC  16                push ss
000056FD  57                push di
000056FE  E875EB            call word 0x4276
00005701  B90B00            mov cx,0xb
00005704  E8F1CF            call word 0x26f8
00005707  4C                dec sp
00005708  8B46FA            mov ax,[bp-0x6]
0000570B  50                push ax
0000570C  8B46F8            mov ax,[bp-0x8]
0000570F  50                push ax
00005710  E857ED            call word 0x446a
00005713  7503              jnz 0x5718
00005715  E9C701            jmp word 0x58df
00005718  8B46FA            mov ax,[bp-0x6]
0000571B  48                dec ax
0000571C  B9C800            mov cx,0xc8
0000571F  F7E1              mul cx
00005721  97                xchg ax,di
00005722  57                push di
00005723  8B46F8            mov ax,[bp-0x8]
00005726  48                dec ax
00005727  B90800            mov cx,0x8
0000572A  F7E1              mul cx
0000572C  5F                pop di
0000572D  03F8              add di,ax
0000572F  8A858F01          mov al,[di+0x18f]
00005733  32E4              xor ah,ah
00005735  3D0A00            cmp ax,0xa
00005738  B80100            mov ax,0x1
0000573B  7C01              jl 0x573e
0000573D  48                dec ax
0000573E  50                push ax
0000573F  8B46FA            mov ax,[bp-0x6]
00005742  48                dec ax
00005743  B9C800            mov cx,0xc8
00005746  F7E1              mul cx
00005748  97                xchg ax,di
00005749  57                push di
0000574A  8B46F8            mov ax,[bp-0x8]
0000574D  48                dec ax
0000574E  B90800            mov cx,0x8
00005751  F7E1              mul cx
00005753  5F                pop di
00005754  03F8              add di,ax
00005756  8A858F01          mov al,[di+0x18f]
0000575A  32E4              xor ah,ah
0000575C  3D0500            cmp ax,0x5
0000575F  B80100            mov ax,0x1
00005762  7F01              jg 0x5765
00005764  48                dec ax
00005765  59                pop cx
00005766  23C1              and ax,cx
00005768  0BC0              or ax,ax
0000576A  7503              jnz 0x576f
0000576C  E97001            jmp word 0x58df
0000576F  A18D15            mov ax,[0x158d]
00005772  B90F00            mov cx,0xf
00005775  99                cwd
00005776  F7F9              idiv cx
00005778  50                push ax
00005779  C47EEC            les di,[bp-0x14]
0000577C  268B05            mov ax,[es:di]
0000577F  50                push ax
00005780  A18F15            mov ax,[0x158f]
00005783  B90200            mov cx,0x2
00005786  F7E9              imul cx
00005788  59                pop cx
00005789  91                xchg ax,cx
0000578A  99                cwd
0000578B  F7F9              idiv cx
0000578D  59                pop cx
0000578E  03C1              add ax,cx
00005790  8946F6            mov [bp-0xa],ax
00005793  B90800            mov cx,0x8
00005796  E85FCF            call word 0x26f8
00005799  50                push ax
0000579A  E89BD3            call word 0x2b38
0000579D  3B46F6            cmp ax,[bp-0xa]
000057A0  B80100            mov ax,0x1
000057A3  7E01              jng 0x57a6
000057A5  48                dec ax
000057A6  50                push ax
000057A7  A18D15            mov ax,[0x158d]
000057AA  3D0A00            cmp ax,0xa
000057AD  B80100            mov ax,0x1
000057B0  7D01              jnl 0x57b3
000057B2  48                dec ax
000057B3  59                pop cx
000057B4  23C1              and ax,cx
000057B6  0BC0              or ax,ax
000057B8  7503              jnz 0x57bd
000057BA  E92201            jmp word 0x58df
000057BD  B80000            mov ax,0x0
000057C0  A27B15            mov [0x157b],al
000057C3  8A46FC            mov al,[bp-0x4]
000057C6  32E4              xor ah,ah
000057C8  50                push ax
000057C9  8A46FD            mov al,[bp-0x3]
000057CC  32E4              xor ah,ah
000057CE  E88EAB            call word 0x35f
000057D1  B90800            mov cx,0x8
000057D4  E821CF            call word 0x26f8
000057D7  E8C6D4            call word 0x2ca0
000057DA  8A46FC            mov al,[bp-0x4]
000057DD  32E4              xor ah,ah
000057DF  50                push ax
000057E0  8A46FD            mov al,[bp-0x3]
000057E3  32E4              xor ah,ah
000057E5  E877AB            call word 0x35f
000057E8  B91400            mov cx,0x14
000057EB  E80ACF            call word 0x26f8
000057EE  B80400            mov ax,0x4
000057F1  50                push ax
000057F2  B80600            mov ax,0x6
000057F5  50                push ax
000057F6  B83200            mov ax,0x32
000057F9  50                push ax
000057FA  E8FDD0            call word 0x28fa
000057FD  B80100            mov ax,0x1
00005800  50                push ax
00005801  B80300            mov ax,0x3
00005804  59                pop cx
00005805  91                xchg ax,cx
00005806  2BC8              sub cx,ax
00005808  7D03              jnl 0x580d
0000580A  E96C00            jmp word 0x5879
0000580D  41                inc cx
0000580E  8946F4            mov [bp-0xc],ax
00005811  51                push cx
00005812  B90A00            mov cx,0xa
00005815  E8E0CE            call word 0x26f8
00005818  C47EEC            les di,[bp-0x14]
0000581B  268A4504          mov al,[es:di+0x4]
0000581F  32E4              xor ah,ah
00005821  50                push ax
00005822  C47EEC            les di,[bp-0x14]
00005825  268A4507          mov al,[es:di+0x7]
00005829  32E4              xor ah,ah
0000582B  50                push ax
0000582C  E8EFD5            call word 0x2e1e
0000582F  8A46FC            mov al,[bp-0x4]
00005832  32E4              xor ah,ah
00005834  50                push ax
00005835  8A46FD            mov al,[bp-0x3]
00005838  32E4              xor ah,ah
0000583A  E822AB            call word 0x35f
0000583D  B83200            mov ax,0x32
00005840  E836AC            call word 0x479
00005843  B90800            mov cx,0x8
00005846  E8AFCE            call word 0x26f8
00005849  E854D4            call word 0x2ca0
0000584C  8A46FC            mov al,[bp-0x4]
0000584F  32E4              xor ah,ah
00005851  50                push ax
00005852  8A46FD            mov al,[bp-0x3]
00005855  32E4              xor ah,ah
00005857  E805AB            call word 0x35f
0000585A  B91400            mov cx,0x14
0000585D  E898CE            call word 0x26f8
00005860  B80400            mov ax,0x4
00005863  50                push ax
00005864  B80600            mov ax,0x6
00005867  50                push ax
00005868  B83200            mov ax,0x32
0000586B  50                push ax
0000586C  E88BD0            call word 0x28fa
0000586F  59                pop cx
00005870  49                dec cx
00005871  7406              jz 0x5879
00005873  FF46F4            inc word [bp-0xc]
00005876  E998FF            jmp word 0x5811
00005879  B90800            mov cx,0x8
0000587C  E879CE            call word 0x26f8
0000587F  50                push ax
00005880  E8B5D2            call word 0x2b38
00005883  3D4100            cmp ax,0x41
00005886  7F03              jg 0x588b
00005888  E91100            jmp word 0x589c
0000588B  C47EEC            les di,[bp-0x14]
0000588E  06                push es
0000588F  57                push di
00005890  B80500            mov ax,0x5
00005893  5F                pop di
00005894  07                pop es
00005895  26884504          mov [es:di+0x4],al
00005899  E90E00            jmp word 0x58aa
0000589C  C47EEC            les di,[bp-0x14]
0000589F  06                push es
000058A0  57                push di
000058A1  B80400            mov ax,0x4
000058A4  5F                pop di
000058A5  07                pop es
000058A6  26884504          mov [es:di+0x4],al
000058AA  C47EEC            les di,[bp-0x14]
000058AD  06                push es
000058AE  57                push di
000058AF  B80100            mov ax,0x1
000058B2  5F                pop di
000058B3  07                pop es
000058B4  26884506          mov [es:di+0x6],al
000058B8  C47EEC            les di,[bp-0x14]
000058BB  06                push es
000058BC  57                push di
000058BD  B80100            mov ax,0x1
000058C0  5F                pop di
000058C1  07                pop es
000058C2  26884507          mov [es:di+0x7],al
000058C6  B90E00            mov cx,0xe
000058C9  E82CCE            call word 0x26f8
000058CC  8A46FD            mov al,[bp-0x3]
000058CF  32E4              xor ah,ah
000058D1  50                push ax
000058D2  8A46FC            mov al,[bp-0x4]
000058D5  32E4              xor ah,ah
000058D7  50                push ax
000058D8  B80100            mov ax,0x1
000058DB  50                push ax
000058DC  E8F4EB            call word 0x44d3
000058DF  E91600            jmp word 0x58f8
000058E2  C47EEC            les di,[bp-0x14]
000058E5  268A4506          mov al,[es:di+0x6]
000058E9  32E4              xor ah,ah
000058EB  0BC0              or ax,ax
000058ED  7503              jnz 0x58f2
000058EF  E90600            jmp word 0x58f8
000058F2  B80000            mov ax,0x0
000058F5  A27B15            mov [0x157b],al
000058F8  58                pop ax
000058F9  58                pop ax
000058FA  59                pop cx
000058FB  49                dec cx
000058FC  7406              jz 0x5904
000058FE  FE46FC            inc byte [bp-0x4]
00005901  E913FB            jmp word 0x5417
00005904  59                pop cx
00005905  49                dec cx
00005906  7406              jz 0x590e
00005908  FE46FD            inc byte [bp-0x3]
0000590B  E9F4FA            jmp word 0x5402
0000590E  E90000            jmp word 0x5911
00005911  8BE5              mov sp,bp
00005913  5D                pop bp
00005914  C3                ret
00005915  55                push bp
00005916  8BEC              mov bp,sp
00005918  55                push bp
00005919  E90000            jmp word 0x591c
0000591C  50                push ax
0000591D  8D7EFC            lea di,[bp-0x4]
00005920  16                push ss
00005921  57                push di
00005922  B82000            mov ax,0x20
00005925  8AE0              mov ah,al
00005927  B001              mov al,0x1
00005929  50                push ax
0000592A  B101              mov cl,0x1
0000592C  E827B4            call word 0xd56
0000592F  8A4604            mov al,[bp+0x4]
00005932  32E4              xor ah,ah
00005934  0BC0              or ax,ax
00005936  7503              jnz 0x593b
00005938  E90900            jmp word 0x5944
0000593B  B80F00            mov ax,0xf
0000593E  051000            add ax,0x10
00005941  E887AB            call word 0x4cb
00005944  8B4606            mov ax,[bp+0x6]
00005947  3D0000            cmp ax,0x0
0000594A  B80100            mov ax,0x1
0000594D  7D01              jnl 0x5950
0000594F  48                dec ax
00005950  50                push ax
00005951  8B4606            mov ax,[bp+0x6]
00005954  3D0700            cmp ax,0x7
00005957  B80100            mov ax,0x1
0000595A  7E01              jng 0x595d
0000595C  48                dec ax
0000595D  59                pop cx
0000595E  23C1              and ax,cx
00005960  0BC0              or ax,ax
00005962  7503              jnz 0x5967
00005964  E92F06            jmp word 0x5f96
00005967  8B4606            mov ax,[bp+0x6]
0000596A  3D0000            cmp ax,0x0
0000596D  7403              jz 0x5972
0000596F  E9C200            jmp word 0x5a34
00005972  A19315            mov ax,[0x1593]
00005975  050600            add ax,0x6
00005978  50                push ax
00005979  B80400            mov ax,0x4
0000597C  050100            add ax,0x1
0000597F  E8DDA9            call word 0x35f
00005982  8A4604            mov al,[bp+0x4]
00005985  32E4              xor ah,ah
00005987  0BC0              or ax,ax
00005989  7503              jnz 0x598e
0000598B  E90F00            jmp word 0x599d
0000598E  B80100            mov ax,0x1
00005991  97                xchg ax,di
00005992  57                push di
00005993  B85E00            mov ax,0x5e
00005996  5F                pop di
00005997  8843FC            mov [bp+di-0x4],al
0000599A  E90C00            jmp word 0x59a9
0000599D  B80100            mov ax,0x1
000059A0  97                xchg ax,di
000059A1  57                push di
000059A2  B82000            mov ax,0x20
000059A5  5F                pop di
000059A6  8843FC            mov [bp+di-0x4],al
000059A9  E8D3C4            call word 0x1e7f
000059AC  8D7EFC            lea di,[bp-0x4]
000059AF  16                push ss
000059B0  E874B3            call word 0xd27
000059B3  B80000            mov ax,0x0
000059B6  E840C8            call word 0x21f9
000059B9  E8B1CD            call word 0x276d
000059BC  A19315            mov ax,[0x1593]
000059BF  050600            add ax,0x6
000059C2  50                push ax
000059C3  B80400            mov ax,0x4
000059C6  050200            add ax,0x2
000059C9  E893A9            call word 0x35f
000059CC  B80100            mov ax,0x1
000059CF  97                xchg ax,di
000059D0  57                push di
000059D1  B8B300            mov ax,0xb3
000059D4  5F                pop di
000059D5  8843FC            mov [bp+di-0x4],al
000059D8  E8A4C4            call word 0x1e7f
000059DB  8D7EFC            lea di,[bp-0x4]
000059DE  16                push ss
000059DF  E845B3            call word 0xd27
000059E2  B80000            mov ax,0x0
000059E5  E811C8            call word 0x21f9
000059E8  E882CD            call word 0x276d
000059EB  A19315            mov ax,[0x1593]
000059EE  050600            add ax,0x6
000059F1  50                push ax
000059F2  B80400            mov ax,0x4
000059F5  050300            add ax,0x3
000059F8  E864A9            call word 0x35f
000059FB  E881C4            call word 0x1e7f
000059FE  8D7EFC            lea di,[bp-0x4]
00005A01  16                push ss
00005A02  E822B3            call word 0xd27
00005A05  B80000            mov ax,0x0
00005A08  E8EEC7            call word 0x21f9
00005A0B  E85FCD            call word 0x276d
00005A0E  A19315            mov ax,[0x1593]
00005A11  050600            add ax,0x6
00005A14  50                push ax
00005A15  B80400            mov ax,0x4
00005A18  050400            add ax,0x4
00005A1B  E841A9            call word 0x35f
00005A1E  E85EC4            call word 0x1e7f
00005A21  8D7EFC            lea di,[bp-0x4]
00005A24  16                push ss
00005A25  E8FFB2            call word 0xd27
00005A28  B80000            mov ax,0x0
00005A2B  E8CBC7            call word 0x21f9
00005A2E  E83CCD            call word 0x276d
00005A31  E96205            jmp word 0x5f96
00005A34  3D0100            cmp ax,0x1
00005A37  7403              jz 0x5a3c
00005A39  E9C200            jmp word 0x5afe
00005A3C  A19315            mov ax,[0x1593]
00005A3F  050A00            add ax,0xa
00005A42  50                push ax
00005A43  B80400            mov ax,0x4
00005A46  050100            add ax,0x1
00005A49  E813A9            call word 0x35f
00005A4C  8A4604            mov al,[bp+0x4]
00005A4F  32E4              xor ah,ah
00005A51  0BC0              or ax,ax
00005A53  7503              jnz 0x5a58
00005A55  E90F00            jmp word 0x5a67
00005A58  B80100            mov ax,0x1
00005A5B  97                xchg ax,di
00005A5C  57                push di
00005A5D  B8BF00            mov ax,0xbf
00005A60  5F                pop di
00005A61  8843FC            mov [bp+di-0x4],al
00005A64  E90C00            jmp word 0x5a73
00005A67  B80100            mov ax,0x1
00005A6A  97                xchg ax,di
00005A6B  57                push di
00005A6C  B82000            mov ax,0x20
00005A6F  5F                pop di
00005A70  8843FC            mov [bp+di-0x4],al
00005A73  E809C4            call word 0x1e7f
00005A76  8D7EFC            lea di,[bp-0x4]
00005A79  16                push ss
00005A7A  E8AAB2            call word 0xd27
00005A7D  B80000            mov ax,0x0
00005A80  E876C7            call word 0x21f9
00005A83  E8E7CC            call word 0x276d
00005A86  A19315            mov ax,[0x1593]
00005A89  050900            add ax,0x9
00005A8C  50                push ax
00005A8D  B80400            mov ax,0x4
00005A90  050200            add ax,0x2
00005A93  E8C9A8            call word 0x35f
00005A96  B80100            mov ax,0x1
00005A99  97                xchg ax,di
00005A9A  57                push di
00005A9B  B82F00            mov ax,0x2f
00005A9E  5F                pop di
00005A9F  8843FC            mov [bp+di-0x4],al
00005AA2  E8DAC3            call word 0x1e7f
00005AA5  8D7EFC            lea di,[bp-0x4]
00005AA8  16                push ss
00005AA9  E87BB2            call word 0xd27
00005AAC  B80000            mov ax,0x0
00005AAF  E847C7            call word 0x21f9
00005AB2  E8B8CC            call word 0x276d
00005AB5  A19315            mov ax,[0x1593]
00005AB8  050800            add ax,0x8
00005ABB  50                push ax
00005ABC  B80400            mov ax,0x4
00005ABF  050300            add ax,0x3
00005AC2  E89AA8            call word 0x35f
00005AC5  E8B7C3            call word 0x1e7f
00005AC8  8D7EFC            lea di,[bp-0x4]
00005ACB  16                push ss
00005ACC  E858B2            call word 0xd27
00005ACF  B80000            mov ax,0x0
00005AD2  E824C7            call word 0x21f9
00005AD5  E895CC            call word 0x276d
00005AD8  A19315            mov ax,[0x1593]
00005ADB  050700            add ax,0x7
00005ADE  50                push ax
00005ADF  B80400            mov ax,0x4
00005AE2  050400            add ax,0x4
00005AE5  E877A8            call word 0x35f
00005AE8  E894C3            call word 0x1e7f
00005AEB  8D7EFC            lea di,[bp-0x4]
00005AEE  16                push ss
00005AEF  E835B2            call word 0xd27
00005AF2  B80000            mov ax,0x0
00005AF5  E801C7            call word 0x21f9
00005AF8  E872CC            call word 0x276d
00005AFB  E99804            jmp word 0x5f96
00005AFE  3D0200            cmp ax,0x2
00005B01  7403              jz 0x5b06
00005B03  E9B700            jmp word 0x5bbd
00005B06  A19315            mov ax,[0x1593]
00005B09  050A00            add ax,0xa
00005B0C  50                push ax
00005B0D  B80400            mov ax,0x4
00005B10  050500            add ax,0x5
00005B13  E849A8            call word 0x35f
00005B16  8A4604            mov al,[bp+0x4]
00005B19  32E4              xor ah,ah
00005B1B  0BC0              or ax,ax
00005B1D  7503              jnz 0x5b22
00005B1F  E91300            jmp word 0x5b35
00005B22  E85AC3            call word 0x1e7f
00005B25  B83E00            mov ax,0x3e
00005B28  50                push ax
00005B29  B80000            mov ax,0x0
00005B2C  E854C6            call word 0x2183
00005B2F  E83BCC            call word 0x276d
00005B32  E91000            jmp word 0x5b45
00005B35  E847C3            call word 0x1e7f
00005B38  B82000            mov ax,0x20
00005B3B  50                push ax
00005B3C  B80000            mov ax,0x0
00005B3F  E841C6            call word 0x2183
00005B42  E828CC            call word 0x276d
00005B45  A19315            mov ax,[0x1593]
00005B48  050900            add ax,0x9
00005B4B  50                push ax
00005B4C  B80400            mov ax,0x4
00005B4F  050500            add ax,0x5
00005B52  E80AA8            call word 0x35f
00005B55  B80100            mov ax,0x1
00005B58  97                xchg ax,di
00005B59  57                push di
00005B5A  B8C400            mov ax,0xc4
00005B5D  5F                pop di
00005B5E  8843FC            mov [bp+di-0x4],al
00005B61  E81BC3            call word 0x1e7f
00005B64  8D7EFC            lea di,[bp-0x4]
00005B67  16                push ss
00005B68  E8BCB1            call word 0xd27
00005B6B  B80000            mov ax,0x0
00005B6E  E888C6            call word 0x21f9
00005B71  E8F9CB            call word 0x276d
00005B74  A19315            mov ax,[0x1593]
00005B77  050800            add ax,0x8
00005B7A  50                push ax
00005B7B  B80400            mov ax,0x4
00005B7E  050500            add ax,0x5
00005B81  E8DBA7            call word 0x35f
00005B84  E8F8C2            call word 0x1e7f
00005B87  8D7EFC            lea di,[bp-0x4]
00005B8A  16                push ss
00005B8B  E899B1            call word 0xd27
00005B8E  B80000            mov ax,0x0
00005B91  E865C6            call word 0x21f9
00005B94  E8D6CB            call word 0x276d
00005B97  A19315            mov ax,[0x1593]
00005B9A  050700            add ax,0x7
00005B9D  50                push ax
00005B9E  B80400            mov ax,0x4
00005BA1  050500            add ax,0x5
00005BA4  E8B8A7            call word 0x35f
00005BA7  E8D5C2            call word 0x1e7f
00005BAA  8D7EFC            lea di,[bp-0x4]
00005BAD  16                push ss
00005BAE  E876B1            call word 0xd27
00005BB1  B80000            mov ax,0x0
00005BB4  E842C6            call word 0x21f9
00005BB7  E8B3CB            call word 0x276d
00005BBA  E9D903            jmp word 0x5f96
00005BBD  3D0300            cmp ax,0x3
00005BC0  7403              jz 0x5bc5
00005BC2  E9C200            jmp word 0x5c87
00005BC5  A19315            mov ax,[0x1593]
00005BC8  050A00            add ax,0xa
00005BCB  50                push ax
00005BCC  B80400            mov ax,0x4
00005BCF  050900            add ax,0x9
00005BD2  E88AA7            call word 0x35f
00005BD5  8A4604            mov al,[bp+0x4]
00005BD8  32E4              xor ah,ah
00005BDA  0BC0              or ax,ax
00005BDC  7503              jnz 0x5be1
00005BDE  E90F00            jmp word 0x5bf0
00005BE1  B80100            mov ax,0x1
00005BE4  97                xchg ax,di
00005BE5  57                push di
00005BE6  B8D900            mov ax,0xd9
00005BE9  5F                pop di
00005BEA  8843FC            mov [bp+di-0x4],al
00005BED  E90C00            jmp word 0x5bfc
00005BF0  B80100            mov ax,0x1
00005BF3  97                xchg ax,di
00005BF4  57                push di
00005BF5  B82000            mov ax,0x20
00005BF8  5F                pop di
00005BF9  8843FC            mov [bp+di-0x4],al
00005BFC  E880C2            call word 0x1e7f
00005BFF  8D7EFC            lea di,[bp-0x4]
00005C02  16                push ss
00005C03  E821B1            call word 0xd27
00005C06  B80000            mov ax,0x0
00005C09  E8EDC5            call word 0x21f9
00005C0C  E85ECB            call word 0x276d
00005C0F  A19315            mov ax,[0x1593]
00005C12  050900            add ax,0x9
00005C15  50                push ax
00005C16  B80400            mov ax,0x4
00005C19  050800            add ax,0x8
00005C1C  E840A7            call word 0x35f
00005C1F  B80100            mov ax,0x1
00005C22  97                xchg ax,di
00005C23  57                push di
00005C24  B85C00            mov ax,0x5c
00005C27  5F                pop di
00005C28  8843FC            mov [bp+di-0x4],al
00005C2B  E851C2            call word 0x1e7f
00005C2E  8D7EFC            lea di,[bp-0x4]
00005C31  16                push ss
00005C32  E8F2B0            call word 0xd27
00005C35  B80000            mov ax,0x0
00005C38  E8BEC5            call word 0x21f9
00005C3B  E82FCB            call word 0x276d
00005C3E  A19315            mov ax,[0x1593]
00005C41  050800            add ax,0x8
00005C44  50                push ax
00005C45  B80400            mov ax,0x4
00005C48  050700            add ax,0x7
00005C4B  E811A7            call word 0x35f
00005C4E  E82EC2            call word 0x1e7f
00005C51  8D7EFC            lea di,[bp-0x4]
00005C54  16                push ss
00005C55  E8CFB0            call word 0xd27
00005C58  B80000            mov ax,0x0
00005C5B  E89BC5            call word 0x21f9
00005C5E  E80CCB            call word 0x276d
00005C61  A19315            mov ax,[0x1593]
00005C64  050700            add ax,0x7
00005C67  50                push ax
00005C68  B80400            mov ax,0x4
00005C6B  050600            add ax,0x6
00005C6E  E8EEA6            call word 0x35f
00005C71  E80BC2            call word 0x1e7f
00005C74  8D7EFC            lea di,[bp-0x4]
00005C77  16                push ss
00005C78  E8ACB0            call word 0xd27
00005C7B  B80000            mov ax,0x0
00005C7E  E878C5            call word 0x21f9
00005C81  E8E9CA            call word 0x276d
00005C84  E90F03            jmp word 0x5f96
00005C87  3D0400            cmp ax,0x4
00005C8A  7403              jz 0x5c8f
00005C8C  E9B700            jmp word 0x5d46
00005C8F  A19315            mov ax,[0x1593]
00005C92  050600            add ax,0x6
00005C95  50                push ax
00005C96  B80400            mov ax,0x4
00005C99  050900            add ax,0x9
00005C9C  E8C0A6            call word 0x35f
00005C9F  8A4604            mov al,[bp+0x4]
00005CA2  32E4              xor ah,ah
00005CA4  0BC0              or ax,ax
00005CA6  7503              jnz 0x5cab
00005CA8  E91300            jmp word 0x5cbe
00005CAB  E8D1C1            call word 0x1e7f
00005CAE  B87600            mov ax,0x76
00005CB1  50                push ax
00005CB2  B80000            mov ax,0x0
00005CB5  E8CBC4            call word 0x2183
00005CB8  E8B2CA            call word 0x276d
00005CBB  E91000            jmp word 0x5cce
00005CBE  E8BEC1            call word 0x1e7f
00005CC1  B82000            mov ax,0x20
00005CC4  50                push ax
00005CC5  B80000            mov ax,0x0
00005CC8  E8B8C4            call word 0x2183
00005CCB  E89FCA            call word 0x276d
00005CCE  A19315            mov ax,[0x1593]
00005CD1  050600            add ax,0x6
00005CD4  50                push ax
00005CD5  B80400            mov ax,0x4
00005CD8  050800            add ax,0x8
00005CDB  E881A6            call word 0x35f
00005CDE  B80100            mov ax,0x1
00005CE1  97                xchg ax,di
00005CE2  57                push di
00005CE3  B8B300            mov ax,0xb3
00005CE6  5F                pop di
00005CE7  8843FC            mov [bp+di-0x4],al
00005CEA  E892C1            call word 0x1e7f
00005CED  8D7EFC            lea di,[bp-0x4]
00005CF0  16                push ss
00005CF1  E833B0            call word 0xd27
00005CF4  B80000            mov ax,0x0
00005CF7  E8FFC4            call word 0x21f9
00005CFA  E870CA            call word 0x276d
00005CFD  A19315            mov ax,[0x1593]
00005D00  050600            add ax,0x6
00005D03  50                push ax
00005D04  B80400            mov ax,0x4
00005D07  050700            add ax,0x7
00005D0A  E852A6            call word 0x35f
00005D0D  E86FC1            call word 0x1e7f
00005D10  8D7EFC            lea di,[bp-0x4]
00005D13  16                push ss
00005D14  E810B0            call word 0xd27
00005D17  B80000            mov ax,0x0
00005D1A  E8DCC4            call word 0x21f9
00005D1D  E84DCA            call word 0x276d
00005D20  A19315            mov ax,[0x1593]
00005D23  050600            add ax,0x6
00005D26  50                push ax
00005D27  B80400            mov ax,0x4
00005D2A  050600            add ax,0x6
00005D2D  E82FA6            call word 0x35f
00005D30  E84CC1            call word 0x1e7f
00005D33  8D7EFC            lea di,[bp-0x4]
00005D36  16                push ss
00005D37  E8EDAF            call word 0xd27
00005D3A  B80000            mov ax,0x0
00005D3D  E8B9C4            call word 0x21f9
00005D40  E82ACA            call word 0x276d
00005D43  E95002            jmp word 0x5f96
00005D46  3D0500            cmp ax,0x5
00005D49  7403              jz 0x5d4e
00005D4B  E9C200            jmp word 0x5e10
00005D4E  A19315            mov ax,[0x1593]
00005D51  050200            add ax,0x2
00005D54  50                push ax
00005D55  B80400            mov ax,0x4
00005D58  050900            add ax,0x9
00005D5B  E801A6            call word 0x35f
00005D5E  8A4604            mov al,[bp+0x4]
00005D61  32E4              xor ah,ah
00005D63  0BC0              or ax,ax
00005D65  7503              jnz 0x5d6a
00005D67  E90F00            jmp word 0x5d79
00005D6A  B80100            mov ax,0x1
00005D6D  97                xchg ax,di
00005D6E  57                push di
00005D6F  B8C000            mov ax,0xc0
00005D72  5F                pop di
00005D73  8843FC            mov [bp+di-0x4],al
00005D76  E90C00            jmp word 0x5d85
00005D79  B80100            mov ax,0x1
00005D7C  97                xchg ax,di
00005D7D  57                push di
00005D7E  B82000            mov ax,0x20
00005D81  5F                pop di
00005D82  8843FC            mov [bp+di-0x4],al
00005D85  E8F7C0            call word 0x1e7f
00005D88  8D7EFC            lea di,[bp-0x4]
00005D8B  16                push ss
00005D8C  E898AF            call word 0xd27
00005D8F  B80000            mov ax,0x0
00005D92  E864C4            call word 0x21f9
00005D95  E8D5C9            call word 0x276d
00005D98  A19315            mov ax,[0x1593]
00005D9B  050300            add ax,0x3
00005D9E  50                push ax
00005D9F  B80400            mov ax,0x4
00005DA2  050800            add ax,0x8
00005DA5  E8B7A5            call word 0x35f
00005DA8  B80100            mov ax,0x1
00005DAB  97                xchg ax,di
00005DAC  57                push di
00005DAD  B82F00            mov ax,0x2f
00005DB0  5F                pop di
00005DB1  8843FC            mov [bp+di-0x4],al
00005DB4  E8C8C0            call word 0x1e7f
00005DB7  8D7EFC            lea di,[bp-0x4]
00005DBA  16                push ss
00005DBB  E869AF            call word 0xd27
00005DBE  B80000            mov ax,0x0
00005DC1  E835C4            call word 0x21f9
00005DC4  E8A6C9            call word 0x276d
00005DC7  A19315            mov ax,[0x1593]
00005DCA  050400            add ax,0x4
00005DCD  50                push ax
00005DCE  B80400            mov ax,0x4
00005DD1  050700            add ax,0x7
00005DD4  E888A5            call word 0x35f
00005DD7  E8A5C0            call word 0x1e7f
00005DDA  8D7EFC            lea di,[bp-0x4]
00005DDD  16                push ss
00005DDE  E846AF            call word 0xd27
00005DE1  B80000            mov ax,0x0
00005DE4  E812C4            call word 0x21f9
00005DE7  E883C9            call word 0x276d
00005DEA  A19315            mov ax,[0x1593]
00005DED  050500            add ax,0x5
00005DF0  50                push ax
00005DF1  B80400            mov ax,0x4
00005DF4  050600            add ax,0x6
00005DF7  E865A5            call word 0x35f
00005DFA  E882C0            call word 0x1e7f
00005DFD  8D7EFC            lea di,[bp-0x4]
00005E00  16                push ss
00005E01  E823AF            call word 0xd27
00005E04  B80000            mov ax,0x0
00005E07  E8EFC3            call word 0x21f9
00005E0A  E860C9            call word 0x276d
00005E0D  E98601            jmp word 0x5f96
00005E10  3D0600            cmp ax,0x6
00005E13  7403              jz 0x5e18
00005E15  E9B700            jmp word 0x5ecf
00005E18  A19315            mov ax,[0x1593]
00005E1B  050200            add ax,0x2
00005E1E  50                push ax
00005E1F  B80400            mov ax,0x4
00005E22  050500            add ax,0x5
00005E25  E837A5            call word 0x35f
00005E28  8A4604            mov al,[bp+0x4]
00005E2B  32E4              xor ah,ah
00005E2D  0BC0              or ax,ax
00005E2F  7503              jnz 0x5e34
00005E31  E91300            jmp word 0x5e47
00005E34  E848C0            call word 0x1e7f
00005E37  B83C00            mov ax,0x3c
00005E3A  50                push ax
00005E3B  B80000            mov ax,0x0
00005E3E  E842C3            call word 0x2183
00005E41  E829C9            call word 0x276d
00005E44  E91000            jmp word 0x5e57
00005E47  E835C0            call word 0x1e7f
00005E4A  B82000            mov ax,0x20
00005E4D  50                push ax
00005E4E  B80000            mov ax,0x0
00005E51  E82FC3            call word 0x2183
00005E54  E816C9            call word 0x276d
00005E57  A19315            mov ax,[0x1593]
00005E5A  050300            add ax,0x3
00005E5D  50                push ax
00005E5E  B80400            mov ax,0x4
00005E61  050500            add ax,0x5
00005E64  E8F8A4            call word 0x35f
00005E67  B80100            mov ax,0x1
00005E6A  97                xchg ax,di
00005E6B  57                push di
00005E6C  B8C400            mov ax,0xc4
00005E6F  5F                pop di
00005E70  8843FC            mov [bp+di-0x4],al
00005E73  E809C0            call word 0x1e7f
00005E76  8D7EFC            lea di,[bp-0x4]
00005E79  16                push ss
00005E7A  E8AAAE            call word 0xd27
00005E7D  B80000            mov ax,0x0
00005E80  E876C3            call word 0x21f9
00005E83  E8E7C8            call word 0x276d
00005E86  A19315            mov ax,[0x1593]
00005E89  050400            add ax,0x4
00005E8C  50                push ax
00005E8D  B80400            mov ax,0x4
00005E90  050500            add ax,0x5
00005E93  E8C9A4            call word 0x35f
00005E96  E8E6BF            call word 0x1e7f
00005E99  8D7EFC            lea di,[bp-0x4]
00005E9C  16                push ss
00005E9D  E887AE            call word 0xd27
00005EA0  B80000            mov ax,0x0
00005EA3  E853C3            call word 0x21f9
00005EA6  E8C4C8            call word 0x276d
00005EA9  A19315            mov ax,[0x1593]
00005EAC  050500            add ax,0x5
00005EAF  50                push ax
00005EB0  B80400            mov ax,0x4
00005EB3  050500            add ax,0x5
00005EB6  E8A6A4            call word 0x35f
00005EB9  E8C3BF            call word 0x1e7f
00005EBC  8D7EFC            lea di,[bp-0x4]
00005EBF  16                push ss
00005EC0  E864AE            call word 0xd27
00005EC3  B80000            mov ax,0x0
00005EC6  E830C3            call word 0x21f9
00005EC9  E8A1C8            call word 0x276d
00005ECC  E9C700            jmp word 0x5f96
00005ECF  3D0700            cmp ax,0x7
00005ED2  7403              jz 0x5ed7
00005ED4  E9BF00            jmp word 0x5f96
00005ED7  A19315            mov ax,[0x1593]
00005EDA  050200            add ax,0x2
00005EDD  50                push ax
00005EDE  B80400            mov ax,0x4
00005EE1  050100            add ax,0x1
00005EE4  E878A4            call word 0x35f
00005EE7  8A4604            mov al,[bp+0x4]
00005EEA  32E4              xor ah,ah
00005EEC  0BC0              or ax,ax
00005EEE  7503              jnz 0x5ef3
00005EF0  E90F00            jmp word 0x5f02
00005EF3  B80100            mov ax,0x1
00005EF6  97                xchg ax,di
00005EF7  57                push di
00005EF8  B8DA00            mov ax,0xda
00005EFB  5F                pop di
00005EFC  8843FC            mov [bp+di-0x4],al
00005EFF  E90C00            jmp word 0x5f0e
00005F02  B80100            mov ax,0x1
00005F05  97                xchg ax,di
00005F06  57                push di
00005F07  B82000            mov ax,0x20
00005F0A  5F                pop di
00005F0B  8843FC            mov [bp+di-0x4],al
00005F0E  E86EBF            call word 0x1e7f
00005F11  8D7EFC            lea di,[bp-0x4]
00005F14  16                push ss
00005F15  E80FAE            call word 0xd27
00005F18  B80000            mov ax,0x0
00005F1B  E8DBC2            call word 0x21f9
00005F1E  E84CC8            call word 0x276d
00005F21  A19315            mov ax,[0x1593]
00005F24  050300            add ax,0x3
00005F27  50                push ax
00005F28  B80400            mov ax,0x4
00005F2B  050200            add ax,0x2
00005F2E  E82EA4            call word 0x35f
00005F31  B80100            mov ax,0x1
00005F34  97                xchg ax,di
00005F35  57                push di
00005F36  B85C00            mov ax,0x5c
00005F39  5F                pop di
00005F3A  8843FC            mov [bp+di-0x4],al
00005F3D  E83FBF            call word 0x1e7f
00005F40  8D7EFC            lea di,[bp-0x4]
00005F43  16                push ss
00005F44  E8E0AD            call word 0xd27
00005F47  B80000            mov ax,0x0
00005F4A  E8ACC2            call word 0x21f9
00005F4D  E81DC8            call word 0x276d
00005F50  A19315            mov ax,[0x1593]
00005F53  050400            add ax,0x4
00005F56  50                push ax
00005F57  B80400            mov ax,0x4
00005F5A  050300            add ax,0x3
00005F5D  E8FFA3            call word 0x35f
00005F60  E81CBF            call word 0x1e7f
00005F63  8D7EFC            lea di,[bp-0x4]
00005F66  16                push ss
00005F67  E8BDAD            call word 0xd27
00005F6A  B80000            mov ax,0x0
00005F6D  E889C2            call word 0x21f9
00005F70  E8FAC7            call word 0x276d
00005F73  A19315            mov ax,[0x1593]
00005F76  050500            add ax,0x5
00005F79  50                push ax
00005F7A  B80400            mov ax,0x4
00005F7D  050400            add ax,0x4
00005F80  E8DCA3            call word 0x35f
00005F83  E8F9BE            call word 0x1e7f
00005F86  8D7EFC            lea di,[bp-0x4]
00005F89  16                push ss
00005F8A  E89AAD            call word 0xd27
00005F8D  B80000            mov ax,0x0
00005F90  E866C2            call word 0x21f9
00005F93  E8D7C7            call word 0x276d
00005F96  8A4604            mov al,[bp+0x4]
00005F99  32E4              xor ah,ah
00005F9B  0BC0              or ax,ax
00005F9D  7503              jnz 0x5fa2
00005F9F  E90600            jmp word 0x5fa8
00005FA2  B80F00            mov ax,0xf
00005FA5  E823A5            call word 0x4cb
00005FA8  E90000            jmp word 0x5fab
00005FAB  8BE5              mov sp,bp
00005FAD  5D                pop bp
00005FAE  C20400            ret 0x4
00005FB1  55                push bp
00005FB2  8BEC              mov bp,sp
00005FB4  55                push bp
00005FB5  E90000            jmp word 0x5fb8
00005FB8  83EC08            sub sp,byte +0x8
00005FBB  A08C15            mov al,[0x158c]
00005FBE  32E4              xor ah,ah
00005FC0  8946FC            mov [bp-0x4],ax
00005FC3  A18D15            mov ax,[0x158d]
00005FC6  8946FA            mov [bp-0x6],ax
00005FC9  A18815            mov ax,[0x1588]
00005FCC  3D0300            cmp ax,0x3
00005FCF  7E03              jng 0x5fd4
00005FD1  E90900            jmp word 0x5fdd
00005FD4  B86400            mov ax,0x64
00005FD7  8946F6            mov [bp-0xa],ax
00005FDA  E93B00            jmp word 0x6018
00005FDD  A07C15            mov al,[0x157c]
00005FE0  32E4              xor ah,ah
00005FE2  3D0000            cmp ax,0x0
00005FE5  B80100            mov ax,0x1
00005FE8  7F01              jg 0x5feb
00005FEA  48                dec ax
00005FEB  50                push ax
00005FEC  A18815            mov ax,[0x1588]
00005FEF  B90700            mov cx,0x7
00005FF2  99                cwd
00005FF3  F7F9              idiv cx
00005FF5  92                xchg ax,dx
00005FF6  3D0000            cmp ax,0x0
00005FF9  B80100            mov ax,0x1
00005FFC  7401              jz 0x5fff
00005FFE  48                dec ax
00005FFF  59                pop cx
00006000  23C1              and ax,cx
00006002  0BC0              or ax,ax
00006004  7503              jnz 0x6009
00006006  E90900            jmp word 0x6012
00006009  B82100            mov ax,0x21
0000600C  8946F6            mov [bp-0xa],ax
0000600F  E90600            jmp word 0x6018
00006012  B84B00            mov ax,0x4b
00006015  8946F6            mov [bp-0xa],ax
00006018  B90800            mov cx,0x8
0000601B  E8DAC6            call word 0x26f8
0000601E  50                push ax
0000601F  E816CB            call word 0x2b38
00006022  8946F8            mov [bp-0x8],ax
00006025  8B46F8            mov ax,[bp-0x8]
00006028  3B46F6            cmp ax,[bp-0xa]
0000602B  7F03              jg 0x6030
0000602D  E99F00            jmp word 0x60cf
00006030  B90800            mov cx,0x8
00006033  E8C2C6            call word 0x26f8
00006036  50                push ax
00006037  E8FECA            call word 0x2b38
0000603A  8946F8            mov [bp-0x8],ax
0000603D  8B46F8            mov ax,[bp-0x8]
00006040  3D2100            cmp ax,0x21
00006043  7E03              jng 0x6048
00006045  E91500            jmp word 0x605d
00006048  A08C15            mov al,[0x158c]
0000604B  32E4              xor ah,ah
0000604D  050900            add ax,0x9
00006050  B90800            mov cx,0x8
00006053  99                cwd
00006054  F7F9              idiv cx
00006056  92                xchg ax,dx
00006057  A28C15            mov [0x158c],al
0000605A  E97200            jmp word 0x60cf
0000605D  8B46F8            mov ax,[bp-0x8]
00006060  3D4200            cmp ax,0x42
00006063  7E03              jng 0x6068
00006065  E91500            jmp word 0x607d
00006068  A08C15            mov al,[0x158c]
0000606B  32E4              xor ah,ah
0000606D  050100            add ax,0x1
00006070  B90800            mov cx,0x8
00006073  99                cwd
00006074  F7F9              idiv cx
00006076  92                xchg ax,dx
00006077  A28C15            mov [0x158c],al
0000607A  E95200            jmp word 0x60cf
0000607D  8B46F8            mov ax,[bp-0x8]
00006080  3D4800            cmp ax,0x48
00006083  7E03              jng 0x6088
00006085  E91500            jmp word 0x609d
00006088  A08C15            mov al,[0x158c]
0000608B  32E4              xor ah,ah
0000608D  050200            add ax,0x2
00006090  B90800            mov cx,0x8
00006093  99                cwd
00006094  F7F9              idiv cx
00006096  92                xchg ax,dx
00006097  A28C15            mov [0x158c],al
0000609A  E93200            jmp word 0x60cf
0000609D  8B46F8            mov ax,[bp-0x8]
000060A0  3D6400            cmp ax,0x64
000060A3  7C03              jl 0x60a8
000060A5  E91500            jmp word 0x60bd
000060A8  A08C15            mov al,[0x158c]
000060AB  32E4              xor ah,ah
000060AD  050A00            add ax,0xa
000060B0  B90800            mov cx,0x8
000060B3  99                cwd
000060B4  F7F9              idiv cx
000060B6  92                xchg ax,dx
000060B7  A28C15            mov [0x158c],al
000060BA  E91200            jmp word 0x60cf
000060BD  A08C15            mov al,[0x158c]
000060C0  32E4              xor ah,ah
000060C2  050400            add ax,0x4
000060C5  B90800            mov cx,0x8
000060C8  99                cwd
000060C9  F7F9              idiv cx
000060CB  92                xchg ax,dx
000060CC  A28C15            mov [0x158c],al
000060CF  B90800            mov cx,0x8
000060D2  E823C6            call word 0x26f8
000060D5  50                push ax
000060D6  E85FCA            call word 0x2b38
000060D9  8946F8            mov [bp-0x8],ax
000060DC  A18D15            mov ax,[0x158d]
000060DF  3D0000            cmp ax,0x0
000060E2  B80100            mov ax,0x1
000060E5  7401              jz 0x60e8
000060E7  48                dec ax
000060E8  50                push ax
000060E9  A18D15            mov ax,[0x158d]
000060EC  3D2D00            cmp ax,0x2d
000060EF  B80100            mov ax,0x1
000060F2  7401              jz 0x60f5
000060F4  48                dec ax
000060F5  59                pop cx
000060F6  0BC1              or ax,cx
000060F8  0BC0              or ax,ax
000060FA  7503              jnz 0x60ff
000060FC  E90900            jmp word 0x6108
000060FF  B80A00            mov ax,0xa
00006102  8946F6            mov [bp-0xa],ax
00006105  E95600            jmp word 0x615e
00006108  A07C15            mov al,[0x157c]
0000610B  32E4              xor ah,ah
0000610D  3D0200            cmp ax,0x2
00006110  B80100            mov ax,0x1
00006113  7C01              jl 0x6116
00006115  48                dec ax
00006116  50                push ax
00006117  A18D15            mov ax,[0x158d]
0000611A  3D1E00            cmp ax,0x1e
0000611D  B80100            mov ax,0x1
00006120  7F01              jg 0x6123
00006122  48                dec ax
00006123  59                pop cx
00006124  23C1              and ax,cx
00006126  50                push ax
00006127  A07C15            mov al,[0x157c]
0000612A  32E4              xor ah,ah
0000612C  3D0000            cmp ax,0x0
0000612F  B80100            mov ax,0x1
00006132  7F01              jg 0x6135
00006134  48                dec ax
00006135  50                push ax
00006136  A18D15            mov ax,[0x158d]
00006139  3D0A00            cmp ax,0xa
0000613C  B80100            mov ax,0x1
0000613F  7C01              jl 0x6142
00006141  48                dec ax
00006142  59                pop cx
00006143  23C1              and ax,cx
00006145  59                pop cx
00006146  0BC1              or ax,cx
00006148  0BC0              or ax,ax
0000614A  7503              jnz 0x614f
0000614C  E90900            jmp word 0x6158
0000614F  B81400            mov ax,0x14
00006152  8946F6            mov [bp-0xa],ax
00006155  E90600            jmp word 0x615e
00006158  B83200            mov ax,0x32
0000615B  8946F6            mov [bp-0xa],ax
0000615E  8B46F8            mov ax,[bp-0x8]
00006161  3B46F6            cmp ax,[bp-0xa]
00006164  7F03              jg 0x6169
00006166  E92601            jmp word 0x628f
00006169  B90800            mov cx,0x8
0000616C  E889C5            call word 0x26f8
0000616F  50                push ax
00006170  E8C5C9            call word 0x2b38
00006173  8946F8            mov [bp-0x8],ax
00006176  A07C15            mov al,[0x157c]
00006179  32E4              xor ah,ah
0000617B  3D0000            cmp ax,0x0
0000617E  B80100            mov ax,0x1
00006181  7F01              jg 0x6184
00006183  48                dec ax
00006184  50                push ax
00006185  A18D15            mov ax,[0x158d]
00006188  3D0A00            cmp ax,0xa
0000618B  B80100            mov ax,0x1
0000618E  7C01              jl 0x6191
00006190  48                dec ax
00006191  59                pop cx
00006192  23C1              and ax,cx
00006194  50                push ax
00006195  A18D15            mov ax,[0x158d]
00006198  3D0000            cmp ax,0x0
0000619B  B80100            mov ax,0x1
0000619E  7401              jz 0x61a1
000061A0  48                dec ax
000061A1  59                pop cx
000061A2  0BC1              or ax,cx
000061A4  0BC0              or ax,ax
000061A6  7503              jnz 0x61ab
000061A8  E92000            jmp word 0x61cb
000061AB  A18D15            mov ax,[0x158d]
000061AE  50                push ax
000061AF  B90800            mov cx,0x8
000061B2  E843C5            call word 0x26f8
000061B5  50                push ax
000061B6  E87FC9            call word 0x2b38
000061B9  B90A00            mov cx,0xa
000061BC  99                cwd
000061BD  F7F9              idiv cx
000061BF  59                pop cx
000061C0  03C1              add ax,cx
000061C2  050100            add ax,0x1
000061C5  A38D15            mov [0x158d],ax
000061C8  E99F00            jmp word 0x626a
000061CB  A07C15            mov al,[0x157c]
000061CE  32E4              xor ah,ah
000061D0  3D0200            cmp ax,0x2
000061D3  B80100            mov ax,0x1
000061D6  7C01              jl 0x61d9
000061D8  48                dec ax
000061D9  50                push ax
000061DA  A18D15            mov ax,[0x158d]
000061DD  3D1E00            cmp ax,0x1e
000061E0  B80100            mov ax,0x1
000061E3  7F01              jg 0x61e6
000061E5  48                dec ax
000061E6  59                pop cx
000061E7  23C1              and ax,cx
000061E9  50                push ax
000061EA  A18D15            mov ax,[0x158d]
000061ED  3D2D00            cmp ax,0x2d
000061F0  B80100            mov ax,0x1
000061F3  7401              jz 0x61f6
000061F5  48                dec ax
000061F6  59                pop cx
000061F7  0BC1              or ax,cx
000061F9  0BC0              or ax,ax
000061FB  7503              jnz 0x6200
000061FD  E92100            jmp word 0x6221
00006200  A18D15            mov ax,[0x158d]
00006203  50                push ax
00006204  B90800            mov cx,0x8
00006207  E8EEC4            call word 0x26f8
0000620A  50                push ax
0000620B  E82AC9            call word 0x2b38
0000620E  B90A00            mov cx,0xa
00006211  99                cwd
00006212  F7F9              idiv cx
00006214  59                pop cx
00006215  91                xchg ax,cx
00006216  2BC1              sub ax,cx
00006218  2D0100            sub ax,0x1
0000621B  A38D15            mov [0x158d],ax
0000621E  E94900            jmp word 0x626a
00006221  8B46F8            mov ax,[bp-0x8]
00006224  3D3200            cmp ax,0x32
00006227  7F03              jg 0x622c
00006229  E92000            jmp word 0x624c
0000622C  A18D15            mov ax,[0x158d]
0000622F  50                push ax
00006230  B90800            mov cx,0x8
00006233  E8C2C4            call word 0x26f8
00006236  50                push ax
00006237  E8FEC8            call word 0x2b38
0000623A  B90A00            mov cx,0xa
0000623D  99                cwd
0000623E  F7F9              idiv cx
00006240  59                pop cx
00006241  03C1              add ax,cx
00006243  050100            add ax,0x1
00006246  A38D15            mov [0x158d],ax
00006249  E91E00            jmp word 0x626a
0000624C  A18D15            mov ax,[0x158d]
0000624F  50                push ax
00006250  B90800            mov cx,0x8
00006253  E8A2C4            call word 0x26f8
00006256  50                push ax
00006257  E8DEC8            call word 0x2b38
0000625A  B90A00            mov cx,0xa
0000625D  99                cwd
0000625E  F7F9              idiv cx
00006260  59                pop cx
00006261  91                xchg ax,cx
00006262  2BC1              sub ax,cx
00006264  2D0100            sub ax,0x1
00006267  A38D15            mov [0x158d],ax
0000626A  A18D15            mov ax,[0x158d]
0000626D  3D0000            cmp ax,0x0
00006270  7C03              jl 0x6275
00006272  E90900            jmp word 0x627e
00006275  B80000            mov ax,0x0
00006278  A38D15            mov [0x158d],ax
0000627B  E91100            jmp word 0x628f
0000627E  A18D15            mov ax,[0x158d]
00006281  3D2D00            cmp ax,0x2d
00006284  7F03              jg 0x6289
00006286  E90600            jmp word 0x628f
00006289  B82D00            mov ax,0x2d
0000628C  A38D15            mov [0x158d],ax
0000628F  A07915            mov al,[0x1579]
00006292  32E4              xor ah,ah
00006294  0BC0              or ax,ax
00006296  7503              jnz 0x629b
00006298  E90C00            jmp word 0x62a7
0000629B  B80000            mov ax,0x0
0000629E  E83EA2            call word 0x4df
000062A1  B80F00            mov ax,0xf
000062A4  E824A2            call word 0x4cb
000062A7  A18D15            mov ax,[0x158d]
000062AA  3D0000            cmp ax,0x0
000062AD  7403              jz 0x62b2
000062AF  E94000            jmp word 0x62f2
000062B2  8B46FA            mov ax,[bp-0x6]
000062B5  3D0000            cmp ax,0x0
000062B8  7F03              jg 0x62bd
000062BA  E93200            jmp word 0x62ef
000062BD  B90C00            mov cx,0xc
000062C0  E835C4            call word 0x26f8
000062C3  8B46FC            mov ax,[bp-0x4]
000062C6  50                push ax
000062C7  B80000            mov ax,0x0
000062CA  50                push ax
000062CB  E847F6            call word 0x5915
000062CE  A19315            mov ax,[0x1593]
000062D1  050300            add ax,0x3
000062D4  50                push ax
000062D5  B80400            mov ax,0x4
000062D8  050C00            add ax,0xc
000062DB  E881A0            call word 0x35f
000062DE  E89EBB            call word 0x1e7f
000062E1  E842BF            call word 0x2226
000062E4  07                pop es
000062E5  4E                dec si
000062E6  4F                dec di
000062E7  205749            and [bx+0x49],dl
000062EA  4E                dec si
000062EB  44                inc sp
000062EC  E87EC4            call word 0x276d
000062EF  E9D100            jmp word 0x63c3
000062F2  8B46FC            mov ax,[bp-0x4]
000062F5  50                push ax
000062F6  A08C15            mov al,[0x158c]
000062F9  32E4              xor ah,ah
000062FB  59                pop cx
000062FC  91                xchg ax,cx
000062FD  3BC1              cmp ax,cx
000062FF  B80100            mov ax,0x1
00006302  7501              jnz 0x6305
00006304  48                dec ax
00006305  50                push ax
00006306  A18815            mov ax,[0x1588]
00006309  3D0100            cmp ax,0x1
0000630C  B80100            mov ax,0x1
0000630F  7401              jz 0x6312
00006311  48                dec ax
00006312  59                pop cx
00006313  0BC1              or ax,cx
00006315  50                push ax
00006316  8B46FA            mov ax,[bp-0x6]
00006319  3D0000            cmp ax,0x0
0000631C  B80100            mov ax,0x1
0000631F  7401              jz 0x6322
00006321  48                dec ax
00006322  59                pop cx
00006323  0BC1              or ax,cx
00006325  0BC0              or ax,ax
00006327  7503              jnz 0x632c
00006329  E95900            jmp word 0x6385
0000632C  B90C00            mov cx,0xc
0000632F  E8C6C3            call word 0x26f8
00006332  8B46FC            mov ax,[bp-0x4]
00006335  50                push ax
00006336  B80000            mov ax,0x0
00006339  50                push ax
0000633A  E8D8F5            call word 0x5915
0000633D  B90C00            mov cx,0xc
00006340  E8B5C3            call word 0x26f8
00006343  A08C15            mov al,[0x158c]
00006346  32E4              xor ah,ah
00006348  50                push ax
00006349  B80100            mov ax,0x1
0000634C  50                push ax
0000634D  E8C5F5            call word 0x5915
00006350  A19315            mov ax,[0x1593]
00006353  050300            add ax,0x3
00006356  50                push ax
00006357  B80400            mov ax,0x4
0000635A  050C00            add ax,0xc
0000635D  E8FF9F            call word 0x35f
00006360  E81CBB            call word 0x1e7f
00006363  B82000            mov ax,0x20
00006366  50                push ax
00006367  B80000            mov ax,0x0
0000636A  E816BE            call word 0x2183
0000636D  A18D15            mov ax,[0x158d]
00006370  50                push ax
00006371  B80200            mov ax,0x2
00006374  E824BE            call word 0x219b
00006377  E8ACBE            call word 0x2226
0000637A  0420              add al,0x20
0000637C  4D                dec bp
0000637D  50                push ax
0000637E  48                dec ax
0000637F  E8EBC3            call word 0x276d
00006382  E93E00            jmp word 0x63c3
00006385  8B46FA            mov ax,[bp-0x6]
00006388  3B068D15          cmp ax,[0x158d]
0000638C  7503              jnz 0x6391
0000638E  E93200            jmp word 0x63c3
00006391  A19315            mov ax,[0x1593]
00006394  050300            add ax,0x3
00006397  50                push ax
00006398  B80400            mov ax,0x4
0000639B  050C00            add ax,0xc
0000639E  E8BE9F            call word 0x35f
000063A1  E8DBBA            call word 0x1e7f
000063A4  B82000            mov ax,0x20
000063A7  50                push ax
000063A8  B80000            mov ax,0x0
000063AB  E8D5BD            call word 0x2183
000063AE  A18D15            mov ax,[0x158d]
000063B1  50                push ax
000063B2  B80200            mov ax,0x2
000063B5  E8E3BD            call word 0x219b
000063B8  E86BBE            call word 0x2226
000063BB  0420              add al,0x20
000063BD  4D                dec bp
000063BE  50                push ax
000063BF  48                dec ax
000063C0  E8AAC3            call word 0x276d
000063C3  E90000            jmp word 0x63c6
000063C6  8BE5              mov sp,bp
000063C8  5D                pop bp
000063C9  C3                ret
000063CA  55                push bp
000063CB  8BEC              mov bp,sp
000063CD  55                push bp
000063CE  E90000            jmp word 0x63d1
000063D1  50                push ax
000063D2  A07915            mov al,[0x1579]
000063D5  32E4              xor ah,ah
000063D7  0BC0              or ax,ax
000063D9  7503              jnz 0x63de
000063DB  E90C00            jmp word 0x63ea
000063DE  B80000            mov ax,0x0
000063E1  E8FBA0            call word 0x4df
000063E4  B80F00            mov ax,0xf
000063E7  E8E1A0            call word 0x4cb
000063EA  B80F00            mov ax,0xf
000063ED  051000            add ax,0x10
000063F0  E8D8A0            call word 0x4cb
000063F3  A19315            mov ax,[0x1593]
000063F6  50                push ax
000063F7  B80200            mov ax,0x2
000063FA  E8629F            call word 0x35f
000063FD  E87FBA            call word 0x1e7f
00006400  E823BE            call word 0x2226
00006403  055455            add ax,0x5554
00006406  52                push dx
00006407  4E                dec si
00006408  20A18815          and [bx+di+0x1588],ah
0000640C  50                push ax
0000640D  B80000            mov ax,0x0
00006410  E888BD            call word 0x219b
00006413  E857C3            call word 0x276d
00006416  B8DC05            mov ax,0x5dc
00006419  E85DA0            call word 0x479
0000641C  B80F00            mov ax,0xf
0000641F  E8A9A0            call word 0x4cb
00006422  A19315            mov ax,[0x1593]
00006425  50                push ax
00006426  B80200            mov ax,0x2
00006429  E8339F            call word 0x35f
0000642C  E850BA            call word 0x1e7f
0000642F  E8F4BD            call word 0x2226
00006432  055455            add ax,0x5554
00006435  52                push dx
00006436  4E                dec si
00006437  20A18815          and [bx+di+0x1588],ah
0000643B  50                push ax
0000643C  B80000            mov ax,0x0
0000643F  E859BD            call word 0x219b
00006442  E828C3            call word 0x276d
00006445  E90000            jmp word 0x6448
00006448  8BE5              mov sp,bp
0000644A  5D                pop bp
0000644B  C3                ret
0000644C  55                push bp
0000644D  8BEC              mov bp,sp
0000644F  55                push bp
00006450  E90000            jmp word 0x6453
00006453  A18815            mov ax,[0x1588]
00006456  050100            add ax,0x1
00006459  B90300            mov cx,0x3
0000645C  99                cwd
0000645D  F7F9              idiv cx
0000645F  92                xchg ax,dx
00006460  3D0000            cmp ax,0x0
00006463  7403              jz 0x6468
00006465  E90900            jmp word 0x6471
00006468  A18615            mov ax,[0x1586]
0000646B  050100            add ax,0x1
0000646E  A38615            mov [0x1586],ax
00006471  A18615            mov ax,[0x1586]
00006474  3D0900            cmp ax,0x9
00006477  7F03              jg 0x647c
00006479  E90600            jmp word 0x6482
0000647C  B80900            mov ax,0x9
0000647F  A38615            mov [0x1586],ax
00006482  B80000            mov ax,0x0
00006485  E857A0            call word 0x4df
00006488  B80F00            mov ax,0xf
0000648B  E83DA0            call word 0x4cb
0000648E  A19315            mov ax,[0x1593]
00006491  50                push ax
00006492  B81300            mov ax,0x13
00006495  E8C79E            call word 0x35f
00006498  E8E4B9            call word 0x1e7f
0000649B  E888BD            call word 0x2226
0000649E  0C46              or al,0x46
000064A0  49                dec cx
000064A1  52                push dx
000064A2  45                inc bp
000064A3  42                inc dx
000064A4  52                push dx
000064A5  45                inc bp
000064A6  41                inc cx
000064A7  4B                dec bx
000064A8  53                push bx
000064A9  3A20              cmp ah,[bx+si]
000064AB  A18615            mov ax,[0x1586]
000064AE  50                push ax
000064AF  B80000            mov ax,0x0
000064B2  E8E6BC            call word 0x219b
000064B5  E8B5C2            call word 0x276d
000064B8  E90000            jmp word 0x64bb
000064BB  8BE5              mov sp,bp
000064BD  5D                pop bp
000064BE  C3                ret
000064BF  55                push bp
000064C0  8BEC              mov bp,sp
000064C2  55                push bp
000064C3  E90000            jmp word 0x64c6
000064C6  83EC06            sub sp,byte +0x6
000064C9  8B4604            mov ax,[bp+0x4]
000064CC  8946FC            mov [bp-0x4],ax
000064CF  8B46FC            mov ax,[bp-0x4]
000064D2  3D0000            cmp ax,0x0
000064D5  7F03              jg 0x64da
000064D7  E9E200            jmp word 0x65bc
000064DA  B90E00            mov cx,0xe
000064DD  E818C2            call word 0x26f8
000064E0  50                push ax
000064E1  B80100            mov ax,0x1
000064E4  50                push ax
000064E5  B81900            mov ax,0x19
000064E8  50                push ax
000064E9  E8FDC5            call word 0x2ae9
000064EC  8946FA            mov [bp-0x6],ax
000064EF  B90E00            mov cx,0xe
000064F2  E803C2            call word 0x26f8
000064F5  50                push ax
000064F6  B80100            mov ax,0x1
000064F9  50                push ax
000064FA  B81900            mov ax,0x19
000064FD  50                push ax
000064FE  E8E8C5            call word 0x2ae9
00006501  8946F8            mov [bp-0x8],ax
00006504  8B46FA            mov ax,[bp-0x6]
00006507  48                dec ax
00006508  B9C800            mov cx,0xc8
0000650B  F7E1              mul cx
0000650D  97                xchg ax,di
0000650E  57                push di
0000650F  8B46F8            mov ax,[bp-0x8]
00006512  48                dec ax
00006513  B90800            mov cx,0x8
00006516  F7E1              mul cx
00006518  5F                pop di
00006519  03F8              add di,ax
0000651B  8A858F01          mov al,[di+0x18f]
0000651F  32E4              xor ah,ah
00006521  3D0000            cmp ax,0x0
00006524  7403              jz 0x6529
00006526  E9B1FF            jmp word 0x64da
00006529  8B46FA            mov ax,[bp-0x6]
0000652C  48                dec ax
0000652D  B9C800            mov cx,0xc8
00006530  F7E1              mul cx
00006532  97                xchg ax,di
00006533  57                push di
00006534  8B46F8            mov ax,[bp-0x8]
00006537  48                dec ax
00006538  B90800            mov cx,0x8
0000653B  F7E1              mul cx
0000653D  5F                pop di
0000653E  03F8              add di,ax
00006540  81C78B01          add di,0x18b
00006544  1E                push ds
00006545  57                push di
00006546  C47EF4            les di,[bp-0xc]
00006549  06                push es
0000654A  57                push di
0000654B  B80100            mov ax,0x1
0000654E  5F                pop di
0000654F  07                pop es
00006550  26884504          mov [es:di+0x4],al
00006554  58                pop ax
00006555  58                pop ax
00006556  8B46FC            mov ax,[bp-0x4]
00006559  48                dec ax
0000655A  03C0              add ax,ax
0000655C  03C0              add ax,ax
0000655E  97                xchg ax,di
0000655F  81C71315          add di,0x1513
00006563  1E                push ds
00006564  57                push di
00006565  C47EF4            les di,[bp-0xc]
00006568  06                push es
00006569  57                push di
0000656A  8B46FA            mov ax,[bp-0x6]
0000656D  5F                pop di
0000656E  07                pop es
0000656F  26884502          mov [es:di+0x2],al
00006573  C47EF4            les di,[bp-0xc]
00006576  06                push es
00006577  57                push di
00006578  8B46F8            mov ax,[bp-0x8]
0000657B  5F                pop di
0000657C  07                pop es
0000657D  26884503          mov [es:di+0x3],al
00006581  8B46FA            mov ax,[bp-0x6]
00006584  48                dec ax
00006585  B9C800            mov cx,0xc8
00006588  F7E1              mul cx
0000658A  97                xchg ax,di
0000658B  57                push di
0000658C  8B46F8            mov ax,[bp-0x8]
0000658F  48                dec ax
00006590  B90800            mov cx,0x8
00006593  F7E1              mul cx
00006595  5F                pop di
00006596  03F8              add di,ax
00006598  57                push di
00006599  B80000            mov ax,0x0
0000659C  5F                pop di
0000659D  88859001          mov [di+0x190],al
000065A1  C47EF4            les di,[bp-0xc]
000065A4  06                push es
000065A5  57                push di
000065A6  B80000            mov ax,0x0
000065A9  5F                pop di
000065AA  07                pop es
000065AB  268905            mov [es:di],ax
000065AE  58                pop ax
000065AF  58                pop ax
000065B0  8B46FC            mov ax,[bp-0x4]
000065B3  2D0100            sub ax,0x1
000065B6  8946FC            mov [bp-0x4],ax
000065B9  E913FF            jmp word 0x64cf
000065BC  E90000            jmp word 0x65bf
000065BF  8BE5              mov sp,bp
000065C1  5D                pop bp
000065C2  C20200            ret 0x2
000065C5  55                push bp
000065C6  8BEC              mov bp,sp
000065C8  55                push bp
000065C9  E90000            jmp word 0x65cc
000065CC  83EC0A            sub sp,byte +0xa
000065CF  8B4604            mov ax,[bp+0x4]
000065D2  8946FC            mov [bp-0x4],ax
000065D5  8B46FC            mov ax,[bp-0x4]
000065D8  3D0000            cmp ax,0x0
000065DB  7F03              jg 0x65e0
000065DD  E97501            jmp word 0x6755
000065E0  B90E00            mov cx,0xe
000065E3  E812C1            call word 0x26f8
000065E6  50                push ax
000065E7  B80400            mov ax,0x4
000065EA  50                push ax
000065EB  B81900            mov ax,0x19
000065EE  2D0300            sub ax,0x3
000065F1  50                push ax
000065F2  E8F4C4            call word 0x2ae9
000065F5  8946FA            mov [bp-0x6],ax
000065F8  B90E00            mov cx,0xe
000065FB  E8FAC0            call word 0x26f8
000065FE  50                push ax
000065FF  B80400            mov ax,0x4
00006602  50                push ax
00006603  B81900            mov ax,0x19
00006606  2D0300            sub ax,0x3
00006609  50                push ax
0000660A  E8DCC4            call word 0x2ae9
0000660D  8946F8            mov [bp-0x8],ax
00006610  B91200            mov cx,0x12
00006613  E8E2C0            call word 0x26f8
00006616  8B46FA            mov ax,[bp-0x6]
00006619  50                push ax
0000661A  8B46F8            mov ax,[bp-0x8]
0000661D  50                push ax
0000661E  8D7EF6            lea di,[bp-0xa]
00006621  16                push ss
00006622  57                push di
00006623  8D7EF4            lea di,[bp-0xc]
00006626  16                push ss
00006627  57                push di
00006628  E82DDB            call word 0x4158
0000662B  B90B00            mov cx,0xb
0000662E  E8C7C0            call word 0x26f8
00006631  4C                dec sp
00006632  8B46F6            mov ax,[bp-0xa]
00006635  50                push ax
00006636  8B46F4            mov ax,[bp-0xc]
00006639  50                push ax
0000663A  E82DDE            call word 0x446a
0000663D  7503              jnz 0x6642
0000663F  E99EFF            jmp word 0x65e0
00006642  8B46FA            mov ax,[bp-0x6]
00006645  48                dec ax
00006646  B9C800            mov cx,0xc8
00006649  F7E1              mul cx
0000664B  97                xchg ax,di
0000664C  57                push di
0000664D  8B46F8            mov ax,[bp-0x8]
00006650  48                dec ax
00006651  B90800            mov cx,0x8
00006654  F7E1              mul cx
00006656  5F                pop di
00006657  03F8              add di,ax
00006659  8A858F01          mov al,[di+0x18f]
0000665D  32E4              xor ah,ah
0000665F  3D0000            cmp ax,0x0
00006662  B80100            mov ax,0x1
00006665  7401              jz 0x6668
00006667  48                dec ax
00006668  50                push ax
00006669  8B46F6            mov ax,[bp-0xa]
0000666C  48                dec ax
0000666D  B9C800            mov cx,0xc8
00006670  F7E1              mul cx
00006672  97                xchg ax,di
00006673  57                push di
00006674  8B46F4            mov ax,[bp-0xc]
00006677  48                dec ax
00006678  B90800            mov cx,0x8
0000667B  F7E1              mul cx
0000667D  5F                pop di
0000667E  03F8              add di,ax
00006680  8A858F01          mov al,[di+0x18f]
00006684  32E4              xor ah,ah
00006686  3D0300            cmp ax,0x3
00006689  B80100            mov ax,0x1
0000668C  7501              jnz 0x668f
0000668E  48                dec ax
0000668F  59                pop cx
00006690  23C1              and ax,cx
00006692  50                push ax
00006693  8B46F6            mov ax,[bp-0xa]
00006696  48                dec ax
00006697  B9C800            mov cx,0xc8
0000669A  F7E1              mul cx
0000669C  97                xchg ax,di
0000669D  57                push di
0000669E  8B46F4            mov ax,[bp-0xc]
000066A1  48                dec ax
000066A2  B90800            mov cx,0x8
000066A5  F7E1              mul cx
000066A7  5F                pop di
000066A8  03F8              add di,ax
000066AA  8A858F01          mov al,[di+0x18f]
000066AE  32E4              xor ah,ah
000066B0  3D0400            cmp ax,0x4
000066B3  B80100            mov ax,0x1
000066B6  7501              jnz 0x66b9
000066B8  48                dec ax
000066B9  59                pop cx
000066BA  23C1              and ax,cx
000066BC  0BC0              or ax,ax
000066BE  7503              jnz 0x66c3
000066C0  E91DFF            jmp word 0x65e0
000066C3  8B46FA            mov ax,[bp-0x6]
000066C6  48                dec ax
000066C7  B9C800            mov cx,0xc8
000066CA  F7E1              mul cx
000066CC  97                xchg ax,di
000066CD  57                push di
000066CE  8B46F8            mov ax,[bp-0x8]
000066D1  48                dec ax
000066D2  B90800            mov cx,0x8
000066D5  F7E1              mul cx
000066D7  5F                pop di
000066D8  03F8              add di,ax
000066DA  81C78B01          add di,0x18b
000066DE  1E                push ds
000066DF  57                push di
000066E0  C47EF0            les di,[bp-0x10]
000066E3  06                push es
000066E4  57                push di
000066E5  B80400            mov ax,0x4
000066E8  5F                pop di
000066E9  07                pop es
000066EA  26884504          mov [es:di+0x4],al
000066EE  8B46F8            mov ax,[bp-0x8]
000066F1  50                push ax
000066F2  8B46FA            mov ax,[bp-0x6]
000066F5  E8679C            call word 0x35f
000066F8  B90800            mov cx,0x8
000066FB  E8FABF            call word 0x26f8
000066FE  E89FC5            call word 0x2ca0
00006701  B91400            mov cx,0x14
00006704  E8F1BF            call word 0x26f8
00006707  B80800            mov ax,0x8
0000670A  50                push ax
0000670B  B80500            mov ax,0x5
0000670E  50                push ax
0000670F  B84B00            mov ax,0x4b
00006712  50                push ax
00006713  E8E4C1            call word 0x28fa
00006716  C47EF0            les di,[bp-0x10]
00006719  06                push es
0000671A  57                push di
0000671B  B80100            mov ax,0x1
0000671E  5F                pop di
0000671F  07                pop es
00006720  26884507          mov [es:di+0x7],al
00006724  C47EF0            les di,[bp-0x10]
00006727  06                push es
00006728  57                push di
00006729  B80100            mov ax,0x1
0000672C  5F                pop di
0000672D  07                pop es
0000672E  26884506          mov [es:di+0x6],al
00006732  58                pop ax
00006733  58                pop ax
00006734  B90E00            mov cx,0xe
00006737  E8BEBF            call word 0x26f8
0000673A  8B46FA            mov ax,[bp-0x6]
0000673D  50                push ax
0000673E  8B46F8            mov ax,[bp-0x8]
00006741  50                push ax
00006742  B80100            mov ax,0x1
00006745  50                push ax
00006746  E88ADD            call word 0x44d3
00006749  8B46FC            mov ax,[bp-0x4]
0000674C  2D0100            sub ax,0x1
0000674F  8946FC            mov [bp-0x4],ax
00006752  E980FE            jmp word 0x65d5
00006755  E90000            jmp word 0x6758
00006758  8BE5              mov sp,bp
0000675A  5D                pop bp
0000675B  C20200            ret 0x2
0000675E  55                push bp
0000675F  8BEC              mov bp,sp
00006761  55                push bp
00006762  E90000            jmp word 0x6765
00006765  83EC12            sub sp,byte +0x12
00006768  B90600            mov cx,0x6
0000676B  E88ABF            call word 0x26f8
0000676E  E8CDC0            call word 0x283e
00006771  B80100            mov ax,0x1
00006774  50                push ax
00006775  B81900            mov ax,0x19
00006778  59                pop cx
00006779  91                xchg ax,cx
0000677A  2BC8              sub cx,ax
0000677C  7D03              jnl 0x6781
0000677E  E9A200            jmp word 0x6823
00006781  41                inc cx
00006782  8946FC            mov [bp-0x4],ax
00006785  51                push cx
00006786  B80100            mov ax,0x1
00006789  50                push ax
0000678A  B81900            mov ax,0x19
0000678D  59                pop cx
0000678E  91                xchg ax,cx
0000678F  2BC8              sub cx,ax
00006791  7D03              jnl 0x6796
00006793  E98300            jmp word 0x6819
00006796  41                inc cx
00006797  8946FA            mov [bp-0x6],ax
0000679A  51                push cx
0000679B  8B46FA            mov ax,[bp-0x6]
0000679E  50                push ax
0000679F  8B46FC            mov ax,[bp-0x4]
000067A2  E8BA9B            call word 0x35f
000067A5  8B46FC            mov ax,[bp-0x4]
000067A8  48                dec ax
000067A9  B9C800            mov cx,0xc8
000067AC  F7E1              mul cx
000067AE  97                xchg ax,di
000067AF  57                push di
000067B0  8B46FA            mov ax,[bp-0x6]
000067B3  48                dec ax
000067B4  B90800            mov cx,0x8
000067B7  F7E1              mul cx
000067B9  5F                pop di
000067BA  03F8              add di,ax
000067BC  8A858F01          mov al,[di+0x18f]
000067C0  32E4              xor ah,ah
000067C2  3D0000            cmp ax,0x0
000067C5  7403              jz 0x67ca
000067C7  E90C00            jmp word 0x67d6
000067CA  B90800            mov cx,0x8
000067CD  E828BF            call word 0x26f8
000067D0  E88DC3            call word 0x2b60
000067D3  E93900            jmp word 0x680f
000067D6  3D0300            cmp ax,0x3
000067D9  7403              jz 0x67de
000067DB  E90C00            jmp word 0x67ea
000067DE  B90800            mov cx,0x8
000067E1  E814BF            call word 0x26f8
000067E4  E8E1C3            call word 0x2bc8
000067E7  E92500            jmp word 0x680f
000067EA  3D0100            cmp ax,0x1
000067ED  7403              jz 0x67f2
000067EF  E90C00            jmp word 0x67fe
000067F2  B90800            mov cx,0x8
000067F5  E800BF            call word 0x26f8
000067F8  E835C4            call word 0x2c30
000067FB  E91100            jmp word 0x680f
000067FE  3D0400            cmp ax,0x4
00006801  7403              jz 0x6806
00006803  E90900            jmp word 0x680f
00006806  B90800            mov cx,0x8
00006809  E8ECBE            call word 0x26f8
0000680C  E891C4            call word 0x2ca0
0000680F  59                pop cx
00006810  49                dec cx
00006811  7406              jz 0x6819
00006813  FF46FA            inc word [bp-0x6]
00006816  E981FF            jmp word 0x679a
00006819  59                pop cx
0000681A  49                dec cx
0000681B  7406              jz 0x6823
0000681D  FF46FC            inc word [bp-0x4]
00006820  E962FF            jmp word 0x6785
00006823  B80000            mov ax,0x0
00006826  E8B69C            call word 0x4df
00006829  B80F00            mov ax,0xf
0000682C  E89C9C            call word 0x4cb
0000682F  A19315            mov ax,[0x1593]
00006832  50                push ax
00006833  B81500            mov ax,0x15
00006836  E8269B            call word 0x35f
00006839  E843B6            call word 0x1e7f
0000683C  E8E7B9            call word 0x2226
0000683F  09434F            or [bp+di+0x4f],ax
00006842  4D                dec bp
00006843  4D                dec bp
00006844  41                inc cx
00006845  4E                dec si
00006846  44                inc sp
00006847  53                push bx
00006848  3AE8              cmp ch,al
0000684A  21BFA193          and [bx-0x6c5f],di
0000684E  150502            adc ax,0x205
00006851  0050B8            add [bx+si-0x48],dl
00006854  150005            adc ax,0x500
00006857  0100              add [bx+si],ax
00006859  E8039B            call word 0x35f
0000685C  E820B6            call word 0x1e7f
0000685F  E8C4B9            call word 0x2226
00006862  0A4172            or al,[bx+di+0x72]
00006865  726F              jc 0x68d6
00006867  7720              ja 0x6889
00006869  6B657973          imul sp,[di+0x79],byte +0x73
0000686D  E8FDBE            call word 0x276d
00006870  A19315            mov ax,[0x1593]
00006873  050200            add ax,0x2
00006876  50                push ax
00006877  B81500            mov ax,0x15
0000687A  050200            add ax,0x2
0000687D  E8DF9A            call word 0x35f
00006880  E8FCB5            call word 0x1e7f
00006883  E8A0B9            call word 0x2226
00006886  0B4428            or ax,[si+0x28]
00006889  726F              jc 0x68fa
0000688B  7020              jo 0x68ad
0000688D  7761              ja 0x68f0
0000688F  7465              jz 0x68f6
00006891  72E8              jc 0x687b
00006893  D8BEA193          fdivr dword [bp-0x6c5f]
00006897  150502            adc ax,0x205
0000689A  0050B8            add [bx+si-0x48],dl
0000689D  150005            adc ax,0x500
000068A0  0300              add ax,[bx+si]
000068A2  E8BA9A            call word 0x35f
000068A5  E8D7B5            call word 0x1e7f
000068A8  E87BB9            call word 0x2226
000068AB  0A4628            or al,[bp+0x28]
000068AE  6972656272        imul si,[bp+si+0x65],word 0x7262
000068B3  6561              gs popaw
000068B5  6BE8B4            imul bp,ax,byte -0x4c
000068B8  BEA193            mov si,0x93a1
000068BB  150502            adc ax,0x205
000068BE  0050B8            add [bx+si-0x48],dl
000068C1  150005            adc ax,0x500
000068C4  0400              add al,0x0
000068C6  E8969A            call word 0x35f
000068C9  E8B3B5            call word 0x1e7f
000068CC  E857B9            call word 0x2226
000068CF  094228            or [bp+si+0x28],ax
000068D2  61                popaw
000068D3  636B66            arpl [bp+di+0x66],bp
000068D6  697265E891        imul si,[bp+si+0x65],word 0x91e8
000068DB  BE8D7E            mov si,0x7e8d
000068DE  EC                in al,dx
000068DF  16                push ss
000068E0  57                push di
000068E1  E85CA4            call word 0xd40
000068E4  0D2020            or ax,0x2020
000068E7  2020              and [bx+si],ah
000068E9  2020              and [bx+si],ah
000068EB  2020              and [bx+si],ah
000068ED  2020              and [bx+si],ah
000068EF  2020              and [bx+si],ah
000068F1  20B10DE8          and [bx+di-0x17f3],dh
000068F5  5F                pop di
000068F6  A4                movsb
000068F7  B80200            mov ax,0x2
000068FA  97                xchg ax,di
000068FB  57                push di
000068FC  B84E00            mov ax,0x4e
000068FF  5F                pop di
00006900  8843EC            mov [bp+di-0x14],al
00006903  B80300            mov ax,0x3
00006906  97                xchg ax,di
00006907  57                push di
00006908  B85700            mov ax,0x57
0000690B  5F                pop di
0000690C  8843EC            mov [bp+di-0x14],al
0000690F  B80700            mov ax,0x7
00006912  97                xchg ax,di
00006913  57                push di
00006914  B84E00            mov ax,0x4e
00006917  5F                pop di
00006918  8843EC            mov [bp+di-0x14],al
0000691B  B80B00            mov ax,0xb
0000691E  97                xchg ax,di
0000691F  57                push di
00006920  B84E00            mov ax,0x4e
00006923  5F                pop di
00006924  8843EC            mov [bp+di-0x14],al
00006927  B80C00            mov ax,0xc
0000692A  97                xchg ax,di
0000692B  57                push di
0000692C  B84500            mov ax,0x45
0000692F  5F                pop di
00006930  8843EC            mov [bp+di-0x14],al
00006933  A19315            mov ax,[0x1593]
00006936  50                push ax
00006937  B80400            mov ax,0x4
0000693A  E8229A            call word 0x35f
0000693D  E83FB5            call word 0x1e7f
00006940  8D7EEC            lea di,[bp-0x14]
00006943  16                push ss
00006944  E8E0A3            call word 0xd27
00006947  B80000            mov ax,0x0
0000694A  E8ACB8            call word 0x21f9
0000694D  E81DBE            call word 0x276d
00006950  8D7EEC            lea di,[bp-0x14]
00006953  16                push ss
00006954  57                push di
00006955  E8E8A3            call word 0xd40
00006958  0D2020            or ax,0x2020
0000695B  2020              and [bx+si],ah
0000695D  2020              and [bx+si],ah
0000695F  2020              and [bx+si],ah
00006961  2020              and [bx+si],ah
00006963  2020              and [bx+si],ah
00006965  20B10DE8          and [bx+di-0x17f3],dh
00006969  EBA3              jmp short 0x690e
0000696B  A19315            mov ax,[0x1593]
0000696E  50                push ax
0000696F  B80400            mov ax,0x4
00006972  050100            add ax,0x1
00006975  E8E799            call word 0x35f
00006978  E804B5            call word 0x1e7f
0000697B  8D7EEC            lea di,[bp-0x14]
0000697E  16                push ss
0000697F  E8A5A3            call word 0xd27
00006982  B80000            mov ax,0x0
00006985  E871B8            call word 0x21f9
00006988  E8E2BD            call word 0x276d
0000698B  8D7EEC            lea di,[bp-0x14]
0000698E  16                push ss
0000698F  57                push di
00006990  E8ADA3            call word 0xd40
00006993  0D2020            or ax,0x2020
00006996  2020              and [bx+si],ah
00006998  2020              and [bx+si],ah
0000699A  2020              and [bx+si],ah
0000699C  2020              and [bx+si],ah
0000699E  2020              and [bx+si],ah
000069A0  20B10DE8          and [bx+di-0x17f3],dh
000069A4  B0A3              mov al,0xa3
000069A6  B80400            mov ax,0x4
000069A9  97                xchg ax,di
000069AA  57                push di
000069AB  B85C00            mov ax,0x5c
000069AE  5F                pop di
000069AF  8843EC            mov [bp+di-0x14],al
000069B2  B80700            mov ax,0x7
000069B5  97                xchg ax,di
000069B6  57                push di
000069B7  B8B300            mov ax,0xb3
000069BA  5F                pop di
000069BB  8843EC            mov [bp+di-0x14],al
000069BE  B80A00            mov ax,0xa
000069C1  97                xchg ax,di
000069C2  57                push di
000069C3  B82F00            mov ax,0x2f
000069C6  5F                pop di
000069C7  8843EC            mov [bp+di-0x14],al
000069CA  A19315            mov ax,[0x1593]
000069CD  50                push ax
000069CE  B80400            mov ax,0x4
000069D1  050200            add ax,0x2
000069D4  E88899            call word 0x35f
000069D7  E8A5B4            call word 0x1e7f
000069DA  8D7EEC            lea di,[bp-0x14]
000069DD  16                push ss
000069DE  E846A3            call word 0xd27
000069E1  B80000            mov ax,0x0
000069E4  E812B8            call word 0x21f9
000069E7  E883BD            call word 0x276d
000069EA  8D7EEC            lea di,[bp-0x14]
000069ED  16                push ss
000069EE  57                push di
000069EF  E84EA3            call word 0xd40
000069F2  0D2020            or ax,0x2020
000069F5  2020              and [bx+si],ah
000069F7  2020              and [bx+si],ah
000069F9  2020              and [bx+si],ah
000069FB  2020              and [bx+si],ah
000069FD  2020              and [bx+si],ah
000069FF  20B10DE8          and [bx+di-0x17f3],dh
00006A03  51                push cx
00006A04  A3B805            mov [0x5b8],ax
00006A07  009757B8          add [bx-0x47a9],dl
00006A0B  5C                pop sp
00006A0C  005F88            add [bx-0x78],bl
00006A0F  43                inc bx
00006A10  EC                in al,dx
00006A11  B80700            mov ax,0x7
00006A14  97                xchg ax,di
00006A15  57                push di
00006A16  B8B300            mov ax,0xb3
00006A19  5F                pop di
00006A1A  8843EC            mov [bp+di-0x14],al
00006A1D  B80900            mov ax,0x9
00006A20  97                xchg ax,di
00006A21  57                push di
00006A22  B82F00            mov ax,0x2f
00006A25  5F                pop di
00006A26  8843EC            mov [bp+di-0x14],al
00006A29  A19315            mov ax,[0x1593]
00006A2C  50                push ax
00006A2D  B80400            mov ax,0x4
00006A30  050300            add ax,0x3
00006A33  E82999            call word 0x35f
00006A36  E846B4            call word 0x1e7f
00006A39  8D7EEC            lea di,[bp-0x14]
00006A3C  16                push ss
00006A3D  E8E7A2            call word 0xd27
00006A40  B80000            mov ax,0x0
00006A43  E8B3B7            call word 0x21f9
00006A46  E824BD            call word 0x276d
00006A49  8D7EEC            lea di,[bp-0x14]
00006A4C  16                push ss
00006A4D  57                push di
00006A4E  E8EFA2            call word 0xd40
00006A51  0D2020            or ax,0x2020
00006A54  2020              and [bx+si],ah
00006A56  2020              and [bx+si],ah
00006A58  2020              and [bx+si],ah
00006A5A  2020              and [bx+si],ah
00006A5C  2020              and [bx+si],ah
00006A5E  20B10DE8          and [bx+di-0x17f3],dh
00006A62  F2A2B806          repne mov [0x6b8],al
00006A66  009757B8          add [bx-0x47a9],dl
00006A6A  5C                pop sp
00006A6B  005F88            add [bx-0x78],bl
00006A6E  43                inc bx
00006A6F  EC                in al,dx
00006A70  B80700            mov ax,0x7
00006A73  97                xchg ax,di
00006A74  57                push di
00006A75  B8B300            mov ax,0xb3
00006A78  5F                pop di
00006A79  8843EC            mov [bp+di-0x14],al
00006A7C  B80800            mov ax,0x8
00006A7F  97                xchg ax,di
00006A80  57                push di
00006A81  B82F00            mov ax,0x2f
00006A84  5F                pop di
00006A85  8843EC            mov [bp+di-0x14],al
00006A88  A19315            mov ax,[0x1593]
00006A8B  50                push ax
00006A8C  B80400            mov ax,0x4
00006A8F  050400            add ax,0x4
00006A92  E8CA98            call word 0x35f
00006A95  E8E7B3            call word 0x1e7f
00006A98  8D7EEC            lea di,[bp-0x14]
00006A9B  16                push ss
00006A9C  E888A2            call word 0xd27
00006A9F  B80000            mov ax,0x0
00006AA2  E854B7            call word 0x21f9
00006AA5  E8C5BC            call word 0x276d
00006AA8  8D7EEC            lea di,[bp-0x14]
00006AAB  16                push ss
00006AAC  57                push di
00006AAD  E890A2            call word 0xd40
00006AB0  0D2020            or ax,0x2020
00006AB3  2020              and [bx+si],ah
00006AB5  2020              and [bx+si],ah
00006AB7  2020              and [bx+si],ah
00006AB9  2020              and [bx+si],ah
00006ABB  2020              and [bx+si],ah
00006ABD  20B10DE8          and [bx+di-0x17f3],dh
00006AC1  93                xchg ax,bx
00006AC2  A2B802            mov [0x2b8],al
00006AC5  009757B8          add [bx-0x47a9],dl
00006AC9  57                push di
00006ACA  005F88            add [bx-0x78],bl
00006ACD  43                inc bx
00006ACE  EC                in al,dx
00006ACF  B80400            mov ax,0x4
00006AD2  97                xchg ax,di
00006AD3  57                push di
00006AD4  B8C400            mov ax,0xc4
00006AD7  5F                pop di
00006AD8  8843EC            mov [bp+di-0x14],al
00006ADB  B80500            mov ax,0x5
00006ADE  97                xchg ax,di
00006ADF  57                push di
00006AE0  B8C400            mov ax,0xc4
00006AE3  5F                pop di
00006AE4  8843EC            mov [bp+di-0x14],al
00006AE7  B80600            mov ax,0x6
00006AEA  97                xchg ax,di
00006AEB  57                push di
00006AEC  B8C400            mov ax,0xc4
00006AEF  5F                pop di
00006AF0  8843EC            mov [bp+di-0x14],al
00006AF3  B80700            mov ax,0x7
00006AF6  97                xchg ax,di
00006AF7  57                push di
00006AF8  B8F900            mov ax,0xf9
00006AFB  5F                pop di
00006AFC  8843EC            mov [bp+di-0x14],al
00006AFF  B80800            mov ax,0x8
00006B02  97                xchg ax,di
00006B03  57                push di
00006B04  B8C400            mov ax,0xc4
00006B07  5F                pop di
00006B08  8843EC            mov [bp+di-0x14],al
00006B0B  B80900            mov ax,0x9
00006B0E  97                xchg ax,di
00006B0F  57                push di
00006B10  B8C400            mov ax,0xc4
00006B13  5F                pop di
00006B14  8843EC            mov [bp+di-0x14],al
00006B17  B80A00            mov ax,0xa
00006B1A  97                xchg ax,di
00006B1B  57                push di
00006B1C  B8C400            mov ax,0xc4
00006B1F  5F                pop di
00006B20  8843EC            mov [bp+di-0x14],al
00006B23  B80C00            mov ax,0xc
00006B26  97                xchg ax,di
00006B27  57                push di
00006B28  B84500            mov ax,0x45
00006B2B  5F                pop di
00006B2C  8843EC            mov [bp+di-0x14],al
00006B2F  A19315            mov ax,[0x1593]
00006B32  50                push ax
00006B33  B80400            mov ax,0x4
00006B36  050500            add ax,0x5
00006B39  E82398            call word 0x35f
00006B3C  E840B3            call word 0x1e7f
00006B3F  8D7EEC            lea di,[bp-0x14]
00006B42  16                push ss
00006B43  E8E1A1            call word 0xd27
00006B46  B80000            mov ax,0x0
00006B49  E8ADB6            call word 0x21f9
00006B4C  E81EBC            call word 0x276d
00006B4F  8D7EEC            lea di,[bp-0x14]
00006B52  16                push ss
00006B53  57                push di
00006B54  E8E9A1            call word 0xd40
00006B57  0D2020            or ax,0x2020
00006B5A  2020              and [bx+si],ah
00006B5C  2020              and [bx+si],ah
00006B5E  2020              and [bx+si],ah
00006B60  2020              and [bx+si],ah
00006B62  2020              and [bx+si],ah
00006B64  20B10DE8          and [bx+di-0x17f3],dh
00006B68  EC                in al,dx
00006B69  A1B806            mov ax,[0x6b8]
00006B6C  009757B8          add [bx-0x47a9],dl
00006B70  2F                das
00006B71  005F88            add [bx-0x78],bl
00006B74  43                inc bx
00006B75  EC                in al,dx
00006B76  B80700            mov ax,0x7
00006B79  97                xchg ax,di
00006B7A  57                push di
00006B7B  B8B300            mov ax,0xb3
00006B7E  5F                pop di
00006B7F  8843EC            mov [bp+di-0x14],al
00006B82  B80800            mov ax,0x8
00006B85  97                xchg ax,di
00006B86  57                push di
00006B87  B85C00            mov ax,0x5c
00006B8A  5F                pop di
00006B8B  8843EC            mov [bp+di-0x14],al
00006B8E  A19315            mov ax,[0x1593]
00006B91  50                push ax
00006B92  B80400            mov ax,0x4
00006B95  050600            add ax,0x6
00006B98  E8C497            call word 0x35f
00006B9B  E8E1B2            call word 0x1e7f
00006B9E  8D7EEC            lea di,[bp-0x14]
00006BA1  16                push ss
00006BA2  E882A1            call word 0xd27
00006BA5  B80000            mov ax,0x0
00006BA8  E84EB6            call word 0x21f9
00006BAB  E8BFBB            call word 0x276d
00006BAE  8D7EEC            lea di,[bp-0x14]
00006BB1  16                push ss
00006BB2  57                push di
00006BB3  E88AA1            call word 0xd40
00006BB6  0D2020            or ax,0x2020
00006BB9  2020              and [bx+si],ah
00006BBB  2020              and [bx+si],ah
00006BBD  2020              and [bx+si],ah
00006BBF  2020              and [bx+si],ah
00006BC1  2020              and [bx+si],ah
00006BC3  20B10DE8          and [bx+di-0x17f3],dh
00006BC7  8DA1B805          lea sp,[bx+di+0x5b8]
00006BCB  009757B8          add [bx-0x47a9],dl
00006BCF  2F                das
00006BD0  005F88            add [bx-0x78],bl
00006BD3  43                inc bx
00006BD4  EC                in al,dx
00006BD5  B80700            mov ax,0x7
00006BD8  97                xchg ax,di
00006BD9  57                push di
00006BDA  B8B300            mov ax,0xb3
00006BDD  5F                pop di
00006BDE  8843EC            mov [bp+di-0x14],al
00006BE1  B80900            mov ax,0x9
00006BE4  97                xchg ax,di
00006BE5  57                push di
00006BE6  B85C00            mov ax,0x5c
00006BE9  5F                pop di
00006BEA  8843EC            mov [bp+di-0x14],al
00006BED  A19315            mov ax,[0x1593]
00006BF0  50                push ax
00006BF1  B80400            mov ax,0x4
00006BF4  050700            add ax,0x7
00006BF7  E86597            call word 0x35f
00006BFA  E882B2            call word 0x1e7f
00006BFD  8D7EEC            lea di,[bp-0x14]
00006C00  16                push ss
00006C01  E823A1            call word 0xd27
00006C04  B80000            mov ax,0x0
00006C07  E8EFB5            call word 0x21f9
00006C0A  E860BB            call word 0x276d
00006C0D  8D7EEC            lea di,[bp-0x14]
00006C10  16                push ss
00006C11  57                push di
00006C12  E82BA1            call word 0xd40
00006C15  0D2020            or ax,0x2020
00006C18  2020              and [bx+si],ah
00006C1A  2020              and [bx+si],ah
00006C1C  2020              and [bx+si],ah
00006C1E  2020              and [bx+si],ah
00006C20  2020              and [bx+si],ah
00006C22  20B10DE8          and [bx+di-0x17f3],dh
00006C26  2EA1B804          mov ax,[cs:0x4b8]
00006C2A  009757B8          add [bx-0x47a9],dl
00006C2E  2F                das
00006C2F  005F88            add [bx-0x78],bl
00006C32  43                inc bx
00006C33  EC                in al,dx
00006C34  B80700            mov ax,0x7
00006C37  97                xchg ax,di
00006C38  57                push di
00006C39  B8B300            mov ax,0xb3
00006C3C  5F                pop di
00006C3D  8843EC            mov [bp+di-0x14],al
00006C40  B80A00            mov ax,0xa
00006C43  97                xchg ax,di
00006C44  57                push di
00006C45  B85C00            mov ax,0x5c
00006C48  5F                pop di
00006C49  8843EC            mov [bp+di-0x14],al
00006C4C  A19315            mov ax,[0x1593]
00006C4F  50                push ax
00006C50  B80400            mov ax,0x4
00006C53  050800            add ax,0x8
00006C56  E80697            call word 0x35f
00006C59  E823B2            call word 0x1e7f
00006C5C  8D7EEC            lea di,[bp-0x14]
00006C5F  16                push ss
00006C60  E8C4A0            call word 0xd27
00006C63  B80000            mov ax,0x0
00006C66  E890B5            call word 0x21f9
00006C69  E801BB            call word 0x276d
00006C6C  8D7EEC            lea di,[bp-0x14]
00006C6F  16                push ss
00006C70  57                push di
00006C71  E8CCA0            call word 0xd40
00006C74  0D2020            or ax,0x2020
00006C77  2020              and [bx+si],ah
00006C79  2020              and [bx+si],ah
00006C7B  2020              and [bx+si],ah
00006C7D  2020              and [bx+si],ah
00006C7F  2020              and [bx+si],ah
00006C81  20B10DE8          and [bx+di-0x17f3],dh
00006C85  CF                iretw
00006C86  A0A193            mov al,[0x93a1]
00006C89  1550B8            adc ax,0xb850
00006C8C  0400              add al,0x0
00006C8E  050900            add ax,0x9
00006C91  E8CB96            call word 0x35f
00006C94  E8E8B1            call word 0x1e7f
00006C97  8D7EEC            lea di,[bp-0x14]
00006C9A  16                push ss
00006C9B  E889A0            call word 0xd27
00006C9E  B80000            mov ax,0x0
00006CA1  E855B5            call word 0x21f9
00006CA4  E8C6BA            call word 0x276d
00006CA7  8D7EEC            lea di,[bp-0x14]
00006CAA  16                push ss
00006CAB  57                push di
00006CAC  E891A0            call word 0xd40
00006CAF  0D2020            or ax,0x2020
00006CB2  2020              and [bx+si],ah
00006CB4  2020              and [bx+si],ah
00006CB6  2020              and [bx+si],ah
00006CB8  2020              and [bx+si],ah
00006CBA  2020              and [bx+si],ah
00006CBC  20B10DE8          and [bx+di-0x17f3],dh
00006CC0  94                xchg ax,sp
00006CC1  A0B802            mov al,[0x2b8]
00006CC4  009757B8          add [bx-0x47a9],dl
00006CC8  53                push bx
00006CC9  005F88            add [bx-0x78],bl
00006CCC  43                inc bx
00006CCD  EC                in al,dx
00006CCE  B80300            mov ax,0x3
00006CD1  97                xchg ax,di
00006CD2  57                push di
00006CD3  B85700            mov ax,0x57
00006CD6  5F                pop di
00006CD7  8843EC            mov [bp+di-0x14],al
00006CDA  B80700            mov ax,0x7
00006CDD  97                xchg ax,di
00006CDE  57                push di
00006CDF  B85300            mov ax,0x53
00006CE2  5F                pop di
00006CE3  8843EC            mov [bp+di-0x14],al
00006CE6  B80B00            mov ax,0xb
00006CE9  97                xchg ax,di
00006CEA  57                push di
00006CEB  B85300            mov ax,0x53
00006CEE  5F                pop di
00006CEF  8843EC            mov [bp+di-0x14],al
00006CF2  B80C00            mov ax,0xc
00006CF5  97                xchg ax,di
00006CF6  57                push di
00006CF7  B84500            mov ax,0x45
00006CFA  5F                pop di
00006CFB  8843EC            mov [bp+di-0x14],al
00006CFE  A19315            mov ax,[0x1593]
00006D01  50                push ax
00006D02  B80400            mov ax,0x4
00006D05  050A00            add ax,0xa
00006D08  E85496            call word 0x35f
00006D0B  E871B1            call word 0x1e7f
00006D0E  8D7EEC            lea di,[bp-0x14]
00006D11  16                push ss
00006D12  E812A0            call word 0xd27
00006D15  B80000            mov ax,0x0
00006D18  E8DEB4            call word 0x21f9
00006D1B  E84FBA            call word 0x276d
00006D1E  E90000            jmp word 0x6d21
00006D21  8BE5              mov sp,bp
00006D23  5D                pop bp
00006D24  C3                ret
00006D25  55                push bp
00006D26  8BEC              mov bp,sp
00006D28  55                push bp
00006D29  E90000            jmp word 0x6d2c
00006D2C  4C                dec sp
00006D2D  B80000            mov ax,0x0
00006D30  A27A15            mov [0x157a],al
00006D33  B80000            mov ax,0x0
00006D36  A27915            mov [0x1579],al
00006D39  B90600            mov cx,0x6
00006D3C  E8B9B9            call word 0x26f8
00006D3F  E8FCBA            call word 0x283e
00006D42  E83AB1            call word 0x1e7f
00006D45  E8DEB4            call word 0x2226
00006D48  185765            sbb [bx+0x65],dl
00006D4B  6C                insb
00006D4C  636F6D            arpl [bx+0x6d],bp
00006D4F  6520746F          and [gs:si+0x6f],dh
00006D53  204649            and [bp+0x49],al
00006D56  52                push dx
00006D57  45                inc bp
00006D58  204649            and [bp+0x49],al
00006D5B  47                inc di
00006D5C  48                dec ax
00006D5D  54                push sp
00006D5E  45                inc bp
00006D5F  52                push dx
00006D60  2EE8D8B4          cs call word 0x223c
00006D64  E806BA            call word 0x276d
00006D67  E815B1            call word 0x1e7f
00006D6A  E8CFB4            call word 0x223c
00006D6D  E8FDB9            call word 0x276d
00006D70  B90800            mov cx,0x8
00006D73  E882B9            call word 0x26f8
00006D76  E819BB            call word 0x2892
00006D79  E803B1            call word 0x1e7f
00006D7C  E8A7B4            call word 0x2226
00006D7F  2C45              sub al,0x45
00006D81  6E                outsb
00006D82  7465              jz 0x6de9
00006D84  7220              jc 0x6da6
00006D86  646973706C61      imul si,[fs:bp+di+0x70],word 0x616c
00006D8C  7920              jns 0x6dae
00006D8E  7479              jz 0x6e09
00006D90  7065              jo 0x6df7
00006D92  3A20              cmp ah,[bx+si]
00006D94  43                inc bx
00006D95  286F6C            sub [bx+0x6c],ch
00006D98  6F                outsw
00006D99  7220              jc 0x6dbb
00006D9B  6F                outsw
00006D9C  7220              jc 0x6dbe
00006D9E  4D                dec bp
00006D9F  286F6E            sub [bx+0x6e],ch
00006DA2  6F                outsw
00006DA3  636872            arpl [bx+si+0x72],bp
00006DA6  6F                outsw
00006DA7  6D                insw
00006DA8  652D2D3E          gs sub ax,0x3e2d
00006DAC  E8BEB9            call word 0x276d
00006DAF  BFBB00            mov di,0xbb
00006DB2  1E                push ds
00006DB3  E89DB0            call word 0x1e53
00006DB6  8D7EFD            lea di,[bp-0x3]
00006DB9  16                push ss
00006DBA  E881B2            call word 0x203e
00006DBD  E8ADB9            call word 0x276d
00006DC0  8A46FD            mov al,[bp-0x3]
00006DC3  32E4              xor ah,ah
00006DC5  E8B696            call word 0x47e
00006DC8  8846FD            mov [bp-0x3],al
00006DCB  8A46FD            mov al,[bp-0x3]
00006DCE  32E4              xor ah,ah
00006DD0  50                push ax
00006DD1  E861A2            call word 0x1035
00006DD4  B84D00            mov ax,0x4d
00006DD7  E86DA2            call word 0x1047
00006DDA  B84300            mov ax,0x43
00006DDD  E867A2            call word 0x1047
00006DE0  E838A3            call word 0x111b
00006DE3  7503              jnz 0x6de8
00006DE5  E9C7FF            jmp word 0x6daf
00006DE8  E894B0            call word 0x1e7f
00006DEB  8A46FD            mov al,[bp-0x3]
00006DEE  32E4              xor ah,ah
00006DF0  50                push ax
00006DF1  B80000            mov ax,0x0
00006DF4  E88CB3            call word 0x2183
00006DF7  E842B4            call word 0x223c
00006DFA  E870B9            call word 0x276d
00006DFD  8A46FD            mov al,[bp-0x3]
00006E00  32E4              xor ah,ah
00006E02  3D4D00            cmp ax,0x4d
00006E05  7403              jz 0x6e0a
00006E07  E90F00            jmp word 0x6e19
00006E0A  B80000            mov ax,0x0
00006E0D  A27915            mov [0x1579],al
00006E10  B81F00            mov ax,0x1f
00006E13  A39315            mov [0x1593],ax
00006E16  E90C00            jmp word 0x6e25
00006E19  B80100            mov ax,0x1
00006E1C  A27915            mov [0x1579],al
00006E1F  B81C00            mov ax,0x1c
00006E22  A39315            mov [0x1593],ax
00006E25  A07915            mov al,[0x1579]
00006E28  32E4              xor ah,ah
00006E2A  0BC0              or ax,ax
00006E2C  7503              jnz 0x6e31
00006E2E  E90600            jmp word 0x6e37
00006E31  B80100            mov ax,0x1
00006E34  E88594            call word 0x2bc
00006E37  B80000            mov ax,0x0
00006E3A  E8A296            call word 0x4df
00006E3D  B80F00            mov ax,0xf
00006E40  E88896            call word 0x4cb
00006E43  E839B0            call word 0x1e7f
00006E46  E8F3B3            call word 0x223c
00006E49  E821B9            call word 0x276d
00006E4C  E830B0            call word 0x1e7f
00006E4F  E8D4B3            call word 0x2226
00006E52  2444              and al,0x44
00006E54  6F                outsw
00006E55  20796F            and [bx+di+0x6f],bh
00006E58  7520              jnz 0x6e7a
00006E5A  7761              ja 0x6ebd
00006E5C  6E                outsb
00006E5D  7420              jz 0x6e7f
00006E5F  6761              a32 popaw
00006E61  6D                insw
00006E62  6520696E          and [gs:bx+di+0x6e],ch
00006E66  666F              outsd
00006E68  726D              jc 0x6ed7
00006E6A  61                popaw
00006E6B  7469              jz 0x6ed6
00006E6D  6F                outsw
00006E6E  6E                outsb
00006E6F  3F                aas
00006E70  20592C            and [bx+di+0x2c],bl
00006E73  4E                dec si
00006E74  2D2D3E            sub ax,0x3e2d
00006E77  E8F3B8            call word 0x276d
00006E7A  BFBB00            mov di,0xbb
00006E7D  1E                push ds
00006E7E  E8D2AF            call word 0x1e53
00006E81  8D7EFD            lea di,[bp-0x3]
00006E84  16                push ss
00006E85  E8B6B1            call word 0x203e
00006E88  E8E2B8            call word 0x276d
00006E8B  8A46FD            mov al,[bp-0x3]
00006E8E  32E4              xor ah,ah
00006E90  E8EB95            call word 0x47e
00006E93  8846FD            mov [bp-0x3],al
00006E96  8A46FD            mov al,[bp-0x3]
00006E99  32E4              xor ah,ah
00006E9B  50                push ax
00006E9C  E896A1            call word 0x1035
00006E9F  B85900            mov ax,0x59
00006EA2  E8A2A1            call word 0x1047
00006EA5  B84E00            mov ax,0x4e
00006EA8  E89CA1            call word 0x1047
00006EAB  E86DA2            call word 0x111b
00006EAE  7503              jnz 0x6eb3
00006EB0  E9C7FF            jmp word 0x6e7a
00006EB3  E8C9AF            call word 0x1e7f
00006EB6  8A46FD            mov al,[bp-0x3]
00006EB9  32E4              xor ah,ah
00006EBB  50                push ax
00006EBC  B80000            mov ax,0x0
00006EBF  E8C1B2            call word 0x2183
00006EC2  E877B3            call word 0x223c
00006EC5  E8A5B8            call word 0x276d
00006EC8  8A46FD            mov al,[bp-0x3]
00006ECB  32E4              xor ah,ah
00006ECD  3D5900            cmp ax,0x59
00006ED0  7403              jz 0x6ed5
00006ED2  E90900            jmp word 0x6ede
00006ED5  B90800            mov cx,0x8
00006ED8  E81DB8            call word 0x26f8
00006EDB  E8FBBF            call word 0x2ed9
00006EDE  E87BB7            call word 0x265c
00006EE1  E90000            jmp word 0x6ee4
00006EE4  8BE5              mov sp,bp
00006EE6  5D                pop bp
00006EE7  C3                ret
00006EE8  55                push bp
00006EE9  8BEC              mov bp,sp
00006EEB  55                push bp
00006EEC  E90000            jmp word 0x6eef
00006EEF  83EC08            sub sp,byte +0x8
00006EF2  B80100            mov ax,0x1
00006EF5  A38815            mov [0x1588],ax
00006EF8  B80000            mov ax,0x0
00006EFB  A38215            mov [0x1582],ax
00006EFE  B80000            mov ax,0x0
00006F01  A38415            mov [0x1584],ax
00006F04  B80200            mov ax,0x2
00006F07  A38615            mov [0x1586],ax
00006F0A  E872AF            call word 0x1e7f
00006F0D  E82CB3            call word 0x223c
00006F10  E85AB8            call word 0x276d
00006F13  E869AF            call word 0x1e7f
00006F16  E80DB3            call word 0x2226
00006F19  2450              and al,0x50
00006F1B  6C                insb
00006F1C  61                popaw
00006F1D  7920              jns 0x6f3f
00006F1F  6C                insb
00006F20  657665            gs jna 0x6f88
00006F23  6C                insb
00006F24  3A20              cmp ah,[bx+si]
00006F26  45                inc bp
00006F27  286173            sub [bx+di+0x73],ah
00006F2A  792C              jns 0x6f58
00006F2C  204D28            and [di+0x28],cl
00006F2F  656469756D2C20    imul si,[fs:di+0x6d],word 0x202c
00006F36  48                dec ax
00006F37  286172            sub [bx+di+0x72],ah
00006F3A  642D2D3E          fs sub ax,0x3e2d
00006F3E  E82CB8            call word 0x276d
00006F41  BFBB00            mov di,0xbb
00006F44  1E                push ds
00006F45  E80BAF            call word 0x1e53
00006F48  8D7EFD            lea di,[bp-0x3]
00006F4B  16                push ss
00006F4C  E8EFB0            call word 0x203e
00006F4F  E81BB8            call word 0x276d
00006F52  8A46FD            mov al,[bp-0x3]
00006F55  32E4              xor ah,ah
00006F57  E82495            call word 0x47e
00006F5A  8846FD            mov [bp-0x3],al
00006F5D  8A46FD            mov al,[bp-0x3]
00006F60  32E4              xor ah,ah
00006F62  50                push ax
00006F63  E8CFA0            call word 0x1035
00006F66  B84500            mov ax,0x45
00006F69  E8DBA0            call word 0x1047
00006F6C  B84D00            mov ax,0x4d
00006F6F  E8D5A0            call word 0x1047
00006F72  B84800            mov ax,0x48
00006F75  E8CFA0            call word 0x1047
00006F78  E8A0A1            call word 0x111b
00006F7B  7503              jnz 0x6f80
00006F7D  E9C1FF            jmp word 0x6f41
00006F80  E8FCAE            call word 0x1e7f
00006F83  8A46FD            mov al,[bp-0x3]
00006F86  32E4              xor ah,ah
00006F88  50                push ax
00006F89  B80000            mov ax,0x0
00006F8C  E8F4B1            call word 0x2183
00006F8F  E8AAB2            call word 0x223c
00006F92  E8D8B7            call word 0x276d
00006F95  8A46FD            mov al,[bp-0x3]
00006F98  32E4              xor ah,ah
00006F9A  3D4500            cmp ax,0x45
00006F9D  7403              jz 0x6fa2
00006F9F  E92700            jmp word 0x6fc9
00006FA2  B80000            mov ax,0x0
00006FA5  A27C15            mov [0x157c],al
00006FA8  B85802            mov ax,0x258
00006FAB  A39115            mov [0x1591],ax
00006FAE  B80500            mov ax,0x5
00006FB1  A38A15            mov [0x158a],ax
00006FB4  B80800            mov ax,0x8
00006FB7  A37E15            mov [0x157e],ax
00006FBA  B80A00            mov ax,0xa
00006FBD  A38015            mov [0x1580],ax
00006FC0  B8C800            mov ax,0xc8
00006FC3  A38F15            mov [0x158f],ax
00006FC6  E95800            jmp word 0x7021
00006FC9  8A46FD            mov al,[bp-0x3]
00006FCC  32E4              xor ah,ah
00006FCE  3D4D00            cmp ax,0x4d
00006FD1  7403              jz 0x6fd6
00006FD3  E92700            jmp word 0x6ffd
00006FD6  B80100            mov ax,0x1
00006FD9  A27C15            mov [0x157c],al
00006FDC  B8EE02            mov ax,0x2ee
00006FDF  A39115            mov [0x1591],ax
00006FE2  B80600            mov ax,0x6
00006FE5  A38A15            mov [0x158a],ax
00006FE8  B81000            mov ax,0x10
00006FEB  A37E15            mov [0x157e],ax
00006FEE  B80500            mov ax,0x5
00006FF1  A38015            mov [0x1580],ax
00006FF4  B82C01            mov ax,0x12c
00006FF7  A38F15            mov [0x158f],ax
00006FFA  E92400            jmp word 0x7021
00006FFD  B80200            mov ax,0x2
00007000  A27C15            mov [0x157c],al
00007003  B8E803            mov ax,0x3e8
00007006  A39115            mov [0x1591],ax
00007009  B80700            mov ax,0x7
0000700C  A38A15            mov [0x158a],ax
0000700F  B81800            mov ax,0x18
00007012  A37E15            mov [0x157e],ax
00007015  B80200            mov ax,0x2
00007018  A38015            mov [0x1580],ax
0000701B  B89001            mov ax,0x190
0000701E  A38F15            mov [0x158f],ax
00007021  E85BAE            call word 0x1e7f
00007024  E815B2            call word 0x223c
00007027  E843B7            call word 0x276d
0000702A  E852AE            call word 0x1e7f
0000702D  E8F6B1            call word 0x2226
00007030  1B536F            sbb dx,[bp+di+0x6f]
00007033  756E              jnz 0x70a3
00007035  64206566          and [fs:di+0x66],ah
00007039  6665637473        o32 arpl [gs:si+0x73],si
0000703E  3A20              cmp ah,[bx+si]
00007040  59                pop cx
00007041  286573            sub [di+0x73],ah
00007044  2C20              sub al,0x20
00007046  4E                dec si
00007047  286F2D            sub [bx+0x2d],ch
0000704A  2D3EE8            sub ax,0xe83e
0000704D  1E                push ds
0000704E  B7BF              mov bh,0xbf
00007050  BB001E            mov bx,0x1e00
00007053  E8FDAD            call word 0x1e53
00007056  8D7EFD            lea di,[bp-0x3]
00007059  16                push ss
0000705A  E8E1AF            call word 0x203e
0000705D  E80DB7            call word 0x276d
00007060  8A46FD            mov al,[bp-0x3]
00007063  32E4              xor ah,ah
00007065  E81694            call word 0x47e
00007068  8846FD            mov [bp-0x3],al
0000706B  8A46FD            mov al,[bp-0x3]
0000706E  32E4              xor ah,ah
00007070  50                push ax
00007071  E8C19F            call word 0x1035
00007074  B85900            mov ax,0x59
00007077  E8CD9F            call word 0x1047
0000707A  B84E00            mov ax,0x4e
0000707D  E8C79F            call word 0x1047
00007080  E898A0            call word 0x111b
00007083  7503              jnz 0x7088
00007085  E9C7FF            jmp word 0x704f
00007088  E8F4AD            call word 0x1e7f
0000708B  8A46FD            mov al,[bp-0x3]
0000708E  32E4              xor ah,ah
00007090  50                push ax
00007091  B80000            mov ax,0x0
00007094  E8ECB0            call word 0x2183
00007097  E8A2B1            call word 0x223c
0000709A  E8D0B6            call word 0x276d
0000709D  8A46FD            mov al,[bp-0x3]
000070A0  32E4              xor ah,ah
000070A2  3D5900            cmp ax,0x59
000070A5  7403              jz 0x70aa
000070A7  E90900            jmp word 0x70b3
000070AA  B80100            mov ax,0x1
000070AD  A27D15            mov [0x157d],al
000070B0  E90600            jmp word 0x70b9
000070B3  B80000            mov ax,0x0
000070B6  A27D15            mov [0x157d],al
000070B9  B90E00            mov cx,0xe
000070BC  E839B6            call word 0x26f8
000070BF  50                push ax
000070C0  B80000            mov ax,0x0
000070C3  50                push ax
000070C4  B80700            mov ax,0x7
000070C7  50                push ax
000070C8  E81EBA            call word 0x2ae9
000070CB  A28C15            mov [0x158c],al
000070CE  B80A00            mov ax,0xa
000070D1  50                push ax
000070D2  B90800            mov cx,0x8
000070D5  E820B6            call word 0x26f8
000070D8  50                push ax
000070D9  E85CBA            call word 0x2b38
000070DC  B90500            mov cx,0x5
000070DF  99                cwd
000070E0  F7F9              idiv cx
000070E2  59                pop cx
000070E3  03C1              add ax,cx
000070E5  A38D15            mov [0x158d],ax
000070E8  B80000            mov ax,0x0
000070EB  8846F6            mov [bp-0xa],al
000070EE  B80100            mov ax,0x1
000070F1  50                push ax
000070F2  B81900            mov ax,0x19
000070F5  59                pop cx
000070F6  91                xchg ax,cx
000070F7  2BC8              sub cx,ax
000070F9  7D03              jnl 0x70fe
000070FB  E96E01            jmp word 0x726c
000070FE  41                inc cx
000070FF  8846FC            mov [bp-0x4],al
00007102  51                push cx
00007103  B80100            mov ax,0x1
00007106  50                push ax
00007107  B81900            mov ax,0x19
0000710A  59                pop cx
0000710B  91                xchg ax,cx
0000710C  2BC8              sub cx,ax
0000710E  7D03              jnl 0x7113
00007110  E94F01            jmp word 0x7262
00007113  41                inc cx
00007114  8846FB            mov [bp-0x5],al
00007117  51                push cx
00007118  8A46FC            mov al,[bp-0x4]
0000711B  32E4              xor ah,ah
0000711D  48                dec ax
0000711E  B9C800            mov cx,0xc8
00007121  F7E1              mul cx
00007123  97                xchg ax,di
00007124  57                push di
00007125  8A46FB            mov al,[bp-0x5]
00007128  32E4              xor ah,ah
0000712A  48                dec ax
0000712B  B90800            mov cx,0x8
0000712E  F7E1              mul cx
00007130  5F                pop di
00007131  03F8              add di,ax
00007133  81C78B01          add di,0x18b
00007137  1E                push ds
00007138  57                push di
00007139  8A46FC            mov al,[bp-0x4]
0000713C  32E4              xor ah,ah
0000713E  3D0100            cmp ax,0x1
00007141  B80100            mov ax,0x1
00007144  7F01              jg 0x7147
00007146  48                dec ax
00007147  50                push ax
00007148  8A46FC            mov al,[bp-0x4]
0000714B  32E4              xor ah,ah
0000714D  3D1900            cmp ax,0x19
00007150  B80100            mov ax,0x1
00007153  7C01              jl 0x7156
00007155  48                dec ax
00007156  59                pop cx
00007157  23C1              and ax,cx
00007159  50                push ax
0000715A  8A46FB            mov al,[bp-0x5]
0000715D  32E4              xor ah,ah
0000715F  3D0100            cmp ax,0x1
00007162  B80100            mov ax,0x1
00007165  7F01              jg 0x7168
00007167  48                dec ax
00007168  59                pop cx
00007169  23C1              and ax,cx
0000716B  50                push ax
0000716C  8A46FB            mov al,[bp-0x5]
0000716F  32E4              xor ah,ah
00007171  3D1900            cmp ax,0x19
00007174  B80100            mov ax,0x1
00007177  7C01              jl 0x717a
00007179  48                dec ax
0000717A  59                pop cx
0000717B  23C1              and ax,cx
0000717D  0BC0              or ax,ax
0000717F  7503              jnz 0x7184
00007181  E98700            jmp word 0x720b
00007184  B90800            mov cx,0x8
00007187  E86EB5            call word 0x26f8
0000718A  50                push ax
0000718B  E8AAB9            call word 0x2b38
0000718E  8946F9            mov [bp-0x7],ax
00007191  8A46F6            mov al,[bp-0xa]
00007194  32E4              xor ah,ah
00007196  0BC0              or ax,ax
00007198  7503              jnz 0x719d
0000719A  E90F00            jmp word 0x71ac
0000719D  A18015            mov ax,[0x1580]
000071A0  B90200            mov cx,0x2
000071A3  99                cwd
000071A4  F7F9              idiv cx
000071A6  8946F7            mov [bp-0x9],ax
000071A9  E90600            jmp word 0x71b2
000071AC  A18015            mov ax,[0x1580]
000071AF  8946F7            mov [bp-0x9],ax
000071B2  8B46F9            mov ax,[bp-0x7]
000071B5  3D3200            cmp ax,0x32
000071B8  B80100            mov ax,0x1
000071BB  7F01              jg 0x71be
000071BD  48                dec ax
000071BE  50                push ax
000071BF  8B46F9            mov ax,[bp-0x7]
000071C2  50                push ax
000071C3  B83200            mov ax,0x32
000071C6  0346F7            add ax,[bp-0x9]
000071C9  59                pop cx
000071CA  91                xchg ax,cx
000071CB  3BC1              cmp ax,cx
000071CD  B80100            mov ax,0x1
000071D0  7E01              jng 0x71d3
000071D2  48                dec ax
000071D3  59                pop cx
000071D4  23C1              and ax,cx
000071D6  0BC0              or ax,ax
000071D8  7503              jnz 0x71dd
000071DA  E91700            jmp word 0x71f4
000071DD  C47EEE            les di,[bp-0x12]
000071E0  06                push es
000071E1  57                push di
000071E2  B80300            mov ax,0x3
000071E5  5F                pop di
000071E6  07                pop es
000071E7  26884504          mov [es:di+0x4],al
000071EB  B80100            mov ax,0x1
000071EE  8846F6            mov [bp-0xa],al
000071F1  E91400            jmp word 0x7208
000071F4  C47EEE            les di,[bp-0x12]
000071F7  06                push es
000071F8  57                push di
000071F9  B80000            mov ax,0x0
000071FC  5F                pop di
000071FD  07                pop es
000071FE  26884504          mov [es:di+0x4],al
00007202  B80000            mov ax,0x0
00007205  8846F6            mov [bp-0xa],al
00007208  E91400            jmp word 0x721f
0000720B  C47EEE            les di,[bp-0x12]
0000720E  06                push es
0000720F  57                push di
00007210  B80000            mov ax,0x0
00007213  5F                pop di
00007214  07                pop es
00007215  26884504          mov [es:di+0x4],al
00007219  B80000            mov ax,0x0
0000721C  8846F6            mov [bp-0xa],al
0000721F  C47EEE            les di,[bp-0x12]
00007222  06                push es
00007223  57                push di
00007224  B80000            mov ax,0x0
00007227  5F                pop di
00007228  07                pop es
00007229  268905            mov [es:di],ax
0000722C  C47EEE            les di,[bp-0x12]
0000722F  06                push es
00007230  57                push di
00007231  B80000            mov ax,0x0
00007234  5F                pop di
00007235  07                pop es
00007236  26894502          mov [es:di+0x2],ax
0000723A  C47EEE            les di,[bp-0x12]
0000723D  06                push es
0000723E  57                push di
0000723F  B80000            mov ax,0x0
00007242  5F                pop di
00007243  07                pop es
00007244  26884506          mov [es:di+0x6],al
00007248  C47EEE            les di,[bp-0x12]
0000724B  06                push es
0000724C  57                push di
0000724D  B80000            mov ax,0x0
00007250  5F                pop di
00007251  07                pop es
00007252  26884507          mov [es:di+0x7],al
00007256  58                pop ax
00007257  58                pop ax
00007258  59                pop cx
00007259  49                dec cx
0000725A  7406              jz 0x7262
0000725C  FE46FB            inc byte [bp-0x5]
0000725F  E9B5FE            jmp word 0x7117
00007262  59                pop cx
00007263  49                dec cx
00007264  7406              jz 0x726c
00007266  FE46FC            inc byte [bp-0x4]
00007269  E996FE            jmp word 0x7102
0000726C  B90E00            mov cx,0xe
0000726F  E886B4            call word 0x26f8
00007272  A17E15            mov ax,[0x157e]
00007275  50                push ax
00007276  E846F2            call word 0x64bf
00007279  B91800            mov cx,0x18
0000727C  E879B4            call word 0x26f8
0000727F  E8DCF4            call word 0x675e
00007282  B90E00            mov cx,0xe
00007285  E870B4            call word 0x26f8
00007288  E826ED            call word 0x5fb1
0000728B  B90600            mov cx,0x6
0000728E  E867B4            call word 0x26f8
00007291  E8B8F1            call word 0x644c
00007294  B91200            mov cx,0x12
00007297  E85EB4            call word 0x26f8
0000729A  A18A15            mov ax,[0x158a]
0000729D  50                push ax
0000729E  E824F3            call word 0x65c5
000072A1  B90800            mov cx,0x8
000072A4  E851B4            call word 0x26f8
000072A7  E820F1            call word 0x63ca
000072AA  B80D00            mov ax,0xd
000072AD  A27715            mov [0x1577],al
000072B0  B80D00            mov ax,0xd
000072B3  A27815            mov [0x1578],al
000072B6  E90000            jmp word 0x72b9
000072B9  8BE5              mov sp,bp
000072BB  5D                pop bp
000072BC  C3                ret
000072BD  55                push bp
000072BE  8BEC              mov bp,sp
000072C0  55                push bp
000072C1  E90000            jmp word 0x72c4
000072C4  83EC05            sub sp,byte +0x5
000072C7  B80000            mov ax,0x0
000072CA  E81292            call word 0x4df
000072CD  B80F00            mov ax,0xf
000072D0  E8F891            call word 0x4cb
000072D3  A19315            mov ax,[0x1593]
000072D6  50                push ax
000072D7  B80200            mov ax,0x2
000072DA  E88290            call word 0x35f
000072DD  E89FAB            call word 0x1e7f
000072E0  E843AF            call word 0x2226
000072E3  0920              or [bx+si],sp
000072E5  2020              and [bx+si],ah
000072E7  2020              and [bx+si],ah
000072E9  2020              and [bx+si],ah
000072EB  2020              and [bx+si],ah
000072ED  E87DB4            call word 0x276d
000072F0  B80000            mov ax,0x0
000072F3  50                push ax
000072F4  B80C00            mov ax,0xc
000072F7  59                pop cx
000072F8  91                xchg ax,cx
000072F9  2BC8              sub cx,ax
000072FB  7D03              jnl 0x7300
000072FD  E93300            jmp word 0x7333
00007300  41                inc cx
00007301  8946FA            mov [bp-0x6],ax
00007304  51                push cx
00007305  A19315            mov ax,[0x1593]
00007308  50                push ax
00007309  B80400            mov ax,0x4
0000730C  0346FA            add ax,[bp-0x6]
0000730F  E84D90            call word 0x35f
00007312  E86AAB            call word 0x1e7f
00007315  E80EAF            call word 0x2226
00007318  0D2020            or ax,0x2020
0000731B  2020              and [bx+si],ah
0000731D  2020              and [bx+si],ah
0000731F  2020              and [bx+si],ah
00007321  2020              and [bx+si],ah
00007323  2020              and [bx+si],ah
00007325  20E8              and al,ch
00007327  44                inc sp
00007328  B459              mov ah,0x59
0000732A  49                dec cx
0000732B  7406              jz 0x7333
0000732D  FF46FA            inc word [bp-0x6]
00007330  E9D1FF            jmp word 0x7304
00007333  A19315            mov ax,[0x1593]
00007336  50                push ax
00007337  B81300            mov ax,0x13
0000733A  E82290            call word 0x35f
0000733D  E83FAB            call word 0x1e7f
00007340  E8E3AE            call word 0x2226
00007343  0D2020            or ax,0x2020
00007346  2020              and [bx+si],ah
00007348  2020              and [bx+si],ah
0000734A  2020              and [bx+si],ah
0000734C  2020              and [bx+si],ah
0000734E  2020              and [bx+si],ah
00007350  20E8              and al,ch
00007352  19B4A193          sbb [si-0x6c5f],si
00007356  1550B8            adc ax,0xb850
00007359  1500E8            adc ax,0xe800
0000735C  0190E81E          add [bx+si+0x1ee8],dx
00007360  AB                stosw
00007361  E8C2AE            call word 0x2226
00007364  0920              or [bx+si],sp
00007366  2020              and [bx+si],ah
00007368  2020              and [bx+si],ah
0000736A  2020              and [bx+si],ah
0000736C  2020              and [bx+si],ah
0000736E  E8FCB3            call word 0x276d
00007371  A19315            mov ax,[0x1593]
00007374  050200            add ax,0x2
00007377  50                push ax
00007378  B81500            mov ax,0x15
0000737B  050100            add ax,0x1
0000737E  E8DE8F            call word 0x35f
00007381  E8FBAA            call word 0x1e7f
00007384  E89FAE            call word 0x2226
00007387  0A20              or ah,[bx+si]
00007389  2020              and [bx+si],ah
0000738B  2020              and [bx+si],ah
0000738D  2020              and [bx+si],ah
0000738F  2020              and [bx+si],ah
00007391  20E8              and al,ch
00007393  D8B3A193          fdiv dword [bp+di-0x6c5f]
00007397  150502            adc ax,0x205
0000739A  0050B8            add [bx+si-0x48],dl
0000739D  150005            adc ax,0x500
000073A0  0200              add al,[bx+si]
000073A2  E8BA8F            call word 0x35f
000073A5  E8D7AA            call word 0x1e7f
000073A8  E87BAE            call word 0x2226
000073AB  0B20              or sp,[bx+si]
000073AD  2020              and [bx+si],ah
000073AF  2020              and [bx+si],ah
000073B1  2020              and [bx+si],ah
000073B3  2020              and [bx+si],ah
000073B5  2020              and [bx+si],ah
000073B7  E8B3B3            call word 0x276d
000073BA  A19315            mov ax,[0x1593]
000073BD  050200            add ax,0x2
000073C0  50                push ax
000073C1  B81500            mov ax,0x15
000073C4  050300            add ax,0x3
000073C7  E8958F            call word 0x35f
000073CA  E8B2AA            call word 0x1e7f
000073CD  E856AE            call word 0x2226
000073D0  0A20              or ah,[bx+si]
000073D2  2020              and [bx+si],ah
000073D4  2020              and [bx+si],ah
000073D6  2020              and [bx+si],ah
000073D8  2020              and [bx+si],ah
000073DA  20E8              and al,ch
000073DC  8F                db 0x8f
000073DD  B3A1              mov bl,0xa1
000073DF  93                xchg ax,bx
000073E0  150502            adc ax,0x205
000073E3  0050B8            add [bx+si-0x48],dl
000073E6  150005            adc ax,0x500
000073E9  0400              add al,0x0
000073EB  E8718F            call word 0x35f
000073EE  E88EAA            call word 0x1e7f
000073F1  E832AE            call word 0x2226
000073F4  0920              or [bx+si],sp
000073F6  2020              and [bx+si],ah
000073F8  2020              and [bx+si],ah
000073FA  2020              and [bx+si],ah
000073FC  2020              and [bx+si],ah
000073FE  E86CB3            call word 0x276d
00007401  A19115            mov ax,[0x1591]
00007404  50                push ax
00007405  A18415            mov ax,[0x1584]
00007408  B90A00            mov cx,0xa
0000740B  F7E9              imul cx
0000740D  59                pop cx
0000740E  91                xchg ax,cx
0000740F  2BC1              sub ax,cx
00007411  2B068215          sub ax,[0x1582]
00007415  03068A15          add ax,[0x158a]
00007419  8946FC            mov [bp-0x4],ax
0000741C  B8E803            mov ax,0x3e8
0000741F  E85790            call word 0x479
00007422  A19315            mov ax,[0x1593]
00007425  050400            add ax,0x4
00007428  50                push ax
00007429  B80200            mov ax,0x2
0000742C  E8308F            call word 0x35f
0000742F  E84DAA            call word 0x1e7f
00007432  E8F1AD            call word 0x2226
00007435  06                push es
00007436  53                push bx
00007437  43                inc bx
00007438  4F                dec di
00007439  52                push dx
0000743A  45                inc bp
0000743B  3AE8              cmp ch,al
0000743D  2EB3A1            cs mov bl,0xa1
00007440  93                xchg ax,bx
00007441  150506            adc ax,0x605
00007444  0050B8            add [bx+si-0x48],dl
00007447  0400              add al,0x0
00007449  E8138F            call word 0x35f
0000744C  E830AA            call word 0x1e7f
0000744F  8B46FC            mov ax,[bp-0x4]
00007452  50                push ax
00007453  B80000            mov ax,0x0
00007456  E842AD            call word 0x219b
00007459  E811B3            call word 0x276d
0000745C  A19315            mov ax,[0x1593]
0000745F  050400            add ax,0x4
00007462  50                push ax
00007463  B80600            mov ax,0x6
00007466  E8F68E            call word 0x35f
00007469  E813AA            call word 0x1e7f
0000746C  E8B7AD            call word 0x2226
0000746F  06                push es
00007470  4F                dec di
00007471  55                push bp
00007472  54                push sp
00007473  204F46            and [bx+0x46],cl
00007476  E8F4B2            call word 0x276d
00007479  A19315            mov ax,[0x1593]
0000747C  050500            add ax,0x5
0000747F  50                push ax
00007480  B80800            mov ax,0x8
00007483  E8D98E            call word 0x35f
00007486  E8F6A9            call word 0x1e7f
00007489  A19115            mov ax,[0x1591]
0000748C  50                push ax
0000748D  B80400            mov ax,0x4
00007490  E808AD            call word 0x219b
00007493  E8D7B2            call word 0x276d
00007496  B80100            mov ax,0x1
00007499  50                push ax
0000749A  B80500            mov ax,0x5
0000749D  59                pop cx
0000749E  91                xchg ax,cx
0000749F  2BC8              sub cx,ax
000074A1  7D03              jnl 0x74a6
000074A3  E92A00            jmp word 0x74d0
000074A6  41                inc cx
000074A7  8946FA            mov [bp-0x6],ax
000074AA  51                push cx
000074AB  B91400            mov cx,0x14
000074AE  E847B2            call word 0x26f8
000074B1  B80400            mov ax,0x4
000074B4  50                push ax
000074B5  B80400            mov ax,0x4
000074B8  50                push ax
000074B9  B8FA00            mov ax,0xfa
000074BC  50                push ax
000074BD  E83AB4            call word 0x28fa
000074C0  B8C800            mov ax,0xc8
000074C3  E8B38F            call word 0x479
000074C6  59                pop cx
000074C7  49                dec cx
000074C8  7406              jz 0x74d0
000074CA  FF46FA            inc word [bp-0x6]
000074CD  E9DAFF            jmp word 0x74aa
000074D0  A19315            mov ax,[0x1593]
000074D3  2D0100            sub ax,0x1
000074D6  50                push ax
000074D7  B80B00            mov ax,0xb
000074DA  E8828E            call word 0x35f
000074DD  E89FA9            call word 0x1e7f
000074E0  E843AD            call word 0x2226
000074E3  0C50              or al,0x50
000074E5  6C                insb
000074E6  61                popaw
000074E7  7920              jns 0x7509
000074E9  61                popaw
000074EA  6761              a32 popaw
000074EC  696E3F20E8        imul bp,[bp+0x3f],word 0xe820
000074F1  7AB2              jpe 0x74a5
000074F3  BFBB00            mov di,0xbb
000074F6  1E                push ds
000074F7  E859A9            call word 0x1e53
000074FA  8D7EF9            lea di,[bp-0x7]
000074FD  16                push ss
000074FE  E83DAB            call word 0x203e
00007501  E869B2            call word 0x276d
00007504  8A46F9            mov al,[bp-0x7]
00007507  32E4              xor ah,ah
00007509  E8728F            call word 0x47e
0000750C  8846F9            mov [bp-0x7],al
0000750F  E86DA9            call word 0x1e7f
00007512  8A46F9            mov al,[bp-0x7]
00007515  32E4              xor ah,ah
00007517  50                push ax
00007518  B80000            mov ax,0x0
0000751B  E865AC            call word 0x2183
0000751E  E84CB2            call word 0x276d
00007521  8A46F9            mov al,[bp-0x7]
00007524  32E4              xor ah,ah
00007526  3D5900            cmp ax,0x59
00007529  7403              jz 0x752e
0000752B  E91200            jmp word 0x7540
0000752E  B90600            mov cx,0x6
00007531  E8C4B1            call word 0x26f8
00007534  E807B3            call word 0x283e
00007537  B80100            mov ax,0x1
0000753A  884604            mov [bp+0x4],al
0000753D  E90600            jmp word 0x7546
00007540  B80000            mov ax,0x0
00007543  884604            mov [bp+0x4],al
00007546  E90000            jmp word 0x7549
00007549  8A4604            mov al,[bp+0x4]
0000754C  32E4              xor ah,ah
0000754E  0BC0              or ax,ax
00007550  8BE5              mov sp,bp
00007552  5D                pop bp
00007553  C20100            ret 0x1
00007556  B90700            mov cx,0x7
00007559  E89CB1            call word 0x26f8
0000755C  E8C6F7            call word 0x6d25
0000755F  B90E00            mov cx,0xe
00007562  E893B1            call word 0x26f8
00007565  E880F9            call word 0x6ee8
00007568  B90800            mov cx,0x8
0000756B  E88AB1            call word 0x26f8
0000756E  E880D8            call word 0x4df1
00007571  B90600            mov cx,0x6
00007574  E881B1            call word 0x26f8
00007577  E8D2EE            call word 0x644c
0000757A  B90D00            mov cx,0xd
0000757D  E878B1            call word 0x26f8
00007580  E8FDD9            call word 0x4f80
00007583  B91000            mov cx,0x10
00007586  E86FB1            call word 0x26f8
00007589  E852DE            call word 0x53de
0000758C  A07B15            mov al,[0x157b]
0000758F  32E4              xor ah,ah
00007591  3401              xor al,0x1
00007593  7503              jnz 0x7598
00007595  E91B00            jmp word 0x75b3
00007598  B90E00            mov cx,0xe
0000759B  E85AB1            call word 0x26f8
0000759E  E810EA            call word 0x5fb1
000075A1  A18815            mov ax,[0x1588]
000075A4  050100            add ax,0x1
000075A7  A38815            mov [0x1588],ax
000075AA  B90800            mov cx,0x8
000075AD  E848B1            call word 0x26f8
000075B0  E817EE            call word 0x63ca
000075B3  A07B15            mov al,[0x157b]
000075B6  32E4              xor ah,ah
000075B8  0BC0              or ax,ax
000075BA  7503              jnz 0x75bf
000075BC  E9A9FF            jmp word 0x7568
000075BF  B90C00            mov cx,0xc
000075C2  E833B1            call word 0x26f8
000075C5  4C                dec sp
000075C6  E8F4FC            call word 0x72bd
000075C9  3401              xor al,0x1
000075CB  7503              jnz 0x75d0
000075CD  E98FFF            jmp word 0x755f
000075D0  B80200            mov ax,0x2
000075D3  E8E68C            call word 0x2bc
000075D6  B80700            mov ax,0x7
000075D9  E8038F            call word 0x4df
000075DC  E90000            jmp word 0x75df
000075DF  E83996            call word 0xc1b
000075E2  0000              add [bx+si],al
000075E4  0000              add [bx+si],al
000075E6  0000              add [bx+si],al
000075E8  0000              add [bx+si],al
000075EA  0000              add [bx+si],al
000075EC  0000              add [bx+si],al
000075EE  0000              add [bx+si],al
000075F0  0000              add [bx+si],al
000075F2  0000              add [bx+si],al
000075F4  0000              add [bx+si],al
000075F6  0000              add [bx+si],al
000075F8  0000              add [bx+si],al
000075FA  0000              add [bx+si],al
000075FC  0000              add [bx+si],al
000075FE  0000              add [bx+si],al
