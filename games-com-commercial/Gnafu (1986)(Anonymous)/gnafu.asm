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
00000156  622F              bound bp,[bx]
00000158  7720              ja 0x17a
0000015A  2020              and [bx+si],ah
0000015C  646973706C61      imul si,[fs:bp+di+0x70],word 0x616c
00000162  7920              jns 0x184
00000164  3830              cmp [bx+si],dh
00000166  7832              js 0x19a
00000168  356550            xor ax,0x5065
0000016B  1901              sbb [bx+di],ax
0000016D  0200              add al,[bx+si]
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
00000192  B300              mov bl,0x0
00000194  FFF5              push bp
00000196  07                pop es
00000197  97                xchg ax,di
00000198  0AC7              or al,bh
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
00002D7F  06                push es
00002D80  006923            add [bx+di+0x23],ch
00002D83  292D              sub [di],bp
00002D85  3A065700          cmp al,[0x57]
00002D89  0004              add [si],al
00002D8B  00A01000          add [bx+si+0x10],ah
00002D8F  0000              add [bx+si],al
00002D91  0000              add [bx+si],al
00002D93  8BEC              mov bp,sp
00002D95  E834DF            call word 0xccc
00002D98  FE                db 0xfe
00002D99  359C2D            xor ax,0x2d9c
00002D9C  E95233            jmp word 0x60f1
00002D9F  E99200            jmp word 0x2e34
00002DA2  E98A00            jmp word 0x2e2f
00002DA5  E99100            jmp word 0x2e39
00002DA8  E92501            jmp word 0x2ed0
00002DAB  E94001            jmp word 0x2eee
00002DAE  E91F01            jmp word 0x2ed0
00002DB1  E9D801            jmp word 0x2f8c
00002DB4  E93A04            jmp word 0x31f1
00002DB7  E9A503            jmp word 0x315f
00002DBA  E9F601            jmp word 0x2fb3
00002DBD  E92109            jmp word 0x36e1
00002DC0  E95408            jmp word 0x3617
00002DC3  E91206            jmp word 0x33d8
00002DC6  E9D806            jmp word 0x34a1
00002DC9  E9D80A            jmp word 0x38a4
00002DCC  E92702            jmp word 0x2ff6
00002DCF  E9E704            jmp word 0x32b9
00002DD2  E95204            jmp word 0x3227
00002DD5  E94004            jmp word 0x3218
00002DD8  E9C303            jmp word 0x319e
00002DDB  E92902            jmp word 0x3007
00002DDE  E9C503            jmp word 0x31a6
00002DE1  E9170B            jmp word 0x38fb
00002DE4  E9480B            jmp word 0x392f
00002DE7  E93403            jmp word 0x311e
00002DEA  E9940B            jmp word 0x3981
00002DED  E91C0B            jmp word 0x390c
00002DF0  E9230B            jmp word 0x3916
00002DF3  E9E603            jmp word 0x31dc
00002DF6  E9AC01            jmp word 0x2fa5
00002DF9  E93103            jmp word 0x312d
00002DFC  E93D0B            jmp word 0x393c
00002DFF  E9C803            jmp word 0x31ca
00002E02  E9BD03            jmp word 0x31c2
00002E05  E9440B            jmp word 0x394c
00002E08  E91301            jmp word 0x2f1e
00002E0B  E9120B            jmp word 0x3920
00002E0E  E9510B            jmp word 0x3962
00002E11  E9CF0A            jmp word 0x38e3
00002E14  E9D80A            jmp word 0x38ef
00002E17  5B                pop bx
00002E18  55                push bp
00002E19  8BEC              mov bp,sp
00002E1B  1E                push ds
00002E1C  8CC8              mov ax,cs
00002E1E  8ED8              mov ds,ax
00002E20  B800B8            mov ax,0xb800
00002E23  8EC0              mov es,ax
00002E25  E80000            call word 0x2e28
00002E28  5E                pop si
00002E29  81C6340F          add si,0xf34
00002E2D  FFE3              jmp bx
00002E2F  BF0400            mov di,0x4
00002E32  EB08              jmp short 0x2e3c
00002E34  BF0500            mov di,0x5
00002E37  EB03              jmp short 0x2e3c
00002E39  BF0600            mov di,0x6
00002E3C  E8D8FF            call word 0x2e17
00002E3F  97                xchg ax,di
00002E40  BB4000            mov bx,0x40
00002E43  8EC3              mov es,bx
00002E45  2680261000CF      and byte [es:0x10],0xcf
00002E4B  26800E100020      or byte [es:0x10],0x20
00002E51  B400              mov ah,0x0
00002E53  CD10              int 0x10
00002E55  B40B              mov ah,0xb
00002E57  BB0001            mov bx,0x100
00002E5A  CD10              int 0x10
00002E5C  33C0              xor ax,ax
00002E5E  894408            mov [si+0x8],ax
00002E61  89440A            mov [si+0xa],ax
00002E64  C7440EC700        mov word [si+0xe],0xc7
00002E69  26803E490006      cmp byte [es:0x49],0x6
00002E6F  740C              jz 0x2e7d
00002E71  B83F01            mov ax,0x13f
00002E74  BB0203            mov bx,0x302
00002E77  8BCB              mov cx,bx
00002E79  B200              mov dl,0x0
00002E7B  EB0B              jmp short 0x2e88
00002E7D  B87F02            mov ax,0x27f
00002E80  BB0307            mov bx,0x703
00002E83  B90101            mov cx,0x101
00002E86  B20F              mov dl,0xf
00002E88  88542A            mov [si+0x2a],dl
00002E8B  89440C            mov [si+0xc],ax
00002E8E  894410            mov [si+0x10],ax
00002E91  895C12            mov [si+0x12],bx
00002E94  894C14            mov [si+0x14],cx
00002E97  886C17            mov [si+0x17],ch
00002E9A  F6D5              not ch
00002E9C  886C16            mov [si+0x16],ch
00002E9F  B700              mov bh,0x0
00002EA1  8A5C2A            mov bl,[si+0x2a]
00002EA4  B40B              mov ah,0xb
00002EA6  CD10              int 0x10
00002EA8  8D7C4A            lea di,[si+0x4a]
00002EAB  33C0              xor ax,ax
00002EAD  B90001            mov cx,0x100
00002EB0  1E                push ds
00002EB1  07                pop es
00002EB2  FC                cld
00002EB3  AA                stosb
00002EB4  40                inc ax
00002EB5  E2FC              loop 0x2eb3
00002EB7  8D842402          lea ax,[si+0x224]
00002EBB  894419            mov [si+0x19],ax
00002EBE  8C4C1B            mov [si+0x1b],cs
00002EC1  C6441800          mov byte [si+0x18],0x0
00002EC5  E83F0C            call word 0x3b07
00002EC8  C744280000        mov word [si+0x28],0x0
00002ECD  1F                pop ds
00002ECE  5D                pop bp
00002ECF  C3                ret
00002ED0  E844FF            call word 0x2e17
00002ED3  8A5C2A            mov bl,[si+0x2a]
00002ED6  80E310            and bl,0x10
00002ED9  8066040F          and byte [bp+0x4],0xf
00002EDD  0A5E04            or bl,[bp+0x4]
00002EE0  885C2A            mov [si+0x2a],bl
00002EE3  81E3FF00          and bx,0xff
00002EE7  B40B              mov ah,0xb
00002EE9  CD10              int 0x10
00002EEB  E9C000            jmp word 0x2fae
00002EEE  E826FF            call word 0x2e17
00002EF1  B84000            mov ax,0x40
00002EF4  8EC0              mov es,ax
00002EF6  8A5E04            mov bl,[bp+0x4]
00002EF9  80642AEF          and byte [si+0x2a],0xef
00002EFD  B402              mov ah,0x2
00002EFF  26803E490004      cmp byte [es:0x49],0x4
00002F05  7402              jz 0x2f09
00002F07  B401              mov ah,0x1
00002F09  3ADC              cmp bl,ah
00002F0B  7206              jc 0x2f13
00002F0D  2ADC              sub bl,ah
00002F0F  804C2A10          or byte [si+0x2a],0x10
00002F13  B701              mov bh,0x1
00002F15  B40B              mov ah,0xb
00002F17  CD10              int 0x10
00002F19  8A5C2A            mov bl,[si+0x2a]
00002F1C  EBC5              jmp short 0x2ee3
00002F1E  E8F6FE            call word 0x2e17
00002F21  E86D0A            call word 0x3991
00002F24  8B4606            mov ax,[bp+0x6]
00002F27  8B5E0A            mov bx,[bp+0xa]
00002F2A  3D0200            cmp ax,0x2
00002F2D  7C52              jl 0x2f81
00002F2F  8B7E04            mov di,[bp+0x4]
00002F32  B9C700            mov cx,0xc7
00002F35  2B4E08            sub cx,[bp+0x8]
00002F38  83FF02            cmp di,byte +0x2
00002F3B  7C44              jl 0x2f81
00002F3D  48                dec ax
00002F3E  D1E8              shr ax,1
00002F40  13D8              adc bx,ax
00002F42  2B460A            sub ax,[bp+0xa]
00002F45  F7D8              neg ax
00002F47  8BD1              mov dx,cx
00002F49  4F                dec di
00002F4A  D1EF              shr di,1
00002F4C  1BCF              sbb cx,di
00002F4E  03D7              add dx,di
00002F50  0BC0              or ax,ax
00002F52  7902              jns 0x2f56
00002F54  33C0              xor ax,ax
00002F56  3B5C10            cmp bx,[si+0x10]
00002F59  7E03              jng 0x2f5e
00002F5B  8B5C10            mov bx,[si+0x10]
00002F5E  3BC3              cmp ax,bx
00002F60  7D1F              jnl 0x2f81
00002F62  0BC9              or cx,cx
00002F64  7902              jns 0x2f68
00002F66  33C9              xor cx,cx
00002F68  81FAC700          cmp dx,0xc7
00002F6C  7E03              jng 0x2f71
00002F6E  BAC700            mov dx,0xc7
00002F71  3BCA              cmp cx,dx
00002F73  7D0C              jnl 0x2f81
00002F75  894408            mov [si+0x8],ax
00002F78  895C0C            mov [si+0xc],bx
00002F7B  894C0A            mov [si+0xa],cx
00002F7E  89540E            mov [si+0xe],dx
00002F81  E8830B            call word 0x3b07
00002F84  E84C0A            call word 0x39d3
00002F87  1F                pop ds
00002F88  5D                pop bp
00002F89  C20800            ret 0x8
00002F8C  E888FE            call word 0x2e17
00002F8F  E8FF09            call word 0x3991
00002F92  8B460A            mov ax,[bp+0xa]
00002F95  8B5E06            mov bx,[bp+0x6]
00002F98  B9C700            mov cx,0xc7
00002F9B  8BD1              mov dx,cx
00002F9D  2B4E04            sub cx,[bp+0x4]
00002FA0  2B5608            sub dx,[bp+0x8]
00002FA3  EBAB              jmp short 0x2f50
00002FA5  E86FFE            call word 0x2e17
00002FA8  8A4604            mov al,[bp+0x4]
00002FAB  884417            mov [si+0x17],al
00002FAE  1F                pop ds
00002FAF  5D                pop bp
00002FB0  C20200            ret 0x2
00002FB3  E861FE            call word 0x2e17
00002FB6  BF0A00            mov di,0xa
00002FB9  33DB              xor bx,bx
00002FBB  8A03              mov al,[bp+di]
00002FBD  224415            and al,[si+0x15]
00002FC0  884032            mov [bx+si+0x32],al
00002FC3  4F                dec di
00002FC4  4F                dec di
00002FC5  43                inc bx
00002FC6  80FB04            cmp bl,0x4
00002FC9  72F0              jc 0x2fbb
00002FCB  8D5C32            lea bx,[si+0x32]
00002FCE  8D7C4A            lea di,[si+0x4a]
00002FD1  8A4C14            mov cl,[si+0x14]
00002FD4  32D2              xor dl,dl
00002FD6  32E4              xor ah,ah
00002FD8  8AF2              mov dh,dl
00002FDA  8A6C13            mov ch,[si+0x13]
00002FDD  8AC6              mov al,dh
00002FDF  224415            and al,[si+0x15]
00002FE2  D7                xlatb
00002FE3  0AE0              or ah,al
00002FE5  D2CC              ror ah,cl
00002FE7  D2CE              ror dh,cl
00002FE9  FECD              dec ch
00002FEB  79F0              jns 0x2fdd
00002FED  8825              mov [di],ah
00002FEF  47                inc di
00002FF0  FEC2              inc dl
00002FF2  75E2              jnz 0x2fd6
00002FF4  EB91              jmp short 0x2f87
00002FF6  E81EFE            call word 0x2e17
00002FF9  E89509            call word 0x3991
00002FFC  8A4604            mov al,[bp+0x4]
00002FFF  884435            mov [si+0x35],al
00003002  E81500            call word 0x301a
00003005  EBA7              jmp short 0x2fae
00003007  E80DFE            call word 0x2e17
0000300A  E88409            call word 0x3991
0000300D  E8F70A            call word 0x3b07
00003010  C6443500          mov byte [si+0x35],0x0
00003014  E80300            call word 0x301a
00003017  E9B3FE            jmp word 0x2ecd
0000301A  8A4C14            mov cl,[si+0x14]
0000301D  8A6C13            mov ch,[si+0x13]
00003020  32C0              xor al,al
00003022  8A6435            mov ah,[si+0x35]
00003025  226415            and ah,[si+0x15]
00003028  D2C0              rol al,cl
0000302A  0AC4              or al,ah
0000302C  FECD              dec ch
0000302E  79F8              jns 0x3028
00003030  884434            mov [si+0x34],al
00003033  8B5C08            mov bx,[si+0x8]
00003036  8A6C13            mov ch,[si+0x13]
00003039  32C0              xor al,al
0000303B  D2C0              rol al,cl
0000303D  0A4415            or al,[si+0x15]
00003040  43                inc bx
00003041  84DD              test ch,bl
00003043  75F6              jnz 0x303b
00003045  884432            mov [si+0x32],al
00003048  8B5C0C            mov bx,[si+0xc]
0000304B  32C0              xor al,al
0000304D  0A4415            or al,[si+0x15]
00003050  D2C8              ror al,cl
00003052  84DD              test ch,bl
00003054  7403              jz 0x3059
00003056  4B                dec bx
00003057  EBF4              jmp short 0x304d
00003059  884433            mov [si+0x33],al
0000305C  8A4C12            mov cl,[si+0x12]
0000305F  8B5C08            mov bx,[si+0x8]
00003062  D3EB              shr bx,cl
00003064  8B440C            mov ax,[si+0xc]
00003067  D3E8              shr ax,cl
00003069  2BC3              sub ax,bx
0000306B  48                dec ax
0000306C  894436            mov [si+0x36],ax
0000306F  7909              jns 0x307a
00003071  8A4432            mov al,[si+0x32]
00003074  224433            and al,[si+0x33]
00003077  884432            mov [si+0x32],al
0000307A  8B5C08            mov bx,[si+0x8]
0000307D  8B540A            mov dx,[si+0xa]
00003080  E8890C            call word 0x3d0c
00003083  8D5C4A            lea bx,[si+0x4a]
00003086  57                push di
00003087  8A4435            mov al,[si+0x35]
0000308A  3A4415            cmp al,[si+0x15]
0000308D  7644              jna 0x30d3
0000308F  8A4C32            mov cl,[si+0x32]
00003092  8AE9              mov ch,cl
00003094  F6D5              not ch
00003096  268A05            mov al,[es:di]
00003099  8AE0              mov ah,al
0000309B  22C1              and al,cl
0000309D  D7                xlatb
0000309E  22C1              and al,cl
000030A0  22E5              and ah,ch
000030A2  0AC4              or al,ah
000030A4  268805            mov [es:di],al
000030A7  47                inc di
000030A8  8B4C36            mov cx,[si+0x36]
000030AB  0BC9              or cx,cx
000030AD  7852              js 0x3101
000030AF  7408              jz 0x30b9
000030B1  FC                cld
000030B2  268A05            mov al,[es:di]
000030B5  D7                xlatb
000030B6  AA                stosb
000030B7  E2F9              loop 0x30b2
000030B9  8A4C33            mov cl,[si+0x33]
000030BC  8AE9              mov ch,cl
000030BE  F6D5              not ch
000030C0  268A05            mov al,[es:di]
000030C3  8AE0              mov ah,al
000030C5  22C1              and al,cl
000030C7  D7                xlatb
000030C8  22C1              and al,cl
000030CA  22E5              and ah,ch
000030CC  0AC4              or al,ah
000030CE  268805            mov [es:di],al
000030D1  EB2E              jmp short 0x3101
000030D3  8A4434            mov al,[si+0x34]
000030D6  8A6432            mov ah,[si+0x32]
000030D9  22C4              and al,ah
000030DB  F6D4              not ah
000030DD  262025            and [es:di],ah
000030E0  260805            or [es:di],al
000030E3  47                inc di
000030E4  8B4C36            mov cx,[si+0x36]
000030E7  0BC9              or cx,cx
000030E9  7816              js 0x3101
000030EB  8A4434            mov al,[si+0x34]
000030EE  FC                cld
000030EF  F3AA              rep stosb
000030F1  8A4434            mov al,[si+0x34]
000030F4  8A6433            mov ah,[si+0x33]
000030F7  22C4              and al,ah
000030F9  F6D4              not ah
000030FB  262025            and [es:di],ah
000030FE  260805            or [es:di],al
00003101  5F                pop di
00003102  3B540E            cmp dx,[si+0xe]
00003105  7414              jz 0x311b
00003107  42                inc dx
00003108  F6C201            test dl,0x1
0000310B  7407              jz 0x3114
0000310D  81EF0020          sub di,0x2000
00003111  E972FF            jmp word 0x3086
00003114  81C7B01F          add di,0x1fb0
00003118  E96BFF            jmp word 0x3086
0000311B  E9B508            jmp word 0x39d3
0000311E  E8F6FC            call word 0x2e17
00003121  E86D08            call word 0x3991
00003124  E8E009            call word 0x3b07
00003127  E88D08            call word 0x39b7
0000312A  E9A0FD            jmp word 0x2ecd
0000312D  E8E7FC            call word 0x2e17
00003130  E85E08            call word 0x3991
00003133  8B5E06            mov bx,[bp+0x6]
00003136  035C24            add bx,[si+0x24]
00003139  8B5604            mov dx,[bp+0x4]
0000313C  035426            add dx,[si+0x26]
0000313F  E84709            call word 0x3a89
00003142  E8ED09            call word 0x3b32
00003145  E86F08            call word 0x39b7
00003148  1F                pop ds
00003149  5D                pop bp
0000314A  C20400            ret 0x4
0000314D  E8C7FC            call word 0x2e17
00003150  E83E08            call word 0x3991
00003153  8B4604            mov ax,[bp+0x4]
00003156  E8E909            call word 0x3b42
00003159  E85B08            call word 0x39b7
0000315C  E94FFE            jmp word 0x2fae
0000315F  E8B5FC            call word 0x2e17
00003162  E82C08            call word 0x3991
00003165  8B460C            mov ax,[bp+0xc]
00003168  034408            add ax,[si+0x8]
0000316B  89443C            mov [si+0x3c],ax
0000316E  8B440E            mov ax,[si+0xe]
00003171  2B460A            sub ax,[bp+0xa]
00003174  89443E            mov [si+0x3e],ax
00003177  8B5E08            mov bx,[bp+0x8]
0000317A  035C08            add bx,[si+0x8]
0000317D  8B540E            mov dx,[si+0xe]
00003180  2B5606            sub dx,[bp+0x6]
00003183  FF7417            push word [si+0x17]
00003186  806418FE          and byte [si+0x18],0xfe
0000318A  8A4604            mov al,[bp+0x4]
0000318D  884417            mov [si+0x17],al
00003190  E83A0A            call word 0x3bcd
00003193  8F4417            pop word [si+0x17]
00003196  E83A08            call word 0x39d3
00003199  1F                pop ds
0000319A  5D                pop bp
0000319B  C20A00            ret 0xa
0000319E  E876FC            call word 0x2e17
000031A1  F75E04            neg word [bp+0x4]
000031A4  EB03              jmp short 0x31a9
000031A6  E86EFC            call word 0x2e17
000031A9  E8E507            call word 0x3991
000031AC  8B4604            mov ax,[bp+0x4]
000031AF  804C1801          or byte [si+0x18],0x1
000031B3  E8020A            call word 0x3bb8
000031B6  895C02            mov [si+0x2],bx
000031B9  895406            mov [si+0x6],dx
000031BC  E8F807            call word 0x39b7
000031BF  E9ECFD            jmp word 0x2fae
000031C2  E852FC            call word 0x2e17
000031C5  F75E04            neg word [bp+0x4]
000031C8  EB03              jmp short 0x31cd
000031CA  E84AFC            call word 0x2e17
000031CD  E8C107            call word 0x3991
000031D0  8B4604            mov ax,[bp+0x4]
000031D3  E8A509            call word 0x3b7b
000031D6  E8DE07            call word 0x39b7
000031D9  E9D2FD            jmp word 0x2fae
000031DC  E838FC            call word 0x2e17
000031DF  E8AF07            call word 0x3991
000031E2  B85A00            mov ax,0x5a
000031E5  2B4604            sub ax,[bp+0x4]
000031E8  E89309            call word 0x3b7e
000031EB  E8C907            call word 0x39b7
000031EE  E9BDFD            jmp word 0x2fae
000031F1  E823FC            call word 0x2e17
000031F4  E89A07            call word 0x3991
000031F7  8B5E08            mov bx,[bp+0x8]
000031FA  035C08            add bx,[si+0x8]
000031FD  8B540E            mov dx,[si+0xe]
00003200  2B5606            sub dx,[bp+0x6]
00003203  FF7417            push word [si+0x17]
00003206  8A4604            mov al,[bp+0x4]
00003209  884417            mov [si+0x17],al
0000320C  E8C108            call word 0x3ad0
0000320F  8F4417            pop word [si+0x17]
00003212  E8BE07            call word 0x39d3
00003215  E9C606            jmp word 0x38de
00003218  E8FCFB            call word 0x2e17
0000321B  C44604            les ax,[bp+0x4]
0000321E  894419            mov [si+0x19],ax
00003221  8C441B            mov [si+0x1b],es
00003224  E921FF            jmp word 0x3148
00003227  E8EDFB            call word 0x2e17
0000322A  E86407            call word 0x3991
0000322D  83C502            add bp,byte +0x2
00003230  E8B40A            call word 0x3ce7
00003233  E8950A            call word 0x3ccb
00003236  83ED02            sub bp,byte +0x2
00003239  C74432FFFF        mov word [si+0x32],0xffff
0000323E  FF4E06            dec word [bp+0x6]
00003241  7870              js 0x32b3
00003243  FF4432            inc word [si+0x32]
00003246  8B560A            mov dx,[bp+0xa]
00003249  FF460A            inc word [bp+0xa]
0000324C  3B540E            cmp dx,[si+0xe]
0000324F  7F62              jg 0x32b3
00003251  3B540A            cmp dx,[si+0xa]
00003254  7CE8              jl 0x323e
00003256  8B5C32            mov bx,[si+0x32]
00003259  81E30700          and bx,0x7
0000325D  06                push es
0000325E  C47C19            les di,[si+0x19]
00003261  268A29            mov ch,[es:bx+di]
00003264  07                pop es
00003265  8B4608            mov ax,[bp+0x8]
00003268  894434            mov [si+0x34],ax
0000326B  8B5E0C            mov bx,[bp+0xc]
0000326E  E89B0A            call word 0x3d0c
00003271  8BD3              mov dx,bx
00003273  4A                dec dx
00003274  024C14            add cl,[si+0x14]
00003277  8D5C4A            lea bx,[si+0x4a]
0000327A  FF4C34            dec word [si+0x34]
0000327D  78BF              js 0x323e
0000327F  42                inc dx
00003280  2A4C14            sub cl,[si+0x14]
00003283  83D700            adc di,byte +0x0
00003286  80E107            and cl,0x7
00003289  D0CD              ror ch,1
0000328B  73ED              jnc 0x327a
0000328D  3B5408            cmp dx,[si+0x8]
00003290  7CE8              jl 0x327a
00003292  3B540C            cmp dx,[si+0xc]
00003295  7FA7              jg 0x323e
00003297  268A25            mov ah,[es:di]
0000329A  D2CC              ror ah,cl
0000329C  8A4604            mov al,[bp+0x4]
0000329F  3A4415            cmp al,[si+0x15]
000032A2  7603              jna 0x32a7
000032A4  8AC4              mov al,ah
000032A6  D7                xlatb
000032A7  234415            and ax,[si+0x15]
000032AA  0AE0              or ah,al
000032AC  D2C4              rol ah,cl
000032AE  268825            mov [es:di],ah
000032B1  EBC7              jmp short 0x327a
000032B3  E81D07            call word 0x39d3
000032B6  E9E0FE            jmp word 0x3199
000032B9  E85BFB            call word 0x2e17
000032BC  E8D206            call word 0x3991
000032BF  8B5E0A            mov bx,[bp+0xa]
000032C2  035C08            add bx,[si+0x8]
000032C5  8B540E            mov dx,[si+0xe]
000032C8  2B5608            sub dx,[bp+0x8]
000032CB  3B5C08            cmp bx,[si+0x8]
000032CE  7C7A              jl 0x334a
000032D0  3B5C0C            cmp bx,[si+0xc]
000032D3  7F75              jg 0x334a
000032D5  3B540A            cmp dx,[si+0xa]
000032D8  7C70              jl 0x334a
000032DA  3B540E            cmp dx,[si+0xe]
000032DD  7F6B              jg 0x334a
000032DF  8A4415            mov al,[si+0x15]
000032E2  204606            and [bp+0x6],al
000032E5  204604            and [bp+0x4],al
000032E8  896432            mov [si+0x32],sp
000032EB  E81E0A            call word 0x3d0c
000032EE  895C38            mov [si+0x38],bx
000032F1  E85C00            call word 0x3350
000032F4  3B6432            cmp sp,[si+0x32]
000032F7  7451              jz 0x334a
000032F9  5A                pop dx
000032FA  8F4438            pop word [si+0x38]
000032FD  5F                pop di
000032FE  59                pop cx
000032FF  5B                pop bx
00003300  3B540A            cmp dx,[si+0xa]
00003303  7E2B              jng 0x3330
00003305  895C36            mov [si+0x36],bx
00003308  89543A            mov [si+0x3a],dx
0000330B  894C40            mov [si+0x40],cx
0000330E  897C3E            mov [si+0x3e],di
00003311  4A                dec dx
00003312  F6C201            test dl,0x1
00003315  7406              jz 0x331d
00003317  81EFB01F          sub di,0x1fb0
0000331B  EB04              jmp short 0x3321
0000331D  81C70020          add di,0x2000
00003321  E82C00            call word 0x3350
00003324  8B5C36            mov bx,[si+0x36]
00003327  8B543A            mov dx,[si+0x3a]
0000332A  8B4C40            mov cx,[si+0x40]
0000332D  8B7C3E            mov di,[si+0x3e]
00003330  3B540E            cmp dx,[si+0xe]
00003333  7DBF              jnl 0x32f4
00003335  42                inc dx
00003336  F6C201            test dl,0x1
00003339  7406              jz 0x3341
0000333B  81EF0020          sub di,0x2000
0000333F  EB04              jmp short 0x3345
00003341  81C7B01F          add di,0x1fb0
00003345  E80800            call word 0x3350
00003348  EBAA              jmp short 0x32f4
0000334A  E88606            call word 0x39d3
0000334D  E937FC            jmp word 0x2f87
00003350  8F4434            pop word [si+0x34]
00003353  89543C            mov [si+0x3c],dx
00003356  268A25            mov ah,[es:di]
00003359  D2CC              ror ah,cl
0000335B  8AD1              mov dl,cl
0000335D  8B4C14            mov cx,[si+0x14]
00003360  8AC4              mov al,ah
00003362  22C5              and al,ch
00003364  3A4606            cmp al,[bp+0x6]
00003367  741A              jz 0x3383
00003369  3A4604            cmp al,[bp+0x4]
0000336C  7415              jz 0x3383
0000336E  D2CC              ror ah,cl
00003370  02D1              add dl,cl
00003372  80FA08            cmp dl,0x8
00003375  7206              jc 0x337d
00003377  32D2              xor dl,dl
00003379  4F                dec di
0000337A  268A25            mov ah,[es:di]
0000337D  4B                dec bx
0000337E  3B5C08            cmp bx,[si+0x8]
00003381  7DDD              jnl 0x3360
00003383  B600              mov dh,0x0
00003385  3B5C38            cmp bx,[si+0x38]
00003388  7D44              jnl 0x33ce
0000338A  2AD1              sub dl,cl
0000338C  730B              jnc 0x3399
0000338E  B208              mov dl,0x8
00003390  2AD1              sub dl,cl
00003392  268825            mov [es:di],ah
00003395  47                inc di
00003396  268A25            mov ah,[es:di]
00003399  D2C4              rol ah,cl
0000339B  43                inc bx
0000339C  3B5C0C            cmp bx,[si+0xc]
0000339F  7F1F              jg 0x33c0
000033A1  8AC4              mov al,ah
000033A3  22C5              and al,ch
000033A5  3A4606            cmp al,[bp+0x6]
000033A8  7416              jz 0x33c0
000033AA  3A4604            cmp al,[bp+0x4]
000033AD  7411              jz 0x33c0
000033AF  226416            and ah,[si+0x16]
000033B2  0A6606            or ah,[bp+0x6]
000033B5  0AF6              or dh,dh
000033B7  75D1              jnz 0x338a
000033B9  F6D6              not dh
000033BB  53                push bx
000033BC  52                push dx
000033BD  57                push di
000033BE  EBCA              jmp short 0x338a
000033C0  0AF6              or dh,dh
000033C2  74C1              jz 0x3385
000033C4  F6D6              not dh
000033C6  4B                dec bx
000033C7  53                push bx
000033C8  43                inc bx
000033C9  FF743C            push word [si+0x3c]
000033CC  EBB7              jmp short 0x3385
000033CE  8ACA              mov cl,dl
000033D0  D2C4              rol ah,cl
000033D2  268825            mov [es:di],ah
000033D5  FF6434            jmp word [si+0x34]
000033D8  E83CFA            call word 0x2e17
000033DB  56                push si
000033DC  1E                push ds
000033DD  E8B105            call word 0x3991
000033E0  E80409            call word 0x3ce7
000033E3  E8E508            call word 0x3ccb
000033E6  C47E0C            les di,[bp+0xc]
000033E9  26C7050000        mov word [es:di],0x0
000033EE  8B460A            mov ax,[bp+0xa]
000033F1  8B4C08            mov cx,[si+0x8]
000033F4  E80F09            call word 0x3d06
000033F7  87460A            xchg ax,[bp+0xa]
000033FA  034606            add ax,[bp+0x6]
000033FD  48                dec ax
000033FE  8B4C0C            mov cx,[si+0xc]
00003401  E80209            call word 0x3d06
00003404  2B4E0A            sub cx,[bp+0xa]
00003407  41                inc cx
00003408  894E06            mov [bp+0x6],cx
0000340B  7903              jns 0x3410
0000340D  E98100            jmp word 0x3491
00003410  8B4608            mov ax,[bp+0x8]
00003413  8B4C0A            mov cx,[si+0xa]
00003416  E8ED08            call word 0x3d06
00003419  874608            xchg ax,[bp+0x8]
0000341C  034604            add ax,[bp+0x4]
0000341F  48                dec ax
00003420  8B4C0E            mov cx,[si+0xe]
00003423  E8E008            call word 0x3d06
00003426  2B4E08            sub cx,[bp+0x8]
00003429  41                inc cx
0000342A  894E04            mov [bp+0x4],cx
0000342D  FC                cld
0000342E  8A4414            mov al,[si+0x14]
00003431  98                cbw
00003432  AB                stosw
00003433  92                xchg ax,dx
00003434  8B4606            mov ax,[bp+0x6]
00003437  AB                stosw
00003438  F7E2              mul dx
0000343A  B208              mov dl,0x8
0000343C  F6F2              div dl
0000343E  80EC01            sub ah,0x1
00003441  F5                cmc
00003442  98                cbw
00003443  12C4              adc al,ah
00003445  894606            mov [bp+0x6],ax
00003448  8B4604            mov ax,[bp+0x4]
0000344B  AB                stosw
0000344C  56                push si
0000344D  5E                pop si
0000344E  FF4E04            dec word [bp+0x4]
00003451  783E              js 0x3491
00003453  56                push si
00003454  8B5E0A            mov bx,[bp+0xa]
00003457  8B5608            mov dx,[bp+0x8]
0000345A  FF4608            inc word [bp+0x8]
0000345D  0E                push cs
0000345E  1F                pop ds
0000345F  57                push di
00003460  E8A908            call word 0x3d0c
00003463  024C14            add cl,[si+0x14]
00003466  845C13            test [si+0x13],bl
00003469  B800B8            mov ax,0xb800
0000346C  8ED8              mov ds,ax
0000346E  8BF7              mov si,di
00003470  5F                pop di
00003471  750C              jnz 0x347f
00003473  8B4E06            mov cx,[bp+0x6]
00003476  D1E9              shr cx,1
00003478  7301              jnc 0x347b
0000347A  A4                movsb
0000347B  F3A5              rep movsw
0000347D  EBCE              jmp short 0x344d
0000347F  8B5E06            mov bx,[bp+0x6]
00003482  80E908            sub cl,0x8
00003485  F6D9              neg cl
00003487  AD                lodsw
00003488  4E                dec si
00003489  D3C0              rol ax,cl
0000348B  AA                stosb
0000348C  4B                dec bx
0000348D  75F8              jnz 0x3487
0000348F  EBBC              jmp short 0x344d
00003491  1F                pop ds
00003492  5E                pop si
00003493  E83D05            call word 0x39d3
00003496  1F                pop ds
00003497  5D                pop bp
00003498  C20C00            ret 0xc
0000349B  E83505            call word 0x39d3
0000349E  E9E6FA            jmp word 0x2f87
000034A1  E873F9            call word 0x2e17
000034A4  E8EA04            call word 0x3991
000034A7  E84C08            call word 0x3cf6
000034AA  C47E08            les di,[bp+0x8]
000034AD  268B5D02          mov bx,[es:di+0x2]
000034B1  268B4D04          mov cx,[es:di+0x4]
000034B5  894C34            mov [si+0x34],cx
000034B8  0BDB              or bx,bx
000034BA  74DF              jz 0x349b
000034BC  8B4606            mov ax,[bp+0x6]
000034BF  3B440C            cmp ax,[si+0xc]
000034C2  7FD7              jg 0x349b
000034C4  03C3              add ax,bx
000034C6  48                dec ax
000034C7  3B4408            cmp ax,[si+0x8]
000034CA  7CCF              jl 0x349b
000034CC  8A4414            mov al,[si+0x14]
000034CF  263A05            cmp al,[es:di]
000034D2  75C7              jnz 0x349b
000034D4  98                cbw
000034D5  F7E3              mul bx
000034D7  B208              mov dl,0x8
000034D9  F6F2              div dl
000034DB  80EC01            sub ah,0x1
000034DE  F5                cmc
000034DF  98                cbw
000034E0  12C4              adc al,ah
000034E2  894432            mov [si+0x32],ax
000034E5  294608            sub [bp+0x8],ax
000034E8  83460806          add word [bp+0x8],byte +0x6
000034EC  8A4606            mov al,[bp+0x6]
000034EF  F66414            mul byte [si+0x14]
000034F2  2407              and al,0x7
000034F4  F6D8              neg al
000034F6  0408              add al,0x8
000034F8  88443E            mov [si+0x3e],al
000034FB  835E0800          sbb word [bp+0x8],byte +0x0
000034FF  8B4606            mov ax,[bp+0x6]
00003502  26034502          add ax,[es:di+0x2]
00003506  48                dec ax
00003507  8B4C0C            mov cx,[si+0xc]
0000350A  E8F907            call word 0x3d06
0000350D  894C3A            mov [si+0x3a],cx
00003510  8B4408            mov ax,[si+0x8]
00003513  8B4E06            mov cx,[bp+0x6]
00003516  E8ED07            call word 0x3d06
00003519  894606            mov [bp+0x6],ax
0000351C  7613              jna 0x3531
0000351E  8BD9              mov bx,cx
00003520  99                cwd
00003521  E8E807            call word 0x3d0c
00003524  57                push di
00003525  8B5E06            mov bx,[bp+0x6]
00003528  E8E107            call word 0x3d0c
0000352B  58                pop ax
0000352C  2BF8              sub di,ax
0000352E  017E08            add [bp+0x8],di
00003531  8A4606            mov al,[bp+0x6]
00003534  224413            and al,[si+0x13]
00003537  F66414            mul byte [si+0x14]
0000353A  8AC8              mov cl,al
0000353C  B8FFFF            mov ax,0xffff
0000353F  D2E8              shr al,cl
00003541  32E0              xor ah,al
00003543  894436            mov [si+0x36],ax
00003546  8B443A            mov ax,[si+0x3a]
00003549  224413            and al,[si+0x13]
0000354C  F66414            mul byte [si+0x14]
0000354F  B108              mov cl,0x8
00003551  2A4C14            sub cl,[si+0x14]
00003554  2AC8              sub cl,al
00003556  B8FFFF            mov ax,0xffff
00003559  D2E0              shl al,cl
0000355B  32E0              xor ah,al
0000355D  894438            mov [si+0x38],ax
00003560  8B5C3A            mov bx,[si+0x3a]
00003563  33D2              xor dx,dx
00003565  E8A407            call word 0x3d0c
00003568  57                push di
00003569  8B5E06            mov bx,[bp+0x6]
0000356C  E89D07            call word 0x3d0c
0000356F  58                pop ax
00003570  2BC7              sub ax,di
00003572  48                dec ax
00003573  89443C            mov [si+0x3c],ax
00003576  7910              jns 0x3588
00003578  40                inc ax
00003579  89443C            mov [si+0x3c],ax
0000357C  B800FF            mov ax,0xff00
0000357F  874438            xchg ax,[si+0x38]
00003582  204436            and [si+0x36],al
00003585  086437            or [si+0x37],ah
00003588  B800B8            mov ax,0xb800
0000358B  8EC0              mov es,ax
0000358D  EB03              jmp short 0x3592
0000358F  E909FF            jmp word 0x349b
00003592  FF4C34            dec word [si+0x34]
00003595  78F8              js 0x358f
00003597  8B4432            mov ax,[si+0x32]
0000359A  014608            add [bp+0x8],ax
0000359D  8B5604            mov dx,[bp+0x4]
000035A0  FF4604            inc word [bp+0x4]
000035A3  3B540E            cmp dx,[si+0xe]
000035A6  7FE7              jg 0x358f
000035A8  3B540A            cmp dx,[si+0xa]
000035AB  7CE5              jl 0x3592
000035AD  8B5E06            mov bx,[bp+0x6]
000035B0  E85907            call word 0x3d0c
000035B3  1E                push ds
000035B4  56                push si
000035B5  FF7438            push word [si+0x38]
000035B8  FF743C            push word [si+0x3c]
000035BB  8B5436            mov dx,[si+0x36]
000035BE  8D5C4A            lea bx,[si+0x4a]
000035C1  8A4C3E            mov cl,[si+0x3e]
000035C4  FC                cld
000035C5  C57608            lds si,[bp+0x8]
000035C8  81E10700          and cx,0x7
000035CC  7524              jnz 0x35f2
000035CE  AC                lodsb
000035CF  268A25            mov ah,[es:di]
000035D2  2ED7              cs xlatb
000035D4  23C2              and ax,dx
000035D6  0AC4              or al,ah
000035D8  AA                stosb
000035D9  59                pop cx
000035DA  E306              jcxz 0x35e2
000035DC  AC                lodsb
000035DD  2ED7              cs xlatb
000035DF  AA                stosb
000035E0  E2FA              loop 0x35dc
000035E2  5A                pop dx
000035E3  AC                lodsb
000035E4  268A25            mov ah,[es:di]
000035E7  2ED7              cs xlatb
000035E9  23C2              and ax,dx
000035EB  0AC4              or al,ah
000035ED  AA                stosb
000035EE  5E                pop si
000035EF  1F                pop ds
000035F0  EBA0              jmp short 0x3592
000035F2  AD                lodsw
000035F3  D3C0              rol ax,cl
000035F5  268A25            mov ah,[es:di]
000035F8  2ED7              cs xlatb
000035FA  23C2              and ax,dx
000035FC  0AC4              or al,ah
000035FE  5A                pop dx
000035FF  AA                stosb
00003600  4E                dec si
00003601  AD                lodsw
00003602  D3C0              rol ax,cl
00003604  2ED7              cs xlatb
00003606  4A                dec dx
00003607  79F6              jns 0x35ff
00003609  5A                pop dx
0000360A  268A25            mov ah,[es:di]
0000360D  23C2              and ax,dx
0000360F  0AC4              or al,ah
00003611  AA                stosb
00003612  5E                pop si
00003613  1F                pop ds
00003614  E97BFF            jmp word 0x3592
00003617  E8FDF7            call word 0x2e17
0000361A  E87403            call word 0x3991
0000361D  8B4408            mov ax,[si+0x8]
00003620  01460A            add [bp+0xa],ax
00003623  8B440E            mov ax,[si+0xe]
00003626  2B4608            sub ax,[bp+0x8]
00003629  894608            mov [bp+0x8],ax
0000362C  FF7417            push word [si+0x17]
0000362F  8A4604            mov al,[bp+0x4]
00003632  884417            mov [si+0x17],al
00003635  8B4606            mov ax,[bp+0x6]
00003638  2D0100            sub ax,0x1
0000363B  150100            adc ax,0x1
0000363E  783B              js 0x367b
00003640  894432            mov [si+0x32],ax
00003643  F7E0              mul ax
00003645  895438            mov [si+0x38],dx
00003648  894436            mov [si+0x36],ax
0000364B  C744340000        mov word [si+0x34],0x0
00003650  E83700            call word 0x368a
00003653  FF4434            inc word [si+0x34]
00003656  8B4434            mov ax,[si+0x34]
00003659  F7E0              mul ax
0000365B  F7D0              not ax
0000365D  F7D2              not dx
0000365F  F9                stc
00003660  134436            adc ax,[si+0x36]
00003663  135438            adc dx,[si+0x38]
00003666  8B4C32            mov cx,[si+0x32]
00003669  F7F1              div cx
0000366B  D1E2              shl dx,1
0000366D  3BCA              cmp cx,dx
0000366F  13C1              adc ax,cx
00003671  D1E8              shr ax,1
00003673  894432            mov [si+0x32],ax
00003676  3B4434            cmp ax,[si+0x34]
00003679  7DD5              jnl 0x3650
0000367B  8A4606            mov al,[bp+0x6]
0000367E  884417            mov [si+0x17],al
00003681  8F4417            pop word [si+0x17]
00003684  E84C03            call word 0x39d3
00003687  E9FDF8            jmp word 0x2f87
0000368A  8B4432            mov ax,[si+0x32]
0000368D  874434            xchg ax,[si+0x34]
00003690  894432            mov [si+0x32],ax
00003693  3B4434            cmp ax,[si+0x34]
00003696  740C              jz 0x36a4
00003698  E80900            call word 0x36a4
0000369B  8B4432            mov ax,[si+0x32]
0000369E  874434            xchg ax,[si+0x34]
000036A1  894432            mov [si+0x32],ax
000036A4  F75C34            neg word [si+0x34]
000036A7  7406              jz 0x36af
000036A9  E80300            call word 0x36af
000036AC  F75C34            neg word [si+0x34]
000036AF  F75C32            neg word [si+0x32]
000036B2  7406              jz 0x36ba
000036B4  E80300            call word 0x36ba
000036B7  F75C32            neg word [si+0x32]
000036BA  8B5E0A            mov bx,[bp+0xa]
000036BD  035C32            add bx,[si+0x32]
000036C0  8B5608            mov dx,[bp+0x8]
000036C3  035434            add dx,[si+0x34]
000036C6  E90704            jmp word 0x3ad0
000036C9  8F4404            pop word [si+0x4]
000036CC  8F04              pop word [si]
000036CE  8F4406            pop word [si+0x6]
000036D1  8F4402            pop word [si+0x2]
000036D4  8F4417            pop word [si+0x17]
000036D7  58                pop ax
000036D8  E8A304            call word 0x3b7e
000036DB  E8F502            call word 0x39d3
000036DE  E9B8FA            jmp word 0x3199
000036E1  E833F7            call word 0x2e17
000036E4  E8AA02            call word 0x3991
000036E7  FF741D            push word [si+0x1d]
000036EA  FF7417            push word [si+0x17]
000036ED  FF7402            push word [si+0x2]
000036F0  FF7406            push word [si+0x6]
000036F3  FF34              push word [si]
000036F5  FF7404            push word [si+0x4]
000036F8  8A4604            mov al,[bp+0x4]
000036FB  884417            mov [si+0x17],al
000036FE  8B5E0C            mov bx,[bp+0xc]
00003701  035C08            add bx,[si+0x8]
00003704  8B540E            mov dx,[si+0xe]
00003707  2B560A            sub dx,[bp+0xa]
0000370A  E82504            call word 0x3b32
0000370D  F75E08            neg word [bp+0x8]
00003710  837E0600          cmp word [bp+0x6],byte +0x0
00003714  74B3              jz 0x36c9
00003716  7906              jns 0x371e
00003718  F75E08            neg word [bp+0x8]
0000371B  F75E06            neg word [bp+0x6]
0000371E  837E0602          cmp word [bp+0x6],byte +0x2
00003722  76A5              jna 0x36c9
00003724  8B4E08            mov cx,[bp+0x8]
00003727  0BC9              or cx,cx
00003729  749E              jz 0x36c9
0000372B  B85A00            mov ax,0x5a
0000372E  7902              jns 0x3732
00003730  F7D8              neg ax
00003732  50                push ax
00003733  9C                pushfw
00003734  E84404            call word 0x3b7b
00003737  8B441D            mov ax,[si+0x1d]
0000373A  2DB400            sub ax,0xb4
0000373D  7303              jnc 0x3742
0000373F  056801            add ax,0x168
00003742  894432            mov [si+0x32],ax
00003745  8B4606            mov ax,[bp+0x6]
00003748  E8F703            call word 0x3b42
0000374B  8B4402            mov ax,[si+0x2]
0000374E  894440            mov [si+0x40],ax
00003751  8B4406            mov ax,[si+0x6]
00003754  894442            mov [si+0x42],ax
00003757  8B4432            mov ax,[si+0x32]
0000375A  034608            add ax,[bp+0x8]
0000375D  E81E04            call word 0x3b7e
00003760  8B4606            mov ax,[bp+0x6]
00003763  E8DC03            call word 0x3b42
00003766  8B5C1D            mov bx,[si+0x1d]
00003769  9D                popfw
0000376A  7903              jns 0x376f
0000376C  875C32            xchg bx,[si+0x32]
0000376F  395C32            cmp [si+0x32],bx
00003772  7C04              jl 0x3778
00003774  81C36801          add bx,0x168
00003778  895C34            mov [si+0x34],bx
0000377B  58                pop ax
0000377C  E8FC03            call word 0x3b7b
0000377F  8B4606            mov ax,[bp+0x6]
00003782  F7E0              mul ax
00003784  895438            mov [si+0x38],dx
00003787  89443A            mov [si+0x3a],ax
0000378A  C6444801          mov byte [si+0x48],0x1
0000378E  B8FFFF            mov ax,0xffff
00003791  894444            mov [si+0x44],ax
00003794  894446            mov [si+0x46],ax
00003797  8D9C0402          lea bx,[si+0x204]
0000379B  837C322D          cmp word [si+0x32],byte +0x2d
0000379F  7610              jna 0x37b1
000037A1  E89D00            call word 0x3841
000037A4  D04448            rol byte [si+0x48],1
000037A7  836C322D          sub word [si+0x32],byte +0x2d
000037AB  836C342D          sub word [si+0x34],byte +0x2d
000037AF  EBEA              jmp short 0x379b
000037B1  E88D00            call word 0x3841
000037B4  53                push bx
000037B5  E81500            call word 0x37cd
000037B8  5B                pop bx
000037B9  D04448            rol byte [si+0x48],1
000037BC  C744320000        mov word [si+0x32],0x0
000037C1  836C342D          sub word [si+0x34],byte +0x2d
000037C5  73EA              jnc 0x37b1
000037C7  E80003            call word 0x3aca
000037CA  E9FCFE            jmp word 0x36c9
000037CD  8B5C32            mov bx,[si+0x32]
000037D0  8B4434            mov ax,[si+0x34]
000037D3  3D2D00            cmp ax,0x2d
000037D6  7E03              jng 0x37db
000037D8  B82D00            mov ax,0x2d
000037DB  3BC3              cmp ax,bx
000037DD  7461              jz 0x3840
000037DF  F64448AA          test byte [si+0x48],0xaa
000037E3  740B              jz 0x37f0
000037E5  93                xchg ax,bx
000037E6  2D2D00            sub ax,0x2d
000037E9  83EB2D            sub bx,byte +0x2d
000037EC  F7D8              neg ax
000037EE  F7DB              neg bx
000037F0  53                push bx
000037F1  E84D05            call word 0x3d41
000037F4  F76606            mul word [bp+0x6]
000037F7  D1E0              shl ax,1
000037F9  83D200            adc dx,byte +0x0
000037FC  895436            mov [si+0x36],dx
000037FF  58                pop ax
00003800  E83E05            call word 0x3d41
00003803  F76606            mul word [bp+0x6]
00003806  8BFA              mov di,dx
00003808  295436            sub [si+0x36],dx
0000380B  8B4606            mov ax,[bp+0x6]
0000380E  89443E            mov [si+0x3e],ax
00003811  C7443C0000        mov word [si+0x3c],0x0
00003816  8B5C40            mov bx,[si+0x40]
00003819  8B5442            mov dx,[si+0x42]
0000381C  4F                dec di
0000381D  7805              js 0x3824
0000381F  E83400            call word 0x3856
00003822  EBF8              jmp short 0x381c
00003824  E8A902            call word 0x3ad0
00003827  FF4C36            dec word [si+0x36]
0000382A  780E              js 0x383a
0000382C  E82700            call word 0x3856
0000382F  395C44            cmp [si+0x44],bx
00003832  75F0              jnz 0x3824
00003834  395446            cmp [si+0x46],dx
00003837  75EB              jnz 0x3824
00003839  C3                ret
0000383A  895C44            mov [si+0x44],bx
0000383D  895446            mov [si+0x46],dx
00003840  C3                ret
00003841  8A07              mov al,[bx]
00003843  43                inc bx
00003844  98                cbw
00003845  F76E06            imul word [bp+0x6]
00003848  014440            add [si+0x40],ax
0000384B  8A07              mov al,[bx]
0000384D  43                inc bx
0000384E  98                cbw
0000384F  F76E06            imul word [bp+0x6]
00003852  014442            add [si+0x42],ax
00003855  C3                ret
00003856  FF443C            inc word [si+0x3c]
00003859  8B443C            mov ax,[si+0x3c]
0000385C  8B4C3E            mov cx,[si+0x3e]
0000385F  52                push dx
00003860  F7E0              mul ax
00003862  F7D0              not ax
00003864  F7D2              not dx
00003866  F9                stc
00003867  13443A            adc ax,[si+0x3a]
0000386A  135438            adc dx,[si+0x38]
0000386D  7833              js 0x38a2
0000386F  F7F1              div cx
00003871  D1E2              shl dx,1
00003873  3BCA              cmp cx,dx
00003875  5A                pop dx
00003876  13C1              adc ax,cx
00003878  D1E8              shr ax,1
0000387A  150000            adc ax,0x0
0000387D  87443E            xchg ax,[si+0x3e]
00003880  2B443E            sub ax,[si+0x3e]
00003883  B90100            mov cx,0x1
00003886  F64448B4          test byte [si+0x48],0xb4
0000388A  7402              jz 0x388e
0000388C  F7D9              neg cx
0000388E  F6444887          test byte [si+0x48],0x87
00003892  7402              jz 0x3896
00003894  F7D8              neg ax
00003896  F6444866          test byte [si+0x48],0x66
0000389A  7401              jz 0x389d
0000389C  91                xchg ax,cx
0000389D  03D8              add bx,ax
0000389F  03D1              add dx,cx
000038A1  C3                ret
000038A2  5A                pop dx
000038A3  C3                ret
000038A4  E870F5            call word 0x2e17
000038A7  E8E700            call word 0x3991
000038AA  8B5E06            mov bx,[bp+0x6]
000038AD  035C08            add bx,[si+0x8]
000038B0  8B540E            mov dx,[si+0xe]
000038B3  2B5604            sub dx,[bp+0x4]
000038B6  B8FFFF            mov ax,0xffff
000038B9  3B5C08            cmp bx,[si+0x8]
000038BC  7C1B              jl 0x38d9
000038BE  3B5C0C            cmp bx,[si+0xc]
000038C1  7F16              jg 0x38d9
000038C3  3B540A            cmp dx,[si+0xa]
000038C6  7C11              jl 0x38d9
000038C8  3B540E            cmp dx,[si+0xe]
000038CB  7F0C              jg 0x38d9
000038CD  E83C04            call word 0x3d0c
000038D0  268A05            mov al,[es:di]
000038D3  D2C8              ror al,cl
000038D5  224415            and al,[si+0x15]
000038D8  98                cbw
000038D9  50                push ax
000038DA  E8F600            call word 0x39d3
000038DD  58                pop ax
000038DE  1F                pop ds
000038DF  5D                pop bp
000038E0  C20600            ret 0x6
000038E3  E831F5            call word 0x2e17
000038E6  8B4402            mov ax,[si+0x2]
000038E9  2B4424            sub ax,[si+0x24]
000038EC  E9BFF6            jmp word 0x2fae
000038EF  E825F5            call word 0x2e17
000038F2  8B4406            mov ax,[si+0x6]
000038F5  2B4426            sub ax,[si+0x26]
000038F8  E9B3F6            jmp word 0x2fae
000038FB  E819F5            call word 0x2e17
000038FE  B85A00            mov ax,0x5a
00003901  2B441D            sub ax,[si+0x1d]
00003904  7303              jnc 0x3909
00003906  056801            add ax,0x168
00003909  E9A2F6            jmp word 0x2fae
0000390C  E808F5            call word 0x2e17
0000390F  806418EF          and byte [si+0x18],0xef
00003913  E9B7F5            jmp word 0x2ecd
00003916  E8FEF4            call word 0x2e17
00003919  804C1810          or byte [si+0x18],0x10
0000391D  E9ADF5            jmp word 0x2ecd
00003920  E8F4F4            call word 0x2e17
00003923  33C0              xor ax,ax
00003925  F6441808          test byte [si+0x18],0x8
00003929  7401              jz 0x392c
0000392B  40                inc ax
0000392C  E99EF5            jmp word 0x2ecd
0000392F  E8E5F4            call word 0x2e17
00003932  E85C00            call word 0x3991
00003935  806418F7          and byte [si+0x18],0xf7
00003939  E991F5            jmp word 0x2ecd
0000393C  E8D8F4            call word 0x2e17
0000393F  E84F00            call word 0x3991
00003942  804C1808          or byte [si+0x18],0x8
00003946  E86E00            call word 0x39b7
00003949  E981F5            jmp word 0x2ecd
0000394C  E8C8F4            call word 0x2e17
0000394F  8B4604            mov ax,[bp+0x4]
00003952  894428            mov [si+0x28],ax
00003955  1F                pop ds
00003956  A11200            mov ax,[0x12]
00003959  1E                push ds
0000395A  0E                push cs
0000395B  1F                pop ds
0000395C  894430            mov [si+0x30],ax
0000395F  E94CF6            jmp word 0x2fae
00003962  E8B2F4            call word 0x2e17
00003965  E82900            call word 0x3991
00003968  804C1802          or byte [si+0x18],0x2
0000396C  8B5C02            mov bx,[si+0x2]
0000396F  8B5406            mov dx,[si+0x6]
00003972  E81401            call word 0x3a89
00003975  895C02            mov [si+0x2],bx
00003978  895406            mov [si+0x6],dx
0000397B  E85500            call word 0x39d3
0000397E  E94CF5            jmp word 0x2ecd
00003981  E893F4            call word 0x2e17
00003984  E80A00            call word 0x3991
00003987  806418FD          and byte [si+0x18],0xfd
0000398B  E84500            call word 0x39d3
0000398E  E93CF5            jmp word 0x2ecd
00003991  F6441808          test byte [si+0x18],0x8
00003995  741F              jz 0x39b6
00003997  8B7C2C            mov di,[si+0x2c]
0000399A  8B5C2E            mov bx,[si+0x2e]
0000399D  03FB              add di,bx
0000399F  03FB              add di,bx
000039A1  83EF02            sub di,byte +0x2
000039A4  57                push di
000039A5  53                push bx
000039A6  E8BA00            call word 0x3a63
000039A9  E86003            call word 0x3d0c
000039AC  5B                pop bx
000039AD  4B                dec bx
000039AE  8A801E04          mov al,[bx+si+0x41e]
000039B2  AA                stosb
000039B3  5F                pop di
000039B4  75EB              jnz 0x39a1
000039B6  C3                ret
000039B7  F6441808          test byte [si+0x18],0x8
000039BB  74F9              jz 0x39b6
000039BD  E81300            call word 0x39d3
000039C0  8B4C28            mov cx,[si+0x28]
000039C3  E3F1              jcxz 0x39b6
000039C5  E80300            call word 0x39cb
000039C8  E2FB              loop 0x39c5
000039CA  C3                ret
000039CB  51                push cx
000039CC  8B4C30            mov cx,[si+0x30]
000039CF  E2FE              loop 0x39cf
000039D1  59                pop cx
000039D2  C3                ret
000039D3  F6441808          test byte [si+0x18],0x8
000039D7  74DD              jz 0x39b6
000039D9  B800B8            mov ax,0xb800
000039DC  8EC0              mov es,ax
000039DE  8B441D            mov ax,[si+0x1d]
000039E1  BB5A00            mov bx,0x5a
000039E4  99                cwd
000039E5  F7F3              div bx
000039E7  8BC2              mov ax,dx
000039E9  2D2D00            sub ax,0x2d
000039EC  7302              jnc 0x39f0
000039EE  F7D8              neg ax
000039F0  050400            add ax,0x4
000039F3  B309              mov bl,0x9
000039F5  F6F3              div bl
000039F7  F6D8              neg al
000039F9  0405              add al,0x5
000039FB  98                cbw
000039FC  03C0              add ax,ax
000039FE  8BD8              mov bx,ax
00003A00  8DBC1204          lea di,[si+0x412]
00003A04  0339              add di,[bx+di]
00003A06  897C2C            mov [si+0x2c],di
00003A09  8B441D            mov ax,[si+0x1d]
00003A0C  99                cwd
00003A0D  BB2D00            mov bx,0x2d
00003A10  F7F3              div bx
00003A12  8BD8              mov bx,ax
00003A14  8A804904          mov al,[bx+si+0x449]
00003A18  88442B            mov [si+0x2b],al
00003A1B  33DB              xor bx,bx
00003A1D  57                push di
00003A1E  53                push bx
00003A1F  E84100            call word 0x3a63
00003A22  E8E702            call word 0x3d0c
00003A25  5B                pop bx
00003A26  268A25            mov ah,[es:di]
00003A29  88A01E04          mov [bx+si+0x41e],ah
00003A2D  F6441804          test byte [si+0x18],0x4
00003A31  7406              jz 0x3a39
00003A33  F6441802          test byte [si+0x18],0x2
00003A37  741C              jz 0x3a55
00003A39  8AC4              mov al,ah
00003A3B  D2CC              ror ah,cl
00003A3D  8A4417            mov al,[si+0x17]
00003A40  3A4415            cmp al,[si+0x15]
00003A43  7608              jna 0x3a4d
00003A45  8AC4              mov al,ah
00003A47  53                push bx
00003A48  8D5C4A            lea bx,[si+0x4a]
00003A4B  D7                xlatb
00003A4C  5B                pop bx
00003A4D  234415            and ax,[si+0x15]
00003A50  0AC4              or al,ah
00003A52  D2C0              rol al,cl
00003A54  AA                stosb
00003A55  43                inc bx
00003A56  5F                pop di
00003A57  83C702            add di,byte +0x2
00003A5A  803DAA            cmp byte [di],0xaa
00003A5D  75BE              jnz 0x3a1d
00003A5F  895C2E            mov [si+0x2e],bx
00003A62  C3                ret
00003A63  8A05              mov al,[di]
00003A65  98                cbw
00003A66  8BD8              mov bx,ax
00003A68  8A4501            mov al,[di+0x1]
00003A6B  98                cbw
00003A6C  8BD0              mov dx,ax
00003A6E  8A442B            mov al,[si+0x2b]
00003A71  D0E8              shr al,1
00003A73  7302              jnc 0x3a77
00003A75  87DA              xchg bx,dx
00003A77  D0E8              shr al,1
00003A79  7302              jnc 0x3a7d
00003A7B  F7DB              neg bx
00003A7D  D0E8              shr al,1
00003A7F  7302              jnc 0x3a83
00003A81  F7DA              neg dx
00003A83  035C02            add bx,[si+0x2]
00003A86  035406            add dx,[si+0x6]
00003A89  806418FB          and byte [si+0x18],0xfb
00003A8D  3B5C08            cmp bx,[si+0x8]
00003A90  7C10              jl 0x3aa2
00003A92  3B5C0C            cmp bx,[si+0xc]
00003A95  7F18              jg 0x3aaf
00003A97  3B540A            cmp dx,[si+0xa]
00003A9A  7C1C              jl 0x3ab8
00003A9C  3B540E            cmp dx,[si+0xe]
00003A9F  7F20              jg 0x3ac1
00003AA1  C3                ret
00003AA2  2B5C08            sub bx,[si+0x8]
00003AA5  035C0C            add bx,[si+0xc]
00003AA8  43                inc bx
00003AA9  804C1804          or byte [si+0x18],0x4
00003AAD  EBDE              jmp short 0x3a8d
00003AAF  2B5C0C            sub bx,[si+0xc]
00003AB2  035C08            add bx,[si+0x8]
00003AB5  4B                dec bx
00003AB6  EBF1              jmp short 0x3aa9
00003AB8  2B540A            sub dx,[si+0xa]
00003ABB  03540E            add dx,[si+0xe]
00003ABE  42                inc dx
00003ABF  EBE8              jmp short 0x3aa9
00003AC1  2B540E            sub dx,[si+0xe]
00003AC4  03540A            add dx,[si+0xa]
00003AC7  4A                dec dx
00003AC8  EBDF              jmp short 0x3aa9
00003ACA  8B5C02            mov bx,[si+0x2]
00003ACD  8B5406            mov dx,[si+0x6]
00003AD0  3B5C08            cmp bx,[si+0x8]
00003AD3  7C31              jl 0x3b06
00003AD5  3B5C0C            cmp bx,[si+0xc]
00003AD8  7F2C              jg 0x3b06
00003ADA  3B540A            cmp dx,[si+0xa]
00003ADD  7C27              jl 0x3b06
00003ADF  3B540E            cmp dx,[si+0xe]
00003AE2  7F22              jg 0x3b06
00003AE4  E82502            call word 0x3d0c
00003AE7  268A25            mov ah,[es:di]
00003AEA  D2CC              ror ah,cl
00003AEC  8A4417            mov al,[si+0x17]
00003AEF  3A4415            cmp al,[si+0x15]
00003AF2  7608              jna 0x3afc
00003AF4  8AC4              mov al,ah
00003AF6  53                push bx
00003AF7  8D5C4A            lea bx,[si+0x4a]
00003AFA  D7                xlatb
00003AFB  5B                pop bx
00003AFC  234415            and ax,[si+0x15]
00003AFF  0AE0              or ah,al
00003B01  D2C4              rol ah,cl
00003B03  268825            mov [es:di],ah
00003B06  C3                ret
00003B07  8B4408            mov ax,[si+0x8]
00003B0A  03440C            add ax,[si+0xc]
00003B0D  D1E8              shr ax,1
00003B0F  894402            mov [si+0x2],ax
00003B12  894424            mov [si+0x24],ax
00003B15  C7040080          mov word [si],0x8000
00003B19  8B440A            mov ax,[si+0xa]
00003B1C  03440E            add ax,[si+0xe]
00003B1F  40                inc ax
00003B20  D1E8              shr ax,1
00003B22  894406            mov [si+0x6],ax
00003B25  894426            mov [si+0x26],ax
00003B28  C744040080        mov word [si+0x4],0x8000
00003B2D  B85A00            mov ax,0x5a
00003B30  EB4C              jmp short 0x3b7e
00003B32  895C02            mov [si+0x2],bx
00003B35  895406            mov [si+0x6],dx
00003B38  C7040080          mov word [si],0x8000
00003B3C  C744040080        mov word [si+0x4],0x8000
00003B41  C3                ret
00003B42  91                xchg ax,cx
00003B43  8A5C1F            mov bl,[si+0x1f]
00003B46  0BC9              or cx,cx
00003B48  7904              jns 0x3b4e
00003B4A  F6D3              not bl
00003B4C  F7D9              neg cx
00003B4E  F6C301            test bl,0x1
00003B51  53                push bx
00003B52  8B4420            mov ax,[si+0x20]
00003B55  8D5C04            lea bx,[si+0x4]
00003B58  E80900            call word 0x3b64
00003B5B  5B                pop bx
00003B5C  F6C302            test bl,0x2
00003B5F  8B4422            mov ax,[si+0x22]
00003B62  8D1C              lea bx,[si]
00003B64  9C                pushfw
00003B65  8BD1              mov dx,cx
00003B67  40                inc ax
00003B68  7403              jz 0x3b6d
00003B6A  48                dec ax
00003B6B  F7E1              mul cx
00003B6D  9D                popfw
00003B6E  7405              jz 0x3b75
00003B70  F7D0              not ax
00003B72  F7D2              not dx
00003B74  F9                stc
00003B75  1107              adc [bx],ax
00003B77  115702            adc [bx+0x2],dx
00003B7A  C3                ret
00003B7B  03441D            add ax,[si+0x1d]
00003B7E  99                cwd
00003B7F  B96801            mov cx,0x168
00003B82  F7F9              idiv cx
00003B84  0BD2              or dx,dx
00003B86  7902              jns 0x3b8a
00003B88  03D1              add dx,cx
00003B8A  92                xchg ax,dx
00003B8B  89441D            mov [si+0x1d],ax
00003B8E  E8B001            call word 0x3d41
00003B91  894420            mov [si+0x20],ax
00003B94  B8C201            mov ax,0x1c2
00003B97  2B441D            sub ax,[si+0x1d]
00003B9A  2BC1              sub ax,cx
00003B9C  7302              jnc 0x3ba0
00003B9E  03C1              add ax,cx
00003BA0  E89E01            call word 0x3d41
00003BA3  894422            mov [si+0x22],ax
00003BA6  8B441D            mov ax,[si+0x1d]
00003BA9  BB5A00            mov bx,0x5a
00003BAC  F6FB              idiv bl
00003BAE  8AD8              mov bl,al
00003BB0  8A800002          mov al,[bx+si+0x200]
00003BB4  88441F            mov [si+0x1f],al
00003BB7  C3                ret
00003BB8  8B5C02            mov bx,[si+0x2]
00003BBB  895C3C            mov [si+0x3c],bx
00003BBE  8B5C06            mov bx,[si+0x6]
00003BC1  895C3E            mov [si+0x3e],bx
00003BC4  E87BFF            call word 0x3b42
00003BC7  8B5C02            mov bx,[si+0x2]
00003BCA  8B5406            mov dx,[si+0x6]
00003BCD  B005              mov al,0x5
00003BCF  2B5C3C            sub bx,[si+0x3c]
00003BD2  7D04              jnl 0x3bd8
00003BD4  F7DB              neg bx
00003BD6  0C02              or al,0x2
00003BD8  2B543E            sub dx,[si+0x3e]
00003BDB  7D04              jnl 0x3be1
00003BDD  F7DA              neg dx
00003BDF  0C08              or al,0x8
00003BE1  8AE0              mov ah,al
00003BE3  25030C            and ax,0xc03
00003BE6  3BDA              cmp bx,dx
00003BE8  7304              jnc 0x3bee
00003BEA  87DA              xchg bx,dx
00003BEC  86C4              xchg al,ah
00003BEE  895C32            mov [si+0x32],bx
00003BF1  895434            mov [si+0x34],dx
00003BF4  89443A            mov [si+0x3a],ax
00003BF7  895C38            mov [si+0x38],bx
00003BFA  D1EB              shr bx,1
00003BFC  895C36            mov [si+0x36],bx
00003BFF  8B5C3C            mov bx,[si+0x3c]
00003C02  8B543E            mov dx,[si+0x3e]
00003C05  E80401            call word 0x3d0c
00003C08  3B5C08            cmp bx,[si+0x8]
00003C0B  7C0F              jl 0x3c1c
00003C0D  3B5C0C            cmp bx,[si+0xc]
00003C10  7F0A              jg 0x3c1c
00003C12  3B540A            cmp dx,[si+0xa]
00003C15  7C05              jl 0x3c1c
00003C17  3B540E            cmp dx,[si+0xe]
00003C1A  7E12              jng 0x3c2e
00003C1C  F6441801          test byte [si+0x18],0x1
00003C20  743A              jz 0x3c5c
00003C22  F6441802          test byte [si+0x18],0x2
00003C26  7434              jz 0x3c5c
00003C28  E85EFE            call word 0x3a89
00003C2B  E8DE00            call word 0x3d0c
00003C2E  8A4418            mov al,[si+0x18]
00003C31  2411              and al,0x11
00003C33  3411              xor al,0x11
00003C35  7425              jz 0x3c5c
00003C37  268A25            mov ah,[es:di]
00003C3A  D2CC              ror ah,cl
00003C3C  8A4417            mov al,[si+0x17]
00003C3F  3A4415            cmp al,[si+0x15]
00003C42  7608              jna 0x3c4c
00003C44  8AC4              mov al,ah
00003C46  53                push bx
00003C47  8D5C4A            lea bx,[si+0x4a]
00003C4A  D7                xlatb
00003C4B  5B                pop bx
00003C4C  234415            and ax,[si+0x15]
00003C4F  0AE0              or ah,al
00003C51  D2C4              rol ah,cl
00003C53  268825            mov [es:di],ah
00003C56  895C3C            mov [si+0x3c],bx
00003C59  89543E            mov [si+0x3e],dx
00003C5C  FF4C38            dec word [si+0x38]
00003C5F  7869              js 0x3cca
00003C61  8A6C3A            mov ch,[si+0x3a]
00003C64  8B4436            mov ax,[si+0x36]
00003C67  2B4434            sub ax,[si+0x34]
00003C6A  7306              jnc 0x3c72
00003C6C  034432            add ax,[si+0x32]
00003C6F  0A6C3B            or ch,[si+0x3b]
00003C72  894436            mov [si+0x36],ax
00003C75  F6C501            test ch,0x1
00003C78  741E              jz 0x3c98
00003C7A  F6C502            test ch,0x2
00003C7D  740E              jz 0x3c8d
00003C7F  4B                dec bx
00003C80  024C14            add cl,[si+0x14]
00003C83  80F908            cmp cl,0x8
00003C86  7210              jc 0x3c98
00003C88  32C9              xor cl,cl
00003C8A  4F                dec di
00003C8B  EB0B              jmp short 0x3c98
00003C8D  43                inc bx
00003C8E  0AC9              or cl,cl
00003C90  7503              jnz 0x3c95
00003C92  B108              mov cl,0x8
00003C94  47                inc di
00003C95  2A4C14            sub cl,[si+0x14]
00003C98  F6C504            test ch,0x4
00003C9B  740F              jz 0x3cac
00003C9D  F6C508            test ch,0x8
00003CA0  7414              jz 0x3cb6
00003CA2  4A                dec dx
00003CA3  F6C201            test dl,0x1
00003CA6  7407              jz 0x3caf
00003CA8  81EFB01F          sub di,0x1fb0
00003CAC  E959FF            jmp word 0x3c08
00003CAF  81C70020          add di,0x2000
00003CB3  E952FF            jmp word 0x3c08
00003CB6  42                inc dx
00003CB7  F6C201            test dl,0x1
00003CBA  7407              jz 0x3cc3
00003CBC  81EF0020          sub di,0x2000
00003CC0  E945FF            jmp word 0x3c08
00003CC3  81C7B01F          add di,0x1fb0
00003CC7  E93EFF            jmp word 0x3c08
00003CCA  C3                ret
00003CCB  45                inc bp
00003CCC  45                inc bp
00003CCD  E80200            call word 0x3cd2
00003CD0  4D                dec bp
00003CD1  4D                dec bp
00003CD2  8B4608            mov ax,[bp+0x8]
00003CD5  8B5E04            mov bx,[bp+0x4]
00003CD8  3BC3              cmp ax,bx
00003CDA  7C01              jl 0x3cdd
00003CDC  93                xchg ax,bx
00003CDD  894608            mov [bp+0x8],ax
00003CE0  2BD8              sub bx,ax
00003CE2  43                inc bx
00003CE3  895E04            mov [bp+0x4],bx
00003CE6  C3                ret
00003CE7  8B4408            mov ax,[si+0x8]
00003CEA  01460A            add [bp+0xa],ax
00003CED  8B440E            mov ax,[si+0xe]
00003CF0  2B4608            sub ax,[bp+0x8]
00003CF3  894608            mov [bp+0x8],ax
00003CF6  8B4408            mov ax,[si+0x8]
00003CF9  014606            add [bp+0x6],ax
00003CFC  8B440E            mov ax,[si+0xe]
00003CFF  2B4604            sub ax,[bp+0x4]
00003D02  894604            mov [bp+0x4],ax
00003D05  C3                ret
00003D06  3BC1              cmp ax,cx
00003D08  7701              ja 0x3d0b
00003D0A  91                xchg ax,cx
00003D0B  C3                ret
00003D0C  B82800            mov ax,0x28
00003D0F  52                push dx
00003D10  81EAC700          sub dx,0xc7
00003D14  F7DA              neg dx
00003D16  80E2FE            and dl,0xfe
00003D19  F7EA              imul dx
00003D1B  5A                pop dx
00003D1C  F6C201            test dl,0x1
00003D1F  7503              jnz 0x3d24
00003D21  050020            add ax,0x2000
00003D24  8BF8              mov di,ax
00003D26  8BC3              mov ax,bx
00003D28  8A4C12            mov cl,[si+0x12]
00003D2B  D3F8              sar ax,cl
00003D2D  03F8              add di,ax
00003D2F  8A4C14            mov cl,[si+0x14]
00003D32  49                dec cx
00003D33  8AC3              mov al,bl
00003D35  8A6413            mov ah,[si+0x13]
00003D38  22C4              and al,ah
00003D3A  2AE0              sub ah,al
00003D3C  D2E4              shl ah,cl
00003D3E  86CC              xchg cl,ah
00003D40  C3                ret
00003D41  3DB400            cmp ax,0xb4
00003D44  7203              jc 0x3d49
00003D46  2DB400            sub ax,0xb4
00003D49  3D5A00            cmp ax,0x5a
00003D4C  7605              jna 0x3d53
00003D4E  2DB400            sub ax,0xb4
00003D51  F7D8              neg ax
00003D53  03C0              add ax,ax
00003D55  93                xchg ax,bx
00003D56  8B984A01          mov bx,[bx+si+0x14a]
00003D5A  93                xchg ax,bx
00003D5B  C3                ret
00003D5C  0000              add [bx+si],al
00003D5E  0000              add [bx+si],al
00003D60  0000              add [bx+si],al
00003D62  0000              add [bx+si],al
00003D64  0000              add [bx+si],al
00003D66  0000              add [bx+si],al
00003D68  0000              add [bx+si],al
00003D6A  0000              add [bx+si],al
00003D6C  0000              add [bx+si],al
00003D6E  0000              add [bx+si],al
00003D70  0000              add [bx+si],al
00003D72  0000              add [bx+si],al
00003D74  0000              add [bx+si],al
00003D76  0000              add [bx+si],al
00003D78  0000              add [bx+si],al
00003D7A  0000              add [bx+si],al
00003D7C  0000              add [bx+si],al
00003D7E  0000              add [bx+si],al
00003D80  0000              add [bx+si],al
00003D82  0000              add [bx+si],al
00003D84  0000              add [bx+si],al
00003D86  0000              add [bx+si],al
00003D88  0000              add [bx+si],al
00003D8A  0000              add [bx+si],al
00003D8C  0000              add [bx+si],al
00003D8E  0000              add [bx+si],al
00003D90  0000              add [bx+si],al
00003D92  0000              add [bx+si],al
00003D94  0000              add [bx+si],al
00003D96  0000              add [bx+si],al
00003D98  0000              add [bx+si],al
00003D9A  0000              add [bx+si],al
00003D9C  0000              add [bx+si],al
00003D9E  0000              add [bx+si],al
00003DA0  0000              add [bx+si],al
00003DA2  0000              add [bx+si],al
00003DA4  0000              add [bx+si],al
00003DA6  0000              add [bx+si],al
00003DA8  0000              add [bx+si],al
00003DAA  0000              add [bx+si],al
00003DAC  0000              add [bx+si],al
00003DAE  0000              add [bx+si],al
00003DB0  0000              add [bx+si],al
00003DB2  0000              add [bx+si],al
00003DB4  0000              add [bx+si],al
00003DB6  0000              add [bx+si],al
00003DB8  0000              add [bx+si],al
00003DBA  0000              add [bx+si],al
00003DBC  0000              add [bx+si],al
00003DBE  0000              add [bx+si],al
00003DC0  0000              add [bx+si],al
00003DC2  0000              add [bx+si],al
00003DC4  0000              add [bx+si],al
00003DC6  0000              add [bx+si],al
00003DC8  0000              add [bx+si],al
00003DCA  0000              add [bx+si],al
00003DCC  0000              add [bx+si],al
00003DCE  0000              add [bx+si],al
00003DD0  0000              add [bx+si],al
00003DD2  0000              add [bx+si],al
00003DD4  0000              add [bx+si],al
00003DD6  0000              add [bx+si],al
00003DD8  0000              add [bx+si],al
00003DDA  0000              add [bx+si],al
00003DDC  0000              add [bx+si],al
00003DDE  0000              add [bx+si],al
00003DE0  0000              add [bx+si],al
00003DE2  0000              add [bx+si],al
00003DE4  0000              add [bx+si],al
00003DE6  0000              add [bx+si],al
00003DE8  0000              add [bx+si],al
00003DEA  0000              add [bx+si],al
00003DEC  0000              add [bx+si],al
00003DEE  0000              add [bx+si],al
00003DF0  0000              add [bx+si],al
00003DF2  0000              add [bx+si],al
00003DF4  0000              add [bx+si],al
00003DF6  0000              add [bx+si],al
00003DF8  0000              add [bx+si],al
00003DFA  0000              add [bx+si],al
00003DFC  0000              add [bx+si],al
00003DFE  0000              add [bx+si],al
00003E00  0000              add [bx+si],al
00003E02  0000              add [bx+si],al
00003E04  0000              add [bx+si],al
00003E06  0000              add [bx+si],al
00003E08  0000              add [bx+si],al
00003E0A  0000              add [bx+si],al
00003E0C  0000              add [bx+si],al
00003E0E  0000              add [bx+si],al
00003E10  0000              add [bx+si],al
00003E12  0000              add [bx+si],al
00003E14  0000              add [bx+si],al
00003E16  0000              add [bx+si],al
00003E18  0000              add [bx+si],al
00003E1A  0000              add [bx+si],al
00003E1C  0000              add [bx+si],al
00003E1E  0000              add [bx+si],al
00003E20  0000              add [bx+si],al
00003E22  0000              add [bx+si],al
00003E24  0000              add [bx+si],al
00003E26  0000              add [bx+si],al
00003E28  0000              add [bx+si],al
00003E2A  0000              add [bx+si],al
00003E2C  0000              add [bx+si],al
00003E2E  0000              add [bx+si],al
00003E30  0000              add [bx+si],al
00003E32  0000              add [bx+si],al
00003E34  0000              add [bx+si],al
00003E36  0000              add [bx+si],al
00003E38  0000              add [bx+si],al
00003E3A  0000              add [bx+si],al
00003E3C  0000              add [bx+si],al
00003E3E  0000              add [bx+si],al
00003E40  0000              add [bx+si],al
00003E42  0000              add [bx+si],al
00003E44  0000              add [bx+si],al
00003E46  0000              add [bx+si],al
00003E48  0000              add [bx+si],al
00003E4A  0000              add [bx+si],al
00003E4C  0000              add [bx+si],al
00003E4E  0000              add [bx+si],al
00003E50  0000              add [bx+si],al
00003E52  0000              add [bx+si],al
00003E54  0000              add [bx+si],al
00003E56  0000              add [bx+si],al
00003E58  0000              add [bx+si],al
00003E5A  0000              add [bx+si],al
00003E5C  0000              add [bx+si],al
00003E5E  0000              add [bx+si],al
00003E60  0000              add [bx+si],al
00003E62  0000              add [bx+si],al
00003E64  0000              add [bx+si],al
00003E66  0000              add [bx+si],al
00003E68  0000              add [bx+si],al
00003E6A  0000              add [bx+si],al
00003E6C  0000              add [bx+si],al
00003E6E  0000              add [bx+si],al
00003E70  0000              add [bx+si],al
00003E72  0000              add [bx+si],al
00003E74  0000              add [bx+si],al
00003E76  0000              add [bx+si],al
00003E78  0000              add [bx+si],al
00003E7A  0000              add [bx+si],al
00003E7C  0000              add [bx+si],al
00003E7E  0000              add [bx+si],al
00003E80  0000              add [bx+si],al
00003E82  0000              add [bx+si],al
00003E84  0000              add [bx+si],al
00003E86  0000              add [bx+si],al
00003E88  0000              add [bx+si],al
00003E8A  0000              add [bx+si],al
00003E8C  0000              add [bx+si],al
00003E8E  0000              add [bx+si],al
00003E90  0000              add [bx+si],al
00003E92  0000              add [bx+si],al
00003E94  0000              add [bx+si],al
00003E96  0000              add [bx+si],al
00003E98  0000              add [bx+si],al
00003E9A  0000              add [bx+si],al
00003E9C  0000              add [bx+si],al
00003E9E  0000              add [bx+si],al
00003EA0  0000              add [bx+si],al
00003EA2  0000              add [bx+si],al
00003EA4  0000              add [bx+si],al
00003EA6  0000              add [bx+si],al
00003EA8  7804              js 0x3eae
00003EAA  EF                out dx,ax
00003EAB  08660D            or [bp+0xd],ah
00003EAE  DC11              fcom qword [bx+di]
00003EB0  50                push ax
00003EB1  16                push ss
00003EB2  C21A33            ret 0x331a
00003EB5  1F                pop ds
00003EB6  A1230C            mov ax,[0xc23]
00003EB9  28742C            sub [si+0x2c],dh
00003EBC  D930              fnstenv [bx+si]
00003EBE  3A35              cmp dh,[di]
00003EC0  96                xchg ax,si
00003EC1  39EF              cmp di,bp
00003EC3  3D4242            cmp ax,0x4242
00003EC6  90                nop
00003EC7  46                inc si
00003EC8  D9                db 0xd9
00003EC9  4A                dec dx
00003ECA  1C4F              sbb al,0x4f
00003ECC  58                pop ax
00003ECD  53                push bx
00003ECE  8F                db 0x8f
00003ECF  57                push di
00003ED0  BE5BE6            mov si,0xe65b
00003ED3  5F                pop di
00003ED4  07                pop es
00003ED5  64206831          and [fs:bx+si+0x31],ch
00003ED9  6C                insb
00003EDA  397039            cmp [bx+si+0x39],si
00003EDD  742F              jz 0x3f0e
00003EDF  781C              js 0x3efd
00003EE1  7C00              jl 0x3ee3
00003EE3  80DA83            sbb dl,0x83
00003EE6  A9876D            test ax,0x6d87
00003EE9  8B27              mov sp,[bx]
00003EEB  8F                db 0x8f
00003EEC  D6                salc
00003EED  92                xchg ax,dx
00003EEE  7996              jns 0x3e86
00003EF0  119A9C9D          adc [bp+si-0x6264],bx
00003EF4  1BA18EA4          sbb sp,[bx+di-0x5b72]
00003EF8  F3A7              repe cmpsw
00003EFA  4C                dec sp
00003EFB  AB                stosw
00003EFC  97                xchg ax,di
00003EFD  AE                scasb
00003EFE  D5B1              aad 0xb1
00003F00  05B527            add ax,0x27b5
00003F03  B83ABB            mov ax,0xbb3a
00003F06  3F                aas
00003F07  BE35C1            mov si,0xc135
00003F0A  1BC4              sbb ax,sp
00003F0C  F3                rep
00003F0D  C6                db 0xc6
00003F0E  BBC973            mov bx,0x73c9
00003F11  CC                int3
00003F12  1CCF              sbb al,0xcf
00003F14  B4D1              mov ah,0xd1
00003F16  3CD4              cmp al,0xd4
00003F18  B3D6              mov bl,0xd6
00003F1A  1AD9              sbb bl,cl
00003F1C  6F                outsw
00003F1D  DB                db 0xdb
00003F1E  B4DD              mov ah,0xdd
00003F20  E7DF              out 0xdf,ax
00003F22  09E2              or dx,sp
00003F24  19E4              sbb sp,sp
00003F26  17                pop ss
00003F27  E604              out 0x4,al
00003F29  E8DEE9            call word 0x290a
00003F2C  A6                cmpsb
00003F2D  EB5C              jmp short 0x3f8b
00003F2F  ED                in ax,dx
00003F30  FF                db 0xff
00003F31  EE                out dx,al
00003F32  90                nop
00003F33  F00E              lock push cs
00003F35  F278F3            bnd js 0x3f2b
00003F38  D0                db 0xd0
00003F39  F4                hlt
00003F3A  15F647            adc ax,0x47f6
00003F3D  F765F8            mul word [di-0x8]
00003F40  70F9              jo 0x3f3b
00003F42  68FA4C            push word 0x4cfa
00003F45  FB                sti
00003F46  1CFC              sbb al,0xfc
00003F48  D9FC              frndint
00003F4A  82                db 0x82
00003F4B  FD                std
00003F4C  18FE              sbb dh,bh
00003F4E  99                cwd
00003F4F  FE07              inc byte [bx]
00003F51  FF60FF            jmp word [bx+si-0x1]
00003F54  A6                cmpsb
00003F55  FF                db 0xff
00003F56  D8FF              fdivr st7
00003F58  F6FF              idiv bh
00003F5A  FF                db 0xff
00003F5B  FF00              inc word [bx+si]
00003F5D  0203              add al,[bp+di]
00003F5F  0101              add [bx+di],ax
00003F61  00FF              add bh,bh
00003F63  0100              add [bx+si],ax
00003F65  00FF              add bh,bh
00003F67  FF00              inc word [bx+si]
00003F69  0001              add [bx+di],al
00003F6B  FF00              inc word [bx+si]
00003F6D  0001              add [bx+di],al
00003F6F  0100              add [bx+si],ax
00003F71  00FF              add bh,bh
00003F73  0100              add [bx+si],ax
00003F75  00FF              add bh,bh
00003F77  FF00              inc word [bx+si]
00003F79  0001              add [bx+di],al
00003F7B  FF00              inc word [bx+si]
00003F7D  0001              add [bx+di],al
00003F7F  01FF              add di,di
00003F81  FF                db 0xff
00003F82  FF                db 0xff
00003F83  FF                db 0xff
00003F84  FF                db 0xff
00003F85  FF                db 0xff
00003F86  FF                db 0xff
00003F87  FF00              inc word [bx+si]
00003F89  FB                sti
00003F8A  00FC              add ah,bh
00003F8C  00FD              add ch,bh
00003F8E  00FE              add dh,bh
00003F90  00FF              add bh,bh
00003F92  0000              add [bx+si],al
00003F94  0001              add [bx+di],al
00003F96  0002              add [bp+si],al
00003F98  0003              add [bp+di],al
00003F9A  0004              add [si],al
00003F9C  0005              add [di],al
00003F9E  01FC              add sp,di
00003FA0  01FD              add bp,di
00003FA2  0103              add [bp+di],ax
00003FA4  0104              add [si],ax
00003FA6  02FD              add bh,ch
00003FA8  0203              add al,[bp+di]
00003FAA  03FD              add di,bp
00003FAC  03FE              add di,si
00003FAE  03FF              add di,di
00003FB0  0300              add ax,[bx+si]
00003FB2  0301              add ax,[bx+di]
00003FB4  0302              add ax,[bp+si]
00003FB6  0303              add ax,[bp+di]
00003FB8  04FE              add al,0xfe
00003FBA  04FF              add al,0xff
00003FBC  0400              add al,0x0
00003FBE  0401              add al,0x1
00003FC0  0402              add al,0x2
00003FC2  05FE05            add ax,0x5fe
00003FC5  FF05              inc word [di]
00003FC7  0005              add [di],al
00003FC9  0105              add [di],ax
00003FCB  0206FF06          add al,[0x6ff]
00003FCF  00060107          add [0x701],al
00003FD3  FF07              inc word [bx]
00003FD5  0007              add [bx],al
00003FD7  0108              add [bx+si],cx
00003FD9  00AA0000          add [bp+si+0x0],ch
00003FDD  FC                cld
00003FDE  00FD              add ch,bh
00003FE0  00FE              add dh,bh
00003FE2  00FF              add bh,bh
00003FE4  0000              add [bx+si],al
00003FE6  01FC              add sp,di
00003FE8  0100              add [bx+si],ax
00003FEA  0101              add [bx+di],ax
00003FEC  0102              add [bp+si],ax
00003FEE  0103              add [bp+di],ax
00003FF0  0104              add [si],ax
00003FF2  02FC              add bh,ah
00003FF4  02FD              add bh,ch
00003FF6  0203              add al,[bp+di]
00003FF8  0204              add al,[si]
00003FFA  03FD              add di,bp
00003FFC  0302              add ax,[bp+si]
00003FFE  0303              add ax,[bp+di]
00004000  04FD              add al,0xfd
00004002  04FE              add al,0xfe
00004004  04FF              add al,0xff
00004006  0400              add al,0x0
00004008  0401              add al,0x1
0000400A  0402              add al,0x2
0000400C  05FD05            add ax,0x5fd
0000400F  FE05              inc byte [di]
00004011  FF05              inc word [di]
00004013  0005              add [di],al
00004015  0106FE06          add [0x6fe],ax
00004019  FF060007          inc word [0x700]
0000401D  FE07              inc byte [bx]
0000401F  FFAA00FF          jmp word far [bp+si-0x100]
00004023  FC                cld
00004024  FF                db 0xff
00004025  FD                std
00004026  FF                db 0xff
00004027  FE00              inc byte [bx+si]
00004029  FC                cld
0000402A  00FD              add ch,bh
0000402C  00FF              add bh,bh
0000402E  0000              add [bx+si],al
00004030  0001              add [bx+di],al
00004032  01FC              add sp,di
00004034  0102              add [bp+si],ax
00004036  0103              add [bp+di],ax
00004038  0104              add [si],ax
0000403A  02FC              add bh,ah
0000403C  02FD              add bh,ch
0000403E  0203              add al,[bp+di]
00004040  03FC              add di,sp
00004042  03FD              add di,bp
00004044  03FE              add di,si
00004046  03FF              add di,di
00004048  0301              add ax,[bx+di]
0000404A  0302              add ax,[bp+si]
0000404C  0303              add ax,[bp+di]
0000404E  04FD              add al,0xfd
00004050  04FE              add al,0xfe
00004052  04FF              add al,0xff
00004054  0400              add al,0x0
00004056  0401              add al,0x1
00004058  0402              add al,0x2
0000405A  05FD05            add ax,0x5fd
0000405D  FE05              inc byte [di]
0000405F  FF05              inc word [di]
00004061  0005              add [di],al
00004063  0106FD06          add [0x6fd],ax
00004067  FE06FF07          inc byte [0x7ff]
0000406B  FD                std
0000406C  07                pop es
0000406D  FE08              dec byte [bx+si]
0000406F  FD                std
00004070  AA                stosb
00004071  00FE              add dh,bh
00004073  FD                std
00004074  FF                db 0xff
00004075  FD                std
00004076  FF                db 0xff
00004077  FE                db 0xfe
00004078  FF                db 0xff
00004079  FF00              inc word [bx+si]
0000407B  FC                cld
0000407C  00FD              add ch,bh
0000407E  0000              add [bx+si],al
00004080  01FC              add sp,di
00004082  01FD              add bp,di
00004084  0101              add [bx+di],ax
00004086  0102              add [bp+si],ax
00004088  02FC              add bh,ah
0000408A  02FD              add bh,ch
0000408C  02FE              add bh,dh
0000408E  0202              add al,[bp+si]
00004090  0203              add al,[bp+di]
00004092  0204              add al,[si]
00004094  03FC              add di,sp
00004096  03FD              add di,bp
00004098  03FE              add di,si
0000409A  03FF              add di,di
0000409C  0300              add ax,[bx+si]
0000409E  0302              add ax,[bp+si]
000040A0  0303              add ax,[bp+di]
000040A2  0304              add ax,[si]
000040A4  04FC              add al,0xfc
000040A6  04FD              add al,0xfd
000040A8  04FE              add al,0xfe
000040AA  04FF              add al,0xff
000040AC  0400              add al,0x0
000040AE  0401              add al,0x1
000040B0  0402              add al,0x2
000040B2  05FC05            add ax,0x5fc
000040B5  FD                std
000040B6  05FE05            add ax,0x5fe
000040B9  FF05              inc word [di]
000040BB  0006FC06          add [0x6fc],al
000040BF  FD                std
000040C0  06                push es
000040C1  FE07              inc byte [bx]
000040C3  FC                cld
000040C4  07                pop es
000040C5  FD                std
000040C6  AA                stosb
000040C7  00FD              add ch,bh
000040C9  FC                cld
000040CA  FE                db 0xfe
000040CB  FC                cld
000040CC  FE                db 0xfe
000040CD  FD                std
000040CE  FE                db 0xfe
000040CF  FE                db 0xfe
000040D0  FF                db 0xff
000040D1  FC                cld
000040D2  FF                db 0xff
000040D3  FD                std
000040D4  FF                db 0xff
000040D5  FE                db 0xfe
000040D6  FF                db 0xff
000040D7  FF00              inc word [bx+si]
000040D9  FC                cld
000040DA  00FF              add bh,bh
000040DC  0000              add [bx+si],al
000040DE  01FC              add sp,di
000040E0  0101              add [bx+di],ax
000040E2  02FC              add bh,ah
000040E4  02FD              add bh,ch
000040E6  0202              add al,[bp+si]
000040E8  0203              add al,[bp+di]
000040EA  03FB              add di,bx
000040EC  03FC              add di,sp
000040EE  03FD              add di,bp
000040F0  03FE              add di,si
000040F2  03FF              add di,di
000040F4  0301              add ax,[bx+di]
000040F6  0302              add ax,[bp+si]
000040F8  0303              add ax,[bp+di]
000040FA  0304              add ax,[si]
000040FC  04FB              add al,0xfb
000040FE  04FC              add al,0xfc
00004100  04FD              add al,0xfd
00004102  04FE              add al,0xfe
00004104  04FF              add al,0xff
00004106  0400              add al,0x0
00004108  0401              add al,0x1
0000410A  0402              add al,0x2
0000410C  05FB05            add ax,0x5fb
0000410F  FC                cld
00004110  05FD05            add ax,0x5fd
00004113  FE05              inc byte [di]
00004115  FF06FB06          inc word [0x6fb]
00004119  FC                cld
0000411A  AA                stosb
0000411B  00FC              add ah,bh
0000411D  FC                cld
0000411E  FD                std
0000411F  FC                cld
00004120  FD                std
00004121  FD                std
00004122  FE                db 0xfe
00004123  FC                cld
00004124  FE                db 0xfe
00004125  FD                std
00004126  FE                db 0xfe
00004127  FE                db 0xfe
00004128  FF                db 0xff
00004129  FC                cld
0000412A  FF                db 0xff
0000412B  FD                std
0000412C  FF                db 0xff
0000412D  FF00              inc word [bx+si]
0000412F  FC                cld
00004130  0000              add [bx+si],al
00004132  01FB              add bx,di
00004134  01FC              add sp,di
00004136  0101              add [bx+di],ax
00004138  02FB              add bh,bl
0000413A  02FC              add bh,ah
0000413C  02FD              add bh,ch
0000413E  0202              add al,[bp+si]
00004140  03FB              add di,bx
00004142  03FC              add di,sp
00004144  03FD              add di,bp
00004146  03FE              add di,si
00004148  0301              add ax,[bx+di]
0000414A  0302              add ax,[bp+si]
0000414C  0303              add ax,[bp+di]
0000414E  04FB              add al,0xfb
00004150  04FC              add al,0xfc
00004152  04FD              add al,0xfd
00004154  04FE              add al,0xfe
00004156  04FF              add al,0xff
00004158  0400              add al,0x0
0000415A  0401              add al,0x1
0000415C  0402              add al,0x2
0000415E  0403              add al,0x3
00004160  0404              add al,0x4
00004162  05FB05            add ax,0x5fb
00004165  FC                cld
00004166  05FD05            add ax,0x5fd
00004169  FE05              inc byte [di]
0000416B  FFAA001A          jmp word far [bp+si+0x1a00]
0000416F  FE                db 0xfe
00004170  6E                outsb
00004171  FE                db 0xfe
00004172  B4FE              mov ah,0xfe
00004174  04FF              add al,0xff
00004176  5A                pop dx
00004177  FFAEFF00          jmp word far [bp+0xff]
0000417B  0000              add [bx+si],al
0000417D  0000              add [bx+si],al
0000417F  0000              add [bx+si],al
00004181  0000              add [bx+si],al
00004183  0000              add [bx+si],al
00004185  0000              add [bx+si],al
00004187  0000              add [bx+si],al
00004189  0000              add [bx+si],al
0000418B  0000              add [bx+si],al
0000418D  0000              add [bx+si],al
0000418F  0000              add [bx+si],al
00004191  0000              add [bx+si],al
00004193  0000              add [bx+si],al
00004195  0000              add [bx+si],al
00004197  0000              add [bx+si],al
00004199  0000              add [bx+si],al
0000419B  0000              add [bx+si],al
0000419D  0000              add [bx+si],al
0000419F  0000              add [bx+si],al
000041A1  0000              add [bx+si],al
000041A3  0000              add [bx+si],al
000041A5  0403              add al,0x3
000041A7  01060205          add [0x502],ax
000041AB  07                pop es
000041AC  00558B            add [di-0x75],dl
000041AF  EC                in al,dx
000041B0  55                push bp
000041B1  E9A401            jmp word 0x4358
000041B4  06                push es
000041B5  0001              add [bx+di],al
000041B7  0005              add [di],al
000041B9  0002              add [bp+si],al
000041BB  0005              add [di],al
000041BD  0003              add [bp+di],al
000041BF  0002              add [bp+si],al
000041C1  0004              add [si],al
000041C3  0003              add [bp+di],al
000041C5  0004              add [si],al
000041C7  00060004          add [0x400],al
000041CB  0007              add [bx],al
000041CD  0004              add [si],al
000041CF  0002              add [bp+si],al
000041D1  0005              add [di],al
000041D3  0003              add [bp+di],al
000041D5  0005              add [di],al
000041D7  0004              add [si],al
000041D9  0005              add [di],al
000041DB  0007              add [bx],al
000041DD  0005              add [di],al
000041DF  0002              add [bp+si],al
000041E1  00060003          add [0x300],al
000041E5  00060004          add [0x400],al
000041E9  00060007          add [0x700],al
000041ED  00060003          add [0x300],al
000041F1  0007              add [bx],al
000041F3  0004              add [si],al
000041F5  0007              add [bx],al
000041F7  0005              add [di],al
000041F9  0007              add [bx],al
000041FB  00060007          add [0x700],al
000041FF  0004              add [si],al
00004201  0003              add [bp+di],al
00004203  0004              add [si],al
00004205  0004              add [si],al
00004207  0003              add [bp+di],al
00004209  0003              add [bp+di],al
0000420B  0007              add [bx],al
0000420D  0001              add [bx+di],al
0000420F  0008              add [bx+si],cl
00004211  0001              add [bx+di],al
00004213  0009              add [bx+di],cl
00004215  0001              add [bx+di],al
00004217  000A              add [bp+si],cl
00004219  0001              add [bx+di],al
0000421B  000B              add [bp+di],cl
0000421D  0001              add [bx+di],al
0000421F  0004              add [si],al
00004221  0002              add [bp+si],al
00004223  0005              add [di],al
00004225  0002              add [bp+si],al
00004227  00060002          add [0x200],al
0000422B  000C              add [si],cl
0000422D  0002              add [bp+si],al
0000422F  000D              add [di],cl
00004231  0002              add [bp+si],al
00004233  0003              add [bp+di],al
00004235  0003              add [bp+di],al
00004237  000E0003          add [0x300],cl
0000423B  000F              add [bx],cl
0000423D  0003              add [bp+di],al
0000423F  0002              add [bp+si],al
00004241  0004              add [si],al
00004243  0005              add [di],al
00004245  0004              add [si],al
00004247  00060004          add [0x400],al
0000424B  000C              add [si],cl
0000424D  0004              add [si],al
0000424F  000D              add [di],cl
00004251  0004              add [si],al
00004253  000F              add [bx],cl
00004255  0004              add [si],al
00004257  0002              add [bp+si],al
00004259  0005              add [di],al
0000425B  0004              add [si],al
0000425D  0005              add [di],al
0000425F  0005              add [di],al
00004261  0005              add [di],al
00004263  00060005          add [0x500],al
00004267  0008              add [bx+si],cl
00004269  0005              add [di],al
0000426B  0009              add [bx+di],cl
0000426D  0005              add [di],al
0000426F  000C              add [si],cl
00004271  0005              add [di],al
00004273  000D              add [di],cl
00004275  0005              add [di],al
00004277  0010              add [bx+si],dl
00004279  0005              add [di],al
0000427B  0001              add [bx+di],al
0000427D  00060004          add [0x400],al
00004281  00060005          add [0x500],al
00004285  00060008          add [0x800],al
00004289  00060009          add [0x900],al
0000428D  0006000A          add [0xa00],al
00004291  0006000D          add [0xd00],al
00004295  00060010          add [0x1000],al
00004299  00060001          add [0x100],al
0000429D  0007              add [bx],al
0000429F  0008              add [bx+si],cl
000042A1  0007              add [bx],al
000042A3  0009              add [bx+di],cl
000042A5  0007              add [bx],al
000042A7  000A              add [bp+si],cl
000042A9  0007              add [bx],al
000042AB  0010              add [bx+si],dl
000042AD  0007              add [bx],al
000042AF  0001              add [bx+di],al
000042B1  0008              add [bx+si],cl
000042B3  0010              add [bx+si],dl
000042B5  0008              add [bx+si],cl
000042B7  0001              add [bx+di],al
000042B9  0009              add [bx+di],cl
000042BB  0005              add [di],al
000042BD  0009              add [bx+di],cl
000042BF  0007              add [bx],al
000042C1  0009              add [bx+di],cl
000042C3  0009              add [bx+di],cl
000042C5  0009              add [bx+di],cl
000042C7  000A              add [bp+si],cl
000042C9  0009              add [bx+di],cl
000042CB  0010              add [bx+si],dl
000042CD  0009              add [bx+di],cl
000042CF  0002              add [bp+si],al
000042D1  000A              add [bp+si],cl
000042D3  0003              add [bp+di],al
000042D5  000A              add [bp+si],cl
000042D7  0004              add [si],al
000042D9  000A              add [bp+si],cl
000042DB  0006000A          add [0xa00],al
000042DF  0008              add [bx+si],cl
000042E1  000A              add [bp+si],cl
000042E3  000C              add [si],cl
000042E5  000A              add [bp+si],cl
000042E7  000D              add [di],cl
000042E9  000A              add [bp+si],cl
000042EB  000E000A          add [0xa00],cl
000042EF  000F              add [bx],cl
000042F1  000A              add [bp+si],cl
000042F3  0004              add [si],al
000042F5  000B              add [bp+di],cl
000042F7  0006000B          add [0xb00],al
000042FB  0008              add [bx+si],cl
000042FD  000B              add [bp+di],cl
000042FF  000C              add [si],cl
00004301  000B              add [bp+di],cl
00004303  0004              add [si],al
00004305  000C              add [si],cl
00004307  0006000C          add [0xc00],al
0000430B  000D              add [di],cl
0000430D  000C              add [si],cl
0000430F  0003              add [bp+di],al
00004311  000D              add [di],cl
00004313  000E000D          add [0xd00],cl
00004317  0003              add [bp+di],al
00004319  000E0005          add [0x500],cl
0000431D  000E0007          add [0x700],cl
00004321  000E000E          add [0xe00],cl
00004325  000E0003          add [0x300],cl
00004329  000F              add [bx],cl
0000432B  000E000F          add [0xf00],cl
0000432F  0004              add [si],al
00004331  0010              add [bx+si],dl
00004333  0005              add [di],al
00004335  0010              add [bx+si],dl
00004337  00060010          add [0x1000],al
0000433B  0007              add [bx],al
0000433D  0010              add [bx+si],dl
0000433F  0008              add [bx+si],cl
00004341  0010              add [bx+si],dl
00004343  0009              add [bx+di],cl
00004345  0010              add [bx+si],dl
00004347  000A              add [bp+si],cl
00004349  0010              add [bx+si],dl
0000434B  000B              add [bp+di],cl
0000434D  0010              add [bx+si],dl
0000434F  000C              add [si],cl
00004351  0010              add [bx+si],dl
00004353  000D              add [di],cl
00004355  0010              add [bx+si],dl
00004357  0083EC05          add [bp+di+0x5ec],al
0000435B  B90400            mov cx,0x4
0000435E  E870CC            call word 0xfd1
00004361  E83EEA            call word 0x2da2
00004364  B90600            mov cx,0x6
00004367  E867CC            call word 0xfd1
0000436A  B80200            mov ax,0x2
0000436D  50                push ax
0000436E  E83AEA            call word 0x2dab
00004371  B90600            mov cx,0x6
00004374  E85ACC            call word 0xfd1
00004377  B80000            mov ax,0x0
0000437A  50                push ax
0000437B  E830EA            call word 0x2dae
0000437E  B80100            mov ax,0x1
00004381  50                push ax
00004382  B82C00            mov ax,0x2c
00004385  59                pop cx
00004386  91                xchg ax,cx
00004387  2BC8              sub cx,ax
00004389  7D03              jnl 0x438e
0000438B  E94600            jmp word 0x43d4
0000438E  41                inc cx
0000438F  8846FD            mov [bp-0x3],al
00004392  51                push cx
00004393  B90A00            mov cx,0xa
00004396  E838CC            call word 0xfd1
00004399  8A46FD            mov al,[bp-0x3]
0000439C  32E4              xor ah,ah
0000439E  D1E0              shl ax,1
000043A0  97                xchg ax,di
000043A1  2E8B85B241        mov ax,[cs:di+0x41b2]
000043A6  50                push ax
000043A7  8A46FD            mov al,[bp-0x3]
000043AA  32E4              xor ah,ah
000043AC  050100            add ax,0x1
000043AF  D1E0              shl ax,1
000043B1  97                xchg ax,di
000043B2  2E8B85B241        mov ax,[cs:di+0x41b2]
000043B7  50                push ax
000043B8  B80300            mov ax,0x3
000043BB  50                push ax
000043BC  E8F5E9            call word 0x2db4
000043BF  8A46FD            mov al,[bp-0x3]
000043C2  32E4              xor ah,ah
000043C4  050100            add ax,0x1
000043C7  8846FD            mov [bp-0x3],al
000043CA  59                pop cx
000043CB  49                dec cx
000043CC  7406              jz 0x43d4
000043CE  FE46FD            inc byte [bp-0x3]
000043D1  E9BEFF            jmp word 0x4392
000043D4  B91000            mov cx,0x10
000043D7  E8F7CB            call word 0xfd1
000043DA  BF6B02            mov di,0x26b
000043DD  1E                push ds
000043DE  57                push di
000043DF  B80100            mov ax,0x1
000043E2  50                push ax
000043E3  B80100            mov ax,0x1
000043E6  50                push ax
000043E7  B80800            mov ax,0x8
000043EA  50                push ax
000043EB  B80800            mov ax,0x8
000043EE  50                push ax
000043EF  E8D1E9            call word 0x2dc3
000043F2  B90400            mov cx,0x4
000043F5  E8D9CB            call word 0xfd1
000043F8  E8A7E9            call word 0x2da2
000043FB  B90600            mov cx,0x6
000043FE  E8D0CB            call word 0xfd1
00004401  B80200            mov ax,0x2
00004404  50                push ax
00004405  E8A3E9            call word 0x2dab
00004408  B80100            mov ax,0x1
0000440B  50                push ax
0000440C  B8A600            mov ax,0xa6
0000440F  59                pop cx
00004410  91                xchg ax,cx
00004411  2BC8              sub cx,ax
00004413  7D03              jnl 0x4418
00004415  E94600            jmp word 0x445e
00004418  41                inc cx
00004419  8846FD            mov [bp-0x3],al
0000441C  51                push cx
0000441D  B90A00            mov cx,0xa
00004420  E8AECB            call word 0xfd1
00004423  8A46FD            mov al,[bp-0x3]
00004426  32E4              xor ah,ah
00004428  D1E0              shl ax,1
0000442A  97                xchg ax,di
0000442B  2E8B850A42        mov ax,[cs:di+0x420a]
00004430  50                push ax
00004431  8A46FD            mov al,[bp-0x3]
00004434  32E4              xor ah,ah
00004436  050100            add ax,0x1
00004439  D1E0              shl ax,1
0000443B  97                xchg ax,di
0000443C  2E8B850A42        mov ax,[cs:di+0x420a]
00004441  50                push ax
00004442  B80200            mov ax,0x2
00004445  50                push ax
00004446  E86BE9            call word 0x2db4
00004449  8A46FD            mov al,[bp-0x3]
0000444C  32E4              xor ah,ah
0000444E  050100            add ax,0x1
00004451  8846FD            mov [bp-0x3],al
00004454  59                pop cx
00004455  49                dec cx
00004456  7406              jz 0x445e
00004458  FE46FD            inc byte [bp-0x3]
0000445B  E9BEFF            jmp word 0x441c
0000445E  B90C00            mov cx,0xc
00004461  E86DCB            call word 0xfd1
00004464  B80900            mov ax,0x9
00004467  50                push ax
00004468  B80A00            mov ax,0xa
0000446B  50                push ax
0000446C  B80100            mov ax,0x1
0000446F  50                push ax
00004470  B80200            mov ax,0x2
00004473  50                push ax
00004474  E858E9            call word 0x2dcf
00004477  B91000            mov cx,0x10
0000447A  E854CB            call word 0xfd1
0000447D  BF9302            mov di,0x293
00004480  1E                push ds
00004481  57                push di
00004482  B80100            mov ax,0x1
00004485  50                push ax
00004486  B80100            mov ax,0x1
00004489  50                push ax
0000448A  B81000            mov ax,0x10
0000448D  50                push ax
0000448E  B81000            mov ax,0x10
00004491  50                push ax
00004492  E82EE9            call word 0x2dc3
00004495  B90400            mov cx,0x4
00004498  E836CB            call word 0xfd1
0000449B  E804E9            call word 0x2da2
0000449E  B90600            mov cx,0x6
000044A1  E82DCB            call word 0xfd1
000044A4  B80200            mov ax,0x2
000044A7  50                push ax
000044A8  E800E9            call word 0x2dab
000044AB  BF1505            mov di,0x515
000044AE  1E                push ds
000044AF  57                push di
000044B0  E832CD            call word 0x11e5
000044B3  097363            or [bp+di+0x63],si
000044B6  6F                outsw
000044B7  7265              jc 0x451e
000044B9  732E              jnc 0x44e9
000044BB  676E              a32 outsb
000044BD  E804E5            call word 0x29c4
000044C0  BF1505            mov di,0x515
000044C3  1E                push ds
000044C4  B91800            mov cx,0x18
000044C7  E8FFE4            call word 0x29c9
000044CA  E84ECB            call word 0x101b
000044CD  3D0000            cmp ax,0x0
000044D0  7403              jz 0x44d5
000044D2  E94F00            jmp word 0x4524
000044D5  B80100            mov ax,0x1
000044D8  50                push ax
000044D9  B80A00            mov ax,0xa
000044DC  59                pop cx
000044DD  91                xchg ax,cx
000044DE  2BC8              sub cx,ax
000044E0  7D03              jnl 0x44e5
000044E2  E93C00            jmp word 0x4521
000044E5  41                inc cx
000044E6  8846FD            mov [bp-0x3],al
000044E9  51                push cx
000044EA  BF1505            mov di,0x515
000044ED  1E                push ds
000044EE  E82FE5            call word 0x2a20
000044F1  8A46FD            mov al,[bp-0x3]
000044F4  32E4              xor ah,ah
000044F6  B91800            mov cx,0x18
000044F9  F7E1              mul cx
000044FB  97                xchg ax,di
000044FC  81C71D03          add di,0x31d
00004500  1E                push ds
00004501  E839E5            call word 0x2a3d
00004504  8A46FD            mov al,[bp-0x3]
00004507  32E4              xor ah,ah
00004509  B91800            mov cx,0x18
0000450C  F7E1              mul cx
0000450E  97                xchg ax,di
0000450F  81C70D04          add di,0x40d
00004513  1E                push ds
00004514  E826E5            call word 0x2a3d
00004517  59                pop cx
00004518  49                dec cx
00004519  7406              jz 0x4521
0000451B  FE46FD            inc byte [bp-0x3]
0000451E  E9C8FF            jmp word 0x44e9
00004521  E9CD00            jmp word 0x45f1
00004524  B80100            mov ax,0x1
00004527  50                push ax
00004528  B80A00            mov ax,0xa
0000452B  59                pop cx
0000452C  91                xchg ax,cx
0000452D  2BC8              sub cx,ax
0000452F  7D03              jnl 0x4534
00004531  E9BD00            jmp word 0x45f1
00004534  41                inc cx
00004535  8846FD            mov [bp-0x3],al
00004538  51                push cx
00004539  8A46FD            mov al,[bp-0x3]
0000453C  32E4              xor ah,ah
0000453E  B91800            mov cx,0x18
00004541  F7E1              mul cx
00004543  97                xchg ax,di
00004544  81C71D03          add di,0x31d
00004548  1E                push ds
00004549  57                push di
0000454A  E898CC            call word 0x11e5
0000454D  07                pop es
0000454E  47                inc di
0000454F  52                push dx
00004550  4F                dec di
00004551  53                push bx
00004552  4E                dec si
00004553  55                push bp
00004554  4C                dec sp
00004555  B10A              mov cl,0xa
00004557  E8A1CC            call word 0x11fb
0000455A  8A46FD            mov al,[bp-0x3]
0000455D  32E4              xor ah,ah
0000455F  B91800            mov cx,0x18
00004562  F7E1              mul cx
00004564  97                xchg ax,di
00004565  81C70D04          add di,0x40d
00004569  1E                push ds
0000456A  57                push di
0000456B  E877CC            call word 0x11e5
0000456E  07                pop es
0000456F  47                inc di
00004570  52                push dx
00004571  4F                dec di
00004572  53                push bx
00004573  4E                dec si
00004574  55                push bp
00004575  4C                dec sp
00004576  B10A              mov cl,0xa
00004578  E880CC            call word 0x11fb
0000457B  8A46FD            mov al,[bp-0x3]
0000457E  32E4              xor ah,ah
00004580  B91800            mov cx,0x18
00004583  F7E1              mul cx
00004585  97                xchg ax,di
00004586  B80000            mov ax,0x0
00004589  89852803          mov [di+0x328],ax
0000458D  8A46FD            mov al,[bp-0x3]
00004590  32E4              xor ah,ah
00004592  B91800            mov cx,0x18
00004595  F7E1              mul cx
00004597  97                xchg ax,di
00004598  B80000            mov ax,0x0
0000459B  89851804          mov [di+0x418],ax
0000459F  8A46FD            mov al,[bp-0x3]
000045A2  32E4              xor ah,ah
000045A4  B91800            mov cx,0x18
000045A7  F7E1              mul cx
000045A9  97                xchg ax,di
000045AA  81C72A03          add di,0x32a
000045AE  1E                push ds
000045AF  57                push di
000045B0  E832CC            call word 0x11e5
000045B3  0A30              or dh,[bx+si]
000045B5  312F              xor [bx],bp
000045B7  3031              xor [bx+di],dh
000045B9  2F                das
000045BA  3230              xor dh,[bx+si]
000045BC  3030              xor [bx+si],dh
000045BE  B10A              mov cl,0xa
000045C0  E838CC            call word 0x11fb
000045C3  8A46FD            mov al,[bp-0x3]
000045C6  32E4              xor ah,ah
000045C8  B91800            mov cx,0x18
000045CB  F7E1              mul cx
000045CD  97                xchg ax,di
000045CE  81C71A04          add di,0x41a
000045D2  1E                push ds
000045D3  57                push di
000045D4  E80ECC            call word 0x11e5
000045D7  0A30              or dh,[bx+si]
000045D9  312F              xor [bx],bp
000045DB  3031              xor [bx+di],dh
000045DD  2F                das
000045DE  3230              xor dh,[bx+si]
000045E0  3030              xor [bx+si],dh
000045E2  B10A              mov cl,0xa
000045E4  E814CC            call word 0x11fb
000045E7  59                pop cx
000045E8  49                dec cx
000045E9  7406              jz 0x45f1
000045EB  FE46FD            inc byte [bp-0x3]
000045EE  E947FF            jmp word 0x4538
000045F1  E90000            jmp word 0x45f4
000045F4  8BE5              mov sp,bp
000045F6  5D                pop bp
000045F7  C3                ret
000045F8  55                push bp
000045F9  8BEC              mov bp,sp
000045FB  55                push bp
000045FC  E90000            jmp word 0x45ff
000045FF  83EC06            sub sp,byte +0x6
00004602  B90400            mov cx,0x4
00004605  E8C9C9            call word 0xfd1
00004608  E897E7            call word 0x2da2
0000460B  B90600            mov cx,0x6
0000460E  E8C0C9            call word 0xfd1
00004611  B80200            mov ax,0x2
00004614  50                push ax
00004615  E893E7            call word 0x2dab
00004618  B90600            mov cx,0x6
0000461B  E8B3C9            call word 0xfd1
0000461E  B80000            mov ax,0x0
00004621  50                push ax
00004622  E889E7            call word 0x2dae
00004625  B80E00            mov ax,0xe
00004628  E890BD            call word 0x3bb
0000462B  B90E00            mov cx,0xe
0000462E  E8A0C9            call word 0xfd1
00004631  B80100            mov ax,0x1
00004634  50                push ax
00004635  B80800            mov ax,0x8
00004638  50                push ax
00004639  B80100            mov ax,0x1
0000463C  50                push ax
0000463D  B8C700            mov ax,0xc7
00004640  50                push ax
00004641  B80100            mov ax,0x1
00004644  50                push ax
00004645  E86FE7            call word 0x2db7
00004648  B90E00            mov cx,0xe
0000464B  E883C9            call word 0xfd1
0000464E  B80700            mov ax,0x7
00004651  50                push ax
00004652  B80F00            mov ax,0xf
00004655  50                push ax
00004656  B80700            mov ax,0x7
00004659  50                push ax
0000465A  B8C000            mov ax,0xc0
0000465D  50                push ax
0000465E  B80100            mov ax,0x1
00004661  50                push ax
00004662  E852E7            call word 0x2db7
00004665  B90E00            mov cx,0xe
00004668  E866C9            call word 0xfd1
0000466B  B80100            mov ax,0x1
0000466E  50                push ax
0000466F  B80800            mov ax,0x8
00004672  50                push ax
00004673  B83F01            mov ax,0x13f
00004676  50                push ax
00004677  B80800            mov ax,0x8
0000467A  50                push ax
0000467B  B80100            mov ax,0x1
0000467E  50                push ax
0000467F  E835E7            call word 0x2db7
00004682  B90E00            mov cx,0xe
00004685  E849C9            call word 0xfd1
00004688  B80700            mov ax,0x7
0000468B  50                push ax
0000468C  B80F00            mov ax,0xf
0000468F  50                push ax
00004690  B83801            mov ax,0x138
00004693  50                push ax
00004694  B80F00            mov ax,0xf
00004697  50                push ax
00004698  B80100            mov ax,0x1
0000469B  50                push ax
0000469C  E818E7            call word 0x2db7
0000469F  B90E00            mov cx,0xe
000046A2  E82CC9            call word 0xfd1
000046A5  B80700            mov ax,0x7
000046A8  50                push ax
000046A9  B8C000            mov ax,0xc0
000046AC  50                push ax
000046AD  B83801            mov ax,0x138
000046B0  50                push ax
000046B1  B8C000            mov ax,0xc0
000046B4  50                push ax
000046B5  B80100            mov ax,0x1
000046B8  50                push ax
000046B9  E8FBE6            call word 0x2db7
000046BC  B90E00            mov cx,0xe
000046BF  E80FC9            call word 0xfd1
000046C2  B80100            mov ax,0x1
000046C5  50                push ax
000046C6  B8C700            mov ax,0xc7
000046C9  50                push ax
000046CA  B83F01            mov ax,0x13f
000046CD  50                push ax
000046CE  B8C700            mov ax,0xc7
000046D1  50                push ax
000046D2  B80100            mov ax,0x1
000046D5  50                push ax
000046D6  E8DEE6            call word 0x2db7
000046D9  B90E00            mov cx,0xe
000046DC  E8F2C8            call word 0xfd1
000046DF  B83801            mov ax,0x138
000046E2  50                push ax
000046E3  B80F00            mov ax,0xf
000046E6  50                push ax
000046E7  B83801            mov ax,0x138
000046EA  50                push ax
000046EB  B8C000            mov ax,0xc0
000046EE  50                push ax
000046EF  B80100            mov ax,0x1
000046F2  50                push ax
000046F3  E8C1E6            call word 0x2db7
000046F6  B90E00            mov cx,0xe
000046F9  E8D5C8            call word 0xfd1
000046FC  B83F01            mov ax,0x13f
000046FF  50                push ax
00004700  B80800            mov ax,0x8
00004703  50                push ax
00004704  B83F01            mov ax,0x13f
00004707  50                push ax
00004708  B8C700            mov ax,0xc7
0000470B  50                push ax
0000470C  B80100            mov ax,0x1
0000470F  50                push ax
00004710  E8A4E6            call word 0x2db7
00004713  B90C00            mov cx,0xc
00004716  E8B8C8            call word 0xfd1
00004719  B80A00            mov ax,0xa
0000471C  50                push ax
0000471D  B80A00            mov ax,0xa
00004720  50                push ax
00004721  B80100            mov ax,0x1
00004724  50                push ax
00004725  B80300            mov ax,0x3
00004728  50                push ax
00004729  E8A3E6            call word 0x2dcf
0000472C  B80100            mov ax,0x1
0000472F  8946FC            mov [bp-0x4],ax
00004732  E8DFC7            call word 0xf14
00004735  B80A00            mov ax,0xa
00004738  E880BC            call word 0x3bb
0000473B  B81400            mov ax,0x14
0000473E  50                push ax
0000473F  B80C00            mov ax,0xc
00004742  E865C6            call word 0xdaa
00004745  E810DE            call word 0x2558
00004748  E812E2            call word 0x295d
0000474B  034040            add ax,[bx+si+0x40]
0000474E  40                inc ax
0000474F  B82600            mov ax,0x26
00004752  E885C9            call word 0x10da
00004755  B90800            mov cx,0x8
00004758  F7E9              imul cx
0000475A  050800            add ax,0x8
0000475D  8946FA            mov [bp-0x6],ax
00004760  B81600            mov ax,0x16
00004763  E874C9            call word 0x10da
00004766  B90800            mov cx,0x8
00004769  F7E9              imul cx
0000476B  051800            add ax,0x18
0000476E  8946F8            mov [bp-0x8],ax
00004771  B90A00            mov cx,0xa
00004774  E85AC8            call word 0xfd1
00004777  4C                dec sp
00004778  4C                dec sp
00004779  8B46FA            mov ax,[bp-0x6]
0000477C  050300            add ax,0x3
0000477F  50                push ax
00004780  8B46F8            mov ax,[bp-0x8]
00004783  2D0500            sub ax,0x5
00004786  50                push ax
00004787  E83FE6            call word 0x2dc9
0000478A  3D0000            cmp ax,0x0
0000478D  B80100            mov ax,0x1
00004790  7401              jz 0x4793
00004792  48                dec ax
00004793  50                push ax
00004794  B90A00            mov cx,0xa
00004797  E837C8            call word 0xfd1
0000479A  4C                dec sp
0000479B  4C                dec sp
0000479C  8B46FA            mov ax,[bp-0x6]
0000479F  050B00            add ax,0xb
000047A2  50                push ax
000047A3  8B46F8            mov ax,[bp-0x8]
000047A6  2D0500            sub ax,0x5
000047A9  50                push ax
000047AA  E81CE6            call word 0x2dc9
000047AD  3D0000            cmp ax,0x0
000047B0  B80100            mov ax,0x1
000047B3  7401              jz 0x47b6
000047B5  48                dec ax
000047B6  59                pop cx
000047B7  23C1              and ax,cx
000047B9  50                push ax
000047BA  B90A00            mov cx,0xa
000047BD  E811C8            call word 0xfd1
000047C0  4C                dec sp
000047C1  4C                dec sp
000047C2  8B46FA            mov ax,[bp-0x6]
000047C5  050300            add ax,0x3
000047C8  50                push ax
000047C9  8B46F8            mov ax,[bp-0x8]
000047CC  2D0D00            sub ax,0xd
000047CF  50                push ax
000047D0  E8F6E5            call word 0x2dc9
000047D3  3D0000            cmp ax,0x0
000047D6  B80100            mov ax,0x1
000047D9  7401              jz 0x47dc
000047DB  48                dec ax
000047DC  59                pop cx
000047DD  23C1              and ax,cx
000047DF  50                push ax
000047E0  B90A00            mov cx,0xa
000047E3  E8EBC7            call word 0xfd1
000047E6  4C                dec sp
000047E7  4C                dec sp
000047E8  8B46FA            mov ax,[bp-0x6]
000047EB  050B00            add ax,0xb
000047EE  50                push ax
000047EF  8B46F8            mov ax,[bp-0x8]
000047F2  2D0D00            sub ax,0xd
000047F5  50                push ax
000047F6  E8D0E5            call word 0x2dc9
000047F9  3D0000            cmp ax,0x0
000047FC  B80100            mov ax,0x1
000047FF  7401              jz 0x4802
00004801  48                dec ax
00004802  59                pop cx
00004803  23C1              and ax,cx
00004805  0BC0              or ax,ax
00004807  7503              jnz 0x480c
00004809  E943FF            jmp word 0x474f
0000480C  B90C00            mov cx,0xc
0000480F  E8BFC7            call word 0xfd1
00004812  BF9302            mov di,0x293
00004815  1E                push ds
00004816  57                push di
00004817  8B46FA            mov ax,[bp-0x6]
0000481A  50                push ax
0000481B  8B46F8            mov ax,[bp-0x8]
0000481E  2D0100            sub ax,0x1
00004821  50                push ax
00004822  E8A1E5            call word 0x2dc6
00004825  8B46FC            mov ax,[bp-0x4]
00004828  050100            add ax,0x1
0000482B  8946FC            mov [bp-0x4],ax
0000482E  8B46FC            mov ax,[bp-0x4]
00004831  50                push ax
00004832  B80100            mov ax,0x1
00004835  50                push ax
00004836  B80300            mov ax,0x3
00004839  50                push ax
0000483A  A06002            mov al,[0x260]
0000483D  32E4              xor ah,ah
0000483F  59                pop cx
00004840  F7E9              imul cx
00004842  59                pop cx
00004843  03C1              add ax,cx
00004845  59                pop cx
00004846  91                xchg ax,cx
00004847  3BC1              cmp ax,cx
00004849  7F03              jg 0x484e
0000484B  E901FF            jmp word 0x474f
0000484E  B80100            mov ax,0x1
00004851  8946FC            mov [bp-0x4],ax
00004854  B82600            mov ax,0x26
00004857  E880C8            call word 0x10da
0000485A  B90800            mov cx,0x8
0000485D  F7E9              imul cx
0000485F  050800            add ax,0x8
00004862  8946FA            mov [bp-0x6],ax
00004865  B81600            mov ax,0x16
00004868  E86FC8            call word 0x10da
0000486B  B90800            mov cx,0x8
0000486E  F7E9              imul cx
00004870  051800            add ax,0x18
00004873  8946F8            mov [bp-0x8],ax
00004876  B90A00            mov cx,0xa
00004879  E855C7            call word 0xfd1
0000487C  4C                dec sp
0000487D  4C                dec sp
0000487E  8B46FA            mov ax,[bp-0x6]
00004881  050300            add ax,0x3
00004884  50                push ax
00004885  8B46F8            mov ax,[bp-0x8]
00004888  2D0500            sub ax,0x5
0000488B  50                push ax
0000488C  E83AE5            call word 0x2dc9
0000488F  3D0000            cmp ax,0x0
00004892  7403              jz 0x4897
00004894  E9BDFF            jmp word 0x4854
00004897  B90C00            mov cx,0xc
0000489A  E834C7            call word 0xfd1
0000489D  BF6B02            mov di,0x26b
000048A0  1E                push ds
000048A1  57                push di
000048A2  8B46FA            mov ax,[bp-0x6]
000048A5  50                push ax
000048A6  8B46F8            mov ax,[bp-0x8]
000048A9  2D0100            sub ax,0x1
000048AC  50                push ax
000048AD  E816E5            call word 0x2dc6
000048B0  8B46FC            mov ax,[bp-0x4]
000048B3  050100            add ax,0x1
000048B6  8946FC            mov [bp-0x4],ax
000048B9  8B46FC            mov ax,[bp-0x4]
000048BC  50                push ax
000048BD  B80500            mov ax,0x5
000048C0  50                push ax
000048C1  B80500            mov ax,0x5
000048C4  50                push ax
000048C5  A06002            mov al,[0x260]
000048C8  32E4              xor ah,ah
000048CA  59                pop cx
000048CB  F7E9              imul cx
000048CD  59                pop cx
000048CE  03C1              add ax,cx
000048D0  59                pop cx
000048D1  91                xchg ax,cx
000048D2  3BC1              cmp ax,cx
000048D4  7F03              jg 0x48d9
000048D6  E97BFF            jmp word 0x4854
000048D9  B81400            mov ax,0x14
000048DC  50                push ax
000048DD  B80C00            mov ax,0xc
000048E0  E8C7C4            call word 0xdaa
000048E3  E872DC            call word 0x2558
000048E6  E874E0            call word 0x295d
000048E9  0320              add sp,[bx+si]
000048EB  2020              and [bx+si],ah
000048ED  E90000            jmp word 0x48f0
000048F0  8BE5              mov sp,bp
000048F2  5D                pop bp
000048F3  C3                ret
000048F4  55                push bp
000048F5  8BEC              mov bp,sp
000048F7  55                push bp
000048F8  E90000            jmp word 0x48fb
000048FB  4C                dec sp
000048FC  B80100            mov ax,0x1
000048FF  E8D7B9            call word 0x2d9
00004902  B80F00            mov ax,0xf
00004905  50                push ax
00004906  B80200            mov ax,0x2
00004909  E89EC4            call word 0xdaa
0000490C  B81F00            mov ax,0x1f
0000490F  E8A9BA            call word 0x3bb
00004912  E843DC            call word 0x2558
00004915  E845E0            call word 0x295d
00004918  094720            or [bx+0x20],ax
0000491B  4E                dec si
0000491C  204120            and [bx+di+0x20],al
0000491F  46                inc si
00004920  2055B8            and [di-0x48],dl
00004923  0A00              or al,[bx+si]
00004925  E893BA            call word 0x3bb
00004928  B80300            mov ax,0x3
0000492B  50                push ax
0000492C  B80400            mov ax,0x4
0000492F  50                push ax
00004930  B82500            mov ax,0x25
00004933  50                push ax
00004934  B81700            mov ax,0x17
00004937  E853BA            call word 0x38d
0000493A  B80100            mov ax,0x1
0000493D  50                push ax
0000493E  B80100            mov ax,0x1
00004941  E866C4            call word 0xdaa
00004944  E811DC            call word 0x2558
00004947  E813E0            call word 0x295d
0000494A  43                inc bx
0000494B  2020              and [bx+si],ah
0000494D  20566F            and [bp+0x6f],dl
00004950  7573              jnz 0x49c5
00004952  20887465          and [bx+si+0x6574],cl
00004956  7320              jnc 0x4978
00004958  756E              jnz 0x49c8
0000495A  652020            and [gs:bx+si],ah
0000495D  43                inc bx
0000495E  48                dec ax
0000495F  45                inc bp
00004960  4E                dec si
00004961  49                dec cx
00004962  4C                dec sp
00004963  4C                dec sp
00004964  45                inc bp
00004965  206574            and [di+0x74],ah
00004968  2020              and [bx+si],ah
0000496A  766F              jna 0x49db
0000496C  7573              jnz 0x49e1
0000496E  64657665          gs jna 0x49d7
00004972  7A20              jpe 0x4994
00004974  6D                insw
00004975  61                popaw
00004976  6E                outsb
00004977  67657220          gs jc 0x499b
0000497B  206C65            and [si+0x65],ch
0000497E  2020              and [bx+si],ah
00004980  706C              jo 0x49ee
00004982  7573              jnz 0x49f7
00004984  2020              and [bx+si],ah
00004986  706F              jo 0x49f7
00004988  7373              jnc 0x49fd
0000498A  69626C65E8        imul sp,[bp+si+0x6c],word 0xe865
0000498F  CC                int3
00004990  DF3F              fistp qword [bx]
00004992  206465            and [si+0x65],ah
00004995  636572            arpl [di+0x72],sp
00004998  697365732C        imul si,[bp+di+0x65],word 0x2c73
0000499D  204D41            and [di+0x41],cl
000049A0  49                dec cx
000049A1  53                push bx
000049A2  20746F            and [si+0x6f],dh
000049A5  7574              jnz 0x4a1b
000049A7  20636F            and [bp+di+0x6f],ah
000049AA  6E                outsb
000049AB  7461              jz 0x4a0e
000049AD  637420            arpl [si+0x20],si
000049B0  61                popaw
000049B1  7665              jna 0x4a18
000049B3  6320              arpl [bx+si],sp
000049B5  6C                insb
000049B6  657343            gs jnc 0x49fc
000049B9  48                dec ax
000049BA  41                inc cx
000049BB  4D                dec bp
000049BC  50                push ax
000049BD  49                dec cx
000049BE  47                inc di
000049BF  4E                dec si
000049C0  4F                dec di
000049C1  4E                dec si
000049C2  53                push bx
000049C3  2C20              sub al,0x20
000049C5  6C                insb
000049C6  657320            gs jnc 0x49e9
000049C9  42                inc dx
000049CA  4F                dec di
000049CB  52                push dx
000049CC  44                inc sp
000049CD  53                push bx
000049CE  206475            and [si+0x75],ah
000049D1  E889DF            call word 0x295d
000049D4  26204A41          and [es:bp+si+0x41],cl
000049D8  52                push dx
000049D9  44                inc sp
000049DA  49                dec cx
000049DB  4E                dec si
000049DC  206F75            and [bx+0x75],ch
000049DF  6C                insb
000049E0  6520636F          and [gs:bp+di+0x6f],ah
000049E4  7270              jc 0x4a56
000049E6  7320              jnc 0x4a08
000049E8  6465206C61        and [gs:si+0x61],ch
000049ED  206368            and [bp+di+0x68],ah
000049F0  656E              gs outsb
000049F2  696C6C6520        imul bp,[si+0x6c],word 0x2065
000049F7  657374            gs jnc 0x4a6e
000049FA  20B81A00          and [bx+si+0x1a],bh
000049FE  E8BAB9            call word 0x3bb
00004A01  E854DB            call word 0x2558
00004A04  E856DF            call word 0x295d
00004A07  07                pop es
00004A08  4D                dec bp
00004A09  4F                dec di
00004A0A  52                push dx
00004A0B  54                push sp
00004A0C  45                inc bp
00004A0D  4C                dec sp
00004A0E  2EE863DF          cs call word 0x2975
00004A12  B80A00            mov ax,0xa
00004A15  E8A3B9            call word 0x3bb
00004A18  E83DDB            call word 0x2558
00004A1B  E857DF            call word 0x2975
00004A1E  E837DB            call word 0x2558
00004A21  E839DF            call word 0x295d
00004A24  2F                das
00004A25  41                inc cx
00004A26  206368            and [bp+di+0x68],ah
00004A29  61                popaw
00004A2A  7175              jno 0x4aa1
00004A2C  65206365          and [gs:bp+di+0x65],ah
00004A30  7269              jc 0x4a9b
00004A32  7365              jnc 0x4a99
00004A34  204D41            and [di+0x41],cl
00004A37  4E                dec si
00004A38  47                inc di
00004A39  45                inc bp
00004A3A  45                inc bp
00004A3B  2C20              sub al,0x20
00004A3D  6C                insb
00004A3E  61                popaw
00004A3F  206368            and [bp+di+0x68],ah
00004A42  656E              gs outsb
00004A44  696C6C6553        imul bp,[si+0x6c],word 0x5365
00004A49  27                daa
00004A4A  41                inc cx
00004A4B  4C                dec sp
00004A4C  4C                dec sp
00004A4D  4F                dec di
00004A4E  4E                dec si
00004A4F  47                inc di
00004A50  45                inc bp
00004A51  2E2E2EE81EDF      cs call word 0x2975
00004A57  E8FEDA            call word 0x2558
00004A5A  E818DF            call word 0x2975
00004A5D  E8F8DA            call word 0x2558
00004A60  E8FADE            call word 0x295d
00004A63  3B556E            cmp dx,[di+0x6e]
00004A66  6520666F          and [gs:bp+0x6f],ah
00004A6A  697320544F        imul si,[bp+di+0x20],word 0x4f54
00004A6F  55                push bp
00004A70  54                push sp
00004A71  45                inc bp
00004A72  53                push bx
00004A73  206C65            and [si+0x65],ch
00004A76  7320              jnc 0x4a98
00004A78  636572            arpl [di+0x72],sp
00004A7B  6973657320        imul si,[bp+di+0x65],word 0x2073
00004A80  6D                insw
00004A81  61                popaw
00004A82  6E                outsb
00004A83  676565732C        gs jnc 0x4ab4
00004A88  206C61            and [si+0x61],ch
00004A8B  206368            and [bp+di+0x68],ah
00004A8E  656E              gs outsb
00004A90  696C6C6520        imul bp,[si+0x6c],word 0x2065
00004A95  636861            arpl [bx+si+0x61],bp
00004A98  6E                outsb
00004A99  676520646520      and [dword gs:ebp+0x20],ah
00004A9F  E8B6DA            call word 0x2558
00004AA2  E8B8DE            call word 0x295d
00004AA5  3C6A              cmp al,0x6a
00004AA7  61                popaw
00004AA8  7264              jc 0x4b0e
00004AAA  696E202071        imul bp,[bp+0x20],word 0x7120
00004AAF  7569              jnz 0x4b1a
00004AB1  636F6D            arpl [bx+0x6d],bp
00004AB4  706F              jo 0x4b25
00004AB6  7274              jc 0x4b2c
00004AB8  652020            and [gs:bx+si],ah
00004ABB  706C              jo 0x4b29
00004ABD  7573              jnz 0x4b32
00004ABF  2020              and [bx+si],ah
00004AC1  64652020          and [gs:bx+si],ah
00004AC5  636572            arpl [di+0x72],sp
00004AC8  6973657320        imul si,[bp+di+0x65],word 0x2073
00004ACD  206574            and [di+0x74],ah
00004AD0  2020              and [bx+si],ah
00004AD2  6465636861        arpl [gs:bx+si+0x61],bp
00004AD7  6D                insw
00004AD8  7069              jo 0x4b43
00004ADA  676E              a32 outsb
00004ADC  6F                outsw
00004ADD  6E                outsb
00004ADE  732E              jnc 0x4b0e
00004AE0  2E2EE890DE        cs call word 0x2975
00004AE5  E870DA            call word 0x2558
00004AE8  E88ADE            call word 0x2975
00004AEB  B80100            mov ax,0x1
00004AEE  50                push ax
00004AEF  B80100            mov ax,0x1
00004AF2  50                push ax
00004AF3  B82800            mov ax,0x28
00004AF6  50                push ax
00004AF7  B81900            mov ax,0x19
00004AFA  E890B8            call word 0x38d
00004AFD  B80B00            mov ax,0xb
00004B00  E8B8B8            call word 0x3bb
00004B03  B80300            mov ax,0x3
00004B06  50                push ax
00004B07  B81500            mov ax,0x15
00004B0A  E89DC2            call word 0xdaa
00004B0D  E848DA            call word 0x2558
00004B10  E84ADE            call word 0x295d
00004B13  254348            and ax,0x4843
00004B16  4F                dec di
00004B17  49                dec cx
00004B18  53                push bx
00004B19  49                dec cx
00004B1A  53                push bx
00004B1B  53                push bx
00004B1C  45                inc bp
00004B1D  5A                pop dx
00004B1E  204C45            and [si+0x45],cl
00004B21  53                push bx
00004B22  20544F            and [si+0x4f],dl
00004B25  55                push bp
00004B26  43                inc bx
00004B27  48                dec ax
00004B28  45                inc bp
00004B29  53                push bx
00004B2A  204445            and [si+0x45],al
00004B2D  204445            and [si+0x45],al
00004B30  50                push ax
00004B31  4C                dec sp
00004B32  41                inc cx
00004B33  43                inc bx
00004B34  45                inc bp
00004B35  4D                dec bp
00004B36  45                inc bp
00004B37  4E                dec si
00004B38  54                push sp
00004B39  E839DE            call word 0x2975
00004B3C  B80A00            mov ax,0xa
00004B3F  E879B8            call word 0x3bb
00004B42  B80700            mov ax,0x7
00004B45  50                push ax
00004B46  B81900            mov ax,0x19
00004B49  E85EC2            call word 0xdaa
00004B4C  E809DA            call word 0x2558
00004B4F  E80BDE            call word 0x295d
00004B52  0920              or [bx+si],sp
00004B54  2020              and [bx+si],ah
00004B56  2020              and [bx+si],ah
00004B58  2020              and [bx+si],ah
00004B5A  2020              and [bx+si],ah
00004B5C  B83600            mov ax,0x36
00004B5F  A26802            mov [0x268],al
00004B62  B83400            mov ax,0x34
00004B65  A26902            mov [0x269],al
00004B68  B80A00            mov ax,0xa
00004B6B  50                push ax
00004B6C  B81800            mov ax,0x18
00004B6F  E838C2            call word 0xdaa
00004B72  E8E3D9            call word 0x2558
00004B75  E8E5DD            call word 0x295d
00004B78  084472            or [si+0x72],al
00004B7B  6F                outsw
00004B7C  697465203A        imul si,[si+0x65],word 0x3a20
00004B81  B81A00            mov ax,0x1a
00004B84  E834B8            call word 0x3bb
00004B87  E8CED9            call word 0x2558
00004B8A  A06802            mov al,[0x268]
00004B8D  32E4              xor ah,ah
00004B8F  50                push ax
00004B90  B80000            mov ax,0x0
00004B93  E807DD            call word 0x289d
00004B96  B80A00            mov ax,0xa
00004B99  E81FB8            call word 0x3bb
00004B9C  B80A00            mov ax,0xa
00004B9F  50                push ax
00004BA0  B81700            mov ax,0x17
00004BA3  E804C2            call word 0xdaa
00004BA6  E8AFD9            call word 0x2558
00004BA9  E8B1DD            call word 0x295d
00004BAC  084761            or [bx+0x61],al
00004BAF  7563              jnz 0x4c14
00004BB1  686520            push word 0x2065
00004BB4  3AB81A00          cmp bh,[bx+si+0x1a]
00004BB8  E800B8            call word 0x3bb
00004BBB  E89AD9            call word 0x2558
00004BBE  A06902            mov al,[0x269]
00004BC1  32E4              xor ah,ah
00004BC3  50                push ax
00004BC4  B80000            mov ax,0x0
00004BC7  E8D3DC            call word 0x289d
00004BCA  B80A00            mov ax,0xa
00004BCD  E8EBB7            call word 0x3bb
00004BD0  E8D1C1            call word 0xda4
00004BD3  7503              jnz 0x4bd8
00004BD5  E9F8FF            jmp word 0x4bd0
00004BD8  E8C9C1            call word 0xda4
00004BDB  7503              jnz 0x4be0
00004BDD  E9F8FF            jmp word 0x4bd8
00004BE0  BF4A01            mov di,0x14a
00004BE3  1E                push ds
00004BE4  E854D9            call word 0x253b
00004BE7  BF6902            mov di,0x269
00004BEA  1E                push ds
00004BEB  E874DB            call word 0x2762
00004BEE  A06902            mov al,[0x269]
00004BF1  32E4              xor ah,ah
00004BF3  50                push ax
00004BF4  B80D00            mov ax,0xd
00004BF7  59                pop cx
00004BF8  91                xchg ax,cx
00004BF9  3BC1              cmp ax,cx
00004BFB  7403              jz 0x4c00
00004BFD  E90600            jmp word 0x4c06
00004C00  B83400            mov ax,0x34
00004C03  A26902            mov [0x269],al
00004C06  A06902            mov al,[0x269]
00004C09  32E4              xor ah,ah
00004C0B  E860B7            call word 0x36e
00004C0E  A26902            mov [0x269],al
00004C11  B80A00            mov ax,0xa
00004C14  50                push ax
00004C15  B81700            mov ax,0x17
00004C18  E88FC1            call word 0xdaa
00004C1B  E83AD9            call word 0x2558
00004C1E  E83CDD            call word 0x295d
00004C21  084761            or [bx+0x61],al
00004C24  7563              jnz 0x4c89
00004C26  686520            push word 0x2065
00004C29  3AA06902          cmp ah,[bx+si+0x269]
00004C2D  32E4              xor ah,ah
00004C2F  50                push ax
00004C30  B80000            mov ax,0x0
00004C33  E867DC            call word 0x289d
00004C36  B81300            mov ax,0x13
00004C39  50                push ax
00004C3A  B81800            mov ax,0x18
00004C3D  E86AC1            call word 0xdaa
00004C40  BF4A01            mov di,0x14a
00004C43  1E                push ds
00004C44  E8F4D8            call word 0x253b
00004C47  BF6802            mov di,0x268
00004C4A  1E                push ds
00004C4B  E814DB            call word 0x2762
00004C4E  A06802            mov al,[0x268]
00004C51  32E4              xor ah,ah
00004C53  50                push ax
00004C54  B80D00            mov ax,0xd
00004C57  59                pop cx
00004C58  91                xchg ax,cx
00004C59  3BC1              cmp ax,cx
00004C5B  7403              jz 0x4c60
00004C5D  E90600            jmp word 0x4c66
00004C60  B83600            mov ax,0x36
00004C63  A26802            mov [0x268],al
00004C66  A06802            mov al,[0x268]
00004C69  32E4              xor ah,ah
00004C6B  E800B7            call word 0x36e
00004C6E  A26802            mov [0x268],al
00004C71  B80A00            mov ax,0xa
00004C74  50                push ax
00004C75  B81800            mov ax,0x18
00004C78  E82FC1            call word 0xdaa
00004C7B  E8DAD8            call word 0x2558
00004C7E  E8DCDC            call word 0x295d
00004C81  084472            or [si+0x72],al
00004C84  6F                outsw
00004C85  697465203A        imul si,[si+0x65],word 0x3a20
00004C8A  A06802            mov al,[0x268]
00004C8D  32E4              xor ah,ah
00004C8F  50                push ax
00004C90  B80000            mov ax,0x0
00004C93  E807DC            call word 0x289d
00004C96  B80700            mov ax,0x7
00004C99  50                push ax
00004C9A  B81900            mov ax,0x19
00004C9D  E80AC1            call word 0xdaa
00004CA0  E8B5D8            call word 0x2558
00004CA3  E8B7DC            call word 0x295d
00004CA6  094F4B            or [bx+0x4b],cx
00004CA9  2028              and [bx+si],ch
00004CAB  4F                dec di
00004CAC  2F                das
00004CAD  4E                dec si
00004CAE  293F              sub [bx],di
00004CB0  E8F1C0            call word 0xda4
00004CB3  7503              jnz 0x4cb8
00004CB5  E9F8FF            jmp word 0x4cb0
00004CB8  BF4A01            mov di,0x14a
00004CBB  1E                push ds
00004CBC  E87CD8            call word 0x253b
00004CBF  8D7EFD            lea di,[bp-0x3]
00004CC2  16                push ss
00004CC3  E89CDA            call word 0x2762
00004CC6  8A46FD            mov al,[bp-0x3]
00004CC9  32E4              xor ah,ah
00004CCB  E8A0B6            call word 0x36e
00004CCE  3D4F00            cmp ax,0x4f
00004CD1  7403              jz 0x4cd6
00004CD3  E966FE            jmp word 0x4b3c
00004CD6  E90000            jmp word 0x4cd9
00004CD9  8BE5              mov sp,bp
00004CDB  5D                pop bp
00004CDC  C3                ret
00004CDD  55                push bp
00004CDE  8BEC              mov bp,sp
00004CE0  55                push bp
00004CE1  E90000            jmp word 0x4ce4
00004CE4  4C                dec sp
00004CE5  B80800            mov ax,0x8
00004CE8  50                push ax
00004CE9  8A4604            mov al,[bp+0x4]
00004CEC  32E4              xor ah,ah
00004CEE  59                pop cx
00004CEF  03C1              add ax,cx
00004CF1  50                push ax
00004CF2  B80800            mov ax,0x8
00004CF5  E8B2C0            call word 0xdaa
00004CF8  B80E00            mov ax,0xe
00004CFB  E8BDB6            call word 0x3bb
00004CFE  E857D8            call word 0x2558
00004D01  E859DC            call word 0x295d
00004D04  1A4E6F            sbb cl,[bp+0x6f]
00004D07  6D                insw
00004D08  2020              and [bx+si],ah
00004D0A  2020              and [bx+si],ah
00004D0C  2020              and [bx+si],ah
00004D0E  2020              and [bx+si],ah
00004D10  53                push bx
00004D11  636F72            arpl [bx+0x72],bp
00004D14  652020            and [gs:bx+si],ah
00004D17  2020              and [bx+si],ah
00004D19  2020              and [bx+si],ah
00004D1B  44                inc sp
00004D1C  61                popaw
00004D1D  7465              jz 0x4d84
00004D1F  E853DC            call word 0x2975
00004D22  B80A00            mov ax,0xa
00004D25  E893B6            call word 0x3bb
00004D28  B80100            mov ax,0x1
00004D2B  50                push ax
00004D2C  B80A00            mov ax,0xa
00004D2F  59                pop cx
00004D30  91                xchg ax,cx
00004D31  2BC8              sub cx,ax
00004D33  7D03              jnl 0x4d38
00004D35  E9B400            jmp word 0x4dec
00004D38  41                inc cx
00004D39  8846FD            mov [bp-0x3],al
00004D3C  51                push cx
00004D3D  B80100            mov ax,0x1
00004D40  50                push ax
00004D41  8A4604            mov al,[bp+0x4]
00004D44  32E4              xor ah,ah
00004D46  59                pop cx
00004D47  03C1              add ax,cx
00004D49  50                push ax
00004D4A  B80800            mov ax,0x8
00004D4D  50                push ax
00004D4E  8A46FD            mov al,[bp-0x3]
00004D51  32E4              xor ah,ah
00004D53  59                pop cx
00004D54  03C1              add ax,cx
00004D56  E851C0            call word 0xdaa
00004D59  E8FCD7            call word 0x2558
00004D5C  8A46FD            mov al,[bp-0x3]
00004D5F  32E4              xor ah,ah
00004D61  50                push ax
00004D62  B80200            mov ax,0x2
00004D65  E851DB            call word 0x28b9
00004D68  B82000            mov ax,0x20
00004D6B  50                push ax
00004D6C  B80000            mov ax,0x0
00004D6F  E82BDB            call word 0x289d
00004D72  C47E06            les di,[bp+0x6]
00004D75  06                push es
00004D76  57                push di
00004D77  8A46FD            mov al,[bp-0x3]
00004D7A  32E4              xor ah,ah
00004D7C  5F                pop di
00004D7D  07                pop es
00004D7E  B91800            mov cx,0x18
00004D81  F7E1              mul cx
00004D83  03F8              add di,ax
00004D85  83C7E8            add di,byte -0x18
00004D88  06                push es
00004D89  E840C4            call word 0x11cc
00004D8C  B80A00            mov ax,0xa
00004D8F  E894DB            call word 0x2926
00004D92  E8C8DB            call word 0x295d
00004D95  0320              add sp,[bx+si]
00004D97  2020              and [bx+si],ah
00004D99  C47E06            les di,[bp+0x6]
00004D9C  06                push es
00004D9D  57                push di
00004D9E  8A46FD            mov al,[bp-0x3]
00004DA1  32E4              xor ah,ah
00004DA3  5F                pop di
00004DA4  07                pop es
00004DA5  B91800            mov cx,0x18
00004DA8  F7E1              mul cx
00004DAA  03F8              add di,ax
00004DAC  268B45F3          mov ax,[es:di-0xd]
00004DB0  50                push ax
00004DB1  B80600            mov ax,0x6
00004DB4  E802DB            call word 0x28b9
00004DB7  E8A3DB            call word 0x295d
00004DBA  0420              add al,0x20
00004DBC  2020              and [bx+si],ah
00004DBE  20C4              and ah,al
00004DC0  7E06              jng 0x4dc8
00004DC2  06                push es
00004DC3  57                push di
00004DC4  8A46FD            mov al,[bp-0x3]
00004DC7  32E4              xor ah,ah
00004DC9  5F                pop di
00004DCA  07                pop es
00004DCB  B91800            mov cx,0x18
00004DCE  F7E1              mul cx
00004DD0  03F8              add di,ax
00004DD2  83C7F5            add di,byte -0xb
00004DD5  06                push es
00004DD6  E8F3C3            call word 0x11cc
00004DD9  B80A00            mov ax,0xa
00004DDC  E847DB            call word 0x2926
00004DDF  E893DB            call word 0x2975
00004DE2  59                pop cx
00004DE3  49                dec cx
00004DE4  7406              jz 0x4dec
00004DE6  FE46FD            inc byte [bp-0x3]
00004DE9  E950FF            jmp word 0x4d3c
00004DEC  E90000            jmp word 0x4def
00004DEF  8BE5              mov sp,bp
00004DF1  5D                pop bp
00004DF2  C20600            ret 0x6
00004DF5  55                push bp
00004DF6  8BEC              mov bp,sp
00004DF8  55                push bp
00004DF9  E95C04            jmp word 0x5258
00004DFC  55                push bp
00004DFD  8BC4              mov ax,sp
00004DFF  FF76FE            push word [bp-0x2]
00004E02  8BE8              mov bp,ax
00004E04  55                push bp
00004E05  E90000            jmp word 0x4e08
00004E08  83EC23            sub sp,byte +0x23
00004E0B  B82A00            mov ax,0x2a
00004E0E  B90800            mov cx,0x8
00004E11  D3E0              shl ax,cl
00004E13  8946E8            mov [bp-0x18],ax
00004E16  8D7EE8            lea di,[bp-0x18]
00004E19  16                push ss
00004E1A  E84AC1            call word 0xf67
00004E1D  CD21              int 0x21
00004E1F  E86DC1            call word 0xf8f
00004E22  8B46EC            mov ax,[bp-0x14]
00004E25  50                push ax
00004E26  B80000            mov ax,0x0
00004E29  50                push ax
00004E2A  8D7EDD            lea di,[bp-0x23]
00004E2D  16                push ss
00004E2E  B104              mov cl,0x4
00004E30  E8DFBF            call word 0xe12
00004E33  8B46EE            mov ax,[bp-0x12]
00004E36  B90001            mov cx,0x100
00004E39  99                cwd
00004E3A  F7F9              idiv cx
00004E3C  92                xchg ax,dx
00004E3D  50                push ax
00004E3E  B80000            mov ax,0x0
00004E41  50                push ax
00004E42  8D7EE2            lea di,[bp-0x1e]
00004E45  16                push ss
00004E46  B102              mov cl,0x2
00004E48  E8C7BF            call word 0xe12
00004E4B  8B46EE            mov ax,[bp-0x12]
00004E4E  B90800            mov cx,0x8
00004E51  D3E8              shr ax,cl
00004E53  50                push ax
00004E54  B80000            mov ax,0x0
00004E57  50                push ax
00004E58  8D7EE5            lea di,[bp-0x1b]
00004E5B  16                push ss
00004E5C  B102              mov cl,0x2
00004E5E  E8B1BF            call word 0xe12
00004E61  8D7E04            lea di,[bp+0x4]
00004E64  16                push ss
00004E65  57                push di
00004E66  8D7EE2            lea di,[bp-0x1e]
00004E69  16                push ss
00004E6A  E85FC3            call word 0x11cc
00004E6D  B8012F            mov ax,0x2f01
00004E70  50                push ax
00004E71  E889C4            call word 0x12fd
00004E74  8D7EE5            lea di,[bp-0x1b]
00004E77  16                push ss
00004E78  E851C3            call word 0x11cc
00004E7B  E87FC4            call word 0x12fd
00004E7E  B8012F            mov ax,0x2f01
00004E81  50                push ax
00004E82  E878C4            call word 0x12fd
00004E85  8D7EDD            lea di,[bp-0x23]
00004E88  16                push ss
00004E89  E840C3            call word 0x11cc
00004E8C  E86EC4            call word 0x12fd
00004E8F  B10A              mov cl,0xa
00004E91  E867C3            call word 0x11fb
00004E94  E90000            jmp word 0x4e97
00004E97  BA0000            mov dx,0x0
00004E9A  B10A              mov cl,0xa
00004E9C  8BE5              mov sp,bp
00004E9E  5D                pop bp
00004E9F  E9F6C5            jmp word 0x1498
00004EA2  55                push bp
00004EA3  8BC4              mov ax,sp
00004EA5  FF76FE            push word [bp-0x2]
00004EA8  8BE8              mov bp,ax
00004EAA  55                push bp
00004EAB  E90000            jmp word 0x4eae
00004EAE  4C                dec sp
00004EAF  4C                dec sp
00004EB0  B80000            mov ax,0x0
00004EB3  8846FB            mov [bp-0x5],al
00004EB6  8A46FB            mov al,[bp-0x5]
00004EB9  32E4              xor ah,ah
00004EBB  050100            add ax,0x1
00004EBE  8846FB            mov [bp-0x5],al
00004EC1  A16502            mov ax,[0x265]
00004EC4  50                push ax
00004EC5  C47E04            les di,[bp+0x4]
00004EC8  06                push es
00004EC9  57                push di
00004ECA  8A46FB            mov al,[bp-0x5]
00004ECD  32E4              xor ah,ah
00004ECF  5F                pop di
00004ED0  07                pop es
00004ED1  B91800            mov cx,0x18
00004ED4  F7E1              mul cx
00004ED6  03F8              add di,ax
00004ED8  58                pop ax
00004ED9  263B45F3          cmp ax,[es:di-0xd]
00004EDD  7F03              jg 0x4ee2
00004EDF  E93A01            jmp word 0x501c
00004EE2  B80A00            mov ax,0xa
00004EE5  50                push ax
00004EE6  8A46FB            mov al,[bp-0x5]
00004EE9  32E4              xor ah,ah
00004EEB  050100            add ax,0x1
00004EEE  59                pop cx
00004EEF  91                xchg ax,cx
00004EF0  2BC8              sub cx,ax
00004EF2  7E03              jng 0x4ef7
00004EF4  E9B800            jmp word 0x4faf
00004EF7  49                dec cx
00004EF8  8846FA            mov [bp-0x6],al
00004EFB  51                push cx
00004EFC  C47E04            les di,[bp+0x4]
00004EFF  06                push es
00004F00  57                push di
00004F01  8A46FA            mov al,[bp-0x6]
00004F04  32E4              xor ah,ah
00004F06  5F                pop di
00004F07  07                pop es
00004F08  B91800            mov cx,0x18
00004F0B  F7E1              mul cx
00004F0D  03F8              add di,ax
00004F0F  83C7E8            add di,byte -0x18
00004F12  06                push es
00004F13  57                push di
00004F14  C47E04            les di,[bp+0x4]
00004F17  06                push es
00004F18  57                push di
00004F19  8A46FA            mov al,[bp-0x6]
00004F1C  32E4              xor ah,ah
00004F1E  2D0100            sub ax,0x1
00004F21  5F                pop di
00004F22  07                pop es
00004F23  B91800            mov cx,0x18
00004F26  F7E1              mul cx
00004F28  03F8              add di,ax
00004F2A  83C7E8            add di,byte -0x18
00004F2D  06                push es
00004F2E  E89BC2            call word 0x11cc
00004F31  B10A              mov cl,0xa
00004F33  E8C5C2            call word 0x11fb
00004F36  C47E04            les di,[bp+0x4]
00004F39  06                push es
00004F3A  57                push di
00004F3B  8A46FA            mov al,[bp-0x6]
00004F3E  32E4              xor ah,ah
00004F40  5F                pop di
00004F41  07                pop es
00004F42  B91800            mov cx,0x18
00004F45  F7E1              mul cx
00004F47  03F8              add di,ax
00004F49  06                push es
00004F4A  57                push di
00004F4B  C47E04            les di,[bp+0x4]
00004F4E  06                push es
00004F4F  57                push di
00004F50  8A46FA            mov al,[bp-0x6]
00004F53  32E4              xor ah,ah
00004F55  2D0100            sub ax,0x1
00004F58  5F                pop di
00004F59  07                pop es
00004F5A  B91800            mov cx,0x18
00004F5D  F7E1              mul cx
00004F5F  03F8              add di,ax
00004F61  268B45F3          mov ax,[es:di-0xd]
00004F65  5F                pop di
00004F66  07                pop es
00004F67  268945F3          mov [es:di-0xd],ax
00004F6B  C47E04            les di,[bp+0x4]
00004F6E  06                push es
00004F6F  57                push di
00004F70  8A46FA            mov al,[bp-0x6]
00004F73  32E4              xor ah,ah
00004F75  5F                pop di
00004F76  07                pop es
00004F77  B91800            mov cx,0x18
00004F7A  F7E1              mul cx
00004F7C  03F8              add di,ax
00004F7E  83C7F5            add di,byte -0xb
00004F81  06                push es
00004F82  57                push di
00004F83  C47E04            les di,[bp+0x4]
00004F86  06                push es
00004F87  57                push di
00004F88  8A46FA            mov al,[bp-0x6]
00004F8B  32E4              xor ah,ah
00004F8D  2D0100            sub ax,0x1
00004F90  5F                pop di
00004F91  07                pop es
00004F92  B91800            mov cx,0x18
00004F95  F7E1              mul cx
00004F97  03F8              add di,ax
00004F99  83C7F5            add di,byte -0xb
00004F9C  06                push es
00004F9D  E82CC2            call word 0x11cc
00004FA0  B10A              mov cl,0xa
00004FA2  E856C2            call word 0x11fb
00004FA5  59                pop cx
00004FA6  41                inc cx
00004FA7  7406              jz 0x4faf
00004FA9  FE4EFA            dec byte [bp-0x6]
00004FAC  E94CFF            jmp word 0x4efb
00004FAF  C47E04            les di,[bp+0x4]
00004FB2  06                push es
00004FB3  57                push di
00004FB4  8A46FB            mov al,[bp-0x5]
00004FB7  32E4              xor ah,ah
00004FB9  5F                pop di
00004FBA  07                pop es
00004FBB  B91800            mov cx,0x18
00004FBE  F7E1              mul cx
00004FC0  03F8              add di,ax
00004FC2  83C7E8            add di,byte -0x18
00004FC5  06                push es
00004FC6  57                push di
00004FC7  BF1303            mov di,0x313
00004FCA  1E                push ds
00004FCB  E8FEC1            call word 0x11cc
00004FCE  B10A              mov cl,0xa
00004FD0  E828C2            call word 0x11fb
00004FD3  C47E04            les di,[bp+0x4]
00004FD6  06                push es
00004FD7  57                push di
00004FD8  8A46FB            mov al,[bp-0x5]
00004FDB  32E4              xor ah,ah
00004FDD  5F                pop di
00004FDE  07                pop es
00004FDF  B91800            mov cx,0x18
00004FE2  F7E1              mul cx
00004FE4  03F8              add di,ax
00004FE6  A16502            mov ax,[0x265]
00004FE9  268945F3          mov [es:di-0xd],ax
00004FED  C47E04            les di,[bp+0x4]
00004FF0  06                push es
00004FF1  57                push di
00004FF2  8A46FB            mov al,[bp-0x5]
00004FF5  32E4              xor ah,ah
00004FF7  5F                pop di
00004FF8  07                pop es
00004FF9  B91800            mov cx,0x18
00004FFC  F7E1              mul cx
00004FFE  03F8              add di,ax
00005000  83C7F5            add di,byte -0xb
00005003  06                push es
00005004  57                push di
00005005  B93600            mov cx,0x36
00005008  E8C6BF            call word 0xfd1
0000500B  83EC0B            sub sp,byte +0xb
0000500E  E8EBFD            call word 0x4dfc
00005011  B10A              mov cl,0xa
00005013  E8E5C1            call word 0x11fb
00005016  B80B00            mov ax,0xb
00005019  8846FB            mov [bp-0x5],al
0000501C  8A46FB            mov al,[bp-0x5]
0000501F  32E4              xor ah,ah
00005021  3D0A00            cmp ax,0xa
00005024  7F03              jg 0x5029
00005026  E98DFE            jmp word 0x4eb6
00005029  E90000            jmp word 0x502c
0000502C  8BE5              mov sp,bp
0000502E  5D                pop bp
0000502F  C20400            ret 0x4
00005032  55                push bp
00005033  8BC4              mov ax,sp
00005035  FF76FE            push word [bp-0x2]
00005038  8BE8              mov bp,ax
0000503A  55                push bp
0000503B  E90000            jmp word 0x503e
0000503E  4C                dec sp
0000503F  4C                dec sp
00005040  B80200            mov ax,0x2
00005043  8846FA            mov [bp-0x6],al
00005046  B80100            mov ax,0x1
00005049  8846FB            mov [bp-0x5],al
0000504C  8A46FB            mov al,[bp-0x5]
0000504F  32E4              xor ah,ah
00005051  3D0A00            cmp ax,0xa
00005054  7F03              jg 0x5059
00005056  E90900            jmp word 0x5062
00005059  B80100            mov ax,0x1
0000505C  8846FA            mov [bp-0x6],al
0000505F  E93D00            jmp word 0x509f
00005062  C47E04            les di,[bp+0x4]
00005065  06                push es
00005066  57                push di
00005067  8A46FB            mov al,[bp-0x5]
0000506A  32E4              xor ah,ah
0000506C  5F                pop di
0000506D  07                pop es
0000506E  B91800            mov cx,0x18
00005071  F7E1              mul cx
00005073  03F8              add di,ax
00005075  83C7E8            add di,byte -0x18
00005078  06                push es
00005079  E850C1            call word 0x11cc
0000507C  BF1303            mov di,0x313
0000507F  1E                push ds
00005080  E849C1            call word 0x11cc
00005083  E8F4C1            call word 0x127a
00005086  7503              jnz 0x508b
00005088  E90900            jmp word 0x5094
0000508B  B80000            mov ax,0x0
0000508E  8846FA            mov [bp-0x6],al
00005091  E90B00            jmp word 0x509f
00005094  8A46FB            mov al,[bp-0x5]
00005097  32E4              xor ah,ah
00005099  050100            add ax,0x1
0000509C  8846FB            mov [bp-0x5],al
0000509F  8A46FA            mov al,[bp-0x6]
000050A2  32E4              xor ah,ah
000050A4  3D0200            cmp ax,0x2
000050A7  7503              jnz 0x50ac
000050A9  E9A0FF            jmp word 0x504c
000050AC  8A46FA            mov al,[bp-0x6]
000050AF  32E4              xor ah,ah
000050B1  3D0000            cmp ax,0x0
000050B4  7403              jz 0x50b9
000050B6  E96600            jmp word 0x511f
000050B9  C47E04            les di,[bp+0x4]
000050BC  06                push es
000050BD  57                push di
000050BE  8A46FB            mov al,[bp-0x5]
000050C1  32E4              xor ah,ah
000050C3  5F                pop di
000050C4  07                pop es
000050C5  B91800            mov cx,0x18
000050C8  F7E1              mul cx
000050CA  03F8              add di,ax
000050CC  268B45F3          mov ax,[es:di-0xd]
000050D0  3B066502          cmp ax,[0x265]
000050D4  7E03              jng 0x50d9
000050D6  E94300            jmp word 0x511c
000050D9  C47E04            les di,[bp+0x4]
000050DC  06                push es
000050DD  57                push di
000050DE  8A46FB            mov al,[bp-0x5]
000050E1  32E4              xor ah,ah
000050E3  5F                pop di
000050E4  07                pop es
000050E5  B91800            mov cx,0x18
000050E8  F7E1              mul cx
000050EA  03F8              add di,ax
000050EC  A16502            mov ax,[0x265]
000050EF  268945F3          mov [es:di-0xd],ax
000050F3  C47E04            les di,[bp+0x4]
000050F6  06                push es
000050F7  57                push di
000050F8  8A46FB            mov al,[bp-0x5]
000050FB  32E4              xor ah,ah
000050FD  5F                pop di
000050FE  07                pop es
000050FF  B91800            mov cx,0x18
00005102  F7E1              mul cx
00005104  03F8              add di,ax
00005106  83C7F5            add di,byte -0xb
00005109  06                push es
0000510A  57                push di
0000510B  B93600            mov cx,0x36
0000510E  E8C0BE            call word 0xfd1
00005111  83EC0B            sub sp,byte +0xb
00005114  E8E5FC            call word 0x4dfc
00005117  B10A              mov cl,0xa
00005119  E8DFC0            call word 0x11fb
0000511C  E91600            jmp word 0x5135
0000511F  3D0100            cmp ax,0x1
00005122  7403              jz 0x5127
00005124  E90E00            jmp word 0x5135
00005127  B90E00            mov cx,0xe
0000512A  E8A4BE            call word 0xfd1
0000512D  C47E04            les di,[bp+0x4]
00005130  06                push es
00005131  57                push di
00005132  E86DFD            call word 0x4ea2
00005135  E90000            jmp word 0x5138
00005138  8BE5              mov sp,bp
0000513A  5D                pop bp
0000513B  C20400            ret 0x4
0000513E  55                push bp
0000513F  8BC4              mov ax,sp
00005141  FF76FE            push word [bp-0x2]
00005144  8BE8              mov bp,ax
00005146  55                push bp
00005147  E90000            jmp word 0x514a
0000514A  83EC1B            sub sp,byte +0x1b
0000514D  B80900            mov ax,0x9
00005150  8846E1            mov [bp-0x1f],al
00005153  B80000            mov ax,0x0
00005156  8846FB            mov [bp-0x5],al
00005159  B80100            mov ax,0x1
0000515C  50                push ax
0000515D  8A46E1            mov al,[bp-0x1f]
00005160  32E4              xor ah,ah
00005162  59                pop cx
00005163  91                xchg ax,cx
00005164  2BC8              sub cx,ax
00005166  7D03              jnl 0x516b
00005168  E9CC00            jmp word 0x5237
0000516B  41                inc cx
0000516C  8846E2            mov [bp-0x1e],al
0000516F  51                push cx
00005170  C47E04            les di,[bp+0x4]
00005173  06                push es
00005174  57                push di
00005175  8A46E2            mov al,[bp-0x1e]
00005178  32E4              xor ah,ah
0000517A  050100            add ax,0x1
0000517D  5F                pop di
0000517E  07                pop es
0000517F  B91800            mov cx,0x18
00005182  F7E1              mul cx
00005184  03F8              add di,ax
00005186  268B45F3          mov ax,[es:di-0xd]
0000518A  50                push ax
0000518B  C47E04            les di,[bp+0x4]
0000518E  06                push es
0000518F  57                push di
00005190  8A46E2            mov al,[bp-0x1e]
00005193  32E4              xor ah,ah
00005195  5F                pop di
00005196  07                pop es
00005197  B91800            mov cx,0x18
0000519A  F7E1              mul cx
0000519C  03F8              add di,ax
0000519E  58                pop ax
0000519F  263B45F3          cmp ax,[es:di-0xd]
000051A3  7F03              jg 0x51a8
000051A5  E98500            jmp word 0x522d
000051A8  8D7EE3            lea di,[bp-0x1d]
000051AB  16                push ss
000051AC  57                push di
000051AD  C47E04            les di,[bp+0x4]
000051B0  06                push es
000051B1  57                push di
000051B2  8A46E2            mov al,[bp-0x1e]
000051B5  32E4              xor ah,ah
000051B7  050100            add ax,0x1
000051BA  5F                pop di
000051BB  07                pop es
000051BC  B91800            mov cx,0x18
000051BF  F7E1              mul cx
000051C1  03F8              add di,ax
000051C3  83C7E8            add di,byte -0x18
000051C6  06                push es
000051C7  B91800            mov cx,0x18
000051CA  E855BD            call word 0xf22
000051CD  C47E04            les di,[bp+0x4]
000051D0  06                push es
000051D1  57                push di
000051D2  8A46E2            mov al,[bp-0x1e]
000051D5  32E4              xor ah,ah
000051D7  050100            add ax,0x1
000051DA  5F                pop di
000051DB  07                pop es
000051DC  B91800            mov cx,0x18
000051DF  F7E1              mul cx
000051E1  03F8              add di,ax
000051E3  83C7E8            add di,byte -0x18
000051E6  06                push es
000051E7  57                push di
000051E8  C47E04            les di,[bp+0x4]
000051EB  06                push es
000051EC  57                push di
000051ED  8A46E2            mov al,[bp-0x1e]
000051F0  32E4              xor ah,ah
000051F2  5F                pop di
000051F3  07                pop es
000051F4  B91800            mov cx,0x18
000051F7  F7E1              mul cx
000051F9  03F8              add di,ax
000051FB  83C7E8            add di,byte -0x18
000051FE  06                push es
000051FF  B91800            mov cx,0x18
00005202  E81DBD            call word 0xf22
00005205  C47E04            les di,[bp+0x4]
00005208  06                push es
00005209  57                push di
0000520A  8A46E2            mov al,[bp-0x1e]
0000520D  32E4              xor ah,ah
0000520F  5F                pop di
00005210  07                pop es
00005211  B91800            mov cx,0x18
00005214  F7E1              mul cx
00005216  03F8              add di,ax
00005218  83C7E8            add di,byte -0x18
0000521B  06                push es
0000521C  57                push di
0000521D  8D7EE3            lea di,[bp-0x1d]
00005220  16                push ss
00005221  B91800            mov cx,0x18
00005224  E8FBBC            call word 0xf22
00005227  B80100            mov ax,0x1
0000522A  8846FB            mov [bp-0x5],al
0000522D  59                pop cx
0000522E  49                dec cx
0000522F  7406              jz 0x5237
00005231  FE46E2            inc byte [bp-0x1e]
00005234  E938FF            jmp word 0x516f
00005237  8A46E1            mov al,[bp-0x1f]
0000523A  32E4              xor ah,ah
0000523C  2D0100            sub ax,0x1
0000523F  8846E1            mov [bp-0x1f],al
00005242  8A46FB            mov al,[bp-0x5]
00005245  32E4              xor ah,ah
00005247  3D0000            cmp ax,0x0
0000524A  7403              jz 0x524f
0000524C  E904FF            jmp word 0x5153
0000524F  E90000            jmp word 0x5252
00005252  8BE5              mov sp,bp
00005254  5D                pop bp
00005255  C20400            ret 0x4
00005258  83EC04            sub sp,byte +0x4
0000525B  B80E00            mov ax,0xe
0000525E  E85AB1            call word 0x3bb
00005261  B80500            mov ax,0x5
00005264  50                push ax
00005265  B80200            mov ax,0x2
00005268  E83FBB            call word 0xdaa
0000526B  B80F00            mov ax,0xf
0000526E  051000            add ax,0x10
00005271  E847B1            call word 0x3bb
00005274  E8E1D2            call word 0x2558
00005277  E8E3D6            call word 0x295d
0000527A  0D566F            or ax,0x6f56
0000527D  7472              jz 0x52f1
0000527F  65205343          and [gs:bp+di+0x43],dl
00005283  4F                dec di
00005284  52                push dx
00005285  45                inc bp
00005286  203A              and [bp+si],bh
00005288  A16502            mov ax,[0x265]
0000528B  50                push ax
0000528C  B80500            mov ax,0x5
0000528F  E827D6            call word 0x28b9
00005292  B80E00            mov ax,0xe
00005295  E823B1            call word 0x3bb
00005298  B80D00            mov ax,0xd
0000529B  50                push ax
0000529C  B80600            mov ax,0x6
0000529F  E808BB            call word 0xdaa
000052A2  E8B3D2            call word 0x2558
000052A5  E8B5D6            call word 0x295d
000052A8  1320              adc sp,[bx+si]
000052AA  205343            and [bp+di+0x43],dl
000052AD  4F                dec di
000052AE  52                push dx
000052AF  45                inc bp
000052B0  53                push bx
000052B1  204745            and [bx+0x45],al
000052B4  4E                dec si
000052B5  45                inc bp
000052B6  52                push dx
000052B7  41                inc cx
000052B8  55                push bp
000052B9  58                pop ax
000052BA  2020              and [bx+si],ah
000052BC  B83800            mov ax,0x38
000052BF  50                push ax
000052C0  B80600            mov ax,0x6
000052C3  E8E4BA            call word 0xdaa
000052C6  E88FD2            call word 0x2558
000052C9  E891D6            call word 0x295d
000052CC  135343            adc dx,[bp+di+0x43]
000052CF  4F                dec di
000052D0  52                push dx
000052D1  45                inc bp
000052D2  53                push bx
000052D3  205041            and [bx+si+0x41],dl
000052D6  52                push dx
000052D7  54                push sp
000052D8  49                dec cx
000052D9  43                inc bx
000052DA  55                push bp
000052DB  4C                dec sp
000052DC  49                dec cx
000052DD  45                inc bp
000052DE  52                push dx
000052DF  53                push bx
000052E0  B90E00            mov cx,0xe
000052E3  E8EBBC            call word 0xfd1
000052E6  BF2504            mov di,0x425
000052E9  1E                push ds
000052EA  57                push di
000052EB  E8B4FB            call word 0x4ea2
000052EE  B90E00            mov cx,0xe
000052F1  E8DDBC            call word 0xfd1
000052F4  BF3503            mov di,0x335
000052F7  1E                push ds
000052F8  57                push di
000052F9  E836FD            call word 0x5032
000052FC  B92700            mov cx,0x27
000052FF  E8CFBC            call word 0xfd1
00005302  BF3503            mov di,0x335
00005305  1E                push ds
00005306  57                push di
00005307  E834FE            call word 0x513e
0000530A  B90D00            mov cx,0xd
0000530D  E8C1BC            call word 0xfd1
00005310  BF3503            mov di,0x335
00005313  1E                push ds
00005314  57                push di
00005315  B82B00            mov ax,0x2b
00005318  50                push ax
00005319  E8C1F9            call word 0x4cdd
0000531C  B90D00            mov cx,0xd
0000531F  E8AFBC            call word 0xfd1
00005322  BF2504            mov di,0x425
00005325  1E                push ds
00005326  57                push di
00005327  B80200            mov ax,0x2
0000532A  50                push ax
0000532B  E8AFF9            call word 0x4cdd
0000532E  B80E00            mov ax,0xe
00005331  E887B0            call word 0x3bb
00005334  B80600            mov ax,0x6
00005337  50                push ax
00005338  B81900            mov ax,0x19
0000533B  E86CBA            call word 0xdaa
0000533E  E817D2            call word 0x2558
00005341  E819D6            call word 0x295d
00005344  1B566F            sbb dx,[bp+0x6f]
00005347  756C              jnz 0x53b5
00005349  657A2D            gs jpe 0x5379
0000534C  766F              jna 0x53bd
0000534E  7573              jnz 0x53c3
00005350  207265            and [bp+si+0x65],dh
00005353  6A6F              push byte +0x6f
00005355  7565              jnz 0x53bc
00005357  7220              jc 0x5379
00005359  3F                aas
0000535A  2028              and [bx+si],ch
0000535C  4F                dec di
0000535D  2F                das
0000535E  4E                dec si
0000535F  29E8              sub ax,bp
00005361  41                inc cx
00005362  BA7503            mov dx,0x375
00005365  E9F8FF            jmp word 0x5360
00005368  BF4A01            mov di,0x14a
0000536B  1E                push ds
0000536C  E8CCD1            call word 0x253b
0000536F  BF6702            mov di,0x267
00005372  1E                push ds
00005373  E8ECD3            call word 0x2762
00005376  A06702            mov al,[0x267]
00005379  32E4              xor ah,ah
0000537B  E8F0AF            call word 0x36e
0000537E  3D4F00            cmp ax,0x4f
00005381  B80100            mov ax,0x1
00005384  7401              jz 0x5387
00005386  48                dec ax
00005387  50                push ax
00005388  A06702            mov al,[0x267]
0000538B  32E4              xor ah,ah
0000538D  E8DEAF            call word 0x36e
00005390  3D4E00            cmp ax,0x4e
00005393  B80100            mov ax,0x1
00005396  7401              jz 0x5399
00005398  48                dec ax
00005399  59                pop cx
0000539A  0BC1              or ax,cx
0000539C  0BC0              or ax,ax
0000539E  7503              jnz 0x53a3
000053A0  E9BDFF            jmp word 0x5360
000053A3  E90000            jmp word 0x53a6
000053A6  8BE5              mov sp,bp
000053A8  5D                pop bp
000053A9  C3                ret
000053AA  55                push bp
000053AB  8BEC              mov bp,sp
000053AD  55                push bp
000053AE  E9A005            jmp word 0x5951
000053B1  55                push bp
000053B2  8BC4              mov ax,sp
000053B4  FF76FE            push word [bp-0x2]
000053B7  8BE8              mov bp,ax
000053B9  55                push bp
000053BA  E90000            jmp word 0x53bd
000053BD  4C                dec sp
000053BE  4C                dec sp
000053BF  8B5EFE            mov bx,[bp-0x2]
000053C2  368DBFF7FE        lea di,[ss:bx-0x109]
000053C7  16                push ss
000053C8  E801BE            call word 0x11cc
000053CB  E8B0BF            call word 0x137e
000053CE  8846FA            mov [bp-0x6],al
000053D1  B80100            mov ax,0x1
000053D4  50                push ax
000053D5  8A46FA            mov al,[bp-0x6]
000053D8  32E4              xor ah,ah
000053DA  59                pop cx
000053DB  91                xchg ax,cx
000053DC  2BC8              sub cx,ax
000053DE  7D03              jnl 0x53e3
000053E0  E92F01            jmp word 0x5512
000053E3  41                inc cx
000053E4  8846FB            mov [bp-0x5],al
000053E7  51                push cx
000053E8  8B5EFE            mov bx,[bp-0x2]
000053EB  368A47FB          mov al,[ss:bx-0x5]
000053EF  32E4              xor ah,ah
000053F1  50                push ax
000053F2  8B5EFE            mov bx,[bp-0x2]
000053F5  368A47F9          mov al,[ss:bx-0x7]
000053F9  32E4              xor ah,ah
000053FB  E8ACB9            call word 0xdaa
000053FE  E857D1            call word 0x2558
00005401  B82000            mov ax,0x20
00005404  50                push ax
00005405  B80000            mov ax,0x0
00005408  E892D4            call word 0x289d
0000540B  B86400            mov ax,0x64
0000540E  50                push ax
0000540F  8A46FB            mov al,[bp-0x5]
00005412  32E4              xor ah,ah
00005414  B90500            mov cx,0x5
00005417  F7E9              imul cx
00005419  59                pop cx
0000541A  03C1              add ax,cx
0000541C  50                push ax
0000541D  A03403            mov al,[0x334]
00005420  32E4              xor ah,ah
00005422  59                pop cx
00005423  F7E9              imul cx
00005425  E874B1            call word 0x59c
00005428  B83200            mov ax,0x32
0000542B  E8E5AD            call word 0x213
0000542E  8B5EFE            mov bx,[bp-0x2]
00005431  368DBFF5FE        lea di,[ss:bx-0x10b]
00005436  16                push ss
00005437  57                push di
00005438  8B5EFE            mov bx,[bp-0x2]
0000543B  368DBFF7FE        lea di,[ss:bx-0x109]
00005440  16                push ss
00005441  E888BD            call word 0x11cc
00005444  B80100            mov ax,0x1
00005447  50                push ax
00005448  B80100            mov ax,0x1
0000544B  E8F1BE            call word 0x133f
0000544E  B101              mov cl,0x1
00005450  E8A8BD            call word 0x11fb
00005453  8B5EFE            mov bx,[bp-0x2]
00005456  368DBFF7FE        lea di,[ss:bx-0x109]
0000545B  16                push ss
0000545C  57                push di
0000545D  8B5EFE            mov bx,[bp-0x2]
00005460  368DBFF7FE        lea di,[ss:bx-0x109]
00005465  16                push ss
00005466  E863BD            call word 0x11cc
00005469  B80200            mov ax,0x2
0000546C  50                push ax
0000546D  8B5EFE            mov bx,[bp-0x2]
00005470  368DBFF7FE        lea di,[ss:bx-0x109]
00005475  16                push ss
00005476  E853BD            call word 0x11cc
00005479  E802BF            call word 0x137e
0000547C  E8C0BE            call word 0x133f
0000547F  B1FF              mov cl,0xff
00005481  E877BD            call word 0x11fb
00005484  8B5EFE            mov bx,[bp-0x2]
00005487  368DBFF5FE        lea di,[ss:bx-0x10b]
0000548C  16                push ss
0000548D  E83CBD            call word 0x11cc
00005490  E8DDBF            call word 0x1470
00005493  3D3000            cmp ax,0x30
00005496  7403              jz 0x549b
00005498  E91600            jmp word 0x54b1
0000549B  8B5EFE            mov bx,[bp-0x2]
0000549E  368A47FB          mov al,[ss:bx-0x5]
000054A2  32E4              xor ah,ah
000054A4  2D0100            sub ax,0x1
000054A7  8B5EFE            mov bx,[bp-0x2]
000054AA  368847FB          mov [ss:bx-0x5],al
000054AE  E95700            jmp word 0x5508
000054B1  3D3100            cmp ax,0x31
000054B4  7403              jz 0x54b9
000054B6  E91600            jmp word 0x54cf
000054B9  8B5EFE            mov bx,[bp-0x2]
000054BC  368A47F9          mov al,[ss:bx-0x7]
000054C0  32E4              xor ah,ah
000054C2  2D0100            sub ax,0x1
000054C5  8B5EFE            mov bx,[bp-0x2]
000054C8  368847F9          mov [ss:bx-0x7],al
000054CC  E93900            jmp word 0x5508
000054CF  3D3200            cmp ax,0x32
000054D2  7403              jz 0x54d7
000054D4  E91600            jmp word 0x54ed
000054D7  8B5EFE            mov bx,[bp-0x2]
000054DA  368A47FB          mov al,[ss:bx-0x5]
000054DE  32E4              xor ah,ah
000054E0  050100            add ax,0x1
000054E3  8B5EFE            mov bx,[bp-0x2]
000054E6  368847FB          mov [ss:bx-0x5],al
000054EA  E91B00            jmp word 0x5508
000054ED  3D3300            cmp ax,0x33
000054F0  7403              jz 0x54f5
000054F2  E91300            jmp word 0x5508
000054F5  8B5EFE            mov bx,[bp-0x2]
000054F8  368A47F9          mov al,[ss:bx-0x7]
000054FC  32E4              xor ah,ah
000054FE  050100            add ax,0x1
00005501  8B5EFE            mov bx,[bp-0x2]
00005504  368847F9          mov [ss:bx-0x7],al
00005508  59                pop cx
00005509  49                dec cx
0000550A  7406              jz 0x5512
0000550C  FE46FB            inc byte [bp-0x5]
0000550F  E9D5FE            jmp word 0x53e7
00005512  E8AEB0            call word 0x5c3
00005515  E90000            jmp word 0x5518
00005518  8BE5              mov sp,bp
0000551A  5D                pop bp
0000551B  C3                ret
0000551C  55                push bp
0000551D  8BC4              mov ax,sp
0000551F  FF76FE            push word [bp-0x2]
00005522  8BE8              mov bp,ax
00005524  55                push bp
00005525  E90000            jmp word 0x5528
00005528  83EC0B            sub sp,byte +0xb
0000552B  8D7EF6            lea di,[bp-0xa]
0000552E  16                push ss
0000552F  57                push di
00005530  B8BC02            mov ax,0x2bc
00005533  50                push ax
00005534  A16105            mov ax,[0x561]
00005537  50                push ax
00005538  A06002            mov al,[0x260]
0000553B  32E4              xor ah,ah
0000553D  50                push ax
0000553E  B81E00            mov ax,0x1e
00005541  E8EBC5            call word 0x1b2f
00005544  E8F1C5            call word 0x1b38
00005547  E895C4            call word 0x19df
0000554A  B80100            mov ax,0x1
0000554D  E8DFC5            call word 0x1b2f
00005550  E853C4            call word 0x19a6
00005553  E8E2C5            call word 0x1b38
00005556  E886C4            call word 0x19df
00005559  E8DCC5            call word 0x1b38
0000555C  E847C4            call word 0x19a6
0000555F  E858C5            call word 0x1aba
00005562  E82EC4            call word 0x1993
00005565  B80100            mov ax,0x1
00005568  8946F4            mov [bp-0xc],ax
0000556B  B80000            mov ax,0x0
0000556E  8846F1            mov [bp-0xf],al
00005571  8B46F4            mov ax,[bp-0xc]
00005574  050100            add ax,0x1
00005577  8946F4            mov [bp-0xc],ax
0000557A  E827B8            call word 0xda4
0000557D  7503              jnz 0x5582
0000557F  E90A02            jmp word 0x578c
00005582  BF4A01            mov di,0x14a
00005585  1E                push ds
00005586  E8B2CF            call word 0x253b
00005589  8B5EFE            mov bx,[bp-0x2]
0000558C  368D7FFD          lea di,[ss:bx-0x3]
00005590  16                push ss
00005591  E8CED1            call word 0x2762
00005594  8B5EFE            mov bx,[bp-0x2]
00005597  368A47FD          mov al,[ss:bx-0x3]
0000559B  32E4              xor ah,ah
0000559D  E8CEAD            call word 0x36e
000055A0  8B5EFE            mov bx,[bp-0x2]
000055A3  368847FD          mov [ss:bx-0x3],al
000055A7  B80100            mov ax,0x1
000055AA  8846F1            mov [bp-0xf],al
000055AD  8B5EFE            mov bx,[bp-0x2]
000055B0  368A47FD          mov al,[ss:bx-0x3]
000055B4  32E4              xor ah,ah
000055B6  50                push ax
000055B7  A06802            mov al,[0x268]
000055BA  32E4              xor ah,ah
000055BC  59                pop cx
000055BD  91                xchg ax,cx
000055BE  3BC1              cmp ax,cx
000055C0  7403              jz 0x55c5
000055C2  E91400            jmp word 0x55d9
000055C5  8B5EFE            mov bx,[bp-0x2]
000055C8  368B47F7          mov ax,[ss:bx-0x9]
000055CC  050100            add ax,0x1
000055CF  8B5EFE            mov bx,[bp-0x2]
000055D2  368947F7          mov [ss:bx-0x9],ax
000055D6  E98A01            jmp word 0x5763
000055D9  8B5EFE            mov bx,[bp-0x2]
000055DC  368A47FD          mov al,[ss:bx-0x3]
000055E0  32E4              xor ah,ah
000055E2  50                push ax
000055E3  A06902            mov al,[0x269]
000055E6  32E4              xor ah,ah
000055E8  59                pop cx
000055E9  91                xchg ax,cx
000055EA  3BC1              cmp ax,cx
000055EC  7403              jz 0x55f1
000055EE  E91400            jmp word 0x5605
000055F1  8B5EFE            mov bx,[bp-0x2]
000055F4  368B47F7          mov ax,[ss:bx-0x9]
000055F8  2D0100            sub ax,0x1
000055FB  8B5EFE            mov bx,[bp-0x2]
000055FE  368947F7          mov [ss:bx-0x9],ax
00005602  E95E01            jmp word 0x5763
00005605  8B5EFE            mov bx,[bp-0x2]
00005608  368A47FD          mov al,[ss:bx-0x3]
0000560C  32E4              xor ah,ah
0000560E  3D5600            cmp ax,0x56
00005611  7403              jz 0x5616
00005613  E9CB00            jmp word 0x56e1
00005616  A16105            mov ax,[0x561]
00005619  3D3100            cmp ax,0x31
0000561C  7F03              jg 0x5621
0000561E  E9BD00            jmp word 0x56de
00005621  A16105            mov ax,[0x561]
00005624  2D3200            sub ax,0x32
00005627  A36105            mov [0x561],ax
0000562A  B80100            mov ax,0x1
0000562D  50                push ax
0000562E  B80100            mov ax,0x1
00005631  E876B7            call word 0xdaa
00005634  E821CF            call word 0x2558
00005637  A06A02            mov al,[0x26a]
0000563A  32E4              xor ah,ah
0000563C  50                push ax
0000563D  B80000            mov ax,0x0
00005640  E85AD2            call word 0x289d
00005643  B82000            mov ax,0x20
00005646  50                push ax
00005647  B80000            mov ax,0x0
0000564A  E850D2            call word 0x289d
0000564D  A16502            mov ax,[0x265]
00005650  50                push ax
00005651  B80500            mov ax,0x5
00005654  E862D2            call word 0x28b9
00005657  E803D3            call word 0x295d
0000565A  0C20              or al,0x20
0000565C  50                push ax
0000565D  7473              jz 0x56d2
0000565F  2020              and [bx+si],ah
00005661  2D204E            sub ax,0x4e20
00005664  69763AA060        imul si,[bp+0x3a],word 0x60a0
00005669  0232              add dh,[bp+si]
0000566B  E450              in al,0x50
0000566D  B80200            mov ax,0x2
00005670  E846D2            call word 0x28b9
00005673  E8E7D2            call word 0x295d
00005676  0920              or [bx+si],sp
00005678  2D2047            sub ax,0x4720
0000567B  6E                outsb
0000567C  61                popaw
0000567D  66753A            o32 jnz 0x56ba
00005680  A06102            mov al,[0x261]
00005683  32E4              xor ah,ah
00005685  50                push ax
00005686  B80200            mov ax,0x2
00005689  E82DD2            call word 0x28b9
0000568C  E8CED2            call word 0x295d
0000568F  06                push es
00005690  2020              and [bx+si],ah
00005692  56                push si
00005693  69743AB826        imul si,[si+0x3a],word 0x26b8
00005698  0250A1            add dl,[bx+si-0x5f]
0000569B  61                popaw
0000569C  0550A0            add ax,0xa050
0000569F  60                pushaw
000056A0  0232              add dh,[bp+si]
000056A2  E450              in al,0x50
000056A4  B81E00            mov ax,0x1e
000056A7  E885C4            call word 0x1b2f
000056AA  E88BC4            call word 0x1b38
000056AD  E82FC3            call word 0x19df
000056B0  B80100            mov ax,0x1
000056B3  E879C4            call word 0x1b2f
000056B6  E8EDC2            call word 0x19a6
000056B9  E87CC4            call word 0x1b38
000056BC  E820C3            call word 0x19df
000056BF  E876C4            call word 0x1b38
000056C2  E8E1C2            call word 0x19a6
000056C5  E8F2C3            call word 0x1aba
000056C8  B80C00            mov ax,0xc
000056CB  E861C4            call word 0x1b2f
000056CE  E80EC3            call word 0x19df
000056D1  E826C4            call word 0x1afa
000056D4  50                push ax
000056D5  B80200            mov ax,0x2
000056D8  E8DED1            call word 0x28b9
000056DB  E90000            jmp word 0x56de
000056DE  E98200            jmp word 0x5763
000056E1  8B5EFE            mov bx,[bp-0x2]
000056E4  368A47FD          mov al,[ss:bx-0x3]
000056E8  32E4              xor ah,ah
000056EA  3D5000            cmp ax,0x50
000056ED  7403              jz 0x56f2
000056EF  E90B00            jmp word 0x56fd
000056F2  E8AFB6            call word 0xda4
000056F5  7503              jnz 0x56fa
000056F7  E9F8FF            jmp word 0x56f2
000056FA  E96600            jmp word 0x5763
000056FD  8B5EFE            mov bx,[bp-0x2]
00005700  368A47FD          mov al,[ss:bx-0x3]
00005704  32E4              xor ah,ah
00005706  3D4D00            cmp ax,0x4d
00005709  7403              jz 0x570e
0000570B  E95500            jmp word 0x5763
0000570E  A06A02            mov al,[0x26a]
00005711  32E4              xor ah,ah
00005713  3D2000            cmp ax,0x20
00005716  7403              jz 0x571b
00005718  E90F00            jmp word 0x572a
0000571B  B80E00            mov ax,0xe
0000571E  A26A02            mov [0x26a],al
00005721  B80100            mov ax,0x1
00005724  A23403            mov [0x334],al
00005727  E90C00            jmp word 0x5736
0000572A  B82000            mov ax,0x20
0000572D  A26A02            mov [0x26a],al
00005730  B80000            mov ax,0x0
00005733  A23403            mov [0x334],al
00005736  B80100            mov ax,0x1
00005739  50                push ax
0000573A  B80100            mov ax,0x1
0000573D  E86AB6            call word 0xdaa
00005740  E815CE            call word 0x2558
00005743  A06A02            mov al,[0x26a]
00005746  32E4              xor ah,ah
00005748  50                push ax
00005749  B80000            mov ax,0x0
0000574C  E84ED1            call word 0x289d
0000574F  B82000            mov ax,0x20
00005752  50                push ax
00005753  B80000            mov ax,0x0
00005756  E844D1            call word 0x289d
00005759  A16502            mov ax,[0x265]
0000575C  50                push ax
0000575D  B80500            mov ax,0x5
00005760  E856D1            call word 0x28b9
00005763  8B46F4            mov ax,[bp-0xc]
00005766  050100            add ax,0x1
00005769  8946F4            mov [bp-0xc],ax
0000576C  B80100            mov ax,0x1
0000576F  0BC0              or ax,ax
00005771  7503              jnz 0x5776
00005773  E90000            jmp word 0x5776
00005776  8B46F4            mov ax,[bp-0xc]
00005779  50                push ax
0000577A  8D7EF6            lea di,[bp-0xa]
0000577D  16                push ss
0000577E  E8F2C1            call word 0x1973
00005781  E8B4C3            call word 0x1b38
00005784  E8EFC2            call word 0x1a76
00005787  7503              jnz 0x578c
00005789  E9D7FF            jmp word 0x5763
0000578C  8A46F1            mov al,[bp-0xf]
0000578F  32E4              xor ah,ah
00005791  50                push ax
00005792  8B46F4            mov ax,[bp-0xc]
00005795  50                push ax
00005796  8D7EF6            lea di,[bp-0xa]
00005799  16                push ss
0000579A  E8D6C1            call word 0x1973
0000579D  E898C3            call word 0x1b38
000057A0  E8D3C2            call word 0x1a76
000057A3  59                pop cx
000057A4  0BC1              or ax,cx
000057A6  0BC0              or ax,ax
000057A8  7503              jnz 0x57ad
000057AA  E9C4FD            jmp word 0x5571
000057AD  E90000            jmp word 0x57b0
000057B0  8BE5              mov sp,bp
000057B2  5D                pop bp
000057B3  C3                ret
000057B4  55                push bp
000057B5  8BC4              mov ax,sp
000057B7  FF76FE            push word [bp-0x2]
000057BA  8BE8              mov bp,ax
000057BC  55                push bp
000057BD  E98101            jmp word 0x5941
000057C0  0100              add [bx+si],ax
000057C2  0200              add al,[bx+si]
000057C4  0300              add ax,[bx+si]
000057C6  0400              add al,0x0
000057C8  050006            add ax,0x600
000057CB  0007              add [bx],al
000057CD  0008              add [bx+si],cl
000057CF  0009              add [bx+di],cl
000057D1  000A              add [bp+si],cl
000057D3  000B              add [bp+di],cl
000057D5  000C              add [si],cl
000057D7  00558B            add [di-0x75],dl
000057DA  C4                db 0xc4
000057DB  FF76FE            push word [bp-0x2]
000057DE  FF76FC            push word [bp-0x4]
000057E1  8BE8              mov bp,ax
000057E3  55                push bp
000057E4  E9E600            jmp word 0x58cd
000057E7  55                push bp
000057E8  8BC4              mov ax,sp
000057EA  FF76FE            push word [bp-0x2]
000057ED  FF76FC            push word [bp-0x4]
000057F0  FF76FA            push word [bp-0x6]
000057F3  8BE8              mov bp,ax
000057F5  55                push bp
000057F6  E90000            jmp word 0x57f9
000057F9  83EC08            sub sp,byte +0x8
000057FC  8D7EF2            lea di,[bp-0xe]
000057FF  16                push ss
00005800  57                push di
00005801  E87EC1            call word 0x1982
00005804  8600              xchg al,[bx+si]
00005806  0000              add [bx+si],al
00005808  8002E8            add byte [bp+si],0xe8
0000580B  86C1              xchg al,cl
0000580D  B80100            mov ax,0x1
00005810  50                push ax
00005811  8B4608            mov ax,[bp+0x8]
00005814  59                pop cx
00005815  91                xchg ax,cx
00005816  2BC8              sub cx,ax
00005818  7D03              jnl 0x581d
0000581A  E92700            jmp word 0x5844
0000581D  41                inc cx
0000581E  8946F0            mov [bp-0x10],ax
00005821  51                push cx
00005822  8D7EF2            lea di,[bp-0xe]
00005825  16                push ss
00005826  57                push di
00005827  8D7EF2            lea di,[bp-0xe]
0000582A  16                push ss
0000582B  E845C1            call word 0x1973
0000582E  B80200            mov ax,0x2
00005831  E8FBC2            call word 0x1b2f
00005834  E899C1            call word 0x19d0
00005837  E859C1            call word 0x1993
0000583A  59                pop cx
0000583B  49                dec cx
0000583C  7406              jz 0x5844
0000583E  FF46F0            inc word [bp-0x10]
00005841  E9DDFF            jmp word 0x5821
00005844  B80100            mov ax,0x1
00005847  50                push ax
00005848  8B4606            mov ax,[bp+0x6]
0000584B  2D0100            sub ax,0x1
0000584E  59                pop cx
0000584F  91                xchg ax,cx
00005850  2BC8              sub cx,ax
00005852  7D03              jnl 0x5857
00005854  E92A00            jmp word 0x5881
00005857  41                inc cx
00005858  8946F0            mov [bp-0x10],ax
0000585B  51                push cx
0000585C  8D7EF2            lea di,[bp-0xe]
0000585F  16                push ss
00005860  57                push di
00005861  8D7EF2            lea di,[bp-0xe]
00005864  16                push ss
00005865  E80BC1            call word 0x1973
00005868  E817C1            call word 0x1982
0000586B  8106967C9C07      add word [0x7c96],0x79c
00005871  E85CC1            call word 0x19d0
00005874  E81CC1            call word 0x1993
00005877  59                pop cx
00005878  49                dec cx
00005879  7406              jz 0x5881
0000587B  FF46F0            inc word [bp-0x10]
0000587E  E9DAFF            jmp word 0x585b
00005881  8B4604            mov ax,[bp+0x4]
00005884  3D0000            cmp ax,0x0
00005887  7503              jnz 0x588c
00005889  E92200            jmp word 0x58ae
0000588C  8D7EF2            lea di,[bp-0xe]
0000588F  16                push ss
00005890  E8E0C0            call word 0x1973
00005893  E860C2            call word 0x1af6
00005896  50                push ax
00005897  A03403            mov al,[0x334]
0000589A  32E4              xor ah,ah
0000589C  59                pop cx
0000589D  F7E9              imul cx
0000589F  E8FAAC            call word 0x59c
000058A2  8B4604            mov ax,[bp+0x4]
000058A5  E86BA9            call word 0x213
000058A8  E818AD            call word 0x5c3
000058AB  E91600            jmp word 0x58c4
000058AE  8D7EF2            lea di,[bp-0xe]
000058B1  16                push ss
000058B2  E8BEC0            call word 0x1973
000058B5  E83EC2            call word 0x1af6
000058B8  50                push ax
000058B9  A03403            mov al,[0x334]
000058BC  32E4              xor ah,ah
000058BE  59                pop cx
000058BF  F7E9              imul cx
000058C1  E8D8AC            call word 0x59c
000058C4  E90000            jmp word 0x58c7
000058C7  8BE5              mov sp,bp
000058C9  5D                pop bp
000058CA  C20600            ret 0x6
000058CD  4C                dec sp
000058CE  4C                dec sp
000058CF  B8F401            mov ax,0x1f4
000058D2  50                push ax
000058D3  B8DC05            mov ax,0x5dc
000058D6  59                pop cx
000058D7  91                xchg ax,cx
000058D8  2BC8              sub cx,ax
000058DA  7D03              jnl 0x58df
000058DC  E92400            jmp word 0x5903
000058DF  41                inc cx
000058E0  8946F8            mov [bp-0x8],ax
000058E3  51                push cx
000058E4  B80100            mov ax,0x1
000058E7  E829A9            call word 0x213
000058EA  8B46F8            mov ax,[bp-0x8]
000058ED  50                push ax
000058EE  A03403            mov al,[0x334]
000058F1  32E4              xor ah,ah
000058F3  59                pop cx
000058F4  F7E9              imul cx
000058F6  E8A3AC            call word 0x59c
000058F9  59                pop cx
000058FA  49                dec cx
000058FB  7406              jz 0x5903
000058FD  FF46F8            inc word [bp-0x8]
00005900  E9E0FF            jmp word 0x58e3
00005903  B8DC05            mov ax,0x5dc
00005906  50                push ax
00005907  B8F401            mov ax,0x1f4
0000590A  59                pop cx
0000590B  91                xchg ax,cx
0000590C  2BC8              sub cx,ax
0000590E  7E03              jng 0x5913
00005910  E92400            jmp word 0x5937
00005913  49                dec cx
00005914  8946F8            mov [bp-0x8],ax
00005917  51                push cx
00005918  B80100            mov ax,0x1
0000591B  E8F5A8            call word 0x213
0000591E  8B46F8            mov ax,[bp-0x8]
00005921  50                push ax
00005922  A03403            mov al,[0x334]
00005925  32E4              xor ah,ah
00005927  59                pop cx
00005928  F7E9              imul cx
0000592A  E86FAC            call word 0x59c
0000592D  59                pop cx
0000592E  41                inc cx
0000592F  7406              jz 0x5937
00005931  FF4EF8            dec word [bp-0x8]
00005934  E9E0FF            jmp word 0x5917
00005937  E889AC            call word 0x5c3
0000593A  E90000            jmp word 0x593d
0000593D  8BE5              mov sp,bp
0000593F  5D                pop bp
00005940  C3                ret
00005941  B90C00            mov cx,0xc
00005944  E88AB6            call word 0xfd1
00005947  E88EFE            call word 0x57d8
0000594A  E90000            jmp word 0x594d
0000594D  8BE5              mov sp,bp
0000594F  5D                pop bp
00005950  C3                ret
00005951  81EC7841          sub sp,0x4178
00005955  A06102            mov al,[0x261]
00005958  32E4              xor ah,ah
0000595A  3D0000            cmp ax,0x0
0000595D  7F03              jg 0x5962
0000595F  E91C07            jmp word 0x607e
00005962  B80000            mov ax,0x0
00005965  8986EAFE          mov [bp-0x116],ax
00005969  B82602            mov ax,0x226
0000596C  A36105            mov [0x561],ax
0000596F  B80100            mov ax,0x1
00005972  50                push ax
00005973  A06002            mov al,[0x260]
00005976  32E4              xor ah,ah
00005978  59                pop cx
00005979  91                xchg ax,cx
0000597A  2BC8              sub cx,ax
0000597C  7D03              jnl 0x5981
0000597E  E94B00            jmp word 0x59cc
00005981  41                inc cx
00005982  8986E8FE          mov [bp-0x118],ax
00005986  51                push cx
00005987  B80100            mov ax,0x1
0000598A  50                push ax
0000598B  B80500            mov ax,0x5
0000598E  50                push ax
0000598F  8B86E8FE          mov ax,[bp-0x118]
00005993  B90500            mov cx,0x5
00005996  F7E9              imul cx
00005998  59                pop cx
00005999  03C1              add ax,cx
0000599B  59                pop cx
0000599C  91                xchg ax,cx
0000599D  2BC8              sub cx,ax
0000599F  7D03              jnl 0x59a4
000059A1  E91D00            jmp word 0x59c1
000059A4  41                inc cx
000059A5  8986E6FE          mov [bp-0x11a],ax
000059A9  51                push cx
000059AA  8B86EAFE          mov ax,[bp-0x116]
000059AE  0386E8FE          add ax,[bp-0x118]
000059B2  8986EAFE          mov [bp-0x116],ax
000059B6  59                pop cx
000059B7  49                dec cx
000059B8  7407              jz 0x59c1
000059BA  FF86E6FE          inc word [bp-0x11a]
000059BE  E9E8FF            jmp word 0x59a9
000059C1  59                pop cx
000059C2  49                dec cx
000059C3  7407              jz 0x59cc
000059C5  FF86E8FE          inc word [bp-0x118]
000059C9  E9BAFF            jmp word 0x5986
000059CC  B80200            mov ax,0x2
000059CF  8886EEFE          mov [bp-0x112],al
000059D3  8DBEF7FE          lea di,[bp-0x109]
000059D7  16                push ss
000059D8  57                push di
000059D9  E809B8            call word 0x11e5
000059DC  00B1FFE8          add [bx+di-0x1701],dh
000059E0  19B8B802          sbb [bx+si+0x2b8],di
000059E4  008946F7          add [bx+di-0x8ba],cl
000059E8  8DBEEFFE          lea di,[bp-0x111]
000059EC  16                push ss
000059ED  57                push di
000059EE  B8FFFF            mov ax,0xffff
000059F1  E83BC1            call word 0x1b2f
000059F4  E89CBF            call word 0x1993
000059F7  B80A00            mov ax,0xa
000059FA  E8BEA9            call word 0x3bb
000059FD  B80100            mov ax,0x1
00005A00  50                push ax
00005A01  B80100            mov ax,0x1
00005A04  E8A3B3            call word 0xdaa
00005A07  E84ECB            call word 0x2558
00005A0A  A06A02            mov al,[0x26a]
00005A0D  32E4              xor ah,ah
00005A0F  50                push ax
00005A10  B80000            mov ax,0x0
00005A13  E887CE            call word 0x289d
00005A16  B82000            mov ax,0x20
00005A19  50                push ax
00005A1A  B80000            mov ax,0x0
00005A1D  E87DCE            call word 0x289d
00005A20  A16502            mov ax,[0x265]
00005A23  50                push ax
00005A24  B80500            mov ax,0x5
00005A27  E88FCE            call word 0x28b9
00005A2A  E830CF            call word 0x295d
00005A2D  0C20              or al,0x20
00005A2F  50                push ax
00005A30  7473              jz 0x5aa5
00005A32  2020              and [bx+si],ah
00005A34  2D204E            sub ax,0x4e20
00005A37  69763AA060        imul si,[bp+0x3a],word 0x60a0
00005A3C  0232              add dh,[bp+si]
00005A3E  E450              in al,0x50
00005A40  B80200            mov ax,0x2
00005A43  E873CE            call word 0x28b9
00005A46  E814CF            call word 0x295d
00005A49  0920              or [bx+si],sp
00005A4B  2D2047            sub ax,0x4720
00005A4E  6E                outsb
00005A4F  61                popaw
00005A50  66753A            o32 jnz 0x5a8d
00005A53  A06102            mov al,[0x261]
00005A56  32E4              xor ah,ah
00005A58  50                push ax
00005A59  B80200            mov ax,0x2
00005A5C  E85ACE            call word 0x28b9
00005A5F  E8FBCE            call word 0x295d
00005A62  06                push es
00005A63  2020              and [bx+si],ah
00005A65  56                push si
00005A66  69743AB826        imul si,[si+0x3a],word 0x26b8
00005A6B  0250A1            add dl,[bx+si-0x5f]
00005A6E  61                popaw
00005A6F  0550A0            add ax,0xa050
00005A72  60                pushaw
00005A73  0232              add dh,[bp+si]
00005A75  E450              in al,0x50
00005A77  B81E00            mov ax,0x1e
00005A7A  E8B2C0            call word 0x1b2f
00005A7D  E8B8C0            call word 0x1b38
00005A80  E85CBF            call word 0x19df
00005A83  B80100            mov ax,0x1
00005A86  E8A6C0            call word 0x1b2f
00005A89  E81ABF            call word 0x19a6
00005A8C  E8A9C0            call word 0x1b38
00005A8F  E84DBF            call word 0x19df
00005A92  E8A3C0            call word 0x1b38
00005A95  E80EBF            call word 0x19a6
00005A98  E81FC0            call word 0x1aba
00005A9B  B80C00            mov ax,0xc
00005A9E  E88EC0            call word 0x1b2f
00005AA1  E83BBF            call word 0x19df
00005AA4  E853C0            call word 0x1afa
00005AA7  50                push ax
00005AA8  B80200            mov ax,0x2
00005AAB  E80BCE            call word 0x28b9
00005AAE  B8F401            mov ax,0x1f4
00005AB1  E85FA7            call word 0x213
00005AB4  B81400            mov ax,0x14
00005AB7  8846FC            mov [bp-0x4],al
00005ABA  B80C00            mov ax,0xc
00005ABD  8846FA            mov [bp-0x6],al
00005AC0  8A46FC            mov al,[bp-0x4]
00005AC3  32E4              xor ah,ah
00005AC5  8846FB            mov [bp-0x5],al
00005AC8  8A46FA            mov al,[bp-0x6]
00005ACB  32E4              xor ah,ah
00005ACD  8846F9            mov [bp-0x7],al
00005AD0  8A46FC            mov al,[bp-0x4]
00005AD3  32E4              xor ah,ah
00005AD5  50                push ax
00005AD6  8A46FA            mov al,[bp-0x6]
00005AD9  32E4              xor ah,ah
00005ADB  E8CCB2            call word 0xdaa
00005ADE  E877CA            call word 0x2558
00005AE1  B84000            mov ax,0x40
00005AE4  50                push ax
00005AE5  B80000            mov ax,0x0
00005AE8  E8B2CD            call word 0x289d
00005AEB  E8B6B2            call word 0xda4
00005AEE  7503              jnz 0x5af3
00005AF0  E9F8FF            jmp word 0x5aeb
00005AF3  BF4A01            mov di,0x14a
00005AF6  1E                push ds
00005AF7  E841CA            call word 0x253b
00005AFA  8D7EFD            lea di,[bp-0x3]
00005AFD  16                push ss
00005AFE  E861CC            call word 0x2762
00005B01  8A46FD            mov al,[bp-0x3]
00005B04  32E4              xor ah,ah
00005B06  E865A8            call word 0x36e
00005B09  3D4D00            cmp ax,0x4d
00005B0C  7403              jz 0x5b11
00005B0E  E92E00            jmp word 0x5b3f
00005B11  A06A02            mov al,[0x26a]
00005B14  32E4              xor ah,ah
00005B16  3D2000            cmp ax,0x20
00005B19  7403              jz 0x5b1e
00005B1B  E90F00            jmp word 0x5b2d
00005B1E  B80E00            mov ax,0xe
00005B21  A26A02            mov [0x26a],al
00005B24  B80100            mov ax,0x1
00005B27  A23403            mov [0x334],al
00005B2A  E90C00            jmp word 0x5b39
00005B2D  B82000            mov ax,0x20
00005B30  A26A02            mov [0x26a],al
00005B33  B80000            mov ax,0x0
00005B36  A23403            mov [0x334],al
00005B39  E9BBFE            jmp word 0x59f7
00005B3C  E90C02            jmp word 0x5d4b
00005B3F  3D4100            cmp ax,0x41
00005B42  7403              jz 0x5b47
00005B44  E92700            jmp word 0x5b6e
00005B47  A06102            mov al,[0x261]
00005B4A  32E4              xor ah,ah
00005B4C  3D0100            cmp ax,0x1
00005B4F  7F03              jg 0x5b54
00005B51  E91400            jmp word 0x5b68
00005B54  A06102            mov al,[0x261]
00005B57  32E4              xor ah,ah
00005B59  2D0100            sub ax,0x1
00005B5C  A26102            mov [0x261],al
00005B5F  B90C00            mov cx,0xc
00005B62  E86CB4            call word 0xfd1
00005B65  E890EA            call word 0x45f8
00005B68  E98CFE            jmp word 0x59f7
00005B6B  E9DD01            jmp word 0x5d4b
00005B6E  3D5400            cmp ax,0x54
00005B71  7403              jz 0x5b76
00005B73  E96800            jmp word 0x5bde
00005B76  B91000            mov cx,0x10
00005B79  E855B4            call word 0xfd1
00005B7C  8DBE86BE          lea di,[bp-0x417a]
00005B80  16                push ss
00005B81  57                push di
00005B82  B80100            mov ax,0x1
00005B85  50                push ax
00005B86  B80100            mov ax,0x1
00005B89  50                push ax
00005B8A  B84001            mov ax,0x140
00005B8D  50                push ax
00005B8E  B8C800            mov ax,0xc8
00005B91  50                push ax
00005B92  E82ED2            call word 0x2dc3
00005B95  B90700            mov cx,0x7
00005B98  E836B4            call word 0xfd1
00005B9B  E856ED            call word 0x48f4
00005B9E  B90400            mov cx,0x4
00005BA1  E82DB4            call word 0xfd1
00005BA4  E8FBD1            call word 0x2da2
00005BA7  B90600            mov cx,0x6
00005BAA  E824B4            call word 0xfd1
00005BAD  B80200            mov ax,0x2
00005BB0  50                push ax
00005BB1  E8F7D1            call word 0x2dab
00005BB4  B90600            mov cx,0x6
00005BB7  E817B4            call word 0xfd1
00005BBA  B80000            mov ax,0x0
00005BBD  50                push ax
00005BBE  E8EDD1            call word 0x2dae
00005BC1  B90C00            mov cx,0xc
00005BC4  E80AB4            call word 0xfd1
00005BC7  8DBE86BE          lea di,[bp-0x417a]
00005BCB  16                push ss
00005BCC  57                push di
00005BCD  B80100            mov ax,0x1
00005BD0  50                push ax
00005BD1  B8C800            mov ax,0xc8
00005BD4  50                push ax
00005BD5  E8EED1            call word 0x2dc6
00005BD8  E91CFE            jmp word 0x59f7
00005BDB  E96D01            jmp word 0x5d4b
00005BDE  3D5300            cmp ax,0x53
00005BE1  7403              jz 0x5be6
00005BE3  E90001            jmp word 0x5ce6
00005BE6  B91000            mov cx,0x10
00005BE9  E8E5B3            call word 0xfd1
00005BEC  8DBE86BE          lea di,[bp-0x417a]
00005BF0  16                push ss
00005BF1  57                push di
00005BF2  B80100            mov ax,0x1
00005BF5  50                push ax
00005BF6  B80100            mov ax,0x1
00005BF9  50                push ax
00005BFA  B84001            mov ax,0x140
00005BFD  50                push ax
00005BFE  B8C800            mov ax,0xc8
00005C01  50                push ax
00005C02  E8BED1            call word 0x2dc3
00005C05  B80200            mov ax,0x2
00005C08  E8CEA6            call word 0x2d9
00005C0B  B80D00            mov ax,0xd
00005C0E  50                push ax
00005C0F  B80600            mov ax,0x6
00005C12  E895B1            call word 0xdaa
00005C15  E840C9            call word 0x2558
00005C18  E842CD            call word 0x295d
00005C1B  1320              adc sp,[bx+si]
00005C1D  205343            and [bp+di+0x43],dl
00005C20  4F                dec di
00005C21  52                push dx
00005C22  45                inc bp
00005C23  53                push bx
00005C24  204745            and [bx+0x45],al
00005C27  4E                dec si
00005C28  45                inc bp
00005C29  52                push dx
00005C2A  41                inc cx
00005C2B  55                push bp
00005C2C  58                pop ax
00005C2D  2020              and [bx+si],ah
00005C2F  B83800            mov ax,0x38
00005C32  50                push ax
00005C33  B80600            mov ax,0x6
00005C36  E871B1            call word 0xdaa
00005C39  E81CC9            call word 0x2558
00005C3C  E81ECD            call word 0x295d
00005C3F  135343            adc dx,[bp+di+0x43]
00005C42  4F                dec di
00005C43  52                push dx
00005C44  45                inc bp
00005C45  53                push bx
00005C46  205041            and [bx+si+0x41],dl
00005C49  52                push dx
00005C4A  54                push sp
00005C4B  49                dec cx
00005C4C  43                inc bx
00005C4D  55                push bp
00005C4E  4C                dec sp
00005C4F  49                dec cx
00005C50  45                inc bp
00005C51  52                push dx
00005C52  53                push bx
00005C53  B90D00            mov cx,0xd
00005C56  E878B3            call word 0xfd1
00005C59  BF2504            mov di,0x425
00005C5C  1E                push ds
00005C5D  57                push di
00005C5E  B80200            mov ax,0x2
00005C61  50                push ax
00005C62  E878F0            call word 0x4cdd
00005C65  B90D00            mov cx,0xd
00005C68  E866B3            call word 0xfd1
00005C6B  BF3503            mov di,0x335
00005C6E  1E                push ds
00005C6F  57                push di
00005C70  B82B00            mov ax,0x2b
00005C73  50                push ax
00005C74  E866F0            call word 0x4cdd
00005C77  B81E00            mov ax,0x1e
00005C7A  50                push ax
00005C7B  B81900            mov ax,0x19
00005C7E  E829B1            call word 0xdaa
00005C81  E8D4C8            call word 0x2558
00005C84  E8D6CC            call word 0x295d
00005C87  16                push ss
00005C88  41                inc cx
00005C89  50                push ax
00005C8A  50                push ax
00005C8B  55                push bp
00005C8C  59                pop cx
00005C8D  45                inc bp
00005C8E  52                push dx
00005C8F  205355            and [bp+di+0x55],dl
00005C92  52                push dx
00005C93  20554E            and [di+0x4e],dl
00005C96  45                inc bp
00005C97  20544F            and [si+0x4f],dl
00005C9A  55                push bp
00005C9B  43                inc bx
00005C9C  48                dec ax
00005C9D  45                inc bp
00005C9E  E803B1            call word 0xda4
00005CA1  7503              jnz 0x5ca6
00005CA3  E9F8FF            jmp word 0x5c9e
00005CA6  B90400            mov cx,0x4
00005CA9  E825B3            call word 0xfd1
00005CAC  E8F3D0            call word 0x2da2
00005CAF  B90600            mov cx,0x6
00005CB2  E81CB3            call word 0xfd1
00005CB5  B80200            mov ax,0x2
00005CB8  50                push ax
00005CB9  E8EFD0            call word 0x2dab
00005CBC  B90600            mov cx,0x6
00005CBF  E80FB3            call word 0xfd1
00005CC2  B80000            mov ax,0x0
00005CC5  50                push ax
00005CC6  E8E5D0            call word 0x2dae
00005CC9  B90C00            mov cx,0xc
00005CCC  E802B3            call word 0xfd1
00005CCF  8DBE86BE          lea di,[bp-0x417a]
00005CD3  16                push ss
00005CD4  57                push di
00005CD5  B80100            mov ax,0x1
00005CD8  50                push ax
00005CD9  B8C800            mov ax,0xc8
00005CDC  50                push ax
00005CDD  E8E6D0            call word 0x2dc6
00005CE0  E914FD            jmp word 0x59f7
00005CE3  E96500            jmp word 0x5d4b
00005CE6  3D5600            cmp ax,0x56
00005CE9  7403              jz 0x5cee
00005CEB  E91A00            jmp word 0x5d08
00005CEE  A16105            mov ax,[0x561]
00005CF1  3D3100            cmp ax,0x31
00005CF4  7F03              jg 0x5cf9
00005CF6  E90900            jmp word 0x5d02
00005CF9  A16105            mov ax,[0x561]
00005CFC  2D3200            sub ax,0x32
00005CFF  A36105            mov [0x561],ax
00005D02  E9F2FC            jmp word 0x59f7
00005D05  E94300            jmp word 0x5d4b
00005D08  8A46FD            mov al,[bp-0x3]
00005D0B  32E4              xor ah,ah
00005D0D  E85EA6            call word 0x36e
00005D10  50                push ax
00005D11  A06902            mov al,[0x269]
00005D14  32E4              xor ah,ah
00005D16  59                pop cx
00005D17  91                xchg ax,cx
00005D18  3BC1              cmp ax,cx
00005D1A  7403              jz 0x5d1f
00005D1C  E90C00            jmp word 0x5d2b
00005D1F  8B46F7            mov ax,[bp-0x9]
00005D22  2D0100            sub ax,0x1
00005D25  8946F7            mov [bp-0x9],ax
00005D28  E92000            jmp word 0x5d4b
00005D2B  8A46FD            mov al,[bp-0x3]
00005D2E  32E4              xor ah,ah
00005D30  E83BA6            call word 0x36e
00005D33  50                push ax
00005D34  A06802            mov al,[0x268]
00005D37  32E4              xor ah,ah
00005D39  59                pop cx
00005D3A  91                xchg ax,cx
00005D3B  3BC1              cmp ax,cx
00005D3D  7403              jz 0x5d42
00005D3F  E90900            jmp word 0x5d4b
00005D42  8B46F7            mov ax,[bp-0x9]
00005D45  050100            add ax,0x1
00005D48  8946F7            mov [bp-0x9],ax
00005D4B  8A46FB            mov al,[bp-0x5]
00005D4E  32E4              xor ah,ah
00005D50  50                push ax
00005D51  8A46F9            mov al,[bp-0x7]
00005D54  32E4              xor ah,ah
00005D56  E851B0            call word 0xdaa
00005D59  E8FCC7            call word 0x2558
00005D5C  B82000            mov ax,0x20
00005D5F  50                push ax
00005D60  B80000            mov ax,0x0
00005D63  E837CB            call word 0x289d
00005D66  E85AA8            call word 0x5c3
00005D69  8B46F7            mov ax,[bp-0x9]
00005D6C  3D0300            cmp ax,0x3
00005D6F  7F03              jg 0x5d74
00005D71  E90600            jmp word 0x5d7a
00005D74  B80000            mov ax,0x0
00005D77  8946F7            mov [bp-0x9],ax
00005D7A  8B46F7            mov ax,[bp-0x9]
00005D7D  3D0000            cmp ax,0x0
00005D80  7C03              jl 0x5d85
00005D82  E90600            jmp word 0x5d8b
00005D85  B80300            mov ax,0x3
00005D88  8946F7            mov [bp-0x9],ax
00005D8B  8B46F7            mov ax,[bp-0x9]
00005D8E  3D0000            cmp ax,0x0
00005D91  7403              jz 0x5d96
00005D93  E90E00            jmp word 0x5da4
00005D96  8A46FC            mov al,[bp-0x4]
00005D99  32E4              xor ah,ah
00005D9B  2D0100            sub ax,0x1
00005D9E  8846FC            mov [bp-0x4],al
00005DA1  E93F00            jmp word 0x5de3
00005DA4  3D0100            cmp ax,0x1
00005DA7  7403              jz 0x5dac
00005DA9  E90E00            jmp word 0x5dba
00005DAC  8A46FA            mov al,[bp-0x6]
00005DAF  32E4              xor ah,ah
00005DB1  2D0100            sub ax,0x1
00005DB4  8846FA            mov [bp-0x6],al
00005DB7  E92900            jmp word 0x5de3
00005DBA  3D0200            cmp ax,0x2
00005DBD  7403              jz 0x5dc2
00005DBF  E90E00            jmp word 0x5dd0
00005DC2  8A46FC            mov al,[bp-0x4]
00005DC5  32E4              xor ah,ah
00005DC7  050100            add ax,0x1
00005DCA  8846FC            mov [bp-0x4],al
00005DCD  E91300            jmp word 0x5de3
00005DD0  3D0300            cmp ax,0x3
00005DD3  7403              jz 0x5dd8
00005DD5  E90B00            jmp word 0x5de3
00005DD8  8A46FA            mov al,[bp-0x6]
00005DDB  32E4              xor ah,ah
00005DDD  050100            add ax,0x1
00005DE0  8846FA            mov [bp-0x6],al
00005DE3  8B46F7            mov ax,[bp-0x9]
00005DE6  50                push ax
00005DE7  B80000            mov ax,0x0
00005DEA  50                push ax
00005DEB  8DBEF5FE          lea di,[bp-0x10b]
00005DEF  16                push ss
00005DF0  B101              mov cl,0x1
00005DF2  E81DB0            call word 0xe12
00005DF5  8DBEF7FE          lea di,[bp-0x109]
00005DF9  16                push ss
00005DFA  57                push di
00005DFB  8DBEF7FE          lea di,[bp-0x109]
00005DFF  16                push ss
00005E00  E8C9B3            call word 0x11cc
00005E03  8DBEF5FE          lea di,[bp-0x10b]
00005E07  16                push ss
00005E08  E8C1B3            call word 0x11cc
00005E0B  E8EFB4            call word 0x12fd
00005E0E  B1FF              mov cl,0xff
00005E10  E8E8B3            call word 0x11fb
00005E13  8DBEEFFE          lea di,[bp-0x111]
00005E17  16                push ss
00005E18  E858BB            call word 0x1973
00005E1B  B80000            mov ax,0x0
00005E1E  E80EBD            call word 0x1b2f
00005E21  E86CBC            call word 0x1a90
00005E24  7503              jnz 0x5e29
00005E26  E9A200            jmp word 0x5ecb
00005E29  8DBEF5FE          lea di,[bp-0x10b]
00005E2D  16                push ss
00005E2E  57                push di
00005E2F  8DBEF7FE          lea di,[bp-0x109]
00005E33  16                push ss
00005E34  E895B3            call word 0x11cc
00005E37  B80100            mov ax,0x1
00005E3A  50                push ax
00005E3B  B80100            mov ax,0x1
00005E3E  E8FEB4            call word 0x133f
00005E41  B101              mov cl,0x1
00005E43  E8B5B3            call word 0x11fb
00005E46  8DBEF7FE          lea di,[bp-0x109]
00005E4A  16                push ss
00005E4B  57                push di
00005E4C  8DBEF7FE          lea di,[bp-0x109]
00005E50  16                push ss
00005E51  E878B3            call word 0x11cc
00005E54  B80200            mov ax,0x2
00005E57  50                push ax
00005E58  8DBEF7FE          lea di,[bp-0x109]
00005E5C  16                push ss
00005E5D  E86CB3            call word 0x11cc
00005E60  E81BB5            call word 0x137e
00005E63  E8D9B4            call word 0x133f
00005E66  B1FF              mov cl,0xff
00005E68  E890B3            call word 0x11fb
00005E6B  8DBEF5FE          lea di,[bp-0x10b]
00005E6F  16                push ss
00005E70  E859B3            call word 0x11cc
00005E73  E8FAB5            call word 0x1470
00005E76  3D3000            cmp ax,0x30
00005E79  7403              jz 0x5e7e
00005E7B  E90E00            jmp word 0x5e8c
00005E7E  8A46FB            mov al,[bp-0x5]
00005E81  32E4              xor ah,ah
00005E83  2D0100            sub ax,0x1
00005E86  8846FB            mov [bp-0x5],al
00005E89  E93F00            jmp word 0x5ecb
00005E8C  3D3100            cmp ax,0x31
00005E8F  7403              jz 0x5e94
00005E91  E90E00            jmp word 0x5ea2
00005E94  8A46F9            mov al,[bp-0x7]
00005E97  32E4              xor ah,ah
00005E99  2D0100            sub ax,0x1
00005E9C  8846F9            mov [bp-0x7],al
00005E9F  E92900            jmp word 0x5ecb
00005EA2  3D3200            cmp ax,0x32
00005EA5  7403              jz 0x5eaa
00005EA7  E90E00            jmp word 0x5eb8
00005EAA  8A46FB            mov al,[bp-0x5]
00005EAD  32E4              xor ah,ah
00005EAF  050100            add ax,0x1
00005EB2  8846FB            mov [bp-0x5],al
00005EB5  E91300            jmp word 0x5ecb
00005EB8  3D3300            cmp ax,0x33
00005EBB  7403              jz 0x5ec0
00005EBD  E90B00            jmp word 0x5ecb
00005EC0  8A46F9            mov al,[bp-0x7]
00005EC3  32E4              xor ah,ah
00005EC5  050100            add ax,0x1
00005EC8  8846F9            mov [bp-0x7],al
00005ECB  B90A00            mov cx,0xa
00005ECE  E800B1            call word 0xfd1
00005ED1  4C                dec sp
00005ED2  4C                dec sp
00005ED3  8A46FC            mov al,[bp-0x4]
00005ED6  32E4              xor ah,ah
00005ED8  B90800            mov cx,0x8
00005EDB  F7E9              imul cx
00005EDD  2D0500            sub ax,0x5
00005EE0  50                push ax
00005EE1  8A46FA            mov al,[bp-0x6]
00005EE4  32E4              xor ah,ah
00005EE6  B90800            mov cx,0x8
00005EE9  F7E9              imul cx
00005EEB  2D0500            sub ax,0x5
00005EEE  50                push ax
00005EEF  E8D7CE            call word 0x2dc9
00005EF2  3D0300            cmp ax,0x3
00005EF5  7403              jz 0x5efa
00005EF7  E9AF00            jmp word 0x5fa9
00005EFA  8DBEF7FE          lea di,[bp-0x109]
00005EFE  16                push ss
00005EFF  E8CAB2            call word 0x11cc
00005F02  E879B4            call word 0x137e
00005F05  50                push ax
00005F06  8DBEEFFE          lea di,[bp-0x111]
00005F0A  16                push ss
00005F0B  E865BA            call word 0x1973
00005F0E  E827BC            call word 0x1b38
00005F11  E892BA            call word 0x19a6
00005F14  B8FB00            mov ax,0xfb
00005F17  E815BC            call word 0x1b2f
00005F1A  E873BB            call word 0x1a90
00005F1D  7503              jnz 0x5f22
00005F1F  E91A00            jmp word 0x5f3c
00005F22  8DBEEFFE          lea di,[bp-0x111]
00005F26  16                push ss
00005F27  57                push di
00005F28  8DBEEFFE          lea di,[bp-0x111]
00005F2C  16                push ss
00005F2D  E843BA            call word 0x1973
00005F30  B80400            mov ax,0x4
00005F33  E8F9BB            call word 0x1b2f
00005F36  E86DBA            call word 0x19a6
00005F39  E857BA            call word 0x1993
00005F3C  A16502            mov ax,[0x265]
00005F3F  50                push ax
00005F40  A06002            mov al,[0x260]
00005F43  32E4              xor ah,ah
00005F45  59                pop cx
00005F46  03C1              add ax,cx
00005F48  A36502            mov [0x265],ax
00005F4B  B89001            mov ax,0x190
00005F4E  50                push ax
00005F4F  A03403            mov al,[0x334]
00005F52  32E4              xor ah,ah
00005F54  59                pop cx
00005F55  F7E9              imul cx
00005F57  E842A6            call word 0x59c
00005F5A  B80100            mov ax,0x1
00005F5D  50                push ax
00005F5E  B80100            mov ax,0x1
00005F61  E846AE            call word 0xdaa
00005F64  E8F1C5            call word 0x2558
00005F67  A06A02            mov al,[0x26a]
00005F6A  32E4              xor ah,ah
00005F6C  50                push ax
00005F6D  B80000            mov ax,0x0
00005F70  E82AC9            call word 0x289d
00005F73  B82000            mov ax,0x20
00005F76  50                push ax
00005F77  B80000            mov ax,0x0
00005F7A  E820C9            call word 0x289d
00005F7D  A16502            mov ax,[0x265]
00005F80  50                push ax
00005F81  B80500            mov ax,0x5
00005F84  E832C9            call word 0x28b9
00005F87  A16502            mov ax,[0x265]
00005F8A  3B86EAFE          cmp ax,[bp-0x116]
00005F8E  7403              jz 0x5f93
00005F90  E91300            jmp word 0x5fa6
00005F93  B80000            mov ax,0x0
00005F96  8886EEFE          mov [bp-0x112],al
00005F9A  B90800            mov cx,0x8
00005F9D  E831B0            call word 0xfd1
00005FA0  E811F8            call word 0x57b4
00005FA3  E99700            jmp word 0x603d
00005FA6  E94000            jmp word 0x5fe9
00005FA9  3D0100            cmp ax,0x1
00005FAC  7C05              jl 0x5fb3
00005FAE  3D0200            cmp ax,0x2
00005FB1  7E03              jng 0x5fb6
00005FB3  E93300            jmp word 0x5fe9
00005FB6  A06102            mov al,[0x261]
00005FB9  32E4              xor ah,ah
00005FBB  2D0100            sub ax,0x1
00005FBE  A26102            mov [0x261],al
00005FC1  B86900            mov ax,0x69
00005FC4  50                push ax
00005FC5  A03403            mov al,[0x334]
00005FC8  32E4              xor ah,ah
00005FCA  59                pop cx
00005FCB  F7E9              imul cx
00005FCD  E8CCA5            call word 0x59c
00005FD0  B83200            mov ax,0x32
00005FD3  E83DA2            call word 0x213
00005FD6  B90A00            mov cx,0xa
00005FD9  E8F5AF            call word 0xfd1
00005FDC  E8D2F3            call word 0x53b1
00005FDF  B80100            mov ax,0x1
00005FE2  8886EEFE          mov [bp-0x112],al
00005FE6  E95400            jmp word 0x603d
00005FE9  8A46FC            mov al,[bp-0x4]
00005FEC  32E4              xor ah,ah
00005FEE  50                push ax
00005FEF  8A46FA            mov al,[bp-0x6]
00005FF2  32E4              xor ah,ah
00005FF4  E8B3AD            call word 0xdaa
00005FF7  E85EC5            call word 0x2558
00005FFA  B84000            mov ax,0x40
00005FFD  50                push ax
00005FFE  B80000            mov ax,0x0
00006001  E899C8            call word 0x289d
00006004  B91300            mov cx,0x13
00006007  E8C7AF            call word 0xfd1
0000600A  E80FF5            call word 0x551c
0000600D  8DBEEFFE          lea di,[bp-0x111]
00006011  16                push ss
00006012  E85EB9            call word 0x1973
00006015  B8FFFF            mov ax,0xffff
00006018  E814BB            call word 0x1b2f
0000601B  E858BA            call word 0x1a76
0000601E  7503              jnz 0x6023
00006020  E91A00            jmp word 0x603d
00006023  8DBEEFFE          lea di,[bp-0x111]
00006027  16                push ss
00006028  57                push di
00006029  8DBEEFFE          lea di,[bp-0x111]
0000602D  16                push ss
0000602E  E842B9            call word 0x1973
00006031  B80100            mov ax,0x1
00006034  E8F8BA            call word 0x1b2f
00006037  E887B9            call word 0x19c1
0000603A  E856B9            call word 0x1993
0000603D  8A86EEFE          mov al,[bp-0x112]
00006041  32E4              xor ah,ah
00006043  3D0200            cmp ax,0x2
00006046  7503              jnz 0x604b
00006048  E900FD            jmp word 0x5d4b
0000604B  E875A5            call word 0x5c3
0000604E  8A86EEFE          mov al,[bp-0x112]
00006052  32E4              xor ah,ah
00006054  3D0000            cmp ax,0x0
00006057  7403              jz 0x605c
00006059  E91F00            jmp word 0x607b
0000605C  A06002            mov al,[0x260]
0000605F  32E4              xor ah,ah
00006061  050100            add ax,0x1
00006064  A26002            mov [0x260],al
00006067  B90C00            mov cx,0xc
0000606A  E864AF            call word 0xfd1
0000606D  E888E5            call word 0x45f8
00006070  A06102            mov al,[0x261]
00006073  32E4              xor ah,ah
00006075  050100            add ax,0x1
00006078  A26102            mov [0x261],al
0000607B  E9D7F8            jmp word 0x5955
0000607E  E90000            jmp word 0x6081
00006081  8BE5              mov sp,bp
00006083  5D                pop bp
00006084  C3                ret
00006085  55                push bp
00006086  8BEC              mov bp,sp
00006088  55                push bp
00006089  E90000            jmp word 0x608c
0000608C  4C                dec sp
0000608D  BF1505            mov di,0x515
00006090  1E                push ds
00006091  B91800            mov cx,0x18
00006094  E836C9            call word 0x29cd
00006097  B80100            mov ax,0x1
0000609A  50                push ax
0000609B  B80A00            mov ax,0xa
0000609E  59                pop cx
0000609F  91                xchg ax,cx
000060A0  2BC8              sub cx,ax
000060A2  7D03              jnl 0x60a7
000060A4  E93C00            jmp word 0x60e3
000060A7  41                inc cx
000060A8  8846FD            mov [bp-0x3],al
000060AB  51                push cx
000060AC  BF1505            mov di,0x515
000060AF  1E                push ds
000060B0  E86DC9            call word 0x2a20
000060B3  8A46FD            mov al,[bp-0x3]
000060B6  32E4              xor ah,ah
000060B8  B91800            mov cx,0x18
000060BB  F7E1              mul cx
000060BD  97                xchg ax,di
000060BE  81C71D03          add di,0x31d
000060C2  1E                push ds
000060C3  E87FC9            call word 0x2a45
000060C6  8A46FD            mov al,[bp-0x3]
000060C9  32E4              xor ah,ah
000060CB  B91800            mov cx,0x18
000060CE  F7E1              mul cx
000060D0  97                xchg ax,di
000060D1  81C70D04          add di,0x40d
000060D5  1E                push ds
000060D6  E86CC9            call word 0x2a45
000060D9  59                pop cx
000060DA  49                dec cx
000060DB  7406              jz 0x60e3
000060DD  FE46FD            inc byte [bp-0x3]
000060E0  E9C8FF            jmp word 0x60ab
000060E3  BF1505            mov di,0x515
000060E6  1E                push ds
000060E7  E824C9            call word 0x2a0e
000060EA  E90000            jmp word 0x60ed
000060ED  8BE5              mov sp,bp
000060EF  5D                pop bp
000060F0  C3                ret
000060F1  B90B00            mov cx,0xb
000060F4  E8DAAE            call word 0xfd1
000060F7  E8B3E0            call word 0x41ad
000060FA  B90700            mov cx,0x7
000060FD  E8D1AE            call word 0xfd1
00006100  E8F1E7            call word 0x48f4
00006103  B80E00            mov ax,0xe
00006106  A26A02            mov [0x26a],al
00006109  B80100            mov ax,0x1
0000610C  A23403            mov [0x334],al
0000610F  BF1E03            mov di,0x31e
00006112  1E                push ds
00006113  57                push di
00006114  E8CEB0            call word 0x11e5
00006117  07                pop es
00006118  47                inc di
00006119  52                push dx
0000611A  4F                dec di
0000611B  53                push bx
0000611C  4E                dec si
0000611D  55                push bp
0000611E  4C                dec sp
0000611F  B10A              mov cl,0xa
00006121  E8D7B0            call word 0x11fb
00006124  E831C4            call word 0x2558
00006127  E833C8            call word 0x295d
0000612A  0E                push cs
0000612B  2020              and [bx+si],ah
0000612D  766F              jna 0x619e
0000612F  7472              jz 0x61a3
00006131  65206E6F          and [gs:bp+0x6f],ch
00006135  6D                insw
00006136  203A              and [bp+si],bh
00006138  20E8              and al,ch
0000613A  4F                dec di
0000613B  C4BF1303          les di,[bx+0x313]
0000613F  1E                push ds
00006140  B10A              mov cl,0xa
00006142  E86EC6            call word 0x27b3
00006145  BF1303            mov di,0x313
00006148  1E                push ds
00006149  E880B0            call word 0x11cc
0000614C  E896B0            call word 0x11e5
0000614F  00E8              add al,ch
00006151  27                daa
00006152  B175              mov cl,0x75
00006154  03E9              add bp,cx
00006156  1400              adc al,0x0
00006158  BF1303            mov di,0x313
0000615B  1E                push ds
0000615C  57                push di
0000615D  BF1E03            mov di,0x31e
00006160  1E                push ds
00006161  E868B0            call word 0x11cc
00006164  B10A              mov cl,0xa
00006166  E892B0            call word 0x11fb
00006169  E91100            jmp word 0x617d
0000616C  BF1E03            mov di,0x31e
0000616F  1E                push ds
00006170  57                push di
00006171  BF1303            mov di,0x313
00006174  1E                push ds
00006175  E854B0            call word 0x11cc
00006178  B10A              mov cl,0xa
0000617A  E87EB0            call word 0x11fb
0000617D  BF2903            mov di,0x329
00006180  1E                push ds
00006181  57                push di
00006182  E860B0            call word 0x11e5
00006185  00B10AE8          add [bx+di-0x17f6],dh
00006189  70B0              jo 0x613b
0000618B  B80100            mov ax,0x1
0000618E  50                push ax
0000618F  BF1303            mov di,0x313
00006192  1E                push ds
00006193  E836B0            call word 0x11cc
00006196  E8E5B1            call word 0x137e
00006199  59                pop cx
0000619A  91                xchg ax,cx
0000619B  2BC8              sub cx,ax
0000619D  7D03              jnl 0x61a2
0000619F  E94200            jmp word 0x61e4
000061A2  41                inc cx
000061A3  A26202            mov [0x262],al
000061A6  51                push cx
000061A7  BF2903            mov di,0x329
000061AA  1E                push ds
000061AB  57                push di
000061AC  BF2903            mov di,0x329
000061AF  1E                push ds
000061B0  E819B0            call word 0x11cc
000061B3  BF1303            mov di,0x313
000061B6  1E                push ds
000061B7  E812B0            call word 0x11cc
000061BA  A06202            mov al,[0x262]
000061BD  32E4              xor ah,ah
000061BF  50                push ax
000061C0  B80100            mov ax,0x1
000061C3  E879B1            call word 0x133f
000061C6  E8A7B2            call word 0x1470
000061C9  E8A2A1            call word 0x36e
000061CC  8AE0              mov ah,al
000061CE  B001              mov al,0x1
000061D0  50                push ax
000061D1  E829B1            call word 0x12fd
000061D4  B10A              mov cl,0xa
000061D6  E822B0            call word 0x11fb
000061D9  59                pop cx
000061DA  49                dec cx
000061DB  7407              jz 0x61e4
000061DD  FE066202          inc byte [0x262]
000061E1  E9C2FF            jmp word 0x61a6
000061E4  BF1303            mov di,0x313
000061E7  1E                push ds
000061E8  57                push di
000061E9  BF2903            mov di,0x329
000061EC  1E                push ds
000061ED  E8DCAF            call word 0x11cc
000061F0  B10A              mov cl,0xa
000061F2  E806B0            call word 0x11fb
000061F5  B80000            mov ax,0x0
000061F8  A26202            mov [0x262],al
000061FB  A06202            mov al,[0x262]
000061FE  32E4              xor ah,ah
00006200  050100            add ax,0x1
00006203  A26202            mov [0x262],al
00006206  BF1303            mov di,0x313
00006209  1E                push ds
0000620A  E8BFAF            call word 0x11cc
0000620D  A06202            mov al,[0x262]
00006210  32E4              xor ah,ah
00006212  B91800            mov cx,0x18
00006215  F7E1              mul cx
00006217  97                xchg ax,di
00006218  81C71D03          add di,0x31d
0000621C  1E                push ds
0000621D  E8ACAF            call word 0x11cc
00006220  E857B0            call word 0x127a
00006223  50                push ax
00006224  A06202            mov al,[0x262]
00006227  32E4              xor ah,ah
00006229  3D0A00            cmp ax,0xa
0000622C  B80100            mov ax,0x1
0000622F  7F01              jg 0x6232
00006231  48                dec ax
00006232  59                pop cx
00006233  0BC1              or ax,cx
00006235  0BC0              or ax,ax
00006237  7503              jnz 0x623c
00006239  E9BFFF            jmp word 0x61fb
0000623C  B80000            mov ax,0x0
0000623F  A36502            mov [0x265],ax
00006242  B80100            mov ax,0x1
00006245  A26002            mov [0x260],al
00006248  B80300            mov ax,0x3
0000624B  A26102            mov [0x261],al
0000624E  B80000            mov ax,0x0
00006251  A26302            mov [0x263],al
00006254  A06202            mov al,[0x262]
00006257  32E4              xor ah,ah
00006259  3D0B00            cmp ax,0xb
0000625C  7C03              jl 0x6261
0000625E  E9EA00            jmp word 0x634b
00006261  A06302            mov al,[0x263]
00006264  32E4              xor ah,ah
00006266  050100            add ax,0x1
00006269  A26302            mov [0x263],al
0000626C  B80100            mov ax,0x1
0000626F  50                push ax
00006270  B80500            mov ax,0x5
00006273  50                push ax
00006274  A06302            mov al,[0x263]
00006277  32E4              xor ah,ah
00006279  B90500            mov cx,0x5
0000627C  F7E9              imul cx
0000627E  59                pop cx
0000627F  03C1              add ax,cx
00006281  59                pop cx
00006282  91                xchg ax,cx
00006283  2BC8              sub cx,ax
00006285  7D03              jnl 0x628a
00006287  E91F00            jmp word 0x62a9
0000628A  41                inc cx
0000628B  A26402            mov [0x264],al
0000628E  51                push cx
0000628F  A16502            mov ax,[0x265]
00006292  50                push ax
00006293  A06302            mov al,[0x263]
00006296  32E4              xor ah,ah
00006298  59                pop cx
00006299  03C1              add ax,cx
0000629B  A36502            mov [0x265],ax
0000629E  59                pop cx
0000629F  49                dec cx
000062A0  7407              jz 0x62a9
000062A2  FE066402          inc byte [0x264]
000062A6  E9E5FF            jmp word 0x628e
000062A9  A16502            mov ax,[0x265]
000062AC  50                push ax
000062AD  A06202            mov al,[0x262]
000062B0  32E4              xor ah,ah
000062B2  B91800            mov cx,0x18
000062B5  F7E1              mul cx
000062B7  97                xchg ax,di
000062B8  58                pop ax
000062B9  3B852803          cmp ax,[di+0x328]
000062BD  7F03              jg 0x62c2
000062BF  E99FFF            jmp word 0x6261
000062C2  A06302            mov al,[0x263]
000062C5  32E4              xor ah,ah
000062C7  B90200            mov cx,0x2
000062CA  99                cwd
000062CB  F7F9              idiv cx
000062CD  A26002            mov [0x260],al
000062D0  A06002            mov al,[0x260]
000062D3  32E4              xor ah,ah
000062D5  050300            add ax,0x3
000062D8  A26102            mov [0x261],al
000062DB  B80000            mov ax,0x0
000062DE  A36502            mov [0x265],ax
000062E1  B80100            mov ax,0x1
000062E4  50                push ax
000062E5  A06002            mov al,[0x260]
000062E8  32E4              xor ah,ah
000062EA  59                pop cx
000062EB  91                xchg ax,cx
000062EC  2BC8              sub cx,ax
000062EE  7D03              jnl 0x62f3
000062F0  E94D00            jmp word 0x6340
000062F3  41                inc cx
000062F4  A26302            mov [0x263],al
000062F7  51                push cx
000062F8  B80100            mov ax,0x1
000062FB  50                push ax
000062FC  B80500            mov ax,0x5
000062FF  50                push ax
00006300  A06302            mov al,[0x263]
00006303  32E4              xor ah,ah
00006305  B90500            mov cx,0x5
00006308  F7E9              imul cx
0000630A  59                pop cx
0000630B  03C1              add ax,cx
0000630D  59                pop cx
0000630E  91                xchg ax,cx
0000630F  2BC8              sub cx,ax
00006311  7D03              jnl 0x6316
00006313  E91F00            jmp word 0x6335
00006316  41                inc cx
00006317  A26402            mov [0x264],al
0000631A  51                push cx
0000631B  A16502            mov ax,[0x265]
0000631E  50                push ax
0000631F  A06302            mov al,[0x263]
00006322  32E4              xor ah,ah
00006324  59                pop cx
00006325  03C1              add ax,cx
00006327  A36502            mov [0x265],ax
0000632A  59                pop cx
0000632B  49                dec cx
0000632C  7407              jz 0x6335
0000632E  FE066402          inc byte [0x264]
00006332  E9E5FF            jmp word 0x631a
00006335  59                pop cx
00006336  49                dec cx
00006337  7407              jz 0x6340
00006339  FE066302          inc byte [0x263]
0000633D  E9B7FF            jmp word 0x62f7
00006340  A06002            mov al,[0x260]
00006343  32E4              xor ah,ah
00006345  050100            add ax,0x1
00006348  A26002            mov [0x260],al
0000634B  B90C00            mov cx,0xc
0000634E  E880AC            call word 0xfd1
00006351  E8A4E2            call word 0x45f8
00006354  B97E41            mov cx,0x417e
00006357  E877AC            call word 0xfd1
0000635A  E84DF0            call word 0x53aa
0000635D  E8C69E            call word 0x226
00006360  B80200            mov ax,0x2
00006363  E8739F            call word 0x2d9
00006366  B90A00            mov cx,0xa
00006369  E865AC            call word 0xfd1
0000636C  E886EA            call word 0x4df5
0000636F  A06702            mov al,[0x267]
00006372  32E4              xor ah,ah
00006374  E8F79F            call word 0x36e
00006377  3D4E00            cmp ax,0x4e
0000637A  7403              jz 0x637f
0000637C  E9A5FD            jmp word 0x6124
0000637F  B90700            mov cx,0x7
00006382  E84CAC            call word 0xfd1
00006385  E8FDFC            call word 0x6085
00006388  B80300            mov ax,0x3
0000638B  E84B9F            call word 0x2d9
0000638E  E90000            jmp word 0x6391
00006391  33C0              xor ax,ax
00006393  E8F3A8            call word 0xc89
00006396  0000              add [bx+si],al
