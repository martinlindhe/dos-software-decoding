00000100  E9792C            jmp word 0x2d7c
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
00000124  6302              arpl [bp+si],ax
00000126  0400              add al,0x0
00000128  B157              mov cl,0x57
0000012A  003C              add [si],bh
0000012C  3300              xor ax,[bx+si]
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
00000192  7900              jns 0x194
00000194  FF497D            dec word [bx+di+0x7d]
00000197  C517              lds dx,[bx]
00000199  C70612006E00      mov word [0x12],0x6e
0000019F  2EC606940100      mov byte [cs:0x194],0x0
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
00002D7F  0200              add al,[bx+si]
00002D81  202B              and [bp+di],ch
00002D83  E034              loopne 0x2db9
00002D85  2D054C            sub ax,0x4c05
00002D88  0100              add [bx+si],ax
00002D8A  0400              add al,0x0
00002D8C  A01000            mov al,[0x10]
00002D8F  0000              add [bx+si],al
00002D91  0000              add [bx+si],al
00002D93  8BEC              mov bp,sp
00002D95  E834DF            call word 0xccc
00002D98  2A25              sub ah,[di]
00002D9A  9C                pushfw
00002D9B  2DE941            sub ax,0x41e9
00002D9E  2400              and al,0x0
00002DA0  0000              add [bx+si],al
00002DA2  0004              add [si],al
00002DA4  0014              add [si],dl
00002DA6  006400            add [si+0x0],ah
00002DA9  F4                hlt
00002DAA  0100              add [bx+si],ax
00002DAC  000F              add [bx],cl
00002DAE  000E0003          add [0x300],cl
00002DB2  00060055          add [0x5500],al
00002DB6  8BEC              mov bp,sp
00002DB8  55                push bp
00002DB9  E90000            jmp word 0x2dbc
00002DBC  E8DBD4            call word 0x29a
00002DBF  B80100            mov ax,0x1
00002DC2  50                push ax
00002DC3  B80100            mov ax,0x1
00002DC6  50                push ax
00002DC7  B85000            mov ax,0x50
00002DCA  50                push ax
00002DCB  B81900            mov ax,0x19
00002DCE  E8BCD5            call word 0x38d
00002DD1  B80100            mov ax,0x1
00002DD4  50                push ax
00002DD5  B81800            mov ax,0x18
00002DD8  E8CFDF            call word 0xdaa
00002DDB  33C0              xor ax,ax
00002DDD  E9A9DE            jmp word 0xc89
00002DE0  E90000            jmp word 0x2de3
00002DE3  8BE5              mov sp,bp
00002DE5  5D                pop bp
00002DE6  C3                ret
00002DE7  55                push bp
00002DE8  8BEC              mov bp,sp
00002DEA  55                push bp
00002DEB  E9FF01            jmp word 0x2fed
00002DEE  55                push bp
00002DEF  8BC4              mov ax,sp
00002DF1  FF76FE            push word [bp-0x2]
00002DF4  8BE8              mov bp,ax
00002DF6  55                push bp
00002DF7  E95D01            jmp word 0x2f57
00002DFA  55                push bp
00002DFB  8BC4              mov ax,sp
00002DFD  FF76FE            push word [bp-0x2]
00002E00  FF76FC            push word [bp-0x4]
00002E03  8BE8              mov bp,ax
00002E05  55                push bp
00002E06  E90000            jmp word 0x2e09
00002E09  2EA1AF2D          mov ax,[cs:0x2daf]
00002E0D  E8ABD5            call word 0x3bb
00002E10  E845F7            call word 0x2558
00002E13  E847FB            call word 0x295d
00002E16  0220              add ah,[bx+si]
00002E18  20E8              and al,ch
00002E1A  06                push es
00002E1B  E2B8              loop 0x2dd5
00002E1D  0100              add [bx+si],ax
00002E1F  50                push ax
00002E20  8B5EFC            mov bx,[bp-0x4]
00002E23  368B4716          mov ax,[ss:bx+0x16]
00002E27  59                pop cx
00002E28  91                xchg ax,cx
00002E29  2BC8              sub cx,ax
00002E2B  7D03              jnl 0x2e30
00002E2D  E93700            jmp word 0x2e67
00002E30  41                inc cx
00002E31  8B5EFC            mov bx,[bp-0x4]
00002E34  368847FB          mov [ss:bx-0x5],al
00002E38  51                push cx
00002E39  E81CF7            call word 0x2558
00002E3C  B84100            mov ax,0x41
00002E3F  50                push ax
00002E40  8B5EFC            mov bx,[bp-0x4]
00002E43  368A47FB          mov al,[ss:bx-0x5]
00002E47  32E4              xor ah,ah
00002E49  59                pop cx
00002E4A  03C1              add ax,cx
00002E4C  2D0100            sub ax,0x1
00002E4F  50                push ax
00002E50  B80200            mov ax,0x2
00002E53  E847FA            call word 0x289d
00002E56  E8C9E1            call word 0x1022
00002E59  59                pop cx
00002E5A  49                dec cx
00002E5B  740A              jz 0x2e67
00002E5D  8B5EFC            mov bx,[bp-0x4]
00002E60  36FE47FB          inc byte [ss:bx-0x5]
00002E64  E9D1FF            jmp word 0x2e38
00002E67  E8EEF6            call word 0x2558
00002E6A  E808FB            call word 0x2975
00002E6D  E8B2E1            call word 0x1022
00002E70  E90000            jmp word 0x2e73
00002E73  8BE5              mov sp,bp
00002E75  5D                pop bp
00002E76  C3                ret
00002E77  55                push bp
00002E78  8BC4              mov ax,sp
00002E7A  FF76FE            push word [bp-0x2]
00002E7D  FF76FC            push word [bp-0x4]
00002E80  8BE8              mov bp,ax
00002E82  55                push bp
00002E83  E90000            jmp word 0x2e86
00002E86  2EA1AF2D          mov ax,[cs:0x2daf]
00002E8A  E82ED5            call word 0x3bb
00002E8D  E8C8F6            call word 0x2558
00002E90  8B460A            mov ax,[bp+0xa]
00002E93  50                push ax
00002E94  B80200            mov ax,0x2
00002E97  E81FFA            call word 0x28b9
00002E9A  B82000            mov ax,0x20
00002E9D  50                push ax
00002E9E  B80000            mov ax,0x0
00002EA1  E8F9F9            call word 0x289d
00002EA4  E87BE1            call word 0x1022
00002EA7  2EA1B12D          mov ax,[cs:0x2db1]
00002EAB  E80DD5            call word 0x3bb
00002EAE  E8A7F6            call word 0x2558
00002EB1  8A4605            mov al,[bp+0x5]
00002EB4  32E4              xor ah,ah
00002EB6  50                push ax
00002EB7  B80000            mov ax,0x0
00002EBA  E8E0F9            call word 0x289d
00002EBD  E862E1            call word 0x1022
00002EC0  B80200            mov ax,0x2
00002EC3  50                push ax
00002EC4  8B5EFC            mov bx,[bp-0x4]
00002EC7  368B4716          mov ax,[ss:bx+0x16]
00002ECB  2D0100            sub ax,0x1
00002ECE  59                pop cx
00002ECF  91                xchg ax,cx
00002ED0  2BC8              sub cx,ax
00002ED2  7D03              jnl 0x2ed7
00002ED4  E93500            jmp word 0x2f0c
00002ED7  41                inc cx
00002ED8  8B5EFC            mov bx,[bp-0x4]
00002EDB  368847FB          mov [ss:bx-0x5],al
00002EDF  51                push cx
00002EE0  E875F6            call word 0x2558
00002EE3  8A4606            mov al,[bp+0x6]
00002EE6  32E4              xor ah,ah
00002EE8  50                push ax
00002EE9  B80000            mov ax,0x0
00002EEC  E8AEF9            call word 0x289d
00002EEF  8A4607            mov al,[bp+0x7]
00002EF2  32E4              xor ah,ah
00002EF4  50                push ax
00002EF5  B80000            mov ax,0x0
00002EF8  E8A2F9            call word 0x289d
00002EFB  E824E1            call word 0x1022
00002EFE  59                pop cx
00002EFF  49                dec cx
00002F00  740A              jz 0x2f0c
00002F02  8B5EFC            mov bx,[bp-0x4]
00002F05  36FE47FB          inc byte [ss:bx-0x5]
00002F09  E9D3FF            jmp word 0x2edf
00002F0C  E849F6            call word 0x2558
00002F0F  8A4608            mov al,[bp+0x8]
00002F12  32E4              xor ah,ah
00002F14  50                push ax
00002F15  B80000            mov ax,0x0
00002F18  E882F9            call word 0x289d
00002F1B  8A4609            mov al,[bp+0x9]
00002F1E  32E4              xor ah,ah
00002F20  50                push ax
00002F21  B80000            mov ax,0x0
00002F24  E876F9            call word 0x289d
00002F27  E8F8E0            call word 0x1022
00002F2A  2EA1AF2D          mov ax,[cs:0x2daf]
00002F2E  E88AD4            call word 0x3bb
00002F31  E824F6            call word 0x2558
00002F34  B82000            mov ax,0x20
00002F37  50                push ax
00002F38  B80000            mov ax,0x0
00002F3B  E85FF9            call word 0x289d
00002F3E  8B460A            mov ax,[bp+0xa]
00002F41  50                push ax
00002F42  B80200            mov ax,0x2
00002F45  E871F9            call word 0x28b9
00002F48  E82AFA            call word 0x2975
00002F4B  E8D4E0            call word 0x1022
00002F4E  E90000            jmp word 0x2f51
00002F51  8BE5              mov sp,bp
00002F53  5D                pop bp
00002F54  C20800            ret 0x8
00002F57  4C                dec sp
00002F58  4C                dec sp
00002F59  B80100            mov ax,0x1
00002F5C  50                push ax
00002F5D  B80100            mov ax,0x1
00002F60  E847DE            call word 0xdaa
00002F63  B90A00            mov cx,0xa
00002F66  E868E0            call word 0xfd1
00002F69  E88EFE            call word 0x2dfa
00002F6C  B91200            mov cx,0x12
00002F6F  E85FE0            call word 0xfd1
00002F72  8B4616            mov ax,[bp+0x16]
00002F75  50                push ax
00002F76  8D7E10            lea di,[bp+0x10]
00002F79  16                push ss
00002F7A  E84FE2            call word 0x11cc
00002F7D  B105              mov cl,0x5
00002F7F  E8BBE2            call word 0x123d
00002F82  E8F2FE            call word 0x2e77
00002F85  8B4616            mov ax,[bp+0x16]
00002F88  2D0100            sub ax,0x1
00002F8B  50                push ax
00002F8C  B80200            mov ax,0x2
00002F8F  59                pop cx
00002F90  91                xchg ax,cx
00002F91  2BC8              sub cx,ax
00002F93  7E03              jng 0x2f98
00002F95  E92A00            jmp word 0x2fc2
00002F98  49                dec cx
00002F99  8846FA            mov [bp-0x6],al
00002F9C  51                push cx
00002F9D  B91200            mov cx,0x12
00002FA0  E82EE0            call word 0xfd1
00002FA3  8A46FA            mov al,[bp-0x6]
00002FA6  32E4              xor ah,ah
00002FA8  50                push ax
00002FA9  8D7E0A            lea di,[bp+0xa]
00002FAC  16                push ss
00002FAD  E81CE2            call word 0x11cc
00002FB0  B105              mov cl,0x5
00002FB2  E888E2            call word 0x123d
00002FB5  E8BFFE            call word 0x2e77
00002FB8  59                pop cx
00002FB9  41                inc cx
00002FBA  7406              jz 0x2fc2
00002FBC  FE4EFA            dec byte [bp-0x6]
00002FBF  E9DAFF            jmp word 0x2f9c
00002FC2  B91200            mov cx,0x12
00002FC5  E809E0            call word 0xfd1
00002FC8  B80100            mov ax,0x1
00002FCB  50                push ax
00002FCC  8D7E04            lea di,[bp+0x4]
00002FCF  16                push ss
00002FD0  E8F9E1            call word 0x11cc
00002FD3  B105              mov cl,0x5
00002FD5  E865E2            call word 0x123d
00002FD8  E89CFE            call word 0x2e77
00002FDB  B90A00            mov cx,0xa
00002FDE  E8F0DF            call word 0xfd1
00002FE1  E816FE            call word 0x2dfa
00002FE4  E90000            jmp word 0x2fe7
00002FE7  8BE5              mov sp,bp
00002FE9  5D                pop bp
00002FEA  C21400            ret 0x14
00002FED  B91E00            mov cx,0x1e
00002FF0  E8DEDF            call word 0xfd1
00002FF3  B81300            mov ax,0x13
00002FF6  50                push ax
00002FF7  E8EBE1            call word 0x11e5
00002FFA  05DAC4            add ax,0xc4da
00002FFD  C2C4BF            ret 0xbfc4
00003000  B105              mov cl,0x5
00003002  E838E2            call word 0x123d
00003005  E8DDE1            call word 0x11e5
00003008  05C3C4            add ax,0xc4c3
0000300B  C5                db 0xc5
0000300C  C4B4B105          les si,[si+0x5b1]
00003010  E82AE2            call word 0x123d
00003013  E8CFE1            call word 0x11e5
00003016  05C0C4            add ax,0xc4c0
00003019  C1C4D9            rol sp,byte 0xd9
0000301C  B105              mov cl,0x5
0000301E  E81CE2            call word 0x123d
00003021  E8CAFD            call word 0x2dee
00003024  2EA1AD2D          mov ax,[cs:0x2dad]
00003028  E890D3            call word 0x3bb
0000302B  E90000            jmp word 0x302e
0000302E  8BE5              mov sp,bp
00003030  5D                pop bp
00003031  C3                ret
00003032  55                push bp
00003033  8BEC              mov bp,sp
00003035  55                push bp
00003036  E90000            jmp word 0x3039
00003039  B80200            mov ax,0x2
0000303C  50                push ax
0000303D  8A4606            mov al,[bp+0x6]
00003040  32E4              xor ah,ah
00003042  B90200            mov cx,0x2
00003045  F7E9              imul cx
00003047  59                pop cx
00003048  03C1              add ax,cx
0000304A  50                push ax
0000304B  B81300            mov ax,0x13
0000304E  050200            add ax,0x2
00003051  50                push ax
00003052  8A4604            mov al,[bp+0x4]
00003055  32E4              xor ah,ah
00003057  59                pop cx
00003058  91                xchg ax,cx
00003059  2BC1              sub ax,cx
0000305B  E84CDD            call word 0xdaa
0000305E  E90000            jmp word 0x3061
00003061  8BE5              mov sp,bp
00003063  5D                pop bp
00003064  C20400            ret 0x4
00003067  55                push bp
00003068  8BEC              mov bp,sp
0000306A  55                push bp
0000306B  E90400            jmp word 0x3072
0000306E  58                pop ax
0000306F  300F              xor [bx],cl
00003071  0A8A4608          or cl,[bp+si+0x846]
00003075  32E4              xor ah,ah
00003077  97                xchg ax,di
00003078  2E8A856F30        mov al,[cs:di+0x306f]
0000307D  32E4              xor ah,ah
0000307F  E839D3            call word 0x3bb
00003082  B83100            mov ax,0x31
00003085  50                push ax
00003086  B80900            mov ax,0x9
00003089  E81EDD            call word 0xdaa
0000308C  8A4608            mov al,[bp+0x8]
0000308F  32E4              xor ah,ah
00003091  97                xchg ax,di
00003092  E8C3F4            call word 0x2558
00003095  2E8A856D30        mov al,[cs:di+0x306d]
0000309A  32E4              xor ah,ah
0000309C  50                push ax
0000309D  B80000            mov ax,0x0
000030A0  E8FAF7            call word 0x289d
000030A3  B84100            mov ax,0x41
000030A6  50                push ax
000030A7  8A4606            mov al,[bp+0x6]
000030AA  32E4              xor ah,ah
000030AC  59                pop cx
000030AD  03C1              add ax,cx
000030AF  2D0100            sub ax,0x1
000030B2  50                push ax
000030B3  B80200            mov ax,0x2
000030B6  E8E4F7            call word 0x289d
000030B9  8A4604            mov al,[bp+0x4]
000030BC  32E4              xor ah,ah
000030BE  50                push ax
000030BF  B80000            mov ax,0x0
000030C2  E8F4F7            call word 0x28b9
000030C5  E85ADF            call word 0x1022
000030C8  E8DFD1            call word 0x2aa
000030CB  B90A00            mov cx,0xa
000030CE  E800DF            call word 0xfd1
000030D1  8A4606            mov al,[bp+0x6]
000030D4  32E4              xor ah,ah
000030D6  50                push ax
000030D7  8A4604            mov al,[bp+0x4]
000030DA  32E4              xor ah,ah
000030DC  50                push ax
000030DD  E852FF            call word 0x3032
000030E0  8A4608            mov al,[bp+0x8]
000030E3  32E4              xor ah,ah
000030E5  97                xchg ax,di
000030E6  E86FF4            call word 0x2558
000030E9  2E8A856D30        mov al,[cs:di+0x306d]
000030EE  32E4              xor ah,ah
000030F0  50                push ax
000030F1  B80000            mov ax,0x0
000030F4  E8A6F7            call word 0x289d
000030F7  E828DF            call word 0x1022
000030FA  B90A00            mov cx,0xa
000030FD  E8D1DE            call word 0xfd1
00003100  8A4606            mov al,[bp+0x6]
00003103  32E4              xor ah,ah
00003105  50                push ax
00003106  8A4604            mov al,[bp+0x4]
00003109  32E4              xor ah,ah
0000310B  50                push ax
0000310C  E823FF            call word 0x3032
0000310F  2EA1AD2D          mov ax,[cs:0x2dad]
00003113  E8A5D2            call word 0x3bb
00003116  E90000            jmp word 0x3119
00003119  8BE5              mov sp,bp
0000311B  5D                pop bp
0000311C  C20600            ret 0x6
0000311F  55                push bp
00003120  8BEC              mov bp,sp
00003122  55                push bp
00003123  E90000            jmp word 0x3126
00003126  B83100            mov ax,0x31
00003129  50                push ax
0000312A  B80900            mov ax,0x9
0000312D  E87ADC            call word 0xdaa
00003130  E877D1            call word 0x2aa
00003133  E90000            jmp word 0x3136
00003136  8BE5              mov sp,bp
00003138  5D                pop bp
00003139  C3                ret
0000313A  55                push bp
0000313B  8BEC              mov bp,sp
0000313D  55                push bp
0000313E  E90000            jmp word 0x3141
00003141  2EA1AD2D          mov ax,[cs:0x2dad]
00003145  E873D2            call word 0x3bb
00003148  B80100            mov ax,0x1
0000314B  50                push ax
0000314C  B81700            mov ax,0x17
0000314F  E858DC            call word 0xdaa
00003152  E803F4            call word 0x2558
00003155  8D7E04            lea di,[bp+0x4]
00003158  16                push ss
00003159  E870E0            call word 0x11cc
0000315C  B80000            mov ax,0x0
0000315F  E8C4F7            call word 0x2926
00003162  E8BDDE            call word 0x1022
00003165  E90000            jmp word 0x3168
00003168  8BE5              mov sp,bp
0000316A  5D                pop bp
0000316B  C20001            ret 0x100
0000316E  55                push bp
0000316F  8BEC              mov bp,sp
00003171  55                push bp
00003172  E90000            jmp word 0x3175
00003175  B80100            mov ax,0x1
00003178  50                push ax
00003179  B81700            mov ax,0x17
0000317C  E82BDC            call word 0xdaa
0000317F  E828D1            call word 0x2aa
00003182  E90000            jmp word 0x3185
00003185  8BE5              mov sp,bp
00003187  5D                pop bp
00003188  C3                ret
00003189  55                push bp
0000318A  8BEC              mov bp,sp
0000318C  55                push bp
0000318D  E90000            jmp word 0x3190
00003190  2EA1AD2D          mov ax,[cs:0x2dad]
00003194  E838D2            call word 0x3cf
00003197  B80000            mov ax,0x0
0000319A  E81ED2            call word 0x3bb
0000319D  E8B8F3            call word 0x2558
000031A0  8D7E06            lea di,[bp+0x6]
000031A3  16                push ss
000031A4  E825E0            call word 0x11cc
000031A7  B80100            mov ax,0x1
000031AA  50                push ax
000031AB  8A4604            mov al,[bp+0x4]
000031AE  32E4              xor ah,ah
000031B0  E88CE1            call word 0x133f
000031B3  B80000            mov ax,0x0
000031B6  E86DF7            call word 0x2926
000031B9  E866DE            call word 0x1022
000031BC  B80000            mov ax,0x0
000031BF  E80DD2            call word 0x3cf
000031C2  2EA1AD2D          mov ax,[cs:0x2dad]
000031C6  E8F2D1            call word 0x3bb
000031C9  E88CF3            call word 0x2558
000031CC  8D7E06            lea di,[bp+0x6]
000031CF  16                push ss
000031D0  E8F9DF            call word 0x11cc
000031D3  8A4604            mov al,[bp+0x4]
000031D6  32E4              xor ah,ah
000031D8  050100            add ax,0x1
000031DB  50                push ax
000031DC  8D7E06            lea di,[bp+0x6]
000031DF  16                push ss
000031E0  E8E9DF            call word 0x11cc
000031E3  E898E1            call word 0x137e
000031E6  50                push ax
000031E7  8A4604            mov al,[bp+0x4]
000031EA  32E4              xor ah,ah
000031EC  59                pop cx
000031ED  91                xchg ax,cx
000031EE  2BC1              sub ax,cx
000031F0  E84CE1            call word 0x133f
000031F3  B80000            mov ax,0x0
000031F6  E82DF7            call word 0x2926
000031F9  E826DE            call word 0x1022
000031FC  E90000            jmp word 0x31ff
000031FF  8BE5              mov sp,bp
00003201  5D                pop bp
00003202  C20201            ret 0x102
00003205  55                push bp
00003206  8BEC              mov bp,sp
00003208  55                push bp
00003209  E90D0B            jmp word 0x3d19
0000320C  0B474F            or ax,[bx+0x4f]
0000320F  2D4D4F            sub ax,0x4f4d
00003212  4B                dec bx
00003213  55                push bp
00003214  2E48              cs dec ax
00003216  4C                dec sp
00003217  50                push ax
00003218  0000              add [bx+si],al
0000321A  0000              add [bx+si],al
0000321C  0000              add [bx+si],al
0000321E  0000              add [bx+si],al
00003220  00558B            add [di-0x75],dl
00003223  C4                db 0xc4
00003224  FF76FE            push word [bp-0x2]
00003227  8BE8              mov bp,ax
00003229  55                push bp
0000322A  E90000            jmp word 0x322d
0000322D  83EC04            sub sp,byte +0x4
00003230  B80100            mov ax,0x1
00003233  8B5EFE            mov bx,[bp-0x2]
00003236  3688871BFA        mov [ss:bx-0x5e5],al
0000323B  B81000            mov ax,0x10
0000323E  8B5EFE            mov bx,[bp-0x2]
00003241  3688871AFA        mov [ss:bx-0x5e6],al
00003246  B80100            mov ax,0x1
00003249  8B5EFE            mov bx,[bp-0x2]
0000324C  36888719FA        mov [ss:bx-0x5e7],al
00003251  B81D00            mov ax,0x1d
00003254  8B5EFE            mov bx,[bp-0x2]
00003257  36888718FA        mov [ss:bx-0x5e8],al
0000325C  E8C7CF            call word 0x226
0000325F  2EA1AD2D          mov ax,[cs:0x2dad]
00003263  2D0800            sub ax,0x8
00003266  E852D1            call word 0x3bb
00003269  8B5EFE            mov bx,[bp-0x2]
0000326C  368A8719FA        mov al,[ss:bx-0x5e7]
00003271  32E4              xor ah,ah
00003273  50                push ax
00003274  8B5EFE            mov bx,[bp-0x2]
00003277  368A871BFA        mov al,[ss:bx-0x5e5]
0000327C  32E4              xor ah,ah
0000327E  E829DB            call word 0xdaa
00003281  E8D4F2            call word 0x2558
00003284  B8C900            mov ax,0xc9
00003287  50                push ax
00003288  B80000            mov ax,0x0
0000328B  E80FF6            call word 0x289d
0000328E  E891DD            call word 0x1022
00003291  8B5EFE            mov bx,[bp-0x2]
00003294  368A8719FA        mov al,[ss:bx-0x5e7]
00003299  32E4              xor ah,ah
0000329B  050100            add ax,0x1
0000329E  50                push ax
0000329F  8B5EFE            mov bx,[bp-0x2]
000032A2  368A8718FA        mov al,[ss:bx-0x5e8]
000032A7  32E4              xor ah,ah
000032A9  2D1600            sub ax,0x16
000032AC  59                pop cx
000032AD  91                xchg ax,cx
000032AE  2BC8              sub cx,ax
000032B0  7D03              jnl 0x32b5
000032B2  E91F00            jmp word 0x32d4
000032B5  41                inc cx
000032B6  8946F8            mov [bp-0x8],ax
000032B9  51                push cx
000032BA  E89BF2            call word 0x2558
000032BD  B8CD00            mov ax,0xcd
000032C0  50                push ax
000032C1  B80000            mov ax,0x0
000032C4  E8D6F5            call word 0x289d
000032C7  E858DD            call word 0x1022
000032CA  59                pop cx
000032CB  49                dec cx
000032CC  7406              jz 0x32d4
000032CE  FF46F8            inc word [bp-0x8]
000032D1  E9E5FF            jmp word 0x32b9
000032D4  2EA1AD2D          mov ax,[cs:0x2dad]
000032D8  E8E0D0            call word 0x3bb
000032DB  E87AF2            call word 0x2558
000032DE  E87CF6            call word 0x295d
000032E1  0D2047            or ax,0x4720
000032E4  4F                dec di
000032E5  4D                dec bp
000032E6  4F                dec di
000032E7  4B                dec bx
000032E8  55                push bp
000032E9  204845            and [bx+si+0x45],cl
000032EC  4C                dec sp
000032ED  50                push ax
000032EE  20E8              and al,ch
000032F0  30DD              xor ch,bl
000032F2  2EA1AD2D          mov ax,[cs:0x2dad]
000032F6  2D0800            sub ax,0x8
000032F9  E8BFD0            call word 0x3bb
000032FC  8B5EFE            mov bx,[bp-0x2]
000032FF  368A8719FA        mov al,[ss:bx-0x5e7]
00003304  32E4              xor ah,ah
00003306  051400            add ax,0x14
00003309  50                push ax
0000330A  8B5EFE            mov bx,[bp-0x2]
0000330D  368A8718FA        mov al,[ss:bx-0x5e8]
00003312  32E4              xor ah,ah
00003314  2D0100            sub ax,0x1
00003317  59                pop cx
00003318  91                xchg ax,cx
00003319  2BC8              sub cx,ax
0000331B  7D03              jnl 0x3320
0000331D  E91F00            jmp word 0x333f
00003320  41                inc cx
00003321  8946F8            mov [bp-0x8],ax
00003324  51                push cx
00003325  E830F2            call word 0x2558
00003328  B8CD00            mov ax,0xcd
0000332B  50                push ax
0000332C  B80000            mov ax,0x0
0000332F  E86BF5            call word 0x289d
00003332  E8EDDC            call word 0x1022
00003335  59                pop cx
00003336  49                dec cx
00003337  7406              jz 0x333f
00003339  FF46F8            inc word [bp-0x8]
0000333C  E9E5FF            jmp word 0x3324
0000333F  E816F2            call word 0x2558
00003342  B8BB00            mov ax,0xbb
00003345  50                push ax
00003346  B80000            mov ax,0x0
00003349  E851F5            call word 0x289d
0000334C  E8D3DC            call word 0x1022
0000334F  8B5EFE            mov bx,[bp-0x2]
00003352  368A871BFA        mov al,[ss:bx-0x5e5]
00003357  32E4              xor ah,ah
00003359  050100            add ax,0x1
0000335C  50                push ax
0000335D  8B5EFE            mov bx,[bp-0x2]
00003360  368A871AFA        mov al,[ss:bx-0x5e6]
00003365  32E4              xor ah,ah
00003367  2D0100            sub ax,0x1
0000336A  59                pop cx
0000336B  91                xchg ax,cx
0000336C  2BC8              sub cx,ax
0000336E  7D03              jnl 0x3373
00003370  E95100            jmp word 0x33c4
00003373  41                inc cx
00003374  8946FA            mov [bp-0x6],ax
00003377  51                push cx
00003378  8B5EFE            mov bx,[bp-0x2]
0000337B  368A8719FA        mov al,[ss:bx-0x5e7]
00003380  32E4              xor ah,ah
00003382  50                push ax
00003383  8B46FA            mov ax,[bp-0x6]
00003386  E821DA            call word 0xdaa
00003389  E8CCF1            call word 0x2558
0000338C  B8BA00            mov ax,0xba
0000338F  50                push ax
00003390  B80000            mov ax,0x0
00003393  E807F5            call word 0x289d
00003396  E889DC            call word 0x1022
00003399  8B5EFE            mov bx,[bp-0x2]
0000339C  368A8718FA        mov al,[ss:bx-0x5e8]
000033A1  32E4              xor ah,ah
000033A3  50                push ax
000033A4  8B46FA            mov ax,[bp-0x6]
000033A7  E800DA            call word 0xdaa
000033AA  E8ABF1            call word 0x2558
000033AD  B8BA00            mov ax,0xba
000033B0  50                push ax
000033B1  B80000            mov ax,0x0
000033B4  E8E6F4            call word 0x289d
000033B7  E868DC            call word 0x1022
000033BA  59                pop cx
000033BB  49                dec cx
000033BC  7406              jz 0x33c4
000033BE  FF46FA            inc word [bp-0x6]
000033C1  E9B3FF            jmp word 0x3377
000033C4  8B5EFE            mov bx,[bp-0x2]
000033C7  368A8719FA        mov al,[ss:bx-0x5e7]
000033CC  32E4              xor ah,ah
000033CE  50                push ax
000033CF  8B5EFE            mov bx,[bp-0x2]
000033D2  368A871AFA        mov al,[ss:bx-0x5e6]
000033D7  32E4              xor ah,ah
000033D9  E8CED9            call word 0xdaa
000033DC  E879F1            call word 0x2558
000033DF  B8C800            mov ax,0xc8
000033E2  50                push ax
000033E3  B80000            mov ax,0x0
000033E6  E8B4F4            call word 0x289d
000033E9  E836DC            call word 0x1022
000033EC  8B5EFE            mov bx,[bp-0x2]
000033EF  368A8719FA        mov al,[ss:bx-0x5e7]
000033F4  32E4              xor ah,ah
000033F6  050100            add ax,0x1
000033F9  50                push ax
000033FA  8B5EFE            mov bx,[bp-0x2]
000033FD  368A8718FA        mov al,[ss:bx-0x5e8]
00003402  32E4              xor ah,ah
00003404  2D0100            sub ax,0x1
00003407  59                pop cx
00003408  91                xchg ax,cx
00003409  2BC8              sub cx,ax
0000340B  7D03              jnl 0x3410
0000340D  E91F00            jmp word 0x342f
00003410  41                inc cx
00003411  8946F8            mov [bp-0x8],ax
00003414  51                push cx
00003415  E840F1            call word 0x2558
00003418  B8CD00            mov ax,0xcd
0000341B  50                push ax
0000341C  B80000            mov ax,0x0
0000341F  E87BF4            call word 0x289d
00003422  E8FDDB            call word 0x1022
00003425  59                pop cx
00003426  49                dec cx
00003427  7406              jz 0x342f
00003429  FF46F8            inc word [bp-0x8]
0000342C  E9E5FF            jmp word 0x3414
0000342F  E826F1            call word 0x2558
00003432  B8BC00            mov ax,0xbc
00003435  50                push ax
00003436  B80000            mov ax,0x0
00003439  E861F4            call word 0x289d
0000343C  E8E3DB            call word 0x1022
0000343F  E90000            jmp word 0x3442
00003442  8BE5              mov sp,bp
00003444  5D                pop bp
00003445  C3                ret
00003446  55                push bp
00003447  8BC4              mov ax,sp
00003449  FF76FE            push word [bp-0x2]
0000344C  8BE8              mov bp,ax
0000344E  55                push bp
0000344F  E90000            jmp word 0x3452
00003452  8B5EFE            mov bx,[bp-0x2]
00003455  368A8719FA        mov al,[ss:bx-0x5e7]
0000345A  32E4              xor ah,ah
0000345C  050100            add ax,0x1
0000345F  50                push ax
00003460  8B5EFE            mov bx,[bp-0x2]
00003463  368A871AFA        mov al,[ss:bx-0x5e6]
00003468  32E4              xor ah,ah
0000346A  050100            add ax,0x1
0000346D  E83AD9            call word 0xdaa
00003470  B90801            mov cx,0x108
00003473  E85BDB            call word 0xfd1
00003476  B81800            mov ax,0x18
00003479  50                push ax
0000347A  B801C4            mov ax,0xc401
0000347D  50                push ax
0000347E  E802E0            call word 0x1483
00003481  E879DE            call word 0x12fd
00003484  B1FF              mov cl,0xff
00003486  E8B4DD            call word 0x123d
00003489  B80100            mov ax,0x1
0000348C  50                push ax
0000348D  E8F9FC            call word 0x3189
00003490  B90801            mov cx,0x108
00003493  E83BDB            call word 0xfd1
00003496  B81900            mov ax,0x19
00003499  50                push ax
0000349A  B801C4            mov ax,0xc401
0000349D  50                push ax
0000349E  E8E2DF            call word 0x1483
000034A1  E859DE            call word 0x12fd
000034A4  E83EDD            call word 0x11e5
000034A7  095363            or [bp+di+0x63],dx
000034AA  726F              jc 0x351b
000034AC  6C                insb
000034AD  6C                insb
000034AE  2020              and [bx+si],ah
000034B0  20E8              and al,ch
000034B2  49                dec cx
000034B3  DEB1FFE8          fidiv word [bx+di-0x1701]
000034B7  84DD              test ch,bl
000034B9  B80100            mov ax,0x1
000034BC  50                push ax
000034BD  E8C9FC            call word 0x3189
000034C0  B90801            mov cx,0x108
000034C3  E80BDB            call word 0xfd1
000034C6  E81CDD            call word 0x11e5
000034C9  0450              add al,0x50
000034CB  6755              a32 push bp
000034CD  70B8              jo 0x3487
000034CF  01C4              add sp,ax
000034D1  50                push ax
000034D2  E828DE            call word 0x12fd
000034D5  B1FF              mov cl,0xff
000034D7  E863DD            call word 0x123d
000034DA  B80400            mov ax,0x4
000034DD  50                push ax
000034DE  E8A8FC            call word 0x3189
000034E1  B90801            mov cx,0x108
000034E4  E8EADA            call word 0xfd1
000034E7  E8FBDC            call word 0x11e5
000034EA  0450              add al,0x50
000034EC  6744              a32 inc sp
000034EE  6E                outsb
000034EF  B801C4            mov ax,0xc401
000034F2  50                push ax
000034F3  E807DE            call word 0x12fd
000034F6  E8ECDC            call word 0x11e5
000034F9  0450              add al,0x50
000034FB  61                popaw
000034FC  6765E8FCDD        gs call word 0x12fd
00003501  B1FF              mov cl,0xff
00003503  E837DD            call word 0x123d
00003506  B80400            mov ax,0x4
00003509  50                push ax
0000350A  E87CFC            call word 0x3189
0000350D  E90000            jmp word 0x3510
00003510  8BE5              mov sp,bp
00003512  5D                pop bp
00003513  C3                ret
00003514  55                push bp
00003515  8BC4              mov ax,sp
00003517  FF76FE            push word [bp-0x2]
0000351A  8BE8              mov bp,ax
0000351C  55                push bp
0000351D  E94A01            jmp word 0x366a
00003520  55                push bp
00003521  8BC4              mov ax,sp
00003523  FF76FE            push word [bp-0x2]
00003526  FF76FC            push word [bp-0x4]
00003529  8BE8              mov bp,ax
0000352B  55                push bp
0000352C  E90000            jmp word 0x352f
0000352F  B80100            mov ax,0x1
00003532  50                push ax
00003533  B80200            mov ax,0x2
00003536  E871D8            call word 0xdaa
00003539  E86ECD            call word 0x2aa
0000353C  E819F0            call word 0x2558
0000353F  E81BF4            call word 0x295d
00003542  1320              adc sp,[bx+si]
00003544  52                push dx
00003545  6561              gs popaw
00003547  64696E672054      imul bp,[fs:bp+0x67],word 0x5420
0000354D  657874            gs js 0x35c4
00003550  202E202E          and [0x2e20],ch
00003554  202EE81C          and [0x1ce8],ch
00003558  F4                hlt
00003559  E8C6DA            call word 0x1022
0000355C  8B5EFE            mov bx,[bp-0x2]
0000355F  368DBF1EFA        lea di,[ss:bx-0x5e2]
00003564  16                push ss
00003565  57                push di
00003566  B81405            mov ax,0x514
00003569  50                push ax
0000356A  B80000            mov ax,0x0
0000356D  E8D4D9            call word 0xf44
00003570  B80000            mov ax,0x0
00003573  8B5EFE            mov bx,[bp-0x2]
00003576  3689871CFA        mov [ss:bx-0x5e4],ax
0000357B  8B5EFE            mov bx,[bp-0x2]
0000357E  368DBF32FF        lea di,[ss:bx-0xce]
00003583  16                push ss
00003584  E807F4            call word 0x298e
00003587  3401              xor al,0x1
00003589  50                push ax
0000358A  8B5EFE            mov bx,[bp-0x2]
0000358D  368B871CFA        mov ax,[ss:bx-0x5e4]
00003592  3D3200            cmp ax,0x32
00003595  B80100            mov ax,0x1
00003598  7C01              jl 0x359b
0000359A  48                dec ax
0000359B  59                pop cx
0000359C  23C1              and ax,cx
0000359E  0BC0              or ax,ax
000035A0  7503              jnz 0x35a5
000035A2  E94400            jmp word 0x35e9
000035A5  8B5EFE            mov bx,[bp-0x2]
000035A8  368B871CFA        mov ax,[ss:bx-0x5e4]
000035AD  050100            add ax,0x1
000035B0  8B5EFE            mov bx,[bp-0x2]
000035B3  3689871CFA        mov [ss:bx-0x5e4],ax
000035B8  8B5EFE            mov bx,[bp-0x2]
000035BB  368DBF32FF        lea di,[ss:bx-0xce]
000035C0  16                push ss
000035C1  E877EF            call word 0x253b
000035C4  8B5EFE            mov bx,[bp-0x2]
000035C7  368B871CFA        mov ax,[ss:bx-0x5e4]
000035CC  B91A00            mov cx,0x1a
000035CF  F7E1              mul cx
000035D1  97                xchg ax,di
000035D2  8B5EFE            mov bx,[bp-0x2]
000035D5  368DB904FA        lea di,[ss:bx+di-0x5fc]
000035DA  16                push ss
000035DB  B119              mov cl,0x19
000035DD  E8D3F1            call word 0x27b3
000035E0  E824F2            call word 0x2807
000035E3  E83CDA            call word 0x1022
000035E6  E992FF            jmp word 0x357b
000035E9  8B5EFE            mov bx,[bp-0x2]
000035EC  368DBF32FF        lea di,[ss:bx-0xce]
000035F1  16                push ss
000035F2  E899F3            call word 0x298e
000035F5  3401              xor al,0x1
000035F7  7503              jnz 0x35fc
000035F9  E96700            jmp word 0x3663
000035FC  E859EF            call word 0x2558
000035FF  E873F3            call word 0x2975
00003602  E81DDA            call word 0x1022
00003605  E850EF            call word 0x2558
00003608  E86AF3            call word 0x2975
0000360B  E814DA            call word 0x1022
0000360E  E847EF            call word 0x2558
00003611  E849F3            call word 0x295d
00003614  18536F            sbb [bp+di+0x6f],dl
00003617  7272              jc 0x368b
00003619  792C              jns 0x3647
0000361B  207468            and [si+0x68],dh
0000361E  6973207072        imul si,[bp+di+0x20],word 0x7270
00003623  6F                outsw
00003624  677261            jc 0x3688
00003627  6D                insw
00003628  206F6E            and [bx+0x6e],ch
0000362B  6C                insb
0000362C  79E8              jns 0x3616
0000362E  45                inc bp
0000362F  F3E8EFD9          rep call word 0x1022
00003633  E822EF            call word 0x2558
00003636  E824F3            call word 0x295d
00003639  06                push es
0000363A  7265              jc 0x36a1
0000363C  61                popaw
0000363D  647320            fs jnc 0x3660
00003640  B83200            mov ax,0x32
00003643  50                push ax
00003644  B80000            mov ax,0x0
00003647  E86FF2            call word 0x28b9
0000364A  E810F3            call word 0x295d
0000364D  0F                db 0x0f
0000364E  206C69            and [si+0x69],ch
00003651  6E                outsb
00003652  657320            gs jnc 0x3675
00003655  6F                outsw
00003656  66207465          o32 and [si+0x65],dh
0000365A  7874              js 0x36d0
0000365C  2EE815F3          cs call word 0x2975
00003660  E8BFD9            call word 0x1022
00003663  E90000            jmp word 0x3666
00003666  8BE5              mov sp,bp
00003668  5D                pop bp
00003669  C3                ret
0000366A  4C                dec sp
0000366B  B83200            mov ax,0x32
0000366E  50                push ax
0000366F  B80800            mov ax,0x8
00003672  50                push ax
00003673  B84B00            mov ax,0x4b
00003676  50                push ax
00003677  B81500            mov ax,0x15
0000367A  E810CD            call word 0x38d
0000367D  B80100            mov ax,0x1
00003680  50                push ax
00003681  B80100            mov ax,0x1
00003684  E823D7            call word 0xdaa
00003687  E89CCB            call word 0x226
0000368A  B80100            mov ax,0x1
0000368D  50                push ax
0000368E  B80100            mov ax,0x1
00003691  E816D7            call word 0xdaa
00003694  E8C1EE            call word 0x2558
00003697  E8DBF2            call word 0x2975
0000369A  E885D9            call word 0x1022
0000369D  E8B8EE            call word 0x2558
000036A0  E8BAF2            call word 0x295d
000036A3  0C4C              or al,0x4c
000036A5  6F                outsw
000036A6  6F                outsw
000036A7  6B696E67          imul bp,[bx+di+0x6e],byte +0x67
000036AB  20666F            and [bp+0x6f],ah
000036AE  7220              jc 0x36d0
000036B0  BF0C32            mov di,0x320c
000036B3  0E                push cs
000036B4  E815DB            call word 0x11cc
000036B7  B80000            mov ax,0x0
000036BA  E869F2            call word 0x2926
000036BD  E862D9            call word 0x1022
000036C0  8B5EFE            mov bx,[bp-0x2]
000036C3  368DBF32FF        lea di,[ss:bx-0xce]
000036C8  16                push ss
000036C9  57                push di
000036CA  BF0C32            mov di,0x320c
000036CD  0E                push cs
000036CE  E8FBDA            call word 0x11cc
000036D1  E801EC            call word 0x22d5
000036D4  E84BD9            call word 0x1022
000036D7  8B5EFE            mov bx,[bp-0x2]
000036DA  368DBF32FF        lea di,[ss:bx-0xce]
000036DF  16                push ss
000036E0  B98000            mov cx,0x80
000036E3  E844EC            call word 0x232a
000036E6  E832D9            call word 0x101b
000036E9  3D0000            cmp ax,0x0
000036EC  7503              jnz 0x36f1
000036EE  E96200            jmp word 0x3753
000036F1  B80100            mov ax,0x1
000036F4  50                push ax
000036F5  B80200            mov ax,0x2
000036F8  E8AFD6            call word 0xdaa
000036FB  E8ACCB            call word 0x2aa
000036FE  E857EE            call word 0x2558
00003701  BF0C32            mov di,0x320c
00003704  0E                push cs
00003705  E8C4DA            call word 0x11cc
00003708  B80000            mov ax,0x0
0000370B  E818F2            call word 0x2926
0000370E  E84CF2            call word 0x295d
00003711  0B20              or sp,[bx+si]
00003713  6E                outsb
00003714  6F                outsw
00003715  7420              jz 0x3737
00003717  666F              outsd
00003719  756E              jnz 0x3789
0000371B  642EE855F2        cs call word 0x2975
00003720  E8FFD8            call word 0x1022
00003723  E832EE            call word 0x2558
00003726  E834F2            call word 0x295d
00003729  0C50              or al,0x50
0000372B  7265              jc 0x3792
0000372D  7373              jnc 0x37a2
0000372F  203C              and [si],bh
00003731  45                inc bp
00003732  53                push bx
00003733  43                inc bx
00003734  3E20E8            ds and al,ch
00003737  E9D8BF            jmp word 0xf712
0000373A  4A                dec dx
0000373B  011EE8FB          add [0xfbe8],bx
0000373F  ED                in ax,dx
00003740  8D7EFB            lea di,[bp-0x5]
00003743  16                push ss
00003744  E81BF0            call word 0x2762
00003747  E8D8D8            call word 0x1022
0000374A  B80000            mov ax,0x0
0000374D  884604            mov [bp+0x4],al
00003750  E98900            jmp word 0x37dc
00003753  B90A00            mov cx,0xa
00003756  E878D8            call word 0xfd1
00003759  E8C4FD            call word 0x3520
0000375C  8B5EFE            mov bx,[bp-0x2]
0000375F  368B871CFA        mov ax,[ss:bx-0x5e4]
00003764  3D0100            cmp ax,0x1
00003767  7C03              jl 0x376c
00003769  E96400            jmp word 0x37d0
0000376C  E8B7CA            call word 0x226
0000376F  B80100            mov ax,0x1
00003772  50                push ax
00003773  B80200            mov ax,0x2
00003776  E831D6            call word 0xdaa
00003779  E82ECB            call word 0x2aa
0000377C  E8D9ED            call word 0x2558
0000377F  E8DBF1            call word 0x295d
00003782  17                pop ss
00003783  54                push sp
00003784  686520            push word 0x2065
00003787  68656C            push word 0x6c65
0000378A  7020              jo 0x37ac
0000378C  66696C6520697320  imul ebp,[si+0x65],dword 0x20736920
00003794  656D              gs insw
00003796  7074              jo 0x380c
00003798  792E              jns 0x37c8
0000379A  E8D8F1            call word 0x2975
0000379D  E882D8            call word 0x1022
000037A0  E8B5ED            call word 0x2558
000037A3  E8B7F1            call word 0x295d
000037A6  0C50              or al,0x50
000037A8  7265              jc 0x380f
000037AA  7373              jnc 0x381f
000037AC  203C              and [si],bh
000037AE  45                inc bp
000037AF  53                push bx
000037B0  43                inc bx
000037B1  3E20E8            ds and al,ch
000037B4  6C                insb
000037B5  D8BF4A01          fdivr dword [bx+0x14a]
000037B9  1E                push ds
000037BA  E87EED            call word 0x253b
000037BD  8D7EFB            lea di,[bp-0x5]
000037C0  16                push ss
000037C1  E89EEF            call word 0x2762
000037C4  E85BD8            call word 0x1022
000037C7  B80000            mov ax,0x0
000037CA  884604            mov [bp+0x4],al
000037CD  E90C00            jmp word 0x37dc
000037D0  B80100            mov ax,0x1
000037D3  884604            mov [bp+0x4],al
000037D6  B80100            mov ax,0x1
000037D9  A2CD03            mov [0x3cd],al
000037DC  E90000            jmp word 0x37df
000037DF  8A4604            mov al,[bp+0x4]
000037E2  32E4              xor ah,ah
000037E4  0BC0              or ax,ax
000037E6  8BE5              mov sp,bp
000037E8  5D                pop bp
000037E9  C20100            ret 0x1
000037EC  55                push bp
000037ED  8BC4              mov ax,sp
000037EF  FF76FE            push word [bp-0x2]
000037F2  8BE8              mov bp,ax
000037F4  55                push bp
000037F5  E9F203            jmp word 0x3bea
000037F8  55                push bp
000037F9  8BC4              mov ax,sp
000037FB  FF76FE            push word [bp-0x2]
000037FE  FF76FC            push word [bp-0x4]
00003801  8BE8              mov bp,ax
00003803  55                push bp
00003804  E90000            jmp word 0x3807
00003807  4C                dec sp
00003808  4C                dec sp
00003809  E81ACA            call word 0x226
0000380C  8B4606            mov ax,[bp+0x6]
0000380F  50                push ax
00003810  8B4604            mov ax,[bp+0x4]
00003813  59                pop cx
00003814  91                xchg ax,cx
00003815  2BC8              sub cx,ax
00003817  7D03              jnl 0x381c
00003819  E96200            jmp word 0x387e
0000381C  41                inc cx
0000381D  8946F8            mov [bp-0x8],ax
00003820  51                push cx
00003821  8B46F8            mov ax,[bp-0x8]
00003824  3B4604            cmp ax,[bp+0x4]
00003827  7503              jnz 0x382c
00003829  E92700            jmp word 0x3853
0000382C  8B46F8            mov ax,[bp-0x8]
0000382F  B91A00            mov cx,0x1a
00003832  F7E1              mul cx
00003834  97                xchg ax,di
00003835  E820ED            call word 0x2558
00003838  8B5EFE            mov bx,[bp-0x2]
0000383B  368DB904FA        lea di,[ss:bx+di-0x5fc]
00003840  16                push ss
00003841  E888D9            call word 0x11cc
00003844  B80000            mov ax,0x0
00003847  E8DCF0            call word 0x2926
0000384A  E828F1            call word 0x2975
0000384D  E8D2D7            call word 0x1022
00003850  E92100            jmp word 0x3874
00003853  8B46F8            mov ax,[bp-0x8]
00003856  B91A00            mov cx,0x1a
00003859  F7E1              mul cx
0000385B  97                xchg ax,di
0000385C  E8F9EC            call word 0x2558
0000385F  8B5EFE            mov bx,[bp-0x2]
00003862  368DB904FA        lea di,[ss:bx+di-0x5fc]
00003867  16                push ss
00003868  E861D9            call word 0x11cc
0000386B  B80000            mov ax,0x0
0000386E  E8B5F0            call word 0x2926
00003871  E8AED7            call word 0x1022
00003874  59                pop cx
00003875  49                dec cx
00003876  7406              jz 0x387e
00003878  FF46F8            inc word [bp-0x8]
0000387B  E9A2FF            jmp word 0x3820
0000387E  B80100            mov ax,0x1
00003881  50                push ax
00003882  B81500            mov ax,0x15
00003885  E822D5            call word 0xdaa
00003888  E90000            jmp word 0x388b
0000388B  8BE5              mov sp,bp
0000388D  5D                pop bp
0000388E  C20400            ret 0x4
00003891  55                push bp
00003892  8BC4              mov ax,sp
00003894  FF76FE            push word [bp-0x2]
00003897  FF76FC            push word [bp-0x4]
0000389A  8BE8              mov bp,ax
0000389C  55                push bp
0000389D  E90000            jmp word 0x38a0
000038A0  C47E04            les di,[bp+0x4]
000038A3  268B05            mov ax,[es:di]
000038A6  050100            add ax,0x1
000038A9  8B5EFE            mov bx,[bp-0x2]
000038AC  363B871CFA        cmp ax,[ss:bx-0x5e4]
000038B1  7E03              jng 0x38b6
000038B3  E99700            jmp word 0x394d
000038B6  C47E04            les di,[bp+0x4]
000038B9  268B05            mov ax,[es:di]
000038BC  8B5EFC            mov bx,[bp-0x4]
000038BF  360347F6          add ax,[ss:bx-0xa]
000038C3  8B5EFE            mov bx,[bp-0x2]
000038C6  363B871CFA        cmp ax,[ss:bx-0x5e4]
000038CB  7F03              jg 0x38d0
000038CD  E91100            jmp word 0x38e1
000038D0  C47E04            les di,[bp+0x4]
000038D3  8B5EFE            mov bx,[bp-0x2]
000038D6  368B871CFA        mov ax,[ss:bx-0x5e4]
000038DB  268905            mov [es:di],ax
000038DE  E91700            jmp word 0x38f8
000038E1  C47E04            les di,[bp+0x4]
000038E4  06                push es
000038E5  57                push di
000038E6  C47E04            les di,[bp+0x4]
000038E9  268B05            mov ax,[es:di]
000038EC  8B5EFC            mov bx,[bp-0x4]
000038EF  360347F6          add ax,[ss:bx-0xa]
000038F3  5F                pop di
000038F4  07                pop es
000038F5  268905            mov [es:di],ax
000038F8  C47E04            les di,[bp+0x4]
000038FB  268B05            mov ax,[es:di]
000038FE  8B5EFC            mov bx,[bp-0x4]
00003901  362B47F6          sub ax,[ss:bx-0xa]
00003905  050100            add ax,0x1
00003908  3D0100            cmp ax,0x1
0000390B  7D03              jnl 0x3910
0000390D  E91D00            jmp word 0x392d
00003910  C47E08            les di,[bp+0x8]
00003913  06                push es
00003914  57                push di
00003915  C47E04            les di,[bp+0x4]
00003918  268B05            mov ax,[es:di]
0000391B  8B5EFC            mov bx,[bp-0x4]
0000391E  362B47F6          sub ax,[ss:bx-0xa]
00003922  050100            add ax,0x1
00003925  5F                pop di
00003926  07                pop es
00003927  268905            mov [es:di],ax
0000392A  E90900            jmp word 0x3936
0000392D  C47E08            les di,[bp+0x8]
00003930  B80100            mov ax,0x1
00003933  268905            mov [es:di],ax
00003936  B91000            mov cx,0x10
00003939  E895D6            call word 0xfd1
0000393C  C47E08            les di,[bp+0x8]
0000393F  268B05            mov ax,[es:di]
00003942  50                push ax
00003943  C47E04            les di,[bp+0x4]
00003946  268B05            mov ax,[es:di]
00003949  50                push ax
0000394A  E8ABFE            call word 0x37f8
0000394D  E90000            jmp word 0x3950
00003950  8BE5              mov sp,bp
00003952  5D                pop bp
00003953  C20800            ret 0x8
00003956  55                push bp
00003957  8BC4              mov ax,sp
00003959  FF76FE            push word [bp-0x2]
0000395C  FF76FC            push word [bp-0x4]
0000395F  8BE8              mov bp,ax
00003961  55                push bp
00003962  E90000            jmp word 0x3965
00003965  C47E08            les di,[bp+0x8]
00003968  268B05            mov ax,[es:di]
0000396B  3D0100            cmp ax,0x1
0000396E  7F03              jg 0x3973
00003970  E99700            jmp word 0x3a0a
00003973  C47E08            les di,[bp+0x8]
00003976  268B05            mov ax,[es:di]
00003979  8B5EFC            mov bx,[bp-0x4]
0000397C  362B47F6          sub ax,[ss:bx-0xa]
00003980  3D0100            cmp ax,0x1
00003983  7F03              jg 0x3988
00003985  E91A00            jmp word 0x39a2
00003988  C47E08            les di,[bp+0x8]
0000398B  06                push es
0000398C  57                push di
0000398D  C47E08            les di,[bp+0x8]
00003990  268B05            mov ax,[es:di]
00003993  8B5EFC            mov bx,[bp-0x4]
00003996  362B47F6          sub ax,[ss:bx-0xa]
0000399A  5F                pop di
0000399B  07                pop es
0000399C  268905            mov [es:di],ax
0000399F  E90900            jmp word 0x39ab
000039A2  C47E08            les di,[bp+0x8]
000039A5  B80100            mov ax,0x1
000039A8  268905            mov [es:di],ax
000039AB  C47E08            les di,[bp+0x8]
000039AE  268B05            mov ax,[es:di]
000039B1  8B5EFC            mov bx,[bp-0x4]
000039B4  360347F6          add ax,[ss:bx-0xa]
000039B8  2D0100            sub ax,0x1
000039BB  8B5EFE            mov bx,[bp-0x2]
000039BE  363B871CFA        cmp ax,[ss:bx-0x5e4]
000039C3  7F03              jg 0x39c8
000039C5  E91100            jmp word 0x39d9
000039C8  C47E04            les di,[bp+0x4]
000039CB  8B5EFE            mov bx,[bp-0x2]
000039CE  368B871CFA        mov ax,[ss:bx-0x5e4]
000039D3  268905            mov [es:di],ax
000039D6  E91A00            jmp word 0x39f3
000039D9  C47E04            les di,[bp+0x4]
000039DC  06                push es
000039DD  57                push di
000039DE  C47E08            les di,[bp+0x8]
000039E1  268B05            mov ax,[es:di]
000039E4  8B5EFC            mov bx,[bp-0x4]
000039E7  360347F6          add ax,[ss:bx-0xa]
000039EB  2D0100            sub ax,0x1
000039EE  5F                pop di
000039EF  07                pop es
000039F0  268905            mov [es:di],ax
000039F3  B91000            mov cx,0x10
000039F6  E8D8D5            call word 0xfd1
000039F9  C47E08            les di,[bp+0x8]
000039FC  268B05            mov ax,[es:di]
000039FF  50                push ax
00003A00  C47E04            les di,[bp+0x4]
00003A03  268B05            mov ax,[es:di]
00003A06  50                push ax
00003A07  E8EEFD            call word 0x37f8
00003A0A  E90000            jmp word 0x3a0d
00003A0D  8BE5              mov sp,bp
00003A0F  5D                pop bp
00003A10  C20800            ret 0x8
00003A13  55                push bp
00003A14  8BC4              mov ax,sp
00003A16  FF76FE            push word [bp-0x2]
00003A19  FF76FC            push word [bp-0x4]
00003A1C  8BE8              mov bp,ax
00003A1E  55                push bp
00003A1F  E90000            jmp word 0x3a22
00003A22  C47E08            les di,[bp+0x8]
00003A25  268B05            mov ax,[es:di]
00003A28  3D0100            cmp ax,0x1
00003A2B  7F03              jg 0x3a30
00003A2D  E99300            jmp word 0x3ac3
00003A30  C47E04            les di,[bp+0x4]
00003A33  268B05            mov ax,[es:di]
00003A36  50                push ax
00003A37  C47E08            les di,[bp+0x8]
00003A3A  58                pop ax
00003A3B  262B05            sub ax,[es:di]
00003A3E  050100            add ax,0x1
00003A41  8B5EFC            mov bx,[bp-0x4]
00003A44  363B47F6          cmp ax,[ss:bx-0xa]
00003A48  7D03              jnl 0x3a4d
00003A4A  E91300            jmp word 0x3a60
00003A4D  C47E04            les di,[bp+0x4]
00003A50  06                push es
00003A51  57                push di
00003A52  C47E04            les di,[bp+0x4]
00003A55  268B05            mov ax,[es:di]
00003A58  2D0100            sub ax,0x1
00003A5B  5F                pop di
00003A5C  07                pop es
00003A5D  268905            mov [es:di],ax
00003A60  C47E08            les di,[bp+0x8]
00003A63  06                push es
00003A64  57                push di
00003A65  C47E08            les di,[bp+0x8]
00003A68  268B05            mov ax,[es:di]
00003A6B  2D0100            sub ax,0x1
00003A6E  5F                pop di
00003A6F  07                pop es
00003A70  268905            mov [es:di],ax
00003A73  B80100            mov ax,0x1
00003A76  50                push ax
00003A77  8B5EFC            mov bx,[bp-0x4]
00003A7A  368B47F6          mov ax,[ss:bx-0xa]
00003A7E  E829D3            call word 0xdaa
00003A81  E8D7C7            call word 0x25b
00003A84  B80100            mov ax,0x1
00003A87  50                push ax
00003A88  B80100            mov ax,0x1
00003A8B  E81CD3            call word 0xdaa
00003A8E  E8F5C7            call word 0x286
00003A91  C47E08            les di,[bp+0x8]
00003A94  268B05            mov ax,[es:di]
00003A97  B91A00            mov cx,0x1a
00003A9A  F7E1              mul cx
00003A9C  97                xchg ax,di
00003A9D  E8B8EA            call word 0x2558
00003AA0  8B5EFE            mov bx,[bp-0x2]
00003AA3  368DB904FA        lea di,[ss:bx+di-0x5fc]
00003AA8  16                push ss
00003AA9  E820D7            call word 0x11cc
00003AAC  B80000            mov ax,0x0
00003AAF  E874EE            call word 0x2926
00003AB2  E86DD5            call word 0x1022
00003AB5  B80100            mov ax,0x1
00003AB8  50                push ax
00003AB9  8B5EFC            mov bx,[bp-0x4]
00003ABC  368B47F6          mov ax,[ss:bx-0xa]
00003AC0  E8E7D2            call word 0xdaa
00003AC3  E90000            jmp word 0x3ac6
00003AC6  8BE5              mov sp,bp
00003AC8  5D                pop bp
00003AC9  C20800            ret 0x8
00003ACC  55                push bp
00003ACD  8BC4              mov ax,sp
00003ACF  FF76FE            push word [bp-0x2]
00003AD2  FF76FC            push word [bp-0x4]
00003AD5  8BE8              mov bp,ax
00003AD7  55                push bp
00003AD8  E90000            jmp word 0x3adb
00003ADB  C47E04            les di,[bp+0x4]
00003ADE  268B05            mov ax,[es:di]
00003AE1  8B5EFE            mov bx,[bp-0x2]
00003AE4  363B871CFA        cmp ax,[ss:bx-0x5e4]
00003AE9  7C03              jl 0x3aee
00003AEB  E97600            jmp word 0x3b64
00003AEE  C47E08            les di,[bp+0x8]
00003AF1  06                push es
00003AF2  57                push di
00003AF3  C47E08            les di,[bp+0x8]
00003AF6  268B05            mov ax,[es:di]
00003AF9  050100            add ax,0x1
00003AFC  5F                pop di
00003AFD  07                pop es
00003AFE  268905            mov [es:di],ax
00003B01  C47E04            les di,[bp+0x4]
00003B04  06                push es
00003B05  57                push di
00003B06  C47E04            les di,[bp+0x4]
00003B09  268B05            mov ax,[es:di]
00003B0C  050100            add ax,0x1
00003B0F  5F                pop di
00003B10  07                pop es
00003B11  268905            mov [es:di],ax
00003B14  B80100            mov ax,0x1
00003B17  50                push ax
00003B18  B80100            mov ax,0x1
00003B1B  E88CD2            call word 0xdaa
00003B1E  E83AC7            call word 0x25b
00003B21  B80100            mov ax,0x1
00003B24  50                push ax
00003B25  8B5EFC            mov bx,[bp-0x4]
00003B28  368B47F6          mov ax,[ss:bx-0xa]
00003B2C  E87BD2            call word 0xdaa
00003B2F  E854C7            call word 0x286
00003B32  C47E04            les di,[bp+0x4]
00003B35  268B05            mov ax,[es:di]
00003B38  B91A00            mov cx,0x1a
00003B3B  F7E1              mul cx
00003B3D  97                xchg ax,di
00003B3E  E817EA            call word 0x2558
00003B41  8B5EFE            mov bx,[bp-0x2]
00003B44  368DB904FA        lea di,[ss:bx+di-0x5fc]
00003B49  16                push ss
00003B4A  E87FD6            call word 0x11cc
00003B4D  B80000            mov ax,0x0
00003B50  E8D3ED            call word 0x2926
00003B53  E8CCD4            call word 0x1022
00003B56  B80100            mov ax,0x1
00003B59  50                push ax
00003B5A  8B5EFC            mov bx,[bp-0x4]
00003B5D  368B47F6          mov ax,[ss:bx-0xa]
00003B61  E846D2            call word 0xdaa
00003B64  E90000            jmp word 0x3b67
00003B67  8BE5              mov sp,bp
00003B69  5D                pop bp
00003B6A  C20800            ret 0x8
00003B6D  55                push bp
00003B6E  8BC4              mov ax,sp
00003B70  FF76FE            push word [bp-0x2]
00003B73  FF76FC            push word [bp-0x4]
00003B76  8BE8              mov bp,ax
00003B78  55                push bp
00003B79  E90000            jmp word 0x3b7c
00003B7C  B81500            mov ax,0x15
00003B7F  2D0800            sub ax,0x8
00003B82  050100            add ax,0x1
00003B85  8B5EFC            mov bx,[bp-0x4]
00003B88  368947F6          mov [ss:bx-0xa],ax
00003B8C  B80100            mov ax,0x1
00003B8F  8B5EFC            mov bx,[bp-0x4]
00003B92  368947FA          mov [ss:bx-0x6],ax
00003B96  8B5EFC            mov bx,[bp-0x4]
00003B99  368B47F6          mov ax,[ss:bx-0xa]
00003B9D  8B5EFE            mov bx,[bp-0x2]
00003BA0  363B871CFA        cmp ax,[ss:bx-0x5e4]
00003BA5  7F03              jg 0x3baa
00003BA7  E91200            jmp word 0x3bbc
00003BAA  8B5EFE            mov bx,[bp-0x2]
00003BAD  368B871CFA        mov ax,[ss:bx-0x5e4]
00003BB2  8B5EFC            mov bx,[bp-0x4]
00003BB5  368947F8          mov [ss:bx-0x8],ax
00003BB9  E90E00            jmp word 0x3bca
00003BBC  8B5EFC            mov bx,[bp-0x4]
00003BBF  368B47F6          mov ax,[ss:bx-0xa]
00003BC3  8B5EFC            mov bx,[bp-0x4]
00003BC6  368947F8          mov [ss:bx-0x8],ax
00003BCA  B91000            mov cx,0x10
00003BCD  E801D4            call word 0xfd1
00003BD0  8B5EFC            mov bx,[bp-0x4]
00003BD3  368B47FA          mov ax,[ss:bx-0x6]
00003BD7  50                push ax
00003BD8  8B5EFC            mov bx,[bp-0x4]
00003BDB  368B47F8          mov ax,[ss:bx-0x8]
00003BDF  50                push ax
00003BE0  E815FC            call word 0x37f8
00003BE3  E90000            jmp word 0x3be6
00003BE6  8BE5              mov sp,bp
00003BE8  5D                pop bp
00003BE9  C3                ret
00003BEA  83EC07            sub sp,byte +0x7
00003BED  B90A00            mov cx,0xa
00003BF0  E8DED3            call word 0xfd1
00003BF3  E877FF            call word 0x3b6d
00003BF6  BF4A01            mov di,0x14a
00003BF9  1E                push ds
00003BFA  E83EE9            call word 0x253b
00003BFD  8D7EF5            lea di,[bp-0xb]
00003C00  16                push ss
00003C01  E85EEB            call word 0x2762
00003C04  E81BD4            call word 0x1022
00003C07  8A46F5            mov al,[bp-0xb]
00003C0A  32E4              xor ah,ah
00003C0C  E85FC7            call word 0x36e
00003C0F  8846F5            mov [bp-0xb],al
00003C12  8A46F5            mov al,[bp-0xb]
00003C15  32E4              xor ah,ah
00003C17  3D0300            cmp ax,0x3
00003C1A  B80100            mov ax,0x1
00003C1D  7401              jz 0x3c20
00003C1F  48                dec ax
00003C20  50                push ax
00003C21  8A46F5            mov al,[bp-0xb]
00003C24  32E4              xor ah,ah
00003C26  3D5100            cmp ax,0x51
00003C29  B80100            mov ax,0x1
00003C2C  7401              jz 0x3c2f
00003C2E  48                dec ax
00003C2F  59                pop cx
00003C30  0BC1              or ax,cx
00003C32  0BC0              or ax,ax
00003C34  7503              jnz 0x3c39
00003C36  E90900            jmp word 0x3c42
00003C39  B90600            mov cx,0x6
00003C3C  E892D3            call word 0xfd1
00003C3F  E873F1            call word 0x2db5
00003C42  8A46F5            mov al,[bp-0xb]
00003C45  32E4              xor ah,ah
00003C47  3D1B00            cmp ax,0x1b
00003C4A  B80100            mov ax,0x1
00003C4D  7401              jz 0x3c50
00003C4F  48                dec ax
00003C50  50                push ax
00003C51  E850D1            call word 0xda4
00003C54  59                pop cx
00003C55  23C1              and ax,cx
00003C57  0BC0              or ax,ax
00003C59  7503              jnz 0x3c5e
00003C5B  E99600            jmp word 0x3cf4
00003C5E  BF4A01            mov di,0x14a
00003C61  1E                push ds
00003C62  E8D6E8            call word 0x253b
00003C65  8D7EF5            lea di,[bp-0xb]
00003C68  16                push ss
00003C69  E8F6EA            call word 0x2762
00003C6C  E8B3D3            call word 0x1022
00003C6F  8A46F5            mov al,[bp-0xb]
00003C72  32E4              xor ah,ah
00003C74  E8F7C6            call word 0x36e
00003C77  8846F5            mov [bp-0xb],al
00003C7A  8A46F5            mov al,[bp-0xb]
00003C7D  32E4              xor ah,ah
00003C7F  3D5100            cmp ax,0x51
00003C82  7403              jz 0x3c87
00003C84  E91600            jmp word 0x3c9d
00003C87  B91200            mov cx,0x12
00003C8A  E844D3            call word 0xfd1
00003C8D  8D7EFA            lea di,[bp-0x6]
00003C90  16                push ss
00003C91  57                push di
00003C92  8D7EF8            lea di,[bp-0x8]
00003C95  16                push ss
00003C96  57                push di
00003C97  E8F7FB            call word 0x3891
00003C9A  E95700            jmp word 0x3cf4
00003C9D  3D4900            cmp ax,0x49
00003CA0  7403              jz 0x3ca5
00003CA2  E91600            jmp word 0x3cbb
00003CA5  B91200            mov cx,0x12
00003CA8  E826D3            call word 0xfd1
00003CAB  8D7EFA            lea di,[bp-0x6]
00003CAE  16                push ss
00003CAF  57                push di
00003CB0  8D7EF8            lea di,[bp-0x8]
00003CB3  16                push ss
00003CB4  57                push di
00003CB5  E89EFC            call word 0x3956
00003CB8  E93900            jmp word 0x3cf4
00003CBB  3D5000            cmp ax,0x50
00003CBE  7403              jz 0x3cc3
00003CC0  E91600            jmp word 0x3cd9
00003CC3  B91200            mov cx,0x12
00003CC6  E808D3            call word 0xfd1
00003CC9  8D7EFA            lea di,[bp-0x6]
00003CCC  16                push ss
00003CCD  57                push di
00003CCE  8D7EF8            lea di,[bp-0x8]
00003CD1  16                push ss
00003CD2  57                push di
00003CD3  E8F6FD            call word 0x3acc
00003CD6  E91B00            jmp word 0x3cf4
00003CD9  3D4800            cmp ax,0x48
00003CDC  7403              jz 0x3ce1
00003CDE  E91300            jmp word 0x3cf4
00003CE1  B91200            mov cx,0x12
00003CE4  E8EAD2            call word 0xfd1
00003CE7  8D7EFA            lea di,[bp-0x6]
00003CEA  16                push ss
00003CEB  57                push di
00003CEC  8D7EF8            lea di,[bp-0x8]
00003CEF  16                push ss
00003CF0  57                push di
00003CF1  E81FFD            call word 0x3a13
00003CF4  8A46F5            mov al,[bp-0xb]
00003CF7  32E4              xor ah,ah
00003CF9  3D1B00            cmp ax,0x1b
00003CFC  B80100            mov ax,0x1
00003CFF  7401              jz 0x3d02
00003D01  48                dec ax
00003D02  50                push ax
00003D03  E89ED0            call word 0xda4
00003D06  3401              xor al,0x1
00003D08  59                pop cx
00003D09  23C1              and ax,cx
00003D0B  0BC0              or ax,ax
00003D0D  7503              jnz 0x3d12
00003D0F  E9E4FE            jmp word 0x3bf6
00003D12  E90000            jmp word 0x3d15
00003D15  8BE5              mov sp,bp
00003D17  5D                pop bp
00003D18  C3                ret
00003D19  81ECE605          sub sp,0x5e6
00003D1D  B83100            mov ax,0x31
00003D20  50                push ax
00003D21  B80500            mov ax,0x5
00003D24  E883D0            call word 0xdaa
00003D27  B90801            mov cx,0x108
00003D2A  E8A4D2            call word 0xfd1
00003D2D  E8B5D4            call word 0x11e5
00003D30  0E                push cs
00003D31  45                inc bp
00003D32  53                push bx
00003D33  43                inc bx
00003D34  2D4578            sub ax,0x7845
00003D37  6974732048        imul si,[si+0x73],word 0x4820
00003D3C  656C              gs insb
00003D3E  70B1              jo 0x3cf1
00003D40  FF                db 0xff
00003D41  E8F9D4            call word 0x123d
00003D44  B80300            mov ax,0x3
00003D47  50                push ax
00003D48  E83EF4            call word 0x3189
00003D4B  B83200            mov ax,0x32
00003D4E  2D0200            sub ax,0x2
00003D51  50                push ax
00003D52  B80800            mov ax,0x8
00003D55  2D0100            sub ax,0x1
00003D58  50                push ax
00003D59  B84B00            mov ax,0x4b
00003D5C  050100            add ax,0x1
00003D5F  50                push ax
00003D60  B81500            mov ax,0x15
00003D63  050200            add ax,0x2
00003D66  E824C6            call word 0x38d
00003D69  B80100            mov ax,0x1
00003D6C  50                push ax
00003D6D  B80100            mov ax,0x1
00003D70  E837D0            call word 0xdaa
00003D73  B90C00            mov cx,0xc
00003D76  E858D2            call word 0xfd1
00003D79  E8A5F4            call word 0x3221
00003D7C  B90800            mov cx,0x8
00003D7F  E84FD2            call word 0xfd1
00003D82  E8C1F6            call word 0x3446
00003D85  A0CD03            mov al,[0x3cd]
00003D88  32E4              xor ah,ah
00003D8A  0BC0              or ax,ax
00003D8C  7503              jnz 0x3d91
00003D8E  E92800            jmp word 0x3db9
00003D91  B83200            mov ax,0x32
00003D94  50                push ax
00003D95  B80800            mov ax,0x8
00003D98  50                push ax
00003D99  B84B00            mov ax,0x4b
00003D9C  50                push ax
00003D9D  B81500            mov ax,0x15
00003DA0  E8EAC5            call word 0x38d
00003DA3  B80100            mov ax,0x1
00003DA6  50                push ax
00003DA7  B80100            mov ax,0x1
00003DAA  E8FDCF            call word 0xdaa
00003DAD  B90F00            mov cx,0xf
00003DB0  E81ED2            call word 0xfd1
00003DB3  E836FA            call word 0x37ec
00003DB6  E91800            jmp word 0x3dd1
00003DB9  B90A00            mov cx,0xa
00003DBC  E812D2            call word 0xfd1
00003DBF  4C                dec sp
00003DC0  E851F7            call word 0x3514
00003DC3  7503              jnz 0x3dc8
00003DC5  E90900            jmp word 0x3dd1
00003DC8  B90F00            mov cx,0xf
00003DCB  E803D2            call word 0xfd1
00003DCE  E81BFA            call word 0x37ec
00003DD1  B83200            mov ax,0x32
00003DD4  2D0200            sub ax,0x2
00003DD7  50                push ax
00003DD8  B80800            mov ax,0x8
00003DDB  2D0100            sub ax,0x1
00003DDE  50                push ax
00003DDF  B84B00            mov ax,0x4b
00003DE2  050100            add ax,0x1
00003DE5  50                push ax
00003DE6  B81500            mov ax,0x15
00003DE9  050200            add ax,0x2
00003DEC  E89EC5            call word 0x38d
00003DEF  B80100            mov ax,0x1
00003DF2  50                push ax
00003DF3  B80100            mov ax,0x1
00003DF6  E8B1CF            call word 0xdaa
00003DF9  E82AC4            call word 0x226
00003DFC  B80100            mov ax,0x1
00003DFF  50                push ax
00003E00  B80100            mov ax,0x1
00003E03  50                push ax
00003E04  B85000            mov ax,0x50
00003E07  50                push ax
00003E08  B81900            mov ax,0x19
00003E0B  E87FC5            call word 0x38d
00003E0E  B80100            mov ax,0x1
00003E11  50                push ax
00003E12  B80100            mov ax,0x1
00003E15  E892CF            call word 0xdaa
00003E18  B83100            mov ax,0x31
00003E1B  50                push ax
00003E1C  B80500            mov ax,0x5
00003E1F  E888CF            call word 0xdaa
00003E22  B90801            mov cx,0x108
00003E25  E8A9D1            call word 0xfd1
00003E28  E8BAD3            call word 0x11e5
00003E2B  0E                push cs
00003E2C  3F                aas
00003E2D  2D666F            sub ax,0x6f66
00003E30  7220              jc 0x3e52
00003E32  48                dec ax
00003E33  656C              gs insb
00003E35  7020              jo 0x3e57
00003E37  2020              and [bx+si],ah
00003E39  20B1FFE8          and [bx+di-0x1701],dh
00003E3D  FE                db 0xfe
00003E3E  D3B80100          sar word [bx+si+0x1],cl
00003E42  50                push ax
00003E43  E843F3            call word 0x3189
00003E46  E90000            jmp word 0x3e49
00003E49  8BE5              mov sp,bp
00003E4B  5D                pop bp
00003E4C  C3                ret
00003E4D  55                push bp
00003E4E  8BEC              mov bp,sp
00003E50  55                push bp
00003E51  E90000            jmp word 0x3e54
00003E54  2EA1AD2D          mov ax,[cs:0x2dad]
00003E58  E860C5            call word 0x3bb
00003E5B  E8FAE6            call word 0x2558
00003E5E  8A4605            mov al,[bp+0x5]
00003E61  32E4              xor ah,ah
00003E63  50                push ax
00003E64  B80000            mov ax,0x0
00003E67  E833EA            call word 0x289d
00003E6A  E8B5D1            call word 0x1022
00003E6D  2EA1AD2D          mov ax,[cs:0x2dad]
00003E71  2D0800            sub ax,0x8
00003E74  E844C5            call word 0x3bb
00003E77  E8DEE6            call word 0x2558
00003E7A  8D7E04            lea di,[bp+0x4]
00003E7D  16                push ss
00003E7E  E84BD3            call word 0x11cc
00003E81  B80200            mov ax,0x2
00003E84  50                push ax
00003E85  8D7E04            lea di,[bp+0x4]
00003E88  16                push ss
00003E89  E840D3            call word 0x11cc
00003E8C  E8EFD4            call word 0x137e
00003E8F  2D0100            sub ax,0x1
00003E92  E8AAD4            call word 0x133f
00003E95  B80000            mov ax,0x0
00003E98  E88BEA            call word 0x2926
00003E9B  E884D1            call word 0x1022
00003E9E  E90000            jmp word 0x3ea1
00003EA1  8BE5              mov sp,bp
00003EA3  5D                pop bp
00003EA4  C20001            ret 0x100
00003EA7  55                push bp
00003EA8  8BEC              mov bp,sp
00003EAA  55                push bp
00003EAB  E90000            jmp word 0x3eae
00003EAE  83EC04            sub sp,byte +0x4
00003EB1  B90600            mov cx,0x6
00003EB4  E81AD1            call word 0xfd1
00003EB7  E82DEF            call word 0x2de7
00003EBA  8A4604            mov al,[bp+0x4]
00003EBD  32E4              xor ah,ah
00003EBF  0BC0              or ax,ax
00003EC1  7503              jnz 0x3ec6
00003EC3  E9E800            jmp word 0x3fae
00003EC6  2EA1B32D          mov ax,[cs:0x2db3]
00003ECA  E8EEC4            call word 0x3bb
00003ECD  B83100            mov ax,0x31
00003ED0  50                push ax
00003ED1  B80100            mov ax,0x1
00003ED4  E8D3CE            call word 0xdaa
00003ED7  E87EE6            call word 0x2558
00003EDA  E880EA            call word 0x295d
00003EDD  17                pop ss
00003EDE  54                push sp
00003EDF  205520            and [di+0x20],dl
00003EE2  52                push dx
00003EE3  204220            and [bp+si+0x20],al
00003EE6  4F                dec di
00003EE7  202D              and [di],ch
00003EE9  204720            and [bx+0x20],al
00003EEC  4F                dec di
00003EED  204D20            and [di+0x20],cl
00003EF0  4F                dec di
00003EF1  204B20            and [bp+di+0x20],cl
00003EF4  55                push bp
00003EF5  E82AD1            call word 0x1022
00003EF8  B83100            mov ax,0x31
00003EFB  50                push ax
00003EFC  B80300            mov ax,0x3
00003EFF  E8A8CE            call word 0xdaa
00003F02  B90601            mov cx,0x106
00003F05  E8C9D0            call word 0xfd1
00003F08  E8DAD2            call word 0x11e5
00003F0B  084E65            or [bp+0x65],cl
00003F0E  7767              ja 0x3f77
00003F10  61                popaw
00003F11  6D                insw
00003F12  6520B1FFE8        and [gs:bx+di-0x1701],dh
00003F17  24D3              and al,0xd3
00003F19  E831FF            call word 0x3e4d
00003F1C  B90601            mov cx,0x106
00003F1F  E8AFD0            call word 0xfd1
00003F22  E8C0D2            call word 0x11e5
00003F25  055175            add ax,0x7551
00003F28  697420B1FF        imul si,[si+0x20],word 0xffb1
00003F2D  E80DD3            call word 0x123d
00003F30  E81AFF            call word 0x3e4d
00003F33  B90601            mov cx,0x106
00003F36  E898D0            call word 0xfd1
00003F39  E8A9D2            call word 0x11e5
00003F3C  054175            add ax,0x7541
00003F3F  746F              jz 0x3fb0
00003F41  20B1FFE8          and [bx+di-0x1701],dh
00003F45  F6D2              not dl
00003F47  E803FF            call word 0x3e4d
00003F4A  B90601            mov cx,0x106
00003F4D  E881D0            call word 0xfd1
00003F50  E892D2            call word 0x11e5
00003F53  05506C            add ax,0x6c50
00003F56  61                popaw
00003F57  7920              jns 0x3f79
00003F59  B1FF              mov cl,0xff
00003F5B  E8DFD2            call word 0x123d
00003F5E  E8ECFE            call word 0x3e4d
00003F61  B90601            mov cx,0x106
00003F64  E86AD0            call word 0xfd1
00003F67  E87BD2            call word 0x11e5
00003F6A  0448              add al,0x48
00003F6C  696E74B1FF        imul bp,[bp+0x74],word 0xffb1
00003F71  E8C9D2            call word 0x123d
00003F74  E8D6FE            call word 0x3e4d
00003F77  B83100            mov ax,0x31
00003F7A  50                push ax
00003F7B  B80500            mov ax,0x5
00003F7E  E829CE            call word 0xdaa
00003F81  B90801            mov cx,0x108
00003F84  E84AD0            call word 0xfd1
00003F87  E85BD2            call word 0x11e5
00003F8A  0E                push cs
00003F8B  3F                aas
00003F8C  2D666F            sub ax,0x6f66
00003F8F  7220              jc 0x3fb1
00003F91  48                dec ax
00003F92  656C              gs insb
00003F94  7020              jo 0x3fb6
00003F96  2020              and [bx+si],ah
00003F98  20B1FFE8          and [bx+di-0x1701],dh
00003F9C  9F                lahf
00003F9D  D2B80100          sar byte [bx+si+0x1],cl
00003FA1  50                push ax
00003FA2  E8E4F1            call word 0x3189
00003FA5  B80000            mov ax,0x0
00003FA8  884604            mov [bp+0x4],al
00003FAB  E91200            jmp word 0x3fc0
00003FAE  B90600            mov cx,0x6
00003FB1  E81DD0            call word 0xfd1
00003FB4  E8B7F1            call word 0x316e
00003FB7  B90600            mov cx,0x6
00003FBA  E814D0            call word 0xfd1
00003FBD  E85FF1            call word 0x311f
00003FC0  B80100            mov ax,0x1
00003FC3  50                push ax
00003FC4  B81300            mov ax,0x13
00003FC7  59                pop cx
00003FC8  91                xchg ax,cx
00003FC9  2BC8              sub cx,ax
00003FCB  7D03              jnl 0x3fd0
00003FCD  E9E500            jmp word 0x40b5
00003FD0  41                inc cx
00003FD1  8846FD            mov [bp-0x3],al
00003FD4  51                push cx
00003FD5  B80100            mov ax,0x1
00003FD8  50                push ax
00003FD9  B81300            mov ax,0x13
00003FDC  59                pop cx
00003FDD  91                xchg ax,cx
00003FDE  2BC8              sub cx,ax
00003FE0  7D03              jnl 0x3fe5
00003FE2  E9C600            jmp word 0x40ab
00003FE5  41                inc cx
00003FE6  8846FC            mov [bp-0x4],al
00003FE9  51                push cx
00003FEA  8A46FD            mov al,[bp-0x3]
00003FED  32E4              xor ah,ah
00003FEF  B91300            mov cx,0x13
00003FF2  F7E1              mul cx
00003FF4  97                xchg ax,di
00003FF5  57                push di
00003FF6  8A46FC            mov al,[bp-0x4]
00003FF9  32E4              xor ah,ah
00003FFB  5F                pop di
00003FFC  03F8              add di,ax
00003FFE  B80000            mov ax,0x0
00004001  88854C02          mov [di+0x24c],al
00004005  B80100            mov ax,0x1
00004008  50                push ax
00004009  B80200            mov ax,0x2
0000400C  59                pop cx
0000400D  91                xchg ax,cx
0000400E  2BC8              sub cx,ax
00004010  7D03              jnl 0x4015
00004012  E98C00            jmp word 0x40a1
00004015  41                inc cx
00004016  8846FA            mov [bp-0x6],al
00004019  51                push cx
0000401A  8A46FD            mov al,[bp-0x3]
0000401D  32E4              xor ah,ah
0000401F  B94C00            mov cx,0x4c
00004022  F7E1              mul cx
00004024  97                xchg ax,di
00004025  57                push di
00004026  8A46FC            mov al,[bp-0x4]
00004029  32E4              xor ah,ah
0000402B  5F                pop di
0000402C  D1E0              shl ax,1
0000402E  D1E0              shl ax,1
00004030  03F8              add di,ax
00004032  57                push di
00004033  8A46FA            mov al,[bp-0x6]
00004036  32E4              xor ah,ah
00004038  5F                pop di
00004039  D1E0              shl ax,1
0000403B  03F8              add di,ax
0000403D  B80000            mov ax,0x0
00004040  8985C40E          mov [di+0xec4],ax
00004044  B80000            mov ax,0x0
00004047  50                push ax
00004048  B80300            mov ax,0x3
0000404B  59                pop cx
0000404C  91                xchg ax,cx
0000404D  2BC8              sub cx,ax
0000404F  7D03              jnl 0x4054
00004051  E94300            jmp word 0x4097
00004054  41                inc cx
00004055  8846FB            mov [bp-0x5],al
00004058  51                push cx
00004059  8A46FB            mov al,[bp-0x5]
0000405C  32E4              xor ah,ah
0000405E  B9D202            mov cx,0x2d2
00004061  F7E1              mul cx
00004063  97                xchg ax,di
00004064  57                push di
00004065  8A46FD            mov al,[bp-0x3]
00004068  32E4              xor ah,ah
0000406A  5F                pop di
0000406B  B92600            mov cx,0x26
0000406E  F7E1              mul cx
00004070  03F8              add di,ax
00004072  57                push di
00004073  8A46FC            mov al,[bp-0x4]
00004076  32E4              xor ah,ah
00004078  5F                pop di
00004079  D1E0              shl ax,1
0000407B  03F8              add di,ax
0000407D  57                push di
0000407E  8A46FA            mov al,[bp-0x6]
00004081  32E4              xor ah,ah
00004083  5F                pop di
00004084  03F8              add di,ax
00004086  B80000            mov ax,0x0
00004089  8885A503          mov [di+0x3a5],al
0000408D  59                pop cx
0000408E  49                dec cx
0000408F  7406              jz 0x4097
00004091  FE46FB            inc byte [bp-0x5]
00004094  E9C1FF            jmp word 0x4058
00004097  59                pop cx
00004098  49                dec cx
00004099  7406              jz 0x40a1
0000409B  FE46FA            inc byte [bp-0x6]
0000409E  E978FF            jmp word 0x4019
000040A1  59                pop cx
000040A2  49                dec cx
000040A3  7406              jz 0x40ab
000040A5  FE46FC            inc byte [bp-0x4]
000040A8  E93EFF            jmp word 0x3fe9
000040AB  59                pop cx
000040AC  49                dec cx
000040AD  7406              jz 0x40b5
000040AF  FE46FD            inc byte [bp-0x3]
000040B2  E91FFF            jmp word 0x3fd4
000040B5  B80100            mov ax,0x1
000040B8  A2C903            mov [0x3c9],al
000040BB  B80200            mov ax,0x2
000040BE  B90200            mov cx,0x2
000040C1  F7E9              imul cx
000040C3  50                push ax
000040C4  B81300            mov ax,0x13
000040C7  50                push ax
000040C8  B81300            mov ax,0x13
000040CB  2D0400            sub ax,0x4
000040CE  59                pop cx
000040CF  F7E9              imul cx
000040D1  50                push ax
000040D2  B81300            mov ax,0x13
000040D5  2D0400            sub ax,0x4
000040D8  50                push ax
000040D9  B81300            mov ax,0x13
000040DC  2D0400            sub ax,0x4
000040DF  59                pop cx
000040E0  F7E9              imul cx
000040E2  59                pop cx
000040E3  03C1              add ax,cx
000040E5  59                pop cx
000040E6  F7E9              imul cx
000040E8  A3CA03            mov [0x3ca],ax
000040EB  B80000            mov ax,0x0
000040EE  A2CC03            mov [0x3cc],al
000040F1  E90000            jmp word 0x40f4
000040F4  8BE5              mov sp,bp
000040F6  5D                pop bp
000040F7  C20200            ret 0x2
000040FA  55                push bp
000040FB  8BEC              mov bp,sp
000040FD  55                push bp
000040FE  E90000            jmp word 0x4101
00004101  8A4604            mov al,[bp+0x4]
00004104  32E4              xor ah,ah
00004106  3D0100            cmp ax,0x1
00004109  7403              jz 0x410e
0000410B  E90900            jmp word 0x4117
0000410E  B80200            mov ax,0x2
00004111  884606            mov [bp+0x6],al
00004114  E90600            jmp word 0x411d
00004117  B80100            mov ax,0x1
0000411A  884606            mov [bp+0x6],al
0000411D  E90000            jmp word 0x4120
00004120  8A4606            mov al,[bp+0x6]
00004123  32E4              xor ah,ah
00004125  8BE5              mov sp,bp
00004127  5D                pop bp
00004128  C20300            ret 0x3
0000412B  55                push bp
0000412C  8BEC              mov bp,sp
0000412E  55                push bp
0000412F  E99200            jmp word 0x41c4
00004132  58                pop ax
00004133  300F              xor [bx],cl
00004135  0A558B            or dl,[di-0x75]
00004138  C4                db 0xc4
00004139  FF76FE            push word [bp-0x2]
0000413C  8BE8              mov bp,ax
0000413E  55                push bp
0000413F  E90000            jmp word 0x4142
00004142  4C                dec sp
00004143  4C                dec sp
00004144  8B5EFE            mov bx,[bp-0x2]
00004147  368A470A          mov al,[ss:bx+0xa]
0000414B  32E4              xor ah,ah
0000414D  97                xchg ax,di
0000414E  2E8A853341        mov al,[cs:di+0x4133]
00004153  32E4              xor ah,ah
00004155  051000            add ax,0x10
00004158  E860C2            call word 0x3bb
0000415B  B80100            mov ax,0x1
0000415E  50                push ax
0000415F  B80500            mov ax,0x5
00004162  59                pop cx
00004163  91                xchg ax,cx
00004164  2BC8              sub cx,ax
00004166  7D03              jnl 0x416b
00004168  E95000            jmp word 0x41bb
0000416B  41                inc cx
0000416C  8946FA            mov [bp-0x6],ax
0000416F  51                push cx
00004170  B90A00            mov cx,0xa
00004173  E85BCE            call word 0xfd1
00004176  8B460A            mov ax,[bp+0xa]
00004179  50                push ax
0000417A  8B4608            mov ax,[bp+0x8]
0000417D  50                push ax
0000417E  E8B1EE            call word 0x3032
00004181  8B5EFE            mov bx,[bp-0x2]
00004184  368A470A          mov al,[ss:bx+0xa]
00004188  32E4              xor ah,ah
0000418A  97                xchg ax,di
0000418B  E8CAE3            call word 0x2558
0000418E  2E8A853141        mov al,[cs:di+0x4131]
00004193  32E4              xor ah,ah
00004195  50                push ax
00004196  B80000            mov ax,0x0
00004199  E801E7            call word 0x289d
0000419C  E883CE            call word 0x1022
0000419F  8B460A            mov ax,[bp+0xa]
000041A2  2B4606            sub ax,[bp+0x6]
000041A5  89460A            mov [bp+0xa],ax
000041A8  8B4608            mov ax,[bp+0x8]
000041AB  2B4604            sub ax,[bp+0x4]
000041AE  894608            mov [bp+0x8],ax
000041B1  59                pop cx
000041B2  49                dec cx
000041B3  7406              jz 0x41bb
000041B5  FF46FA            inc word [bp-0x6]
000041B8  E9B4FF            jmp word 0x416f
000041BB  E90000            jmp word 0x41be
000041BE  8BE5              mov sp,bp
000041C0  5D                pop bp
000041C1  C20800            ret 0x8
000041C4  83EC08            sub sp,byte +0x8
000041C7  8A460A            mov al,[bp+0xa]
000041CA  32E4              xor ah,ah
000041CC  97                xchg ax,di
000041CD  2E8A853341        mov al,[cs:di+0x4133]
000041D2  32E4              xor ah,ah
000041D4  E8E4C1            call word 0x3bb
000041D7  B83100            mov ax,0x31
000041DA  50                push ax
000041DB  B80900            mov ax,0x9
000041DE  E8C9CB            call word 0xdaa
000041E1  8A460A            mov al,[bp+0xa]
000041E4  32E4              xor ah,ah
000041E6  97                xchg ax,di
000041E7  E86EE3            call word 0x2558
000041EA  2E8A853141        mov al,[cs:di+0x4131]
000041EF  32E4              xor ah,ah
000041F1  50                push ax
000041F2  B80000            mov ax,0x0
000041F5  E8A5E6            call word 0x289d
000041F8  B84100            mov ax,0x41
000041FB  50                push ax
000041FC  8A4608            mov al,[bp+0x8]
000041FF  32E4              xor ah,ah
00004201  59                pop cx
00004202  03C1              add ax,cx
00004204  2D0100            sub ax,0x1
00004207  50                push ax
00004208  B80200            mov ax,0x2
0000420B  E88FE6            call word 0x289d
0000420E  8A4606            mov al,[bp+0x6]
00004211  32E4              xor ah,ah
00004213  50                push ax
00004214  B80000            mov ax,0x0
00004217  E89FE6            call word 0x28b9
0000421A  E805CE            call word 0x1022
0000421D  E88AC0            call word 0x2aa
00004220  8A4608            mov al,[bp+0x8]
00004223  32E4              xor ah,ah
00004225  8946FC            mov [bp-0x4],ax
00004228  8A4606            mov al,[bp+0x6]
0000422B  32E4              xor ah,ah
0000422D  8946FA            mov [bp-0x6],ax
00004230  8A4604            mov al,[bp+0x4]
00004233  32E4              xor ah,ah
00004235  3D0100            cmp ax,0x1
00004238  7403              jz 0x423d
0000423A  E90F00            jmp word 0x424c
0000423D  B80100            mov ax,0x1
00004240  8946F8            mov [bp-0x8],ax
00004243  B80000            mov ax,0x0
00004246  8946F6            mov [bp-0xa],ax
00004249  E94200            jmp word 0x428e
0000424C  3D0200            cmp ax,0x2
0000424F  7403              jz 0x4254
00004251  E90F00            jmp word 0x4263
00004254  B80100            mov ax,0x1
00004257  8946F8            mov [bp-0x8],ax
0000425A  B80100            mov ax,0x1
0000425D  8946F6            mov [bp-0xa],ax
00004260  E92B00            jmp word 0x428e
00004263  3D0400            cmp ax,0x4
00004266  7403              jz 0x426b
00004268  E90F00            jmp word 0x427a
0000426B  B80000            mov ax,0x0
0000426E  8946F8            mov [bp-0x8],ax
00004271  B80100            mov ax,0x1
00004274  8946F6            mov [bp-0xa],ax
00004277  E91400            jmp word 0x428e
0000427A  3D0300            cmp ax,0x3
0000427D  7403              jz 0x4282
0000427F  E90C00            jmp word 0x428e
00004282  B8FFFF            mov ax,0xffff
00004285  8946F8            mov [bp-0x8],ax
00004288  B80100            mov ax,0x1
0000428B  8946F6            mov [bp-0xa],ax
0000428E  8A4608            mov al,[bp+0x8]
00004291  32E4              xor ah,ah
00004293  0346F8            add ax,[bp-0x8]
00004296  B91300            mov cx,0x13
00004299  F7E1              mul cx
0000429B  97                xchg ax,di
0000429C  57                push di
0000429D  8A4606            mov al,[bp+0x6]
000042A0  32E4              xor ah,ah
000042A2  0346F6            add ax,[bp-0xa]
000042A5  5F                pop di
000042A6  03F8              add di,ax
000042A8  8A854C02          mov al,[di+0x24c]
000042AC  32E4              xor ah,ah
000042AE  3D0000            cmp ax,0x0
000042B1  B80100            mov ax,0x1
000042B4  7501              jnz 0x42b7
000042B6  48                dec ax
000042B7  50                push ax
000042B8  8A4608            mov al,[bp+0x8]
000042BB  32E4              xor ah,ah
000042BD  0346F8            add ax,[bp-0x8]
000042C0  B91300            mov cx,0x13
000042C3  F7E1              mul cx
000042C5  97                xchg ax,di
000042C6  57                push di
000042C7  8A4606            mov al,[bp+0x6]
000042CA  32E4              xor ah,ah
000042CC  0346F6            add ax,[bp-0xa]
000042CF  5F                pop di
000042D0  03F8              add di,ax
000042D2  8A854C02          mov al,[di+0x24c]
000042D6  32E4              xor ah,ah
000042D8  50                push ax
000042D9  8A460A            mov al,[bp+0xa]
000042DC  32E4              xor ah,ah
000042DE  59                pop cx
000042DF  91                xchg ax,cx
000042E0  3BC1              cmp ax,cx
000042E2  B80100            mov ax,0x1
000042E5  7401              jz 0x42e8
000042E7  48                dec ax
000042E8  59                pop cx
000042E9  23C1              and ax,cx
000042EB  0BC0              or ax,ax
000042ED  7503              jnz 0x42f2
000042EF  E91900            jmp word 0x430b
000042F2  8A4608            mov al,[bp+0x8]
000042F5  32E4              xor ah,ah
000042F7  0346F8            add ax,[bp-0x8]
000042FA  884608            mov [bp+0x8],al
000042FD  8A4606            mov al,[bp+0x6]
00004300  32E4              xor ah,ah
00004302  0346F6            add ax,[bp-0xa]
00004305  884606            mov [bp+0x6],al
00004308  E983FF            jmp word 0x428e
0000430B  B91200            mov cx,0x12
0000430E  E8C0CC            call word 0xfd1
00004311  8A4608            mov al,[bp+0x8]
00004314  32E4              xor ah,ah
00004316  50                push ax
00004317  8A4606            mov al,[bp+0x6]
0000431A  32E4              xor ah,ah
0000431C  50                push ax
0000431D  8B46F8            mov ax,[bp-0x8]
00004320  50                push ax
00004321  8B46F6            mov ax,[bp-0xa]
00004324  50                push ax
00004325  E80EFE            call word 0x4136
00004328  8B46FC            mov ax,[bp-0x4]
0000432B  884608            mov [bp+0x8],al
0000432E  8B46FA            mov ax,[bp-0x6]
00004331  884606            mov [bp+0x6],al
00004334  B90A00            mov cx,0xa
00004337  E897CC            call word 0xfd1
0000433A  8A4608            mov al,[bp+0x8]
0000433D  32E4              xor ah,ah
0000433F  50                push ax
00004340  8A4606            mov al,[bp+0x6]
00004343  32E4              xor ah,ah
00004345  50                push ax
00004346  E8E9EC            call word 0x3032
00004349  2EA1AD2D          mov ax,[cs:0x2dad]
0000434D  E86BC0            call word 0x3bb
00004350  E90000            jmp word 0x4353
00004353  8BE5              mov sp,bp
00004355  5D                pop bp
00004356  C20800            ret 0x8
00004359  55                push bp
0000435A  8BEC              mov bp,sp
0000435C  55                push bp
0000435D  E94401            jmp word 0x44a4
00004360  55                push bp
00004361  8BC4              mov ax,sp
00004363  FF76FE            push word [bp-0x2]
00004366  8BE8              mov bp,ax
00004368  55                push bp
00004369  E90000            jmp word 0x436c
0000436C  C47E04            les di,[bp+0x4]
0000436F  06                push es
00004370  57                push di
00004371  C47E04            les di,[bp+0x4]
00004374  268A05            mov al,[es:di]
00004377  32E4              xor ah,ah
00004379  050100            add ax,0x1
0000437C  5F                pop di
0000437D  07                pop es
0000437E  268805            mov [es:di],al
00004381  C47E04            les di,[bp+0x4]
00004384  268A05            mov al,[es:di]
00004387  32E4              xor ah,ah
00004389  3D0100            cmp ax,0x1
0000438C  7403              jz 0x4391
0000438E  E90900            jmp word 0x439a
00004391  A1CA03            mov ax,[0x3ca]
00004394  2D0100            sub ax,0x1
00004397  A3CA03            mov [0x3ca],ax
0000439A  C47E04            les di,[bp+0x4]
0000439D  268A05            mov al,[es:di]
000043A0  32E4              xor ah,ah
000043A2  3D0500            cmp ax,0x5
000043A5  7403              jz 0x43aa
000043A7  E90600            jmp word 0x43b0
000043AA  B80100            mov ax,0x1
000043AD  A2CC03            mov [0x3cc],al
000043B0  E90000            jmp word 0x43b3
000043B3  8BE5              mov sp,bp
000043B5  5D                pop bp
000043B6  C20400            ret 0x4
000043B9  55                push bp
000043BA  8BC4              mov ax,sp
000043BC  FF76FE            push word [bp-0x2]
000043BF  8BE8              mov bp,ax
000043C1  55                push bp
000043C2  E90000            jmp word 0x43c5
000043C5  8B5EFE            mov bx,[bp-0x2]
000043C8  368A47FD          mov al,[ss:bx-0x3]
000043CC  32E4              xor ah,ah
000043CE  97                xchg ax,di
000043CF  8A4307            mov al,[bp+di+0x7]
000043D2  32E4              xor ah,ah
000043D4  3D0000            cmp ax,0x0
000043D7  7403              jz 0x43dc
000043D9  E95C00            jmp word 0x4438
000043DC  C47E04            les di,[bp+0x4]
000043DF  06                push es
000043E0  57                push di
000043E1  A0C903            mov al,[0x3c9]
000043E4  32E4              xor ah,ah
000043E6  5F                pop di
000043E7  07                pop es
000043E8  D1E0              shl ax,1
000043EA  03F8              add di,ax
000043EC  06                push es
000043ED  57                push di
000043EE  C47E04            les di,[bp+0x4]
000043F1  06                push es
000043F2  57                push di
000043F3  A0C903            mov al,[0x3c9]
000043F6  32E4              xor ah,ah
000043F8  5F                pop di
000043F9  07                pop es
000043FA  D1E0              shl ax,1
000043FC  03F8              add di,ax
000043FE  268B45FE          mov ax,[es:di-0x2]
00004402  50                push ax
00004403  A0C903            mov al,[0x3c9]
00004406  32E4              xor ah,ah
00004408  97                xchg ax,di
00004409  8A4307            mov al,[bp+di+0x7]
0000440C  32E4              xor ah,ah
0000440E  050100            add ax,0x1
00004411  D1E0              shl ax,1
00004413  97                xchg ax,di
00004414  58                pop ax
00004415  2E03859F2D        add ax,[cs:di+0x2d9f]
0000441A  50                push ax
0000441B  A0C903            mov al,[0x3c9]
0000441E  32E4              xor ah,ah
00004420  97                xchg ax,di
00004421  8A4307            mov al,[bp+di+0x7]
00004424  32E4              xor ah,ah
00004426  D1E0              shl ax,1
00004428  97                xchg ax,di
00004429  58                pop ax
0000442A  2E2B859F2D        sub ax,[cs:di+0x2d9f]
0000442F  5F                pop di
00004430  07                pop es
00004431  268945FE          mov [es:di-0x2],ax
00004435  E96300            jmp word 0x449b
00004438  A0C903            mov al,[0x3c9]
0000443B  32E4              xor ah,ah
0000443D  97                xchg ax,di
0000443E  8A4307            mov al,[bp+di+0x7]
00004441  32E4              xor ah,ah
00004443  3D0100            cmp ax,0x1
00004446  7403              jz 0x444b
00004448  E95000            jmp word 0x449b
0000444B  C47E04            les di,[bp+0x4]
0000444E  06                push es
0000444F  57                push di
00004450  8B5EFE            mov bx,[bp-0x2]
00004453  368A47FD          mov al,[ss:bx-0x3]
00004457  32E4              xor ah,ah
00004459  5F                pop di
0000445A  07                pop es
0000445B  D1E0              shl ax,1
0000445D  03F8              add di,ax
0000445F  06                push es
00004460  57                push di
00004461  C47E04            les di,[bp+0x4]
00004464  06                push es
00004465  57                push di
00004466  8B5EFE            mov bx,[bp-0x2]
00004469  368A47FD          mov al,[ss:bx-0x3]
0000446D  32E4              xor ah,ah
0000446F  5F                pop di
00004470  07                pop es
00004471  D1E0              shl ax,1
00004473  03F8              add di,ax
00004475  268B45FE          mov ax,[es:di-0x2]
00004479  50                push ax
0000447A  8B5EFE            mov bx,[bp-0x2]
0000447D  368A47FD          mov al,[ss:bx-0x3]
00004481  32E4              xor ah,ah
00004483  97                xchg ax,di
00004484  8A4307            mov al,[bp+di+0x7]
00004487  32E4              xor ah,ah
00004489  050100            add ax,0x1
0000448C  D1E0              shl ax,1
0000448E  97                xchg ax,di
0000448F  58                pop ax
00004490  2E2B859F2D        sub ax,[cs:di+0x2d9f]
00004495  5F                pop di
00004496  07                pop es
00004497  268945FE          mov [es:di-0x2],ax
0000449B  E90000            jmp word 0x449e
0000449E  8BE5              mov sp,bp
000044A0  5D                pop bp
000044A1  C20600            ret 0x6
000044A4  83EC08            sub sp,byte +0x8
000044A7  B80000            mov ax,0x0
000044AA  8846F6            mov [bp-0xa],al
000044AD  B90900            mov cx,0x9
000044B0  E81ECB            call word 0xfd1
000044B3  4C                dec sp
000044B4  A0C903            mov al,[0x3c9]
000044B7  32E4              xor ah,ah
000044B9  50                push ax
000044BA  E83DFC            call word 0x40fa
000044BD  8846FD            mov [bp-0x3],al
000044C0  B80000            mov ax,0x0
000044C3  A2CC03            mov [0x3cc],al
000044C6  B80000            mov ax,0x0
000044C9  50                push ax
000044CA  B80400            mov ax,0x4
000044CD  59                pop cx
000044CE  91                xchg ax,cx
000044CF  2BC8              sub cx,ax
000044D1  7D03              jnl 0x44d6
000044D3  E90401            jmp word 0x45da
000044D6  41                inc cx
000044D7  8846F8            mov [bp-0x8],al
000044DA  51                push cx
000044DB  8A4606            mov al,[bp+0x6]
000044DE  32E4              xor ah,ah
000044E0  50                push ax
000044E1  8A46F8            mov al,[bp-0x8]
000044E4  32E4              xor ah,ah
000044E6  59                pop cx
000044E7  91                xchg ax,cx
000044E8  2BC1              sub ax,cx
000044EA  8946FB            mov [bp-0x5],ax
000044ED  8A4604            mov al,[bp+0x4]
000044F0  32E4              xor ah,ah
000044F2  8946F9            mov [bp-0x7],ax
000044F5  B80100            mov ax,0x1
000044F8  3B46FB            cmp ax,[bp-0x5]
000044FB  B80100            mov ax,0x1
000044FE  7E01              jng 0x4501
00004500  48                dec ax
00004501  50                push ax
00004502  8B46FB            mov ax,[bp-0x5]
00004505  50                push ax
00004506  B81300            mov ax,0x13
00004509  2D0400            sub ax,0x4
0000450C  59                pop cx
0000450D  91                xchg ax,cx
0000450E  3BC1              cmp ax,cx
00004510  B80100            mov ax,0x1
00004513  7E01              jng 0x4516
00004515  48                dec ax
00004516  59                pop cx
00004517  23C1              and ax,cx
00004519  0BC0              or ax,ax
0000451B  7503              jnz 0x4520
0000451D  E9B000            jmp word 0x45d0
00004520  B90C00            mov cx,0xc
00004523  E8ABCA            call word 0xfd1
00004526  8B46FB            mov ax,[bp-0x5]
00004529  B92600            mov cx,0x26
0000452C  F7E1              mul cx
0000452E  97                xchg ax,di
0000452F  8B46F9            mov ax,[bp-0x7]
00004532  D1E0              shl ax,1
00004534  03F8              add di,ax
00004536  57                push di
00004537  A0C903            mov al,[0x3c9]
0000453A  32E4              xor ah,ah
0000453C  5F                pop di
0000453D  03F8              add di,ax
0000453F  81C7A503          add di,0x3a5
00004543  1E                push ds
00004544  57                push di
00004545  E818FE            call word 0x4360
00004548  A0CC03            mov al,[0x3cc]
0000454B  32E4              xor ah,ah
0000454D  50                push ax
0000454E  8A46F6            mov al,[bp-0xa]
00004551  32E4              xor ah,ah
00004553  3D0000            cmp ax,0x0
00004556  B80100            mov ax,0x1
00004559  7401              jz 0x455c
0000455B  48                dec ax
0000455C  59                pop cx
0000455D  23C1              and ax,cx
0000455F  0BC0              or ax,ax
00004561  7503              jnz 0x4566
00004563  E90600            jmp word 0x456c
00004566  B80100            mov ax,0x1
00004569  8846F6            mov [bp-0xa],al
0000456C  B80000            mov ax,0x0
0000456F  50                push ax
00004570  B80400            mov ax,0x4
00004573  59                pop cx
00004574  91                xchg ax,cx
00004575  2BC8              sub cx,ax
00004577  7D03              jnl 0x457c
00004579  E95400            jmp word 0x45d0
0000457C  41                inc cx
0000457D  8846F7            mov [bp-0x9],al
00004580  51                push cx
00004581  B90E00            mov cx,0xe
00004584  E84ACA            call word 0xfd1
00004587  8B46FB            mov ax,[bp-0x5]
0000458A  B92600            mov cx,0x26
0000458D  F7E1              mul cx
0000458F  97                xchg ax,di
00004590  8B46F9            mov ax,[bp-0x7]
00004593  D1E0              shl ax,1
00004595  03F8              add di,ax
00004597  81C7A603          add di,0x3a6
0000459B  1E                push ds
0000459C  B90200            mov cx,0x2
0000459F  E88FC9            call word 0xf31
000045A2  8B46FB            mov ax,[bp-0x5]
000045A5  50                push ax
000045A6  8A46F7            mov al,[bp-0x9]
000045A9  32E4              xor ah,ah
000045AB  59                pop cx
000045AC  03C1              add ax,cx
000045AE  B94C00            mov cx,0x4c
000045B1  F7E1              mul cx
000045B3  97                xchg ax,di
000045B4  8B46F9            mov ax,[bp-0x7]
000045B7  D1E0              shl ax,1
000045B9  D1E0              shl ax,1
000045BB  03F8              add di,ax
000045BD  81C7C60E          add di,0xec6
000045C1  1E                push ds
000045C2  57                push di
000045C3  E8F3FD            call word 0x43b9
000045C6  59                pop cx
000045C7  49                dec cx
000045C8  7406              jz 0x45d0
000045CA  FE46F7            inc byte [bp-0x9]
000045CD  E9B0FF            jmp word 0x4580
000045D0  59                pop cx
000045D1  49                dec cx
000045D2  7406              jz 0x45da
000045D4  FE46F8            inc byte [bp-0x8]
000045D7  E900FF            jmp word 0x44da
000045DA  B80000            mov ax,0x0
000045DD  50                push ax
000045DE  B80400            mov ax,0x4
000045E1  59                pop cx
000045E2  91                xchg ax,cx
000045E3  2BC8              sub cx,ax
000045E5  7D03              jnl 0x45ea
000045E7  E94101            jmp word 0x472b
000045EA  41                inc cx
000045EB  8846F8            mov [bp-0x8],al
000045EE  51                push cx
000045EF  8A4606            mov al,[bp+0x6]
000045F2  32E4              xor ah,ah
000045F4  50                push ax
000045F5  8A46F8            mov al,[bp-0x8]
000045F8  32E4              xor ah,ah
000045FA  59                pop cx
000045FB  91                xchg ax,cx
000045FC  2BC1              sub ax,cx
000045FE  8946FB            mov [bp-0x5],ax
00004601  8A4604            mov al,[bp+0x4]
00004604  32E4              xor ah,ah
00004606  50                push ax
00004607  8A46F8            mov al,[bp-0x8]
0000460A  32E4              xor ah,ah
0000460C  59                pop cx
0000460D  91                xchg ax,cx
0000460E  2BC1              sub ax,cx
00004610  8946F9            mov [bp-0x7],ax
00004613  B80100            mov ax,0x1
00004616  3B46FB            cmp ax,[bp-0x5]
00004619  B80100            mov ax,0x1
0000461C  7E01              jng 0x461f
0000461E  48                dec ax
0000461F  50                push ax
00004620  8B46FB            mov ax,[bp-0x5]
00004623  50                push ax
00004624  B81300            mov ax,0x13
00004627  2D0400            sub ax,0x4
0000462A  59                pop cx
0000462B  91                xchg ax,cx
0000462C  3BC1              cmp ax,cx
0000462E  B80100            mov ax,0x1
00004631  7E01              jng 0x4634
00004633  48                dec ax
00004634  59                pop cx
00004635  23C1              and ax,cx
00004637  50                push ax
00004638  B80100            mov ax,0x1
0000463B  3B46F9            cmp ax,[bp-0x7]
0000463E  B80100            mov ax,0x1
00004641  7E01              jng 0x4644
00004643  48                dec ax
00004644  59                pop cx
00004645  23C1              and ax,cx
00004647  50                push ax
00004648  8B46F9            mov ax,[bp-0x7]
0000464B  50                push ax
0000464C  B81300            mov ax,0x13
0000464F  2D0400            sub ax,0x4
00004652  59                pop cx
00004653  91                xchg ax,cx
00004654  3BC1              cmp ax,cx
00004656  B80100            mov ax,0x1
00004659  7E01              jng 0x465c
0000465B  48                dec ax
0000465C  59                pop cx
0000465D  23C1              and ax,cx
0000465F  0BC0              or ax,ax
00004661  7503              jnz 0x4666
00004663  E9BB00            jmp word 0x4721
00004666  B90C00            mov cx,0xc
00004669  E865C9            call word 0xfd1
0000466C  8B46FB            mov ax,[bp-0x5]
0000466F  B92600            mov cx,0x26
00004672  F7E1              mul cx
00004674  97                xchg ax,di
00004675  8B46F9            mov ax,[bp-0x7]
00004678  D1E0              shl ax,1
0000467A  03F8              add di,ax
0000467C  57                push di
0000467D  A0C903            mov al,[0x3c9]
00004680  32E4              xor ah,ah
00004682  5F                pop di
00004683  03F8              add di,ax
00004685  81C77706          add di,0x677
00004689  1E                push ds
0000468A  57                push di
0000468B  E8D2FC            call word 0x4360
0000468E  A0CC03            mov al,[0x3cc]
00004691  32E4              xor ah,ah
00004693  50                push ax
00004694  8A46F6            mov al,[bp-0xa]
00004697  32E4              xor ah,ah
00004699  3D0000            cmp ax,0x0
0000469C  B80100            mov ax,0x1
0000469F  7401              jz 0x46a2
000046A1  48                dec ax
000046A2  59                pop cx
000046A3  23C1              and ax,cx
000046A5  0BC0              or ax,ax
000046A7  7503              jnz 0x46ac
000046A9  E90600            jmp word 0x46b2
000046AC  B80200            mov ax,0x2
000046AF  8846F6            mov [bp-0xa],al
000046B2  B80000            mov ax,0x0
000046B5  50                push ax
000046B6  B80400            mov ax,0x4
000046B9  59                pop cx
000046BA  91                xchg ax,cx
000046BB  2BC8              sub cx,ax
000046BD  7D03              jnl 0x46c2
000046BF  E95F00            jmp word 0x4721
000046C2  41                inc cx
000046C3  8846F7            mov [bp-0x9],al
000046C6  51                push cx
000046C7  B90E00            mov cx,0xe
000046CA  E804C9            call word 0xfd1
000046CD  8B46FB            mov ax,[bp-0x5]
000046D0  B92600            mov cx,0x26
000046D3  F7E1              mul cx
000046D5  97                xchg ax,di
000046D6  8B46F9            mov ax,[bp-0x7]
000046D9  D1E0              shl ax,1
000046DB  03F8              add di,ax
000046DD  81C77806          add di,0x678
000046E1  1E                push ds
000046E2  B90200            mov cx,0x2
000046E5  E849C8            call word 0xf31
000046E8  8B46FB            mov ax,[bp-0x5]
000046EB  50                push ax
000046EC  8A46F7            mov al,[bp-0x9]
000046EF  32E4              xor ah,ah
000046F1  59                pop cx
000046F2  03C1              add ax,cx
000046F4  B94C00            mov cx,0x4c
000046F7  F7E1              mul cx
000046F9  97                xchg ax,di
000046FA  57                push di
000046FB  8B46F9            mov ax,[bp-0x7]
000046FE  50                push ax
000046FF  8A46F7            mov al,[bp-0x9]
00004702  32E4              xor ah,ah
00004704  59                pop cx
00004705  03C1              add ax,cx
00004707  5F                pop di
00004708  D1E0              shl ax,1
0000470A  D1E0              shl ax,1
0000470C  03F8              add di,ax
0000470E  81C7C60E          add di,0xec6
00004712  1E                push ds
00004713  57                push di
00004714  E8A2FC            call word 0x43b9
00004717  59                pop cx
00004718  49                dec cx
00004719  7406              jz 0x4721
0000471B  FE46F7            inc byte [bp-0x9]
0000471E  E9A5FF            jmp word 0x46c6
00004721  59                pop cx
00004722  49                dec cx
00004723  7406              jz 0x472b
00004725  FE46F8            inc byte [bp-0x8]
00004728  E9C3FE            jmp word 0x45ee
0000472B  B80000            mov ax,0x0
0000472E  50                push ax
0000472F  B80400            mov ax,0x4
00004732  59                pop cx
00004733  91                xchg ax,cx
00004734  2BC8              sub cx,ax
00004736  7D03              jnl 0x473b
00004738  E93901            jmp word 0x4874
0000473B  41                inc cx
0000473C  8846F8            mov [bp-0x8],al
0000473F  51                push cx
00004740  8A4606            mov al,[bp+0x6]
00004743  32E4              xor ah,ah
00004745  50                push ax
00004746  8A46F8            mov al,[bp-0x8]
00004749  32E4              xor ah,ah
0000474B  59                pop cx
0000474C  03C1              add ax,cx
0000474E  8946FB            mov [bp-0x5],ax
00004751  8A4604            mov al,[bp+0x4]
00004754  32E4              xor ah,ah
00004756  50                push ax
00004757  8A46F8            mov al,[bp-0x8]
0000475A  32E4              xor ah,ah
0000475C  59                pop cx
0000475D  91                xchg ax,cx
0000475E  2BC1              sub ax,cx
00004760  8946F9            mov [bp-0x7],ax
00004763  B80500            mov ax,0x5
00004766  3B46FB            cmp ax,[bp-0x5]
00004769  B80100            mov ax,0x1
0000476C  7E01              jng 0x476f
0000476E  48                dec ax
0000476F  50                push ax
00004770  8B46FB            mov ax,[bp-0x5]
00004773  3D1300            cmp ax,0x13
00004776  B80100            mov ax,0x1
00004779  7E01              jng 0x477c
0000477B  48                dec ax
0000477C  59                pop cx
0000477D  23C1              and ax,cx
0000477F  50                push ax
00004780  B80100            mov ax,0x1
00004783  3B46F9            cmp ax,[bp-0x7]
00004786  B80100            mov ax,0x1
00004789  7E01              jng 0x478c
0000478B  48                dec ax
0000478C  59                pop cx
0000478D  23C1              and ax,cx
0000478F  50                push ax
00004790  8B46F9            mov ax,[bp-0x7]
00004793  50                push ax
00004794  B81300            mov ax,0x13
00004797  2D0400            sub ax,0x4
0000479A  59                pop cx
0000479B  91                xchg ax,cx
0000479C  3BC1              cmp ax,cx
0000479E  B80100            mov ax,0x1
000047A1  7E01              jng 0x47a4
000047A3  48                dec ax
000047A4  59                pop cx
000047A5  23C1              and ax,cx
000047A7  0BC0              or ax,ax
000047A9  7503              jnz 0x47ae
000047AB  E9BC00            jmp word 0x486a
000047AE  B90C00            mov cx,0xc
000047B1  E81DC8            call word 0xfd1
000047B4  8B46FB            mov ax,[bp-0x5]
000047B7  B92600            mov cx,0x26
000047BA  F7E1              mul cx
000047BC  97                xchg ax,di
000047BD  8B46F9            mov ax,[bp-0x7]
000047C0  D1E0              shl ax,1
000047C2  03F8              add di,ax
000047C4  57                push di
000047C5  A0C903            mov al,[0x3c9]
000047C8  32E4              xor ah,ah
000047CA  5F                pop di
000047CB  03F8              add di,ax
000047CD  81C71B0C          add di,0xc1b
000047D1  1E                push ds
000047D2  57                push di
000047D3  E88AFB            call word 0x4360
000047D6  A0CC03            mov al,[0x3cc]
000047D9  32E4              xor ah,ah
000047DB  50                push ax
000047DC  8A46F6            mov al,[bp-0xa]
000047DF  32E4              xor ah,ah
000047E1  3D0000            cmp ax,0x0
000047E4  B80100            mov ax,0x1
000047E7  7401              jz 0x47ea
000047E9  48                dec ax
000047EA  59                pop cx
000047EB  23C1              and ax,cx
000047ED  0BC0              or ax,ax
000047EF  7503              jnz 0x47f4
000047F1  E90600            jmp word 0x47fa
000047F4  B80300            mov ax,0x3
000047F7  8846F6            mov [bp-0xa],al
000047FA  B80000            mov ax,0x0
000047FD  50                push ax
000047FE  B80400            mov ax,0x4
00004801  59                pop cx
00004802  91                xchg ax,cx
00004803  2BC8              sub cx,ax
00004805  7D03              jnl 0x480a
00004807  E96000            jmp word 0x486a
0000480A  41                inc cx
0000480B  8846F7            mov [bp-0x9],al
0000480E  51                push cx
0000480F  B90E00            mov cx,0xe
00004812  E8BCC7            call word 0xfd1
00004815  8B46FB            mov ax,[bp-0x5]
00004818  B92600            mov cx,0x26
0000481B  F7E1              mul cx
0000481D  97                xchg ax,di
0000481E  8B46F9            mov ax,[bp-0x7]
00004821  D1E0              shl ax,1
00004823  03F8              add di,ax
00004825  81C71C0C          add di,0xc1c
00004829  1E                push ds
0000482A  B90200            mov cx,0x2
0000482D  E801C7            call word 0xf31
00004830  8B46FB            mov ax,[bp-0x5]
00004833  50                push ax
00004834  8A46F7            mov al,[bp-0x9]
00004837  32E4              xor ah,ah
00004839  59                pop cx
0000483A  91                xchg ax,cx
0000483B  2BC1              sub ax,cx
0000483D  B94C00            mov cx,0x4c
00004840  F7E1              mul cx
00004842  97                xchg ax,di
00004843  57                push di
00004844  8B46F9            mov ax,[bp-0x7]
00004847  50                push ax
00004848  8A46F7            mov al,[bp-0x9]
0000484B  32E4              xor ah,ah
0000484D  59                pop cx
0000484E  03C1              add ax,cx
00004850  5F                pop di
00004851  D1E0              shl ax,1
00004853  D1E0              shl ax,1
00004855  03F8              add di,ax
00004857  81C7C60E          add di,0xec6
0000485B  1E                push ds
0000485C  57                push di
0000485D  E859FB            call word 0x43b9
00004860  59                pop cx
00004861  49                dec cx
00004862  7406              jz 0x486a
00004864  FE46F7            inc byte [bp-0x9]
00004867  E9A4FF            jmp word 0x480e
0000486A  59                pop cx
0000486B  49                dec cx
0000486C  7406              jz 0x4874
0000486E  FE46F8            inc byte [bp-0x8]
00004871  E9CBFE            jmp word 0x473f
00004874  B80000            mov ax,0x0
00004877  50                push ax
00004878  B80400            mov ax,0x4
0000487B  59                pop cx
0000487C  91                xchg ax,cx
0000487D  2BC8              sub cx,ax
0000487F  7D03              jnl 0x4884
00004881  E90601            jmp word 0x498a
00004884  41                inc cx
00004885  8846F8            mov [bp-0x8],al
00004888  51                push cx
00004889  8A4606            mov al,[bp+0x6]
0000488C  32E4              xor ah,ah
0000488E  8946FB            mov [bp-0x5],ax
00004891  8A4604            mov al,[bp+0x4]
00004894  32E4              xor ah,ah
00004896  50                push ax
00004897  8A46F8            mov al,[bp-0x8]
0000489A  32E4              xor ah,ah
0000489C  59                pop cx
0000489D  91                xchg ax,cx
0000489E  2BC1              sub ax,cx
000048A0  8946F9            mov [bp-0x7],ax
000048A3  B80100            mov ax,0x1
000048A6  3B46F9            cmp ax,[bp-0x7]
000048A9  B80100            mov ax,0x1
000048AC  7E01              jng 0x48af
000048AE  48                dec ax
000048AF  50                push ax
000048B0  8B46F9            mov ax,[bp-0x7]
000048B3  50                push ax
000048B4  B81300            mov ax,0x13
000048B7  2D0400            sub ax,0x4
000048BA  59                pop cx
000048BB  91                xchg ax,cx
000048BC  3BC1              cmp ax,cx
000048BE  B80100            mov ax,0x1
000048C1  7E01              jng 0x48c4
000048C3  48                dec ax
000048C4  59                pop cx
000048C5  23C1              and ax,cx
000048C7  0BC0              or ax,ax
000048C9  7503              jnz 0x48ce
000048CB  E9B200            jmp word 0x4980
000048CE  B90C00            mov cx,0xc
000048D1  E8FDC6            call word 0xfd1
000048D4  8B46FB            mov ax,[bp-0x5]
000048D7  B92600            mov cx,0x26
000048DA  F7E1              mul cx
000048DC  97                xchg ax,di
000048DD  8B46F9            mov ax,[bp-0x7]
000048E0  D1E0              shl ax,1
000048E2  03F8              add di,ax
000048E4  57                push di
000048E5  A0C903            mov al,[0x3c9]
000048E8  32E4              xor ah,ah
000048EA  5F                pop di
000048EB  03F8              add di,ax
000048ED  81C74909          add di,0x949
000048F1  1E                push ds
000048F2  57                push di
000048F3  E86AFA            call word 0x4360
000048F6  A0CC03            mov al,[0x3cc]
000048F9  32E4              xor ah,ah
000048FB  50                push ax
000048FC  8A46F6            mov al,[bp-0xa]
000048FF  32E4              xor ah,ah
00004901  3D0000            cmp ax,0x0
00004904  B80100            mov ax,0x1
00004907  7401              jz 0x490a
00004909  48                dec ax
0000490A  59                pop cx
0000490B  23C1              and ax,cx
0000490D  0BC0              or ax,ax
0000490F  7503              jnz 0x4914
00004911  E90600            jmp word 0x491a
00004914  B80400            mov ax,0x4
00004917  8846F6            mov [bp-0xa],al
0000491A  B80000            mov ax,0x0
0000491D  50                push ax
0000491E  B80400            mov ax,0x4
00004921  59                pop cx
00004922  91                xchg ax,cx
00004923  2BC8              sub cx,ax
00004925  7D03              jnl 0x492a
00004927  E95600            jmp word 0x4980
0000492A  41                inc cx
0000492B  8846F7            mov [bp-0x9],al
0000492E  51                push cx
0000492F  B90E00            mov cx,0xe
00004932  E89CC6            call word 0xfd1
00004935  8B46FB            mov ax,[bp-0x5]
00004938  B92600            mov cx,0x26
0000493B  F7E1              mul cx
0000493D  97                xchg ax,di
0000493E  8B46F9            mov ax,[bp-0x7]
00004941  D1E0              shl ax,1
00004943  03F8              add di,ax
00004945  81C74A09          add di,0x94a
00004949  1E                push ds
0000494A  B90200            mov cx,0x2
0000494D  E8E1C5            call word 0xf31
00004950  8B46FB            mov ax,[bp-0x5]
00004953  B94C00            mov cx,0x4c
00004956  F7E1              mul cx
00004958  97                xchg ax,di
00004959  57                push di
0000495A  8B46F9            mov ax,[bp-0x7]
0000495D  50                push ax
0000495E  8A46F7            mov al,[bp-0x9]
00004961  32E4              xor ah,ah
00004963  59                pop cx
00004964  03C1              add ax,cx
00004966  5F                pop di
00004967  D1E0              shl ax,1
00004969  D1E0              shl ax,1
0000496B  03F8              add di,ax
0000496D  81C7C60E          add di,0xec6
00004971  1E                push ds
00004972  57                push di
00004973  E843FA            call word 0x43b9
00004976  59                pop cx
00004977  49                dec cx
00004978  7406              jz 0x4980
0000497A  FE46F7            inc byte [bp-0x9]
0000497D  E9AEFF            jmp word 0x492e
00004980  59                pop cx
00004981  49                dec cx
00004982  7406              jz 0x498a
00004984  FE46F8            inc byte [bp-0x8]
00004987  E9FEFE            jmp word 0x4888
0000498A  8A4606            mov al,[bp+0x6]
0000498D  32E4              xor ah,ah
0000498F  B91300            mov cx,0x13
00004992  F7E1              mul cx
00004994  97                xchg ax,di
00004995  57                push di
00004996  8A4604            mov al,[bp+0x4]
00004999  32E4              xor ah,ah
0000499B  5F                pop di
0000499C  03F8              add di,ax
0000499E  57                push di
0000499F  A0C903            mov al,[0x3c9]
000049A2  32E4              xor ah,ah
000049A4  5F                pop di
000049A5  88854C02          mov [di+0x24c],al
000049A9  A0CC03            mov al,[0x3cc]
000049AC  32E4              xor ah,ah
000049AE  0BC0              or ax,ax
000049B0  7503              jnz 0x49b5
000049B2  E92400            jmp word 0x49d9
000049B5  B91600            mov cx,0x16
000049B8  E816C6            call word 0xfd1
000049BB  A0C903            mov al,[0x3c9]
000049BE  32E4              xor ah,ah
000049C0  50                push ax
000049C1  8A4606            mov al,[bp+0x6]
000049C4  32E4              xor ah,ah
000049C6  50                push ax
000049C7  8A4604            mov al,[bp+0x4]
000049CA  32E4              xor ah,ah
000049CC  50                push ax
000049CD  8A46F6            mov al,[bp-0xa]
000049D0  32E4              xor ah,ah
000049D2  50                push ax
000049D3  E855F7            call word 0x412b
000049D6  E91B00            jmp word 0x49f4
000049D9  B90C00            mov cx,0xc
000049DC  E8F2C5            call word 0xfd1
000049DF  A0C903            mov al,[0x3c9]
000049E2  32E4              xor ah,ah
000049E4  50                push ax
000049E5  8A4606            mov al,[bp+0x6]
000049E8  32E4              xor ah,ah
000049EA  50                push ax
000049EB  8A4604            mov al,[bp+0x4]
000049EE  32E4              xor ah,ah
000049F0  50                push ax
000049F1  E873E6            call word 0x3067
000049F4  8A46FD            mov al,[bp-0x3]
000049F7  32E4              xor ah,ah
000049F9  A2C903            mov [0x3c9],al
000049FC  E90000            jmp word 0x49ff
000049FF  8BE5              mov sp,bp
00004A01  5D                pop bp
00004A02  C20400            ret 0x4
00004A05  55                push bp
00004A06  8BEC              mov bp,sp
00004A08  55                push bp
00004A09  E90000            jmp word 0x4a0c
00004A0C  A0CC03            mov al,[0x3cc]
00004A0F  32E4              xor ah,ah
00004A11  50                push ax
00004A12  A1CA03            mov ax,[0x3ca]
00004A15  3D0000            cmp ax,0x0
00004A18  B80100            mov ax,0x1
00004A1B  7E01              jng 0x4a1e
00004A1D  48                dec ax
00004A1E  59                pop cx
00004A1F  0BC1              or ax,cx
00004A21  884604            mov [bp+0x4],al
00004A24  E90000            jmp word 0x4a27
00004A27  8A4604            mov al,[bp+0x4]
00004A2A  32E4              xor ah,ah
00004A2C  0BC0              or ax,ax
00004A2E  8BE5              mov sp,bp
00004A30  5D                pop bp
00004A31  C20100            ret 0x1
00004A34  55                push bp
00004A35  8BEC              mov bp,sp
00004A37  55                push bp
00004A38  E90000            jmp word 0x4a3b
00004A3B  83EC07            sub sp,byte +0x7
00004A3E  B90900            mov cx,0x9
00004A41  E88DC5            call word 0xfd1
00004A44  4C                dec sp
00004A45  A0C903            mov al,[0x3c9]
00004A48  32E4              xor ah,ah
00004A4A  50                push ax
00004A4B  E8ACF6            call word 0x40fa
00004A4E  8846FD            mov [bp-0x3],al
00004A51  B80180            mov ax,0x8001
00004A54  8946F9            mov [bp-0x7],ax
00004A57  C47E08            les di,[bp+0x8]
00004A5A  06                push es
00004A5B  57                push di
00004A5C  B81300            mov ax,0x13
00004A5F  050100            add ax,0x1
00004A62  B90200            mov cx,0x2
00004A65  99                cwd
00004A66  F7F9              idiv cx
00004A68  5F                pop di
00004A69  07                pop es
00004A6A  268805            mov [es:di],al
00004A6D  C47E04            les di,[bp+0x4]
00004A70  06                push es
00004A71  57                push di
00004A72  B81300            mov ax,0x13
00004A75  050100            add ax,0x1
00004A78  B90200            mov cx,0x2
00004A7B  99                cwd
00004A7C  F7F9              idiv cx
00004A7E  5F                pop di
00004A7F  07                pop es
00004A80  268805            mov [es:di],al
00004A83  C47E08            les di,[bp+0x8]
00004A86  268A05            mov al,[es:di]
00004A89  32E4              xor ah,ah
00004A8B  B91300            mov cx,0x13
00004A8E  F7E1              mul cx
00004A90  97                xchg ax,di
00004A91  57                push di
00004A92  C47E04            les di,[bp+0x4]
00004A95  268A05            mov al,[es:di]
00004A98  32E4              xor ah,ah
00004A9A  5F                pop di
00004A9B  03F8              add di,ax
00004A9D  8A854C02          mov al,[di+0x24c]
00004AA1  32E4              xor ah,ah
00004AA3  3D0000            cmp ax,0x0
00004AA6  7403              jz 0x4aab
00004AA8  E90600            jmp word 0x4ab1
00004AAB  B80400            mov ax,0x4
00004AAE  8946F9            mov [bp-0x7],ax
00004AB1  B80100            mov ax,0x1
00004AB4  50                push ax
00004AB5  B81300            mov ax,0x13
00004AB8  59                pop cx
00004AB9  91                xchg ax,cx
00004ABA  2BC8              sub cx,ax
00004ABC  7D03              jnl 0x4ac1
00004ABE  E9EC00            jmp word 0x4bad
00004AC1  41                inc cx
00004AC2  8846FC            mov [bp-0x4],al
00004AC5  51                push cx
00004AC6  B80100            mov ax,0x1
00004AC9  50                push ax
00004ACA  B81300            mov ax,0x13
00004ACD  59                pop cx
00004ACE  91                xchg ax,cx
00004ACF  2BC8              sub cx,ax
00004AD1  7D03              jnl 0x4ad6
00004AD3  E9CD00            jmp word 0x4ba3
00004AD6  41                inc cx
00004AD7  8846FB            mov [bp-0x5],al
00004ADA  51                push cx
00004ADB  8A46FC            mov al,[bp-0x4]
00004ADE  32E4              xor ah,ah
00004AE0  B91300            mov cx,0x13
00004AE3  F7E1              mul cx
00004AE5  97                xchg ax,di
00004AE6  57                push di
00004AE7  8A46FB            mov al,[bp-0x5]
00004AEA  32E4              xor ah,ah
00004AEC  5F                pop di
00004AED  03F8              add di,ax
00004AEF  8A854C02          mov al,[di+0x24c]
00004AF3  32E4              xor ah,ah
00004AF5  3D0000            cmp ax,0x0
00004AF8  7403              jz 0x4afd
00004AFA  E99C00            jmp word 0x4b99
00004AFD  8A46FC            mov al,[bp-0x4]
00004B00  32E4              xor ah,ah
00004B02  B94C00            mov cx,0x4c
00004B05  F7E1              mul cx
00004B07  97                xchg ax,di
00004B08  57                push di
00004B09  8A46FB            mov al,[bp-0x5]
00004B0C  32E4              xor ah,ah
00004B0E  5F                pop di
00004B0F  D1E0              shl ax,1
00004B11  D1E0              shl ax,1
00004B13  03F8              add di,ax
00004B15  57                push di
00004B16  A0C903            mov al,[0x3c9]
00004B19  32E4              xor ah,ah
00004B1B  5F                pop di
00004B1C  D1E0              shl ax,1
00004B1E  03F8              add di,ax
00004B20  8B85C40E          mov ax,[di+0xec4]
00004B24  50                push ax
00004B25  B81000            mov ax,0x10
00004B28  050400            add ax,0x4
00004B2B  59                pop cx
00004B2C  F7E9              imul cx
00004B2E  B91000            mov cx,0x10
00004B31  99                cwd
00004B32  F7F9              idiv cx
00004B34  50                push ax
00004B35  8A46FC            mov al,[bp-0x4]
00004B38  32E4              xor ah,ah
00004B3A  B94C00            mov cx,0x4c
00004B3D  F7E1              mul cx
00004B3F  97                xchg ax,di
00004B40  57                push di
00004B41  8A46FB            mov al,[bp-0x5]
00004B44  32E4              xor ah,ah
00004B46  5F                pop di
00004B47  D1E0              shl ax,1
00004B49  D1E0              shl ax,1
00004B4B  03F8              add di,ax
00004B4D  57                push di
00004B4E  8A46FD            mov al,[bp-0x3]
00004B51  32E4              xor ah,ah
00004B53  5F                pop di
00004B54  D1E0              shl ax,1
00004B56  03F8              add di,ax
00004B58  58                pop ax
00004B59  0385C40E          add ax,[di+0xec4]
00004B5D  50                push ax
00004B5E  B80400            mov ax,0x4
00004B61  E876C5            call word 0x10da
00004B64  59                pop cx
00004B65  03C1              add ax,cx
00004B67  8946F7            mov [bp-0x9],ax
00004B6A  8B46F7            mov ax,[bp-0x9]
00004B6D  3B46F9            cmp ax,[bp-0x7]
00004B70  7F03              jg 0x4b75
00004B72  E92400            jmp word 0x4b99
00004B75  C47E08            les di,[bp+0x8]
00004B78  06                push es
00004B79  57                push di
00004B7A  8A46FC            mov al,[bp-0x4]
00004B7D  32E4              xor ah,ah
00004B7F  5F                pop di
00004B80  07                pop es
00004B81  268805            mov [es:di],al
00004B84  C47E04            les di,[bp+0x4]
00004B87  06                push es
00004B88  57                push di
00004B89  8A46FB            mov al,[bp-0x5]
00004B8C  32E4              xor ah,ah
00004B8E  5F                pop di
00004B8F  07                pop es
00004B90  268805            mov [es:di],al
00004B93  8B46F7            mov ax,[bp-0x9]
00004B96  8946F9            mov [bp-0x7],ax
00004B99  59                pop cx
00004B9A  49                dec cx
00004B9B  7406              jz 0x4ba3
00004B9D  FE46FB            inc byte [bp-0x5]
00004BA0  E937FF            jmp word 0x4ada
00004BA3  59                pop cx
00004BA4  49                dec cx
00004BA5  7406              jz 0x4bad
00004BA7  FE46FC            inc byte [bp-0x4]
00004BAA  E918FF            jmp word 0x4ac5
00004BAD  E90000            jmp word 0x4bb0
00004BB0  8BE5              mov sp,bp
00004BB2  5D                pop bp
00004BB3  C20800            ret 0x8
00004BB6  55                push bp
00004BB7  8BEC              mov bp,sp
00004BB9  55                push bp
00004BBA  E90000            jmp word 0x4bbd
00004BBD  4C                dec sp
00004BBE  E8E3C1            call word 0xda4
00004BC1  7503              jnz 0x4bc6
00004BC3  E91400            jmp word 0x4bda
00004BC6  BF4A01            mov di,0x14a
00004BC9  1E                push ds
00004BCA  E86ED9            call word 0x253b
00004BCD  8D7EFD            lea di,[bp-0x3]
00004BD0  16                push ss
00004BD1  E88EDB            call word 0x2762
00004BD4  E84BC4            call word 0x1022
00004BD7  E9E4FF            jmp word 0x4bbe
00004BDA  E90000            jmp word 0x4bdd
00004BDD  8BE5              mov sp,bp
00004BDF  5D                pop bp
00004BE0  C3                ret
00004BE1  55                push bp
00004BE2  8BEC              mov bp,sp
00004BE4  55                push bp
00004BE5  E90000            jmp word 0x4be8
00004BE8  BF4A01            mov di,0x14a
00004BEB  1E                push ds
00004BEC  E84CD9            call word 0x253b
00004BEF  C47E04            les di,[bp+0x4]
00004BF2  06                push es
00004BF3  E86CDB            call word 0x2762
00004BF6  E829C4            call word 0x1022
00004BF9  C47E04            les di,[bp+0x4]
00004BFC  06                push es
00004BFD  57                push di
00004BFE  C47E04            les di,[bp+0x4]
00004C01  268A05            mov al,[es:di]
00004C04  32E4              xor ah,ah
00004C06  E865B7            call word 0x36e
00004C09  5F                pop di
00004C0A  07                pop es
00004C0B  268805            mov [es:di],al
00004C0E  E90000            jmp word 0x4c11
00004C11  8BE5              mov sp,bp
00004C13  5D                pop bp
00004C14  C20400            ret 0x4
00004C17  55                push bp
00004C18  8BEC              mov bp,sp
00004C1A  55                push bp
00004C1B  E90000            jmp word 0x4c1e
00004C1E  4C                dec sp
00004C1F  B80100            mov ax,0x1
00004C22  8846FD            mov [bp-0x3],al
00004C25  B90A00            mov cx,0xa
00004C28  E8A6C3            call word 0xfd1
00004C2B  8A460A            mov al,[bp+0xa]
00004C2E  32E4              xor ah,ah
00004C30  50                push ax
00004C31  8A4608            mov al,[bp+0x8]
00004C34  32E4              xor ah,ah
00004C36  50                push ax
00004C37  E8F8E3            call word 0x3032
00004C3A  B90A00            mov cx,0xa
00004C3D  E891C3            call word 0xfd1
00004C40  C47E04            les di,[bp+0x4]
00004C43  06                push es
00004C44  57                push di
00004C45  E899FF            call word 0x4be1
00004C48  C47E04            les di,[bp+0x4]
00004C4B  268A05            mov al,[es:di]
00004C4E  32E4              xor ah,ah
00004C50  3D3F00            cmp ax,0x3f
00004C53  7403              jz 0x4c58
00004C55  E90C00            jmp word 0x4c64
00004C58  B9EC05            mov cx,0x5ec
00004C5B  E873C3            call word 0xfd1
00004C5E  E8A4E5            call word 0x3205
00004C61  E96001            jmp word 0x4dc4
00004C64  3D0300            cmp ax,0x3
00004C67  7403              jz 0x4c6c
00004C69  E90C00            jmp word 0x4c78
00004C6C  C47E04            les di,[bp+0x4]
00004C6F  B85100            mov ax,0x51
00004C72  268805            mov [es:di],al
00004C75  E94C01            jmp word 0x4dc4
00004C78  3D0D00            cmp ax,0xd
00004C7B  7408              jz 0x4c85
00004C7D  3D2000            cmp ax,0x20
00004C80  7403              jz 0x4c85
00004C82  E90C00            jmp word 0x4c91
00004C85  C47E04            les di,[bp+0x4]
00004C88  B84500            mov ax,0x45
00004C8B  268805            mov [es:di],al
00004C8E  E93301            jmp word 0x4dc4
00004C91  3D1B00            cmp ax,0x1b
00004C94  7403              jz 0x4c99
00004C96  E9FD00            jmp word 0x4d96
00004C99  E808C1            call word 0xda4
00004C9C  7503              jnz 0x4ca1
00004C9E  E9C800            jmp word 0x4d69
00004CA1  B90A00            mov cx,0xa
00004CA4  E82AC3            call word 0xfd1
00004CA7  C47E04            les di,[bp+0x4]
00004CAA  06                push es
00004CAB  57                push di
00004CAC  E832FF            call word 0x4be1
00004CAF  C47E04            les di,[bp+0x4]
00004CB2  268A05            mov al,[es:di]
00004CB5  32E4              xor ah,ah
00004CB7  3D4B00            cmp ax,0x4b
00004CBA  7403              jz 0x4cbf
00004CBC  E90C00            jmp word 0x4ccb
00004CBF  C47E04            les di,[bp+0x4]
00004CC2  B84C00            mov ax,0x4c
00004CC5  268805            mov [es:di],al
00004CC8  E99B00            jmp word 0x4d66
00004CCB  3D4D00            cmp ax,0x4d
00004CCE  7403              jz 0x4cd3
00004CD0  E90C00            jmp word 0x4cdf
00004CD3  C47E04            les di,[bp+0x4]
00004CD6  B85200            mov ax,0x52
00004CD9  268805            mov [es:di],al
00004CDC  E98700            jmp word 0x4d66
00004CDF  3D5000            cmp ax,0x50
00004CE2  7403              jz 0x4ce7
00004CE4  E90C00            jmp word 0x4cf3
00004CE7  C47E04            les di,[bp+0x4]
00004CEA  B84400            mov ax,0x44
00004CED  268805            mov [es:di],al
00004CF0  E97300            jmp word 0x4d66
00004CF3  3D4800            cmp ax,0x48
00004CF6  7403              jz 0x4cfb
00004CF8  E90C00            jmp word 0x4d07
00004CFB  C47E04            les di,[bp+0x4]
00004CFE  B85500            mov ax,0x55
00004D01  268805            mov [es:di],al
00004D04  E95F00            jmp word 0x4d66
00004D07  3D4700            cmp ax,0x47
00004D0A  7403              jz 0x4d0f
00004D0C  E90C00            jmp word 0x4d1b
00004D0F  C47E04            les di,[bp+0x4]
00004D12  B83700            mov ax,0x37
00004D15  268805            mov [es:di],al
00004D18  E94B00            jmp word 0x4d66
00004D1B  3D4900            cmp ax,0x49
00004D1E  7403              jz 0x4d23
00004D20  E90C00            jmp word 0x4d2f
00004D23  C47E04            les di,[bp+0x4]
00004D26  B83900            mov ax,0x39
00004D29  268805            mov [es:di],al
00004D2C  E93700            jmp word 0x4d66
00004D2F  3D4F00            cmp ax,0x4f
00004D32  7403              jz 0x4d37
00004D34  E90C00            jmp word 0x4d43
00004D37  C47E04            les di,[bp+0x4]
00004D3A  B83100            mov ax,0x31
00004D3D  268805            mov [es:di],al
00004D40  E92300            jmp word 0x4d66
00004D43  3D5100            cmp ax,0x51
00004D46  7403              jz 0x4d4b
00004D48  E90C00            jmp word 0x4d57
00004D4B  C47E04            les di,[bp+0x4]
00004D4E  B83300            mov ax,0x33
00004D51  268805            mov [es:di],al
00004D54  E90F00            jmp word 0x4d66
00004D57  B80000            mov ax,0x0
00004D5A  8846FD            mov [bp-0x3],al
00004D5D  B90700            mov cx,0x7
00004D60  E86EC2            call word 0xfd1
00004D63  E850FE            call word 0x4bb6
00004D66  E92A00            jmp word 0x4d93
00004D69  B90700            mov cx,0x7
00004D6C  E862C2            call word 0xfd1
00004D6F  4C                dec sp
00004D70  E892FC            call word 0x4a05
00004D73  7503              jnz 0x4d78
00004D75  E90C00            jmp word 0x4d84
00004D78  C47E04            les di,[bp+0x4]
00004D7B  B85000            mov ax,0x50
00004D7E  268805            mov [es:di],al
00004D81  E90F00            jmp word 0x4d93
00004D84  B80000            mov ax,0x0
00004D87  8846FD            mov [bp-0x3],al
00004D8A  B90700            mov cx,0x7
00004D8D  E841C2            call word 0xfd1
00004D90  E823FE            call word 0x4bb6
00004D93  E92E00            jmp word 0x4dc4
00004D96  3D4E00            cmp ax,0x4e
00004D99  7417              jz 0x4db2
00004D9B  3D5100            cmp ax,0x51
00004D9E  7412              jz 0x4db2
00004DA0  3D4100            cmp ax,0x41
00004DA3  740D              jz 0x4db2
00004DA5  3D5000            cmp ax,0x50
00004DA8  7408              jz 0x4db2
00004DAA  3D4800            cmp ax,0x48
00004DAD  7403              jz 0x4db2
00004DAF  E90300            jmp word 0x4db5
00004DB2  E90F00            jmp word 0x4dc4
00004DB5  B80000            mov ax,0x0
00004DB8  8846FD            mov [bp-0x3],al
00004DBB  B90700            mov cx,0x7
00004DBE  E810C2            call word 0xfd1
00004DC1  E8F2FD            call word 0x4bb6
00004DC4  8A46FD            mov al,[bp-0x3]
00004DC7  32E4              xor ah,ah
00004DC9  0BC0              or ax,ax
00004DCB  7503              jnz 0x4dd0
00004DCD  E94FFE            jmp word 0x4c1f
00004DD0  E90000            jmp word 0x4dd3
00004DD3  8BE5              mov sp,bp
00004DD5  5D                pop bp
00004DD6  C20800            ret 0x8
00004DD9  55                push bp
00004DDA  8BEC              mov bp,sp
00004DDC  55                push bp
00004DDD  E90000            jmp word 0x4de0
00004DE0  E843B4            call word 0x226
00004DE3  E82EC1            call word 0xf14
00004DE6  B80000            mov ax,0x0
00004DE9  A2BD14            mov [0x14bd],al
00004DEC  B80000            mov ax,0x0
00004DEF  A2CD03            mov [0x3cd],al
00004DF2  E90000            jmp word 0x4df5
00004DF5  8BE5              mov sp,bp
00004DF7  5D                pop bp
00004DF8  C3                ret
00004DF9  55                push bp
00004DFA  8BEC              mov bp,sp
00004DFC  55                push bp
00004DFD  E90000            jmp word 0x4e00
00004E00  4C                dec sp
00004E01  4C                dec sp
00004E02  8A4604            mov al,[bp+0x4]
00004E05  32E4              xor ah,ah
00004E07  3D4E00            cmp ax,0x4e
00004E0A  7403              jz 0x4e0f
00004E0C  E92700            jmp word 0x4e36
00004E0F  B90C00            mov cx,0xc
00004E12  E8BCC1            call word 0xfd1
00004E15  B80000            mov ax,0x0
00004E18  50                push ax
00004E19  E88BF0            call word 0x3ea7
00004E1C  B81300            mov ax,0x13
00004E1F  050100            add ax,0x1
00004E22  B90200            mov cx,0x2
00004E25  99                cwd
00004E26  F7F9              idiv cx
00004E28  A2BA14            mov [0x14ba],al
00004E2B  A0BA14            mov al,[0x14ba]
00004E2E  32E4              xor ah,ah
00004E30  A2BB14            mov [0x14bb],al
00004E33  E95402            jmp word 0x508a
00004E36  3D4800            cmp ax,0x48
00004E39  7403              jz 0x4e3e
00004E3B  E91600            jmp word 0x4e54
00004E3E  B91500            mov cx,0x15
00004E41  E88DC1            call word 0xfd1
00004E44  BFBA14            mov di,0x14ba
00004E47  1E                push ds
00004E48  57                push di
00004E49  BFBB14            mov di,0x14bb
00004E4C  1E                push ds
00004E4D  57                push di
00004E4E  E8E3FB            call word 0x4a34
00004E51  E93602            jmp word 0x508a
00004E54  3D4C00            cmp ax,0x4c
00004E57  7403              jz 0x4e5c
00004E59  E91B00            jmp word 0x4e77
00004E5C  A0BA14            mov al,[0x14ba]
00004E5F  32E4              xor ah,ah
00004E61  051300            add ax,0x13
00004E64  2D0200            sub ax,0x2
00004E67  B91300            mov cx,0x13
00004E6A  99                cwd
00004E6B  F7F9              idiv cx
00004E6D  92                xchg ax,dx
00004E6E  050100            add ax,0x1
00004E71  A2BA14            mov [0x14ba],al
00004E74  E91302            jmp word 0x508a
00004E77  3D5200            cmp ax,0x52
00004E7A  7403              jz 0x4e7f
00004E7C  E91500            jmp word 0x4e94
00004E7F  A0BA14            mov al,[0x14ba]
00004E82  32E4              xor ah,ah
00004E84  B91300            mov cx,0x13
00004E87  99                cwd
00004E88  F7F9              idiv cx
00004E8A  92                xchg ax,dx
00004E8B  050100            add ax,0x1
00004E8E  A2BA14            mov [0x14ba],al
00004E91  E9F601            jmp word 0x508a
00004E94  3D4400            cmp ax,0x44
00004E97  7403              jz 0x4e9c
00004E99  E91B00            jmp word 0x4eb7
00004E9C  A0BB14            mov al,[0x14bb]
00004E9F  32E4              xor ah,ah
00004EA1  051300            add ax,0x13
00004EA4  2D0200            sub ax,0x2
00004EA7  B91300            mov cx,0x13
00004EAA  99                cwd
00004EAB  F7F9              idiv cx
00004EAD  92                xchg ax,dx
00004EAE  050100            add ax,0x1
00004EB1  A2BB14            mov [0x14bb],al
00004EB4  E9D301            jmp word 0x508a
00004EB7  3D5500            cmp ax,0x55
00004EBA  7403              jz 0x4ebf
00004EBC  E91500            jmp word 0x4ed4
00004EBF  A0BB14            mov al,[0x14bb]
00004EC2  32E4              xor ah,ah
00004EC4  B91300            mov cx,0x13
00004EC7  99                cwd
00004EC8  F7F9              idiv cx
00004ECA  92                xchg ax,dx
00004ECB  050100            add ax,0x1
00004ECE  A2BB14            mov [0x14bb],al
00004ED1  E9B601            jmp word 0x508a
00004ED4  3D3700            cmp ax,0x37
00004ED7  7403              jz 0x4edc
00004ED9  E95900            jmp word 0x4f35
00004EDC  A0BA14            mov al,[0x14ba]
00004EDF  32E4              xor ah,ah
00004EE1  3D0100            cmp ax,0x1
00004EE4  B80100            mov ax,0x1
00004EE7  7401              jz 0x4eea
00004EE9  48                dec ax
00004EEA  50                push ax
00004EEB  A0BB14            mov al,[0x14bb]
00004EEE  32E4              xor ah,ah
00004EF0  3D1300            cmp ax,0x13
00004EF3  B80100            mov ax,0x1
00004EF6  7401              jz 0x4ef9
00004EF8  48                dec ax
00004EF9  59                pop cx
00004EFA  0BC1              or ax,cx
00004EFC  0BC0              or ax,ax
00004EFE  7503              jnz 0x4f03
00004F00  E91900            jmp word 0x4f1c
00004F03  A0BA14            mov al,[0x14ba]
00004F06  32E4              xor ah,ah
00004F08  8946FC            mov [bp-0x4],ax
00004F0B  A0BB14            mov al,[0x14bb]
00004F0E  32E4              xor ah,ah
00004F10  A2BA14            mov [0x14ba],al
00004F13  8B46FC            mov ax,[bp-0x4]
00004F16  A2BB14            mov [0x14bb],al
00004F19  E91600            jmp word 0x4f32
00004F1C  A0BA14            mov al,[0x14ba]
00004F1F  32E4              xor ah,ah
00004F21  2D0100            sub ax,0x1
00004F24  A2BA14            mov [0x14ba],al
00004F27  A0BB14            mov al,[0x14bb]
00004F2A  32E4              xor ah,ah
00004F2C  050100            add ax,0x1
00004F2F  A2BB14            mov [0x14bb],al
00004F32  E95501            jmp word 0x508a
00004F35  3D3900            cmp ax,0x39
00004F38  7403              jz 0x4f3d
00004F3A  E96B00            jmp word 0x4fa8
00004F3D  A0BA14            mov al,[0x14ba]
00004F40  32E4              xor ah,ah
00004F42  3D1300            cmp ax,0x13
00004F45  7403              jz 0x4f4a
00004F47  E91C00            jmp word 0x4f66
00004F4A  B81300            mov ax,0x13
00004F4D  50                push ax
00004F4E  A0BB14            mov al,[0x14bb]
00004F51  32E4              xor ah,ah
00004F53  59                pop cx
00004F54  91                xchg ax,cx
00004F55  2BC1              sub ax,cx
00004F57  050100            add ax,0x1
00004F5A  A2BA14            mov [0x14ba],al
00004F5D  B80100            mov ax,0x1
00004F60  A2BB14            mov [0x14bb],al
00004F63  E93F00            jmp word 0x4fa5
00004F66  A0BB14            mov al,[0x14bb]
00004F69  32E4              xor ah,ah
00004F6B  3D1300            cmp ax,0x13
00004F6E  7403              jz 0x4f73
00004F70  E91C00            jmp word 0x4f8f
00004F73  B81300            mov ax,0x13
00004F76  50                push ax
00004F77  A0BA14            mov al,[0x14ba]
00004F7A  32E4              xor ah,ah
00004F7C  59                pop cx
00004F7D  91                xchg ax,cx
00004F7E  2BC1              sub ax,cx
00004F80  050100            add ax,0x1
00004F83  A2BB14            mov [0x14bb],al
00004F86  B80100            mov ax,0x1
00004F89  A2BA14            mov [0x14ba],al
00004F8C  E91600            jmp word 0x4fa5
00004F8F  A0BA14            mov al,[0x14ba]
00004F92  32E4              xor ah,ah
00004F94  050100            add ax,0x1
00004F97  A2BA14            mov [0x14ba],al
00004F9A  A0BB14            mov al,[0x14bb]
00004F9D  32E4              xor ah,ah
00004F9F  050100            add ax,0x1
00004FA2  A2BB14            mov [0x14bb],al
00004FA5  E9E200            jmp word 0x508a
00004FA8  3D3100            cmp ax,0x31
00004FAB  7403              jz 0x4fb0
00004FAD  E96B00            jmp word 0x501b
00004FB0  A0BB14            mov al,[0x14bb]
00004FB3  32E4              xor ah,ah
00004FB5  3D0100            cmp ax,0x1
00004FB8  7403              jz 0x4fbd
00004FBA  E91C00            jmp word 0x4fd9
00004FBD  B81300            mov ax,0x13
00004FC0  50                push ax
00004FC1  A0BA14            mov al,[0x14ba]
00004FC4  32E4              xor ah,ah
00004FC6  59                pop cx
00004FC7  91                xchg ax,cx
00004FC8  2BC1              sub ax,cx
00004FCA  050100            add ax,0x1
00004FCD  A2BB14            mov [0x14bb],al
00004FD0  B81300            mov ax,0x13
00004FD3  A2BA14            mov [0x14ba],al
00004FD6  E93F00            jmp word 0x5018
00004FD9  A0BA14            mov al,[0x14ba]
00004FDC  32E4              xor ah,ah
00004FDE  3D0100            cmp ax,0x1
00004FE1  7403              jz 0x4fe6
00004FE3  E91C00            jmp word 0x5002
00004FE6  B81300            mov ax,0x13
00004FE9  50                push ax
00004FEA  A0BB14            mov al,[0x14bb]
00004FED  32E4              xor ah,ah
00004FEF  59                pop cx
00004FF0  91                xchg ax,cx
00004FF1  2BC1              sub ax,cx
00004FF3  050100            add ax,0x1
00004FF6  A2BA14            mov [0x14ba],al
00004FF9  B81300            mov ax,0x13
00004FFC  A2BB14            mov [0x14bb],al
00004FFF  E91600            jmp word 0x5018
00005002  A0BA14            mov al,[0x14ba]
00005005  32E4              xor ah,ah
00005007  2D0100            sub ax,0x1
0000500A  A2BA14            mov [0x14ba],al
0000500D  A0BB14            mov al,[0x14bb]
00005010  32E4              xor ah,ah
00005012  2D0100            sub ax,0x1
00005015  A2BB14            mov [0x14bb],al
00005018  E96F00            jmp word 0x508a
0000501B  3D3300            cmp ax,0x33
0000501E  7403              jz 0x5023
00005020  E95900            jmp word 0x507c
00005023  A0BA14            mov al,[0x14ba]
00005026  32E4              xor ah,ah
00005028  3D1300            cmp ax,0x13
0000502B  B80100            mov ax,0x1
0000502E  7401              jz 0x5031
00005030  48                dec ax
00005031  50                push ax
00005032  A0BB14            mov al,[0x14bb]
00005035  32E4              xor ah,ah
00005037  3D0100            cmp ax,0x1
0000503A  B80100            mov ax,0x1
0000503D  7401              jz 0x5040
0000503F  48                dec ax
00005040  59                pop cx
00005041  0BC1              or ax,cx
00005043  0BC0              or ax,ax
00005045  7503              jnz 0x504a
00005047  E91900            jmp word 0x5063
0000504A  A0BA14            mov al,[0x14ba]
0000504D  32E4              xor ah,ah
0000504F  8946FC            mov [bp-0x4],ax
00005052  A0BB14            mov al,[0x14bb]
00005055  32E4              xor ah,ah
00005057  A2BA14            mov [0x14ba],al
0000505A  8B46FC            mov ax,[bp-0x4]
0000505D  A2BB14            mov [0x14bb],al
00005060  E91600            jmp word 0x5079
00005063  A0BA14            mov al,[0x14ba]
00005066  32E4              xor ah,ah
00005068  050100            add ax,0x1
0000506B  A2BA14            mov [0x14ba],al
0000506E  A0BB14            mov al,[0x14bb]
00005071  32E4              xor ah,ah
00005073  2D0100            sub ax,0x1
00005076  A2BB14            mov [0x14bb],al
00005079  E90E00            jmp word 0x508a
0000507C  3D4100            cmp ax,0x41
0000507F  7403              jz 0x5084
00005081  E90600            jmp word 0x508a
00005084  B80100            mov ax,0x1
00005087  A2BD14            mov [0x14bd],al
0000508A  E90000            jmp word 0x508d
0000508D  8BE5              mov sp,bp
0000508F  5D                pop bp
00005090  C20200            ret 0x2
00005093  55                push bp
00005094  8BEC              mov bp,sp
00005096  55                push bp
00005097  E90000            jmp word 0x509a
0000509A  A0BA14            mov al,[0x14ba]
0000509D  32E4              xor ah,ah
0000509F  B91300            mov cx,0x13
000050A2  F7E1              mul cx
000050A4  97                xchg ax,di
000050A5  57                push di
000050A6  A0BB14            mov al,[0x14bb]
000050A9  32E4              xor ah,ah
000050AB  5F                pop di
000050AC  03F8              add di,ax
000050AE  8A854C02          mov al,[di+0x24c]
000050B2  32E4              xor ah,ah
000050B4  3D0000            cmp ax,0x0
000050B7  7403              jz 0x50bc
000050B9  E95200            jmp word 0x510e
000050BC  B91200            mov cx,0x12
000050BF  E80FBF            call word 0xfd1
000050C2  A0BA14            mov al,[0x14ba]
000050C5  32E4              xor ah,ah
000050C7  50                push ax
000050C8  A0BB14            mov al,[0x14bb]
000050CB  32E4              xor ah,ah
000050CD  50                push ax
000050CE  E888F2            call word 0x4359
000050D1  A0CC03            mov al,[0x3cc]
000050D4  32E4              xor ah,ah
000050D6  0BC0              or ax,ax
000050D8  7503              jnz 0x50dd
000050DA  E92B00            jmp word 0x5108
000050DD  B90601            mov cx,0x106
000050E0  E8EEBE            call word 0xfd1
000050E3  E8FFC0            call word 0x11e5
000050E6  19436F            sbb [bp+di+0x6f],ax
000050E9  6E                outsb
000050EA  677261            jc 0x514e
000050ED  7475              jz 0x5164
000050EF  6C                insb
000050F0  61                popaw
000050F1  7469              jz 0x515c
000050F3  6F                outsw
000050F4  6E                outsb
000050F5  732C              jnc 0x5123
000050F7  20596F            and [bx+di+0x6f],bl
000050FA  7520              jnz 0x511c
000050FC  776F              ja 0x516d
000050FE  6E                outsb
000050FF  21B1FFE8          and [bx+di-0x1701],si
00005103  38C1              cmp cl,al
00005105  E832E0            call word 0x313a
00005108  B85000            mov ax,0x50
0000510B  A2BC14            mov [0x14bc],al
0000510E  E90000            jmp word 0x5111
00005111  8BE5              mov sp,bp
00005113  5D                pop bp
00005114  C3                ret
00005115  55                push bp
00005116  8BEC              mov bp,sp
00005118  55                push bp
00005119  E90000            jmp word 0x511c
0000511C  E885BC            call word 0xda4
0000511F  7503              jnz 0x5124
00005121  E90900            jmp word 0x512d
00005124  B90700            mov cx,0x7
00005127  E8A7BE            call word 0xfd1
0000512A  E889FA            call word 0x4bb6
0000512D  B90700            mov cx,0x7
00005130  E89EBE            call word 0xfd1
00005133  4C                dec sp
00005134  E8CEF8            call word 0x4a05
00005137  7503              jnz 0x513c
00005139  E94400            jmp word 0x5180
0000513C  B80000            mov ax,0x0
0000513F  A2BD14            mov [0x14bd],al
00005142  A0BC14            mov al,[0x14bc]
00005145  32E4              xor ah,ah
00005147  3D5100            cmp ax,0x51
0000514A  B80100            mov ax,0x1
0000514D  7501              jnz 0x5150
0000514F  48                dec ax
00005150  50                push ax
00005151  A0CC03            mov al,[0x3cc]
00005154  32E4              xor ah,ah
00005156  3401              xor al,0x1
00005158  59                pop cx
00005159  23C1              and ax,cx
0000515B  0BC0              or ax,ax
0000515D  7503              jnz 0x5162
0000515F  E91B00            jmp word 0x517d
00005162  B90601            mov cx,0x106
00005165  E869BE            call word 0xfd1
00005168  E87AC0            call word 0x11e5
0000516B  095469            or [si+0x69],dx
0000516E  65206761          and [gs:bx+0x61],ah
00005172  6D                insw
00005173  6521B1FFE8        and [gs:bx+di-0x1701],si
00005178  C3                ret
00005179  C0E8BD            shr al,byte 0xbd
0000517C  DFE9              fucomip st1
0000517E  4C                dec sp
0000517F  00B91500          add [bx+di+0x15],bh
00005183  E84BBE            call word 0xfd1
00005186  BFBA14            mov di,0x14ba
00005189  1E                push ds
0000518A  57                push di
0000518B  BFBB14            mov di,0x14bb
0000518E  1E                push ds
0000518F  57                push di
00005190  E8A1F8            call word 0x4a34
00005193  B91200            mov cx,0x12
00005196  E838BE            call word 0xfd1
00005199  A0BA14            mov al,[0x14ba]
0000519C  32E4              xor ah,ah
0000519E  50                push ax
0000519F  A0BB14            mov al,[0x14bb]
000051A2  32E4              xor ah,ah
000051A4  50                push ax
000051A5  E8B1F1            call word 0x4359
000051A8  A0CC03            mov al,[0x3cc]
000051AB  32E4              xor ah,ah
000051AD  0BC0              or ax,ax
000051AF  7503              jnz 0x51b4
000051B1  E91800            jmp word 0x51cc
000051B4  B90601            mov cx,0x106
000051B7  E817BE            call word 0xfd1
000051BA  E828C0            call word 0x11e5
000051BD  06                push es
000051BE  49                dec cx
000051BF  20776F            and [bx+0x6f],dh
000051C2  6E                outsb
000051C3  21B1FFE8          and [bx+di-0x1701],si
000051C7  74C0              jz 0x5189
000051C9  E86EDF            call word 0x313a
000051CC  A0BD14            mov al,[0x14bd]
000051CF  32E4              xor ah,ah
000051D1  3D0000            cmp ax,0x0
000051D4  7403              jz 0x51d9
000051D6  E943FF            jmp word 0x511c
000051D9  E90000            jmp word 0x51dc
000051DC  8BE5              mov sp,bp
000051DE  5D                pop bp
000051DF  C3                ret
000051E0  B90600            mov cx,0x6
000051E3  E8EBBD            call word 0xfd1
000051E6  E8F0FB            call word 0x4dd9
000051E9  B90C00            mov cx,0xc
000051EC  E8E2BD            call word 0xfd1
000051EF  B80100            mov ax,0x1
000051F2  50                push ax
000051F3  E8B1EC            call word 0x3ea7
000051F6  B81300            mov ax,0x13
000051F9  050100            add ax,0x1
000051FC  B90200            mov cx,0x2
000051FF  99                cwd
00005200  F7F9              idiv cx
00005202  A2BA14            mov [0x14ba],al
00005205  A0BA14            mov al,[0x14ba]
00005208  32E4              xor ah,ah
0000520A  A2BB14            mov [0x14bb],al
0000520D  B90F00            mov cx,0xf
00005210  E8BEBD            call word 0xfd1
00005213  A0BA14            mov al,[0x14ba]
00005216  32E4              xor ah,ah
00005218  50                push ax
00005219  A0BB14            mov al,[0x14bb]
0000521C  32E4              xor ah,ah
0000521E  50                push ax
0000521F  BFBC14            mov di,0x14bc
00005222  1E                push ds
00005223  57                push di
00005224  E8F0F9            call word 0x4c17
00005227  B90700            mov cx,0x7
0000522A  E8A4BD            call word 0xfd1
0000522D  4C                dec sp
0000522E  E8D4F7            call word 0x4a05
00005231  7503              jnz 0x5236
00005233  E91300            jmp word 0x5249
00005236  A0BC14            mov al,[0x14bc]
00005239  32E4              xor ah,ah
0000523B  3D5100            cmp ax,0x51
0000523E  7503              jnz 0x5243
00005240  E90600            jmp word 0x5249
00005243  B84E00            mov ax,0x4e
00005246  A2BC14            mov [0x14bc],al
00005249  B90A00            mov cx,0xa
0000524C  E882BD            call word 0xfd1
0000524F  A0BC14            mov al,[0x14bc]
00005252  32E4              xor ah,ah
00005254  50                push ax
00005255  E8A1FB            call word 0x4df9
00005258  A0BC14            mov al,[0x14bc]
0000525B  32E4              xor ah,ah
0000525D  3D4500            cmp ax,0x45
00005260  7403              jz 0x5265
00005262  E90900            jmp word 0x526e
00005265  B90600            mov cx,0x6
00005268  E866BD            call word 0xfd1
0000526B  E825FE            call word 0x5093
0000526E  A0BC14            mov al,[0x14bc]
00005271  32E4              xor ah,ah
00005273  50                push ax
00005274  E885C2            call word 0x14fc
00005277  B85000            mov ax,0x50
0000527A  E891C2            call word 0x150e
0000527D  B84100            mov ax,0x41
00005280  E88BC2            call word 0x150e
00005283  E85BC3            call word 0x15e1
00005286  7503              jnz 0x528b
00005288  E90900            jmp word 0x5294
0000528B  B90600            mov cx,0x6
0000528E  E840BD            call word 0xfd1
00005291  E881FE            call word 0x5115
00005294  A0BC14            mov al,[0x14bc]
00005297  32E4              xor ah,ah
00005299  50                push ax
0000529A  E85FC2            call word 0x14fc
0000529D  B85100            mov ax,0x51
000052A0  E86BC2            call word 0x150e
000052A3  B80300            mov ax,0x3
000052A6  E865C2            call word 0x150e
000052A9  E835C3            call word 0x15e1
000052AC  7503              jnz 0x52b1
000052AE  E95CFF            jmp word 0x520d
000052B1  B90600            mov cx,0x6
000052B4  E81ABD            call word 0xfd1
000052B7  E8FBDA            call word 0x2db5
000052BA  E90000            jmp word 0x52bd
000052BD  33C0              xor ax,ax
000052BF  E8C7B9            call word 0xc89
000052C2  0000              add [bx+si],al
