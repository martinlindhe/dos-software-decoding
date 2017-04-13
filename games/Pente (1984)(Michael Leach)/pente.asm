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
0000016D  0300              add ax,[bx+si]
0000016F  0F07              sysret
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
00000192  B200              mov dl,0x0
00000194  FFA5FE00          jmp word [di+0xfe]
00000198  F0C70612006E00    lock mov word [0x12],0x6e
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
00002D7F  06                push es
00002D80  00410C            add [bx+di+0xc],al
00002D83  01163107          add [0x731],dx
00002D87  40                inc ax
00002D88  0000              add [bx+si],al
00002D8A  0400              add al,0x0
00002D8C  A01000            mov al,[0x10]
00002D8F  0000              add [bx+si],al
00002D91  0000              add [bx+si],al
00002D93  8BEC              mov bp,sp
00002D95  E834DF            call word 0xccc
00002D98  0000              add [bx+si],al
00002D9A  9C                pushfw
00002D9B  2DE92F            sub ax,0x2fe9
00002D9E  44                inc sp
00002D9F  55                push bp
00002DA0  8BEC              mov bp,sp
00002DA2  55                push bp
00002DA3  E90000            jmp word 0x2da6
00002DA6  8A4606            mov al,[bp+0x6]
00002DA9  32E4              xor ah,ah
00002DAB  50                push ax
00002DAC  8A4604            mov al,[bp+0x4]
00002DAF  32E4              xor ah,ah
00002DB1  59                pop cx
00002DB2  91                xchg ax,cx
00002DB3  3BC1              cmp ax,cx
00002DB5  7F03              jg 0x2dba
00002DB7  E90B00            jmp word 0x2dc5
00002DBA  8A4604            mov al,[bp+0x4]
00002DBD  32E4              xor ah,ah
00002DBF  884608            mov [bp+0x8],al
00002DC2  E90800            jmp word 0x2dcd
00002DC5  8A4606            mov al,[bp+0x6]
00002DC8  32E4              xor ah,ah
00002DCA  884608            mov [bp+0x8],al
00002DCD  E90000            jmp word 0x2dd0
00002DD0  8A4608            mov al,[bp+0x8]
00002DD3  32E4              xor ah,ah
00002DD5  8BE5              mov sp,bp
00002DD7  5D                pop bp
00002DD8  C20500            ret 0x5
00002DDB  55                push bp
00002DDC  8BEC              mov bp,sp
00002DDE  55                push bp
00002DDF  E90000            jmp word 0x2de2
00002DE2  8A4606            mov al,[bp+0x6]
00002DE5  32E4              xor ah,ah
00002DE7  50                push ax
00002DE8  8A4604            mov al,[bp+0x4]
00002DEB  32E4              xor ah,ah
00002DED  59                pop cx
00002DEE  91                xchg ax,cx
00002DEF  3BC1              cmp ax,cx
00002DF1  7F03              jg 0x2df6
00002DF3  E90B00            jmp word 0x2e01
00002DF6  8A4606            mov al,[bp+0x6]
00002DF9  32E4              xor ah,ah
00002DFB  884608            mov [bp+0x8],al
00002DFE  E90800            jmp word 0x2e09
00002E01  8A4604            mov al,[bp+0x4]
00002E04  32E4              xor ah,ah
00002E06  884608            mov [bp+0x8],al
00002E09  E90000            jmp word 0x2e0c
00002E0C  8A4608            mov al,[bp+0x8]
00002E0F  32E4              xor ah,ah
00002E11  8BE5              mov sp,bp
00002E13  5D                pop bp
00002E14  C20500            ret 0x5
00002E17  55                push bp
00002E18  8BEC              mov bp,sp
00002E1A  55                push bp
00002E1B  E90000            jmp word 0x2e1e
00002E1E  4C                dec sp
00002E1F  4C                dec sp
00002E20  B80000            mov ax,0x0
00002E23  8946FC            mov [bp-0x4],ax
00002E26  E87BDF            call word 0xda4
00002E29  3401              xor al,0x1
00002E2B  7503              jnz 0x2e30
00002E2D  E90300            jmp word 0x2e33
00002E30  E9F3FF            jmp word 0x2e26
00002E33  BF4A01            mov di,0x14a
00002E36  1E                push ds
00002E37  E801F7            call word 0x253b
00002E3A  BFE303            mov di,0x3e3
00002E3D  1E                push ds
00002E3E  E821F9            call word 0x2762
00002E41  E8DEE1            call word 0x1022
00002E44  A0E303            mov al,[0x3e3]
00002E47  32E4              xor ah,ah
00002E49  3D1B00            cmp ax,0x1b
00002E4C  7403              jz 0x2e51
00002E4E  E97300            jmp word 0x2ec4
00002E51  E850DF            call word 0xda4
00002E54  3401              xor al,0x1
00002E56  50                push ax
00002E57  8B46FC            mov ax,[bp-0x4]
00002E5A  3D6400            cmp ax,0x64
00002E5D  B80100            mov ax,0x1
00002E60  7C01              jl 0x2e63
00002E62  48                dec ax
00002E63  59                pop cx
00002E64  23C1              and ax,cx
00002E66  0BC0              or ax,ax
00002E68  7503              jnz 0x2e6d
00002E6A  E91700            jmp word 0x2e84
00002E6D  8B46FC            mov ax,[bp-0x4]
00002E70  3D6400            cmp ax,0x64
00002E73  7E03              jng 0x2e78
00002E75  E90900            jmp word 0x2e81
00002E78  8B46FC            mov ax,[bp-0x4]
00002E7B  050100            add ax,0x1
00002E7E  8946FC            mov [bp-0x4],ax
00002E81  E9CDFF            jmp word 0x2e51
00002E84  8B46FC            mov ax,[bp-0x4]
00002E87  3D6400            cmp ax,0x64
00002E8A  7C03              jl 0x2e8f
00002E8C  E92300            jmp word 0x2eb2
00002E8F  BF4A01            mov di,0x14a
00002E92  1E                push ds
00002E93  E8A5F6            call word 0x253b
00002E96  BFE303            mov di,0x3e3
00002E99  1E                push ds
00002E9A  E8C5F8            call word 0x2762
00002E9D  E882E1            call word 0x1022
00002EA0  C47E04            les di,[bp+0x4]
00002EA3  06                push es
00002EA4  57                push di
00002EA5  A0E303            mov al,[0x3e3]
00002EA8  32E4              xor ah,ah
00002EAA  5F                pop di
00002EAB  07                pop es
00002EAC  268805            mov [es:di],al
00002EAF  E90F00            jmp word 0x2ec1
00002EB2  C47E04            les di,[bp+0x4]
00002EB5  B81B00            mov ax,0x1b
00002EB8  268805            mov [es:di],al
00002EBB  B80100            mov ax,0x1
00002EBE  A2EC03            mov [0x3ec],al
00002EC1  E90F00            jmp word 0x2ed3
00002EC4  C47E04            les di,[bp+0x4]
00002EC7  06                push es
00002EC8  57                push di
00002EC9  A0E303            mov al,[0x3e3]
00002ECC  32E4              xor ah,ah
00002ECE  5F                pop di
00002ECF  07                pop es
00002ED0  268805            mov [es:di],al
00002ED3  E90000            jmp word 0x2ed6
00002ED6  8BE5              mov sp,bp
00002ED8  5D                pop bp
00002ED9  C20400            ret 0x4
00002EDC  55                push bp
00002EDD  8BEC              mov bp,sp
00002EDF  55                push bp
00002EE0  E90000            jmp word 0x2ee3
00002EE3  83EC04            sub sp,byte +0x4
00002EE6  B80100            mov ax,0x1
00002EE9  8946FA            mov [bp-0x6],ax
00002EEC  B80100            mov ax,0x1
00002EEF  50                push ax
00002EF0  8B4604            mov ax,[bp+0x4]
00002EF3  59                pop cx
00002EF4  91                xchg ax,cx
00002EF5  2BC8              sub cx,ax
00002EF7  7D03              jnl 0x2efc
00002EF9  E91800            jmp word 0x2f14
00002EFC  41                inc cx
00002EFD  8946FC            mov [bp-0x4],ax
00002F00  51                push cx
00002F01  8B46FA            mov ax,[bp-0x6]
00002F04  F76E06            imul word [bp+0x6]
00002F07  8946FA            mov [bp-0x6],ax
00002F0A  59                pop cx
00002F0B  49                dec cx
00002F0C  7406              jz 0x2f14
00002F0E  FF46FC            inc word [bp-0x4]
00002F11  E9ECFF            jmp word 0x2f00
00002F14  8B46FA            mov ax,[bp-0x6]
00002F17  894608            mov [bp+0x8],ax
00002F1A  E90000            jmp word 0x2f1d
00002F1D  8B4608            mov ax,[bp+0x8]
00002F20  8BE5              mov sp,bp
00002F22  5D                pop bp
00002F23  C20600            ret 0x6
00002F26  55                push bp
00002F27  8BEC              mov bp,sp
00002F29  55                push bp
00002F2A  E90000            jmp word 0x2f2d
00002F2D  A0E103            mov al,[0x3e1]
00002F30  32E4              xor ah,ah
00002F32  3D0300            cmp ax,0x3
00002F35  7403              jz 0x2f3a
00002F37  E90900            jmp word 0x2f43
00002F3A  B80D00            mov ax,0xd
00002F3D  E87BD4            call word 0x3bb
00002F40  E90600            jmp word 0x2f49
00002F43  B80E00            mov ax,0xe
00002F46  E872D4            call word 0x3bb
00002F49  A1D903            mov ax,[0x3d9]
00002F4C  2D0100            sub ax,0x1
00002F4F  50                push ax
00002F50  A1DB03            mov ax,[0x3db]
00002F53  E854DE            call word 0xdaa
00002F56  E8FFF5            call word 0x2558
00002F59  B83C00            mov ax,0x3c
00002F5C  50                push ax
00002F5D  B80000            mov ax,0x0
00002F60  E83AF9            call word 0x289d
00002F63  E8BCE0            call word 0x1022
00002F66  A1D903            mov ax,[0x3d9]
00002F69  050100            add ax,0x1
00002F6C  50                push ax
00002F6D  A1DB03            mov ax,[0x3db]
00002F70  E837DE            call word 0xdaa
00002F73  E8E2F5            call word 0x2558
00002F76  B83E00            mov ax,0x3e
00002F79  50                push ax
00002F7A  B80000            mov ax,0x0
00002F7D  E81DF9            call word 0x289d
00002F80  E89FE0            call word 0x1022
00002F83  B80100            mov ax,0x1
00002F86  50                push ax
00002F87  B81800            mov ax,0x18
00002F8A  E81DDE            call word 0xdaa
00002F8D  E90000            jmp word 0x2f90
00002F90  8BE5              mov sp,bp
00002F92  5D                pop bp
00002F93  C3                ret
00002F94  55                push bp
00002F95  8BEC              mov bp,sp
00002F97  55                push bp
00002F98  E90000            jmp word 0x2f9b
00002F9B  4C                dec sp
00002F9C  4C                dec sp
00002F9D  A1F203            mov ax,[0x3f2]
00002FA0  E818D4            call word 0x3bb
00002FA3  A0CF03            mov al,[0x3cf]
00002FA6  32E4              xor ah,ah
00002FA8  3D0100            cmp ax,0x1
00002FAB  7403              jz 0x2fb0
00002FAD  E90900            jmp word 0x2fb9
00002FB0  B82000            mov ax,0x20
00002FB3  8846FD            mov [bp-0x3],al
00002FB6  E93600            jmp word 0x2fef
00002FB9  A0D003            mov al,[0x3d0]
00002FBC  32E4              xor ah,ah
00002FBE  3D0100            cmp ax,0x1
00002FC1  B80100            mov ax,0x1
00002FC4  7401              jz 0x2fc7
00002FC6  48                dec ax
00002FC7  50                push ax
00002FC8  A0D003            mov al,[0x3d0]
00002FCB  32E4              xor ah,ah
00002FCD  3D1300            cmp ax,0x13
00002FD0  B80100            mov ax,0x1
00002FD3  7401              jz 0x2fd6
00002FD5  48                dec ax
00002FD6  59                pop cx
00002FD7  0BC1              or ax,cx
00002FD9  0BC0              or ax,ax
00002FDB  7503              jnz 0x2fe0
00002FDD  E90900            jmp word 0x2fe9
00002FE0  B8CD00            mov ax,0xcd
00002FE3  8846FD            mov [bp-0x3],al
00002FE6  E90600            jmp word 0x2fef
00002FE9  B8C400            mov ax,0xc4
00002FEC  8846FD            mov [bp-0x3],al
00002FEF  A0CF03            mov al,[0x3cf]
00002FF2  32E4              xor ah,ah
00002FF4  3D1300            cmp ax,0x13
00002FF7  7403              jz 0x2ffc
00002FF9  E90900            jmp word 0x3005
00002FFC  B82000            mov ax,0x20
00002FFF  8846FC            mov [bp-0x4],al
00003002  E93600            jmp word 0x303b
00003005  A0D003            mov al,[0x3d0]
00003008  32E4              xor ah,ah
0000300A  3D0100            cmp ax,0x1
0000300D  B80100            mov ax,0x1
00003010  7401              jz 0x3013
00003012  48                dec ax
00003013  50                push ax
00003014  A0D003            mov al,[0x3d0]
00003017  32E4              xor ah,ah
00003019  3D1300            cmp ax,0x13
0000301C  B80100            mov ax,0x1
0000301F  7401              jz 0x3022
00003021  48                dec ax
00003022  59                pop cx
00003023  0BC1              or ax,cx
00003025  0BC0              or ax,ax
00003027  7503              jnz 0x302c
00003029  E90900            jmp word 0x3035
0000302C  B8CD00            mov ax,0xcd
0000302F  8846FC            mov [bp-0x4],al
00003032  E90600            jmp word 0x303b
00003035  B8C400            mov ax,0xc4
00003038  8846FC            mov [bp-0x4],al
0000303B  A1D903            mov ax,[0x3d9]
0000303E  2D0100            sub ax,0x1
00003041  50                push ax
00003042  A1DB03            mov ax,[0x3db]
00003045  E862DD            call word 0xdaa
00003048  E80DF5            call word 0x2558
0000304B  8A46FD            mov al,[bp-0x3]
0000304E  32E4              xor ah,ah
00003050  50                push ax
00003051  B80000            mov ax,0x0
00003054  E846F8            call word 0x289d
00003057  E8C8DF            call word 0x1022
0000305A  A1D903            mov ax,[0x3d9]
0000305D  050100            add ax,0x1
00003060  50                push ax
00003061  A1DB03            mov ax,[0x3db]
00003064  E843DD            call word 0xdaa
00003067  E8EEF4            call word 0x2558
0000306A  8A46FC            mov al,[bp-0x4]
0000306D  32E4              xor ah,ah
0000306F  50                push ax
00003070  B80000            mov ax,0x0
00003073  E827F8            call word 0x289d
00003076  E8A9DF            call word 0x1022
00003079  A1D903            mov ax,[0x3d9]
0000307C  50                push ax
0000307D  A1DB03            mov ax,[0x3db]
00003080  E827DD            call word 0xdaa
00003083  E90000            jmp word 0x3086
00003086  8BE5              mov sp,bp
00003088  5D                pop bp
00003089  C3                ret
0000308A  55                push bp
0000308B  8BEC              mov bp,sp
0000308D  55                push bp
0000308E  E90000            jmp word 0x3091
00003091  83EC04            sub sp,byte +0x4
00003094  B80000            mov ax,0x0
00003097  8946FB            mov [bp-0x5],ax
0000309A  8A4604            mov al,[bp+0x4]
0000309D  32E4              xor ah,ah
0000309F  3D0200            cmp ax,0x2
000030A2  7403              jz 0x30a7
000030A4  E90900            jmp word 0x30b0
000030A7  B80300            mov ax,0x3
000030AA  8846FD            mov [bp-0x3],al
000030AD  E90600            jmp word 0x30b6
000030B0  B80200            mov ax,0x2
000030B3  8846FD            mov [bp-0x3],al
000030B6  8A460A            mov al,[bp+0xa]
000030B9  32E4              xor ah,ah
000030BB  B91300            mov cx,0x13
000030BE  F7E1              mul cx
000030C0  97                xchg ax,di
000030C1  57                push di
000030C2  8A4608            mov al,[bp+0x8]
000030C5  32E4              xor ah,ah
000030C7  5F                pop di
000030C8  03F8              add di,ax
000030CA  8A854C02          mov al,[di+0x24c]
000030CE  32E4              xor ah,ah
000030D0  50                push ax
000030D1  8A46FD            mov al,[bp-0x3]
000030D4  32E4              xor ah,ah
000030D6  59                pop cx
000030D7  91                xchg ax,cx
000030D8  3BC1              cmp ax,cx
000030DA  7403              jz 0x30df
000030DC  E9FA01            jmp word 0x32d9
000030DF  8A4612            mov al,[bp+0x12]
000030E2  32E4              xor ah,ah
000030E4  B91300            mov cx,0x13
000030E7  F7E1              mul cx
000030E9  97                xchg ax,di
000030EA  57                push di
000030EB  8A4610            mov al,[bp+0x10]
000030EE  32E4              xor ah,ah
000030F0  5F                pop di
000030F1  03F8              add di,ax
000030F3  8A854C02          mov al,[di+0x24c]
000030F7  32E4              xor ah,ah
000030F9  50                push ax
000030FA  8A4604            mov al,[bp+0x4]
000030FD  32E4              xor ah,ah
000030FF  59                pop cx
00003100  91                xchg ax,cx
00003101  3BC1              cmp ax,cx
00003103  7403              jz 0x3108
00003105  E9D101            jmp word 0x32d9
00003108  8A460E            mov al,[bp+0xe]
0000310B  32E4              xor ah,ah
0000310D  B91300            mov cx,0x13
00003110  F7E1              mul cx
00003112  97                xchg ax,di
00003113  57                push di
00003114  8A460C            mov al,[bp+0xc]
00003117  32E4              xor ah,ah
00003119  5F                pop di
0000311A  03F8              add di,ax
0000311C  8A854C02          mov al,[di+0x24c]
00003120  32E4              xor ah,ah
00003122  50                push ax
00003123  8A4604            mov al,[bp+0x4]
00003126  32E4              xor ah,ah
00003128  59                pop cx
00003129  91                xchg ax,cx
0000312A  3BC1              cmp ax,cx
0000312C  7403              jz 0x3131
0000312E  E9A801            jmp word 0x32d9
00003131  B80100            mov ax,0x1
00003134  8946FB            mov [bp-0x5],ax
00003137  8A4606            mov al,[bp+0x6]
0000313A  32E4              xor ah,ah
0000313C  0BC0              or ax,ax
0000313E  7503              jnz 0x3143
00003140  E99301            jmp word 0x32d6
00003143  8A4612            mov al,[bp+0x12]
00003146  32E4              xor ah,ah
00003148  B91300            mov cx,0x13
0000314B  F7E1              mul cx
0000314D  97                xchg ax,di
0000314E  57                push di
0000314F  8A4610            mov al,[bp+0x10]
00003152  32E4              xor ah,ah
00003154  5F                pop di
00003155  03F8              add di,ax
00003157  B80100            mov ax,0x1
0000315A  88854C02          mov [di+0x24c],al
0000315E  8A460E            mov al,[bp+0xe]
00003161  32E4              xor ah,ah
00003163  B91300            mov cx,0x13
00003166  F7E1              mul cx
00003168  97                xchg ax,di
00003169  57                push di
0000316A  8A460C            mov al,[bp+0xc]
0000316D  32E4              xor ah,ah
0000316F  5F                pop di
00003170  03F8              add di,ax
00003172  B80100            mov ax,0x1
00003175  88854C02          mov [di+0x24c],al
00003179  A0E003            mov al,[0x3e0]
0000317C  32E4              xor ah,ah
0000317E  D1E0              shl ax,1
00003180  97                xchg ax,di
00003181  57                push di
00003182  A0E003            mov al,[0x3e0]
00003185  32E4              xor ah,ah
00003187  D1E0              shl ax,1
00003189  97                xchg ax,di
0000318A  8B85C703          mov ax,[di+0x3c7]
0000318E  050100            add ax,0x1
00003191  5F                pop di
00003192  8985C703          mov [di+0x3c7],ax
00003196  A0E003            mov al,[0x3e0]
00003199  32E4              xor ah,ah
0000319B  3D0200            cmp ax,0x2
0000319E  7403              jz 0x31a3
000031A0  E93D00            jmp word 0x31e0
000031A3  B80E00            mov ax,0xe
000031A6  E812D2            call word 0x3bb
000031A9  B80100            mov ax,0x1
000031AC  50                push ax
000031AD  A1CB03            mov ax,[0x3cb]
000031B0  E8F7DB            call word 0xdaa
000031B3  E8A2F3            call word 0x2558
000031B6  B82300            mov ax,0x23
000031B9  50                push ax
000031BA  B80000            mov ax,0x0
000031BD  E8DDF6            call word 0x289d
000031C0  E85FDE            call word 0x1022
000031C3  B80300            mov ax,0x3
000031C6  50                push ax
000031C7  A1CB03            mov ax,[0x3cb]
000031CA  E8DDDB            call word 0xdaa
000031CD  E888F3            call word 0x2558
000031D0  B82300            mov ax,0x23
000031D3  50                push ax
000031D4  B80000            mov ax,0x0
000031D7  E8C3F6            call word 0x289d
000031DA  E845DE            call word 0x1022
000031DD  E93A00            jmp word 0x321a
000031E0  B80D00            mov ax,0xd
000031E3  E8D5D1            call word 0x3bb
000031E6  B84E00            mov ax,0x4e
000031E9  50                push ax
000031EA  A1CD03            mov ax,[0x3cd]
000031ED  E8BADB            call word 0xdaa
000031F0  E865F3            call word 0x2558
000031F3  B84F00            mov ax,0x4f
000031F6  50                push ax
000031F7  B80000            mov ax,0x0
000031FA  E8A0F6            call word 0x289d
000031FD  E822DE            call word 0x1022
00003200  B85000            mov ax,0x50
00003203  50                push ax
00003204  A1CD03            mov ax,[0x3cd]
00003207  E8A0DB            call word 0xdaa
0000320A  E84BF3            call word 0x2558
0000320D  B84F00            mov ax,0x4f
00003210  50                push ax
00003211  B80000            mov ax,0x0
00003214  E886F6            call word 0x289d
00003217  E808DE            call word 0x1022
0000321A  A1F203            mov ax,[0x3f2]
0000321D  E89BD1            call word 0x3bb
00003220  8A460E            mov al,[bp+0xe]
00003223  32E4              xor ah,ah
00003225  3D0100            cmp ax,0x1
00003228  7403              jz 0x322d
0000322A  E90900            jmp word 0x3236
0000322D  B8C700            mov ax,0xc7
00003230  8846FA            mov [bp-0x6],al
00003233  E94800            jmp word 0x327e
00003236  8A460E            mov al,[bp+0xe]
00003239  32E4              xor ah,ah
0000323B  3D1300            cmp ax,0x13
0000323E  7403              jz 0x3243
00003240  E90900            jmp word 0x324c
00003243  B8B600            mov ax,0xb6
00003246  8846FA            mov [bp-0x6],al
00003249  E93200            jmp word 0x327e
0000324C  8A460C            mov al,[bp+0xc]
0000324F  32E4              xor ah,ah
00003251  3D0100            cmp ax,0x1
00003254  7403              jz 0x3259
00003256  E90900            jmp word 0x3262
00003259  B8D100            mov ax,0xd1
0000325C  8846FA            mov [bp-0x6],al
0000325F  E91C00            jmp word 0x327e
00003262  8A460C            mov al,[bp+0xc]
00003265  32E4              xor ah,ah
00003267  3D1300            cmp ax,0x13
0000326A  7403              jz 0x326f
0000326C  E90900            jmp word 0x3278
0000326F  B8CF00            mov ax,0xcf
00003272  8846FA            mov [bp-0x6],al
00003275  E90600            jmp word 0x327e
00003278  B8C500            mov ax,0xc5
0000327B  8846FA            mov [bp-0x6],al
0000327E  B80B00            mov ax,0xb
00003281  50                push ax
00003282  8A4612            mov al,[bp+0x12]
00003285  32E4              xor ah,ah
00003287  B90300            mov cx,0x3
0000328A  F7E9              imul cx
0000328C  59                pop cx
0000328D  03C1              add ax,cx
0000328F  50                push ax
00003290  8A4610            mov al,[bp+0x10]
00003293  32E4              xor ah,ah
00003295  E812DB            call word 0xdaa
00003298  E8BDF2            call word 0x2558
0000329B  8A46FA            mov al,[bp-0x6]
0000329E  32E4              xor ah,ah
000032A0  50                push ax
000032A1  B80000            mov ax,0x0
000032A4  E8F6F5            call word 0x289d
000032A7  E878DD            call word 0x1022
000032AA  B80B00            mov ax,0xb
000032AD  50                push ax
000032AE  8A460E            mov al,[bp+0xe]
000032B1  32E4              xor ah,ah
000032B3  B90300            mov cx,0x3
000032B6  F7E9              imul cx
000032B8  59                pop cx
000032B9  03C1              add ax,cx
000032BB  50                push ax
000032BC  8A460C            mov al,[bp+0xc]
000032BF  32E4              xor ah,ah
000032C1  E8E6DA            call word 0xdaa
000032C4  E891F2            call word 0x2558
000032C7  8A46FA            mov al,[bp-0x6]
000032CA  32E4              xor ah,ah
000032CC  50                push ax
000032CD  B80000            mov ax,0x0
000032D0  E8CAF5            call word 0x289d
000032D3  E84CDD            call word 0x1022
000032D6  E90000            jmp word 0x32d9
000032D9  8B46FB            mov ax,[bp-0x5]
000032DC  894618            mov [bp+0x18],ax
000032DF  E90000            jmp word 0x32e2
000032E2  8B4618            mov ax,[bp+0x18]
000032E5  8BE5              mov sp,bp
000032E7  5D                pop bp
000032E8  C21600            ret 0x16
000032EB  55                push bp
000032EC  8BEC              mov bp,sp
000032EE  55                push bp
000032EF  E90000            jmp word 0x32f2
000032F2  4C                dec sp
000032F3  4C                dec sp
000032F4  B80000            mov ax,0x0
000032F7  8946FC            mov [bp-0x4],ax
000032FA  C47E08            les di,[bp+0x8]
000032FD  268A05            mov al,[es:di]
00003300  32E4              xor ah,ah
00003302  3D0300            cmp ax,0x3
00003305  7F03              jg 0x330a
00003307  E97200            jmp word 0x337c
0000330A  8B46FC            mov ax,[bp-0x4]
0000330D  50                push ax
0000330E  B92000            mov cx,0x20
00003311  E8BDDC            call word 0xfd1
00003314  4C                dec sp
00003315  4C                dec sp
00003316  C47E0C            les di,[bp+0xc]
00003319  268A05            mov al,[es:di]
0000331C  32E4              xor ah,ah
0000331E  50                push ax
0000331F  C47E08            les di,[bp+0x8]
00003322  268A05            mov al,[es:di]
00003325  32E4              xor ah,ah
00003327  50                push ax
00003328  C47E0C            les di,[bp+0xc]
0000332B  268A05            mov al,[es:di]
0000332E  32E4              xor ah,ah
00003330  50                push ax
00003331  C47E08            les di,[bp+0x8]
00003334  268A05            mov al,[es:di]
00003337  32E4              xor ah,ah
00003339  2D0100            sub ax,0x1
0000333C  50                push ax
0000333D  C47E0C            les di,[bp+0xc]
00003340  268A05            mov al,[es:di]
00003343  32E4              xor ah,ah
00003345  50                push ax
00003346  C47E08            les di,[bp+0x8]
00003349  268A05            mov al,[es:di]
0000334C  32E4              xor ah,ah
0000334E  2D0200            sub ax,0x2
00003351  50                push ax
00003352  C47E0C            les di,[bp+0xc]
00003355  268A05            mov al,[es:di]
00003358  32E4              xor ah,ah
0000335A  50                push ax
0000335B  C47E08            les di,[bp+0x8]
0000335E  268A05            mov al,[es:di]
00003361  32E4              xor ah,ah
00003363  2D0300            sub ax,0x3
00003366  50                push ax
00003367  8A4606            mov al,[bp+0x6]
0000336A  32E4              xor ah,ah
0000336C  50                push ax
0000336D  8A4604            mov al,[bp+0x4]
00003370  32E4              xor ah,ah
00003372  50                push ax
00003373  E814FD            call word 0x308a
00003376  59                pop cx
00003377  03C1              add ax,cx
00003379  8946FC            mov [bp-0x4],ax
0000337C  C47E08            les di,[bp+0x8]
0000337F  268A05            mov al,[es:di]
00003382  32E4              xor ah,ah
00003384  3D1100            cmp ax,0x11
00003387  7C03              jl 0x338c
00003389  E97200            jmp word 0x33fe
0000338C  8B46FC            mov ax,[bp-0x4]
0000338F  50                push ax
00003390  B92000            mov cx,0x20
00003393  E83BDC            call word 0xfd1
00003396  4C                dec sp
00003397  4C                dec sp
00003398  C47E0C            les di,[bp+0xc]
0000339B  268A05            mov al,[es:di]
0000339E  32E4              xor ah,ah
000033A0  50                push ax
000033A1  C47E08            les di,[bp+0x8]
000033A4  268A05            mov al,[es:di]
000033A7  32E4              xor ah,ah
000033A9  50                push ax
000033AA  C47E0C            les di,[bp+0xc]
000033AD  268A05            mov al,[es:di]
000033B0  32E4              xor ah,ah
000033B2  50                push ax
000033B3  C47E08            les di,[bp+0x8]
000033B6  268A05            mov al,[es:di]
000033B9  32E4              xor ah,ah
000033BB  050100            add ax,0x1
000033BE  50                push ax
000033BF  C47E0C            les di,[bp+0xc]
000033C2  268A05            mov al,[es:di]
000033C5  32E4              xor ah,ah
000033C7  50                push ax
000033C8  C47E08            les di,[bp+0x8]
000033CB  268A05            mov al,[es:di]
000033CE  32E4              xor ah,ah
000033D0  050200            add ax,0x2
000033D3  50                push ax
000033D4  C47E0C            les di,[bp+0xc]
000033D7  268A05            mov al,[es:di]
000033DA  32E4              xor ah,ah
000033DC  50                push ax
000033DD  C47E08            les di,[bp+0x8]
000033E0  268A05            mov al,[es:di]
000033E3  32E4              xor ah,ah
000033E5  050300            add ax,0x3
000033E8  50                push ax
000033E9  8A4606            mov al,[bp+0x6]
000033EC  32E4              xor ah,ah
000033EE  50                push ax
000033EF  8A4604            mov al,[bp+0x4]
000033F2  32E4              xor ah,ah
000033F4  50                push ax
000033F5  E892FC            call word 0x308a
000033F8  59                pop cx
000033F9  03C1              add ax,cx
000033FB  8946FC            mov [bp-0x4],ax
000033FE  C47E0C            les di,[bp+0xc]
00003401  268A05            mov al,[es:di]
00003404  32E4              xor ah,ah
00003406  3D0300            cmp ax,0x3
00003409  7F03              jg 0x340e
0000340B  E97200            jmp word 0x3480
0000340E  8B46FC            mov ax,[bp-0x4]
00003411  50                push ax
00003412  B92000            mov cx,0x20
00003415  E8B9DB            call word 0xfd1
00003418  4C                dec sp
00003419  4C                dec sp
0000341A  C47E0C            les di,[bp+0xc]
0000341D  268A05            mov al,[es:di]
00003420  32E4              xor ah,ah
00003422  50                push ax
00003423  C47E08            les di,[bp+0x8]
00003426  268A05            mov al,[es:di]
00003429  32E4              xor ah,ah
0000342B  50                push ax
0000342C  C47E0C            les di,[bp+0xc]
0000342F  268A05            mov al,[es:di]
00003432  32E4              xor ah,ah
00003434  2D0100            sub ax,0x1
00003437  50                push ax
00003438  C47E08            les di,[bp+0x8]
0000343B  268A05            mov al,[es:di]
0000343E  32E4              xor ah,ah
00003440  50                push ax
00003441  C47E0C            les di,[bp+0xc]
00003444  268A05            mov al,[es:di]
00003447  32E4              xor ah,ah
00003449  2D0200            sub ax,0x2
0000344C  50                push ax
0000344D  C47E08            les di,[bp+0x8]
00003450  268A05            mov al,[es:di]
00003453  32E4              xor ah,ah
00003455  50                push ax
00003456  C47E0C            les di,[bp+0xc]
00003459  268A05            mov al,[es:di]
0000345C  32E4              xor ah,ah
0000345E  2D0300            sub ax,0x3
00003461  50                push ax
00003462  C47E08            les di,[bp+0x8]
00003465  268A05            mov al,[es:di]
00003468  32E4              xor ah,ah
0000346A  50                push ax
0000346B  8A4606            mov al,[bp+0x6]
0000346E  32E4              xor ah,ah
00003470  50                push ax
00003471  8A4604            mov al,[bp+0x4]
00003474  32E4              xor ah,ah
00003476  50                push ax
00003477  E810FC            call word 0x308a
0000347A  59                pop cx
0000347B  03C1              add ax,cx
0000347D  8946FC            mov [bp-0x4],ax
00003480  C47E0C            les di,[bp+0xc]
00003483  268A05            mov al,[es:di]
00003486  32E4              xor ah,ah
00003488  3D1100            cmp ax,0x11
0000348B  7C03              jl 0x3490
0000348D  E97200            jmp word 0x3502
00003490  8B46FC            mov ax,[bp-0x4]
00003493  50                push ax
00003494  B92000            mov cx,0x20
00003497  E837DB            call word 0xfd1
0000349A  4C                dec sp
0000349B  4C                dec sp
0000349C  C47E0C            les di,[bp+0xc]
0000349F  268A05            mov al,[es:di]
000034A2  32E4              xor ah,ah
000034A4  50                push ax
000034A5  C47E08            les di,[bp+0x8]
000034A8  268A05            mov al,[es:di]
000034AB  32E4              xor ah,ah
000034AD  50                push ax
000034AE  C47E0C            les di,[bp+0xc]
000034B1  268A05            mov al,[es:di]
000034B4  32E4              xor ah,ah
000034B6  050100            add ax,0x1
000034B9  50                push ax
000034BA  C47E08            les di,[bp+0x8]
000034BD  268A05            mov al,[es:di]
000034C0  32E4              xor ah,ah
000034C2  50                push ax
000034C3  C47E0C            les di,[bp+0xc]
000034C6  268A05            mov al,[es:di]
000034C9  32E4              xor ah,ah
000034CB  050200            add ax,0x2
000034CE  50                push ax
000034CF  C47E08            les di,[bp+0x8]
000034D2  268A05            mov al,[es:di]
000034D5  32E4              xor ah,ah
000034D7  50                push ax
000034D8  C47E0C            les di,[bp+0xc]
000034DB  268A05            mov al,[es:di]
000034DE  32E4              xor ah,ah
000034E0  050300            add ax,0x3
000034E3  50                push ax
000034E4  C47E08            les di,[bp+0x8]
000034E7  268A05            mov al,[es:di]
000034EA  32E4              xor ah,ah
000034EC  50                push ax
000034ED  8A4606            mov al,[bp+0x6]
000034F0  32E4              xor ah,ah
000034F2  50                push ax
000034F3  8A4604            mov al,[bp+0x4]
000034F6  32E4              xor ah,ah
000034F8  50                push ax
000034F9  E88EFB            call word 0x308a
000034FC  59                pop cx
000034FD  03C1              add ax,cx
000034FF  8946FC            mov [bp-0x4],ax
00003502  C47E08            les di,[bp+0x8]
00003505  268A05            mov al,[es:di]
00003508  32E4              xor ah,ah
0000350A  3D0300            cmp ax,0x3
0000350D  B80100            mov ax,0x1
00003510  7F01              jg 0x3513
00003512  48                dec ax
00003513  50                push ax
00003514  C47E0C            les di,[bp+0xc]
00003517  268A05            mov al,[es:di]
0000351A  32E4              xor ah,ah
0000351C  3D0200            cmp ax,0x2
0000351F  B80100            mov ax,0x1
00003522  7F01              jg 0x3525
00003524  48                dec ax
00003525  59                pop cx
00003526  23C1              and ax,cx
00003528  0BC0              or ax,ax
0000352A  7503              jnz 0x352f
0000352C  E97B00            jmp word 0x35aa
0000352F  8B46FC            mov ax,[bp-0x4]
00003532  50                push ax
00003533  B92000            mov cx,0x20
00003536  E898DA            call word 0xfd1
00003539  4C                dec sp
0000353A  4C                dec sp
0000353B  C47E0C            les di,[bp+0xc]
0000353E  268A05            mov al,[es:di]
00003541  32E4              xor ah,ah
00003543  50                push ax
00003544  C47E08            les di,[bp+0x8]
00003547  268A05            mov al,[es:di]
0000354A  32E4              xor ah,ah
0000354C  50                push ax
0000354D  C47E0C            les di,[bp+0xc]
00003550  268A05            mov al,[es:di]
00003553  32E4              xor ah,ah
00003555  2D0100            sub ax,0x1
00003558  50                push ax
00003559  C47E08            les di,[bp+0x8]
0000355C  268A05            mov al,[es:di]
0000355F  32E4              xor ah,ah
00003561  2D0100            sub ax,0x1
00003564  50                push ax
00003565  C47E0C            les di,[bp+0xc]
00003568  268A05            mov al,[es:di]
0000356B  32E4              xor ah,ah
0000356D  2D0200            sub ax,0x2
00003570  50                push ax
00003571  C47E08            les di,[bp+0x8]
00003574  268A05            mov al,[es:di]
00003577  32E4              xor ah,ah
00003579  2D0200            sub ax,0x2
0000357C  50                push ax
0000357D  C47E0C            les di,[bp+0xc]
00003580  268A05            mov al,[es:di]
00003583  32E4              xor ah,ah
00003585  2D0300            sub ax,0x3
00003588  50                push ax
00003589  C47E08            les di,[bp+0x8]
0000358C  268A05            mov al,[es:di]
0000358F  32E4              xor ah,ah
00003591  2D0300            sub ax,0x3
00003594  50                push ax
00003595  8A4606            mov al,[bp+0x6]
00003598  32E4              xor ah,ah
0000359A  50                push ax
0000359B  8A4604            mov al,[bp+0x4]
0000359E  32E4              xor ah,ah
000035A0  50                push ax
000035A1  E8E6FA            call word 0x308a
000035A4  59                pop cx
000035A5  03C1              add ax,cx
000035A7  8946FC            mov [bp-0x4],ax
000035AA  C47E08            les di,[bp+0x8]
000035AD  268A05            mov al,[es:di]
000035B0  32E4              xor ah,ah
000035B2  3D0300            cmp ax,0x3
000035B5  B80100            mov ax,0x1
000035B8  7F01              jg 0x35bb
000035BA  48                dec ax
000035BB  50                push ax
000035BC  C47E0C            les di,[bp+0xc]
000035BF  268A05            mov al,[es:di]
000035C2  32E4              xor ah,ah
000035C4  3D1100            cmp ax,0x11
000035C7  B80100            mov ax,0x1
000035CA  7C01              jl 0x35cd
000035CC  48                dec ax
000035CD  59                pop cx
000035CE  23C1              and ax,cx
000035D0  0BC0              or ax,ax
000035D2  7503              jnz 0x35d7
000035D4  E97B00            jmp word 0x3652
000035D7  8B46FC            mov ax,[bp-0x4]
000035DA  50                push ax
000035DB  B92000            mov cx,0x20
000035DE  E8F0D9            call word 0xfd1
000035E1  4C                dec sp
000035E2  4C                dec sp
000035E3  C47E0C            les di,[bp+0xc]
000035E6  268A05            mov al,[es:di]
000035E9  32E4              xor ah,ah
000035EB  50                push ax
000035EC  C47E08            les di,[bp+0x8]
000035EF  268A05            mov al,[es:di]
000035F2  32E4              xor ah,ah
000035F4  50                push ax
000035F5  C47E0C            les di,[bp+0xc]
000035F8  268A05            mov al,[es:di]
000035FB  32E4              xor ah,ah
000035FD  050100            add ax,0x1
00003600  50                push ax
00003601  C47E08            les di,[bp+0x8]
00003604  268A05            mov al,[es:di]
00003607  32E4              xor ah,ah
00003609  2D0100            sub ax,0x1
0000360C  50                push ax
0000360D  C47E0C            les di,[bp+0xc]
00003610  268A05            mov al,[es:di]
00003613  32E4              xor ah,ah
00003615  050200            add ax,0x2
00003618  50                push ax
00003619  C47E08            les di,[bp+0x8]
0000361C  268A05            mov al,[es:di]
0000361F  32E4              xor ah,ah
00003621  2D0200            sub ax,0x2
00003624  50                push ax
00003625  C47E0C            les di,[bp+0xc]
00003628  268A05            mov al,[es:di]
0000362B  32E4              xor ah,ah
0000362D  050300            add ax,0x3
00003630  50                push ax
00003631  C47E08            les di,[bp+0x8]
00003634  268A05            mov al,[es:di]
00003637  32E4              xor ah,ah
00003639  2D0300            sub ax,0x3
0000363C  50                push ax
0000363D  8A4606            mov al,[bp+0x6]
00003640  32E4              xor ah,ah
00003642  50                push ax
00003643  8A4604            mov al,[bp+0x4]
00003646  32E4              xor ah,ah
00003648  50                push ax
00003649  E83EFA            call word 0x308a
0000364C  59                pop cx
0000364D  03C1              add ax,cx
0000364F  8946FC            mov [bp-0x4],ax
00003652  C47E08            les di,[bp+0x8]
00003655  268A05            mov al,[es:di]
00003658  32E4              xor ah,ah
0000365A  3D1100            cmp ax,0x11
0000365D  B80100            mov ax,0x1
00003660  7C01              jl 0x3663
00003662  48                dec ax
00003663  50                push ax
00003664  C47E0C            les di,[bp+0xc]
00003667  268A05            mov al,[es:di]
0000366A  32E4              xor ah,ah
0000366C  3D0300            cmp ax,0x3
0000366F  B80100            mov ax,0x1
00003672  7F01              jg 0x3675
00003674  48                dec ax
00003675  59                pop cx
00003676  23C1              and ax,cx
00003678  0BC0              or ax,ax
0000367A  7503              jnz 0x367f
0000367C  E97B00            jmp word 0x36fa
0000367F  8B46FC            mov ax,[bp-0x4]
00003682  50                push ax
00003683  B92000            mov cx,0x20
00003686  E848D9            call word 0xfd1
00003689  4C                dec sp
0000368A  4C                dec sp
0000368B  C47E0C            les di,[bp+0xc]
0000368E  268A05            mov al,[es:di]
00003691  32E4              xor ah,ah
00003693  50                push ax
00003694  C47E08            les di,[bp+0x8]
00003697  268A05            mov al,[es:di]
0000369A  32E4              xor ah,ah
0000369C  50                push ax
0000369D  C47E0C            les di,[bp+0xc]
000036A0  268A05            mov al,[es:di]
000036A3  32E4              xor ah,ah
000036A5  2D0100            sub ax,0x1
000036A8  50                push ax
000036A9  C47E08            les di,[bp+0x8]
000036AC  268A05            mov al,[es:di]
000036AF  32E4              xor ah,ah
000036B1  050100            add ax,0x1
000036B4  50                push ax
000036B5  C47E0C            les di,[bp+0xc]
000036B8  268A05            mov al,[es:di]
000036BB  32E4              xor ah,ah
000036BD  2D0200            sub ax,0x2
000036C0  50                push ax
000036C1  C47E08            les di,[bp+0x8]
000036C4  268A05            mov al,[es:di]
000036C7  32E4              xor ah,ah
000036C9  050200            add ax,0x2
000036CC  50                push ax
000036CD  C47E0C            les di,[bp+0xc]
000036D0  268A05            mov al,[es:di]
000036D3  32E4              xor ah,ah
000036D5  2D0300            sub ax,0x3
000036D8  50                push ax
000036D9  C47E08            les di,[bp+0x8]
000036DC  268A05            mov al,[es:di]
000036DF  32E4              xor ah,ah
000036E1  050300            add ax,0x3
000036E4  50                push ax
000036E5  8A4606            mov al,[bp+0x6]
000036E8  32E4              xor ah,ah
000036EA  50                push ax
000036EB  8A4604            mov al,[bp+0x4]
000036EE  32E4              xor ah,ah
000036F0  50                push ax
000036F1  E896F9            call word 0x308a
000036F4  59                pop cx
000036F5  03C1              add ax,cx
000036F7  8946FC            mov [bp-0x4],ax
000036FA  C47E08            les di,[bp+0x8]
000036FD  268A05            mov al,[es:di]
00003700  32E4              xor ah,ah
00003702  3D1100            cmp ax,0x11
00003705  B80100            mov ax,0x1
00003708  7C01              jl 0x370b
0000370A  48                dec ax
0000370B  50                push ax
0000370C  C47E0C            les di,[bp+0xc]
0000370F  268A05            mov al,[es:di]
00003712  32E4              xor ah,ah
00003714  3D1100            cmp ax,0x11
00003717  B80100            mov ax,0x1
0000371A  7C01              jl 0x371d
0000371C  48                dec ax
0000371D  59                pop cx
0000371E  23C1              and ax,cx
00003720  0BC0              or ax,ax
00003722  7503              jnz 0x3727
00003724  E97B00            jmp word 0x37a2
00003727  8B46FC            mov ax,[bp-0x4]
0000372A  50                push ax
0000372B  B92000            mov cx,0x20
0000372E  E8A0D8            call word 0xfd1
00003731  4C                dec sp
00003732  4C                dec sp
00003733  C47E0C            les di,[bp+0xc]
00003736  268A05            mov al,[es:di]
00003739  32E4              xor ah,ah
0000373B  50                push ax
0000373C  C47E08            les di,[bp+0x8]
0000373F  268A05            mov al,[es:di]
00003742  32E4              xor ah,ah
00003744  50                push ax
00003745  C47E0C            les di,[bp+0xc]
00003748  268A05            mov al,[es:di]
0000374B  32E4              xor ah,ah
0000374D  050100            add ax,0x1
00003750  50                push ax
00003751  C47E08            les di,[bp+0x8]
00003754  268A05            mov al,[es:di]
00003757  32E4              xor ah,ah
00003759  050100            add ax,0x1
0000375C  50                push ax
0000375D  C47E0C            les di,[bp+0xc]
00003760  268A05            mov al,[es:di]
00003763  32E4              xor ah,ah
00003765  050200            add ax,0x2
00003768  50                push ax
00003769  C47E08            les di,[bp+0x8]
0000376C  268A05            mov al,[es:di]
0000376F  32E4              xor ah,ah
00003771  050200            add ax,0x2
00003774  50                push ax
00003775  C47E0C            les di,[bp+0xc]
00003778  268A05            mov al,[es:di]
0000377B  32E4              xor ah,ah
0000377D  050300            add ax,0x3
00003780  50                push ax
00003781  C47E08            les di,[bp+0x8]
00003784  268A05            mov al,[es:di]
00003787  32E4              xor ah,ah
00003789  050300            add ax,0x3
0000378C  50                push ax
0000378D  8A4606            mov al,[bp+0x6]
00003790  32E4              xor ah,ah
00003792  50                push ax
00003793  8A4604            mov al,[bp+0x4]
00003796  32E4              xor ah,ah
00003798  50                push ax
00003799  E8EEF8            call word 0x308a
0000379C  59                pop cx
0000379D  03C1              add ax,cx
0000379F  8946FC            mov [bp-0x4],ax
000037A2  8B46FC            mov ax,[bp-0x4]
000037A5  894610            mov [bp+0x10],ax
000037A8  E90000            jmp word 0x37ab
000037AB  8B4610            mov ax,[bp+0x10]
000037AE  8BE5              mov sp,bp
000037B0  5D                pop bp
000037B1  C20E00            ret 0xe
000037B4  55                push bp
000037B5  8BEC              mov bp,sp
000037B7  55                push bp
000037B8  E90000            jmp word 0x37bb
000037BB  8A4606            mov al,[bp+0x6]
000037BE  32E4              xor ah,ah
000037C0  3D0000            cmp ax,0x0
000037C3  7403              jz 0x37c8
000037C5  E97B00            jmp word 0x3843
000037C8  8A4604            mov al,[bp+0x4]
000037CB  32E4              xor ah,ah
000037CD  3D0000            cmp ax,0x0
000037D0  7403              jz 0x37d5
000037D2  E93700            jmp word 0x380c
000037D5  C47E08            les di,[bp+0x8]
000037D8  268A05            mov al,[es:di]
000037DB  32E4              xor ah,ah
000037DD  3D0100            cmp ax,0x1
000037E0  7403              jz 0x37e5
000037E2  E90900            jmp word 0x37ee
000037E5  B80100            mov ax,0x1
000037E8  884610            mov [bp+0x10],al
000037EB  E91B00            jmp word 0x3809
000037EE  C47E08            les di,[bp+0x8]
000037F1  06                push es
000037F2  57                push di
000037F3  C47E08            les di,[bp+0x8]
000037F6  268A05            mov al,[es:di]
000037F9  32E4              xor ah,ah
000037FB  2D0100            sub ax,0x1
000037FE  5F                pop di
000037FF  07                pop es
00003800  268805            mov [es:di],al
00003803  B80000            mov ax,0x0
00003806  884610            mov [bp+0x10],al
00003809  E93400            jmp word 0x3840
0000380C  C47E08            les di,[bp+0x8]
0000380F  268A05            mov al,[es:di]
00003812  32E4              xor ah,ah
00003814  3D1300            cmp ax,0x13
00003817  7403              jz 0x381c
00003819  E90900            jmp word 0x3825
0000381C  B80100            mov ax,0x1
0000381F  884610            mov [bp+0x10],al
00003822  E91B00            jmp word 0x3840
00003825  C47E08            les di,[bp+0x8]
00003828  06                push es
00003829  57                push di
0000382A  C47E08            les di,[bp+0x8]
0000382D  268A05            mov al,[es:di]
00003830  32E4              xor ah,ah
00003832  050100            add ax,0x1
00003835  5F                pop di
00003836  07                pop es
00003837  268805            mov [es:di],al
0000383A  B80000            mov ax,0x0
0000383D  884610            mov [bp+0x10],al
00003840  E95002            jmp word 0x3a93
00003843  8A4606            mov al,[bp+0x6]
00003846  32E4              xor ah,ah
00003848  3D0200            cmp ax,0x2
0000384B  7403              jz 0x3850
0000384D  E97B00            jmp word 0x38cb
00003850  8A4604            mov al,[bp+0x4]
00003853  32E4              xor ah,ah
00003855  3D0000            cmp ax,0x0
00003858  7403              jz 0x385d
0000385A  E93700            jmp word 0x3894
0000385D  C47E0C            les di,[bp+0xc]
00003860  268A05            mov al,[es:di]
00003863  32E4              xor ah,ah
00003865  3D1300            cmp ax,0x13
00003868  7403              jz 0x386d
0000386A  E90900            jmp word 0x3876
0000386D  B80100            mov ax,0x1
00003870  884610            mov [bp+0x10],al
00003873  E91B00            jmp word 0x3891
00003876  C47E0C            les di,[bp+0xc]
00003879  06                push es
0000387A  57                push di
0000387B  C47E0C            les di,[bp+0xc]
0000387E  268A05            mov al,[es:di]
00003881  32E4              xor ah,ah
00003883  050100            add ax,0x1
00003886  5F                pop di
00003887  07                pop es
00003888  268805            mov [es:di],al
0000388B  B80000            mov ax,0x0
0000388E  884610            mov [bp+0x10],al
00003891  E93400            jmp word 0x38c8
00003894  C47E0C            les di,[bp+0xc]
00003897  268A05            mov al,[es:di]
0000389A  32E4              xor ah,ah
0000389C  3D0100            cmp ax,0x1
0000389F  7403              jz 0x38a4
000038A1  E90900            jmp word 0x38ad
000038A4  B80100            mov ax,0x1
000038A7  884610            mov [bp+0x10],al
000038AA  E91B00            jmp word 0x38c8
000038AD  C47E0C            les di,[bp+0xc]
000038B0  06                push es
000038B1  57                push di
000038B2  C47E0C            les di,[bp+0xc]
000038B5  268A05            mov al,[es:di]
000038B8  32E4              xor ah,ah
000038BA  2D0100            sub ax,0x1
000038BD  5F                pop di
000038BE  07                pop es
000038BF  268805            mov [es:di],al
000038C2  B80000            mov ax,0x0
000038C5  884610            mov [bp+0x10],al
000038C8  E9C801            jmp word 0x3a93
000038CB  8A4606            mov al,[bp+0x6]
000038CE  32E4              xor ah,ah
000038D0  3D0100            cmp ax,0x1
000038D3  7403              jz 0x38d8
000038D5  E9DF00            jmp word 0x39b7
000038D8  8A4604            mov al,[bp+0x4]
000038DB  32E4              xor ah,ah
000038DD  3D0000            cmp ax,0x0
000038E0  7403              jz 0x38e5
000038E2  E96900            jmp word 0x394e
000038E5  C47E0C            les di,[bp+0xc]
000038E8  268A05            mov al,[es:di]
000038EB  32E4              xor ah,ah
000038ED  3D1300            cmp ax,0x13
000038F0  B80100            mov ax,0x1
000038F3  7401              jz 0x38f6
000038F5  48                dec ax
000038F6  50                push ax
000038F7  C47E08            les di,[bp+0x8]
000038FA  268A05            mov al,[es:di]
000038FD  32E4              xor ah,ah
000038FF  3D0100            cmp ax,0x1
00003902  B80100            mov ax,0x1
00003905  7401              jz 0x3908
00003907  48                dec ax
00003908  59                pop cx
00003909  0BC1              or ax,cx
0000390B  0BC0              or ax,ax
0000390D  7503              jnz 0x3912
0000390F  E90900            jmp word 0x391b
00003912  B80100            mov ax,0x1
00003915  884610            mov [bp+0x10],al
00003918  E93000            jmp word 0x394b
0000391B  C47E0C            les di,[bp+0xc]
0000391E  06                push es
0000391F  57                push di
00003920  C47E0C            les di,[bp+0xc]
00003923  268A05            mov al,[es:di]
00003926  32E4              xor ah,ah
00003928  050100            add ax,0x1
0000392B  5F                pop di
0000392C  07                pop es
0000392D  268805            mov [es:di],al
00003930  C47E08            les di,[bp+0x8]
00003933  06                push es
00003934  57                push di
00003935  C47E08            les di,[bp+0x8]
00003938  268A05            mov al,[es:di]
0000393B  32E4              xor ah,ah
0000393D  2D0100            sub ax,0x1
00003940  5F                pop di
00003941  07                pop es
00003942  268805            mov [es:di],al
00003945  B80000            mov ax,0x0
00003948  884610            mov [bp+0x10],al
0000394B  E96600            jmp word 0x39b4
0000394E  C47E0C            les di,[bp+0xc]
00003951  268A05            mov al,[es:di]
00003954  32E4              xor ah,ah
00003956  3D0100            cmp ax,0x1
00003959  B80100            mov ax,0x1
0000395C  7401              jz 0x395f
0000395E  48                dec ax
0000395F  50                push ax
00003960  C47E08            les di,[bp+0x8]
00003963  268A05            mov al,[es:di]
00003966  32E4              xor ah,ah
00003968  3D1300            cmp ax,0x13
0000396B  B80100            mov ax,0x1
0000396E  7401              jz 0x3971
00003970  48                dec ax
00003971  59                pop cx
00003972  0BC1              or ax,cx
00003974  0BC0              or ax,ax
00003976  7503              jnz 0x397b
00003978  E90900            jmp word 0x3984
0000397B  B80100            mov ax,0x1
0000397E  884610            mov [bp+0x10],al
00003981  E93000            jmp word 0x39b4
00003984  C47E0C            les di,[bp+0xc]
00003987  06                push es
00003988  57                push di
00003989  C47E0C            les di,[bp+0xc]
0000398C  268A05            mov al,[es:di]
0000398F  32E4              xor ah,ah
00003991  2D0100            sub ax,0x1
00003994  5F                pop di
00003995  07                pop es
00003996  268805            mov [es:di],al
00003999  C47E08            les di,[bp+0x8]
0000399C  06                push es
0000399D  57                push di
0000399E  C47E08            les di,[bp+0x8]
000039A1  268A05            mov al,[es:di]
000039A4  32E4              xor ah,ah
000039A6  050100            add ax,0x1
000039A9  5F                pop di
000039AA  07                pop es
000039AB  268805            mov [es:di],al
000039AE  B80000            mov ax,0x0
000039B1  884610            mov [bp+0x10],al
000039B4  E9DC00            jmp word 0x3a93
000039B7  8A4604            mov al,[bp+0x4]
000039BA  32E4              xor ah,ah
000039BC  3D0000            cmp ax,0x0
000039BF  7403              jz 0x39c4
000039C1  E96900            jmp word 0x3a2d
000039C4  C47E0C            les di,[bp+0xc]
000039C7  268A05            mov al,[es:di]
000039CA  32E4              xor ah,ah
000039CC  3D1300            cmp ax,0x13
000039CF  B80100            mov ax,0x1
000039D2  7401              jz 0x39d5
000039D4  48                dec ax
000039D5  50                push ax
000039D6  C47E08            les di,[bp+0x8]
000039D9  268A05            mov al,[es:di]
000039DC  32E4              xor ah,ah
000039DE  3D1300            cmp ax,0x13
000039E1  B80100            mov ax,0x1
000039E4  7401              jz 0x39e7
000039E6  48                dec ax
000039E7  59                pop cx
000039E8  0BC1              or ax,cx
000039EA  0BC0              or ax,ax
000039EC  7503              jnz 0x39f1
000039EE  E90900            jmp word 0x39fa
000039F1  B80100            mov ax,0x1
000039F4  884610            mov [bp+0x10],al
000039F7  E93000            jmp word 0x3a2a
000039FA  C47E0C            les di,[bp+0xc]
000039FD  06                push es
000039FE  57                push di
000039FF  C47E0C            les di,[bp+0xc]
00003A02  268A05            mov al,[es:di]
00003A05  32E4              xor ah,ah
00003A07  050100            add ax,0x1
00003A0A  5F                pop di
00003A0B  07                pop es
00003A0C  268805            mov [es:di],al
00003A0F  C47E08            les di,[bp+0x8]
00003A12  06                push es
00003A13  57                push di
00003A14  C47E08            les di,[bp+0x8]
00003A17  268A05            mov al,[es:di]
00003A1A  32E4              xor ah,ah
00003A1C  050100            add ax,0x1
00003A1F  5F                pop di
00003A20  07                pop es
00003A21  268805            mov [es:di],al
00003A24  B80000            mov ax,0x0
00003A27  884610            mov [bp+0x10],al
00003A2A  E96600            jmp word 0x3a93
00003A2D  C47E0C            les di,[bp+0xc]
00003A30  268A05            mov al,[es:di]
00003A33  32E4              xor ah,ah
00003A35  3D0100            cmp ax,0x1
00003A38  B80100            mov ax,0x1
00003A3B  7401              jz 0x3a3e
00003A3D  48                dec ax
00003A3E  50                push ax
00003A3F  C47E08            les di,[bp+0x8]
00003A42  268A05            mov al,[es:di]
00003A45  32E4              xor ah,ah
00003A47  3D0100            cmp ax,0x1
00003A4A  B80100            mov ax,0x1
00003A4D  7401              jz 0x3a50
00003A4F  48                dec ax
00003A50  59                pop cx
00003A51  0BC1              or ax,cx
00003A53  0BC0              or ax,ax
00003A55  7503              jnz 0x3a5a
00003A57  E90900            jmp word 0x3a63
00003A5A  B80100            mov ax,0x1
00003A5D  884610            mov [bp+0x10],al
00003A60  E93000            jmp word 0x3a93
00003A63  C47E0C            les di,[bp+0xc]
00003A66  06                push es
00003A67  57                push di
00003A68  C47E0C            les di,[bp+0xc]
00003A6B  268A05            mov al,[es:di]
00003A6E  32E4              xor ah,ah
00003A70  2D0100            sub ax,0x1
00003A73  5F                pop di
00003A74  07                pop es
00003A75  268805            mov [es:di],al
00003A78  C47E08            les di,[bp+0x8]
00003A7B  06                push es
00003A7C  57                push di
00003A7D  C47E08            les di,[bp+0x8]
00003A80  268A05            mov al,[es:di]
00003A83  32E4              xor ah,ah
00003A85  2D0100            sub ax,0x1
00003A88  5F                pop di
00003A89  07                pop es
00003A8A  268805            mov [es:di],al
00003A8D  B80000            mov ax,0x0
00003A90  884610            mov [bp+0x10],al
00003A93  E90000            jmp word 0x3a96
00003A96  8A4610            mov al,[bp+0x10]
00003A99  32E4              xor ah,ah
00003A9B  0BC0              or ax,ax
00003A9D  8BE5              mov sp,bp
00003A9F  5D                pop bp
00003AA0  C20D00            ret 0xd
00003AA3  55                push bp
00003AA4  8BEC              mov bp,sp
00003AA6  55                push bp
00003AA7  E90000            jmp word 0x3aaa
00003AAA  8A460A            mov al,[bp+0xa]
00003AAD  32E4              xor ah,ah
00003AAF  B91300            mov cx,0x13
00003AB2  F7E1              mul cx
00003AB4  97                xchg ax,di
00003AB5  57                push di
00003AB6  8A4608            mov al,[bp+0x8]
00003AB9  32E4              xor ah,ah
00003ABB  5F                pop di
00003ABC  03F8              add di,ax
00003ABE  8A854C02          mov al,[di+0x24c]
00003AC2  32E4              xor ah,ah
00003AC4  50                push ax
00003AC5  A0DF03            mov al,[0x3df]
00003AC8  32E4              xor ah,ah
00003ACA  59                pop cx
00003ACB  91                xchg ax,cx
00003ACC  3BC1              cmp ax,cx
00003ACE  B80100            mov ax,0x1
00003AD1  7401              jz 0x3ad4
00003AD3  48                dec ax
00003AD4  3401              xor al,0x1
00003AD6  7503              jnz 0x3adb
00003AD8  E90900            jmp word 0x3ae4
00003ADB  B80000            mov ax,0x0
00003ADE  89460C            mov [bp+0xc],ax
00003AE1  E95700            jmp word 0x3b3b
00003AE4  B91300            mov cx,0x13
00003AE7  E8E7D4            call word 0xfd1
00003AEA  4C                dec sp
00003AEB  8D7E0A            lea di,[bp+0xa]
00003AEE  16                push ss
00003AEF  57                push di
00003AF0  8D7E08            lea di,[bp+0x8]
00003AF3  16                push ss
00003AF4  57                push di
00003AF5  8A4606            mov al,[bp+0x6]
00003AF8  32E4              xor ah,ah
00003AFA  50                push ax
00003AFB  8A4604            mov al,[bp+0x4]
00003AFE  32E4              xor ah,ah
00003B00  50                push ax
00003B01  E8B0FC            call word 0x37b4
00003B04  7503              jnz 0x3b09
00003B06  E90900            jmp word 0x3b12
00003B09  B80100            mov ax,0x1
00003B0C  89460C            mov [bp+0xc],ax
00003B0F  E92900            jmp word 0x3b3b
00003B12  B91000            mov cx,0x10
00003B15  E8B9D4            call word 0xfd1
00003B18  4C                dec sp
00003B19  4C                dec sp
00003B1A  8A460A            mov al,[bp+0xa]
00003B1D  32E4              xor ah,ah
00003B1F  50                push ax
00003B20  8A4608            mov al,[bp+0x8]
00003B23  32E4              xor ah,ah
00003B25  50                push ax
00003B26  8A4606            mov al,[bp+0x6]
00003B29  32E4              xor ah,ah
00003B2B  50                push ax
00003B2C  8A4604            mov al,[bp+0x4]
00003B2F  32E4              xor ah,ah
00003B31  50                push ax
00003B32  E86EFF            call word 0x3aa3
00003B35  050100            add ax,0x1
00003B38  89460C            mov [bp+0xc],ax
00003B3B  E90000            jmp word 0x3b3e
00003B3E  8B460C            mov ax,[bp+0xc]
00003B41  8BE5              mov sp,bp
00003B43  5D                pop bp
00003B44  C20A00            ret 0xa
00003B47  55                push bp
00003B48  8BEC              mov bp,sp
00003B4A  55                push bp
00003B4B  E90000            jmp word 0x3b4e
00003B4E  4C                dec sp
00003B4F  4C                dec sp
00003B50  A0E003            mov al,[0x3e0]
00003B53  32E4              xor ah,ah
00003B55  D1E0              shl ax,1
00003B57  97                xchg ax,di
00003B58  8B85C703          mov ax,[di+0x3c7]
00003B5C  3D0500            cmp ax,0x5
00003B5F  7D03              jnl 0x3b64
00003B61  E90900            jmp word 0x3b6d
00003B64  B80100            mov ax,0x1
00003B67  88460C            mov [bp+0xc],al
00003B6A  E9C101            jmp word 0x3d2e
00003B6D  B91000            mov cx,0x10
00003B70  E85ED4            call word 0xfd1
00003B73  4C                dec sp
00003B74  4C                dec sp
00003B75  C47E08            les di,[bp+0x8]
00003B78  268A05            mov al,[es:di]
00003B7B  32E4              xor ah,ah
00003B7D  50                push ax
00003B7E  C47E04            les di,[bp+0x4]
00003B81  268A05            mov al,[es:di]
00003B84  32E4              xor ah,ah
00003B86  50                push ax
00003B87  B80000            mov ax,0x0
00003B8A  50                push ax
00003B8B  B80000            mov ax,0x0
00003B8E  50                push ax
00003B8F  E811FF            call word 0x3aa3
00003B92  50                push ax
00003B93  B91000            mov cx,0x10
00003B96  E838D4            call word 0xfd1
00003B99  4C                dec sp
00003B9A  4C                dec sp
00003B9B  C47E08            les di,[bp+0x8]
00003B9E  268A05            mov al,[es:di]
00003BA1  32E4              xor ah,ah
00003BA3  50                push ax
00003BA4  C47E04            les di,[bp+0x4]
00003BA7  268A05            mov al,[es:di]
00003BAA  32E4              xor ah,ah
00003BAC  050100            add ax,0x1
00003BAF  50                push ax
00003BB0  B80000            mov ax,0x0
00003BB3  50                push ax
00003BB4  B80100            mov ax,0x1
00003BB7  50                push ax
00003BB8  E8E8FE            call word 0x3aa3
00003BBB  59                pop cx
00003BBC  03C1              add ax,cx
00003BBE  8946FC            mov [bp-0x4],ax
00003BC1  8B46FC            mov ax,[bp-0x4]
00003BC4  3D0500            cmp ax,0x5
00003BC7  7D03              jnl 0x3bcc
00003BC9  E90900            jmp word 0x3bd5
00003BCC  B80100            mov ax,0x1
00003BCF  88460C            mov [bp+0xc],al
00003BD2  E95901            jmp word 0x3d2e
00003BD5  B91000            mov cx,0x10
00003BD8  E8F6D3            call word 0xfd1
00003BDB  4C                dec sp
00003BDC  4C                dec sp
00003BDD  C47E08            les di,[bp+0x8]
00003BE0  268A05            mov al,[es:di]
00003BE3  32E4              xor ah,ah
00003BE5  50                push ax
00003BE6  C47E04            les di,[bp+0x4]
00003BE9  268A05            mov al,[es:di]
00003BEC  32E4              xor ah,ah
00003BEE  50                push ax
00003BEF  B80100            mov ax,0x1
00003BF2  50                push ax
00003BF3  B80000            mov ax,0x0
00003BF6  50                push ax
00003BF7  E8A9FE            call word 0x3aa3
00003BFA  50                push ax
00003BFB  B91000            mov cx,0x10
00003BFE  E8D0D3            call word 0xfd1
00003C01  4C                dec sp
00003C02  4C                dec sp
00003C03  C47E08            les di,[bp+0x8]
00003C06  268A05            mov al,[es:di]
00003C09  32E4              xor ah,ah
00003C0B  2D0100            sub ax,0x1
00003C0E  50                push ax
00003C0F  C47E04            les di,[bp+0x4]
00003C12  268A05            mov al,[es:di]
00003C15  32E4              xor ah,ah
00003C17  050100            add ax,0x1
00003C1A  50                push ax
00003C1B  B80100            mov ax,0x1
00003C1E  50                push ax
00003C1F  B80100            mov ax,0x1
00003C22  50                push ax
00003C23  E87DFE            call word 0x3aa3
00003C26  59                pop cx
00003C27  03C1              add ax,cx
00003C29  8946FC            mov [bp-0x4],ax
00003C2C  8B46FC            mov ax,[bp-0x4]
00003C2F  3D0500            cmp ax,0x5
00003C32  7D03              jnl 0x3c37
00003C34  E90900            jmp word 0x3c40
00003C37  B80100            mov ax,0x1
00003C3A  88460C            mov [bp+0xc],al
00003C3D  E9EE00            jmp word 0x3d2e
00003C40  B91000            mov cx,0x10
00003C43  E88BD3            call word 0xfd1
00003C46  4C                dec sp
00003C47  4C                dec sp
00003C48  C47E08            les di,[bp+0x8]
00003C4B  268A05            mov al,[es:di]
00003C4E  32E4              xor ah,ah
00003C50  50                push ax
00003C51  C47E04            les di,[bp+0x4]
00003C54  268A05            mov al,[es:di]
00003C57  32E4              xor ah,ah
00003C59  50                push ax
00003C5A  B80200            mov ax,0x2
00003C5D  50                push ax
00003C5E  B80000            mov ax,0x0
00003C61  50                push ax
00003C62  E83EFE            call word 0x3aa3
00003C65  50                push ax
00003C66  B91000            mov cx,0x10
00003C69  E865D3            call word 0xfd1
00003C6C  4C                dec sp
00003C6D  4C                dec sp
00003C6E  C47E08            les di,[bp+0x8]
00003C71  268A05            mov al,[es:di]
00003C74  32E4              xor ah,ah
00003C76  2D0100            sub ax,0x1
00003C79  50                push ax
00003C7A  C47E04            les di,[bp+0x4]
00003C7D  268A05            mov al,[es:di]
00003C80  32E4              xor ah,ah
00003C82  50                push ax
00003C83  B80200            mov ax,0x2
00003C86  50                push ax
00003C87  B80100            mov ax,0x1
00003C8A  50                push ax
00003C8B  E815FE            call word 0x3aa3
00003C8E  59                pop cx
00003C8F  03C1              add ax,cx
00003C91  8946FC            mov [bp-0x4],ax
00003C94  8B46FC            mov ax,[bp-0x4]
00003C97  3D0500            cmp ax,0x5
00003C9A  7D03              jnl 0x3c9f
00003C9C  E90900            jmp word 0x3ca8
00003C9F  B80100            mov ax,0x1
00003CA2  88460C            mov [bp+0xc],al
00003CA5  E98600            jmp word 0x3d2e
00003CA8  B91000            mov cx,0x10
00003CAB  E823D3            call word 0xfd1
00003CAE  4C                dec sp
00003CAF  4C                dec sp
00003CB0  C47E08            les di,[bp+0x8]
00003CB3  268A05            mov al,[es:di]
00003CB6  32E4              xor ah,ah
00003CB8  50                push ax
00003CB9  C47E04            les di,[bp+0x4]
00003CBC  268A05            mov al,[es:di]
00003CBF  32E4              xor ah,ah
00003CC1  50                push ax
00003CC2  B80300            mov ax,0x3
00003CC5  50                push ax
00003CC6  B80000            mov ax,0x0
00003CC9  50                push ax
00003CCA  E8D6FD            call word 0x3aa3
00003CCD  50                push ax
00003CCE  B91000            mov cx,0x10
00003CD1  E8FDD2            call word 0xfd1
00003CD4  4C                dec sp
00003CD5  4C                dec sp
00003CD6  C47E08            les di,[bp+0x8]
00003CD9  268A05            mov al,[es:di]
00003CDC  32E4              xor ah,ah
00003CDE  2D0100            sub ax,0x1
00003CE1  50                push ax
00003CE2  C47E04            les di,[bp+0x4]
00003CE5  268A05            mov al,[es:di]
00003CE8  32E4              xor ah,ah
00003CEA  2D0100            sub ax,0x1
00003CED  50                push ax
00003CEE  B80300            mov ax,0x3
00003CF1  50                push ax
00003CF2  B80100            mov ax,0x1
00003CF5  50                push ax
00003CF6  E8AAFD            call word 0x3aa3
00003CF9  59                pop cx
00003CFA  03C1              add ax,cx
00003CFC  8946FC            mov [bp-0x4],ax
00003CFF  8B46FC            mov ax,[bp-0x4]
00003D02  3D0500            cmp ax,0x5
00003D05  7D03              jnl 0x3d0a
00003D07  E90900            jmp word 0x3d13
00003D0A  B80100            mov ax,0x1
00003D0D  88460C            mov [bp+0xc],al
00003D10  E91B00            jmp word 0x3d2e
00003D13  A0EC03            mov al,[0x3ec]
00003D16  32E4              xor ah,ah
00003D18  0BC0              or ax,ax
00003D1A  7503              jnz 0x3d1f
00003D1C  E90900            jmp word 0x3d28
00003D1F  B80100            mov ax,0x1
00003D22  88460C            mov [bp+0xc],al
00003D25  E90600            jmp word 0x3d2e
00003D28  B80000            mov ax,0x0
00003D2B  88460C            mov [bp+0xc],al
00003D2E  E90000            jmp word 0x3d31
00003D31  8A460C            mov al,[bp+0xc]
00003D34  32E4              xor ah,ah
00003D36  0BC0              or ax,ax
00003D38  8BE5              mov sp,bp
00003D3A  5D                pop bp
00003D3B  C20900            ret 0x9
00003D3E  55                push bp
00003D3F  8BEC              mov bp,sp
00003D41  55                push bp
00003D42  E90000            jmp word 0x3d45
00003D45  4C                dec sp
00003D46  4C                dec sp
00003D47  E8DCC4            call word 0x226
00003D4A  A1F203            mov ax,[0x3f2]
00003D4D  E86BC6            call word 0x3bb
00003D50  B80E00            mov ax,0xe
00003D53  50                push ax
00003D54  B80100            mov ax,0x1
00003D57  E850D0            call word 0xdaa
00003D5A  E8FBE7            call word 0x2558
00003D5D  B8C900            mov ax,0xc9
00003D60  50                push ax
00003D61  B80000            mov ax,0x0
00003D64  E836EB            call word 0x289d
00003D67  B8CD00            mov ax,0xcd
00003D6A  50                push ax
00003D6B  B80000            mov ax,0x0
00003D6E  E82CEB            call word 0x289d
00003D71  E8AED2            call word 0x1022
00003D74  B80200            mov ax,0x2
00003D77  50                push ax
00003D78  B81200            mov ax,0x12
00003D7B  59                pop cx
00003D7C  91                xchg ax,cx
00003D7D  2BC8              sub cx,ax
00003D7F  7D03              jnl 0x3d84
00003D81  E93300            jmp word 0x3db7
00003D84  41                inc cx
00003D85  8846FD            mov [bp-0x3],al
00003D88  51                push cx
00003D89  E8CCE7            call word 0x2558
00003D8C  B8CD00            mov ax,0xcd
00003D8F  50                push ax
00003D90  B80000            mov ax,0x0
00003D93  E807EB            call word 0x289d
00003D96  B8D100            mov ax,0xd1
00003D99  50                push ax
00003D9A  B80000            mov ax,0x0
00003D9D  E8FDEA            call word 0x289d
00003DA0  B8CD00            mov ax,0xcd
00003DA3  50                push ax
00003DA4  B80000            mov ax,0x0
00003DA7  E8F3EA            call word 0x289d
00003DAA  E875D2            call word 0x1022
00003DAD  59                pop cx
00003DAE  49                dec cx
00003DAF  7406              jz 0x3db7
00003DB1  FE46FD            inc byte [bp-0x3]
00003DB4  E9D1FF            jmp word 0x3d88
00003DB7  E89EE7            call word 0x2558
00003DBA  B8CD00            mov ax,0xcd
00003DBD  50                push ax
00003DBE  B80000            mov ax,0x0
00003DC1  E8D9EA            call word 0x289d
00003DC4  B8BB00            mov ax,0xbb
00003DC7  50                push ax
00003DC8  B80000            mov ax,0x0
00003DCB  E8CFEA            call word 0x289d
00003DCE  E851D2            call word 0x1022
00003DD1  B80200            mov ax,0x2
00003DD4  50                push ax
00003DD5  B81300            mov ax,0x13
00003DD8  2D0100            sub ax,0x1
00003DDB  59                pop cx
00003DDC  91                xchg ax,cx
00003DDD  2BC8              sub cx,ax
00003DDF  7D03              jnl 0x3de4
00003DE1  E9BB00            jmp word 0x3e9f
00003DE4  41                inc cx
00003DE5  8846FC            mov [bp-0x4],al
00003DE8  51                push cx
00003DE9  B80E00            mov ax,0xe
00003DEC  50                push ax
00003DED  8A46FC            mov al,[bp-0x4]
00003DF0  32E4              xor ah,ah
00003DF2  E8B5CF            call word 0xdaa
00003DF5  E860E7            call word 0x2558
00003DF8  B8C700            mov ax,0xc7
00003DFB  50                push ax
00003DFC  B80000            mov ax,0x0
00003DFF  E89BEA            call word 0x289d
00003E02  B8C400            mov ax,0xc4
00003E05  50                push ax
00003E06  B80000            mov ax,0x0
00003E09  E891EA            call word 0x289d
00003E0C  E813D2            call word 0x1022
00003E0F  B80200            mov ax,0x2
00003E12  50                push ax
00003E13  B81300            mov ax,0x13
00003E16  2D0100            sub ax,0x1
00003E19  59                pop cx
00003E1A  91                xchg ax,cx
00003E1B  2BC8              sub cx,ax
00003E1D  7D03              jnl 0x3e22
00003E1F  E94D00            jmp word 0x3e6f
00003E22  41                inc cx
00003E23  8846FD            mov [bp-0x3],al
00003E26  51                push cx
00003E27  B80A00            mov ax,0xa
00003E2A  50                push ax
00003E2B  8A46FD            mov al,[bp-0x3]
00003E2E  32E4              xor ah,ah
00003E30  B90300            mov cx,0x3
00003E33  F7E9              imul cx
00003E35  59                pop cx
00003E36  03C1              add ax,cx
00003E38  50                push ax
00003E39  8A46FC            mov al,[bp-0x4]
00003E3C  32E4              xor ah,ah
00003E3E  E869CF            call word 0xdaa
00003E41  E814E7            call word 0x2558
00003E44  B8C400            mov ax,0xc4
00003E47  50                push ax
00003E48  B80000            mov ax,0x0
00003E4B  E84FEA            call word 0x289d
00003E4E  B8C500            mov ax,0xc5
00003E51  50                push ax
00003E52  B80000            mov ax,0x0
00003E55  E845EA            call word 0x289d
00003E58  B8C400            mov ax,0xc4
00003E5B  50                push ax
00003E5C  B80000            mov ax,0x0
00003E5F  E83BEA            call word 0x289d
00003E62  E8BDD1            call word 0x1022
00003E65  59                pop cx
00003E66  49                dec cx
00003E67  7406              jz 0x3e6f
00003E69  FE46FD            inc byte [bp-0x3]
00003E6C  E9B7FF            jmp word 0x3e26
00003E6F  B84300            mov ax,0x43
00003E72  50                push ax
00003E73  8A46FC            mov al,[bp-0x4]
00003E76  32E4              xor ah,ah
00003E78  E82FCF            call word 0xdaa
00003E7B  E8DAE6            call word 0x2558
00003E7E  B8C400            mov ax,0xc4
00003E81  50                push ax
00003E82  B80000            mov ax,0x0
00003E85  E815EA            call word 0x289d
00003E88  B8B600            mov ax,0xb6
00003E8B  50                push ax
00003E8C  B80000            mov ax,0x0
00003E8F  E80BEA            call word 0x289d
00003E92  E88DD1            call word 0x1022
00003E95  59                pop cx
00003E96  49                dec cx
00003E97  7406              jz 0x3e9f
00003E99  FE46FC            inc byte [bp-0x4]
00003E9C  E949FF            jmp word 0x3de8
00003E9F  B80E00            mov ax,0xe
00003EA2  50                push ax
00003EA3  B81300            mov ax,0x13
00003EA6  E801CF            call word 0xdaa
00003EA9  E8ACE6            call word 0x2558
00003EAC  B8C800            mov ax,0xc8
00003EAF  50                push ax
00003EB0  B80000            mov ax,0x0
00003EB3  E8E7E9            call word 0x289d
00003EB6  B8CD00            mov ax,0xcd
00003EB9  50                push ax
00003EBA  B80000            mov ax,0x0
00003EBD  E8DDE9            call word 0x289d
00003EC0  E85FD1            call word 0x1022
00003EC3  B80200            mov ax,0x2
00003EC6  50                push ax
00003EC7  B81200            mov ax,0x12
00003ECA  59                pop cx
00003ECB  91                xchg ax,cx
00003ECC  2BC8              sub cx,ax
00003ECE  7D03              jnl 0x3ed3
00003ED0  E93300            jmp word 0x3f06
00003ED3  41                inc cx
00003ED4  8846FD            mov [bp-0x3],al
00003ED7  51                push cx
00003ED8  E87DE6            call word 0x2558
00003EDB  B8CD00            mov ax,0xcd
00003EDE  50                push ax
00003EDF  B80000            mov ax,0x0
00003EE2  E8B8E9            call word 0x289d
00003EE5  B8CF00            mov ax,0xcf
00003EE8  50                push ax
00003EE9  B80000            mov ax,0x0
00003EEC  E8AEE9            call word 0x289d
00003EEF  B8CD00            mov ax,0xcd
00003EF2  50                push ax
00003EF3  B80000            mov ax,0x0
00003EF6  E8A4E9            call word 0x289d
00003EF9  E826D1            call word 0x1022
00003EFC  59                pop cx
00003EFD  49                dec cx
00003EFE  7406              jz 0x3f06
00003F00  FE46FD            inc byte [bp-0x3]
00003F03  E9D1FF            jmp word 0x3ed7
00003F06  E84FE6            call word 0x2558
00003F09  B8CD00            mov ax,0xcd
00003F0C  50                push ax
00003F0D  B80000            mov ax,0x0
00003F10  E88AE9            call word 0x289d
00003F13  B8BC00            mov ax,0xbc
00003F16  50                push ax
00003F17  B80000            mov ax,0x0
00003F1A  E880E9            call word 0x289d
00003F1D  E802D1            call word 0x1022
00003F20  E90000            jmp word 0x3f23
00003F23  8BE5              mov sp,bp
00003F25  5D                pop bp
00003F26  C3                ret
00003F27  55                push bp
00003F28  8BEC              mov bp,sp
00003F2A  55                push bp
00003F2B  E90000            jmp word 0x3f2e
00003F2E  B80E00            mov ax,0xe
00003F31  E887C4            call word 0x3bb
00003F34  B81D00            mov ax,0x1d
00003F37  50                push ax
00003F38  B81400            mov ax,0x14
00003F3B  E86CCE            call word 0xdaa
00003F3E  A0EC03            mov al,[0x3ec]
00003F41  32E4              xor ah,ah
00003F43  0BC0              or ax,ax
00003F45  7503              jnz 0x3f4a
00003F47  E92E00            jmp word 0x3f78
00003F4A  B80E00            mov ax,0xe
00003F4D  E86BC4            call word 0x3bb
00003F50  E805E6            call word 0x2558
00003F53  E807EA            call word 0x295d
00003F56  154265            adc ax,0x6542
00003F59  7474              jz 0x3fcf
00003F5B  657220            gs jc 0x3f7e
00003F5E  6C                insb
00003F5F  7563              jnz 0x3fc4
00003F61  6B206E            imul sp,[bx+si],byte +0x6e
00003F64  657874            gs js 0x3fdb
00003F67  207469            and [si+0x69],dh
00003F6A  6D                insw
00003F6B  65E8B3D0          gs call word 0x1022
00003F6F  B80200            mov ax,0x2
00003F72  A2DF03            mov [0x3df],al
00003F75  E95A00            jmp word 0x3fd2
00003F78  A0DF03            mov al,[0x3df]
00003F7B  32E4              xor ah,ah
00003F7D  3D0200            cmp ax,0x2
00003F80  7403              jz 0x3f85
00003F82  E92900            jmp word 0x3fae
00003F85  B80E00            mov ax,0xe
00003F88  E830C4            call word 0x3bb
00003F8B  E8CAE5            call word 0x2558
00003F8E  E8CCE9            call word 0x295d
00003F91  16                push ss
00003F92  43                inc bx
00003F93  6F                outsw
00003F94  6D                insw
00003F95  7075              jo 0x400c
00003F97  7465              jz 0x3ffe
00003F99  7273              jc 0x400e
00003F9B  206172            and [bx+di+0x72],ah
00003F9E  65207375          and [gs:bp+di+0x75],dh
00003FA2  7065              jo 0x4009
00003FA4  7269              jc 0x400f
00003FA6  6F                outsw
00003FA7  72E8              jc 0x3f91
00003FA9  77D0              ja 0x3f7b
00003FAB  E92400            jmp word 0x3fd2
00003FAE  B80D00            mov ax,0xd
00003FB1  E807C4            call word 0x3bb
00003FB4  E8A1E5            call word 0x2558
00003FB7  E8A3E9            call word 0x295d
00003FBA  1420              adc al,0x20
00003FBC  2020              and [bx+si],ah
00003FBE  204875            and [bx+si+0x75],cl
00003FC1  6D                insw
00003FC2  61                popaw
00003FC3  6E                outsb
00003FC4  7320              jnc 0x3fe6
00003FC6  61                popaw
00003FC7  7265              jc 0x402e
00003FC9  206C75            and [si+0x75],ch
00003FCC  636B79            arpl [bp+di+0x79],bp
00003FCF  E850D0            call word 0x1022
00003FD2  B80100            mov ax,0x1
00003FD5  50                push ax
00003FD6  B81800            mov ax,0x18
00003FD9  E8CECD            call word 0xdaa
00003FDC  E8CBC2            call word 0x2aa
00003FDF  B80A00            mov ax,0xa
00003FE2  50                push ax
00003FE3  B81800            mov ax,0x18
00003FE6  E8C1CD            call word 0xdaa
00003FE9  E86CE5            call word 0x2558
00003FEC  E86EE9            call word 0x295d
00003FEF  3A546F            cmp dl,[si+0x6f]
00003FF2  7563              jnz 0x4057
00003FF4  682045            push word 0x4520
00003FF7  53                push bx
00003FF8  43                inc bx
00003FF9  20746F            and [si+0x6f],dh
00003FFC  207265            and [bp+si+0x65],dh
00003FFF  7475              jz 0x4076
00004001  726E              jc 0x4071
00004003  20746F            and [si+0x6f],dh
00004006  206D61            and [di+0x61],ch
00004009  696E206D65        imul bp,[bp+0x20],word 0x656d
0000400E  6E                outsb
0000400F  7520              jnz 0x4031
00004011  6F                outsw
00004012  7220              jc 0x4034
00004014  225922            and bl,[bx+di+0x22]
00004017  20666F            and [bp+0x6f],ah
0000401A  7220              jc 0x403c
0000401C  61                popaw
0000401D  6E                outsb
0000401E  6F                outsw
0000401F  7468              jz 0x4089
00004021  657220            gs jc 0x4044
00004024  6761              a32 popaw
00004026  6D                insw
00004027  653A20            cmp ah,[gs:bx+si]
0000402A  E8F5CF            call word 0x1022
0000402D  BF4A01            mov di,0x14a
00004030  1E                push ds
00004031  E807E5            call word 0x253b
00004034  BFE203            mov di,0x3e2
00004037  1E                push ds
00004038  E827E7            call word 0x2762
0000403B  E8E4CF            call word 0x1022
0000403E  A0E203            mov al,[0x3e2]
00004041  32E4              xor ah,ah
00004043  3D6E00            cmp ax,0x6e
00004046  B80100            mov ax,0x1
00004049  7401              jz 0x404c
0000404B  48                dec ax
0000404C  50                push ax
0000404D  A0E203            mov al,[0x3e2]
00004050  32E4              xor ah,ah
00004052  3D4E00            cmp ax,0x4e
00004055  B80100            mov ax,0x1
00004058  7401              jz 0x405b
0000405A  48                dec ax
0000405B  59                pop cx
0000405C  0BC1              or ax,cx
0000405E  0BC0              or ax,ax
00004060  7503              jnz 0x4065
00004062  E90F00            jmp word 0x4074
00004065  B80100            mov ax,0x1
00004068  884604            mov [bp+0x4],al
0000406B  B80000            mov ax,0x0
0000406E  A2EB03            mov [0x3eb],al
00004071  E92800            jmp word 0x409c
00004074  A0E203            mov al,[0x3e2]
00004077  32E4              xor ah,ah
00004079  3D1B00            cmp ax,0x1b
0000407C  7403              jz 0x4081
0000407E  E90F00            jmp word 0x4090
00004081  B80100            mov ax,0x1
00004084  A2EB03            mov [0x3eb],al
00004087  B80000            mov ax,0x0
0000408A  884604            mov [bp+0x4],al
0000408D  E90C00            jmp word 0x409c
00004090  B80000            mov ax,0x0
00004093  884604            mov [bp+0x4],al
00004096  B80000            mov ax,0x0
00004099  A2EB03            mov [0x3eb],al
0000409C  E90000            jmp word 0x409f
0000409F  8A4604            mov al,[bp+0x4]
000040A2  32E4              xor ah,ah
000040A4  0BC0              or ax,ax
000040A6  8BE5              mov sp,bp
000040A8  5D                pop bp
000040A9  C20100            ret 0x1
000040AC  55                push bp
000040AD  8BEC              mov bp,sp
000040AF  55                push bp
000040B0  E90000            jmp word 0x40b3
000040B3  B90C00            mov cx,0xc
000040B6  E818CF            call word 0xfd1
000040B9  BFE203            mov di,0x3e2
000040BC  1E                push ds
000040BD  57                push di
000040BE  E856ED            call word 0x2e17
000040C1  B90800            mov cx,0x8
000040C4  E80ACF            call word 0xfd1
000040C7  E8CAEE            call word 0x2f94
000040CA  A0E203            mov al,[0x3e2]
000040CD  32E4              xor ah,ah
000040CF  3D4800            cmp ax,0x48
000040D2  7403              jz 0x40d7
000040D4  E93300            jmp word 0x410a
000040D7  A0D003            mov al,[0x3d0]
000040DA  32E4              xor ah,ah
000040DC  3D0100            cmp ax,0x1
000040DF  7F03              jg 0x40e4
000040E1  E91700            jmp word 0x40fb
000040E4  A0D003            mov al,[0x3d0]
000040E7  32E4              xor ah,ah
000040E9  2D0100            sub ax,0x1
000040EC  A2D003            mov [0x3d0],al
000040EF  A1DB03            mov ax,[0x3db]
000040F2  2D0100            sub ax,0x1
000040F5  A3DB03            mov [0x3db],ax
000040F8  E90C00            jmp word 0x4107
000040FB  B81300            mov ax,0x13
000040FE  A2D003            mov [0x3d0],al
00004101  B81300            mov ax,0x13
00004104  A3DB03            mov [0x3db],ax
00004107  E99503            jmp word 0x449f
0000410A  A0E203            mov al,[0x3e2]
0000410D  32E4              xor ah,ah
0000410F  3D4D00            cmp ax,0x4d
00004112  7403              jz 0x4117
00004114  E93300            jmp word 0x414a
00004117  A0CF03            mov al,[0x3cf]
0000411A  32E4              xor ah,ah
0000411C  3D1300            cmp ax,0x13
0000411F  7C03              jl 0x4124
00004121  E91700            jmp word 0x413b
00004124  A0CF03            mov al,[0x3cf]
00004127  32E4              xor ah,ah
00004129  050100            add ax,0x1
0000412C  A2CF03            mov [0x3cf],al
0000412F  A1D903            mov ax,[0x3d9]
00004132  050300            add ax,0x3
00004135  A3D903            mov [0x3d9],ax
00004138  E90C00            jmp word 0x4147
0000413B  B80100            mov ax,0x1
0000413E  A2CF03            mov [0x3cf],al
00004141  B80E00            mov ax,0xe
00004144  A3D903            mov [0x3d9],ax
00004147  E95503            jmp word 0x449f
0000414A  A0E203            mov al,[0x3e2]
0000414D  32E4              xor ah,ah
0000414F  3D5000            cmp ax,0x50
00004152  7403              jz 0x4157
00004154  E93300            jmp word 0x418a
00004157  A0D003            mov al,[0x3d0]
0000415A  32E4              xor ah,ah
0000415C  3D1300            cmp ax,0x13
0000415F  7C03              jl 0x4164
00004161  E91700            jmp word 0x417b
00004164  A0D003            mov al,[0x3d0]
00004167  32E4              xor ah,ah
00004169  050100            add ax,0x1
0000416C  A2D003            mov [0x3d0],al
0000416F  A1DB03            mov ax,[0x3db]
00004172  050100            add ax,0x1
00004175  A3DB03            mov [0x3db],ax
00004178  E90C00            jmp word 0x4187
0000417B  B80100            mov ax,0x1
0000417E  A2D003            mov [0x3d0],al
00004181  B80100            mov ax,0x1
00004184  A3DB03            mov [0x3db],ax
00004187  E91503            jmp word 0x449f
0000418A  A0E203            mov al,[0x3e2]
0000418D  32E4              xor ah,ah
0000418F  3D4B00            cmp ax,0x4b
00004192  7403              jz 0x4197
00004194  E93300            jmp word 0x41ca
00004197  A0CF03            mov al,[0x3cf]
0000419A  32E4              xor ah,ah
0000419C  3D0100            cmp ax,0x1
0000419F  7F03              jg 0x41a4
000041A1  E91700            jmp word 0x41bb
000041A4  A0CF03            mov al,[0x3cf]
000041A7  32E4              xor ah,ah
000041A9  2D0100            sub ax,0x1
000041AC  A2CF03            mov [0x3cf],al
000041AF  A1D903            mov ax,[0x3d9]
000041B2  2D0300            sub ax,0x3
000041B5  A3D903            mov [0x3d9],ax
000041B8  E90C00            jmp word 0x41c7
000041BB  B81300            mov ax,0x13
000041BE  A2CF03            mov [0x3cf],al
000041C1  B84400            mov ax,0x44
000041C4  A3D903            mov [0x3d9],ax
000041C7  E9D502            jmp word 0x449f
000041CA  A0E203            mov al,[0x3e2]
000041CD  32E4              xor ah,ah
000041CF  3D4900            cmp ax,0x49
000041D2  7403              jz 0x41d7
000041D4  E96300            jmp word 0x423a
000041D7  A0CF03            mov al,[0x3cf]
000041DA  32E4              xor ah,ah
000041DC  3D1300            cmp ax,0x13
000041DF  7C03              jl 0x41e4
000041E1  E91700            jmp word 0x41fb
000041E4  A0CF03            mov al,[0x3cf]
000041E7  32E4              xor ah,ah
000041E9  050100            add ax,0x1
000041EC  A2CF03            mov [0x3cf],al
000041EF  A1D903            mov ax,[0x3d9]
000041F2  050300            add ax,0x3
000041F5  A3D903            mov [0x3d9],ax
000041F8  E90C00            jmp word 0x4207
000041FB  B80100            mov ax,0x1
000041FE  A2CF03            mov [0x3cf],al
00004201  B80E00            mov ax,0xe
00004204  A3D903            mov [0x3d9],ax
00004207  A0D003            mov al,[0x3d0]
0000420A  32E4              xor ah,ah
0000420C  3D0100            cmp ax,0x1
0000420F  7F03              jg 0x4214
00004211  E91700            jmp word 0x422b
00004214  A0D003            mov al,[0x3d0]
00004217  32E4              xor ah,ah
00004219  2D0100            sub ax,0x1
0000421C  A2D003            mov [0x3d0],al
0000421F  A1DB03            mov ax,[0x3db]
00004222  2D0100            sub ax,0x1
00004225  A3DB03            mov [0x3db],ax
00004228  E90C00            jmp word 0x4237
0000422B  B81300            mov ax,0x13
0000422E  A2D003            mov [0x3d0],al
00004231  B81300            mov ax,0x13
00004234  A3DB03            mov [0x3db],ax
00004237  E96502            jmp word 0x449f
0000423A  A0E203            mov al,[0x3e2]
0000423D  32E4              xor ah,ah
0000423F  3D4700            cmp ax,0x47
00004242  7403              jz 0x4247
00004244  E96300            jmp word 0x42aa
00004247  A0CF03            mov al,[0x3cf]
0000424A  32E4              xor ah,ah
0000424C  3D0100            cmp ax,0x1
0000424F  7F03              jg 0x4254
00004251  E91700            jmp word 0x426b
00004254  A0CF03            mov al,[0x3cf]
00004257  32E4              xor ah,ah
00004259  2D0100            sub ax,0x1
0000425C  A2CF03            mov [0x3cf],al
0000425F  A1D903            mov ax,[0x3d9]
00004262  2D0300            sub ax,0x3
00004265  A3D903            mov [0x3d9],ax
00004268  E90C00            jmp word 0x4277
0000426B  B81300            mov ax,0x13
0000426E  A2CF03            mov [0x3cf],al
00004271  B84400            mov ax,0x44
00004274  A3D903            mov [0x3d9],ax
00004277  A0D003            mov al,[0x3d0]
0000427A  32E4              xor ah,ah
0000427C  3D0100            cmp ax,0x1
0000427F  7F03              jg 0x4284
00004281  E91700            jmp word 0x429b
00004284  A0D003            mov al,[0x3d0]
00004287  32E4              xor ah,ah
00004289  2D0100            sub ax,0x1
0000428C  A2D003            mov [0x3d0],al
0000428F  A1DB03            mov ax,[0x3db]
00004292  2D0100            sub ax,0x1
00004295  A3DB03            mov [0x3db],ax
00004298  E90C00            jmp word 0x42a7
0000429B  B81300            mov ax,0x13
0000429E  A2D003            mov [0x3d0],al
000042A1  B81300            mov ax,0x13
000042A4  A3DB03            mov [0x3db],ax
000042A7  E9F501            jmp word 0x449f
000042AA  A0E203            mov al,[0x3e2]
000042AD  32E4              xor ah,ah
000042AF  3D4F00            cmp ax,0x4f
000042B2  7403              jz 0x42b7
000042B4  E96300            jmp word 0x431a
000042B7  A0CF03            mov al,[0x3cf]
000042BA  32E4              xor ah,ah
000042BC  3D0100            cmp ax,0x1
000042BF  7F03              jg 0x42c4
000042C1  E91700            jmp word 0x42db
000042C4  A0CF03            mov al,[0x3cf]
000042C7  32E4              xor ah,ah
000042C9  2D0100            sub ax,0x1
000042CC  A2CF03            mov [0x3cf],al
000042CF  A1D903            mov ax,[0x3d9]
000042D2  2D0300            sub ax,0x3
000042D5  A3D903            mov [0x3d9],ax
000042D8  E90C00            jmp word 0x42e7
000042DB  B81300            mov ax,0x13
000042DE  A2CF03            mov [0x3cf],al
000042E1  B84400            mov ax,0x44
000042E4  A3D903            mov [0x3d9],ax
000042E7  A0D003            mov al,[0x3d0]
000042EA  32E4              xor ah,ah
000042EC  3D1300            cmp ax,0x13
000042EF  7C03              jl 0x42f4
000042F1  E91700            jmp word 0x430b
000042F4  A0D003            mov al,[0x3d0]
000042F7  32E4              xor ah,ah
000042F9  050100            add ax,0x1
000042FC  A2D003            mov [0x3d0],al
000042FF  A1DB03            mov ax,[0x3db]
00004302  050100            add ax,0x1
00004305  A3DB03            mov [0x3db],ax
00004308  E90C00            jmp word 0x4317
0000430B  B80100            mov ax,0x1
0000430E  A2D003            mov [0x3d0],al
00004311  B80100            mov ax,0x1
00004314  A3DB03            mov [0x3db],ax
00004317  E98501            jmp word 0x449f
0000431A  A0E203            mov al,[0x3e2]
0000431D  32E4              xor ah,ah
0000431F  3D5100            cmp ax,0x51
00004322  7403              jz 0x4327
00004324  E96300            jmp word 0x438a
00004327  A0CF03            mov al,[0x3cf]
0000432A  32E4              xor ah,ah
0000432C  3D1300            cmp ax,0x13
0000432F  7C03              jl 0x4334
00004331  E91700            jmp word 0x434b
00004334  A0CF03            mov al,[0x3cf]
00004337  32E4              xor ah,ah
00004339  050100            add ax,0x1
0000433C  A2CF03            mov [0x3cf],al
0000433F  A1D903            mov ax,[0x3d9]
00004342  050300            add ax,0x3
00004345  A3D903            mov [0x3d9],ax
00004348  E90C00            jmp word 0x4357
0000434B  B80100            mov ax,0x1
0000434E  A2CF03            mov [0x3cf],al
00004351  B80E00            mov ax,0xe
00004354  A3D903            mov [0x3d9],ax
00004357  A0D003            mov al,[0x3d0]
0000435A  32E4              xor ah,ah
0000435C  3D1300            cmp ax,0x13
0000435F  7C03              jl 0x4364
00004361  E91700            jmp word 0x437b
00004364  A0D003            mov al,[0x3d0]
00004367  32E4              xor ah,ah
00004369  050100            add ax,0x1
0000436C  A2D003            mov [0x3d0],al
0000436F  A1DB03            mov ax,[0x3db]
00004372  050100            add ax,0x1
00004375  A3DB03            mov [0x3db],ax
00004378  E90C00            jmp word 0x4387
0000437B  B80100            mov ax,0x1
0000437E  A2D003            mov [0x3d0],al
00004381  B80100            mov ax,0x1
00004384  A3DB03            mov [0x3db],ax
00004387  E91501            jmp word 0x449f
0000438A  A0E203            mov al,[0x3e2]
0000438D  32E4              xor ah,ah
0000438F  3D0D00            cmp ax,0xd
00004392  B80100            mov ax,0x1
00004395  7401              jz 0x4398
00004397  48                dec ax
00004398  50                push ax
00004399  A0E203            mov al,[0x3e2]
0000439C  32E4              xor ah,ah
0000439E  3D2000            cmp ax,0x20
000043A1  B80100            mov ax,0x1
000043A4  7401              jz 0x43a7
000043A6  48                dec ax
000043A7  59                pop cx
000043A8  0BC1              or ax,cx
000043AA  0BC0              or ax,ax
000043AC  7503              jnz 0x43b1
000043AE  E9BB00            jmp word 0x446c
000043B1  A0CF03            mov al,[0x3cf]
000043B4  32E4              xor ah,ah
000043B6  B91300            mov cx,0x13
000043B9  F7E1              mul cx
000043BB  97                xchg ax,di
000043BC  57                push di
000043BD  A0D003            mov al,[0x3d0]
000043C0  32E4              xor ah,ah
000043C2  5F                pop di
000043C3  03F8              add di,ax
000043C5  8A854C02          mov al,[di+0x24c]
000043C9  32E4              xor ah,ah
000043CB  3D0100            cmp ax,0x1
000043CE  B80100            mov ax,0x1
000043D1  7401              jz 0x43d4
000043D3  48                dec ax
000043D4  3401              xor al,0x1
000043D6  7503              jnz 0x43db
000043D8  E98800            jmp word 0x4463
000043DB  B80D00            mov ax,0xd
000043DE  051000            add ax,0x10
000043E1  E8D7BF            call word 0x3bb
000043E4  B81C00            mov ax,0x1c
000043E7  50                push ax
000043E8  B81800            mov ax,0x18
000043EB  E8BCC9            call word 0xdaa
000043EE  E867E1            call word 0x2558
000043F1  E869E5            call word 0x295d
000043F4  1820              sbb [bx+si],ah
000043F6  49                dec cx
000043F7  6C                insb
000043F8  6C                insb
000043F9  656761            gs a32 popaw
000043FC  6C                insb
000043FD  206D6F            and [di+0x6f],ch
00004400  7665              jna 0x4467
00004402  2C20              sub al,0x20
00004404  7472              jz 0x4478
00004406  7920              jns 0x4428
00004408  61                popaw
00004409  6761              a32 popaw
0000440B  696EE812CC        imul bp,[bp-0x18],word 0xcc12
00004410  B80100            mov ax,0x1
00004413  50                push ax
00004414  B81800            mov ax,0x18
00004417  E890C9            call word 0xdaa
0000441A  B90C00            mov cx,0xc
0000441D  E8B1CB            call word 0xfd1
00004420  BFE203            mov di,0x3e2
00004423  1E                push ds
00004424  57                push di
00004425  E8EFE9            call word 0x2e17
00004428  B81C00            mov ax,0x1c
0000442B  50                push ax
0000442C  B81800            mov ax,0x18
0000442F  E878C9            call word 0xdaa
00004432  E823E1            call word 0x2558
00004435  E825E5            call word 0x295d
00004438  1A20              sbb ah,[bx+si]
0000443A  2020              and [bx+si],ah
0000443C  2020              and [bx+si],ah
0000443E  2020              and [bx+si],ah
00004440  2020              and [bx+si],ah
00004442  2020              and [bx+si],ah
00004444  2020              and [bx+si],ah
00004446  2020              and [bx+si],ah
00004448  2020              and [bx+si],ah
0000444A  2020              and [bx+si],ah
0000444C  2020              and [bx+si],ah
0000444E  2020              and [bx+si],ah
00004450  2020              and [bx+si],ah
00004452  20E8              and al,ch
00004454  CC                int3
00004455  CB                retf
00004456  A1D903            mov ax,[0x3d9]
00004459  50                push ax
0000445A  A1DB03            mov ax,[0x3db]
0000445D  E84AC9            call word 0xdaa
00004460  E90600            jmp word 0x4469
00004463  B80100            mov ax,0x1
00004466  A2DE03            mov [0x3de],al
00004469  E93300            jmp word 0x449f
0000446C  A0E203            mov al,[0x3e2]
0000446F  32E4              xor ah,ah
00004471  3D1B00            cmp ax,0x1b
00004474  B80100            mov ax,0x1
00004477  7401              jz 0x447a
00004479  48                dec ax
0000447A  50                push ax
0000447B  A0EC03            mov al,[0x3ec]
0000447E  32E4              xor ah,ah
00004480  59                pop cx
00004481  0BC1              or ax,cx
00004483  0BC0              or ax,ax
00004485  7503              jnz 0x448a
00004487  E91500            jmp word 0x449f
0000448A  B80100            mov ax,0x1
0000448D  A2DE03            mov [0x3de],al
00004490  B80100            mov ax,0x1
00004493  A2DD03            mov [0x3dd],al
00004496  B80100            mov ax,0x1
00004499  A2EC03            mov [0x3ec],al
0000449C  E90000            jmp word 0x449f
0000449F  E90000            jmp word 0x44a2
000044A2  8BE5              mov sp,bp
000044A4  5D                pop bp
000044A5  C3                ret
000044A6  55                push bp
000044A7  8BEC              mov bp,sp
000044A9  55                push bp
000044AA  E90000            jmp word 0x44ad
000044AD  B90800            mov cx,0x8
000044B0  E81ECB            call word 0xfd1
000044B3  E8DEEA            call word 0x2f94
000044B6  A0E103            mov al,[0x3e1]
000044B9  32E4              xor ah,ah
000044BB  3D0300            cmp ax,0x3
000044BE  7403              jz 0x44c3
000044C0  E97A00            jmp word 0x453d
000044C3  B80E00            mov ax,0xe
000044C6  E8F2BE            call word 0x3bb
000044C9  A0D103            mov al,[0x3d1]
000044CC  32E4              xor ah,ah
000044CE  B90300            mov cx,0x3
000044D1  F7E9              imul cx
000044D3  050B00            add ax,0xb
000044D6  50                push ax
000044D7  A0D203            mov al,[0x3d2]
000044DA  32E4              xor ah,ah
000044DC  E8CBC8            call word 0xdaa
000044DF  E876E0            call word 0x2558
000044E2  B82300            mov ax,0x23
000044E5  50                push ax
000044E6  B80000            mov ax,0x0
000044E9  E8B1E3            call word 0x289d
000044EC  E833CB            call word 0x1022
000044EF  A1D903            mov ax,[0x3d9]
000044F2  50                push ax
000044F3  A1DB03            mov ax,[0x3db]
000044F6  E8B1C8            call word 0xdaa
000044F9  B80D00            mov ax,0xd
000044FC  E8BCBE            call word 0x3bb
000044FF  E856E0            call word 0x2558
00004502  B84F00            mov ax,0x4f
00004505  50                push ax
00004506  B80000            mov ax,0x0
00004509  E891E3            call word 0x289d
0000450C  E813CB            call word 0x1022
0000450F  A0CF03            mov al,[0x3cf]
00004512  32E4              xor ah,ah
00004514  B91300            mov cx,0x13
00004517  F7E1              mul cx
00004519  97                xchg ax,di
0000451A  57                push di
0000451B  A0D003            mov al,[0x3d0]
0000451E  32E4              xor ah,ah
00004520  5F                pop di
00004521  03F8              add di,ax
00004523  B80300            mov ax,0x3
00004526  88854C02          mov [di+0x24c],al
0000452A  A0CF03            mov al,[0x3cf]
0000452D  32E4              xor ah,ah
0000452F  A2D703            mov [0x3d7],al
00004532  A0D003            mov al,[0x3d0]
00004535  32E4              xor ah,ah
00004537  A2D803            mov [0x3d8],al
0000453A  E95000            jmp word 0x458d
0000453D  A0ED03            mov al,[0x3ed]
00004540  32E4              xor ah,ah
00004542  3401              xor al,0x1
00004544  7503              jnz 0x4549
00004546  E90D00            jmp word 0x4556
00004549  B80E00            mov ax,0xe
0000454C  0306F403          add ax,[0x3f4]
00004550  E868BE            call word 0x3bb
00004553  E90600            jmp word 0x455c
00004556  B80E00            mov ax,0xe
00004559  E85FBE            call word 0x3bb
0000455C  E8F9DF            call word 0x2558
0000455F  B82300            mov ax,0x23
00004562  50                push ax
00004563  B80000            mov ax,0x0
00004566  E834E3            call word 0x289d
00004569  E8B6CA            call word 0x1022
0000456C  A0CF03            mov al,[0x3cf]
0000456F  32E4              xor ah,ah
00004571  B91300            mov cx,0x13
00004574  F7E1              mul cx
00004576  97                xchg ax,di
00004577  57                push di
00004578  A0D003            mov al,[0x3d0]
0000457B  32E4              xor ah,ah
0000457D  5F                pop di
0000457E  03F8              add di,ax
00004580  B80200            mov ax,0x2
00004583  88854C02          mov [di+0x24c],al
00004587  B80E00            mov ax,0xe
0000458A  E82EBE            call word 0x3bb
0000458D  A0CF03            mov al,[0x3cf]
00004590  32E4              xor ah,ah
00004592  50                push ax
00004593  A0D403            mov al,[0x3d4]
00004596  32E4              xor ah,ah
00004598  050200            add ax,0x2
0000459B  59                pop cx
0000459C  91                xchg ax,cx
0000459D  3BC1              cmp ax,cx
0000459F  7C03              jl 0x45a4
000045A1  E93800            jmp word 0x45dc
000045A4  A0CF03            mov al,[0x3cf]
000045A7  32E4              xor ah,ah
000045A9  3D0200            cmp ax,0x2
000045AC  7F03              jg 0x45b1
000045AE  E92200            jmp word 0x45d3
000045B1  B90B00            mov cx,0xb
000045B4  E81ACA            call word 0xfd1
000045B7  4C                dec sp
000045B8  A0CF03            mov al,[0x3cf]
000045BB  32E4              xor ah,ah
000045BD  2D0200            sub ax,0x2
000045C0  50                push ax
000045C1  A0D403            mov al,[0x3d4]
000045C4  32E4              xor ah,ah
000045C6  2D0100            sub ax,0x1
000045C9  50                push ax
000045CA  E80EE8            call word 0x2ddb
000045CD  A2D403            mov [0x3d4],al
000045D0  E90600            jmp word 0x45d9
000045D3  B80100            mov ax,0x1
000045D6  A2D403            mov [0x3d4],al
000045D9  E94C00            jmp word 0x4628
000045DC  A0CF03            mov al,[0x3cf]
000045DF  32E4              xor ah,ah
000045E1  50                push ax
000045E2  A0D303            mov al,[0x3d3]
000045E5  32E4              xor ah,ah
000045E7  2D0200            sub ax,0x2
000045EA  59                pop cx
000045EB  91                xchg ax,cx
000045EC  3BC1              cmp ax,cx
000045EE  7F03              jg 0x45f3
000045F0  E93500            jmp word 0x4628
000045F3  A0CF03            mov al,[0x3cf]
000045F6  32E4              xor ah,ah
000045F8  3D1100            cmp ax,0x11
000045FB  7C03              jl 0x4600
000045FD  E92200            jmp word 0x4622
00004600  B90B00            mov cx,0xb
00004603  E8CBC9            call word 0xfd1
00004606  4C                dec sp
00004607  A0CF03            mov al,[0x3cf]
0000460A  32E4              xor ah,ah
0000460C  050200            add ax,0x2
0000460F  50                push ax
00004610  A0D303            mov al,[0x3d3]
00004613  32E4              xor ah,ah
00004615  050100            add ax,0x1
00004618  50                push ax
00004619  E883E7            call word 0x2d9f
0000461C  A2D303            mov [0x3d3],al
0000461F  E90600            jmp word 0x4628
00004622  B81300            mov ax,0x13
00004625  A2D303            mov [0x3d3],al
00004628  A0D003            mov al,[0x3d0]
0000462B  32E4              xor ah,ah
0000462D  50                push ax
0000462E  A0D603            mov al,[0x3d6]
00004631  32E4              xor ah,ah
00004633  050200            add ax,0x2
00004636  59                pop cx
00004637  91                xchg ax,cx
00004638  3BC1              cmp ax,cx
0000463A  7C03              jl 0x463f
0000463C  E93800            jmp word 0x4677
0000463F  A0D003            mov al,[0x3d0]
00004642  32E4              xor ah,ah
00004644  3D0200            cmp ax,0x2
00004647  7F03              jg 0x464c
00004649  E92200            jmp word 0x466e
0000464C  B90B00            mov cx,0xb
0000464F  E87FC9            call word 0xfd1
00004652  4C                dec sp
00004653  A0D003            mov al,[0x3d0]
00004656  32E4              xor ah,ah
00004658  2D0200            sub ax,0x2
0000465B  50                push ax
0000465C  A0D603            mov al,[0x3d6]
0000465F  32E4              xor ah,ah
00004661  2D0100            sub ax,0x1
00004664  50                push ax
00004665  E873E7            call word 0x2ddb
00004668  A2D603            mov [0x3d6],al
0000466B  E90600            jmp word 0x4674
0000466E  B80100            mov ax,0x1
00004671  A2D603            mov [0x3d6],al
00004674  E94C00            jmp word 0x46c3
00004677  A0D003            mov al,[0x3d0]
0000467A  32E4              xor ah,ah
0000467C  50                push ax
0000467D  A0D503            mov al,[0x3d5]
00004680  32E4              xor ah,ah
00004682  2D0200            sub ax,0x2
00004685  59                pop cx
00004686  91                xchg ax,cx
00004687  3BC1              cmp ax,cx
00004689  7F03              jg 0x468e
0000468B  E93500            jmp word 0x46c3
0000468E  A0D003            mov al,[0x3d0]
00004691  32E4              xor ah,ah
00004693  3D1100            cmp ax,0x11
00004696  7C03              jl 0x469b
00004698  E92200            jmp word 0x46bd
0000469B  B90B00            mov cx,0xb
0000469E  E830C9            call word 0xfd1
000046A1  4C                dec sp
000046A2  A0D003            mov al,[0x3d0]
000046A5  32E4              xor ah,ah
000046A7  050200            add ax,0x2
000046AA  50                push ax
000046AB  A0D503            mov al,[0x3d5]
000046AE  32E4              xor ah,ah
000046B0  050100            add ax,0x1
000046B3  50                push ax
000046B4  E8E8E6            call word 0x2d9f
000046B7  A2D503            mov [0x3d5],al
000046BA  E90600            jmp word 0x46c3
000046BD  B81300            mov ax,0x13
000046C0  A2D503            mov [0x3d5],al
000046C3  E90000            jmp word 0x46c6
000046C6  8BE5              mov sp,bp
000046C8  5D                pop bp
000046C9  C3                ret
000046CA  55                push bp
000046CB  8BEC              mov bp,sp
000046CD  55                push bp
000046CE  E90000            jmp word 0x46d1
000046D1  B82900            mov ax,0x29
000046D4  A3D903            mov [0x3d9],ax
000046D7  B80A00            mov ax,0xa
000046DA  A3DB03            mov [0x3db],ax
000046DD  B80A00            mov ax,0xa
000046E0  A2CF03            mov [0x3cf],al
000046E3  B80A00            mov ax,0xa
000046E6  A2D003            mov [0x3d0],al
000046E9  A1D903            mov ax,[0x3d9]
000046EC  50                push ax
000046ED  A1DB03            mov ax,[0x3db]
000046F0  E8B7C6            call word 0xdaa
000046F3  B90600            mov cx,0x6
000046F6  E8D8C8            call word 0xfd1
000046F9  E82AE8            call word 0x2f26
000046FC  B80000            mov ax,0x0
000046FF  A2DE03            mov [0x3de],al
00004702  B90600            mov cx,0x6
00004705  E8C9C8            call word 0xfd1
00004708  E8A1F9            call word 0x40ac
0000470B  B90600            mov cx,0x6
0000470E  E8C0C8            call word 0xfd1
00004711  E812E8            call word 0x2f26
00004714  A0DE03            mov al,[0x3de]
00004717  32E4              xor ah,ah
00004719  0BC0              or ax,ax
0000471B  7503              jnz 0x4720
0000471D  E9E2FF            jmp word 0x4702
00004720  A0EC03            mov al,[0x3ec]
00004723  32E4              xor ah,ah
00004725  3401              xor al,0x1
00004727  7503              jnz 0x472c
00004729  E90900            jmp word 0x4735
0000472C  B90600            mov cx,0x6
0000472F  E89FC8            call word 0xfd1
00004732  E871FD            call word 0x44a6
00004735  E90000            jmp word 0x4738
00004738  8BE5              mov sp,bp
0000473A  5D                pop bp
0000473B  C3                ret
0000473C  55                push bp
0000473D  8BEC              mov bp,sp
0000473F  55                push bp
00004740  E90000            jmp word 0x4743
00004743  83EC04            sub sp,byte +0x4
00004746  B80000            mov ax,0x0
00004749  A2DD03            mov [0x3dd],al
0000474C  B80100            mov ax,0x1
0000474F  A2E503            mov [0x3e5],al
00004752  B80000            mov ax,0x0
00004755  A2EC03            mov [0x3ec],al
00004758  B80000            mov ax,0x0
0000475B  A2D103            mov [0x3d1],al
0000475E  B80000            mov ax,0x0
00004761  A2D203            mov [0x3d2],al
00004764  B80C00            mov ax,0xc
00004767  A2D303            mov [0x3d3],al
0000476A  B80C00            mov ax,0xc
0000476D  A2D503            mov [0x3d5],al
00004770  B80800            mov ax,0x8
00004773  A2D403            mov [0x3d4],al
00004776  B80800            mov ax,0x8
00004779  A2D603            mov [0x3d6],al
0000477C  B80000            mov ax,0x0
0000477F  A3CB03            mov [0x3cb],ax
00004782  B80000            mov ax,0x0
00004785  A3CD03            mov [0x3cd],ax
00004788  A1E903            mov ax,[0x3e9]
0000478B  3D0100            cmp ax,0x1
0000478E  7403              jz 0x4793
00004790  E90E00            jmp word 0x47a1
00004793  33C0              xor ax,ax
00004795  33D2              xor dx,dx
00004797  A3EE03            mov [0x3ee],ax
0000479A  8916F003          mov [0x3f0],dx
0000479E  E94000            jmp word 0x47e1
000047A1  C406EE03          les ax,[0x3ee]
000047A5  8CC2              mov dx,es
000047A7  52                push dx
000047A8  50                push ax
000047A9  33C0              xor ax,ax
000047AB  33D2              xor dx,dx
000047AD  5B                pop bx
000047AE  59                pop cx
000047AF  E889CE            call word 0x163b
000047B2  7503              jnz 0x47b7
000047B4  E92A00            jmp word 0x47e1
000047B7  C406EE03          les ax,[0x3ee]
000047BB  8CC2              mov dx,es
000047BD  8946FA            mov [bp-0x6],ax
000047C0  8956FC            mov [bp-0x4],dx
000047C3  C43EEE03          les di,[0x3ee]
000047C7  26C44504          les ax,[es:di+0x4]
000047CB  8CC2              mov dx,es
000047CD  A3EE03            mov [0x3ee],ax
000047D0  8916F003          mov [0x3f0],dx
000047D4  8D7EFA            lea di,[bp-0x6]
000047D7  16                push ss
000047D8  B90800            mov cx,0x8
000047DB  E8E8BE            call word 0x6c6
000047DE  E9C0FF            jmp word 0x47a1
000047E1  B80100            mov ax,0x1
000047E4  50                push ax
000047E5  B81300            mov ax,0x13
000047E8  59                pop cx
000047E9  91                xchg ax,cx
000047EA  2BC8              sub cx,ax
000047EC  7D03              jnl 0x47f1
000047EE  E94B00            jmp word 0x483c
000047F1  41                inc cx
000047F2  A2CF03            mov [0x3cf],al
000047F5  51                push cx
000047F6  B80100            mov ax,0x1
000047F9  50                push ax
000047FA  B81300            mov ax,0x13
000047FD  59                pop cx
000047FE  91                xchg ax,cx
000047FF  2BC8              sub cx,ax
00004801  7D03              jnl 0x4806
00004803  E92B00            jmp word 0x4831
00004806  41                inc cx
00004807  A2D003            mov [0x3d0],al
0000480A  51                push cx
0000480B  A0CF03            mov al,[0x3cf]
0000480E  32E4              xor ah,ah
00004810  B91300            mov cx,0x13
00004813  F7E1              mul cx
00004815  97                xchg ax,di
00004816  57                push di
00004817  A0D003            mov al,[0x3d0]
0000481A  32E4              xor ah,ah
0000481C  5F                pop di
0000481D  03F8              add di,ax
0000481F  B80100            mov ax,0x1
00004822  88854C02          mov [di+0x24c],al
00004826  59                pop cx
00004827  49                dec cx
00004828  7407              jz 0x4831
0000482A  FE06D003          inc byte [0x3d0]
0000482E  E9D9FF            jmp word 0x480a
00004831  59                pop cx
00004832  49                dec cx
00004833  7407              jz 0x483c
00004835  FE06CF03          inc byte [0x3cf]
00004839  E9B9FF            jmp word 0x47f5
0000483C  B90800            mov cx,0x8
0000483F  E88FC7            call word 0xfd1
00004842  E8F9F4            call word 0x3d3e
00004845  E90000            jmp word 0x4848
00004848  8BE5              mov sp,bp
0000484A  5D                pop bp
0000484B  C3                ret
0000484C  55                push bp
0000484D  8BEC              mov bp,sp
0000484F  55                push bp
00004850  E90000            jmp word 0x4853
00004853  83EC4C            sub sp,byte +0x4c
00004856  8D7EB2            lea di,[bp-0x4e]
00004859  16                push ss
0000485A  57                push di
0000485B  E887C9            call word 0x11e5
0000485E  097068            or [bx+si+0x68],si
00004861  656C              gs insb
00004863  702E              jo 0x4893
00004865  63686E            arpl [bx+si+0x6e],bp
00004868  E859E1            call word 0x29c4
0000486B  8D7EB2            lea di,[bp-0x4e]
0000486E  16                push ss
0000486F  E8AFE4            call word 0x2d21
00004872  E8ADC7            call word 0x1022
00004875  E90000            jmp word 0x4878
00004878  8BE5              mov sp,bp
0000487A  5D                pop bp
0000487B  C3                ret
0000487C  55                push bp
0000487D  8BEC              mov bp,sp
0000487F  55                push bp
00004880  E90000            jmp word 0x4883
00004883  83EC03            sub sp,byte +0x3
00004886  E89DB9            call word 0x226
00004889  B80100            mov ax,0x1
0000488C  50                push ax
0000488D  B80300            mov ax,0x3
00004890  E817C5            call word 0xdaa
00004893  E8C2DC            call word 0x2558
00004896  E8C4E0            call word 0x295d
00004899  1C43              sbb al,0x43
0000489B  68616E            push word 0x6e61
0000489E  676520746865      and [dword gs:eax+ebp*2+0x65],dh
000048A4  20636F            and [bp+di+0x6f],ah
000048A7  6C                insb
000048A8  6F                outsw
000048A9  7220              jc 0x48cb
000048AB  6F                outsw
000048AC  66207468          o32 and [si+0x68],dh
000048B0  65206772          and [gs:bx+0x72],ah
000048B4  6964E8BCE0        imul sp,[si-0x18],word 0xe0bc
000048B9  E866C7            call word 0x1022
000048BC  E899DC            call word 0x2558
000048BF  E89BE0            call word 0x295d
000048C2  206368            and [bp+di+0x68],ah
000048C5  6F                outsw
000048C6  696365206F        imul sp,[bp+di+0x65],word 0x6f20
000048CB  6620636F          o32 and [bp+di+0x6f],ah
000048CF  6C                insb
000048D0  6F                outsw
000048D1  7273              jc 0x4946
000048D3  206973            and [bx+di+0x73],ch
000048D6  204379            and [bp+di+0x79],al
000048D9  61                popaw
000048DA  6E                outsb
000048DB  206F72            and [bx+0x72],ch
000048DE  204772            and [bx+0x72],al
000048E1  6579E8            gs jns 0x48cc
000048E4  8F                db 0x8f
000048E5  E0E8              loopne 0x48cf
000048E7  39C7              cmp di,ax
000048E9  E86CDC            call word 0x2558
000048EC  E86EE0            call word 0x295d
000048EF  30746F            xor [si+0x6f],dh
000048F2  7563              jnz 0x4957
000048F4  682053            push word 0x5320
000048F7  50                push ax
000048F8  41                inc cx
000048F9  43                inc bx
000048FA  45                inc bp
000048FB  20746F            and [si+0x6f],dh
000048FE  20616C            and [bx+di+0x6c],ah
00004901  7465              jz 0x4968
00004903  726E              jc 0x4973
00004905  61                popaw
00004906  7465              jz 0x496d
00004908  20636F            and [bp+di+0x6f],ah
0000490B  6C                insb
0000490C  6F                outsw
0000490D  722C              jc 0x493b
0000490F  205245            and [bp+si+0x45],dl
00004912  54                push sp
00004913  55                push bp
00004914  52                push dx
00004915  4E                dec si
00004916  20746F            and [si+0x6f],dh
00004919  206368            and [bp+di+0x68],ah
0000491C  6F                outsw
0000491D  6F                outsw
0000491E  7365              jnc 0x4985
00004920  E852E0            call word 0x2975
00004923  E8FCC6            call word 0x1022
00004926  B80800            mov ax,0x8
00004929  8946FB            mov [bp-0x5],ax
0000492C  B80000            mov ax,0x0
0000492F  8846FD            mov [bp-0x3],al
00004932  B82800            mov ax,0x28
00004935  50                push ax
00004936  B80A00            mov ax,0xa
00004939  E86EC4            call word 0xdaa
0000493C  E819DC            call word 0x2558
0000493F  E81BE0            call word 0x295d
00004942  0447              add al,0x47
00004944  52                push dx
00004945  45                inc bp
00004946  59                pop cx
00004947  E8D8C6            call word 0x1022
0000494A  BF4A01            mov di,0x14a
0000494D  1E                push ds
0000494E  E8EADB            call word 0x253b
00004951  BFE303            mov di,0x3e3
00004954  1E                push ds
00004955  E80ADE            call word 0x2762
00004958  E8C7C6            call word 0x1022
0000495B  A0E303            mov al,[0x3e3]
0000495E  32E4              xor ah,ah
00004960  3D2000            cmp ax,0x20
00004963  7403              jz 0x4968
00004965  E94D00            jmp word 0x49b5
00004968  8B46FB            mov ax,[bp-0x5]
0000496B  3D0800            cmp ax,0x8
0000496E  7403              jz 0x4973
00004970  E92100            jmp word 0x4994
00004973  B80300            mov ax,0x3
00004976  8946FB            mov [bp-0x5],ax
00004979  B82800            mov ax,0x28
0000497C  50                push ax
0000497D  B80A00            mov ax,0xa
00004980  E827C4            call word 0xdaa
00004983  E8D2DB            call word 0x2558
00004986  E8D4DF            call word 0x295d
00004989  0443              add al,0x43
0000498B  59                pop cx
0000498C  41                inc cx
0000498D  4E                dec si
0000498E  E891C6            call word 0x1022
00004991  E91E00            jmp word 0x49b2
00004994  B80800            mov ax,0x8
00004997  8946FB            mov [bp-0x5],ax
0000499A  B82800            mov ax,0x28
0000499D  50                push ax
0000499E  B80A00            mov ax,0xa
000049A1  E806C4            call word 0xdaa
000049A4  E8B1DB            call word 0x2558
000049A7  E8B3DF            call word 0x295d
000049AA  0447              add al,0x47
000049AC  52                push dx
000049AD  45                inc bp
000049AE  59                pop cx
000049AF  E870C6            call word 0x1022
000049B2  E92200            jmp word 0x49d7
000049B5  A0E303            mov al,[0x3e3]
000049B8  32E4              xor ah,ah
000049BA  3D0D00            cmp ax,0xd
000049BD  7403              jz 0x49c2
000049BF  E90F00            jmp word 0x49d1
000049C2  8B46FB            mov ax,[bp-0x5]
000049C5  A3F203            mov [0x3f2],ax
000049C8  B80100            mov ax,0x1
000049CB  8846FD            mov [bp-0x3],al
000049CE  E90600            jmp word 0x49d7
000049D1  B80100            mov ax,0x1
000049D4  8846FD            mov [bp-0x3],al
000049D7  8A46FD            mov al,[bp-0x3]
000049DA  32E4              xor ah,ah
000049DC  0BC0              or ax,ax
000049DE  7503              jnz 0x49e3
000049E0  E967FF            jmp word 0x494a
000049E3  E840B8            call word 0x226
000049E6  B80000            mov ax,0x0
000049E9  8846FD            mov [bp-0x3],al
000049EC  B80100            mov ax,0x1
000049EF  50                push ax
000049F0  B80300            mov ax,0x3
000049F3  E8B4C3            call word 0xdaa
000049F6  E85FDB            call word 0x2558
000049F9  E861DF            call word 0x295d
000049FC  2B4368            sub ax,[bp+di+0x68]
000049FF  61                popaw
00004A00  6E                outsb
00004A01  676520746865      and [dword gs:eax+ebp*2+0x65],dh
00004A07  20636F            and [bp+di+0x6f],ah
00004A0A  6C                insb
00004A0B  6F                outsw
00004A0C  7220              jc 0x4a2e
00004A0E  6F                outsw
00004A0F  66207468          o32 and [si+0x68],dh
00004A13  6520636F          and [gs:bp+di+0x6f],ah
00004A17  6D                insw
00004A18  7075              jo 0x4a8f
00004A1A  7465              jz 0x4a81
00004A1C  7273              jc 0x4a91
00004A1E  206C61            and [si+0x61],ch
00004A21  7374              jnc 0x4a97
00004A23  206D6F            and [di+0x6f],ch
00004A26  7665              jna 0x4a8d
00004A28  E84ADF            call word 0x2975
00004A2B  E8F4C5            call word 0x1022
00004A2E  E827DB            call word 0x2558
00004A31  E829DF            call word 0x295d
00004A34  256368            and ax,0x6863
00004A37  6F                outsw
00004A38  696365206F        imul sp,[bp+di+0x65],word 0x6f20
00004A3D  6620636F          o32 and [bp+di+0x6f],ah
00004A41  6C                insb
00004A42  6F                outsw
00004A43  7273              jc 0x4ab8
00004A45  206973            and [bx+di+0x73],ch
00004A48  205748            and [bx+0x48],dl
00004A4B  49                dec cx
00004A4C  54                push sp
00004A4D  45                inc bp
00004A4E  206F72            and [bx+0x72],ch
00004A51  20424C            and [bp+si+0x4c],al
00004A54  49                dec cx
00004A55  4E                dec si
00004A56  4B                dec bx
00004A57  49                dec cx
00004A58  4E                dec si
00004A59  47                inc di
00004A5A  E818DF            call word 0x2975
00004A5D  E8C2C5            call word 0x1022
00004A60  E8F5DA            call word 0x2558
00004A63  E8F7DE            call word 0x295d
00004A66  30746F            xor [si+0x6f],dh
00004A69  7563              jnz 0x4ace
00004A6B  682053            push word 0x5320
00004A6E  50                push ax
00004A6F  41                inc cx
00004A70  43                inc bx
00004A71  45                inc bp
00004A72  20746F            and [si+0x6f],dh
00004A75  20616C            and [bx+di+0x6c],ah
00004A78  7465              jz 0x4adf
00004A7A  726E              jc 0x4aea
00004A7C  61                popaw
00004A7D  7465              jz 0x4ae4
00004A7F  20636F            and [bp+di+0x6f],ah
00004A82  6C                insb
00004A83  6F                outsw
00004A84  722C              jc 0x4ab2
00004A86  205245            and [bp+si+0x45],dl
00004A89  54                push sp
00004A8A  55                push bp
00004A8B  52                push dx
00004A8C  4E                dec si
00004A8D  20746F            and [si+0x6f],dh
00004A90  206368            and [bp+di+0x68],ah
00004A93  6F                outsw
00004A94  6F                outsw
00004A95  7365              jnc 0x4afc
00004A97  E8DBDE            call word 0x2975
00004A9A  E885C5            call word 0x1022
00004A9D  B80100            mov ax,0x1
00004AA0  8946FB            mov [bp-0x5],ax
00004AA3  B80000            mov ax,0x0
00004AA6  8846FD            mov [bp-0x3],al
00004AA9  B82800            mov ax,0x28
00004AAC  50                push ax
00004AAD  B80A00            mov ax,0xa
00004AB0  E8F7C2            call word 0xdaa
00004AB3  E8A2DA            call word 0x2558
00004AB6  E8A4DE            call word 0x295d
00004AB9  055748            add ax,0x4857
00004ABC  49                dec cx
00004ABD  54                push sp
00004ABE  45                inc bp
00004ABF  E860C5            call word 0x1022
00004AC2  BF4A01            mov di,0x14a
00004AC5  1E                push ds
00004AC6  E872DA            call word 0x253b
00004AC9  BFE303            mov di,0x3e3
00004ACC  1E                push ds
00004ACD  E892DC            call word 0x2762
00004AD0  E84FC5            call word 0x1022
00004AD3  A0E303            mov al,[0x3e3]
00004AD6  32E4              xor ah,ah
00004AD8  3D2000            cmp ax,0x20
00004ADB  7403              jz 0x4ae0
00004ADD  E95500            jmp word 0x4b35
00004AE0  8B46FB            mov ax,[bp-0x5]
00004AE3  3D0100            cmp ax,0x1
00004AE6  7403              jz 0x4aeb
00004AE8  E92500            jmp word 0x4b10
00004AEB  B81000            mov ax,0x10
00004AEE  8946FB            mov [bp-0x5],ax
00004AF1  B82800            mov ax,0x28
00004AF4  50                push ax
00004AF5  B80A00            mov ax,0xa
00004AF8  E8AFC2            call word 0xdaa
00004AFB  E85ADA            call word 0x2558
00004AFE  E85CDE            call word 0x295d
00004B01  08424C            or [bp+si+0x4c],al
00004B04  49                dec cx
00004B05  4E                dec si
00004B06  4B                dec bx
00004B07  49                dec cx
00004B08  4E                dec si
00004B09  47                inc di
00004B0A  E815C5            call word 0x1022
00004B0D  E92200            jmp word 0x4b32
00004B10  B80100            mov ax,0x1
00004B13  8946FB            mov [bp-0x5],ax
00004B16  B82800            mov ax,0x28
00004B19  50                push ax
00004B1A  B80A00            mov ax,0xa
00004B1D  E88AC2            call word 0xdaa
00004B20  E835DA            call word 0x2558
00004B23  E837DE            call word 0x295d
00004B26  085748            or [bx+0x48],dl
00004B29  49                dec cx
00004B2A  54                push sp
00004B2B  45                inc bp
00004B2C  2020              and [bx+si],ah
00004B2E  20E8              and al,ch
00004B30  F0                lock
00004B31  C4                db 0xc4
00004B32  E92200            jmp word 0x4b57
00004B35  A0E303            mov al,[0x3e3]
00004B38  32E4              xor ah,ah
00004B3A  3D0D00            cmp ax,0xd
00004B3D  7403              jz 0x4b42
00004B3F  E90F00            jmp word 0x4b51
00004B42  8B46FB            mov ax,[bp-0x5]
00004B45  A3F403            mov [0x3f4],ax
00004B48  B80100            mov ax,0x1
00004B4B  8846FD            mov [bp-0x3],al
00004B4E  E90600            jmp word 0x4b57
00004B51  B80100            mov ax,0x1
00004B54  8846FD            mov [bp-0x3],al
00004B57  8A46FD            mov al,[bp-0x3]
00004B5A  32E4              xor ah,ah
00004B5C  0BC0              or ax,ax
00004B5E  7503              jnz 0x4b63
00004B60  E95FFF            jmp word 0x4ac2
00004B63  E90000            jmp word 0x4b66
00004B66  8BE5              mov sp,bp
00004B68  5D                pop bp
00004B69  C3                ret
00004B6A  55                push bp
00004B6B  8BEC              mov bp,sp
00004B6D  55                push bp
00004B6E  E90000            jmp word 0x4b71
00004B71  B80000            mov ax,0x0
00004B74  A2ED03            mov [0x3ed],al
00004B77  E8ACB6            call word 0x226
00004B7A  B80D00            mov ax,0xd
00004B7D  E83BB8            call word 0x3bb
00004B80  B80100            mov ax,0x1
00004B83  50                push ax
00004B84  B80200            mov ax,0x2
00004B87  E820C2            call word 0xdaa
00004B8A  E8CBD9            call word 0x2558
00004B8D  E8CDDD            call word 0x295d
00004B90  1820              sbb [bx+si],ah
00004B92  2020              and [bx+si],ah
00004B94  2020              and [bx+si],ah
00004B96  2020              and [bx+si],ah
00004B98  2020              and [bx+si],ah
00004B9A  2020              and [bx+si],ah
00004B9C  2020              and [bx+si],ah
00004B9E  202A              and [bp+si],ch
00004BA0  2A2A              sub ch,[bp+si]
00004BA2  2A2A              sub ch,[bp+si]
00004BA4  2A2A              sub ch,[bp+si]
00004BA6  2A2A              sub ch,[bp+si]
00004BA8  2AE8              sub ch,al
00004BAA  C9                leave
00004BAB  DDE8              fucomp st0
00004BAD  73C4              jnc 0x4b73
00004BAF  E8A6D9            call word 0x2558
00004BB2  E8A8DD            call word 0x295d
00004BB5  1920              sbb [bx+si],sp
00004BB7  2020              and [bx+si],ah
00004BB9  2020              and [bx+si],ah
00004BBB  2020              and [bx+si],ah
00004BBD  2020              and [bx+si],ah
00004BBF  2020              and [bx+si],ah
00004BC1  2020              and [bx+si],ah
00004BC3  2A2A              sub ch,[bp+si]
00004BC5  2A2A              sub ch,[bp+si]
00004BC7  2A2A              sub ch,[bp+si]
00004BC9  2A2A              sub ch,[bp+si]
00004BCB  2A2A              sub ch,[bp+si]
00004BCD  2A2A              sub ch,[bp+si]
00004BCF  E8A3DD            call word 0x2975
00004BD2  E84DC4            call word 0x1022
00004BD5  E880D9            call word 0x2558
00004BD8  E882DD            call word 0x295d
00004BDB  1A20              sbb ah,[bx+si]
00004BDD  2020              and [bx+si],ah
00004BDF  2020              and [bx+si],ah
00004BE1  2020              and [bx+si],ah
00004BE3  2020              and [bx+si],ah
00004BE5  2020              and [bx+si],ah
00004BE7  202A              and [bp+si],ch
00004BE9  2A2A              sub ch,[bp+si]
00004BEB  2A2A              sub ch,[bp+si]
00004BED  2020              and [bx+si],ah
00004BEF  2020              and [bx+si],ah
00004BF1  202A              and [bp+si],ch
00004BF3  2A2A              sub ch,[bp+si]
00004BF5  2AE8              sub ch,al
00004BF7  7CDD              jl 0x4bd6
00004BF9  E826C4            call word 0x1022
00004BFC  E859D9            call word 0x2558
00004BFF  E85BDD            call word 0x295d
00004C02  1A20              sbb ah,[bx+si]
00004C04  2020              and [bx+si],ah
00004C06  2020              and [bx+si],ah
00004C08  2020              and [bx+si],ah
00004C0A  2020              and [bx+si],ah
00004C0C  2020              and [bx+si],ah
00004C0E  2A2A              sub ch,[bp+si]
00004C10  2A2A              sub ch,[bp+si]
00004C12  2A20              sub ah,[bx+si]
00004C14  2020              and [bx+si],ah
00004C16  2020              and [bx+si],ah
00004C18  2A2A              sub ch,[bp+si]
00004C1A  2A2A              sub ch,[bp+si]
00004C1C  2AE8              sub ch,al
00004C1E  55                push bp
00004C1F  DDE8              fucomp st0
00004C21  FFC3              inc bx
00004C23  E832D9            call word 0x2558
00004C26  E834DD            call word 0x295d
00004C29  44                inc sp
00004C2A  2020              and [bx+si],ah
00004C2C  2020              and [bx+si],ah
00004C2E  2020              and [bx+si],ah
00004C30  2020              and [bx+si],ah
00004C32  2020              and [bx+si],ah
00004C34  2A2A              sub ch,[bp+si]
00004C36  2A2A              sub ch,[bp+si]
00004C38  2A2A              sub ch,[bp+si]
00004C3A  2A2A              sub ch,[bp+si]
00004C3C  2A2A              sub ch,[bp+si]
00004C3E  2A2A              sub ch,[bp+si]
00004C40  2A2A              sub ch,[bp+si]
00004C42  2A20              sub ah,[bx+si]
00004C44  2A2A              sub ch,[bp+si]
00004C46  2A2A              sub ch,[bp+si]
00004C48  2A2A              sub ch,[bp+si]
00004C4A  2A2A              sub ch,[bp+si]
00004C4C  2A20              sub ah,[bx+si]
00004C4E  2A2A              sub ch,[bp+si]
00004C50  2A20              sub ah,[bx+si]
00004C52  2020              and [bx+si],ah
00004C54  202A              and [bp+si],ch
00004C56  2A20              sub ah,[bx+si]
00004C58  2A2A              sub ch,[bp+si]
00004C5A  2A2A              sub ch,[bp+si]
00004C5C  2A2A              sub ch,[bp+si]
00004C5E  2A2A              sub ch,[bp+si]
00004C60  2A2A              sub ch,[bp+si]
00004C62  2A2A              sub ch,[bp+si]
00004C64  202A              and [bp+si],ch
00004C66  2A2A              sub ch,[bp+si]
00004C68  2A2A              sub ch,[bp+si]
00004C6A  2A2A              sub ch,[bp+si]
00004C6C  2A2A              sub ch,[bp+si]
00004C6E  E804DD            call word 0x2975
00004C71  E8AEC3            call word 0x1022
00004C74  E8E1D8            call word 0x2558
00004C77  E8E3DC            call word 0x295d
00004C7A  3C20              cmp al,0x20
00004C7C  2020              and [bx+si],ah
00004C7E  2020              and [bx+si],ah
00004C80  2020              and [bx+si],ah
00004C82  2020              and [bx+si],ah
00004C84  2A2A              sub ch,[bp+si]
00004C86  2A2A              sub ch,[bp+si]
00004C88  2A2A              sub ch,[bp+si]
00004C8A  2A2A              sub ch,[bp+si]
00004C8C  2A2A              sub ch,[bp+si]
00004C8E  2A2A              sub ch,[bp+si]
00004C90  2A20              sub ah,[bx+si]
00004C92  2020              and [bx+si],ah
00004C94  2A2A              sub ch,[bp+si]
00004C96  2020              and [bx+si],ah
00004C98  2020              and [bx+si],ah
00004C9A  2020              and [bx+si],ah
00004C9C  2020              and [bx+si],ah
00004C9E  2A2A              sub ch,[bp+si]
00004CA0  202A              and [bp+si],ch
00004CA2  2020              and [bx+si],ah
00004CA4  202A              and [bp+si],ch
00004CA6  2A20              sub ah,[bx+si]
00004CA8  2020              and [bx+si],ah
00004CAA  2020              and [bx+si],ah
00004CAC  202A              and [bp+si],ch
00004CAE  2A20              sub ah,[bx+si]
00004CB0  2020              and [bx+si],ah
00004CB2  2020              and [bx+si],ah
00004CB4  202A              and [bp+si],ch
00004CB6  2AE8              sub ch,al
00004CB8  BBDCE8            mov bx,0xe8dc
00004CBB  65C3              gs ret
00004CBD  E898D8            call word 0x2558
00004CC0  E89ADC            call word 0x295d
00004CC3  3F                aas
00004CC4  2020              and [bx+si],ah
00004CC6  2020              and [bx+si],ah
00004CC8  2020              and [bx+si],ah
00004CCA  2020              and [bx+si],ah
00004CCC  2A2A              sub ch,[bp+si]
00004CCE  2A2A              sub ch,[bp+si]
00004CD0  2A20              sub ah,[bx+si]
00004CD2  2020              and [bx+si],ah
00004CD4  2020              and [bx+si],ah
00004CD6  2020              and [bx+si],ah
00004CD8  2020              and [bx+si],ah
00004CDA  2020              and [bx+si],ah
00004CDC  2A2A              sub ch,[bp+si]
00004CDE  2A2A              sub ch,[bp+si]
00004CE0  2A2A              sub ch,[bp+si]
00004CE2  2020              and [bx+si],ah
00004CE4  2020              and [bx+si],ah
00004CE6  2A2A              sub ch,[bp+si]
00004CE8  2020              and [bx+si],ah
00004CEA  2A20              sub ah,[bx+si]
00004CEC  202A              and [bp+si],ch
00004CEE  2A20              sub ah,[bx+si]
00004CF0  2020              and [bx+si],ah
00004CF2  2020              and [bx+si],ah
00004CF4  202A              and [bp+si],ch
00004CF6  2A20              sub ah,[bx+si]
00004CF8  2020              and [bx+si],ah
00004CFA  2020              and [bx+si],ah
00004CFC  202A              and [bp+si],ch
00004CFE  2A2A              sub ch,[bp+si]
00004D00  2A2A              sub ch,[bp+si]
00004D02  2AE8              sub ch,al
00004D04  6F                outsw
00004D05  DCE8              fsub to st0
00004D07  19C3              sbb bx,ax
00004D09  E84CD8            call word 0x2558
00004D0C  E84EDC            call word 0x295d
00004D0F  3A20              cmp ah,[bx+si]
00004D11  2020              and [bx+si],ah
00004D13  2020              and [bx+si],ah
00004D15  2020              and [bx+si],ah
00004D17  2A2A              sub ch,[bp+si]
00004D19  2A2A              sub ch,[bp+si]
00004D1B  2A20              sub ah,[bx+si]
00004D1D  2020              and [bx+si],ah
00004D1F  2020              and [bx+si],ah
00004D21  2020              and [bx+si],ah
00004D23  2020              and [bx+si],ah
00004D25  2020              and [bx+si],ah
00004D27  2A2A              sub ch,[bp+si]
00004D29  2020              and [bx+si],ah
00004D2B  2020              and [bx+si],ah
00004D2D  2020              and [bx+si],ah
00004D2F  2020              and [bx+si],ah
00004D31  2A2A              sub ch,[bp+si]
00004D33  2020              and [bx+si],ah
00004D35  202A              and [bp+si],ch
00004D37  202A              and [bp+si],ch
00004D39  2A20              sub ah,[bx+si]
00004D3B  2020              and [bx+si],ah
00004D3D  2020              and [bx+si],ah
00004D3F  202A              and [bp+si],ch
00004D41  2A20              sub ah,[bx+si]
00004D43  2020              and [bx+si],ah
00004D45  2020              and [bx+si],ah
00004D47  202A              and [bp+si],ch
00004D49  2AE8              sub ch,al
00004D4B  28DC              sub ah,bl
00004D4D  E8D2C2            call word 0x1022
00004D50  E805D8            call word 0x2558
00004D53  E807DC            call word 0x295d
00004D56  40                inc ax
00004D57  2020              and [bx+si],ah
00004D59  2020              and [bx+si],ah
00004D5B  2020              and [bx+si],ah
00004D5D  2A2A              sub ch,[bp+si]
00004D5F  2A2A              sub ch,[bp+si]
00004D61  2A20              sub ah,[bx+si]
00004D63  2020              and [bx+si],ah
00004D65  2020              and [bx+si],ah
00004D67  2020              and [bx+si],ah
00004D69  2020              and [bx+si],ah
00004D6B  2020              and [bx+si],ah
00004D6D  2A2A              sub ch,[bp+si]
00004D6F  2A2A              sub ch,[bp+si]
00004D71  2A2A              sub ch,[bp+si]
00004D73  2A2A              sub ch,[bp+si]
00004D75  2A20              sub ah,[bx+si]
00004D77  2A2A              sub ch,[bp+si]
00004D79  2020              and [bx+si],ah
00004D7B  2020              and [bx+si],ah
00004D7D  2A2A              sub ch,[bp+si]
00004D7F  2A20              sub ah,[bx+si]
00004D81  2020              and [bx+si],ah
00004D83  2020              and [bx+si],ah
00004D85  202A              and [bp+si],ch
00004D87  2A20              sub ah,[bx+si]
00004D89  2020              and [bx+si],ah
00004D8B  2020              and [bx+si],ah
00004D8D  202A              and [bp+si],ch
00004D8F  2A2A              sub ch,[bp+si]
00004D91  2A2A              sub ch,[bp+si]
00004D93  2A2A              sub ch,[bp+si]
00004D95  2A2A              sub ch,[bp+si]
00004D97  E8DBDB            call word 0x2975
00004D9A  E885C2            call word 0x1022
00004D9D  B81C00            mov ax,0x1c
00004DA0  50                push ax
00004DA1  B80D00            mov ax,0xd
00004DA4  E803C0            call word 0xdaa
00004DA7  E8AED7            call word 0x2558
00004DAA  E8B0DB            call word 0x295d
00004DAD  136279            adc sp,[bp+si+0x79]
00004DB0  204D69            and [di+0x69],cl
00004DB3  636861            arpl [bx+si+0x61],bp
00004DB6  656C              gs insb
00004DB8  20412E            and [bx+di+0x2e],al
00004DBB  204C65            and [si+0x65],cl
00004DBE  61                popaw
00004DBF  6368E8            arpl [bx+si-0x18],bp
00004DC2  5E                pop si
00004DC3  C2B81F            ret 0x1fb8
00004DC6  0050B8            add [bx+si-0x48],dl
00004DC9  1100              adc [bx+si],ax
00004DCB  E8DCBF            call word 0xdaa
00004DCE  E887D7            call word 0x2558
00004DD1  E889DB            call word 0x295d
00004DD4  135072            adc dx,[bx+si+0x72]
00004DD7  696D617279        imul bp,[di+0x61],word 0x7972
00004DDC  204F70            and [bx+0x70],cl
00004DDF  7469              jz 0x4e4a
00004DE1  6F                outsw
00004DE2  6E                outsb
00004DE3  204D65            and [di+0x65],cl
00004DE6  6E                outsb
00004DE7  75E8              jnz 0x4dd1
00004DE9  37                aaa
00004DEA  C2B80F            ret 0xfb8
00004DED  0050B8            add [bx+si-0x48],dl
00004DF0  1200              adc al,[bx+si]
00004DF2  E8B5BF            call word 0xdaa
00004DF5  E860D7            call word 0x2558
00004DF8  E862DB            call word 0x295d
00004DFB  134920            adc cx,[bx+di+0x20]
00004DFE  2020              and [bx+si],ah
00004E00  2020              and [bx+si],ah
00004E02  49                dec cx
00004E03  6E                outsb
00004E04  7374              jnc 0x4e7a
00004E06  7275              jc 0x4e7d
00004E08  637469            arpl [si+0x69],si
00004E0B  6F                outsw
00004E0C  6E                outsb
00004E0D  732E              jnc 0x4e3d
00004E0F  E810C2            call word 0x1022
00004E12  B80F00            mov ax,0xf
00004E15  50                push ax
00004E16  B81300            mov ax,0x13
00004E19  E88EBF            call word 0xdaa
00004E1C  E839D7            call word 0x2558
00004E1F  E83BDB            call word 0x295d
00004E22  1F                pop ds
00004E23  50                push ax
00004E24  2020              and [bx+si],ah
00004E26  2020              and [bx+si],ah
00004E28  20506C            and [bx+si+0x6c],dl
00004E2B  61                popaw
00004E2C  7965              jns 0x4e93
00004E2E  7273              jc 0x4ea3
00004E30  2C20              sub al,0x20
00004E32  48                dec ax
00004E33  756D              jnz 0x4ea2
00004E35  61                popaw
00004E36  6E                outsb
00004E37  207673            and [bp+0x73],dh
00004E3A  2E204875          and [cs:bx+si+0x75],cl
00004E3E  6D                insw
00004E3F  61                popaw
00004E40  6E                outsb
00004E41  2EE8DDC1          cs call word 0x1022
00004E45  B80F00            mov ax,0xf
00004E48  50                push ax
00004E49  B81400            mov ax,0x14
00004E4C  E85BBF            call word 0xdaa
00004E4F  E806D7            call word 0x2558
00004E52  E808DB            call word 0x295d
00004E55  2E43              cs inc bx
00004E57  2020              and [bx+si],ah
00004E59  2020              and [bx+si],ah
00004E5B  204875            and [bx+si+0x75],cl
00004E5E  6D                insw
00004E5F  61                popaw
00004E60  6E                outsb
00004E61  207673            and [bp+0x73],dh
00004E64  20436F            and [bp+di+0x6f],al
00004E67  6D                insw
00004E68  7075              jo 0x4edf
00004E6A  7465              jz 0x4ed1
00004E6C  722C              jc 0x4e9a
00004E6E  20436F            and [bp+di+0x6f],al
00004E71  6D                insw
00004E72  7075              jo 0x4ee9
00004E74  7465              jz 0x4edb
00004E76  7220              jc 0x4e98
00004E78  4D                dec bp
00004E79  6F                outsw
00004E7A  7665              jna 0x4ee1
00004E7C  7320              jnc 0x4e9e
00004E7E  46                inc si
00004E7F  697273742E        imul si,[bp+si+0x73],word 0x2e74
00004E84  E89BC1            call word 0x1022
00004E87  B80F00            mov ax,0xf
00004E8A  50                push ax
00004E8B  B81500            mov ax,0x15
00004E8E  E819BF            call word 0xdaa
00004E91  E8C4D6            call word 0x2558
00004E94  E8C6DA            call word 0x295d
00004E97  2C48              sub al,0x48
00004E99  2020              and [bx+si],ah
00004E9B  2020              and [bx+si],ah
00004E9D  20436F            and [bp+di+0x6f],al
00004EA0  6D                insw
00004EA1  7075              jo 0x4f18
00004EA3  7465              jz 0x4f0a
00004EA5  7220              jc 0x4ec7
00004EA7  7673              jna 0x4f1c
00004EA9  2E204875          and [cs:bx+si+0x75],cl
00004EAD  6D                insw
00004EAE  61                popaw
00004EAF  6E                outsb
00004EB0  2C20              sub al,0x20
00004EB2  48                dec ax
00004EB3  756D              jnz 0x4f22
00004EB5  61                popaw
00004EB6  6E                outsb
00004EB7  204D6F            and [di+0x6f],cl
00004EBA  7665              jna 0x4f21
00004EBC  7320              jnc 0x4ede
00004EBE  46                inc si
00004EBF  697273742E        imul si,[bp+si+0x73],word 0x2e74
00004EC4  E85BC1            call word 0x1022
00004EC7  B80F00            mov ax,0xf
00004ECA  50                push ax
00004ECB  B81600            mov ax,0x16
00004ECE  E8D9BE            call word 0xdaa
00004ED1  E884D6            call word 0x2558
00004ED4  E886DA            call word 0x295d
00004ED7  284420            sub [si+0x20],al
00004EDA  2020              and [bx+si],ah
00004EDC  2020              and [bx+si],ah
00004EDE  43                inc bx
00004EDF  68616E            push word 0x6e61
00004EE2  676520736F        and [gs:ebx+0x6f],dh
00004EE7  6D                insw
00004EE8  65207363          and [gs:bp+di+0x63],dh
00004EEC  7265              jc 0x4f53
00004EEE  656E              gs outsb
00004EF0  206465            and [si+0x65],ah
00004EF3  6661              popad
00004EF5  756C              jnz 0x4f63
00004EF7  7420              jz 0x4f19
00004EF9  636F6C            arpl [bx+0x6c],bp
00004EFC  6F                outsw
00004EFD  7273              jc 0x4f72
00004EFF  2EE81FC1          cs call word 0x1022
00004F03  B80F00            mov ax,0xf
00004F06  50                push ax
00004F07  B81700            mov ax,0x17
00004F0A  E89DBE            call word 0xdaa
00004F0D  E848D6            call word 0x2558
00004F10  E84ADA            call word 0x295d
00004F13  214553            and [di+0x53],ax
00004F16  43                inc bx
00004F17  2020              and [bx+si],ah
00004F19  205265            and [bp+si+0x65],dl
00004F1C  7475              jz 0x4f93
00004F1E  726E              jc 0x4f8e
00004F20  20746F            and [si+0x6f],dh
00004F23  204F70            and [bx+0x70],cl
00004F26  657261            gs jc 0x4f8a
00004F29  7469              jz 0x4f94
00004F2B  6E                outsb
00004F2C  67205379          and [ebx+0x79],dl
00004F30  7374              jnc 0x4fa6
00004F32  656D              gs insw
00004F34  2EE8EAC0          cs call word 0x1022
00004F38  B82000            mov ax,0x20
00004F3B  50                push ax
00004F3C  B81800            mov ax,0x18
00004F3F  E868BE            call word 0xdaa
00004F42  E813D6            call word 0x2558
00004F45  E815DA            call word 0x295d
00004F48  0F53656C          rcpps xmm4,oword [di+0x6c]
00004F4C  65637469          arpl [gs:si+0x69],si
00004F50  6F                outsw
00004F51  6E                outsb
00004F52  205B48            and [bp+di+0x48],bl
00004F55  5D                pop bp
00004F56  3A20              cmp ah,[bx+si]
00004F58  E8C7C0            call word 0x1022
00004F5B  BF4A01            mov di,0x14a
00004F5E  1E                push ds
00004F5F  E8D9D5            call word 0x253b
00004F62  BFE303            mov di,0x3e3
00004F65  1E                push ds
00004F66  E8F9D7            call word 0x2762
00004F69  E8B6C0            call word 0x1022
00004F6C  A0E303            mov al,[0x3e3]
00004F6F  32E4              xor ah,ah
00004F71  3D1B00            cmp ax,0x1b
00004F74  7403              jz 0x4f79
00004F76  E90800            jmp word 0x4f81
00004F79  33C0              xor ax,ax
00004F7B  E90BBD            jmp word 0xc89
00004F7E  E9F600            jmp word 0x5077
00004F81  A0E303            mov al,[0x3e3]
00004F84  32E4              xor ah,ah
00004F86  3D6900            cmp ax,0x69
00004F89  B80100            mov ax,0x1
00004F8C  7401              jz 0x4f8f
00004F8E  48                dec ax
00004F8F  50                push ax
00004F90  A0E303            mov al,[0x3e3]
00004F93  32E4              xor ah,ah
00004F95  3D4900            cmp ax,0x49
00004F98  B80100            mov ax,0x1
00004F9B  7401              jz 0x4f9e
00004F9D  48                dec ax
00004F9E  59                pop cx
00004F9F  0BC1              or ax,cx
00004FA1  0BC0              or ax,ax
00004FA3  7503              jnz 0x4fa8
00004FA5  E91500            jmp word 0x4fbd
00004FA8  B95200            mov cx,0x52
00004FAB  E823C0            call word 0xfd1
00004FAE  E89BF8            call word 0x484c
00004FB1  B90600            mov cx,0x6
00004FB4  E81AC0            call word 0xfd1
00004FB7  E8B0FB            call word 0x4b6a
00004FBA  E9BA00            jmp word 0x5077
00004FBD  A0E303            mov al,[0x3e3]
00004FC0  32E4              xor ah,ah
00004FC2  3D6400            cmp ax,0x64
00004FC5  B80100            mov ax,0x1
00004FC8  7401              jz 0x4fcb
00004FCA  48                dec ax
00004FCB  50                push ax
00004FCC  A0E303            mov al,[0x3e3]
00004FCF  32E4              xor ah,ah
00004FD1  3D4400            cmp ax,0x44
00004FD4  B80100            mov ax,0x1
00004FD7  7401              jz 0x4fda
00004FD9  48                dec ax
00004FDA  59                pop cx
00004FDB  0BC1              or ax,cx
00004FDD  0BC0              or ax,ax
00004FDF  7503              jnz 0x4fe4
00004FE1  E91500            jmp word 0x4ff9
00004FE4  B90900            mov cx,0x9
00004FE7  E8E7BF            call word 0xfd1
00004FEA  E88FF8            call word 0x487c
00004FED  B90600            mov cx,0x6
00004FF0  E8DEBF            call word 0xfd1
00004FF3  E874FB            call word 0x4b6a
00004FF6  E97E00            jmp word 0x5077
00004FF9  A0E303            mov al,[0x3e3]
00004FFC  32E4              xor ah,ah
00004FFE  3D6300            cmp ax,0x63
00005001  B80100            mov ax,0x1
00005004  7401              jz 0x5007
00005006  48                dec ax
00005007  50                push ax
00005008  A0E303            mov al,[0x3e3]
0000500B  32E4              xor ah,ah
0000500D  3D4300            cmp ax,0x43
00005010  B80100            mov ax,0x1
00005013  7401              jz 0x5016
00005015  48                dec ax
00005016  59                pop cx
00005017  0BC1              or ax,cx
00005019  0BC0              or ax,ax
0000501B  7503              jnz 0x5020
0000501D  E90F00            jmp word 0x502f
00005020  B80200            mov ax,0x2
00005023  A2E403            mov [0x3e4],al
00005026  B80300            mov ax,0x3
00005029  A2DF03            mov [0x3df],al
0000502C  E94800            jmp word 0x5077
0000502F  A0E303            mov al,[0x3e3]
00005032  32E4              xor ah,ah
00005034  3D7000            cmp ax,0x70
00005037  B80100            mov ax,0x1
0000503A  7401              jz 0x503d
0000503C  48                dec ax
0000503D  50                push ax
0000503E  A0E303            mov al,[0x3e3]
00005041  32E4              xor ah,ah
00005043  3D5000            cmp ax,0x50
00005046  B80100            mov ax,0x1
00005049  7401              jz 0x504c
0000504B  48                dec ax
0000504C  59                pop cx
0000504D  0BC1              or ax,cx
0000504F  0BC0              or ax,ax
00005051  7503              jnz 0x5056
00005053  E91500            jmp word 0x506b
00005056  B80100            mov ax,0x1
00005059  A2ED03            mov [0x3ed],al
0000505C  B80300            mov ax,0x3
0000505F  A2E403            mov [0x3e4],al
00005062  B80200            mov ax,0x2
00005065  A2DF03            mov [0x3df],al
00005068  E90C00            jmp word 0x5077
0000506B  B80300            mov ax,0x3
0000506E  A2E403            mov [0x3e4],al
00005071  B80200            mov ax,0x2
00005074  A2DF03            mov [0x3df],al
00005077  E90000            jmp word 0x507a
0000507A  8BE5              mov sp,bp
0000507C  5D                pop bp
0000507D  C3                ret
0000507E  55                push bp
0000507F  8BEC              mov bp,sp
00005081  55                push bp
00005082  E90000            jmp word 0x5085
00005085  83EC04            sub sp,byte +0x4
00005088  8A461A            mov al,[bp+0x1a]
0000508B  32E4              xor ah,ah
0000508D  B91300            mov cx,0x13
00005090  F7E1              mul cx
00005092  97                xchg ax,di
00005093  57                push di
00005094  8A4618            mov al,[bp+0x18]
00005097  32E4              xor ah,ah
00005099  5F                pop di
0000509A  03F8              add di,ax
0000509C  8A854C02          mov al,[di+0x24c]
000050A0  32E4              xor ah,ah
000050A2  8846FA            mov [bp-0x6],al
000050A5  8A460C            mov al,[bp+0xc]
000050A8  32E4              xor ah,ah
000050AA  3D0100            cmp ax,0x1
000050AD  B80100            mov ax,0x1
000050B0  7401              jz 0x50b3
000050B2  48                dec ax
000050B3  50                push ax
000050B4  8A46FA            mov al,[bp-0x6]
000050B7  32E4              xor ah,ah
000050B9  3D0100            cmp ax,0x1
000050BC  B80100            mov ax,0x1
000050BF  7401              jz 0x50c2
000050C1  48                dec ax
000050C2  59                pop cx
000050C3  23C1              and ax,cx
000050C5  0BC0              or ax,ax
000050C7  7503              jnz 0x50cc
000050C9  E90900            jmp word 0x50d5
000050CC  B80000            mov ax,0x0
000050CF  89461C            mov [bp+0x1c],ax
000050D2  E9D001            jmp word 0x52a5
000050D5  8A46FA            mov al,[bp-0x6]
000050D8  32E4              xor ah,ah
000050DA  3D0100            cmp ax,0x1
000050DD  B80100            mov ax,0x1
000050E0  7401              jz 0x50e3
000050E2  48                dec ax
000050E3  50                push ax
000050E4  C47E04            les di,[bp+0x4]
000050E7  268A05            mov al,[es:di]
000050EA  32E4              xor ah,ah
000050EC  3401              xor al,0x1
000050EE  59                pop cx
000050EF  23C1              and ax,cx
000050F1  0BC0              or ax,ax
000050F3  7503              jnz 0x50f8
000050F5  E90900            jmp word 0x5101
000050F8  B80000            mov ax,0x0
000050FB  89461C            mov [bp+0x1c],ax
000050FE  E9A401            jmp word 0x52a5
00005101  8A46FA            mov al,[bp-0x6]
00005104  32E4              xor ah,ah
00005106  50                push ax
00005107  8A460E            mov al,[bp+0xe]
0000510A  32E4              xor ah,ah
0000510C  59                pop cx
0000510D  91                xchg ax,cx
0000510E  3BC1              cmp ax,cx
00005110  B80100            mov ax,0x1
00005113  7501              jnz 0x5116
00005115  48                dec ax
00005116  50                push ax
00005117  8A46FA            mov al,[bp-0x6]
0000511A  32E4              xor ah,ah
0000511C  3D0100            cmp ax,0x1
0000511F  B80100            mov ax,0x1
00005122  7501              jnz 0x5125
00005124  48                dec ax
00005125  59                pop cx
00005126  23C1              and ax,cx
00005128  0BC0              or ax,ax
0000512A  7503              jnz 0x512f
0000512C  E92B00            jmp word 0x515a
0000512F  8A460C            mov al,[bp+0xc]
00005132  32E4              xor ah,ah
00005134  3D0100            cmp ax,0x1
00005137  7403              jz 0x513c
00005139  E90C00            jmp word 0x5148
0000513C  C47E08            les di,[bp+0x8]
0000513F  B80200            mov ax,0x2
00005142  268805            mov [es:di],al
00005145  E90900            jmp word 0x5151
00005148  C47E08            les di,[bp+0x8]
0000514B  B80100            mov ax,0x1
0000514E  268805            mov [es:di],al
00005151  B80000            mov ax,0x0
00005154  89461C            mov [bp+0x1c],ax
00005157  E94B01            jmp word 0x52a5
0000515A  8B4610            mov ax,[bp+0x10]
0000515D  3D0000            cmp ax,0x0
00005160  B80100            mov ax,0x1
00005163  7401              jz 0x5166
00005165  48                dec ax
00005166  50                push ax
00005167  8A46FA            mov al,[bp-0x6]
0000516A  32E4              xor ah,ah
0000516C  3D0100            cmp ax,0x1
0000516F  B80100            mov ax,0x1
00005172  7401              jz 0x5175
00005174  48                dec ax
00005175  59                pop cx
00005176  23C1              and ax,cx
00005178  50                push ax
00005179  8A460E            mov al,[bp+0xe]
0000517C  32E4              xor ah,ah
0000517E  3D0300            cmp ax,0x3
00005181  B80100            mov ax,0x1
00005184  7401              jz 0x5187
00005186  48                dec ax
00005187  59                pop cx
00005188  23C1              and ax,cx
0000518A  50                push ax
0000518B  8A4612            mov al,[bp+0x12]
0000518E  32E4              xor ah,ah
00005190  3401              xor al,0x1
00005192  59                pop cx
00005193  23C1              and ax,cx
00005195  0BC0              or ax,ax
00005197  7503              jnz 0x519c
00005199  E90900            jmp word 0x51a5
0000519C  B80000            mov ax,0x0
0000519F  89461C            mov [bp+0x1c],ax
000051A2  E90001            jmp word 0x52a5
000051A5  8A46FA            mov al,[bp-0x6]
000051A8  32E4              xor ah,ah
000051AA  50                push ax
000051AB  8A460E            mov al,[bp+0xe]
000051AE  32E4              xor ah,ah
000051B0  59                pop cx
000051B1  91                xchg ax,cx
000051B2  3BC1              cmp ax,cx
000051B4  7403              jz 0x51b9
000051B6  E91F00            jmp word 0x51d8
000051B9  8A460C            mov al,[bp+0xc]
000051BC  32E4              xor ah,ah
000051BE  3D0100            cmp ax,0x1
000051C1  7403              jz 0x51c6
000051C3  E90900            jmp word 0x51cf
000051C6  C47E04            les di,[bp+0x4]
000051C9  B80000            mov ax,0x0
000051CC  268805            mov [es:di],al
000051CF  B80100            mov ax,0x1
000051D2  8946FB            mov [bp-0x5],ax
000051D5  E90600            jmp word 0x51de
000051D8  B80000            mov ax,0x0
000051DB  8946FB            mov [bp-0x5],ax
000051DE  B91300            mov cx,0x13
000051E1  E8EDBD            call word 0xfd1
000051E4  4C                dec sp
000051E5  8D7E1A            lea di,[bp+0x1a]
000051E8  16                push ss
000051E9  57                push di
000051EA  8D7E18            lea di,[bp+0x18]
000051ED  16                push ss
000051EE  57                push di
000051EF  8A4616            mov al,[bp+0x16]
000051F2  32E4              xor ah,ah
000051F4  50                push ax
000051F5  8A4614            mov al,[bp+0x14]
000051F8  32E4              xor ah,ah
000051FA  50                push ax
000051FB  E8B6E5            call word 0x37b4
000051FE  7503              jnz 0x5203
00005200  E92B00            jmp word 0x522e
00005203  8A46FA            mov al,[bp-0x6]
00005206  32E4              xor ah,ah
00005208  3D0100            cmp ax,0x1
0000520B  7403              jz 0x5210
0000520D  E90C00            jmp word 0x521c
00005210  C47E08            les di,[bp+0x8]
00005213  B80200            mov ax,0x2
00005216  268805            mov [es:di],al
00005219  E90900            jmp word 0x5225
0000521C  C47E08            les di,[bp+0x8]
0000521F  B80100            mov ax,0x1
00005222  268805            mov [es:di],al
00005225  8B46FB            mov ax,[bp-0x5]
00005228  89461C            mov [bp+0x1c],ax
0000522B  E97700            jmp word 0x52a5
0000522E  8A4612            mov al,[bp+0x12]
00005231  32E4              xor ah,ah
00005233  50                push ax
00005234  8A4614            mov al,[bp+0x14]
00005237  32E4              xor ah,ah
00005239  3D0000            cmp ax,0x0
0000523C  B80100            mov ax,0x1
0000523F  7401              jz 0x5242
00005241  48                dec ax
00005242  59                pop cx
00005243  23C1              and ax,cx
00005245  0BC0              or ax,ax
00005247  7503              jnz 0x524c
00005249  E90800            jmp word 0x5254
0000524C  8A460E            mov al,[bp+0xe]
0000524F  32E4              xor ah,ah
00005251  8846FA            mov [bp-0x6],al
00005254  8B46FB            mov ax,[bp-0x5]
00005257  50                push ax
00005258  B92400            mov cx,0x24
0000525B  E873BD            call word 0xfd1
0000525E  4C                dec sp
0000525F  4C                dec sp
00005260  8A461A            mov al,[bp+0x1a]
00005263  32E4              xor ah,ah
00005265  50                push ax
00005266  8A4618            mov al,[bp+0x18]
00005269  32E4              xor ah,ah
0000526B  50                push ax
0000526C  8A4616            mov al,[bp+0x16]
0000526F  32E4              xor ah,ah
00005271  50                push ax
00005272  8A4614            mov al,[bp+0x14]
00005275  32E4              xor ah,ah
00005277  50                push ax
00005278  B80000            mov ax,0x0
0000527B  50                push ax
0000527C  8B46FB            mov ax,[bp-0x5]
0000527F  50                push ax
00005280  8A460E            mov al,[bp+0xe]
00005283  32E4              xor ah,ah
00005285  50                push ax
00005286  8A46FA            mov al,[bp-0x6]
00005289  32E4              xor ah,ah
0000528B  50                push ax
0000528C  C47E08            les di,[bp+0x8]
0000528F  06                push es
00005290  57                push di
00005291  C47E04            les di,[bp+0x4]
00005294  06                push es
00005295  57                push di
00005296  E8E5FD            call word 0x507e
00005299  59                pop cx
0000529A  03C1              add ax,cx
0000529C  8946FB            mov [bp-0x5],ax
0000529F  8B46FB            mov ax,[bp-0x5]
000052A2  89461C            mov [bp+0x1c],ax
000052A5  E90000            jmp word 0x52a8
000052A8  8B461C            mov ax,[bp+0x1c]
000052AB  8BE5              mov sp,bp
000052AD  5D                pop bp
000052AE  C21A00            ret 0x1a
000052B1  55                push bp
000052B2  8BEC              mov bp,sp
000052B4  55                push bp
000052B5  E90000            jmp word 0x52b8
000052B8  83EC0E            sub sp,byte +0xe
000052BB  8A4606            mov al,[bp+0x6]
000052BE  32E4              xor ah,ah
000052C0  8846FD            mov [bp-0x3],al
000052C3  8A4604            mov al,[bp+0x4]
000052C6  32E4              xor ah,ah
000052C8  8846FC            mov [bp-0x4],al
000052CB  8A4606            mov al,[bp+0x6]
000052CE  32E4              xor ah,ah
000052D0  8846FB            mov [bp-0x5],al
000052D3  8A4604            mov al,[bp+0x4]
000052D6  32E4              xor ah,ah
000052D8  8846FA            mov [bp-0x6],al
000052DB  B80000            mov ax,0x0
000052DE  8846F3            mov [bp-0xd],al
000052E1  B80000            mov ax,0x0
000052E4  8846F2            mov [bp-0xe],al
000052E7  B80100            mov ax,0x1
000052EA  8846F1            mov [bp-0xf],al
000052ED  B80100            mov ax,0x1
000052F0  8846F0            mov [bp-0x10],al
000052F3  B91300            mov cx,0x13
000052F6  E8D8BC            call word 0xfd1
000052F9  4C                dec sp
000052FA  8D7EFB            lea di,[bp-0x5]
000052FD  16                push ss
000052FE  57                push di
000052FF  8D7EFA            lea di,[bp-0x6]
00005302  16                push ss
00005303  57                push di
00005304  8A4608            mov al,[bp+0x8]
00005307  32E4              xor ah,ah
00005309  50                push ax
0000530A  B80100            mov ax,0x1
0000530D  50                push ax
0000530E  E8A3E4            call word 0x37b4
00005311  7503              jnz 0x5316
00005313  E93A00            jmp word 0x5350
00005316  B80000            mov ax,0x0
00005319  8946F6            mov [bp-0xa],ax
0000531C  8A4606            mov al,[bp+0x6]
0000531F  32E4              xor ah,ah
00005321  B91300            mov cx,0x13
00005324  F7E1              mul cx
00005326  97                xchg ax,di
00005327  57                push di
00005328  8A4604            mov al,[bp+0x4]
0000532B  32E4              xor ah,ah
0000532D  5F                pop di
0000532E  03F8              add di,ax
00005330  8A854C02          mov al,[di+0x24c]
00005334  32E4              xor ah,ah
00005336  3D0100            cmp ax,0x1
00005339  7403              jz 0x533e
0000533B  E90900            jmp word 0x5347
0000533E  B80200            mov ax,0x2
00005341  8846F2            mov [bp-0xe],al
00005344  E90600            jmp word 0x534d
00005347  B80100            mov ax,0x1
0000534A  8846F2            mov [bp-0xe],al
0000534D  E93E00            jmp word 0x538e
00005350  B92400            mov cx,0x24
00005353  E87BBC            call word 0xfd1
00005356  4C                dec sp
00005357  4C                dec sp
00005358  8A46FB            mov al,[bp-0x5]
0000535B  32E4              xor ah,ah
0000535D  50                push ax
0000535E  8A46FA            mov al,[bp-0x6]
00005361  32E4              xor ah,ah
00005363  50                push ax
00005364  8A4608            mov al,[bp+0x8]
00005367  32E4              xor ah,ah
00005369  50                push ax
0000536A  B80100            mov ax,0x1
0000536D  50                push ax
0000536E  B80100            mov ax,0x1
00005371  50                push ax
00005372  B80000            mov ax,0x0
00005375  50                push ax
00005376  B80200            mov ax,0x2
00005379  50                push ax
0000537A  B80200            mov ax,0x2
0000537D  50                push ax
0000537E  8D7EF2            lea di,[bp-0xe]
00005381  16                push ss
00005382  57                push di
00005383  8D7EF0            lea di,[bp-0x10]
00005386  16                push ss
00005387  57                push di
00005388  E8F3FC            call word 0x507e
0000538B  8946F6            mov [bp-0xa],ax
0000538E  B92400            mov cx,0x24
00005391  E83DBC            call word 0xfd1
00005394  4C                dec sp
00005395  4C                dec sp
00005396  8A46FD            mov al,[bp-0x3]
00005399  32E4              xor ah,ah
0000539B  50                push ax
0000539C  8A46FC            mov al,[bp-0x4]
0000539F  32E4              xor ah,ah
000053A1  50                push ax
000053A2  8A4608            mov al,[bp+0x8]
000053A5  32E4              xor ah,ah
000053A7  50                push ax
000053A8  B80000            mov ax,0x0
000053AB  50                push ax
000053AC  B80100            mov ax,0x1
000053AF  50                push ax
000053B0  B80000            mov ax,0x0
000053B3  50                push ax
000053B4  B80200            mov ax,0x2
000053B7  50                push ax
000053B8  B80200            mov ax,0x2
000053BB  50                push ax
000053BC  8D7EF3            lea di,[bp-0xd]
000053BF  16                push ss
000053C0  57                push di
000053C1  8D7EF1            lea di,[bp-0xf]
000053C4  16                push ss
000053C5  57                push di
000053C6  E8B5FC            call word 0x507e
000053C9  8946F8            mov [bp-0x8],ax
000053CC  8B46F8            mov ax,[bp-0x8]
000053CF  0346F6            add ax,[bp-0xa]
000053D2  050100            add ax,0x1
000053D5  8946F4            mov [bp-0xc],ax
000053D8  8B46F4            mov ax,[bp-0xc]
000053DB  3D0100            cmp ax,0x1
000053DE  7E03              jng 0x53e3
000053E0  E90900            jmp word 0x53ec
000053E3  8B46F4            mov ax,[bp-0xc]
000053E6  89460A            mov [bp+0xa],ax
000053E9  E96303            jmp word 0x574f
000053EC  8B46F4            mov ax,[bp-0xc]
000053EF  3D0500            cmp ax,0x5
000053F2  7D03              jnl 0x53f7
000053F4  E94500            jmp word 0x543c
000053F7  8A46F1            mov al,[bp-0xf]
000053FA  32E4              xor ah,ah
000053FC  50                push ax
000053FD  8A46F0            mov al,[bp-0x10]
00005400  32E4              xor ah,ah
00005402  59                pop cx
00005403  23C1              and ax,cx
00005405  0BC0              or ax,ax
00005407  7503              jnz 0x540c
00005409  E90900            jmp word 0x5415
0000540C  B8100E            mov ax,0xe10
0000540F  89460A            mov [bp+0xa],ax
00005412  E92400            jmp word 0x5439
00005415  8A46F1            mov al,[bp-0xf]
00005418  32E4              xor ah,ah
0000541A  50                push ax
0000541B  8A46F0            mov al,[bp-0x10]
0000541E  32E4              xor ah,ah
00005420  59                pop cx
00005421  0BC1              or ax,cx
00005423  3401              xor al,0x1
00005425  7503              jnz 0x542a
00005427  E90900            jmp word 0x5433
0000542A  B81400            mov ax,0x14
0000542D  89460A            mov [bp+0xa],ax
00005430  E90600            jmp word 0x5439
00005433  B8A801            mov ax,0x1a8
00005436  89460A            mov [bp+0xa],ax
00005439  E91303            jmp word 0x574f
0000543C  8B46F4            mov ax,[bp-0xc]
0000543F  3D0400            cmp ax,0x4
00005442  7403              jz 0x5447
00005444  E9EA00            jmp word 0x5531
00005447  8A46F3            mov al,[bp-0xd]
0000544A  32E4              xor ah,ah
0000544C  3D0000            cmp ax,0x0
0000544F  B80100            mov ax,0x1
00005452  7501              jnz 0x5455
00005454  48                dec ax
00005455  50                push ax
00005456  8A46F2            mov al,[bp-0xe]
00005459  32E4              xor ah,ah
0000545B  3D0000            cmp ax,0x0
0000545E  B80100            mov ax,0x1
00005461  7501              jnz 0x5464
00005463  48                dec ax
00005464  59                pop cx
00005465  23C1              and ax,cx
00005467  0BC0              or ax,ax
00005469  7503              jnz 0x546e
0000546B  E92700            jmp word 0x5495
0000546E  8A46F1            mov al,[bp-0xf]
00005471  32E4              xor ah,ah
00005473  50                push ax
00005474  8A46F0            mov al,[bp-0x10]
00005477  32E4              xor ah,ah
00005479  59                pop cx
0000547A  23C1              and ax,cx
0000547C  0BC0              or ax,ax
0000547E  7503              jnz 0x5483
00005480  E90900            jmp word 0x548c
00005483  B80000            mov ax,0x0
00005486  89460A            mov [bp+0xa],ax
00005489  E90600            jmp word 0x5492
0000548C  B86C00            mov ax,0x6c
0000548F  89460A            mov [bp+0xa],ax
00005492  E99900            jmp word 0x552e
00005495  8A46F3            mov al,[bp-0xd]
00005498  32E4              xor ah,ah
0000549A  3D0100            cmp ax,0x1
0000549D  B80100            mov ax,0x1
000054A0  7401              jz 0x54a3
000054A2  48                dec ax
000054A3  50                push ax
000054A4  8A46F2            mov al,[bp-0xe]
000054A7  32E4              xor ah,ah
000054A9  3D0100            cmp ax,0x1
000054AC  B80100            mov ax,0x1
000054AF  7401              jz 0x54b2
000054B1  48                dec ax
000054B2  59                pop cx
000054B3  0BC1              or ax,cx
000054B5  0BC0              or ax,ax
000054B7  7503              jnz 0x54bc
000054B9  E92A00            jmp word 0x54e6
000054BC  8A46F0            mov al,[bp-0x10]
000054BF  32E4              xor ah,ah
000054C1  50                push ax
000054C2  8A46F1            mov al,[bp-0xf]
000054C5  32E4              xor ah,ah
000054C7  59                pop cx
000054C8  23C1              and ax,cx
000054CA  0BC0              or ax,ax
000054CC  7503              jnz 0x54d1
000054CE  E90900            jmp word 0x54da
000054D1  B86C00            mov ax,0x6c
000054D4  89460A            mov [bp+0xa],ax
000054D7  E90900            jmp word 0x54e3
000054DA  B86C00            mov ax,0x6c
000054DD  2D9600            sub ax,0x96
000054E0  89460A            mov [bp+0xa],ax
000054E3  E94800            jmp word 0x552e
000054E6  8A46F1            mov al,[bp-0xf]
000054E9  32E4              xor ah,ah
000054EB  50                push ax
000054EC  8A46F0            mov al,[bp-0x10]
000054EF  32E4              xor ah,ah
000054F1  59                pop cx
000054F2  23C1              and ax,cx
000054F4  0BC0              or ax,ax
000054F6  7503              jnz 0x54fb
000054F8  E90900            jmp word 0x5504
000054FB  B8A801            mov ax,0x1a8
000054FE  89460A            mov [bp+0xa],ax
00005501  E92A00            jmp word 0x552e
00005504  8A46F1            mov al,[bp-0xf]
00005507  32E4              xor ah,ah
00005509  50                push ax
0000550A  8A46F0            mov al,[bp-0x10]
0000550D  32E4              xor ah,ah
0000550F  59                pop cx
00005510  0BC1              or ax,cx
00005512  3401              xor al,0x1
00005514  7503              jnz 0x5519
00005516  E90C00            jmp word 0x5525
00005519  B81400            mov ax,0x14
0000551C  050500            add ax,0x5
0000551F  89460A            mov [bp+0xa],ax
00005522  E90900            jmp word 0x552e
00005525  B8A801            mov ax,0x1a8
00005528  2D6400            sub ax,0x64
0000552B  89460A            mov [bp+0xa],ax
0000552E  E91E02            jmp word 0x574f
00005531  8B46F4            mov ax,[bp-0xc]
00005534  3D0300            cmp ax,0x3
00005537  7403              jz 0x553c
00005539  E93B01            jmp word 0x5677
0000553C  8A46F3            mov al,[bp-0xd]
0000553F  32E4              xor ah,ah
00005541  3D0100            cmp ax,0x1
00005544  B80100            mov ax,0x1
00005547  7401              jz 0x554a
00005549  48                dec ax
0000554A  50                push ax
0000554B  8A46F2            mov al,[bp-0xe]
0000554E  32E4              xor ah,ah
00005550  3D0100            cmp ax,0x1
00005553  B80100            mov ax,0x1
00005556  7401              jz 0x5559
00005558  48                dec ax
00005559  59                pop cx
0000555A  23C1              and ax,cx
0000555C  0BC0              or ax,ax
0000555E  7503              jnz 0x5563
00005560  E92700            jmp word 0x558a
00005563  8A46F1            mov al,[bp-0xf]
00005566  32E4              xor ah,ah
00005568  50                push ax
00005569  8A46F0            mov al,[bp-0x10]
0000556C  32E4              xor ah,ah
0000556E  59                pop cx
0000556F  0BC1              or ax,cx
00005571  3401              xor al,0x1
00005573  7503              jnz 0x5578
00005575  E90900            jmp word 0x5581
00005578  B80800            mov ax,0x8
0000557B  89460A            mov [bp+0xa],ax
0000557E  E90600            jmp word 0x5587
00005581  B80000            mov ax,0x0
00005584  89460A            mov [bp+0xa],ax
00005587  E9EA00            jmp word 0x5674
0000558A  8A46F3            mov al,[bp-0xd]
0000558D  32E4              xor ah,ah
0000558F  3D0100            cmp ax,0x1
00005592  B80100            mov ax,0x1
00005595  7501              jnz 0x5598
00005597  48                dec ax
00005598  50                push ax
00005599  8A46F2            mov al,[bp-0xe]
0000559C  32E4              xor ah,ah
0000559E  3D0100            cmp ax,0x1
000055A1  B80100            mov ax,0x1
000055A4  7501              jnz 0x55a7
000055A6  48                dec ax
000055A7  59                pop cx
000055A8  23C1              and ax,cx
000055AA  0BC0              or ax,ax
000055AC  7503              jnz 0x55b1
000055AE  E94B00            jmp word 0x55fc
000055B1  8A46F1            mov al,[bp-0xf]
000055B4  32E4              xor ah,ah
000055B6  50                push ax
000055B7  8A46F0            mov al,[bp-0x10]
000055BA  32E4              xor ah,ah
000055BC  59                pop cx
000055BD  23C1              and ax,cx
000055BF  0BC0              or ax,ax
000055C1  7503              jnz 0x55c6
000055C3  E90900            jmp word 0x55cf
000055C6  B81400            mov ax,0x14
000055C9  89460A            mov [bp+0xa],ax
000055CC  E92A00            jmp word 0x55f9
000055CF  8A46F1            mov al,[bp-0xf]
000055D2  32E4              xor ah,ah
000055D4  50                push ax
000055D5  8A46F0            mov al,[bp-0x10]
000055D8  32E4              xor ah,ah
000055DA  59                pop cx
000055DB  0BC1              or ax,cx
000055DD  0BC0              or ax,ax
000055DF  7503              jnz 0x55e4
000055E1  E90C00            jmp word 0x55f0
000055E4  B81400            mov ax,0x14
000055E7  2D0500            sub ax,0x5
000055EA  89460A            mov [bp+0xa],ax
000055ED  E90900            jmp word 0x55f9
000055F0  B80300            mov ax,0x3
000055F3  050300            add ax,0x3
000055F6  89460A            mov [bp+0xa],ax
000055F9  E97800            jmp word 0x5674
000055FC  8A46F3            mov al,[bp-0xd]
000055FF  32E4              xor ah,ah
00005601  3D0100            cmp ax,0x1
00005604  B80100            mov ax,0x1
00005607  7501              jnz 0x560a
00005609  48                dec ax
0000560A  50                push ax
0000560B  8A46F2            mov al,[bp-0xe]
0000560E  32E4              xor ah,ah
00005610  3D0100            cmp ax,0x1
00005613  B80100            mov ax,0x1
00005616  7501              jnz 0x5619
00005618  48                dec ax
00005619  59                pop cx
0000561A  0BC1              or ax,cx
0000561C  0BC0              or ax,ax
0000561E  7503              jnz 0x5623
00005620  E94B00            jmp word 0x566e
00005623  8A46F1            mov al,[bp-0xf]
00005626  32E4              xor ah,ah
00005628  50                push ax
00005629  8A46F0            mov al,[bp-0x10]
0000562C  32E4              xor ah,ah
0000562E  59                pop cx
0000562F  23C1              and ax,cx
00005631  0BC0              or ax,ax
00005633  7503              jnz 0x5638
00005635  E90900            jmp word 0x5641
00005638  B80800            mov ax,0x8
0000563B  89460A            mov [bp+0xa],ax
0000563E  E92A00            jmp word 0x566b
00005641  8A46F1            mov al,[bp-0xf]
00005644  32E4              xor ah,ah
00005646  50                push ax
00005647  8A46F0            mov al,[bp-0x10]
0000564A  32E4              xor ah,ah
0000564C  59                pop cx
0000564D  0BC1              or ax,cx
0000564F  0BC0              or ax,ax
00005651  7503              jnz 0x5656
00005653  E90C00            jmp word 0x5662
00005656  B80800            mov ax,0x8
00005659  2D0100            sub ax,0x1
0000565C  89460A            mov [bp+0xa],ax
0000565F  E90900            jmp word 0x566b
00005662  B80800            mov ax,0x8
00005665  2D0200            sub ax,0x2
00005668  89460A            mov [bp+0xa],ax
0000566B  E90600            jmp word 0x5674
0000566E  B80800            mov ax,0x8
00005671  89460A            mov [bp+0xa],ax
00005674  E9D800            jmp word 0x574f
00005677  8B46F4            mov ax,[bp-0xc]
0000567A  3D0200            cmp ax,0x2
0000567D  7403              jz 0x5682
0000567F  E9A300            jmp word 0x5725
00005682  8A46F3            mov al,[bp-0xd]
00005685  32E4              xor ah,ah
00005687  3D0100            cmp ax,0x1
0000568A  B80100            mov ax,0x1
0000568D  7501              jnz 0x5690
0000568F  48                dec ax
00005690  50                push ax
00005691  8A46F2            mov al,[bp-0xe]
00005694  32E4              xor ah,ah
00005696  3D0100            cmp ax,0x1
00005699  B80100            mov ax,0x1
0000569C  7501              jnz 0x569f
0000569E  48                dec ax
0000569F  59                pop cx
000056A0  33C1              xor ax,cx
000056A2  50                push ax
000056A3  8A46F1            mov al,[bp-0xf]
000056A6  32E4              xor ah,ah
000056A8  50                push ax
000056A9  8A46F0            mov al,[bp-0x10]
000056AC  32E4              xor ah,ah
000056AE  59                pop cx
000056AF  23C1              and ax,cx
000056B1  59                pop cx
000056B2  23C1              and ax,cx
000056B4  0BC0              or ax,ax
000056B6  7503              jnz 0x56bb
000056B8  E90E00            jmp word 0x56c9
000056BB  B8FFFF            mov ax,0xffff
000056BE  B90F00            mov cx,0xf
000056C1  F7E9              imul cx
000056C3  89460A            mov [bp+0xa],ax
000056C6  E95900            jmp word 0x5722
000056C9  8A46F1            mov al,[bp-0xf]
000056CC  32E4              xor ah,ah
000056CE  50                push ax
000056CF  8A46F0            mov al,[bp-0x10]
000056D2  32E4              xor ah,ah
000056D4  59                pop cx
000056D5  23C1              and ax,cx
000056D7  0BC0              or ax,ax
000056D9  7503              jnz 0x56de
000056DB  E90E00            jmp word 0x56ec
000056DE  B8FFFF            mov ax,0xffff
000056E1  B90200            mov cx,0x2
000056E4  F7E9              imul cx
000056E6  89460A            mov [bp+0xa],ax
000056E9  E93600            jmp word 0x5722
000056EC  8A46F3            mov al,[bp-0xd]
000056EF  32E4              xor ah,ah
000056F1  3D0000            cmp ax,0x0
000056F4  B80100            mov ax,0x1
000056F7  7401              jz 0x56fa
000056F9  48                dec ax
000056FA  50                push ax
000056FB  8A46F2            mov al,[bp-0xe]
000056FE  32E4              xor ah,ah
00005700  3D0000            cmp ax,0x0
00005703  B80100            mov ax,0x1
00005706  7401              jz 0x5709
00005708  48                dec ax
00005709  59                pop cx
0000570A  23C1              and ax,cx
0000570C  0BC0              or ax,ax
0000570E  7503              jnz 0x5713
00005710  E90900            jmp word 0x571c
00005713  B80300            mov ax,0x3
00005716  89460A            mov [bp+0xa],ax
00005719  E90600            jmp word 0x5722
0000571C  8B46F4            mov ax,[bp-0xc]
0000571F  89460A            mov [bp+0xa],ax
00005722  E92A00            jmp word 0x574f
00005725  E830CE            call word 0x2558
00005728  E832D2            call word 0x295d
0000572B  20536F            and [bp+di+0x6f],dl
0000572E  6D                insw
0000572F  7468              jz 0x5799
00005731  696E672074        imul bp,[bp+0x67],word 0x7420
00005736  657272            gs jc 0x57ab
00005739  69626C6520        imul sp,[bp+si+0x6c],word 0x2065
0000573E  686173            push word 0x7361
00005741  206861            and [bx+si+0x61],ch
00005744  7070              jo 0x57b6
00005746  656E              gs outsb
00005748  65642121          and [fs:bx+di],sp
0000574C  E8D3B8            call word 0x1022
0000574F  E90000            jmp word 0x5752
00005752  8B460A            mov ax,[bp+0xa]
00005755  8BE5              mov sp,bp
00005757  5D                pop bp
00005758  C20800            ret 0x8
0000575B  55                push bp
0000575C  8BEC              mov bp,sp
0000575E  55                push bp
0000575F  E90000            jmp word 0x5762
00005762  83EC06            sub sp,byte +0x6
00005765  B80000            mov ax,0x0
00005768  8946FC            mov [bp-0x4],ax
0000576B  C406EE03          les ax,[0x3ee]
0000576F  8CC2              mov dx,es
00005771  8946F8            mov [bp-0x8],ax
00005774  8956FA            mov [bp-0x6],dx
00005777  C446F8            les ax,[bp-0x8]
0000577A  8CC2              mov dx,es
0000577C  52                push dx
0000577D  50                push ax
0000577E  33C0              xor ax,ax
00005780  33D2              xor dx,dx
00005782  5B                pop bx
00005783  59                pop cx
00005784  E8B4BE            call word 0x163b
00005787  7503              jnz 0x578c
00005789  E95D00            jmp word 0x57e9
0000578C  8A4606            mov al,[bp+0x6]
0000578F  32E4              xor ah,ah
00005791  50                push ax
00005792  C47EF8            les di,[bp-0x8]
00005795  268A05            mov al,[es:di]
00005798  32E4              xor ah,ah
0000579A  59                pop cx
0000579B  91                xchg ax,cx
0000579C  3BC1              cmp ax,cx
0000579E  B80100            mov ax,0x1
000057A1  7401              jz 0x57a4
000057A3  48                dec ax
000057A4  50                push ax
000057A5  8A4604            mov al,[bp+0x4]
000057A8  32E4              xor ah,ah
000057AA  50                push ax
000057AB  C47EF8            les di,[bp-0x8]
000057AE  268A4501          mov al,[es:di+0x1]
000057B2  32E4              xor ah,ah
000057B4  59                pop cx
000057B5  91                xchg ax,cx
000057B6  3BC1              cmp ax,cx
000057B8  B80100            mov ax,0x1
000057BB  7401              jz 0x57be
000057BD  48                dec ax
000057BE  59                pop cx
000057BF  23C1              and ax,cx
000057C1  0BC0              or ax,ax
000057C3  7503              jnz 0x57c8
000057C5  E90F00            jmp word 0x57d7
000057C8  8B46FC            mov ax,[bp-0x4]
000057CB  50                push ax
000057CC  C47EF8            les di,[bp-0x8]
000057CF  58                pop ax
000057D0  26034502          add ax,[es:di+0x2]
000057D4  8946FC            mov [bp-0x4],ax
000057D7  C47EF8            les di,[bp-0x8]
000057DA  26C44504          les ax,[es:di+0x4]
000057DE  8CC2              mov dx,es
000057E0  8946F8            mov [bp-0x8],ax
000057E3  8956FA            mov [bp-0x6],dx
000057E6  E98EFF            jmp word 0x5777
000057E9  8B46FC            mov ax,[bp-0x4]
000057EC  894608            mov [bp+0x8],ax
000057EF  E90000            jmp word 0x57f2
000057F2  8B4608            mov ax,[bp+0x8]
000057F5  8BE5              mov sp,bp
000057F7  5D                pop bp
000057F8  C20600            ret 0x6
000057FB  55                push bp
000057FC  8BEC              mov bp,sp
000057FE  55                push bp
000057FF  E90000            jmp word 0x5802
00005802  83EC0A            sub sp,byte +0xa
00005805  B80000            mov ax,0x0
00005808  8946FB            mov [bp-0x5],ax
0000580B  8A4608            mov al,[bp+0x8]
0000580E  32E4              xor ah,ah
00005810  8846F9            mov [bp-0x7],al
00005813  8A4608            mov al,[bp+0x8]
00005816  32E4              xor ah,ah
00005818  8846F8            mov [bp-0x8],al
0000581B  8A4606            mov al,[bp+0x6]
0000581E  32E4              xor ah,ah
00005820  8846F6            mov [bp-0xa],al
00005823  8A4606            mov al,[bp+0x6]
00005826  32E4              xor ah,ah
00005828  8846F5            mov [bp-0xb],al
0000582B  8A4604            mov al,[bp+0x4]
0000582E  32E4              xor ah,ah
00005830  3D0200            cmp ax,0x2
00005833  7403              jz 0x5838
00005835  E90900            jmp word 0x5841
00005838  B80300            mov ax,0x3
0000583B  8846FA            mov [bp-0x6],al
0000583E  E90600            jmp word 0x5847
00005841  B80200            mov ax,0x2
00005844  8846FA            mov [bp-0x6],al
00005847  B80000            mov ax,0x0
0000584A  50                push ax
0000584B  B80300            mov ax,0x3
0000584E  59                pop cx
0000584F  91                xchg ax,cx
00005850  2BC8              sub cx,ax
00005852  7D03              jnl 0x5857
00005854  E9E101            jmp word 0x5a38
00005857  41                inc cx
00005858  8846FD            mov [bp-0x3],al
0000585B  51                push cx
0000585C  B91300            mov cx,0x13
0000585F  E86FB7            call word 0xfd1
00005862  4C                dec sp
00005863  8D7EF9            lea di,[bp-0x7]
00005866  16                push ss
00005867  57                push di
00005868  8D7EF6            lea di,[bp-0xa]
0000586B  16                push ss
0000586C  57                push di
0000586D  8A46FD            mov al,[bp-0x3]
00005870  32E4              xor ah,ah
00005872  50                push ax
00005873  B80000            mov ax,0x0
00005876  50                push ax
00005877  E83ADF            call word 0x37b4
0000587A  3401              xor al,0x1
0000587C  7503              jnz 0x5881
0000587E  E9AD01            jmp word 0x5a2e
00005881  B91300            mov cx,0x13
00005884  E84AB7            call word 0xfd1
00005887  4C                dec sp
00005888  8D7EF8            lea di,[bp-0x8]
0000588B  16                push ss
0000588C  57                push di
0000588D  8D7EF5            lea di,[bp-0xb]
00005890  16                push ss
00005891  57                push di
00005892  8A46FD            mov al,[bp-0x3]
00005895  32E4              xor ah,ah
00005897  50                push ax
00005898  B80100            mov ax,0x1
0000589B  50                push ax
0000589C  E815DF            call word 0x37b4
0000589F  3401              xor al,0x1
000058A1  7503              jnz 0x58a6
000058A3  E98801            jmp word 0x5a2e
000058A6  8A46F9            mov al,[bp-0x7]
000058A9  32E4              xor ah,ah
000058AB  8846F7            mov [bp-0x9],al
000058AE  8A46F6            mov al,[bp-0xa]
000058B1  32E4              xor ah,ah
000058B3  8846F4            mov [bp-0xc],al
000058B6  B91300            mov cx,0x13
000058B9  E815B7            call word 0xfd1
000058BC  4C                dec sp
000058BD  8D7EF7            lea di,[bp-0x9]
000058C0  16                push ss
000058C1  57                push di
000058C2  8D7EF4            lea di,[bp-0xc]
000058C5  16                push ss
000058C6  57                push di
000058C7  8A46FD            mov al,[bp-0x3]
000058CA  32E4              xor ah,ah
000058CC  50                push ax
000058CD  B80000            mov ax,0x0
000058D0  50                push ax
000058D1  E8E0DE            call word 0x37b4
000058D4  3401              xor al,0x1
000058D6  7503              jnz 0x58db
000058D8  E98F00            jmp word 0x596a
000058DB  8A46F9            mov al,[bp-0x7]
000058DE  32E4              xor ah,ah
000058E0  B91300            mov cx,0x13
000058E3  F7E1              mul cx
000058E5  97                xchg ax,di
000058E6  57                push di
000058E7  8A46F6            mov al,[bp-0xa]
000058EA  32E4              xor ah,ah
000058EC  5F                pop di
000058ED  03F8              add di,ax
000058EF  8A854C02          mov al,[di+0x24c]
000058F3  32E4              xor ah,ah
000058F5  50                push ax
000058F6  8A4604            mov al,[bp+0x4]
000058F9  32E4              xor ah,ah
000058FB  59                pop cx
000058FC  91                xchg ax,cx
000058FD  3BC1              cmp ax,cx
000058FF  B80100            mov ax,0x1
00005902  7401              jz 0x5905
00005904  48                dec ax
00005905  50                push ax
00005906  8A46F7            mov al,[bp-0x9]
00005909  32E4              xor ah,ah
0000590B  B91300            mov cx,0x13
0000590E  F7E1              mul cx
00005910  97                xchg ax,di
00005911  57                push di
00005912  8A46F4            mov al,[bp-0xc]
00005915  32E4              xor ah,ah
00005917  5F                pop di
00005918  03F8              add di,ax
0000591A  8A854C02          mov al,[di+0x24c]
0000591E  32E4              xor ah,ah
00005920  50                push ax
00005921  8A46FA            mov al,[bp-0x6]
00005924  32E4              xor ah,ah
00005926  59                pop cx
00005927  91                xchg ax,cx
00005928  3BC1              cmp ax,cx
0000592A  B80100            mov ax,0x1
0000592D  7401              jz 0x5930
0000592F  48                dec ax
00005930  59                pop cx
00005931  23C1              and ax,cx
00005933  50                push ax
00005934  8A46F8            mov al,[bp-0x8]
00005937  32E4              xor ah,ah
00005939  B91300            mov cx,0x13
0000593C  F7E1              mul cx
0000593E  97                xchg ax,di
0000593F  57                push di
00005940  8A46F5            mov al,[bp-0xb]
00005943  32E4              xor ah,ah
00005945  5F                pop di
00005946  03F8              add di,ax
00005948  8A854C02          mov al,[di+0x24c]
0000594C  32E4              xor ah,ah
0000594E  3D0100            cmp ax,0x1
00005951  B80100            mov ax,0x1
00005954  7401              jz 0x5957
00005956  48                dec ax
00005957  59                pop cx
00005958  23C1              and ax,cx
0000595A  0BC0              or ax,ax
0000595C  7503              jnz 0x5961
0000595E  E90900            jmp word 0x596a
00005961  8B46FB            mov ax,[bp-0x5]
00005964  050100            add ax,0x1
00005967  8946FB            mov [bp-0x5],ax
0000596A  8A46F8            mov al,[bp-0x8]
0000596D  32E4              xor ah,ah
0000596F  8846F7            mov [bp-0x9],al
00005972  8A46F5            mov al,[bp-0xb]
00005975  32E4              xor ah,ah
00005977  8846F4            mov [bp-0xc],al
0000597A  B91300            mov cx,0x13
0000597D  E851B6            call word 0xfd1
00005980  4C                dec sp
00005981  8D7EF7            lea di,[bp-0x9]
00005984  16                push ss
00005985  57                push di
00005986  8D7EF4            lea di,[bp-0xc]
00005989  16                push ss
0000598A  57                push di
0000598B  8A46FD            mov al,[bp-0x3]
0000598E  32E4              xor ah,ah
00005990  50                push ax
00005991  B80100            mov ax,0x1
00005994  50                push ax
00005995  E81CDE            call word 0x37b4
00005998  3401              xor al,0x1
0000599A  7503              jnz 0x599f
0000599C  E98F00            jmp word 0x5a2e
0000599F  8A46F9            mov al,[bp-0x7]
000059A2  32E4              xor ah,ah
000059A4  B91300            mov cx,0x13
000059A7  F7E1              mul cx
000059A9  97                xchg ax,di
000059AA  57                push di
000059AB  8A46F6            mov al,[bp-0xa]
000059AE  32E4              xor ah,ah
000059B0  5F                pop di
000059B1  03F8              add di,ax
000059B3  8A854C02          mov al,[di+0x24c]
000059B7  32E4              xor ah,ah
000059B9  3D0100            cmp ax,0x1
000059BC  B80100            mov ax,0x1
000059BF  7401              jz 0x59c2
000059C1  48                dec ax
000059C2  50                push ax
000059C3  8A46F7            mov al,[bp-0x9]
000059C6  32E4              xor ah,ah
000059C8  B91300            mov cx,0x13
000059CB  F7E1              mul cx
000059CD  97                xchg ax,di
000059CE  57                push di
000059CF  8A46F4            mov al,[bp-0xc]
000059D2  32E4              xor ah,ah
000059D4  5F                pop di
000059D5  03F8              add di,ax
000059D7  8A854C02          mov al,[di+0x24c]
000059DB  32E4              xor ah,ah
000059DD  50                push ax
000059DE  8A46FA            mov al,[bp-0x6]
000059E1  32E4              xor ah,ah
000059E3  59                pop cx
000059E4  91                xchg ax,cx
000059E5  3BC1              cmp ax,cx
000059E7  B80100            mov ax,0x1
000059EA  7401              jz 0x59ed
000059EC  48                dec ax
000059ED  59                pop cx
000059EE  23C1              and ax,cx
000059F0  50                push ax
000059F1  8A46F8            mov al,[bp-0x8]
000059F4  32E4              xor ah,ah
000059F6  B91300            mov cx,0x13
000059F9  F7E1              mul cx
000059FB  97                xchg ax,di
000059FC  57                push di
000059FD  8A46F5            mov al,[bp-0xb]
00005A00  32E4              xor ah,ah
00005A02  5F                pop di
00005A03  03F8              add di,ax
00005A05  8A854C02          mov al,[di+0x24c]
00005A09  32E4              xor ah,ah
00005A0B  50                push ax
00005A0C  8A4604            mov al,[bp+0x4]
00005A0F  32E4              xor ah,ah
00005A11  59                pop cx
00005A12  91                xchg ax,cx
00005A13  3BC1              cmp ax,cx
00005A15  B80100            mov ax,0x1
00005A18  7401              jz 0x5a1b
00005A1A  48                dec ax
00005A1B  59                pop cx
00005A1C  23C1              and ax,cx
00005A1E  0BC0              or ax,ax
00005A20  7503              jnz 0x5a25
00005A22  E90900            jmp word 0x5a2e
00005A25  8B46FB            mov ax,[bp-0x5]
00005A28  050100            add ax,0x1
00005A2B  8946FB            mov [bp-0x5],ax
00005A2E  59                pop cx
00005A2F  49                dec cx
00005A30  7406              jz 0x5a38
00005A32  FE46FD            inc byte [bp-0x3]
00005A35  E923FE            jmp word 0x585b
00005A38  8B46FB            mov ax,[bp-0x5]
00005A3B  89460A            mov [bp+0xa],ax
00005A3E  E90000            jmp word 0x5a41
00005A41  8B460A            mov ax,[bp+0xa]
00005A44  8BE5              mov sp,bp
00005A46  5D                pop bp
00005A47  C20800            ret 0x8
00005A4A  55                push bp
00005A4B  8BEC              mov bp,sp
00005A4D  55                push bp
00005A4E  E90000            jmp word 0x5a51
00005A51  83EC08            sub sp,byte +0x8
00005A54  B80000            mov ax,0x0
00005A57  8846F7            mov [bp-0x9],al
00005A5A  B80300            mov ax,0x3
00005A5D  8846F6            mov [bp-0xa],al
00005A60  B80000            mov ax,0x0
00005A63  8946FC            mov [bp-0x4],ax
00005A66  B80000            mov ax,0x0
00005A69  8946FA            mov [bp-0x6],ax
00005A6C  8A4604            mov al,[bp+0x4]
00005A6F  32E4              xor ah,ah
00005A71  3D0300            cmp ax,0x3
00005A74  7F03              jg 0x5a79
00005A76  E9A900            jmp word 0x5b22
00005A79  B92000            mov cx,0x20
00005A7C  E852B5            call word 0xfd1
00005A7F  4C                dec sp
00005A80  4C                dec sp
00005A81  8A4606            mov al,[bp+0x6]
00005A84  32E4              xor ah,ah
00005A86  50                push ax
00005A87  8A4604            mov al,[bp+0x4]
00005A8A  32E4              xor ah,ah
00005A8C  50                push ax
00005A8D  8A4606            mov al,[bp+0x6]
00005A90  32E4              xor ah,ah
00005A92  50                push ax
00005A93  8A4604            mov al,[bp+0x4]
00005A96  32E4              xor ah,ah
00005A98  2D0100            sub ax,0x1
00005A9B  50                push ax
00005A9C  8A4606            mov al,[bp+0x6]
00005A9F  32E4              xor ah,ah
00005AA1  50                push ax
00005AA2  8A4604            mov al,[bp+0x4]
00005AA5  32E4              xor ah,ah
00005AA7  2D0200            sub ax,0x2
00005AAA  50                push ax
00005AAB  8A4606            mov al,[bp+0x6]
00005AAE  32E4              xor ah,ah
00005AB0  50                push ax
00005AB1  8A4604            mov al,[bp+0x4]
00005AB4  32E4              xor ah,ah
00005AB6  2D0300            sub ax,0x3
00005AB9  50                push ax
00005ABA  8A46F7            mov al,[bp-0x9]
00005ABD  32E4              xor ah,ah
00005ABF  50                push ax
00005AC0  8A46F6            mov al,[bp-0xa]
00005AC3  32E4              xor ah,ah
00005AC5  50                push ax
00005AC6  E8C1D5            call word 0x308a
00005AC9  8946F8            mov [bp-0x8],ax
00005ACC  8B46F8            mov ax,[bp-0x8]
00005ACF  3D0000            cmp ax,0x0
00005AD2  7F03              jg 0x5ad7
00005AD4  E94B00            jmp word 0x5b22
00005AD7  8B46FC            mov ax,[bp-0x4]
00005ADA  50                push ax
00005ADB  B91200            mov cx,0x12
00005ADE  E8F0B4            call word 0xfd1
00005AE1  4C                dec sp
00005AE2  4C                dec sp
00005AE3  8A4606            mov al,[bp+0x6]
00005AE6  32E4              xor ah,ah
00005AE8  50                push ax
00005AE9  8A4604            mov al,[bp+0x4]
00005AEC  32E4              xor ah,ah
00005AEE  2D0100            sub ax,0x1
00005AF1  50                push ax
00005AF2  E866FC            call word 0x575b
00005AF5  59                pop cx
00005AF6  03C1              add ax,cx
00005AF8  50                push ax
00005AF9  B91200            mov cx,0x12
00005AFC  E8D2B4            call word 0xfd1
00005AFF  4C                dec sp
00005B00  4C                dec sp
00005B01  8A4606            mov al,[bp+0x6]
00005B04  32E4              xor ah,ah
00005B06  50                push ax
00005B07  8A4604            mov al,[bp+0x4]
00005B0A  32E4              xor ah,ah
00005B0C  2D0200            sub ax,0x2
00005B0F  50                push ax
00005B10  E848FC            call word 0x575b
00005B13  59                pop cx
00005B14  03C1              add ax,cx
00005B16  8946FC            mov [bp-0x4],ax
00005B19  8B46FA            mov ax,[bp-0x6]
00005B1C  0346F8            add ax,[bp-0x8]
00005B1F  8946FA            mov [bp-0x6],ax
00005B22  8A4604            mov al,[bp+0x4]
00005B25  32E4              xor ah,ah
00005B27  3D1100            cmp ax,0x11
00005B2A  7C03              jl 0x5b2f
00005B2C  E9A900            jmp word 0x5bd8
00005B2F  B92000            mov cx,0x20
00005B32  E89CB4            call word 0xfd1
00005B35  4C                dec sp
00005B36  4C                dec sp
00005B37  8A4606            mov al,[bp+0x6]
00005B3A  32E4              xor ah,ah
00005B3C  50                push ax
00005B3D  8A4604            mov al,[bp+0x4]
00005B40  32E4              xor ah,ah
00005B42  50                push ax
00005B43  8A4606            mov al,[bp+0x6]
00005B46  32E4              xor ah,ah
00005B48  50                push ax
00005B49  8A4604            mov al,[bp+0x4]
00005B4C  32E4              xor ah,ah
00005B4E  050100            add ax,0x1
00005B51  50                push ax
00005B52  8A4606            mov al,[bp+0x6]
00005B55  32E4              xor ah,ah
00005B57  50                push ax
00005B58  8A4604            mov al,[bp+0x4]
00005B5B  32E4              xor ah,ah
00005B5D  050200            add ax,0x2
00005B60  50                push ax
00005B61  8A4606            mov al,[bp+0x6]
00005B64  32E4              xor ah,ah
00005B66  50                push ax
00005B67  8A4604            mov al,[bp+0x4]
00005B6A  32E4              xor ah,ah
00005B6C  050300            add ax,0x3
00005B6F  50                push ax
00005B70  8A46F7            mov al,[bp-0x9]
00005B73  32E4              xor ah,ah
00005B75  50                push ax
00005B76  8A46F6            mov al,[bp-0xa]
00005B79  32E4              xor ah,ah
00005B7B  50                push ax
00005B7C  E80BD5            call word 0x308a
00005B7F  8946F8            mov [bp-0x8],ax
00005B82  8B46F8            mov ax,[bp-0x8]
00005B85  3D0000            cmp ax,0x0
00005B88  7F03              jg 0x5b8d
00005B8A  E94B00            jmp word 0x5bd8
00005B8D  8B46FC            mov ax,[bp-0x4]
00005B90  50                push ax
00005B91  B91200            mov cx,0x12
00005B94  E83AB4            call word 0xfd1
00005B97  4C                dec sp
00005B98  4C                dec sp
00005B99  8A4606            mov al,[bp+0x6]
00005B9C  32E4              xor ah,ah
00005B9E  50                push ax
00005B9F  8A4604            mov al,[bp+0x4]
00005BA2  32E4              xor ah,ah
00005BA4  050100            add ax,0x1
00005BA7  50                push ax
00005BA8  E8B0FB            call word 0x575b
00005BAB  59                pop cx
00005BAC  03C1              add ax,cx
00005BAE  50                push ax
00005BAF  B91200            mov cx,0x12
00005BB2  E81CB4            call word 0xfd1
00005BB5  4C                dec sp
00005BB6  4C                dec sp
00005BB7  8A4606            mov al,[bp+0x6]
00005BBA  32E4              xor ah,ah
00005BBC  50                push ax
00005BBD  8A4604            mov al,[bp+0x4]
00005BC0  32E4              xor ah,ah
00005BC2  050200            add ax,0x2
00005BC5  50                push ax
00005BC6  E892FB            call word 0x575b
00005BC9  59                pop cx
00005BCA  03C1              add ax,cx
00005BCC  8946FC            mov [bp-0x4],ax
00005BCF  8B46FA            mov ax,[bp-0x6]
00005BD2  0346F8            add ax,[bp-0x8]
00005BD5  8946FA            mov [bp-0x6],ax
00005BD8  8A4606            mov al,[bp+0x6]
00005BDB  32E4              xor ah,ah
00005BDD  3D0300            cmp ax,0x3
00005BE0  7F03              jg 0x5be5
00005BE2  E9A900            jmp word 0x5c8e
00005BE5  B92000            mov cx,0x20
00005BE8  E8E6B3            call word 0xfd1
00005BEB  4C                dec sp
00005BEC  4C                dec sp
00005BED  8A4606            mov al,[bp+0x6]
00005BF0  32E4              xor ah,ah
00005BF2  50                push ax
00005BF3  8A4604            mov al,[bp+0x4]
00005BF6  32E4              xor ah,ah
00005BF8  50                push ax
00005BF9  8A4606            mov al,[bp+0x6]
00005BFC  32E4              xor ah,ah
00005BFE  2D0100            sub ax,0x1
00005C01  50                push ax
00005C02  8A4604            mov al,[bp+0x4]
00005C05  32E4              xor ah,ah
00005C07  50                push ax
00005C08  8A4606            mov al,[bp+0x6]
00005C0B  32E4              xor ah,ah
00005C0D  2D0200            sub ax,0x2
00005C10  50                push ax
00005C11  8A4604            mov al,[bp+0x4]
00005C14  32E4              xor ah,ah
00005C16  50                push ax
00005C17  8A4606            mov al,[bp+0x6]
00005C1A  32E4              xor ah,ah
00005C1C  2D0300            sub ax,0x3
00005C1F  50                push ax
00005C20  8A4604            mov al,[bp+0x4]
00005C23  32E4              xor ah,ah
00005C25  50                push ax
00005C26  8A46F7            mov al,[bp-0x9]
00005C29  32E4              xor ah,ah
00005C2B  50                push ax
00005C2C  8A46F6            mov al,[bp-0xa]
00005C2F  32E4              xor ah,ah
00005C31  50                push ax
00005C32  E855D4            call word 0x308a
00005C35  8946F8            mov [bp-0x8],ax
00005C38  8B46F8            mov ax,[bp-0x8]
00005C3B  3D0000            cmp ax,0x0
00005C3E  7F03              jg 0x5c43
00005C40  E94B00            jmp word 0x5c8e
00005C43  8B46FC            mov ax,[bp-0x4]
00005C46  50                push ax
00005C47  B91200            mov cx,0x12
00005C4A  E884B3            call word 0xfd1
00005C4D  4C                dec sp
00005C4E  4C                dec sp
00005C4F  8A4606            mov al,[bp+0x6]
00005C52  32E4              xor ah,ah
00005C54  2D0100            sub ax,0x1
00005C57  50                push ax
00005C58  8A4604            mov al,[bp+0x4]
00005C5B  32E4              xor ah,ah
00005C5D  50                push ax
00005C5E  E8FAFA            call word 0x575b
00005C61  59                pop cx
00005C62  03C1              add ax,cx
00005C64  50                push ax
00005C65  B91200            mov cx,0x12
00005C68  E866B3            call word 0xfd1
00005C6B  4C                dec sp
00005C6C  4C                dec sp
00005C6D  8A4606            mov al,[bp+0x6]
00005C70  32E4              xor ah,ah
00005C72  2D0200            sub ax,0x2
00005C75  50                push ax
00005C76  8A4604            mov al,[bp+0x4]
00005C79  32E4              xor ah,ah
00005C7B  50                push ax
00005C7C  E8DCFA            call word 0x575b
00005C7F  59                pop cx
00005C80  03C1              add ax,cx
00005C82  8946FC            mov [bp-0x4],ax
00005C85  8B46FA            mov ax,[bp-0x6]
00005C88  0346F8            add ax,[bp-0x8]
00005C8B  8946FA            mov [bp-0x6],ax
00005C8E  8A4606            mov al,[bp+0x6]
00005C91  32E4              xor ah,ah
00005C93  3D1100            cmp ax,0x11
00005C96  7C03              jl 0x5c9b
00005C98  E9A900            jmp word 0x5d44
00005C9B  B92000            mov cx,0x20
00005C9E  E830B3            call word 0xfd1
00005CA1  4C                dec sp
00005CA2  4C                dec sp
00005CA3  8A4606            mov al,[bp+0x6]
00005CA6  32E4              xor ah,ah
00005CA8  50                push ax
00005CA9  8A4604            mov al,[bp+0x4]
00005CAC  32E4              xor ah,ah
00005CAE  50                push ax
00005CAF  8A4606            mov al,[bp+0x6]
00005CB2  32E4              xor ah,ah
00005CB4  050100            add ax,0x1
00005CB7  50                push ax
00005CB8  8A4604            mov al,[bp+0x4]
00005CBB  32E4              xor ah,ah
00005CBD  50                push ax
00005CBE  8A4606            mov al,[bp+0x6]
00005CC1  32E4              xor ah,ah
00005CC3  050200            add ax,0x2
00005CC6  50                push ax
00005CC7  8A4604            mov al,[bp+0x4]
00005CCA  32E4              xor ah,ah
00005CCC  50                push ax
00005CCD  8A4606            mov al,[bp+0x6]
00005CD0  32E4              xor ah,ah
00005CD2  050300            add ax,0x3
00005CD5  50                push ax
00005CD6  8A4604            mov al,[bp+0x4]
00005CD9  32E4              xor ah,ah
00005CDB  50                push ax
00005CDC  8A46F7            mov al,[bp-0x9]
00005CDF  32E4              xor ah,ah
00005CE1  50                push ax
00005CE2  8A46F6            mov al,[bp-0xa]
00005CE5  32E4              xor ah,ah
00005CE7  50                push ax
00005CE8  E89FD3            call word 0x308a
00005CEB  8946F8            mov [bp-0x8],ax
00005CEE  8B46F8            mov ax,[bp-0x8]
00005CF1  3D0000            cmp ax,0x0
00005CF4  7F03              jg 0x5cf9
00005CF6  E94B00            jmp word 0x5d44
00005CF9  8B46FC            mov ax,[bp-0x4]
00005CFC  50                push ax
00005CFD  B91200            mov cx,0x12
00005D00  E8CEB2            call word 0xfd1
00005D03  4C                dec sp
00005D04  4C                dec sp
00005D05  8A4606            mov al,[bp+0x6]
00005D08  32E4              xor ah,ah
00005D0A  050100            add ax,0x1
00005D0D  50                push ax
00005D0E  8A4604            mov al,[bp+0x4]
00005D11  32E4              xor ah,ah
00005D13  50                push ax
00005D14  E844FA            call word 0x575b
00005D17  59                pop cx
00005D18  03C1              add ax,cx
00005D1A  50                push ax
00005D1B  B91200            mov cx,0x12
00005D1E  E8B0B2            call word 0xfd1
00005D21  4C                dec sp
00005D22  4C                dec sp
00005D23  8A4606            mov al,[bp+0x6]
00005D26  32E4              xor ah,ah
00005D28  050200            add ax,0x2
00005D2B  50                push ax
00005D2C  8A4604            mov al,[bp+0x4]
00005D2F  32E4              xor ah,ah
00005D31  50                push ax
00005D32  E826FA            call word 0x575b
00005D35  59                pop cx
00005D36  03C1              add ax,cx
00005D38  8946FC            mov [bp-0x4],ax
00005D3B  8B46FA            mov ax,[bp-0x6]
00005D3E  0346F8            add ax,[bp-0x8]
00005D41  8946FA            mov [bp-0x6],ax
00005D44  8A4604            mov al,[bp+0x4]
00005D47  32E4              xor ah,ah
00005D49  3D0300            cmp ax,0x3
00005D4C  B80100            mov ax,0x1
00005D4F  7F01              jg 0x5d52
00005D51  48                dec ax
00005D52  50                push ax
00005D53  8A4606            mov al,[bp+0x6]
00005D56  32E4              xor ah,ah
00005D58  3D0200            cmp ax,0x2
00005D5B  B80100            mov ax,0x1
00005D5E  7F01              jg 0x5d61
00005D60  48                dec ax
00005D61  59                pop cx
00005D62  23C1              and ax,cx
00005D64  0BC0              or ax,ax
00005D66  7503              jnz 0x5d6b
00005D68  E9B800            jmp word 0x5e23
00005D6B  B92000            mov cx,0x20
00005D6E  E860B2            call word 0xfd1
00005D71  4C                dec sp
00005D72  4C                dec sp
00005D73  8A4606            mov al,[bp+0x6]
00005D76  32E4              xor ah,ah
00005D78  50                push ax
00005D79  8A4604            mov al,[bp+0x4]
00005D7C  32E4              xor ah,ah
00005D7E  50                push ax
00005D7F  8A4606            mov al,[bp+0x6]
00005D82  32E4              xor ah,ah
00005D84  2D0100            sub ax,0x1
00005D87  50                push ax
00005D88  8A4604            mov al,[bp+0x4]
00005D8B  32E4              xor ah,ah
00005D8D  2D0100            sub ax,0x1
00005D90  50                push ax
00005D91  8A4606            mov al,[bp+0x6]
00005D94  32E4              xor ah,ah
00005D96  2D0200            sub ax,0x2
00005D99  50                push ax
00005D9A  8A4604            mov al,[bp+0x4]
00005D9D  32E4              xor ah,ah
00005D9F  2D0200            sub ax,0x2
00005DA2  50                push ax
00005DA3  8A4606            mov al,[bp+0x6]
00005DA6  32E4              xor ah,ah
00005DA8  2D0300            sub ax,0x3
00005DAB  50                push ax
00005DAC  8A4604            mov al,[bp+0x4]
00005DAF  32E4              xor ah,ah
00005DB1  2D0300            sub ax,0x3
00005DB4  50                push ax
00005DB5  8A46F7            mov al,[bp-0x9]
00005DB8  32E4              xor ah,ah
00005DBA  50                push ax
00005DBB  8A46F6            mov al,[bp-0xa]
00005DBE  32E4              xor ah,ah
00005DC0  50                push ax
00005DC1  E8C6D2            call word 0x308a
00005DC4  8946F8            mov [bp-0x8],ax
00005DC7  8B46F8            mov ax,[bp-0x8]
00005DCA  3D0000            cmp ax,0x0
00005DCD  7F03              jg 0x5dd2
00005DCF  E95100            jmp word 0x5e23
00005DD2  8B46FC            mov ax,[bp-0x4]
00005DD5  50                push ax
00005DD6  B91200            mov cx,0x12
00005DD9  E8F5B1            call word 0xfd1
00005DDC  4C                dec sp
00005DDD  4C                dec sp
00005DDE  8A4606            mov al,[bp+0x6]
00005DE1  32E4              xor ah,ah
00005DE3  2D0100            sub ax,0x1
00005DE6  50                push ax
00005DE7  8A4604            mov al,[bp+0x4]
00005DEA  32E4              xor ah,ah
00005DEC  2D0100            sub ax,0x1
00005DEF  50                push ax
00005DF0  E868F9            call word 0x575b
00005DF3  59                pop cx
00005DF4  03C1              add ax,cx
00005DF6  50                push ax
00005DF7  B91200            mov cx,0x12
00005DFA  E8D4B1            call word 0xfd1
00005DFD  4C                dec sp
00005DFE  4C                dec sp
00005DFF  8A4606            mov al,[bp+0x6]
00005E02  32E4              xor ah,ah
00005E04  2D0200            sub ax,0x2
00005E07  50                push ax
00005E08  8A4604            mov al,[bp+0x4]
00005E0B  32E4              xor ah,ah
00005E0D  2D0200            sub ax,0x2
00005E10  50                push ax
00005E11  E847F9            call word 0x575b
00005E14  59                pop cx
00005E15  03C1              add ax,cx
00005E17  8946FC            mov [bp-0x4],ax
00005E1A  8B46FA            mov ax,[bp-0x6]
00005E1D  0346F8            add ax,[bp-0x8]
00005E20  8946FA            mov [bp-0x6],ax
00005E23  8A4604            mov al,[bp+0x4]
00005E26  32E4              xor ah,ah
00005E28  3D0300            cmp ax,0x3
00005E2B  B80100            mov ax,0x1
00005E2E  7F01              jg 0x5e31
00005E30  48                dec ax
00005E31  50                push ax
00005E32  8A4606            mov al,[bp+0x6]
00005E35  32E4              xor ah,ah
00005E37  3D1100            cmp ax,0x11
00005E3A  B80100            mov ax,0x1
00005E3D  7C01              jl 0x5e40
00005E3F  48                dec ax
00005E40  59                pop cx
00005E41  23C1              and ax,cx
00005E43  0BC0              or ax,ax
00005E45  7503              jnz 0x5e4a
00005E47  E9B800            jmp word 0x5f02
00005E4A  B92000            mov cx,0x20
00005E4D  E881B1            call word 0xfd1
00005E50  4C                dec sp
00005E51  4C                dec sp
00005E52  8A4606            mov al,[bp+0x6]
00005E55  32E4              xor ah,ah
00005E57  50                push ax
00005E58  8A4604            mov al,[bp+0x4]
00005E5B  32E4              xor ah,ah
00005E5D  50                push ax
00005E5E  8A4606            mov al,[bp+0x6]
00005E61  32E4              xor ah,ah
00005E63  050100            add ax,0x1
00005E66  50                push ax
00005E67  8A4604            mov al,[bp+0x4]
00005E6A  32E4              xor ah,ah
00005E6C  2D0100            sub ax,0x1
00005E6F  50                push ax
00005E70  8A4606            mov al,[bp+0x6]
00005E73  32E4              xor ah,ah
00005E75  050200            add ax,0x2
00005E78  50                push ax
00005E79  8A4604            mov al,[bp+0x4]
00005E7C  32E4              xor ah,ah
00005E7E  2D0200            sub ax,0x2
00005E81  50                push ax
00005E82  8A4606            mov al,[bp+0x6]
00005E85  32E4              xor ah,ah
00005E87  050300            add ax,0x3
00005E8A  50                push ax
00005E8B  8A4604            mov al,[bp+0x4]
00005E8E  32E4              xor ah,ah
00005E90  2D0300            sub ax,0x3
00005E93  50                push ax
00005E94  8A46F7            mov al,[bp-0x9]
00005E97  32E4              xor ah,ah
00005E99  50                push ax
00005E9A  8A46F6            mov al,[bp-0xa]
00005E9D  32E4              xor ah,ah
00005E9F  50                push ax
00005EA0  E8E7D1            call word 0x308a
00005EA3  8946F8            mov [bp-0x8],ax
00005EA6  8B46F8            mov ax,[bp-0x8]
00005EA9  3D0000            cmp ax,0x0
00005EAC  7F03              jg 0x5eb1
00005EAE  E95100            jmp word 0x5f02
00005EB1  8B46FC            mov ax,[bp-0x4]
00005EB4  50                push ax
00005EB5  B91200            mov cx,0x12
00005EB8  E816B1            call word 0xfd1
00005EBB  4C                dec sp
00005EBC  4C                dec sp
00005EBD  8A4606            mov al,[bp+0x6]
00005EC0  32E4              xor ah,ah
00005EC2  050100            add ax,0x1
00005EC5  50                push ax
00005EC6  8A4604            mov al,[bp+0x4]
00005EC9  32E4              xor ah,ah
00005ECB  2D0100            sub ax,0x1
00005ECE  50                push ax
00005ECF  E889F8            call word 0x575b
00005ED2  59                pop cx
00005ED3  03C1              add ax,cx
00005ED5  50                push ax
00005ED6  B91200            mov cx,0x12
00005ED9  E8F5B0            call word 0xfd1
00005EDC  4C                dec sp
00005EDD  4C                dec sp
00005EDE  8A4606            mov al,[bp+0x6]
00005EE1  32E4              xor ah,ah
00005EE3  050200            add ax,0x2
00005EE6  50                push ax
00005EE7  8A4604            mov al,[bp+0x4]
00005EEA  32E4              xor ah,ah
00005EEC  2D0200            sub ax,0x2
00005EEF  50                push ax
00005EF0  E868F8            call word 0x575b
00005EF3  59                pop cx
00005EF4  03C1              add ax,cx
00005EF6  8946FC            mov [bp-0x4],ax
00005EF9  8B46FA            mov ax,[bp-0x6]
00005EFC  0346F8            add ax,[bp-0x8]
00005EFF  8946FA            mov [bp-0x6],ax
00005F02  8A4604            mov al,[bp+0x4]
00005F05  32E4              xor ah,ah
00005F07  3D1100            cmp ax,0x11
00005F0A  B80100            mov ax,0x1
00005F0D  7C01              jl 0x5f10
00005F0F  48                dec ax
00005F10  50                push ax
00005F11  8A4606            mov al,[bp+0x6]
00005F14  32E4              xor ah,ah
00005F16  3D0300            cmp ax,0x3
00005F19  B80100            mov ax,0x1
00005F1C  7F01              jg 0x5f1f
00005F1E  48                dec ax
00005F1F  59                pop cx
00005F20  23C1              and ax,cx
00005F22  0BC0              or ax,ax
00005F24  7503              jnz 0x5f29
00005F26  E9B800            jmp word 0x5fe1
00005F29  B92000            mov cx,0x20
00005F2C  E8A2B0            call word 0xfd1
00005F2F  4C                dec sp
00005F30  4C                dec sp
00005F31  8A4606            mov al,[bp+0x6]
00005F34  32E4              xor ah,ah
00005F36  50                push ax
00005F37  8A4604            mov al,[bp+0x4]
00005F3A  32E4              xor ah,ah
00005F3C  50                push ax
00005F3D  8A4606            mov al,[bp+0x6]
00005F40  32E4              xor ah,ah
00005F42  2D0100            sub ax,0x1
00005F45  50                push ax
00005F46  8A4604            mov al,[bp+0x4]
00005F49  32E4              xor ah,ah
00005F4B  050100            add ax,0x1
00005F4E  50                push ax
00005F4F  8A4606            mov al,[bp+0x6]
00005F52  32E4              xor ah,ah
00005F54  2D0200            sub ax,0x2
00005F57  50                push ax
00005F58  8A4604            mov al,[bp+0x4]
00005F5B  32E4              xor ah,ah
00005F5D  050200            add ax,0x2
00005F60  50                push ax
00005F61  8A4606            mov al,[bp+0x6]
00005F64  32E4              xor ah,ah
00005F66  2D0300            sub ax,0x3
00005F69  50                push ax
00005F6A  8A4604            mov al,[bp+0x4]
00005F6D  32E4              xor ah,ah
00005F6F  050300            add ax,0x3
00005F72  50                push ax
00005F73  8A46F7            mov al,[bp-0x9]
00005F76  32E4              xor ah,ah
00005F78  50                push ax
00005F79  8A46F6            mov al,[bp-0xa]
00005F7C  32E4              xor ah,ah
00005F7E  50                push ax
00005F7F  E808D1            call word 0x308a
00005F82  8946F8            mov [bp-0x8],ax
00005F85  8B46F8            mov ax,[bp-0x8]
00005F88  3D0000            cmp ax,0x0
00005F8B  7F03              jg 0x5f90
00005F8D  E95100            jmp word 0x5fe1
00005F90  8B46FC            mov ax,[bp-0x4]
00005F93  50                push ax
00005F94  B91200            mov cx,0x12
00005F97  E837B0            call word 0xfd1
00005F9A  4C                dec sp
00005F9B  4C                dec sp
00005F9C  8A4606            mov al,[bp+0x6]
00005F9F  32E4              xor ah,ah
00005FA1  2D0100            sub ax,0x1
00005FA4  50                push ax
00005FA5  8A4604            mov al,[bp+0x4]
00005FA8  32E4              xor ah,ah
00005FAA  050100            add ax,0x1
00005FAD  50                push ax
00005FAE  E8AAF7            call word 0x575b
00005FB1  59                pop cx
00005FB2  03C1              add ax,cx
00005FB4  50                push ax
00005FB5  B91200            mov cx,0x12
00005FB8  E816B0            call word 0xfd1
00005FBB  4C                dec sp
00005FBC  4C                dec sp
00005FBD  8A4606            mov al,[bp+0x6]
00005FC0  32E4              xor ah,ah
00005FC2  2D0200            sub ax,0x2
00005FC5  50                push ax
00005FC6  8A4604            mov al,[bp+0x4]
00005FC9  32E4              xor ah,ah
00005FCB  050200            add ax,0x2
00005FCE  50                push ax
00005FCF  E889F7            call word 0x575b
00005FD2  59                pop cx
00005FD3  03C1              add ax,cx
00005FD5  8946FC            mov [bp-0x4],ax
00005FD8  8B46FA            mov ax,[bp-0x6]
00005FDB  0346F8            add ax,[bp-0x8]
00005FDE  8946FA            mov [bp-0x6],ax
00005FE1  8A4604            mov al,[bp+0x4]
00005FE4  32E4              xor ah,ah
00005FE6  3D1100            cmp ax,0x11
00005FE9  B80100            mov ax,0x1
00005FEC  7C01              jl 0x5fef
00005FEE  48                dec ax
00005FEF  50                push ax
00005FF0  8A4606            mov al,[bp+0x6]
00005FF3  32E4              xor ah,ah
00005FF5  3D1100            cmp ax,0x11
00005FF8  B80100            mov ax,0x1
00005FFB  7C01              jl 0x5ffe
00005FFD  48                dec ax
00005FFE  59                pop cx
00005FFF  23C1              and ax,cx
00006001  0BC0              or ax,ax
00006003  7503              jnz 0x6008
00006005  E9B800            jmp word 0x60c0
00006008  B92000            mov cx,0x20
0000600B  E8C3AF            call word 0xfd1
0000600E  4C                dec sp
0000600F  4C                dec sp
00006010  8A4606            mov al,[bp+0x6]
00006013  32E4              xor ah,ah
00006015  50                push ax
00006016  8A4604            mov al,[bp+0x4]
00006019  32E4              xor ah,ah
0000601B  50                push ax
0000601C  8A4606            mov al,[bp+0x6]
0000601F  32E4              xor ah,ah
00006021  050100            add ax,0x1
00006024  50                push ax
00006025  8A4604            mov al,[bp+0x4]
00006028  32E4              xor ah,ah
0000602A  050100            add ax,0x1
0000602D  50                push ax
0000602E  8A4606            mov al,[bp+0x6]
00006031  32E4              xor ah,ah
00006033  050200            add ax,0x2
00006036  50                push ax
00006037  8A4604            mov al,[bp+0x4]
0000603A  32E4              xor ah,ah
0000603C  050200            add ax,0x2
0000603F  50                push ax
00006040  8A4606            mov al,[bp+0x6]
00006043  32E4              xor ah,ah
00006045  050300            add ax,0x3
00006048  50                push ax
00006049  8A4604            mov al,[bp+0x4]
0000604C  32E4              xor ah,ah
0000604E  050300            add ax,0x3
00006051  50                push ax
00006052  8A46F7            mov al,[bp-0x9]
00006055  32E4              xor ah,ah
00006057  50                push ax
00006058  8A46F6            mov al,[bp-0xa]
0000605B  32E4              xor ah,ah
0000605D  50                push ax
0000605E  E829D0            call word 0x308a
00006061  8946F8            mov [bp-0x8],ax
00006064  8B46F8            mov ax,[bp-0x8]
00006067  3D0000            cmp ax,0x0
0000606A  7F03              jg 0x606f
0000606C  E95100            jmp word 0x60c0
0000606F  8B46FC            mov ax,[bp-0x4]
00006072  50                push ax
00006073  B91200            mov cx,0x12
00006076  E858AF            call word 0xfd1
00006079  4C                dec sp
0000607A  4C                dec sp
0000607B  8A4606            mov al,[bp+0x6]
0000607E  32E4              xor ah,ah
00006080  050100            add ax,0x1
00006083  50                push ax
00006084  8A4604            mov al,[bp+0x4]
00006087  32E4              xor ah,ah
00006089  050100            add ax,0x1
0000608C  50                push ax
0000608D  E8CBF6            call word 0x575b
00006090  59                pop cx
00006091  03C1              add ax,cx
00006093  50                push ax
00006094  B91200            mov cx,0x12
00006097  E837AF            call word 0xfd1
0000609A  4C                dec sp
0000609B  4C                dec sp
0000609C  8A4606            mov al,[bp+0x6]
0000609F  32E4              xor ah,ah
000060A1  050200            add ax,0x2
000060A4  50                push ax
000060A5  8A4604            mov al,[bp+0x4]
000060A8  32E4              xor ah,ah
000060AA  050200            add ax,0x2
000060AD  50                push ax
000060AE  E8AAF6            call word 0x575b
000060B1  59                pop cx
000060B2  03C1              add ax,cx
000060B4  8946FC            mov [bp-0x4],ax
000060B7  8B46FA            mov ax,[bp-0x6]
000060BA  0346F8            add ax,[bp-0x8]
000060BD  8946FA            mov [bp-0x6],ax
000060C0  8B46FC            mov ax,[bp-0x4]
000060C3  50                push ax
000060C4  8B46FA            mov ax,[bp-0x6]
000060C7  50                push ax
000060C8  B91000            mov cx,0x10
000060CB  E803AF            call word 0xfd1
000060CE  4C                dec sp
000060CF  4C                dec sp
000060D0  B80400            mov ax,0x4
000060D3  50                push ax
000060D4  A1CD03            mov ax,[0x3cd]
000060D7  050100            add ax,0x1
000060DA  50                push ax
000060DB  E8FECD            call word 0x2edc
000060DE  59                pop cx
000060DF  F7E9              imul cx
000060E1  59                pop cx
000060E2  03C1              add ax,cx
000060E4  050F00            add ax,0xf
000060E7  894608            mov [bp+0x8],ax
000060EA  E90000            jmp word 0x60ed
000060ED  8B4608            mov ax,[bp+0x8]
000060F0  8BE5              mov sp,bp
000060F2  5D                pop bp
000060F3  C20600            ret 0x6
000060F6  55                push bp
000060F7  8BEC              mov bp,sp
000060F9  55                push bp
000060FA  E90000            jmp word 0x60fd
000060FD  83EC04            sub sp,byte +0x4
00006100  B80000            mov ax,0x0
00006103  8946FC            mov [bp-0x4],ax
00006106  B91C00            mov cx,0x1c
00006109  E8C5AE            call word 0xfd1
0000610C  4C                dec sp
0000610D  4C                dec sp
0000610E  B80000            mov ax,0x0
00006111  50                push ax
00006112  8A4606            mov al,[bp+0x6]
00006115  32E4              xor ah,ah
00006117  50                push ax
00006118  8A4604            mov al,[bp+0x4]
0000611B  32E4              xor ah,ah
0000611D  50                push ax
0000611E  E890F1            call word 0x52b1
00006121  50                push ax
00006122  B91C00            mov cx,0x1c
00006125  E8A9AE            call word 0xfd1
00006128  4C                dec sp
00006129  4C                dec sp
0000612A  B80100            mov ax,0x1
0000612D  50                push ax
0000612E  8A4606            mov al,[bp+0x6]
00006131  32E4              xor ah,ah
00006133  50                push ax
00006134  8A4604            mov al,[bp+0x4]
00006137  32E4              xor ah,ah
00006139  50                push ax
0000613A  E874F1            call word 0x52b1
0000613D  59                pop cx
0000613E  03C1              add ax,cx
00006140  50                push ax
00006141  B91C00            mov cx,0x1c
00006144  E88AAE            call word 0xfd1
00006147  4C                dec sp
00006148  4C                dec sp
00006149  B80200            mov ax,0x2
0000614C  50                push ax
0000614D  8A4606            mov al,[bp+0x6]
00006150  32E4              xor ah,ah
00006152  50                push ax
00006153  8A4604            mov al,[bp+0x4]
00006156  32E4              xor ah,ah
00006158  50                push ax
00006159  E855F1            call word 0x52b1
0000615C  59                pop cx
0000615D  03C1              add ax,cx
0000615F  50                push ax
00006160  B91C00            mov cx,0x1c
00006163  E86BAE            call word 0xfd1
00006166  4C                dec sp
00006167  4C                dec sp
00006168  B80300            mov ax,0x3
0000616B  50                push ax
0000616C  8A4606            mov al,[bp+0x6]
0000616F  32E4              xor ah,ah
00006171  50                push ax
00006172  8A4604            mov al,[bp+0x4]
00006175  32E4              xor ah,ah
00006177  50                push ax
00006178  E836F1            call word 0x52b1
0000617B  59                pop cx
0000617C  03C1              add ax,cx
0000617E  8946FC            mov [bp-0x4],ax
00006181  8B46FC            mov ax,[bp-0x4]
00006184  50                push ax
00006185  B91400            mov cx,0x14
00006188  E846AE            call word 0xfd1
0000618B  4C                dec sp
0000618C  4C                dec sp
0000618D  8A4606            mov al,[bp+0x6]
00006190  32E4              xor ah,ah
00006192  50                push ax
00006193  8A4604            mov al,[bp+0x4]
00006196  32E4              xor ah,ah
00006198  50                push ax
00006199  E8AEF8            call word 0x5a4a
0000619C  59                pop cx
0000619D  03C1              add ax,cx
0000619F  8946FC            mov [bp-0x4],ax
000061A2  8B46FC            mov ax,[bp-0x4]
000061A5  894608            mov [bp+0x8],ax
000061A8  E90000            jmp word 0x61ab
000061AB  8B4608            mov ax,[bp+0x8]
000061AE  8BE5              mov sp,bp
000061B0  5D                pop bp
000061B1  C20600            ret 0x6
000061B4  55                push bp
000061B5  8BEC              mov bp,sp
000061B7  55                push bp
000061B8  E90000            jmp word 0x61bb
000061BB  83EC0E            sub sp,byte +0xe
000061BE  8A4606            mov al,[bp+0x6]
000061C1  32E4              xor ah,ah
000061C3  8846FD            mov [bp-0x3],al
000061C6  8A4604            mov al,[bp+0x4]
000061C9  32E4              xor ah,ah
000061CB  8846FB            mov [bp-0x5],al
000061CE  8A4606            mov al,[bp+0x6]
000061D1  32E4              xor ah,ah
000061D3  8846FC            mov [bp-0x4],al
000061D6  8A4604            mov al,[bp+0x4]
000061D9  32E4              xor ah,ah
000061DB  8846FA            mov [bp-0x6],al
000061DE  B80000            mov ax,0x0
000061E1  8846F3            mov [bp-0xd],al
000061E4  B80000            mov ax,0x0
000061E7  8846F2            mov [bp-0xe],al
000061EA  B80100            mov ax,0x1
000061ED  8846F1            mov [bp-0xf],al
000061F0  B80100            mov ax,0x1
000061F3  8846F0            mov [bp-0x10],al
000061F6  B91300            mov cx,0x13
000061F9  E8D5AD            call word 0xfd1
000061FC  4C                dec sp
000061FD  8D7EFC            lea di,[bp-0x4]
00006200  16                push ss
00006201  57                push di
00006202  8D7EFA            lea di,[bp-0x6]
00006205  16                push ss
00006206  57                push di
00006207  8A4608            mov al,[bp+0x8]
0000620A  32E4              xor ah,ah
0000620C  50                push ax
0000620D  B80100            mov ax,0x1
00006210  50                push ax
00006211  E8A0D5            call word 0x37b4
00006214  7503              jnz 0x6219
00006216  E93A00            jmp word 0x6253
00006219  B80000            mov ax,0x0
0000621C  8946F4            mov [bp-0xc],ax
0000621F  8A4606            mov al,[bp+0x6]
00006222  32E4              xor ah,ah
00006224  B91300            mov cx,0x13
00006227  F7E1              mul cx
00006229  97                xchg ax,di
0000622A  57                push di
0000622B  8A4604            mov al,[bp+0x4]
0000622E  32E4              xor ah,ah
00006230  5F                pop di
00006231  03F8              add di,ax
00006233  8A854C02          mov al,[di+0x24c]
00006237  32E4              xor ah,ah
00006239  3D0100            cmp ax,0x1
0000623C  7403              jz 0x6241
0000623E  E90900            jmp word 0x624a
00006241  B80200            mov ax,0x2
00006244  8846F2            mov [bp-0xe],al
00006247  E90600            jmp word 0x6250
0000624A  B80100            mov ax,0x1
0000624D  8846F2            mov [bp-0xe],al
00006250  E95500            jmp word 0x62a8
00006253  B92400            mov cx,0x24
00006256  E878AD            call word 0xfd1
00006259  4C                dec sp
0000625A  4C                dec sp
0000625B  8A46FC            mov al,[bp-0x4]
0000625E  32E4              xor ah,ah
00006260  50                push ax
00006261  8A46FA            mov al,[bp-0x6]
00006264  32E4              xor ah,ah
00006266  50                push ax
00006267  8A4608            mov al,[bp+0x8]
0000626A  32E4              xor ah,ah
0000626C  50                push ax
0000626D  B80100            mov ax,0x1
00006270  50                push ax
00006271  B80100            mov ax,0x1
00006274  50                push ax
00006275  B80000            mov ax,0x0
00006278  50                push ax
00006279  B80300            mov ax,0x3
0000627C  50                push ax
0000627D  8A46FC            mov al,[bp-0x4]
00006280  32E4              xor ah,ah
00006282  B91300            mov cx,0x13
00006285  F7E1              mul cx
00006287  97                xchg ax,di
00006288  57                push di
00006289  8A46FA            mov al,[bp-0x6]
0000628C  32E4              xor ah,ah
0000628E  5F                pop di
0000628F  03F8              add di,ax
00006291  8A854C02          mov al,[di+0x24c]
00006295  32E4              xor ah,ah
00006297  50                push ax
00006298  8D7EF2            lea di,[bp-0xe]
0000629B  16                push ss
0000629C  57                push di
0000629D  8D7EF0            lea di,[bp-0x10]
000062A0  16                push ss
000062A1  57                push di
000062A2  E8D9ED            call word 0x507e
000062A5  8946F4            mov [bp-0xc],ax
000062A8  B92400            mov cx,0x24
000062AB  E823AD            call word 0xfd1
000062AE  4C                dec sp
000062AF  4C                dec sp
000062B0  8A4606            mov al,[bp+0x6]
000062B3  32E4              xor ah,ah
000062B5  50                push ax
000062B6  8A4604            mov al,[bp+0x4]
000062B9  32E4              xor ah,ah
000062BB  50                push ax
000062BC  8A4608            mov al,[bp+0x8]
000062BF  32E4              xor ah,ah
000062C1  50                push ax
000062C2  B80000            mov ax,0x0
000062C5  50                push ax
000062C6  B80100            mov ax,0x1
000062C9  50                push ax
000062CA  B80000            mov ax,0x0
000062CD  50                push ax
000062CE  B80300            mov ax,0x3
000062D1  50                push ax
000062D2  B80300            mov ax,0x3
000062D5  50                push ax
000062D6  8D7EF3            lea di,[bp-0xd]
000062D9  16                push ss
000062DA  57                push di
000062DB  8D7EF1            lea di,[bp-0xf]
000062DE  16                push ss
000062DF  57                push di
000062E0  E89BED            call word 0x507e
000062E3  8946F6            mov [bp-0xa],ax
000062E6  8B46F6            mov ax,[bp-0xa]
000062E9  0346F4            add ax,[bp-0xc]
000062EC  8946F8            mov [bp-0x8],ax
000062EF  8B46F8            mov ax,[bp-0x8]
000062F2  3D0100            cmp ax,0x1
000062F5  7E03              jng 0x62fa
000062F7  E90900            jmp word 0x6303
000062FA  B80000            mov ax,0x0
000062FD  89460A            mov [bp+0xa],ax
00006300  E97F03            jmp word 0x6682
00006303  8B46F8            mov ax,[bp-0x8]
00006306  3D0400            cmp ax,0x4
00006309  7D03              jnl 0x630e
0000630B  E9D900            jmp word 0x63e7
0000630E  8A46F1            mov al,[bp-0xf]
00006311  32E4              xor ah,ah
00006313  50                push ax
00006314  8A46F0            mov al,[bp-0x10]
00006317  32E4              xor ah,ah
00006319  59                pop cx
0000631A  23C1              and ax,cx
0000631C  0BC0              or ax,ax
0000631E  7503              jnz 0x6323
00006320  E96000            jmp word 0x6383
00006323  8A4606            mov al,[bp+0x6]
00006326  32E4              xor ah,ah
00006328  B91300            mov cx,0x13
0000632B  F7E1              mul cx
0000632D  97                xchg ax,di
0000632E  57                push di
0000632F  8A4604            mov al,[bp+0x4]
00006332  32E4              xor ah,ah
00006334  5F                pop di
00006335  03F8              add di,ax
00006337  8A854C02          mov al,[di+0x24c]
0000633B  32E4              xor ah,ah
0000633D  3D0300            cmp ax,0x3
00006340  B80100            mov ax,0x1
00006343  7401              jz 0x6346
00006345  48                dec ax
00006346  50                push ax
00006347  8A46F3            mov al,[bp-0xd]
0000634A  32E4              xor ah,ah
0000634C  3D0100            cmp ax,0x1
0000634F  B80100            mov ax,0x1
00006352  7401              jz 0x6355
00006354  48                dec ax
00006355  59                pop cx
00006356  23C1              and ax,cx
00006358  50                push ax
00006359  8A46F2            mov al,[bp-0xe]
0000635C  32E4              xor ah,ah
0000635E  3D0100            cmp ax,0x1
00006361  B80100            mov ax,0x1
00006364  7401              jz 0x6367
00006366  48                dec ax
00006367  59                pop cx
00006368  23C1              and ax,cx
0000636A  0BC0              or ax,ax
0000636C  7503              jnz 0x6371
0000636E  E90900            jmp word 0x637a
00006371  B80000            mov ax,0x0
00006374  89460A            mov [bp+0xa],ax
00006377  E90600            jmp word 0x6380
0000637A  B8DC05            mov ax,0x5dc
0000637D  89460A            mov [bp+0xa],ax
00006380  E96100            jmp word 0x63e4
00006383  8A46F1            mov al,[bp-0xf]
00006386  32E4              xor ah,ah
00006388  50                push ax
00006389  8A46F0            mov al,[bp-0x10]
0000638C  32E4              xor ah,ah
0000638E  59                pop cx
0000638F  0BC1              or ax,cx
00006391  3401              xor al,0x1
00006393  7503              jnz 0x6398
00006395  E90900            jmp word 0x63a1
00006398  B84600            mov ax,0x46
0000639B  89460A            mov [bp+0xa],ax
0000639E  E94300            jmp word 0x63e4
000063A1  8A46F1            mov al,[bp-0xf]
000063A4  32E4              xor ah,ah
000063A6  0BC0              or ax,ax
000063A8  7503              jnz 0x63ad
000063AA  E91D00            jmp word 0x63ca
000063AD  8B46F6            mov ax,[bp-0xa]
000063B0  3D0100            cmp ax,0x1
000063B3  7F03              jg 0x63b8
000063B5  E90900            jmp word 0x63c1
000063B8  B8DC05            mov ax,0x5dc
000063BB  89460A            mov [bp+0xa],ax
000063BE  E90600            jmp word 0x63c7
000063C1  B80000            mov ax,0x0
000063C4  89460A            mov [bp+0xa],ax
000063C7  E91A00            jmp word 0x63e4
000063CA  8B46F4            mov ax,[bp-0xc]
000063CD  3D0100            cmp ax,0x1
000063D0  7F03              jg 0x63d5
000063D2  E90900            jmp word 0x63de
000063D5  B8DC05            mov ax,0x5dc
000063D8  89460A            mov [bp+0xa],ax
000063DB  E90600            jmp word 0x63e4
000063DE  B80000            mov ax,0x0
000063E1  89460A            mov [bp+0xa],ax
000063E4  E99B02            jmp word 0x6682
000063E7  8B46F8            mov ax,[bp-0x8]
000063EA  3D0300            cmp ax,0x3
000063ED  7403              jz 0x63f2
000063EF  E9D401            jmp word 0x65c6
000063F2  8A46F3            mov al,[bp-0xd]
000063F5  32E4              xor ah,ah
000063F7  3D0100            cmp ax,0x1
000063FA  B80100            mov ax,0x1
000063FD  7501              jnz 0x6400
000063FF  48                dec ax
00006400  50                push ax
00006401  8A46F2            mov al,[bp-0xe]
00006404  32E4              xor ah,ah
00006406  3D0100            cmp ax,0x1
00006409  B80100            mov ax,0x1
0000640C  7501              jnz 0x640f
0000640E  48                dec ax
0000640F  59                pop cx
00006410  23C1              and ax,cx
00006412  0BC0              or ax,ax
00006414  7503              jnz 0x6419
00006416  E98200            jmp word 0x649b
00006419  8A46F1            mov al,[bp-0xf]
0000641C  32E4              xor ah,ah
0000641E  50                push ax
0000641F  8A46F0            mov al,[bp-0x10]
00006422  32E4              xor ah,ah
00006424  59                pop cx
00006425  23C1              and ax,cx
00006427  0BC0              or ax,ax
00006429  7503              jnz 0x642e
0000642B  E90900            jmp word 0x6437
0000642E  B84600            mov ax,0x46
00006431  89460A            mov [bp+0xa],ax
00006434  E96100            jmp word 0x6498
00006437  8A46F1            mov al,[bp-0xf]
0000643A  32E4              xor ah,ah
0000643C  50                push ax
0000643D  8A46F0            mov al,[bp-0x10]
00006440  32E4              xor ah,ah
00006442  59                pop cx
00006443  0BC1              or ax,cx
00006445  3401              xor al,0x1
00006447  7503              jnz 0x644c
00006449  E90900            jmp word 0x6455
0000644C  B80000            mov ax,0x0
0000644F  89460A            mov [bp+0xa],ax
00006452  E94300            jmp word 0x6498
00006455  8A46F1            mov al,[bp-0xf]
00006458  32E4              xor ah,ah
0000645A  0BC0              or ax,ax
0000645C  7503              jnz 0x6461
0000645E  E91D00            jmp word 0x647e
00006461  8B46F6            mov ax,[bp-0xa]
00006464  3D0100            cmp ax,0x1
00006467  7F03              jg 0x646c
00006469  E90900            jmp word 0x6475
0000646C  B84600            mov ax,0x46
0000646F  89460A            mov [bp+0xa],ax
00006472  E90600            jmp word 0x647b
00006475  B80000            mov ax,0x0
00006478  89460A            mov [bp+0xa],ax
0000647B  E91A00            jmp word 0x6498
0000647E  8B46F4            mov ax,[bp-0xc]
00006481  3D0100            cmp ax,0x1
00006484  7F03              jg 0x6489
00006486  E90900            jmp word 0x6492
00006489  B84600            mov ax,0x46
0000648C  89460A            mov [bp+0xa],ax
0000648F  E90600            jmp word 0x6498
00006492  B80000            mov ax,0x0
00006495  89460A            mov [bp+0xa],ax
00006498  E92801            jmp word 0x65c3
0000649B  8A46F3            mov al,[bp-0xd]
0000649E  32E4              xor ah,ah
000064A0  3D0100            cmp ax,0x1
000064A3  B80100            mov ax,0x1
000064A6  7401              jz 0x64a9
000064A8  48                dec ax
000064A9  50                push ax
000064AA  8A46F2            mov al,[bp-0xe]
000064AD  32E4              xor ah,ah
000064AF  3D0100            cmp ax,0x1
000064B2  B80100            mov ax,0x1
000064B5  7401              jz 0x64b8
000064B7  48                dec ax
000064B8  59                pop cx
000064B9  23C1              and ax,cx
000064BB  0BC0              or ax,ax
000064BD  7503              jnz 0x64c2
000064BF  E98200            jmp word 0x6544
000064C2  8A46F1            mov al,[bp-0xf]
000064C5  32E4              xor ah,ah
000064C7  50                push ax
000064C8  8A46F0            mov al,[bp-0x10]
000064CB  32E4              xor ah,ah
000064CD  59                pop cx
000064CE  23C1              and ax,cx
000064D0  0BC0              or ax,ax
000064D2  7503              jnz 0x64d7
000064D4  E90900            jmp word 0x64e0
000064D7  B80000            mov ax,0x0
000064DA  89460A            mov [bp+0xa],ax
000064DD  E96100            jmp word 0x6541
000064E0  8A46F1            mov al,[bp-0xf]
000064E3  32E4              xor ah,ah
000064E5  50                push ax
000064E6  8A46F0            mov al,[bp-0x10]
000064E9  32E4              xor ah,ah
000064EB  59                pop cx
000064EC  0BC1              or ax,cx
000064EE  3401              xor al,0x1
000064F0  7503              jnz 0x64f5
000064F2  E90900            jmp word 0x64fe
000064F5  B80000            mov ax,0x0
000064F8  89460A            mov [bp+0xa],ax
000064FB  E94300            jmp word 0x6541
000064FE  8A46F1            mov al,[bp-0xf]
00006501  32E4              xor ah,ah
00006503  0BC0              or ax,ax
00006505  7503              jnz 0x650a
00006507  E91D00            jmp word 0x6527
0000650A  8B46F6            mov ax,[bp-0xa]
0000650D  3D0100            cmp ax,0x1
00006510  7F03              jg 0x6515
00006512  E90900            jmp word 0x651e
00006515  B80300            mov ax,0x3
00006518  89460A            mov [bp+0xa],ax
0000651B  E90600            jmp word 0x6524
0000651E  B80000            mov ax,0x0
00006521  89460A            mov [bp+0xa],ax
00006524  E91A00            jmp word 0x6541
00006527  8B46F4            mov ax,[bp-0xc]
0000652A  3D0100            cmp ax,0x1
0000652D  7F03              jg 0x6532
0000652F  E90900            jmp word 0x653b
00006532  B80300            mov ax,0x3
00006535  89460A            mov [bp+0xa],ax
00006538  E90600            jmp word 0x6541
0000653B  B80000            mov ax,0x0
0000653E  89460A            mov [bp+0xa],ax
00006541  E97F00            jmp word 0x65c3
00006544  8A46F1            mov al,[bp-0xf]
00006547  32E4              xor ah,ah
00006549  50                push ax
0000654A  8A46F0            mov al,[bp-0x10]
0000654D  32E4              xor ah,ah
0000654F  59                pop cx
00006550  23C1              and ax,cx
00006552  0BC0              or ax,ax
00006554  7503              jnz 0x6559
00006556  E90900            jmp word 0x6562
00006559  B80300            mov ax,0x3
0000655C  89460A            mov [bp+0xa],ax
0000655F  E96100            jmp word 0x65c3
00006562  8A46F1            mov al,[bp-0xf]
00006565  32E4              xor ah,ah
00006567  50                push ax
00006568  8A46F0            mov al,[bp-0x10]
0000656B  32E4              xor ah,ah
0000656D  59                pop cx
0000656E  0BC1              or ax,cx
00006570  3401              xor al,0x1
00006572  7503              jnz 0x6577
00006574  E90900            jmp word 0x6580
00006577  B80000            mov ax,0x0
0000657A  89460A            mov [bp+0xa],ax
0000657D  E94300            jmp word 0x65c3
00006580  8A46F1            mov al,[bp-0xf]
00006583  32E4              xor ah,ah
00006585  0BC0              or ax,ax
00006587  7503              jnz 0x658c
00006589  E91D00            jmp word 0x65a9
0000658C  8B46F6            mov ax,[bp-0xa]
0000658F  3D0100            cmp ax,0x1
00006592  7F03              jg 0x6597
00006594  E90900            jmp word 0x65a0
00006597  B80300            mov ax,0x3
0000659A  89460A            mov [bp+0xa],ax
0000659D  E90600            jmp word 0x65a6
000065A0  B80000            mov ax,0x0
000065A3  89460A            mov [bp+0xa],ax
000065A6  E91A00            jmp word 0x65c3
000065A9  8B46F4            mov ax,[bp-0xc]
000065AC  3D0100            cmp ax,0x1
000065AF  7F03              jg 0x65b4
000065B1  E90900            jmp word 0x65bd
000065B4  B80300            mov ax,0x3
000065B7  89460A            mov [bp+0xa],ax
000065BA  E90600            jmp word 0x65c3
000065BD  B80000            mov ax,0x0
000065C0  89460A            mov [bp+0xa],ax
000065C3  E9BC00            jmp word 0x6682
000065C6  8B46F8            mov ax,[bp-0x8]
000065C9  3D0200            cmp ax,0x2
000065CC  7403              jz 0x65d1
000065CE  E98700            jmp word 0x6658
000065D1  8A46F3            mov al,[bp-0xd]
000065D4  32E4              xor ah,ah
000065D6  3D0100            cmp ax,0x1
000065D9  B80100            mov ax,0x1
000065DC  7401              jz 0x65df
000065DE  48                dec ax
000065DF  50                push ax
000065E0  8A46F2            mov al,[bp-0xe]
000065E3  32E4              xor ah,ah
000065E5  3D0100            cmp ax,0x1
000065E8  B80100            mov ax,0x1
000065EB  7401              jz 0x65ee
000065ED  48                dec ax
000065EE  59                pop cx
000065EF  0BC1              or ax,cx
000065F1  0BC0              or ax,ax
000065F3  7503              jnz 0x65f8
000065F5  E90900            jmp word 0x6601
000065F8  B80000            mov ax,0x0
000065FB  89460A            mov [bp+0xa],ax
000065FE  E95400            jmp word 0x6655
00006601  8A46F3            mov al,[bp-0xd]
00006604  32E4              xor ah,ah
00006606  3D0100            cmp ax,0x1
00006609  B80100            mov ax,0x1
0000660C  7501              jnz 0x660f
0000660E  48                dec ax
0000660F  50                push ax
00006610  8A46F2            mov al,[bp-0xe]
00006613  32E4              xor ah,ah
00006615  3D0100            cmp ax,0x1
00006618  B80100            mov ax,0x1
0000661B  7501              jnz 0x661e
0000661D  48                dec ax
0000661E  59                pop cx
0000661F  23C1              and ax,cx
00006621  0BC0              or ax,ax
00006623  7503              jnz 0x6628
00006625  E92700            jmp word 0x664f
00006628  8A46F1            mov al,[bp-0xf]
0000662B  32E4              xor ah,ah
0000662D  50                push ax
0000662E  8A46F0            mov al,[bp-0x10]
00006631  32E4              xor ah,ah
00006633  59                pop cx
00006634  23C1              and ax,cx
00006636  0BC0              or ax,ax
00006638  7503              jnz 0x663d
0000663A  E90900            jmp word 0x6646
0000663D  B80700            mov ax,0x7
00006640  89460A            mov [bp+0xa],ax
00006643  E90600            jmp word 0x664c
00006646  8B46F8            mov ax,[bp-0x8]
00006649  89460A            mov [bp+0xa],ax
0000664C  E90600            jmp word 0x6655
0000664F  B80100            mov ax,0x1
00006652  89460A            mov [bp+0xa],ax
00006655  E92A00            jmp word 0x6682
00006658  E8FDBE            call word 0x2558
0000665B  E8FFC2            call word 0x295d
0000665E  20536F            and [bp+di+0x6f],dl
00006661  6D                insw
00006662  7468              jz 0x66cc
00006664  696E672074        imul bp,[bp+0x67],word 0x7420
00006669  657272            gs jc 0x66de
0000666C  69626C6520        imul sp,[bp+si+0x6c],word 0x2065
00006671  686173            push word 0x7361
00006674  206861            and [bx+si+0x61],ch
00006677  7070              jo 0x66e9
00006679  656E              gs outsb
0000667B  65642121          and [fs:bx+di],sp
0000667F  E8A0A9            call word 0x1022
00006682  E90000            jmp word 0x6685
00006685  8B460A            mov ax,[bp+0xa]
00006688  8BE5              mov sp,bp
0000668A  5D                pop bp
0000668B  C20800            ret 0x8
0000668E  55                push bp
0000668F  8BEC              mov bp,sp
00006691  55                push bp
00006692  E90000            jmp word 0x6695
00006695  83EC06            sub sp,byte +0x6
00006698  B80000            mov ax,0x0
0000669B  8946FC            mov [bp-0x4],ax
0000669E  B91C00            mov cx,0x1c
000066A1  E82DA9            call word 0xfd1
000066A4  4C                dec sp
000066A5  4C                dec sp
000066A6  B80000            mov ax,0x0
000066A9  50                push ax
000066AA  8A4606            mov al,[bp+0x6]
000066AD  32E4              xor ah,ah
000066AF  50                push ax
000066B0  8A4604            mov al,[bp+0x4]
000066B3  32E4              xor ah,ah
000066B5  50                push ax
000066B6  E8FBFA            call word 0x61b4
000066B9  50                push ax
000066BA  B91C00            mov cx,0x1c
000066BD  E811A9            call word 0xfd1
000066C0  4C                dec sp
000066C1  4C                dec sp
000066C2  B80100            mov ax,0x1
000066C5  50                push ax
000066C6  8A4606            mov al,[bp+0x6]
000066C9  32E4              xor ah,ah
000066CB  50                push ax
000066CC  8A4604            mov al,[bp+0x4]
000066CF  32E4              xor ah,ah
000066D1  50                push ax
000066D2  E8DFFA            call word 0x61b4
000066D5  59                pop cx
000066D6  03C1              add ax,cx
000066D8  8946FC            mov [bp-0x4],ax
000066DB  8B46FC            mov ax,[bp-0x4]
000066DE  50                push ax
000066DF  B91C00            mov cx,0x1c
000066E2  E8ECA8            call word 0xfd1
000066E5  4C                dec sp
000066E6  4C                dec sp
000066E7  B80200            mov ax,0x2
000066EA  50                push ax
000066EB  8A4606            mov al,[bp+0x6]
000066EE  32E4              xor ah,ah
000066F0  50                push ax
000066F1  8A4604            mov al,[bp+0x4]
000066F4  32E4              xor ah,ah
000066F6  50                push ax
000066F7  E8BAFA            call word 0x61b4
000066FA  59                pop cx
000066FB  03C1              add ax,cx
000066FD  50                push ax
000066FE  B91C00            mov cx,0x1c
00006701  E8CDA8            call word 0xfd1
00006704  4C                dec sp
00006705  4C                dec sp
00006706  B80300            mov ax,0x3
00006709  50                push ax
0000670A  8A4606            mov al,[bp+0x6]
0000670D  32E4              xor ah,ah
0000670F  50                push ax
00006710  8A4604            mov al,[bp+0x4]
00006713  32E4              xor ah,ah
00006715  50                push ax
00006716  E89BFA            call word 0x61b4
00006719  59                pop cx
0000671A  03C1              add ax,cx
0000671C  8946FC            mov [bp-0x4],ax
0000671F  B91600            mov cx,0x16
00006722  E8ACA8            call word 0xfd1
00006725  4C                dec sp
00006726  4C                dec sp
00006727  8D7E06            lea di,[bp+0x6]
0000672A  16                push ss
0000672B  57                push di
0000672C  8D7E04            lea di,[bp+0x4]
0000672F  16                push ss
00006730  57                push di
00006731  B80000            mov ax,0x0
00006734  50                push ax
00006735  B80200            mov ax,0x2
00006738  50                push ax
00006739  E8AFCB            call word 0x32eb
0000673C  8946FA            mov [bp-0x6],ax
0000673F  8B46FA            mov ax,[bp-0x6]
00006742  3D0000            cmp ax,0x0
00006745  7F03              jg 0x674a
00006747  E92000            jmp word 0x676a
0000674A  8B46FC            mov ax,[bp-0x4]
0000674D  50                push ax
0000674E  B91000            mov cx,0x10
00006751  E87DA8            call word 0xfd1
00006754  4C                dec sp
00006755  4C                dec sp
00006756  B80300            mov ax,0x3
00006759  50                push ax
0000675A  A1CB03            mov ax,[0x3cb]
0000675D  50                push ax
0000675E  E87BC7            call word 0x2edc
00006761  59                pop cx
00006762  03C1              add ax,cx
00006764  050300            add ax,0x3
00006767  8946FC            mov [bp-0x4],ax
0000676A  B91800            mov cx,0x18
0000676D  E861A8            call word 0xfd1
00006770  4C                dec sp
00006771  4C                dec sp
00006772  8A4606            mov al,[bp+0x6]
00006775  32E4              xor ah,ah
00006777  50                push ax
00006778  8A4604            mov al,[bp+0x4]
0000677B  32E4              xor ah,ah
0000677D  50                push ax
0000677E  A0E103            mov al,[0x3e1]
00006781  32E4              xor ah,ah
00006783  50                push ax
00006784  E874F0            call word 0x57fb
00006787  8946FA            mov [bp-0x6],ax
0000678A  8B46FA            mov ax,[bp-0x6]
0000678D  3D0000            cmp ax,0x0
00006790  7F03              jg 0x6795
00006792  E92A00            jmp word 0x67bf
00006795  8B46FC            mov ax,[bp-0x4]
00006798  50                push ax
00006799  B91000            mov cx,0x10
0000679C  E832A8            call word 0xfd1
0000679F  4C                dec sp
000067A0  4C                dec sp
000067A1  B80300            mov ax,0x3
000067A4  50                push ax
000067A5  A0E103            mov al,[0x3e1]
000067A8  32E4              xor ah,ah
000067AA  D1E0              shl ax,1
000067AC  97                xchg ax,di
000067AD  8B85C703          mov ax,[di+0x3c7]
000067B1  50                push ax
000067B2  E827C7            call word 0x2edc
000067B5  59                pop cx
000067B6  91                xchg ax,cx
000067B7  2BC1              sub ax,cx
000067B9  2D0300            sub ax,0x3
000067BC  8946FC            mov [bp-0x4],ax
000067BF  8B46FC            mov ax,[bp-0x4]
000067C2  894608            mov [bp+0x8],ax
000067C5  E90000            jmp word 0x67c8
000067C8  8B4608            mov ax,[bp+0x8]
000067CB  8BE5              mov sp,bp
000067CD  5D                pop bp
000067CE  C20600            ret 0x6
000067D1  55                push bp
000067D2  8BEC              mov bp,sp
000067D4  55                push bp
000067D5  E90000            jmp word 0x67d8
000067D8  83EC04            sub sp,byte +0x4
000067DB  B80A00            mov ax,0xa
000067DE  E8F9A8            call word 0x10da
000067E1  8946FC            mov [bp-0x4],ax
000067E4  A0E403            mov al,[0x3e4]
000067E7  32E4              xor ah,ah
000067E9  3D0300            cmp ax,0x3
000067EC  7403              jz 0x67f1
000067EE  E94001            jmp word 0x6931
000067F1  8B46FC            mov ax,[bp-0x4]
000067F4  3D0000            cmp ax,0x0
000067F7  7E03              jng 0x67fc
000067F9  E91500            jmp word 0x6811
000067FC  C47E08            les di,[bp+0x8]
000067FF  B80900            mov ax,0x9
00006802  268805            mov [es:di],al
00006805  C47E04            les di,[bp+0x4]
00006808  B80900            mov ax,0x9
0000680B  268805            mov [es:di],al
0000680E  E91D01            jmp word 0x692e
00006811  8B46FC            mov ax,[bp-0x4]
00006814  3D0100            cmp ax,0x1
00006817  7403              jz 0x681c
00006819  E91500            jmp word 0x6831
0000681C  C47E08            les di,[bp+0x8]
0000681F  B80900            mov ax,0x9
00006822  268805            mov [es:di],al
00006825  C47E04            les di,[bp+0x4]
00006828  B80A00            mov ax,0xa
0000682B  268805            mov [es:di],al
0000682E  E9FD00            jmp word 0x692e
00006831  8B46FC            mov ax,[bp-0x4]
00006834  3D0200            cmp ax,0x2
00006837  7403              jz 0x683c
00006839  E91500            jmp word 0x6851
0000683C  C47E08            les di,[bp+0x8]
0000683F  B80900            mov ax,0x9
00006842  268805            mov [es:di],al
00006845  C47E04            les di,[bp+0x4]
00006848  B80B00            mov ax,0xb
0000684B  268805            mov [es:di],al
0000684E  E9DD00            jmp word 0x692e
00006851  8B46FC            mov ax,[bp-0x4]
00006854  3D0300            cmp ax,0x3
00006857  7403              jz 0x685c
00006859  E91500            jmp word 0x6871
0000685C  C47E08            les di,[bp+0x8]
0000685F  B80A00            mov ax,0xa
00006862  268805            mov [es:di],al
00006865  C47E04            les di,[bp+0x4]
00006868  B80B00            mov ax,0xb
0000686B  268805            mov [es:di],al
0000686E  E9BD00            jmp word 0x692e
00006871  8B46FC            mov ax,[bp-0x4]
00006874  3D0400            cmp ax,0x4
00006877  7403              jz 0x687c
00006879  E91500            jmp word 0x6891
0000687C  C47E08            les di,[bp+0x8]
0000687F  B80B00            mov ax,0xb
00006882  268805            mov [es:di],al
00006885  C47E04            les di,[bp+0x4]
00006888  B80B00            mov ax,0xb
0000688B  268805            mov [es:di],al
0000688E  E99D00            jmp word 0x692e
00006891  8B46FC            mov ax,[bp-0x4]
00006894  3D0500            cmp ax,0x5
00006897  7403              jz 0x689c
00006899  E91500            jmp word 0x68b1
0000689C  C47E08            les di,[bp+0x8]
0000689F  B80B00            mov ax,0xb
000068A2  268805            mov [es:di],al
000068A5  C47E04            les di,[bp+0x4]
000068A8  B80A00            mov ax,0xa
000068AB  268805            mov [es:di],al
000068AE  E97D00            jmp word 0x692e
000068B1  8B46FC            mov ax,[bp-0x4]
000068B4  3D0600            cmp ax,0x6
000068B7  7403              jz 0x68bc
000068B9  E91500            jmp word 0x68d1
000068BC  C47E08            les di,[bp+0x8]
000068BF  B80B00            mov ax,0xb
000068C2  268805            mov [es:di],al
000068C5  C47E04            les di,[bp+0x4]
000068C8  B80900            mov ax,0x9
000068CB  268805            mov [es:di],al
000068CE  E95D00            jmp word 0x692e
000068D1  8B46FC            mov ax,[bp-0x4]
000068D4  3D0700            cmp ax,0x7
000068D7  7403              jz 0x68dc
000068D9  E91500            jmp word 0x68f1
000068DC  C47E08            les di,[bp+0x8]
000068DF  B80A00            mov ax,0xa
000068E2  268805            mov [es:di],al
000068E5  C47E04            les di,[bp+0x4]
000068E8  B80900            mov ax,0x9
000068EB  268805            mov [es:di],al
000068EE  E93D00            jmp word 0x692e
000068F1  8B46FC            mov ax,[bp-0x4]
000068F4  3D0800            cmp ax,0x8
000068F7  7403              jz 0x68fc
000068F9  E91500            jmp word 0x6911
000068FC  C47E08            les di,[bp+0x8]
000068FF  B80800            mov ax,0x8
00006902  268805            mov [es:di],al
00006905  C47E04            les di,[bp+0x4]
00006908  B80A00            mov ax,0xa
0000690B  268805            mov [es:di],al
0000690E  E91D00            jmp word 0x692e
00006911  8B46FC            mov ax,[bp-0x4]
00006914  3D0A00            cmp ax,0xa
00006917  7E03              jng 0x691c
00006919  E91200            jmp word 0x692e
0000691C  C47E08            les di,[bp+0x8]
0000691F  B80C00            mov ax,0xc
00006922  268805            mov [es:di],al
00006925  C47E04            les di,[bp+0x4]
00006928  B80A00            mov ax,0xa
0000692B  268805            mov [es:di],al
0000692E  E91200            jmp word 0x6943
00006931  C47E08            les di,[bp+0x8]
00006934  B80A00            mov ax,0xa
00006937  268805            mov [es:di],al
0000693A  C47E04            les di,[bp+0x4]
0000693D  B80A00            mov ax,0xa
00006940  268805            mov [es:di],al
00006943  E90000            jmp word 0x6946
00006946  8BE5              mov sp,bp
00006948  5D                pop bp
00006949  C20800            ret 0x8
0000694C  55                push bp
0000694D  8BEC              mov bp,sp
0000694F  55                push bp
00006950  E90000            jmp word 0x6953
00006953  83EC0D            sub sp,byte +0xd
00006956  B80000            mov ax,0x0
00006959  8846F1            mov [bp-0xf],al
0000695C  8D7EFA            lea di,[bp-0x6]
0000695F  16                push ss
00006960  B90800            mov cx,0x8
00006963  E8919C            call word 0x5f7
00006966  C406EE03          les ax,[0x3ee]
0000696A  8CC2              mov dx,es
0000696C  52                push dx
0000696D  50                push ax
0000696E  33C0              xor ax,ax
00006970  33D2              xor dx,dx
00006972  5B                pop bx
00006973  59                pop cx
00006974  E8B5AC            call word 0x162c
00006977  7503              jnz 0x697c
00006979  E92200            jmp word 0x699e
0000697C  C446FA            les ax,[bp-0x6]
0000697F  8CC2              mov dx,es
00006981  A3EE03            mov [0x3ee],ax
00006984  8916F003          mov [0x3f0],dx
00006988  C47EFA            les di,[bp-0x6]
0000698B  06                push es
0000698C  57                push di
0000698D  33C0              xor ax,ax
0000698F  33D2              xor dx,dx
00006991  5F                pop di
00006992  07                pop es
00006993  26894504          mov [es:di+0x4],ax
00006997  26895506          mov [es:di+0x6],dx
0000699B  E93502            jmp word 0x6bd3
0000699E  C406EE03          les ax,[0x3ee]
000069A2  8CC2              mov dx,es
000069A4  8946F6            mov [bp-0xa],ax
000069A7  8956F8            mov [bp-0x8],dx
000069AA  33C0              xor ax,ax
000069AC  33D2              xor dx,dx
000069AE  8946F2            mov [bp-0xe],ax
000069B1  8956F4            mov [bp-0xc],dx
000069B4  C446F6            les ax,[bp-0xa]
000069B7  8CC2              mov dx,es
000069B9  52                push dx
000069BA  50                push ax
000069BB  33C0              xor ax,ax
000069BD  33D2              xor dx,dx
000069BF  5B                pop bx
000069C0  59                pop cx
000069C1  E877AC            call word 0x163b
000069C4  50                push ax
000069C5  8A46F1            mov al,[bp-0xf]
000069C8  32E4              xor ah,ah
000069CA  3401              xor al,0x1
000069CC  59                pop cx
000069CD  23C1              and ax,cx
000069CF  0BC0              or ax,ax
000069D1  7503              jnz 0x69d6
000069D3  E9CA01            jmp word 0x6ba0
000069D6  C47EF6            les di,[bp-0xa]
000069D9  268A05            mov al,[es:di]
000069DC  32E4              xor ah,ah
000069DE  50                push ax
000069DF  8A4608            mov al,[bp+0x8]
000069E2  32E4              xor ah,ah
000069E4  59                pop cx
000069E5  91                xchg ax,cx
000069E6  3BC1              cmp ax,cx
000069E8  7C03              jl 0x69ed
000069EA  E90300            jmp word 0x69f0
000069ED  E99301            jmp word 0x6b83
000069F0  C47EF6            les di,[bp-0xa]
000069F3  268A05            mov al,[es:di]
000069F6  32E4              xor ah,ah
000069F8  50                push ax
000069F9  8A4608            mov al,[bp+0x8]
000069FC  32E4              xor ah,ah
000069FE  59                pop cx
000069FF  91                xchg ax,cx
00006A00  3BC1              cmp ax,cx
00006A02  7F03              jg 0x6a07
00006A04  E95500            jmp word 0x6a5c
00006A07  B80100            mov ax,0x1
00006A0A  8846F1            mov [bp-0xf],al
00006A0D  C446F2            les ax,[bp-0xe]
00006A10  8CC2              mov dx,es
00006A12  52                push dx
00006A13  50                push ax
00006A14  33C0              xor ax,ax
00006A16  33D2              xor dx,dx
00006A18  5B                pop bx
00006A19  59                pop cx
00006A1A  E80FAC            call word 0x162c
00006A1D  7503              jnz 0x6a22
00006A1F  E90F00            jmp word 0x6a31
00006A22  C446FA            les ax,[bp-0x6]
00006A25  8CC2              mov dx,es
00006A27  A3EE03            mov [0x3ee],ax
00006A2A  8916F003          mov [0x3f0],dx
00006A2E  E91400            jmp word 0x6a45
00006A31  C47EF2            les di,[bp-0xe]
00006A34  06                push es
00006A35  57                push di
00006A36  C446FA            les ax,[bp-0x6]
00006A39  8CC2              mov dx,es
00006A3B  5F                pop di
00006A3C  07                pop es
00006A3D  26894504          mov [es:di+0x4],ax
00006A41  26895506          mov [es:di+0x6],dx
00006A45  C47EFA            les di,[bp-0x6]
00006A48  06                push es
00006A49  57                push di
00006A4A  C446F6            les ax,[bp-0xa]
00006A4D  8CC2              mov dx,es
00006A4F  5F                pop di
00006A50  07                pop es
00006A51  26894504          mov [es:di+0x4],ax
00006A55  26895506          mov [es:di+0x6],dx
00006A59  E92701            jmp word 0x6b83
00006A5C  C47EF6            les di,[bp-0xa]
00006A5F  268A05            mov al,[es:di]
00006A62  32E4              xor ah,ah
00006A64  50                push ax
00006A65  8A4608            mov al,[bp+0x8]
00006A68  32E4              xor ah,ah
00006A6A  59                pop cx
00006A6B  91                xchg ax,cx
00006A6C  3BC1              cmp ax,cx
00006A6E  B80100            mov ax,0x1
00006A71  7401              jz 0x6a74
00006A73  48                dec ax
00006A74  50                push ax
00006A75  C47EF6            les di,[bp-0xa]
00006A78  268A4501          mov al,[es:di+0x1]
00006A7C  32E4              xor ah,ah
00006A7E  50                push ax
00006A7F  8A4606            mov al,[bp+0x6]
00006A82  32E4              xor ah,ah
00006A84  59                pop cx
00006A85  91                xchg ax,cx
00006A86  3BC1              cmp ax,cx
00006A88  B80100            mov ax,0x1
00006A8B  7C01              jl 0x6a8e
00006A8D  48                dec ax
00006A8E  59                pop cx
00006A8F  23C1              and ax,cx
00006A91  0BC0              or ax,ax
00006A93  7503              jnz 0x6a98
00006A95  E90300            jmp word 0x6a9b
00006A98  E9E800            jmp word 0x6b83
00006A9B  C47EF6            les di,[bp-0xa]
00006A9E  268A05            mov al,[es:di]
00006AA1  32E4              xor ah,ah
00006AA3  50                push ax
00006AA4  8A4608            mov al,[bp+0x8]
00006AA7  32E4              xor ah,ah
00006AA9  59                pop cx
00006AAA  91                xchg ax,cx
00006AAB  3BC1              cmp ax,cx
00006AAD  B80100            mov ax,0x1
00006AB0  7401              jz 0x6ab3
00006AB2  48                dec ax
00006AB3  50                push ax
00006AB4  C47EF6            les di,[bp-0xa]
00006AB7  268A4501          mov al,[es:di+0x1]
00006ABB  32E4              xor ah,ah
00006ABD  50                push ax
00006ABE  8A4606            mov al,[bp+0x6]
00006AC1  32E4              xor ah,ah
00006AC3  59                pop cx
00006AC4  91                xchg ax,cx
00006AC5  3BC1              cmp ax,cx
00006AC7  B80100            mov ax,0x1
00006ACA  7F01              jg 0x6acd
00006ACC  48                dec ax
00006ACD  59                pop cx
00006ACE  23C1              and ax,cx
00006AD0  0BC0              or ax,ax
00006AD2  7503              jnz 0x6ad7
00006AD4  E95500            jmp word 0x6b2c
00006AD7  B80100            mov ax,0x1
00006ADA  8846F1            mov [bp-0xf],al
00006ADD  C446F2            les ax,[bp-0xe]
00006AE0  8CC2              mov dx,es
00006AE2  52                push dx
00006AE3  50                push ax
00006AE4  33C0              xor ax,ax
00006AE6  33D2              xor dx,dx
00006AE8  5B                pop bx
00006AE9  59                pop cx
00006AEA  E83FAB            call word 0x162c
00006AED  7503              jnz 0x6af2
00006AEF  E90F00            jmp word 0x6b01
00006AF2  C446FA            les ax,[bp-0x6]
00006AF5  8CC2              mov dx,es
00006AF7  A3EE03            mov [0x3ee],ax
00006AFA  8916F003          mov [0x3f0],dx
00006AFE  E91400            jmp word 0x6b15
00006B01  C47EF2            les di,[bp-0xe]
00006B04  06                push es
00006B05  57                push di
00006B06  C446FA            les ax,[bp-0x6]
00006B09  8CC2              mov dx,es
00006B0B  5F                pop di
00006B0C  07                pop es
00006B0D  26894504          mov [es:di+0x4],ax
00006B11  26895506          mov [es:di+0x6],dx
00006B15  C47EFA            les di,[bp-0x6]
00006B18  06                push es
00006B19  57                push di
00006B1A  C446F6            les ax,[bp-0xa]
00006B1D  8CC2              mov dx,es
00006B1F  5F                pop di
00006B20  07                pop es
00006B21  26894504          mov [es:di+0x4],ax
00006B25  26895506          mov [es:di+0x6],dx
00006B29  E95700            jmp word 0x6b83
00006B2C  C47EF6            les di,[bp-0xa]
00006B2F  268A05            mov al,[es:di]
00006B32  32E4              xor ah,ah
00006B34  50                push ax
00006B35  8A4608            mov al,[bp+0x8]
00006B38  32E4              xor ah,ah
00006B3A  59                pop cx
00006B3B  91                xchg ax,cx
00006B3C  3BC1              cmp ax,cx
00006B3E  B80100            mov ax,0x1
00006B41  7401              jz 0x6b44
00006B43  48                dec ax
00006B44  50                push ax
00006B45  C47EF6            les di,[bp-0xa]
00006B48  268A4501          mov al,[es:di+0x1]
00006B4C  32E4              xor ah,ah
00006B4E  50                push ax
00006B4F  8A4606            mov al,[bp+0x6]
00006B52  32E4              xor ah,ah
00006B54  59                pop cx
00006B55  91                xchg ax,cx
00006B56  3BC1              cmp ax,cx
00006B58  B80100            mov ax,0x1
00006B5B  7401              jz 0x6b5e
00006B5D  48                dec ax
00006B5E  59                pop cx
00006B5F  23C1              and ax,cx
00006B61  0BC0              or ax,ax
00006B63  7503              jnz 0x6b68
00006B65  E91B00            jmp word 0x6b83
00006B68  B80100            mov ax,0x1
00006B6B  8846F1            mov [bp-0xf],al
00006B6E  8D7EFA            lea di,[bp-0x6]
00006B71  16                push ss
00006B72  B90800            mov cx,0x8
00006B75  E84E9B            call word 0x6c6
00006B78  C446F6            les ax,[bp-0xa]
00006B7B  8CC2              mov dx,es
00006B7D  8946FA            mov [bp-0x6],ax
00006B80  8956FC            mov [bp-0x4],dx
00006B83  C446F6            les ax,[bp-0xa]
00006B86  8CC2              mov dx,es
00006B88  8946F2            mov [bp-0xe],ax
00006B8B  8956F4            mov [bp-0xc],dx
00006B8E  C47EF6            les di,[bp-0xa]
00006B91  26C44504          les ax,[es:di+0x4]
00006B95  8CC2              mov dx,es
00006B97  8946F6            mov [bp-0xa],ax
00006B9A  8956F8            mov [bp-0x8],dx
00006B9D  E914FE            jmp word 0x69b4
00006BA0  8A46F1            mov al,[bp-0xf]
00006BA3  32E4              xor ah,ah
00006BA5  3401              xor al,0x1
00006BA7  7503              jnz 0x6bac
00006BA9  E92700            jmp word 0x6bd3
00006BAC  C47EF2            les di,[bp-0xe]
00006BAF  06                push es
00006BB0  57                push di
00006BB1  C446FA            les ax,[bp-0x6]
00006BB4  8CC2              mov dx,es
00006BB6  5F                pop di
00006BB7  07                pop es
00006BB8  26894504          mov [es:di+0x4],ax
00006BBC  26895506          mov [es:di+0x6],dx
00006BC0  C47EFA            les di,[bp-0x6]
00006BC3  06                push es
00006BC4  57                push di
00006BC5  33C0              xor ax,ax
00006BC7  33D2              xor dx,dx
00006BC9  5F                pop di
00006BCA  07                pop es
00006BCB  26894504          mov [es:di+0x4],ax
00006BCF  26895506          mov [es:di+0x6],dx
00006BD3  C47EFA            les di,[bp-0x6]
00006BD6  06                push es
00006BD7  57                push di
00006BD8  8A4608            mov al,[bp+0x8]
00006BDB  32E4              xor ah,ah
00006BDD  5F                pop di
00006BDE  07                pop es
00006BDF  268805            mov [es:di],al
00006BE2  C47EFA            les di,[bp-0x6]
00006BE5  06                push es
00006BE6  57                push di
00006BE7  8A4606            mov al,[bp+0x6]
00006BEA  32E4              xor ah,ah
00006BEC  5F                pop di
00006BED  07                pop es
00006BEE  26884501          mov [es:di+0x1],al
00006BF2  C47EFA            les di,[bp-0x6]
00006BF5  06                push es
00006BF6  57                push di
00006BF7  B80200            mov ax,0x2
00006BFA  F76E04            imul word [bp+0x4]
00006BFD  5F                pop di
00006BFE  07                pop es
00006BFF  26894502          mov [es:di+0x2],ax
00006C03  E90000            jmp word 0x6c06
00006C06  8BE5              mov sp,bp
00006C08  5D                pop bp
00006C09  C20600            ret 0x6
00006C0C  55                push bp
00006C0D  8BEC              mov bp,sp
00006C0F  55                push bp
00006C10  E90000            jmp word 0x6c13
00006C13  83EC0F            sub sp,byte +0xf
00006C16  B80100            mov ax,0x1
00006C19  8946F2            mov [bp-0xe],ax
00006C1C  8B46F2            mov ax,[bp-0xe]
00006C1F  3D0200            cmp ax,0x2
00006C22  7E03              jng 0x6c27
00006C24  E9BD01            jmp word 0x6de4
00006C27  8B46F2            mov ax,[bp-0xe]
00006C2A  3D0100            cmp ax,0x1
00006C2D  7403              jz 0x6c32
00006C2F  E90900            jmp word 0x6c3b
00006C32  B80000            mov ax,0x0
00006C35  8846F1            mov [bp-0xf],al
00006C38  E90600            jmp word 0x6c41
00006C3B  B80100            mov ax,0x1
00006C3E  8846F1            mov [bp-0xf],al
00006C41  B80000            mov ax,0x0
00006C44  8846F7            mov [bp-0x9],al
00006C47  B80300            mov ax,0x3
00006C4A  8846F6            mov [bp-0xa],al
00006C4D  8A4608            mov al,[bp+0x8]
00006C50  32E4              xor ah,ah
00006C52  8846FD            mov [bp-0x3],al
00006C55  8A4606            mov al,[bp+0x6]
00006C58  32E4              xor ah,ah
00006C5A  8846FC            mov [bp-0x4],al
00006C5D  B91300            mov cx,0x13
00006C60  E86EA3            call word 0xfd1
00006C63  4C                dec sp
00006C64  8D7EFD            lea di,[bp-0x3]
00006C67  16                push ss
00006C68  57                push di
00006C69  8D7EFC            lea di,[bp-0x4]
00006C6C  16                push ss
00006C6D  57                push di
00006C6E  8A4604            mov al,[bp+0x4]
00006C71  32E4              xor ah,ah
00006C73  50                push ax
00006C74  8A46F1            mov al,[bp-0xf]
00006C77  32E4              xor ah,ah
00006C79  50                push ax
00006C7A  E837CB            call word 0x37b4
00006C7D  8846F9            mov [bp-0x7],al
00006C80  8A46FD            mov al,[bp-0x3]
00006C83  32E4              xor ah,ah
00006C85  B91300            mov cx,0x13
00006C88  F7E1              mul cx
00006C8A  97                xchg ax,di
00006C8B  57                push di
00006C8C  8A46FC            mov al,[bp-0x4]
00006C8F  32E4              xor ah,ah
00006C91  5F                pop di
00006C92  03F8              add di,ax
00006C94  8A854C02          mov al,[di+0x24c]
00006C98  32E4              xor ah,ah
00006C9A  3D0200            cmp ax,0x2
00006C9D  B80100            mov ax,0x1
00006CA0  7501              jnz 0x6ca3
00006CA2  48                dec ax
00006CA3  50                push ax
00006CA4  8A46F7            mov al,[bp-0x9]
00006CA7  32E4              xor ah,ah
00006CA9  50                push ax
00006CAA  8A46F9            mov al,[bp-0x7]
00006CAD  32E4              xor ah,ah
00006CAF  59                pop cx
00006CB0  0BC1              or ax,cx
00006CB2  3401              xor al,0x1
00006CB4  59                pop cx
00006CB5  23C1              and ax,cx
00006CB7  0BC0              or ax,ax
00006CB9  7503              jnz 0x6cbe
00006CBB  E91A01            jmp word 0x6dd8
00006CBE  8A46FD            mov al,[bp-0x3]
00006CC1  32E4              xor ah,ah
00006CC3  B91300            mov cx,0x13
00006CC6  F7E1              mul cx
00006CC8  97                xchg ax,di
00006CC9  57                push di
00006CCA  8A46FC            mov al,[bp-0x4]
00006CCD  32E4              xor ah,ah
00006CCF  5F                pop di
00006CD0  03F8              add di,ax
00006CD2  8A854C02          mov al,[di+0x24c]
00006CD6  32E4              xor ah,ah
00006CD8  3D0100            cmp ax,0x1
00006CDB  7403              jz 0x6ce0
00006CDD  E91900            jmp word 0x6cf9
00006CE0  8A46F6            mov al,[bp-0xa]
00006CE3  32E4              xor ah,ah
00006CE5  3D0100            cmp ax,0x1
00006CE8  7403              jz 0x6ced
00006CEA  E90900            jmp word 0x6cf6
00006CED  B80100            mov ax,0x1
00006CF0  8846F7            mov [bp-0x9],al
00006CF3  E90000            jmp word 0x6cf6
00006CF6  E99C00            jmp word 0x6d95
00006CF9  B91200            mov cx,0x12
00006CFC  E8D2A2            call word 0xfd1
00006CFF  4C                dec sp
00006D00  4C                dec sp
00006D01  8A46FD            mov al,[bp-0x3]
00006D04  32E4              xor ah,ah
00006D06  50                push ax
00006D07  8A46FC            mov al,[bp-0x4]
00006D0A  32E4              xor ah,ah
00006D0C  50                push ax
00006D0D  E87EF9            call word 0x668e
00006D10  8946F4            mov [bp-0xc],ax
00006D13  8B46F4            mov ax,[bp-0xc]
00006D16  3DDC05            cmp ax,0x5dc
00006D19  7D03              jnl 0x6d1e
00006D1B  E95E00            jmp word 0x6d7c
00006D1E  8A46FD            mov al,[bp-0x3]
00006D21  32E4              xor ah,ah
00006D23  8846FB            mov [bp-0x5],al
00006D26  8A46FC            mov al,[bp-0x4]
00006D29  32E4              xor ah,ah
00006D2B  8846FA            mov [bp-0x6],al
00006D2E  B91300            mov cx,0x13
00006D31  E89DA2            call word 0xfd1
00006D34  4C                dec sp
00006D35  8D7EFB            lea di,[bp-0x5]
00006D38  16                push ss
00006D39  57                push di
00006D3A  8D7EFA            lea di,[bp-0x6]
00006D3D  16                push ss
00006D3E  57                push di
00006D3F  8A4604            mov al,[bp+0x4]
00006D42  32E4              xor ah,ah
00006D44  50                push ax
00006D45  8A46F1            mov al,[bp-0xf]
00006D48  32E4              xor ah,ah
00006D4A  50                push ax
00006D4B  E866CA            call word 0x37b4
00006D4E  8846F8            mov [bp-0x8],al
00006D51  8A46FB            mov al,[bp-0x5]
00006D54  32E4              xor ah,ah
00006D56  B91300            mov cx,0x13
00006D59  F7E1              mul cx
00006D5B  97                xchg ax,di
00006D5C  57                push di
00006D5D  8A46FA            mov al,[bp-0x6]
00006D60  32E4              xor ah,ah
00006D62  5F                pop di
00006D63  03F8              add di,ax
00006D65  8A854C02          mov al,[di+0x24c]
00006D69  32E4              xor ah,ah
00006D6B  3D0200            cmp ax,0x2
00006D6E  7403              jz 0x6d73
00006D70  E90900            jmp word 0x6d7c
00006D73  B8FDFF            mov ax,0xfffd
00006D76  F76EF4            imul word [bp-0xc]
00006D79  8946F4            mov [bp-0xc],ax
00006D7C  B91900            mov cx,0x19
00006D7F  E84FA2            call word 0xfd1
00006D82  8A46FD            mov al,[bp-0x3]
00006D85  32E4              xor ah,ah
00006D87  50                push ax
00006D88  8A46FC            mov al,[bp-0x4]
00006D8B  32E4              xor ah,ah
00006D8D  50                push ax
00006D8E  8B46F4            mov ax,[bp-0xc]
00006D91  50                push ax
00006D92  E8B7FB            call word 0x694c
00006D95  8A46FD            mov al,[bp-0x3]
00006D98  32E4              xor ah,ah
00006D9A  B91300            mov cx,0x13
00006D9D  F7E1              mul cx
00006D9F  97                xchg ax,di
00006DA0  57                push di
00006DA1  8A46FC            mov al,[bp-0x4]
00006DA4  32E4              xor ah,ah
00006DA6  5F                pop di
00006DA7  03F8              add di,ax
00006DA9  8A854C02          mov al,[di+0x24c]
00006DAD  32E4              xor ah,ah
00006DAF  8846F6            mov [bp-0xa],al
00006DB2  B91300            mov cx,0x13
00006DB5  E819A2            call word 0xfd1
00006DB8  4C                dec sp
00006DB9  8D7EFD            lea di,[bp-0x3]
00006DBC  16                push ss
00006DBD  57                push di
00006DBE  8D7EFC            lea di,[bp-0x4]
00006DC1  16                push ss
00006DC2  57                push di
00006DC3  8A4604            mov al,[bp+0x4]
00006DC6  32E4              xor ah,ah
00006DC8  50                push ax
00006DC9  8A46F1            mov al,[bp-0xf]
00006DCC  32E4              xor ah,ah
00006DCE  50                push ax
00006DCF  E8E2C9            call word 0x37b4
00006DD2  8846F9            mov [bp-0x7],al
00006DD5  E9A8FE            jmp word 0x6c80
00006DD8  8B46F2            mov ax,[bp-0xe]
00006DDB  050100            add ax,0x1
00006DDE  8946F2            mov [bp-0xe],ax
00006DE1  E938FE            jmp word 0x6c1c
00006DE4  E90000            jmp word 0x6de7
00006DE7  8BE5              mov sp,bp
00006DE9  5D                pop bp
00006DEA  C20600            ret 0x6
00006DED  55                push bp
00006DEE  8BEC              mov bp,sp
00006DF0  55                push bp
00006DF1  E90000            jmp word 0x6df4
00006DF4  83EC0F            sub sp,byte +0xf
00006DF7  C406EE03          les ax,[0x3ee]
00006DFB  8CC2              mov dx,es
00006DFD  8946FA            mov [bp-0x6],ax
00006E00  8956FC            mov [bp-0x4],dx
00006E03  33C0              xor ax,ax
00006E05  33D2              xor dx,dx
00006E07  8946F6            mov [bp-0xa],ax
00006E0A  8956F8            mov [bp-0x8],dx
00006E0D  C446FA            les ax,[bp-0x6]
00006E10  8CC2              mov dx,es
00006E12  52                push dx
00006E13  50                push ax
00006E14  33C0              xor ax,ax
00006E16  33D2              xor dx,dx
00006E18  5B                pop bx
00006E19  59                pop cx
00006E1A  E81EA8            call word 0x163b
00006E1D  7503              jnz 0x6e22
00006E1F  E9BA00            jmp word 0x6edc
00006E22  B91200            mov cx,0x12
00006E25  E8A9A1            call word 0xfd1
00006E28  4C                dec sp
00006E29  4C                dec sp
00006E2A  C47EFA            les di,[bp-0x6]
00006E2D  268A05            mov al,[es:di]
00006E30  32E4              xor ah,ah
00006E32  50                push ax
00006E33  C47EFA            les di,[bp-0x6]
00006E36  268A4501          mov al,[es:di+0x1]
00006E3A  32E4              xor ah,ah
00006E3C  50                push ax
00006E3D  E84EF8            call word 0x668e
00006E40  8946F0            mov [bp-0x10],ax
00006E43  8B46F0            mov ax,[bp-0x10]
00006E46  3D4600            cmp ax,0x46
00006E49  7D03              jnl 0x6e4e
00006E4B  E92700            jmp word 0x6e75
00006E4E  C47EFA            les di,[bp-0x6]
00006E51  8B46F0            mov ax,[bp-0x10]
00006E54  26894502          mov [es:di+0x2],ax
00006E58  C446FA            les ax,[bp-0x6]
00006E5B  8CC2              mov dx,es
00006E5D  8946F6            mov [bp-0xa],ax
00006E60  8956F8            mov [bp-0x8],dx
00006E63  C47EFA            les di,[bp-0x6]
00006E66  26C44504          les ax,[es:di+0x4]
00006E6A  8CC2              mov dx,es
00006E6C  8946FA            mov [bp-0x6],ax
00006E6F  8956FC            mov [bp-0x4],dx
00006E72  E96400            jmp word 0x6ed9
00006E75  C446FA            les ax,[bp-0x6]
00006E78  8CC2              mov dx,es
00006E7A  8946F2            mov [bp-0xe],ax
00006E7D  8956F4            mov [bp-0xc],dx
00006E80  C446F6            les ax,[bp-0xa]
00006E83  8CC2              mov dx,es
00006E85  52                push dx
00006E86  50                push ax
00006E87  33C0              xor ax,ax
00006E89  33D2              xor dx,dx
00006E8B  5B                pop bx
00006E8C  59                pop cx
00006E8D  E89CA7            call word 0x162c
00006E90  7503              jnz 0x6e95
00006E92  E91300            jmp word 0x6ea8
00006E95  C47EFA            les di,[bp-0x6]
00006E98  26C44504          les ax,[es:di+0x4]
00006E9C  8CC2              mov dx,es
00006E9E  A3EE03            mov [0x3ee],ax
00006EA1  8916F003          mov [0x3f0],dx
00006EA5  E91800            jmp word 0x6ec0
00006EA8  C47EF6            les di,[bp-0xa]
00006EAB  06                push es
00006EAC  57                push di
00006EAD  C47EFA            les di,[bp-0x6]
00006EB0  26C44504          les ax,[es:di+0x4]
00006EB4  8CC2              mov dx,es
00006EB6  5F                pop di
00006EB7  07                pop es
00006EB8  26894504          mov [es:di+0x4],ax
00006EBC  26895506          mov [es:di+0x6],dx
00006EC0  C47EFA            les di,[bp-0x6]
00006EC3  26C44504          les ax,[es:di+0x4]
00006EC7  8CC2              mov dx,es
00006EC9  8946FA            mov [bp-0x6],ax
00006ECC  8956FC            mov [bp-0x4],dx
00006ECF  8D7EF2            lea di,[bp-0xe]
00006ED2  16                push ss
00006ED3  B90800            mov cx,0x8
00006ED6  E8ED97            call word 0x6c6
00006ED9  E931FF            jmp word 0x6e0d
00006EDC  B91200            mov cx,0x12
00006EDF  E8EFA0            call word 0xfd1
00006EE2  4C                dec sp
00006EE3  4C                dec sp
00006EE4  A0D703            mov al,[0x3d7]
00006EE7  32E4              xor ah,ah
00006EE9  50                push ax
00006EEA  A0D803            mov al,[0x3d8]
00006EED  32E4              xor ah,ah
00006EEF  50                push ax
00006EF0  E89BF7            call word 0x668e
00006EF3  8946F0            mov [bp-0x10],ax
00006EF6  8B46F0            mov ax,[bp-0x10]
00006EF9  3D4600            cmp ax,0x46
00006EFC  7D03              jnl 0x6f01
00006EFE  E97800            jmp word 0x6f79
00006F01  B91900            mov cx,0x19
00006F04  E8CAA0            call word 0xfd1
00006F07  A0D703            mov al,[0x3d7]
00006F0A  32E4              xor ah,ah
00006F0C  50                push ax
00006F0D  A0D803            mov al,[0x3d8]
00006F10  32E4              xor ah,ah
00006F12  50                push ax
00006F13  8B46F0            mov ax,[bp-0x10]
00006F16  50                push ax
00006F17  E832FA            call word 0x694c
00006F1A  B80000            mov ax,0x0
00006F1D  50                push ax
00006F1E  B80300            mov ax,0x3
00006F21  59                pop cx
00006F22  91                xchg ax,cx
00006F23  2BC8              sub cx,ax
00006F25  7D03              jnl 0x6f2a
00006F27  E94F00            jmp word 0x6f79
00006F2A  41                inc cx
00006F2B  8846EF            mov [bp-0x11],al
00006F2E  51                push cx
00006F2F  B91C00            mov cx,0x1c
00006F32  E89CA0            call word 0xfd1
00006F35  4C                dec sp
00006F36  4C                dec sp
00006F37  8A46EF            mov al,[bp-0x11]
00006F3A  32E4              xor ah,ah
00006F3C  50                push ax
00006F3D  A0D703            mov al,[0x3d7]
00006F40  32E4              xor ah,ah
00006F42  50                push ax
00006F43  A0D803            mov al,[0x3d8]
00006F46  32E4              xor ah,ah
00006F48  50                push ax
00006F49  E868F2            call word 0x61b4
00006F4C  3D4600            cmp ax,0x46
00006F4F  7D03              jnl 0x6f54
00006F51  E91B00            jmp word 0x6f6f
00006F54  B91B00            mov cx,0x1b
00006F57  E877A0            call word 0xfd1
00006F5A  A0D703            mov al,[0x3d7]
00006F5D  32E4              xor ah,ah
00006F5F  50                push ax
00006F60  A0D803            mov al,[0x3d8]
00006F63  32E4              xor ah,ah
00006F65  50                push ax
00006F66  8A46EF            mov al,[bp-0x11]
00006F69  32E4              xor ah,ah
00006F6B  50                push ax
00006F6C  E89DFC            call word 0x6c0c
00006F6F  59                pop cx
00006F70  49                dec cx
00006F71  7406              jz 0x6f79
00006F73  FE46EF            inc byte [bp-0x11]
00006F76  E9B5FF            jmp word 0x6f2e
00006F79  E90000            jmp word 0x6f7c
00006F7C  8BE5              mov sp,bp
00006F7E  5D                pop bp
00006F7F  C3                ret
00006F80  55                push bp
00006F81  8BEC              mov bp,sp
00006F83  55                push bp
00006F84  E90000            jmp word 0x6f87
00006F87  83EC06            sub sp,byte +0x6
00006F8A  B80200            mov ax,0x2
00006F8D  A2E103            mov [0x3e1],al
00006F90  B80000            mov ax,0x0
00006F93  8946FA            mov [bp-0x6],ax
00006F96  B80000            mov ax,0x0
00006F99  A2E603            mov [0x3e6],al
00006F9C  B80100            mov ax,0x1
00006F9F  50                push ax
00006FA0  B81800            mov ax,0x18
00006FA3  E8049E            call word 0xdaa
00006FA6  B80E00            mov ax,0xe
00006FA9  E80F94            call word 0x3bb
00006FAC  E8A9B5            call word 0x2558
00006FAF  E8ABB9            call word 0x295d
00006FB2  1120              adc [bx+si],sp
00006FB4  43                inc bx
00006FB5  6F                outsw
00006FB6  6D                insw
00006FB7  7075              jo 0x702e
00006FB9  7465              jz 0x7020
00006FBB  7273              jc 0x7030
00006FBD  207475            and [si+0x75],dh
00006FC0  726E              jc 0x7030
00006FC2  3A20              cmp ah,[bx+si]
00006FC4  B82300            mov ax,0x23
00006FC7  50                push ax
00006FC8  B80000            mov ax,0x0
00006FCB  E8CFB8            call word 0x289d
00006FCE  E88CB9            call word 0x295d
00006FD1  0820              or [bx+si],ah
00006FD3  2020              and [bx+si],ah
00006FD5  2020              and [bx+si],ah
00006FD7  2020              and [bx+si],ah
00006FD9  20E8              and al,ch
00006FDB  45                inc bp
00006FDC  A0A0ED            mov al,[0xeda0]
00006FDF  0332              add si,[bp+si]
00006FE1  E434              in al,0x34
00006FE3  017503            add [di+0x3],si
00006FE6  E97801            jmp word 0x7161
00006FE9  A0E503            mov al,[0x3e5]
00006FEC  32E4              xor ah,ah
00006FEE  0BC0              or ax,ax
00006FF0  7503              jnz 0x6ff5
00006FF2  E91C00            jmp word 0x7011
00006FF5  B91200            mov cx,0x12
00006FF8  E8D69F            call word 0xfd1
00006FFB  BFD103            mov di,0x3d1
00006FFE  1E                push ds
00006FFF  57                push di
00007000  BFD203            mov di,0x3d2
00007003  1E                push ds
00007004  57                push di
00007005  E8C9F7            call word 0x67d1
00007008  B80000            mov ax,0x0
0000700B  A2E503            mov [0x3e5],al
0000700E  E90E01            jmp word 0x711f
00007011  B91500            mov cx,0x15
00007014  E8BA9F            call word 0xfd1
00007017  E8D3FD            call word 0x6ded
0000701A  A0D403            mov al,[0x3d4]
0000701D  32E4              xor ah,ah
0000701F  50                push ax
00007020  A0D303            mov al,[0x3d3]
00007023  32E4              xor ah,ah
00007025  59                pop cx
00007026  91                xchg ax,cx
00007027  2BC8              sub cx,ax
00007029  7D03              jnl 0x702e
0000702B  E9F100            jmp word 0x711f
0000702E  41                inc cx
0000702F  8846FD            mov [bp-0x3],al
00007032  51                push cx
00007033  A0D603            mov al,[0x3d6]
00007036  32E4              xor ah,ah
00007038  50                push ax
00007039  A0D503            mov al,[0x3d5]
0000703C  32E4              xor ah,ah
0000703E  59                pop cx
0000703F  91                xchg ax,cx
00007040  2BC8              sub cx,ax
00007042  7D03              jnl 0x7047
00007044  E9CE00            jmp word 0x7115
00007047  41                inc cx
00007048  8846FC            mov [bp-0x4],al
0000704B  51                push cx
0000704C  8A46FD            mov al,[bp-0x3]
0000704F  32E4              xor ah,ah
00007051  B91300            mov cx,0x13
00007054  F7E1              mul cx
00007056  97                xchg ax,di
00007057  57                push di
00007058  8A46FC            mov al,[bp-0x4]
0000705B  32E4              xor ah,ah
0000705D  5F                pop di
0000705E  03F8              add di,ax
00007060  8A854C02          mov al,[di+0x24c]
00007064  32E4              xor ah,ah
00007066  3D0100            cmp ax,0x1
00007069  7403              jz 0x706e
0000706B  E99D00            jmp word 0x710b
0000706E  B91000            mov cx,0x10
00007071  E85D9F            call word 0xfd1
00007074  4C                dec sp
00007075  4C                dec sp
00007076  8A46FD            mov al,[bp-0x3]
00007079  32E4              xor ah,ah
0000707B  50                push ax
0000707C  8A46FC            mov al,[bp-0x4]
0000707F  32E4              xor ah,ah
00007081  50                push ax
00007082  E871F0            call word 0x60f6
00007085  50                push ax
00007086  B91200            mov cx,0x12
00007089  E8459F            call word 0xfd1
0000708C  4C                dec sp
0000708D  4C                dec sp
0000708E  8A46FD            mov al,[bp-0x3]
00007091  32E4              xor ah,ah
00007093  50                push ax
00007094  8A46FC            mov al,[bp-0x4]
00007097  32E4              xor ah,ah
00007099  50                push ax
0000709A  E8F1F5            call word 0x668e
0000709D  59                pop cx
0000709E  03C1              add ax,cx
000070A0  8946F8            mov [bp-0x8],ax
000070A3  8B46F8            mov ax,[bp-0x8]
000070A6  3B46FA            cmp ax,[bp-0x6]
000070A9  7C03              jl 0x70ae
000070AB  E90300            jmp word 0x70b1
000070AE  E95A00            jmp word 0x710b
000070B1  8B46F8            mov ax,[bp-0x8]
000070B4  3B46FA            cmp ax,[bp-0x6]
000070B7  7F03              jg 0x70bc
000070B9  E92300            jmp word 0x70df
000070BC  8B46F8            mov ax,[bp-0x8]
000070BF  8946FA            mov [bp-0x6],ax
000070C2  8A46FD            mov al,[bp-0x3]
000070C5  32E4              xor ah,ah
000070C7  A2D103            mov [0x3d1],al
000070CA  8A46FC            mov al,[bp-0x4]
000070CD  32E4              xor ah,ah
000070CF  A2D203            mov [0x3d2],al
000070D2  A0E603            mov al,[0x3e6]
000070D5  32E4              xor ah,ah
000070D7  3401              xor al,0x1
000070D9  A2E603            mov [0x3e6],al
000070DC  E92C00            jmp word 0x710b
000070DF  A0E603            mov al,[0x3e6]
000070E2  32E4              xor ah,ah
000070E4  0BC0              or ax,ax
000070E6  7503              jnz 0x70eb
000070E8  E92000            jmp word 0x710b
000070EB  8B46F8            mov ax,[bp-0x8]
000070EE  8946FA            mov [bp-0x6],ax
000070F1  8A46FD            mov al,[bp-0x3]
000070F4  32E4              xor ah,ah
000070F6  A2D103            mov [0x3d1],al
000070F9  8A46FC            mov al,[bp-0x4]
000070FC  32E4              xor ah,ah
000070FE  A2D203            mov [0x3d2],al
00007101  A0E603            mov al,[0x3e6]
00007104  32E4              xor ah,ah
00007106  3401              xor al,0x1
00007108  A2E603            mov [0x3e6],al
0000710B  59                pop cx
0000710C  49                dec cx
0000710D  7406              jz 0x7115
0000710F  FE46FC            inc byte [bp-0x4]
00007112  E936FF            jmp word 0x704b
00007115  59                pop cx
00007116  49                dec cx
00007117  7406              jz 0x711f
00007119  FE46FD            inc byte [bp-0x3]
0000711C  E913FF            jmp word 0x7032
0000711F  A0D103            mov al,[0x3d1]
00007122  32E4              xor ah,ah
00007124  A2CF03            mov [0x3cf],al
00007127  A0D203            mov al,[0x3d2]
0000712A  32E4              xor ah,ah
0000712C  A2D003            mov [0x3d0],al
0000712F  B80B00            mov ax,0xb
00007132  50                push ax
00007133  A0CF03            mov al,[0x3cf]
00007136  32E4              xor ah,ah
00007138  B90300            mov cx,0x3
0000713B  F7E9              imul cx
0000713D  59                pop cx
0000713E  03C1              add ax,cx
00007140  A3D903            mov [0x3d9],ax
00007143  A0D003            mov al,[0x3d0]
00007146  32E4              xor ah,ah
00007148  A3DB03            mov [0x3db],ax
0000714B  A1D903            mov ax,[0x3d9]
0000714E  50                push ax
0000714F  A1DB03            mov ax,[0x3db]
00007152  E8559C            call word 0xdaa
00007155  B90600            mov cx,0x6
00007158  E8769E            call word 0xfd1
0000715B  E848D3            call word 0x44a6
0000715E  E90900            jmp word 0x716a
00007161  B90600            mov cx,0x6
00007164  E86A9E            call word 0xfd1
00007167  E860D5            call word 0x46ca
0000716A  E90000            jmp word 0x716d
0000716D  8BE5              mov sp,bp
0000716F  5D                pop bp
00007170  C3                ret
00007171  55                push bp
00007172  8BEC              mov bp,sp
00007174  55                push bp
00007175  E90000            jmp word 0x7178
00007178  B80300            mov ax,0x3
0000717B  A2E103            mov [0x3e1],al
0000717E  B80100            mov ax,0x1
00007181  50                push ax
00007182  B81800            mov ax,0x18
00007185  E8229C            call word 0xdaa
00007188  B80D00            mov ax,0xd
0000718B  E82D92            call word 0x3bb
0000718E  E8C7B3            call word 0x2558
00007191  E8C9B7            call word 0x295d
00007194  0F                db 0x0f
00007195  20506C            and [bx+si+0x6c],dl
00007198  61                popaw
00007199  7965              jns 0x7200
0000719B  7273              jc 0x7210
0000719D  207475            and [si+0x75],dh
000071A0  726E              jc 0x7210
000071A2  3A20              cmp ah,[bx+si]
000071A4  B84F00            mov ax,0x4f
000071A7  50                push ax
000071A8  B80000            mov ax,0x0
000071AB  E8EFB6            call word 0x289d
000071AE  E8ACB7            call word 0x295d
000071B1  0920              or [bx+si],sp
000071B3  2020              and [bx+si],ah
000071B5  2020              and [bx+si],ah
000071B7  2020              and [bx+si],ah
000071B9  2020              and [bx+si],ah
000071BB  E8649E            call word 0x1022
000071BE  B90600            mov cx,0x6
000071C1  E80D9E            call word 0xfd1
000071C4  E803D5            call word 0x46ca
000071C7  E90000            jmp word 0x71ca
000071CA  8BE5              mov sp,bp
000071CC  5D                pop bp
000071CD  C3                ret
000071CE  B80800            mov ax,0x8
000071D1  A3F203            mov [0x3f2],ax
000071D4  B80100            mov ax,0x1
000071D7  A3F403            mov [0x3f4],ax
000071DA  B90600            mov cx,0x6
000071DD  E8F19D            call word 0xfd1
000071E0  E887D9            call word 0x4b6a
000071E3  B80100            mov ax,0x1
000071E6  A3E903            mov [0x3e9],ax
000071E9  B80000            mov ax,0x0
000071EC  A2EB03            mov [0x3eb],al
000071EF  A0EB03            mov al,[0x3eb]
000071F2  32E4              xor ah,ah
000071F4  0BC0              or ax,ax
000071F6  7503              jnz 0x71fb
000071F8  E90900            jmp word 0x7204
000071FB  B90600            mov cx,0x6
000071FE  E8D09D            call word 0xfd1
00007201  E866D9            call word 0x4b6a
00007204  B90A00            mov cx,0xa
00007207  E8C79D            call word 0xfd1
0000720A  E82FD5            call word 0x473c
0000720D  A0DF03            mov al,[0x3df]
00007210  32E4              xor ah,ah
00007212  3D0200            cmp ax,0x2
00007215  7403              jz 0x721a
00007217  E94F00            jmp word 0x7269
0000721A  B90600            mov cx,0x6
0000721D  E8B19D            call word 0xfd1
00007220  E84EFF            call word 0x7171
00007223  B80300            mov ax,0x3
00007226  A2DF03            mov [0x3df],al
00007229  B80200            mov ax,0x2
0000722C  A2E003            mov [0x3e0],al
0000722F  B91600            mov cx,0x16
00007232  E89C9D            call word 0xfd1
00007235  4C                dec sp
00007236  4C                dec sp
00007237  BFCF03            mov di,0x3cf
0000723A  1E                push ds
0000723B  57                push di
0000723C  BFD003            mov di,0x3d0
0000723F  1E                push ds
00007240  57                push di
00007241  B80100            mov ax,0x1
00007244  50                push ax
00007245  B80200            mov ax,0x2
00007248  50                push ax
00007249  E89FC0            call word 0x32eb
0000724C  A3E703            mov [0x3e7],ax
0000724F  B91100            mov cx,0x11
00007252  E87C9D            call word 0xfd1
00007255  4C                dec sp
00007256  BFCF03            mov di,0x3cf
00007259  1E                push ds
0000725A  57                push di
0000725B  BFD003            mov di,0x3d0
0000725E  1E                push ds
0000725F  57                push di
00007260  E8E4C8            call word 0x3b47
00007263  A2DD03            mov [0x3dd],al
00007266  E94C00            jmp word 0x72b5
00007269  B90C00            mov cx,0xc
0000726C  E8629D            call word 0xfd1
0000726F  E80EFD            call word 0x6f80
00007272  B80200            mov ax,0x2
00007275  A2DF03            mov [0x3df],al
00007278  B80300            mov ax,0x3
0000727B  A2E003            mov [0x3e0],al
0000727E  B91600            mov cx,0x16
00007281  E84D9D            call word 0xfd1
00007284  4C                dec sp
00007285  4C                dec sp
00007286  BFCF03            mov di,0x3cf
00007289  1E                push ds
0000728A  57                push di
0000728B  BFD003            mov di,0x3d0
0000728E  1E                push ds
0000728F  57                push di
00007290  B80100            mov ax,0x1
00007293  50                push ax
00007294  B80300            mov ax,0x3
00007297  50                push ax
00007298  E850C0            call word 0x32eb
0000729B  A3E703            mov [0x3e7],ax
0000729E  B91100            mov cx,0x11
000072A1  E82D9D            call word 0xfd1
000072A4  4C                dec sp
000072A5  BFCF03            mov di,0x3cf
000072A8  1E                push ds
000072A9  57                push di
000072AA  BFD003            mov di,0x3d0
000072AD  1E                push ds
000072AE  57                push di
000072AF  E895C8            call word 0x3b47
000072B2  A2DD03            mov [0x3dd],al
000072B5  A0DD03            mov al,[0x3dd]
000072B8  32E4              xor ah,ah
000072BA  0BC0              or ax,ax
000072BC  7503              jnz 0x72c1
000072BE  E94CFF            jmp word 0x720d
000072C1  A0DF03            mov al,[0x3df]
000072C4  32E4              xor ah,ah
000072C6  3D0200            cmp ax,0x2
000072C9  B80100            mov ax,0x1
000072CC  7401              jz 0x72cf
000072CE  48                dec ax
000072CF  50                push ax
000072D0  A0EC03            mov al,[0x3ec]
000072D3  32E4              xor ah,ah
000072D5  59                pop cx
000072D6  0BC1              or ax,cx
000072D8  0BC0              or ax,ax
000072DA  7503              jnz 0x72df
000072DC  E90900            jmp word 0x72e8
000072DF  B80300            mov ax,0x3
000072E2  A2E403            mov [0x3e4],al
000072E5  E90600            jmp word 0x72ee
000072E8  B80200            mov ax,0x2
000072EB  A2E403            mov [0x3e4],al
000072EE  A1E903            mov ax,[0x3e9]
000072F1  050100            add ax,0x1
000072F4  A3E903            mov [0x3e9],ax
000072F7  B90700            mov cx,0x7
000072FA  E8D49C            call word 0xfd1
000072FD  4C                dec sp
000072FE  E826CC            call word 0x3f27
00007301  7503              jnz 0x7306
00007303  E9E9FE            jmp word 0x71ef
00007306  E90000            jmp word 0x7309
00007309  33C0              xor ax,ax
0000730B  E87B99            call word 0xc89
0000730E  0000              add [bx+si],al
