00000100  E9792C            jmp word 0x2d7c
00000103  90                nop
00000104  90                nop
00000105  CDAB              int 0xab
00000107  43                inc bx
00000108  6F                outsw
00000109  7079              jo 0x184
0000010B  7269              jc 0x176
0000010D  67687420          push word 0x2074
00000111  4D                dec bp
00000112  49                dec cx
00000113  43                inc bx
00000114  52                push dx
00000115  4F                dec di
00000116  54                push sp
00000117  45                inc bp
00000118  43                inc bx
00000119  2020              and [bx+si],ah
0000011B  2020              and [bx+si],ah
0000011D  2020              and [bx+si],ah
0000011F  2020              and [bx+si],ah
00000121  2020              and [bx+si],ah
00000123  2020              and [bx+si],ah
00000125  0204              add al,[si]
00000127  00B15700          add [bx+di+0x57],dh
0000012B  3C33              cmp al,0x33
0000012D  0000              add [bx+si],al
0000012F  0000              add [bx+si],al
00000131  0000              add [bx+si],al
00000133  0000              add [bx+si],al
00000135  0000              add [bx+si],al
00000137  0000              add [bx+si],al
00000139  0000              add [bx+si],al
0000013B  0000              add [bx+si],al
0000013D  0000              add [bx+si],al
0000013F  0000              add [bx+si],al
00000141  0000              add [bx+si],al
00000143  0000              add [bx+si],al
00000145  0000              add [bx+si],al
00000147  0000              add [bx+si],al
00000149  0000              add [bx+si],al
0000014B  0000              add [bx+si],al
0000014D  0000              add [bx+si],al
0000014F  0000              add [bx+si],al
00000151  0000              add [bx+si],al
00000153  0000              add [bx+si],al
00000155  0120              add [bx+si],sp
00000157  2020              and [bx+si],ah
00000159  2020              and [bx+si],ah
0000015B  2020              and [bx+si],ah
0000015D  2020              and [bx+si],ah
0000015F  2020              and [bx+si],ah
00000161  2020              and [bx+si],ah
00000163  2020              and [bx+si],ah
00000165  2020              and [bx+si],ah
00000167  2020              and [bx+si],ah
00000169  205019            and [bx+si+0x19],dl
0000016C  01FF              add di,di
0000016E  FF0F              dec word [bx]
00000170  07                pop es
00000171  07                pop es
00000172  700F              jo 0x183
00000174  07                pop es
00000175  07                pop es
00000176  700E              jo 0x186
00000178  07                pop es
00000179  07                pop es
0000017A  4F                dec di
0000017B  2E8A27            mov ah,[cs:bx]
0000017E  0AE4              or ah,ah
00000180  F9                stc
00000181  740E              jz 0x191
00000183  43                inc bx
00000184  2E8A07            mov al,[cs:bx]
00000187  50                push ax
00000188  E8D808            call word 0xa63
0000018B  58                pop ax
0000018C  FECC              dec ah
0000018E  75F3              jnz 0x183
00000190  F8                clc
00000191  C3                ret
00000192  7400              jz 0x194
00000194  FF07              inc word [bx]
00000196  0933              or [bp+di],si
00000198  29C7              sub di,ax
0000019A  06                push es
0000019B  1200              adc al,[bx+si]
0000019D  6E                outsb
0000019E  002EC606          add [0x6c6],ch
000001A2  94                xchg ax,sp
000001A3  0100              add [bx+si],ax
000001A5  BE2000            mov si,0x20
000001A8  268B04            mov ax,[es:si]
000001AB  2EA39501          mov [cs:0x195],ax
000001AF  268B4402          mov ax,[es:si+0x2]
000001B3  2EA39701          mov [cs:0x197],ax
000001B7  FA                cli
000001B8  26C704C401        mov word [es:si],0x1c4
000001BD  268C4C02          mov [es:si+0x2],cs
000001C1  FB                sti
000001C2  EB22              jmp short 0x1e6
000001C4  1E                push ds
000001C5  50                push ax
000001C6  33C0              xor ax,ax
000001C8  8ED8              mov ds,ax
000001CA  C7062000DB01      mov word [0x20],0x1db
000001D0  2EA39201          mov [cs:0x192],ax
000001D4  58                pop ax
000001D5  1F                pop ds
000001D6  2EFF2E9501        jmp word far [cs:0x195]
000001DB  2EC6069401FF      mov byte [cs:0x194],0xff
000001E1  2EFF2E9501        jmp word far [cs:0x195]
000001E6  E83400            call word 0x21d
000001E9  2EFF069201        inc word [cs:0x192]
000001EE  2E803E9401FF      cmp byte [cs:0x194],0xff
000001F4  75F0              jnz 0x1e6
000001F6  2EA19701          mov ax,[cs:0x197]
000001FA  FA                cli
000001FB  26894402          mov [es:si+0x2],ax
000001FF  2EA19501          mov ax,[cs:0x195]
00000203  268904            mov [es:si],ax
00000206  FB                sti
00000207  2EA19201          mov ax,[cs:0x192]
0000020B  03C0              add ax,ax
0000020D  A31200            mov [0x12],ax
00000210  C3                ret
00000211  8BC3              mov ax,bx
00000213  8BC8              mov cx,ax
00000215  E305              jcxz 0x21c
00000217  E80300            call word 0x21d
0000021A  E2FB              loop 0x217
0000021C  C3                ret
0000021D  51                push cx
0000021E  8B0E1200          mov cx,[0x12]
00000222  E2FE              loop 0x222
00000224  59                pop cx
00000225  C3                ret
00000226  55                push bp
00000227  B40F              mov ah,0xf
00000229  CD10              int 0x10
0000022B  5D                pop bp
0000022C  3A060600          cmp al,[0x6]
00000230  7406              jz 0x238
00000232  A00600            mov al,[0x6]
00000235  E9A100            jmp word 0x2d9
00000238  55                push bp
00000239  B80006            mov ax,0x600
0000023C  8A3E0800          mov bh,[0x8]
00000240  8B0E0400          mov cx,[0x4]
00000244  2E8B166A01        mov dx,[cs:0x16a]
00000249  FECE              dec dh
0000024B  FECA              dec dl
0000024D  CD10              int 0x10
0000024F  B402              mov ah,0x2
00000251  8B160400          mov dx,[0x4]
00000255  32FF              xor bh,bh
00000257  CD10              int 0x10
00000259  5D                pop bp
0000025A  C3                ret
0000025B  53                push bx
0000025C  51                push cx
0000025D  52                push dx
0000025E  55                push bp
0000025F  E84100            call word 0x2a3
00000262  B406              mov ah,0x6
00000264  B001              mov al,0x1
00000266  8A3E0800          mov bh,[0x8]
0000026A  8AEE              mov ch,dh
0000026C  8A0E0400          mov cl,[0x4]
00000270  2E8B166A01        mov dx,[cs:0x16a]
00000275  FECE              dec dh
00000277  FECA              dec dl
00000279  3AEE              cmp ch,dh
0000027B  7502              jnz 0x27f
0000027D  32C0              xor al,al
0000027F  CD10              int 0x10
00000281  5D                pop bp
00000282  5A                pop dx
00000283  59                pop cx
00000284  5B                pop bx
00000285  C3                ret
00000286  53                push bx
00000287  51                push cx
00000288  52                push dx
00000289  55                push bp
0000028A  E81600            call word 0x2a3
0000028D  B407              mov ah,0x7
0000028F  EBD3              jmp short 0x264
00000291  50                push ax
00000292  A00100            mov al,[0x1]
00000295  A20800            mov [0x8],al
00000298  58                pop ax
00000299  C3                ret
0000029A  50                push ax
0000029B  A00000            mov al,[0x0]
0000029E  A20800            mov [0x8],al
000002A1  58                pop ax
000002A2  C3                ret
000002A3  B403              mov ah,0x3
000002A5  32FF              xor bh,bh
000002A7  CD10              int 0x10
000002A9  C3                ret
000002AA  53                push bx
000002AB  51                push cx
000002AC  52                push dx
000002AD  55                push bp
000002AE  E8F2FF            call word 0x2a3
000002B1  B80006            mov ax,0x600
000002B4  8A3E0800          mov bh,[0x8]
000002B8  8BCA              mov cx,dx
000002BA  2E8A166A01        mov dl,[cs:0x16a]
000002BF  FECA              dec dl
000002C1  CD10              int 0x10
000002C3  5D                pop bp
000002C4  5A                pop dx
000002C5  59                pop cx
000002C6  5B                pop bx
000002C7  C3                ret
000002C8  E8F802            call word 0x5c3
000002CB  2EA06D01          mov al,[cs:0x16d]
000002CF  3CFF              cmp al,0xff
000002D1  7506              jnz 0x2d9
000002D3  55                push bp
000002D4  B40F              mov ah,0xf
000002D6  CD10              int 0x10
000002D8  5D                pop bp
000002D9  C606040000        mov byte [0x4],0x0
000002DE  C606050000        mov byte [0x5],0x0
000002E3  C6060900FF        mov byte [0x9],0xff
000002E8  3C07              cmp al,0x7
000002EA  B750              mov bh,0x50
000002EC  B300              mov bl,0x0
000002EE  BE6F01            mov si,0x16f
000002F1  7420              jz 0x313
000002F3  BE7701            mov si,0x177
000002F6  3C02              cmp al,0x2
000002F8  7416              jz 0x310
000002FA  3C04              cmp al,0x4
000002FC  7202              jc 0x300
000002FE  B003              mov al,0x3
00000300  B3FF              mov bl,0xff
00000302  3C03              cmp al,0x3
00000304  740D              jz 0x313
00000306  B728              mov bh,0x28
00000308  3C01              cmp al,0x1
0000030A  7407              jz 0x313
0000030C  32C0              xor al,al
0000030E  B300              mov bl,0x0
00000310  BE7301            mov si,0x173
00000313  A20600            mov [0x6],al
00000316  881E0700          mov [0x7],bl
0000031A  2E883E6A01        mov [cs:0x16a],bh
0000031F  2E8B04            mov ax,[cs:si]
00000322  A30000            mov [0x0],ax
00000325  2E8B4402          mov ax,[cs:si+0x2]
00000329  A30200            mov [0x2],ax
0000032C  55                push bp
0000032D  B40F              mov ah,0xf
0000032F  CD10              int 0x10
00000331  3A060600          cmp al,[0x6]
00000335  7407              jz 0x33e
00000337  A00600            mov al,[0x6]
0000033A  32E4              xor ah,ah
0000033C  CD10              int 0x10
0000033E  5D                pop bp
0000033F  E958FF            jmp word 0x29a
00000342  C3                ret
00000343  50                push ax
00000344  53                push bx
00000345  51                push cx
00000346  52                push dx
00000347  56                push si
00000348  57                push di
00000349  55                push bp
0000034A  9C                pushfw
0000034B  86D6              xchg dl,dh
0000034D  03160400          add dx,[0x4]
00000351  2E3A366B01        cmp dh,[cs:0x16b]
00000356  730D              jnc 0x365
00000358  2E3A166A01        cmp dl,[cs:0x16a]
0000035D  7306              jnc 0x365
0000035F  B402              mov ah,0x2
00000361  32FF              xor bh,bh
00000363  CD10              int 0x10
00000365  9D                popfw
00000366  5D                pop bp
00000367  5F                pop di
00000368  5E                pop si
00000369  5A                pop dx
0000036A  59                pop cx
0000036B  5B                pop bx
0000036C  58                pop ax
0000036D  C3                ret
0000036E  E92F07            jmp word 0xaa0
00000371  E82FFF            call word 0x2a3
00000374  8AC2              mov al,dl
00000376  2A060400          sub al,[0x4]
0000037A  FEC0              inc al
0000037C  32E4              xor ah,ah
0000037E  C3                ret
0000037F  E821FF            call word 0x2a3
00000382  8AC6              mov al,dh
00000384  2A060500          sub al,[0x5]
00000388  FEC0              inc al
0000038A  32E4              xor ah,ah
0000038C  C3                ret
0000038D  5B                pop bx
0000038E  3C19              cmp al,0x19
00000390  7704              ja 0x396
00000392  2EA26B01          mov [cs:0x16b],al
00000396  58                pop ax
00000397  3C50              cmp al,0x50
00000399  7704              ja 0x39f
0000039B  2EA26A01          mov [cs:0x16a],al
0000039F  58                pop ax
000003A0  2E3A066B01        cmp al,[cs:0x16b]
000003A5  7305              jnc 0x3ac
000003A7  FEC8              dec al
000003A9  A20500            mov [0x5],al
000003AC  58                pop ax
000003AD  2E3A066A01        cmp al,[cs:0x16a]
000003B2  7305              jnc 0x3b9
000003B4  FEC8              dec al
000003B6  A20400            mov [0x4],al
000003B9  FFE3              jmp bx
000003BB  241F              and al,0x1f
000003BD  A810              test al,0x10
000003BF  7404              jz 0x3c5
000003C1  240F              and al,0xf
000003C3  0C80              or al,0x80
000003C5  8026080070        and byte [0x8],0x70
000003CA  08060800          or [0x8],al
000003CE  C3                ret
000003CF  2407              and al,0x7
000003D1  B104              mov cl,0x4
000003D3  D2E0              shl al,cl
000003D5  802608008F        and byte [0x8],0x8f
000003DA  08060800          or [0x8],al
000003DE  C3                ret
000003DF  55                push bp
000003E0  A30C00            mov [0xc],ax
000003E3  C7060A000000      mov word [0xa],0x0
000003E9  C7060E000000      mov word [0xe],0x0
000003EF  C7061000C700      mov word [0x10],0xc7
000003F5  A00900            mov al,[0x9]
000003F8  32E4              xor ah,ah
000003FA  CD10              int 0x10
000003FC  33DB              xor bx,bx
000003FE  881E2000          mov [0x20],bl
00000402  B40B              mov ah,0xb
00000404  CD10              int 0x10
00000406  FEC7              inc bh
00000408  B40B              mov ah,0xb
0000040A  CD10              int 0x10
0000040C  5D                pop bp
0000040D  C3                ret
0000040E  C606090004        mov byte [0x9],0x4
00000413  B83F01            mov ax,0x13f
00000416  EBC7              jmp short 0x3df
00000418  C606090005        mov byte [0x9],0x5
0000041D  EBF4              jmp short 0x413
0000041F  C606090006        mov byte [0x9],0x6
00000424  B87F02            mov ax,0x27f
00000427  E8B5FF            call word 0x3df
0000042A  B80F00            mov ax,0xf
0000042D  EB46              jmp short 0x475
0000042F  240F              and al,0xf
00000431  8A262000          mov ah,[0x20]
00000435  80E410            and ah,0x10
00000438  0AC4              or al,ah
0000043A  A22000            mov [0x20],al
0000043D  55                push bp
0000043E  32FF              xor bh,bh
00000440  8A1E2000          mov bl,[0x20]
00000444  B40B              mov ah,0xb
00000446  CD10              int 0x10
00000448  5D                pop bp
00000449  C3                ret
0000044A  55                push bp
0000044B  8A1E2000          mov bl,[0x20]
0000044F  80E3EF            and bl,0xef
00000452  B402              mov ah,0x2
00000454  803E090004        cmp byte [0x9],0x4
00000459  7402              jz 0x45d
0000045B  B401              mov ah,0x1
0000045D  3AC4              cmp al,ah
0000045F  7205              jc 0x466
00000461  2AC4              sub al,ah
00000463  80CB10            or bl,0x10
00000466  881E2000          mov [0x20],bl
0000046A  B701              mov bh,0x1
0000046C  8AD8              mov bl,al
0000046E  B40B              mov ah,0xb
00000470  CD10              int 0x10
00000472  5D                pop bp
00000473  EBC8              jmp short 0x43d
00000475  55                push bp
00000476  8BD8              mov bx,ax
00000478  B40B              mov ah,0xb
0000047A  CD10              int 0x10
0000047C  5D                pop bp
0000047D  C3                ret
0000047E  5B                pop bx
0000047F  B97F02            mov cx,0x27f
00000482  803E090006        cmp byte [0x9],0x6
00000487  7403              jz 0x48c
00000489  B93F01            mov cx,0x13f
0000048C  3DC700            cmp ax,0xc7
0000048F  7703              ja 0x494
00000491  A31000            mov [0x10],ax
00000494  58                pop ax
00000495  3BC1              cmp ax,cx
00000497  7703              ja 0x49c
00000499  A30C00            mov [0xc],ax
0000049C  58                pop ax
0000049D  3B061000          cmp ax,[0x10]
000004A1  7303              jnc 0x4a6
000004A3  A30E00            mov [0xe],ax
000004A6  58                pop ax
000004A7  3B060C00          cmp ax,[0xc]
000004AB  7303              jnc 0x4b0
000004AD  A30A00            mov [0xa],ax
000004B0  FFE3              jmp bx
000004B2  5B                pop bx
000004B3  5A                pop dx
000004B4  59                pop cx
000004B5  53                push bx
000004B6  B40C              mov ah,0xc
000004B8  0BC9              or cx,cx
000004BA  781C              js 0x4d8
000004BC  030E0A00          add cx,[0xa]
000004C0  3B0E0C00          cmp cx,[0xc]
000004C4  7712              ja 0x4d8
000004C6  0BD2              or dx,dx
000004C8  780E              js 0x4d8
000004CA  03160E00          add dx,[0xe]
000004CE  3B161000          cmp dx,[0x10]
000004D2  7704              ja 0x4d8
000004D4  55                push bp
000004D5  CD10              int 0x10
000004D7  5D                pop bp
000004D8  C3                ret
000004D9  B40C              mov ah,0xc
000004DB  A31400            mov [0x14],ax
000004DE  5F                pop di
000004DF  58                pop ax
000004E0  5A                pop dx
000004E1  5B                pop bx
000004E2  891E1C00          mov [0x1c],bx
000004E6  E89400            call word 0x57d
000004E9  890E1800          mov [0x18],cx
000004ED  E8E30B            call word 0x10d3
000004F0  92                xchg ax,dx
000004F1  5B                pop bx
000004F2  57                push di
000004F3  891E1A00          mov [0x1a],bx
000004F7  E88300            call word 0x57d
000004FA  890E1600          mov [0x16],cx
000004FE  E8D20B            call word 0x10d3
00000501  8BD8              mov bx,ax
00000503  3BDA              cmp bx,dx
00000505  7E3B              jng 0x542
00000507  8BC2              mov ax,dx
00000509  03C0              add ax,ax
0000050B  2BC3              sub ax,bx
0000050D  A31E00            mov [0x1e],ax
00000510  8BCB              mov cx,bx
00000512  41                inc cx
00000513  E87300            call word 0x589
00000516  A11E00            mov ax,[0x1e]
00000519  0BC0              or ax,ax
0000051B  7E14              jng 0x531
0000051D  03C2              add ax,dx
0000051F  03C2              add ax,dx
00000521  2BC3              sub ax,bx
00000523  2BC3              sub ax,bx
00000525  A31E00            mov [0x1e],ax
00000528  A11800            mov ax,[0x18]
0000052B  01061C00          add [0x1c],ax
0000052F  EB07              jmp short 0x538
00000531  03C2              add ax,dx
00000533  03C2              add ax,dx
00000535  A31E00            mov [0x1e],ax
00000538  A11600            mov ax,[0x16]
0000053B  01061A00          add [0x1a],ax
0000053F  E2D2              loop 0x513
00000541  C3                ret
00000542  8BC3              mov ax,bx
00000544  03C0              add ax,ax
00000546  2BC2              sub ax,dx
00000548  A31E00            mov [0x1e],ax
0000054B  8BCA              mov cx,dx
0000054D  41                inc cx
0000054E  E83800            call word 0x589
00000551  A11E00            mov ax,[0x1e]
00000554  0BC0              or ax,ax
00000556  7E14              jng 0x56c
00000558  03C3              add ax,bx
0000055A  03C3              add ax,bx
0000055C  2BC2              sub ax,dx
0000055E  2BC2              sub ax,dx
00000560  A31E00            mov [0x1e],ax
00000563  A11600            mov ax,[0x16]
00000566  01061A00          add [0x1a],ax
0000056A  EB07              jmp short 0x573
0000056C  03C3              add ax,bx
0000056E  03C3              add ax,bx
00000570  A31E00            mov [0x1e],ax
00000573  A11800            mov ax,[0x18]
00000576  01061C00          add [0x1c],ax
0000057A  E2D2              loop 0x54e
0000057C  C3                ret
0000057D  33C9              xor cx,cx
0000057F  2BC3              sub ax,bx
00000581  7405              jz 0x588
00000583  7802              js 0x587
00000585  41                inc cx
00000586  C3                ret
00000587  49                dec cx
00000588  C3                ret
00000589  51                push cx
0000058A  52                push dx
0000058B  A11400            mov ax,[0x14]
0000058E  8B0E1A00          mov cx,[0x1a]
00000592  8B161C00          mov dx,[0x1c]
00000596  E81FFF            call word 0x4b8
00000599  5A                pop dx
0000059A  59                pop cx
0000059B  C3                ret
0000059C  8BD8              mov bx,ax
0000059E  B8DD34            mov ax,0x34dd
000005A1  BA1200            mov dx,0x12
000005A4  3BD3              cmp dx,bx
000005A6  731A              jnc 0x5c2
000005A8  F7F3              div bx
000005AA  8BD8              mov bx,ax
000005AC  E461              in al,0x61
000005AE  A803              test al,0x3
000005B0  7508              jnz 0x5ba
000005B2  0C03              or al,0x3
000005B4  E661              out 0x61,al
000005B6  B0B6              mov al,0xb6
000005B8  E643              out 0x43,al
000005BA  8AC3              mov al,bl
000005BC  E642              out 0x42,al
000005BE  8AC7              mov al,bh
000005C0  E642              out 0x42,al
000005C2  C3                ret
000005C3  E461              in al,0x61
000005C5  24FC              and al,0xfc
000005C7  E661              out 0x61,al
000005C9  C3                ret
000005CA  91                xchg ax,cx
000005CB  5B                pop bx
000005CC  5F                pop di
000005CD  EB29              jmp short 0x5f8
000005CF  50                push ax
000005D0  51                push cx
000005D1  B104              mov cl,0x4
000005D3  D3E8              shr ax,cl
000005D5  03D8              add bx,ax
000005D7  59                pop cx
000005D8  58                pop ax
000005D9  250F00            and ax,0xf
000005DC  C3                ret
000005DD  3BDA              cmp bx,dx
000005DF  7502              jnz 0x5e3
000005E1  3BC1              cmp ax,cx
000005E3  C3                ret
000005E4  03C1              add ax,cx
000005E6  03DA              add bx,dx
000005E8  EBE5              jmp short 0x5cf
000005EA  268B4504          mov ax,[es:di+0x4]
000005EE  268B5D06          mov bx,[es:di+0x6]
000005F2  50                push ax
000005F3  0BC3              or ax,bx
000005F5  58                pop ax
000005F6  C3                ret
000005F7  5B                pop bx
000005F8  07                pop es
000005F9  53                push bx
000005FA  893E2600          mov [0x26],di
000005FE  8C062800          mov [0x28],es
00000602  8BC1              mov ax,cx
00000604  050700            add ax,0x7
00000607  BB0010            mov bx,0x1000
0000060A  7202              jc 0x60e
0000060C  33DB              xor bx,bx
0000060E  24F8              and al,0xf8
00000610  E8BCFF            call word 0x5cf
00000613  8BC8              mov cx,ax
00000615  8BD3              mov dx,bx
00000617  C7062E002200      mov word [0x2e],0x22
0000061D  8C1E3000          mov [0x30],ds
00000621  C43E2200          les di,[0x22]
00000625  E8C2FF            call word 0x5ea
00000628  7425              jz 0x64f
0000062A  E8B0FF            call word 0x5dd
0000062D  730D              jnc 0x63c
0000062F  893E2E00          mov [0x2e],di
00000633  8C063000          mov [0x30],es
00000637  26C43D            les di,[es:di]
0000063A  EBE9              jmp short 0x625
0000063C  E87300            call word 0x6b2
0000063F  7409              jz 0x64a
00000641  2BC1              sub ax,cx
00000643  1BDA              sbb bx,dx
00000645  250F00            and ax,0xf
00000648  EB36              jmp short 0x680
0000064A  26C43D            les di,[es:di]
0000064D  EB54              jmp short 0x6a3
0000064F  E86000            call word 0x6b2
00000652  8BC7              mov ax,di
00000654  8CC3              mov bx,es
00000656  E88BFF            call word 0x5e4
00000659  A38A01            mov [0x18a],ax
0000065C  891E8C01          mov [0x18c],bx
00000660  51                push cx
00000661  52                push dx
00000662  8BC8              mov cx,ax
00000664  8BD3              mov dx,bx
00000666  8BC4              mov ax,sp
00000668  8CD3              mov bx,ss
0000066A  83EB0E            sub bx,byte +0xe
0000066D  E85FFF            call word 0x5cf
00000670  33C0              xor ax,ax
00000672  E868FF            call word 0x5dd
00000675  5A                pop dx
00000676  59                pop cx
00000677  7703              ja 0x67c
00000679  E96F09            jmp word 0xfeb
0000067C  33C0              xor ax,ax
0000067E  33DB              xor bx,bx
00000680  53                push bx
00000681  50                push ax
00000682  26FF7502          push word [es:di+0x2]
00000686  26FF35            push word [es:di]
00000689  8BC7              mov ax,di
0000068B  8CC3              mov bx,es
0000068D  E854FF            call word 0x5e4
00000690  8BF8              mov di,ax
00000692  8EC3              mov es,bx
00000694  268F05            pop word [es:di]
00000697  268F4502          pop word [es:di+0x2]
0000069B  268F4504          pop word [es:di+0x4]
0000069F  268F4506          pop word [es:di+0x6]
000006A3  06                push es
000006A4  06                push es
000006A5  C4362E00          les si,[0x2e]
000006A9  26893C            mov [es:si],di
000006AC  268F4402          pop word [es:si+0x2]
000006B0  07                pop es
000006B1  C3                ret
000006B2  06                push es
000006B3  06                push es
000006B4  C4362600          les si,[0x26]
000006B8  26893C            mov [es:si],di
000006BB  268F4402          pop word [es:si+0x2]
000006BF  07                pop es
000006C0  C3                ret
000006C1  91                xchg ax,cx
000006C2  5B                pop bx
000006C3  5F                pop di
000006C4  EB01              jmp short 0x6c7
000006C6  5B                pop bx
000006C7  07                pop es
000006C8  53                push bx
000006C9  8BC1              mov ax,cx
000006CB  268B0D            mov cx,[es:di]
000006CE  268B5502          mov dx,[es:di+0x2]
000006D2  050700            add ax,0x7
000006D5  BB0010            mov bx,0x1000
000006D8  7202              jc 0x6dc
000006DA  33DB              xor bx,bx
000006DC  24F8              and al,0xf8
000006DE  E8EEFE            call word 0x5cf
000006E1  A32A00            mov [0x2a],ax
000006E4  891E2C00          mov [0x2c],bx
000006E8  C43E2200          les di,[0x22]
000006EC  8BC7              mov ax,di
000006EE  8CC3              mov bx,es
000006F0  E8EAFE            call word 0x5dd
000006F3  7357              jnc 0x74c
000006F5  268B05            mov ax,[es:di]
000006F8  268B5D02          mov bx,[es:di+0x2]
000006FC  E8DEFE            call word 0x5dd
000006FF  7306              jnc 0x707
00000701  8BF8              mov di,ax
00000703  8EC3              mov es,bx
00000705  EBEE              jmp short 0x6f5
00000707  06                push es
00000708  8BF1              mov si,cx
0000070A  8EC2              mov es,dx
0000070C  FF362C00          push word [0x2c]
00000710  FF362A00          push word [0x2a]
00000714  268904            mov [es:si],ax
00000717  26895C02          mov [es:si+0x2],bx
0000071B  268F4404          pop word [es:si+0x4]
0000071F  268F4406          pop word [es:si+0x6]
00000723  07                pop es
00000724  26890D            mov [es:di],cx
00000727  26895502          mov [es:di+0x2],dx
0000072B  268B4504          mov ax,[es:di+0x4]
0000072F  268B5D06          mov bx,[es:di+0x6]
00000733  E83C00            call word 0x772
00000736  7403              jz 0x73b
00000738  26C43D            les di,[es:di]
0000073B  268B4504          mov ax,[es:di+0x4]
0000073F  268B5D06          mov bx,[es:di+0x6]
00000743  268B0D            mov cx,[es:di]
00000746  268B5502          mov dx,[es:di+0x2]
0000074A  EB26              jmp short 0x772
0000074C  890E2200          mov [0x22],cx
00000750  89162400          mov [0x24],dx
00000754  8BF9              mov di,cx
00000756  8EC2              mov es,dx
00000758  268905            mov [es:di],ax
0000075B  26895D02          mov [es:di+0x2],bx
0000075F  8BC8              mov cx,ax
00000761  8BD3              mov dx,bx
00000763  A12A00            mov ax,[0x2a]
00000766  8B1E2C00          mov bx,[0x2c]
0000076A  26894504          mov [es:di+0x4],ax
0000076E  26895D06          mov [es:di+0x6],bx
00000772  A33200            mov [0x32],ax
00000775  891E3400          mov [0x34],bx
00000779  03C7              add ax,di
0000077B  8CC3              mov bx,es
0000077D  031E3400          add bx,[0x34]
00000781  E84BFE            call word 0x5cf
00000784  E856FE            call word 0x5dd
00000787  7551              jnz 0x7da
00000789  A18A01            mov ax,[0x18a]
0000078C  8B1E8C01          mov bx,[0x18c]
00000790  E84AFE            call word 0x5dd
00000793  7431              jz 0x7c6
00000795  06                push es
00000796  8BF1              mov si,cx
00000798  8EC2              mov es,dx
0000079A  268B04            mov ax,[es:si]
0000079D  268B5C02          mov bx,[es:si+0x2]
000007A1  268B4C04          mov cx,[es:si+0x4]
000007A5  268B5406          mov dx,[es:si+0x6]
000007A9  07                pop es
000007AA  268905            mov [es:di],ax
000007AD  26895D02          mov [es:di+0x2],bx
000007B1  A13200            mov ax,[0x32]
000007B4  8B1E3400          mov bx,[0x34]
000007B8  E829FE            call word 0x5e4
000007BB  26894504          mov [es:di+0x4],ax
000007BF  26895D06          mov [es:di+0x6],bx
000007C3  33C0              xor ax,ax
000007C5  C3                ret
000007C6  893E8A01          mov [0x18a],di
000007CA  8C068C01          mov [0x18c],es
000007CE  57                push di
000007CF  33C0              xor ax,ax
000007D1  FC                cld
000007D2  B90400            mov cx,0x4
000007D5  F3AB              rep stosw
000007D7  5F                pop di
000007D8  33C0              xor ax,ax
000007DA  C3                ret
000007DB  33C9              xor cx,cx
000007DD  33D2              xor dx,dx
000007DF  33F6              xor si,si
000007E1  C43E2200          les di,[0x22]
000007E5  E802FE            call word 0x5ea
000007E8  7408              jz 0x7f2
000007EA  E81D00            call word 0x80a
000007ED  26C43D            les di,[es:di]
000007F0  EBF3              jmp short 0x7e5
000007F2  8BC4              mov ax,sp
000007F4  8CD3              mov bx,ss
000007F6  83EB10            sub bx,byte +0x10
000007F9  E8D3FD            call word 0x5cf
000007FC  33C0              xor ax,ax
000007FE  2B1E8C01          sub bx,[0x18c]
00000802  7203              jc 0x807
00000804  E80300            call word 0x80a
00000807  8BC2              mov ax,dx
00000809  C3                ret
0000080A  3BF3              cmp si,bx
0000080C  7302              jnc 0x810
0000080E  8BF3              mov si,bx
00000810  E8D1FD            call word 0x5e4
00000813  8BC8              mov cx,ax
00000815  8BD3              mov dx,bx
00000817  C3                ret
00000818  E8C0FF            call word 0x7db
0000081B  8BC6              mov ax,si
0000081D  C3                ret
0000081E  5B                pop bx
0000081F  07                pop es
00000820  A18A01            mov ax,[0x18a]
00000823  268905            mov [es:di],ax
00000826  8B168C01          mov dx,[0x18c]
0000082A  26895502          mov [es:di+0x2],dx
0000082E  FFE3              jmp bx
00000830  5B                pop bx
00000831  07                pop es
00000832  26C43D            les di,[es:di]
00000835  893E8A01          mov [0x18a],di
00000839  893E2200          mov [0x22],di
0000083D  8C068C01          mov [0x18c],es
00000841  8C062400          mov [0x24],es
00000845  33C0              xor ax,ax
00000847  C43E2200          les di,[0x22]
0000084B  B90400            mov cx,0x4
0000084E  FC                cld
0000084F  F3AB              rep stosw
00000851  FFE3              jmp bx
00000853  803E920100        cmp byte [0x192],0x0
00000858  B0FF              mov al,0xff
0000085A  750A              jnz 0x866
0000085C  B401              mov ah,0x1
0000085E  CD16              int 0x16
00000860  B000              mov al,0x0
00000862  7402              jz 0x866
00000864  FEC8              dec al
00000866  250100            and ax,0x1
00000869  C20100            ret 0x1
0000086C  A09201            mov al,[0x192]
0000086F  C606920100        mov byte [0x192],0x0
00000874  0AC0              or al,al
00000876  7522              jnz 0x89a
00000878  32E4              xor ah,ah
0000087A  CD16              int 0x16
0000087C  0AC0              or al,al
0000087E  750C              jnz 0x88c
00000880  88269201          mov [0x192],ah
00000884  B01B              mov al,0x1b
00000886  0AE4              or ah,ah
00000888  7510              jnz 0x89a
0000088A  B003              mov al,0x3
0000088C  803E940101        cmp byte [0x194],0x1
00000891  7507              jnz 0x89a
00000893  3C03              cmp al,0x3
00000895  7503              jnz 0x89a
00000897  E97C07            jmp word 0x1016
0000089A  32E4              xor ah,ah
0000089C  C20100            ret 0x1
0000089F  58                pop ax
000008A0  5A                pop dx
000008A1  50                push ax
000008A2  52                push dx
000008A3  55                push bp
000008A4  52                push dx
000008A5  E8FBF9            call word 0x2a3
000008A8  58                pop ax
000008A9  3C0D              cmp al,0xd
000008AB  7506              jnz 0x8b3
000008AD  8A160400          mov dl,[0x4]
000008B1  EB68              jmp short 0x91b
000008B3  3C0A              cmp al,0xa
000008B5  750B              jnz 0x8c2
000008B7  FEC6              inc dh
000008B9  2E3A366B01        cmp dh,[cs:0x16b]
000008BE  725B              jc 0x91b
000008C0  EB3F              jmp short 0x901
000008C2  3C08              cmp al,0x8
000008C4  750A              jnz 0x8d0
000008C6  3A160400          cmp dl,[0x4]
000008CA  744F              jz 0x91b
000008CC  FECA              dec dl
000008CE  EB4B              jmp short 0x91b
000008D0  3C07              cmp al,0x7
000008D2  7508              jnz 0x8dc
000008D4  B40E              mov ah,0xe
000008D6  32FF              xor bh,bh
000008D8  CD10              int 0x10
000008DA  EB45              jmp short 0x921
000008DC  52                push dx
000008DD  B409              mov ah,0x9
000008DF  32FF              xor bh,bh
000008E1  B90100            mov cx,0x1
000008E4  8A1E0800          mov bl,[0x8]
000008E8  CD10              int 0x10
000008EA  5A                pop dx
000008EB  FEC2              inc dl
000008ED  2E3A166A01        cmp dl,[cs:0x16a]
000008F2  7227              jc 0x91b
000008F4  8A160400          mov dl,[0x4]
000008F8  FEC6              inc dh
000008FA  2E3A366B01        cmp dh,[cs:0x16b]
000008FF  721A              jc 0x91b
00000901  FECE              dec dh
00000903  52                push dx
00000904  B80106            mov ax,0x601
00000907  8A3E0800          mov bh,[0x8]
0000090B  8B0E0400          mov cx,[0x4]
0000090F  2E8B166A01        mov dx,[cs:0x16a]
00000914  FECE              dec dh
00000916  FECA              dec dl
00000918  CD10              int 0x10
0000091A  5A                pop dx
0000091B  B402              mov ah,0x2
0000091D  32FF              xor bh,bh
0000091F  CD10              int 0x10
00000921  5D                pop bp
00000922  803E940101        cmp byte [0x194],0x1
00000927  7512              jnz 0x93b
00000929  4C                dec sp
0000092A  E826FF            call word 0x853
0000092D  740C              jz 0x93b
0000092F  4C                dec sp
00000930  E839FF            call word 0x86c
00000933  3C13              cmp al,0x13
00000935  7504              jnz 0x93b
00000937  4C                dec sp
00000938  E831FF            call word 0x86c
0000093B  58                pop ax
0000093C  C3                ret
0000093D  58                pop ax
0000093E  5A                pop dx
0000093F  50                push ax
00000940  B405              mov ah,0x5
00000942  EB13              jmp short 0x957
00000944  90                nop
00000945  58                pop ax
00000946  5A                pop dx
00000947  50                push ax
00000948  B404              mov ah,0x4
0000094A  EB0B              jmp short 0x957
0000094C  90                nop
0000094D  B403              mov ah,0x3
0000094F  E80500            call word 0x957
00000952  32E4              xor ah,ah
00000954  C20100            ret 0x1
00000957  80FC3D            cmp ah,0x3d
0000095A  7414              jz 0x970
0000095C  80FC3C            cmp ah,0x3c
0000095F  740F              jz 0x970
00000961  80FC3E            cmp ah,0x3e
00000964  7432              jz 0x998
00000966  80FC80            cmp ah,0x80
00000969  7447              jz 0x9b2
0000096B  55                push bp
0000096C  CD21              int 0x21
0000096E  5D                pop bp
0000096F  C3                ret
00000970  56                push si
00000971  51                push cx
00000972  8B367A01          mov si,[0x17a]
00000976  8B0E7C01          mov cx,[0x17c]
0000097A  833C00            cmp word [si],byte +0x0
0000097D  740B              jz 0x98a
0000097F  46                inc si
00000980  46                inc si
00000981  E2F7              loop 0x97a
00000983  59                pop cx
00000984  5E                pop si
00000985  B80400            mov ax,0x4
00000988  F9                stc
00000989  C3                ret
0000098A  59                pop cx
0000098B  1E                push ds
0000098C  06                push es
0000098D  1F                pop ds
0000098E  E8DAFF            call word 0x96b
00000991  1F                pop ds
00000992  7202              jc 0x996
00000994  8904              mov [si],ax
00000996  5E                pop si
00000997  C3                ret
00000998  51                push cx
00000999  56                push si
0000099A  8B367A01          mov si,[0x17a]
0000099E  8B0E7C01          mov cx,[0x17c]
000009A2  391C              cmp [si],bx
000009A4  7504              jnz 0x9aa
000009A6  C7040000          mov word [si],0x0
000009AA  46                inc si
000009AB  46                inc si
000009AC  E2F4              loop 0x9a2
000009AE  5E                pop si
000009AF  59                pop cx
000009B0  EBB9              jmp short 0x96b
000009B2  8B367A01          mov si,[0x17a]
000009B6  8B0E7C01          mov cx,[0x17c]
000009BA  8B1C              mov bx,[si]
000009BC  0BDB              or bx,bx
000009BE  7409              jz 0x9c9
000009C0  B43E              mov ah,0x3e
000009C2  E8A6FF            call word 0x96b
000009C5  C7040000          mov word [si],0x0
000009C9  46                inc si
000009CA  46                inc si
000009CB  E2ED              loop 0x9ba
000009CD  C3                ret
000009CE  33C0              xor ax,ax
000009D0  A37201            mov [0x172],ax
000009D3  BF4002            mov di,0x240
000009D6  893E7A01          mov [0x17a],di
000009DA  890E7C01          mov [0x17c],cx
000009DE  33C0              xor ax,ax
000009E0  1E                push ds
000009E1  07                pop es
000009E2  FC                cld
000009E3  F3AB              rep stosw
000009E5  8EC0              mov es,ax
000009E7  26C7068C00620A    mov word [es:0x8c],0xa62
000009EE  268C0E8E00        mov [es:0x8e],cs
000009F3  E8A3F7            call word 0x199
000009F6  C606940100        mov byte [0x194],0x0
000009FB  BE260A            mov si,0xa26
000009FE  BF3601            mov di,0x136
00000A01  1E                push ds
00000A02  07                pop es
00000A03  0E                push cs
00000A04  1F                pop ds
00000A05  B91E00            mov cx,0x1e
00000A08  FC                cld
00000A09  F3A5              rep movsw
00000A0B  06                push es
00000A0C  1F                pop ds
00000A0D  33C0              xor ax,ax
00000A0F  A39201            mov [0x192],ax
00000A12  A28001            mov [0x180],al
00000A15  A38201            mov [0x182],ax
00000A18  A38401            mov [0x184],ax
00000A1B  C60681017E        mov byte [0x181],0x7e
00000A20  C60636000D        mov byte [0x36],0xd
00000A25  C3                ret
00000A26  53                push bx
00000A27  086C08            or [si+0x8],ch
00000A2A  9F                lahf
00000A2B  083D              or [di],bh
00000A2D  094509            or [di+0x9],ax
00000A30  4D                dec bp
00000A31  099F086C          or [bx+0x6c08],bx
00000A35  08FF              or bh,bh
00000A37  FFC1              inc cx
00000A39  00FF              add bh,bh
00000A3B  FF8200FF          inc word [bp+si-0x100]
00000A3F  FF4300            inc word [bp+di+0x0]
00000A42  FF                db 0xff
00000A43  FFC4              inc sp
00000A45  00FF              add bh,bh
00000A47  FFC5              inc bp
00000A49  00FF              add bh,bh
00000A4B  FFC1              inc cx
00000A4D  0000              add [bx+si],al
00000A4F  0000              add [bx+si],al
00000A51  0000              add [bx+si],al
00000A53  0000              add [bx+si],al
00000A55  00FF              add bh,bh
00000A57  FFC1              inc cx
00000A59  0000              add [bx+si],al
00000A5B  0000              add [bx+si],al
00000A5D  0000              add [bx+si],al
00000A5F  0000              add [bx+si],al
00000A61  00CF              add bh,cl
00000A63  53                push bx
00000A64  51                push cx
00000A65  52                push dx
00000A66  57                push di
00000A67  56                push si
00000A68  32E4              xor ah,ah
00000A6A  50                push ax
00000A6B  FF163A01          call word [0x13a]
00000A6F  5E                pop si
00000A70  5F                pop di
00000A71  5A                pop dx
00000A72  59                pop cx
00000A73  5B                pop bx
00000A74  C3                ret
00000A75  53                push bx
00000A76  51                push cx
00000A77  52                push dx
00000A78  57                push di
00000A79  56                push si
00000A7A  4C                dec sp
00000A7B  FF163801          call word [0x138]
00000A7F  EBEE              jmp short 0xa6f
00000A81  55                push bp
00000A82  8BEC              mov bp,sp
00000A84  875E02            xchg bx,[bp+0x2]
00000A87  2E8A07            mov al,[cs:bx]
00000A8A  43                inc bx
00000A8B  0AC0              or al,al
00000A8D  7405              jz 0xa94
00000A8F  E8D1FF            call word 0xa63
00000A92  EBF3              jmp short 0xa87
00000A94  875E02            xchg bx,[bp+0x2]
00000A97  5D                pop bp
00000A98  C3                ret
00000A99  E8E5FF            call word 0xa81
00000A9C  0D0A00            or ax,0xa
00000A9F  C3                ret
00000AA0  3C61              cmp al,0x61
00000AA2  7206              jc 0xaaa
00000AA4  3C7A              cmp al,0x7a
00000AA6  7702              ja 0xaaa
00000AA8  2C20              sub al,0x20
00000AAA  C3                ret
00000AAB  50                push ax
00000AAC  8AC4              mov al,ah
00000AAE  E80100            call word 0xab2
00000AB1  58                pop ax
00000AB2  50                push ax
00000AB3  D0C8              ror al,1
00000AB5  D0C8              ror al,1
00000AB7  D0C8              ror al,1
00000AB9  D0C8              ror al,1
00000ABB  E80100            call word 0xabf
00000ABE  58                pop ax
00000ABF  240F              and al,0xf
00000AC1  0490              add al,0x90
00000AC3  27                daa
00000AC4  1440              adc al,0x40
00000AC6  27                daa
00000AC7  EB9A              jmp short 0xa63
00000AC9  0AE4              or ah,ah
00000ACB  7408              jz 0xad5
00000ACD  F9                stc
00000ACE  B80000            mov ax,0x0
00000AD1  7802              js 0xad5
00000AD3  FEC8              dec al
00000AD5  C3                ret
00000AD6  E84E01            call word 0xc27
00000AD9  5E                pop si
00000ADA  8CC8              mov ax,cs
00000ADC  2E034406          add ax,[cs:si+0x6]
00000AE0  2E034408          add ax,[cs:si+0x8]
00000AE4  2E03440A          add ax,[cs:si+0xa]
00000AE8  2E3B060200        cmp ax,[cs:0x2]
00000AED  7603              jna 0xaf2
00000AEF  E94401            jmp word 0xc36
00000AF2  8CCB              mov bx,cs
00000AF4  2E035C06          add bx,[cs:si+0x6]
00000AF8  8EDB              mov ds,bx
00000AFA  2E035C08          add bx,[cs:si+0x8]
00000AFE  2E8B160200        mov dx,[cs:0x2]
00000B03  2BD3              sub dx,bx
00000B05  2E3B540C          cmp dx,[cs:si+0xc]
00000B09  7204              jc 0xb0f
00000B0B  2E8B540C          mov dx,[cs:si+0xc]
00000B0F  8BFA              mov di,dx
00000B11  B8FEFF            mov ax,0xfffe
00000B14  81EA0010          sub dx,0x1000
00000B18  730B              jnc 0xb25
00000B1A  8BC2              mov ax,dx
00000B1C  050010            add ax,0x1000
00000B1F  B104              mov cl,0x4
00000B21  D3E0              shl ax,cl
00000B23  33D2              xor dx,dx
00000B25  03D3              add dx,bx
00000B27  8ED2              mov ss,dx
00000B29  8BE0              mov sp,ax
00000B2B  A37401            mov [0x174],ax
00000B2E  33C0              xor ax,ax
00000B30  A38A01            mov [0x18a],ax
00000B33  891E8C01          mov [0x18c],bx
00000B37  A32200            mov [0x22],ax
00000B3A  891E2400          mov [0x24],bx
00000B3E  57                push di
00000B3F  C43E2200          les di,[0x22]
00000B43  B90400            mov cx,0x4
00000B46  FC                cld
00000B47  F3AB              rep stosw
00000B49  5F                pop di
00000B4A  2EF7040100        test word [cs:si],0x1
00000B4F  750D              jnz 0xb5e
00000B51  8CC8              mov ax,cs
00000B53  8EC0              mov es,ax
00000B55  03DF              add bx,di
00000B57  2BD8              sub bx,ax
00000B59  B44A              mov ah,0x4a
00000B5B  E8F9FD            call word 0x957
00000B5E  2E8B4402          mov ax,[cs:si+0x2]
00000B62  A37601            mov [0x176],ax
00000B65  2E8B4404          mov ax,[cs:si+0x4]
00000B69  A37801            mov [0x178],ax
00000B6C  2E8B04            mov ax,[cs:si]
00000B6F  2E8B4C0E          mov cx,[cs:si+0xe]
00000B73  51                push cx
00000B74  56                push si
00000B75  E858FE            call word 0x9d0
00000B78  5E                pop si
00000B79  59                pop cx
00000B7A  BF4002            mov di,0x240
00000B7D  03F9              add di,cx
00000B7F  03F9              add di,cx
00000B81  893E5E01          mov [0x15e],di
00000B85  2E8B4410          mov ax,[cs:si+0x10]
00000B89  A36001            mov [0x160],ax
00000B8C  03F8              add di,ax
00000B8E  0BC0              or ax,ax
00000B90  740B              jz 0xb9d
00000B92  C7065A010000      mov word [0x15a],0x0
00000B98  C6065C0100        mov byte [0x15c],0x0
00000B9D  893E6A01          mov [0x16a],di
00000BA1  2E8B4412          mov ax,[cs:si+0x12]
00000BA5  A36C01            mov [0x16c],ax
00000BA8  0BC0              or ax,ax
00000BAA  740B              jz 0xbb7
00000BAC  C70666010100      mov word [0x166],0x1
00000BB2  C606680100        mov byte [0x168],0x0
00000BB7  83C614            add si,byte +0x14
00000BBA  56                push si
00000BBB  33C0              xor ax,ax
00000BBD  8EC0              mov es,ax
00000BBF  26A10000          mov ax,[es:0x0]
00000BC3  A38E01            mov [0x18e],ax
00000BC6  26A10200          mov ax,[es:0x2]
00000BCA  A39001            mov [0x190],ax
00000BCD  26C70600003210    mov word [es:0x0],0x1032
00000BD4  268C0E0200        mov [es:0x2],cs
00000BD9  F70672010800      test word [0x172],0x8
00000BDF  740C              jz 0xbed
00000BE1  26C7060C00F00F    mov word [es:0xc],0xff0
00000BE8  268C0E0E00        mov [es:0xe],cs
00000BED  F70672010400      test word [0x172],0x4
00000BF3  7405              jz 0xbfa
00000BF5  C606940101        mov byte [0x194],0x1
00000BFA  C7067E01D010      mov word [0x17e],0x10d0
00000C00  33C0              xor ax,ax
00000C02  A38801            mov [0x188],ax
00000C05  A29601            mov [0x196],al
00000C08  8B0E6001          mov cx,[0x160]
00000C0C  1E                push ds
00000C0D  BF5A01            mov di,0x15a
00000C10  E81717            call word 0x232a
00000C13  8B0E6C01          mov cx,[0x16c]
00000C17  1E                push ds
00000C18  BF6601            mov di,0x166
00000C1B  E81017            call word 0x232e
00000C1E  C606FA0100        mov byte [0x1fa],0x0
00000C23  E8A2F6            call word 0x2c8
00000C26  C3                ret
00000C27  B430              mov ah,0x30
00000C29  E82BFD            call word 0x957
00000C2C  0AC0              or al,al
00000C2E  7401              jz 0xc31
00000C30  C3                ret
00000C31  BA5F0C            mov dx,0xc5f
00000C34  EB03              jmp short 0xc39
00000C36  BA4D0C            mov dx,0xc4d
00000C39  0E                push cs
00000C3A  1F                pop ds
00000C3B  B409              mov ah,0x9
00000C3D  E817FD            call word 0x957
00000C40  BA750C            mov dx,0xc75
00000C43  B409              mov ah,0x9
00000C45  E80FFD            call word 0x957
00000C48  B400              mov ah,0x0
00000C4A  E80AFD            call word 0x957
00000C4D  4E                dec si
00000C4E  6F                outsw
00000C4F  7420              jz 0xc71
00000C51  656E              gs outsb
00000C53  6F                outsw
00000C54  7567              jnz 0xcbd
00000C56  68206D            push word 0x6d20
00000C59  656D              gs insw
00000C5B  6F                outsw
00000C5C  7279              jc 0xcd7
00000C5E  2449              and al,0x49
00000C60  6E                outsb
00000C61  636F72            arpl [bx+0x72],bp
00000C64  7265              jc 0xccb
00000C66  637420            arpl [si+0x20],si
00000C69  44                inc sp
00000C6A  4F                dec di
00000C6B  53                push bx
00000C6C  207665            and [bp+0x65],dh
00000C6F  7273              jc 0xce4
00000C71  696F6E240D        imul bp,[bx+0x6e],word 0xd24
00000C76  0A5072            or dl,[bx+si+0x72]
00000C79  6F                outsw
00000C7A  677261            jc 0xcde
00000C7D  6D                insw
00000C7E  206162            and [bx+di+0x62],ah
00000C81  6F                outsw
00000C82  7274              jc 0xcf8
00000C84  65640D0A24        fs or ax,0x240a
00000C89  50                push ax
00000C8A  1E                push ds
00000C8B  BF5A01            mov di,0x15a
00000C8E  E8C217            call word 0x2453
00000C91  1E                push ds
00000C92  BF6601            mov di,0x166
00000C95  E8BB17            call word 0x2453
00000C98  33C0              xor ax,ax
00000C9A  8EC0              mov es,ax
00000C9C  A18E01            mov ax,[0x18e]
00000C9F  26A30000          mov [es:0x0],ax
00000CA3  A19001            mov ax,[0x190]
00000CA6  26A30200          mov [es:0x2],ax
00000CAA  58                pop ax
00000CAB  F70672010100      test word [0x172],0x1
00000CB1  7505              jnz 0xcb8
00000CB3  B44C              mov ah,0x4c
00000CB5  E89FFC            call word 0x957
00000CB8  B480              mov ah,0x80
00000CBA  E89AFC            call word 0x957
00000CBD  FF367601          push word [0x176]
00000CC1  B8023D            mov ax,0x3d02
00000CC4  50                push ax
00000CC5  1E                push ds
00000CC6  07                pop es
00000CC7  8E1E7801          mov ds,[0x178]
00000CCB  CB                retf
00000CCC  5B                pop bx
00000CCD  2E8B07            mov ax,[cs:bx]
00000CD0  0BC0              or ax,ax
00000CD2  7435              jz 0xd09
00000CD4  1E                push ds
00000CD5  0E                push cs
00000CD6  1F                pop ds
00000CD7  0E                push cs
00000CD8  07                pop es
00000CD9  33D2              xor dx,dx
00000CDB  8B07              mov ax,[bx]
00000CDD  0BC0              or ax,ax
00000CDF  7406              jz 0xce7
00000CE1  53                push bx
00000CE2  03D8              add bx,ax
00000CE4  42                inc dx
00000CE5  EBF4              jmp short 0xcdb
00000CE7  8BCB              mov cx,bx
00000CE9  5B                pop bx
00000CEA  8BF3              mov si,bx
00000CEC  83C604            add si,byte +0x4
00000CEF  8B7F02            mov di,[bx+0x2]
00000CF2  3BF7              cmp si,di
00000CF4  740B              jz 0xd01
00000CF6  2BCE              sub cx,si
00000CF8  03F1              add si,cx
00000CFA  03F9              add di,cx
00000CFC  4E                dec si
00000CFD  4F                dec di
00000CFE  FD                std
00000CFF  F3A4              rep movsb
00000D01  4A                dec dx
00000D02  75E3              jnz 0xce7
00000D04  C7070000          mov word [bx],0x0
00000D08  1F                pop ds
00000D09  83C304            add bx,byte +0x4
00000D0C  FFE3              jmp bx
00000D0E  5E                pop si
00000D0F  2E3B14            cmp dx,[cs:si]
00000D12  7505              jnz 0xd19
00000D14  83C60F            add si,byte +0xf
00000D17  FFE6              jmp si
00000D19  50                push ax
00000D1A  52                push dx
00000D1B  56                push si
00000D1C  BF9601            mov di,0x196
00000D1F  32C0              xor al,al
00000D21  8AE0              mov ah,al
00000D23  8A05              mov al,[di]
00000D25  0AC0              or al,al
00000D27  7403              jz 0xd2c
00000D29  47                inc di
00000D2A  EBF5              jmp short 0xd21
00000D2C  57                push di
00000D2D  0AE4              or ah,ah
00000D2F  740E              jz 0xd3f
00000D31  80FC3A            cmp ah,0x3a
00000D34  7409              jz 0xd3f
00000D36  80FC5C            cmp ah,0x5c
00000D39  7404              jz 0xd3f
00000D3B  C6055C            mov byte [di],0x5c
00000D3E  47                inc di
00000D3F  46                inc si
00000D40  46                inc si
00000D41  2E8A04            mov al,[cs:si]
00000D44  8805              mov [di],al
00000D46  46                inc si
00000D47  47                inc di
00000D48  0AC0              or al,al
00000D4A  75F5              jnz 0xd41
00000D4C  B8003D            mov ax,0x3d00
00000D4F  BA9601            mov dx,0x196
00000D52  1E                push ds
00000D53  07                pop es
00000D54  E800FC            call word 0x957
00000D57  8BD8              mov bx,ax
00000D59  5F                pop di
00000D5A  5E                pop si
00000D5B  5A                pop dx
00000D5C  C60500            mov byte [di],0x0
00000D5F  7229              jc 0xd8a
00000D61  2E8914            mov [cs:si],dx
00000D64  B80042            mov ax,0x4200
00000D67  32ED              xor ch,ch
00000D69  8ACE              mov cl,dh
00000D6B  8AF2              mov dh,dl
00000D6D  32D2              xor dl,dl
00000D6F  E8E5FB            call word 0x957
00000D72  59                pop cx
00000D73  7215              jc 0xd8a
00000D75  B43F              mov ah,0x3f
00000D77  8D540F            lea dx,[si+0xf]
00000D7A  1E                push ds
00000D7B  0E                push cs
00000D7C  1F                pop ds
00000D7D  E8D7FB            call word 0x957
00000D80  1F                pop ds
00000D81  7207              jc 0xd8a
00000D83  B43E              mov ah,0x3e
00000D85  E8CFFB            call word 0x957
00000D88  EB8A              jmp short 0xd14
00000D8A  B2F0              mov dl,0xf0
00000D8C  56                push si
00000D8D  E9A802            jmp word 0x1038
00000D90  5B                pop bx
00000D91  E85201            call word 0xee6
00000D94  53                push bx
00000D95  BEB600            mov si,0xb6
00000D98  BF9601            mov di,0x196
00000D9B  1E                push ds
00000D9C  07                pop es
00000D9D  B92000            mov cx,0x20
00000DA0  FC                cld
00000DA1  F3A5              rep movsw
00000DA3  C3                ret
00000DA4  4C                dec sp
00000DA5  FF163601          call word [0x136]
00000DA9  C3                ret
00000DAA  5B                pop bx
00000DAB  59                pop cx
00000DAC  53                push bx
00000DAD  8AD0              mov dl,al
00000DAF  8AF1              mov dh,cl
00000DB1  FECA              dec dl
00000DB3  FECE              dec dh
00000DB5  E98BF5            jmp word 0x343
00000DB8  8BD0              mov dx,ax
00000DBA  0BD2              or dx,dx
00000DBC  7404              jz 0xdc2
00000DBE  E81600            call word 0xdd7
00000DC1  93                xchg ax,bx
00000DC2  5B                pop bx
00000DC3  2BE0              sub sp,ax
00000DC5  4C                dec sp
00000DC6  8BFC              mov di,sp
00000DC8  1E                push ds
00000DC9  0E                push cs
00000DCA  1F                pop ds
00000DCB  16                push ss
00000DCC  07                pop es
00000DCD  FC                cld
00000DCE  AA                stosb
00000DCF  91                xchg ax,cx
00000DD0  F3A4              rep movsb
00000DD2  1F                pop ds
00000DD3  FFE3              jmp bx
00000DD5  33D2              xor dx,dx
00000DD7  BF8000            mov di,0x80
00000DDA  2E8A0D            mov cl,[cs:di]
00000DDD  32ED              xor ch,ch
00000DDF  47                inc di
00000DE0  33DB              xor bx,bx
00000DE2  E30F              jcxz 0xdf3
00000DE4  2E8A05            mov al,[cs:di]
00000DE7  3C20              cmp al,0x20
00000DE9  7404              jz 0xdef
00000DEB  3C09              cmp al,0x9
00000DED  7504              jnz 0xdf3
00000DEF  47                inc di
00000DF0  49                dec cx
00000DF1  EBEF              jmp short 0xde2
00000DF3  8BF7              mov si,di
00000DF5  E30F              jcxz 0xe06
00000DF7  2E8A05            mov al,[cs:di]
00000DFA  3C20              cmp al,0x20
00000DFC  7408              jz 0xe06
00000DFE  3C09              cmp al,0x9
00000E00  7404              jz 0xe06
00000E02  47                inc di
00000E03  49                dec cx
00000E04  EBEF              jmp short 0xdf5
00000E06  8BC7              mov ax,di
00000E08  2BC6              sub ax,si
00000E0A  7404              jz 0xe10
00000E0C  43                inc bx
00000E0D  4A                dec dx
00000E0E  75D2              jnz 0xde2
00000E10  93                xchg ax,bx
00000E11  C3                ret
00000E12  880EE601          mov [0x1e6],cl
00000E16  893EE801          mov [0x1e8],di
00000E1A  5B                pop bx
00000E1B  8F06EA01          pop word [0x1ea]
00000E1F  59                pop cx
00000E20  58                pop ax
00000E21  53                push bx
00000E22  51                push cx
00000E23  BBB600            mov bx,0xb6
00000E26  E8F202            call word 0x111b
00000E29  EB23              jmp short 0xe4e
00000E2B  880EE601          mov [0x1e6],cl
00000E2F  893EE801          mov [0x1e8],di
00000E33  5B                pop bx
00000E34  8F06EA01          pop word [0x1ea]
00000E38  5A                pop dx
00000E39  58                pop ax
00000E3A  BFF401            mov di,0x1f4
00000E3D  8F05              pop word [di]
00000E3F  8F4502            pop word [di+0x2]
00000E42  8F4504            pop word [di+0x4]
00000E45  53                push bx
00000E46  50                push ax
00000E47  91                xchg ax,cx
00000E48  BBB600            mov bx,0xb6
00000E4B  E8F710            call word 0x1f45
00000E4E  59                pop cx
00000E4F  C43EE801          les di,[0x1e8]
00000E53  57                push di
00000E54  8A16E601          mov dl,[0x1e6]
00000E58  32F6              xor dh,dh
00000E5A  93                xchg ax,bx
00000E5B  2DB600            sub ax,0xb6
00000E5E  2BC8              sub cx,ax
00000E60  760D              jna 0xe6f
00000E62  47                inc di
00000E63  26C60520          mov byte [es:di],0x20
00000E67  FEC6              inc dh
00000E69  3AF2              cmp dh,dl
00000E6B  7415              jz 0xe82
00000E6D  E2F3              loop 0xe62
00000E6F  91                xchg ax,cx
00000E70  BBB600            mov bx,0xb6
00000E73  8A07              mov al,[bx]
00000E75  43                inc bx
00000E76  47                inc di
00000E77  268805            mov [es:di],al
00000E7A  FEC6              inc dh
00000E7C  3AF2              cmp dh,dl
00000E7E  7402              jz 0xe82
00000E80  E2F1              loop 0xe73
00000E82  5F                pop di
00000E83  268835            mov [es:di],dh
00000E86  C3                ret
00000E87  32C0              xor al,al
00000E89  EB02              jmp short 0xe8d
00000E8B  B001              mov al,0x1
00000E8D  A2E701            mov [0x1e7],al
00000E90  893EF001          mov [0x1f0],di
00000E94  5B                pop bx
00000E95  8F06F201          pop word [0x1f2]
00000E99  8F06EC01          pop word [0x1ec]
00000E9D  8F06EE01          pop word [0x1ee]
00000EA1  E84700            call word 0xeeb
00000EA4  53                push bx
00000EA5  33C0              xor ax,ax
00000EA7  BBB600            mov bx,0xb6
00000EAA  3807              cmp [bx],al
00000EAC  7430              jz 0xede
00000EAE  3806E701          cmp [0x1e7],al
00000EB2  750E              jnz 0xec2
00000EB4  E8F002            call word 0x11a7
00000EB7  7221              jc 0xeda
00000EB9  C43EEC01          les di,[0x1ec]
00000EBD  268905            mov [es:di],ax
00000EC0  EB12              jmp short 0xed4
00000EC2  BFF401            mov di,0x1f4
00000EC5  E80512            call word 0x20cd
00000EC8  7210              jc 0xeda
00000ECA  8BF7              mov si,di
00000ECC  C43EEC01          les di,[0x1ec]
00000ED0  FC                cld
00000ED1  A5                movsw
00000ED2  A5                movsw
00000ED3  A5                movsw
00000ED4  33C0              xor ax,ax
00000ED6  3807              cmp [bx],al
00000ED8  7404              jz 0xede
00000EDA  93                xchg ax,bx
00000EDB  2DB500            sub ax,0xb5
00000EDE  C43EF001          les di,[0x1f0]
00000EE2  268905            mov [es:di],ax
00000EE5  C3                ret
00000EE6  B94000            mov cx,0x40
00000EE9  EB03              jmp short 0xeee
00000EEB  B97F00            mov cx,0x7f
00000EEE  BFB600            mov di,0xb6
00000EF1  58                pop ax
00000EF2  8BF4              mov si,sp
00000EF4  368A14            mov dl,[ss:si]
00000EF7  32F6              xor dh,dh
00000EF9  3BCA              cmp cx,dx
00000EFB  7602              jna 0xeff
00000EFD  8BCA              mov cx,dx
00000EFF  42                inc dx
00000F00  46                inc si
00000F01  BFB600            mov di,0xb6
00000F04  1E                push ds
00000F05  07                pop es
00000F06  16                push ss
00000F07  1F                pop ds
00000F08  FC                cld
00000F09  F3A4              rep movsb
00000F0B  06                push es
00000F0C  1F                pop ds
00000F0D  C60500            mov byte [di],0x0
00000F10  03E2              add sp,dx
00000F12  FFE0              jmp ax
00000F14  B42C              mov ah,0x2c
00000F16  E83EFA            call word 0x957
00000F19  890EFE01          mov [0x1fe],cx
00000F1D  8916FC01          mov [0x1fc],dx
00000F21  C3                ret
00000F22  5B                pop bx
00000F23  8CDA              mov dx,ds
00000F25  8BF7              mov si,di
00000F27  1F                pop ds
00000F28  5F                pop di
00000F29  07                pop es
00000F2A  FC                cld
00000F2B  F3A4              rep movsb
00000F2D  8EDA              mov ds,dx
00000F2F  FFE3              jmp bx
00000F31  5B                pop bx
00000F32  8CDA              mov dx,ds
00000F34  8BF7              mov si,di
00000F36  1F                pop ds
00000F37  2BE1              sub sp,cx
00000F39  8BFC              mov di,sp
00000F3B  16                push ss
00000F3C  07                pop es
00000F3D  FC                cld
00000F3E  F3A4              rep movsb
00000F40  8EDA              mov ds,dx
00000F42  FFE3              jmp bx
00000F44  5B                pop bx
00000F45  59                pop cx
00000F46  5F                pop di
00000F47  07                pop es
00000F48  FC                cld
00000F49  F3AA              rep stosb
00000F4B  FFE3              jmp bx
00000F4D  91                xchg ax,cx
00000F4E  8CDA              mov dx,ds
00000F50  5B                pop bx
00000F51  5F                pop di
00000F52  07                pop es
00000F53  5E                pop si
00000F54  1F                pop ds
00000F55  FC                cld
00000F56  3BF7              cmp si,di
00000F58  7307              jnc 0xf61
00000F5A  03F1              add si,cx
00000F5C  03F9              add di,cx
00000F5E  4E                dec si
00000F5F  4F                dec di
00000F60  FD                std
00000F61  F3A4              rep movsb
00000F63  8EDA              mov ds,dx
00000F65  FFE3              jmp bx
00000F67  5B                pop bx
00000F68  58                pop ax
00000F69  55                push bp
00000F6A  1E                push ds
00000F6B  50                push ax
00000F6C  57                push di
00000F6D  53                push bx
00000F6E  8BF7              mov si,di
00000F70  8ED8              mov ds,ax
00000F72  FC                cld
00000F73  AD                lodsw
00000F74  50                push ax
00000F75  AD                lodsw
00000F76  8BD8              mov bx,ax
00000F78  AD                lodsw
00000F79  8BC8              mov cx,ax
00000F7B  AD                lodsw
00000F7C  8BD0              mov dx,ax
00000F7E  AD                lodsw
00000F7F  8BE8              mov bp,ax
00000F81  AD                lodsw
00000F82  50                push ax
00000F83  AD                lodsw
00000F84  8BF8              mov di,ax
00000F86  AD                lodsw
00000F87  50                push ax
00000F88  AD                lodsw
00000F89  8EC0              mov es,ax
00000F8B  1F                pop ds
00000F8C  5E                pop si
00000F8D  58                pop ax
00000F8E  C3                ret
00000F8F  9C                pushfw
00000F90  06                push es
00000F91  57                push di
00000F92  55                push bp
00000F93  8BEC              mov bp,sp
00000F95  C47E0A            les di,[bp+0xa]
00000F98  FC                cld
00000F99  AB                stosw
00000F9A  8BC3              mov ax,bx
00000F9C  AB                stosw
00000F9D  8BC1              mov ax,cx
00000F9F  AB                stosw
00000FA0  8BC2              mov ax,dx
00000FA2  AB                stosw
00000FA3  58                pop ax
00000FA4  AB                stosw
00000FA5  8BC6              mov ax,si
00000FA7  AB                stosw
00000FA8  58                pop ax
00000FA9  AB                stosw
00000FAA  8CD8              mov ax,ds
00000FAC  AB                stosw
00000FAD  58                pop ax
00000FAE  AB                stosw
00000FAF  58                pop ax
00000FB0  AB                stosw
00000FB1  5B                pop bx
00000FB2  83C404            add sp,byte +0x4
00000FB5  1F                pop ds
00000FB6  5D                pop bp
00000FB7  FFE3              jmp bx
00000FB9  3BC1              cmp ax,cx
00000FBB  7301              jnc 0xfbe
00000FBD  C3                ret
00000FBE  B290              mov dl,0x90
00000FC0  EB76              jmp short 0x1038
00000FC2  90                nop
00000FC3  3BC1              cmp ax,cx
00000FC5  7C05              jl 0xfcc
00000FC7  3BC2              cmp ax,dx
00000FC9  7F01              jg 0xfcc
00000FCB  C3                ret
00000FCC  B291              mov dl,0x91
00000FCE  EB68              jmp short 0x1038
00000FD0  90                nop
00000FD1  8BC4              mov ax,sp
00000FD3  2BC1              sub ax,cx
00000FD5  7214              jc 0xfeb
00000FD7  3D0002            cmp ax,0x200
00000FDA  720F              jc 0xfeb
00000FDC  B104              mov cl,0x4
00000FDE  D3E8              shr ax,cl
00000FE0  8CD1              mov cx,ss
00000FE2  03C1              add ax,cx
00000FE4  3B068C01          cmp ax,[0x18c]
00000FE8  7201              jc 0xfeb
00000FEA  C3                ret
00000FEB  B2FF              mov dl,0xff
00000FED  EB49              jmp short 0x1038
00000FEF  90                nop
00000FF0  5B                pop bx
00000FF1  58                pop ax
00000FF2  9D                popfw
00000FF3  53                push bx
00000FF4  800E940102        or byte [0x194],0x2
00000FF9  4C                dec sp
00000FFA  E856F8            call word 0x853
00000FFD  7404              jz 0x1003
00000FFF  4C                dec sp
00001000  E869F8            call word 0x86c
00001003  8026940101        and byte [0x194],0x1
00001008  3C03              cmp al,0x3
0000100A  7401              jz 0x100d
0000100C  C3                ret
0000100D  8F068601          pop word [0x186]
00001011  8306860102        add word [0x186],byte +0x2
00001016  BA0100            mov dx,0x1
00001019  EB23              jmp short 0x103e
0000101B  33C0              xor ax,ax
0000101D  86068001          xchg al,[0x180]
00001021  C3                ret
00001022  803E800100        cmp byte [0x180],0x0
00001027  7501              jnz 0x102a
00001029  C3                ret
0000102A  8A168001          mov dl,[0x180]
0000102E  B601              mov dh,0x1
00001030  EB0C              jmp short 0x103e
00001032  5B                pop bx
00001033  58                pop ax
00001034  9D                popfw
00001035  53                push bx
00001036  B204              mov dl,0x4
00001038  8F068601          pop word [0x186]
0000103C  B602              mov dh,0x2
0000103E  52                push dx
0000103F  E8B4F9            call word 0x9f6
00001042  5A                pop dx
00001043  A18601            mov ax,[0x186]
00001046  2D0300            sub ax,0x3
00001049  87068801          xchg ax,[0x188]
0000104D  0BC0              or ax,ax
0000104F  750B              jnz 0x105c
00001051  52                push dx
00001052  52                push dx
00001053  FF368801          push word [0x188]
00001057  FF167E01          call word [0x17e]
0000105B  5A                pop dx
0000105C  80FE01            cmp dh,0x1
0000105F  7314              jnc 0x1075
00001061  E81DFA            call word 0xa81
00001064  5E                pop si
00001065  43                inc bx
00001066  0D0A55            or ax,0x550a
00001069  7365              jnc 0x10d0
0000106B  7220              jc 0x108d
0000106D  42                inc dx
0000106E  7265              jc 0x10d5
00001070  61                popaw
00001071  6B00EB            imul ax,[bx+si],byte -0x15
00001074  30C6              xor dh,al
00001076  06                push es
00001077  FA                cli
00001078  01FF              add di,di
0000107A  770B              ja 0x1087
0000107C  E802FA            call word 0xa81
0000107F  0D0A49            or ax,0x490a
00001082  2F                das
00001083  4F                dec di
00001084  00EB              add bl,ch
00001086  0E                push cs
00001087  E8F7F9            call word 0xa81
0000108A  0D0A52            or ax,0x520a
0000108D  756E              jnz 0x10fd
0000108F  2D7469            sub ax,0x6974
00001092  6D                insw
00001093  6500E8            gs add al,ch
00001096  E9F920            jmp word 0x3192
00001099  657272            gs jc 0x110e
0000109C  6F                outsw
0000109D  7220              jc 0x10bf
0000109F  008AC2E8          add [bp+si-0x173e],cl
000010A3  0DFAE8            or ax,0xe8fa
000010A6  D9F9              fyl2xp1
000010A8  2C20              sub al,0x20
000010AA  50                push ax
000010AB  43                inc bx
000010AC  3D00A1            cmp ax,0xa100
000010AF  8801              mov [bx+di],al
000010B1  E8F7F9            call word 0xaab
000010B4  E8CAF9            call word 0xa81
000010B7  0D0A50            or ax,0x500a
000010BA  726F              jc 0x112b
000010BC  677261            jc 0x1120
000010BF  6D                insw
000010C0  206162            and [bx+di+0x62],ah
000010C3  6F                outsw
000010C4  7274              jc 0x113a
000010C6  65640D0A00        fs or ax,0xa
000010CB  B001              mov al,0x1
000010CD  E9B9FB            jmp word 0xc89
000010D0  C20400            ret 0x4
000010D3  0BC0              or ax,ax
000010D5  7902              jns 0x10d9
000010D7  F7D8              neg ax
000010D9  C3                ret
000010DA  50                push ax
000010DB  E80800            call word 0x10e6
000010DE  5B                pop bx
000010DF  D1E8              shr ax,1
000010E1  99                cwd
000010E2  F7F3              div bx
000010E4  92                xchg ax,dx
000010E5  C3                ret
000010E6  8B1EFE01          mov bx,[0x1fe]
000010EA  8B0EFC01          mov cx,[0x1fc]
000010EE  53                push bx
000010EF  51                push cx
000010F0  8AC7              mov al,bh
000010F2  8AFB              mov bh,bl
000010F4  8ADD              mov bl,ch
000010F6  8AE9              mov ch,cl
000010F8  32C9              xor cl,cl
000010FA  D0D8              rcr al,1
000010FC  D1DB              rcr bx,1
000010FE  D1D9              rcr cx,1
00001100  58                pop ax
00001101  03C8              add cx,ax
00001103  58                pop ax
00001104  13D8              adc bx,ax
00001106  B8E962            mov ax,0x62e9
00001109  03C8              add cx,ax
0000110B  B81936            mov ax,0x3619
0000110E  13D8              adc bx,ax
00001110  891EFE01          mov [0x1fe],bx
00001114  890EFC01          mov [0x1fc],cx
00001118  8BC3              mov ax,bx
0000111A  C3                ret
0000111B  0BC0              or ax,ax
0000111D  7906              jns 0x1125
0000111F  F7D8              neg ax
00001121  C6072D            mov byte [bx],0x2d
00001124  43                inc bx
00001125  32ED              xor ch,ch
00001127  BA1027            mov dx,0x2710
0000112A  E81500            call word 0x1142
0000112D  BAE803            mov dx,0x3e8
00001130  E80F00            call word 0x1142
00001133  BA6400            mov dx,0x64
00001136  E80900            call word 0x1142
00001139  B20A              mov dl,0xa
0000113B  E80400            call word 0x1142
0000113E  8AC8              mov cl,al
00001140  EB14              jmp short 0x1156
00001142  32C9              xor cl,cl
00001144  FEC1              inc cl
00001146  2BC2              sub ax,dx
00001148  73FA              jnc 0x1144
0000114A  03C2              add ax,dx
0000114C  FEC5              inc ch
0000114E  FEC9              dec cl
00001150  7504              jnz 0x1156
00001152  FECD              dec ch
00001154  7406              jz 0x115c
00001156  80C130            add cl,0x30
00001159  880F              mov [bx],cl
0000115B  43                inc bx
0000115C  C3                ret
0000115D  33C0              xor ax,ax
0000115F  803F24            cmp byte [bx],0x24
00001162  BA0A00            mov dx,0xa
00001165  7503              jnz 0x116a
00001167  B210              mov dl,0x10
00001169  43                inc bx
0000116A  50                push ax
0000116B  8A07              mov al,[bx]
0000116D  E830F9            call word 0xaa0
00001170  8AC8              mov cl,al
00001172  58                pop ax
00001173  80E930            sub cl,0x30
00001176  7225              jc 0x119d
00001178  80F90A            cmp cl,0xa
0000117B  7212              jc 0x118f
0000117D  80FA10            cmp dl,0x10
00001180  751B              jnz 0x119d
00001182  80E907            sub cl,0x7
00001185  80F90A            cmp cl,0xa
00001188  7213              jc 0x119d
0000118A  80F910            cmp cl,0x10
0000118D  730E              jnc 0x119d
0000118F  52                push dx
00001190  F7E2              mul dx
00001192  5A                pop dx
00001193  7211              jc 0x11a6
00001195  32ED              xor ch,ch
00001197  03C1              add ax,cx
00001199  73CE              jnc 0x1169
0000119B  EB09              jmp short 0x11a6
0000119D  80FA10            cmp dl,0x10
000011A0  7404              jz 0x11a6
000011A2  8BC8              mov cx,ax
000011A4  03C9              add cx,cx
000011A6  C3                ret
000011A7  8A0F              mov cl,[bx]
000011A9  80F92D            cmp cl,0x2d
000011AC  7501              jnz 0x11af
000011AE  43                inc bx
000011AF  51                push cx
000011B0  E8AAFF            call word 0x115d
000011B3  59                pop cx
000011B4  7209              jc 0x11bf
000011B6  80F92D            cmp cl,0x2d
000011B9  7502              jnz 0x11bd
000011BB  F7D8              neg ax
000011BD  F8                clc
000011BE  C3                ret
000011BF  3D0080            cmp ax,0x8000
000011C2  7506              jnz 0x11ca
000011C4  80F92D            cmp cl,0x2d
000011C7  7501              jnz 0x11ca
000011C9  C3                ret
000011CA  F9                stc
000011CB  C3                ret
000011CC  5B                pop bx
000011CD  07                pop es
000011CE  8BF7              mov si,di
000011D0  268A0C            mov cl,[es:si]
000011D3  32ED              xor ch,ch
000011D5  41                inc cx
000011D6  2BE1              sub sp,cx
000011D8  8BFC              mov di,sp
000011DA  1E                push ds
000011DB  06                push es
000011DC  1F                pop ds
000011DD  16                push ss
000011DE  07                pop es
000011DF  FC                cld
000011E0  F3A4              rep movsb
000011E2  1F                pop ds
000011E3  FFE3              jmp bx
000011E5  5E                pop si
000011E6  2E8A0C            mov cl,[cs:si]
000011E9  32ED              xor ch,ch
000011EB  41                inc cx
000011EC  2BE1              sub sp,cx
000011EE  8BFC              mov di,sp
000011F0  1E                push ds
000011F1  0E                push cs
000011F2  1F                pop ds
000011F3  16                push ss
000011F4  07                pop es
000011F5  FC                cld
000011F6  F3A4              rep movsb
000011F8  1F                pop ds
000011F9  FFE6              jmp si
000011FB  5A                pop dx
000011FC  8AC1              mov al,cl
000011FE  8BDC              mov bx,sp
00001200  368A0F            mov cl,[ss:bx]
00001203  32ED              xor ch,ch
00001205  03D9              add bx,cx
00001207  43                inc bx
00001208  36C43F            les di,[ss:bx]
0000120B  8BF4              mov si,sp
0000120D  3AC8              cmp cl,al
0000120F  7605              jna 0x1216
00001211  8AC8              mov cl,al
00001213  368804            mov [ss:si],al
00001216  41                inc cx
00001217  1E                push ds
00001218  16                push ss
00001219  1F                pop ds
0000121A  FC                cld
0000121B  F3A4              rep movsb
0000121D  1F                pop ds
0000121E  8D6704            lea sp,[bx+0x4]
00001221  FFE2              jmp dx
00001223  5B                pop bx
00001224  07                pop es
00001225  8BF7              mov si,di
00001227  32ED              xor ch,ch
00001229  2BE1              sub sp,cx
0000122B  4C                dec sp
0000122C  8BFC              mov di,sp
0000122E  36880D            mov [ss:di],cl
00001231  47                inc di
00001232  1E                push ds
00001233  06                push es
00001234  1F                pop ds
00001235  16                push ss
00001236  07                pop es
00001237  FC                cld
00001238  F3A4              rep movsb
0000123A  1F                pop ds
0000123B  FFE3              jmp bx
0000123D  5B                pop bx
0000123E  32ED              xor ch,ch
00001240  8BF4              mov si,sp
00001242  368A04            mov al,[ss:si]
00001245  32E4              xor ah,ah
00001247  2BC1              sub ax,cx
00001249  8BFE              mov di,si
0000124B  03F8              add di,ax
0000124D  0BC0              or ax,ax
0000124F  7427              jz 0x1278
00001251  7911              jns 0x1264
00001253  8BE7              mov sp,di
00001255  368A0C            mov cl,[ss:si]
00001258  41                inc cx
00001259  1E                push ds
0000125A  16                push ss
0000125B  1F                pop ds
0000125C  16                push ss
0000125D  07                pop es
0000125E  FC                cld
0000125F  F3A4              rep movsb
00001261  1F                pop ds
00001262  EB14              jmp short 0x1278
00001264  36880C            mov [ss:si],cl
00001267  03F9              add di,cx
00001269  03F1              add si,cx
0000126B  41                inc cx
0000126C  1E                push ds
0000126D  16                push ss
0000126E  1F                pop ds
0000126F  16                push ss
00001270  07                pop es
00001271  FD                std
00001272  F3A4              rep movsb
00001274  1F                pop ds
00001275  47                inc di
00001276  8BE7              mov sp,di
00001278  FFE3              jmp bx
0000127A  E84500            call word 0x12c2
0000127D  B80100            mov ax,0x1
00001280  7401              jz 0x1283
00001282  48                dec ax
00001283  0BC0              or ax,ax
00001285  C3                ret
00001286  E83900            call word 0x12c2
00001289  B80100            mov ax,0x1
0000128C  7501              jnz 0x128f
0000128E  48                dec ax
0000128F  0BC0              or ax,ax
00001291  C3                ret
00001292  E82D00            call word 0x12c2
00001295  B80100            mov ax,0x1
00001298  7301              jnc 0x129b
0000129A  48                dec ax
0000129B  0BC0              or ax,ax
0000129D  C3                ret
0000129E  E82100            call word 0x12c2
000012A1  B80100            mov ax,0x1
000012A4  7601              jna 0x12a7
000012A6  48                dec ax
000012A7  0BC0              or ax,ax
000012A9  C3                ret
000012AA  E81500            call word 0x12c2
000012AD  B80100            mov ax,0x1
000012B0  7701              ja 0x12b3
000012B2  48                dec ax
000012B3  0BC0              or ax,ax
000012B5  C3                ret
000012B6  E80900            call word 0x12c2
000012B9  B80100            mov ax,0x1
000012BC  7201              jc 0x12bf
000012BE  48                dec ax
000012BF  0BC0              or ax,ax
000012C1  C3                ret
000012C2  8BFC              mov di,sp
000012C4  83C704            add di,byte +0x4
000012C7  368A0D            mov cl,[ss:di]
000012CA  32ED              xor ch,ch
000012CC  47                inc di
000012CD  8BF7              mov si,di
000012CF  03F1              add si,cx
000012D1  368A14            mov dl,[ss:si]
000012D4  32F6              xor dh,dh
000012D6  46                inc si
000012D7  8BDE              mov bx,si
000012D9  03DA              add bx,dx
000012DB  8AC1              mov al,cl
000012DD  8AE2              mov ah,dl
000012DF  3BCA              cmp cx,dx
000012E1  7602              jna 0x12e5
000012E3  87CA              xchg cx,dx
000012E5  0BC9              or cx,cx
000012E7  740B              jz 0x12f4
000012E9  1E                push ds
000012EA  16                push ss
000012EB  07                pop es
000012EC  16                push ss
000012ED  1F                pop ds
000012EE  FC                cld
000012EF  F3A6              repe cmpsb
000012F1  1F                pop ds
000012F2  7502              jnz 0x12f6
000012F4  3AE0              cmp ah,al
000012F6  5A                pop dx
000012F7  59                pop cx
000012F8  8BE3              mov sp,bx
000012FA  51                push cx
000012FB  FFE2              jmp dx
000012FD  8F068601          pop word [0x186]
00001301  8BFC              mov di,sp
00001303  368A15            mov dl,[ss:di]
00001306  32F6              xor dh,dh
00001308  8BF7              mov si,di
0000130A  46                inc si
0000130B  03F2              add si,dx
0000130D  368A0C            mov cl,[ss:si]
00001310  02D1              add dl,cl
00001312  7226              jc 0x133a
00001314  368814            mov [ss:si],dl
00001317  32ED              xor ch,ch
00001319  2BF9              sub di,cx
0000131B  8BE7              mov sp,di
0000131D  41                inc cx
0000131E  1E                push ds
0000131F  56                push si
00001320  16                push ss
00001321  07                pop es
00001322  16                push ss
00001323  1F                pop ds
00001324  FC                cld
00001325  F3A4              rep movsb
00001327  8BFE              mov di,si
00001329  5E                pop si
0000132A  4E                dec si
0000132B  4F                dec di
0000132C  8BCA              mov cx,dx
0000132E  41                inc cx
0000132F  FD                std
00001330  F3A4              rep movsb
00001332  1F                pop ds
00001333  47                inc di
00001334  8BE7              mov sp,di
00001336  FF268601          jmp word [0x186]
0000133A  B210              mov dl,0x10
0000133C  E9FDFC            jmp word 0x103c
0000133F  8F068601          pop word [0x186]
00001343  E883F7            call word 0xac9
00001346  8BC8              mov cx,ax
00001348  58                pop ax
00001349  E87201            call word 0x14be
0000134C  48                dec ax
0000134D  8BF4              mov si,sp
0000134F  368A14            mov dl,[ss:si]
00001352  32F6              xor dh,dh
00001354  8BFC              mov di,sp
00001356  03FA              add di,dx
00001358  2BD0              sub dx,ax
0000135A  7615              jna 0x1371
0000135C  03F0              add si,ax
0000135E  3BD1              cmp dx,cx
00001360  7613              jna 0x1375
00001362  03F1              add si,cx
00001364  8BD1              mov dx,cx
00001366  1E                push ds
00001367  16                push ss
00001368  07                pop es
00001369  16                push ss
0000136A  1F                pop ds
0000136B  FD                std
0000136C  F3A4              rep movsb
0000136E  1F                pop ds
0000136F  EB02              jmp short 0x1373
00001371  33D2              xor dx,dx
00001373  87F7              xchg si,di
00001375  368814            mov [ss:si],dl
00001378  8BE6              mov sp,si
0000137A  FF268601          jmp word [0x186]
0000137E  5B                pop bx
0000137F  8BFC              mov di,sp
00001381  368A05            mov al,[ss:di]
00001384  32E4              xor ah,ah
00001386  03E0              add sp,ax
00001388  44                inc sp
00001389  FFE3              jmp bx
0000138B  8F068601          pop word [0x186]
0000138F  8BFC              mov di,sp
00001391  368A15            mov dl,[ss:di]
00001394  32F6              xor dh,dh
00001396  47                inc di
00001397  8BF7              mov si,di
00001399  03F2              add si,dx
0000139B  368A0C            mov cl,[ss:si]
0000139E  32ED              xor ch,ch
000013A0  46                inc si
000013A1  8BDE              mov bx,si
000013A3  03D9              add bx,cx
000013A5  33C0              xor ax,ax
000013A7  2BD1              sub dx,cx
000013A9  721E              jc 0x13c9
000013AB  40                inc ax
000013AC  0BC9              or cx,cx
000013AE  7419              jz 0x13c9
000013B0  42                inc dx
000013B1  1E                push ds
000013B2  16                push ss
000013B3  07                pop es
000013B4  16                push ss
000013B5  1F                pop ds
000013B6  FC                cld
000013B7  51                push cx
000013B8  57                push di
000013B9  56                push si
000013BA  F3A6              repe cmpsb
000013BC  5E                pop si
000013BD  5F                pop di
000013BE  59                pop cx
000013BF  7407              jz 0x13c8
000013C1  40                inc ax
000013C2  47                inc di
000013C3  4A                dec dx
000013C4  75F1              jnz 0x13b7
000013C6  33C0              xor ax,ax
000013C8  1F                pop ds
000013C9  8BE3              mov sp,bx
000013CB  FF268601          jmp word [0x186]
000013CF  880E0002          mov [0x200],cl
000013D3  A30202            mov [0x202],ax
000013D6  5B                pop bx
000013D7  8F060602          pop word [0x206]
000013DB  8F060802          pop word [0x208]
000013DF  89260A02          mov [0x20a],sp
000013E3  8C160C02          mov [0x20c],ss
000013E7  53                push bx
000013E8  C43E0602          les di,[0x206]
000013EC  06                push es
000013ED  57                push di
000013EE  06                push es
000013EF  E8DAFD            call word 0x11cc
000013F2  B80100            mov ax,0x1
000013F5  50                push ax
000013F6  A10202            mov ax,[0x202]
000013F9  48                dec ax
000013FA  E842FF            call word 0x133f
000013FD  C43E0A02          les di,[0x20a]
00001401  06                push es
00001402  E8C7FD            call word 0x11cc
00001405  E8F5FE            call word 0x12fd
00001408  C43E0602          les di,[0x206]
0000140C  06                push es
0000140D  E8BCFD            call word 0x11cc
00001410  FF360202          push word [0x202]
00001414  B8FF00            mov ax,0xff
00001417  E825FF            call word 0x133f
0000141A  E8E0FE            call word 0x12fd
0000141D  8A0E0002          mov cl,[0x200]
00001421  E8D7FD            call word 0x11fb
00001424  E957FF            jmp word 0x137e
00001427  A30402            mov [0x204],ax
0000142A  5B                pop bx
0000142B  8F060202          pop word [0x202]
0000142F  8F060602          pop word [0x206]
00001433  8F060802          pop word [0x208]
00001437  53                push bx
00001438  C43E0602          les di,[0x206]
0000143C  06                push es
0000143D  57                push di
0000143E  06                push es
0000143F  E88AFD            call word 0x11cc
00001442  B80100            mov ax,0x1
00001445  50                push ax
00001446  A10202            mov ax,[0x202]
00001449  48                dec ax
0000144A  E8F2FE            call word 0x133f
0000144D  A10202            mov ax,[0x202]
00001450  03060402          add ax,[0x204]
00001454  0AE4              or ah,ah
00001456  7512              jnz 0x146a
00001458  C43E0602          les di,[0x206]
0000145C  06                push es
0000145D  E86CFD            call word 0x11cc
00001460  50                push ax
00001461  B8FF00            mov ax,0xff
00001464  E8D8FE            call word 0x133f
00001467  E893FE            call word 0x12fd
0000146A  B1FF              mov cl,0xff
0000146C  E88CFD            call word 0x11fb
0000146F  C3                ret
00001470  5B                pop bx
00001471  58                pop ax
00001472  FEC8              dec al
00001474  7504              jnz 0x147a
00001476  86C4              xchg al,ah
00001478  FFE3              jmp bx
0000147A  891E8601          mov [0x186],bx
0000147E  B210              mov dl,0x10
00001480  E9B9FB            jmp word 0x103c
00001483  8BF4              mov si,sp
00001485  368A5C02          mov bl,[ss:si+0x2]
00001489  32FF              xor bh,bh
0000148B  368B4003          mov ax,[ss:bx+si+0x3]
0000148F  8AE0              mov ah,al
00001491  B001              mov al,0x1
00001493  36894003          mov [ss:bx+si+0x3],ax
00001497  C3                ret
00001498  5B                pop bx
00001499  03E2              add sp,dx
0000149B  8BF4              mov si,sp
0000149D  368A04            mov al,[ss:si]
000014A0  3AC1              cmp al,cl
000014A2  7418              jz 0x14bc
000014A4  32E4              xor ah,ah
000014A6  03F0              add si,ax
000014A8  8BFC              mov di,sp
000014AA  32ED              xor ch,ch
000014AC  03F9              add di,cx
000014AE  91                xchg ax,cx
000014AF  41                inc cx
000014B0  1E                push ds
000014B1  16                push ss
000014B2  1F                pop ds
000014B3  16                push ss
000014B4  07                pop es
000014B5  FD                std
000014B6  F3A4              rep movsb
000014B8  1F                pop ds
000014B9  47                inc di
000014BA  8BE7              mov sp,di
000014BC  FFE3              jmp bx
000014BE  0AE4              or ah,ah
000014C0  7505              jnz 0x14c7
000014C2  0AC0              or al,al
000014C4  7401              jz 0x14c7
000014C6  C3                ret
000014C7  B211              mov dl,0x11
000014C9  E970FB            jmp word 0x103c
000014CC  5B                pop bx
000014CD  5A                pop dx
000014CE  8BF7              mov si,di
000014D0  83EC20            sub sp,byte +0x20
000014D3  8BFC              mov di,sp
000014D5  51                push cx
000014D6  16                push ss
000014D7  07                pop es
000014D8  FC                cld
000014D9  0AED              or ch,ch
000014DB  7407              jz 0x14e4
000014DD  32C0              xor al,al
000014DF  AA                stosb
000014E0  FECD              dec ch
000014E2  75FB              jnz 0x14df
000014E4  1E                push ds
000014E5  8EDA              mov ds,dx
000014E7  F3A4              rep movsb
000014E9  1F                pop ds
000014EA  59                pop cx
000014EB  B420              mov ah,0x20
000014ED  2AE5              sub ah,ch
000014EF  2AE1              sub ah,cl
000014F1  7407              jz 0x14fa
000014F3  32C0              xor al,al
000014F5  AA                stosb
000014F6  FECC              dec ah
000014F8  75FB              jnz 0x14f5
000014FA  FFE3              jmp bx
000014FC  5B                pop bx
000014FD  83EC20            sub sp,byte +0x20
00001500  8BFC              mov di,sp
00001502  16                push ss
00001503  07                pop es
00001504  B91000            mov cx,0x10
00001507  33C0              xor ax,ax
00001509  FC                cld
0000150A  F3AB              rep stosw
0000150C  FFE3              jmp bx
0000150E  E8EF00            call word 0x1600
00001511  360807            or [ss:bx],al
00001514  C3                ret
00001515  91                xchg ax,cx
00001516  5B                pop bx
00001517  58                pop ax
00001518  53                push bx
00001519  2AC8              sub cl,al
0000151B  7216              jc 0x1533
0000151D  32ED              xor ch,ch
0000151F  41                inc cx
00001520  8AE1              mov ah,cl
00001522  E8DB00            call word 0x1600
00001525  8ACC              mov cl,ah
00001527  360807            or [ss:bx],al
0000152A  D0E0              shl al,1
0000152C  7303              jnc 0x1531
0000152E  43                inc bx
0000152F  B001              mov al,0x1
00001531  E2F4              loop 0x1527
00001533  C3                ret
00001534  8BF4              mov si,sp
00001536  46                inc si
00001537  46                inc si
00001538  368B7C20          mov di,[ss:si+0x20]
0000153C  368E4422          mov es,[ss:si+0x22]
00001540  8AD5              mov dl,ch
00001542  32F6              xor dh,dh
00001544  03F2              add si,dx
00001546  32ED              xor ch,ch
00001548  1E                push ds
00001549  16                push ss
0000154A  1F                pop ds
0000154B  FC                cld
0000154C  F3A4              rep movsb
0000154E  1F                pop ds
0000154F  C22400            ret 0x24
00001552  5B                pop bx
00001553  8AD5              mov dl,ch
00001555  32F6              xor dh,dh
00001557  32ED              xor ch,ch
00001559  8BF4              mov si,sp
0000155B  03F2              add si,dx
0000155D  03F1              add si,cx
0000155F  8BFC              mov di,sp
00001561  83C720            add di,byte +0x20
00001564  3BF7              cmp si,di
00001566  740E              jz 0x1576
00001568  4E                dec si
00001569  4F                dec di
0000156A  1E                push ds
0000156B  16                push ss
0000156C  07                pop es
0000156D  16                push ss
0000156E  1F                pop ds
0000156F  FD                std
00001570  F3A4              rep movsb
00001572  1F                pop ds
00001573  47                inc di
00001574  8BE7              mov sp,di
00001576  FFE3              jmp bx
00001578  B80100            mov ax,0x1
0000157B  EB02              jmp short 0x157f
0000157D  33C0              xor ax,ax
0000157F  E89500            call word 0x1617
00001582  F3A7              repe cmpsw
00001584  8EDA              mov ds,dx
00001586  7403              jz 0x158b
00001588  350100            xor ax,0x1
0000158B  0BC0              or ax,ax
0000158D  C24000            ret 0x40
00001590  33C0              xor ax,ax
00001592  EB03              jmp short 0x1597
00001594  B80100            mov ax,0x1
00001597  E87D00            call word 0x1617
0000159A  48                dec ax
0000159B  7502              jnz 0x159f
0000159D  87FE              xchg di,si
0000159F  AD                lodsw
000015A0  0B05              or ax,[di]
000015A2  AF                scasw
000015A3  7507              jnz 0x15ac
000015A5  E2F8              loop 0x159f
000015A7  B80100            mov ax,0x1
000015AA  EB02              jmp short 0x15ae
000015AC  33C0              xor ax,ax
000015AE  8EDA              mov ds,dx
000015B0  0BC0              or ax,ax
000015B2  C24000            ret 0x40
000015B5  E85F00            call word 0x1617
000015B8  AD                lodsw
000015B9  0B05              or ax,[di]
000015BB  AB                stosw
000015BC  E2FA              loop 0x15b8
000015BE  8EDA              mov ds,dx
000015C0  C22000            ret 0x20
000015C3  E85100            call word 0x1617
000015C6  AD                lodsw
000015C7  F7D0              not ax
000015C9  2305              and ax,[di]
000015CB  AB                stosw
000015CC  E2F8              loop 0x15c6
000015CE  8EDA              mov ds,dx
000015D0  C22000            ret 0x20
000015D3  E84100            call word 0x1617
000015D6  AD                lodsw
000015D7  2305              and ax,[di]
000015D9  AB                stosw
000015DA  E2FA              loop 0x15d6
000015DC  8EDA              mov ds,dx
000015DE  C22000            ret 0x20
000015E1  8BDC              mov bx,sp
000015E3  368B4722          mov ax,[ss:bx+0x22]
000015E7  0AE4              or ah,ah
000015E9  7404              jz 0x15ef
000015EB  33C0              xor ax,ax
000015ED  EB0C              jmp short 0x15fb
000015EF  E80E00            call word 0x1600
000015F2  362207            and al,[ss:bx]
000015F5  B80000            mov ax,0x0
000015F8  7401              jz 0x15fb
000015FA  40                inc ax
000015FB  0BC0              or ax,ax
000015FD  C22200            ret 0x22
00001600  8AD8              mov bl,al
00001602  32FF              xor bh,bh
00001604  B103              mov cl,0x3
00001606  D3EB              shr bx,cl
00001608  83C304            add bx,byte +0x4
0000160B  03DC              add bx,sp
0000160D  8AC8              mov cl,al
0000160F  80E107            and cl,0x7
00001612  B001              mov al,0x1
00001614  D2E0              shl al,cl
00001616  C3                ret
00001617  8BF4              mov si,sp
00001619  83C604            add si,byte +0x4
0000161C  8BFC              mov di,sp
0000161E  83C724            add di,byte +0x24
00001621  8CDA              mov dx,ds
00001623  16                push ss
00001624  07                pop es
00001625  16                push ss
00001626  1F                pop ds
00001627  B91000            mov cx,0x10
0000162A  FC                cld
0000162B  C3                ret
0000162C  3BC3              cmp ax,bx
0000162E  B80000            mov ax,0x0
00001631  7505              jnz 0x1638
00001633  3BD1              cmp dx,cx
00001635  7501              jnz 0x1638
00001637  40                inc ax
00001638  0BC0              or ax,ax
0000163A  C3                ret
0000163B  3BC3              cmp ax,bx
0000163D  B80100            mov ax,0x1
00001640  7505              jnz 0x1647
00001642  3BD1              cmp dx,cx
00001644  7501              jnz 0x1647
00001646  48                dec ax
00001647  0BC0              or ax,ax
00001649  C3                ret
0000164A  C70620020080      mov word [0x220],0x8000
00001650  EB06              jmp short 0x1658
00001652  C70620020000      mov word [0x220],0x0
00001658  0AC9              or cl,cl
0000165A  740E              jz 0x166a
0000165C  333E2002          xor di,[0x220]
00001660  0AC0              or al,al
00001662  7507              jnz 0x166b
00001664  8BC1              mov ax,cx
00001666  8BDE              mov bx,si
00001668  8BD7              mov dx,di
0000166A  C3                ret
0000166B  3AC1              cmp al,cl
0000166D  7605              jna 0x1674
0000166F  91                xchg ax,cx
00001670  87DE              xchg bx,si
00001672  87D7              xchg dx,di
00001674  880E2402          mov [0x224],cl
00001678  2AC8              sub cl,al
0000167A  80F928            cmp cl,0x28
0000167D  7206              jc 0x1685
0000167F  8A0E2402          mov cl,[0x224]
00001683  EBDF              jmp short 0x1664
00001685  893E2002          mov [0x220],di
00001689  8026210280        and byte [0x221],0x80
0000168E  893E2202          mov [0x222],di
00001692  30362302          xor [0x223],dh
00001696  81CF0080          or di,0x8000
0000169A  80CE80            or dh,0x80
0000169D  80F910            cmp cl,0x10
000016A0  720B              jc 0x16ad
000016A2  8AE7              mov ah,bh
000016A4  8BDA              mov bx,dx
000016A6  33D2              xor dx,dx
000016A8  80E910            sub cl,0x10
000016AB  EBF0              jmp short 0x169d
000016AD  80F908            cmp cl,0x8
000016B0  720D              jc 0x16bf
000016B2  8AE3              mov ah,bl
000016B4  8ADF              mov bl,bh
000016B6  8AFA              mov bh,dl
000016B8  8AD6              mov dl,dh
000016BA  32F6              xor dh,dh
000016BC  80E908            sub cl,0x8
000016BF  0AC9              or cl,cl
000016C1  740A              jz 0x16cd
000016C3  D1EA              shr dx,1
000016C5  D1DB              rcr bx,1
000016C7  D0DC              rcr ah,1
000016C9  FEC9              dec cl
000016CB  75F6              jnz 0x16c3
000016CD  A02402            mov al,[0x224]
000016D0  F606230280        test byte [0x223],0x80
000016D5  7514              jnz 0x16eb
000016D7  02E5              add ah,ch
000016D9  13DE              adc bx,si
000016DB  13D7              adc dx,di
000016DD  735E              jnc 0x173d
000016DF  D1DA              rcr dx,1
000016E1  D1DB              rcr bx,1
000016E3  D0DC              rcr ah,1
000016E5  FEC0              inc al
000016E7  7554              jnz 0x173d
000016E9  F9                stc
000016EA  C3                ret
000016EB  86E5              xchg ah,ch
000016ED  87DE              xchg bx,si
000016EF  87D7              xchg dx,di
000016F1  2AE5              sub ah,ch
000016F3  1BDE              sbb bx,si
000016F5  1BD7              sbb dx,di
000016F7  7314              jnc 0x170d
000016F9  8036210280        xor byte [0x221],0x80
000016FE  F6D4              not ah
00001700  F7D3              not bx
00001702  F7D2              not dx
00001704  80C401            add ah,0x1
00001707  83D300            adc bx,byte +0x0
0000170A  83D200            adc dx,byte +0x0
0000170D  B105              mov cl,0x5
0000170F  0AF6              or dh,dh
00001711  7514              jnz 0x1727
00001713  8AF2              mov dh,dl
00001715  8AD7              mov dl,bh
00001717  8AFB              mov bh,bl
00001719  8ADC              mov bl,ah
0000171B  32E4              xor ah,ah
0000171D  2C08              sub al,0x8
0000171F  7215              jc 0x1736
00001721  FEC9              dec cl
00001723  75EA              jnz 0x170f
00001725  EB0F              jmp short 0x1736
00001727  F6C680            test dh,0x80
0000172A  7511              jnz 0x173d
0000172C  D0E4              shl ah,1
0000172E  D1D3              rcl bx,1
00001730  D1D2              rcl dx,1
00001732  FEC8              dec al
00001734  75F1              jnz 0x1727
00001736  33C0              xor ax,ax
00001738  33DB              xor bx,bx
0000173A  33D2              xor dx,dx
0000173C  C3                ret
0000173D  80E67F            and dh,0x7f
00001740  32362102          xor dh,[0x221]
00001744  C3                ret
00001745  0AC9              or cl,cl
00001747  746F              jz 0x17b8
00001749  0AC0              or al,al
0000174B  7471              jz 0x17be
0000174D  02C1              add al,cl
0000174F  E80401            call word 0x1856
00001752  A30E02            mov [0x20e],ax
00001755  891E1002          mov [0x210],bx
00001759  89161202          mov [0x212],dx
0000175D  32E4              xor ah,ah
0000175F  33DB              xor bx,bx
00001761  33D2              xor dx,dx
00001763  BF1402            mov di,0x214
00001766  B105              mov cl,0x5
00001768  47                inc di
00001769  8A2D              mov ch,[di]
0000176B  0AED              or ch,ch
0000176D  750C              jnz 0x177b
0000176F  8AE3              mov ah,bl
00001771  8ADF              mov bl,bh
00001773  8AFA              mov bh,dl
00001775  8AD6              mov dl,dh
00001777  32F6              xor dh,dh
00001779  EB1C              jmp short 0x1797
0000177B  BE0800            mov si,0x8
0000177E  D0DD              rcr ch,1
00001780  730C              jnc 0x178e
00001782  02260F02          add ah,[0x20f]
00001786  131E1002          adc bx,[0x210]
0000178A  13161202          adc dx,[0x212]
0000178E  D1DA              rcr dx,1
00001790  D1DB              rcr bx,1
00001792  D0DC              rcr ah,1
00001794  4E                dec si
00001795  75E7              jnz 0x177e
00001797  FEC9              dec cl
00001799  75CD              jnz 0x1768
0000179B  91                xchg ax,cx
0000179C  9F                lahf
0000179D  F6C680            test dh,0x80
000017A0  750D              jnz 0x17af
000017A2  9E                sahf
000017A3  D0D5              rcl ch,1
000017A5  D1D3              rcl bx,1
000017A7  D1D2              rcl dx,1
000017A9  0AC9              or cl,cl
000017AB  7402              jz 0x17af
000017AD  FEC9              dec cl
000017AF  91                xchg ax,cx
000017B0  32362102          xor dh,[0x221]
000017B4  0AC0              or al,al
000017B6  7506              jnz 0x17be
000017B8  33C0              xor ax,ax
000017BA  33DB              xor bx,bx
000017BC  33D2              xor dx,dx
000017BE  C3                ret
000017BF  0AC0              or al,al
000017C1  74FB              jz 0x17be
000017C3  2AC1              sub al,cl
000017C5  F5                cmc
000017C6  E88D00            call word 0x1856
000017C9  A20E02            mov [0x20e],al
000017CC  BF1302            mov di,0x213
000017CF  B105              mov cl,0x5
000017D1  BE0800            mov si,0x8
000017D4  3B161802          cmp dx,[0x218]
000017D8  750A              jnz 0x17e4
000017DA  3B1E1602          cmp bx,[0x216]
000017DE  7504              jnz 0x17e4
000017E0  3A261502          cmp ah,[0x215]
000017E4  720C              jc 0x17f2
000017E6  2A261502          sub ah,[0x215]
000017EA  1B1E1602          sbb bx,[0x216]
000017EE  1B161802          sbb dx,[0x218]
000017F2  F5                cmc
000017F3  D0D5              rcl ch,1
000017F5  4E                dec si
000017F6  750A              jnz 0x1802
000017F8  882D              mov [di],ch
000017FA  FEC9              dec cl
000017FC  741B              jz 0x1819
000017FE  4F                dec di
000017FF  BE0800            mov si,0x8
00001802  D0E4              shl ah,1
00001804  D1D3              rcl bx,1
00001806  D1D2              rcl dx,1
00001808  73CA              jnc 0x17d4
0000180A  2A261502          sub ah,[0x215]
0000180E  1B1E1602          sbb bx,[0x216]
00001812  1B161802          sbb dx,[0x218]
00001816  F8                clc
00001817  EBD9              jmp short 0x17f2
00001819  D0E4              shl ah,1
0000181B  D1D3              rcl bx,1
0000181D  D1D2              rcl dx,1
0000181F  7211              jc 0x1832
00001821  3B161802          cmp dx,[0x218]
00001825  750A              jnz 0x1831
00001827  3B1E1602          cmp bx,[0x216]
0000182B  7504              jnz 0x1831
0000182D  3A261502          cmp ah,[0x215]
00001831  F5                cmc
00001832  8B0E0E02          mov cx,[0x20e]
00001836  8B1E1002          mov bx,[0x210]
0000183A  8B161202          mov dx,[0x212]
0000183E  9F                lahf
0000183F  F6C680            test dh,0x80
00001842  7509              jnz 0x184d
00001844  9E                sahf
00001845  D0D5              rcl ch,1
00001847  D1D3              rcl bx,1
00001849  D1D2              rcl dx,1
0000184B  EB06              jmp short 0x1853
0000184D  FEC1              inc cl
0000184F  7502              jnz 0x1853
00001851  F9                stc
00001852  C3                ret
00001853  E959FF            jmp word 0x17af
00001856  720C              jc 0x1864
00001858  0480              add al,0x80
0000185A  720F              jc 0x186b
0000185C  5B                pop bx
0000185D  33C0              xor ax,ax
0000185F  33DB              xor bx,bx
00001861  33D2              xor dx,dx
00001863  C3                ret
00001864  0480              add al,0x80
00001866  7303              jnc 0x186b
00001868  5B                pop bx
00001869  F9                stc
0000186A  C3                ret
0000186B  890E1402          mov [0x214],cx
0000186F  8BCA              mov cx,dx
00001871  33CF              xor cx,di
00001873  F6D5              not ch
00001875  80E580            and ch,0x80
00001878  882E2102          mov [0x221],ch
0000187C  80CE80            or dh,0x80
0000187F  81CF0080          or di,0x8000
00001883  89361602          mov [0x216],si
00001887  893E1802          mov [0x218],di
0000188B  C3                ret
0000188C  57                push di
0000188D  56                push si
0000188E  51                push cx
0000188F  E8C0FD            call word 0x1652
00001892  59                pop cx
00001893  5E                pop si
00001894  5F                pop di
00001895  C3                ret
00001896  57                push di
00001897  56                push si
00001898  51                push cx
00001899  E8AEFD            call word 0x164a
0000189C  59                pop cx
0000189D  5E                pop si
0000189E  5F                pop di
0000189F  C3                ret
000018A0  57                push di
000018A1  56                push si
000018A2  51                push cx
000018A3  E89FFE            call word 0x1745
000018A6  59                pop cx
000018A7  5E                pop si
000018A8  5F                pop di
000018A9  C3                ret
000018AA  57                push di
000018AB  56                push si
000018AC  51                push cx
000018AD  E80FFF            call word 0x17bf
000018B0  59                pop cx
000018B1  5E                pop si
000018B2  5F                pop di
000018B3  C3                ret
000018B4  52                push dx
000018B5  33D7              xor dx,di
000018B7  5A                pop dx
000018B8  7905              jns 0x18bf
000018BA  52                push dx
000018BB  D1D2              rcl dx,1
000018BD  5A                pop dx
000018BE  C3                ret
000018BF  F6C680            test dh,0x80
000018C2  7407              jz 0x18cb
000018C4  E80400            call word 0x18cb
000018C7  7414              jz 0x18dd
000018C9  F5                cmc
000018CA  C3                ret
000018CB  3AC1              cmp al,cl
000018CD  750E              jnz 0x18dd
000018CF  0AC0              or al,al
000018D1  740A              jz 0x18dd
000018D3  3BD7              cmp dx,di
000018D5  7506              jnz 0x18dd
000018D7  3BDE              cmp bx,si
000018D9  7502              jnz 0x18dd
000018DB  3AE5              cmp ah,ch
000018DD  C3                ret
000018DE  0BC0              or ax,ax
000018E0  7505              jnz 0x18e7
000018E2  33DB              xor bx,bx
000018E4  33D2              xor dx,dx
000018E6  C3                ret
000018E7  8AFC              mov bh,ah
000018E9  8BD0              mov dx,ax
000018EB  0BD2              or dx,dx
000018ED  7902              jns 0x18f1
000018EF  F7DA              neg dx
000018F1  B89000            mov ax,0x90
000018F4  0AF6              or dh,dh
000018F6  7504              jnz 0x18fc
000018F8  B088              mov al,0x88
000018FA  86D6              xchg dl,dh
000018FC  0BD2              or dx,dx
000018FE  7806              js 0x1906
00001900  FEC8              dec al
00001902  D1E2              shl dx,1
00001904  79FA              jns 0x1900
00001906  0AFF              or bh,bh
00001908  7803              js 0x190d
0000190A  80E67F            and dh,0x7f
0000190D  33DB              xor bx,bx
0000190F  C3                ret
00001910  3CA8              cmp al,0xa8
00001912  7349              jnc 0x195d
00001914  8BC8              mov cx,ax
00001916  8BF3              mov si,bx
00001918  8BFA              mov di,dx
0000191A  32E4              xor ah,ah
0000191C  33DB              xor bx,bx
0000191E  33D2              xor dx,dx
00001920  80E980            sub cl,0x80
00001923  7639              jna 0x195e
00001925  80F910            cmp cl,0x10
00001928  720C              jc 0x1936
0000192A  8AE7              mov ah,bh
0000192C  8BDA              mov bx,dx
0000192E  BAFFFF            mov dx,0xffff
00001931  80E910            sub cl,0x10
00001934  EBEF              jmp short 0x1925
00001936  80F908            cmp cl,0x8
00001939  720D              jc 0x1948
0000193B  8AE3              mov ah,bl
0000193D  8ADF              mov bl,bh
0000193F  8AFA              mov bh,dl
00001941  8AD6              mov dl,dh
00001943  B6FF              mov dh,0xff
00001945  80E908            sub cl,0x8
00001948  0AC9              or cl,cl
0000194A  740B              jz 0x1957
0000194C  F9                stc
0000194D  D1DA              rcr dx,1
0000194F  D1DB              rcr bx,1
00001951  D0DC              rcr ah,1
00001953  FEC9              dec cl
00001955  75F5              jnz 0x194c
00001957  23D7              and dx,di
00001959  23DE              and bx,si
0000195B  22E5              and ah,ch
0000195D  C3                ret
0000195E  32C0              xor al,al
00001960  C3                ret
00001961  52                push dx
00001962  53                push bx
00001963  50                push ax
00001964  E8A9FF            call word 0x1910
00001967  8BC8              mov cx,ax
00001969  8BF3              mov si,bx
0000196B  8BFA              mov di,dx
0000196D  58                pop ax
0000196E  5B                pop bx
0000196F  5A                pop dx
00001970  E9D7FC            jmp word 0x164a
00001973  5B                pop bx
00001974  07                pop es
00001975  26FF7504          push word [es:di+0x4]
00001979  26FF7502          push word [es:di+0x2]
0000197D  26FF35            push word [es:di]
00001980  FFE3              jmp bx
00001982  5B                pop bx
00001983  2EFF7704          push word [cs:bx+0x4]
00001987  2EFF7702          push word [cs:bx+0x2]
0000198B  2EFF37            push word [cs:bx]
0000198E  83C306            add bx,byte +0x6
00001991  FFE3              jmp bx
00001993  5B                pop bx
00001994  58                pop ax
00001995  59                pop cx
00001996  5A                pop dx
00001997  5F                pop di
00001998  07                pop es
00001999  268905            mov [es:di],ax
0000199C  26894D02          mov [es:di+0x2],cx
000019A0  26895504          mov [es:di+0x4],dx
000019A4  FFE3              jmp bx
000019A6  8F068601          pop word [0x186]
000019AA  59                pop cx
000019AB  5E                pop si
000019AC  5F                pop di
000019AD  58                pop ax
000019AE  5B                pop bx
000019AF  5A                pop dx
000019B0  E89FFC            call word 0x1652
000019B3  7207              jc 0x19bc
000019B5  52                push dx
000019B6  53                push bx
000019B7  50                push ax
000019B8  FF268601          jmp word [0x186]
000019BC  B201              mov dl,0x1
000019BE  E97BF6            jmp word 0x103c
000019C1  8F068601          pop word [0x186]
000019C5  59                pop cx
000019C6  5E                pop si
000019C7  5F                pop di
000019C8  58                pop ax
000019C9  5B                pop bx
000019CA  5A                pop dx
000019CB  E87CFC            call word 0x164a
000019CE  EBE3              jmp short 0x19b3
000019D0  8F068601          pop word [0x186]
000019D4  59                pop cx
000019D5  5E                pop si
000019D6  5F                pop di
000019D7  58                pop ax
000019D8  5B                pop bx
000019D9  5A                pop dx
000019DA  E868FD            call word 0x1745
000019DD  EBD4              jmp short 0x19b3
000019DF  8F068601          pop word [0x186]
000019E3  59                pop cx
000019E4  5E                pop si
000019E5  5F                pop di
000019E6  58                pop ax
000019E7  5B                pop bx
000019E8  5A                pop dx
000019E9  0AC9              or cl,cl
000019EB  7405              jz 0x19f2
000019ED  E8CFFD            call word 0x17bf
000019F0  EBC1              jmp short 0x19b3
000019F2  B202              mov dl,0x2
000019F4  E945F6            jmp word 0x103c
000019F7  8BDC              mov bx,sp
000019F9  36807F0200        cmp byte [ss:bx+0x2],0x0
000019FE  7405              jz 0x1a05
00001A00  3680770780        xor byte [ss:bx+0x7],0x80
00001A05  C3                ret
00001A06  8BDC              mov bx,sp
00001A08  368067077F        and byte [ss:bx+0x7],0x7f
00001A0D  C3                ret
00001A0E  8F068601          pop word [0x186]
00001A12  59                pop cx
00001A13  5E                pop si
00001A14  5F                pop di
00001A15  58                pop ax
00001A16  5B                pop bx
00001A17  5A                pop dx
00001A18  E899FE            call word 0x18b4
00001A1B  FF368601          push word [0x186]
00001A1F  B80100            mov ax,0x1
00001A22  7401              jz 0x1a25
00001A24  48                dec ax
00001A25  0BC0              or ax,ax
00001A27  C3                ret
00001A28  8F068601          pop word [0x186]
00001A2C  59                pop cx
00001A2D  5E                pop si
00001A2E  5F                pop di
00001A2F  58                pop ax
00001A30  5B                pop bx
00001A31  5A                pop dx
00001A32  E87FFE            call word 0x18b4
00001A35  FF368601          push word [0x186]
00001A39  B80100            mov ax,0x1
00001A3C  7501              jnz 0x1a3f
00001A3E  48                dec ax
00001A3F  0BC0              or ax,ax
00001A41  C3                ret
00001A42  8F068601          pop word [0x186]
00001A46  59                pop cx
00001A47  5E                pop si
00001A48  5F                pop di
00001A49  58                pop ax
00001A4A  5B                pop bx
00001A4B  5A                pop dx
00001A4C  E865FE            call word 0x18b4
00001A4F  FF368601          push word [0x186]
00001A53  B80100            mov ax,0x1
00001A56  7301              jnc 0x1a59
00001A58  48                dec ax
00001A59  0BC0              or ax,ax
00001A5B  C3                ret
00001A5C  8F068601          pop word [0x186]
00001A60  59                pop cx
00001A61  5E                pop si
00001A62  5F                pop di
00001A63  58                pop ax
00001A64  5B                pop bx
00001A65  5A                pop dx
00001A66  E84BFE            call word 0x18b4
00001A69  FF368601          push word [0x186]
00001A6D  B80100            mov ax,0x1
00001A70  7601              jna 0x1a73
00001A72  48                dec ax
00001A73  0BC0              or ax,ax
00001A75  C3                ret
00001A76  8F068601          pop word [0x186]
00001A7A  59                pop cx
00001A7B  5E                pop si
00001A7C  5F                pop di
00001A7D  58                pop ax
00001A7E  5B                pop bx
00001A7F  5A                pop dx
00001A80  E831FE            call word 0x18b4
00001A83  FF368601          push word [0x186]
00001A87  B80100            mov ax,0x1
00001A8A  7701              ja 0x1a8d
00001A8C  48                dec ax
00001A8D  0BC0              or ax,ax
00001A8F  C3                ret
00001A90  8F068601          pop word [0x186]
00001A94  59                pop cx
00001A95  5E                pop si
00001A96  5F                pop di
00001A97  58                pop ax
00001A98  5B                pop bx
00001A99  5A                pop dx
00001A9A  E817FE            call word 0x18b4
00001A9D  FF368601          push word [0x186]
00001AA1  B80100            mov ax,0x1
00001AA4  7201              jc 0x1aa7
00001AA6  48                dec ax
00001AA7  0BC0              or ax,ax
00001AA9  C3                ret
00001AAA  8F068601          pop word [0x186]
00001AAE  58                pop ax
00001AAF  5B                pop bx
00001AB0  5A                pop dx
00001AB1  8BC8              mov cx,ax
00001AB3  8BF3              mov si,bx
00001AB5  8BFA              mov di,dx
00001AB7  E920FF            jmp word 0x19da
00001ABA  8F068601          pop word [0x186]
00001ABE  58                pop ax
00001ABF  5B                pop bx
00001AC0  5A                pop dx
00001AC1  E84CFE            call word 0x1910
00001AC4  E9EEFE            jmp word 0x19b5
00001AC7  8F068601          pop word [0x186]
00001ACB  58                pop ax
00001ACC  5B                pop bx
00001ACD  5A                pop dx
00001ACE  E890FE            call word 0x1961
00001AD1  E9E1FE            jmp word 0x19b5
00001AD4  E80FF6            call word 0x10e6
00001AD7  BA8000            mov dx,0x80
00001ADA  B020              mov al,0x20
00001ADC  F6C780            test bh,0x80
00001ADF  750C              jnz 0x1aed
00001AE1  D1E1              shl cx,1
00001AE3  D1D3              rcl bx,1
00001AE5  FECA              dec dl
00001AE7  FEC8              dec al
00001AE9  75F1              jnz 0x1adc
00001AEB  32D2              xor dl,dl
00001AED  80E77F            and bh,0x7f
00001AF0  58                pop ax
00001AF1  53                push bx
00001AF2  51                push cx
00001AF3  52                push dx
00001AF4  FFE0              jmp ax
00001AF6  B5FF              mov ch,0xff
00001AF8  EB02              jmp short 0x1afc
00001AFA  32ED              xor ch,ch
00001AFC  5B                pop bx
00001AFD  58                pop ax
00001AFE  5A                pop dx
00001AFF  5A                pop dx
00001B00  53                push bx
00001B01  92                xchg ax,dx
00001B02  B18F              mov cl,0x8f
00001B04  2ACA              sub cl,dl
00001B06  7222              jc 0x1b2a
00001B08  80F90F            cmp cl,0xf
00001B0B  771A              ja 0x1b27
00001B0D  FEC1              inc cl
00001B0F  8AFC              mov bh,ah
00001B11  80CC80            or ah,0x80
00001B14  D3E8              shr ax,cl
00001B16  7307              jnc 0x1b1f
00001B18  0AED              or ch,ch
00001B1A  7403              jz 0x1b1f
00001B1C  40                inc ax
00001B1D  780B              js 0x1b2a
00001B1F  F6C780            test bh,0x80
00001B22  7402              jz 0x1b26
00001B24  F7D8              neg ax
00001B26  C3                ret
00001B27  33C0              xor ax,ax
00001B29  C3                ret
00001B2A  B292              mov dl,0x92
00001B2C  E909F5            jmp word 0x1038
00001B2F  E8ACFD            call word 0x18de
00001B32  59                pop cx
00001B33  52                push dx
00001B34  53                push bx
00001B35  50                push ax
00001B36  FFE1              jmp cx
00001B38  8F068601          pop word [0x186]
00001B3C  59                pop cx
00001B3D  5E                pop si
00001B3E  5F                pop di
00001B3F  58                pop ax
00001B40  E89BFD            call word 0x18de
00001B43  52                push dx
00001B44  53                push bx
00001B45  50                push ax
00001B46  57                push di
00001B47  56                push si
00001B48  51                push cx
00001B49  FF268601          jmp word [0x186]
00001B4D  8F068601          pop word [0x186]
00001B51  58                pop ax
00001B52  5B                pop bx
00001B53  5A                pop dx
00001B54  8BC8              mov cx,ax
00001B56  8BF3              mov si,bx
00001B58  8BFA              mov di,dx
00001B5A  0AC0              or al,al
00001B5C  7441              jz 0x1b9f
00001B5E  F6C680            test dh,0x80
00001B61  7543              jnz 0x1ba6
00001B63  A31A02            mov [0x21a],ax
00001B66  891E1C02          mov [0x21c],bx
00001B6A  89161E02          mov [0x21e],dx
00001B6E  80C180            add cl,0x80
00001B71  D0F9              sar cl,1
00001B73  80C180            add cl,0x80
00001B76  8AC1              mov al,cl
00001B78  2C14              sub al,0x14
00001B7A  A22502            mov [0x225],al
00001B7D  A11A02            mov ax,[0x21a]
00001B80  8B1E1C02          mov bx,[0x21c]
00001B84  8B161E02          mov dx,[0x21e]
00001B88  E81FFD            call word 0x18aa
00001B8B  E8FEFC            call word 0x188c
00001B8E  FEC8              dec al
00001B90  52                push dx
00001B91  53                push bx
00001B92  50                push ax
00001B93  E8B4FA            call word 0x164a
00001B96  3A062502          cmp al,[0x225]
00001B9A  59                pop cx
00001B9B  5E                pop si
00001B9C  5F                pop di
00001B9D  73DE              jnc 0x1b7d
00001B9F  57                push di
00001BA0  56                push si
00001BA1  51                push cx
00001BA2  FF268601          jmp word [0x186]
00001BA6  B203              mov dl,0x3
00001BA8  E991F4            jmp word 0x103c
00001BAB  8F068601          pop word [0x186]
00001BAF  59                pop cx
00001BB0  5E                pop si
00001BB1  5F                pop di
00001BB2  B88121            mov ax,0x2181
00001BB5  BBA2DA            mov bx,0xdaa2
00001BB8  BA0F49            mov dx,0x490f
00001BBB  E88CFA            call word 0x164a
00001BBE  EB07              jmp short 0x1bc7
00001BC0  8F068601          pop word [0x186]
00001BC4  58                pop ax
00001BC5  5B                pop bx
00001BC6  5A                pop dx
00001BC7  3C6C              cmp al,0x6c
00001BC9  725B              jc 0x1c26
00001BCB  B98321            mov cx,0x2183
00001BCE  BEA2DA            mov si,0xdaa2
00001BD1  BF0F49            mov di,0x490f
00001BD4  52                push dx
00001BD5  80E67F            and dh,0x7f
00001BD8  E8D9FC            call word 0x18b4
00001BDB  5A                pop dx
00001BDC  720F              jc 0x1bed
00001BDE  E8C9FC            call word 0x18aa
00001BE1  57                push di
00001BE2  56                push si
00001BE3  51                push cx
00001BE4  E87AFD            call word 0x1961
00001BE7  59                pop cx
00001BE8  5E                pop si
00001BE9  5F                pop di
00001BEA  E8B3FC            call word 0x18a0
00001BED  F6C680            test dh,0x80
00001BF0  7403              jz 0x1bf5
00001BF2  E897FC            call word 0x188c
00001BF5  FEC9              dec cl
00001BF7  E8BAFC            call word 0x18b4
00001BFA  9C                pushfw
00001BFB  7203              jc 0x1c00
00001BFD  E896FC            call word 0x1896
00001C00  FEC9              dec cl
00001C02  E8AFFC            call word 0x18b4
00001C05  7208              jc 0x1c0f
00001C07  FEC1              inc cl
00001C09  80CE80            or dh,0x80
00001C0C  E843FA            call word 0x1652
00001C0F  3C6C              cmp al,0x6c
00001C11  7209              jc 0x1c1c
00001C13  BF291C            mov di,0x1c29
00001C16  B90700            mov cx,0x7
00001C19  E8C602            call word 0x1ee2
00001C1C  9D                popfw
00001C1D  7207              jc 0x1c26
00001C1F  0AC0              or al,al
00001C21  7403              jz 0x1c26
00001C23  80F680            xor dh,0x80
00001C26  E98CFD            jmp word 0x19b5
00001C29  58                pop ax
00001C2A  9D                popfw
00001C2B  399F3FD7          cmp [bx-0x28c1],bx
00001C2F  60                pushaw
00001C30  43                inc bx
00001C31  9D                popfw
00001C32  30923067          xor [bp+si+0x6730],dl
00001C36  AA                stosb
00001C37  3F                aas
00001C38  2832              sub [bp+si],dh
00001C3A  D7                xlatb
00001C3B  6E                outsb
00001C3C  B62A              mov dh,0x2a
00001C3E  1DEF38            sbb ax,0x38ef
00001C41  740D              jz 0x1c50
00001C43  D000              rol byte [bx+si],1
00001C45  0DD07A            or ax,0x7ad0
00001C48  88888888          mov [bx+si-0x7778],cl
00001C4C  087EAB            or [bp-0x55],bh
00001C4F  AA                stosb
00001C50  AA                stosb
00001C51  AA                stosb
00001C52  AA                stosb
00001C53  8F068601          pop word [0x186]
00001C57  58                pop ax
00001C58  5B                pop bx
00001C59  5A                pop dx
00001C5A  0AC0              or al,al
00001C5C  7405              jz 0x1c63
00001C5E  F6C680            test dh,0x80
00001C61  7405              jz 0x1c68
00001C63  B204              mov dl,0x4
00001C65  E9D4F3            jmp word 0x103c
00001C68  8AEC              mov ch,ah
00001C6A  B181              mov cl,0x81
00001C6C  2AC1              sub al,cl
00001C6E  98                cbw
00001C6F  50                push ax
00001C70  91                xchg ax,cx
00001C71  B980FB            mov cx,0xfb80
00001C74  BE33F3            mov si,0xf333
00001C77  BF0435            mov di,0x3504
00001C7A  E8C8FA            call word 0x1745
00001C7D  8BC8              mov cx,ax
00001C7F  8BF3              mov si,bx
00001C81  8BFA              mov di,dx
00001C83  B88100            mov ax,0x81
00001C86  33DB              xor bx,bx
00001C88  33D2              xor dx,dx
00001C8A  E8FFFB            call word 0x188c
00001C8D  52                push dx
00001C8E  53                push bx
00001C8F  50                push ax
00001C90  B88100            mov ax,0x81
00001C93  33DB              xor bx,bx
00001C95  BA0080            mov dx,0x8000
00001C98  E8B7F9            call word 0x1652
00001C9B  59                pop cx
00001C9C  5E                pop si
00001C9D  5F                pop di
00001C9E  E81EFB            call word 0x17bf
00001CA1  BFDF1C            mov di,0x1cdf
00001CA4  B90600            mov cx,0x6
00001CA7  E83802            call word 0x1ee2
00001CAA  FEC0              inc al
00001CAC  B97FD2            mov cx,0xd27f
00001CAF  BEF717            mov si,0x17f7
00001CB2  BF7231            mov di,0x3172
00001CB5  E89AF9            call word 0x1652
00001CB8  59                pop cx
00001CB9  52                push dx
00001CBA  53                push bx
00001CBB  50                push ax
00001CBC  91                xchg ax,cx
00001CBD  E81EFC            call word 0x18de
00001CC0  B980D2            mov cx,0xd280
00001CC3  BEF717            mov si,0x17f7
00001CC6  BF7231            mov di,0x3172
00001CC9  E879FA            call word 0x1745
00001CCC  59                pop cx
00001CCD  5E                pop si
00001CCE  5F                pop di
00001CCF  E880F9            call word 0x1652
00001CD2  3C67              cmp al,0x67
00001CD4  7306              jnc 0x1cdc
00001CD6  33C0              xor ax,ax
00001CD8  33DB              xor bx,bx
00001CDA  33D2              xor dx,dx
00001CDC  E9D6FC            jmp word 0x19b5
00001CDF  7D8A              jnl 0x1c6b
00001CE1  9D                popfw
00001CE2  D8891D7D          fmul dword [bx+di+0x7d1d]
00001CE6  E9A28B            jmp word 0xa88b
00001CE9  2E3A7D8E          cmp bh,[cs:di-0x72]
00001CED  E338              jcxz 0x1d27
00001CEF  8E637E            mov fs,[bp+di+0x7e]
00001CF2  49                dec cx
00001CF3  92                xchg ax,dx
00001CF4  2449              and al,0x49
00001CF6  127ECD            adc bh,[bp-0x33]
00001CF9  CC                int3
00001CFA  CC                int3
00001CFB  CC                int3
00001CFC  4C                dec sp
00001CFD  7FAB              jg 0x1caa
00001CFF  AA                stosb
00001D00  AA                stosb
00001D01  AA                stosb
00001D02  2A8F0686          sub cl,[bx-0x79fa]
00001D06  01585B            add [bx+si+0x5b],bx
00001D09  5A                pop dx
00001D0A  F6C680            test dh,0x80
00001D0D  9C                pushfw
00001D0E  80E67F            and dh,0x7f
00001D11  B980D2            mov cx,0xd280
00001D14  BEF717            mov si,0x17f7
00001D17  BF7231            mov di,0x3172
00001D1A  E8A2FA            call word 0x17bf
00001D1D  3C88              cmp al,0x88
00001D1F  7355              jnc 0x1d76
00001D21  52                push dx
00001D22  53                push bx
00001D23  50                push ax
00001D24  FEC0              inc al
00001D26  B5FF              mov ch,0xff
00001D28  E8D6FD            call word 0x1b01
00001D2B  59                pop cx
00001D2C  5E                pop si
00001D2D  5F                pop di
00001D2E  50                push ax
00001D2F  E8ACFB            call word 0x18de
00001D32  0AC0              or al,al
00001D34  7402              jz 0x1d38
00001D36  FEC8              dec al
00001D38  91                xchg ax,cx
00001D39  87DE              xchg bx,si
00001D3B  87D7              xchg dx,di
00001D3D  E80AF9            call word 0x164a
00001D40  BF7C1D            mov di,0x1d7c
00001D43  B90800            mov cx,0x8
00001D46  E8B201            call word 0x1efb
00001D49  59                pop cx
00001D4A  D1E9              shr cx,1
00001D4C  730E              jnc 0x1d5c
00001D4E  51                push cx
00001D4F  B981FB            mov cx,0xfb81
00001D52  BE33F3            mov si,0xf333
00001D55  BF0435            mov di,0x3504
00001D58  E8EAF9            call word 0x1745
00001D5B  59                pop cx
00001D5C  02C1              add al,cl
00001D5E  7216              jc 0x1d76
00001D60  9D                popfw
00001D61  7410              jz 0x1d73
00001D63  8BC8              mov cx,ax
00001D65  8BF3              mov si,bx
00001D67  8BFA              mov di,dx
00001D69  B88100            mov ax,0x81
00001D6C  33DB              xor bx,bx
00001D6E  33D2              xor dx,dx
00001D70  E84CFA            call word 0x17bf
00001D73  E93FFC            jmp word 0x19b5
00001D76  58                pop ax
00001D77  B201              mov dl,0x1
00001D79  E9C0F2            jmp word 0x103c
00001D7C  6D                insw
00001D7D  2E1D1160          cs sbb ax,0x6011
00001D81  317046            xor [bx+si+0x46],si
00001D84  2CFE              sub al,0xfe
00001D86  E57F              in ax,0x7f
00001D88  7436              jz 0x1dc0
00001D8A  7C89              jl 0x1d15
00001D8C  8421              test [bx+di],ah
00001D8E  7753              ja 0x1de3
00001D90  3CFF              cmp al,0xff
00001D92  C3                ret
00001D93  2E7AD2            cs jpe 0x1d68
00001D96  7D5B              jnl 0x1df3
00001D98  95                xchg ax,bp
00001D99  1D7C25            sbb ax,0x257c
00001D9C  B84658            mov ax,0x5846
00001D9F  637E16            arpl [bp+0x16],di
00001DA2  FC                cld
00001DA3  EF                out dx,ax
00001DA4  FD                std
00001DA5  7580              jnz 0x1d27
00001DA7  D2                db 0xd2
00001DA8  F717              not word [bx]
00001DAA  7231              jc 0x1ddd
00001DAC  8F068601          pop word [0x186]
00001DB0  58                pop ax
00001DB1  5B                pop bx
00001DB2  5A                pop dx
00001DB3  0AC0              or al,al
00001DB5  74BC              jz 0x1d73
00001DB7  33C9              xor cx,cx
00001DB9  F6C680            test dh,0x80
00001DBC  7404              jz 0x1dc2
00001DBE  41                inc cx
00001DBF  80E67F            and dh,0x7f
00001DC2  51                push cx
00001DC3  B98100            mov cx,0x81
00001DC6  33F6              xor si,si
00001DC8  33FF              xor di,di
00001DCA  E8E7FA            call word 0x18b4
00001DCD  720C              jc 0x1ddb
00001DCF  91                xchg ax,cx
00001DD0  87DE              xchg bx,si
00001DD2  87D7              xchg dx,di
00001DD4  E8E8F9            call word 0x17bf
00001DD7  59                pop cx
00001DD8  41                inc cx
00001DD9  41                inc cx
00001DDA  51                push cx
00001DDB  B97E4A            mov cx,0x4a7e
00001DDE  BE8EE9            mov si,0xe98e
00001DE1  BF6F0C            mov di,0xc6f
00001DE4  E8CDFA            call word 0x18b4
00001DE7  7305              jnc 0x1dee
00001DE9  E8F000            call word 0x1edc
00001DEC  EB7B              jmp short 0x1e69
00001DEE  BF8E1E            mov di,0x1e8e
00001DF1  B90200            mov cx,0x2
00001DF4  51                push cx
00001DF5  57                push di
00001DF6  2E8B0D            mov cx,[cs:di]
00001DF9  2E8B7502          mov si,[cs:di+0x2]
00001DFD  2E8B7D04          mov di,[cs:di+0x4]
00001E01  E8B0FA            call word 0x18b4
00001E04  5F                pop di
00001E05  59                pop cx
00001E06  7208              jc 0x1e10
00001E08  83C712            add di,byte +0x12
00001E0B  E2E7              loop 0x1df4
00001E0D  83EF06            sub di,byte +0x6
00001E10  83C706            add di,byte +0x6
00001E13  A31A02            mov [0x21a],ax
00001E16  891E1C02          mov [0x21c],bx
00001E1A  89161E02          mov [0x21e],dx
00001E1E  57                push di
00001E1F  2E8B0D            mov cx,[cs:di]
00001E22  2E8B7502          mov si,[cs:di+0x2]
00001E26  2E8B7D04          mov di,[cs:di+0x4]
00001E2A  E869FA            call word 0x1896
00001E2D  52                push dx
00001E2E  53                push bx
00001E2F  50                push ax
00001E30  A11A02            mov ax,[0x21a]
00001E33  8B1E1C02          mov bx,[0x21c]
00001E37  8B161E02          mov dx,[0x21e]
00001E3B  E807F9            call word 0x1745
00001E3E  B98100            mov cx,0x81
00001E41  33F6              xor si,si
00001E43  33FF              xor di,di
00001E45  E80AF8            call word 0x1652
00001E48  8BC8              mov cx,ax
00001E4A  8BF3              mov si,bx
00001E4C  8BFA              mov di,dx
00001E4E  58                pop ax
00001E4F  5B                pop bx
00001E50  5A                pop dx
00001E51  E86BF9            call word 0x17bf
00001E54  E88500            call word 0x1edc
00001E57  5F                pop di
00001E58  83C706            add di,byte +0x6
00001E5B  2E8B0D            mov cx,[cs:di]
00001E5E  2E8B7502          mov si,[cs:di+0x2]
00001E62  2E8B7D04          mov di,[cs:di+0x4]
00001E66  E8E9F7            call word 0x1652
00001E69  59                pop cx
00001E6A  F6C102            test cl,0x2
00001E6D  7414              jz 0x1e83
00001E6F  51                push cx
00001E70  8BC8              mov cx,ax
00001E72  8BF3              mov si,bx
00001E74  8BFA              mov di,dx
00001E76  B88121            mov ax,0x2181
00001E79  BBA2DA            mov bx,0xdaa2
00001E7C  BA0F49            mov dx,0x490f
00001E7F  E8C8F7            call word 0x164a
00001E82  59                pop cx
00001E83  F6C101            test cl,0x1
00001E86  7403              jz 0x1e8b
00001E88  80CE80            or dh,0x80
00001E8B  E927FB            jmp word 0x19b5
00001E8E  7FE7              jg 0x1e77
00001E90  CF                iretw
00001E91  CC                int3
00001E92  13547F            adc dx,[si+0x7f]
00001E95  F6F4              div ah
00001E97  A23009            mov [0x930],al
00001E9A  7F6A              jg 0x1f06
00001E9C  C1910A0680        rcl word [bx+di+0x60a],byte 0x80
00001EA1  B59E              mov ch,0x9e
00001EA3  8A6F44            mov ch,[bx+0x44]
00001EA6  80822C3ACD        add byte [bp+si+0x3a2c],0xcd
00001EAB  13806AC1          adc ax,[bx+si-0x3e96]
00001EAF  91                xchg ax,cx
00001EB0  0A068100          or al,[0x81]
00001EB4  0000              add [bx+si],al
00001EB6  0000              add [bx+si],al
00001EB8  8021A2            and byte [bx+di],0xa2
00001EBB  DA0F              fimul dword [bx]
00001EBD  49                dec cx
00001EBE  7DE8              jnl 0x1ea8
00001EC0  A28B2E            mov [0x2e8b],al
00001EC3  BA7D8E            mov dx,0x8e7d
00001EC6  E338              jcxz 0x1f00
00001EC8  8E637E            mov fs,[bp+di+0x7e]
00001ECB  49                dec cx
00001ECC  92                xchg ax,dx
00001ECD  2449              and al,0x49
00001ECF  92                xchg ax,dx
00001ED0  7ECD              jng 0x1e9f
00001ED2  CC                int3
00001ED3  CC                int3
00001ED4  CC                int3
00001ED5  4C                dec sp
00001ED6  7FAB              jg 0x1e83
00001ED8  AA                stosb
00001ED9  AA                stosb
00001EDA  AA                stosb
00001EDB  AA                stosb
00001EDC  BFBE1E            mov di,0x1ebe
00001EDF  B90500            mov cx,0x5
00001EE2  52                push dx
00001EE3  53                push bx
00001EE4  50                push ax
00001EE5  51                push cx
00001EE6  57                push di
00001EE7  8BC8              mov cx,ax
00001EE9  8BF3              mov si,bx
00001EEB  8BFA              mov di,dx
00001EED  E855F8            call word 0x1745
00001EF0  5F                pop di
00001EF1  59                pop cx
00001EF2  E80600            call word 0x1efb
00001EF5  59                pop cx
00001EF6  5E                pop si
00001EF7  5F                pop di
00001EF8  E94AF8            jmp word 0x1745
00001EFB  A31A02            mov [0x21a],ax
00001EFE  891E1C02          mov [0x21c],bx
00001F02  89161E02          mov [0x21e],dx
00001F06  2E8B05            mov ax,[cs:di]
00001F09  2E8B5D02          mov bx,[cs:di+0x2]
00001F0D  2E8B5504          mov dx,[cs:di+0x4]
00001F11  51                push cx
00001F12  57                push di
00001F13  EB10              jmp short 0x1f25
00001F15  51                push cx
00001F16  57                push di
00001F17  2E8B0D            mov cx,[cs:di]
00001F1A  2E8B7502          mov si,[cs:di+0x2]
00001F1E  2E8B7D04          mov di,[cs:di+0x4]
00001F22  E82DF7            call word 0x1652
00001F25  8B0E1A02          mov cx,[0x21a]
00001F29  8B361C02          mov si,[0x21c]
00001F2D  8B3E1E02          mov di,[0x21e]
00001F31  E811F8            call word 0x1745
00001F34  5F                pop di
00001F35  59                pop cx
00001F36  83C706            add di,byte +0x6
00001F39  E2DA              loop 0x1f15
00001F3B  B98100            mov cx,0x81
00001F3E  33F6              xor si,si
00001F40  33FF              xor di,di
00001F42  E90DF7            jmp word 0x1652
00001F45  53                push bx
00001F46  83FA19            cmp dx,byte +0x19
00001F49  7221              jc 0x1f6c
00001F4B  8BC1              mov ax,cx
00001F4D  E879EB            call word 0xac9
00001F50  B207              mov dl,0x7
00001F52  F6450580          test byte [di+0x5],0x80
00001F56  7402              jz 0x1f5a
00001F58  FEC2              inc dl
00001F5A  2AC2              sub al,dl
00001F5C  7302              jnc 0x1f60
00001F5E  32C0              xor al,al
00001F60  3C09              cmp al,0x9
00001F62  7202              jc 0x1f66
00001F64  B009              mov al,0x9
00001F66  FEC0              inc al
00001F68  8AD0              mov dl,al
00001F6A  8AF0              mov dh,al
00001F6C  52                push dx
00001F6D  E89900            call word 0x2009
00001F70  5A                pop dx
00001F71  8AC2              mov al,dl
00001F73  FEC0              inc al
00001F75  0AF6              or dh,dh
00001F77  7511              jnz 0x1f8a
00001F79  02C1              add al,cl
00001F7B  7907              jns 0x1f84
00001F7D  C606260200        mov byte [0x226],0x0
00001F82  EB09              jmp short 0x1f8d
00001F84  3C0C              cmp al,0xc
00001F86  7202              jc 0x1f8a
00001F88  B00B              mov al,0xb
00001F8A  E81601            call word 0x20a3
00001F8D  5B                pop bx
00001F8E  BE2602            mov si,0x226
00001F91  F6C580            test ch,0x80
00001F94  7405              jz 0x1f9b
00001F96  B02D              mov al,0x2d
00001F98  E86A00            call word 0x2005
00001F9B  8AE9              mov ch,cl
00001F9D  0AF6              or dh,dh
00001F9F  7402              jz 0x1fa3
00001FA1  B500              mov ch,0x0
00001FA3  0AED              or ch,ch
00001FA5  7905              jns 0x1fac
00001FA7  E85900            call word 0x2003
00001FAA  EB07              jmp short 0x1fb3
00001FAC  E84B00            call word 0x1ffa
00001FAF  FECD              dec ch
00001FB1  79F9              jns 0x1fac
00001FB3  0AD2              or dl,dl
00001FB5  7419              jz 0x1fd0
00001FB7  B02E              mov al,0x2e
00001FB9  E84900            call word 0x2005
00001FBC  FEC5              inc ch
00001FBE  7407              jz 0x1fc7
00001FC0  E84000            call word 0x2003
00001FC3  FECA              dec dl
00001FC5  75F5              jnz 0x1fbc
00001FC7  FECA              dec dl
00001FC9  7805              js 0x1fd0
00001FCB  E82C00            call word 0x1ffa
00001FCE  EBF7              jmp short 0x1fc7
00001FD0  0AF6              or dh,dh
00001FD2  7501              jnz 0x1fd5
00001FD4  C3                ret
00001FD5  B045              mov al,0x45
00001FD7  E82B00            call word 0x2005
00001FDA  B02B              mov al,0x2b
00001FDC  0AC9              or cl,cl
00001FDE  7904              jns 0x1fe4
00001FE0  F6D9              neg cl
00001FE2  B02D              mov al,0x2d
00001FE4  E81E00            call word 0x2005
00001FE7  B02F              mov al,0x2f
00001FE9  FEC0              inc al
00001FEB  80E90A            sub cl,0xa
00001FEE  73F9              jnc 0x1fe9
00001FF0  E81200            call word 0x2005
00001FF3  80C13A            add cl,0x3a
00001FF6  8AC1              mov al,cl
00001FF8  EB0B              jmp short 0x2005
00001FFA  8A04              mov al,[si]
00001FFC  0AC0              or al,al
00001FFE  7403              jz 0x2003
00002000  46                inc si
00002001  EB02              jmp short 0x2005
00002003  B030              mov al,0x30
00002005  8807              mov [bx],al
00002007  43                inc bx
00002008  C3                ret
00002009  8B05              mov ax,[di]
0000200B  8B5D02            mov bx,[di+0x2]
0000200E  8B5504            mov dx,[di+0x4]
00002011  0AC0              or al,al
00002013  7513              jnz 0x2028
00002015  BE2602            mov si,0x226
00002018  C7043030          mov word [si],0x3030
0000201C  46                inc si
0000201D  46                inc si
0000201E  81FE3202          cmp si,0x232
00002022  75F4              jnz 0x2018
00002024  B90000            mov cx,0x0
00002027  C3                ret
00002028  8AEE              mov ch,dh
0000202A  80E67F            and dh,0x7f
0000202D  50                push ax
0000202E  52                push dx
0000202F  2C80              sub al,0x80
00002031  98                cbw
00002032  BA4D00            mov dx,0x4d
00002035  F7EA              imul dx
00002037  050500            add ax,0x5
0000203A  8ACC              mov cl,ah
0000203C  5A                pop dx
0000203D  58                pop ax
0000203E  80F9D9            cmp cl,0xd9
00002041  7502              jnz 0x2045
00002043  FEC1              inc cl
00002045  51                push cx
00002046  F6D9              neg cl
00002048  E87601            call word 0x21c1
0000204B  59                pop cx
0000204C  3C81              cmp al,0x81
0000204E  7305              jnc 0x2055
00002050  E8F501            call word 0x2248
00002053  FEC9              dec cl
00002055  51                push cx
00002056  80CE80            or dh,0x80
00002059  B184              mov cl,0x84
0000205B  2AC8              sub cl,al
0000205D  B000              mov al,0x0
0000205F  740A              jz 0x206b
00002061  D1EA              shr dx,1
00002063  D1DB              rcr bx,1
00002065  D1D8              rcr ax,1
00002067  FEC9              dec cl
00002069  75F6              jnz 0x2061
0000206B  BE2602            mov si,0x226
0000206E  8AEE              mov ch,dh
00002070  B104              mov cl,0x4
00002072  D2ED              shr ch,cl
00002074  80C530            add ch,0x30
00002077  882C              mov [si],ch
00002079  80E60F            and dh,0xf
0000207C  52                push dx
0000207D  53                push bx
0000207E  50                push ax
0000207F  D1E0              shl ax,1
00002081  D1D3              rcl bx,1
00002083  D1D2              rcl dx,1
00002085  D1E0              shl ax,1
00002087  D1D3              rcl bx,1
00002089  D1D2              rcl dx,1
0000208B  59                pop cx
0000208C  03C1              add ax,cx
0000208E  59                pop cx
0000208F  13D9              adc bx,cx
00002091  59                pop cx
00002092  13D1              adc dx,cx
00002094  D1E0              shl ax,1
00002096  D1D3              rcl bx,1
00002098  D1D2              rcl dx,1
0000209A  46                inc si
0000209B  81FE3202          cmp si,0x232
0000209F  75CD              jnz 0x206e
000020A1  59                pop cx
000020A2  C3                ret
000020A3  32E4              xor ah,ah
000020A5  BB2602            mov bx,0x226
000020A8  03D8              add bx,ax
000020AA  803F35            cmp byte [bx],0x35
000020AD  C60700            mov byte [bx],0x0
000020B0  721A              jc 0x20cc
000020B2  FEC8              dec al
000020B4  780D              js 0x20c3
000020B6  4B                dec bx
000020B7  FE07              inc byte [bx]
000020B9  803F3A            cmp byte [bx],0x3a
000020BC  720E              jc 0x20cc
000020BE  C60700            mov byte [bx],0x0
000020C1  EBEF              jmp short 0x20b2
000020C3  C60731            mov byte [bx],0x31
000020C6  C6470100          mov byte [bx+0x1],0x0
000020CA  FEC1              inc cl
000020CC  C3                ret
000020CD  8A0F              mov cl,[bx]
000020CF  80F92D            cmp cl,0x2d
000020D2  7501              jnz 0x20d5
000020D4  43                inc bx
000020D5  51                push cx
000020D6  E81300            call word 0x20ec
000020D9  59                pop cx
000020DA  720F              jc 0x20eb
000020DC  80F92D            cmp cl,0x2d
000020DF  7509              jnz 0x20ea
000020E1  803D00            cmp byte [di],0x0
000020E4  7404              jz 0x20ea
000020E6  80750580          xor byte [di+0x5],0x80
000020EA  F8                clc
000020EB  C3                ret
000020EC  8BF3              mov si,bx
000020EE  33C0              xor ax,ax
000020F0  33DB              xor bx,bx
000020F2  33D2              xor dx,dx
000020F4  33C9              xor cx,cx
000020F6  C606250200        mov byte [0x225],0x0
000020FB  8A0C              mov cl,[si]
000020FD  80F961            cmp cl,0x61
00002100  7208              jc 0x210a
00002102  80F97A            cmp cl,0x7a
00002105  7703              ja 0x210a
00002107  80E920            sub cl,0x20
0000210A  E8A500            call word 0x21b2
0000210D  7226              jc 0x2135
0000210F  E83601            call word 0x2248
00002112  7232              jc 0x2146
00002114  57                push di
00002115  56                push si
00002116  51                push cx
00002117  52                push dx
00002118  53                push bx
00002119  50                push ax
0000211A  8AC1              mov al,cl
0000211C  32E4              xor ah,ah
0000211E  E8BDF7            call word 0x18de
00002121  59                pop cx
00002122  5E                pop si
00002123  5F                pop di
00002124  E82BF5            call word 0x1652
00002127  59                pop cx
00002128  5E                pop si
00002129  5F                pop di
0000212A  F6C540            test ch,0x40
0000212D  7414              jz 0x2143
0000212F  FE0E2502          dec byte [0x225]
00002133  EB0E              jmp short 0x2143
00002135  80F92E            cmp cl,0x2e
00002138  750F              jnz 0x2149
0000213A  F6C540            test ch,0x40
0000213D  F9                stc
0000213E  7506              jnz 0x2146
00002140  80CD40            or ch,0x40
00002143  46                inc si
00002144  EBB5              jmp short 0x20fb
00002146  8BDE              mov bx,si
00002148  C3                ret
00002149  80F945            cmp cl,0x45
0000214C  8A0E2502          mov cl,[0x225]
00002150  753B              jnz 0x218d
00002152  E84500            call word 0x219a
00002155  72EF              jc 0x2146
00002157  46                inc si
00002158  8A0C              mov cl,[si]
0000215A  80F92B            cmp cl,0x2b
0000215D  7408              jz 0x2167
0000215F  80F92D            cmp cl,0x2d
00002162  7504              jnz 0x2168
00002164  80CD20            or ch,0x20
00002167  46                inc si
00002168  E84500            call word 0x21b0
0000216B  72D9              jc 0x2146
0000216D  50                push ax
0000216E  8AC1              mov al,cl
00002170  46                inc si
00002171  E83C00            call word 0x21b0
00002174  720D              jc 0x2183
00002176  8AE0              mov ah,al
00002178  D0E0              shl al,1
0000217A  D0E0              shl al,1
0000217C  02C4              add al,ah
0000217E  D0E0              shl al,1
00002180  02C1              add al,cl
00002182  46                inc si
00002183  8AC8              mov cl,al
00002185  58                pop ax
00002186  F6C520            test ch,0x20
00002189  7402              jz 0x218d
0000218B  F6D9              neg cl
0000218D  E80A00            call word 0x219a
00002190  8905              mov [di],ax
00002192  895D02            mov [di+0x2],bx
00002195  895504            mov [di+0x4],dx
00002198  EBAC              jmp short 0x2146
0000219A  80F9DA            cmp cl,0xda
0000219D  7C0F              jl 0x21ae
0000219F  80F926            cmp cl,0x26
000021A2  7F0A              jg 0x21ae
000021A4  51                push cx
000021A5  56                push si
000021A6  57                push di
000021A7  E81700            call word 0x21c1
000021AA  5F                pop di
000021AB  5E                pop si
000021AC  59                pop cx
000021AD  C3                ret
000021AE  F9                stc
000021AF  C3                ret
000021B0  8A0C              mov cl,[si]
000021B2  80F930            cmp cl,0x30
000021B5  7209              jc 0x21c0
000021B7  80F93A            cmp cl,0x3a
000021BA  F5                cmc
000021BB  7203              jc 0x21c0
000021BD  80E930            sub cl,0x30
000021C0  C3                ret
000021C1  52                push dx
000021C2  53                push bx
000021C3  50                push ax
000021C4  880E2402          mov [0x224],cl
000021C8  0AC9              or cl,cl
000021CA  7902              jns 0x21ce
000021CC  F6D9              neg cl
000021CE  8AD9              mov bl,cl
000021D0  80E3FC            and bl,0xfc
000021D3  8AFB              mov bh,bl
000021D5  D0EB              shr bl,1
000021D7  02DF              add bl,bh
000021D9  32FF              xor bh,bh
000021DB  8DBF0C22          lea di,[bx+0x220c]
000021DF  2E8B05            mov ax,[cs:di]
000021E2  2E8B5D02          mov bx,[cs:di+0x2]
000021E6  2E8B5504          mov dx,[cs:di+0x4]
000021EA  80E103            and cl,0x3
000021ED  7407              jz 0x21f6
000021EF  E85600            call word 0x2248
000021F2  FEC9              dec cl
000021F4  75F9              jnz 0x21ef
000021F6  8BC8              mov cx,ax
000021F8  8BF3              mov si,bx
000021FA  8BFA              mov di,dx
000021FC  58                pop ax
000021FD  5B                pop bx
000021FE  5A                pop dx
000021FF  F606240280        test byte [0x224],0x80
00002204  7503              jnz 0x2209
00002206  E93CF5            jmp word 0x1745
00002209  E9B3F5            jmp word 0x17bf
0000220C  81000000          add word [bx+si],0x0
00002210  0000              add [bx+si],al
00002212  8E00              mov es,[bx+si]
00002214  0000              add [bx+si],al
00002216  40                inc ax
00002217  1C9B              sbb al,0x9b
00002219  0000              add [bx+si],al
0000221B  20BC3EA8          and [si-0x57c2],bh
0000221F  0010              add [bx+si],dl
00002221  A5                movsw
00002222  D468              aam 0x68
00002224  B604              mov dh,0x4
00002226  BFC91B            mov di,0x1bc9
00002229  0E                push cs
0000222A  C3                ret
0000222B  AC                lodsb
0000222C  C5                db 0xc5
0000222D  EB78              jmp short 0x22a7
0000222F  2DD0CD            sub ax,0xcdd0
00002232  CE                into
00002233  1BC2              sbb ax,dx
00002235  53                push bx
00002236  DEF9              fdivp st1
00002238  7839              js 0x2273
0000223A  3F                aas
0000223B  01EB              add bx,bp
0000223D  2BA8ADC5          sub bp,[bx+si-0x3a53]
00002241  1DF8C9            sbb ax,0xc9f8
00002244  7BCE              jpo 0x2214
00002246  97                xchg ax,di
00002247  40                inc ax
00002248  0AC0              or al,al
0000224A  7501              jnz 0x224d
0000224C  C3                ret
0000224D  80CE80            or dh,0x80
00002250  51                push cx
00002251  52                push dx
00002252  53                push bx
00002253  50                push ax
00002254  D1EA              shr dx,1
00002256  D1DB              rcr bx,1
00002258  D0DC              rcr ah,1
0000225A  D1EA              shr dx,1
0000225C  D1DB              rcr bx,1
0000225E  D0DC              rcr ah,1
00002260  59                pop cx
00002261  02E5              add ah,ch
00002263  59                pop cx
00002264  13D9              adc bx,cx
00002266  59                pop cx
00002267  13D1              adc dx,cx
00002269  59                pop cx
0000226A  730C              jnc 0x2278
0000226C  D1DA              rcr dx,1
0000226E  D1DB              rcr bx,1
00002270  D0DC              rcr ah,1
00002272  FEC0              inc al
00002274  7502              jnz 0x2278
00002276  F9                stc
00002277  C3                ret
00002278  80E67F            and dh,0x7f
0000227B  0403              add al,0x3
0000227D  C3                ret
0000227E  5E                pop si
0000227F  5F                pop di
00002280  5A                pop dx
00002281  59                pop cx
00002282  5B                pop bx
00002283  57                push di
00002284  56                push si
00002285  F6C780            test bh,0x80
00002288  751E              jnz 0x22a8
0000228A  80CF80            or bh,0x80
0000228D  B0A0              mov al,0xa0
0000228F  2AC2              sub al,dl
00002291  721A              jc 0x22ad
00002293  3C20              cmp al,0x20
00002295  7311              jnc 0x22a8
00002297  0AC0              or al,al
00002299  7408              jz 0x22a3
0000229B  D1EB              shr bx,1
0000229D  D1D9              rcr cx,1
0000229F  FEC8              dec al
000022A1  EBF4              jmp short 0x2297
000022A3  8BC1              mov ax,cx
000022A5  8BD3              mov dx,bx
000022A7  C3                ret
000022A8  33C0              xor ax,ax
000022AA  33D2              xor dx,dx
000022AC  C3                ret
000022AD  B8FFFF            mov ax,0xffff
000022B0  BAFFFF            mov dx,0xffff
000022B3  C3                ret
000022B4  8BDA              mov bx,dx
000022B6  8BC8              mov cx,ax
000022B8  0BC2              or ax,dx
000022BA  7413              jz 0x22cf
000022BC  BAA000            mov dx,0xa0
000022BF  F6C780            test bh,0x80
000022C2  7508              jnz 0x22cc
000022C4  D1E1              shl cx,1
000022C6  D1D3              rcl bx,1
000022C8  FECA              dec dl
000022CA  EBF3              jmp short 0x22bf
000022CC  80E77F            and bh,0x7f
000022CF  58                pop ax
000022D0  53                push bx
000022D1  51                push cx
000022D2  52                push dx
000022D3  FFE0              jmp ax
000022D5  B001              mov al,0x1
000022D7  A23802            mov [0x238],al
000022DA  5B                pop bx
000022DB  E808EC            call word 0xee6
000022DE  5F                pop di
000022DF  07                pop es
000022E0  53                push bx
000022E1  8CC0              mov ax,es
000022E3  8CDA              mov dx,ds
000022E5  3BC2              cmp ax,dx
000022E7  7506              jnz 0x22ef
000022E9  81FF6601          cmp di,0x166
000022ED  7635              jna 0x2324
000022EF  57                push di
000022F0  BEB600            mov si,0xb6
000022F3  8D7D0C            lea di,[di+0xc]
000022F6  B92000            mov cx,0x20
000022F9  FC                cld
000022FA  F3A5              rep movsw
000022FC  5F                pop di
000022FD  E88B01            call word 0x248b
00002300  7305              jnc 0x2307
00002302  B000              mov al,0x0
00002304  BBFFFF            mov bx,0xffff
00002307  26891D            mov [es:di],bx
0000230A  803E380200        cmp byte [0x238],0x0
0000230F  740C              jz 0x231d
00002311  26884502          mov [es:di+0x2],al
00002315  8D454C            lea ax,[di+0x4c]
00002318  26894504          mov [es:di+0x4],ax
0000231C  C3                ret
0000231D  26C745020000      mov word [es:di+0x2],0x0
00002323  C3                ret
00002324  C606800122        mov byte [0x180],0x22
00002329  C3                ret
0000232A  32C0              xor al,al
0000232C  EB06              jmp short 0x2334
0000232E  B001              mov al,0x1
00002330  EB02              jmp short 0x2334
00002332  B002              mov al,0x2
00002334  A23802            mov [0x238],al
00002337  8F068601          pop word [0x186]
0000233B  07                pop es
0000233C  FF368601          push word [0x186]
00002340  268A4502          mov al,[es:di+0x2]
00002344  240F              and al,0xf
00002346  7406              jz 0x234e
00002348  26806502DF        and byte [es:di+0x2],0xdf
0000234D  C3                ret
0000234E  26894D06          mov [es:di+0x6],cx
00002352  E80701            call word 0x245c
00002355  803E800100        cmp byte [0x180],0x0
0000235A  75F1              jnz 0x234d
0000235C  E89601            call word 0x24f5
0000235F  803E800100        cmp byte [0x180],0x0
00002364  75E7              jnz 0x234d
00002366  F70672010200      test word [0x172],0x2
0000236C  7415              jz 0x2383
0000236E  B80044            mov ax,0x4400
00002371  268B1D            mov bx,[es:di]
00002374  E8E0E5            call word 0x957
00002377  F7C28000          test dx,0x80
0000237B  7406              jz 0x2383
0000237D  26C745060100      mov word [es:di+0x6],0x1
00002383  803E380201        cmp byte [0x238],0x1
00002388  7312              jnc 0x239c
0000238A  26C6450280        mov byte [es:di+0x2],0x80
0000238F  268B5D04          mov bx,[es:di+0x4]
00002393  26895D08          mov [es:di+0x8],bx
00002397  26895D0A          mov [es:di+0xa],bx
0000239B  C3                ret
0000239C  7459              jz 0x23f7
0000239E  B80242            mov ax,0x4202
000023A1  268B1D            mov bx,[es:di]
000023A4  33C9              xor cx,cx
000023A6  33D2              xor dx,dx
000023A8  E8ACE5            call word 0x957
000023AB  268B4D06          mov cx,[es:di+0x6]
000023AF  81F98000          cmp cx,0x80
000023B3  7203              jc 0x23b8
000023B5  B98000            mov cx,0x80
000023B8  2BC1              sub ax,cx
000023BA  83DA00            sbb dx,byte +0x0
000023BD  7308              jnc 0x23c7
000023BF  03C1              add ax,cx
000023C1  8BC8              mov cx,ax
000023C3  33C0              xor ax,ax
000023C5  33D2              xor dx,dx
000023C7  51                push cx
000023C8  8BCA              mov cx,dx
000023CA  8BD0              mov dx,ax
000023CC  B80042            mov ax,0x4200
000023CF  268B1D            mov bx,[es:di]
000023D2  E882E5            call word 0x957
000023D5  E81003            call word 0x26e8
000023D8  5A                pop dx
000023D9  F7DA              neg dx
000023DB  268B7508          mov si,[es:di+0x8]
000023DF  26803C1A          cmp byte [es:si],0x1a
000023E3  7406              jz 0x23eb
000023E5  46                inc si
000023E6  42                inc dx
000023E7  75F6              jnz 0x23df
000023E9  EB0C              jmp short 0x23f7
000023EB  B80242            mov ax,0x4202
000023EE  268B1D            mov bx,[es:di]
000023F1  B9FFFF            mov cx,0xffff
000023F4  E860E5            call word 0x957
000023F7  26C6450240        mov byte [es:di+0x2],0x40
000023FC  268B4504          mov ax,[es:di+0x4]
00002400  26894508          mov [es:di+0x8],ax
00002404  26034506          add ax,[es:di+0x6]
00002408  2689450A          mov [es:di+0xa],ax
0000240C  C3                ret
0000240D  8F068601          pop word [0x186]
00002411  07                pop es
00002412  FF368601          push word [0x186]
00002416  26807D0280        cmp byte [es:di+0x2],0x80
0000241B  75EF              jnz 0x240c
0000241D  268B5508          mov dx,[es:di+0x8]
00002421  262B550A          sub dx,[es:di+0xa]
00002425  740C              jz 0x2433
00002427  B80142            mov ax,0x4201
0000242A  268B1D            mov bx,[es:di]
0000242D  B9FFFF            mov cx,0xffff
00002430  E824E5            call word 0x957
00002433  B440              mov ah,0x40
00002435  268B1D            mov bx,[es:di]
00002438  33C9              xor cx,cx
0000243A  E81AE5            call word 0x957
0000243D  EBB8              jmp short 0x23f7
0000243F  8F068601          pop word [0x186]
00002443  07                pop es
00002444  FF368601          push word [0x186]
00002448  26807D0240        cmp byte [es:di+0x2],0x40
0000244D  7503              jnz 0x2452
0000244F  E92104            jmp word 0x2873
00002452  C3                ret
00002453  8F068601          pop word [0x186]
00002457  07                pop es
00002458  FF368601          push word [0x186]
0000245C  268A4502          mov al,[es:di+0x2]
00002460  240F              and al,0xf
00002462  7526              jnz 0x248a
00002464  E8E1FF            call word 0x2448
00002467  26C6450200        mov byte [es:di+0x2],0x0
0000246C  268B1D            mov bx,[es:di]
0000246F  83FB02            cmp bx,byte +0x2
00002472  7616              jna 0x248a
00002474  83FBFF            cmp bx,byte -0x1
00002477  7411              jz 0x248a
00002479  26C705FFFF        mov word [es:di],0xffff
0000247E  B43E              mov ah,0x3e
00002480  E8D4E4            call word 0x957
00002483  7305              jnc 0x248a
00002485  C6068001FF        mov byte [0x180],0xff
0000248A  C3                ret
0000248B  B90900            mov cx,0x9
0000248E  BBBF24            mov bx,0x24bf
00002491  51                push cx
00002492  53                push bx
00002493  BEB600            mov si,0xb6
00002496  B90300            mov cx,0x3
00002499  8A04              mov al,[si]
0000249B  E802E6            call word 0xaa0
0000249E  2E3A07            cmp al,[cs:bx]
000024A1  7409              jz 0x24ac
000024A3  5B                pop bx
000024A4  59                pop cx
000024A5  83C306            add bx,byte +0x6
000024A8  E2E7              loop 0x2491
000024AA  F9                stc
000024AB  C3                ret
000024AC  46                inc si
000024AD  43                inc bx
000024AE  E2E9              loop 0x2499
000024B0  59                pop cx
000024B1  59                pop cx
000024B2  803C3A            cmp byte [si],0x3a
000024B5  75F3              jnz 0x24aa
000024B7  2E8A07            mov al,[cs:bx]
000024BA  2E8B5F01          mov bx,[cs:bx+0x1]
000024BE  C3                ret
000024BF  43                inc bx
000024C0  4F                dec di
000024C1  4E                dec si
000024C2  C1FFFF            sar di,byte 0xff
000024C5  54                push sp
000024C6  52                push dx
000024C7  4D                dec bp
000024C8  C1FFFF            sar di,byte 0xff
000024CB  4B                dec bx
000024CC  42                inc dx
000024CD  44                inc sp
000024CE  82                db 0x82
000024CF  FF                db 0xff
000024D0  FF4C53            dec word [si+0x53]
000024D3  54                push sp
000024D4  43                inc bx
000024D5  FF                db 0xff
000024D6  FF4155            inc word [bx+di+0x55]
000024D9  58                pop ax
000024DA  C4                db 0xc4
000024DB  FF                db 0xff
000024DC  FF5553            call word [di+0x53]
000024DF  52                push dx
000024E0  C5                db 0xc5
000024E1  FF                db 0xff
000024E2  FF494E            dec word [bx+di+0x4e]
000024E5  50                push ax
000024E6  0000              add [bx+si],al
000024E8  004F55            add [bx+0x55],cl
000024EB  54                push sp
000024EC  0001              add [bx+di],al
000024EE  004552            add [di+0x52],al
000024F1  52                push dx
000024F2  0002              add [bp+si],al
000024F4  0026833D          add [0x3d83],ah
000024F8  FF752D            push word [di+0x2d]
000024FB  B8023D            mov ax,0x3d02
000024FE  B201              mov dl,0x1
00002500  F606380201        test byte [0x238],0x1
00002505  7406              jz 0x250d
00002507  B43C              mov ah,0x3c
00002509  33C9              xor cx,cx
0000250B  B2F1              mov dl,0xf1
0000250D  52                push dx
0000250E  8D550C            lea dx,[di+0xc]
00002511  E843E4            call word 0x957
00002514  5A                pop dx
00002515  7204              jc 0x251b
00002517  268905            mov [es:di],ax
0000251A  C3                ret
0000251B  88168001          mov [0x180],dl
0000251F  3C04              cmp al,0x4
00002521  7505              jnz 0x2528
00002523  C6068001F3        mov byte [0x180],0xf3
00002528  C3                ret
00002529  8F068601          pop word [0x186]
0000252D  C70632025A01      mov word [0x232],0x15a
00002533  8C1E3402          mov [0x234],ds
00002537  FF268601          jmp word [0x186]
0000253B  8F068601          pop word [0x186]
0000253F  07                pop es
00002540  893E3202          mov [0x232],di
00002544  8C063402          mov [0x234],es
00002548  26F6450280        test byte [es:di+0x2],0x80
0000254D  7505              jnz 0x2554
0000254F  C606800102        mov byte [0x180],0x2
00002554  FF268601          jmp word [0x186]
00002558  8F068601          pop word [0x186]
0000255C  C70632026601      mov word [0x232],0x166
00002562  8C1E3402          mov [0x234],ds
00002566  FF268601          jmp word [0x186]
0000256A  8F068601          pop word [0x186]
0000256E  07                pop es
0000256F  893E3202          mov [0x232],di
00002573  8C063402          mov [0x234],es
00002577  26F6450240        test byte [es:di+0x2],0x40
0000257C  7505              jnz 0x2583
0000257E  C606800103        mov byte [0x180],0x3
00002583  FF268601          jmp word [0x186]
00002587  B0FF              mov al,0xff
00002589  EB02              jmp short 0x258d
0000258B  32C0              xor al,al
0000258D  8F068601          pop word [0x186]
00002591  C70632025A01      mov word [0x232],0x15a
00002597  8C1E3402          mov [0x234],ds
0000259B  80265C01DF        and byte [0x15c],0xdf
000025A0  06                push es
000025A1  57                push di
000025A2  50                push ax
000025A3  E80E00            call word 0x25b4
000025A6  58                pop ax
000025A7  0AC0              or al,al
000025A9  7403              jz 0x25ae
000025AB  E8EBE4            call word 0xa99
000025AE  5F                pop di
000025AF  07                pop es
000025B0  FF268601          jmp word [0x186]
000025B4  32F6              xor dh,dh
000025B6  8A2E8101          mov ch,[0x181]
000025BA  80FD7E            cmp ch,0x7e
000025BD  7202              jc 0x25c1
000025BF  B57E              mov ch,0x7e
000025C1  C60681017E        mov byte [0x181],0x7e
000025C6  BB3600            mov bx,0x36
000025C9  891E8201          mov [0x182],bx
000025CD  32C9              xor cl,cl
000025CF  E8A3E4            call word 0xa75
000025D2  B201              mov dl,0x1
000025D4  3C08              cmp al,0x8
000025D6  7439              jz 0x2611
000025D8  3C7F              cmp al,0x7f
000025DA  7435              jz 0x2611
000025DC  3C04              cmp al,0x4
000025DE  7443              jz 0x2623
000025E0  FECA              dec dl
000025E2  3C18              cmp al,0x18
000025E4  742B              jz 0x2611
000025E6  3C1B              cmp al,0x1b
000025E8  7427              jz 0x2611
000025EA  3C12              cmp al,0x12
000025EC  7435              jz 0x2623
000025EE  3C1A              cmp al,0x1a
000025F0  7443              jz 0x2635
000025F2  3C0D              cmp al,0xd
000025F4  7445              jz 0x263b
000025F6  3C20              cmp al,0x20
000025F8  72D5              jc 0x25cf
000025FA  3ACD              cmp cl,ch
000025FC  74D1              jz 0x25cf
000025FE  8A27              mov ah,[bx]
00002600  8807              mov [bx],al
00002602  FEC1              inc cl
00002604  43                inc bx
00002605  80FC20            cmp ah,0x20
00002608  7302              jnc 0x260c
0000260A  8827              mov [bx],ah
0000260C  E84300            call word 0x2652
0000260F  EBBE              jmp short 0x25cf
00002611  FEC9              dec cl
00002613  78B8              js 0x25cd
00002615  E869E4            call word 0xa81
00002618  0820              or [bx+si],ah
0000261A  0800              or [bx+si],al
0000261C  4B                dec bx
0000261D  FECA              dec dl
0000261F  75F0              jnz 0x2611
00002621  EBAC              jmp short 0x25cf
00002623  8A07              mov al,[bx]
00002625  3C20              cmp al,0x20
00002627  72A6              jc 0x25cf
00002629  E82600            call word 0x2652
0000262C  FEC1              inc cl
0000262E  43                inc bx
0000262F  FECA              dec dl
00002631  75F0              jnz 0x2623
00002633  EB9A              jmp short 0x25cf
00002635  0AF6              or dh,dh
00002637  7496              jz 0x25cf
00002639  EB04              jmp short 0x263f
0000263B  0AF6              or dh,dh
0000263D  7505              jnz 0x2644
0000263F  C6071A            mov byte [bx],0x1a
00002642  EB08              jmp short 0x264c
00002644  E852E4            call word 0xa99
00002647  C7070D0A          mov word [bx],0xa0d
0000264B  43                inc bx
0000264C  43                inc bx
0000264D  891E8401          mov [0x184],bx
00002651  C3                ret
00002652  8A269401          mov ah,[0x194]
00002656  C606940100        mov byte [0x194],0x0
0000265B  50                push ax
0000265C  E804E4            call word 0xa63
0000265F  58                pop ax
00002660  88269401          mov [0x194],ah
00002664  C3                ret
00002665  C43E3202          les di,[0x232]
00002669  803E800100        cmp byte [0x180],0x0
0000266E  7575              jnz 0x26e5
00002670  268A4502          mov al,[es:di+0x2]
00002674  A820              test al,0x20
00002676  7568              jnz 0x26e0
00002678  240F              and al,0xf
0000267A  751B              jnz 0x2697
0000267C  268B5D08          mov bx,[es:di+0x8]
00002680  263B5D0A          cmp bx,[es:di+0xa]
00002684  7207              jc 0x268d
00002686  E85F00            call word 0x26e8
00002689  268B5D08          mov bx,[es:di+0x8]
0000268D  268A07            mov al,[es:bx]
00002690  43                inc bx
00002691  26895D08          mov [es:di+0x8],bx
00002695  EB3F              jmp short 0x26d6
00002697  06                push es
00002698  57                push di
00002699  3C01              cmp al,0x1
0000269B  751C              jnz 0x26b9
0000269D  8B1E8201          mov bx,[0x182]
000026A1  3B1E8401          cmp bx,[0x184]
000026A5  7209              jc 0x26b0
000026A7  8AF0              mov dh,al
000026A9  E80AFF            call word 0x25b6
000026AC  8B1E8201          mov bx,[0x182]
000026B0  8A07              mov al,[bx]
000026B2  43                inc bx
000026B3  891E8201          mov [0x182],bx
000026B7  EB1B              jmp short 0x26d4
000026B9  3C02              cmp al,0x2
000026BB  7507              jnz 0x26c4
000026BD  4C                dec sp
000026BE  FF163801          call word [0x138]
000026C2  EB10              jmp short 0x26d4
000026C4  3C04              cmp al,0x4
000026C6  7507              jnz 0x26cf
000026C8  4C                dec sp
000026C9  FF164001          call word [0x140]
000026CD  EB05              jmp short 0x26d4
000026CF  4C                dec sp
000026D0  FF164401          call word [0x144]
000026D4  5F                pop di
000026D5  07                pop es
000026D6  26884503          mov [es:di+0x3],al
000026DA  26804D0220        or byte [es:di+0x2],0x20
000026DF  C3                ret
000026E0  268A4503          mov al,[es:di+0x3]
000026E4  C3                ret
000026E5  B01A              mov al,0x1a
000026E7  C3                ret
000026E8  B43F              mov ah,0x3f
000026EA  268B1D            mov bx,[es:di]
000026ED  268B4D06          mov cx,[es:di+0x6]
000026F1  268B5504          mov dx,[es:di+0x4]
000026F5  1E                push ds
000026F6  06                push es
000026F7  1F                pop ds
000026F8  E85CE2            call word 0x957
000026FB  1F                pop ds
000026FC  7302              jnc 0x2700
000026FE  33C0              xor ax,ax
00002700  268B5D04          mov bx,[es:di+0x4]
00002704  0BC0              or ax,ax
00002706  7505              jnz 0x270d
00002708  26C6071A          mov byte [es:bx],0x1a
0000270C  40                inc ax
0000270D  26895D08          mov [es:di+0x8],bx
00002711  03D8              add bx,ax
00002713  26895D0A          mov [es:di+0xa],bx
00002717  C3                ret
00002718  06                push es
00002719  57                push di
0000271A  BBB600            mov bx,0xb6
0000271D  53                push bx
0000271E  E844FF            call word 0x2665
00002721  5B                pop bx
00002722  3C1A              cmp al,0x1a
00002724  7422              jz 0x2748
00002726  26806502DF        and byte [es:di+0x2],0xdf
0000272B  3C20              cmp al,0x20
0000272D  76EE              jna 0x271d
0000272F  8807              mov [bx],al
00002731  43                inc bx
00002732  81FB3501          cmp bx,0x135
00002736  7410              jz 0x2748
00002738  53                push bx
00002739  E829FF            call word 0x2665
0000273C  5B                pop bx
0000273D  3C20              cmp al,0x20
0000273F  7607              jna 0x2748
00002741  26806502DF        and byte [es:di+0x2],0xdf
00002746  EBE7              jmp short 0x272f
00002748  C60700            mov byte [bx],0x0
0000274B  BBB600            mov bx,0xb6
0000274E  803F00            cmp byte [bx],0x0
00002751  5F                pop di
00002752  07                pop es
00002753  C3                ret
00002754  7205              jc 0x275b
00002756  803F00            cmp byte [bx],0x0
00002759  7406              jz 0x2761
0000275B  C606800110        mov byte [0x180],0x10
00002760  F9                stc
00002761  C3                ret
00002762  57                push di
00002763  E8FFFE            call word 0x2665
00002766  26806502DF        and byte [es:di+0x2],0xdf
0000276B  5F                pop di
0000276C  5B                pop bx
0000276D  07                pop es
0000276E  268805            mov [es:di],al
00002771  FFE3              jmp bx
00002773  F8                clc
00002774  EB01              jmp short 0x2777
00002776  F9                stc
00002777  5B                pop bx
00002778  07                pop es
00002779  53                push bx
0000277A  9C                pushfw
0000277B  E89AFF            call word 0x2718
0000277E  7413              jz 0x2793
00002780  E824EA            call word 0x11a7
00002783  E8CEFF            call word 0x2754
00002786  720B              jc 0x2793
00002788  9D                popfw
00002789  7304              jnc 0x278f
0000278B  268905            mov [es:di],ax
0000278E  C3                ret
0000278F  268805            mov [es:di],al
00002792  C3                ret
00002793  9D                popfw
00002794  C3                ret
00002795  5B                pop bx
00002796  07                pop es
00002797  53                push bx
00002798  E87DFF            call word 0x2718
0000279B  7415              jz 0x27b2
0000279D  57                push di
0000279E  06                push es
0000279F  BF3A02            mov di,0x23a
000027A2  E828F9            call word 0x20cd
000027A5  8BF7              mov si,di
000027A7  07                pop es
000027A8  5F                pop di
000027A9  E8A8FF            call word 0x2754
000027AC  7204              jc 0x27b2
000027AE  FC                cld
000027AF  A5                movsw
000027B0  A5                movsw
000027B1  A5                movsw
000027B2  C3                ret
000027B3  5B                pop bx
000027B4  07                pop es
000027B5  53                push bx
000027B6  33DB              xor bx,bx
000027B8  32ED              xor ch,ch
000027BA  06                push es
000027BB  57                push di
000027BC  53                push bx
000027BD  51                push cx
000027BE  E8A4FE            call word 0x2665
000027C1  59                pop cx
000027C2  5B                pop bx
000027C3  3C0D              cmp al,0xd
000027C5  7413              jz 0x27da
000027C7  3C1A              cmp al,0x1a
000027C9  740F              jz 0x27da
000027CB  26806502DF        and byte [es:di+0x2],0xdf
000027D0  5F                pop di
000027D1  07                pop es
000027D2  43                inc bx
000027D3  268801            mov [es:bx+di],al
000027D6  E2E2              loop 0x27ba
000027D8  EB02              jmp short 0x27dc
000027DA  5F                pop di
000027DB  07                pop es
000027DC  26881D            mov [es:di],bl
000027DF  C3                ret
000027E0  5B                pop bx
000027E1  07                pop es
000027E2  53                push bx
000027E3  32ED              xor ch,ch
000027E5  06                push es
000027E6  57                push di
000027E7  51                push cx
000027E8  E87AFE            call word 0x2665
000027EB  59                pop cx
000027EC  FC                cld
000027ED  3C0D              cmp al,0xd
000027EF  740F              jz 0x2800
000027F1  3C1A              cmp al,0x1a
000027F3  740B              jz 0x2800
000027F5  26806502DF        and byte [es:di+0x2],0xdf
000027FA  5F                pop di
000027FB  07                pop es
000027FC  AA                stosb
000027FD  E2E6              loop 0x27e5
000027FF  C3                ret
00002800  5F                pop di
00002801  07                pop es
00002802  B020              mov al,0x20
00002804  F3AA              rep stosb
00002806  C3                ret
00002807  E85BFE            call word 0x2665
0000280A  3C1A              cmp al,0x1a
0000280C  7419              jz 0x2827
0000280E  26806502DF        and byte [es:di+0x2],0xdf
00002813  3C0A              cmp al,0xa
00002815  7410              jz 0x2827
00002817  3C0D              cmp al,0xd
00002819  75EC              jnz 0x2807
0000281B  E847FE            call word 0x2665
0000281E  3C0A              cmp al,0xa
00002820  7505              jnz 0x2827
00002822  26806502DF        and byte [es:di+0x2],0xdf
00002827  C3                ret
00002828  C43E3202          les di,[0x232]
0000282C  803E800100        cmp byte [0x180],0x0
00002831  753F              jnz 0x2872
00002833  268A4D02          mov cl,[es:di+0x2]
00002837  80E10F            and cl,0xf
0000283A  7513              jnz 0x284f
0000283C  268B5D08          mov bx,[es:di+0x8]
00002840  268807            mov [es:bx],al
00002843  43                inc bx
00002844  26895D08          mov [es:di+0x8],bx
00002848  263B5D0A          cmp bx,[es:di+0xa]
0000284C  7425              jz 0x2873
0000284E  C3                ret
0000284F  50                push ax
00002850  80F901            cmp cl,0x1
00002853  740F              jz 0x2864
00002855  80F903            cmp cl,0x3
00002858  740F              jz 0x2869
0000285A  80F904            cmp cl,0x4
0000285D  740F              jz 0x286e
0000285F  FF164201          call word [0x142]
00002863  C3                ret
00002864  FF163A01          call word [0x13a]
00002868  C3                ret
00002869  FF163C01          call word [0x13c]
0000286D  C3                ret
0000286E  FF163E01          call word [0x13e]
00002872  C3                ret
00002873  268B4D08          mov cx,[es:di+0x8]
00002877  262B4D04          sub cx,[es:di+0x4]
0000287B  741F              jz 0x289c
0000287D  B440              mov ah,0x40
0000287F  268B1D            mov bx,[es:di]
00002882  268B5504          mov dx,[es:di+0x4]
00002886  26895508          mov [es:di+0x8],dx
0000288A  1E                push ds
0000288B  06                push es
0000288C  1F                pop ds
0000288D  E8C7E0            call word 0x957
00002890  1F                pop ds
00002891  7204              jc 0x2897
00002893  3BC1              cmp ax,cx
00002895  7405              jz 0x289c
00002897  C6068001F0        mov byte [0x180],0xf0
0000289C  C3                ret
0000289D  0BC0              or ax,ax
0000289F  7412              jz 0x28b3
000028A1  E825E2            call word 0xac9
000028A4  3C01              cmp al,0x1
000028A6  760B              jna 0x28b3
000028A8  91                xchg ax,cx
000028A9  49                dec cx
000028AA  B020              mov al,0x20
000028AC  51                push cx
000028AD  E878FF            call word 0x2828
000028B0  59                pop cx
000028B1  E2F7              loop 0x28aa
000028B3  5B                pop bx
000028B4  58                pop ax
000028B5  53                push bx
000028B6  E96FFF            jmp word 0x2828
000028B9  91                xchg ax,cx
000028BA  5B                pop bx
000028BB  58                pop ax
000028BC  53                push bx
000028BD  51                push cx
000028BE  BBB600            mov bx,0xb6
000028C1  E857E8            call word 0x111b
000028C4  58                pop ax
000028C5  E801E2            call word 0xac9
000028C8  81EBB600          sub bx,0xb6
000028CC  2BC3              sub ax,bx
000028CE  760C              jna 0x28dc
000028D0  91                xchg ax,cx
000028D1  53                push bx
000028D2  B020              mov al,0x20
000028D4  51                push cx
000028D5  E850FF            call word 0x2828
000028D8  59                pop cx
000028D9  E2F7              loop 0x28d2
000028DB  5B                pop bx
000028DC  8BCB              mov cx,bx
000028DE  BBB600            mov bx,0xb6
000028E1  8A07              mov al,[bx]
000028E3  53                push bx
000028E4  51                push cx
000028E5  E840FF            call word 0x2828
000028E8  59                pop cx
000028E9  5B                pop bx
000028EA  43                inc bx
000028EB  E2F4              loop 0x28e1
000028ED  C3                ret
000028EE  92                xchg ax,dx
000028EF  5B                pop bx
000028F0  59                pop cx
000028F1  BF3A02            mov di,0x23a
000028F4  8F05              pop word [di]
000028F6  8F4502            pop word [di+0x2]
000028F9  8F4504            pop word [di+0x4]
000028FC  53                push bx
000028FD  51                push cx
000028FE  BBB600            mov bx,0xb6
00002901  E841F6            call word 0x1f45
00002904  EBBE              jmp short 0x28c4
00002906  5B                pop bx
00002907  59                pop cx
00002908  53                push bx
00002909  BF1B29            mov di,0x291b
0000290C  0BC9              or cx,cx
0000290E  7503              jnz 0x2913
00002910  BF2029            mov di,0x2920
00002913  0E                push cs
00002914  E8B5E8            call word 0x11cc
00002917  E80C00            call word 0x2926
0000291A  C3                ret
0000291B  0454              add al,0x54
0000291D  52                push dx
0000291E  55                push bp
0000291F  45                inc bp
00002920  054641            add ax,0x4146
00002923  4C                dec sp
00002924  53                push bx
00002925  45                inc bp
00002926  E8A0E1            call word 0xac9
00002929  8BDC              mov bx,sp
0000292B  43                inc bx
0000292C  43                inc bx
0000292D  362A07            sub al,[ss:bx]
00002930  760F              jna 0x2941
00002932  8AC8              mov cl,al
00002934  32ED              xor ch,ch
00002936  53                push bx
00002937  B020              mov al,0x20
00002939  51                push cx
0000293A  E8EBFE            call word 0x2828
0000293D  59                pop cx
0000293E  E2F7              loop 0x2937
00002940  5B                pop bx
00002941  368A0F            mov cl,[ss:bx]
00002944  32ED              xor ch,ch
00002946  43                inc bx
00002947  0BC9              or cx,cx
00002949  740D              jz 0x2958
0000294B  368A07            mov al,[ss:bx]
0000294E  53                push bx
0000294F  51                push cx
00002950  E8D5FE            call word 0x2828
00002953  59                pop cx
00002954  5B                pop bx
00002955  43                inc bx
00002956  E2F3              loop 0x294b
00002958  5A                pop dx
00002959  8BE3              mov sp,bx
0000295B  FFE2              jmp dx
0000295D  5B                pop bx
0000295E  2E8A0F            mov cl,[cs:bx]
00002961  32ED              xor ch,ch
00002963  43                inc bx
00002964  E30D              jcxz 0x2973
00002966  2E8A07            mov al,[cs:bx]
00002969  53                push bx
0000296A  51                push cx
0000296B  E8BAFE            call word 0x2828
0000296E  59                pop cx
0000296F  5B                pop bx
00002970  43                inc bx
00002971  E2F3              loop 0x2966
00002973  FFE3              jmp bx
00002975  B00D              mov al,0xd
00002977  E8AEFE            call word 0x2828
0000297A  B00A              mov al,0xa
0000297C  E9A9FE            jmp word 0x2828
0000297F  BA0D01            mov dx,0x10d
00002982  EB0D              jmp short 0x2991
00002984  BA0D00            mov dx,0xd
00002987  EB08              jmp short 0x2991
00002989  BA1A01            mov dx,0x11a
0000298C  EB03              jmp short 0x2991
0000298E  BA1A00            mov dx,0x1a
00002991  8F068601          pop word [0x186]
00002995  07                pop es
00002996  FF368601          push word [0x186]
0000299A  26F6450280        test byte [es:di+0x2],0x80
0000299F  7420              jz 0x29c1
000029A1  52                push dx
000029A2  E8C4FC            call word 0x2669
000029A5  5A                pop dx
000029A6  3AC2              cmp al,dl
000029A8  7413              jz 0x29bd
000029AA  3C1A              cmp al,0x1a
000029AC  740F              jz 0x29bd
000029AE  3C20              cmp al,0x20
000029B0  770F              ja 0x29c1
000029B2  0AF6              or dh,dh
000029B4  740B              jz 0x29c1
000029B6  26806502DF        and byte [es:di+0x2],0xdf
000029BB  EBE4              jmp short 0x29a1
000029BD  33C0              xor ax,ax
000029BF  40                inc ax
000029C0  C3                ret
000029C1  33C0              xor ax,ax
000029C3  C3                ret
000029C4  32C0              xor al,al
000029C6  E90EF9            jmp word 0x22d7
000029C9  32C0              xor al,al
000029CB  EB02              jmp short 0x29cf
000029CD  B001              mov al,0x1
000029CF  A23802            mov [0x238],al
000029D2  8F068601          pop word [0x186]
000029D6  07                pop es
000029D7  FF368601          push word [0x186]
000029DB  51                push cx
000029DC  E83800            call word 0x2a17
000029DF  59                pop cx
000029E0  803E800100        cmp byte [0x180],0x0
000029E5  7510              jnz 0x29f7
000029E7  51                push cx
000029E8  E80AFB            call word 0x24f5
000029EB  59                pop cx
000029EC  803E800100        cmp byte [0x180],0x0
000029F1  7504              jnz 0x29f7
000029F3  26894D02          mov [es:di+0x2],cx
000029F7  C3                ret
000029F8  8F068601          pop word [0x186]
000029FC  07                pop es
000029FD  FF368601          push word [0x186]
00002A01  B440              mov ah,0x40
00002A03  268B1D            mov bx,[es:di]
00002A06  33C9              xor cx,cx
00002A08  E94CDF            jmp word 0x957
00002A0B  C20200            ret 0x2
00002A0E  8F068601          pop word [0x186]
00002A12  07                pop es
00002A13  FF368601          push word [0x186]
00002A17  26C745020000      mov word [es:di+0x2],0x0
00002A1D  E94CFA            jmp word 0x246c
00002A20  8F068601          pop word [0x186]
00002A24  07                pop es
00002A25  893E3202          mov [0x232],di
00002A29  8C063402          mov [0x234],es
00002A2D  26837D0200        cmp word [es:di+0x2],byte +0x0
00002A32  7505              jnz 0x2a39
00002A34  C606800104        mov byte [0x180],0x4
00002A39  FF268601          jmp word [0x186]
00002A3D  C70638023F99      mov word [0x238],0x993f
00002A43  EB06              jmp short 0x2a4b
00002A45  C706380240F0      mov word [0x238],0xf040
00002A4B  5B                pop bx
00002A4C  5E                pop si
00002A4D  53                push bx
00002A4E  803E800100        cmp byte [0x180],0x0
00002A53  7541              jnz 0x2a96
00002A55  8BD7              mov dx,di
00002A57  C43E3202          les di,[0x232]
00002A5B  8A263802          mov ah,[0x238]
00002A5F  268B1D            mov bx,[es:di]
00002A62  268B4D02          mov cx,[es:di+0x2]
00002A66  1E                push ds
00002A67  8EDE              mov ds,si
00002A69  E8EBDE            call word 0x957
00002A6C  1F                pop ds
00002A6D  7221              jc 0x2a90
00002A6F  3BC1              cmp ax,cx
00002A71  7423              jz 0x2a96
00002A73  803E38023F        cmp byte [0x238],0x3f
00002A78  7516              jnz 0x2a90
00002A7A  0BC0              or ax,ax
00002A7C  7412              jz 0x2a90
00002A7E  268B4D02          mov cx,[es:di+0x2]
00002A82  8BFA              mov di,dx
00002A84  03F8              add di,ax
00002A86  8EC6              mov es,si
00002A88  2BC8              sub cx,ax
00002A8A  33C0              xor ax,ax
00002A8C  FC                cld
00002A8D  F3AA              rep stosb
00002A8F  C3                ret
00002A90  A03902            mov al,[0x239]
00002A93  A28001            mov [0x180],al
00002A96  C3                ret
00002A97  33D2              xor dx,dx
00002A99  8F068601          pop word [0x186]
00002A9D  5F                pop di
00002A9E  07                pop es
00002A9F  FF368601          push word [0x186]
00002AA3  268B4D02          mov cx,[es:di+0x2]
00002AA7  E8BF00            call word 0x2b69
00002AAA  8BCA              mov cx,dx
00002AAC  8BD0              mov dx,ax
00002AAE  B80042            mov ax,0x4200
00002AB1  268B1D            mov bx,[es:di]
00002AB4  51                push cx
00002AB5  52                push dx
00002AB6  E89EDE            call word 0x957
00002AB9  59                pop cx
00002ABA  5B                pop bx
00002ABB  7208              jc 0x2ac5
00002ABD  3BC1              cmp ax,cx
00002ABF  7504              jnz 0x2ac5
00002AC1  3BD3              cmp dx,bx
00002AC3  7405              jz 0x2aca
00002AC5  C606800191        mov byte [0x180],0x91
00002ACA  C3                ret
00002ACB  E8B0F7            call word 0x227e
00002ACE  EBC9              jmp short 0x2a99
00002AD0  5B                pop bx
00002AD1  07                pop es
00002AD2  53                push bx
00002AD3  B80644            mov ax,0x4406
00002AD6  268B1D            mov bx,[es:di]
00002AD9  E87BDE            call word 0x957
00002ADC  0AC0              or al,al
00002ADE  B80000            mov ax,0x0
00002AE1  7501              jnz 0x2ae4
00002AE3  40                inc ax
00002AE4  0BC0              or ax,ax
00002AE6  C3                ret
00002AE7  5B                pop bx
00002AE8  07                pop es
00002AE9  53                push bx
00002AEA  B80142            mov ax,0x4201
00002AED  268B1D            mov bx,[es:di]
00002AF0  33C9              xor cx,cx
00002AF2  33D2              xor dx,dx
00002AF4  E860DE            call word 0x957
00002AF7  268B4D02          mov cx,[es:di+0x2]
00002AFB  EB4F              jmp short 0x2b4c
00002AFD  90                nop
00002AFE  5B                pop bx
00002AFF  07                pop es
00002B00  53                push bx
00002B01  E8E6FF            call word 0x2aea
00002B04  E9ADF7            jmp word 0x22b4
00002B07  5B                pop bx
00002B08  07                pop es
00002B09  53                push bx
00002B0A  B80142            mov ax,0x4201
00002B0D  268B1D            mov bx,[es:di]
00002B10  33C9              xor cx,cx
00002B12  33D2              xor dx,dx
00002B14  E840DE            call word 0x957
00002B17  50                push ax
00002B18  52                push dx
00002B19  B80242            mov ax,0x4202
00002B1C  268B1D            mov bx,[es:di]
00002B1F  33C9              xor cx,cx
00002B21  33D2              xor dx,dx
00002B23  E831DE            call word 0x957
00002B26  59                pop cx
00002B27  5B                pop bx
00002B28  50                push ax
00002B29  52                push dx
00002B2A  8BD3              mov dx,bx
00002B2C  B80042            mov ax,0x4200
00002B2F  268B1D            mov bx,[es:di]
00002B32  E822DE            call word 0x957
00002B35  5A                pop dx
00002B36  58                pop ax
00002B37  268B4D02          mov cx,[es:di+0x2]
00002B3B  49                dec cx
00002B3C  03C1              add ax,cx
00002B3E  83D200            adc dx,byte +0x0
00002B41  EBB4              jmp short 0x2af7
00002B43  5B                pop bx
00002B44  07                pop es
00002B45  53                push bx
00002B46  E8C1FF            call word 0x2b0a
00002B49  E968F7            jmp word 0x22b4
00002B4C  83F901            cmp cx,byte +0x1
00002B4F  7417              jz 0x2b68
00002B51  8BF1              mov si,cx
00002B53  33DB              xor bx,bx
00002B55  B92100            mov cx,0x21
00002B58  D1D3              rcl bx,1
00002B5A  1BDE              sbb bx,si
00002B5C  7303              jnc 0x2b61
00002B5E  03DE              add bx,si
00002B60  F9                stc
00002B61  F5                cmc
00002B62  D1D0              rcl ax,1
00002B64  D1D2              rcl dx,1
00002B66  E2F0              loop 0x2b58
00002B68  C3                ret
00002B69  8BD8              mov bx,ax
00002B6B  8BC2              mov ax,dx
00002B6D  F7E1              mul cx
00002B6F  93                xchg ax,bx
00002B70  F7E1              mul cx
00002B72  03D3              add dx,bx
00002B74  C3                ret
00002B75  91                xchg ax,cx
00002B76  5B                pop bx
00002B77  5F                pop di
00002B78  53                push bx
00002B79  E94DFE            jmp word 0x29c9
00002B7C  91                xchg ax,cx
00002B7D  5B                pop bx
00002B7E  5F                pop di
00002B7F  53                push bx
00002B80  E94AFE            jmp word 0x29cd
00002B83  C70638023F99      mov word [0x238],0x993f
00002B89  EB06              jmp short 0x2b91
00002B8B  C706380240F0      mov word [0x238],0xf040
00002B91  8F068601          pop word [0x186]
00002B95  5A                pop dx
00002B96  5E                pop si
00002B97  5F                pop di
00002B98  07                pop es
00002B99  50                push ax
00002B9A  E83E00            call word 0x2bdb
00002B9D  59                pop cx
00002B9E  803E800100        cmp byte [0x180],0x0
00002BA3  750A              jnz 0x2baf
00002BA5  3BC1              cmp ax,cx
00002BA7  7406              jz 0x2baf
00002BA9  A03902            mov al,[0x239]
00002BAC  A28001            mov [0x180],al
00002BAF  FF268601          jmp word [0x186]
00002BB3  C70638023F99      mov word [0x238],0x993f
00002BB9  EB06              jmp short 0x2bc1
00002BBB  C706380240F0      mov word [0x238],0xf040
00002BC1  8F068601          pop word [0x186]
00002BC5  8BCF              mov cx,di
00002BC7  5B                pop bx
00002BC8  58                pop ax
00002BC9  5A                pop dx
00002BCA  5E                pop si
00002BCB  5F                pop di
00002BCC  07                pop es
00002BCD  53                push bx
00002BCE  51                push cx
00002BCF  E80900            call word 0x2bdb
00002BD2  5F                pop di
00002BD3  07                pop es
00002BD4  268905            mov [es:di],ax
00002BD7  FF268601          jmp word [0x186]
00002BDB  26837D0200        cmp word [es:di+0x2],byte +0x0
00002BE0  744F              jz 0x2c31
00002BE2  26837D0201        cmp word [es:di+0x2],byte +0x1
00002BE7  7406              jz 0x2bef
00002BE9  52                push dx
00002BEA  26F76502          mul word [es:di+0x2]
00002BEE  5A                pop dx
00002BEF  91                xchg ax,cx
00002BF0  8A263802          mov ah,[0x238]
00002BF4  268B1D            mov bx,[es:di]
00002BF7  1E                push ds
00002BF8  8EDE              mov ds,si
00002BFA  E85ADD            call word 0x957
00002BFD  1F                pop ds
00002BFE  7308              jnc 0x2c08
00002C00  A03902            mov al,[0x239]
00002C03  A28001            mov [0x180],al
00002C06  33C0              xor ax,ax
00002C08  268B4D02          mov cx,[es:di+0x2]
00002C0C  83F901            cmp cx,byte +0x1
00002C0F  741F              jz 0x2c30
00002C11  8BFA              mov di,dx
00002C13  03F8              add di,ax
00002C15  33D2              xor dx,dx
00002C17  F7F1              div cx
00002C19  0BD2              or dx,dx
00002C1B  7413              jz 0x2c30
00002C1D  803E38023F        cmp byte [0x238],0x3f
00002C22  750C              jnz 0x2c30
00002C24  50                push ax
00002C25  2BCA              sub cx,dx
00002C27  8EC6              mov es,si
00002C29  33C0              xor ax,ax
00002C2B  FC                cld
00002C2C  F3AA              rep stosb
00002C2E  58                pop ax
00002C2F  40                inc ax
00002C30  C3                ret
00002C31  C606800104        mov byte [0x180],0x4
00002C36  C3                ret
00002C37  8F068601          pop word [0x186]
00002C3B  07                pop es
00002C3C  FF368601          push word [0x186]
00002C40  B441              mov ah,0x41
00002C42  8D550C            lea dx,[di+0xc]
00002C45  1E                push ds
00002C46  06                push es
00002C47  1F                pop ds
00002C48  E80CDD            call word 0x957
00002C4B  1F                pop ds
00002C4C  7305              jnc 0x2c53
00002C4E  C606800101        mov byte [0x180],0x1
00002C53  C3                ret
00002C54  8F068601          pop word [0x186]
00002C58  E88BE2            call word 0xee6
00002C5B  5F                pop di
00002C5C  07                pop es
00002C5D  FF368601          push word [0x186]
00002C61  B456              mov ah,0x56
00002C63  8D550C            lea dx,[di+0xc]
00002C66  57                push di
00002C67  BFB600            mov di,0xb6
00002C6A  1E                push ds
00002C6B  06                push es
00002C6C  1F                pop ds
00002C6D  07                pop es
00002C6E  E8E6DC            call word 0x957
00002C71  1E                push ds
00002C72  06                push es
00002C73  1F                pop ds
00002C74  07                pop es
00002C75  5F                pop di
00002C76  72D6              jc 0x2c4e
00002C78  BEB600            mov si,0xb6
00002C7B  8D7D0C            lea di,[di+0xc]
00002C7E  B92000            mov cx,0x20
00002C81  FC                cld
00002C82  F3A5              rep movsw
00002C84  C3                ret
00002C85  8F068601          pop word [0x186]
00002C89  E85AE2            call word 0xee6
00002C8C  FF368601          push word [0x186]
00002C90  A1B600            mov ax,[0xb6]
00002C93  0AC0              or al,al
00002C95  7428              jz 0x2cbf
00002C97  80FC3A            cmp ah,0x3a
00002C9A  7519              jnz 0x2cb5
00002C9C  E801DE            call word 0xaa0
00002C9F  2C41              sub al,0x41
00002CA1  72AB              jc 0x2c4e
00002CA3  3C0F              cmp al,0xf
00002CA5  73A7              jnc 0x2c4e
00002CA7  B40E              mov ah,0xe
00002CA9  8AD0              mov dl,al
00002CAB  E8A9DC            call word 0x957
00002CAE  803EB80000        cmp byte [0xb8],0x0
00002CB3  740A              jz 0x2cbf
00002CB5  B43B              mov ah,0x3b
00002CB7  BAB600            mov dx,0xb6
00002CBA  E89ADC            call word 0x957
00002CBD  728F              jc 0x2c4e
00002CBF  C3                ret
00002CC0  B739              mov bh,0x39
00002CC2  EB02              jmp short 0x2cc6
00002CC4  B73A              mov bh,0x3a
00002CC6  8F068601          pop word [0x186]
00002CCA  E819E2            call word 0xee6
00002CCD  FF368601          push word [0x186]
00002CD1  8AE7              mov ah,bh
00002CD3  EBE2              jmp short 0x2cb7
00002CD5  8F068601          pop word [0x186]
00002CD9  07                pop es
00002CDA  58                pop ax
00002CDB  FF368601          push word [0x186]
00002CDF  0AC0              or al,al
00002CE1  7507              jnz 0x2cea
00002CE3  B419              mov ah,0x19
00002CE5  E86FDC            call word 0x957
00002CE8  FEC0              inc al
00002CEA  8AD0              mov dl,al
00002CEC  0440              add al,0x40
00002CEE  A2B600            mov [0xb6],al
00002CF1  C706B7003A5C      mov word [0xb7],0x5c3a
00002CF7  B447              mov ah,0x47
00002CF9  BEB900            mov si,0xb9
00002CFC  E858DC            call word 0x957
00002CFF  7303              jnc 0x2d04
00002D01  C60400            mov byte [si],0x0
00002D04  BEB600            mov si,0xb6
00002D07  33DB              xor bx,bx
00002D09  8A04              mov al,[si]
00002D0B  0AC0              or al,al
00002D0D  7409              jz 0x2d18
00002D0F  46                inc si
00002D10  43                inc bx
00002D11  268801            mov [es:bx+di],al
00002D14  FEC9              dec cl
00002D16  75F1              jnz 0x2d09
00002D18  26881D            mov [es:di],bl
00002D1B  C3                ret
00002D1C  BB7C2C            mov bx,0x2c7c
00002D1F  EB02              jmp short 0x2d23
00002D21  33DB              xor bx,bx
00002D23  8F068601          pop word [0x186]
00002D27  07                pop es
00002D28  FF368601          push word [0x186]
00002D2C  F70672010100      test word [0x172],0x1
00002D32  7542              jnz 0x2d76
00002D34  53                push bx
00002D35  B8003D            mov ax,0x3d00
00002D38  8D550C            lea dx,[di+0xc]
00002D3B  E819DC            call word 0x957
00002D3E  5A                pop dx
00002D3F  7230              jc 0x2d71
00002D41  8BD8              mov bx,ax
00002D43  B80042            mov ax,0x4200
00002D46  33C9              xor cx,cx
00002D48  E80CDC            call word 0x957
00002D4B  7224              jc 0x2d71
00002D4D  1E                push ds
00002D4E  0E                push cs
00002D4F  1F                pop ds
00002D50  B43F              mov ah,0x3f
00002D52  B9FFFF            mov cx,0xffff
00002D55  BA7C2D            mov dx,0x2d7c
00002D58  E8FCDB            call word 0x957
00002D5B  1F                pop ds
00002D5C  B43E              mov ah,0x3e
00002D5E  E8F6DB            call word 0x957
00002D61  8B267401          mov sp,[0x174]
00002D65  E893DC            call word 0x9fb
00002D68  C7067E01D010      mov word [0x17e],0x10d0
00002D6E  E92200            jmp word 0x2d93
00002D71  B201              mov dl,0x1
00002D73  E9A5F7            jmp word 0x251b
00002D76  C606800121        mov byte [0x180],0x21
00002D7B  C3                ret
00002D7C  E857DD            call word 0xad6
00002D7F  0000              add [bx+si],al
00002D81  E943A9            jmp word 0xd6c7
00002D84  4D                dec bp
00002D85  7104              jno 0x2d8b
00002D87  9D                popfw
00002D88  0100              add [bx+si],ax
00002D8A  0400              add al,0x0
00002D8C  A01000            mov al,[0x10]
00002D8F  0000              add [bx+si],al
00002D91  0000              add [bx+si],al
00002D93  8BEC              mov bp,sp
00002D95  E834DF            call word 0xccc
00002D98  6D                insw
00002D99  199C2DE9          sbb [si-0x16d3],bx
00002D9D  95                xchg ax,bp
00002D9E  1800              sbb [bx+si],al
00002DA0  B000              mov al,0x0
00002DA2  17                pop ss
00002DA3  0400              add al,0x0
00002DA5  00558B            add [di-0x75],dl
00002DA8  EC                in al,dx
00002DA9  55                push bp
00002DAA  E90000            jmp word 0x2dad
00002DAD  2EA0A12D          mov al,[cs:0x2da1]
00002DB1  32E4              xor ah,ah
00002DB3  3401              xor al,0x1
00002DB5  7503              jnz 0x2dba
00002DB7  E91300            jmp word 0x2dcd
00002DBA  C47E0A            les di,[bp+0xa]
00002DBD  06                push es
00002DBE  57                push di
00002DBF  C47E06            les di,[bp+0x6]
00002DC2  06                push es
00002DC3  57                push di
00002DC4  8B4604            mov ax,[bp+0x4]
00002DC7  E883E1            call word 0xf4d
00002DCA  E93500            jmp word 0x2e02
00002DCD  8B4604            mov ax,[bp+0x4]
00002DD0  B90100            mov cx,0x1
00002DD3  D3E8              shr ax,cl
00002DD5  894604            mov [bp+0x4],ax
00002DD8  1E                push ds
00002DD9  55                push bp
00002DDA  BADA03            mov dx,0x3da
00002DDD  C5B60A00          lds si,[bp+0xa]
00002DE1  C4BE0600          les di,[bp+0x6]
00002DE5  8B8E0400          mov cx,[bp+0x4]
00002DE9  FC                cld
00002DEA  AD                lodsw
00002DEB  89C5              mov bp,ax
00002DED  B409              mov ah,0x9
00002DEF  EC                in al,dx
00002DF0  D0D8              rcr al,1
00002DF2  72FB              jc 0x2def
00002DF4  FA                cli
00002DF5  EC                in al,dx
00002DF6  20E0              and al,ah
00002DF8  74FB              jz 0x2df5
00002DFA  89E8              mov ax,bp
00002DFC  AB                stosw
00002DFD  FB                sti
00002DFE  E2EA              loop 0x2dea
00002E00  5D                pop bp
00002E01  1F                pop ds
00002E02  E90000            jmp word 0x2e05
00002E05  8BE5              mov sp,bp
00002E07  5D                pop bp
00002E08  C20A00            ret 0xa
00002E0B  55                push bp
00002E0C  8BEC              mov bp,sp
00002E0E  55                push bp
00002E0F  E90000            jmp word 0x2e12
00002E12  2EA0A12D          mov al,[cs:0x2da1]
00002E16  32E4              xor ah,ah
00002E18  3401              xor al,0x1
00002E1A  7503              jnz 0x2e1f
00002E1C  E91300            jmp word 0x2e32
00002E1F  C47E0A            les di,[bp+0xa]
00002E22  06                push es
00002E23  57                push di
00002E24  C47E06            les di,[bp+0x6]
00002E27  06                push es
00002E28  57                push di
00002E29  8B4604            mov ax,[bp+0x4]
00002E2C  E81EE1            call word 0xf4d
00002E2F  E92F00            jmp word 0x2e61
00002E32  8B4604            mov ax,[bp+0x4]
00002E35  B90100            mov cx,0x1
00002E38  D3E8              shr ax,cl
00002E3A  894604            mov [bp+0x4],ax
00002E3D  1E                push ds
00002E3E  55                push bp
00002E3F  BADA03            mov dx,0x3da
00002E42  C5B60A00          lds si,[bp+0xa]
00002E46  C4BE0600          les di,[bp+0x6]
00002E4A  8B8E0400          mov cx,[bp+0x4]
00002E4E  FC                cld
00002E4F  EC                in al,dx
00002E50  D0D8              rcr al,1
00002E52  72FB              jc 0x2e4f
00002E54  FA                cli
00002E55  EC                in al,dx
00002E56  D0D8              rcr al,1
00002E58  73FB              jnc 0x2e55
00002E5A  AD                lodsw
00002E5B  FB                sti
00002E5C  AB                stosw
00002E5D  E2F0              loop 0x2e4f
00002E5F  5D                pop bp
00002E60  1F                pop ds
00002E61  E90000            jmp word 0x2e64
00002E64  8BE5              mov sp,bp
00002E66  5D                pop bp
00002E67  C20A00            ret 0xa
00002E6A  55                push bp
00002E6B  8BEC              mov bp,sp
00002E6D  55                push bp
00002E6E  E90000            jmp word 0x2e71
00002E71  4C                dec sp
00002E72  4C                dec sp
00002E73  2EA19F2D          mov ax,[cs:0x2d9f]
00002E77  50                push ax
00002E78  B80000            mov ax,0x0
00002E7B  97                xchg ax,di
00002E7C  07                pop es
00002E7D  06                push es
00002E7E  57                push di
00002E7F  BF270A            mov di,0xa27
00002E82  1E                push ds
00002E83  57                push di
00002E84  B8A00F            mov ax,0xfa0
00002E87  50                push ax
00002E88  E880FF            call word 0x2e0b
00002E8B  B80100            mov ax,0x1
00002E8E  50                push ax
00002E8F  B80100            mov ax,0x1
00002E92  50                push ax
00002E93  B85000            mov ax,0x50
00002E96  50                push ax
00002E97  B81900            mov ax,0x19
00002E9A  E8F0D4            call word 0x38d
00002E9D  2EA0A12D          mov al,[cs:0x2da1]
00002EA1  32E4              xor ah,ah
00002EA3  0BC0              or ax,ax
00002EA5  7503              jnz 0x2eaa
00002EA7  E90F00            jmp word 0x2eb9
00002EAA  B80100            mov ax,0x1
00002EAD  E81FD5            call word 0x3cf
00002EB0  B80F00            mov ax,0xf
00002EB3  E805D5            call word 0x3bb
00002EB6  E90C00            jmp word 0x2ec5
00002EB9  B80000            mov ax,0x0
00002EBC  E8FCD4            call word 0x3bb
00002EBF  B80700            mov ax,0x7
00002EC2  E80AD5            call word 0x3cf
00002EC5  8B465B            mov ax,[bp+0x5b]
00002EC8  2D0100            sub ax,0x1
00002ECB  50                push ax
00002ECC  8B4659            mov ax,[bp+0x59]
00002ECF  2D0100            sub ax,0x1
00002ED2  E8D5DE            call word 0xdaa
00002ED5  E880F6            call word 0x2558
00002ED8  B8C900            mov ax,0xc9
00002EDB  50                push ax
00002EDC  B80000            mov ax,0x0
00002EDF  E8BBF9            call word 0x289d
00002EE2  8B465B            mov ax,[bp+0x5b]
00002EE5  50                push ax
00002EE6  8B4657            mov ax,[bp+0x57]
00002EE9  59                pop cx
00002EEA  91                xchg ax,cx
00002EEB  2BC8              sub cx,ax
00002EED  7D03              jnl 0x2ef2
00002EEF  E91C00            jmp word 0x2f0e
00002EF2  41                inc cx
00002EF3  8946FC            mov [bp-0x4],ax
00002EF6  51                push cx
00002EF7  E85EF6            call word 0x2558
00002EFA  B8CD00            mov ax,0xcd
00002EFD  50                push ax
00002EFE  B80000            mov ax,0x0
00002F01  E899F9            call word 0x289d
00002F04  59                pop cx
00002F05  49                dec cx
00002F06  7406              jz 0x2f0e
00002F08  FF46FC            inc word [bp-0x4]
00002F0B  E9E8FF            jmp word 0x2ef6
00002F0E  E847F6            call word 0x2558
00002F11  B8BB00            mov ax,0xbb
00002F14  50                push ax
00002F15  B80000            mov ax,0x0
00002F18  E882F9            call word 0x289d
00002F1B  8B4659            mov ax,[bp+0x59]
00002F1E  50                push ax
00002F1F  8B4655            mov ax,[bp+0x55]
00002F22  59                pop cx
00002F23  91                xchg ax,cx
00002F24  2BC8              sub cx,ax
00002F26  7D03              jnl 0x2f2b
00002F28  E94300            jmp word 0x2f6e
00002F2B  41                inc cx
00002F2C  8946FC            mov [bp-0x4],ax
00002F2F  51                push cx
00002F30  8B465B            mov ax,[bp+0x5b]
00002F33  2D0100            sub ax,0x1
00002F36  50                push ax
00002F37  8B46FC            mov ax,[bp-0x4]
00002F3A  E86DDE            call word 0xdaa
00002F3D  E818F6            call word 0x2558
00002F40  B8BA00            mov ax,0xba
00002F43  50                push ax
00002F44  B80000            mov ax,0x0
00002F47  E853F9            call word 0x289d
00002F4A  8B4657            mov ax,[bp+0x57]
00002F4D  050100            add ax,0x1
00002F50  50                push ax
00002F51  8B46FC            mov ax,[bp-0x4]
00002F54  E853DE            call word 0xdaa
00002F57  E8FEF5            call word 0x2558
00002F5A  B8BA00            mov ax,0xba
00002F5D  50                push ax
00002F5E  B80000            mov ax,0x0
00002F61  E839F9            call word 0x289d
00002F64  59                pop cx
00002F65  49                dec cx
00002F66  7406              jz 0x2f6e
00002F68  FF46FC            inc word [bp-0x4]
00002F6B  E9C1FF            jmp word 0x2f2f
00002F6E  8B465B            mov ax,[bp+0x5b]
00002F71  2D0100            sub ax,0x1
00002F74  50                push ax
00002F75  8B4655            mov ax,[bp+0x55]
00002F78  050100            add ax,0x1
00002F7B  E82CDE            call word 0xdaa
00002F7E  E8D7F5            call word 0x2558
00002F81  B8C800            mov ax,0xc8
00002F84  50                push ax
00002F85  B80000            mov ax,0x0
00002F88  E812F9            call word 0x289d
00002F8B  8B465B            mov ax,[bp+0x5b]
00002F8E  50                push ax
00002F8F  8B4657            mov ax,[bp+0x57]
00002F92  59                pop cx
00002F93  91                xchg ax,cx
00002F94  2BC8              sub cx,ax
00002F96  7D03              jnl 0x2f9b
00002F98  E91C00            jmp word 0x2fb7
00002F9B  41                inc cx
00002F9C  8946FC            mov [bp-0x4],ax
00002F9F  51                push cx
00002FA0  E8B5F5            call word 0x2558
00002FA3  B8CD00            mov ax,0xcd
00002FA6  50                push ax
00002FA7  B80000            mov ax,0x0
00002FAA  E8F0F8            call word 0x289d
00002FAD  59                pop cx
00002FAE  49                dec cx
00002FAF  7406              jz 0x2fb7
00002FB1  FF46FC            inc word [bp-0x4]
00002FB4  E9E8FF            jmp word 0x2f9f
00002FB7  E89EF5            call word 0x2558
00002FBA  B8BC00            mov ax,0xbc
00002FBD  50                push ax
00002FBE  B80000            mov ax,0x0
00002FC1  E8D9F8            call word 0x289d
00002FC4  8D7E04            lea di,[bp+0x4]
00002FC7  16                push ss
00002FC8  E801E2            call word 0x11cc
00002FCB  E8B0E3            call word 0x137e
00002FCE  3D0100            cmp ax,0x1
00002FD1  7F03              jg 0x2fd6
00002FD3  E93B00            jmp word 0x3011
00002FD6  8B465B            mov ax,[bp+0x5b]
00002FD9  50                push ax
00002FDA  8B4657            mov ax,[bp+0x57]
00002FDD  2B465B            sub ax,[bp+0x5b]
00002FE0  50                push ax
00002FE1  8D7E04            lea di,[bp+0x4]
00002FE4  16                push ss
00002FE5  E8E4E1            call word 0x11cc
00002FE8  E893E3            call word 0x137e
00002FEB  59                pop cx
00002FEC  91                xchg ax,cx
00002FED  2BC1              sub ax,cx
00002FEF  B90100            mov cx,0x1
00002FF2  D3E8              shr ax,cl
00002FF4  59                pop cx
00002FF5  03C1              add ax,cx
00002FF7  50                push ax
00002FF8  8B4659            mov ax,[bp+0x59]
00002FFB  2D0100            sub ax,0x1
00002FFE  E8A9DD            call word 0xdaa
00003001  E854F5            call word 0x2558
00003004  8D7E04            lea di,[bp+0x4]
00003007  16                push ss
00003008  E8C1E1            call word 0x11cc
0000300B  B80000            mov ax,0x0
0000300E  E815F9            call word 0x2926
00003011  8B465B            mov ax,[bp+0x5b]
00003014  50                push ax
00003015  8B4659            mov ax,[bp+0x59]
00003018  50                push ax
00003019  8B4657            mov ax,[bp+0x57]
0000301C  50                push ax
0000301D  8B4655            mov ax,[bp+0x55]
00003020  E86AD3            call word 0x38d
00003023  B80F00            mov ax,0xf
00003026  E892D3            call word 0x3bb
00003029  B80000            mov ax,0x0
0000302C  E8A0D3            call word 0x3cf
0000302F  E8F4D1            call word 0x226
00003032  E90000            jmp word 0x3035
00003035  8BE5              mov sp,bp
00003037  5D                pop bp
00003038  C25900            ret 0x59
0000303B  55                push bp
0000303C  8BEC              mov bp,sp
0000303E  55                push bp
0000303F  E90000            jmp word 0x3042
00003042  4C                dec sp
00003043  4C                dec sp
00003044  B80100            mov ax,0x1
00003047  50                push ax
00003048  B80100            mov ax,0x1
0000304B  50                push ax
0000304C  B85000            mov ax,0x50
0000304F  50                push ax
00003050  B81900            mov ax,0x19
00003053  E837D3            call word 0x38d
00003056  BF270A            mov di,0xa27
00003059  1E                push ds
0000305A  57                push di
0000305B  2EA19F2D          mov ax,[cs:0x2d9f]
0000305F  50                push ax
00003060  B80000            mov ax,0x0
00003063  97                xchg ax,di
00003064  07                pop es
00003065  06                push es
00003066  57                push di
00003067  B8A00F            mov ax,0xfa0
0000306A  50                push ax
0000306B  E838FD            call word 0x2da6
0000306E  E90000            jmp word 0x3071
00003071  8BE5              mov sp,bp
00003073  5D                pop bp
00003074  C3                ret
00003075  55                push bp
00003076  8BEC              mov bp,sp
00003078  55                push bp
00003079  E90000            jmp word 0x307c
0000307C  4C                dec sp
0000307D  4C                dec sp
0000307E  B80000            mov ax,0x0
00003081  E84BD3            call word 0x3cf
00003084  B80F00            mov ax,0xf
00003087  E831D3            call word 0x3bb
0000308A  8B460A            mov ax,[bp+0xa]
0000308D  50                push ax
0000308E  8B4608            mov ax,[bp+0x8]
00003091  E816DD            call word 0xdaa
00003094  E8C1F4            call word 0x2558
00003097  B8DA00            mov ax,0xda
0000309A  50                push ax
0000309B  B80000            mov ax,0x0
0000309E  E8FCF7            call word 0x289d
000030A1  8B460A            mov ax,[bp+0xa]
000030A4  050100            add ax,0x1
000030A7  50                push ax
000030A8  8B4606            mov ax,[bp+0x6]
000030AB  2D0100            sub ax,0x1
000030AE  59                pop cx
000030AF  91                xchg ax,cx
000030B0  2BC8              sub cx,ax
000030B2  7D03              jnl 0x30b7
000030B4  E91C00            jmp word 0x30d3
000030B7  41                inc cx
000030B8  8946FC            mov [bp-0x4],ax
000030BB  51                push cx
000030BC  E899F4            call word 0x2558
000030BF  B8C400            mov ax,0xc4
000030C2  50                push ax
000030C3  B80000            mov ax,0x0
000030C6  E8D4F7            call word 0x289d
000030C9  59                pop cx
000030CA  49                dec cx
000030CB  7406              jz 0x30d3
000030CD  FF46FC            inc word [bp-0x4]
000030D0  E9E8FF            jmp word 0x30bb
000030D3  E882F4            call word 0x2558
000030D6  B8BF00            mov ax,0xbf
000030D9  50                push ax
000030DA  B80000            mov ax,0x0
000030DD  E8BDF7            call word 0x289d
000030E0  8B4608            mov ax,[bp+0x8]
000030E3  050100            add ax,0x1
000030E6  50                push ax
000030E7  8B4604            mov ax,[bp+0x4]
000030EA  2D0100            sub ax,0x1
000030ED  59                pop cx
000030EE  91                xchg ax,cx
000030EF  2BC8              sub cx,ax
000030F1  7D03              jnl 0x30f6
000030F3  E93D00            jmp word 0x3133
000030F6  41                inc cx
000030F7  8946FC            mov [bp-0x4],ax
000030FA  51                push cx
000030FB  8B460A            mov ax,[bp+0xa]
000030FE  50                push ax
000030FF  8B46FC            mov ax,[bp-0x4]
00003102  E8A5DC            call word 0xdaa
00003105  E850F4            call word 0x2558
00003108  B8B300            mov ax,0xb3
0000310B  50                push ax
0000310C  B80000            mov ax,0x0
0000310F  E88BF7            call word 0x289d
00003112  8B4606            mov ax,[bp+0x6]
00003115  50                push ax
00003116  8B46FC            mov ax,[bp-0x4]
00003119  E88EDC            call word 0xdaa
0000311C  E839F4            call word 0x2558
0000311F  B8B300            mov ax,0xb3
00003122  50                push ax
00003123  B80000            mov ax,0x0
00003126  E874F7            call word 0x289d
00003129  59                pop cx
0000312A  49                dec cx
0000312B  7406              jz 0x3133
0000312D  FF46FC            inc word [bp-0x4]
00003130  E9C7FF            jmp word 0x30fa
00003133  8B460A            mov ax,[bp+0xa]
00003136  50                push ax
00003137  8B4604            mov ax,[bp+0x4]
0000313A  E86DDC            call word 0xdaa
0000313D  E818F4            call word 0x2558
00003140  B8C000            mov ax,0xc0
00003143  50                push ax
00003144  B80000            mov ax,0x0
00003147  E853F7            call word 0x289d
0000314A  8B460A            mov ax,[bp+0xa]
0000314D  050100            add ax,0x1
00003150  50                push ax
00003151  8B4606            mov ax,[bp+0x6]
00003154  2D0100            sub ax,0x1
00003157  59                pop cx
00003158  91                xchg ax,cx
00003159  2BC8              sub cx,ax
0000315B  7D03              jnl 0x3160
0000315D  E91C00            jmp word 0x317c
00003160  41                inc cx
00003161  8946FC            mov [bp-0x4],ax
00003164  51                push cx
00003165  E8F0F3            call word 0x2558
00003168  B8C400            mov ax,0xc4
0000316B  50                push ax
0000316C  B80000            mov ax,0x0
0000316F  E82BF7            call word 0x289d
00003172  59                pop cx
00003173  49                dec cx
00003174  7406              jz 0x317c
00003176  FF46FC            inc word [bp-0x4]
00003179  E9E8FF            jmp word 0x3164
0000317C  E8D9F3            call word 0x2558
0000317F  B8D900            mov ax,0xd9
00003182  50                push ax
00003183  B80000            mov ax,0x0
00003186  E814F7            call word 0x289d
00003189  8B460A            mov ax,[bp+0xa]
0000318C  50                push ax
0000318D  8B4604            mov ax,[bp+0x4]
00003190  2D0400            sub ax,0x4
00003193  E814DC            call word 0xdaa
00003196  E8BFF3            call word 0x2558
00003199  B8C600            mov ax,0xc6
0000319C  50                push ax
0000319D  B80000            mov ax,0x0
000031A0  E8FAF6            call word 0x289d
000031A3  8B4608            mov ax,[bp+0x8]
000031A6  050100            add ax,0x1
000031A9  50                push ax
000031AA  8B4606            mov ax,[bp+0x6]
000031AD  2D0100            sub ax,0x1
000031B0  59                pop cx
000031B1  91                xchg ax,cx
000031B2  2BC8              sub cx,ax
000031B4  7D03              jnl 0x31b9
000031B6  E91C00            jmp word 0x31d5
000031B9  41                inc cx
000031BA  8946FC            mov [bp-0x4],ax
000031BD  51                push cx
000031BE  E897F3            call word 0x2558
000031C1  B8CD00            mov ax,0xcd
000031C4  50                push ax
000031C5  B80000            mov ax,0x0
000031C8  E8D2F6            call word 0x289d
000031CB  59                pop cx
000031CC  49                dec cx
000031CD  7406              jz 0x31d5
000031CF  FF46FC            inc word [bp-0x4]
000031D2  E9E8FF            jmp word 0x31bd
000031D5  E880F3            call word 0x2558
000031D8  B8B500            mov ax,0xb5
000031DB  50                push ax
000031DC  B80000            mov ax,0x0
000031DF  E8BBF6            call word 0x289d
000031E2  B82000            mov ax,0x20
000031E5  50                push ax
000031E6  B80100            mov ax,0x1
000031E9  E8BEDB            call word 0xdaa
000031EC  E869F3            call word 0x2558
000031EF  E86BF7            call word 0x295d
000031F2  0D4D20            or ax,0x204d
000031F5  41                inc cx
000031F6  204420            and [si+0x20],al
000031F9  42                inc dx
000031FA  204120            and [bx+di+0x20],al
000031FD  4C                dec sp
000031FE  204CE9            and [si-0x17],cl
00003201  0000              add [bx+si],al
00003203  8BE5              mov sp,bp
00003205  5D                pop bp
00003206  C20800            ret 0x8
00003209  55                push bp
0000320A  8BEC              mov bp,sp
0000320C  55                push bp
0000320D  E90000            jmp word 0x3210
00003210  E813D0            call word 0x226
00003213  B80100            mov ax,0x1
00003216  50                push ax
00003217  B80100            mov ax,0x1
0000321A  50                push ax
0000321B  B85000            mov ax,0x50
0000321E  50                push ax
0000321F  B81800            mov ax,0x18
00003222  50                push ax
00003223  E84FFE            call word 0x3075
00003226  B80F00            mov ax,0xf
00003229  E88FD1            call word 0x3bb
0000322C  B80200            mov ax,0x2
0000322F  50                push ax
00003230  B81600            mov ax,0x16
00003233  E874DB            call word 0xdaa
00003236  E81FF3            call word 0x2558
00003239  B8C900            mov ax,0xc9
0000323C  50                push ax
0000323D  B8CD00            mov ax,0xcd
00003240  8AE0              mov ah,al
00003242  B001              mov al,0x1
00003244  50                push ax
00003245  E83BE2            call word 0x1483
00003248  E8B2E0            call word 0x12fd
0000324B  B8BB00            mov ax,0xbb
0000324E  8AE0              mov ah,al
00003250  B001              mov al,0x1
00003252  50                push ax
00003253  E8A7E0            call word 0x12fd
00003256  B8C900            mov ax,0xc9
00003259  8AE0              mov ah,al
0000325B  B001              mov al,0x1
0000325D  50                push ax
0000325E  E89CE0            call word 0x12fd
00003261  B8CD00            mov ax,0xcd
00003264  8AE0              mov ah,al
00003266  B001              mov al,0x1
00003268  50                push ax
00003269  E891E0            call word 0x12fd
0000326C  B8BB00            mov ax,0xbb
0000326F  8AE0              mov ah,al
00003271  B001              mov al,0x1
00003273  50                push ax
00003274  E886E0            call word 0x12fd
00003277  B8C900            mov ax,0xc9
0000327A  8AE0              mov ah,al
0000327C  B001              mov al,0x1
0000327E  50                push ax
0000327F  E87BE0            call word 0x12fd
00003282  B8CD00            mov ax,0xcd
00003285  8AE0              mov ah,al
00003287  B001              mov al,0x1
00003289  50                push ax
0000328A  E870E0            call word 0x12fd
0000328D  B8BB00            mov ax,0xbb
00003290  8AE0              mov ah,al
00003292  B001              mov al,0x1
00003294  50                push ax
00003295  E865E0            call word 0x12fd
00003298  B80000            mov ax,0x0
0000329B  E888F6            call word 0x2926
0000329E  B80200            mov ax,0x2
000032A1  50                push ax
000032A2  B81700            mov ax,0x17
000032A5  E802DB            call word 0xdaa
000032A8  E8ADF2            call word 0x2558
000032AB  B8C800            mov ax,0xc8
000032AE  50                push ax
000032AF  B8CD00            mov ax,0xcd
000032B2  8AE0              mov ah,al
000032B4  B001              mov al,0x1
000032B6  50                push ax
000032B7  E8C9E1            call word 0x1483
000032BA  E840E0            call word 0x12fd
000032BD  B8BC00            mov ax,0xbc
000032C0  8AE0              mov ah,al
000032C2  B001              mov al,0x1
000032C4  50                push ax
000032C5  E835E0            call word 0x12fd
000032C8  B8C800            mov ax,0xc8
000032CB  8AE0              mov ah,al
000032CD  B001              mov al,0x1
000032CF  50                push ax
000032D0  E82AE0            call word 0x12fd
000032D3  B8CD00            mov ax,0xcd
000032D6  8AE0              mov ah,al
000032D8  B001              mov al,0x1
000032DA  50                push ax
000032DB  E81FE0            call word 0x12fd
000032DE  B8BC00            mov ax,0xbc
000032E1  8AE0              mov ah,al
000032E3  B001              mov al,0x1
000032E5  50                push ax
000032E6  E814E0            call word 0x12fd
000032E9  B8C800            mov ax,0xc8
000032EC  8AE0              mov ah,al
000032EE  B001              mov al,0x1
000032F0  50                push ax
000032F1  E809E0            call word 0x12fd
000032F4  B8CD00            mov ax,0xcd
000032F7  8AE0              mov ah,al
000032F9  B001              mov al,0x1
000032FB  50                push ax
000032FC  E8FEDF            call word 0x12fd
000032FF  B8BC00            mov ax,0xbc
00003302  8AE0              mov ah,al
00003304  B001              mov al,0x1
00003306  50                push ax
00003307  E8F3DF            call word 0x12fd
0000330A  B80000            mov ax,0x0
0000330D  E816F6            call word 0x2926
00003310  B80F00            mov ax,0xf
00003313  E8A5D0            call word 0x3bb
00003316  B83C00            mov ax,0x3c
00003319  50                push ax
0000331A  B81700            mov ax,0x17
0000331D  E88ADA            call word 0xdaa
00003320  E835F2            call word 0x2558
00003323  E837F6            call word 0x295d
00003326  06                push es
00003327  42                inc dx
00003328  41                inc cx
00003329  4C                dec sp
0000332A  4C                dec sp
0000332B  53                push bx
0000332C  3AA1230A          cmp ah,[bx+di+0xa23]
00003330  3D0000            cmp ax,0x0
00003333  7F03              jg 0x3338
00003335  E94400            jmp word 0x337c
00003338  B80F00            mov ax,0xf
0000333B  E87DD0            call word 0x3bb
0000333E  B82800            mov ax,0x28
00003341  50                push ax
00003342  B81500            mov ax,0x15
00003345  E862DA            call word 0xdaa
00003348  E80DF2            call word 0x2558
0000334B  E80FF6            call word 0x295d
0000334E  0C42              or al,0x42
00003350  657374            gs jnc 0x33c7
00003353  205363            and [bp+di+0x63],dl
00003356  6F                outsw
00003357  7265              jc 0x33be
00003359  3A20              cmp ah,[bx+si]
0000335B  BF180A            mov di,0xa18
0000335E  1E                push ds
0000335F  E86ADE            call word 0x11cc
00003362  B80000            mov ax,0x0
00003365  E8BEF5            call word 0x2926
00003368  B82000            mov ax,0x20
0000336B  50                push ax
0000336C  B80000            mov ax,0x0
0000336F  E82BF5            call word 0x289d
00003372  A1230A            mov ax,[0xa23]
00003375  50                push ax
00003376  B80000            mov ax,0x0
00003379  E83DF5            call word 0x28b9
0000337C  E90000            jmp word 0x337f
0000337F  8BE5              mov sp,bp
00003381  5D                pop bp
00003382  C3                ret
00003383  55                push bp
00003384  8BEC              mov bp,sp
00003386  55                push bp
00003387  E90000            jmp word 0x338a
0000338A  B80100            mov ax,0x1
0000338D  A37402            mov [0x274],ax
00003390  A17402            mov ax,[0x274]
00003393  3B06010A          cmp ax,[0xa01]
00003397  7E03              jng 0x339c
00003399  E9D104            jmp word 0x386d
0000339C  B80000            mov ax,0x0
0000339F  A2170A            mov [0xa17],al
000033A2  A17402            mov ax,[0x274]
000033A5  D1E0              shl ax,1
000033A7  D1E0              shl ax,1
000033A9  97                xchg ax,di
000033AA  8B855D09          mov ax,[di+0x95d]
000033AE  A30D0A            mov [0xa0d],ax
000033B1  A17402            mov ax,[0x274]
000033B4  D1E0              shl ax,1
000033B6  D1E0              shl ax,1
000033B8  97                xchg ax,di
000033B9  8B85BD08          mov ax,[di+0x8bd]
000033BD  A30F0A            mov [0xa0f],ax
000033C0  A10D0A            mov ax,[0xa0d]
000033C3  50                push ax
000033C4  A10F0A            mov ax,[0xa0f]
000033C7  E8E0D9            call word 0xdaa
000033CA  B80F00            mov ax,0xf
000033CD  E8EBCF            call word 0x3bb
000033D0  E885F1            call word 0x2558
000033D3  B82000            mov ax,0x20
000033D6  50                push ax
000033D7  B80000            mov ax,0x0
000033DA  E8C0F4            call word 0x289d
000033DD  A17402            mov ax,[0x274]
000033E0  D1E0              shl ax,1
000033E2  D1E0              shl ax,1
000033E4  97                xchg ax,di
000033E5  57                push di
000033E6  A17402            mov ax,[0x274]
000033E9  D1E0              shl ax,1
000033EB  D1E0              shl ax,1
000033ED  97                xchg ax,di
000033EE  8B85BD08          mov ax,[di+0x8bd]
000033F2  50                push ax
000033F3  A17402            mov ax,[0x274]
000033F6  D1E0              shl ax,1
000033F8  D1E0              shl ax,1
000033FA  97                xchg ax,di
000033FB  58                pop ax
000033FC  0385BF08          add ax,[di+0x8bf]
00003400  5F                pop di
00003401  8985BD08          mov [di+0x8bd],ax
00003405  A17402            mov ax,[0x274]
00003408  D1E0              shl ax,1
0000340A  D1E0              shl ax,1
0000340C  97                xchg ax,di
0000340D  8B85BD08          mov ax,[di+0x8bd]
00003411  3D1300            cmp ax,0x13
00003414  7F03              jg 0x3419
00003416  E92400            jmp word 0x343d
00003419  A17402            mov ax,[0x274]
0000341C  D1E0              shl ax,1
0000341E  D1E0              shl ax,1
00003420  97                xchg ax,di
00003421  B81300            mov ax,0x13
00003424  8985BD08          mov [di+0x8bd],ax
00003428  A17402            mov ax,[0x274]
0000342B  D1E0              shl ax,1
0000342D  D1E0              shl ax,1
0000342F  97                xchg ax,di
00003430  B8FFFF            mov ax,0xffff
00003433  8985BF08          mov [di+0x8bf],ax
00003437  B80100            mov ax,0x1
0000343A  A2170A            mov [0xa17],al
0000343D  A17402            mov ax,[0x274]
00003440  D1E0              shl ax,1
00003442  D1E0              shl ax,1
00003444  97                xchg ax,di
00003445  8B85BD08          mov ax,[di+0x8bd]
00003449  3D0200            cmp ax,0x2
0000344C  7C03              jl 0x3451
0000344E  E92400            jmp word 0x3475
00003451  A17402            mov ax,[0x274]
00003454  D1E0              shl ax,1
00003456  D1E0              shl ax,1
00003458  97                xchg ax,di
00003459  B80200            mov ax,0x2
0000345C  8985BD08          mov [di+0x8bd],ax
00003460  A17402            mov ax,[0x274]
00003463  D1E0              shl ax,1
00003465  D1E0              shl ax,1
00003467  97                xchg ax,di
00003468  B80100            mov ax,0x1
0000346B  8985BF08          mov [di+0x8bf],ax
0000346F  B80100            mov ax,0x1
00003472  A2170A            mov [0xa17],al
00003475  A17402            mov ax,[0x274]
00003478  D1E0              shl ax,1
0000347A  D1E0              shl ax,1
0000347C  97                xchg ax,di
0000347D  57                push di
0000347E  A17402            mov ax,[0x274]
00003481  D1E0              shl ax,1
00003483  D1E0              shl ax,1
00003485  97                xchg ax,di
00003486  8B855D09          mov ax,[di+0x95d]
0000348A  50                push ax
0000348B  A17402            mov ax,[0x274]
0000348E  D1E0              shl ax,1
00003490  D1E0              shl ax,1
00003492  97                xchg ax,di
00003493  58                pop ax
00003494  03855F09          add ax,[di+0x95f]
00003498  5F                pop di
00003499  89855D09          mov [di+0x95d],ax
0000349D  A17402            mov ax,[0x274]
000034A0  D1E0              shl ax,1
000034A2  D1E0              shl ax,1
000034A4  97                xchg ax,di
000034A5  8B855D09          mov ax,[di+0x95d]
000034A9  3D4E00            cmp ax,0x4e
000034AC  7F03              jg 0x34b1
000034AE  E92400            jmp word 0x34d5
000034B1  A17402            mov ax,[0x274]
000034B4  D1E0              shl ax,1
000034B6  D1E0              shl ax,1
000034B8  97                xchg ax,di
000034B9  B84E00            mov ax,0x4e
000034BC  89855D09          mov [di+0x95d],ax
000034C0  A17402            mov ax,[0x274]
000034C3  D1E0              shl ax,1
000034C5  D1E0              shl ax,1
000034C7  97                xchg ax,di
000034C8  B8FFFF            mov ax,0xffff
000034CB  89855F09          mov [di+0x95f],ax
000034CF  B80100            mov ax,0x1
000034D2  A2170A            mov [0xa17],al
000034D5  A17402            mov ax,[0x274]
000034D8  D1E0              shl ax,1
000034DA  D1E0              shl ax,1
000034DC  97                xchg ax,di
000034DD  8B855D09          mov ax,[di+0x95d]
000034E1  3D0200            cmp ax,0x2
000034E4  7C03              jl 0x34e9
000034E6  E92400            jmp word 0x350d
000034E9  A17402            mov ax,[0x274]
000034EC  D1E0              shl ax,1
000034EE  D1E0              shl ax,1
000034F0  97                xchg ax,di
000034F1  B80200            mov ax,0x2
000034F4  89855D09          mov [di+0x95d],ax
000034F8  A17402            mov ax,[0x274]
000034FB  D1E0              shl ax,1
000034FD  D1E0              shl ax,1
000034FF  97                xchg ax,di
00003500  B80100            mov ax,0x1
00003503  89855F09          mov [di+0x95f],ax
00003507  B80100            mov ax,0x1
0000350A  A2170A            mov [0xa17],al
0000350D  A0170A            mov al,[0xa17]
00003510  32E4              xor ah,ah
00003512  3D0100            cmp ax,0x1
00003515  7403              jz 0x351a
00003517  E90600            jmp word 0x3520
0000351A  B83007            mov ax,0x730
0000351D  E87CD0            call word 0x59c
00003520  A17402            mov ax,[0x274]
00003523  D1E0              shl ax,1
00003525  D1E0              shl ax,1
00003527  97                xchg ax,di
00003528  8B855D09          mov ax,[di+0x95d]
0000352C  A30D0A            mov [0xa0d],ax
0000352F  A17402            mov ax,[0x274]
00003532  D1E0              shl ax,1
00003534  D1E0              shl ax,1
00003536  97                xchg ax,di
00003537  8B85BD08          mov ax,[di+0x8bd]
0000353B  A30F0A            mov [0xa0f],ax
0000353E  A10D0A            mov ax,[0xa0d]
00003541  50                push ax
00003542  A10F0A            mov ax,[0xa0f]
00003545  E862D8            call word 0xdaa
00003548  B80F00            mov ax,0xf
0000354B  E86DCE            call word 0x3bb
0000354E  E807F0            call word 0x2558
00003551  B80F00            mov ax,0xf
00003554  50                push ax
00003555  B80000            mov ax,0x0
00003558  E842F3            call word 0x289d
0000355B  E865D0            call word 0x5c3
0000355E  A10F0A            mov ax,[0xa0f]
00003561  3B06050A          cmp ax,[0xa05]
00003565  B80100            mov ax,0x1
00003568  7401              jz 0x356b
0000356A  48                dec ax
0000356B  50                push ax
0000356C  A10F0A            mov ax,[0xa0f]
0000356F  50                push ax
00003570  A1050A            mov ax,[0xa05]
00003573  050100            add ax,0x1
00003576  59                pop cx
00003577  91                xchg ax,cx
00003578  3BC1              cmp ax,cx
0000357A  B80100            mov ax,0x1
0000357D  7401              jz 0x3580
0000357F  48                dec ax
00003580  59                pop cx
00003581  0BC1              or ax,cx
00003583  50                push ax
00003584  A10D0A            mov ax,[0xa0d]
00003587  3B06030A          cmp ax,[0xa03]
0000358B  B80100            mov ax,0x1
0000358E  7D01              jnl 0x3591
00003590  48                dec ax
00003591  50                push ax
00003592  A10D0A            mov ax,[0xa0d]
00003595  50                push ax
00003596  A1030A            mov ax,[0xa03]
00003599  050300            add ax,0x3
0000359C  59                pop cx
0000359D  91                xchg ax,cx
0000359E  3BC1              cmp ax,cx
000035A0  B80100            mov ax,0x1
000035A3  7E01              jng 0x35a6
000035A5  48                dec ax
000035A6  59                pop cx
000035A7  23C1              and ax,cx
000035A9  59                pop cx
000035AA  23C1              and ax,cx
000035AC  50                push ax
000035AD  A0C008            mov al,[0x8c0]
000035B0  32E4              xor ah,ah
000035B2  50                push ax
000035B3  A1050A            mov ax,[0xa05]
000035B6  3D0300            cmp ax,0x3
000035B9  B80100            mov ax,0x1
000035BC  7C01              jl 0x35bf
000035BE  48                dec ax
000035BF  50                push ax
000035C0  A1050A            mov ax,[0xa05]
000035C3  3D1100            cmp ax,0x11
000035C6  B80100            mov ax,0x1
000035C9  7F01              jg 0x35cc
000035CB  48                dec ax
000035CC  59                pop cx
000035CD  0BC1              or ax,cx
000035CF  50                push ax
000035D0  A1030A            mov ax,[0xa03]
000035D3  3D0200            cmp ax,0x2
000035D6  B80100            mov ax,0x1
000035D9  7C01              jl 0x35dc
000035DB  48                dec ax
000035DC  59                pop cx
000035DD  0BC1              or ax,cx
000035DF  50                push ax
000035E0  A1030A            mov ax,[0xa03]
000035E3  3D4C00            cmp ax,0x4c
000035E6  B80100            mov ax,0x1
000035E9  7F01              jg 0x35ec
000035EB  48                dec ax
000035EC  50                push ax
000035ED  A1050A            mov ax,[0xa05]
000035F0  3B06070A          cmp ax,[0xa07]
000035F4  B80100            mov ax,0x1
000035F7  7C01              jl 0x35fa
000035F9  48                dec ax
000035FA  50                push ax
000035FB  A1050A            mov ax,[0xa05]
000035FE  50                push ax
000035FF  A1070A            mov ax,[0xa07]
00003602  050500            add ax,0x5
00003605  59                pop cx
00003606  91                xchg ax,cx
00003607  3BC1              cmp ax,cx
00003609  B80100            mov ax,0x1
0000360C  7F01              jg 0x360f
0000360E  48                dec ax
0000360F  59                pop cx
00003610  0BC1              or ax,cx
00003612  59                pop cx
00003613  23C1              and ax,cx
00003615  59                pop cx
00003616  0BC1              or ax,cx
00003618  59                pop cx
00003619  23C1              and ax,cx
0000361B  59                pop cx
0000361C  0BC1              or ax,cx
0000361E  0BC0              or ax,ax
00003620  7503              jnz 0x3625
00003622  E92E02            jmp word 0x3853
00003625  A1BE08            mov ax,[0x8be]
00003628  3D0000            cmp ax,0x0
0000362B  7403              jz 0x3630
0000362D  E90600            jmp word 0x3636
00003630  B8FFFF            mov ax,0xffff
00003633  A3BE08            mov [0x8be],ax
00003636  B80000            mov ax,0x0
00003639  A2C008            mov [0x8c0],al
0000363C  A1030A            mov ax,[0xa03]
0000363F  50                push ax
00003640  A1050A            mov ax,[0xa05]
00003643  E864D7            call word 0xdaa
00003646  E80FEF            call word 0x2558
00003649  B8B200            mov ax,0xb2
0000364C  50                push ax
0000364D  B8B200            mov ax,0xb2
00003650  8AE0              mov ah,al
00003652  B001              mov al,0x1
00003654  50                push ax
00003655  E82BDE            call word 0x1483
00003658  E8A2DC            call word 0x12fd
0000365B  B8B200            mov ax,0xb2
0000365E  8AE0              mov ah,al
00003660  B001              mov al,0x1
00003662  50                push ax
00003663  E897DC            call word 0x12fd
00003666  B80000            mov ax,0x0
00003669  E8BAF2            call word 0x2926
0000366C  A1030A            mov ax,[0xa03]
0000366F  50                push ax
00003670  A1050A            mov ax,[0xa05]
00003673  050100            add ax,0x1
00003676  E831D7            call word 0xdaa
00003679  E8DCEE            call word 0x2558
0000367C  B8B200            mov ax,0xb2
0000367F  50                push ax
00003680  B8B200            mov ax,0xb2
00003683  8AE0              mov ah,al
00003685  B001              mov al,0x1
00003687  50                push ax
00003688  E8F8DD            call word 0x1483
0000368B  E86FDC            call word 0x12fd
0000368E  B8B200            mov ax,0xb2
00003691  8AE0              mov ah,al
00003693  B001              mov al,0x1
00003695  50                push ax
00003696  E864DC            call word 0x12fd
00003699  B80000            mov ax,0x0
0000369C  E887F2            call word 0x2926
0000369F  B80500            mov ax,0x5
000036A2  50                push ax
000036A3  B81900            mov ax,0x19
000036A6  59                pop cx
000036A7  91                xchg ax,cx
000036A8  2BC8              sub cx,ax
000036AA  7D03              jnl 0x36af
000036AC  E93101            jmp word 0x37e0
000036AF  41                inc cx
000036B0  A3110A            mov [0xa11],ax
000036B3  51                push cx
000036B4  B8DC00            mov ax,0xdc
000036B7  50                push ax
000036B8  A1110A            mov ax,[0xa11]
000036BB  B90A00            mov cx,0xa
000036BE  F7E9              imul cx
000036C0  59                pop cx
000036C1  03C1              add ax,cx
000036C3  E8D6CE            call word 0x59c
000036C6  A1110A            mov ax,[0xa11]
000036C9  E847CB            call word 0x213
000036CC  A1110A            mov ax,[0xa11]
000036CF  50                push ax
000036D0  B80500            mov ax,0x5
000036D3  E859E4            call word 0x1b2f
000036D6  E85FE4            call word 0x1b38
000036D9  E803E3            call word 0x19df
000036DC  E8DBE3            call word 0x1aba
000036DF  A1110A            mov ax,[0xa11]
000036E2  50                push ax
000036E3  B80500            mov ax,0x5
000036E6  E846E4            call word 0x1b2f
000036E9  E84CE4            call word 0x1b38
000036EC  E8F0E2            call word 0x19df
000036EF  E81CE3            call word 0x1a0e
000036F2  7503              jnz 0x36f7
000036F4  E96C00            jmp word 0x3763
000036F7  B80F00            mov ax,0xf
000036FA  E8BECC            call word 0x3bb
000036FD  A1030A            mov ax,[0xa03]
00003700  50                push ax
00003701  A1050A            mov ax,[0xa05]
00003704  E8A3D6            call word 0xdaa
00003707  E84EEE            call word 0x2558
0000370A  B8B000            mov ax,0xb0
0000370D  50                push ax
0000370E  B8B000            mov ax,0xb0
00003711  8AE0              mov ah,al
00003713  B001              mov al,0x1
00003715  50                push ax
00003716  E86ADD            call word 0x1483
00003719  E8E1DB            call word 0x12fd
0000371C  B8B000            mov ax,0xb0
0000371F  8AE0              mov ah,al
00003721  B001              mov al,0x1
00003723  50                push ax
00003724  E8D6DB            call word 0x12fd
00003727  B80000            mov ax,0x0
0000372A  E8F9F1            call word 0x2926
0000372D  A1030A            mov ax,[0xa03]
00003730  50                push ax
00003731  A1050A            mov ax,[0xa05]
00003734  050100            add ax,0x1
00003737  E870D6            call word 0xdaa
0000373A  E81BEE            call word 0x2558
0000373D  B8B000            mov ax,0xb0
00003740  50                push ax
00003741  B8B000            mov ax,0xb0
00003744  8AE0              mov ah,al
00003746  B001              mov al,0x1
00003748  50                push ax
00003749  E837DD            call word 0x1483
0000374C  E8AEDB            call word 0x12fd
0000374F  B8B000            mov ax,0xb0
00003752  8AE0              mov ah,al
00003754  B001              mov al,0x1
00003756  50                push ax
00003757  E8A3DB            call word 0x12fd
0000375A  B80000            mov ax,0x0
0000375D  E8C6F1            call word 0x2926
00003760  E96900            jmp word 0x37cc
00003763  B80F00            mov ax,0xf
00003766  E852CC            call word 0x3bb
00003769  A1030A            mov ax,[0xa03]
0000376C  50                push ax
0000376D  A1050A            mov ax,[0xa05]
00003770  E837D6            call word 0xdaa
00003773  E8E2ED            call word 0x2558
00003776  B8B200            mov ax,0xb2
00003779  50                push ax
0000377A  B8B200            mov ax,0xb2
0000377D  8AE0              mov ah,al
0000377F  B001              mov al,0x1
00003781  50                push ax
00003782  E8FEDC            call word 0x1483
00003785  E875DB            call word 0x12fd
00003788  B8B200            mov ax,0xb2
0000378B  8AE0              mov ah,al
0000378D  B001              mov al,0x1
0000378F  50                push ax
00003790  E86ADB            call word 0x12fd
00003793  B80000            mov ax,0x0
00003796  E88DF1            call word 0x2926
00003799  A1030A            mov ax,[0xa03]
0000379C  50                push ax
0000379D  A1050A            mov ax,[0xa05]
000037A0  050100            add ax,0x1
000037A3  E804D6            call word 0xdaa
000037A6  E8AFED            call word 0x2558
000037A9  B8B200            mov ax,0xb2
000037AC  50                push ax
000037AD  B8B200            mov ax,0xb2
000037B0  8AE0              mov ah,al
000037B2  B001              mov al,0x1
000037B4  50                push ax
000037B5  E8CBDC            call word 0x1483
000037B8  E842DB            call word 0x12fd
000037BB  B8B200            mov ax,0xb2
000037BE  8AE0              mov ah,al
000037C0  B001              mov al,0x1
000037C2  50                push ax
000037C3  E837DB            call word 0x12fd
000037C6  B80000            mov ax,0x0
000037C9  E85AF1            call word 0x2926
000037CC  B80F00            mov ax,0xf
000037CF  E8E9CB            call word 0x3bb
000037D2  E8EECD            call word 0x5c3
000037D5  59                pop cx
000037D6  49                dec cx
000037D7  7407              jz 0x37e0
000037D9  FF06110A          inc word [0xa11]
000037DD  E9D3FE            jmp word 0x36b3
000037E0  A1030A            mov ax,[0xa03]
000037E3  50                push ax
000037E4  A1050A            mov ax,[0xa05]
000037E7  E8C0D5            call word 0xdaa
000037EA  E86BED            call word 0x2558
000037ED  E86DF1            call word 0x295d
000037F0  0320              add sp,[bx+si]
000037F2  2020              and [bx+si],ah
000037F4  A1030A            mov ax,[0xa03]
000037F7  50                push ax
000037F8  A1050A            mov ax,[0xa05]
000037FB  050100            add ax,0x1
000037FE  E8A9D5            call word 0xdaa
00003801  E854ED            call word 0x2558
00003804  E856F1            call word 0x295d
00003807  0320              add sp,[bx+si]
00003809  2020              and [bx+si],ah
0000380B  B81400            mov ax,0x14
0000380E  50                push ax
0000380F  B81600            mov ax,0x16
00003812  E895D5            call word 0xdaa
00003815  E840ED            call word 0x2558
00003818  E842F1            call word 0x295d
0000381B  185072            sbb [bx+si+0x72],dl
0000381E  657373            gs jnc 0x3894
00003821  205350            and [bp+di+0x50],dl
00003824  41                inc cx
00003825  43                inc bx
00003826  45                inc bp
00003827  204241            and [bp+si+0x41],al
0000382A  52                push dx
0000382B  20746F            and [si+0x6f],dh
0000382E  207374            and [bp+di+0x74],dh
00003831  61                popaw
00003832  7274              jc 0x38a8
00003834  B80100            mov ax,0x1
00003837  50                push ax
00003838  B80100            mov ax,0x1
0000383B  50                push ax
0000383C  B85000            mov ax,0x50
0000383F  50                push ax
00003840  B81800            mov ax,0x18
00003843  50                push ax
00003844  E82EF8            call word 0x3075
00003847  B8FDFF            mov ax,0xfffd
0000384A  A3030A            mov [0xa03],ax
0000384D  B80000            mov ax,0x0
00003850  A3050A            mov [0xa05],ax
00003853  E84ED5            call word 0xda4
00003856  7503              jnz 0x385b
00003858  E90600            jmp word 0x3861
0000385B  A1010A            mov ax,[0xa01]
0000385E  A37402            mov [0x274],ax
00003861  A17402            mov ax,[0x274]
00003864  050100            add ax,0x1
00003867  A37402            mov [0x274],ax
0000386A  E923FB            jmp word 0x3390
0000386D  B84600            mov ax,0x46
00003870  50                push ax
00003871  B81700            mov ax,0x17
00003874  E833D5            call word 0xdaa
00003877  E8DEEC            call word 0x2558
0000387A  A1010A            mov ax,[0xa01]
0000387D  50                push ax
0000387E  B80000            mov ax,0x0
00003881  E835F0            call word 0x28b9
00003884  E90000            jmp word 0x3887
00003887  8BE5              mov sp,bp
00003889  5D                pop bp
0000388A  C3                ret
0000388B  55                push bp
0000388C  8BEC              mov bp,sp
0000388E  55                push bp
0000388F  E90000            jmp word 0x3892
00003892  E80FD5            call word 0xda4
00003895  3401              xor al,0x1
00003897  7503              jnz 0x389c
00003899  E90900            jmp word 0x38a5
0000389C  B80500            mov ax,0x5
0000389F  E871C9            call word 0x213
000038A2  E97104            jmp word 0x3d16
000038A5  A1050A            mov ax,[0xa05]
000038A8  A3130A            mov [0xa13],ax
000038AB  A1030A            mov ax,[0xa03]
000038AE  A3110A            mov [0xa11],ax
000038B1  BF4A01            mov di,0x14a
000038B4  1E                push ds
000038B5  E883EC            call word 0x253b
000038B8  BF7602            mov di,0x276
000038BB  1E                push ds
000038BC  E8A3EE            call word 0x2762
000038BF  A07602            mov al,[0x276]
000038C2  32E4              xor ah,ah
000038C4  3D1B00            cmp ax,0x1b
000038C7  B80100            mov ax,0x1
000038CA  7401              jz 0x38cd
000038CC  48                dec ax
000038CD  50                push ax
000038CE  E8D3D4            call word 0xda4
000038D1  59                pop cx
000038D2  23C1              and ax,cx
000038D4  0BC0              or ax,ax
000038D6  7503              jnz 0x38db
000038D8  E90E00            jmp word 0x38e9
000038DB  BF4A01            mov di,0x14a
000038DE  1E                push ds
000038DF  E859EC            call word 0x253b
000038E2  BF7602            mov di,0x276
000038E5  1E                push ds
000038E6  E879EE            call word 0x2762
000038E9  B80100            mov ax,0x1
000038EC  50                push ax
000038ED  B80200            mov ax,0x2
000038F0  E8B7D4            call word 0xdaa
000038F3  E862EC            call word 0x2558
000038F6  A07602            mov al,[0x276]
000038F9  32E4              xor ah,ah
000038FB  50                push ax
000038FC  B80000            mov ax,0x0
000038FF  E8B7EF            call word 0x28b9
00003902  A07602            mov al,[0x276]
00003905  32E4              xor ah,ah
00003907  3D0300            cmp ax,0x3
0000390A  7403              jz 0x390f
0000390C  E91300            jmp word 0x3922
0000390F  E814C9            call word 0x226
00003912  2EC43EA22D        les di,[cs:0x2da2]
00003917  B80000            mov ax,0x0
0000391A  268905            mov [es:di],ax
0000391D  33C0              xor ax,ax
0000391F  E967D3            jmp word 0xc89
00003922  A0C008            mov al,[0x8c0]
00003925  32E4              xor ah,ah
00003927  0BC0              or ax,ax
00003929  7503              jnz 0x392e
0000392B  E98F02            jmp word 0x3bbd
0000392E  A07602            mov al,[0x276]
00003931  32E4              xor ah,ah
00003933  3D3700            cmp ax,0x37
00003936  7403              jz 0x393b
00003938  E91500            jmp word 0x3950
0000393B  A1050A            mov ax,[0xa05]
0000393E  2D0100            sub ax,0x1
00003941  A3050A            mov [0xa05],ax
00003944  A1030A            mov ax,[0xa03]
00003947  2D0100            sub ax,0x1
0000394A  A3030A            mov [0xa03],ax
0000394D  E9B500            jmp word 0x3a05
00003950  3D3800            cmp ax,0x38
00003953  7403              jz 0x3958
00003955  E90C00            jmp word 0x3964
00003958  A1050A            mov ax,[0xa05]
0000395B  2D0100            sub ax,0x1
0000395E  A3050A            mov [0xa05],ax
00003961  E9A100            jmp word 0x3a05
00003964  3D3900            cmp ax,0x39
00003967  7403              jz 0x396c
00003969  E91500            jmp word 0x3981
0000396C  A1050A            mov ax,[0xa05]
0000396F  2D0100            sub ax,0x1
00003972  A3050A            mov [0xa05],ax
00003975  A1030A            mov ax,[0xa03]
00003978  050200            add ax,0x2
0000397B  A3030A            mov [0xa03],ax
0000397E  E98400            jmp word 0x3a05
00003981  3D3400            cmp ax,0x34
00003984  7403              jz 0x3989
00003986  E90C00            jmp word 0x3995
00003989  A1030A            mov ax,[0xa03]
0000398C  2D0100            sub ax,0x1
0000398F  A3030A            mov [0xa03],ax
00003992  E97000            jmp word 0x3a05
00003995  3D3600            cmp ax,0x36
00003998  7403              jz 0x399d
0000399A  E90C00            jmp word 0x39a9
0000399D  A1030A            mov ax,[0xa03]
000039A0  050200            add ax,0x2
000039A3  A3030A            mov [0xa03],ax
000039A6  E95C00            jmp word 0x3a05
000039A9  3D3100            cmp ax,0x31
000039AC  7403              jz 0x39b1
000039AE  E91500            jmp word 0x39c6
000039B1  A1030A            mov ax,[0xa03]
000039B4  2D0100            sub ax,0x1
000039B7  A3030A            mov [0xa03],ax
000039BA  A1050A            mov ax,[0xa05]
000039BD  050100            add ax,0x1
000039C0  A3050A            mov [0xa05],ax
000039C3  E93F00            jmp word 0x3a05
000039C6  3D3200            cmp ax,0x32
000039C9  7403              jz 0x39ce
000039CB  E90C00            jmp word 0x39da
000039CE  A1050A            mov ax,[0xa05]
000039D1  050100            add ax,0x1
000039D4  A3050A            mov [0xa05],ax
000039D7  E92B00            jmp word 0x3a05
000039DA  3D3300            cmp ax,0x33
000039DD  7403              jz 0x39e2
000039DF  E91500            jmp word 0x39f7
000039E2  A1050A            mov ax,[0xa05]
000039E5  050100            add ax,0x1
000039E8  A3050A            mov [0xa05],ax
000039EB  A1030A            mov ax,[0xa03]
000039EE  050200            add ax,0x2
000039F1  A3030A            mov [0xa03],ax
000039F4  E90E00            jmp word 0x3a05
000039F7  3D5100            cmp ax,0x51
000039FA  7403              jz 0x39ff
000039FC  E90600            jmp word 0x3a05
000039FF  B80100            mov ax,0x1
00003A02  A2BD08            mov [0x8bd],al
00003A05  A1110A            mov ax,[0xa11]
00003A08  50                push ax
00003A09  A1130A            mov ax,[0xa13]
00003A0C  E89BD3            call word 0xdaa
00003A0F  E846EB            call word 0x2558
00003A12  E848EF            call word 0x295d
00003A15  0320              add sp,[bx+si]
00003A17  2020              and [bx+si],ah
00003A19  A1110A            mov ax,[0xa11]
00003A1C  50                push ax
00003A1D  A1130A            mov ax,[0xa13]
00003A20  050100            add ax,0x1
00003A23  E884D3            call word 0xdaa
00003A26  E82FEB            call word 0x2558
00003A29  E831EF            call word 0x295d
00003A2C  0320              add sp,[bx+si]
00003A2E  2020              and [bx+si],ah
00003A30  A1030A            mov ax,[0xa03]
00003A33  3D4C00            cmp ax,0x4c
00003A36  B80100            mov ax,0x1
00003A39  7F01              jg 0x3a3c
00003A3B  48                dec ax
00003A3C  50                push ax
00003A3D  A1050A            mov ax,[0xa05]
00003A40  3B06070A          cmp ax,[0xa07]
00003A44  B80100            mov ax,0x1
00003A47  7D01              jnl 0x3a4a
00003A49  48                dec ax
00003A4A  50                push ax
00003A4B  A1050A            mov ax,[0xa05]
00003A4E  50                push ax
00003A4F  A1070A            mov ax,[0xa07]
00003A52  050500            add ax,0x5
00003A55  59                pop cx
00003A56  91                xchg ax,cx
00003A57  3BC1              cmp ax,cx
00003A59  B80100            mov ax,0x1
00003A5C  7E01              jng 0x3a5f
00003A5E  48                dec ax
00003A5F  59                pop cx
00003A60  23C1              and ax,cx
00003A62  59                pop cx
00003A63  23C1              and ax,cx
00003A65  0BC0              or ax,ax
00003A67  7503              jnz 0x3a6c
00003A69  E9DF00            jmp word 0x3b4b
00003A6C  B8FDFF            mov ax,0xfffd
00003A6F  A3030A            mov [0xa03],ax
00003A72  B80000            mov ax,0x0
00003A75  A3050A            mov [0xa05],ax
00003A78  A1010A            mov ax,[0xa01]
00003A7B  050100            add ax,0x1
00003A7E  A3010A            mov [0xa01],ax
00003A81  B80000            mov ax,0x0
00003A84  A2C008            mov [0x8c0],al
00003A87  B80F00            mov ax,0xf
00003A8A  E82EC9            call word 0x3bb
00003A8D  A1BE08            mov ax,[0x8be]
00003A90  B90300            mov cx,0x3
00003A93  F7E9              imul cx
00003A95  050200            add ax,0x2
00003A98  50                push ax
00003A99  B81600            mov ax,0x16
00003A9C  E80BD3            call word 0xdaa
00003A9F  E8B6EA            call word 0x2558
00003AA2  B8C900            mov ax,0xc9
00003AA5  50                push ax
00003AA6  B8CD00            mov ax,0xcd
00003AA9  8AE0              mov ah,al
00003AAB  B001              mov al,0x1
00003AAD  50                push ax
00003AAE  E8D2D9            call word 0x1483
00003AB1  E849D8            call word 0x12fd
00003AB4  B8BB00            mov ax,0xbb
00003AB7  8AE0              mov ah,al
00003AB9  B001              mov al,0x1
00003ABB  50                push ax
00003ABC  E83ED8            call word 0x12fd
00003ABF  B80000            mov ax,0x0
00003AC2  E861EE            call word 0x2926
00003AC5  A1BE08            mov ax,[0x8be]
00003AC8  B90300            mov cx,0x3
00003ACB  F7E9              imul cx
00003ACD  050200            add ax,0x2
00003AD0  50                push ax
00003AD1  B81700            mov ax,0x17
00003AD4  E8D3D2            call word 0xdaa
00003AD7  E87EEA            call word 0x2558
00003ADA  B8C800            mov ax,0xc8
00003ADD  50                push ax
00003ADE  B8CD00            mov ax,0xcd
00003AE1  8AE0              mov ah,al
00003AE3  B001              mov al,0x1
00003AE5  50                push ax
00003AE6  E89AD9            call word 0x1483
00003AE9  E811D8            call word 0x12fd
00003AEC  B8BC00            mov ax,0xbc
00003AEF  8AE0              mov ah,al
00003AF1  B001              mov al,0x1
00003AF3  50                push ax
00003AF4  E806D8            call word 0x12fd
00003AF7  B80000            mov ax,0x0
00003AFA  E829EE            call word 0x2926
00003AFD  B80F00            mov ax,0xf
00003B00  E8B8C8            call word 0x3bb
00003B03  B81400            mov ax,0x14
00003B06  50                push ax
00003B07  B81600            mov ax,0x16
00003B0A  E89DD2            call word 0xdaa
00003B0D  E848EA            call word 0x2558
00003B10  E84AEE            call word 0x295d
00003B13  185072            sbb [bx+si+0x72],dl
00003B16  657373            gs jnc 0x3b8c
00003B19  205350            and [bp+di+0x50],dl
00003B1C  41                inc cx
00003B1D  43                inc bx
00003B1E  45                inc bp
00003B1F  204241            and [bp+si+0x41],al
00003B22  52                push dx
00003B23  20746F            and [si+0x6f],dh
00003B26  207374            and [bp+di+0x74],dh
00003B29  61                popaw
00003B2A  7274              jc 0x3ba0
00003B2C  B80100            mov ax,0x1
00003B2F  50                push ax
00003B30  B80100            mov ax,0x1
00003B33  50                push ax
00003B34  B85000            mov ax,0x50
00003B37  50                push ax
00003B38  B81800            mov ax,0x18
00003B3B  50                push ax
00003B3C  E836F5            call word 0x3075
00003B3F  A1BE08            mov ax,[0x8be]
00003B42  050100            add ax,0x1
00003B45  A3BE08            mov [0x8be],ax
00003B48  E96F00            jmp word 0x3bba
00003B4B  B80F00            mov ax,0xf
00003B4E  E86AC8            call word 0x3bb
00003B51  A1030A            mov ax,[0xa03]
00003B54  50                push ax
00003B55  A1050A            mov ax,[0xa05]
00003B58  E84FD2            call word 0xdaa
00003B5B  E8FAE9            call word 0x2558
00003B5E  B8C900            mov ax,0xc9
00003B61  50                push ax
00003B62  B8CD00            mov ax,0xcd
00003B65  8AE0              mov ah,al
00003B67  B001              mov al,0x1
00003B69  50                push ax
00003B6A  E816D9            call word 0x1483
00003B6D  E88DD7            call word 0x12fd
00003B70  B8BB00            mov ax,0xbb
00003B73  8AE0              mov ah,al
00003B75  B001              mov al,0x1
00003B77  50                push ax
00003B78  E882D7            call word 0x12fd
00003B7B  B80000            mov ax,0x0
00003B7E  E8A5ED            call word 0x2926
00003B81  A1030A            mov ax,[0xa03]
00003B84  50                push ax
00003B85  A1050A            mov ax,[0xa05]
00003B88  050100            add ax,0x1
00003B8B  E81CD2            call word 0xdaa
00003B8E  E8C7E9            call word 0x2558
00003B91  B8C800            mov ax,0xc8
00003B94  50                push ax
00003B95  B8CD00            mov ax,0xcd
00003B98  8AE0              mov ah,al
00003B9A  B001              mov al,0x1
00003B9C  50                push ax
00003B9D  E8E3D8            call word 0x1483
00003BA0  E85AD7            call word 0x12fd
00003BA3  B8BC00            mov ax,0xbc
00003BA6  8AE0              mov ah,al
00003BA8  B001              mov al,0x1
00003BAA  50                push ax
00003BAB  E84FD7            call word 0x12fd
00003BAE  B80000            mov ax,0x0
00003BB1  E872ED            call word 0x2926
00003BB4  B80F00            mov ax,0xf
00003BB7  E801C8            call word 0x3bb
00003BBA  E95901            jmp word 0x3d16
00003BBD  A07602            mov al,[0x276]
00003BC0  32E4              xor ah,ah
00003BC2  3D2000            cmp ax,0x20
00003BC5  7403              jz 0x3bca
00003BC7  E94C01            jmp word 0x3d16
00003BCA  B80100            mov ax,0x1
00003BCD  A2C008            mov [0x8c0],al
00003BD0  A1BE08            mov ax,[0x8be]
00003BD3  2D0100            sub ax,0x1
00003BD6  A3BE08            mov [0x8be],ax
00003BD9  A1BE08            mov ax,[0x8be]
00003BDC  3D0000            cmp ax,0x0
00003BDF  7D03              jnl 0x3be4
00003BE1  E93201            jmp word 0x3d16
00003BE4  A1BE08            mov ax,[0x8be]
00003BE7  B90300            mov cx,0x3
00003BEA  F7E9              imul cx
00003BEC  050200            add ax,0x2
00003BEF  50                push ax
00003BF0  B81600            mov ax,0x16
00003BF3  E8B4D1            call word 0xdaa
00003BF6  E85FE9            call word 0x2558
00003BF9  E861ED            call word 0x295d
00003BFC  0320              add sp,[bx+si]
00003BFE  2020              and [bx+si],ah
00003C00  A1BE08            mov ax,[0x8be]
00003C03  B90300            mov cx,0x3
00003C06  F7E9              imul cx
00003C08  050200            add ax,0x2
00003C0B  50                push ax
00003C0C  B81700            mov ax,0x17
00003C0F  E898D1            call word 0xdaa
00003C12  E843E9            call word 0x2558
00003C15  E845ED            call word 0x295d
00003C18  0320              add sp,[bx+si]
00003C1A  2020              and [bx+si],ah
00003C1C  B81400            mov ax,0x14
00003C1F  50                push ax
00003C20  B81600            mov ax,0x16
00003C23  E884D1            call word 0xdaa
00003C26  E82FE9            call word 0x2558
00003C29  E831ED            call word 0x295d
00003C2C  1820              sbb [bx+si],ah
00003C2E  2020              and [bx+si],ah
00003C30  2020              and [bx+si],ah
00003C32  2020              and [bx+si],ah
00003C34  2020              and [bx+si],ah
00003C36  2020              and [bx+si],ah
00003C38  2020              and [bx+si],ah
00003C3A  2020              and [bx+si],ah
00003C3C  2020              and [bx+si],ah
00003C3E  2020              and [bx+si],ah
00003C40  2020              and [bx+si],ah
00003C42  2020              and [bx+si],ah
00003C44  20B80300          and [bx+si+0x3],bh
00003C48  A3030A            mov [0xa03],ax
00003C4B  B80F00            mov ax,0xf
00003C4E  E889D4            call word 0x10da
00003C51  050300            add ax,0x3
00003C54  A3050A            mov [0xa05],ax
00003C57  B80F00            mov ax,0xf
00003C5A  E85EC7            call word 0x3bb
00003C5D  A1030A            mov ax,[0xa03]
00003C60  50                push ax
00003C61  A1050A            mov ax,[0xa05]
00003C64  E843D1            call word 0xdaa
00003C67  E8EEE8            call word 0x2558
00003C6A  B8C900            mov ax,0xc9
00003C6D  50                push ax
00003C6E  B8CD00            mov ax,0xcd
00003C71  8AE0              mov ah,al
00003C73  B001              mov al,0x1
00003C75  50                push ax
00003C76  E80AD8            call word 0x1483
00003C79  E881D6            call word 0x12fd
00003C7C  B8BB00            mov ax,0xbb
00003C7F  8AE0              mov ah,al
00003C81  B001              mov al,0x1
00003C83  50                push ax
00003C84  E876D6            call word 0x12fd
00003C87  B80000            mov ax,0x0
00003C8A  E899EC            call word 0x2926
00003C8D  A1030A            mov ax,[0xa03]
00003C90  50                push ax
00003C91  A1050A            mov ax,[0xa05]
00003C94  050100            add ax,0x1
00003C97  E810D1            call word 0xdaa
00003C9A  E8BBE8            call word 0x2558
00003C9D  B8C800            mov ax,0xc8
00003CA0  50                push ax
00003CA1  B8CD00            mov ax,0xcd
00003CA4  8AE0              mov ah,al
00003CA6  B001              mov al,0x1
00003CA8  50                push ax
00003CA9  E8D7D7            call word 0x1483
00003CAC  E84ED6            call word 0x12fd
00003CAF  B8BC00            mov ax,0xbc
00003CB2  8AE0              mov ah,al
00003CB4  B001              mov al,0x1
00003CB6  50                push ax
00003CB7  E843D6            call word 0x12fd
00003CBA  B80000            mov ax,0x0
00003CBD  E866EC            call word 0x2926
00003CC0  B80C00            mov ax,0xc
00003CC3  E814D4            call word 0x10da
00003CC6  050200            add ax,0x2
00003CC9  A3070A            mov [0xa07],ax
00003CCC  B80F00            mov ax,0xf
00003CCF  E8E9C6            call word 0x3bb
00003CD2  B80100            mov ax,0x1
00003CD5  50                push ax
00003CD6  B80500            mov ax,0x5
00003CD9  59                pop cx
00003CDA  91                xchg ax,cx
00003CDB  2BC8              sub cx,ax
00003CDD  7D03              jnl 0x3ce2
00003CDF  E92E00            jmp word 0x3d10
00003CE2  41                inc cx
00003CE3  A3110A            mov [0xa11],ax
00003CE6  51                push cx
00003CE7  B85000            mov ax,0x50
00003CEA  50                push ax
00003CEB  A1070A            mov ax,[0xa07]
00003CEE  0306110A          add ax,[0xa11]
00003CF2  2D0100            sub ax,0x1
00003CF5  E8B2D0            call word 0xdaa
00003CF8  E85DE8            call word 0x2558
00003CFB  B8B200            mov ax,0xb2
00003CFE  50                push ax
00003CFF  B80000            mov ax,0x0
00003D02  E898EB            call word 0x289d
00003D05  59                pop cx
00003D06  49                dec cx
00003D07  7407              jz 0x3d10
00003D09  FF06110A          inc word [0xa11]
00003D0D  E9D6FF            jmp word 0x3ce6
00003D10  B80F00            mov ax,0xf
00003D13  E8A5C6            call word 0x3bb
00003D16  B80500            mov ax,0x5
00003D19  E8F7C4            call word 0x213
00003D1C  E90000            jmp word 0x3d1f
00003D1F  8BE5              mov sp,bp
00003D21  5D                pop bp
00003D22  C3                ret
00003D23  55                push bp
00003D24  8BEC              mov bp,sp
00003D26  55                push bp
00003D27  E90C00            jmp word 0x3d36
00003D2A  0B6D61            or bp,[di+0x61]
00003D2D  6462616C          bound sp,[fs:bx+di+0x6c]
00003D31  6C                insb
00003D32  2E646F            fs outsw
00003D35  6381EC1F          arpl [bx+di+0x1fec],ax
00003D39  01E8              add ax,bp
00003D3B  E9C42E            jmp word 0x6c02
00003D3E  C43EA22D          les di,[0x2da2]
00003D42  B82000            mov ax,0x20
00003D45  268905            mov [es:di],ax
00003D48  B8000F            mov ax,0xf00
00003D4B  A36002            mov [0x260],ax
00003D4E  BF6002            mov di,0x260
00003D51  1E                push ds
00003D52  E812D2            call word 0xf67
00003D55  CD10              int 0x10
00003D57  E835D2            call word 0xf8f
00003D5A  A16002            mov ax,[0x260]
00003D5D  25FF00            and ax,0xff
00003D60  3D0700            cmp ax,0x7
00003D63  B80100            mov ax,0x1
00003D66  7501              jnz 0x3d69
00003D68  48                dec ax
00003D69  2EA2A12D          mov [cs:0x2da1],al
00003D6D  2EA0A12D          mov al,[cs:0x2da1]
00003D71  32E4              xor ah,ah
00003D73  0BC0              or ax,ax
00003D75  7503              jnz 0x3d7a
00003D77  E90A00            jmp word 0x3d84
00003D7A  B800B8            mov ax,0xb800
00003D7D  2EA39F2D          mov [cs:0x2d9f],ax
00003D81  E90700            jmp word 0x3d8b
00003D84  B800B0            mov ax,0xb000
00003D87  2EA39F2D          mov [cs:0x2d9f],ax
00003D8B  B80200            mov ax,0x2
00003D8E  50                push ax
00003D8F  B81600            mov ax,0x16
00003D92  E815D0            call word 0xdaa
00003D95  B80F00            mov ax,0xf
00003D98  E820C6            call word 0x3bb
00003D9B  E8BAE7            call word 0x2558
00003D9E  E8BCEB            call word 0x295d
00003DA1  2F                das
00003DA2  41                inc cx
00003DA3  7265              jc 0x3e0a
00003DA5  20796F            and [bx+di+0x6f],bh
00003DA8  7520              jnz 0x3dca
00003DAA  61                popaw
00003DAB  2028              and [bx+si],ch
00003DAD  3129              xor [bx+di],bp
00003DAF  46                inc si
00003DB0  61                popaw
00003DB1  6E                outsb
00003DB2  61                popaw
00003DB3  7469              jz 0x3e1e
00003DB5  632C              arpl [si],bp
00003DB7  2028              and [bx+si],ch
00003DB9  3229              xor ch,[bx+di]
00003DBB  45                inc bp
00003DBC  7870              js 0x3e2e
00003DBE  657274            gs jc 0x3e35
00003DC1  2C20              sub al,0x20
00003DC3  2833              sub [bp+di],dh
00003DC5  295665            sub [bp+0x65],dx
00003DC8  7279              jc 0x3e43
00003DCA  20676F            and [bx+0x6f],ah
00003DCD  6F                outsw
00003DCE  642C20            fs sub al,0x20
00003DD1  E8A1EB            call word 0x2975
00003DD4  E881E7            call word 0x2558
00003DD7  E883EB            call word 0x295d
00003DDA  3020              xor [bx+si],ah
00003DDC  2020              and [bx+si],ah
00003DDE  2020              and [bx+si],ah
00003DE0  2020              and [bx+si],ah
00003DE2  2020              and [bx+si],ah
00003DE4  2028              and [bx+si],ch
00003DE6  3429              xor al,0x29
00003DE8  41                inc cx
00003DE9  7665              jna 0x3e50
00003DEB  7261              jc 0x3e4e
00003DED  676520706C        and [gs:eax+0x6c],dh
00003DF2  61                popaw
00003DF3  7965              jns 0x3e5a
00003DF5  722C              jc 0x3e23
00003DF7  206F72            and [bx+0x72],ch
00003DFA  206E65            and [bp+0x65],ch
00003DFD  65642028          and [fs:bx+si],ch
00003E01  48                dec ax
00003E02  29656C            sub [di+0x6c],sp
00003E05  7020              jo 0x3e27
00003E07  2020              and [bx+si],ah
00003E09  3A20              cmp ah,[bx+si]
00003E0B  B80000            mov ax,0x0
00003E0E  A3150A            mov [0xa15],ax
00003E11  B80100            mov ax,0x1
00003E14  A3010A            mov [0xa01],ax
00003E17  B80100            mov ax,0x1
00003E1A  A3110A            mov [0xa11],ax
00003E1D  B80000            mov ax,0x0
00003E20  A3130A            mov [0xa13],ax
00003E23  E85DF5            call word 0x3383
00003E26  A1130A            mov ax,[0xa13]
00003E29  050100            add ax,0x1
00003E2C  A3130A            mov [0xa13],ax
00003E2F  A1130A            mov ax,[0xa13]
00003E32  3D3C00            cmp ax,0x3c
00003E35  7F03              jg 0x3e3a
00003E37  E98B02            jmp word 0x40c5
00003E3A  A1110A            mov ax,[0xa11]
00003E3D  3DFFFF            cmp ax,0xffff
00003E40  7403              jz 0x3e45
00003E42  E92900            jmp word 0x3e6e
00003E45  A1010A            mov ax,[0xa01]
00003E48  D1E0              shl ax,1
00003E4A  D1E0              shl ax,1
00003E4C  97                xchg ax,di
00003E4D  8B855D09          mov ax,[di+0x95d]
00003E51  50                push ax
00003E52  A1010A            mov ax,[0xa01]
00003E55  D1E0              shl ax,1
00003E57  D1E0              shl ax,1
00003E59  97                xchg ax,di
00003E5A  8B85BD08          mov ax,[di+0x8bd]
00003E5E  E849CF            call word 0xdaa
00003E61  E8F4E6            call word 0x2558
00003E64  B82000            mov ax,0x20
00003E67  50                push ax
00003E68  B80000            mov ax,0x0
00003E6B  E82FEA            call word 0x289d
00003E6E  A1010A            mov ax,[0xa01]
00003E71  0306110A          add ax,[0xa11]
00003E75  A3010A            mov [0xa01],ax
00003E78  B80000            mov ax,0x0
00003E7B  A3130A            mov [0xa13],ax
00003E7E  B80F00            mov ax,0xf
00003E81  E837C5            call word 0x3bb
00003E84  B80400            mov ax,0x4
00003E87  50                push ax
00003E88  B80600            mov ax,0x6
00003E8B  E81CCF            call word 0xdaa
00003E8E  E8C7E6            call word 0x2558
00003E91  E8C9EA            call word 0x295d
00003E94  3C20              cmp al,0x20
00003E96  20DB              and bl,bl
00003E98  DBDB              fcmovnu st3
00003E9A  DC20              fsub qword [bx+si]
00003E9C  2020              and [bx+si],ah
00003E9E  20DC              and ah,bl
00003EA0  DBDB              fcmovnu st3
00003EA2  DB                db 0xdb
00003EA3  2020              and [bx+si],ah
00003EA5  20DC              and ah,bl
00003EA7  DBDF              fcmovnu st7
00003EA9  DBDC              fcmovnu st4
00003EAB  2020              and [bx+si],ah
00003EAD  20DB              and bl,bl
00003EAF  DBDB              fcmovnu st3
00003EB1  DBDB              fcmovnu st3
00003EB3  DC20              fsub qword [bx+si]
00003EB5  20DB              and bl,bl
00003EB7  DBDB              fcmovnu st3
00003EB9  DBDB              fcmovnu st3
00003EBB  DC20              fsub qword [bx+si]
00003EBD  2020              and [bx+si],ah
00003EBF  DC                db 0xdc
00003EC0  DBDF              fcmovnu st7
00003EC2  DBDC              fcmovnu st4
00003EC4  2020              and [bx+si],ah
00003EC6  20DB              and bl,bl
00003EC8  2020              and [bx+si],ah
00003ECA  2020              and [bx+si],ah
00003ECC  2020              and [bx+si],ah
00003ECE  2020              and [bx+si],ah
00003ED0  DBE8              fucomi st0
00003ED2  AF                scasw
00003ED3  F4                hlt
00003ED4  B80F00            mov ax,0xf
00003ED7  E8E1C4            call word 0x3bb
00003EDA  B80400            mov ax,0x4
00003EDD  50                push ax
00003EDE  B80700            mov ax,0x7
00003EE1  E8C6CE            call word 0xdaa
00003EE4  E871E6            call word 0x2558
00003EE7  E873EA            call word 0x295d
00003EEA  3C20              cmp al,0x20
00003EEC  20DB              and bl,bl
00003EEE  2020              and [bx+si],ah
00003EF0  DBDB              fcmovnu st3
00003EF2  DC                db 0xdc
00003EF3  DC                db 0xdc
00003EF4  DBDB              fcmovnu st3
00003EF6  2020              and [bx+si],ah
00003EF8  DB                db 0xdb
00003EF9  2020              and [bx+si],ah
00003EFB  DC                db 0xdc
00003EFC  DF20              fbld tword [bx+si]
00003EFE  2020              and [bx+si],ah
00003F00  DF                db 0xdf
00003F01  DC20              fsub qword [bx+si]
00003F03  20DB              and bl,bl
00003F05  2020              and [bx+si],ah
00003F07  2020              and [bx+si],ah
00003F09  DB                db 0xdb
00003F0A  2020              and [bx+si],ah
00003F0C  DB                db 0xdb
00003F0D  2020              and [bx+si],ah
00003F0F  2020              and [bx+si],ah
00003F11  DB                db 0xdb
00003F12  2020              and [bx+si],ah
00003F14  DC                db 0xdc
00003F15  DF20              fbld tword [bx+si]
00003F17  2020              and [bx+si],ah
00003F19  DF                db 0xdf
00003F1A  DC20              fsub qword [bx+si]
00003F1C  20DB              and bl,bl
00003F1E  2020              and [bx+si],ah
00003F20  2020              and [bx+si],ah
00003F22  2020              and [bx+si],ah
00003F24  2020              and [bx+si],ah
00003F26  DBE8              fucomi st0
00003F28  59                pop cx
00003F29  F4                hlt
00003F2A  B80F00            mov ax,0xf
00003F2D  E88BC4            call word 0x3bb
00003F30  B80400            mov ax,0x4
00003F33  50                push ax
00003F34  B80800            mov ax,0x8
00003F37  E870CE            call word 0xdaa
00003F3A  E81BE6            call word 0x2558
00003F3D  E81DEA            call word 0x295d
00003F40  3C20              cmp al,0x20
00003F42  20DB              and bl,bl
00003F44  2020              and [bx+si],ah
00003F46  20DF              and bh,bl
00003F48  DBDB              fcmovnu st3
00003F4A  DF20              fbld tword [bx+si]
00003F4C  2020              and [bx+si],ah
00003F4E  DB                db 0xdb
00003F4F  2020              and [bx+si],ah
00003F51  DBDC              fcmovnu st4
00003F53  DC                db 0xdc
00003F54  DC                db 0xdc
00003F55  DC                db 0xdc
00003F56  DC                db 0xdc
00003F57  DB                db 0xdb
00003F58  2020              and [bx+si],ah
00003F5A  DB                db 0xdb
00003F5B  2020              and [bx+si],ah
00003F5D  2020              and [bx+si],ah
00003F5F  DB                db 0xdb
00003F60  2020              and [bx+si],ah
00003F62  DBDC              fcmovnu st4
00003F64  DC                db 0xdc
00003F65  DC                db 0xdc
00003F66  DBDF              fcmovnu st7
00003F68  2020              and [bx+si],ah
00003F6A  DBDC              fcmovnu st4
00003F6C  DC                db 0xdc
00003F6D  DC                db 0xdc
00003F6E  DC                db 0xdc
00003F6F  DC                db 0xdc
00003F70  DB                db 0xdb
00003F71  2020              and [bx+si],ah
00003F73  DB                db 0xdb
00003F74  2020              and [bx+si],ah
00003F76  2020              and [bx+si],ah
00003F78  2020              and [bx+si],ah
00003F7A  2020              and [bx+si],ah
00003F7C  DBE8              fucomi st0
00003F7E  03F4              add si,sp
00003F80  B80F00            mov ax,0xf
00003F83  E835C4            call word 0x3bb
00003F86  B80400            mov ax,0x4
00003F89  50                push ax
00003F8A  B80900            mov ax,0x9
00003F8D  E81ACE            call word 0xdaa
00003F90  E8C5E5            call word 0x2558
00003F93  E8C7E9            call word 0x295d
00003F96  3C20              cmp al,0x20
00003F98  20DB              and bl,bl
00003F9A  2020              and [bx+si],ah
00003F9C  2020              and [bx+si],ah
00003F9E  2020              and [bx+si],ah
00003FA0  2020              and [bx+si],ah
00003FA2  2020              and [bx+si],ah
00003FA4  DB                db 0xdb
00003FA5  2020              and [bx+si],ah
00003FA7  DBDF              fcmovnu st7
00003FA9  DF                db 0xdf
00003FAA  DF                db 0xdf
00003FAB  DF                db 0xdf
00003FAC  DF                db 0xdf
00003FAD  DB                db 0xdb
00003FAE  2020              and [bx+si],ah
00003FB0  DB                db 0xdb
00003FB1  2020              and [bx+si],ah
00003FB3  2020              and [bx+si],ah
00003FB5  DB                db 0xdb
00003FB6  2020              and [bx+si],ah
00003FB8  DBDF              fcmovnu st7
00003FBA  DF                db 0xdf
00003FBB  DF                db 0xdf
00003FBC  DBDC              fcmovnu st4
00003FBE  2020              and [bx+si],ah
00003FC0  DBDF              fcmovnu st7
00003FC2  DF                db 0xdf
00003FC3  DF                db 0xdf
00003FC4  DF                db 0xdf
00003FC5  DF                db 0xdf
00003FC6  DB                db 0xdb
00003FC7  2020              and [bx+si],ah
00003FC9  DB                db 0xdb
00003FCA  2020              and [bx+si],ah
00003FCC  2020              and [bx+si],ah
00003FCE  2020              and [bx+si],ah
00003FD0  2020              and [bx+si],ah
00003FD2  DBE8              fucomi st0
00003FD4  AD                lodsw
00003FD5  F3B80F00          rep mov ax,0xf
00003FD9  E8DFC3            call word 0x3bb
00003FDC  B80400            mov ax,0x4
00003FDF  50                push ax
00003FE0  B80A00            mov ax,0xa
00003FE3  E8C4CD            call word 0xdaa
00003FE6  E86FE5            call word 0x2558
00003FE9  E871E9            call word 0x295d
00003FEC  3C20              cmp al,0x20
00003FEE  20DB              and bl,bl
00003FF0  2020              and [bx+si],ah
00003FF2  2020              and [bx+si],ah
00003FF4  2020              and [bx+si],ah
00003FF6  2020              and [bx+si],ah
00003FF8  2020              and [bx+si],ah
00003FFA  DB                db 0xdb
00003FFB  2020              and [bx+si],ah
00003FFD  DB                db 0xdb
00003FFE  2020              and [bx+si],ah
00004000  2020              and [bx+si],ah
00004002  20DB              and bl,bl
00004004  2020              and [bx+si],ah
00004006  DB                db 0xdb
00004007  2020              and [bx+si],ah
00004009  2020              and [bx+si],ah
0000400B  DB                db 0xdb
0000400C  2020              and [bx+si],ah
0000400E  DB                db 0xdb
0000400F  2020              and [bx+si],ah
00004011  2020              and [bx+si],ah
00004013  DB                db 0xdb
00004014  2020              and [bx+si],ah
00004016  DB                db 0xdb
00004017  2020              and [bx+si],ah
00004019  2020              and [bx+si],ah
0000401B  20DB              and bl,bl
0000401D  2020              and [bx+si],ah
0000401F  DB                db 0xdb
00004020  2020              and [bx+si],ah
00004022  2020              and [bx+si],ah
00004024  2020              and [bx+si],ah
00004026  2020              and [bx+si],ah
00004028  DBE8              fucomi st0
0000402A  57                push di
0000402B  F3B80F00          rep mov ax,0xf
0000402F  E889C3            call word 0x3bb
00004032  B80400            mov ax,0x4
00004035  50                push ax
00004036  B80B00            mov ax,0xb
00004039  E86ECD            call word 0xdaa
0000403C  E819E5            call word 0x2558
0000403F  E81BE9            call word 0x295d
00004042  42                inc dx
00004043  2020              and [bx+si],ah
00004045  DBDB              fcmovnu st3
00004047  2020              and [bx+si],ah
00004049  2020              and [bx+si],ah
0000404B  2020              and [bx+si],ah
0000404D  2020              and [bx+si],ah
0000404F  DBDB              fcmovnu st3
00004051  2020              and [bx+si],ah
00004053  DB                db 0xdb
00004054  2020              and [bx+si],ah
00004056  2020              and [bx+si],ah
00004058  20DB              and bl,bl
0000405A  2020              and [bx+si],ah
0000405C  DBDB              fcmovnu st3
0000405E  DBDB              fcmovnu st3
00004060  DBDF              fcmovnu st7
00004062  2020              and [bx+si],ah
00004064  DBDB              fcmovnu st3
00004066  DBDB              fcmovnu st3
00004068  DBDF              fcmovnu st7
0000406A  2020              and [bx+si],ah
0000406C  DB                db 0xdb
0000406D  2020              and [bx+si],ah
0000406F  2020              and [bx+si],ah
00004071  20DB              and bl,bl
00004073  2020              and [bx+si],ah
00004075  DBDB              fcmovnu st3
00004077  DBDB              fcmovnu st3
00004079  DBDB              fcmovnu st3
0000407B  DB                db 0xdb
0000407C  2020              and [bx+si],ah
0000407E  DBDB              fcmovnu st3
00004080  DBDB              fcmovnu st3
00004082  DBDB              fcmovnu st3
00004084  DBE8              fucomi st0
00004086  FB                sti
00004087  F2B80F00          repne mov ax,0xf
0000408B  E82DC3            call word 0x3bb
0000408E  B81400            mov ax,0x14
00004091  50                push ax
00004092  B81900            mov ax,0x19
00004095  E812CD            call word 0xdaa
00004098  E8BDE4            call word 0x2558
0000409B  E8BFE8            call word 0x295d
0000409E  234D41            and cx,[di+0x41]
000040A1  44                inc sp
000040A2  42                inc dx
000040A3  41                inc cx
000040A4  4C                dec sp
000040A5  4C                dec sp
000040A6  2020              and [bx+si],ah
000040A8  2D2043            sub ax,0x4320
000040AB  6F                outsw
000040AC  7079              jo 0x4127
000040AE  7269              jc 0x4119
000040B0  67687420          push word 0x2074
000040B4  3139              xor [bx+di],di
000040B6  3835              cmp [di],dh
000040B8  2C20              sub al,0x20
000040BA  4D                dec bp
000040BB  6963726F54        imul sp,[bp+di+0x72],word 0x546f
000040C0  6563E9            gs arpl cx,bp
000040C3  06                push es
000040C4  00B81400          add [bx+si+0x14],bh
000040C8  E848C1            call word 0x213
000040CB  A1010A            mov ax,[0xa01]
000040CE  3D0900            cmp ax,0x9
000040D1  7F03              jg 0x40d6
000040D3  E90600            jmp word 0x40dc
000040D6  B8FFFF            mov ax,0xffff
000040D9  A3110A            mov [0xa11],ax
000040DC  A1010A            mov ax,[0xa01]
000040DF  3D0200            cmp ax,0x2
000040E2  7C03              jl 0x40e7
000040E4  E90600            jmp word 0x40ed
000040E7  B80100            mov ax,0x1
000040EA  A3110A            mov [0xa11],ax
000040ED  E8B4CC            call word 0xda4
000040F0  7503              jnz 0x40f5
000040F2  E92EFD            jmp word 0x3e23
000040F5  BF4A01            mov di,0x14a
000040F8  1E                push ds
000040F9  E83FE4            call word 0x253b
000040FC  BF7602            mov di,0x276
000040FF  1E                push ds
00004100  E85FE6            call word 0x2762
00004103  A07602            mov al,[0x276]
00004106  32E4              xor ah,ah
00004108  3D3100            cmp ax,0x31
0000410B  B80100            mov ax,0x1
0000410E  7D01              jnl 0x4111
00004110  48                dec ax
00004111  50                push ax
00004112  A07602            mov al,[0x276]
00004115  32E4              xor ah,ah
00004117  3D3400            cmp ax,0x34
0000411A  B80100            mov ax,0x1
0000411D  7E01              jng 0x4120
0000411F  48                dec ax
00004120  59                pop cx
00004121  23C1              and ax,cx
00004123  0BC0              or ax,ax
00004125  7503              jnz 0x412a
00004127  E91C00            jmp word 0x4146
0000412A  A07602            mov al,[0x276]
0000412D  32E4              xor ah,ah
0000412F  8AE0              mov ah,al
00004131  B001              mov al,0x1
00004133  50                push ax
00004134  BF250A            mov di,0xa25
00004137  1E                push ds
00004138  57                push di
00004139  BF130A            mov di,0xa13
0000413C  1E                push ds
0000413D  E847CD            call word 0xe87
00004140  B80100            mov ax,0x1
00004143  A3150A            mov [0xa15],ax
00004146  A07602            mov al,[0x276]
00004149  32E4              xor ah,ah
0000414B  E820C2            call word 0x36e
0000414E  3D4800            cmp ax,0x48
00004151  7403              jz 0x4156
00004153  E9B602            jmp word 0x440c
00004156  B80500            mov ax,0x5
00004159  50                push ax
0000415A  B80300            mov ax,0x3
0000415D  50                push ax
0000415E  B84B00            mov ax,0x4b
00004161  50                push ax
00004162  B81200            mov ax,0x12
00004165  50                push ax
00004166  E87CD0            call word 0x11e5
00004169  0C4D              or al,0x4d
0000416B  61                popaw
0000416C  6442              fs inc dx
0000416E  61                popaw
0000416F  6C                insb
00004170  6C                insb
00004171  204865            and [bx+si+0x65],cl
00004174  6C                insb
00004175  70B1              jo 0x4128
00004177  50                push ax
00004178  E8C2D0            call word 0x123d
0000417B  E8ECEC            call word 0x2e6a
0000417E  8DBE32FF          lea di,[bp-0xce]
00004182  16                push ss
00004183  57                push di
00004184  BF2A3D            mov di,0x3d2a
00004187  0E                push cs
00004188  E841D0            call word 0x11cc
0000418B  E847E1            call word 0x22d5
0000418E  8DBE32FF          lea di,[bp-0xce]
00004192  16                push ss
00004193  B98000            mov cx,0x80
00004196  E891E1            call word 0x232a
00004199  E87FCE            call word 0x101b
0000419C  3D0000            cmp ax,0x0
0000419F  7503              jnz 0x41a4
000041A1  E9FE00            jmp word 0x42a2
000041A4  B80100            mov ax,0x1
000041A7  50                push ax
000041A8  B80300            mov ax,0x3
000041AB  E8FCCB            call word 0xdaa
000041AE  E8A7E3            call word 0x2558
000041B1  E8A9E7            call word 0x295d
000041B4  3820              cmp [bx+si],ah
000041B6  2020              and [bx+si],ah
000041B8  2020              and [bx+si],ah
000041BA  54                push sp
000041BB  686520            push word 0x2065
000041BE  66696C65204D4144  imul ebp,[si+0x65],dword 0x44414d20
000041C6  42                inc dx
000041C7  41                inc cx
000041C8  4C                dec sp
000041C9  4C                dec sp
000041CA  2E44              cs inc sp
000041CC  4F                dec di
000041CD  43                inc bx
000041CE  206973            and [bx+di+0x73],ch
000041D1  206E6F            and [bp+0x6f],ch
000041D4  7420              jz 0x41f6
000041D6  666F              outsd
000041D8  756E              jnz 0x4248
000041DA  6420696E          and [fs:bx+di+0x6e],ch
000041DE  207468            and [si+0x68],dh
000041E1  6973206469        imul si,[bp+di+0x20],word 0x6964
000041E6  7265              jc 0x424d
000041E8  63746F            arpl [si+0x6f],si
000041EB  7279              jc 0x4266
000041ED  E885E7            call word 0x2975
000041F0  E865E3            call word 0x2558
000041F3  E867E7            call word 0x295d
000041F6  40                inc ax
000041F7  4E                dec si
000041F8  6F                outsw
000041F9  206865            and [bx+si+0x65],ch
000041FC  6C                insb
000041FD  7020              jo 0x421f
000041FF  6973206176        imul si,[bp+di+0x20],word 0x7661
00004204  61                popaw
00004205  696C61626C        imul bp,[si+0x61],word 0x6c62
0000420A  65203A            and [gs:bp+si],bh
0000420D  205072            and [bx+si+0x72],dl
00004210  657373            gs jnc 0x4286
00004213  204374            and [bp+di+0x74],al
00004216  726C              jc 0x4284
00004218  2D4320            sub ax,0x2043
0000421B  746F              jz 0x428c
0000421D  205175            and [bx+di+0x75],dl
00004220  6974206F72        imul si,[si+0x20],word 0x726f
00004225  205370            and [bp+di+0x70],dl
00004228  61                popaw
00004229  636520            arpl [di+0x20],sp
0000422C  746F              jz 0x429d
0000422E  20436F            and [bp+di+0x6f],al
00004231  6E                outsb
00004232  7469              jz 0x429d
00004234  6E                outsb
00004235  7565              jnz 0x429c
00004237  E83BE7            call word 0x2975
0000423A  8DBE32FF          lea di,[bp-0xce]
0000423E  16                push ss
0000423F  E811E2            call word 0x2453
00004242  E8D6CD            call word 0x101b
00004245  A3150A            mov [0xa15],ax
00004248  B82000            mov ax,0x20
0000424B  A27602            mov [0x276],al
0000424E  BF4A01            mov di,0x14a
00004251  1E                push ds
00004252  E8E6E2            call word 0x253b
00004255  BF7602            mov di,0x276
00004258  1E                push ds
00004259  E806E5            call word 0x2762
0000425C  A07602            mov al,[0x276]
0000425F  32E4              xor ah,ah
00004261  3D2000            cmp ax,0x20
00004264  B80100            mov ax,0x1
00004267  7401              jz 0x426a
00004269  48                dec ax
0000426A  50                push ax
0000426B  A07602            mov al,[0x276]
0000426E  32E4              xor ah,ah
00004270  3D0300            cmp ax,0x3
00004273  B80100            mov ax,0x1
00004276  7401              jz 0x4279
00004278  48                dec ax
00004279  59                pop cx
0000427A  0BC1              or ax,cx
0000427C  0BC0              or ax,ax
0000427E  7503              jnz 0x4283
00004280  E9CBFF            jmp word 0x424e
00004283  A07602            mov al,[0x276]
00004286  32E4              xor ah,ah
00004288  3D0300            cmp ax,0x3
0000428B  7403              jz 0x4290
0000428D  E90900            jmp word 0x4299
00004290  B80200            mov ax,0x2
00004293  A3150A            mov [0xa15],ax
00004296  E90600            jmp word 0x429f
00004299  B80000            mov ax,0x0
0000429C  A3150A            mov [0xa15],ax
0000429F  E96701            jmp word 0x4409
000042A2  B82000            mov ax,0x20
000042A5  A27602            mov [0x276],al
000042A8  B80F00            mov ax,0xf
000042AB  E80DC1            call word 0x3bb
000042AE  B80000            mov ax,0x0
000042B1  E81BC1            call word 0x3cf
000042B4  E86FBF            call word 0x226
000042B7  B80100            mov ax,0x1
000042BA  8986DFFE          mov [bp-0x121],ax
000042BE  8DBE32FF          lea di,[bp-0xce]
000042C2  16                push ss
000042C3  E875E2            call word 0x253b
000042C6  8DBEE1FE          lea di,[bp-0x11f]
000042CA  16                push ss
000042CB  B150              mov cl,0x50
000042CD  E8E3E4            call word 0x27b3
000042D0  E834E5            call word 0x2807
000042D3  E882E2            call word 0x2558
000042D6  8DBEE1FE          lea di,[bp-0x11f]
000042DA  16                push ss
000042DB  E8EECE            call word 0x11cc
000042DE  B80000            mov ax,0x0
000042E1  E842E6            call word 0x2926
000042E4  E88EE6            call word 0x2975
000042E7  8B86DFFE          mov ax,[bp-0x121]
000042EB  050100            add ax,0x1
000042EE  8986DFFE          mov [bp-0x121],ax
000042F2  8B86DFFE          mov ax,[bp-0x121]
000042F6  3D0F00            cmp ax,0xf
000042F9  B80100            mov ax,0x1
000042FC  7F01              jg 0x42ff
000042FE  48                dec ax
000042FF  50                push ax
00004300  8DBE32FF          lea di,[bp-0xce]
00004304  16                push ss
00004305  E886E6            call word 0x298e
00004308  59                pop cx
00004309  0BC1              or ax,cx
0000430B  0BC0              or ax,ax
0000430D  7503              jnz 0x4312
0000430F  E9ACFF            jmp word 0x42be
00004312  B80100            mov ax,0x1
00004315  50                push ax
00004316  B81000            mov ax,0x10
00004319  E88ECA            call word 0xdaa
0000431C  B80000            mov ax,0x0
0000431F  E899C0            call word 0x3bb
00004322  B80700            mov ax,0x7
00004325  E8A7C0            call word 0x3cf
00004328  E82DE2            call word 0x2558
0000432B  E82FE6            call word 0x295d
0000432E  45                inc bp
0000432F  7072              jo 0x43a3
00004331  657373            gs jnc 0x43a7
00004334  3A20              cmp ah,[bx+si]
00004336  205370            and [bp+di+0x70],dl
00004339  61                popaw
0000433A  636520            arpl [di+0x20],sp
0000433D  746F              jz 0x43ae
0000433F  204578            and [di+0x78],al
00004342  6974206865        imul si,[si+0x20],word 0x6568
00004347  6C                insb
00004348  7020              jo 0x436a
0000434A  0420              add al,0x20
0000434C  45                inc bp
0000434D  6E                outsb
0000434E  7465              jz 0x43b5
00004350  7220              jc 0x4372
00004352  746F              jz 0x43c3
00004354  207669            and [bp+0x69],dh
00004357  657720            gs ja 0x437a
0000435A  6E                outsb
0000435B  657874            gs js 0x43d2
0000435E  207061            and [bx+si+0x61],dh
00004361  6765200420        and [dword gs:eax],al
00004366  43                inc bx
00004367  7472              jz 0x43db
00004369  6C                insb
0000436A  2D4320            sub ax,0x2043
0000436D  746F              jz 0x43de
0000436F  205175            and [bx+di+0x75],dl
00004372  6974BF4A01        imul si,[si-0x41],word 0x14a
00004377  1E                push ds
00004378  E8C0E1            call word 0x253b
0000437B  BF7602            mov di,0x276
0000437E  1E                push ds
0000437F  E8E0E3            call word 0x2762
00004382  A07602            mov al,[0x276]
00004385  32E4              xor ah,ah
00004387  3D2000            cmp ax,0x20
0000438A  B80100            mov ax,0x1
0000438D  7401              jz 0x4390
0000438F  48                dec ax
00004390  50                push ax
00004391  A07602            mov al,[0x276]
00004394  32E4              xor ah,ah
00004396  3D0D00            cmp ax,0xd
00004399  B80100            mov ax,0x1
0000439C  7401              jz 0x439f
0000439E  48                dec ax
0000439F  59                pop cx
000043A0  0BC1              or ax,cx
000043A2  50                push ax
000043A3  A07602            mov al,[0x276]
000043A6  32E4              xor ah,ah
000043A8  3D0300            cmp ax,0x3
000043AB  B80100            mov ax,0x1
000043AE  7401              jz 0x43b1
000043B0  48                dec ax
000043B1  59                pop cx
000043B2  0BC1              or ax,cx
000043B4  0BC0              or ax,ax
000043B6  7503              jnz 0x43bb
000043B8  E9B9FF            jmp word 0x4374
000043BB  8DBE32FF          lea di,[bp-0xce]
000043BF  16                push ss
000043C0  E8CBE5            call word 0x298e
000043C3  50                push ax
000043C4  A07602            mov al,[0x276]
000043C7  32E4              xor ah,ah
000043C9  3D2000            cmp ax,0x20
000043CC  B80100            mov ax,0x1
000043CF  7401              jz 0x43d2
000043D1  48                dec ax
000043D2  59                pop cx
000043D3  0BC1              or ax,cx
000043D5  50                push ax
000043D6  A07602            mov al,[0x276]
000043D9  32E4              xor ah,ah
000043DB  3D0300            cmp ax,0x3
000043DE  B80100            mov ax,0x1
000043E1  7401              jz 0x43e4
000043E3  48                dec ax
000043E4  59                pop cx
000043E5  0BC1              or ax,cx
000043E7  0BC0              or ax,ax
000043E9  7503              jnz 0x43ee
000043EB  E9BAFE            jmp word 0x42a8
000043EE  8DBE32FF          lea di,[bp-0xce]
000043F2  16                push ss
000043F3  E85DE0            call word 0x2453
000043F6  A07602            mov al,[0x276]
000043F9  32E4              xor ah,ah
000043FB  3D0300            cmp ax,0x3
000043FE  7403              jz 0x4403
00004400  E90600            jmp word 0x4409
00004403  B80200            mov ax,0x2
00004406  A3150A            mov [0xa15],ax
00004409  E82FEC            call word 0x303b
0000440C  A1150A            mov ax,[0xa15]
0000440F  3D0000            cmp ax,0x0
00004412  7F03              jg 0x4417
00004414  E90CFA            jmp word 0x3e23
00004417  A1150A            mov ax,[0xa15]
0000441A  3D0200            cmp ax,0x2
0000441D  7403              jz 0x4422
0000441F  E91300            jmp word 0x4435
00004422  2EC43EA22D        les di,[cs:0x2da2]
00004427  B80000            mov ax,0x0
0000442A  268905            mov [es:di],ax
0000442D  E8F6BD            call word 0x226
00004430  33C0              xor ax,ax
00004432  E954C8            jmp word 0xc89
00004435  B80000            mov ax,0x0
00004438  A3230A            mov [0xa23],ax
0000443B  E90000            jmp word 0x443e
0000443E  8BE5              mov sp,bp
00004440  5D                pop bp
00004441  C3                ret
00004442  55                push bp
00004443  8BEC              mov bp,sp
00004445  55                push bp
00004446  E90000            jmp word 0x4449
00004449  B80F00            mov ax,0xf
0000444C  E86CBF            call word 0x3bb
0000444F  B81400            mov ax,0x14
00004452  50                push ax
00004453  B81500            mov ax,0x15
00004456  E851C9            call word 0xdaa
00004459  E8FCE0            call word 0x2558
0000445C  E8FEE4            call word 0x295d
0000445F  0F2A2A            cvtpi2ps xmm5,qword [bp+si]
00004462  204741            and [bx+0x41],al
00004465  4D                dec bp
00004466  45                inc bp
00004467  204F56            and [bx+0x56],cl
0000446A  45                inc bp
0000446B  52                push dx
0000446C  202A              and [bp+si],ch
0000446E  2AA1010A          sub ah,[bx+di+0xa01]
00004472  3B06230A          cmp ax,[0xa23]
00004476  7F03              jg 0x447b
00004478  E90D01            jmp word 0x4588
0000447B  A1010A            mov ax,[0xa01]
0000447E  A3230A            mov [0xa23],ax
00004481  B80F00            mov ax,0xf
00004484  E834BF            call word 0x3bb
00004487  B80200            mov ax,0x2
0000448A  50                push ax
0000448B  B81600            mov ax,0x16
0000448E  E819C9            call word 0xdaa
00004491  E8C4E0            call word 0x2558
00004494  E8C6E4            call word 0x295d
00004497  2E59              cs pop cx
00004499  6F                outsw
0000449A  7520              jnz 0x44bc
0000449C  686176            push word 0x7661
0000449F  65207468          and [gs:si+0x68],dh
000044A3  65206265          and [gs:bp+si+0x65],ah
000044A7  7374              jnc 0x451d
000044A9  207363            and [bp+di+0x63],dh
000044AC  6F                outsw
000044AD  7265              jc 0x4514
000044AF  2C20              sub al,0x20
000044B1  7768              ja 0x451b
000044B3  61                popaw
000044B4  7420              jz 0x44d6
000044B6  697320796F        imul si,[bp+di+0x20],word 0x6f79
000044BB  7572              jnz 0x452f
000044BD  206E61            and [bp+0x61],ch
000044C0  6D                insw
000044C1  65203F            and [gs:bx],bh
000044C4  3A20              cmp ah,[bx+si]
000044C6  BF180A            mov di,0xa18
000044C9  1E                push ds
000044CA  57                push di
000044CB  E817CD            call word 0x11e5
000044CE  00B10AE8          add [bx+di-0x17f6],dh
000044D2  27                daa
000044D3  CDBF              int 0xbf
000044D5  4A                dec dx
000044D6  011EE860          add [0x60e8],bx
000044DA  E0BF              loopne 0x449b
000044DC  7602              jna 0x44e0
000044DE  1E                push ds
000044DF  E880E2            call word 0x2762
000044E2  A07602            mov al,[0x276]
000044E5  32E4              xor ah,ah
000044E7  E884BE            call word 0x36e
000044EA  50                push ax
000044EB  E80ED0            call word 0x14fc
000044EE  B84100            mov ax,0x41
000044F1  50                push ax
000044F2  B85A00            mov ax,0x5a
000044F5  E81DD0            call word 0x1515
000044F8  B80D00            mov ax,0xd
000044FB  E810D0            call word 0x150e
000044FE  E8E0D0            call word 0x15e1
00004501  7503              jnz 0x4506
00004503  E93300            jmp word 0x4539
00004506  E84FE0            call word 0x2558
00004509  A07602            mov al,[0x276]
0000450C  32E4              xor ah,ah
0000450E  E85DBE            call word 0x36e
00004511  50                push ax
00004512  B80000            mov ax,0x0
00004515  E885E3            call word 0x289d
00004518  BF180A            mov di,0xa18
0000451B  1E                push ds
0000451C  57                push di
0000451D  BF180A            mov di,0xa18
00004520  1E                push ds
00004521  E8A8CC            call word 0x11cc
00004524  A07602            mov al,[0x276]
00004527  32E4              xor ah,ah
00004529  E842BE            call word 0x36e
0000452C  8AE0              mov ah,al
0000452E  B001              mov al,0x1
00004530  50                push ax
00004531  E8C9CD            call word 0x12fd
00004534  B10A              mov cl,0xa
00004536  E8C2CC            call word 0x11fb
00004539  A07602            mov al,[0x276]
0000453C  32E4              xor ah,ah
0000453E  3D0D00            cmp ax,0xd
00004541  B80100            mov ax,0x1
00004544  7401              jz 0x4547
00004546  48                dec ax
00004547  50                push ax
00004548  BF180A            mov di,0xa18
0000454B  1E                push ds
0000454C  E87DCC            call word 0x11cc
0000454F  E82CCE            call word 0x137e
00004552  3D0A00            cmp ax,0xa
00004555  B80100            mov ax,0x1
00004558  7401              jz 0x455b
0000455A  48                dec ax
0000455B  59                pop cx
0000455C  0BC1              or ax,cx
0000455E  0BC0              or ax,ax
00004560  7503              jnz 0x4565
00004562  E96FFF            jmp word 0x44d4
00004565  A07602            mov al,[0x276]
00004568  32E4              xor ah,ah
0000456A  3D0D00            cmp ax,0xd
0000456D  7403              jz 0x4572
0000456F  E91600            jmp word 0x4588
00004572  BF180A            mov di,0xa18
00004575  1E                push ds
00004576  57                push di
00004577  BF180A            mov di,0xa18
0000457A  1E                push ds
0000457B  E84ECC            call word 0x11cc
0000457E  E8FDCD            call word 0x137e
00004581  50                push ax
00004582  B80100            mov ax,0x1
00004585  E89FCE            call word 0x1427
00004588  B80F00            mov ax,0xf
0000458B  E82DBE            call word 0x3bb
0000458E  B80200            mov ax,0x2
00004591  50                push ax
00004592  B81600            mov ax,0x16
00004595  E812C8            call word 0xdaa
00004598  E8BDDF            call word 0x2558
0000459B  E8BFE3            call word 0x295d
0000459E  3820              cmp [bx+si],ah
000045A0  2020              and [bx+si],ah
000045A2  2020              and [bx+si],ah
000045A4  2020              and [bx+si],ah
000045A6  2020              and [bx+si],ah
000045A8  2020              and [bx+si],ah
000045AA  2020              and [bx+si],ah
000045AC  2020              and [bx+si],ah
000045AE  2020              and [bx+si],ah
000045B0  2020              and [bx+si],ah
000045B2  2020              and [bx+si],ah
000045B4  2020              and [bx+si],ah
000045B6  44                inc sp
000045B7  6F                outsw
000045B8  20796F            and [bx+di+0x6f],bh
000045BB  7520              jnz 0x45dd
000045BD  7761              ja 0x4620
000045BF  6E                outsb
000045C0  7420              jz 0x45e2
000045C2  746F              jz 0x4633
000045C4  20706C            and [bx+si+0x6c],dh
000045C7  61                popaw
000045C8  7920              jns 0x45ea
000045CA  61                popaw
000045CB  6761              a32 popaw
000045CD  696E202859        imul bp,[bp+0x20],word 0x5928
000045D2  2F                das
000045D3  4E                dec si
000045D4  293A              sub [bp+si],di
000045D6  20BF4A01          and [bx+0x14a],bh
000045DA  1E                push ds
000045DB  E85DDF            call word 0x253b
000045DE  BF7602            mov di,0x276
000045E1  1E                push ds
000045E2  E87DE1            call word 0x2762
000045E5  A07602            mov al,[0x276]
000045E8  32E4              xor ah,ah
000045EA  E881BD            call word 0x36e
000045ED  50                push ax
000045EE  E80BCF            call word 0x14fc
000045F1  B85900            mov ax,0x59
000045F4  E817CF            call word 0x150e
000045F7  B84E00            mov ax,0x4e
000045FA  E811CF            call word 0x150e
000045FD  E8E1CF            call word 0x15e1
00004600  7503              jnz 0x4605
00004602  E9D2FF            jmp word 0x45d7
00004605  E850DF            call word 0x2558
00004608  A07602            mov al,[0x276]
0000460B  32E4              xor ah,ah
0000460D  E85EBD            call word 0x36e
00004610  50                push ax
00004611  B80000            mov ax,0x0
00004614  E886E2            call word 0x289d
00004617  A07602            mov al,[0x276]
0000461A  32E4              xor ah,ah
0000461C  E84FBD            call word 0x36e
0000461F  3D5900            cmp ax,0x59
00004622  7503              jnz 0x4627
00004624  E90600            jmp word 0x462d
00004627  B80100            mov ax,0x1
0000462A  A2BD08            mov [0x8bd],al
0000462D  E90000            jmp word 0x4630
00004630  8BE5              mov sp,bp
00004632  5D                pop bp
00004633  C3                ret
00004634  B80000            mov ax,0x0
00004637  A2BD08            mov [0x8bd],al
0000463A  B80000            mov ax,0x0
0000463D  A2C008            mov [0x8c0],al
00004640  E8E0F6            call word 0x3d23
00004643  E8C3EB            call word 0x3209
00004646  B80100            mov ax,0x1
00004649  A3010A            mov [0xa01],ax
0000464C  B80000            mov ax,0x0
0000464F  A3030A            mov [0xa03],ax
00004652  B80000            mov ax,0x0
00004655  A3050A            mov [0xa05],ax
00004658  B80300            mov ax,0x3
0000465B  A3BE08            mov [0x8be],ax
0000465E  B80100            mov ax,0x1
00004661  50                push ax
00004662  B82800            mov ax,0x28
00004665  59                pop cx
00004666  91                xchg ax,cx
00004667  2BC8              sub cx,ax
00004669  7D03              jnl 0x466e
0000466B  E92500            jmp word 0x4693
0000466E  41                inc cx
0000466F  A37402            mov [0x274],ax
00004672  51                push cx
00004673  B80000            mov ax,0x0
00004676  A36109            mov [0x961],ax
00004679  A17402            mov ax,[0x274]
0000467C  D1E0              shl ax,1
0000467E  D1E0              shl ax,1
00004680  97                xchg ax,di
00004681  B80000            mov ax,0x0
00004684  8985BD08          mov [di+0x8bd],ax
00004688  59                pop cx
00004689  49                dec cx
0000468A  7407              jz 0x4693
0000468C  FF067402          inc word [0x274]
00004690  E9DFFF            jmp word 0x4672
00004693  B80000            mov ax,0x0
00004696  A2C008            mov [0x8c0],al
00004699  B80F00            mov ax,0xf
0000469C  E81CBD            call word 0x3bb
0000469F  B81400            mov ax,0x14
000046A2  50                push ax
000046A3  B81600            mov ax,0x16
000046A6  E801C7            call word 0xdaa
000046A9  E8ACDE            call word 0x2558
000046AC  E8AEE2            call word 0x295d
000046AF  185072            sbb [bx+si+0x72],dl
000046B2  657373            gs jnc 0x4728
000046B5  205350            and [bp+di+0x50],dl
000046B8  41                inc cx
000046B9  43                inc bx
000046BA  45                inc bp
000046BB  204241            and [bp+si+0x41],al
000046BE  52                push dx
000046BF  20746F            and [si+0x6f],dh
000046C2  207374            and [bp+di+0x74],dh
000046C5  61                popaw
000046C6  7274              jc 0x473c
000046C8  E8B8EC            call word 0x3383
000046CB  B80400            mov ax,0x4
000046CE  F72E250A          imul word [0xa25]
000046D2  E83EBB            call word 0x213
000046D5  E8B3F1            call word 0x388b
000046D8  A1BE08            mov ax,[0x8be]
000046DB  3D0000            cmp ax,0x0
000046DE  7C03              jl 0x46e3
000046E0  E9E5FF            jmp word 0x46c8
000046E3  2EC43EA22D        les di,[cs:0x2da2]
000046E8  B80000            mov ax,0x0
000046EB  268905            mov [es:di],ax
000046EE  E851FD            call word 0x4442
000046F1  A0BD08            mov al,[0x8bd]
000046F4  32E4              xor ah,ah
000046F6  0BC0              or ax,ax
000046F8  7503              jnz 0x46fd
000046FA  E946FF            jmp word 0x4643
000046FD  E90000            jmp word 0x4700
00004700  33C0              xor ax,ax
00004702  E884C5            call word 0xc89
00004705  0000              add [bx+si],al
