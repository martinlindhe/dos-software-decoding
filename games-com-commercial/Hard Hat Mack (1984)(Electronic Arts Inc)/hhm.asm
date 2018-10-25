00000100  EB02              jmp short 0x104
00000102  90                nop
00000103  FF                db 0xff
00000104  FC                cld
00000105  FA                cli
00000106  8CCB              mov bx,cs
00000108  8ED3              mov ss,bx
0000010A  8EDB              mov ds,bx
0000010C  8C068607          mov [0x786],es
00000110  33C0              xor ax,ax
00000112  8EC0              mov es,ax
00000114  8D067101          lea ax,[0x171]
00000118  8CCB              mov bx,cs
0000011A  2687062400        xchg ax,[es:0x24]
0000011F  26871E2600        xchg bx,[es:0x26]
00000124  A38207            mov [0x782],ax
00000127  891E8407          mov [0x784],bx
0000012B  2680261004CF      and byte [es:0x410],0xcf
00000131  26800E100420      or byte [es:0x410],0x20
00000137  BC1809            mov sp,0x918
0000013A  FB                sti
0000013B  E461              in al,0x61
0000013D  24FE              and al,0xfe
0000013F  E661              out 0x61,al
00000141  B80400            mov ax,0x4
00000144  CD10              int 0x10
00000146  B800B8            mov ax,0xb800
00000149  8EC0              mov es,ax
0000014B  BB8E01            mov bx,0x18e
0000014E  83872D0505        add word [bx+0x52d],byte +0x5
00000153  4B                dec bx
00000154  4B                dec bx
00000155  79F7              jns 0x14e
00000157  33DB              xor bx,bx
00000159  33C9              xor cx,cx
0000015B  33D2              xor dx,dx
0000015D  E9210A            jmp word 0xb81
00000160  BC1809            mov sp,0x918
00000163  FB                sti
00000164  E461              in al,0x61
00000166  24FE              and al,0xfe
00000168  E661              out 0x61,al
0000016A  B80400            mov ax,0x4
0000016D  CD10              int 0x10
0000016F  EBE6              jmp short 0x157
00000171  FB                sti
00000172  50                push ax
00000173  E460              in al,0x60
00000175  8AE0              mov ah,al
00000177  E461              in al,0x61
00000179  0C80              or al,0x80
0000017B  E661              out 0x61,al
0000017D  247F              and al,0x7f
0000017F  E661              out 0x61,al
00000181  8AC4              mov al,ah
00000183  84C0              test al,al
00000185  7812              js 0x199
00000187  53                push bx
00000188  98                cbw
00000189  93                xchg ax,bx
0000018A  2E8AA72D07        mov ah,[cs:bx+0x72d]
0000018F  84E4              test ah,ah
00000191  7905              jns 0x198
00000193  2E88268107        mov [cs:0x781],ah
00000198  5B                pop bx
00000199  FA                cli
0000019A  B020              mov al,0x20
0000019C  E620              out 0x20,al
0000019E  FECC              dec ah
000001A0  740B              jz 0x1ad
000001A2  FECC              dec ah
000001A4  7402              jz 0x1a8
000001A6  58                pop ax
000001A7  CF                iretw
000001A8  58                pop ax
000001A9  FB                sti
000001AA  E93108            jmp word 0x9de
000001AD  58                pop ax
000001AE  2EF6060301FF      test byte [cs:0x103],0xff
000001B4  74F1              jz 0x1a7
000001B6  33C0              xor ax,ax
000001B8  8EC0              mov es,ax
000001BA  2EFF368607        push word [cs:0x786]
000001BF  50                push ax
000001C0  2EA18207          mov ax,[cs:0x782]
000001C4  2E8B1E8407        mov bx,[cs:0x784]
000001C9  26A32400          mov [es:0x24],ax
000001CD  26891E2600        mov [es:0x26],bx
000001D2  90                nop
000001D3  90                nop
000001D4  90                nop
000001D5  90                nop
000001D6  90                nop
000001D7  90                nop
000001D8  B80300            mov ax,0x3
000001DB  CD10              int 0x10
000001DD  FB                sti
000001DE  CB                retf
000001DF  50                push ax
000001E0  FEC8              dec al
000001E2  75FC              jnz 0x1e0
000001E4  58                pop ax
000001E5  FEC8              dec al
000001E7  75F6              jnz 0x1df
000001E9  C3                ret
000001EA  50                push ax
000001EB  51                push cx
000001EC  52                push dx
000001ED  E87B08            call word 0xa6b
000001F0  5A                pop dx
000001F1  59                pop cx
000001F2  80F900            cmp cl,0x0
000001F5  7405              jz 0x1fc
000001F7  8ADC              mov bl,ah
000001F9  EB03              jmp short 0x1fe
000001FB  90                nop
000001FC  8AD8              mov bl,al
000001FE  58                pop ax
000001FF  80C380            add bl,0x80
00000202  B700              mov bh,0x0
00000204  C3                ret
00000205  D0DC              rcr ah,1
00000207  52                push dx
00000208  BA0102            mov dx,0x201
0000020B  EC                in al,dx
0000020C  2410              and al,0x10
0000020E  2C10              sub al,0x10
00000210  5A                pop dx
00000211  D0D4              rcl ah,1
00000213  C3                ret
00000214  D0DC              rcr ah,1
00000216  52                push dx
00000217  BA0102            mov dx,0x201
0000021A  EC                in al,dx
0000021B  2420              and al,0x20
0000021D  2C20              sub al,0x20
0000021F  5A                pop dx
00000220  D0D4              rcl ah,1
00000222  C3                ret
00000223  32C0              xor al,al
00000225  33DB              xor bx,bx
00000227  B95000            mov cx,0x50
0000022A  8BBF2D05          mov di,[bx+0x52d]
0000022E  83EF05            sub di,byte +0x5
00000231  F3AA              rep stosb
00000233  43                inc bx
00000234  43                inc bx
00000235  81FB9001          cmp bx,0x190
00000239  72EC              jc 0x227
0000023B  33DB              xor bx,bx
0000023D  C3                ret
0000023E  253F00            and ax,0x3f
00000241  8BF0              mov si,ax
00000243  D1E6              shl si,1
00000245  8BB46F72          mov si,[si+0x726f]
00000249  B007              mov al,0x7
0000024B  F6269B6D          mul byte [0x6d9b]
0000024F  91                xchg ax,cx
00000250  8A169C6D          mov dl,[0x6d9c]
00000254  32F6              xor dh,dh
00000256  8BD9              mov bx,cx
00000258  D1FB              sar bx,1
0000025A  D1FB              sar bx,1
0000025C  80E103            and cl,0x3
0000025F  02C9              add cl,cl
00000261  AD                lodsw
00000262  92                xchg ax,dx
00000263  95                xchg ax,bp
00000264  D1E5              shl bp,1
00000266  8BBE2D05          mov di,[bp+0x52d]
0000026A  B800FF            mov ax,0xff00
0000026D  D3C8              ror ax,cl
0000026F  262101            and [es:bx+di],ax
00000272  AC                lodsb
00000273  32E4              xor ah,ah
00000275  D3C8              ror ax,cl
00000277  260901            or [es:bx+di],ax
0000027A  B803FF            mov ax,0xff03
0000027D  D3C8              ror ax,cl
0000027F  26214101          and [es:bx+di+0x1],ax
00000283  AC                lodsb
00000284  32E4              xor ah,ah
00000286  D3C8              ror ax,cl
00000288  26094101          or [es:bx+di+0x1],ax
0000028C  45                inc bp
0000028D  45                inc bp
0000028E  FECE              dec dh
00000290  75D4              jnz 0x266
00000292  33DB              xor bx,bx
00000294  33C9              xor cx,cx
00000296  33D2              xor dx,dx
00000298  C3                ret
00000299  A09B6D            mov al,[0x6d9b]
0000029C  8A1E9C6D          mov bl,[0x6d9c]
000002A0  BFC402            mov di,0x2c4
000002A3  D1E3              shl bx,1
000002A5  8BAF2D05          mov bp,[bx+0x52d]
000002A9  32E4              xor ah,ah
000002AB  8BF0              mov si,ax
000002AD  D1EE              shr si,1
000002AF  D1EE              shr si,1
000002B1  2403              and al,0x3
000002B3  93                xchg ax,bx
000002B4  8A01              mov al,[bx+di]
000002B6  263002            xor [es:bp+si],al
000002B9  33DB              xor bx,bx
000002BB  33C9              xor cx,cx
000002BD  33D2              xor dx,dx
000002BF  8A0E9B6D          mov cl,[0x6d9b]
000002C3  C3                ret
000002C4  C0                db 0xc0
000002C5  300C              xor [si],cl
000002C7  03A0A015          add sp,[bx+si+0x15a0]
000002CB  3A06A115          cmp al,[0x15a1]
000002CF  7427              jz 0x2f8
000002D1  A0A015            mov al,[0x15a0]
000002D4  8A1EA215          mov bl,[0x15a2]
000002D8  E8C5FF            call word 0x2a0
000002DB  A0A015            mov al,[0x15a0]
000002DE  3A06A115          cmp al,[0x15a1]
000002E2  7311              jnc 0x2f5
000002E4  FE06A015          inc byte [0x15a0]
000002E8  F606B115FF        test byte [0x15b1],0xff
000002ED  74E2              jz 0x2d1
000002EF  FE06A015          inc byte [0x15a0]
000002F3  EBDC              jmp short 0x2d1
000002F5  EB19              jmp short 0x310
000002F7  90                nop
000002F8  A0A015            mov al,[0x15a0]
000002FB  8A1EA215          mov bl,[0x15a2]
000002FF  50                push ax
00000300  53                push bx
00000301  E89CFF            call word 0x2a0
00000304  5B                pop bx
00000305  58                pop ax
00000306  3A1EA315          cmp bl,[0x15a3]
0000030A  7404              jz 0x310
0000030C  FEC3              inc bl
0000030E  EBEF              jmp short 0x2ff
00000310  33DB              xor bx,bx
00000312  33C9              xor cx,cx
00000314  33D2              xor dx,dx
00000316  C3                ret
00000317  B007              mov al,0x7
00000319  F6269B6D          mul byte [0x6d9b]
0000031D  91                xchg ax,cx
0000031E  8A169C6D          mov dl,[0x6d9c]
00000322  32F6              xor dh,dh
00000324  8B36976D          mov si,[0x6d97]
00000328  E8DF00            call word 0x40a
0000032B  F606671BFF        test byte [0x1b67],0xff
00000330  7514              jnz 0x346
00000332  F606681BFF        test byte [0x1b68],0xff
00000337  7513              jnz 0x34c
00000339  F606661BFF        test byte [0x1b66],0xff
0000033E  7512              jnz 0x352
00000340  E82A01            call word 0x46d
00000343  EB10              jmp short 0x355
00000345  90                nop
00000346  E8D000            call word 0x419
00000349  EB0A              jmp short 0x355
0000034B  90                nop
0000034C  E8F400            call word 0x443
0000034F  EB04              jmp short 0x355
00000351  90                nop
00000352  E88801            call word 0x4dd
00000355  33DB              xor bx,bx
00000357  33C9              xor cx,cx
00000359  33D2              xor dx,dx
0000035B  881E671B          mov [0x1b67],bl
0000035F  881E681B          mov [0x1b68],bl
00000363  881E661B          mov [0x1b66],bl
00000367  C3                ret
00000368  8A0E9D6D          mov cl,[0x6d9d]
0000036C  81E1FE00          and cx,0xfe
00000370  8A169E6D          mov dl,[0x6d9e]
00000374  32F6              xor dh,dh
00000376  8B36996D          mov si,[0x6d99]
0000037A  81E600FF          and si,0xff00
0000037E  E88900            call word 0x40a
00000381  E89500            call word 0x419
00000384  8A0E9B6D          mov cl,[0x6d9b]
00000388  81E1FE00          and cx,0xfe
0000038C  8A169C6D          mov dl,[0x6d9c]
00000390  32F6              xor dh,dh
00000392  8B36976D          mov si,[0x6d97]
00000396  81E600FF          and si,0xff00
0000039A  E86D00            call word 0x40a
0000039D  E87900            call word 0x419
000003A0  802E9C6D10        sub byte [0x6d9c],0x10
000003A5  802E9E6D10        sub byte [0x6d9e],0x10
000003AA  33DB              xor bx,bx
000003AC  33C9              xor cx,cx
000003AE  33D2              xor dx,dx
000003B0  C3                ret
000003B1  C606A26D08        mov byte [0x6da2],0x8
000003B6  F606362DFF        test byte [0x2d36],0xff
000003BB  7504              jnz 0x3c1
000003BD  D026A26D          shl byte [0x6da2],1
000003C1  B007              mov al,0x7
000003C3  F6269D6D          mul byte [0x6d9d]
000003C7  91                xchg ax,cx
000003C8  8A169E6D          mov dl,[0x6d9e]
000003CC  32F6              xor dh,dh
000003CE  8B36996D          mov si,[0x6d99]
000003D2  E83500            call word 0x40a
000003D5  E84100            call word 0x419
000003D8  B007              mov al,0x7
000003DA  F6269B6D          mul byte [0x6d9b]
000003DE  91                xchg ax,cx
000003DF  8A169C6D          mov dl,[0x6d9c]
000003E3  32F6              xor dh,dh
000003E5  8B36976D          mov si,[0x6d97]
000003E9  E81E00            call word 0x40a
000003EC  E82A00            call word 0x419
000003EF  8A1EA26D          mov bl,[0x6da2]
000003F3  281E9C6D          sub [0x6d9c],bl
000003F7  281E9E6D          sub [0x6d9e],bl
000003FB  33DB              xor bx,bx
000003FD  33C9              xor cx,cx
000003FF  33D2              xor dx,dx
00000401  881EA26D          mov [0x6da2],bl
00000405  881E362D          mov [0x2d36],bl
00000409  C3                ret
0000040A  87DE              xchg bx,si
0000040C  02DF              add bl,bh
0000040E  32FF              xor bh,bh
00000410  D1E3              shl bx,1
00000412  87DE              xchg bx,si
00000414  8BB4106E          mov si,[si+0x6e10]
00000418  C3                ret
00000419  8BD9              mov bx,cx
0000041B  D1FB              sar bx,1
0000041D  D1FB              sar bx,1
0000041F  80E103            and cl,0x3
00000422  02C9              add cl,cl
00000424  AD                lodsw
00000425  92                xchg ax,dx
00000426  95                xchg ax,bp
00000427  D1E5              shl bp,1
00000429  8AEA              mov ch,dl
0000042B  8BBE2D05          mov di,[bp+0x52d]
0000042F  AC                lodsb
00000430  32E4              xor ah,ah
00000432  D3C8              ror ax,cl
00000434  263101            xor [es:bx+di],ax
00000437  47                inc di
00000438  FECD              dec ch
0000043A  75F3              jnz 0x42f
0000043C  4D                dec bp
0000043D  4D                dec bp
0000043E  FECE              dec dh
00000440  75E7              jnz 0x429
00000442  C3                ret
00000443  8BD9              mov bx,cx
00000445  D1FB              sar bx,1
00000447  D1FB              sar bx,1
00000449  80E103            and cl,0x3
0000044C  02C9              add cl,cl
0000044E  AD                lodsw
0000044F  92                xchg ax,dx
00000450  95                xchg ax,bp
00000451  D1E5              shl bp,1
00000453  8AEA              mov ch,dl
00000455  8BBE2D05          mov di,[bp+0x52d]
00000459  AC                lodsb
0000045A  32E4              xor ah,ah
0000045C  D3C8              ror ax,cl
0000045E  260901            or [es:bx+di],ax
00000461  47                inc di
00000462  FECD              dec ch
00000464  75F3              jnz 0x459
00000466  4D                dec bp
00000467  4D                dec bp
00000468  FECE              dec dh
0000046A  75E7              jnz 0x453
0000046C  C3                ret
0000046D  81FE3D95          cmp si,0x953d
00000471  74D0              jz 0x443
00000473  81FE4BA5          cmp si,0xa54b
00000477  7464              jz 0x4dd
00000479  8BD9              mov bx,cx
0000047B  D1FB              sar bx,1
0000047D  D1FB              sar bx,1
0000047F  80E103            and cl,0x3
00000482  02C9              add cl,cl
00000484  AD                lodsw
00000485  A0651B            mov al,[0x1b65]
00000488  2A069B6D          sub al,[0x6d9b]
0000048C  40                inc ax
0000048D  B407              mov ah,0x7
0000048F  F6E4              mul ah
00000491  8A269C6D          mov ah,[0x6d9c]
00000495  2A26641B          sub ah,[0x1b64]
00000499  92                xchg ax,dx
0000049A  95                xchg ax,bp
0000049B  D1E5              shl bp,1
0000049D  8AEA              mov ch,dl
0000049F  8BBE2D05          mov di,[bp+0x52d]
000004A3  B800FF            mov ax,0xff00
000004A6  D3C8              ror ax,cl
000004A8  262101            and [es:bx+di],ax
000004AB  AC                lodsb
000004AC  32E4              xor ah,ah
000004AE  D3C8              ror ax,cl
000004B0  260901            or [es:bx+di],ax
000004B3  47                inc di
000004B4  80ED04            sub ch,0x4
000004B7  741D              jz 0x4d6
000004B9  80FD04            cmp ch,0x4
000004BC  73E5              jnc 0x4a3
000004BE  86CD              xchg cl,ch
000004C0  B8FFFF            mov ax,0xffff
000004C3  D2E8              shr al,cl
000004C5  D2E8              shr al,cl
000004C7  86CD              xchg cl,ch
000004C9  D3C8              ror ax,cl
000004CB  262101            and [es:bx+di],ax
000004CE  AC                lodsb
000004CF  32E4              xor ah,ah
000004D1  D3C8              ror ax,cl
000004D3  260901            or [es:bx+di],ax
000004D6  4D                dec bp
000004D7  4D                dec bp
000004D8  FECE              dec dh
000004DA  75C1              jnz 0x49d
000004DC  C3                ret
000004DD  8BD9              mov bx,cx
000004DF  D1FB              sar bx,1
000004E1  D1FB              sar bx,1
000004E3  80E103            and cl,0x3
000004E6  02C9              add cl,cl
000004E8  A0651B            mov al,[0x1b65]
000004EB  2A069B6D          sub al,[0x6d9b]
000004EF  40                inc ax
000004F0  B407              mov ah,0x7
000004F2  F6E4              mul ah
000004F4  8A269C6D          mov ah,[0x6d9c]
000004F8  2A26641B          sub ah,[0x1b64]
000004FC  92                xchg ax,dx
000004FD  95                xchg ax,bp
000004FE  D1E5              shl bp,1
00000500  8AEA              mov ch,dl
00000502  8BBE2D05          mov di,[bp+0x52d]
00000506  B800FF            mov ax,0xff00
00000509  D3C8              ror ax,cl
0000050B  262101            and [es:bx+di],ax
0000050E  47                inc di
0000050F  80ED04            sub ch,0x4
00000512  7612              jna 0x526
00000514  80FD04            cmp ch,0x4
00000517  77F2              ja 0x50b
00000519  86CD              xchg cl,ch
0000051B  B8FFFF            mov ax,0xffff
0000051E  D2E8              shr al,cl
00000520  D2E8              shr al,cl
00000522  86CD              xchg cl,ch
00000524  EBE5              jmp short 0x50b
00000526  4D                dec bp
00000527  4D                dec bp
00000528  FECE              dec dh
0000052A  75D4              jnz 0x500
0000052C  C3                ret
0000052D  0000              add [bx+si],al
0000052F  0020              add [bx+si],ah
00000531  50                push ax
00000532  005020            add [bx+si+0x20],dl
00000535  A000A0            mov al,[0xa000]
00000538  20F0              and al,dh
0000053A  00F0              add al,dh
0000053C  204001            and [bx+si+0x1],al
0000053F  40                inc ax
00000540  21900190          and [bx+si-0x6fff],dx
00000544  21E0              and ax,sp
00000546  01E0              add ax,sp
00000548  2130              and [bx+si],si
0000054A  0230              add dh,[bx+si]
0000054C  22800280          and al,[bx+si-0x7ffe]
00000550  22D0              and dl,al
00000552  02D0              add dl,al
00000554  2220              and ah,[bx+si]
00000556  0320              add sp,[bx+si]
00000558  237003            and si,[bx+si+0x3]
0000055B  7023              jo 0x580
0000055D  C003C0            rol byte [bp+di],byte 0xc0
00000560  2310              and dx,[bx+si]
00000562  0410              add al,0x10
00000564  2460              and al,0x60
00000566  0460              add al,0x60
00000568  24B0              and al,0xb0
0000056A  04B0              add al,0xb0
0000056C  2400              and al,0x0
0000056E  050025            add ax,0x2500
00000571  50                push ax
00000572  055025            add ax,0x2550
00000575  A005A0            mov al,[0xa005]
00000578  25F005            and ax,0x5f0
0000057B  F0254006          lock and ax,0x640
0000057F  40                inc ax
00000580  2690              es nop
00000582  06                push es
00000583  90                nop
00000584  26E006            es loopne 0x58d
00000587  E026              loopne 0x5af
00000589  3007              xor [bx],al
0000058B  3027              xor [bx],ah
0000058D  800780            add byte [bx],0x80
00000590  27                daa
00000591  D007              rol byte [bx],1
00000593  D027              shl byte [bx],1
00000595  2008              and [bx+si],cl
00000597  2028              and [bx+si],ch
00000599  7008              jo 0x5a3
0000059B  7028              jo 0x5c5
0000059D  C008C0            ror byte [bx+si],byte 0xc0
000005A0  2810              sub [bx+si],dl
000005A2  0910              or [bx+si],dx
000005A4  296009            sub [bx+si+0x9],sp
000005A7  60                pushaw
000005A8  29B009B0          sub [bx+si-0x4ff7],si
000005AC  2900              sub [bx+si],ax
000005AE  0A00              or al,[bx+si]
000005B0  2A500A            sub dl,[bx+si+0xa]
000005B3  50                push ax
000005B4  2AA00AA0          sub ah,[bx+si-0x5ff6]
000005B8  2AF0              sub dh,al
000005BA  0AF0              or dh,al
000005BC  2A400B            sub al,[bx+si+0xb]
000005BF  40                inc ax
000005C0  2B900B90          sub dx,[bx+si-0x6ff5]
000005C4  2BE0              sub sp,ax
000005C6  0BE0              or sp,ax
000005C8  2B30              sub si,[bx+si]
000005CA  0C30              or al,0x30
000005CC  2C80              sub al,0x80
000005CE  0C80              or al,0x80
000005D0  2CD0              sub al,0xd0
000005D2  0CD0              or al,0xd0
000005D4  2C20              sub al,0x20
000005D6  0D202D            or ax,0x2d20
000005D9  700D              jo 0x5e8
000005DB  702D              jo 0x60a
000005DD  C00DC0            ror byte [di],byte 0xc0
000005E0  2D100E            sub ax,0xe10
000005E3  102E600E          adc [0xe60],ch
000005E7  60                pushaw
000005E8  2EB00E            cs mov al,0xe
000005EB  B02E              mov al,0x2e
000005ED  000F              add [bx],cl
000005EF  002F              add [bx],ch
000005F1  50                push ax
000005F2  0F502F            movmskps ebp,xmm12
000005F5  A00FA0            mov al,[0xa00f]
000005F8  2F                das
000005F9  F0                lock
000005FA  0F                db 0x0f
000005FB  F02F              lock das
000005FD  40                inc ax
000005FE  104030            adc [bx+si+0x30],al
00000601  90                nop
00000602  109030E0          adc [bx+si-0x1fd0],dl
00000606  10E0              adc al,ah
00000608  3030              xor [bx+si],dh
0000060A  1130              adc [bx+si],si
0000060C  31801180          xor [bx+si-0x7fef],ax
00000610  31D0              xor ax,dx
00000612  11D0              adc ax,dx
00000614  3120              xor [bx+si],sp
00000616  1220              adc ah,[bx+si]
00000618  327012            xor dh,[bx+si+0x12]
0000061B  7032              jo 0x64f
0000061D  C012C0            rcl byte [bp+si],byte 0xc0
00000620  3210              xor dl,[bx+si]
00000622  1310              adc dx,[bx+si]
00000624  336013            xor sp,[bx+si+0x13]
00000627  60                pushaw
00000628  33B013B0          xor si,[bx+si-0x4fed]
0000062C  3300              xor ax,[bx+si]
0000062E  1400              adc al,0x0
00000630  3450              xor al,0x50
00000632  1450              adc al,0x50
00000634  34A0              xor al,0xa0
00000636  14A0              adc al,0xa0
00000638  34F0              xor al,0xf0
0000063A  14F0              adc al,0xf0
0000063C  3440              xor al,0x40
0000063E  154035            adc ax,0x3540
00000641  90                nop
00000642  159035            adc ax,0x3590
00000645  E015              loopne 0x65c
00000647  E035              loopne 0x67e
00000649  30163036          xor [0x3630],dl
0000064D  80168036D0        adc byte [0x3680],0xd0
00000652  16                push ss
00000653  D0                db 0xd0
00000654  362017            and [ss:bx],dl
00000657  2037              and [bx],dh
00000659  7017              jo 0x672
0000065B  7037              jo 0x694
0000065D  C017C0            rcl byte [bx],byte 0xc0
00000660  37                aaa
00000661  1018              adc [bx+si],bl
00000663  1038              adc [bx+si],bh
00000665  60                pushaw
00000666  186038            sbb [bx+si+0x38],ah
00000669  B018              mov al,0x18
0000066B  B038              mov al,0x38
0000066D  0019              add [bx+di],bl
0000066F  0039              add [bx+di],bh
00000671  50                push ax
00000672  195039            sbb [bx+si+0x39],dx
00000675  A019A0            mov al,[0xa019]
00000678  39F0              cmp ax,si
0000067A  19F0              sbb ax,si
0000067C  39401A            cmp [bx+si+0x1a],ax
0000067F  40                inc ax
00000680  3A901A90          cmp dl,[bx+si-0x6fe6]
00000684  3AE0              cmp ah,al
00000686  1AE0              sbb ah,al
00000688  3A30              cmp dh,[bx+si]
0000068A  1B30              sbb si,[bx+si]
0000068C  3B801B80          cmp ax,[bx+si-0x7fe5]
00000690  3BD0              cmp dx,ax
00000692  1BD0              sbb dx,ax
00000694  3B20              cmp sp,[bx+si]
00000696  1C20              sbb al,0x20
00000698  3C70              cmp al,0x70
0000069A  1C70              sbb al,0x70
0000069C  3CC0              cmp al,0xc0
0000069E  1CC0              sbb al,0xc0
000006A0  3C10              cmp al,0x10
000006A2  1D103D            sbb ax,0x3d10
000006A5  60                pushaw
000006A6  1D603D            sbb ax,0x3d60
000006A9  B01D              mov al,0x1d
000006AB  B03D              mov al,0x3d
000006AD  001E003E          add [0x3e00],bl
000006B1  50                push ax
000006B2  1E                push ds
000006B3  50                push ax
000006B4  3EA01EA0          mov al,[ds:0xa01e]
000006B8  3EF01E            ds lock push ds
000006BB  F03E40            ds lock inc ax
000006BE  1F                pop ds
000006BF  40                inc ax
000006C0  3F                aas
000006C1  40                inc ax
000006C2  1F                pop ds
000006C3  40                inc ax
000006C4  3F                aas
000006C5  40                inc ax
000006C6  1F                pop ds
000006C7  40                inc ax
000006C8  3F                aas
000006C9  40                inc ax
000006CA  1F                pop ds
000006CB  40                inc ax
000006CC  3F                aas
000006CD  40                inc ax
000006CE  1F                pop ds
000006CF  40                inc ax
000006D0  3F                aas
000006D1  40                inc ax
000006D2  1F                pop ds
000006D3  40                inc ax
000006D4  3F                aas
000006D5  40                inc ax
000006D6  1F                pop ds
000006D7  40                inc ax
000006D8  3F                aas
000006D9  40                inc ax
000006DA  1F                pop ds
000006DB  40                inc ax
000006DC  3F                aas
000006DD  40                inc ax
000006DE  1F                pop ds
000006DF  40                inc ax
000006E0  3F                aas
000006E1  40                inc ax
000006E2  1F                pop ds
000006E3  40                inc ax
000006E4  3F                aas
000006E5  40                inc ax
000006E6  1F                pop ds
000006E7  40                inc ax
000006E8  3F                aas
000006E9  40                inc ax
000006EA  1F                pop ds
000006EB  40                inc ax
000006EC  3F                aas
000006ED  40                inc ax
000006EE  1F                pop ds
000006EF  40                inc ax
000006F0  3F                aas
000006F1  40                inc ax
000006F2  1F                pop ds
000006F3  40                inc ax
000006F4  3F                aas
000006F5  40                inc ax
000006F6  1F                pop ds
000006F7  40                inc ax
000006F8  3F                aas
000006F9  40                inc ax
000006FA  1F                pop ds
000006FB  40                inc ax
000006FC  3F                aas
000006FD  40                inc ax
000006FE  1F                pop ds
000006FF  40                inc ax
00000700  3F                aas
00000701  40                inc ax
00000702  1F                pop ds
00000703  40                inc ax
00000704  3F                aas
00000705  40                inc ax
00000706  1F                pop ds
00000707  40                inc ax
00000708  3F                aas
00000709  40                inc ax
0000070A  1F                pop ds
0000070B  40                inc ax
0000070C  3F                aas
0000070D  40                inc ax
0000070E  1F                pop ds
0000070F  40                inc ax
00000710  3F                aas
00000711  40                inc ax
00000712  1F                pop ds
00000713  40                inc ax
00000714  3F                aas
00000715  40                inc ax
00000716  1F                pop ds
00000717  40                inc ax
00000718  3F                aas
00000719  40                inc ax
0000071A  1F                pop ds
0000071B  40                inc ax
0000071C  3F                aas
0000071D  40                inc ax
0000071E  1F                pop ds
0000071F  40                inc ax
00000720  3F                aas
00000721  40                inc ax
00000722  1F                pop ds
00000723  40                inc ax
00000724  3F                aas
00000725  40                inc ax
00000726  1F                pop ds
00000727  40                inc ax
00000728  3F                aas
00000729  40                inc ax
0000072A  1F                pop ds
0000072B  40                inc ax
0000072C  3F                aas
0000072D  009BB1B2          add [bp+di-0x4d4f],bl
00000731  B3B4              mov bl,0xb4
00000733  B5B6              mov ch,0xb6
00000735  B7B8              mov bh,0xb8
00000737  94                xchg ax,sp
00000738  9AADBD8889        call word 0x8988:0xbdad
0000073D  D1D7              rcl di,1
0000073F  C5                db 0xc5
00000740  D2D4              rcl ah,cl
00000742  D9                db 0xd9
00000743  D5C9              aad 0xc9
00000745  8895DBDD          mov [di-0x2225],dl
00000749  8D00              lea ax,[bx+si]
0000074B  C1D3C4            rcl bx,byte 0xc4
0000074E  C6C7C8            mov bh,0xc8
00000751  CACBCC            retf 0xcccb
00000754  BBA796            mov bx,0x96a7
00000757  00DC              add ah,bl
00000759  DAD8              fcmovu st0
0000075B  C3                ret
0000075C  D6                salc
0000075D  C2CECD            ret 0xcdce
00000760  8895AF00          mov [di+0xaf],dl
00000764  AA                stosb
00000765  83A0000001        and word [bx+si+0x0],byte +0x1
0000076A  0000              add [bx+si],al
0000076C  93                xchg ax,bx
0000076D  0000              add [bx+si],al
0000076F  0002              add [bp+si],al
00000771  00979200          add [bx+0x92],dl
00000775  C100AD            rol word [bx+si],byte 0xad
00000778  88B595AB          mov [di-0x546b],dh
0000077C  00DA              add dl,bl
0000077E  0098AE00          add [bx+si+0xae],bl
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
00000820  0000              add [bx+si],al
00000822  0000              add [bx+si],al
00000824  0000              add [bx+si],al
00000826  0000              add [bx+si],al
00000828  0000              add [bx+si],al
0000082A  0000              add [bx+si],al
0000082C  0000              add [bx+si],al
0000082E  0000              add [bx+si],al
00000830  0000              add [bx+si],al
00000832  0000              add [bx+si],al
00000834  0000              add [bx+si],al
00000836  0000              add [bx+si],al
00000838  0000              add [bx+si],al
0000083A  0000              add [bx+si],al
0000083C  0000              add [bx+si],al
0000083E  0000              add [bx+si],al
00000840  0000              add [bx+si],al
00000842  0000              add [bx+si],al
00000844  0000              add [bx+si],al
00000846  0000              add [bx+si],al
00000848  0000              add [bx+si],al
0000084A  0000              add [bx+si],al
0000084C  0000              add [bx+si],al
0000084E  0000              add [bx+si],al
00000850  0000              add [bx+si],al
00000852  0000              add [bx+si],al
00000854  0000              add [bx+si],al
00000856  0000              add [bx+si],al
00000858  0000              add [bx+si],al
0000085A  0000              add [bx+si],al
0000085C  0000              add [bx+si],al
0000085E  0000              add [bx+si],al
00000860  0000              add [bx+si],al
00000862  0000              add [bx+si],al
00000864  0000              add [bx+si],al
00000866  0000              add [bx+si],al
00000868  0000              add [bx+si],al
0000086A  0000              add [bx+si],al
0000086C  0000              add [bx+si],al
0000086E  0000              add [bx+si],al
00000870  0000              add [bx+si],al
00000872  0000              add [bx+si],al
00000874  0000              add [bx+si],al
00000876  0000              add [bx+si],al
00000878  0000              add [bx+si],al
0000087A  0000              add [bx+si],al
0000087C  0000              add [bx+si],al
0000087E  0000              add [bx+si],al
00000880  0000              add [bx+si],al
00000882  0000              add [bx+si],al
00000884  0000              add [bx+si],al
00000886  0000              add [bx+si],al
00000888  0000              add [bx+si],al
0000088A  0000              add [bx+si],al
0000088C  0000              add [bx+si],al
0000088E  0000              add [bx+si],al
00000890  0000              add [bx+si],al
00000892  0000              add [bx+si],al
00000894  0000              add [bx+si],al
00000896  0000              add [bx+si],al
00000898  0000              add [bx+si],al
0000089A  0000              add [bx+si],al
0000089C  0000              add [bx+si],al
0000089E  0000              add [bx+si],al
000008A0  0000              add [bx+si],al
000008A2  0000              add [bx+si],al
000008A4  0000              add [bx+si],al
000008A6  0000              add [bx+si],al
000008A8  0000              add [bx+si],al
000008AA  0000              add [bx+si],al
000008AC  0000              add [bx+si],al
000008AE  0000              add [bx+si],al
000008B0  0000              add [bx+si],al
000008B2  0000              add [bx+si],al
000008B4  0000              add [bx+si],al
000008B6  0000              add [bx+si],al
000008B8  0000              add [bx+si],al
000008BA  0000              add [bx+si],al
000008BC  0000              add [bx+si],al
000008BE  0000              add [bx+si],al
000008C0  0000              add [bx+si],al
000008C2  0000              add [bx+si],al
000008C4  0000              add [bx+si],al
000008C6  0000              add [bx+si],al
000008C8  0000              add [bx+si],al
000008CA  0000              add [bx+si],al
000008CC  0000              add [bx+si],al
000008CE  0000              add [bx+si],al
000008D0  0000              add [bx+si],al
000008D2  0000              add [bx+si],al
000008D4  0000              add [bx+si],al
000008D6  0000              add [bx+si],al
000008D8  0000              add [bx+si],al
000008DA  0000              add [bx+si],al
000008DC  0000              add [bx+si],al
000008DE  0000              add [bx+si],al
000008E0  0000              add [bx+si],al
000008E2  0000              add [bx+si],al
000008E4  0000              add [bx+si],al
000008E6  0000              add [bx+si],al
000008E8  0000              add [bx+si],al
000008EA  0000              add [bx+si],al
000008EC  0000              add [bx+si],al
000008EE  0000              add [bx+si],al
000008F0  0000              add [bx+si],al
000008F2  0000              add [bx+si],al
000008F4  0000              add [bx+si],al
000008F6  0000              add [bx+si],al
000008F8  0000              add [bx+si],al
000008FA  0000              add [bx+si],al
000008FC  0000              add [bx+si],al
000008FE  0000              add [bx+si],al
00000900  0000              add [bx+si],al
00000902  0000              add [bx+si],al
00000904  0000              add [bx+si],al
00000906  0000              add [bx+si],al
00000908  0000              add [bx+si],al
0000090A  0000              add [bx+si],al
0000090C  0000              add [bx+si],al
0000090E  0000              add [bx+si],al
00000910  0000              add [bx+si],al
00000912  0000              add [bx+si],al
00000914  0000              add [bx+si],al
00000916  0000              add [bx+si],al
00000918  0000              add [bx+si],al
0000091A  0000              add [bx+si],al
0000091C  0000              add [bx+si],al
0000091E  0000              add [bx+si],al
00000920  0016F050          add [0x50f0],dl
00000924  7574              jnz 0x99a
00000926  207468            and [si+0x68],dh
00000929  65207374          and [gs:bp+di+0x74],dh
0000092D  69636B2069        imul sp,[bp+di+0x6b],word 0x6920
00000932  6E                outsb
00000933  207468            and [si+0x68],dh
00000936  65207570          and [gs:di+0x70],dh
0000093A  7065              jo 0x9a1
0000093C  7220              jc 0x95e
0000093E  6C                insb
0000093F  65667420          gs o32 jz 0x963
00000943  17                pop ss
00000944  F02020            lock and [bx+si],ah
00000947  61                popaw
00000948  6E                outsb
00000949  64207468          and [fs:si+0x68],dh
0000094D  656E              gs outsb
0000094F  207072            and [bx+si+0x72],dh
00000952  657373            gs jnc 0x9c8
00000955  207468            and [si+0x68],dh
00000958  65207370          and [gs:bp+di+0x70],dh
0000095C  61                popaw
0000095D  636520            arpl [di+0x20],sp
00000960  626172            bound sp,[bx+di+0x72]
00000963  2020              and [bx+si],ah
00000965  FF16F020          call word [0x20f0]
00000969  205075            and [bx+si+0x75],dl
0000096C  7420              jz 0x98e
0000096E  7468              jz 0x9d8
00000970  65207374          and [gs:bp+di+0x74],dh
00000974  69636B2069        imul sp,[bp+di+0x6b],word 0x6920
00000979  6E                outsb
0000097A  207468            and [si+0x68],dh
0000097D  65206365          and [gs:bp+di+0x65],ah
00000981  6E                outsb
00000982  7465              jz 0x9e9
00000984  7220              jc 0x9a6
00000986  2020              and [bx+si],ah
00000988  FF16F050          call word [0x50f0]
0000098C  7574              jnz 0xa02
0000098E  207468            and [si+0x68],dh
00000991  65207374          and [gs:bp+di+0x74],dh
00000995  69636B2069        imul sp,[bp+di+0x6b],word 0x6920
0000099A  6E                outsb
0000099B  207468            and [si+0x68],dh
0000099E  65206C6F          and [gs:si+0x6f],ch
000009A2  7765              ja 0xa09
000009A4  7220              jc 0x9c6
000009A6  7269              jc 0xa11
000009A8  676874FF          push word 0xff74
000009AC  0000              add [bx+si],al
000009AE  0000              add [bx+si],al
000009B0  800380            add byte [bp+di],0x80
000009B3  03800380          add ax,[bx+si-0x7ffd]
000009B7  0300              add ax,[bx+si]
000009B9  0200              add al,[bx+si]
000009BB  0200              add al,[bx+si]
000009BD  0200              add al,[bx+si]
000009BF  0200              add al,[bx+si]
000009C1  0000              add [bx+si],al
000009C3  0030              add [bx+si],dh
000009C5  3030              xor [bx+si],dh
000009C7  305050            xor [bx+si+0x50],dl
000009CA  50                push ax
000009CB  50                push ax
000009CC  0000              add [bx+si],al
000009CE  0000              add [bx+si],al
000009D0  0000              add [bx+si],al
000009D2  0000              add [bx+si],al
000009D4  0000              add [bx+si],al
000009D6  0000              add [bx+si],al
000009D8  0000              add [bx+si],al
000009DA  0000              add [bx+si],al
000009DC  0000              add [bx+si],al
000009DE  C606810700        mov byte [0x781],0x0
000009E3  B80300            mov ax,0x3
000009E6  CD10              int 0x10
000009E8  BE2109            mov si,0x921
000009EB  E81400            call word 0xa02
000009EE  B8FA09            mov ax,0x9fa
000009F1  BBFF09            mov bx,0x9ff
000009F4  E81B00            call word 0xa12
000009F7  E966F7            jmp word 0x160
000009FA  BE6609            mov si,0x966
000009FD  EB03              jmp short 0xa02
000009FF  BE8909            mov si,0x989
00000A02  E83001            call word 0xb35
00000A05  A08107            mov al,[0x781]
00000A08  84C0              test al,al
00000A0A  79F9              jns 0xa05
00000A0C  C606810700        mov byte [0x781],0x0
00000A11  C3                ret
00000A12  53                push bx
00000A13  50                push ax
00000A14  BBC009            mov bx,0x9c0
00000A17  E89B00            call word 0xab5
00000A1A  5B                pop bx
00000A1B  FFD3              call bx
00000A1D  BBC409            mov bx,0x9c4
00000A20  E89200            call word 0xab5
00000A23  5B                pop bx
00000A24  FFD3              call bx
00000A26  BBC809            mov bx,0x9c8
00000A29  E88900            call word 0xab5
00000A2C  33DB              xor bx,bx
00000A2E  33C9              xor cx,cx
00000A30  33F6              xor si,si
00000A32  B80080            mov ax,0x8000
00000A35  33D2              xor dx,dx
00000A37  8A8FC409          mov cl,[bx+0x9c4]
00000A3B  2A8FC009          sub cl,[bx+0x9c0]
00000A3F  83F900            cmp cx,byte +0x0
00000A42  7426              jz 0xa6a
00000A44  F7F1              div cx
00000A46  8984B009          mov [si+0x9b0],ax
00000A4A  B80080            mov ax,0x8000
00000A4D  33D2              xor dx,dx
00000A4F  8A8FC809          mov cl,[bx+0x9c8]
00000A53  2A8FC409          sub cl,[bx+0x9c4]
00000A57  83F900            cmp cx,byte +0x0
00000A5A  740E              jz 0xa6a
00000A5C  F7F1              div cx
00000A5E  8984B809          mov [si+0x9b8],ax
00000A62  43                inc bx
00000A63  46                inc si
00000A64  46                inc si
00000A65  80FB02            cmp bl,0x2
00000A68  75C8              jnz 0xa32
00000A6A  C3                ret
00000A6B  BBAC09            mov bx,0x9ac
00000A6E  E84400            call word 0xab5
00000A71  33DB              xor bx,bx
00000A73  33F6              xor si,si
00000A75  8A87AC09          mov al,[bx+0x9ac]
00000A79  B480              mov ah,0x80
00000A7B  3A87C409          cmp al,[bx+0x9c4]
00000A7F  741D              jz 0xa9e
00000A81  B400              mov ah,0x0
00000A83  770A              ja 0xa8f
00000A85  2A87C009          sub al,[bx+0x9c0]
00000A89  F7A4B009          mul word [si+0x9b0]
00000A8D  EB0F              jmp short 0xa9e
00000A8F  2A87C409          sub al,[bx+0x9c4]
00000A93  F7A4B809          mul word [si+0x9b8]
00000A97  80C480            add ah,0x80
00000A9A  7302              jnc 0xa9e
00000A9C  B4FF              mov ah,0xff
00000A9E  80EC80            sub ah,0x80
00000AA1  88A7AC09          mov [bx+0x9ac],ah
00000AA5  43                inc bx
00000AA6  46                inc si
00000AA7  46                inc si
00000AA8  80FB02            cmp bl,0x2
00000AAB  75C8              jnz 0xa75
00000AAD  A1AC09            mov ax,[0x9ac]
00000AB0  8B1EAE09          mov bx,[0x9ae]
00000AB4  C3                ret
00000AB5  53                push bx
00000AB6  FA                cli
00000AB7  C606CC09FF        mov byte [0x9cc],0xff
00000ABC  B800FC            mov ax,0xfc00
00000ABF  BB007F            mov bx,0x7f00
00000AC2  B90001            mov cx,0x100
00000AC5  BA0102            mov dx,0x201
00000AC8  33F6              xor si,si
00000ACA  33FF              xor di,di
00000ACC  EE                out dx,al
00000ACD  E643              out 0x43,al
00000ACF  EC                in al,dx
00000AD0  22C7              and al,bh
00000AD2  0AC4              or al,ah
00000AD4  3A85CC09          cmp al,[di+0x9cc]
00000AD8  13FE              adc di,si
00000ADA  8885CC09          mov [di+0x9cc],al
00000ADE  E440              in al,0x40
00000AE0  8885D209          mov [di+0x9d2],al
00000AE4  E440              in al,0x40
00000AE6  8885D809          mov [di+0x9d8],al
00000AEA  23C3              and ax,bx
00000AEC  F685CC0903        test byte [di+0x9cc],0x3
00000AF1  E0DA              loopne 0xacd
00000AF3  FB                sti
00000AF4  5B                pop bx
00000AF5  A0D209            mov al,[0x9d2]
00000AF8  8A26D809          mov ah,[0x9d8]
00000AFC  95                xchg ax,bp
00000AFD  B500              mov ch,0x0
00000AFF  B200              mov dl,0x0
00000B01  8A8DCC09          mov cl,[di+0x9cc]
00000B05  80E103            and cl,0x3
00000B08  32CA              xor cl,dl
00000B0A  32D1              xor dl,cl
00000B0C  BEFFFF            mov si,0xffff
00000B0F  E320              jcxz 0xb31
00000B11  46                inc si
00000B12  D0E9              shr cl,1
00000B14  73F9              jnc 0xb0f
00000B16  8A85D209          mov al,[di+0x9d2]
00000B1A  8AA5D809          mov ah,[di+0x9d8]
00000B1E  2BC5              sub ax,bp
00000B20  F7D8              neg ax
00000B22  D1E8              shr ax,1
00000B24  D1E8              shr ax,1
00000B26  D1E8              shr ax,1
00000B28  D1E8              shr ax,1
00000B2A  D1E8              shr ax,1
00000B2C  2E8800            mov [cs:bx+si],al
00000B2F  EBDE              jmp short 0xb0f
00000B31  4F                dec di
00000B32  79CD              jns 0xb01
00000B34  C3                ret
00000B35  B800B8            mov ax,0xb800
00000B38  8EC0              mov es,ax
00000B3A  AC                lodsb
00000B3B  3CFF              cmp al,0xff
00000B3D  7501              jnz 0xb40
00000B3F  C3                ret
00000B40  B450              mov ah,0x50
00000B42  F6E4              mul ah
00000B44  050800            add ax,0x8
00000B47  97                xchg ax,di
00000B48  AC                lodsb
00000B49  2422              and al,0x22
00000B4B  8AE0              mov ah,al
00000B4D  B92000            mov cx,0x20
00000B50  AC                lodsb
00000B51  AB                stosw
00000B52  E2FC              loop 0xb50
00000B54  EBDF              jmp short 0xb35
00000B56  0000              add [bx+si],al
00000B58  0000              add [bx+si],al
00000B5A  0000              add [bx+si],al
00000B5C  0000              add [bx+si],al
00000B5E  0000              add [bx+si],al
00000B60  0000              add [bx+si],al
00000B62  0000              add [bx+si],al
00000B64  0000              add [bx+si],al
00000B66  0000              add [bx+si],al
00000B68  0000              add [bx+si],al
00000B6A  0000              add [bx+si],al
00000B6C  0000              add [bx+si],al
00000B6E  0000              add [bx+si],al
00000B70  0000              add [bx+si],al
00000B72  0000              add [bx+si],al
00000B74  0000              add [bx+si],al
00000B76  0000              add [bx+si],al
00000B78  0000              add [bx+si],al
00000B7A  0000              add [bx+si],al
00000B7C  0000              add [bx+si],al
00000B7E  0000              add [bx+si],al
00000B80  00BC1809          add [si+0x918],bh
00000B84  C706D90BB60C      mov word [0xbd9],0xcb6
00000B8A  802681077F        and byte [0x781],0x7f
00000B8F  B000              mov al,0x0
00000B91  FEC0              inc al
00000B93  FEC8              dec al
00000B95  A20A62            mov [0x620a],al
00000B98  E8B702            call word 0xe52
00000B9B  E885F6            call word 0x223
00000B9E  A0710B            mov al,[0xb71]
00000BA1  FEC0              inc al
00000BA3  FEC8              dec al
00000BA5  A21B62            mov [0x621b],al
00000BA8  BC1809            mov sp,0x918
00000BAB  E86E56            call word 0x621c
00000BAE  E8DF03            call word 0xf90
00000BB1  A0620B            mov al,[0xb62]
00000BB4  FEC0              inc al
00000BB6  FEC8              dec al
00000BB8  7502              jnz 0xbbc
00000BBA  EBEC              jmp short 0xba8
00000BBC  B000              mov al,0x0
00000BBE  A2800B            mov [0xb80],al
00000BC1  A20862            mov [0x6208],al
00000BC4  A01B62            mov al,[0x621b]
00000BC7  FEC0              inc al
00000BC9  FEC8              dec al
00000BCB  A2710B            mov [0xb71],al
00000BCE  BC1809            mov sp,0x918
00000BD1  E87E02            call word 0xe52
00000BD4  FF26D90B          jmp word [0xbd9]
00000BD8  00B60CE8          add [bp-0x17f4],dh
00000BDC  B73D              mov bh,0x3d
00000BDE  E8F709            call word 0x15d8
00000BE1  E89419            call word 0x2578
00000BE4  E8FE19            call word 0x25e5
00000BE7  A00862            mov al,[0x6208]
00000BEA  FEC0              inc al
00000BEC  FEC8              dec al
00000BEE  7403              jz 0xbf3
00000BF0  EB19              jmp short 0xc0b
00000BF2  90                nop
00000BF3  A07F0B            mov al,[0xb7f]
00000BF6  FEC0              inc al
00000BF8  FEC8              dec al
00000BFA  7403              jz 0xbff
00000BFC  EB0A              jmp short 0xc08
00000BFE  90                nop
00000BFF  B85365            mov ax,0x6553
00000C02  E88559            call word 0x658a
00000C05  EB04              jmp short 0xc0b
00000C07  90                nop
00000C08  E8B055            call word 0x61bb
00000C0B  E87145            call word 0x517f
00000C0E  E8B749            call word 0x55c8
00000C11  E83504            call word 0x1049
00000C14  E84442            call word 0x4e5b
00000C17  A0600B            mov al,[0xb60]
00000C1A  FEC0              inc al
00000C1C  FEC8              dec al
00000C1E  E81B3E            call word 0x4a3c
00000C21  A23A4A            mov [0x4a3a],al
00000C24  E8252E            call word 0x3a4c
00000C27  E8284A            call word 0x5652
00000C2A  E8AB3F            call word 0x4bd8
00000C2D  E85C40            call word 0x4c8c
00000C30  E8303E            call word 0x4a63
00000C33  E8D33E            call word 0x4b09
00000C36  E8F82F            call word 0x3c31
00000C39  E8D630            call word 0x3d12
00000C3C  E82A16            call word 0x2269
00000C3F  E81A5E            call word 0x6a5c
00000C42  E8B23D            call word 0x49f7
00000C45  E87615            call word 0x21be
00000C48  E8163B            call word 0x4761
00000C4B  B100              mov cl,0x0
00000C4D  FEC1              inc cl
00000C4F  FEC9              dec cl
00000C51  E896F5            call word 0x1ea
00000C54  881E770B          mov [0xb77],bl
00000C58  E84726            call word 0x32a2
00000C5B  E8285A            call word 0x6686
00000C5E  E81D5B            call word 0x677e
00000C61  E8D652            call word 0x5f3a
00000C64  E84C4D            call word 0x59b3
00000C67  E86F38            call word 0x44d9
00000C6A  E89840            call word 0x4d05
00000C6D  E87342            call word 0x4ee3
00000C70  E85135            call word 0x41c4
00000C73  E8B035            call word 0x4226
00000C76  E8AE14            call word 0x2127
00000C79  E81354            call word 0x608f
00000C7C  E88D54            call word 0x610c
00000C7F  E8FD54            call word 0x617f
00000C82  B001              mov al,0x1
00000C84  FEC0              inc al
00000C86  FEC8              dec al
00000C88  A20225            mov [0x2502],al
00000C8B  E83E32            call word 0x3ecc
00000C8E  B101              mov cl,0x1
00000C90  FEC1              inc cl
00000C92  FEC9              dec cl
00000C94  E853F5            call word 0x1ea
00000C97  881E780B          mov [0xb78],bl
00000C9B  A0710B            mov al,[0xb71]
00000C9E  FEC0              inc al
00000CA0  FEC8              dec al
00000CA2  7403              jz 0xca7
00000CA4  EB0A              jmp short 0xcb0
00000CA6  90                nop
00000CA7  B030              mov al,0x30
00000CA9  FEC0              inc al
00000CAB  FEC8              dec al
00000CAD  E82FF5            call word 0x1df
00000CB0  E8B955            call word 0x626c
00000CB3  E955FF            jmp word 0xc0b
00000CB6  E8F83C            call word 0x49b1
00000CB9  E8A70B            call word 0x1863
00000CBC  E8B918            call word 0x2578
00000CBF  E82319            call word 0x25e5
00000CC2  A00862            mov al,[0x6208]
00000CC5  FEC0              inc al
00000CC7  FEC8              dec al
00000CC9  7403              jz 0xcce
00000CCB  EB19              jmp short 0xce6
00000CCD  90                nop
00000CCE  A07F0B            mov al,[0xb7f]
00000CD1  FEC0              inc al
00000CD3  FEC8              dec al
00000CD5  7403              jz 0xcda
00000CD7  EB0A              jmp short 0xce3
00000CD9  90                nop
00000CDA  B85365            mov ax,0x6553
00000CDD  E8AA58            call word 0x658a
00000CE0  EB04              jmp short 0xce6
00000CE2  90                nop
00000CE3  E8D554            call word 0x61bb
00000CE6  E89644            call word 0x517f
00000CE9  E85D03            call word 0x1049
00000CEC  E81E46            call word 0x530d
00000CEF  E8C944            call word 0x51bb
00000CF2  E86F30            call word 0x3d64
00000CF5  E85731            call word 0x3e4f
00000CF8  E84233            call word 0x403d
00000CFB  E83B46            call word 0x5339
00000CFE  E83327            call word 0x3434
00000D01  E89E25            call word 0x32a2
00000D04  E8D237            call word 0x44d9
00000D07  E8F136            call word 0x43fb
00000D0A  E8FE33            call word 0x410b
00000D0D  E8AE14            call word 0x21be
00000D10  E84E3A            call word 0x4761
00000D13  B100              mov cl,0x0
00000D15  FEC1              inc cl
00000D17  FEC9              dec cl
00000D19  E8CEF4            call word 0x1ea
00000D1C  881E770B          mov [0xb77],bl
00000D20  E82F0F            call word 0x1c52
00000D23  E88D36            call word 0x43b3
00000D26  E84015            call word 0x2269
00000D29  E8874C            call word 0x59b3
00000D2C  E8D550            call word 0x5e04
00000D2F  E8602A            call word 0x3792
00000D32  E86142            call word 0x4f96
00000D35  E86243            call word 0x509a
00000D38  E85416            call word 0x238f
00000D3B  E84154            call word 0x617f
00000D3E  B001              mov al,0x1
00000D40  FEC0              inc al
00000D42  FEC8              dec al
00000D44  A20225            mov [0x2502],al
00000D47  E88231            call word 0x3ecc
00000D4A  B101              mov cl,0x1
00000D4C  FEC1              inc cl
00000D4E  FEC9              dec cl
00000D50  E897F4            call word 0x1ea
00000D53  881E780B          mov [0xb78],bl
00000D57  A0710B            mov al,[0xb71]
00000D5A  FEC0              inc al
00000D5C  FEC8              dec al
00000D5E  7503              jnz 0xd63
00000D60  EB0A              jmp short 0xd6c
00000D62  90                nop
00000D63  B030              mov al,0x30
00000D65  FEC0              inc al
00000D67  FEC8              dec al
00000D69  E873F4            call word 0x1df
00000D6C  E8FD54            call word 0x626c
00000D6F  E974FF            jmp word 0xce6
00000D72  E8623C            call word 0x49d7
00000D75  E8AF09            call word 0x1727
00000D78  E8FD17            call word 0x2578
00000D7B  E86718            call word 0x25e5
00000D7E  A00862            mov al,[0x6208]
00000D81  FEC0              inc al
00000D83  FEC8              dec al
00000D85  7403              jz 0xd8a
00000D87  EB19              jmp short 0xda2
00000D89  90                nop
00000D8A  A07F0B            mov al,[0xb7f]
00000D8D  FEC0              inc al
00000D8F  FEC8              dec al
00000D91  7403              jz 0xd96
00000D93  EB0A              jmp short 0xd9f
00000D95  90                nop
00000D96  B85365            mov ax,0x6553
00000D99  E8EE57            call word 0x658a
00000D9C  EB04              jmp short 0xda2
00000D9E  90                nop
00000D9F  E81954            call word 0x61bb
00000DA2  E8EE5D            call word 0x6b93
00000DA5  E8D743            call word 0x517f
00000DA8  E8C945            call word 0x5374
00000DAB  E86E46            call word 0x541c
00000DAE  E81748            call word 0x55c8
00000DB1  E89502            call word 0x1049
00000DB4  E83048            call word 0x55e7
00000DB7  E81F37            call word 0x44d9
00000DBA  E89548            call word 0x5652
00000DBD  E82F47            call word 0x54ef
00000DC0  E8D446            call word 0x5497
00000DC3  E82458            call word 0x65ea
00000DC6  E84C5A            call word 0x6815
00000DC9  E8565B            call word 0x6922
00000DCC  E80A49            call word 0x56d9
00000DCF  E86749            call word 0x5739
00000DD2  B100              mov cl,0x0
00000DD4  FEC1              inc cl
00000DD6  FEC9              dec cl
00000DD8  E80FF4            call word 0x1ea
00000DDB  881E770B          mov [0xb77],bl
00000DDF  E87A5C            call word 0x6a5c
00000DE2  E8D913            call word 0x21be
00000DE5  E87939            call word 0x4761
00000DE8  E8965E            call word 0x6c81
00000DEB  E87B14            call word 0x2269
00000DEE  E8F134            call word 0x42e2
00000DF1  E8AE24            call word 0x32a2
00000DF4  E8BC4B            call word 0x59b3
00000DF7  E8CA33            call word 0x41c4
00000DFA  E86435            call word 0x4361
00000DFD  E80335            call word 0x4303
00000E00  E87F35            call word 0x4382
00000E03  E89A34            call word 0x42a0
00000E06  E8244F            call word 0x5d2d
00000E09  E87A49            call word 0x5786
00000E0C  E82E4E            call word 0x5c3d
00000E0F  E8CB5E            call word 0x6cdd
00000E12  E8E54C            call word 0x5afa
00000E15  E8772D            call word 0x3b8f
00000E18  E8BE36            call word 0x44d9
00000E1B  E86153            call word 0x617f
00000E1E  B001              mov al,0x1
00000E20  FEC0              inc al
00000E22  FEC8              dec al
00000E24  A20225            mov [0x2502],al
00000E27  E8A230            call word 0x3ecc
00000E2A  B101              mov cl,0x1
00000E2C  FEC1              inc cl
00000E2E  FEC9              dec cl
00000E30  E8B7F3            call word 0x1ea
00000E33  881E780B          mov [0xb78],bl
00000E37  A0710B            mov al,[0xb71]
00000E3A  FEC0              inc al
00000E3C  FEC8              dec al
00000E3E  7503              jnz 0xe43
00000E40  EB0A              jmp short 0xe4c
00000E42  90                nop
00000E43  B030              mov al,0x30
00000E45  FEC0              inc al
00000E47  FEC8              dec al
00000E49  E893F3            call word 0x1df
00000E4C  E81D54            call word 0x626c
00000E4F  E950FF            jmp word 0xda2
00000E52  B002              mov al,0x2
00000E54  A22E34            mov [0x342e],al
00000E57  B020              mov al,0x20
00000E59  A2926D            mov [0x6d92],al
00000E5C  B001              mov al,0x1
00000E5E  A2895F            mov [0x5f89],al
00000E61  B000              mov al,0x0
00000E63  A2620B            mov [0xb62],al
00000E66  A28A5F            mov [0x5f8a],al
00000E69  A27D0B            mov [0xb7d],al
00000E6C  A27E61            mov [0x617e],al
00000E6F  B104              mov cl,0x4
00000E71  FEC1              inc cl
00000E73  FEC9              dec cl
00000E75  8BF1              mov si,cx
00000E77  8884BB3E          mov [si+0x3ebb],al
00000E7B  8BF1              mov si,cx
00000E7D  88840625          mov [si+0x2506],al
00000E81  FEC9              dec cl
00000E83  7802              js 0xe87
00000E85  EBEE              jmp short 0xe75
00000E87  B0FF              mov al,0xff
00000E89  FEC0              inc al
00000E8B  FEC8              dec al
00000E8D  C3                ret
00000E8E  B000              mov al,0x0
00000E90  FEC0              inc al
00000E92  FEC8              dec al
00000E94  A26D0B            mov [0xb6d],al
00000E97  A2620B            mov [0xb62],al
00000E9A  A26C0B            mov [0xb6c],al
00000E9D  A26E0B            mov [0xb6e],al
00000EA0  A27466            mov [0x6674],al
00000EA3  A2AC15            mov [0x15ac],al
00000EA6  A24E59            mov [0x594e],al
00000EA9  A22B5D            mov [0x5d2b],al
00000EAC  A2D739            mov [0x39d7],al
00000EAF  A22E3C            mov [0x3c2e],al
00000EB2  A21269            mov [0x6912],al
00000EB5  A21369            mov [0x6913],al
00000EB8  A21368            mov [0x6813],al
00000EBB  A21F69            mov [0x691f],al
00000EBE  A22069            mov [0x6920],al
00000EC1  A2D66C            mov [0x6cd6],al
00000EC4  A2E865            mov [0x65e8],al
00000EC7  A22421            mov [0x2124],al
00000ECA  A2F45A            mov [0x5af4],al
00000ECD  A29037            mov [0x3790],al
00000ED0  A26522            mov [0x2265],al
00000ED3  A23040            mov [0x4030],al
00000ED6  A2904F            mov [0x4f90],al
00000ED9  A2914F            mov [0x4f91],al
00000EDC  A2B251            mov [0x51b2],al
00000EDF  A2B051            mov [0x51b0],al
00000EE2  A2720B            mov [0xb72],al
00000EE5  A21645            mov [0x4516],al
00000EE8  A2BB3E            mov [0x3ebb],al
00000EEB  A2BC3E            mov [0x3ebc],al
00000EEE  A2BD3E            mov [0x3ebd],al
00000EF1  A2BE3E            mov [0x3ebe],al
00000EF4  A2BF3E            mov [0x3ebf],al
00000EF7  802681077F        and byte [0x781],0x7f
00000EFC  A2B73E            mov [0x3eb7],al
00000EFF  A2B63E            mov [0x3eb6],al
00000F02  A29454            mov [0x5494],al
00000F05  A29554            mov [0x5495],al
00000F08  A29654            mov [0x5496],al
00000F0B  A27153            mov [0x5371],al
00000F0E  A2790B            mov [0xb79],al
00000F11  A27C0B            mov [0xb7c],al
00000F14  A27253            mov [0x5372],al
00000F17  A27053            mov [0x5370],al
00000F1A  A23757            mov [0x5737],al
00000F1D  A23857            mov [0x5738],al
00000F20  A21469            mov [0x6914],al
00000F23  A21569            mov [0x6915],al
00000F26  A21869            mov [0x6918],al
00000F29  A21969            mov [0x6919],al
00000F2C  A23334            mov [0x3433],al
00000F2F  A2524A            mov [0x4a52],al
00000F32  A28D6B            mov [0x6b8d],al
00000F35  A2D74B            mov [0x4bd7],al
00000F38  A2014D            mov [0x4d01],al
00000F3B  A27E0B            mov [0xb7e],al
00000F3E  A2B83E            mov [0x3eb8],al
00000F41  A2DD4E            mov [0x4edd],al
00000F44  A27353            mov [0x5373],al
00000F47  B001              mov al,0x1
00000F49  A2506A            mov [0x6a50],al
00000F4C  A2DB6C            mov [0x6cdb],al
00000F4F  A21545            mov [0x4515],al
00000F52  A2926B            mov [0x6b92],al
00000F55  B004              mov al,0x4
00000F57  A2640B            mov [0xb64],al
00000F5A  8A1E7D0B          mov bl,[0xb7d]
00000F5E  8A87B93E          mov al,[bx+0x3eb9]
00000F62  A2BE3E            mov [0x3ebe],al
00000F65  B00F              mov al,0xf
00000F67  A27B0B            mov [0xb7b],al
00000F6A  C706B351000C      mov word [0x51b3],0xc00
00000F70  B070              mov al,0x70
00000F72  A22D34            mov [0x342d],al
00000F75  B0BC              mov al,0xbc
00000F77  A26622            mov [0x2266],al
00000F7A  B0B4              mov al,0xb4
00000F7C  FEC0              inc al
00000F7E  FEC8              dec al
00000F80  A26422            mov [0x2264],al
00000F83  E89DF2            call word 0x223
00000F86  B8E621            mov ax,0x21e6
00000F89  A3DA6D            mov [0x6dda],ax
00000F8C  A3F846            mov [0x46f8],ax
00000F8F  C3                ret
00000F90  A08107            mov al,[0x781]
00000F93  FEC0              inc al
00000F95  FEC8              dec al
00000F97  7903              jns 0xf9c
00000F99  EB04              jmp short 0xf9f
00000F9B  90                nop
00000F9C  EB40              jmp short 0xfde
00000F9E  90                nop
00000F9F  A2700B            mov [0xb70],al
00000FA2  E83C13            call word 0x22e1
00000FA5  A0700B            mov al,[0xb70]
00000FA8  FEC0              inc al
00000FAA  FEC8              dec al
00000FAC  E80E53            call word 0x62bd
00000FAF  A0700B            mov al,[0xb70]
00000FB2  3CB0              cmp al,0xb0
00000FB4  F5                cmc
00000FB5  7503              jnz 0xfba
00000FB7  EB39              jmp short 0xff2
00000FB9  90                nop
00000FBA  3CCA              cmp al,0xca
00000FBC  F5                cmc
00000FBD  7503              jnz 0xfc2
00000FBF  EB31              jmp short 0xff2
00000FC1  90                nop
00000FC2  3CA0              cmp al,0xa0
00000FC4  F5                cmc
00000FC5  7503              jnz 0xfca
00000FC7  EB09              jmp short 0xfd2
00000FC9  90                nop
00000FCA  3CCB              cmp al,0xcb
00000FCC  F5                cmc
00000FCD  7403              jz 0xfd2
00000FCF  EB0D              jmp short 0xfde
00000FD1  90                nop
00000FD2  B000              mov al,0x0
00000FD4  FEC0              inc al
00000FD6  FEC8              dec al
00000FD8  A2610B            mov [0xb61],al
00000FDB  EB1C              jmp short 0xff9
00000FDD  90                nop
00000FDE  A0610B            mov al,[0xb61]
00000FE1  3C01              cmp al,0x1
00000FE3  7401              jz 0xfe6
00000FE5  C3                ret
00000FE6  E81CF2            call word 0x205
00000FE9  3C80              cmp al,0x80
00000FEB  F5                cmc
00000FEC  7303              jnc 0xff1
00000FEE  EB09              jmp short 0xff9
00000FF0  90                nop
00000FF1  C3                ret
00000FF2  B001              mov al,0x1
00000FF4  A2610B            mov [0xb61],al
00000FF7  EBE5              jmp short 0xfde
00000FF9  B001              mov al,0x1
00000FFB  FEC0              inc al
00000FFD  FEC8              dec al
00000FFF  A2620B            mov [0xb62],al
00001002  C3                ret
00001003  005F00            add [bx+0x0],bl
00001006  61                popaw
00001007  006300            add [bp+di+0x0],ah
0000100A  61                popaw
0000100B  006500            add [di+0x0],ah
0000100E  67006900          add [ecx+0x0],ch
00001012  67006F00          add [edi+0x0],ch
00001016  7102              jno 0x101a
00001018  0202              add al,[bp+si]
0000101A  0202              add al,[bp+si]
0000101C  0202              add al,[bp+si]
0000101E  0202              add al,[bp+si]
00001020  0202              add al,[bp+si]
00001022  0202              add al,[bp+si]
00001024  0202              add al,[bp+si]
00001026  0000              add [bx+si],al
00001028  0000              add [bx+si],al
0000102A  0000              add [bx+si],al
0000102C  0000              add [bx+si],al
0000102E  0000              add [bx+si],al
00001030  FE                db 0xfe
00001031  FE                db 0xfe
00001032  FE                db 0xfe
00001033  FE00              inc byte [bx+si]
00001035  0000              add [bx+si],al
00001037  0000              add [bx+si],al
00001039  0000              add [bx+si],al
0000103B  0202              add al,[bp+si]
0000103D  0202              add al,[bp+si]
0000103F  0202              add al,[bp+si]
00001041  0202              add al,[bp+si]
00001043  0202              add al,[bp+si]
00001045  0202              add al,[bp+si]
00001047  0202              add al,[bp+si]
00001049  A0720B            mov al,[0xb72]
0000104C  FEC0              inc al
0000104E  FEC8              dec al
00001050  7503              jnz 0x1055
00001052  EB02              jmp short 0x1056
00001054  90                nop
00001055  C3                ret
00001056  A06C0B            mov al,[0xb6c]
00001059  FEC0              inc al
0000105B  FEC8              dec al
0000105D  7503              jnz 0x1062
0000105F  EB04              jmp short 0x1065
00001061  90                nop
00001062  E98B01            jmp word 0x11f0
00001065  A0610B            mov al,[0xb61]
00001068  FEC0              inc al
0000106A  FEC8              dec al
0000106C  7503              jnz 0x1071
0000106E  EB04              jmp short 0x1074
00001070  90                nop
00001071  E97F35            jmp word 0x45f3
00001074  A08107            mov al,[0x781]
00001077  FEC0              inc al
00001079  FEC8              dec al
0000107B  7903              jns 0x1080
0000107D  EB0B              jmp short 0x108a
0000107F  90                nop
00001080  B000              mov al,0x0
00001082  FEC0              inc al
00001084  FEC8              dec al
00001086  A27A0B            mov [0xb7a],al
00001089  C3                ret
0000108A  8A0E790B          mov cl,[0xb79]
0000108E  FEC1              inc cl
00001090  FEC9              dec cl
00001092  7403              jz 0x1097
00001094  EB35              jmp short 0x10cb
00001096  90                nop
00001097  3A06E310          cmp al,[0x10e3]
0000109B  F5                cmc
0000109C  7403              jz 0x10a1
0000109E  EB04              jmp short 0x10a4
000010A0  90                nop
000010A1  EB49              jmp short 0x10ec
000010A3  90                nop
000010A4  3A06E510          cmp al,[0x10e5]
000010A8  F5                cmc
000010A9  7403              jz 0x10ae
000010AB  EB04              jmp short 0x10b1
000010AD  90                nop
000010AE  EB77              jmp short 0x1127
000010B0  90                nop
000010B1  3A06E710          cmp al,[0x10e7]
000010B5  F5                cmc
000010B6  7403              jz 0x10bb
000010B8  EB04              jmp short 0x10be
000010BA  90                nop
000010BB  E99900            jmp word 0x1157
000010BE  3A06E910          cmp al,[0x10e9]
000010C2  F5                cmc
000010C3  7403              jz 0x10c8
000010C5  EB04              jmp short 0x10cb
000010C7  90                nop
000010C8  E9DA00            jmp word 0x11a5
000010CB  3A06EB10          cmp al,[0x10eb]
000010CF  F5                cmc
000010D0  7403              jz 0x10d5
000010D2  EB04              jmp short 0x10d8
000010D4  90                nop
000010D5  E91801            jmp word 0x11f0
000010D8  B000              mov al,0x0
000010DA  FEC0              inc al
000010DC  FEC8              dec al
000010DE  A27A0B            mov [0xb7a],al
000010E1  C3                ret
000010E2  00C1              add cl,al
000010E4  00DA              add dl,bl
000010E6  00950088          add [di-0x7800],dl
000010EA  00A0E873          add [bx+si+0x73e8],ah
000010EE  02A0730B          add ah,[bx+si+0xb73]
000010F2  FEC0              inc al
000010F4  FEC8              dec al
000010F6  7403              jz 0x10fb
000010F8  EB02              jmp short 0x10fc
000010FA  90                nop
000010FB  C3                ret
000010FC  B000              mov al,0x0
000010FE  A26D0B            mov [0xb6d],al
00001101  FE0E650B          dec byte [0xb65]
00001105  FE0E650B          dec byte [0xb65]
00001109  A0650B            mov al,[0xb65]
0000110C  D0D4              rcl ah,1
0000110E  2402              and al,0x2
00001110  D0DC              rcr ah,1
00001112  8AD8              mov bl,al
00001114  FEC3              inc bl
00001116  8A871310          mov al,[bx+0x1013]
0000111A  FEC0              inc al
0000111C  FEC8              dec al
0000111E  A2690B            mov [0xb69],al
00001121  A2986D            mov [0x6d98],al
00001124  E9CF01            jmp word 0x12f6
00001127  E8C502            call word 0x13ef
0000112A  A0730B            mov al,[0xb73]
0000112D  FEC0              inc al
0000112F  FEC8              dec al
00001131  7403              jz 0x1136
00001133  EB02              jmp short 0x1137
00001135  90                nop
00001136  C3                ret
00001137  B002              mov al,0x2
00001139  A26D0B            mov [0xb6d],al
0000113C  FE06650B          inc byte [0xb65]
00001140  FE06650B          inc byte [0xb65]
00001144  A06772            mov al,[0x7267]
00001147  FEC0              inc al
00001149  FEC8              dec al
0000114B  A2690B            mov [0xb69],al
0000114E  A2986D            mov [0x6d98],al
00001151  E88803            call word 0x14dc
00001154  E99F01            jmp word 0x12f6
00001157  A07153            mov al,[0x5371]
0000115A  FEC0              inc al
0000115C  FEC8              dec al
0000115E  7403              jz 0x1163
00001160  EB11              jmp short 0x1173
00001162  90                nop
00001163  E82603            call word 0x148c
00001166  A0730B            mov al,[0xb73]
00001169  FEC0              inc al
0000116B  FEC8              dec al
0000116D  7403              jz 0x1172
0000116F  EB02              jmp short 0x1173
00001171  90                nop
00001172  C3                ret
00001173  FE06600B          inc byte [0xb60]
00001177  FE06600B          inc byte [0xb60]
0000117B  A0600B            mov al,[0xb60]
0000117E  D0D4              rcl ah,1
00001180  2406              and al,0x6
00001182  D0DC              rcr ah,1
00001184  8AD8              mov bl,al
00001186  FEC3              inc bl
00001188  8A870310          mov al,[bx+0x1003]
0000118C  FEC0              inc al
0000118E  FEC8              dec al
00001190  A2690B            mov [0xb69],al
00001193  A2986D            mov [0x6d98],al
00001196  E84303            call word 0x14dc
00001199  B001              mov al,0x1
0000119B  FEC0              inc al
0000119D  FEC8              dec al
0000119F  A26D0B            mov [0xb6d],al
000011A2  E95101            jmp word 0x12f6
000011A5  A07153            mov al,[0x5371]
000011A8  FEC0              inc al
000011AA  FEC8              dec al
000011AC  7403              jz 0x11b1
000011AE  EB11              jmp short 0x11c1
000011B0  90                nop
000011B1  E8D802            call word 0x148c
000011B4  A0730B            mov al,[0xb73]
000011B7  FEC0              inc al
000011B9  FEC8              dec al
000011BB  7403              jz 0x11c0
000011BD  EB02              jmp short 0x11c1
000011BF  90                nop
000011C0  C3                ret
000011C1  FE0E600B          dec byte [0xb60]
000011C5  FE0E600B          dec byte [0xb60]
000011C9  B003              mov al,0x3
000011CB  A26D0B            mov [0xb6d],al
000011CE  A0600B            mov al,[0xb60]
000011D1  D0D4              rcl ah,1
000011D3  2406              and al,0x6
000011D5  D0DC              rcr ah,1
000011D7  8AD8              mov bl,al
000011D9  FEC3              inc bl
000011DB  8A870B10          mov al,[bx+0x100b]
000011DF  FEC0              inc al
000011E1  FEC8              dec al
000011E3  A2690B            mov [0xb69],al
000011E6  A2986D            mov [0x6d98],al
000011E9  E8F002            call word 0x14dc
000011EC  E90701            jmp word 0x12f6
000011EF  79A0              jns 0x1191
000011F1  7253              jc 0x1246
000011F3  FEC0              inc al
000011F5  FEC8              dec al
000011F7  7503              jnz 0x11fc
000011F9  EB0B              jmp short 0x1206
000011FB  90                nop
000011FC  B000              mov al,0x0
000011FE  FEC0              inc al
00001200  FEC8              dec al
00001202  A27A0B            mov [0xb7a],al
00001205  C3                ret
00001206  A06C0B            mov al,[0xb6c]
00001209  FEC0              inc al
0000120B  FEC8              dec al
0000120D  7403              jz 0x1212
0000120F  EB24              jmp short 0x1235
00001211  90                nop
00001212  802681077F        and byte [0x781],0x7f
00001217  B000              mov al,0x0
00001219  FEC0              inc al
0000121B  FEC8              dec al
0000121D  A26E0B            mov [0xb6e],al
00001220  A27153            mov [0x5371],al
00001223  A29454            mov [0x5494],al
00001226  B001              mov al,0x1
00001228  FEC0              inc al
0000122A  FEC8              dec al
0000122C  A26C0B            mov [0xb6c],al
0000122F  B8F621            mov ax,0x21f6
00001232  E8C634            call word 0x46fb
00001235  A06D0B            mov al,[0xb6d]
00001238  3C01              cmp al,0x1
0000123A  F5                cmc
0000123B  7403              jz 0x1240
0000123D  EB16              jmp short 0x1255
0000123F  90                nop
00001240  A06572            mov al,[0x7265]
00001243  A2690B            mov [0xb69],al
00001246  A2986D            mov [0x6d98],al
00001249  B079              mov al,0x79
0000124B  FEC0              inc al
0000124D  FEC8              dec al
0000124F  A2EF11            mov [0x11ef],al
00001252  EB24              jmp short 0x1278
00001254  90                nop
00001255  A06D0B            mov al,[0xb6d]
00001258  3C03              cmp al,0x3
0000125A  F5                cmc
0000125B  7503              jnz 0x1260
0000125D  EB0B              jmp short 0x126a
0000125F  90                nop
00001260  B000              mov al,0x0
00001262  FEC0              inc al
00001264  FEC8              dec al
00001266  A26C0B            mov [0xb6c],al
00001269  C3                ret
0000126A  A06672            mov al,[0x7266]
0000126D  A2690B            mov [0xb69],al
00001270  A2986D            mov [0x6d98],al
00001273  B0F9              mov al,0xf9
00001275  A2EF11            mov [0x11ef],al
00001278  8A1E6E0B          mov bl,[0xb6e]
0000127C  A0600B            mov al,[0xb60]
0000127F  803EEF1179        cmp byte [0x11ef],0x79
00001284  7507              jnz 0x128d
00001286  02871710          add al,[bx+0x1017]
0000128A  EB06              jmp short 0x1292
0000128C  90                nop
0000128D  2A871710          sub al,[bx+0x1017]
00001291  F5                cmc
00001292  A2600B            mov [0xb60],al
00001295  A0650B            mov al,[0xb65]
00001298  02873010          add al,[bx+0x1030]
0000129C  D0D4              rcl ah,1
0000129E  0A067C0B          or al,[0xb7c]
000012A2  D0DC              rcr ah,1
000012A4  A2650B            mov [0xb65],al
000012A7  FEC3              inc bl
000012A9  881E6E0B          mov [0xb6e],bl
000012AD  E89E02            call word 0x154e
000012B0  E84300            call word 0x12f6
000012B3  E89842            call word 0x554e
000012B6  A06E0B            mov al,[0xb6e]
000012B9  3A067B0B          cmp al,[0xb7b]
000012BD  F5                cmc
000012BE  7303              jnc 0x12c3
000012C0  EB02              jmp short 0x12c4
000012C2  90                nop
000012C3  C3                ret
000012C4  B000              mov al,0x0
000012C6  A26C0B            mov [0xb6c],al
000012C9  A27053            mov [0x5370],al
000012CC  A2790B            mov [0xb79],al
000012CF  A07353            mov al,[0x5373]
000012D2  FEC0              inc al
000012D4  FEC8              dec al
000012D6  7503              jnz 0x12db
000012D8  EB0B              jmp short 0x12e5
000012DA  90                nop
000012DB  B05C              mov al,0x5c
000012DD  A2600B            mov [0xb60],al
000012E0  B000              mov al,0x0
000012E2  A27353            mov [0x5373],al
000012E5  A06D0B            mov al,[0xb6d]
000012E8  3C01              cmp al,0x1
000012EA  F5                cmc
000012EB  7503              jnz 0x12f0
000012ED  EB04              jmp short 0x12f3
000012EF  90                nop
000012F0  E94B42            jmp word 0x553e
000012F3  E93842            jmp word 0x552e
000012F6  A0600B            mov al,[0xb60]
000012F9  D0D4              rcl ah,1
000012FB  24FE              and al,0xfe
000012FD  D0DC              rcr ah,1
000012FF  A2600B            mov [0xb60],al
00001302  A29B6D            mov [0x6d9b],al
00001305  A0650B            mov al,[0xb65]
00001308  A29C6D            mov [0x6d9c],al
0000130B  A0660B            mov al,[0xb66]
0000130E  A29D6D            mov [0x6d9d],al
00001311  A0670B            mov al,[0xb67]
00001314  A29E6D            mov [0x6d9e],al
00001317  A06B0B            mov al,[0xb6b]
0000131A  FEC0              inc al
0000131C  FEC8              dec al
0000131E  A29A6D            mov [0x6d9a],al
00001321  E844F0            call word 0x368
00001324  A0600B            mov al,[0xb60]
00001327  A2660B            mov [0xb66],al
0000132A  A0650B            mov al,[0xb65]
0000132D  A2670B            mov [0xb67],al
00001330  A0690B            mov al,[0xb69]
00001333  A26B0B            mov [0xb6b],al
00001336  B001              mov al,0x1
00001338  FEC0              inc al
0000133A  FEC8              dec al
0000133C  A27A0B            mov [0xb7a],al
0000133F  C3                ret
00001340  686828            push word 0x2868
00001343  28888848          sub [bx+si+0x4888],cl
00001347  48                dec ax
00001348  886848            mov [bx+si+0x48],ch
0000134B  28A88868          sub [bx+si+0x6888],ch
0000134F  48                dec ax
00001350  88BD31E7          mov [di-0x18cf],bh
00001354  BD0715            mov bp,0x1507
00001357  CB                retf
00001358  1593E7            adc ax,0xe793
0000135B  0003              add [bp+di],al
0000135D  0300              add ax,[bx+si]
0000135F  0000              add [bx+si],al
00001361  00A0650B          add [bx+si+0xb65],ah
00001365  3CBC              cmp al,0xbc
00001367  F5                cmc
00001368  7303              jnc 0x136d
0000136A  EB0A              jmp short 0x1376
0000136C  90                nop
0000136D  D0D4              rcl ah,1
0000136F  0C01              or al,0x1
00001371  D0DC              rcr ah,1
00001373  A2650B            mov [0xb65],al
00001376  8A1E4F59          mov bl,[0x594f]
0000137A  8A875B13          mov al,[bx+0x135b]
0000137E  8AD8              mov bl,al
00001380  8B36B26D          mov si,[0x6db2]
00001384  8A00              mov al,[bx+si]
00001386  FEC0              inc al
00001388  FEC8              dec al
0000138A  7503              jnz 0x138f
0000138C  EB06              jmp short 0x1394
0000138E  90                nop
0000138F  040E              add al,0xe
00001391  EB03              jmp short 0x1396
00001393  90                nop
00001394  0408              add al,0x8
00001396  A26113            mov [0x1361],al
00001399  A0650B            mov al,[0xb65]
0000139C  8B36B06D          mov si,[0x6db0]
000013A0  3A00              cmp al,[bx+si]
000013A2  F5                cmc
000013A3  7203              jc 0x13a8
000013A5  EB04              jmp short 0x13ab
000013A7  90                nop
000013A8  EB32              jmp short 0x13dc
000013AA  90                nop
000013AB  8B36AE6D          mov si,[0x6dae]
000013AF  3A00              cmp al,[bx+si]
000013B1  F5                cmc
000013B2  7303              jnc 0x13b7
000013B4  EB04              jmp short 0x13ba
000013B6  90                nop
000013B7  EB23              jmp short 0x13dc
000013B9  90                nop
000013BA  A0600B            mov al,[0xb60]
000013BD  8B36B26D          mov si,[0x6db2]
000013C1  3A00              cmp al,[bx+si]
000013C3  F5                cmc
000013C4  7303              jnc 0x13c9
000013C6  EB04              jmp short 0x13cc
000013C8  90                nop
000013C9  EB11              jmp short 0x13dc
000013CB  90                nop
000013CC  3A066113          cmp al,[0x1361]
000013D0  F5                cmc
000013D1  7203              jc 0x13d6
000013D3  EB04              jmp short 0x13d9
000013D5  90                nop
000013D6  EB04              jmp short 0x13dc
000013D8  90                nop
000013D9  E9A000            jmp word 0x147c
000013DC  FECB              dec bl
000013DE  7802              js 0x13e2
000013E0  EB9E              jmp short 0x1380
000013E2  B000              mov al,0x0
000013E4  FEC0              inc al
000013E6  FEC8              dec al
000013E8  A2730B            mov [0xb73],al
000013EB  A27A0B            mov [0xb7a],al
000013EE  C3                ret
000013EF  8A1E4F59          mov bl,[0x594f]
000013F3  8A875B13          mov al,[bx+0x135b]
000013F7  8AD8              mov bl,al
000013F9  8B36B26D          mov si,[0x6db2]
000013FD  8A00              mov al,[bx+si]
000013FF  FEC0              inc al
00001401  FEC8              dec al
00001403  7503              jnz 0x1408
00001405  EB06              jmp short 0x140d
00001407  90                nop
00001408  040E              add al,0xe
0000140A  EB03              jmp short 0x140f
0000140C  90                nop
0000140D  0408              add al,0x8
0000140F  A26113            mov [0x1361],al
00001412  8B36AE6D          mov si,[0x6dae]
00001416  8A00              mov al,[bx+si]
00001418  2C01              sub al,0x1
0000141A  F5                cmc
0000141B  A25F13            mov [0x135f],al
0000141E  8B36B06D          mov si,[0x6db0]
00001422  8A00              mov al,[bx+si]
00001424  2C01              sub al,0x1
00001426  F5                cmc
00001427  A26013            mov [0x1360],al
0000142A  A0650B            mov al,[0xb65]
0000142D  3A065F13          cmp al,[0x135f]
00001431  F5                cmc
00001432  7303              jnc 0x1437
00001434  EB04              jmp short 0x143a
00001436  90                nop
00001437  EB30              jmp short 0x1469
00001439  90                nop
0000143A  3A066013          cmp al,[0x1360]
0000143E  F5                cmc
0000143F  7203              jc 0x1444
00001441  EB04              jmp short 0x1447
00001443  90                nop
00001444  EB23              jmp short 0x1469
00001446  90                nop
00001447  A0600B            mov al,[0xb60]
0000144A  8B36B26D          mov si,[0x6db2]
0000144E  3A00              cmp al,[bx+si]
00001450  F5                cmc
00001451  7303              jnc 0x1456
00001453  EB04              jmp short 0x1459
00001455  90                nop
00001456  EB11              jmp short 0x1469
00001458  90                nop
00001459  3A066113          cmp al,[0x1361]
0000145D  F5                cmc
0000145E  7203              jc 0x1463
00001460  EB04              jmp short 0x1466
00001462  90                nop
00001463  EB04              jmp short 0x1469
00001465  90                nop
00001466  EB14              jmp short 0x147c
00001468  90                nop
00001469  FECB              dec bl
0000146B  7802              js 0x146f
0000146D  EB8A              jmp short 0x13f9
0000146F  B000              mov al,0x0
00001471  FEC0              inc al
00001473  FEC8              dec al
00001475  A2730B            mov [0xb73],al
00001478  A27A0B            mov [0xb7a],al
0000147B  C3                ret
0000147C  B001              mov al,0x1
0000147E  FEC0              inc al
00001480  FEC8              dec al
00001482  A2730B            mov [0xb73],al
00001485  C3                ret
00001486  27                daa
00001487  47                inc di
00001488  6787A7BCB305A0    xchg sp,[edi-0x5ffa4c44]
0000148F  650B3A            or di,[gs:bp+si]
00001492  878614F5          xchg ax,[bp-0xaec]
00001496  7503              jnz 0x149b
00001498  EB11              jmp short 0x14ab
0000149A  90                nop
0000149B  FECB              dec bl
0000149D  7802              js 0x14a1
0000149F  EBED              jmp short 0x148e
000014A1  B000              mov al,0x0
000014A3  FEC0              inc al
000014A5  FEC8              dec al
000014A7  A2730B            mov [0xb73],al
000014AA  C3                ret
000014AB  3CA7              cmp al,0xa7
000014AD  F5                cmc
000014AE  7503              jnz 0x14b3
000014B0  EB0B              jmp short 0x14bd
000014B2  90                nop
000014B3  B001              mov al,0x1
000014B5  FEC0              inc al
000014B7  FEC8              dec al
000014B9  A2730B            mov [0xb73],al
000014BC  C3                ret
000014BD  A04F59            mov al,[0x594f]
000014C0  3C03              cmp al,0x3
000014C2  F5                cmc
000014C3  7503              jnz 0x14c8
000014C5  EB0B              jmp short 0x14d2
000014C7  90                nop
000014C8  B001              mov al,0x1
000014CA  FEC0              inc al
000014CC  FEC8              dec al
000014CE  A2730B            mov [0xb73],al
000014D1  C3                ret
000014D2  B000              mov al,0x0
000014D4  FEC0              inc al
000014D6  FEC8              dec al
000014D8  A2730B            mov [0xb73],al
000014DB  C3                ret
000014DC  A06D0B            mov al,[0xb6d]
000014DF  3C01              cmp al,0x1
000014E1  F5                cmc
000014E2  7503              jnz 0x14e7
000014E4  EB12              jmp short 0x14f8
000014E6  90                nop
000014E7  3C02              cmp al,0x2
000014E9  F5                cmc
000014EA  7503              jnz 0x14ef
000014EC  EB43              jmp short 0x1531
000014EE  90                nop
000014EF  3C03              cmp al,0x3
000014F1  F5                cmc
000014F2  7503              jnz 0x14f7
000014F4  EB26              jmp short 0x151c
000014F6  90                nop
000014F7  C3                ret
000014F8  E82100            call word 0x151c
000014FB  A0600B            mov al,[0xb60]
000014FE  8A0E4F59          mov cl,[0x594f]
00001502  8BF1              mov si,cx
00001504  3A844615          cmp al,[si+0x1546]
00001508  F5                cmc
00001509  7403              jz 0x150e
0000150B  EB38              jmp short 0x1545
0000150D  90                nop
0000150E  8BF1              mov si,cx
00001510  8A844A15          mov al,[si+0x154a]
00001514  FEC0              inc al
00001516  FEC8              dec al
00001518  A2600B            mov [0xb60],al
0000151B  C3                ret
0000151C  A0600B            mov al,[0xb60]
0000151F  3CFB              cmp al,0xfb
00001521  F5                cmc
00001522  7203              jc 0x1527
00001524  EB1F              jmp short 0x1545
00001526  90                nop
00001527  B000              mov al,0x0
00001529  FEC0              inc al
0000152B  FEC8              dec al
0000152D  A2600B            mov [0xb60],al
00001530  C3                ret
00001531  A0650B            mov al,[0xb65]
00001534  3CBD              cmp al,0xbd
00001536  F5                cmc
00001537  7403              jz 0x153c
00001539  EB0A              jmp short 0x1545
0000153B  90                nop
0000153C  B0BC              mov al,0xbc
0000153E  FEC0              inc al
00001540  FEC8              dec al
00001542  A2650B            mov [0xb65],al
00001545  C3                ret
00001546  00F0              add al,dh
00001548  00F0              add al,dh
0000154A  00EE              add dh,ch
0000154C  FE                db 0xfe
0000154D  EE                out dx,al
0000154E  A06D0B            mov al,[0xb6d]
00001551  3C01              cmp al,0x1
00001553  F5                cmc
00001554  7503              jnz 0x1559
00001556  EB0A              jmp short 0x1562
00001558  90                nop
00001559  3C03              cmp al,0x3
0000155B  F5                cmc
0000155C  7503              jnz 0x1561
0000155E  EB27              jmp short 0x1587
00001560  90                nop
00001561  C3                ret
00001562  A0600B            mov al,[0xb60]
00001565  8A0E4F59          mov cl,[0x594f]
00001569  8BF1              mov si,cx
0000156B  3A844615          cmp al,[si+0x1546]
0000156F  F5                cmc
00001570  7402              jz 0x1574
00001572  EBD1              jmp short 0x1545
00001574  8BF1              mov si,cx
00001576  8A844A15          mov al,[si+0x154a]
0000157A  A2600B            mov [0xb60],al
0000157D  B003              mov al,0x3
0000157F  FEC0              inc al
00001581  FEC8              dec al
00001583  A26D0B            mov [0xb6d],al
00001586  C3                ret
00001587  A0600B            mov al,[0xb60]
0000158A  3CFE              cmp al,0xfe
0000158C  F5                cmc
0000158D  7402              jz 0x1591
0000158F  EBB4              jmp short 0x1545
00001591  B000              mov al,0x0
00001593  A2600B            mov [0xb60],al
00001596  B001              mov al,0x1
00001598  FEC0              inc al
0000159A  FEC8              dec al
0000159C  A26D0B            mov [0xb6d],al
0000159F  C3                ret
000015A0  0000              add [bx+si],al
000015A2  0000              add [bx+si],al
000015A4  0000              add [bx+si],al
000015A6  0000              add [bx+si],al
000015A8  0000              add [bx+si],al
000015AA  0000              add [bx+si],al
000015AC  0000              add [bx+si],al
000015AE  0000              add [bx+si],al
000015B0  0000              add [bx+si],al
000015B2  0027              add [bx],ah
000015B4  47                inc di
000015B5  6787A7BC2F4F6F    xchg sp,[edi+0x6f4f2fbc]
000015BC  8F                db 0x8f
000015BD  AF                scasw
000015BE  BC0406            mov sp,0x604
000015C1  080A              or [bp+si],cl
000015C3  0C0E              or al,0xe
000015C5  1012              adc [bp+si],dl
000015C7  1416              adc al,0x16
000015C9  181A              sbb [bp+si],bl
000015CB  1C1E              sbb al,0x1e
000015CD  47                inc di
000015CE  6787A7081ABF06    xchg sp,[edi+0x6bf1a08]
000015D5  0E                push cs
000015D6  141C              adc al,0x1c
000015D8  E8B3F8            call word 0xe8e
000015DB  B001              mov al,0x1
000015DD  FEC0              inc al
000015DF  FEC8              dec al
000015E1  A2AC2A            mov [0x2aac],al
000015E4  A24F59            mov [0x594f],al
000015E7  E8C314            call word 0x2aad
000015EA  E8FF16            call word 0x2cec
000015ED  E85103            call word 0x1941
000015F0  E84417            call word 0x2d37
000015F3  E86617            call word 0x2d5c
000015F6  E8BB17            call word 0x2db4
000015F9  E86A16            call word 0x2c66
000015FC  B005              mov al,0x5
000015FE  FEC0              inc al
00001600  FEC8              dec al
00001602  A22F3C            mov [0x3c2f],al
00001605  E85223            call word 0x395a
00001608  B009              mov al,0x9
0000160A  FEC0              inc al
0000160C  FEC8              dec al
0000160E  E87915            call word 0x2b8a
00001611  B019              mov al,0x19
00001613  FEC0              inc al
00001615  FEC8              dec al
00001617  E87015            call word 0x2b8a
0000161A  C706AA6DFC2B      mov word [0x6daa],0x2bfc
00001620  C706AC6D012C      mov word [0x6dac],0x2c01
00001626  E8EA15            call word 0x2c13
00001629  C706AE6D4013      mov word [0x6dae],0x1340
0000162F  C706B06D4413      mov word [0x6db0],0x1344
00001635  C706B26D5213      mov word [0x6db2],0x1352
0000163B  E80F15            call word 0x2b4d
0000163E  E8FD03            call word 0x1a3e
00001641  E86F49            call word 0x5fb3
00001644  E8A10A            call word 0x20e8
00001647  E8E628            call word 0x3f30
0000164A  E80343            call word 0x5950
0000164D  B001              mov al,0x1
0000164F  FEC0              inc al
00001651  FEC8              dec al
00001653  A23532            mov [0x3235],al
00001656  E8121C            call word 0x326b
00001659  8A1E3532          mov bl,[0x3235]
0000165D  8A87F431          mov al,[bx+0x31f4]
00001661  8887E431          mov [bx+0x31e4],al
00001665  8AC3              mov al,bl
00001667  D0E0              shl al,1
00001669  8AC8              mov cl,al
0000166B  8BF1              mov si,cx
0000166D  8A843B32          mov al,[si+0x323b]
00001671  88870032          mov [bx+0x3200],al
00001675  A2A66D            mov [0x6da6],al
00001678  8BF1              mov si,cx
0000167A  8A845332          mov al,[si+0x3253]
0000167E  88870832          mov [bx+0x3208],al
00001682  A2A86D            mov [0x6da8],al
00001685  FEC1              inc cl
00001687  8BF1              mov si,cx
00001689  8A843B32          mov al,[si+0x323b]
0000168D  88870432          mov [bx+0x3204],al
00001691  A2A76D            mov [0x6da7],al
00001694  8BF1              mov si,cx
00001696  8A845332          mov al,[si+0x3253]
0000169A  88870C32          mov [bx+0x320c],al
0000169E  A2A96D            mov [0x6da9],al
000016A1  8A87E831          mov al,[bx+0x31e8]
000016A5  88871832          mov [bx+0x3218],al
000016A9  A2C86D            mov [0x6dc8],al
000016AC  881EC96D          mov [0x6dc9],bl
000016B0  8A0EC96D          mov cl,[0x6dc9]
000016B4  8A1EC86D          mov bl,[0x6dc8]
000016B8  8B36A66D          mov si,[0x6da6]
000016BC  8A00              mov al,[bx+si]
000016BE  8BF1              mov si,cx
000016C0  88841C32          mov [si+0x321c],al
000016C4  8B36A86D          mov si,[0x6da8]
000016C8  8A00              mov al,[bx+si]
000016CA  8BF1              mov si,cx
000016CC  88842432          mov [si+0x3224],al
000016D0  8A1EC96D          mov bl,[0x6dc9]
000016D4  FEC3              inc bl
000016D6  FECB              dec bl
000016D8  FECB              dec bl
000016DA  7803              js 0x16df
000016DC  E97EFF            jmp word 0x165d
000016DF  B0E0              mov al,0xe0
000016E1  A2600B            mov [0xb60],al
000016E4  B047              mov al,0x47
000016E6  A2650B            mov [0xb65],al
000016E9  A06472            mov al,[0x7264]
000016EC  FEC0              inc al
000016EE  FEC8              dec al
000016F0  A2986D            mov [0x6d98],al
000016F3  A26B0B            mov [0xb6b],al
000016F6  E81F03            call word 0x1a18
000016F9  B003              mov al,0x3
000016FB  A26D0B            mov [0xb6d],al
000016FE  B036              mov al,0x36
00001700  A2566A            mov [0x6a56],al
00001703  B046              mov al,0x46
00001705  A2576A            mov [0x6a57],al
00001708  B007              mov al,0x7
0000170A  A2586A            mov [0x6a58],al
0000170D  B036              mov al,0x36
0000170F  A2596A            mov [0x6a59],al
00001712  B038              mov al,0x38
00001714  A25A6A            mov [0x6a5a],al
00001717  B030              mov al,0x30
00001719  FEC0              inc al
0000171B  FEC8              dec al
0000171D  A25B6A            mov [0x6a5b],al
00001720  E85817            call word 0x2e7b
00001723  E8BB14            call word 0x2be1
00001726  C3                ret
00001727  E864F7            call word 0xe8e
0000172A  B003              mov al,0x3
0000172C  A24F59            mov [0x594f],al
0000172F  B000              mov al,0x0
00001731  FEC0              inc al
00001733  FEC8              dec al
00001735  A2AC2A            mov [0x2aac],al
00001738  E87213            call word 0x2aad
0000173B  E80302            call word 0x1941
0000173E  E8CB16            call word 0x2e0c
00001741  E88F16            call word 0x2dd3
00001744  E81517            call word 0x2e5c
00001747  E8AF18            call word 0x2ff9
0000174A  E81F18            call word 0x2f6c
0000174D  E80042            call word 0x5950
00001750  E88317            call word 0x2ed6
00001753  E8E802            call word 0x1a3e
00001756  E85A48            call word 0x5fb3
00001759  E88C09            call word 0x20e8
0000175C  E8D127            call word 0x3f30
0000175F  E8B515            call word 0x2d17
00001762  E85A21            call word 0x38bf
00001765  C706AA6D0E2C      mov word [0x6daa],0x2c0e
0000176B  C706AC6D112C      mov word [0x6dac],0x2c11
00001771  E89F14            call word 0x2c13
00001774  C706AE6D5013      mov word [0x6dae],0x1350
0000177A  C706B06D5113      mov word [0x6db0],0x1351
00001780  C706B26D5A13      mov word [0x6db2],0x135a
00001786  B000              mov al,0x0
00001788  FEC0              inc al
0000178A  FEC8              dec al
0000178C  A23532            mov [0x3235],al
0000178F  E8D91A            call word 0x326b
00001792  8A1E3532          mov bl,[0x3235]
00001796  8A87FC31          mov al,[bx+0x31fc]
0000179A  8887E431          mov [bx+0x31e4],al
0000179E  8AC3              mov al,bl
000017A0  D0E0              shl al,1
000017A2  8AC8              mov cl,al
000017A4  8BF1              mov si,cx
000017A6  8A844B32          mov al,[si+0x324b]
000017AA  88870032          mov [bx+0x3200],al
000017AE  A2A66D            mov [0x6da6],al
000017B1  8BF1              mov si,cx
000017B3  8A846332          mov al,[si+0x3263]
000017B7  88870832          mov [bx+0x3208],al
000017BB  A2A86D            mov [0x6da8],al
000017BE  FEC1              inc cl
000017C0  8BF1              mov si,cx
000017C2  8A844B32          mov al,[si+0x324b]
000017C6  88870432          mov [bx+0x3204],al
000017CA  A2A76D            mov [0x6da7],al
000017CD  8BF1              mov si,cx
000017CF  8A846332          mov al,[si+0x3263]
000017D3  88870C32          mov [bx+0x320c],al
000017D7  A2A96D            mov [0x6da9],al
000017DA  8A87F031          mov al,[bx+0x31f0]
000017DE  88871832          mov [bx+0x3218],al
000017E2  A2C86D            mov [0x6dc8],al
000017E5  881EC96D          mov [0x6dc9],bl
000017E9  8A0EC96D          mov cl,[0x6dc9]
000017ED  8A1EC86D          mov bl,[0x6dc8]
000017F1  8B36A66D          mov si,[0x6da6]
000017F5  8A00              mov al,[bx+si]
000017F7  8BF1              mov si,cx
000017F9  88841C32          mov [si+0x321c],al
000017FD  8B36A86D          mov si,[0x6da8]
00001801  8A00              mov al,[bx+si]
00001803  8BF1              mov si,cx
00001805  88842432          mov [si+0x3224],al
00001809  8A1EC96D          mov bl,[0x6dc9]
0000180D  FEC3              inc bl
0000180F  FECB              dec bl
00001811  FECB              dec bl
00001813  7803              js 0x1818
00001815  E97EFF            jmp word 0x1796
00001818  B002              mov al,0x2
0000181A  A2600B            mov [0xb60],al
0000181D  B0BC              mov al,0xbc
0000181F  A2650B            mov [0xb65],al
00001822  A06172            mov al,[0x7261]
00001825  FEC0              inc al
00001827  FEC8              dec al
00001829  A2986D            mov [0x6d98],al
0000182C  A26B0B            mov [0xb6b],al
0000182F  E8E601            call word 0x1a18
00001832  B001              mov al,0x1
00001834  A26D0B            mov [0xb6d],al
00001837  A2790B            mov [0xb79],al
0000183A  B076              mov al,0x76
0000183C  A2566A            mov [0x6a56],al
0000183F  B086              mov al,0x86
00001841  A2576A            mov [0x6a57],al
00001844  B01E              mov al,0x1e
00001846  A2586A            mov [0x6a58],al
00001849  B0D7              mov al,0xd7
0000184B  A2596A            mov [0x6a59],al
0000184E  B0D9              mov al,0xd9
00001850  A25A6A            mov [0x6a5a],al
00001853  B070              mov al,0x70
00001855  FEC0              inc al
00001857  FEC8              dec al
00001859  A25B6A            mov [0x6a5b],al
0000185C  E81C16            call word 0x2e7b
0000185F  E87F13            call word 0x2be1
00001862  C3                ret
00001863  E828F6            call word 0xe8e
00001866  B002              mov al,0x2
00001868  FEC0              inc al
0000186A  FEC8              dec al
0000186C  A24F59            mov [0x594f],al
0000186F  E8DF01            call word 0x1a51
00001872  E85402            call word 0x1ac9
00001875  E8AB02            call word 0x1b23
00001878  E8D540            call word 0x5950
0000187B  E8671E            call word 0x36e5
0000187E  E84314            call word 0x2cc4
00001881  C706AA6D052C      mov word [0x6daa],0x2c05
00001887  C706AC6D0A2C      mov word [0x6dac],0x2c0a
0000188D  E88313            call word 0x2c13
00001890  C706AE6D4813      mov word [0x6dae],0x1348
00001896  C706B06D4C13      mov word [0x6db0],0x134c
0000189C  C706B26D5613      mov word [0x6db2],0x1356
000018A2  E8901E            call word 0x3735
000018A5  E89601            call word 0x1a3e
000018A8  E80847            call word 0x5fb3
000018AB  E83A08            call word 0x20e8
000018AE  E87F26            call word 0x3f30
000018B1  E88D00            call word 0x1941
000018B4  E8E000            call word 0x1997
000018B7  E81F01            call word 0x19d9
000018BA  E83C01            call word 0x19f9
000018BD  E8FA00            call word 0x19ba
000018C0  A07D0B            mov al,[0xb7d]
000018C3  FEC0              inc al
000018C5  FEC8              dec al
000018C7  A23532            mov [0x3235],al
000018CA  E89E19            call word 0x326b
000018CD  8A1E3532          mov bl,[0x3235]
000018D1  B00B              mov al,0xb
000018D3  8887E431          mov [bx+0x31e4],al
000018D7  8A87EC31          mov al,[bx+0x31ec]
000018DB  88871832          mov [bx+0x3218],al
000018DF  8AC8              mov cl,al
000018E1  8BF1              mov si,cx
000018E3  8A844030          mov al,[si+0x3040]
000018E7  88871C32          mov [bx+0x321c],al
000018EB  8BF1              mov si,cx
000018ED  8A844C30          mov al,[si+0x304c]
000018F1  FEC0              inc al
000018F3  FEC8              dec al
000018F5  88872432          mov [bx+0x3224],al
000018F9  B84030            mov ax,0x3040
000018FC  88A70432          mov [bx+0x3204],ah
00001900  88870032          mov [bx+0x3200],al
00001904  B84C30            mov ax,0x304c
00001907  88A70C32          mov [bx+0x320c],ah
0000190B  88870832          mov [bx+0x3208],al
0000190F  FECB              dec bl
00001911  7802              js 0x1915
00001913  EBBC              jmp short 0x18d1
00001915  B0D0              mov al,0xd0
00001917  A2600B            mov [0xb60],al
0000191A  B0A7              mov al,0xa7
0000191C  A2650B            mov [0xb65],al
0000191F  A06272            mov al,[0x7262]
00001922  FEC0              inc al
00001924  FEC8              dec al
00001926  A26B0B            mov [0xb6b],al
00001929  A2986D            mov [0x6d98],al
0000192C  E8E900            call word 0x1a18
0000192F  B003              mov al,0x3
00001931  A26D0B            mov [0xb6d],al
00001934  B002              mov al,0x2
00001936  FEC0              inc al
00001938  FEC8              dec al
0000193A  A2BA51            mov [0x51ba],al
0000193D  E88612            call word 0x2bc6
00001940  C3                ret
00001941  B080              mov al,0x80
00001943  A2A415            mov [0x15a4],al
00001946  B001              mov al,0x1
00001948  A2B115            mov [0x15b1],al
0000194B  B0BD              mov al,0xbd
0000194D  A2A215            mov [0x15a2],al
00001950  A2A315            mov [0x15a3],al
00001953  B000              mov al,0x0
00001955  A2A015            mov [0x15a0],al
00001958  B0FE              mov al,0xfe
0000195A  FEC0              inc al
0000195C  FEC8              dec al
0000195E  A2A115            mov [0x15a1],al
00001961  E864E9            call word 0x2c8
00001964  B0BE              mov al,0xbe
00001966  A2A215            mov [0x15a2],al
00001969  A2A315            mov [0x15a3],al
0000196C  B001              mov al,0x1
0000196E  A2A015            mov [0x15a0],al
00001971  B0FF              mov al,0xff
00001973  FEC0              inc al
00001975  FEC8              dec al
00001977  A2A115            mov [0x15a1],al
0000197A  E84BE9            call word 0x2c8
0000197D  B0BF              mov al,0xbf
0000197F  A2A215            mov [0x15a2],al
00001982  A2A315            mov [0x15a3],al
00001985  B001              mov al,0x1
00001987  A2A015            mov [0x15a0],al
0000198A  B0FF              mov al,0xff
0000198C  FEC0              inc al
0000198E  FEC8              dec al
00001990  A2A115            mov [0x15a1],al
00001993  E832E9            call word 0x2c8
00001996  C3                ret
00001997  B026              mov al,0x26
00001999  A29B6D            mov [0x6d9b],al
0000199C  B027              mov al,0x27
0000199E  A2651B            mov [0x1b65],al
000019A1  B02A              mov al,0x2a
000019A3  FEC0              inc al
000019A5  FEC8              dec al
000019A7  A29C6D            mov [0x6d9c],al
000019AA  2C10              sub al,0x10
000019AC  F5                cmc
000019AD  A2641B            mov [0x1b64],al
000019B0  C706976D0015      mov word [0x6d97],0x1500
000019B6  E85EE9            call word 0x317
000019B9  C3                ret
000019BA  B023              mov al,0x23
000019BC  A29B6D            mov [0x6d9b],al
000019BF  0401              add al,0x1
000019C1  A2651B            mov [0x1b65],al
000019C4  B0BC              mov al,0xbc
000019C6  A29C6D            mov [0x6d9c],al
000019C9  2C10              sub al,0x10
000019CB  F5                cmc
000019CC  A2641B            mov [0x1b64],al
000019CF  C706976D000C      mov word [0x6d97],0xc00
000019D5  E83FE9            call word 0x317
000019D8  C3                ret
000019D9  B000              mov al,0x0
000019DB  A29B6D            mov [0x6d9b],al
000019DE  0403              add al,0x3
000019E0  A2651B            mov [0x1b65],al
000019E3  A06422            mov al,[0x2264]
000019E6  A29C6D            mov [0x6d9c],al
000019E9  2C31              sub al,0x31
000019EB  F5                cmc
000019EC  A2641B            mov [0x1b64],al
000019EF  C706976D0032      mov word [0x6d97],0x3200
000019F5  E81FE9            call word 0x317
000019F8  C3                ret
000019F9  B001              mov al,0x1
000019FB  A29B6D            mov [0x6d9b],al
000019FE  0401              add al,0x1
00001A00  A2651B            mov [0x1b65],al
00001A03  B0BC              mov al,0xbc
00001A05  A29C6D            mov [0x6d9c],al
00001A08  2C10              sub al,0x10
00001A0A  F5                cmc
00001A0B  A2641B            mov [0x1b64],al
00001A0E  C706976D0013      mov word [0x6d97],0x1300
00001A14  E800E9            call word 0x317
00001A17  C3                ret
00001A18  A0600B            mov al,[0xb60]
00001A1B  A2660B            mov [0xb66],al
00001A1E  A29B6D            mov [0x6d9b],al
00001A21  A29D6D            mov [0x6d9d],al
00001A24  A0650B            mov al,[0xb65]
00001A27  A2670B            mov [0xb67],al
00001A2A  A29C6D            mov [0x6d9c],al
00001A2D  A29E6D            mov [0x6d9e],al
00001A30  A06B72            mov al,[0x726b]
00001A33  FEC0              inc al
00001A35  FEC8              dec al
00001A37  A29A6D            mov [0x6d9a],al
00001A3A  E82BE9            call word 0x368
00001A3D  C3                ret
00001A3E  B8EE1E            mov ax,0x1eee
00001A41  E84204            call word 0x1e86
00001A44  B8191F            mov ax,0x1f19
00001A47  E83C04            call word 0x1e86
00001A4A  B8351F            mov ax,0x1f35
00001A4D  E83604            call word 0x1e86
00001A50  C3                ret
00001A51  B104              mov cl,0x4
00001A53  880EC96D          mov [0x6dc9],cl
00001A57  B30D              mov bl,0xd
00001A59  881EC86D          mov [0x6dc8],bl
00001A5D  8A0EC96D          mov cl,[0x6dc9]
00001A61  8BF1              mov si,cx
00001A63  8A84B915          mov al,[si+0x15b9]
00001A67  FEC0              inc al
00001A69  FEC8              dec al
00001A6B  E82100            call word 0x1a8f
00001A6E  FE0EC86D          dec byte [0x6dc8]
00001A72  8A1EC86D          mov bl,[0x6dc8]
00001A76  80FBFF            cmp bl,0xff
00001A79  F5                cmc
00001A7A  7402              jz 0x1a7e
00001A7C  EBDF              jmp short 0x1a5d
00001A7E  FE0EC96D          dec byte [0x6dc9]
00001A82  8A0EC96D          mov cl,[0x6dc9]
00001A86  80F9FF            cmp cl,0xff
00001A89  F5                cmc
00001A8A  7402              jz 0x1a8e
00001A8C  EBC9              jmp short 0x1a57
00001A8E  C3                ret
00001A8F  A29C6D            mov [0x6d9c],al
00001A92  2C10              sub al,0x10
00001A94  F5                cmc
00001A95  A2641B            mov [0x1b64],al
00001A98  8A87BF15          mov al,[bx+0x15bf]
00001A9C  A29B6D            mov [0x6d9b],al
00001A9F  0401              add al,0x1
00001AA1  A2651B            mov [0x1b65],al
00001AA4  C706976D001B      mov word [0x6d97],0x1b00
00001AAA  A0976D            mov al,[0x6d97]
00001AAD  0287EA71          add al,[bx+0x71ea]
00001AB1  A2976D            mov [0x6d97],al
00001AB4  A0986D            mov al,[0x6d98]
00001AB7  1400              adc al,0x0
00001AB9  A2986D            mov [0x6d98],al
00001ABC  B001              mov al,0x1
00001ABE  FEC0              inc al
00001AC0  FEC8              dec al
00001AC2  A2671B            mov [0x1b67],al
00001AC5  E84FE8            call word 0x317
00001AC8  C3                ret
00001AC9  B303              mov bl,0x3
00001ACB  881EC86D          mov [0x6dc8],bl
00001ACF  A0D115            mov al,[0x15d1]
00001AD2  FEC0              inc al
00001AD4  FEC8              dec al
00001AD6  A29B6D            mov [0x6d9b],al
00001AD9  E82200            call word 0x1afe
00001ADC  8A1EC86D          mov bl,[0x6dc8]
00001AE0  A0D215            mov al,[0x15d2]
00001AE3  FEC0              inc al
00001AE5  FEC8              dec al
00001AE7  A29B6D            mov [0x6d9b],al
00001AEA  E81100            call word 0x1afe
00001AED  FE0EC86D          dec byte [0x6dc8]
00001AF1  8A1EC86D          mov bl,[0x6dc8]
00001AF5  80FBFF            cmp bl,0xff
00001AF8  F5                cmc
00001AF9  7402              jz 0x1afd
00001AFB  EBD2              jmp short 0x1acf
00001AFD  C3                ret
00001AFE  0401              add al,0x1
00001B00  A2651B            mov [0x1b65],al
00001B03  8A87CD15          mov al,[bx+0x15cd]
00001B07  A29C6D            mov [0x6d9c],al
00001B0A  2C18              sub al,0x18
00001B0C  F5                cmc
00001B0D  A2641B            mov [0x1b64],al
00001B10  C706976D003A      mov word [0x6d97],0x3a00
00001B16  B001              mov al,0x1
00001B18  FEC0              inc al
00001B1A  FEC8              dec al
00001B1C  A2671B            mov [0x1b67],al
00001B1F  E8F5E7            call word 0x317
00001B22  C3                ret
00001B23  B303              mov bl,0x3
00001B25  881EC86D          mov [0x6dc8],bl
00001B29  A0D315            mov al,[0x15d3]
00001B2C  A29C6D            mov [0x6d9c],al
00001B2F  2C10              sub al,0x10
00001B31  F5                cmc
00001B32  A2641B            mov [0x1b64],al
00001B35  8A87D415          mov al,[bx+0x15d4]
00001B39  A29B6D            mov [0x6d9b],al
00001B3C  0401              add al,0x1
00001B3E  A2651B            mov [0x1b65],al
00001B41  C706976D0000      mov word [0x6d97],0x0
00001B47  B001              mov al,0x1
00001B49  FEC0              inc al
00001B4B  FEC8              dec al
00001B4D  A2671B            mov [0x1b67],al
00001B50  E8C4E7            call word 0x317
00001B53  FE0EC86D          dec byte [0x6dc8]
00001B57  8A1EC86D          mov bl,[0x6dc8]
00001B5B  80FBFF            cmp bl,0xff
00001B5E  F5                cmc
00001B5F  7402              jz 0x1b63
00001B61  EBC6              jmp short 0x1b29
00001B63  C3                ret
00001B64  0000              add [bx+si],al
00001B66  0000              add [bx+si],al
00001B68  00A09C6D          add [bx+si+0x6d9c],ah
00001B6C  2C10              sub al,0x10
00001B6E  F5                cmc
00001B6F  A2641B            mov [0x1b64],al
00001B72  A09B6D            mov al,[0x6d9b]
00001B75  0401              add al,0x1
00001B77  A2651B            mov [0x1b65],al
00001B7A  E89AE7            call word 0x317
00001B7D  C3                ret
00001B7E  B300              mov bl,0x0
00001B80  881EC86D          mov [0x6dc8],bl
00001B84  8A1EC86D          mov bl,[0x6dc8]
00001B88  8B36976D          mov si,[0x6d97]
00001B8C  8A00              mov al,[bx+si]
00001B8E  FEC0              inc al
00001B90  FEC8              dec al
00001B92  7503              jnz 0x1b97
00001B94  EB42              jmp short 0x1bd8
00001B96  90                nop
00001B97  3C01              cmp al,0x1
00001B99  F5                cmc
00001B9A  7503              jnz 0x1b9f
00001B9C  EB40              jmp short 0x1bde
00001B9E  90                nop
00001B9F  3C02              cmp al,0x2
00001BA1  F5                cmc
00001BA2  7503              jnz 0x1ba7
00001BA4  EB42              jmp short 0x1be8
00001BA6  90                nop
00001BA7  3C03              cmp al,0x3
00001BA9  F5                cmc
00001BAA  7503              jnz 0x1baf
00001BAC  EB44              jmp short 0x1bf2
00001BAE  90                nop
00001BAF  3C04              cmp al,0x4
00001BB1  F5                cmc
00001BB2  7503              jnz 0x1bb7
00001BB4  EB46              jmp short 0x1bfc
00001BB6  90                nop
00001BB7  3C05              cmp al,0x5
00001BB9  F5                cmc
00001BBA  7503              jnz 0x1bbf
00001BBC  EB48              jmp short 0x1c06
00001BBE  90                nop
00001BBF  3C06              cmp al,0x6
00001BC1  F5                cmc
00001BC2  7503              jnz 0x1bc7
00001BC4  EB47              jmp short 0x1c0d
00001BC6  90                nop
00001BC7  3C07              cmp al,0x7
00001BC9  F5                cmc
00001BCA  7503              jnz 0x1bcf
00001BCC  EB46              jmp short 0x1c14
00001BCE  90                nop
00001BCF  3C08              cmp al,0x8
00001BD1  F5                cmc
00001BD2  7503              jnz 0x1bd7
00001BD4  EB45              jmp short 0x1c1b
00001BD6  90                nop
00001BD7  C3                ret
00001BD8  E8BEE6            call word 0x299
00001BDB  EB45              jmp short 0x1c22
00001BDD  90                nop
00001BDE  FE069B6D          inc byte [0x6d9b]
00001BE2  E8B4E6            call word 0x299
00001BE5  EB3B              jmp short 0x1c22
00001BE7  90                nop
00001BE8  FE069C6D          inc byte [0x6d9c]
00001BEC  E8AAE6            call word 0x299
00001BEF  EB31              jmp short 0x1c22
00001BF1  90                nop
00001BF2  FE0E9B6D          dec byte [0x6d9b]
00001BF6  E8A0E6            call word 0x299
00001BF9  EB27              jmp short 0x1c22
00001BFB  90                nop
00001BFC  FE0E9C6D          dec byte [0x6d9c]
00001C00  E896E6            call word 0x299
00001C03  EB1D              jmp short 0x1c22
00001C05  90                nop
00001C06  FE069B6D          inc byte [0x6d9b]
00001C0A  EB16              jmp short 0x1c22
00001C0C  90                nop
00001C0D  FE069C6D          inc byte [0x6d9c]
00001C11  EB0F              jmp short 0x1c22
00001C13  90                nop
00001C14  FE0E9B6D          dec byte [0x6d9b]
00001C18  EB08              jmp short 0x1c22
00001C1A  90                nop
00001C1B  FE0E9C6D          dec byte [0x6d9c]
00001C1F  EB01              jmp short 0x1c22
00001C21  90                nop
00001C22  FE06C86D          inc byte [0x6dc8]
00001C26  8A1EC86D          mov bl,[0x6dc8]
00001C2A  8B36976D          mov si,[0x6d97]
00001C2E  8A00              mov al,[bx+si]
00001C30  3C0F              cmp al,0xf
00001C32  F5                cmc
00001C33  7503              jnz 0x1c38
00001C35  EB04              jmp short 0x1c3b
00001C37  90                nop
00001C38  E949FF            jmp word 0x1b84
00001C3B  C3                ret
00001C3C  0304              add ax,[si]
00001C3E  0506FA            add ax,0xfa06
00001C41  FA                cli
00001C42  FA                cli
00001C43  FE0B              dec byte [bp+di]
00001C45  0B0B              or cx,[bp+di]
00001C47  0C23              or al,0x23
00001C49  2323              and sp,[bp+di]
00001C4B  231E1E00          and bx,[0x1e]
00001C4F  025028            add dl,[bx+si+0x28]
00001C52  A04E1C            mov al,[0x1c4e]
00001C55  FEC0              inc al
00001C57  FEC8              dec al
00001C59  7503              jnz 0x1c5e
00001C5B  EB0F              jmp short 0x1c6c
00001C5D  90                nop
00001C5E  FE0E4E1C          dec byte [0x1c4e]
00001C62  B014              mov al,0x14
00001C64  FEC0              inc al
00001C66  FEC8              dec al
00001C68  E874E5            call word 0x1df
00001C6B  C3                ret
00001C6C  FE0E4F1C          dec byte [0x1c4f]
00001C70  7503              jnz 0x1c75
00001C72  EB02              jmp short 0x1c76
00001C74  90                nop
00001C75  C3                ret
00001C76  B001              mov al,0x1
00001C78  A24F1C            mov [0x1c4f],al
00001C7B  A0AC15            mov al,[0x15ac]
00001C7E  FEC0              inc al
00001C80  FEC8              dec al
00001C82  7403              jz 0x1c87
00001C84  EB68              jmp short 0x1cee
00001C86  90                nop
00001C87  E86001            call word 0x1dea
00001C8A  D0D4              rcl ah,1
00001C8C  2403              and al,0x3
00001C8E  D0DC              rcr ah,1
00001C90  8AD8              mov bl,al
00001C92  881EAE15          mov [0x15ae],bl
00001C96  8A873C1C          mov al,[bx+0x1c3c]
00001C9A  A2AA15            mov [0x15aa],al
00001C9D  8A87401C          mov al,[bx+0x1c40]
00001CA1  A2AB15            mov [0x15ab],al
00001CA4  A2AD15            mov [0x15ad],al
00001CA7  B0FC              mov al,0xfc
00001CA9  A2A615            mov [0x15a6],al
00001CAC  A29B6D            mov [0x6d9b],al
00001CAF  8A87481C          mov al,[bx+0x1c48]
00001CB3  A2A715            mov [0x15a7],al
00001CB6  A29C6D            mov [0x6d9c],al
00001CB9  B001              mov al,0x1
00001CBB  A2AC15            mov [0x15ac],al
00001CBE  B000              mov al,0x0
00001CC0  FEC0              inc al
00001CC2  FEC8              dec al
00001CC4  A2A415            mov [0x15a4],al
00001CC7  C706976D2671      mov word [0x6d97],0x7126
00001CCD  E8AEFE            call word 0x1b7e
00001CD0  B026              mov al,0x26
00001CD2  A29B6D            mov [0x6d9b],al
00001CD5  0401              add al,0x1
00001CD7  A2651B            mov [0x1b65],al
00001CDA  B02A              mov al,0x2a
00001CDC  A29C6D            mov [0x6d9c],al
00001CDF  2C10              sub al,0x10
00001CE1  F5                cmc
00001CE2  A2641B            mov [0x1b64],al
00001CE5  C706976D0016      mov word [0x6d97],0x1600
00001CEB  E829E6            call word 0x317
00001CEE  A0A615            mov al,[0x15a6]
00001CF1  A2A815            mov [0x15a8],al
00001CF4  2A06AA15          sub al,[0x15aa]
00001CF8  F5                cmc
00001CF9  A2A615            mov [0x15a6],al
00001CFC  A0A715            mov al,[0x15a7]
00001CFF  A2A915            mov [0x15a9],al
00001D02  0206AB15          add al,[0x15ab]
00001D06  A2A715            mov [0x15a7],al
00001D09  A0A815            mov al,[0x15a8]
00001D0C  A29B6D            mov [0x6d9b],al
00001D0F  A0A915            mov al,[0x15a9]
00001D12  A29C6D            mov [0x6d9c],al
00001D15  B000              mov al,0x0
00001D17  FEC0              inc al
00001D19  FEC8              dec al
00001D1B  A2A415            mov [0x15a4],al
00001D1E  C706976D2671      mov word [0x6d97],0x7126
00001D24  E857FE            call word 0x1b7e
00001D27  A0A615            mov al,[0x15a6]
00001D2A  A29B6D            mov [0x6d9b],al
00001D2D  A0A715            mov al,[0x15a7]
00001D30  A29C6D            mov [0x6d9c],al
00001D33  B000              mov al,0x0
00001D35  FEC0              inc al
00001D37  FEC8              dec al
00001D39  A2A415            mov [0x15a4],al
00001D3C  C706976D2671      mov word [0x6d97],0x7126
00001D42  E839FE            call word 0x1b7e
00001D45  FE06AB15          inc byte [0x15ab]
00001D49  A0AB15            mov al,[0x15ab]
00001D4C  8A1EAE15          mov bl,[0x15ae]
00001D50  3A87441C          cmp al,[bx+0x1c44]
00001D54  F5                cmc
00001D55  7403              jz 0x1d5a
00001D57  EB0F              jmp short 0x1d68
00001D59  90                nop
00001D5A  B82E22            mov ax,0x222e
00001D5D  E89B29            call word 0x46fb
00001D60  8A1EAD15          mov bl,[0x15ad]
00001D64  881EAB15          mov [0x15ab],bl
00001D68  8A0E6722          mov cl,[0x2267]
00001D6C  A0A615            mov al,[0x15a6]
00001D6F  8BF1              mov si,cx
00001D71  3A844C1C          cmp al,[si+0x1c4c]
00001D75  F5                cmc
00001D76  7203              jc 0x1d7b
00001D78  EB37              jmp short 0x1db1
00001D7A  90                nop
00001D7B  A0A715            mov al,[0x15a7]
00001D7E  3CBE              cmp al,0xbe
00001D80  F5                cmc
00001D81  7303              jnc 0x1d86
00001D83  EB2C              jmp short 0x1db1
00001D85  90                nop
00001D86  A0A615            mov al,[0x15a6]
00001D89  3C85              cmp al,0x85
00001D8B  F5                cmc
00001D8C  7203              jc 0x1d91
00001D8E  EB02              jmp short 0x1d92
00001D90  90                nop
00001D91  C3                ret
00001D92  B026              mov al,0x26
00001D94  A29B6D            mov [0x6d9b],al
00001D97  0401              add al,0x1
00001D99  A2651B            mov [0x1b65],al
00001D9C  B02A              mov al,0x2a
00001D9E  A29C6D            mov [0x6d9c],al
00001DA1  2C10              sub al,0x10
00001DA3  F5                cmc
00001DA4  A2641B            mov [0x1b64],al
00001DA7  C706976D0015      mov word [0x6d97],0x1500
00001DAD  E867E5            call word 0x317
00001DB0  C3                ret
00001DB1  A0A615            mov al,[0x15a6]
00001DB4  A29B6D            mov [0x6d9b],al
00001DB7  A0A715            mov al,[0x15a7]
00001DBA  A29C6D            mov [0x6d9c],al
00001DBD  B000              mov al,0x0
00001DBF  FEC0              inc al
00001DC1  FEC8              dec al
00001DC3  A2A415            mov [0x15a4],al
00001DC6  C706976D2671      mov word [0x6d97],0x7126
00001DCC  E8AFFD            call word 0x1b7e
00001DCF  B000              mov al,0x0
00001DD1  A2AC15            mov [0x15ac],al
00001DD4  A2A615            mov [0x15a6],al
00001DD7  A2A715            mov [0x15a7],al
00001DDA  8A1E7D0B          mov bl,[0xb7d]
00001DDE  8A87501C          mov al,[bx+0x1c50]
00001DE2  FEC0              inc al
00001DE4  FEC8              dec al
00001DE6  A24E1C            mov [0x1c4e],al
00001DE9  C3                ret
00001DEA  F9                stc
00001DEB  A01A1E            mov al,[0x1e1a]
00001DEE  12061D1E          adc al,[0x1e1d]
00001DF2  12061E1E          adc al,[0x1e1e]
00001DF6  A2191E            mov [0x1e19],al
00001DF9  B104              mov cl,0x4
00001DFB  8BF1              mov si,cx
00001DFD  8A84191E          mov al,[si+0x1e19]
00001E01  FEC0              inc al
00001E03  FEC8              dec al
00001E05  8BF1              mov si,cx
00001E07  88841A1E          mov [si+0x1e1a],al
00001E0B  FEC9              dec cl
00001E0D  7802              js 0x1e11
00001E0F  EBEA              jmp short 0x1dfb
00001E11  A0191E            mov al,[0x1e19]
00001E14  FEC0              inc al
00001E16  FEC8              dec al
00001E18  C3                ret
00001E19  0000              add [bx+si],al
00001E1B  0000              add [bx+si],al
00001E1D  0000              add [bx+si],al
00001E1F  0000              add [bx+si],al
00001E21  54                push sp
00001E22  62707E            bound si,[bx+si+0x7e]
00001E25  8C9AB301          mov [bp+si+0x1b3],ds
00001E29  FEC3              inc bl
00001E2B  FECB              dec bl
00001E2D  E8BAFF            call word 0x1dea
00001E30  D0D4              rcl ah,1
00001E32  2405              and al,0x5
00001E34  D0DC              rcr ah,1
00001E36  8AC8              mov cl,al
00001E38  8BF1              mov si,cx
00001E3A  8A84211E          mov al,[si+0x1e21]
00001E3E  88872834          mov [bx+0x3428],al
00001E42  FEC3              inc bl
00001E44  80FB05            cmp bl,0x5
00001E47  F5                cmc
00001E48  7402              jz 0x1e4c
00001E4A  EBE1              jmp short 0x1e2d
00001E4C  C3                ret
00001E4D  0000              add [bx+si],al
00001E4F  0000              add [bx+si],al
00001E51  002A              add [bp+si],ch
00001E53  46                inc si
00001E54  A8C4              test al,0xc4
00001E56  B301              mov bl,0x1
00001E58  FEC3              inc bl
00001E5A  FECB              dec bl
00001E5C  E88BFF            call word 0x1dea
00001E5F  D0D4              rcl ah,1
00001E61  2403              and al,0x3
00001E63  D0DC              rcr ah,1
00001E65  8AC8              mov cl,al
00001E67  8BF1              mov si,cx
00001E69  8A84521E          mov al,[si+0x1e52]
00001E6D  88874D1E          mov [bx+0x1e4d],al
00001E71  8BF1              mov si,cx
00001E73  8A845972          mov al,[si+0x7259]
00001E77  88875472          mov [bx+0x7254],al
00001E7B  FEC3              inc bl
00001E7D  80FB05            cmp bl,0x5
00001E80  F5                cmc
00001E81  7402              jz 0x1e85
00001E83  EBD7              jmp short 0x1e5c
00001E85  C3                ret
00001E86  A3B86D            mov [0x6db8],ax
00001E89  B300              mov bl,0x0
00001E8B  8B36B86D          mov si,[0x6db8]
00001E8F  8A00              mov al,[bx+si]
00001E91  A29B6D            mov [0x6d9b],al
00001E94  FEC3              inc bl
00001E96  8B36B86D          mov si,[0x6db8]
00001E9A  8A00              mov al,[bx+si]
00001E9C  A29C6D            mov [0x6d9c],al
00001E9F  B002              mov al,0x2
00001EA1  0206B86D          add al,[0x6db8]
00001EA5  A2B86D            mov [0x6db8],al
00001EA8  7203              jc 0x1ead
00001EAA  EB05              jmp short 0x1eb1
00001EAC  90                nop
00001EAD  FE06B96D          inc byte [0x6db9]
00001EB1  B300              mov bl,0x0
00001EB3  8B36B86D          mov si,[0x6db8]
00001EB7  8A00              mov al,[bx+si]
00001EB9  3C00              cmp al,0x0
00001EBB  F5                cmc
00001EBC  7503              jnz 0x1ec1
00001EBE  EB18              jmp short 0x1ed8
00001EC0  90                nop
00001EC1  3C01              cmp al,0x1
00001EC3  F5                cmc
00001EC4  7403              jz 0x1ec9
00001EC6  EB11              jmp short 0x1ed9
00001EC8  90                nop
00001EC9  FE06B86D          inc byte [0x6db8]
00001ECD  7403              jz 0x1ed2
00001ECF  EB05              jmp short 0x1ed6
00001ED1  90                nop
00001ED2  FE06B96D          inc byte [0x6db9]
00001ED6  EBB1              jmp short 0x1e89
00001ED8  C3                ret
00001ED9  E862E3            call word 0x23e
00001EDC  FE069B6D          inc byte [0x6d9b]
00001EE0  FE06B86D          inc byte [0x6db8]
00001EE4  7402              jz 0x1ee8
00001EE6  EBC9              jmp short 0x1eb1
00001EE8  FE06B96D          inc byte [0x6db9]
00001EEC  EBC3              jmp short 0x1eb1
00001EEE  0000              add [bx+si],al
00001EF0  42                inc dx
00001EF1  4F                dec di
00001EF2  4E                dec si
00001EF3  55                push bp
00001EF4  53                push bx
00001EF5  3A30              cmp dh,[bx+si]
00001EF7  3030              xor [bx+si],dh
00001EF9  3030              xor [bx+si],dh
00001EFB  2020              and [bx+si],ah
00001EFD  53                push bx
00001EFE  43                inc bx
00001EFF  4F                dec di
00001F00  52                push dx
00001F01  45                inc bp
00001F02  3A30              cmp dh,[bx+si]
00001F04  3030              xor [bx+si],dh
00001F06  3030              xor [bx+si],dh
00001F08  2020              and [bx+si],ah
00001F0A  48                dec ax
00001F0B  49                dec cx
00001F0C  2D5343            sub ax,0x4353
00001F0F  4F                dec di
00001F10  52                push dx
00001F11  45                inc bp
00001F12  3A30              cmp dh,[bx+si]
00001F14  3030              xor [bx+si],dh
00001F16  3030              xor [bx+si],dh
00001F18  0027              add [bx],ah
00001F1A  40                inc ax
00001F1B  4C                dec sp
00001F1C  0127              add [bx],sp
00001F1E  48                dec ax
00001F1F  45                inc bp
00001F20  0127              add [bx],sp
00001F22  50                push ax
00001F23  56                push si
00001F24  0127              add [bx],sp
00001F26  58                pop ax
00001F27  45                inc bp
00001F28  0127              add [bx],sp
00001F2A  60                pushaw
00001F2B  4C                dec sp
00001F2C  0127              add [bx],sp
00001F2E  682001            push word 0x120
00001F31  27                daa
00001F32  7030              jo 0x1f64
00001F34  0027              add [bx],ah
00001F36  90                nop
00001F37  4D                dec bp
00001F38  0127              add [bx],sp
00001F3A  98                cbw
00001F3B  41                inc cx
00001F3C  0127              add [bx],sp
00001F3E  A04301            mov al,[0x143]
00001F41  27                daa
00001F42  A84B              test al,0x4b
00001F44  0127              add [bx],sp
00001F46  B020              mov al,0x20
00001F48  0127              add [bx],sp
00001F4A  B83200            mov ax,0x32
00001F4D  0D5020            or ax,0x2050
00001F50  2020              and [bx+si],ah
00001F52  2020              and [bx+si],ah
00001F54  2020              and [bx+si],ah
00001F56  2020              and [bx+si],ah
00001F58  2020              and [bx+si],ah
00001F5A  010D              add [di],cx
00001F5C  58                pop ax
00001F5D  204741            and [bx+0x41],al
00001F60  4D                dec bp
00001F61  45                inc bp
00001F62  204F56            and [bx+0x56],cl
00001F65  45                inc bp
00001F66  52                push dx
00001F67  2001              and [bx+di],al
00001F69  0D6020            or ax,0x2060
00001F6C  2020              and [bx+si],ah
00001F6E  2020              and [bx+si],ah
00001F70  2020              and [bx+si],ah
00001F72  2020              and [bx+si],ah
00001F74  2020              and [bx+si],ah
00001F76  0000              add [bx+si],al
00001F78  304942            xor [bx+di+0x42],cl
00001F7B  4D                dec bp
00001F7C  205645            and [bp+0x45],dl
00001F7F  52                push dx
00001F80  53                push bx
00001F81  49                dec cx
00001F82  4F                dec di
00001F83  4E                dec si
00001F84  204259            and [bp+si+0x59],al
00001F87  204441            and [si+0x41],al
00001F8A  4E                dec si
00001F8B  41                inc cx
00001F8C  20484F            and [bx+si+0x4f],cl
00001F8F  57                push di
00001F90  2026204B          and [0x4b20],ah
00001F94  45                inc bp
00001F95  56                push si
00001F96  49                dec cx
00001F97  4E                dec si
00001F98  204749            and [bx+0x49],al
00001F9B  4C                dec sp
00001F9C  4D                dec bp
00001F9D  4F                dec di
00001F9E  52                push dx
00001F9F  45                inc bp
00001FA0  2C01              sub al,0x1
00001FA2  07                pop es
00001FA3  3C54              cmp al,0x54
00001FA5  48                dec ax
00001FA6  52                push dx
00001FA7  4F                dec di
00001FA8  55                push bp
00001FA9  47                inc di
00001FAA  48                dec ax
00001FAB  20544D            and [si+0x4d],dl
00001FAE  51                push cx
00001FAF  20534F            and [bp+di+0x4f],dl
00001FB2  46                inc si
00001FB3  54                push sp
00001FB4  57                push di
00001FB5  41                inc cx
00001FB6  52                push dx
00001FB7  45                inc bp
00001FB8  2C20              sub al,0x20
00001FBA  49                dec cx
00001FBB  4E                dec si
00001FBC  43                inc bx
00001FBD  2E0107            add [cs:bx],ax
00001FC0  4C                dec sp
00001FC1  41                inc cx
00001FC2  4E                dec si
00001FC3  204F52            and [bx+0x52],cl
00001FC6  49                dec cx
00001FC7  47                inc di
00001FC8  49                dec cx
00001FC9  4E                dec si
00001FCA  41                inc cx
00001FCB  4C                dec sp
00001FCC  204741            and [bx+0x41],al
00001FCF  4D                dec bp
00001FD0  45                inc bp
00001FD1  204445            and [si+0x45],al
00001FD4  53                push bx
00001FD5  49                dec cx
00001FD6  47                inc di
00001FD7  4E                dec si
00001FD8  204259            and [bp+si+0x59],al
00001FDB  0103              add [bp+di],ax
00001FDD  58                pop ax
00001FDE  4D                dec bp
00001FDF  49                dec cx
00001FE0  43                inc bx
00001FE1  48                dec ax
00001FE2  41                inc cx
00001FE3  45                inc bp
00001FE4  4C                dec sp
00001FE5  204142            and [bx+di+0x42],al
00001FE8  42                inc dx
00001FE9  4F                dec di
00001FEA  54                push sp
00001FEB  2026204D          and [0x4d20],ah
00001FEF  41                inc cx
00001FF0  54                push sp
00001FF1  54                push sp
00001FF2  48                dec ax
00001FF3  45                inc bp
00001FF4  57                push di
00001FF5  20414C            and [bx+di+0x4c],al
00001FF8  45                inc bp
00001FF9  58                pop ax
00001FFA  41                inc cx
00001FFB  4E                dec si
00001FFC  44                inc sp
00001FFD  45                inc bp
00001FFE  52                push dx
00001FFF  2E0104            add [cs:si],ax
00002002  6E                outsb
00002003  56                push si
00002004  41                inc cx
00002005  4E                dec si
00002006  44                inc sp
00002007  41                inc cx
00002008  4C                dec sp
00002009  2020              and [bx+si],ah
0000200B  2020              and [bx+si],ah
0000200D  2020              and [bx+si],ah
0000200F  2020              and [bx+si],ah
00002011  204D41            and [di+0x41],cl
00002014  43                inc bx
00002015  4B                dec bx
00002016  2020              and [bx+si],ah
00002018  2020              and [bx+si],ah
0000201A  2020              and [bx+si],ah
0000201C  2020              and [bx+si],ah
0000201E  204F53            and [bx+0x53],cl
00002021  48                dec ax
00002022  41                inc cx
00002023  0111              add [bx+di],dx
00002025  B92843            mov cx,0x4328
00002028  2931              sub [bx+di],si
0000202A  3938              cmp [bx+si],di
0000202C  3420              xor al,0x20
0000202E  54                push sp
0000202F  48                dec ax
00002030  45                inc bp
00002031  204455            and [si+0x55],al
00002034  50                push ax
00002035  4C                dec sp
00002036  49                dec cx
00002037  43                inc bx
00002038  41                inc cx
00002039  54                push sp
0000203A  4F                dec di
0000203B  52                push dx
0000203C  53                push bx
0000203D  000A              add [bp+si],cl
0000203F  004D49            add [di+0x49],cl
00002042  43                inc bx
00002043  48                dec ax
00002044  41                inc cx
00002045  45                inc bp
00002046  4C                dec sp
00002047  27                daa
00002048  53                push bx
00002049  204445            and [si+0x45],al
0000204C  44                inc sp
0000204D  49                dec cx
0000204E  43                inc bx
0000204F  41                inc cx
00002050  54                push sp
00002051  49                dec cx
00002052  4F                dec di
00002053  4E                dec si
00002054  010E2048          add [0x4820],cx
00002058  41                inc cx
00002059  52                push dx
0000205A  44                inc sp
0000205B  204841            and [bx+si+0x41],cl
0000205E  54                push sp
0000205F  204D41            and [di+0x41],cl
00002062  43                inc bx
00002063  4B                dec bx
00002064  0113              add [bp+di],dx
00002066  284953            sub [bx+di+0x53],cl
00002069  01063044          add [0x4430],ax
0000206D  45                inc bp
0000206E  44                inc sp
0000206F  49                dec cx
00002070  43                inc bx
00002071  41                inc cx
00002072  54                push sp
00002073  45                inc bp
00002074  44                inc sp
00002075  20544F            and [si+0x4f],dl
00002078  204D59            and [di+0x59],cl
0000207B  204752            and [bx+0x52],al
0000207E  41                inc cx
0000207F  4E                dec si
00002080  44                inc sp
00002081  50                push ax
00002082  41                inc cx
00002083  52                push dx
00002084  45                inc bp
00002085  4E                dec si
00002086  54                push sp
00002087  53                push bx
00002088  010D              add [di],cx
0000208A  40                inc ax
0000208B  4D                dec bp
0000208C  59                pop cx
0000208D  4D                dec bp
0000208E  59                pop cx
0000208F  20414E            and [bx+di+0x4e],al
00002092  44                inc sp
00002093  204A49            and [bp+si+0x49],cl
00002096  4D                dec bp
00002097  44                inc sp
00002098  41                inc cx
00002099  44                inc sp
0000209A  000B              add [bp+di],cl
0000209C  004D41            add [di+0x41],cl
0000209F  54                push sp
000020A0  54                push sp
000020A1  48                dec ax
000020A2  45                inc bp
000020A3  57                push di
000020A4  27                daa
000020A5  53                push bx
000020A6  204445            and [si+0x45],al
000020A9  44                inc sp
000020AA  49                dec cx
000020AB  43                inc bx
000020AC  41                inc cx
000020AD  54                push sp
000020AE  49                dec cx
000020AF  4F                dec di
000020B0  4E                dec si
000020B1  0100              add [bx+si],ax
000020B3  40                inc ax
000020B4  54                push sp
000020B5  4F                dec di
000020B6  204249            and [bp+si+0x49],al
000020B9  47                inc di
000020BA  20414C            and [bx+di+0x4c],al
000020BD  3A01              cmp al,[bx+di]
000020BF  00504D            add [bx+si+0x4d],dl
000020C2  41                inc cx
000020C3  59                pop cx
000020C4  205448            and [si+0x48],dl
000020C7  45                inc bp
000020C8  204F53            and [bx+0x53],cl
000020CB  48                dec ax
000020CC  41                inc cx
000020CD  204E45            and [bp+0x45],cl
000020D0  56                push si
000020D1  45                inc bp
000020D2  52                push dx
000020D3  204441            and [si+0x41],al
000020D6  52                push dx
000020D7  4B                dec bx
000020D8  45                inc bp
000020D9  4E                dec si
000020DA  20594F            and [bx+di+0x4f],bl
000020DD  55                push bp
000020DE  52                push dx
000020DF  20444F            and [si+0x4f],al
000020E2  4F                dec di
000020E3  52                push dx
000020E4  57                push di
000020E5  41                inc cx
000020E6  59                pop cx
000020E7  00A02E34          add [bx+si+0x342e],ah
000020EB  D0D4              rcl ah,1
000020ED  0C30              or al,0x30
000020EF  D0DC              rcr ah,1
000020F1  A2FD20            mov [0x20fd],al
000020F4  B8FB20            mov ax,0x20fb
000020F7  E88CFD            call word 0x1e86
000020FA  C3                ret
000020FB  27                daa
000020FC  B83000            mov ax,0x30
000020FF  A2986D            mov [0x6d98],al
00002102  880E9B6D          mov [0x6d9b],cl
00002106  880E9D6D          mov [0x6d9d],cl
0000210A  881E9C6D          mov [0x6d9c],bl
0000210E  881E9E6D          mov [0x6d9e],bl
00002112  A06B72            mov al,[0x726b]
00002115  FEC0              inc al
00002117  FEC8              dec al
00002119  A29A6D            mov [0x6d9a],al
0000211C  E849E2            call word 0x368
0000211F  C3                ret
00002120  0000              add [bx+si],al
00002122  0000              add [bx+si],al
00002124  0001              add [bx+di],al
00002126  00FE              add dh,bh
00002128  0E                push cs
00002129  252175            and ax,0x7521
0000212C  03EB              add bp,bx
0000212E  0290C3B0          add dl,[bx+si-0x4f3d]
00002132  02A22521          add ah,[bp+si+0x2125]
00002136  A02421            mov al,[0x2124]
00002139  FEC0              inc al
0000213B  FEC8              dec al
0000213D  7403              jz 0x2142
0000213F  EB17              jmp short 0x2158
00002141  90                nop
00002142  C70620210058      mov word [0x2120],0x5800
00002148  C7062221005C      mov word [0x2122],0x5c00
0000214E  B001              mov al,0x1
00002150  A22421            mov [0x2124],al
00002153  B000              mov al,0x0
00002155  A22621            mov [0x2126],al
00002158  B000              mov al,0x0
0000215A  A29B6D            mov [0x6d9b],al
0000215D  A29D6D            mov [0x6d9d],al
00002160  B047              mov al,0x47
00002162  A29C6D            mov [0x6d9c],al
00002165  A29E6D            mov [0x6d9e],al
00002168  A02321            mov al,[0x2123]
0000216B  A29A6D            mov [0x6d9a],al
0000216E  A02221            mov al,[0x2122]
00002171  A2996D            mov [0x6d99],al
00002174  A02121            mov al,[0x2121]
00002177  A2986D            mov [0x6d98],al
0000217A  A02021            mov al,[0x2120]
0000217D  FEC0              inc al
0000217F  FEC8              dec al
00002181  A2976D            mov [0x6d97],al
00002184  E82AE2            call word 0x3b1
00002187  A02121            mov al,[0x2121]
0000218A  A22321            mov [0x2123],al
0000218D  A02021            mov al,[0x2120]
00002190  A22221            mov [0x2122],al
00002193  FE062621          inc byte [0x2126]
00002197  8A1E2621          mov bl,[0x2126]
0000219B  80FB04            cmp bl,0x4
0000219E  F5                cmc
0000219F  7403              jz 0x21a4
000021A1  EB07              jmp short 0x21aa
000021A3  90                nop
000021A4  B300              mov bl,0x0
000021A6  881E2621          mov [0x2126],bl
000021AA  8A87E271          mov al,[bx+0x71e2]
000021AE  32E4              xor ah,ah
000021B0  050058            add ax,0x5800
000021B3  A32021            mov [0x2120],ax
000021B6  A02121            mov al,[0x2121]
000021B9  FEC0              inc al
000021BB  FEC8              dec al
000021BD  C3                ret
000021BE  A07A0B            mov al,[0xb7a]
000021C1  FEC0              inc al
000021C3  FEC8              dec al
000021C5  7403              jz 0x21ca
000021C7  EB0F              jmp short 0x21d8
000021C9  90                nop
000021CA  C706F8460349      mov word [0x46f8],0x4903
000021D0  A0F846            mov al,[0x46f8]
000021D3  FEC0              inc al
000021D5  FEC8              dec al
000021D7  C3                ret
000021D8  C706F846E621      mov word [0x46f8],0x21e6
000021DE  A0F846            mov al,[0x46f8]
000021E1  FEC0              inc al
000021E3  FEC8              dec al
000021E5  C3                ret
000021E6  0802              or [bp+si],al
000021E8  FF01              inc word [bx+di]
000021EA  0802              or [bp+si],al
000021EC  FF02              inc word [bp+si]
000021EE  0103              add [bp+di],ax
000021F0  FF02              inc word [bp+si]
000021F2  0000              add [bx+si],al
000021F4  0000              add [bx+si],al
000021F6  0002              add [bp+si],al
000021F8  0302              add ax,[bp+si]
000021FA  06                push es
000021FB  0208              add cl,[bx+si]
000021FD  0208              add cl,[bx+si]
000021FF  02060203          add al,[0x302]
00002203  0200              add al,[bx+si]
00002205  0000              add [bx+si],al
00002207  0203              add al,[bp+di]
00002209  0201              add al,[bx+di]
0000220B  0204              add al,[si]
0000220D  0202              add al,[bp+si]
0000220F  0205              add al,[di]
00002211  0203              add al,[bp+di]
00002213  02060224          add al,[0x2402]
00002217  0200              add al,[bx+si]
00002219  0024              add [si],ah
0000221B  02060203          add al,[0x302]
0000221F  0205              add al,[di]
00002221  0202              add al,[bp+si]
00002223  0204              add al,[si]
00002225  0201              add al,[bx+di]
00002227  0203              add al,[bp+di]
00002229  0200              add al,[bx+si]
0000222B  0200              add al,[bx+si]
0000222D  00FD              add ch,bh
0000222F  0108              add [bx+si],cx
00002231  01FE              add si,di
00002233  0100              add [bx+si],ax
00002235  0000              add [bx+si],al
00002237  0203              add al,[bp+di]
00002239  0204              add al,[si]
0000223B  0303              add ax,[bp+di]
0000223D  0202              add al,[bp+si]
0000223F  0100              add [bx+si],ax
00002241  0203              add al,[bp+di]
00002243  0204              add al,[si]
00002245  0303              add ax,[bp+di]
00002247  0202              add al,[bp+si]
00002249  0100              add [bx+si],ax
0000224B  0203              add al,[bp+di]
0000224D  0204              add al,[si]
0000224F  0303              add ax,[bp+di]
00002251  0202              add al,[bp+si]
00002253  0100              add [bx+si],ax
00002255  0008              add [bx+si],cl
00002257  0107              add [bx],ax
00002259  01060106          add [0x601],ax
0000225D  0107              add [bx],ax
0000225F  0108              add [bx+si],cx
00002261  0100              add [bx+si],ax
00002263  0000              add [bx+si],al
00002265  0000              add [bx+si],al
00002267  0000              add [bx+si],al
00002269  A00862            mov al,[0x6208]
0000226C  FEC0              inc al
0000226E  FEC8              dec al
00002270  7503              jnz 0x2275
00002272  EB02              jmp short 0x2276
00002274  90                nop
00002275  C3                ret
00002276  A0954F            mov al,[0x4f95]
00002279  FEC0              inc al
0000227B  FEC8              dec al
0000227D  7503              jnz 0x2282
0000227F  EB02              jmp short 0x2283
00002281  90                nop
00002282  C3                ret
00002283  A08107            mov al,[0x781]
00002286  3C80              cmp al,0x80
00002288  F5                cmc
00002289  7303              jnc 0x228e
0000228B  EB02              jmp short 0x228f
0000228D  90                nop
0000228E  C3                ret
0000228F  3C92              cmp al,0x92
00002291  F5                cmc
00002292  7403              jz 0x2297
00002294  EB04              jmp short 0x229a
00002296  90                nop
00002297  E98900            jmp word 0x2323
0000229A  3C9B              cmp al,0x9b
0000229C  F5                cmc
0000229D  7403              jz 0x22a2
0000229F  EB04              jmp short 0x22a5
000022A1  90                nop
000022A2  EB5D              jmp short 0x2301
000022A4  90                nop
000022A5  3C93              cmp al,0x93
000022A7  F5                cmc
000022A8  7403              jz 0x22ad
000022AA  EB04              jmp short 0x22b0
000022AC  90                nop
000022AD  EB3B              jmp short 0x22ea
000022AF  90                nop
000022B0  3C83              cmp al,0x83
000022B2  F5                cmc
000022B3  7403              jz 0x22b8
000022B5  EB04              jmp short 0x22bb
000022B7  90                nop
000022B8  E94B40            jmp word 0x6306
000022BB  3C9D              cmp al,0x9d
000022BD  F5                cmc
000022BE  7403              jz 0x22c3
000022C0  EB04              jmp short 0x22c6
000022C2  90                nop
000022C3  E9A300            jmp word 0x2369
000022C6  3C9E              cmp al,0x9e
000022C8  F5                cmc
000022C9  7403              jz 0x22ce
000022CB  EB04              jmp short 0x22d1
000022CD  90                nop
000022CE  EB74              jmp short 0x2344
000022D0  90                nop
000022D1  3A06E022          cmp al,[0x22e0]
000022D5  F5                cmc
000022D6  7403              jz 0x22db
000022D8  EB04              jmp short 0x22de
000022DA  90                nop
000022DB  E9A521            jmp word 0x4483
000022DE  C3                ret
000022DF  008D3C93          add [di-0x6cc4],cl
000022E3  F5                cmc
000022E4  7503              jnz 0x22e9
000022E6  EB02              jmp short 0x22ea
000022E8  90                nop
000022E9  C3                ret
000022EA  9F                lahf
000022EB  802681077F        and byte [0x781],0x7f
000022F0  9E                sahf
000022F1  A0710B            mov al,[0xb71]
000022F4  D0D4              rcl ah,1
000022F6  3401              xor al,0x1
000022F8  D0DC              rcr ah,1
000022FA  A2710B            mov [0xb71],al
000022FD  A21B62            mov [0x621b],al
00002300  C3                ret
00002301  802681077F        and byte [0x781],0x7f
00002306  A08107            mov al,[0x781]
00002309  FEC0              inc al
0000230B  FEC8              dec al
0000230D  7802              js 0x2311
0000230F  EBF5              jmp short 0x2306
00002311  3C9B              cmp al,0x9b
00002313  F5                cmc
00002314  7503              jnz 0x2319
00002316  EB03              jmp short 0x231b
00002318  90                nop
00002319  EBE6              jmp short 0x2301
0000231B  9F                lahf
0000231C  802681077F        and byte [0x781],0x7f
00002321  9E                sahf
00002322  C3                ret
00002323  9F                lahf
00002324  802681077F        and byte [0x781],0x7f
00002329  9E                sahf
0000232A  E954E8            jmp word 0xb81
0000232D  C3                ret
0000232E  A06722            mov al,[0x2267]
00002331  D0D4              rcl ah,1
00002333  3401              xor al,0x1
00002335  D0DC              rcr ah,1
00002337  A26722            mov [0x2267],al
0000233A  B000              mov al,0x0
0000233C  FEC0              inc al
0000233E  FEC8              dec al
00002340  A26822            mov [0x2268],al
00002343  C3                ret
00002344  9F                lahf
00002345  802681077F        and byte [0x781],0x7f
0000234A  9E                sahf
0000234B  E8D5DE            call word 0x223
0000234E  B83E20            mov ax,0x203e
00002351  E832FB            call word 0x1e86
00002354  A08107            mov al,[0x781]
00002357  FEC0              inc al
00002359  FEC8              dec al
0000235B  7802              js 0x235f
0000235D  EBF5              jmp short 0x2354
0000235F  9F                lahf
00002360  802681077F        and byte [0x781],0x7f
00002365  9E                sahf
00002366  E918E8            jmp word 0xb81
00002369  9F                lahf
0000236A  802681077F        and byte [0x781],0x7f
0000236F  9E                sahf
00002370  E8B0DE            call word 0x223
00002373  B89B20            mov ax,0x209b
00002376  E80DFB            call word 0x1e86
00002379  A08107            mov al,[0x781]
0000237C  FEC0              inc al
0000237E  FEC8              dec al
00002380  7802              js 0x2384
00002382  EBF5              jmp short 0x2379
00002384  9F                lahf
00002385  802681077F        and byte [0x781],0x7f
0000238A  9E                sahf
0000238B  E9F3E7            jmp word 0xb81
0000238E  00A06722          add [bx+si+0x2267],ah
00002392  FEC0              inc al
00002394  FEC8              dec al
00002396  7403              jz 0x239b
00002398  EB02              jmp short 0x239c
0000239A  90                nop
0000239B  C3                ret
0000239C  A06522            mov al,[0x2265]
0000239F  FEC0              inc al
000023A1  FEC8              dec al
000023A3  7503              jnz 0x23a8
000023A5  EB04              jmp short 0x23ab
000023A7  90                nop
000023A8  E9AA00            jmp word 0x2455
000023AB  A06422            mov al,[0x2264]
000023AE  2C08              sub al,0x8
000023B0  F5                cmc
000023B1  3C54              cmp al,0x54
000023B3  F5                cmc
000023B4  7303              jnc 0x23b9
000023B6  EB10              jmp short 0x23c8
000023B8  90                nop
000023B9  B000              mov al,0x0
000023BB  A26722            mov [0x2267],al
000023BE  B001              mov al,0x1
000023C0  A26522            mov [0x2265],al
000023C3  A2640B            mov [0xb64],al
000023C6  B054              mov al,0x54
000023C8  A26422            mov [0x2264],al
000023CB  A29C6D            mov [0x6d9c],al
000023CE  2C31              sub al,0x31
000023D0  F5                cmc
000023D1  A2641B            mov [0x1b64],al
000023D4  B000              mov al,0x0
000023D6  A29B6D            mov [0x6d9b],al
000023D9  0403              add al,0x3
000023DB  A2651B            mov [0x1b65],al
000023DE  8A1E6822          mov bl,[0x2268]
000023E2  8A87E671          mov al,[bx+0x71e6]
000023E6  FEC0              inc al
000023E8  FEC8              dec al
000023EA  32E4              xor ah,ah
000023EC  050032            add ax,0x3200
000023EF  A3976D            mov [0x6d97],ax
000023F2  E822DF            call word 0x317
000023F5  A06622            mov al,[0x2266]
000023F8  2C08              sub al,0x8
000023FA  F5                cmc
000023FB  3C5C              cmp al,0x5c
000023FD  F5                cmc
000023FE  7303              jnc 0x2403
00002400  EB03              jmp short 0x2405
00002402  90                nop
00002403  B05C              mov al,0x5c
00002405  A29C6D            mov [0x6d9c],al
00002408  A26622            mov [0x2266],al
0000240B  2C10              sub al,0x10
0000240D  F5                cmc
0000240E  A2641B            mov [0x1b64],al
00002411  B001              mov al,0x1
00002413  A29B6D            mov [0x6d9b],al
00002416  0401              add al,0x1
00002418  A2651B            mov [0x1b65],al
0000241B  C706976D0013      mov word [0x6d97],0x1300
00002421  E8F3DE            call word 0x317
00002424  A06522            mov al,[0x2265]
00002427  FEC0              inc al
00002429  FEC8              dec al
0000242B  7503              jnz 0x2430
0000242D  EB25              jmp short 0x2454
0000242F  90                nop
00002430  B001              mov al,0x1
00002432  A2640B            mov [0xb64],al
00002435  A06822            mov al,[0x2268]
00002438  FEC0              inc al
0000243A  FEC8              dec al
0000243C  7503              jnz 0x2441
0000243E  EB14              jmp short 0x2454
00002440  90                nop
00002441  B047              mov al,0x47
00002443  A22734            mov [0x3427],al
00002446  B006              mov al,0x6
00002448  A22634            mov [0x3426],al
0000244B  B001              mov al,0x1
0000244D  FEC0              inc al
0000244F  FEC8              dec al
00002451  A2924F            mov [0x4f92],al
00002454  C3                ret
00002455  A06422            mov al,[0x2264]
00002458  0408              add al,0x8
0000245A  3CB4              cmp al,0xb4
0000245C  F5                cmc
0000245D  7203              jc 0x2462
0000245F  EB12              jmp short 0x2473
00002461  90                nop
00002462  B000              mov al,0x0
00002464  A26522            mov [0x2265],al
00002467  B000              mov al,0x0
00002469  A26722            mov [0x2267],al
0000246C  B004              mov al,0x4
0000246E  A2640B            mov [0xb64],al
00002471  B0B4              mov al,0xb4
00002473  A26422            mov [0x2264],al
00002476  A29C6D            mov [0x6d9c],al
00002479  2C31              sub al,0x31
0000247B  F5                cmc
0000247C  A2641B            mov [0x1b64],al
0000247F  B000              mov al,0x0
00002481  A29B6D            mov [0x6d9b],al
00002484  0403              add al,0x3
00002486  A2651B            mov [0x1b65],al
00002489  8A1E6822          mov bl,[0x2268]
0000248D  8A87E671          mov al,[bx+0x71e6]
00002491  32E4              xor ah,ah
00002493  050032            add ax,0x3200
00002496  A3976D            mov [0x6d97],ax
00002499  E87BDE            call word 0x317
0000249C  A06622            mov al,[0x2266]
0000249F  0408              add al,0x8
000024A1  3CBC              cmp al,0xbc
000024A3  F5                cmc
000024A4  7203              jc 0x24a9
000024A6  EB03              jmp short 0x24ab
000024A8  90                nop
000024A9  B0BC              mov al,0xbc
000024AB  A29C6D            mov [0x6d9c],al
000024AE  A26622            mov [0x2266],al
000024B1  2C10              sub al,0x10
000024B3  F5                cmc
000024B4  A2641B            mov [0x1b64],al
000024B7  B001              mov al,0x1
000024B9  A29B6D            mov [0x6d9b],al
000024BC  0401              add al,0x1
000024BE  A2651B            mov [0x1b65],al
000024C1  C706976D0013      mov word [0x6d97],0x1300
000024C7  E84DDE            call word 0x317
000024CA  A06522            mov al,[0x2265]
000024CD  FEC0              inc al
000024CF  FEC8              dec al
000024D1  7403              jz 0x24d6
000024D3  E97EFF            jmp word 0x2454
000024D6  B004              mov al,0x4
000024D8  A2640B            mov [0xb64],al
000024DB  A06822            mov al,[0x2268]
000024DE  FEC0              inc al
000024E0  FEC8              dec al
000024E2  7403              jz 0x24e7
000024E4  EB04              jmp short 0x24ea
000024E6  90                nop
000024E7  E96AFF            jmp word 0x2454
000024EA  B0A7              mov al,0xa7
000024EC  A22734            mov [0x3427],al
000024EF  B006              mov al,0x6
000024F1  A22634            mov [0x3426],al
000024F4  B001              mov al,0x1
000024F6  FEC0              inc al
000024F8  FEC8              dec al
000024FA  A2924F            mov [0x4f92],al
000024FD  C3                ret
000024FE  0000              add [bx+si],al
00002500  0000              add [bx+si],al
00002502  0000              add [bx+si],al
00002504  0000              add [bx+si],al
00002506  0000              add [bx+si],al
00002508  0000              add [bx+si],al
0000250A  0000              add [bx+si],al
0000250C  17                pop ss
0000250D  16                push ss
0000250E  151413            adc ax,0x1314
00002511  0000              add [bx+si],al
00002513  0000              add [bx+si],al
00002515  0000              add [bx+si],al
00002517  0000              add [bx+si],al
00002519  0000              add [bx+si],al
0000251B  0000              add [bx+si],al
0000251D  27                daa
0000251E  26252423          es and ax,0x2324
00002522  0000              add [bx+si],al
00002524  0000              add [bx+si],al
00002526  0000              add [bx+si],al
00002528  B100              mov cl,0x0
0000252A  F8                clc
0000252B  8BF1              mov si,cx
0000252D  8A840625          mov al,[si+0x2506]
00002531  8BF1              mov si,cx
00002533  12840025          adc al,[si+0x2500]
00002537  3C0A              cmp al,0xa
00002539  F5                cmc
0000253A  7203              jc 0x253f
0000253C  EB08              jmp short 0x2546
0000253E  90                nop
0000253F  B000              mov al,0x0
00002541  FEC0              inc al
00002543  FEC8              dec al
00002545  F9                stc
00002546  8BF1              mov si,cx
00002548  88840625          mov [si+0x2506],al
0000254C  9C                pushfw
0000254D  FEC1              inc cl
0000254F  80F905            cmp cl,0x5
00002552  F5                cmc
00002553  7503              jnz 0x2558
00002555  EB04              jmp short 0x255b
00002557  90                nop
00002558  9D                popfw
00002559  EBD0              jmp short 0x252b
0000255B  9D                popfw
0000255C  B000              mov al,0x0
0000255E  FEC0              inc al
00002560  FEC8              dec al
00002562  A20025            mov [0x2500],al
00002565  A20125            mov [0x2501],al
00002568  A20225            mov [0x2502],al
0000256B  A20325            mov [0x2503],al
0000256E  A20525            mov [0x2505],al
00002571  A20425            mov [0x2504],al
00002574  E80100            call word 0x2578
00002577  C3                ret
00002578  B100              mov cl,0x0
0000257A  880EC86D          mov [0x6dc8],cl
0000257E  8BF1              mov si,cx
00002580  8A840C25          mov al,[si+0x250c]
00002584  A2AD25            mov [0x25ad],al
00002587  8BF1              mov si,cx
00002589  8A840625          mov al,[si+0x2506]
0000258D  D0D4              rcl ah,1
0000258F  0C30              or al,0x30
00002591  D0DC              rcr ah,1
00002593  A2AF25            mov [0x25af],al
00002596  B8AD25            mov ax,0x25ad
00002599  E8EAF8            call word 0x1e86
0000259C  FE06C86D          inc byte [0x6dc8]
000025A0  8A0EC86D          mov cl,[0x6dc8]
000025A4  80F905            cmp cl,0x5
000025A7  F5                cmc
000025A8  7402              jz 0x25ac
000025AA  EBD2              jmp short 0x257e
000025AC  C3                ret
000025AD  0000              add [bx+si],al
000025AF  3000              xor [bx+si],al
000025B1  B104              mov cl,0x4
000025B3  8BF1              mov si,cx
000025B5  8A840625          mov al,[si+0x2506]
000025B9  8BF1              mov si,cx
000025BB  3A841725          cmp al,[si+0x2517]
000025BF  F5                cmc
000025C0  7203              jc 0x25c5
000025C2  EB0C              jmp short 0x25d0
000025C4  90                nop
000025C5  7403              jz 0x25ca
000025C7  EB08              jmp short 0x25d1
000025C9  90                nop
000025CA  FEC9              dec cl
000025CC  7802              js 0x25d0
000025CE  EBE3              jmp short 0x25b3
000025D0  C3                ret
000025D1  B104              mov cl,0x4
000025D3  8BF1              mov si,cx
000025D5  8A840625          mov al,[si+0x2506]
000025D9  8BF1              mov si,cx
000025DB  88841725          mov [si+0x2517],al
000025DF  FEC9              dec cl
000025E1  7802              js 0x25e5
000025E3  EBEE              jmp short 0x25d3
000025E5  B104              mov cl,0x4
000025E7  880EC86D          mov [0x6dc8],cl
000025EB  8BF1              mov si,cx
000025ED  8A841D25          mov al,[si+0x251d]
000025F1  A2AD25            mov [0x25ad],al
000025F4  8BF1              mov si,cx
000025F6  8A841725          mov al,[si+0x2517]
000025FA  D0D4              rcl ah,1
000025FC  0C30              or al,0x30
000025FE  D0DC              rcr ah,1
00002600  A2AF25            mov [0x25af],al
00002603  B8AD25            mov ax,0x25ad
00002606  E87DF8            call word 0x1e86
00002609  FE0EC86D          dec byte [0x6dc8]
0000260D  8A0EC86D          mov cl,[0x6dc8]
00002611  FEC1              inc cl
00002613  FEC9              dec cl
00002615  7802              js 0x2619
00002617  EBD2              jmp short 0x25eb
00002619  C3                ret
0000261A  54                push sp
0000261B  54                push sp
0000261C  54                push sp
0000261D  54                push sp
0000261E  54                push sp
0000261F  54                push sp
00002620  54                push sp
00002621  54                push sp
00002622  54                push sp
00002623  54                push sp
00002624  54                push sp
00002625  54                push sp
00002626  54                push sp
00002627  54                push sp
00002628  54                push sp
00002629  54                push sp
0000262A  54                push sp
0000262B  54                push sp
0000262C  54                push sp
0000262D  54                push sp
0000262E  54                push sp
0000262F  54                push sp
00002630  54                push sp
00002631  54                push sp
00002632  54                push sp
00002633  54                push sp
00002634  54                push sp
00002635  54                push sp
00002636  54                push sp
00002637  54                push sp
00002638  54                push sp
00002639  58                pop ax
0000263A  5C                pop sp
0000263B  60                pushaw
0000263C  64686C70          fs push word 0x706c
00002640  7478              jz 0x26ba
00002642  7C80              jl 0x25c4
00002644  84888C90          test [bx+si-0x6f74],cl
00002648  94                xchg ax,sp
00002649  96                xchg ax,si
0000264A  98                cbw
0000264B  9A9C9C9C9C        call word 0x9c9c:0x9c9c
00002650  9C                pushfw
00002651  9C                pushfw
00002652  9C                pushfw
00002653  9C                pushfw
00002654  9C                pushfw
00002655  9C                pushfw
00002656  9C                pushfw
00002657  9C                pushfw
00002658  9C                pushfw
00002659  9C                pushfw
0000265A  9C                pushfw
0000265B  9C                pushfw
0000265C  9C                pushfw
0000265D  9C                pushfw
0000265E  9C                pushfw
0000265F  9C                pushfw
00002660  9C                pushfw
00002661  9C                pushfw
00002662  9C                pushfw
00002663  9C                pushfw
00002664  9C                pushfw
00002665  9C                pushfw
00002666  9C                pushfw
00002667  9C                pushfw
00002668  9C                pushfw
00002669  9C                pushfw
0000266A  9C                pushfw
0000266B  47                inc di
0000266C  4B                dec bx
0000266D  4F                dec di
0000266E  53                push bx
0000266F  57                push di
00002670  5B                pop bx
00002671  5F                pop di
00002672  63676B            arpl [bx+0x6b],sp
00002675  6F                outsw
00002676  7377              jnc 0x26ef
00002678  7B7F              jpo 0x26f9
0000267A  83878B8F93        add word [bx-0x7075],byte -0x6d
0000267F  97                xchg ax,di
00002680  9B9F              wait lahf
00002682  A3A7AB            mov [0xaba7],ax
00002685  AF                scasw
00002686  B3B7              mov bl,0xb7
00002688  B3AF              mov bl,0xaf
0000268A  AB                stosw
0000268B  A7                cmpsw
0000268C  A3A09F            mov [0x9fa0],ax
0000268F  9F                lahf
00002690  9F                lahf
00002691  9F                lahf
00002692  9F                lahf
00002693  9F                lahf
00002694  9F                lahf
00002695  9F                lahf
00002696  9F                lahf
00002697  9F                lahf
00002698  9F                lahf
00002699  A1A5A9            mov ax,[0xa9a5]
0000269C  AD                lodsw
0000269D  AF                scasw
0000269E  B3B7              mov bl,0xb7
000026A0  B3AF              mov bl,0xaf
000026A2  AB                stosw
000026A3  A7                cmpsw
000026A4  A39F9B            mov [0x9b9f],ax
000026A7  97                xchg ax,di
000026A8  93                xchg ax,bx
000026A9  8F                db 0x8f
000026AA  8B87837F          mov ax,[bx+0x7f83]
000026AE  7B77              jpo 0x2727
000026B0  736F              jnc 0x2721
000026B2  6B67635F          imul sp,[bx+0x63],byte +0x5f
000026B6  5B                pop bx
000026B7  57                push di
000026B8  53                push bx
000026B9  4F                dec di
000026BA  4B                dec bx
000026BB  47                inc di
000026BC  44                inc sp
000026BD  42                inc dx
000026BE  3E3A3634B5        cmp dh,[ds:0xb534]
000026C3  B1AE              mov cl,0xae
000026C5  AE                scasb
000026C6  B0B3              mov al,0xb3
000026C8  B4B4              mov ah,0xb4
000026CA  B8BCC0            mov ax,0xc0bc
000026CD  C2B5B1            ret 0xb1b5
000026D0  AE                scasb
000026D1  AE                scasb
000026D2  B0B3              mov al,0xb3
000026D4  0000              add [bx+si],al
000026D6  0000              add [bx+si],al
000026D8  0000              add [bx+si],al
000026DA  0000              add [bx+si],al
000026DC  8080808080        add byte [bx+si-0x7f80],0x80
000026E1  8080800000        add byte [bx+si+0x80],0x0
000026E6  0000              add [bx+si],al
000026E8  0000              add [bx+si],al
000026EA  0000              add [bx+si],al
000026EC  8080808080        add byte [bx+si-0x7f80],0x80
000026F1  8080800000        add byte [bx+si+0x80],0x0
000026F6  0000              add [bx+si],al
000026F8  0000              add [bx+si],al
000026FA  0000              add [bx+si],al
000026FC  8080808080        add byte [bx+si-0x7f80],0x80
00002701  8080800000        add byte [bx+si+0x80],0x0
00002706  0000              add [bx+si],al
00002708  0000              add [bx+si],al
0000270A  0000              add [bx+si],al
0000270C  8080808080        add byte [bx+si-0x7f80],0x80
00002711  8080802828        add byte [bx+si+0x2880],0x28
00002716  2828              sub [bx+si],ch
00002718  2828              sub [bx+si],ch
0000271A  2828              sub [bx+si],ch
0000271C  A8A8              test al,0xa8
0000271E  A8A8              test al,0xa8
00002720  A8A8              test al,0xa8
00002722  A8A8              test al,0xa8
00002724  2828              sub [bx+si],ch
00002726  2828              sub [bx+si],ch
00002728  2828              sub [bx+si],ch
0000272A  2828              sub [bx+si],ch
0000272C  A8A8              test al,0xa8
0000272E  A8A8              test al,0xa8
00002730  A8A8              test al,0xa8
00002732  A8A8              test al,0xa8
00002734  2828              sub [bx+si],ch
00002736  2828              sub [bx+si],ch
00002738  2828              sub [bx+si],ch
0000273A  2828              sub [bx+si],ch
0000273C  A8A8              test al,0xa8
0000273E  A8A8              test al,0xa8
00002740  A8A8              test al,0xa8
00002742  A8A8              test al,0xa8
00002744  2828              sub [bx+si],ch
00002746  2828              sub [bx+si],ch
00002748  2828              sub [bx+si],ch
0000274A  2828              sub [bx+si],ch
0000274C  A8A8              test al,0xa8
0000274E  A8A8              test al,0xa8
00002750  A8A8              test al,0xa8
00002752  A8A8              test al,0xa8
00002754  50                push ax
00002755  50                push ax
00002756  50                push ax
00002757  50                push ax
00002758  50                push ax
00002759  50                push ax
0000275A  50                push ax
0000275B  50                push ax
0000275C  D0D0              rcl al,1
0000275E  D0D0              rcl al,1
00002760  D0D0              rcl al,1
00002762  D0D0              rcl al,1
00002764  50                push ax
00002765  50                push ax
00002766  50                push ax
00002767  50                push ax
00002768  50                push ax
00002769  50                push ax
0000276A  50                push ax
0000276B  50                push ax
0000276C  D0D0              rcl al,1
0000276E  D0D0              rcl al,1
00002770  D0D0              rcl al,1
00002772  D0D0              rcl al,1
00002774  50                push ax
00002775  50                push ax
00002776  50                push ax
00002777  50                push ax
00002778  50                push ax
00002779  50                push ax
0000277A  50                push ax
0000277B  50                push ax
0000277C  D0D0              rcl al,1
0000277E  D0D0              rcl al,1
00002780  D0D0              rcl al,1
00002782  D0D0              rcl al,1
00002784  50                push ax
00002785  50                push ax
00002786  50                push ax
00002787  50                push ax
00002788  50                push ax
00002789  50                push ax
0000278A  50                push ax
0000278B  50                push ax
0000278C  D0D0              rcl al,1
0000278E  D0D0              rcl al,1
00002790  D0D0              rcl al,1
00002792  D0D0              rcl al,1
00002794  0004              add [si],al
00002796  080C              or [si],cl
00002798  1014              adc [si],dl
0000279A  181C              sbb [si],bl
0000279C  0004              add [si],al
0000279E  080C              or [si],cl
000027A0  1014              adc [si],dl
000027A2  181C              sbb [si],bl
000027A4  0105              add [di],ax
000027A6  090D              or [di],cx
000027A8  1115              adc [di],dx
000027AA  191D              sbb [di],bx
000027AC  0105              add [di],ax
000027AE  090D              or [di],cx
000027B0  1115              adc [di],dx
000027B2  191D              sbb [di],bx
000027B4  02060A0E          add al,[0xe0a]
000027B8  12161A1E          adc dl,[0x1e1a]
000027BC  02060A0E          add al,[0xe0a]
000027C0  12161A1E          adc dl,[0x1e1a]
000027C4  0307              add ax,[bx]
000027C6  0B0F              or cx,[bx]
000027C8  1317              adc dx,[bx]
000027CA  1B1F              sbb bx,[bx]
000027CC  0307              add ax,[bx]
000027CE  0B0F              or cx,[bx]
000027D0  1317              adc dx,[bx]
000027D2  1B1F              sbb bx,[bx]
000027D4  0004              add [si],al
000027D6  080C              or [si],cl
000027D8  1014              adc [si],dl
000027DA  181C              sbb [si],bl
000027DC  0004              add [si],al
000027DE  080C              or [si],cl
000027E0  1014              adc [si],dl
000027E2  181C              sbb [si],bl
000027E4  0105              add [di],ax
000027E6  090D              or [di],cx
000027E8  1115              adc [di],dx
000027EA  191D              sbb [di],bx
000027EC  0105              add [di],ax
000027EE  090D              or [di],cx
000027F0  1115              adc [di],dx
000027F2  191D              sbb [di],bx
000027F4  02060A0E          add al,[0xe0a]
000027F8  12161A1E          adc dl,[0x1e1a]
000027FC  02060A0E          add al,[0xe0a]
00002800  12161A1E          adc dl,[0x1e1a]
00002804  0307              add ax,[bx]
00002806  0B0F              or cx,[bx]
00002808  1317              adc dx,[bx]
0000280A  1B1F              sbb bx,[bx]
0000280C  0307              add ax,[bx]
0000280E  0B0F              or cx,[bx]
00002810  1317              adc dx,[bx]
00002812  1B1F              sbb bx,[bx]
00002814  0004              add [si],al
00002816  080C              or [si],cl
00002818  1014              adc [si],dl
0000281A  181C              sbb [si],bl
0000281C  0004              add [si],al
0000281E  080C              or [si],cl
00002820  1014              adc [si],dl
00002822  181C              sbb [si],bl
00002824  0105              add [di],ax
00002826  090D              or [di],cx
00002828  1115              adc [di],dx
0000282A  191D              sbb [di],bx
0000282C  0105              add [di],ax
0000282E  090D              or [di],cx
00002830  1115              adc [di],dx
00002832  191D              sbb [di],bx
00002834  02060A0E          add al,[0xe0a]
00002838  12161A1E          adc dl,[0x1e1a]
0000283C  02060A0E          add al,[0xe0a]
00002840  12161A1E          adc dl,[0x1e1a]
00002844  0307              add ax,[bx]
00002846  0B0F              or cx,[bx]
00002848  1317              adc dx,[bx]
0000284A  1B1F              sbb bx,[bx]
0000284C  0307              add ax,[bx]
0000284E  0B0F              or cx,[bx]
00002850  1317              adc dx,[bx]
00002852  1B1F              sbb bx,[bx]
00002854  0004              add [si],al
00002856  080C              or [si],cl
00002858  1014              adc [si],dl
0000285A  181C              sbb [si],bl
0000285C  0004              add [si],al
0000285E  080C              or [si],cl
00002860  1014              adc [si],dl
00002862  181C              sbb [si],bl
00002864  0105              add [di],ax
00002866  090D              or [di],cx
00002868  1115              adc [di],dx
0000286A  191D              sbb [di],bx
0000286C  0105              add [di],ax
0000286E  090D              or [di],cx
00002870  1115              adc [di],dx
00002872  191D              sbb [di],bx
00002874  02060A0E          add al,[0xe0a]
00002878  12161A1E          adc dl,[0x1e1a]
0000287C  02060A0E          add al,[0xe0a]
00002880  12161A1E          adc dl,[0x1e1a]
00002884  0307              add ax,[bx]
00002886  0B0F              or cx,[bx]
00002888  1317              adc dx,[bx]
0000288A  1B1F              sbb bx,[bx]
0000288C  0307              add ax,[bx]
0000288E  0B0F              or cx,[bx]
00002890  1317              adc dx,[bx]
00002892  1B1F              sbb bx,[bx]
00002894  0000              add [bx+si],al
00002896  0000              add [bx+si],al
00002898  0000              add [bx+si],al
0000289A  0001              add [bx+di],al
0000289C  0101              add [bx+di],ax
0000289E  0101              add [bx+di],ax
000028A0  0101              add [bx+di],ax
000028A2  0202              add al,[bp+si]
000028A4  0202              add al,[bp+si]
000028A6  0202              add al,[bp+si]
000028A8  0203              add al,[bp+di]
000028AA  0303              add ax,[bp+di]
000028AC  0303              add ax,[bp+di]
000028AE  0303              add ax,[bp+di]
000028B0  0404              add al,0x4
000028B2  0404              add al,0x4
000028B4  0404              add al,0x4
000028B6  0405              add al,0x5
000028B8  050505            add ax,0x505
000028BB  050505            add ax,0x505
000028BE  06                push es
000028BF  06                push es
000028C0  06                push es
000028C1  06                push es
000028C2  06                push es
000028C3  06                push es
000028C4  06                push es
000028C5  07                pop es
000028C6  07                pop es
000028C7  07                pop es
000028C8  07                pop es
000028C9  07                pop es
000028CA  07                pop es
000028CB  07                pop es
000028CC  0808              or [bx+si],cl
000028CE  0808              or [bx+si],cl
000028D0  0808              or [bx+si],cl
000028D2  0809              or [bx+di],cl
000028D4  0909              or [bx+di],cx
000028D6  0909              or [bx+di],cx
000028D8  0909              or [bx+di],cx
000028DA  0A0A              or cl,[bp+si]
000028DC  0A0A              or cl,[bp+si]
000028DE  0A0A              or cl,[bp+si]
000028E0  0A0B              or cl,[bp+di]
000028E2  0B0B              or cx,[bp+di]
000028E4  0B0B              or cx,[bp+di]
000028E6  0B0B              or cx,[bp+di]
000028E8  0C0C              or al,0xc
000028EA  0C0C              or al,0xc
000028EC  0C0C              or al,0xc
000028EE  0C0D              or al,0xd
000028F0  0D0D0D            or ax,0xd0d
000028F3  0D0D0D            or ax,0xd0d
000028F6  0E                push cs
000028F7  0E                push cs
000028F8  0E                push cs
000028F9  0E                push cs
000028FA  0E                push cs
000028FB  0E                push cs
000028FC  0E                push cs
000028FD  0F                db 0x0f
000028FE  0F                db 0x0f
000028FF  0F                db 0x0f
00002900  0F                db 0x0f
00002901  0F                db 0x0f
00002902  0F                db 0x0f
00002903  0F1010            movups xmm2,oword [bx+si]
00002906  1010              adc [bx+si],dl
00002908  1010              adc [bx+si],dl
0000290A  1011              adc [bx+di],dl
0000290C  1111              adc [bx+di],dx
0000290E  1111              adc [bx+di],dx
00002910  1111              adc [bx+di],dx
00002912  1212              adc dl,[bp+si]
00002914  1212              adc dl,[bp+si]
00002916  1212              adc dl,[bp+si]
00002918  1213              adc dl,[bp+di]
0000291A  1313              adc dx,[bp+di]
0000291C  1313              adc dx,[bp+di]
0000291E  1313              adc dx,[bp+di]
00002920  1414              adc al,0x14
00002922  1414              adc al,0x14
00002924  1414              adc al,0x14
00002926  1415              adc al,0x15
00002928  151515            adc ax,0x1515
0000292B  151515            adc ax,0x1515
0000292E  16                push ss
0000292F  16                push ss
00002930  16                push ss
00002931  16                push ss
00002932  16                push ss
00002933  16                push ss
00002934  16                push ss
00002935  17                pop ss
00002936  17                pop ss
00002937  17                pop ss
00002938  17                pop ss
00002939  17                pop ss
0000293A  17                pop ss
0000293B  17                pop ss
0000293C  1818              sbb [bx+si],bl
0000293E  1818              sbb [bx+si],bl
00002940  1818              sbb [bx+si],bl
00002942  1819              sbb [bx+di],bl
00002944  1919              sbb [bx+di],bx
00002946  1919              sbb [bx+di],bx
00002948  1919              sbb [bx+di],bx
0000294A  1A1A              sbb bl,[bp+si]
0000294C  1A1A              sbb bl,[bp+si]
0000294E  1A1A              sbb bl,[bp+si]
00002950  1A1B              sbb bl,[bp+di]
00002952  1B1B              sbb bx,[bp+di]
00002954  1B1B              sbb bx,[bp+di]
00002956  1B1B              sbb bx,[bp+di]
00002958  1C1C              sbb al,0x1c
0000295A  1C1C              sbb al,0x1c
0000295C  1C1C              sbb al,0x1c
0000295E  1C1D              sbb al,0x1d
00002960  1D1D1D            sbb ax,0x1d1d
00002963  1D1D1D            sbb ax,0x1d1d
00002966  1E                push ds
00002967  1E                push ds
00002968  1E                push ds
00002969  1E                push ds
0000296A  1E                push ds
0000296B  1E                push ds
0000296C  1E                push ds
0000296D  1F                pop ds
0000296E  1F                pop ds
0000296F  1F                pop ds
00002970  1F                pop ds
00002971  1F                pop ds
00002972  1F                pop ds
00002973  1F                pop ds
00002974  2020              and [bx+si],ah
00002976  2020              and [bx+si],ah
00002978  2020              and [bx+si],ah
0000297A  2021              and [bx+di],ah
0000297C  2121              and [bx+di],sp
0000297E  2121              and [bx+di],sp
00002980  2121              and [bx+di],sp
00002982  2222              and ah,[bp+si]
00002984  2222              and ah,[bp+si]
00002986  2222              and ah,[bp+si]
00002988  2223              and ah,[bp+di]
0000298A  2323              and sp,[bp+di]
0000298C  2323              and sp,[bp+di]
0000298E  2323              and sp,[bp+di]
00002990  2424              and al,0x24
00002992  2424              and al,0x24
00002994  0102              add [bp+si],ax
00002996  0408              add al,0x8
00002998  1020              adc [bx+si],ah
0000299A  40                inc ax
0000299B  0102              add [bp+si],ax
0000299D  0408              add al,0x8
0000299F  1020              adc [bx+si],ah
000029A1  40                inc ax
000029A2  0102              add [bp+si],ax
000029A4  0408              add al,0x8
000029A6  1020              adc [bx+si],ah
000029A8  40                inc ax
000029A9  0102              add [bp+si],ax
000029AB  0408              add al,0x8
000029AD  1020              adc [bx+si],ah
000029AF  40                inc ax
000029B0  0102              add [bp+si],ax
000029B2  0408              add al,0x8
000029B4  1020              adc [bx+si],ah
000029B6  40                inc ax
000029B7  0102              add [bp+si],ax
000029B9  0408              add al,0x8
000029BB  1020              adc [bx+si],ah
000029BD  40                inc ax
000029BE  0102              add [bp+si],ax
000029C0  0408              add al,0x8
000029C2  1020              adc [bx+si],ah
000029C4  40                inc ax
000029C5  0102              add [bp+si],ax
000029C7  0408              add al,0x8
000029C9  1020              adc [bx+si],ah
000029CB  40                inc ax
000029CC  0102              add [bp+si],ax
000029CE  0408              add al,0x8
000029D0  1020              adc [bx+si],ah
000029D2  40                inc ax
000029D3  0102              add [bp+si],ax
000029D5  0408              add al,0x8
000029D7  1020              adc [bx+si],ah
000029D9  40                inc ax
000029DA  0102              add [bp+si],ax
000029DC  0408              add al,0x8
000029DE  1020              adc [bx+si],ah
000029E0  40                inc ax
000029E1  0102              add [bp+si],ax
000029E3  0408              add al,0x8
000029E5  1020              adc [bx+si],ah
000029E7  40                inc ax
000029E8  0102              add [bp+si],ax
000029EA  0408              add al,0x8
000029EC  1020              adc [bx+si],ah
000029EE  40                inc ax
000029EF  0102              add [bp+si],ax
000029F1  0408              add al,0x8
000029F3  1020              adc [bx+si],ah
000029F5  40                inc ax
000029F6  0102              add [bp+si],ax
000029F8  0408              add al,0x8
000029FA  1020              adc [bx+si],ah
000029FC  40                inc ax
000029FD  0102              add [bp+si],ax
000029FF  0408              add al,0x8
00002A01  1020              adc [bx+si],ah
00002A03  40                inc ax
00002A04  0102              add [bp+si],ax
00002A06  0408              add al,0x8
00002A08  1020              adc [bx+si],ah
00002A0A  40                inc ax
00002A0B  0102              add [bp+si],ax
00002A0D  0408              add al,0x8
00002A0F  1020              adc [bx+si],ah
00002A11  40                inc ax
00002A12  0102              add [bp+si],ax
00002A14  0408              add al,0x8
00002A16  1020              adc [bx+si],ah
00002A18  40                inc ax
00002A19  0102              add [bp+si],ax
00002A1B  0408              add al,0x8
00002A1D  1020              adc [bx+si],ah
00002A1F  40                inc ax
00002A20  0102              add [bp+si],ax
00002A22  0408              add al,0x8
00002A24  1020              adc [bx+si],ah
00002A26  40                inc ax
00002A27  0102              add [bp+si],ax
00002A29  0408              add al,0x8
00002A2B  1020              adc [bx+si],ah
00002A2D  40                inc ax
00002A2E  0102              add [bp+si],ax
00002A30  0408              add al,0x8
00002A32  1020              adc [bx+si],ah
00002A34  40                inc ax
00002A35  0102              add [bp+si],ax
00002A37  0408              add al,0x8
00002A39  1020              adc [bx+si],ah
00002A3B  40                inc ax
00002A3C  0102              add [bp+si],ax
00002A3E  0408              add al,0x8
00002A40  1020              adc [bx+si],ah
00002A42  40                inc ax
00002A43  0102              add [bp+si],ax
00002A45  0408              add al,0x8
00002A47  1020              adc [bx+si],ah
00002A49  40                inc ax
00002A4A  0102              add [bp+si],ax
00002A4C  0408              add al,0x8
00002A4E  1020              adc [bx+si],ah
00002A50  40                inc ax
00002A51  0102              add [bp+si],ax
00002A53  0408              add al,0x8
00002A55  1020              adc [bx+si],ah
00002A57  40                inc ax
00002A58  0102              add [bp+si],ax
00002A5A  0408              add al,0x8
00002A5C  1020              adc [bx+si],ah
00002A5E  40                inc ax
00002A5F  0102              add [bp+si],ax
00002A61  0408              add al,0x8
00002A63  1020              adc [bx+si],ah
00002A65  40                inc ax
00002A66  0102              add [bp+si],ax
00002A68  0408              add al,0x8
00002A6A  1020              adc [bx+si],ah
00002A6C  40                inc ax
00002A6D  0102              add [bp+si],ax
00002A6F  0408              add al,0x8
00002A71  1020              adc [bx+si],ah
00002A73  40                inc ax
00002A74  0102              add [bp+si],ax
00002A76  0408              add al,0x8
00002A78  1020              adc [bx+si],ah
00002A7A  40                inc ax
00002A7B  0102              add [bp+si],ax
00002A7D  0408              add al,0x8
00002A7F  1020              adc [bx+si],ah
00002A81  40                inc ax
00002A82  0102              add [bp+si],ax
00002A84  0408              add al,0x8
00002A86  1020              adc [bx+si],ah
00002A88  40                inc ax
00002A89  0102              add [bp+si],ax
00002A8B  0408              add al,0x8
00002A8D  1020              adc [bx+si],ah
00002A8F  40                inc ax
00002A90  0102              add [bp+si],ax
00002A92  0408              add al,0x8
00002A94  0002              add [bp+si],al
00002A96  0406              add al,0x6
00002A98  080A              or [bp+si],cl
00002A9A  0C0E              or al,0xe
00002A9C  1012              adc [bp+si],dl
00002A9E  1416              adc al,0x16
00002AA0  181A              sbb [bp+si],bl
00002AA2  1C1E              sbb al,0x1e
00002AA4  2022              and [bp+si],ah
00002AA6  2426              and al,0x26
00002AA8  282A              sub [bp+si],ch
00002AAA  2C2E              sub al,0x2e
00002AAC  00B08FA2          add [bx+si-0x5d71],dh
00002AB0  9C                pushfw
00002AB1  6D                insw
00002AB2  B000              mov al,0x0
00002AB4  FEC0              inc al
00002AB6  FEC8              dec al
00002AB8  A29B6D            mov [0x6d9b],al
00002ABB  E84500            call word 0x2b03
00002ABE  B06F              mov al,0x6f
00002AC0  A29C6D            mov [0x6d9c],al
00002AC3  B000              mov al,0x0
00002AC5  FEC0              inc al
00002AC7  FEC8              dec al
00002AC9  A29B6D            mov [0x6d9b],al
00002ACC  E83400            call word 0x2b03
00002ACF  B08F              mov al,0x8f
00002AD1  A29C6D            mov [0x6d9c],al
00002AD4  B018              mov al,0x18
00002AD6  FEC0              inc al
00002AD8  FEC8              dec al
00002ADA  A29B6D            mov [0x6d9b],al
00002ADD  E84800            call word 0x2b28
00002AE0  B06F              mov al,0x6f
00002AE2  A29C6D            mov [0x6d9c],al
00002AE5  B018              mov al,0x18
00002AE7  FEC0              inc al
00002AE9  FEC8              dec al
00002AEB  A29B6D            mov [0x6d9b],al
00002AEE  E83700            call word 0x2b28
00002AF1  B04F              mov al,0x4f
00002AF3  A29C6D            mov [0x6d9c],al
00002AF6  B018              mov al,0x18
00002AF8  FEC0              inc al
00002AFA  FEC8              dec al
00002AFC  A29B6D            mov [0x6d9b],al
00002AFF  E82600            call word 0x2b28
00002B02  C3                ret
00002B03  A09C6D            mov al,[0x6d9c]
00002B06  2C08              sub al,0x8
00002B08  F5                cmc
00002B09  A2641B            mov [0x1b64],al
00002B0C  A09B6D            mov al,[0x6d9b]
00002B0F  040B              add al,0xb
00002B11  A2651B            mov [0x1b65],al
00002B14  8A1EAC2A          mov bl,[0x2aac]
00002B18  8A87E871          mov al,[bx+0x71e8]
00002B1C  32E4              xor ah,ah
00002B1E  050028            add ax,0x2800
00002B21  A3976D            mov [0x6d97],ax
00002B24  E8F0D7            call word 0x317
00002B27  C3                ret
00002B28  A09C6D            mov al,[0x6d9c]
00002B2B  2C08              sub al,0x8
00002B2D  F5                cmc
00002B2E  A2641B            mov [0x1b64],al
00002B31  A09B6D            mov al,[0x6d9b]
00002B34  040B              add al,0xb
00002B36  A2651B            mov [0x1b65],al
00002B39  8A1EAC2A          mov bl,[0x2aac]
00002B3D  8A87E871          mov al,[bx+0x71e8]
00002B41  32E4              xor ah,ah
00002B43  05002A            add ax,0x2a00
00002B46  A3976D            mov [0x6d97],ax
00002B49  E8CBD7            call word 0x317
00002B4C  C3                ret
00002B4D  B311              mov bl,0x11
00002B4F  881EC86D          mov [0x6dc8],bl
00002B53  B02F              mov al,0x2f
00002B55  A29C6D            mov [0x6d9c],al
00002B58  2C08              sub al,0x8
00002B5A  F5                cmc
00002B5B  A2641B            mov [0x1b64],al
00002B5E  8A87942A          mov al,[bx+0x2a94]
00002B62  A29B6D            mov [0x6d9b],al
00002B65  0401              add al,0x1
00002B67  A2651B            mov [0x1b65],al
00002B6A  8A87F871          mov al,[bx+0x71f8]
00002B6E  32E4              xor ah,ah
00002B70  05003E            add ax,0x3e00
00002B73  A3976D            mov [0x6d97],ax
00002B76  E89ED7            call word 0x317
00002B79  FE0EC86D          dec byte [0x6dc8]
00002B7D  8A1EC86D          mov bl,[0x6dc8]
00002B81  FEC3              inc bl
00002B83  FECB              dec bl
00002B85  7802              js 0x2b89
00002B87  EBCA              jmp short 0x2b53
00002B89  C3                ret
00002B8A  A29B6D            mov [0x6d9b],al
00002B8D  0401              add al,0x1
00002B8F  A2651B            mov [0x1b65],al
00002B92  B0BC              mov al,0xbc
00002B94  A29C6D            mov [0x6d9c],al
00002B97  2C10              sub al,0x10
00002B99  F5                cmc
00002B9A  A2641B            mov [0x1b64],al
00002B9D  C706976D0042      mov word [0x6d97],0x4200
00002BA3  E871D7            call word 0x317
00002BA6  C3                ret
00002BA7  B000              mov al,0x0
00002BA9  A29B6D            mov [0x6d9b],al
00002BAC  040D              add al,0xd
00002BAE  A2651B            mov [0x1b65],al
00002BB1  B0BF              mov al,0xbf
00002BB3  A29C6D            mov [0x6d9c],al
00002BB6  2C21              sub al,0x21
00002BB8  F5                cmc
00002BB9  A2641B            mov [0x1b64],al
00002BBC  C706976D005D      mov word [0x6d97],0x5d00
00002BC2  E852D7            call word 0x317
00002BC5  C3                ret
00002BC6  B002              mov al,0x2
00002BC8  A2E721            mov [0x21e7],al
00002BCB  A2EB21            mov [0x21eb],al
00002BCE  A2ED21            mov [0x21ed],al
00002BD1  A2FD21            mov [0x21fd],al
00002BD4  A2F121            mov [0x21f1],al
00002BD7  B003              mov al,0x3
00002BD9  FEC0              inc al
00002BDB  FEC8              dec al
00002BDD  A2EF21            mov [0x21ef],al
00002BE0  C3                ret
00002BE1  B001              mov al,0x1
00002BE3  A2E721            mov [0x21e7],al
00002BE6  A2EB21            mov [0x21eb],al
00002BE9  A2ED21            mov [0x21ed],al
00002BEC  A2FD21            mov [0x21fd],al
00002BEF  A2F121            mov [0x21f1],al
00002BF2  B002              mov al,0x2
00002BF4  FEC0              inc al
00002BF6  FEC8              dec al
00002BF8  A2EF21            mov [0x21ef],al
00002BFB  C3                ret
00002BFC  1C22              sbb al,0x22
00002BFE  0802              or [bp+si],al
00002C00  FF                db 0xff
00002C01  3F                aas
00002C02  7F7F              jg 0x2c83
00002C04  3F                aas
00002C05  041E              add al,0x1e
00002C07  0416              add al,0x16
00002C09  FF9F7F5F          call word far [bx+0x5f7f]
00002C0D  3F                aas
00002C0E  2222              and ah,[bp+si]
00002C10  FF9FAFB3          call word far [bx-0x4c51]
00002C14  00881EC8          add [bx+si-0x37e2],cl
00002C18  6D                insw
00002C19  8A1EC86D          mov bl,[0x6dc8]
00002C1D  8B36AA6D          mov si,[0x6daa]
00002C21  8A00              mov al,[bx+si]
00002C23  A29B6D            mov [0x6d9b],al
00002C26  0401              add al,0x1
00002C28  A2651B            mov [0x1b65],al
00002C2B  8B36AC6D          mov si,[0x6dac]
00002C2F  8A00              mov al,[bx+si]
00002C31  A29C6D            mov [0x6d9c],al
00002C34  2C10              sub al,0x10
00002C36  F5                cmc
00002C37  A2641B            mov [0x1b64],al
00002C3A  C706976D0003      mov word [0x6d97],0x300
00002C40  B001              mov al,0x1
00002C42  FEC0              inc al
00002C44  FEC8              dec al
00002C46  A2671B            mov [0x1b67],al
00002C49  E8CBD6            call word 0x317
00002C4C  FE06C86D          inc byte [0x6dc8]
00002C50  8A1EC86D          mov bl,[0x6dc8]
00002C54  8B36AA6D          mov si,[0x6daa]
00002C58  8A00              mov al,[bx+si]
00002C5A  3CFF              cmp al,0xff
00002C5C  F5                cmc
00002C5D  7402              jz 0x2c61
00002C5F  EBB8              jmp short 0x2c19
00002C61  C3                ret
00002C62  021C              add bl,[si]
00002C64  041E              add al,0x1e
00002C66  B301              mov bl,0x1
00002C68  881EC86D          mov [0x6dc8],bl
00002C6C  B0BC              mov al,0xbc
00002C6E  A29C6D            mov [0x6d9c],al
00002C71  2C10              sub al,0x10
00002C73  F5                cmc
00002C74  A2641B            mov [0x1b64],al
00002C77  8A87622C          mov al,[bx+0x2c62]
00002C7B  A29B6D            mov [0x6d9b],al
00002C7E  0405              add al,0x5
00002C80  A2651B            mov [0x1b65],al
00002C83  C706976D004C      mov word [0x6d97],0x4c00
00002C89  E88BD6            call word 0x317
00002C8C  B08F              mov al,0x8f
00002C8E  A29C6D            mov [0x6d9c],al
00002C91  2C08              sub al,0x8
00002C93  F5                cmc
00002C94  A2641B            mov [0x1b64],al
00002C97  8A1EC86D          mov bl,[0x6dc8]
00002C9B  8A87642C          mov al,[bx+0x2c64]
00002C9F  A29B6D            mov [0x6d9b],al
00002CA2  0401              add al,0x1
00002CA4  A2651B            mov [0x1b65],al
00002CA7  B001              mov al,0x1
00002CA9  FEC0              inc al
00002CAB  FEC8              dec al
00002CAD  A2661B            mov [0x1b66],al
00002CB0  E864D6            call word 0x317
00002CB3  FE0EC86D          dec byte [0x6dc8]
00002CB7  8A1EC86D          mov bl,[0x6dc8]
00002CBB  FEC3              inc bl
00002CBD  FECB              dec bl
00002CBF  7802              js 0x2cc3
00002CC1  EBA9              jmp short 0x2c6c
00002CC3  C3                ret
00002CC4  B008              mov al,0x8
00002CC6  A29B6D            mov [0x6d9b],al
00002CC9  0401              add al,0x1
00002CCB  A2651B            mov [0x1b65],al
00002CCE  B012              mov al,0x12
00002CD0  A29C6D            mov [0x6d9c],al
00002CD3  2C10              sub al,0x10
00002CD5  F5                cmc
00002CD6  A2641B            mov [0x1b64],al
00002CD9  C706976D0046      mov word [0x6d97],0x4600
00002CDF  B001              mov al,0x1
00002CE1  FEC0              inc al
00002CE3  FEC8              dec al
00002CE5  A2671B            mov [0x1b67],al
00002CE8  E82CD6            call word 0x317
00002CEB  C3                ret
00002CEC  B00C              mov al,0xc
00002CEE  FEC0              inc al
00002CF0  FEC8              dec al
00002CF2  A29B6D            mov [0x6d9b],al
00002CF5  E80500            call word 0x2cfd
00002CF8  B016              mov al,0x16
00002CFA  A29B6D            mov [0x6d9b],al
00002CFD  0401              add al,0x1
00002CFF  A2651B            mov [0x1b65],al
00002D02  B0BC              mov al,0xbc
00002D04  A29C6D            mov [0x6d9c],al
00002D07  2C10              sub al,0x10
00002D09  F5                cmc
00002D0A  A2641B            mov [0x1b64],al
00002D0D  C706976D000C      mov word [0x6d97],0xc00
00002D13  E801D6            call word 0x317
00002D16  C3                ret
00002D17  B006              mov al,0x6
00002D19  A29B6D            mov [0x6d9b],al
00002D1C  0401              add al,0x1
00002D1E  A2651B            mov [0x1b65],al
00002D21  B067              mov al,0x67
00002D23  A29C6D            mov [0x6d9c],al
00002D26  2C08              sub al,0x8
00002D28  F5                cmc
00002D29  A2641B            mov [0x1b64],al
00002D2C  C706976D0004      mov word [0x6d97],0x400
00002D32  E8E2D5            call word 0x317
00002D35  C3                ret
00002D36  00B0BCA2          add [bx+si-0x5d44],dh
00002D3A  9C                pushfw
00002D3B  6D                insw
00002D3C  2C1E              sub al,0x1e
00002D3E  F5                cmc
00002D3F  A2641B            mov [0x1b64],al
00002D42  B010              mov al,0x10
00002D44  A29B6D            mov [0x6d9b],al
00002D47  0403              add al,0x3
00002D49  A2651B            mov [0x1b65],al
00002D4C  C706976D0031      mov word [0x6d97],0x3100
00002D52  E8C2D5            call word 0x317
00002D55  C3                ret
00002D56  4C                dec sp
00002D57  56                push si
00002D58  667686            o32 jna 0x2ce1
00002D5B  96                xchg ax,si
00002D5C  B305              mov bl,0x5
00002D5E  881EC86D          mov [0x6dc8],bl
00002D62  8A870B72          mov al,[bx+0x720b]
00002D66  32E4              xor ah,ah
00002D68  05002C            add ax,0x2c00
00002D6B  A3976D            mov [0x6d97],ax
00002D6E  B011              mov al,0x11
00002D70  A29B6D            mov [0x6d9b],al
00002D73  0401              add al,0x1
00002D75  A2651B            mov [0x1b65],al
00002D78  8A87562D          mov al,[bx+0x2d56]
00002D7C  A29C6D            mov [0x6d9c],al
00002D7F  2C10              sub al,0x10
00002D81  F5                cmc
00002D82  A2641B            mov [0x1b64],al
00002D85  B001              mov al,0x1
00002D87  FEC0              inc al
00002D89  FEC8              dec al
00002D8B  A2671B            mov [0x1b67],al
00002D8E  E886D5            call word 0x317
00002D91  FE0EC86D          dec byte [0x6dc8]
00002D95  8A1EC86D          mov bl,[0x6dc8]
00002D99  FEC3              inc bl
00002D9B  FECB              dec bl
00002D9D  7802              js 0x2da1
00002D9F  EBC1              jmp short 0x2d62
00002DA1  B8002C            mov ax,0x2c00
00002DA4  A37867            mov [0x6778],ax
00002DA7  A37667            mov [0x6776],ax
00002DAA  B000              mov al,0x0
00002DAC  FEC0              inc al
00002DAE  FEC8              dec al
00002DB0  A27A67            mov [0x677a],al
00002DB3  C3                ret
00002DB4  B04F              mov al,0x4f
00002DB6  A29C6D            mov [0x6d9c],al
00002DB9  2C08              sub al,0x8
00002DBB  F5                cmc
00002DBC  A2641B            mov [0x1b64],al
00002DBF  B000              mov al,0x0
00002DC1  A29B6D            mov [0x6d9b],al
00002DC4  040B              add al,0xb
00002DC6  A2651B            mov [0x1b65],al
00002DC9  C706976D0027      mov word [0x6d97],0x2700
00002DCF  E845D5            call word 0x317
00002DD2  C3                ret
00002DD3  B302              mov bl,0x2
00002DD5  881EC86D          mov [0x6dc8],bl
00002DD9  8A1EC86D          mov bl,[0x6dc8]
00002DDD  8A87942A          mov al,[bx+0x2a94]
00002DE1  A29B6D            mov [0x6d9b],al
00002DE4  0401              add al,0x1
00002DE6  A2651B            mov [0x1b65],al
00002DE9  B0A1              mov al,0xa1
00002DEB  A29C6D            mov [0x6d9c],al
00002DEE  2C10              sub al,0x10
00002DF0  F5                cmc
00002DF1  A2641B            mov [0x1b64],al
00002DF4  8A871172          mov al,[bx+0x7211]
00002DF8  32E4              xor ah,ah
00002DFA  050001            add ax,0x100
00002DFD  A3976D            mov [0x6d97],ax
00002E00  E814D5            call word 0x317
00002E03  FE0EC86D          dec byte [0x6dc8]
00002E07  7802              js 0x2e0b
00002E09  EBCE              jmp short 0x2dd9
00002E0B  C3                ret
00002E0C  B004              mov al,0x4
00002E0E  A29B6D            mov [0x6d9b],al
00002E11  B0BC              mov al,0xbc
00002E13  FEC0              inc al
00002E15  FEC8              dec al
00002E17  A29C6D            mov [0x6d9c],al
00002E1A  E82400            call word 0x2e41
00002E1D  B01C              mov al,0x1c
00002E1F  A29B6D            mov [0x6d9b],al
00002E22  B047              mov al,0x47
00002E24  FEC0              inc al
00002E26  FEC8              dec al
00002E28  A29C6D            mov [0x6d9c],al
00002E2B  E81300            call word 0x2e41
00002E2E  B8004D            mov ax,0x4d00
00002E31  A32D5C            mov [0x5c2d],ax
00002E34  A32B5C            mov [0x5c2b],ax
00002E37  B80051            mov ax,0x5100
00002E3A  A3315C            mov [0x5c31],ax
00002E3D  A32F5C            mov [0x5c2f],ax
00002E40  C3                ret
00002E41  A09B6D            mov al,[0x6d9b]
00002E44  0407              add al,0x7
00002E46  A2651B            mov [0x1b65],al
00002E49  A09C6D            mov al,[0x6d9c]
00002E4C  2C16              sub al,0x16
00002E4E  F5                cmc
00002E4F  A2641B            mov [0x1b64],al
00002E52  C706976D0026      mov word [0x6d97],0x2600
00002E58  E8BCD4            call word 0x317
00002E5B  C3                ret
00002E5C  B00C              mov al,0xc
00002E5E  A29B6D            mov [0x6d9b],al
00002E61  0403              add al,0x3
00002E63  A2651B            mov [0x1b65],al
00002E66  B0BC              mov al,0xbc
00002E68  A29C6D            mov [0x6d9c],al
00002E6B  2C10              sub al,0x10
00002E6D  F5                cmc
00002E6E  A2641B            mov [0x1b64],al
00002E71  C706976D0025      mov word [0x6d97],0x2500
00002E77  E89DD4            call word 0x317
00002E7A  C3                ret
00002E7B  A0566A            mov al,[0x6a56]
00002E7E  A29C6D            mov [0x6d9c],al
00002E81  A24F6A            mov [0x6a4f],al
00002E84  A24E6A            mov [0x6a4e],al
00002E87  2C10              sub al,0x10
00002E89  F5                cmc
00002E8A  A2641B            mov [0x1b64],al
00002E8D  A0586A            mov al,[0x6a58]
00002E90  A29B6D            mov [0x6d9b],al
00002E93  0401              add al,0x1
00002E95  A2651B            mov [0x1b65],al
00002E98  C706976D0005      mov word [0x6d97],0x500
00002E9E  B001              mov al,0x1
00002EA0  FEC0              inc al
00002EA2  FEC8              dec al
00002EA4  A2671B            mov [0x1b67],al
00002EA7  E86DD4            call word 0x317
00002EAA  B000              mov al,0x0
00002EAC  A2A415            mov [0x15a4],al
00002EAF  A05B6A            mov al,[0x6a5b]
00002EB2  A29C6D            mov [0x6d9c],al
00002EB5  A0596A            mov al,[0x6a59]
00002EB8  FEC0              inc al
00002EBA  FEC8              dec al
00002EBC  A29B6D            mov [0x6d9b],al
00002EBF  E8D7D3            call word 0x299
00002EC2  A05B6A            mov al,[0x6a5b]
00002EC5  A29C6D            mov [0x6d9c],al
00002EC8  A05A6A            mov al,[0x6a5a]
00002ECB  FEC0              inc al
00002ECD  FEC8              dec al
00002ECF  A29B6D            mov [0x6d9b],al
00002ED2  E8C4D3            call word 0x299
00002ED5  C3                ret
00002ED6  B0A8              mov al,0xa8
00002ED8  A28E6B            mov [0x6b8e],al
00002EDB  A28F6B            mov [0x6b8f],al
00002EDE  2C08              sub al,0x8
00002EE0  F5                cmc
00002EE1  A28D6B            mov [0x6b8d],al
00002EE4  B000              mov al,0x0
00002EE6  A2906B            mov [0x6b90],al
00002EE9  B00E              mov al,0xe
00002EEB  A2C86D            mov [0x6dc8],al
00002EEE  B003              mov al,0x3
00002EF0  A2C96D            mov [0x6dc9],al
00002EF3  8A1EC96D          mov bl,[0x6dc9]
00002EF7  A0C86D            mov al,[0x6dc8]
00002EFA  A29B6D            mov [0x6d9b],al
00002EFD  A29D6D            mov [0x6d9d],al
00002F00  A08E6B            mov al,[0x6b8e]
00002F03  A29C6D            mov [0x6d9c],al
00002F06  A08F6B            mov al,[0x6b8f]
00002F09  A29E6D            mov [0x6d9e],al
00002F0C  8A874C72          mov al,[bx+0x724c]
00002F10  32E4              xor ah,ah
00002F12  05001F            add ax,0x1f00
00002F15  A3976D            mov [0x6d97],ax
00002F18  C706996D005C      mov word [0x6d99],0x5c00
00002F1E  E890D4            call word 0x3b1
00002F21  FE06C86D          inc byte [0x6dc8]
00002F25  FE06C86D          inc byte [0x6dc8]
00002F29  FE0EC96D          dec byte [0x6dc9]
00002F2D  7802              js 0x2f31
00002F2F  EBC2              jmp short 0x2ef3
00002F31  B000              mov al,0x0
00002F33  A2B115            mov [0x15b1],al
00002F36  A2A415            mov [0x15a4],al
00002F39  B01B              mov al,0x1b
00002F3B  A2A215            mov [0x15a2],al
00002F3E  A2A315            mov [0x15a3],al
00002F41  B070              mov al,0x70
00002F43  A2A015            mov [0x15a0],al
00002F46  B07B              mov al,0x7b
00002F48  FEC0              inc al
00002F4A  FEC8              dec al
00002F4C  A2A115            mov [0x15a1],al
00002F4F  E876D3            call word 0x2c8
00002F52  B01B              mov al,0x1b
00002F54  A2A215            mov [0x15a2],al
00002F57  B07C              mov al,0x7c
00002F59  A2A015            mov [0x15a0],al
00002F5C  A2A115            mov [0x15a1],al
00002F5F  B0A0              mov al,0xa0
00002F61  FEC0              inc al
00002F63  FEC8              dec al
00002F65  A2A315            mov [0x15a3],al
00002F68  E85DD3            call word 0x2c8
00002F6B  C3                ret
00002F6C  B02F              mov al,0x2f
00002F6E  A29C6D            mov [0x6d9c],al
00002F71  2C08              sub al,0x8
00002F73  F5                cmc
00002F74  A2641B            mov [0x1b64],al
00002F77  B00C              mov al,0xc
00002F79  A29B6D            mov [0x6d9b],al
00002F7C  040B              add al,0xb
00002F7E  A2651B            mov [0x1b65],al
00002F81  C706976D0028      mov word [0x6d97],0x2800
00002F87  E88DD3            call word 0x317
00002F8A  B027              mov al,0x27
00002F8C  A29C6D            mov [0x6d9c],al
00002F8F  2C10              sub al,0x10
00002F91  F5                cmc
00002F92  A2641B            mov [0x1b64],al
00002F95  B00E              mov al,0xe
00002F97  A29B6D            mov [0x6d9b],al
00002F9A  0401              add al,0x1
00002F9C  A2651B            mov [0x1b65],al
00002F9F  C706976D0011      mov word [0x6d97],0x1100
00002FA5  E86FD3            call word 0x317
00002FA8  B02F              mov al,0x2f
00002FAA  A29C6D            mov [0x6d9c],al
00002FAD  2C08              sub al,0x8
00002FAF  F5                cmc
00002FB0  A2641B            mov [0x1b64],al
00002FB3  B011              mov al,0x11
00002FB5  A29B6D            mov [0x6d9b],al
00002FB8  0401              add al,0x1
00002FBA  A2651B            mov [0x1b65],al
00002FBD  B001              mov al,0x1
00002FBF  FEC0              inc al
00002FC1  FEC8              dec al
00002FC3  A2661B            mov [0x1b66],al
00002FC6  E84ED3            call word 0x317
00002FC9  B02F              mov al,0x2f
00002FCB  A29C6D            mov [0x6d9c],al
00002FCE  2C08              sub al,0x8
00002FD0  F5                cmc
00002FD1  A2641B            mov [0x1b64],al
00002FD4  B00C              mov al,0xc
00002FD6  A29B6D            mov [0x6d9b],al
00002FD9  0401              add al,0x1
00002FDB  A2651B            mov [0x1b65],al
00002FDE  C706976D0022      mov word [0x6d97],0x2200
00002FE4  E830D3            call word 0x317
00002FE7  B04F              mov al,0x4f
00002FE9  A29C6D            mov [0x6d9c],al
00002FEC  B000              mov al,0x0
00002FEE  FEC0              inc al
00002FF0  FEC8              dec al
00002FF2  A29B6D            mov [0x6d9b],al
00002FF5  E80BFB            call word 0x2b03
00002FF8  C3                ret
00002FF9  B038              mov al,0x38
00002FFB  A29C6D            mov [0x6d9c],al
00002FFE  2C08              sub al,0x8
00003000  F5                cmc
00003001  A2641B            mov [0x1b64],al
00003004  B026              mov al,0x26
00003006  A29B6D            mov [0x6d9b],al
00003009  0401              add al,0x1
0000300B  A2651B            mov [0x1b65],al
0000300E  C706976D0022      mov word [0x6d97],0x2200
00003014  E800D3            call word 0x317
00003017  B02F              mov al,0x2f
00003019  A29C6D            mov [0x6d9c],al
0000301C  2C10              sub al,0x10
0000301E  F5                cmc
0000301F  A2641B            mov [0x1b64],al
00003022  B026              mov al,0x26
00003024  A29B6D            mov [0x6d9b],al
00003027  0401              add al,0x1
00003029  A2651B            mov [0x1b65],al
0000302C  C706976D003B      mov word [0x6d97],0x3b00
00003032  E8E2D2            call word 0x317
00003035  C3                ret
00003036  0000              add [bx+si],al
00003038  0000              add [bx+si],al
0000303A  0000              add [bx+si],al
0000303C  0000              add [bx+si],al
0000303E  0000              add [bx+si],al
00003040  CE                into
00003041  1E                push ds
00003042  1E                push ds
00003043  CE                into
00003044  CE                into
00003045  1E                push ds
00003046  1E                push ds
00003047  CE                into
00003048  9A9A1ECEA7        call word 0xa7ce:0x1e9a
0000304D  A7                cmpsw
0000304E  87876767          xchg ax,[bx+0x6767]
00003052  47                inc di
00003053  47                inc di
00003054  47                inc di
00003055  27                daa
00003056  27                daa
00003057  27                daa
00003058  74EC              jz 0x3046
0000305A  EC                in al,dx
0000305B  BCBC86            mov sp,0x86bc
0000305E  5C                pop sp
0000305F  5C                pop sp
00003060  5C                pop sp
00003061  5C                pop sp
00003062  5B                pop bx
00003063  5A                pop dx
00003064  58                pop ax
00003065  55                push bp
00003066  53                push bx
00003067  51                push cx
00003068  4F                dec di
00003069  4D                dec bp
0000306A  4B                dec bx
0000306B  49                dec cx
0000306C  47                inc di
0000306D  45                inc bp
0000306E  43                inc bx
0000306F  41                inc cx
00003070  3F                aas
00003071  3D3B39            cmp ax,0x393b
00003074  37                aaa
00003075  353331            xor ax,0x3133
00003078  2F                das
00003079  2D2B29            sub ax,0x292b
0000307C  27                daa
0000307D  252321            and ax,0x2123
00003080  1F                pop ds
00003081  1DB4B2            sbb ax,0xb2b4
00003084  B0AE              mov al,0xae
00003086  AC                lodsb
00003087  AA                stosb
00003088  A8A6              test al,0xa6
0000308A  A6                cmpsb
0000308B  A6                cmpsb
0000308C  A6                cmpsb
0000308D  A7                cmpsw
0000308E  A7                cmpsw
0000308F  A8A9              test al,0xa9
00003091  A9AAAB            test ax,0xabaa
00003094  AB                stosw
00003095  AC                lodsb
00003096  AD                lodsw
00003097  AD                lodsw
00003098  AE                scasb
00003099  AF                scasw
0000309A  AF                scasw
0000309B  B0B1              mov al,0xb1
0000309D  B1B2              mov cl,0xb2
0000309F  B3B3              mov bl,0xb3
000030A1  B4B5              mov ah,0xb5
000030A3  B5B6              mov ch,0xb6
000030A5  B62B              mov dh,0x2b
000030A7  2F                das
000030A8  3337              xor si,[bx]
000030AA  3B3F              cmp di,[bx]
000030AC  43                inc bx
000030AD  47                inc di
000030AE  4B                dec bx
000030AF  4F                dec di
000030B0  53                push bx
000030B1  57                push di
000030B2  5B                pop bx
000030B3  5F                pop di
000030B4  63676B            arpl [bx+0x6b],sp
000030B7  6D                insw
000030B8  6B696561          imul bp,[bx+di+0x65],byte +0x61
000030BC  5D                pop bp
000030BD  59                pop cx
000030BE  55                push bp
000030BF  51                push cx
000030C0  4D                dec bp
000030C1  49                dec cx
000030C2  45                inc bp
000030C3  41                inc cx
000030C4  3D3B37            cmp ax,0x373b
000030C7  332F              xor bp,[bx]
000030C9  2B27              sub sp,[bx]
000030CB  231F              and bx,[bx]
000030CD  1D1D1F            sbb ax,0x1f1d
000030D0  2327              and sp,[bx]
000030D2  4F                dec di
000030D3  4F                dec di
000030D4  4F                dec di
000030D5  4F                dec di
000030D6  4F                dec di
000030D7  4F                dec di
000030D8  4F                dec di
000030D9  4F                dec di
000030DA  4F                dec di
000030DB  4F                dec di
000030DC  4F                dec di
000030DD  4F                dec di
000030DE  4F                dec di
000030DF  4F                dec di
000030E0  4F                dec di
000030E1  4F                dec di
000030E2  4E                dec si
000030E3  4B                dec bx
000030E4  49                dec cx
000030E5  48                dec ax
000030E6  48                dec ax
000030E7  48                dec ax
000030E8  48                dec ax
000030E9  48                dec ax
000030EA  48                dec ax
000030EB  48                dec ax
000030EC  48                dec ax
000030ED  48                dec ax
000030EE  48                dec ax
000030EF  48                dec ax
000030F0  48                dec ax
000030F1  48                dec ax
000030F2  48                dec ax
000030F3  48                dec ax
000030F4  48                dec ax
000030F5  48                dec ax
000030F6  48                dec ax
000030F7  48                dec ax
000030F8  48                dec ax
000030F9  49                dec cx
000030FA  4C                dec sp
000030FB  4F                dec di
000030FC  4F                dec di
000030FD  4F                dec di
000030FE  50                push ax
000030FF  7C7C              jl 0x317d
00003101  D028              shr byte [bx+si],1
00003103  284646            sub [bp+0x46],al
00003106  5E                pop si
00003107  5E                pop si
00003108  CE                into
00003109  CE                into
0000310A  2828              sub [bx+si],ch
0000310C  C4                db 0xc4
0000310D  C4888850          les cx,[bx+si+0x5088]
00003111  A7                cmpsw
00003112  A7                cmpsw
00003113  87878767          xchg ax,[bx+0x6787]
00003117  6747              a32 inc di
00003119  47                inc di
0000311A  27                daa
0000311B  27                daa
0000311C  47                inc di
0000311D  47                inc di
0000311E  67678787A7A78585  xchg ax,[edi-0x7a7a5859]
00003126  85858585          test [di-0x7a7b],ax
0000312A  85858585          test [di-0x7a7b],ax
0000312E  85858585          test [di-0x7a7b],ax
00003132  85858585          test [di-0x7a7b],ax
00003136  85858585          test [di-0x7a7b],ax
0000313A  85858585          test [di-0x7a7b],ax
0000313E  85858585          test [di-0x7a7b],ax
00003142  85858585          test [di-0x7a7b],ax
00003146  85858585          test [di-0x7a7b],ax
0000314A  85858578          test [di+0x7885],ax
0000314E  7878              js 0x31c8
00003150  7878              js 0x31ca
00003152  7878              js 0x31cc
00003154  7878              js 0x31ce
00003156  7878              js 0x31d0
00003158  7878              js 0x31d2
0000315A  7878              js 0x31d4
0000315C  7878              js 0x31d6
0000315E  7878              js 0x31d8
00003160  7878              js 0x31da
00003162  7878              js 0x31dc
00003164  7878              js 0x31de
00003166  7878              js 0x31e0
00003168  7878              js 0x31e2
0000316A  7878              js 0x31e4
0000316C  7878              js 0x31e6
0000316E  7878              js 0x31e8
00003170  7878              js 0x31ea
00003172  7878              js 0x31ec
00003174  7878              js 0x31ee
00003176  8F                db 0x8f
00003177  8D8B8987          lea cx,[bp+di-0x7877]
0000317B  8583817F          test [bp+di+0x7f81],ax
0000317F  7D7B              jnl 0x31fc
00003181  7977              jns 0x31fa
00003183  7573              jnz 0x31f8
00003185  716F              jno 0x31f6
00003187  6D                insw
00003188  6B696765          imul bp,[bx+di+0x67],byte +0x65
0000318C  63615F            arpl [bx+di+0x5f],sp
0000318F  5D                pop bp
00003190  5B                pop bx
00003191  59                pop cx
00003192  57                push di
00003193  55                push bp
00003194  53                push bx
00003195  51                push cx
00003196  4F                dec di
00003197  4D                dec bp
00003198  4B                dec bx
00003199  49                dec cx
0000319A  47                inc di
0000319B  45                inc bp
0000319C  43                inc bx
0000319D  41                inc cx
0000319E  3F                aas
0000319F  3F                aas
000031A0  41                inc cx
000031A1  43                inc bx
000031A2  45                inc bp
000031A3  47                inc di
000031A4  49                dec cx
000031A5  4B                dec bx
000031A6  4D                dec bp
000031A7  4F                dec di
000031A8  51                push cx
000031A9  53                push bx
000031AA  55                push bp
000031AB  57                push di
000031AC  59                pop cx
000031AD  5B                pop bx
000031AE  5D                pop bp
000031AF  5F                pop di
000031B0  61                popaw
000031B1  636567            arpl [di+0x67],sp
000031B4  696B6D6F71        imul bp,[bp+di+0x6d],word 0x716f
000031B9  7375              jnc 0x3230
000031BB  7779              ja 0x3236
000031BD  7B7D              jpo 0x323c
000031BF  7F81              jg 0x3142
000031C1  838587898B        add word [di-0x7679],byte -0x75
000031C6  8D8F0036          lea cx,[bx+0x3600]
000031CA  3644              ss inc sp
000031CC  005050            add [bx+si+0x50],dl
000031CF  87876767          xchg ax,[bx+0x6767]
000031D3  676767B8ECEC      mov ax,0xecec
000031D9  B8ECD0            mov ax,0xd0ec
000031DC  EC                in al,dx
000031DD  87876767          xchg ax,[bx+0x6767]
000031E1  6767670000        add [eax],al
000031E6  0000              add [bx+si],al
000031E8  050505            add ax,0x505
000031EB  050204            add ax,0x402
000031EE  090A              or [bp+si],cx
000031F0  0100              add [bx+si],ax
000031F2  0000              add [bx+si],al
000031F4  06                push es
000031F5  06                push es
000031F6  06                push es
000031F7  06                push es
000031F8  0B0B              or cx,[bp+di]
000031FA  0B0B              or cx,[bp+di]
000031FC  0202              add al,[bp+si]
000031FE  0202              add al,[bp+si]
00003200  0000              add [bx+si],al
00003202  0000              add [bx+si],al
00003204  0000              add [bx+si],al
00003206  0000              add [bx+si],al
00003208  0000              add [bx+si],al
0000320A  0000              add [bx+si],al
0000320C  0000              add [bx+si],al
0000320E  0000              add [bx+si],al
00003210  0000              add [bx+si],al
00003212  0000              add [bx+si],al
00003214  0000              add [bx+si],al
00003216  0000              add [bx+si],al
00003218  0000              add [bx+si],al
0000321A  0000              add [bx+si],al
0000321C  0000              add [bx+si],al
0000321E  0000              add [bx+si],al
00003220  0000              add [bx+si],al
00003222  0000              add [bx+si],al
00003224  0000              add [bx+si],al
00003226  0000              add [bx+si],al
00003228  0000              add [bx+si],al
0000322A  0000              add [bx+si],al
0000322C  0000              add [bx+si],al
0000322E  0000              add [bx+si],al
00003230  0000              add [bx+si],al
00003232  0000              add [bx+si],al
00003234  0000              add [bx+si],al
00003236  0000              add [bx+si],al
00003238  0000              add [bx+si],al
0000323A  00C8              add al,cl
0000323C  31D6              xor si,dx
0000323E  31C8              xor ax,cx
00003240  31D6              xor si,dx
00003242  314030            xor [bx+si+0x30],ax
00003245  40                inc ax
00003246  304030            xor [bx+si+0x30],al
00003249  40                inc ax
0000324A  305830            xor [bx+si+0x30],bl
0000324D  58                pop ax
0000324E  305830            xor [bx+si+0x30],bl
00003251  58                pop ax
00003252  30CF              xor bh,cl
00003254  31DD              xor bp,bx
00003256  31CF              xor di,cx
00003258  31DD              xor bp,bx
0000325A  314C30            xor [si+0x30],cx
0000325D  4C                dec sp
0000325E  304C30            xor [si+0x30],cl
00003261  4C                dec sp
00003262  305B30            xor [bp+di+0x30],bl
00003265  5B                pop bx
00003266  305B30            xor [bp+di+0x30],bl
00003269  5B                pop bx
0000326A  308A1E35          xor [bp+si+0x351e],cl
0000326E  32A06B72          xor ah,[bx+si+0x726b]
00003272  88872C32          mov [bx+0x322c],al
00003276  88873032          mov [bx+0x3230],al
0000327A  E86DEB            call word 0x1dea
0000327D  D0D4              rcl ah,1
0000327F  2401              and al,0x1
00003281  D0DC              rcr ah,1
00003283  D0D4              rcl ah,1
00003285  32871032          xor al,[bx+0x3210]
00003289  D0DC              rcr ah,1
0000328B  88871032          mov [bx+0x3210],al
0000328F  D0D4              rcl ah,1
00003291  32871432          xor al,[bx+0x3214]
00003295  D0DC              rcr ah,1
00003297  88871432          mov [bx+0x3214],al
0000329B  FECB              dec bl
0000329D  7802              js 0x32a1
0000329F  EBCE              jmp short 0x326f
000032A1  C3                ret
000032A2  FE063432          inc byte [0x3234]
000032A6  8A1E3532          mov bl,[0x3235]
000032AA  881EC86D          mov [0x6dc8],bl
000032AE  8A871C32          mov al,[bx+0x321c]
000032B2  88872032          mov [bx+0x3220],al
000032B6  A29D6D            mov [0x6d9d],al
000032B9  8A872432          mov al,[bx+0x3224]
000032BD  88872832          mov [bx+0x3228],al
000032C1  A29E6D            mov [0x6d9e],al
000032C4  8A872C32          mov al,[bx+0x322c]
000032C8  88873032          mov [bx+0x3230],al
000032CC  A29A6D            mov [0x6d9a],al
000032CF  8A871432          mov al,[bx+0x3214]
000032D3  D0E0              shl al,1
000032D5  D0E0              shl al,1
000032D7  A2986D            mov [0x6d98],al
000032DA  A03432            mov al,[0x3234]
000032DD  D0D4              rcl ah,1
000032DF  2404              and al,0x4
000032E1  D0DC              rcr ah,1
000032E3  D0E8              shr al,1
000032E5  D0D4              rcl ah,1
000032E7  0A06986D          or al,[0x6d98]
000032EB  D0DC              rcr ah,1
000032ED  02066E72          add al,[0x726e]
000032F1  A2986D            mov [0x6d98],al
000032F4  88872C32          mov [bx+0x322c],al
000032F8  E81100            call word 0x330c
000032FB  FE0EC86D          dec byte [0x6dc8]
000032FF  8A1EC86D          mov bl,[0x6dc8]
00003303  FEC3              inc bl
00003305  FECB              dec bl
00003307  7802              js 0x330b
00003309  EBA3              jmp short 0x32ae
0000330B  C3                ret
0000330C  8A0EC86D          mov cl,[0x6dc8]
00003310  8BF1              mov si,cx
00003312  8A840032          mov al,[si+0x3200]
00003316  A2A66D            mov [0x6da6],al
00003319  8BF1              mov si,cx
0000331B  8A840432          mov al,[si+0x3204]
0000331F  A2A76D            mov [0x6da7],al
00003322  8BF1              mov si,cx
00003324  8A840832          mov al,[si+0x3208]
00003328  A2A86D            mov [0x6da8],al
0000332B  8BF1              mov si,cx
0000332D  8A840C32          mov al,[si+0x320c]
00003331  A2A96D            mov [0x6da9],al
00003334  8BF1              mov si,cx
00003336  8A841832          mov al,[si+0x3218]
0000333A  8AD8              mov bl,al
0000333C  8B36A66D          mov si,[0x6da6]
00003340  8A00              mov al,[bx+si]
00003342  8BF1              mov si,cx
00003344  3A841C32          cmp al,[si+0x321c]
00003348  F5                cmc
00003349  7403              jz 0x334e
0000334B  EB04              jmp short 0x3351
0000334D  90                nop
0000334E  EB24              jmp short 0x3374
00003350  90                nop
00003351  7303              jnc 0x3356
00003353  EB10              jmp short 0x3365
00003355  90                nop
00003356  8BF1              mov si,cx
00003358  FE8C1C32          dec byte [si+0x321c]
0000335C  8BF1              mov si,cx
0000335E  FE8C1C32          dec byte [si+0x321c]
00003362  E9A100            jmp word 0x3406
00003365  8BF1              mov si,cx
00003367  FE841C32          inc byte [si+0x321c]
0000336B  8BF1              mov si,cx
0000336D  FE841C32          inc byte [si+0x321c]
00003371  E99200            jmp word 0x3406
00003374  8B36A86D          mov si,[0x6da8]
00003378  8A00              mov al,[bx+si]
0000337A  8BF1              mov si,cx
0000337C  3A842432          cmp al,[si+0x3224]
00003380  F5                cmc
00003381  7403              jz 0x3386
00003383  EB04              jmp short 0x3389
00003385  90                nop
00003386  EB24              jmp short 0x33ac
00003388  90                nop
00003389  7303              jnc 0x338e
0000338B  EB10              jmp short 0x339d
0000338D  90                nop
0000338E  8BF1              mov si,cx
00003390  FE8C2432          dec byte [si+0x3224]
00003394  8BF1              mov si,cx
00003396  FE8C2432          dec byte [si+0x3224]
0000339A  EB6A              jmp short 0x3406
0000339C  90                nop
0000339D  8BF1              mov si,cx
0000339F  FE842432          inc byte [si+0x3224]
000033A3  8BF1              mov si,cx
000033A5  FE842432          inc byte [si+0x3224]
000033A9  EB5B              jmp short 0x3406
000033AB  90                nop
000033AC  8BF1              mov si,cx
000033AE  8A841832          mov al,[si+0x3218]
000033B2  8BF1              mov si,cx
000033B4  3A84E431          cmp al,[si+0x31e4]
000033B8  F5                cmc
000033B9  7503              jnz 0x33be
000033BB  EB2A              jmp short 0x33e7
000033BD  90                nop
000033BE  3C00              cmp al,0x0
000033C0  F5                cmc
000033C1  7503              jnz 0x33c6
000033C3  EB33              jmp short 0x33f8
000033C5  90                nop
000033C6  8BF1              mov si,cx
000033C8  8A841032          mov al,[si+0x3210]
000033CC  FEC0              inc al
000033CE  FEC8              dec al
000033D0  7403              jz 0x33d5
000033D2  EB0A              jmp short 0x33de
000033D4  90                nop
000033D5  8BF1              mov si,cx
000033D7  FE8C1832          dec byte [si+0x3218]
000033DB  EB29              jmp short 0x3406
000033DD  90                nop
000033DE  8BF1              mov si,cx
000033E0  FE841832          inc byte [si+0x3218]
000033E4  EB20              jmp short 0x3406
000033E6  90                nop
000033E7  B000              mov al,0x0
000033E9  8BF1              mov si,cx
000033EB  88841032          mov [si+0x3210],al
000033EF  8BF1              mov si,cx
000033F1  FE8C1832          dec byte [si+0x3218]
000033F5  EB0F              jmp short 0x3406
000033F7  90                nop
000033F8  B001              mov al,0x1
000033FA  8BF1              mov si,cx
000033FC  88841032          mov [si+0x3210],al
00003400  8BF1              mov si,cx
00003402  FE841832          inc byte [si+0x3218]
00003406  8BF1              mov si,cx
00003408  8A841C32          mov al,[si+0x321c]
0000340C  A29B6D            mov [0x6d9b],al
0000340F  8BF1              mov si,cx
00003411  8A842432          mov al,[si+0x3224]
00003415  FEC0              inc al
00003417  FEC8              dec al
00003419  A29C6D            mov [0x6d9c],al
0000341C  E849CF            call word 0x368
0000341F  C3                ret
00003420  0000              add [bx+si],al
00003422  0000              add [bx+si],al
00003424  0000              add [bx+si],al
00003426  0000              add [bx+si],al
00003428  0000              add [bx+si],al
0000342A  0000              add [bx+si],al
0000342C  0000              add [bx+si],al
0000342E  0000              add [bx+si],al
00003430  0000              add [bx+si],al
00003432  0000              add [bx+si],al
00003434  A06C0B            mov al,[0xb6c]
00003437  FEC0              inc al
00003439  FEC8              dec al
0000343B  7503              jnz 0x3440
0000343D  EB02              jmp short 0x3441
0000343F  90                nop
00003440  C3                ret
00003441  A0600B            mov al,[0xb60]
00003444  3CDB              cmp al,0xdb
00003446  F5                cmc
00003447  7203              jc 0x344c
00003449  EB02              jmp short 0x344d
0000344B  90                nop
0000344C  C3                ret
0000344D  3C14              cmp al,0x14
0000344F  F5                cmc
00003450  7303              jnc 0x3455
00003452  EB02              jmp short 0x3456
00003454  90                nop
00003455  C3                ret
00003456  8A1E630B          mov bl,[0xb63]
0000345A  8A873140          mov al,[bx+0x4031]
0000345E  FEC0              inc al
00003460  FEC8              dec al
00003462  7503              jnz 0x3467
00003464  EB02              jmp short 0x3468
00003466  90                nop
00003467  C3                ret
00003468  8A872834          mov al,[bx+0x3428]
0000346C  A22534            mov [0x3425],al
0000346F  FE062534          inc byte [0x3425]
00003473  FE062534          inc byte [0x3425]
00003477  2C05              sub al,0x5
00003479  F5                cmc
0000347A  A22434            mov [0x3424],al
0000347D  A0600B            mov al,[0xb60]
00003480  3A062434          cmp al,[0x3424]
00003484  F5                cmc
00003485  7303              jnc 0x348a
00003487  EB02              jmp short 0x348b
00003489  90                nop
0000348A  C3                ret
0000348B  3A062534          cmp al,[0x3425]
0000348F  F5                cmc
00003490  7203              jc 0x3495
00003492  EB02              jmp short 0x3496
00003494  90                nop
00003495  C3                ret
00003496  8A1E630B          mov bl,[0xb63]
0000349A  FEC3              inc bl
0000349C  80FB05            cmp bl,0x5
0000349F  F5                cmc
000034A0  7503              jnz 0x34a5
000034A2  E98300            jmp word 0x3528
000034A5  8A873140          mov al,[bx+0x4031]
000034A9  FEC0              inc al
000034AB  FEC8              dec al
000034AD  7503              jnz 0x34b2
000034AF  EB04              jmp short 0x34b5
000034B1  90                nop
000034B2  EB3D              jmp short 0x34f1
000034B4  90                nop
000034B5  8A872834          mov al,[bx+0x3428]
000034B9  A22134            mov [0x3421],al
000034BC  FE062134          inc byte [0x3421]
000034C0  FE062134          inc byte [0x3421]
000034C4  2C05              sub al,0x5
000034C6  F5                cmc
000034C7  A22034            mov [0x3420],al
000034CA  A0600B            mov al,[0xb60]
000034CD  3A062034          cmp al,[0x3420]
000034D1  F5                cmc
000034D2  7303              jnc 0x34d7
000034D4  EB04              jmp short 0x34da
000034D6  90                nop
000034D7  EB18              jmp short 0x34f1
000034D9  90                nop
000034DA  3A062134          cmp al,[0x3421]
000034DE  F5                cmc
000034DF  7303              jnc 0x34e4
000034E1  EB0E              jmp short 0x34f1
000034E3  90                nop
000034E4  FEC3              inc bl
000034E6  80FB05            cmp bl,0x5
000034E9  F5                cmc
000034EA  7402              jz 0x34ee
000034EC  EBB7              jmp short 0x34a5
000034EE  EB38              jmp short 0x3528
000034F0  90                nop
000034F1  8A87B315          mov al,[bx+0x15b3]
000034F5  A22334            mov [0x3423],al
000034F8  A0600B            mov al,[0xb60]
000034FB  FEC0              inc al
000034FD  FEC8              dec al
000034FF  A22234            mov [0x3422],al
00003502  EB2F              jmp short 0x3533
00003504  90                nop
00003505  A0630B            mov al,[0xb63]
00003508  3A06640B          cmp al,[0xb64]
0000350C  F5                cmc
0000350D  7303              jnc 0x3512
0000350F  EB17              jmp short 0x3528
00003511  90                nop
00003512  A06422            mov al,[0x2264]
00003515  2C29              sub al,0x29
00003517  F5                cmc
00003518  A22334            mov [0x3423],al
0000351B  A0600B            mov al,[0xb60]
0000351E  FEC0              inc al
00003520  FEC8              dec al
00003522  A22234            mov [0x3422],al
00003525  EB0C              jmp short 0x3533
00003527  90                nop
00003528  B0BD              mov al,0xbd
0000352A  A22334            mov [0x3423],al
0000352D  A0600B            mov al,[0xb60]
00003530  A22234            mov [0x3422],al
00003533  A06772            mov al,[0x7267]
00003536  A2986D            mov [0x6d98],al
00003539  A06B0B            mov al,[0xb6b]
0000353C  A29A6D            mov [0x6d9a],al
0000353F  A0600B            mov al,[0xb60]
00003542  A29B6D            mov [0x6d9b],al
00003545  A29D6D            mov [0x6d9d],al
00003548  A0650B            mov al,[0xb65]
0000354B  A29E6D            mov [0x6d9e],al
0000354E  D0D4              rcl ah,1
00003550  0C01              or al,0x1
00003552  D0DC              rcr ah,1
00003554  0402              add al,0x2
00003556  3A062334          cmp al,[0x3423]
0000355A  F5                cmc
0000355B  7503              jnz 0x3560
0000355D  EB06              jmp short 0x3565
0000355F  90                nop
00003560  7303              jnc 0x3565
00003562  EB29              jmp short 0x358d
00003564  90                nop
00003565  A29C6D            mov [0x6d9c],al
00003568  A2650B            mov [0xb65],al
0000356B  E8FACD            call word 0x368
0000356E  A06772            mov al,[0x7267]
00003571  A2986D            mov [0x6d98],al
00003574  A29A6D            mov [0x6d9a],al
00003577  A02D34            mov al,[0x342d]
0000357A  2C02              sub al,0x2
0000357C  F5                cmc
0000357D  3C30              cmp al,0x30
0000357F  F5                cmc
00003580  7203              jc 0x3585
00003582  EB04              jmp short 0x3588
00003584  90                nop
00003585  A22D34            mov [0x342d],al
00003588  E854CC            call word 0x1df
0000358B  EBB2              jmp short 0x353f
0000358D  A02334            mov al,[0x3423]
00003590  A2650B            mov [0xb65],al
00003593  A06772            mov al,[0x7267]
00003596  A26B0B            mov [0xb6b],al
00003599  A03334            mov al,[0x3433]
0000359C  FEC0              inc al
0000359E  FEC8              dec al
000035A0  7503              jnz 0x35a5
000035A2  EB04              jmp short 0x35a8
000035A4  90                nop
000035A5  EB2A              jmp short 0x35d1
000035A7  90                nop
000035A8  A06B0B            mov al,[0xb6b]
000035AB  A29A6D            mov [0x6d9a],al
000035AE  A05E72            mov al,[0x725e]
000035B1  FEC0              inc al
000035B3  FEC8              dec al
000035B5  A2986D            mov [0x6d98],al
000035B8  E87100            call word 0x362c
000035BB  A05E72            mov al,[0x725e]
000035BE  A29A6D            mov [0x6d9a],al
000035C1  A05F72            mov al,[0x725f]
000035C4  FEC0              inc al
000035C6  FEC8              dec al
000035C8  A2986D            mov [0x6d98],al
000035CB  E85E00            call word 0x362c
000035CE  E9AC00            jmp word 0x367d
000035D1  C706976D0038      mov word [0x6d97],0x3800
000035D7  E87800            call word 0x3652
000035DA  C706976D0039      mov word [0x6d97],0x3900
000035E0  E86F00            call word 0x3652
000035E3  A07E0B            mov al,[0xb7e]
000035E6  FEC0              inc al
000035E8  FEC8              dec al
000035EA  7403              jz 0x35ef
000035EC  EB04              jmp short 0x35f2
000035EE  90                nop
000035EF  E98B00            jmp word 0x367d
000035F2  C706976D0055      mov word [0x6d97],0x5500
000035F8  E85700            call word 0x3652
000035FB  C706976D0056      mov word [0x6d97],0x5600
00003601  E84E00            call word 0x3652
00003604  C706976D0057      mov word [0x6d97],0x5700
0000360A  E84500            call word 0x3652
0000360D  B030              mov al,0x30
0000360F  FEC0              inc al
00003611  FEC8              dec al
00003613  E8C9CB            call word 0x1df
00003616  C706976D0056      mov word [0x6d97],0x5600
0000361C  E83300            call word 0x3652
0000361F  C706976D0055      mov word [0x6d97],0x5500
00003625  E82A00            call word 0x3652
00003628  EB53              jmp short 0x367d
0000362A  90                nop
0000362B  C3                ret
0000362C  A0600B            mov al,[0xb60]
0000362F  A29B6D            mov [0x6d9b],al
00003632  A29D6D            mov [0x6d9d],al
00003635  A0650B            mov al,[0xb65]
00003638  FEC0              inc al
0000363A  FEC8              dec al
0000363C  A29C6D            mov [0x6d9c],al
0000363F  A29E6D            mov [0x6d9e],al
00003642  E823CD            call word 0x368
00003645  B0FF              mov al,0xff
00003647  FEC0              inc al
00003649  FEC8              dec al
0000364B  E891CB            call word 0x1df
0000364E  C3                ret
0000364F  041E              add al,0x1e
00003651  118A0E3A          adc [bp+si+0x3a0e],cx
00003655  4A                dec dx
00003656  8BF1              mov si,cx
00003658  8A844F36          mov al,[si+0x364f]
0000365C  A29B6D            mov [0x6d9b],al
0000365F  0401              add al,0x1
00003661  A2651B            mov [0x1b65],al
00003664  A0650B            mov al,[0xb65]
00003667  A29C6D            mov [0x6d9c],al
0000366A  2C10              sub al,0x10
0000366C  F5                cmc
0000366D  A2641B            mov [0x1b64],al
00003670  E8A4CC            call word 0x317
00003673  B0FF              mov al,0xff
00003675  FEC0              inc al
00003677  FEC8              dec al
00003679  E863CB            call word 0x1df
0000367C  C3                ret
0000367D  B001              mov al,0x1
0000367F  FEC0              inc al
00003681  FEC8              dec al
00003683  A27F0B            mov [0xb7f],al
00003686  B80C65            mov ax,0x650c
00003689  E8FE2E            call word 0x658a
0000368C  FE0E2E34          dec byte [0x342e]
00003690  7903              jns 0x3695
00003692  EB2F              jmp short 0x36c3
00003694  90                nop
00003695  A04F59            mov al,[0x594f]
00003698  3C01              cmp al,0x1
0000369A  F5                cmc
0000369B  7503              jnz 0x36a0
0000369D  EB12              jmp short 0x36b1
0000369F  90                nop
000036A0  3C02              cmp al,0x2
000036A2  F5                cmc
000036A3  7503              jnz 0x36a8
000036A5  EB10              jmp short 0x36b7
000036A7  90                nop
000036A8  3C03              cmp al,0x3
000036AA  F5                cmc
000036AB  7503              jnz 0x36b0
000036AD  EB0E              jmp short 0x36bd
000036AF  90                nop
000036B0  C3                ret
000036B1  E88312            call word 0x4937
000036B4  E927D5            jmp word 0xbde
000036B7  E89D12            call word 0x4957
000036BA  E9FCD5            jmp word 0xcb9
000036BD  E8D412            call word 0x4994
000036C0  E9B2D6            jmp word 0xd75
000036C3  B84D1F            mov ax,0x1f4d
000036C6  E8BDE7            call word 0x1e86
000036C9  E8E5EE            call word 0x25b1
000036CC  B00C              mov al,0xc
000036CE  A2C86D            mov [0x6dc8],al
000036D1  B0FF              mov al,0xff
000036D3  FEC0              inc al
000036D5  FEC8              dec al
000036D7  E805CB            call word 0x1df
000036DA  FE0EC86D          dec byte [0x6dc8]
000036DE  7802              js 0x36e2
000036E0  EBEF              jmp short 0x36d1
000036E2  E99CD4            jmp word 0xb81
000036E5  B301              mov bl,0x1
000036E7  881EC86D          mov [0x6dc8],bl
000036EB  8A873140          mov al,[bx+0x4031]
000036EF  3C02              cmp al,0x2
000036F1  F5                cmc
000036F2  7503              jnz 0x36f7
000036F4  EB2E              jmp short 0x3724
000036F6  90                nop
000036F7  8A87B915          mov al,[bx+0x15b9]
000036FB  A29C6D            mov [0x6d9c],al
000036FE  2C08              sub al,0x8
00003700  F5                cmc
00003701  A2641B            mov [0x1b64],al
00003704  8A872834          mov al,[bx+0x3428]
00003708  8AC8              mov cl,al
0000370A  8BF1              mov si,cx
0000370C  8A849428          mov al,[si+0x2894]
00003710  A29B6D            mov [0x6d9b],al
00003713  0401              add al,0x1
00003715  A2651B            mov [0x1b65],al
00003718  B001              mov al,0x1
0000371A  FEC0              inc al
0000371C  FEC8              dec al
0000371E  A2661B            mov [0x1b66],al
00003721  E8F3CB            call word 0x317
00003724  FE06C86D          inc byte [0x6dc8]
00003728  8A1EC86D          mov bl,[0x6dc8]
0000372C  80FB05            cmp bl,0x5
0000372F  F5                cmc
00003730  7402              jz 0x3734
00003732  EBB7              jmp short 0x36eb
00003734  C3                ret
00003735  B301              mov bl,0x1
00003737  881EC86D          mov [0x6dc8],bl
0000373B  8A875C3D          mov al,[bx+0x3d5c]
0000373F  3C02              cmp al,0x2
00003741  F5                cmc
00003742  7503              jnz 0x3747
00003744  EB31              jmp short 0x3777
00003746  90                nop
00003747  8A87B315          mov al,[bx+0x15b3]
0000374B  A29C6D            mov [0x6d9c],al
0000374E  2C10              sub al,0x10
00003750  F5                cmc
00003751  A2641B            mov [0x1b64],al
00003754  8A874D1E          mov al,[bx+0x1e4d]
00003758  8AC8              mov cl,al
0000375A  8BF1              mov si,cx
0000375C  8A849428          mov al,[si+0x2894]
00003760  A29B6D            mov [0x6d9b],al
00003763  0401              add al,0x1
00003765  A2651B            mov [0x1b65],al
00003768  8A875472          mov al,[bx+0x7254]
0000376C  32E4              xor ah,ah
0000376E  050019            add ax,0x1900
00003771  A3976D            mov [0x6d97],ax
00003774  E8A0CB            call word 0x317
00003777  FE06C86D          inc byte [0x6dc8]
0000377B  8A1EC86D          mov bl,[0x6dc8]
0000377F  80FB05            cmp bl,0x5
00003782  F5                cmc
00003783  7402              jz 0x3787
00003785  EBB4              jmp short 0x373b
00003787  C3                ret
00003788  0000              add [bx+si],al
0000378A  0000              add [bx+si],al
0000378C  0000              add [bx+si],al
0000378E  0000              add [bx+si],al
00003790  0000              add [bx+si],al
00003792  A0FA43            mov al,[0x43fa]
00003795  FEC0              inc al
00003797  FEC8              dec al
00003799  7503              jnz 0x379e
0000379B  EB02              jmp short 0x379f
0000379D  90                nop
0000379E  C3                ret
0000379F  A09037            mov al,[0x3790]
000037A2  FEC0              inc al
000037A4  FEC8              dec al
000037A6  7403              jz 0x37ab
000037A8  EB2C              jmp short 0x37d6
000037AA  90                nop
000037AB  B001              mov al,0x1
000037AD  A29037            mov [0x3790],al
000037B0  B300              mov bl,0x0
000037B2  881E9137          mov [0x3791],bl
000037B6  8A87FE30          mov al,[bx+0x30fe]
000037BA  A28837            mov [0x3788],al
000037BD  A28937            mov [0x3789],al
000037C0  8A871131          mov al,[bx+0x3111]
000037C4  A28A37            mov [0x378a],al
000037C7  A28B37            mov [0x378b],al
000037CA  A06B72            mov al,[0x726b]
000037CD  A28F37            mov [0x378f],al
000037D0  A06A72            mov al,[0x726a]
000037D3  A28D37            mov [0x378d],al
000037D6  A08837            mov al,[0x3788]
000037D9  A29B6D            mov [0x6d9b],al
000037DC  A08A37            mov al,[0x378a]
000037DF  A29C6D            mov [0x6d9c],al
000037E2  A08937            mov al,[0x3789]
000037E5  A29D6D            mov [0x6d9d],al
000037E8  A08B37            mov al,[0x378b]
000037EB  A29E6D            mov [0x6d9e],al
000037EE  A08D37            mov al,[0x378d]
000037F1  A2986D            mov [0x6d98],al
000037F4  A08F37            mov al,[0x378f]
000037F7  FEC0              inc al
000037F9  FEC8              dec al
000037FB  A29A6D            mov [0x6d9a],al
000037FE  E867CB            call word 0x368
00003801  A08837            mov al,[0x3788]
00003804  A28937            mov [0x3789],al
00003807  A08A37            mov al,[0x378a]
0000380A  A28B37            mov [0x378b],al
0000380D  A08D37            mov al,[0x378d]
00003810  A28F37            mov [0x378f],al
00003813  A03040            mov al,[0x4030]
00003816  FEC0              inc al
00003818  FEC8              dec al
0000381A  7403              jz 0x381f
0000381C  EB71              jmp short 0x388f
0000381E  90                nop
0000381F  8A1E9137          mov bl,[0x3791]
00003823  8A87FE30          mov al,[bx+0x30fe]
00003827  3A068837          cmp al,[0x3788]
0000382B  F5                cmc
0000382C  7403              jz 0x3831
0000382E  EB04              jmp short 0x3834
00003830  90                nop
00003831  EB1C              jmp short 0x384f
00003833  90                nop
00003834  7303              jnc 0x3839
00003836  EB0C              jmp short 0x3844
00003838  90                nop
00003839  FE0E8837          dec byte [0x3788]
0000383D  FE0E8837          dec byte [0x3788]
00003841  EB4C              jmp short 0x388f
00003843  90                nop
00003844  FE068837          inc byte [0x3788]
00003848  FE068837          inc byte [0x3788]
0000384C  EB41              jmp short 0x388f
0000384E  90                nop
0000384F  8A871131          mov al,[bx+0x3111]
00003853  3A068A37          cmp al,[0x378a]
00003857  F5                cmc
00003858  7403              jz 0x385d
0000385A  EB04              jmp short 0x3860
0000385C  90                nop
0000385D  EB1C              jmp short 0x387b
0000385F  90                nop
00003860  7303              jnc 0x3865
00003862  EB0C              jmp short 0x3870
00003864  90                nop
00003865  FE0E8A37          dec byte [0x378a]
00003869  FE0E8A37          dec byte [0x378a]
0000386D  EB20              jmp short 0x388f
0000386F  90                nop
00003870  FE068A37          inc byte [0x378a]
00003874  FE068A37          inc byte [0x378a]
00003878  EB15              jmp short 0x388f
0000387A  90                nop
0000387B  FE069137          inc byte [0x3791]
0000387F  A09137            mov al,[0x3791]
00003882  3C12              cmp al,0x12
00003884  F5                cmc
00003885  7403              jz 0x388a
00003887  EB06              jmp short 0x388f
00003889  90                nop
0000388A  B000              mov al,0x0
0000388C  A29137            mov [0x3791],al
0000388F  A08837            mov al,[0x3788]
00003892  D0D4              rcl ah,1
00003894  2402              and al,0x2
00003896  D0DC              rcr ah,1
00003898  02066A72          add al,[0x726a]
0000389C  A28D37            mov [0x378d],al
0000389F  C3                ret
000038A0  0000              add [bx+si],al
000038A2  0000              add [bx+si],al
000038A4  0000              add [bx+si],al
000038A6  040E              add al,0xe
000038A8  04C4              add al,0xc4
000038AA  EE                out dx,al
000038AB  9A47678767        call word 0x6787:0x6747
000038B0  87BC380E          xchg di,[si+0xe38]
000038B4  04E0              add al,0xe0
000038B6  B69A              mov dh,0x9a
000038B8  47                inc di
000038B9  67876787          xchg sp,[edi-0x79]
000038BD  BC00A0            mov sp,0xa000
000038C0  BE38D0            mov si,0xd038
000038C3  D434              aam 0x34
000038C5  01D0              add ax,dx
000038C7  DCA2BE38          fsub qword [bp+si+0x38be]
000038CB  7403              jz 0x38d0
000038CD  EB10              jmp short 0x38df
000038CF  90                nop
000038D0  C706B46DA638      mov word [0x6db4],0x38a6
000038D6  C706B66DAC38      mov word [0x6db6],0x38ac
000038DC  EB0D              jmp short 0x38eb
000038DE  90                nop
000038DF  C706B46DB238      mov word [0x6db4],0x38b2
000038E5  C706B66DB838      mov word [0x6db6],0x38b8
000038EB  B305              mov bl,0x5
000038ED  881EC86D          mov [0x6dc8],bl
000038F1  8A1EC86D          mov bl,[0x6dc8]
000038F5  8A87A038          mov al,[bx+0x38a0]
000038F9  FEC0              inc al
000038FB  FEC8              dec al
000038FD  7503              jnz 0x3902
000038FF  EB2F              jmp short 0x3930
00003901  90                nop
00003902  8B36B46D          mov si,[0x6db4]
00003906  8A00              mov al,[bx+si]
00003908  8AC8              mov cl,al
0000390A  8BF1              mov si,cx
0000390C  8A849428          mov al,[si+0x2894]
00003910  A29B6D            mov [0x6d9b],al
00003913  0401              add al,0x1
00003915  A2651B            mov [0x1b65],al
00003918  8B36B66D          mov si,[0x6db6]
0000391C  8A00              mov al,[bx+si]
0000391E  A29C6D            mov [0x6d9c],al
00003921  2C10              sub al,0x10
00003923  F5                cmc
00003924  A2641B            mov [0x1b64],al
00003927  C706976D0014      mov word [0x6d97],0x1400
0000392D  E8E7C9            call word 0x317
00003930  FE0EC86D          dec byte [0x6dc8]
00003934  8A1EC86D          mov bl,[0x6dc8]
00003938  FEC3              inc bl
0000393A  FECB              dec bl
0000393C  7802              js 0x3940
0000393E  EBB1              jmp short 0x38f1
00003940  C3                ret
00003941  002A              add [bp+si],ch
00003943  EE                out dx,al
00003944  2A9AB687          sub bl,[bp+si-0x784a]
00003948  47                inc di
00003949  876727            xchg sp,[bx+0x27]
0000394C  6746              a32 inc si
0000394E  2AB60E62          sub dh,[bp+0x620e]
00003952  EE                out dx,al
00003953  874787            xchg ax,[bx-0x79]
00003956  6727              a32 daa
00003958  6700A05939D0D4    add [eax-0x2b2fc6a7],ah
0000395F  3401              xor al,0x1
00003961  D0DC              rcr ah,1
00003963  A25939            mov [0x3959],al
00003966  7403              jz 0x396b
00003968  EB10              jmp short 0x397a
0000396A  90                nop
0000396B  C706D66D4139      mov word [0x6dd6],0x3941
00003971  C706D86D5339      mov word [0x6dd8],0x3953
00003977  EB0D              jmp short 0x3986
00003979  90                nop
0000397A  C706D66D4D39      mov word [0x6dd6],0x394d
00003980  C706D86D5339      mov word [0x6dd8],0x3953
00003986  8A1E2F3C          mov bl,[0x3c2f]
0000398A  881EC86D          mov [0x6dc8],bl
0000398E  8A87283C          mov al,[bx+0x3c28]
00003992  FEC0              inc al
00003994  FEC8              dec al
00003996  7503              jnz 0x399b
00003998  EB2C              jmp short 0x39c6
0000399A  90                nop
0000399B  8B36D66D          mov si,[0x6dd6]
0000399F  8A00              mov al,[bx+si]
000039A1  A29B6D            mov [0x6d9b],al
000039A4  A29D6D            mov [0x6d9d],al
000039A7  8B36D86D          mov si,[0x6dd8]
000039AB  8A00              mov al,[bx+si]
000039AD  A29C6D            mov [0x6d9c],al
000039B0  A29E6D            mov [0x6d9e],al
000039B3  A06C72            mov al,[0x726c]
000039B6  A2986D            mov [0x6d98],al
000039B9  A06B72            mov al,[0x726b]
000039BC  FEC0              inc al
000039BE  FEC8              dec al
000039C0  A29A6D            mov [0x6d9a],al
000039C3  E8A2C9            call word 0x368
000039C6  FE0EC86D          dec byte [0x6dc8]
000039CA  8A1EC86D          mov bl,[0x6dc8]
000039CE  FEC3              inc bl
000039D0  FECB              dec bl
000039D2  7802              js 0x39d6
000039D4  EBB8              jmp short 0x398e
000039D6  C3                ret
000039D7  0000              add [bx+si],al
000039D9  0000              add [bx+si],al
000039DB  0000              add [bx+si],al
000039DD  0000              add [bx+si],al
000039DF  0000              add [bx+si],al
000039E1  0000              add [bx+si],al
000039E3  0000              add [bx+si],al
000039E5  0000              add [bx+si],al
000039E7  0000              add [bx+si],al
000039E9  0103              add [bp+di],ax
000039EB  0302              add ax,[bp+si]
000039ED  0201              add al,[bx+di]
000039EF  0000              add [bx+si],al
000039F1  0000              add [bx+si],al
000039F3  0000              add [bx+si],al
000039F5  0000              add [bx+si],al
000039F7  0000              add [bx+si],al
000039F9  0000              add [bx+si],al
000039FB  0000              add [bx+si],al
000039FD  0000              add [bx+si],al
000039FF  0000              add [bx+si],al
00003A01  0000              add [bx+si],al
00003A03  0000              add [bx+si],al
00003A05  0000              add [bx+si],al
00003A07  0000              add [bx+si],al
00003A09  0000              add [bx+si],al
00003A0B  0000              add [bx+si],al
00003A0D  0000              add [bx+si],al
00003A0F  0102              add [bp+si],ax
00003A11  0203              add al,[bp+di]
00003A13  07                pop es
00003A14  07                pop es
00003A15  06                push es
00003A16  06                push es
00003A17  050504            add ax,0x405
00003A1A  0404              add al,0x4
00003A1C  0404              add al,0x4
00003A1E  0404              add al,0x4
00003A20  0404              add al,0x4
00003A22  0404              add al,0x4
00003A24  0404              add al,0x4
00003A26  0404              add al,0x4
00003A28  0404              add al,0x4
00003A2A  0404              add al,0x4
00003A2C  0404              add al,0x4
00003A2E  0404              add al,0x4
00003A30  0404              add al,0x4
00003A32  0404              add al,0x4
00003A34  0404              add al,0x4
00003A36  0405              add al,0x5
00003A38  06                push es
00003A39  06                push es
00003A3A  07                pop es
00003A3B  07                pop es
00003A3C  3A7155            cmp dh,[bx+di+0x55]
00003A3F  7168              jno 0x3aa9
00003A41  7173              jno 0x3ab6
00003A43  7176              jno 0x3abb
00003A45  7191              jno 0x39d8
00003A47  71A4              jno 0x39ed
00003A49  71AF              jno 0x39fa
00003A4B  71FE              jno 0x3a4b
00003A4D  0E                push cs
00003A4E  E93975            jmp word 0xaf8a
00003A51  03EB              add bp,bx
00003A53  0290C3B0          add dl,[bx+si-0x4f3d]
00003A57  02A2E939          add ah,[bp+si+0x39e9]
00003A5B  B000              mov al,0x0
00003A5D  FEC0              inc al
00003A5F  FEC8              dec al
00003A61  A2A415            mov [0x15a4],al
00003A64  A0D739            mov al,[0x39d7]
00003A67  FEC0              inc al
00003A69  FEC8              dec al
00003A6B  7403              jz 0x3a70
00003A6D  EB6B              jmp short 0x3ada
00003A6F  90                nop
00003A70  B001              mov al,0x1
00003A72  A2D739            mov [0x39d7],al
00003A75  B304              mov bl,0x4
00003A77  881EE739          mov [0x39e7],bl
00003A7B  B000              mov al,0x0
00003A7D  A2E839            mov [0x39e8],al
00003A80  8887D839          mov [bx+0x39d8],al
00003A84  0410              add al,0x10
00003A86  A2E839            mov [0x39e8],al
00003A89  8A87D839          mov al,[bx+0x39d8]
00003A8D  8AC8              mov cl,al
00003A8F  8BF1              mov si,cx
00003A91  8A842431          mov al,[si+0x3124]
00003A95  A29B6D            mov [0x6d9b],al
00003A98  8BF1              mov si,cx
00003A9A  8A847631          mov al,[si+0x3176]
00003A9E  A29C6D            mov [0x6d9c],al
00003AA1  8BF1              mov si,cx
00003AA3  8A84EA39          mov al,[si+0x39ea]
00003AA7  D0E0              shl al,1
00003AA9  8AC8              mov cl,al
00003AAB  8BF1              mov si,cx
00003AAD  8A843C3A          mov al,[si+0x3a3c]
00003AB1  A2976D            mov [0x6d97],al
00003AB4  FEC1              inc cl
00003AB6  8BF1              mov si,cx
00003AB8  8A843C3A          mov al,[si+0x3a3c]
00003ABC  FEC0              inc al
00003ABE  FEC8              dec al
00003AC0  A2986D            mov [0x6d98],al
00003AC3  E8B8E0            call word 0x1b7e
00003AC6  A0E839            mov al,[0x39e8]
00003AC9  FE0EE739          dec byte [0x39e7]
00003ACD  8A1EE739          mov bl,[0x39e7]
00003AD1  FEC3              inc bl
00003AD3  FECB              dec bl
00003AD5  7802              js 0x3ad9
00003AD7  EBA7              jmp short 0x3a80
00003AD9  C3                ret
00003ADA  B304              mov bl,0x4
00003ADC  881EE739          mov [0x39e7],bl
00003AE0  8A87D839          mov al,[bx+0x39d8]
00003AE4  8AC8              mov cl,al
00003AE6  8BF1              mov si,cx
00003AE8  8A842431          mov al,[si+0x3124]
00003AEC  A29B6D            mov [0x6d9b],al
00003AEF  8887E239          mov [bx+0x39e2],al
00003AF3  8BF1              mov si,cx
00003AF5  8A847631          mov al,[si+0x3176]
00003AF9  A29C6D            mov [0x6d9c],al
00003AFC  8887DD39          mov [bx+0x39dd],al
00003B00  8BF1              mov si,cx
00003B02  8A84EA39          mov al,[si+0x39ea]
00003B06  D0E0              shl al,1
00003B08  8AC8              mov cl,al
00003B0A  8BF1              mov si,cx
00003B0C  8A843C3A          mov al,[si+0x3a3c]
00003B10  A2976D            mov [0x6d97],al
00003B13  FEC1              inc cl
00003B15  8BF1              mov si,cx
00003B17  8A843C3A          mov al,[si+0x3a3c]
00003B1B  FEC0              inc al
00003B1D  FEC8              dec al
00003B1F  A2986D            mov [0x6d98],al
00003B22  E859E0            call word 0x1b7e
00003B25  8A1EE739          mov bl,[0x39e7]
00003B29  FEC3              inc bl
00003B2B  FECB              dec bl
00003B2D  E81100            call word 0x3b41
00003B30  FE0EE739          dec byte [0x39e7]
00003B34  8A1EE739          mov bl,[0x39e7]
00003B38  FEC3              inc bl
00003B3A  FECB              dec bl
00003B3C  7802              js 0x3b40
00003B3E  EBA0              jmp short 0x3ae0
00003B40  C3                ret
00003B41  8A87D839          mov al,[bx+0x39d8]
00003B45  0401              add al,0x1
00003B47  3C52              cmp al,0x52
00003B49  F5                cmc
00003B4A  7403              jz 0x3b4f
00003B4C  EB03              jmp short 0x3b51
00003B4E  90                nop
00003B4F  B000              mov al,0x0
00003B51  8887D839          mov [bx+0x39d8],al
00003B55  8AC8              mov cl,al
00003B57  8BF1              mov si,cx
00003B59  8A842431          mov al,[si+0x3124]
00003B5D  A29B6D            mov [0x6d9b],al
00003B60  8BF1              mov si,cx
00003B62  8A847631          mov al,[si+0x3176]
00003B66  A29C6D            mov [0x6d9c],al
00003B69  8BF1              mov si,cx
00003B6B  8A84EA39          mov al,[si+0x39ea]
00003B6F  D0E0              shl al,1
00003B71  8AC8              mov cl,al
00003B73  8BF1              mov si,cx
00003B75  8A843C3A          mov al,[si+0x3a3c]
00003B79  A2976D            mov [0x6d97],al
00003B7C  FEC1              inc cl
00003B7E  8BF1              mov si,cx
00003B80  8A843C3A          mov al,[si+0x3a3c]
00003B84  FEC0              inc al
00003B86  FEC8              dec al
00003B88  A2986D            mov [0x6d98],al
00003B8B  E8F0DF            call word 0x1b7e
00003B8E  C3                ret
00003B8F  B305              mov bl,0x5
00003B91  8A87A038          mov al,[bx+0x38a0]
00003B95  FEC0              inc al
00003B97  FEC8              dec al
00003B99  7503              jnz 0x3b9e
00003B9B  EB26              jmp short 0x3bc3
00003B9D  90                nop
00003B9E  8B36B46D          mov si,[0x6db4]
00003BA2  8A00              mov al,[bx+si]
00003BA4  A22B5A            mov [0x5a2b],al
00003BA7  8B36B66D          mov si,[0x6db6]
00003BAB  8A00              mov al,[bx+si]
00003BAD  FEC0              inc al
00003BAF  FEC8              dec al
00003BB1  A22C5A            mov [0x5a2c],al
00003BB4  E8761E            call word 0x5a2d
00003BB7  A02A5A            mov al,[0x5a2a]
00003BBA  FEC0              inc al
00003BBC  FEC8              dec al
00003BBE  7403              jz 0x3bc3
00003BC0  EB08              jmp short 0x3bca
00003BC2  90                nop
00003BC3  FECB              dec bl
00003BC5  7802              js 0x3bc9
00003BC7  EBC8              jmp short 0x3b91
00003BC9  C3                ret
00003BCA  B000              mov al,0x0
00003BCC  FEC0              inc al
00003BCE  FEC8              dec al
00003BD0  8887A038          mov [bx+0x38a0],al
00003BD4  B80622            mov ax,0x2206
00003BD7  E8210B            call word 0x46fb
00003BDA  A02B5A            mov al,[0x5a2b]
00003BDD  8AC8              mov cl,al
00003BDF  8BF1              mov si,cx
00003BE1  8A849428          mov al,[si+0x2894]
00003BE5  A29B6D            mov [0x6d9b],al
00003BE8  0401              add al,0x1
00003BEA  A2651B            mov [0x1b65],al
00003BED  A02C5A            mov al,[0x5a2c]
00003BF0  A29C6D            mov [0x6d9c],al
00003BF3  2C10              sub al,0x10
00003BF5  F5                cmc
00003BF6  A2641B            mov [0x1b64],al
00003BF9  C706976D0014      mov word [0x6d97],0x1400
00003BFF  B001              mov al,0x1
00003C01  FEC0              inc al
00003C03  FEC8              dec al
00003C05  A2671B            mov [0x1b67],al
00003C08  E80CC7            call word 0x317
00003C0B  B000              mov al,0x0
00003C0D  A20225            mov [0x2502],al
00003C10  B002              mov al,0x2
00003C12  A20125            mov [0x2501],al
00003C15  B005              mov al,0x5
00003C17  FEC0              inc al
00003C19  FEC8              dec al
00003C1B  A20025            mov [0x2500],al
00003C1E  E807E9            call word 0x2528
00003C21  C3                ret
00003C22  0000              add [bx+si],al
00003C24  0000              add [bx+si],al
00003C26  0000              add [bx+si],al
00003C28  0000              add [bx+si],al
00003C2A  0000              add [bx+si],al
00003C2C  0000              add [bx+si],al
00003C2E  0000              add [bx+si],al
00003C30  00A02E3C          add [bx+si+0x3c2e],ah
00003C34  FEC0              inc al
00003C36  FEC8              dec al
00003C38  7503              jnz 0x3c3d
00003C3A  EB02              jmp short 0x3c3e
00003C3C  90                nop
00003C3D  C3                ret
00003C3E  8A1E2F3C          mov bl,[0x3c2f]
00003C42  8A87283C          mov al,[bx+0x3c28]
00003C46  3C01              cmp al,0x1
00003C48  F5                cmc
00003C49  7403              jz 0x3c4e
00003C4B  EB26              jmp short 0x3c73
00003C4D  90                nop
00003C4E  8B36D66D          mov si,[0x6dd6]
00003C52  8A00              mov al,[bx+si]
00003C54  A22B5A            mov [0x5a2b],al
00003C57  8B36D86D          mov si,[0x6dd8]
00003C5B  8A00              mov al,[bx+si]
00003C5D  FEC0              inc al
00003C5F  FEC8              dec al
00003C61  A22C5A            mov [0x5a2c],al
00003C64  E8C61D            call word 0x5a2d
00003C67  A02A5A            mov al,[0x5a2a]
00003C6A  FEC0              inc al
00003C6C  FEC8              dec al
00003C6E  7403              jz 0x3c73
00003C70  EB08              jmp short 0x3c7a
00003C72  90                nop
00003C73  FECB              dec bl
00003C75  7802              js 0x3c79
00003C77  EBC9              jmp short 0x3c42
00003C79  C3                ret
00003C7A  B001              mov al,0x1
00003C7C  A22E3C            mov [0x3c2e],al
00003C7F  881E303C          mov [0x3c30],bl
00003C83  B002              mov al,0x2
00003C85  FEC0              inc al
00003C87  FEC8              dec al
00003C89  8887283C          mov [bx+0x3c28],al
00003C8D  B80622            mov ax,0x2206
00003C90  E8680A            call word 0x46fb
00003C93  B002              mov al,0x2
00003C95  A20125            mov [0x2501],al
00003C98  B005              mov al,0x5
00003C9A  FEC0              inc al
00003C9C  FEC8              dec al
00003C9E  A20025            mov [0x2500],al
00003CA1  E884E8            call word 0x2528
00003CA4  A02B5A            mov al,[0x5a2b]
00003CA7  A29B6D            mov [0x6d9b],al
00003CAA  A29D6D            mov [0x6d9d],al
00003CAD  A02C5A            mov al,[0x5a2c]
00003CB0  A29C6D            mov [0x6d9c],al
00003CB3  A29E6D            mov [0x6d9e],al
00003CB6  A06B72            mov al,[0x726b]
00003CB9  A29A6D            mov [0x6d9a],al
00003CBC  A2273C            mov [0x3c27],al
00003CBF  A06C72            mov al,[0x726c]
00003CC2  FEC0              inc al
00003CC4  FEC8              dec al
00003CC6  A2986D            mov [0x6d98],al
00003CC9  E89CC6            call word 0x368
00003CCC  A0223C            mov al,[0x3c22]
00003CCF  A2243C            mov [0x3c24],al
00003CD2  A0233C            mov al,[0x3c23]
00003CD5  A2253C            mov [0x3c25],al
00003CD8  A0650B            mov al,[0xb65]
00003CDB  2C05              sub al,0x5
00003CDD  F5                cmc
00003CDE  A2233C            mov [0x3c23],al
00003CE1  A0600B            mov al,[0xb60]
00003CE4  3C10              cmp al,0x10
00003CE6  F5                cmc
00003CE7  7303              jnc 0x3cec
00003CE9  EB04              jmp short 0x3cef
00003CEB  90                nop
00003CEC  EB0F              jmp short 0x3cfd
00003CEE  90                nop
00003CEF  A06D0B            mov al,[0xb6d]
00003CF2  3C03              cmp al,0x3
00003CF4  F5                cmc
00003CF5  7503              jnz 0x3cfa
00003CF7  EB0F              jmp short 0x3d08
00003CF9  90                nop
00003CFA  EB01              jmp short 0x3cfd
00003CFC  90                nop
00003CFD  A0600B            mov al,[0xb60]
00003D00  040E              add al,0xe
00003D02  A2223C            mov [0x3c22],al
00003D05  EB0A              jmp short 0x3d11
00003D07  90                nop
00003D08  A0600B            mov al,[0xb60]
00003D0B  2C0E              sub al,0xe
00003D0D  F5                cmc
00003D0E  A2223C            mov [0x3c22],al
00003D11  C3                ret
00003D12  A02E3C            mov al,[0x3c2e]
00003D15  FEC0              inc al
00003D17  FEC8              dec al
00003D19  7403              jz 0x3d1e
00003D1B  EB02              jmp short 0x3d1f
00003D1D  90                nop
00003D1E  C3                ret
00003D1F  E8AAFF            call word 0x3ccc
00003D22  A0243C            mov al,[0x3c24]
00003D25  A29D6D            mov [0x6d9d],al
00003D28  A0223C            mov al,[0x3c22]
00003D2B  A29B6D            mov [0x6d9b],al
00003D2E  A0253C            mov al,[0x3c25]
00003D31  A29E6D            mov [0x6d9e],al
00003D34  A0233C            mov al,[0x3c23]
00003D37  A29C6D            mov [0x6d9c],al
00003D3A  A0273C            mov al,[0x3c27]
00003D3D  A29A6D            mov [0x6d9a],al
00003D40  A06C72            mov al,[0x726c]
00003D43  FEC0              inc al
00003D45  FEC8              dec al
00003D47  A2986D            mov [0x6d98],al
00003D4A  E81BC6            call word 0x368
00003D4D  A06C72            mov al,[0x726c]
00003D50  FEC0              inc al
00003D52  FEC8              dec al
00003D54  A2273C            mov [0x3c27],al
00003D57  C3                ret
00003D58  0000              add [bx+si],al
00003D5A  0000              add [bx+si],al
00003D5C  0000              add [bx+si],al
00003D5E  0000              add [bx+si],al
00003D60  0000              add [bx+si],al
00003D62  0000              add [bx+si],al
00003D64  A02E3C            mov al,[0x3c2e]
00003D67  FEC0              inc al
00003D69  FEC8              dec al
00003D6B  7503              jnz 0x3d70
00003D6D  EB02              jmp short 0x3d71
00003D6F  90                nop
00003D70  C3                ret
00003D71  B304              mov bl,0x4
00003D73  8A875C3D          mov al,[bx+0x3d5c]
00003D77  FEC0              inc al
00003D79  FEC8              dec al
00003D7B  7403              jz 0x3d80
00003D7D  EB22              jmp short 0x3da1
00003D7F  90                nop
00003D80  8A874D1E          mov al,[bx+0x1e4d]
00003D84  A22B5A            mov [0x5a2b],al
00003D87  8A87B315          mov al,[bx+0x15b3]
00003D8B  FEC0              inc al
00003D8D  FEC8              dec al
00003D8F  A22C5A            mov [0x5a2c],al
00003D92  E8981C            call word 0x5a2d
00003D95  A02A5A            mov al,[0x5a2a]
00003D98  FEC0              inc al
00003D9A  FEC8              dec al
00003D9C  7403              jz 0x3da1
00003D9E  EB08              jmp short 0x3da8
00003DA0  90                nop
00003DA1  FECB              dec bl
00003DA3  7402              jz 0x3da7
00003DA5  EBCC              jmp short 0x3d73
00003DA7  C3                ret
00003DA8  B001              mov al,0x1
00003DAA  A22E3C            mov [0x3c2e],al
00003DAD  88875C3D          mov [bx+0x3d5c],al
00003DB1  8AC3              mov al,bl
00003DB3  A23640            mov [0x4036],al
00003DB6  8A0E2B5A          mov cl,[0x5a2b]
00003DBA  8BF1              mov si,cx
00003DBC  8A849428          mov al,[si+0x2894]
00003DC0  A29B6D            mov [0x6d9b],al
00003DC3  0401              add al,0x1
00003DC5  A2651B            mov [0x1b65],al
00003DC8  A02C5A            mov al,[0x5a2c]
00003DCB  A29C6D            mov [0x6d9c],al
00003DCE  2C10              sub al,0x10
00003DD0  F5                cmc
00003DD1  A2641B            mov [0x1b64],al
00003DD4  8A875472          mov al,[bx+0x7254]
00003DD8  32E4              xor ah,ah
00003DDA  050019            add ax,0x1900
00003DDD  A3976D            mov [0x6d97],ax
00003DE0  B001              mov al,0x1
00003DE2  FEC0              inc al
00003DE4  FEC8              dec al
00003DE6  A2671B            mov [0x1b67],al
00003DE9  E82BC5            call word 0x317
00003DEC  A06B72            mov al,[0x726b]
00003DEF  A2633D            mov [0x3d63],al
00003DF2  B001              mov al,0x1
00003DF4  FEC0              inc al
00003DF6  FEC8              dec al
00003DF8  A20125            mov [0x2501],al
00003DFB  E82AE7            call word 0x2528
00003DFE  B80622            mov ax,0x2206
00003E01  E8F708            call word 0x46fb
00003E04  A0583D            mov al,[0x3d58]
00003E07  A25A3D            mov [0x3d5a],al
00003E0A  A0593D            mov al,[0x3d59]
00003E0D  A25B3D            mov [0x3d5b],al
00003E10  A0650B            mov al,[0xb65]
00003E13  2C05              sub al,0x5
00003E15  F5                cmc
00003E16  A2593D            mov [0x3d59],al
00003E19  A0600B            mov al,[0xb60]
00003E1C  3CF0              cmp al,0xf0
00003E1E  F5                cmc
00003E1F  7303              jnc 0x3e24
00003E21  EB22              jmp short 0x3e45
00003E23  90                nop
00003E24  3C10              cmp al,0x10
00003E26  F5                cmc
00003E27  7203              jc 0x3e2c
00003E29  EB0F              jmp short 0x3e3a
00003E2B  90                nop
00003E2C  A06D0B            mov al,[0xb6d]
00003E2F  3C01              cmp al,0x1
00003E31  F5                cmc
00003E32  7503              jnz 0x3e37
00003E34  EB04              jmp short 0x3e3a
00003E36  90                nop
00003E37  EB0C              jmp short 0x3e45
00003E39  90                nop
00003E3A  A0600B            mov al,[0xb60]
00003E3D  040E              add al,0xe
00003E3F  A2583D            mov [0x3d58],al
00003E42  EB0A              jmp short 0x3e4e
00003E44  90                nop
00003E45  A0600B            mov al,[0xb60]
00003E48  2C0E              sub al,0xe
00003E4A  F5                cmc
00003E4B  A2583D            mov [0x3d58],al
00003E4E  C3                ret
00003E4F  A0934F            mov al,[0x4f93]
00003E52  FEC0              inc al
00003E54  FEC8              dec al
00003E56  7503              jnz 0x3e5b
00003E58  EB02              jmp short 0x3e5c
00003E5A  90                nop
00003E5B  C3                ret
00003E5C  A02E3C            mov al,[0x3c2e]
00003E5F  FEC0              inc al
00003E61  FEC8              dec al
00003E63  7403              jz 0x3e68
00003E65  EB02              jmp short 0x3e69
00003E67  90                nop
00003E68  C3                ret
00003E69  A03040            mov al,[0x4030]
00003E6C  FEC0              inc al
00003E6E  FEC8              dec al
00003E70  7503              jnz 0x3e75
00003E72  EB02              jmp short 0x3e76
00003E74  90                nop
00003E75  C3                ret
00003E76  E88BFF            call word 0x3e04
00003E79  A05A3D            mov al,[0x3d5a]
00003E7C  A29D6D            mov [0x6d9d],al
00003E7F  A0583D            mov al,[0x3d58]
00003E82  A29B6D            mov [0x6d9b],al
00003E85  A05B3D            mov al,[0x3d5b]
00003E88  A29E6D            mov [0x6d9e],al
00003E8B  A0593D            mov al,[0x3d59]
00003E8E  A29C6D            mov [0x6d9c],al
00003E91  A0633D            mov al,[0x3d63]
00003E94  A29A6D            mov [0x6d9a],al
00003E97  A06872            mov al,[0x7268]
00003E9A  FEC0              inc al
00003E9C  FEC8              dec al
00003E9E  A2986D            mov [0x6d98],al
00003EA1  E8C4C4            call word 0x368
00003EA4  A06872            mov al,[0x7268]
00003EA7  FEC0              inc al
00003EA9  FEC8              dec al
00003EAB  A2633D            mov [0x3d63],al
00003EAE  C3                ret
00003EAF  0000              add [bx+si],al
00003EB1  0001              add [bx+di],al
00003EB3  0000              add [bx+si],al
00003EB5  0000              add [bx+si],al
00003EB7  0000              add [bx+si],al
00003EB9  050400            add ax,0x4
00003EBC  0000              add [bx+si],al
00003EBE  0000              add [bx+si],al
00003EC0  0A09              or cl,[bx+di]
00003EC2  0807              or [bx],al
00003EC4  06                push es
00003EC5  0000              add [bx+si],al
00003EC7  0000              add [bx+si],al
00003EC9  0030              add [bx+si],dh
00003ECB  30FE              xor dh,bh
00003ECD  0E                push cs
00003ECE  CB                retf
00003ECF  3E7503            ds jnz 0x3ed5
00003ED2  EB04              jmp short 0x3ed8
00003ED4  90                nop
00003ED5  EB3A              jmp short 0x3f11
00003ED7  90                nop
00003ED8  A0CA3E            mov al,[0x3eca]
00003EDB  A2CB3E            mov [0x3ecb],al
00003EDE  B100              mov cl,0x0
00003EE0  F9                stc
00003EE1  8BF1              mov si,cx
00003EE3  8A84BB3E          mov al,[si+0x3ebb]
00003EE7  F5                cmc
00003EE8  8BF1              mov si,cx
00003EEA  1A840025          sbb al,[si+0x2500]
00003EEE  F5                cmc
00003EEF  7803              js 0x3ef4
00003EF1  EB08              jmp short 0x3efb
00003EF3  90                nop
00003EF4  F8                clc
00003EF5  B009              mov al,0x9
00003EF7  FEC0              inc al
00003EF9  FEC8              dec al
00003EFB  8BF1              mov si,cx
00003EFD  8884BB3E          mov [si+0x3ebb],al
00003F01  9C                pushfw
00003F02  FEC1              inc cl
00003F04  80F904            cmp cl,0x4
00003F07  F5                cmc
00003F08  7503              jnz 0x3f0d
00003F0A  EB04              jmp short 0x3f10
00003F0C  90                nop
00003F0D  9D                popfw
00003F0E  EBD1              jmp short 0x3ee1
00003F10  9D                popfw
00003F11  B000              mov al,0x0
00003F13  FEC0              inc al
00003F15  FEC8              dec al
00003F17  A20025            mov [0x2500],al
00003F1A  A20125            mov [0x2501],al
00003F1D  A20225            mov [0x2502],al
00003F20  A20325            mov [0x2503],al
00003F23  A20425            mov [0x2504],al
00003F26  A20525            mov [0x2505],al
00003F29  E80400            call word 0x3f30
00003F2C  E83A00            call word 0x3f69
00003F2F  C3                ret
00003F30  B104              mov cl,0x4
00003F32  880EC86D          mov [0x6dc8],cl
00003F36  8BF1              mov si,cx
00003F38  8A84C03E          mov al,[si+0x3ec0]
00003F3C  A2653F            mov [0x3f65],al
00003F3F  8BF1              mov si,cx
00003F41  8A84BB3E          mov al,[si+0x3ebb]
00003F45  D0D4              rcl ah,1
00003F47  0C30              or al,0x30
00003F49  D0DC              rcr ah,1
00003F4B  A2673F            mov [0x3f67],al
00003F4E  B8653F            mov ax,0x3f65
00003F51  E832DF            call word 0x1e86
00003F54  FE0EC86D          dec byte [0x6dc8]
00003F58  8A0EC86D          mov cl,[0x6dc8]
00003F5C  FEC1              inc cl
00003F5E  FEC9              dec cl
00003F60  7802              js 0x3f64
00003F62  EBD2              jmp short 0x3f36
00003F64  C3                ret
00003F65  0000              add [bx+si],al
00003F67  3000              xor [bx+si],al
00003F69  B104              mov cl,0x4
00003F6B  8BF1              mov si,cx
00003F6D  8A84BB3E          mov al,[si+0x3ebb]
00003F71  0206B53E          add al,[0x3eb5]
00003F75  A2B53E            mov [0x3eb5],al
00003F78  FEC9              dec cl
00003F7A  7802              js 0x3f7e
00003F7C  EBED              jmp short 0x3f6b
00003F7E  A0B53E            mov al,[0x3eb5]
00003F81  FEC0              inc al
00003F83  FEC8              dec al
00003F85  7503              jnz 0x3f8a
00003F87  EB49              jmp short 0x3fd2
00003F89  90                nop
00003F8A  B000              mov al,0x0
00003F8C  A2B53E            mov [0x3eb5],al
00003F8F  B104              mov cl,0x4
00003F91  8BF1              mov si,cx
00003F93  8A84AF3E          mov al,[si+0x3eaf]
00003F97  8BF1              mov si,cx
00003F99  3A84BB3E          cmp al,[si+0x3ebb]
00003F9D  F5                cmc
00003F9E  7203              jc 0x3fa3
00003FA0  EB0C              jmp short 0x3fae
00003FA2  90                nop
00003FA3  7403              jz 0x3fa8
00003FA5  EB08              jmp short 0x3faf
00003FA7  90                nop
00003FA8  FEC9              dec cl
00003FAA  7802              js 0x3fae
00003FAC  EBE3              jmp short 0x3f91
00003FAE  C3                ret
00003FAF  A0B83E            mov al,[0x3eb8]
00003FB2  FEC0              inc al
00003FB4  FEC8              dec al
00003FB6  7503              jnz 0x3fbb
00003FB8  EB02              jmp short 0x3fbc
00003FBA  90                nop
00003FBB  C3                ret
00003FBC  B8E948            mov ax,0x48e9
00003FBF  E83907            call word 0x46fb
00003FC2  B001              mov al,0x1
00003FC4  FEC0              inc al
00003FC6  FEC8              dec al
00003FC8  A2B83E            mov [0x3eb8],al
00003FCB  B8E948            mov ax,0x48e9
00003FCE  E82A07            call word 0x46fb
00003FD1  C3                ret
00003FD2  A0B73E            mov al,[0x3eb7]
00003FD5  FEC0              inc al
00003FD7  FEC8              dec al
00003FD9  7403              jz 0x3fde
00003FDB  EB04              jmp short 0x3fe1
00003FDD  90                nop
00003FDE  E99CF6            jmp word 0x367d
00003FE1  B001              mov al,0x1
00003FE3  FEC0              inc al
00003FE5  FEC8              dec al
00003FE7  A2B63E            mov [0x3eb6],al
00003FEA  C3                ret
00003FEB  A0B63E            mov al,[0x3eb6]
00003FEE  FEC0              inc al
00003FF0  FEC8              dec al
00003FF2  7503              jnz 0x3ff7
00003FF4  EB02              jmp short 0x3ff8
00003FF6  90                nop
00003FF7  C3                ret
00003FF8  B001              mov al,0x1
00003FFA  FEC0              inc al
00003FFC  FEC8              dec al
00003FFE  A20225            mov [0x2502],al
00004001  E8DAFE            call word 0x3ede
00004004  E87821            call word 0x617f
00004007  B001              mov al,0x1
00004009  FEC0              inc al
0000400B  FEC8              dec al
0000400D  A20225            mov [0x2502],al
00004010  E815E5            call word 0x2528
00004013  B080              mov al,0x80
00004015  FEC0              inc al
00004017  FEC8              dec al
00004019  E8C3C1            call word 0x1df
0000401C  B85065            mov ax,0x6550
0000401F  E86825            call word 0x658a
00004022  EBC7              jmp short 0x3feb
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
0000403C  00A03040          add [bx+si+0x4030],ah
00004040  FEC0              inc al
00004042  FEC8              dec al
00004044  7503              jnz 0x4049
00004046  EB02              jmp short 0x404a
00004048  90                nop
00004049  C3                ret
0000404A  A02E3C            mov al,[0x3c2e]
0000404D  FEC0              inc al
0000404F  FEC8              dec al
00004051  7403              jz 0x4056
00004053  EB02              jmp short 0x4057
00004055  90                nop
00004056  C3                ret
00004057  B304              mov bl,0x4
00004059  881EC86D          mov [0x6dc8],bl
0000405D  8A873140          mov al,[bx+0x4031]
00004061  FEC0              inc al
00004063  FEC8              dec al
00004065  7403              jz 0x406a
00004067  EB0E              jmp short 0x4077
00004069  90                nop
0000406A  A0583D            mov al,[0x3d58]
0000406D  3A872834          cmp al,[bx+0x3428]
00004071  F5                cmc
00004072  7503              jnz 0x4077
00004074  EB08              jmp short 0x407e
00004076  90                nop
00004077  FECB              dec bl
00004079  7402              jz 0x407d
0000407B  EBDC              jmp short 0x4059
0000407D  C3                ret
0000407E  8A87B315          mov al,[bx+0x15b3]
00004082  3A06650B          cmp al,[0xb65]
00004086  F5                cmc
00004087  7503              jnz 0x408c
00004089  EB03              jmp short 0x408e
0000408B  90                nop
0000408C  EBE9              jmp short 0x4077
0000408E  B000              mov al,0x0
00004090  A22E3C            mov [0x3c2e],al
00004093  B001              mov al,0x1
00004095  88873140          mov [bx+0x4031],al
00004099  A03640            mov al,[0x4036]
0000409C  88873740          mov [bx+0x4037],al
000040A0  A06B72            mov al,[0x726b]
000040A3  A29A6D            mov [0x6d9a],al
000040A6  A06872            mov al,[0x7268]
000040A9  A2986D            mov [0x6d98],al
000040AC  A0583D            mov al,[0x3d58]
000040AF  A29B6D            mov [0x6d9b],al
000040B2  A29D6D            mov [0x6d9d],al
000040B5  A0593D            mov al,[0x3d59]
000040B8  FEC0              inc al
000040BA  FEC8              dec al
000040BC  A29C6D            mov [0x6d9c],al
000040BF  A29E6D            mov [0x6d9e],al
000040C2  E8A3C2            call word 0x368
000040C5  8A1EC86D          mov bl,[0x6dc8]
000040C9  8A872834          mov al,[bx+0x3428]
000040CD  8AC8              mov cl,al
000040CF  8BF1              mov si,cx
000040D1  8A849428          mov al,[si+0x2894]
000040D5  A29B6D            mov [0x6d9b],al
000040D8  0401              add al,0x1
000040DA  A2651B            mov [0x1b65],al
000040DD  8A87B915          mov al,[bx+0x15b9]
000040E1  A29C6D            mov [0x6d9c],al
000040E4  2C08              sub al,0x8
000040E6  F5                cmc
000040E7  A2641B            mov [0x1b64],al
000040EA  C706976D0034      mov word [0x6d97],0x3400
000040F0  E824C2            call word 0x317
000040F3  B002              mov al,0x2
000040F5  A20125            mov [0x2501],al
000040F8  B005              mov al,0x5
000040FA  FEC0              inc al
000040FC  FEC8              dec al
000040FE  A20025            mov [0x2500],al
00004101  E824E4            call word 0x2528
00004104  B82F49            mov ax,0x492f
00004107  E8F105            call word 0x46fb
0000410A  C3                ret
0000410B  A03040            mov al,[0x4030]
0000410E  FEC0              inc al
00004110  FEC8              dec al
00004112  7403              jz 0x4117
00004114  EB02              jmp short 0x4118
00004116  90                nop
00004117  C3                ret
00004118  B304              mov bl,0x4
0000411A  8A873140          mov al,[bx+0x4031]
0000411E  FEC0              inc al
00004120  FEC8              dec al
00004122  7503              jnz 0x4127
00004124  EB26              jmp short 0x414c
00004126  90                nop
00004127  3C02              cmp al,0x2
00004129  F5                cmc
0000412A  7503              jnz 0x412f
0000412C  EB1E              jmp short 0x414c
0000412E  90                nop
0000412F  8A872834          mov al,[bx+0x3428]
00004133  3A068837          cmp al,[0x3788]
00004137  F5                cmc
00004138  7203              jc 0x413d
0000413A  EB04              jmp short 0x4140
0000413C  90                nop
0000413D  EB0D              jmp short 0x414c
0000413F  90                nop
00004140  040E              add al,0xe
00004142  3A068837          cmp al,[0x3788]
00004146  F5                cmc
00004147  7303              jnc 0x414c
00004149  EB08              jmp short 0x4153
0000414B  90                nop
0000414C  FECB              dec bl
0000414E  7402              jz 0x4152
00004150  EBC8              jmp short 0x411a
00004152  C3                ret
00004153  8A87B315          mov al,[bx+0x15b3]
00004157  3A06650B          cmp al,[0xb65]
0000415B  F5                cmc
0000415C  7402              jz 0x4160
0000415E  EBEC              jmp short 0x414c
00004160  B002              mov al,0x2
00004162  88873140          mov [bx+0x4031],al
00004166  8A873740          mov al,[bx+0x4037]
0000416A  8AC8              mov cl,al
0000416C  B002              mov al,0x2
0000416E  8BF1              mov si,cx
00004170  88845C3D          mov [si+0x3d5c],al
00004174  8A87B915          mov al,[bx+0x15b9]
00004178  A29C6D            mov [0x6d9c],al
0000417B  2C08              sub al,0x8
0000417D  F5                cmc
0000417E  A2641B            mov [0x1b64],al
00004181  8A872834          mov al,[bx+0x3428]
00004185  8AC8              mov cl,al
00004187  8BF1              mov si,cx
00004189  8A849428          mov al,[si+0x2894]
0000418D  A29B6D            mov [0x6d9b],al
00004190  0401              add al,0x1
00004192  A2651B            mov [0x1b65],al
00004195  A09B6D            mov al,[0x6d9b]
00004198  D0E8              shr al,1
0000419A  8AC8              mov cl,al
0000419C  8BF1              mov si,cx
0000419E  8A841472          mov al,[si+0x7214]
000041A2  32E4              xor ah,ah
000041A4  05001B            add ax,0x1b00
000041A7  A3976D            mov [0x6d97],ax
000041AA  E86AC1            call word 0x317
000041AD  B005              mov al,0x5
000041AF  FEC0              inc al
000041B1  FEC8              dec al
000041B3  A20125            mov [0x2501],al
000041B6  E86FE3            call word 0x2528
000041B9  B82749            mov ax,0x4927
000041BC  E83C05            call word 0x46fb
000041BF  C3                ret
000041C0  0031              add [bx+di],dh
000041C2  00D2              add dl,dl
000041C4  A0650B            mov al,[0xb65]
000041C7  2C10              sub al,0x10
000041C9  F5                cmc
000041CA  A2C86D            mov [0x6dc8],al
000041CD  8A1E4F59          mov bl,[0x594f]
000041D1  8A87C041          mov al,[bx+0x41c0]
000041D5  2C08              sub al,0x8
000041D7  F5                cmc
000041D8  3A06600B          cmp al,[0xb60]
000041DC  F5                cmc
000041DD  7203              jc 0x41e2
000041DF  EB02              jmp short 0x41e3
000041E1  90                nop
000041E2  C3                ret
000041E3  0410              add al,0x10
000041E5  3A06600B          cmp al,[0xb60]
000041E9  F5                cmc
000041EA  7303              jnc 0x41ef
000041EC  EB02              jmp short 0x41f0
000041EE  90                nop
000041EF  C3                ret
000041F0  A04E6A            mov al,[0x6a4e]
000041F3  2C08              sub al,0x8
000041F5  F5                cmc
000041F6  3A06C86D          cmp al,[0x6dc8]
000041FA  F5                cmc
000041FB  7203              jc 0x4200
000041FD  EB02              jmp short 0x4201
000041FF  90                nop
00004200  C3                ret
00004201  A04E6A            mov al,[0x6a4e]
00004204  3A06C86D          cmp al,[0x6dc8]
00004208  F5                cmc
00004209  7303              jnc 0x420e
0000420B  EB02              jmp short 0x420f
0000420D  90                nop
0000420E  C3                ret
0000420F  A0536A            mov al,[0x6a53]
00004212  FEC0              inc al
00004214  FEC8              dec al
00004216  7403              jz 0x421b
00004218  EB09              jmp short 0x4223
0000421A  90                nop
0000421B  E83E28            call word 0x6a5c
0000421E  E84005            call word 0x4761
00004221  EBEC              jmp short 0x420f
00004223  E982F3            jmp word 0x35a8
00004226  A0650B            mov al,[0xb65]
00004229  3C48              cmp al,0x48
0000422B  F5                cmc
0000422C  7203              jc 0x4231
0000422E  EB02              jmp short 0x4232
00004230  90                nop
00004231  C3                ret
00004232  3C28              cmp al,0x28
00004234  F5                cmc
00004235  7303              jnc 0x423a
00004237  EB02              jmp short 0x423b
00004239  90                nop
0000423A  C3                ret
0000423B  A0600B            mov al,[0xb60]
0000423E  3C07              cmp al,0x7
00004240  F5                cmc
00004241  7203              jc 0x4246
00004243  EB02              jmp short 0x4247
00004245  90                nop
00004246  C3                ret
00004247  A06B72            mov al,[0x726b]
0000424A  A29A6D            mov [0x6d9a],al
0000424D  A06B0B            mov al,[0xb6b]
00004250  A2986D            mov [0x6d98],al
00004253  A0600B            mov al,[0xb60]
00004256  A29B6D            mov [0x6d9b],al
00004259  A29D6D            mov [0x6d9d],al
0000425C  A0650B            mov al,[0xb65]
0000425F  FEC0              inc al
00004261  FEC8              dec al
00004263  A29C6D            mov [0x6d9c],al
00004266  A29E6D            mov [0x6d9e],al
00004269  E8FCC0            call word 0x368
0000426C  C706E4650035      mov word [0x65e4],0x3500
00004272  C706E665005C      mov word [0x65e6],0x5c00
00004278  B001              mov al,0x1
0000427A  A26658            mov [0x5866],al
0000427D  B03C              mov al,0x3c
0000427F  FEC0              inc al
00004281  FEC8              dec al
00004283  A2C86D            mov [0x6dc8],al
00004286  E84816            call word 0x58d1
00004289  B020              mov al,0x20
0000428B  FEC0              inc al
0000428D  FEC8              dec al
0000428F  E84DBF            call word 0x1df
00004292  E8D4DF            call word 0x2269
00004295  FE0EC86D          dec byte [0x6dc8]
00004299  7802              js 0x429d
0000429B  EBE9              jmp short 0x4286
0000429D  E9DDF3            jmp word 0x367d
000042A0  B0C2              mov al,0xc2
000042A2  A22B5A            mov [0x5a2b],al
000042A5  B047              mov al,0x47
000042A7  FEC0              inc al
000042A9  FEC8              dec al
000042AB  A22C5A            mov [0x5a2c],al
000042AE  E87C17            call word 0x5a2d
000042B1  A02A5A            mov al,[0x5a2a]
000042B4  FEC0              inc al
000042B6  FEC8              dec al
000042B8  7403              jz 0x42bd
000042BA  EB02              jmp short 0x42be
000042BC  90                nop
000042BD  C3                ret
000042BE  E9E7F2            jmp word 0x35a8
000042C1  B0C2              mov al,0xc2
000042C3  A22B5A            mov [0x5a2b],al
000042C6  B043              mov al,0x43
000042C8  FEC0              inc al
000042CA  FEC8              dec al
000042CC  A22C5A            mov [0x5a2c],al
000042CF  E85B17            call word 0x5a2d
000042D2  A02A5A            mov al,[0x5a2a]
000042D5  FEC0              inc al
000042D7  FEC8              dec al
000042D9  7403              jz 0x42de
000042DB  EB02              jmp short 0x42df
000042DD  90                nop
000042DE  C3                ret
000042DF  E9C6F2            jmp word 0x35a8
000042E2  B02A              mov al,0x2a
000042E4  A22B5A            mov [0x5a2b],al
000042E7  B067              mov al,0x67
000042E9  FEC0              inc al
000042EB  FEC8              dec al
000042ED  A22C5A            mov [0x5a2c],al
000042F0  E83A17            call word 0x5a2d
000042F3  A02A5A            mov al,[0x5a2a]
000042F6  FEC0              inc al
000042F8  FEC8              dec al
000042FA  7403              jz 0x42ff
000042FC  EB02              jmp short 0x4300
000042FE  90                nop
000042FF  C3                ret
00004300  E91A02            jmp word 0x451d
00004303  B300              mov bl,0x0
00004305  8A87E95A          mov al,[bx+0x5ae9]
00004309  3A06600B          cmp al,[0xb60]
0000430D  F5                cmc
0000430E  7303              jnc 0x4313
00004310  EB04              jmp short 0x4316
00004312  90                nop
00004313  EB0E              jmp short 0x4323
00004315  90                nop
00004316  2C10              sub al,0x10
00004318  F5                cmc
00004319  3A06600B          cmp al,[0xb60]
0000431D  F5                cmc
0000431E  7203              jc 0x4323
00004320  EB22              jmp short 0x4344
00004322  90                nop
00004323  B301              mov bl,0x1
00004325  8A87E95A          mov al,[bx+0x5ae9]
00004329  0404              add al,0x4
0000432B  3A06600B          cmp al,[0xb60]
0000432F  F5                cmc
00004330  7303              jnc 0x4335
00004332  EB02              jmp short 0x4336
00004334  90                nop
00004335  C3                ret
00004336  2C10              sub al,0x10
00004338  F5                cmc
00004339  3A06600B          cmp al,[0xb60]
0000433D  F5                cmc
0000433E  7203              jc 0x4343
00004340  EB02              jmp short 0x4344
00004342  90                nop
00004343  C3                ret
00004344  B084              mov al,0x84
00004346  3A06650B          cmp al,[0xb65]
0000434A  F5                cmc
0000434B  7203              jc 0x4350
0000434D  EB02              jmp short 0x4351
0000434F  90                nop
00004350  C3                ret
00004351  B087              mov al,0x87
00004353  3A06650B          cmp al,[0xb65]
00004357  F5                cmc
00004358  7303              jnc 0x435d
0000435A  EB02              jmp short 0x435e
0000435C  90                nop
0000435D  C3                ret
0000435E  E9BC01            jmp word 0x451d
00004361  B0B6              mov al,0xb6
00004363  A22B5A            mov [0x5a2b],al
00004366  B0BC              mov al,0xbc
00004368  FEC0              inc al
0000436A  FEC8              dec al
0000436C  A22C5A            mov [0x5a2c],al
0000436F  E8BB16            call word 0x5a2d
00004372  A02A5A            mov al,[0x5a2a]
00004375  FEC0              inc al
00004377  FEC8              dec al
00004379  7403              jz 0x437e
0000437B  EB02              jmp short 0x437f
0000437D  90                nop
0000437E  C3                ret
0000437F  E99B01            jmp word 0x451d
00004382  B101              mov cl,0x1
00004384  8BF1              mov si,cx
00004386  8A841469          mov al,[si+0x6914]
0000438A  A22B5A            mov [0x5a2b],al
0000438D  8BF1              mov si,cx
0000438F  8A841869          mov al,[si+0x6918]
00004393  FEC0              inc al
00004395  FEC8              dec al
00004397  A22C5A            mov [0x5a2c],al
0000439A  E89016            call word 0x5a2d
0000439D  A02A5A            mov al,[0x5a2a]
000043A0  FEC0              inc al
000043A2  FEC8              dec al
000043A4  7403              jz 0x43a9
000043A6  EB08              jmp short 0x43b0
000043A8  90                nop
000043A9  FEC9              dec cl
000043AB  7802              js 0x43af
000043AD  EBD5              jmp short 0x4384
000043AF  C3                ret
000043B0  E9F5F1            jmp word 0x35a8
000043B3  A0944F            mov al,[0x4f94]
000043B6  FEC0              inc al
000043B8  FEC8              dec al
000043BA  7503              jnz 0x43bf
000043BC  EB02              jmp short 0x43c0
000043BE  90                nop
000043BF  C3                ret
000043C0  A0600B            mov al,[0xb60]
000043C3  3A06A615          cmp al,[0x15a6]
000043C7  F5                cmc
000043C8  7203              jc 0x43cd
000043CA  EB02              jmp short 0x43ce
000043CC  90                nop
000043CD  C3                ret
000043CE  040E              add al,0xe
000043D0  3A06A615          cmp al,[0x15a6]
000043D4  F5                cmc
000043D5  7303              jnc 0x43da
000043D7  EB02              jmp short 0x43db
000043D9  90                nop
000043DA  C3                ret
000043DB  A0650B            mov al,[0xb65]
000043DE  3A06A715          cmp al,[0x15a7]
000043E2  F5                cmc
000043E3  7303              jnc 0x43e8
000043E5  EB02              jmp short 0x43e9
000043E7  90                nop
000043E8  C3                ret
000043E9  2C0E              sub al,0xe
000043EB  F5                cmc
000043EC  3A06A715          cmp al,[0x15a7]
000043F0  F5                cmc
000043F1  7203              jc 0x43f6
000043F3  EB02              jmp short 0x43f7
000043F5  90                nop
000043F6  C3                ret
000043F7  E92301            jmp word 0x451d
000043FA  00A0FA43          add [bx+si+0x43fa],ah
000043FE  FEC0              inc al
00004400  FEC8              dec al
00004402  7503              jnz 0x4407
00004404  EB02              jmp short 0x4408
00004406  90                nop
00004407  C3                ret
00004408  A03040            mov al,[0x4030]
0000440B  FEC0              inc al
0000440D  FEC8              dec al
0000440F  7403              jz 0x4414
00004411  EB36              jmp short 0x4449
00004413  90                nop
00004414  A02E3C            mov al,[0x3c2e]
00004417  FEC0              inc al
00004419  FEC8              dec al
0000441B  7503              jnz 0x4420
0000441D  EB02              jmp short 0x4421
0000441F  90                nop
00004420  C3                ret
00004421  A08837            mov al,[0x3788]
00004424  A22B5A            mov [0x5a2b],al
00004427  A08A37            mov al,[0x378a]
0000442A  FEC0              inc al
0000442C  FEC8              dec al
0000442E  A22C5A            mov [0x5a2c],al
00004431  E8F915            call word 0x5a2d
00004434  A02A5A            mov al,[0x5a2a]
00004437  FEC0              inc al
00004439  FEC8              dec al
0000443B  7403              jz 0x4440
0000443D  EB02              jmp short 0x4441
0000443F  90                nop
00004440  C3                ret
00004441  B001              mov al,0x1
00004443  A23040            mov [0x4030],al
00004446  A22E3C            mov [0x3c2e],al
00004449  A0650B            mov al,[0xb65]
0000444C  A28A37            mov [0x378a],al
0000444F  A0600B            mov al,[0xb60]
00004452  3C10              cmp al,0x10
00004454  F5                cmc
00004455  7203              jc 0x445a
00004457  EB21              jmp short 0x447a
00004459  90                nop
0000445A  3CF0              cmp al,0xf0
0000445C  F5                cmc
0000445D  7303              jnc 0x4462
0000445F  EB0F              jmp short 0x4470
00004461  90                nop
00004462  A06D0B            mov al,[0xb6d]
00004465  3C03              cmp al,0x3
00004467  F5                cmc
00004468  7503              jnz 0x446d
0000446A  EB04              jmp short 0x4470
0000446C  90                nop
0000446D  EB0B              jmp short 0x447a
0000446F  90                nop
00004470  A0600B            mov al,[0xb60]
00004473  2C0E              sub al,0xe
00004475  F5                cmc
00004476  A28837            mov [0x3788],al
00004479  C3                ret
0000447A  A0600B            mov al,[0xb60]
0000447D  040E              add al,0xe
0000447F  A28837            mov [0x3788],al
00004482  C3                ret
00004483  A04F59            mov al,[0x594f]
00004486  3C02              cmp al,0x2
00004488  F5                cmc
00004489  7503              jnz 0x448e
0000448B  EB0B              jmp short 0x4498
0000448D  90                nop
0000448E  B000              mov al,0x0
00004490  FEC0              inc al
00004492  FEC8              dec al
00004494  A27A0B            mov [0xb7a],al
00004497  C3                ret
00004498  A0954F            mov al,[0x4f95]
0000449B  FEC0              inc al
0000449D  FEC8              dec al
0000449F  7503              jnz 0x44a4
000044A1  EB02              jmp short 0x44a5
000044A3  90                nop
000044A4  C3                ret
000044A5  9F                lahf
000044A6  802681077F        and byte [0x781],0x7f
000044AB  9E                sahf
000044AC  A03040            mov al,[0x4030]
000044AF  FEC0              inc al
000044B1  FEC8              dec al
000044B3  7403              jz 0x44b8
000044B5  EB02              jmp short 0x44b9
000044B7  90                nop
000044B8  C3                ret
000044B9  B000              mov al,0x0
000044BB  A23040            mov [0x4030],al
000044BE  A22E3C            mov [0x3c2e],al
000044C1  A29137            mov [0x3791],al
000044C4  8AD8              mov bl,al
000044C6  8A87FE30          mov al,[bx+0x30fe]
000044CA  A28837            mov [0x3788],al
000044CD  8A871131          mov al,[bx+0x3111]
000044D1  FEC0              inc al
000044D3  FEC8              dec al
000044D5  A28A37            mov [0x378a],al
000044D8  C3                ret
000044D9  A0800B            mov al,[0xb80]
000044DC  FEC0              inc al
000044DE  FEC8              dec al
000044E0  7503              jnz 0x44e5
000044E2  EB02              jmp short 0x44e6
000044E4  90                nop
000044E5  C3                ret
000044E6  8A1E3532          mov bl,[0x3235]
000044EA  8A871C32          mov al,[bx+0x321c]
000044EE  A22B5A            mov [0x5a2b],al
000044F1  8A872432          mov al,[bx+0x3224]
000044F5  FEC0              inc al
000044F7  FEC8              dec al
000044F9  A22C5A            mov [0x5a2c],al
000044FC  E89015            call word 0x5a8f
000044FF  A02A5A            mov al,[0x5a2a]
00004502  FEC0              inc al
00004504  FEC8              dec al
00004506  7403              jz 0x450b
00004508  EB08              jmp short 0x4512
0000450A  90                nop
0000450B  FECB              dec bl
0000450D  7802              js 0x4511
0000450F  EBD9              jmp short 0x44ea
00004511  C3                ret
00004512  EB09              jmp short 0x451d
00004514  90                nop
00004515  0000              add [bx+si],al
00004517  006100            add [bx+di+0x0],ah
0000451A  67006FA0          add [edi-0x60],ch
0000451E  6C                insb
0000451F  0BFE              or di,si
00004521  C0FEC8            sar dh,byte 0xc8
00004524  7503              jnz 0x4529
00004526  EB0F              jmp short 0x4537
00004528  90                nop
00004529  E8C4CC            call word 0x11f0
0000452C  B0A0              mov al,0xa0
0000452E  FEC0              inc al
00004530  FEC8              dec al
00004532  E8AABC            call word 0x1df
00004535  EBE6              jmp short 0x451d
00004537  B314              mov bl,0x14
00004539  FEC3              inc bl
0000453B  FECB              dec bl
0000453D  881EC86D          mov [0x6dc8],bl
00004541  E81A00            call word 0x455e
00004544  E86000            call word 0x45a7
00004547  E87A00            call word 0x45c4
0000454A  B050              mov al,0x50
0000454C  FEC0              inc al
0000454E  FEC8              dec al
00004550  E88CBC            call word 0x1df
00004553  FE0EC86D          dec byte [0x6dc8]
00004557  7802              js 0x455b
00004559  EBE6              jmp short 0x4541
0000455B  E94AF0            jmp word 0x35a8
0000455E  A01545            mov al,[0x4515]
00004561  FEC0              inc al
00004563  FEC8              dec al
00004565  7403              jz 0x456a
00004567  EB20              jmp short 0x4589
00004569  90                nop
0000456A  FE0E1645          dec byte [0x4516]
0000456E  A01645            mov al,[0x4516]
00004571  FEC0              inc al
00004573  FEC8              dec al
00004575  7803              js 0x457a
00004577  EB4A              jmp short 0x45c3
00004579  90                nop
0000457A  B001              mov al,0x1
0000457C  A21545            mov [0x4515],al
0000457F  B000              mov al,0x0
00004581  FEC0              inc al
00004583  FEC8              dec al
00004585  A21645            mov [0x4516],al
00004588  C3                ret
00004589  FE061645          inc byte [0x4516]
0000458D  A01645            mov al,[0x4516]
00004590  3C03              cmp al,0x3
00004592  F5                cmc
00004593  7403              jz 0x4598
00004595  EB2C              jmp short 0x45c3
00004597  90                nop
00004598  B000              mov al,0x0
0000459A  A21545            mov [0x4515],al
0000459D  B002              mov al,0x2
0000459F  FEC0              inc al
000045A1  FEC8              dec al
000045A3  A21645            mov [0x4516],al
000045A6  C3                ret
000045A7  A01645            mov al,[0x4516]
000045AA  D0E0              shl al,1
000045AC  8AD8              mov bl,al
000045AE  8A871745          mov al,[bx+0x4517]
000045B2  A2680B            mov [0xb68],al
000045B5  FEC3              inc bl
000045B7  8A871745          mov al,[bx+0x4517]
000045BB  FEC0              inc al
000045BD  FEC8              dec al
000045BF  A2690B            mov [0xb69],al
000045C2  C3                ret
000045C3  C3                ret
000045C4  A0600B            mov al,[0xb60]
000045C7  A29B6D            mov [0x6d9b],al
000045CA  A29D6D            mov [0x6d9d],al
000045CD  A0650B            mov al,[0xb65]
000045D0  A29C6D            mov [0x6d9c],al
000045D3  A29E6D            mov [0x6d9e],al
000045D6  A06B0B            mov al,[0xb6b]
000045D9  A29A6D            mov [0x6d9a],al
000045DC  A0690B            mov al,[0xb69]
000045DF  A2986D            mov [0x6d98],al
000045E2  E883BD            call word 0x368
000045E5  A0690B            mov al,[0xb69]
000045E8  FEC0              inc al
000045EA  FEC8              dec al
000045EC  A26B0B            mov [0xb6b],al
000045EF  E877DC            call word 0x2269
000045F2  C3                ret
000045F3  E81EBC            call word 0x214
000045F6  7803              js 0x45fb
000045F8  EB04              jmp short 0x45fe
000045FA  90                nop
000045FB  E985FE            jmp word 0x4483
000045FE  E804BC            call word 0x205
00004601  7803              js 0x4606
00004603  EB04              jmp short 0x4609
00004605  90                nop
00004606  E9E7CB            jmp word 0x11f0
00004609  A0790B            mov al,[0xb79]
0000460C  FEC0              inc al
0000460E  FEC8              dec al
00004610  7503              jnz 0x4615
00004612  EB0B              jmp short 0x461f
00004614  90                nop
00004615  B000              mov al,0x0
00004617  FEC0              inc al
00004619  FEC8              dec al
0000461B  A27A0B            mov [0xb7a],al
0000461E  C3                ret
0000461F  E83900            call word 0x465b
00004622  A0F346            mov al,[0x46f3]
00004625  3C00              cmp al,0x0
00004627  F5                cmc
00004628  7403              jz 0x462d
0000462A  EB04              jmp short 0x4630
0000462C  90                nop
0000462D  E9BCCA            jmp word 0x10ec
00004630  3C01              cmp al,0x1
00004632  F5                cmc
00004633  7403              jz 0x4638
00004635  EB04              jmp short 0x463b
00004637  90                nop
00004638  E91CCB            jmp word 0x1157
0000463B  3C02              cmp al,0x2
0000463D  F5                cmc
0000463E  7403              jz 0x4643
00004640  EB04              jmp short 0x4646
00004642  90                nop
00004643  E95FCB            jmp word 0x11a5
00004646  3C03              cmp al,0x3
00004648  F5                cmc
00004649  7403              jz 0x464e
0000464B  EB04              jmp short 0x4651
0000464D  90                nop
0000464E  E9D6CA            jmp word 0x1127
00004651  B000              mov al,0x0
00004653  FEC0              inc al
00004655  FEC8              dec al
00004657  A27A0B            mov [0xb7a],al
0000465A  C3                ret
0000465B  B000              mov al,0x0
0000465D  A2F346            mov [0x46f3],al
00004660  A0770B            mov al,[0xb77]
00004663  3C46              cmp al,0x46
00004665  F5                cmc
00004666  7203              jc 0x466b
00004668  EB26              jmp short 0x4690
0000466A  90                nop
0000466B  3CB4              cmp al,0xb4
0000466D  F5                cmc
0000466E  7303              jnc 0x4673
00004670  EB1E              jmp short 0x4690
00004672  90                nop
00004673  A0780B            mov al,[0xb78]
00004676  3C46              cmp al,0x46
00004678  F5                cmc
00004679  7203              jc 0x467e
0000467B  EB13              jmp short 0x4690
0000467D  90                nop
0000467E  3CB4              cmp al,0xb4
00004680  F5                cmc
00004681  7303              jnc 0x4686
00004683  EB0B              jmp short 0x4690
00004685  90                nop
00004686  B0FF              mov al,0xff
00004688  FEC0              inc al
0000468A  FEC8              dec al
0000468C  A2F346            mov [0x46f3],al
0000468F  C3                ret
00004690  A0770B            mov al,[0xb77]
00004693  3A06780B          cmp al,[0xb78]
00004697  F5                cmc
00004698  7203              jc 0x469d
0000469A  EB04              jmp short 0x46a0
0000469C  90                nop
0000469D  EB0E              jmp short 0x46ad
0000469F  90                nop
000046A0  B002              mov al,0x2
000046A2  D0D4              rcl ah,1
000046A4  0A06F346          or al,[0x46f3]
000046A8  D0DC              rcr ah,1
000046AA  A2F346            mov [0x46f3],al
000046AD  B0FF              mov al,0xff
000046AF  2A06770B          sub al,[0xb77]
000046B3  F5                cmc
000046B4  3A06780B          cmp al,[0xb78]
000046B8  F5                cmc
000046B9  7203              jc 0x46be
000046BB  EB09              jmp short 0x46c6
000046BD  90                nop
000046BE  7503              jnz 0x46c3
000046C0  EB04              jmp short 0x46c6
000046C2  90                nop
000046C3  EB0E              jmp short 0x46d3
000046C5  90                nop
000046C6  B001              mov al,0x1
000046C8  D0D4              rcl ah,1
000046CA  0A06F346          or al,[0x46f3]
000046CE  D0DC              rcr ah,1
000046D0  A2F346            mov [0x46f3],al
000046D3  C3                ret
000046D4  D0D8              rcr al,1
000046D6  D0D4              rcl ah,1
000046D8  3206F446          xor al,[0x46f4]
000046DC  D0DC              rcr ah,1
000046DE  D0D0              rcl al,1
000046E0  FEC0              inc al
000046E2  FEC8              dec al
000046E4  9C                pushfw
000046E5  A0F446            mov al,[0x46f4]
000046E8  D0D4              rcl ah,1
000046EA  3480              xor al,0x80
000046EC  D0DC              rcr ah,1
000046EE  A2F446            mov [0x46f4],al
000046F1  9D                popfw
000046F2  C3                ret
000046F3  0000              add [bx+si],al
000046F5  0000              add [bx+si],al
000046F7  0400              add al,0x0
000046F9  0000              add [bx+si],al
000046FB  8BF0              mov si,ax
000046FD  A0F646            mov al,[0x46f6]
00004700  FEC0              inc al
00004702  FEC8              dec al
00004704  7403              jz 0x4709
00004706  EB0D              jmp short 0x4715
00004708  90                nop
00004709  A0DA6D            mov al,[0x6dda]
0000470C  A2F546            mov [0x46f5],al
0000470F  A0DB6D            mov al,[0x6ddb]
00004712  A2F646            mov [0x46f6],al
00004715  8936DA6D          mov [0x6dda],si
00004719  B000              mov al,0x0
0000471B  FEC0              inc al
0000471D  FEC8              dec al
0000471F  A2C36D            mov [0x6dc3],al
00004722  C3                ret
00004723  A0F646            mov al,[0x46f6]
00004726  FEC0              inc al
00004728  FEC8              dec al
0000472A  7503              jnz 0x472f
0000472C  EB1A              jmp short 0x4748
0000472E  90                nop
0000472F  A0F546            mov al,[0x46f5]
00004732  A2DA6D            mov [0x6dda],al
00004735  A0F646            mov al,[0x46f6]
00004738  A2DB6D            mov [0x6ddb],al
0000473B  B000              mov al,0x0
0000473D  FEC0              inc al
0000473F  FEC8              dec al
00004741  A2C36D            mov [0x6dc3],al
00004744  A2F646            mov [0x46f6],al
00004747  C3                ret
00004748  A0F846            mov al,[0x46f8]
0000474B  A2DA6D            mov [0x6dda],al
0000474E  A0F946            mov al,[0x46f9]
00004751  A2DB6D            mov [0x6ddb],al
00004754  B000              mov al,0x0
00004756  FEC0              inc al
00004758  FEC8              dec al
0000475A  A2C36D            mov [0x6dc3],al
0000475D  A2F646            mov [0x46f6],al
00004760  C3                ret
00004761  A0710B            mov al,[0xb71]
00004764  FEC0              inc al
00004766  FEC8              dec al
00004768  7503              jnz 0x476d
0000476A  EB02              jmp short 0x476e
0000476C  90                nop
0000476D  C3                ret
0000476E  A0C36D            mov al,[0x6dc3]
00004771  FEC0              inc al
00004773  FEC8              dec al
00004775  7403              jz 0x477a
00004777  EB7E              jmp short 0x47f7
00004779  90                nop
0000477A  B300              mov bl,0x0
0000477C  8B36DA6D          mov si,[0x6dda]
00004780  8A00              mov al,[bx+si]
00004782  0404              add al,0x4
00004784  D0E0              shl al,1
00004786  8AC8              mov cl,al
00004788  8BF1              mov si,cx
0000478A  8A849548          mov al,[si+0x4895]
0000478E  A2C06D            mov [0x6dc0],al
00004791  8BF1              mov si,cx
00004793  8A849648          mov al,[si+0x4896]
00004797  A2C16D            mov [0x6dc1],al
0000479A  D026C06D          shl byte [0x6dc0],1
0000479E  8A36C16D          mov dh,[0x6dc1]
000047A2  D0D6              rcl dh,1
000047A4  8836C16D          mov [0x6dc1],dh
000047A8  A0FA46            mov al,[0x46fa]
000047AB  FEC0              inc al
000047AD  FEC8              dec al
000047AF  7403              jz 0x47b4
000047B1  EB1B              jmp short 0x47ce
000047B3  90                nop
000047B4  A0F646            mov al,[0x46f6]
000047B7  FEC0              inc al
000047B9  FEC8              dec al
000047BB  7503              jnz 0x47c0
000047BD  EB0F              jmp short 0x47ce
000047BF  90                nop
000047C0  D026C06D          shl byte [0x6dc0],1
000047C4  8A36C16D          mov dh,[0x6dc1]
000047C8  D0D6              rcl dh,1
000047CA  8836C16D          mov [0x6dc1],dh
000047CE  FEC3              inc bl
000047D0  8B36DA6D          mov si,[0x6dda]
000047D4  8A00              mov al,[bx+si]
000047D6  FEC0              inc al
000047D8  FEC8              dec al
000047DA  7503              jnz 0x47df
000047DC  E944FF            jmp word 0x4723
000047DF  A2C36D            mov [0x6dc3],al
000047E2  A0DA6D            mov al,[0x6dda]
000047E5  0402              add al,0x2
000047E7  A2DA6D            mov [0x6dda],al
000047EA  A0DB6D            mov al,[0x6ddb]
000047ED  1400              adc al,0x0
000047EF  A2DB6D            mov [0x6ddb],al
000047F2  B070              mov al,0x70
000047F4  A2C46D            mov [0x6dc4],al
000047F7  A1C06D            mov ax,[0x6dc0]
000047FA  0306BB6D          add ax,[0x6dbb]
000047FE  A3BB6D            mov [0x6dbb],ax
00004801  3A26C46D          cmp ah,[0x6dc4]
00004805  D0D4              rcl ah,1
00004807  D0D4              rcl ah,1
00004809  80E402            and ah,0x2
0000480C  E461              in al,0x61
0000480E  32C4              xor al,ah
00004810  E661              out 0x61,al
00004812  EB5C              jmp short 0x4870
00004814  90                nop
00004815  A0C06D            mov al,[0x6dc0]
00004818  0206BB6D          add al,[0x6dbb]
0000481C  A2BB6D            mov [0x6dbb],al
0000481F  A0C16D            mov al,[0x6dc1]
00004822  1206BC6D          adc al,[0x6dbc]
00004826  A2BC6D            mov [0x6dbc],al
00004829  3A06C46D          cmp al,[0x6dc4]
0000482D  F5                cmc
0000482E  B000              mov al,0x0
00004830  D0D0              rcl al,1
00004832  8AC8              mov cl,al
00004834  B000              mov al,0x0
00004836  8BF1              mov si,cx
00004838  8884BE6D          mov [si+0x6dbe],al
0000483C  8AC1              mov al,cl
0000483E  D0D4              rcl ah,1
00004840  3401              xor al,0x1
00004842  D0DC              rcr ah,1
00004844  8AC8              mov cl,al
00004846  8BF1              mov si,cx
00004848  8A84BE6D          mov al,[si+0x6dbe]
0000484C  FEC0              inc al
0000484E  FEC8              dec al
00004850  7403              jz 0x4855
00004852  EB10              jmp short 0x4864
00004854  90                nop
00004855  8BF1              mov si,cx
00004857  FE84BE6D          inc byte [si+0x6dbe]
0000485B  E461              in al,0x61
0000485D  3402              xor al,0x2
0000485F  E661              out 0x61,al
00004861  EB0D              jmp short 0x4870
00004863  90                nop
00004864  E461              in al,0x61
00004866  3400              xor al,0x0
00004868  E661              out 0x61,al
0000486A  FE06C66D          inc byte [0x6dc6]
0000486E  8AC1              mov al,cl
00004870  A0F746            mov al,[0x46f7]
00004873  0206C56D          add al,[0x6dc5]
00004877  A2C56D            mov [0x6dc5],al
0000487A  A0C46D            mov al,[0x6dc4]
0000487D  1400              adc al,0x0
0000487F  A2C46D            mov [0x6dc4],al
00004882  FE0EC26D          dec byte [0x6dc2]
00004886  7403              jz 0x488b
00004888  E96CFF            jmp word 0x47f7
0000488B  B078              mov al,0x78
0000488D  A2C26D            mov [0x6dc2],al
00004890  FE0EC36D          dec byte [0x6dc3]
00004894  C3                ret
00004895  0000              add [bx+si],al
00004897  FA                cli
00004898  00C4              add ah,al
0000489A  3900              cmp [bx+si],ax
0000489C  00B002D9          add [bx+si-0x26fe],dh
000048A0  0204              add al,[si]
000048A2  0332              add si,[bp+si]
000048A4  036303            add sp,[bp+di+0x3]
000048A7  96                xchg ax,si
000048A8  03CD              add cx,bp
000048AA  0307              add ax,[bx]
000048AC  0444              add al,0x44
000048AE  0485              add al,0x85
000048B0  04CA              add al,0xca
000048B2  0413              add al,0x13
000048B4  056005            add ax,0x560
000048B7  B205              mov dl,0x5
000048B9  09066406          or [0x664],ax
000048BD  C6062D079A        mov byte [0x72d],0x9a
000048C2  07                pop es
000048C3  0E                push cs
000048C4  0888080A          or [bx+si+0xa08],cl
000048C8  09940926          or [si+0x2609],dx
000048CC  0AC0              or al,al
000048CE  0A640B            or ah,[si+0xb]
000048D1  110C              adc [si],cx
000048D3  C9                leave
000048D4  0C8B              or al,0x8b
000048D6  0D590E            or ax,0xe59
000048D9  340F              xor al,0xf
000048DB  1B10              sbb dx,[bx+si]
000048DD  1111              adc [bx+di],dx
000048DF  1412              adc al,0x12
000048E1  2813              sub [bp+di],dl
000048E3  4B                dec bx
000048E4  1400              adc al,0x0
000048E6  0000              add [bx+si],al
000048E8  0008              add [bx+si],cl
000048EA  0305              add ax,[di]
000048EC  0305              add ax,[di]
000048EE  0308              add cx,[bx+si]
000048F0  0305              add ax,[di]
000048F2  0305              add ax,[di]
000048F4  0308              add cx,[bx+si]
000048F6  0305              add ax,[di]
000048F8  0305              add ax,[di]
000048FA  0308              add cx,[bx+si]
000048FC  0305              add ax,[di]
000048FE  0305              add ax,[di]
00004900  0300              add ax,[bx+si]
00004902  00FF              add bh,bh
00004904  2000              and [bx+si],al
00004906  0000              add [bx+si],al
00004908  0001              add [bx+di],al
0000490A  0203              add al,[bp+di]
0000490C  0205              add al,[di]
0000490E  0208              add cl,[bx+si]
00004910  06                push es
00004911  050400            add ax,0x4
00004914  0001              add [bx+di],al
00004916  0101              add [bx+di],ax
00004918  0101              add [bx+di],ax
0000491A  0100              add [bx+si],ax
0000491C  000E040A          add [0xa04],cl
00004920  0412              add al,0x12
00004922  040E              add al,0xe
00004924  0400              add al,0x0
00004926  000B              add [bp+di],cl
00004928  030B              add cx,[bp+di]
0000492A  030B              add cx,[bp+di]
0000492C  0300              add ax,[bx+si]
0000492E  0010              add [bx+si],dl
00004930  0215              add dl,[di]
00004932  011A              add [bp+si],bx
00004934  0100              add [bx+si],ax
00004936  00B3058A          add [bp+di-0x75fb],dh
0000493A  8728              xchg bp,[bx+si]
0000493C  3CFE              cmp al,0xfe
0000493E  C0FEC8            sar dh,byte 0xc8
00004941  7503              jnz 0x4946
00004943  EB0B              jmp short 0x4950
00004945  90                nop
00004946  B001              mov al,0x1
00004948  FEC0              inc al
0000494A  FEC8              dec al
0000494C  8887283C          mov [bx+0x3c28],al
00004950  FECB              dec bl
00004952  7802              js 0x4956
00004954  EBE3              jmp short 0x4939
00004956  C3                ret
00004957  B304              mov bl,0x4
00004959  8A875C3D          mov al,[bx+0x3d5c]
0000495D  3C02              cmp al,0x2
0000495F  F5                cmc
00004960  7503              jnz 0x4965
00004962  EB0B              jmp short 0x496f
00004964  90                nop
00004965  B000              mov al,0x0
00004967  FEC0              inc al
00004969  FEC8              dec al
0000496B  88875C3D          mov [bx+0x3d5c],al
0000496F  FECB              dec bl
00004971  7802              js 0x4975
00004973  EBE4              jmp short 0x4959
00004975  B304              mov bl,0x4
00004977  8A873140          mov al,[bx+0x4031]
0000497B  3C02              cmp al,0x2
0000497D  F5                cmc
0000497E  7503              jnz 0x4983
00004980  EB0B              jmp short 0x498d
00004982  90                nop
00004983  B000              mov al,0x0
00004985  FEC0              inc al
00004987  FEC8              dec al
00004989  88873140          mov [bx+0x4031],al
0000498D  FECB              dec bl
0000498F  7802              js 0x4993
00004991  EBE4              jmp short 0x4977
00004993  C3                ret
00004994  C3                ret
00004995  B305              mov bl,0x5
00004997  B001              mov al,0x1
00004999  FEC0              inc al
0000499B  FEC8              dec al
0000499D  8887283C          mov [bx+0x3c28],al
000049A1  FECB              dec bl
000049A3  7802              js 0x49a7
000049A5  EBF6              jmp short 0x499d
000049A7  B000              mov al,0x0
000049A9  FEC0              inc al
000049AB  FEC8              dec al
000049AD  A27F0B            mov [0xb7f],al
000049B0  C3                ret
000049B1  B304              mov bl,0x4
000049B3  B000              mov al,0x0
000049B5  FEC0              inc al
000049B7  FEC8              dec al
000049B9  88873140          mov [bx+0x4031],al
000049BD  88875C3D          mov [bx+0x3d5c],al
000049C1  FECB              dec bl
000049C3  7802              js 0x49c7
000049C5  EBEC              jmp short 0x49b3
000049C7  E88CD4            call word 0x1e56
000049CA  E85AD4            call word 0x1e27
000049CD  B000              mov al,0x0
000049CF  FEC0              inc al
000049D1  FEC8              dec al
000049D3  A27F0B            mov [0xb7f],al
000049D6  C3                ret
000049D7  B305              mov bl,0x5
000049D9  B001              mov al,0x1
000049DB  FEC0              inc al
000049DD  FEC8              dec al
000049DF  8887A038          mov [bx+0x38a0],al
000049E3  FECB              dec bl
000049E5  7802              js 0x49e9
000049E7  EBF0              jmp short 0x49d9
000049E9  B000              mov al,0x0
000049EB  FEC0              inc al
000049ED  FEC8              dec al
000049EF  A27F0B            mov [0xb7f],al
000049F2  C3                ret
000049F3  18CE              sbb dh,cl
000049F5  1CD2              sbb al,0xd2
000049F7  A0650B            mov al,[0xb65]
000049FA  3C87              cmp al,0x87
000049FC  F5                cmc
000049FD  7503              jnz 0x4a02
000049FF  EB02              jmp short 0x4a03
00004A01  90                nop
00004A02  C3                ret
00004A03  8A1E3A4A          mov bl,[0x4a3a]
00004A07  8A87F349          mov al,[bx+0x49f3]
00004A0B  3A06600B          cmp al,[0xb60]
00004A0F  F5                cmc
00004A10  7203              jc 0x4a15
00004A12  EB02              jmp short 0x4a16
00004A14  90                nop
00004A15  C3                ret
00004A16  0406              add al,0x6
00004A18  3A06600B          cmp al,[0xb60]
00004A1C  F5                cmc
00004A1D  7303              jnc 0x4a22
00004A1F  EB02              jmp short 0x4a23
00004A21  90                nop
00004A22  C3                ret
00004A23  A0600B            mov al,[0xb60]
00004A26  A22234            mov [0x3422],al
00004A29  B0AB              mov al,0xab
00004A2B  A22334            mov [0x3423],al
00004A2E  B001              mov al,0x1
00004A30  FEC0              inc al
00004A32  FEC8              dec al
00004A34  A23334            mov [0x3433],al
00004A37  E9F9EA            jmp word 0x3533
00004A3A  0000              add [bx+si],al
00004A3C  3C7F              cmp al,0x7f
00004A3E  F5                cmc
00004A3F  7203              jc 0x4a44
00004A41  EB08              jmp short 0x4a4b
00004A43  90                nop
00004A44  B001              mov al,0x1
00004A46  FEC0              inc al
00004A48  FEC8              dec al
00004A4A  C3                ret
00004A4B  B000              mov al,0x0
00004A4D  FEC0              inc al
00004A4F  FEC8              dec al
00004A51  C3                ret
00004A52  0000              add [bx+si],al
00004A54  50                push ax
00004A55  94                xchg ax,sp
00004A56  0000              add [bx+si],al
00004A58  0810              or [bx+si],dl
00004A5A  004F47            add [bx+0x47],cl
00004A5D  3F                aas
00004A5E  0010              add [bx+si],dl
00004A60  004000            add [bx+si+0x0],al
00004A63  A0524A            mov al,[0x4a52]
00004A66  FEC0              inc al
00004A68  FEC8              dec al
00004A6A  7503              jnz 0x4a6f
00004A6C  EB02              jmp short 0x4a70
00004A6E  90                nop
00004A6F  C3                ret
00004A70  8A0E3A4A          mov cl,[0x4a3a]
00004A74  8BF1              mov si,cx
00004A76  8A84544A          mov al,[si+0x4a54]
00004A7A  3A06600B          cmp al,[0xb60]
00004A7E  F5                cmc
00004A7F  7203              jc 0x4a84
00004A81  EB02              jmp short 0x4a85
00004A83  90                nop
00004A84  C3                ret
00004A85  040A              add al,0xa
00004A87  3A06600B          cmp al,[0xb60]
00004A8B  F5                cmc
00004A8C  7303              jnc 0x4a91
00004A8E  EB02              jmp short 0x4a92
00004A90  90                nop
00004A91  C3                ret
00004A92  A06C0B            mov al,[0xb6c]
00004A95  FEC0              inc al
00004A97  FEC8              dec al
00004A99  7503              jnz 0x4a9e
00004A9B  EB10              jmp short 0x4aad
00004A9D  90                nop
00004A9E  A06E0B            mov al,[0xb6e]
00004AA1  3C0F              cmp al,0xf
00004AA3  F5                cmc
00004AA4  7503              jnz 0x4aa9
00004AA6  EB02              jmp short 0x4aaa
00004AA8  90                nop
00004AA9  C3                ret
00004AAA  E817C8            call word 0x12c4
00004AAD  B303              mov bl,0x3
00004AAF  A0650B            mov al,[0xb65]
00004AB2  3A87B315          cmp al,[bx+0x15b3]
00004AB6  F5                cmc
00004AB7  7503              jnz 0x4abc
00004AB9  EB08              jmp short 0x4ac3
00004ABB  90                nop
00004ABC  FECB              dec bl
00004ABE  7402              jz 0x4ac2
00004AC0  EBF0              jmp short 0x4ab2
00004AC2  C3                ret
00004AC3  881E534A          mov [0x4a53],bl
00004AC7  B001              mov al,0x1
00004AC9  A2720B            mov [0xb72],al
00004ACC  A2524A            mov [0x4a52],al
00004ACF  8A1E534A          mov bl,[0x4a53]
00004AD3  A03A4A            mov al,[0x4a3a]
00004AD6  FEC0              inc al
00004AD8  FEC8              dec al
00004ADA  7403              jz 0x4adf
00004ADC  EB15              jmp short 0x4af3
00004ADE  90                nop
00004ADF  8A87564A          mov al,[bx+0x4a56]
00004AE3  A2624A            mov [0x4a62],al
00004AE6  B001              mov al,0x1
00004AE8  FEC0              inc al
00004AEA  FEC8              dec al
00004AEC  A25E4A            mov [0x4a5e],al
00004AEF  A26D0B            mov [0xb6d],al
00004AF2  C3                ret
00004AF3  B0FF              mov al,0xff
00004AF5  A25E4A            mov [0x4a5e],al
00004AF8  8A875A4A          mov al,[bx+0x4a5a]
00004AFC  A2624A            mov [0x4a62],al
00004AFF  B003              mov al,0x3
00004B01  FEC0              inc al
00004B03  FEC8              dec al
00004B05  A26D0B            mov [0xb6d],al
00004B08  C3                ret
00004B09  A0524A            mov al,[0x4a52]
00004B0C  FEC0              inc al
00004B0E  FEC8              dec al
00004B10  7403              jz 0x4b15
00004B12  EB02              jmp short 0x4b16
00004B14  90                nop
00004B15  C3                ret
00004B16  8A1E624A          mov bl,[0x4a62]
00004B1A  8A871A26          mov al,[bx+0x261a]
00004B1E  A2600B            mov [0xb60],al
00004B21  8A876B26          mov al,[bx+0x266b]
00004B25  A2650B            mov [0xb65],al
00004B28  A0624A            mov al,[0x4a62]
00004B2B  8A1E5E4A          mov bl,[0x4a5e]
00004B2F  FEC3              inc bl
00004B31  3A875F4A          cmp al,[bx+0x4a5f]
00004B35  F5                cmc
00004B36  7503              jnz 0x4b3b
00004B38  EB1B              jmp short 0x4b55
00004B3A  90                nop
00004B3B  02065E4A          add al,[0x4a5e]
00004B3F  A2624A            mov [0x4a62],al
00004B42  E82600            call word 0x4b6b
00004B45  E8AEC7            call word 0x12f6
00004B48  A03A4A            mov al,[0x4a3a]
00004B4B  FEC0              inc al
00004B4D  FEC8              dec al
00004B4F  A2BA51            mov [0x51ba],al
00004B52  E93607            jmp word 0x528b
00004B55  B000              mov al,0x0
00004B57  FEC0              inc al
00004B59  FEC8              dec al
00004B5B  A2720B            mov [0xb72],al
00004B5E  A2524A            mov [0x4a52],al
00004B61  E98CC6            jmp word 0x11f0
00004B64  006F00            add [bx+0x0],ch
00004B67  6B006D            imul ax,[bx+si],byte +0x6d
00004B6A  00A06A4B          add [bx+si+0x4b6a],ah
00004B6E  D0E0              shl al,1
00004B70  8AD8              mov bl,al
00004B72  8A87654B          mov al,[bx+0x4b65]
00004B76  A2690B            mov [0xb69],al
00004B79  A2986D            mov [0x6d98],al
00004B7C  A05E4A            mov al,[0x4a5e]
00004B7F  3C01              cmp al,0x1
00004B81  F5                cmc
00004B82  7403              jz 0x4b87
00004B84  EB29              jmp short 0x4baf
00004B86  90                nop
00004B87  A0624A            mov al,[0x4a62]
00004B8A  3C20              cmp al,0x20
00004B8C  F5                cmc
00004B8D  7503              jnz 0x4b92
00004B8F  EB14              jmp short 0x4ba5
00004B91  90                nop
00004B92  3C33              cmp al,0x33
00004B94  F5                cmc
00004B95  7503              jnz 0x4b9a
00004B97  EB02              jmp short 0x4b9b
00004B99  90                nop
00004B9A  C3                ret
00004B9B  B000              mov al,0x0
00004B9D  FEC0              inc al
00004B9F  FEC8              dec al
00004BA1  A26A4B            mov [0x4b6a],al
00004BA4  C3                ret
00004BA5  B001              mov al,0x1
00004BA7  FEC0              inc al
00004BA9  FEC8              dec al
00004BAB  A26A4B            mov [0x4b6a],al
00004BAE  C3                ret
00004BAF  A0624A            mov al,[0x4a62]
00004BB2  3C30              cmp al,0x30
00004BB4  F5                cmc
00004BB5  7503              jnz 0x4bba
00004BB7  EB14              jmp short 0x4bcd
00004BB9  90                nop
00004BBA  3C1D              cmp al,0x1d
00004BBC  F5                cmc
00004BBD  7503              jnz 0x4bc2
00004BBF  EB02              jmp short 0x4bc3
00004BC1  90                nop
00004BC2  C3                ret
00004BC3  B000              mov al,0x0
00004BC5  FEC0              inc al
00004BC7  FEC8              dec al
00004BC9  A26A4B            mov [0x4b6a],al
00004BCC  C3                ret
00004BCD  B002              mov al,0x2
00004BCF  FEC0              inc al
00004BD1  FEC8              dec al
00004BD3  A26A4B            mov [0x4b6a],al
00004BD6  C3                ret
00004BD7  00A07053          add [bx+si+0x5370],ah
00004BDB  FEC0              inc al
00004BDD  FEC8              dec al
00004BDF  7503              jnz 0x4be4
00004BE1  EB02              jmp short 0x4be5
00004BE3  90                nop
00004BE4  C3                ret
00004BE5  A07153            mov al,[0x5371]
00004BE8  FEC0              inc al
00004BEA  FEC8              dec al
00004BEC  7503              jnz 0x4bf1
00004BEE  EB02              jmp short 0x4bf2
00004BF0  90                nop
00004BF1  C3                ret
00004BF2  A0600B            mov al,[0xb60]
00004BF5  3C5A              cmp al,0x5a
00004BF7  F5                cmc
00004BF8  7303              jnc 0x4bfd
00004BFA  EB02              jmp short 0x4bfe
00004BFC  90                nop
00004BFD  C3                ret
00004BFE  3C96              cmp al,0x96
00004C00  F5                cmc
00004C01  7203              jc 0x4c06
00004C03  EB02              jmp short 0x4c07
00004C05  90                nop
00004C06  C3                ret
00004C07  B104              mov cl,0x4
00004C09  8BF1              mov si,cx
00004C0B  8A84E239          mov al,[si+0x39e2]
00004C0F  FEC0              inc al
00004C11  FEC8              dec al
00004C13  E826FE            call word 0x4a3c
00004C16  3A063A4A          cmp al,[0x4a3a]
00004C1A  F5                cmc
00004C1B  7403              jz 0x4c20
00004C1D  EB13              jmp short 0x4c32
00004C1F  90                nop
00004C20  8BF1              mov si,cx
00004C22  8A84DD39          mov al,[si+0x39dd]
00004C26  0404              add al,0x4
00004C28  3A06650B          cmp al,[0xb65]
00004C2C  F5                cmc
00004C2D  7303              jnc 0x4c32
00004C2F  EB08              jmp short 0x4c39
00004C31  90                nop
00004C32  FEC9              dec cl
00004C34  7802              js 0x4c38
00004C36  EBD1              jmp short 0x4c09
00004C38  C3                ret
00004C39  2C08              sub al,0x8
00004C3B  F5                cmc
00004C3C  3A06650B          cmp al,[0xb65]
00004C40  F5                cmc
00004C41  7203              jc 0x4c46
00004C43  EB03              jmp short 0x4c48
00004C45  90                nop
00004C46  EBEA              jmp short 0x4c32
00004C48  8BF1              mov si,cx
00004C4A  8A84D839          mov al,[si+0x39d8]
00004C4E  A2D74B            mov [0x4bd7],al
00004C51  A06C0B            mov al,[0xb6c]
00004C54  FEC0              inc al
00004C56  FEC8              dec al
00004C58  7503              jnz 0x4c5d
00004C5A  EB04              jmp short 0x4c60
00004C5C  90                nop
00004C5D  E864C6            call word 0x12c4
00004C60  B001              mov al,0x1
00004C62  A2790B            mov [0xb79],al
00004C65  A27153            mov [0x5371],al
00004C68  A27053            mov [0x5370],al
00004C6B  A03A4A            mov al,[0x4a3a]
00004C6E  FEC0              inc al
00004C70  FEC8              dec al
00004C72  7403              jz 0x4c77
00004C74  EB0B              jmp short 0x4c81
00004C76  90                nop
00004C77  B003              mov al,0x3
00004C79  FEC0              inc al
00004C7B  FEC8              dec al
00004C7D  A26D0B            mov [0xb6d],al
00004C80  C3                ret
00004C81  B001              mov al,0x1
00004C83  FEC0              inc al
00004C85  FEC8              dec al
00004C87  A26D0B            mov [0xb6d],al
00004C8A  C3                ret
00004C8B  02A07153          add ah,[bx+si+0x5371]
00004C8F  FEC0              inc al
00004C91  FEC8              dec al
00004C93  7403              jz 0x4c98
00004C95  EB02              jmp short 0x4c99
00004C97  90                nop
00004C98  C3                ret
00004C99  8A0ED74B          mov cl,[0x4bd7]
00004C9D  8BF1              mov si,cx
00004C9F  8A842431          mov al,[si+0x3124]
00004CA3  8A1E3A4A          mov bl,[0x4a3a]
00004CA7  FEC3              inc bl
00004CA9  FECB              dec bl
00004CAB  7403              jz 0x4cb0
00004CAD  EB07              jmp short 0x4cb6
00004CAF  90                nop
00004CB0  2C0E              sub al,0xe
00004CB2  F5                cmc
00004CB3  EB03              jmp short 0x4cb8
00004CB5  90                nop
00004CB6  0404              add al,0x4
00004CB8  A2600B            mov [0xb60],al
00004CBB  8BF1              mov si,cx
00004CBD  8A847631          mov al,[si+0x3176]
00004CC1  2C01              sub al,0x1
00004CC3  F5                cmc
00004CC4  A2650B            mov [0xb65],al
00004CC7  FE0E8B4C          dec byte [0x4c8b]
00004CCB  7403              jz 0x4cd0
00004CCD  EB0A              jmp short 0x4cd9
00004CCF  90                nop
00004CD0  FE06D74B          inc byte [0x4bd7]
00004CD4  B002              mov al,0x2
00004CD6  A28B4C            mov [0x4c8b],al
00004CD9  A03A4A            mov al,[0x4a3a]
00004CDC  FEC0              inc al
00004CDE  FEC8              dec al
00004CE0  7403              jz 0x4ce5
00004CE2  EB0D              jmp short 0x4cf1
00004CE4  90                nop
00004CE5  B003              mov al,0x3
00004CE7  FEC0              inc al
00004CE9  FEC8              dec al
00004CEB  A26D0B            mov [0xb6d],al
00004CEE  E94D08            jmp word 0x553e
00004CF1  B001              mov al,0x1
00004CF3  FEC0              inc al
00004CF5  FEC8              dec al
00004CF7  A26D0B            mov [0xb6d],al
00004CFA  E93108            jmp word 0x552e
00004CFD  0000              add [bx+si],al
00004CFF  0000              add [bx+si],al
00004D01  0000              add [bx+si],al
00004D03  0000              add [bx+si],al
00004D05  A0014D            mov al,[0x4d01]
00004D08  FEC0              inc al
00004D0A  FEC8              dec al
00004D0C  7403              jz 0x4d11
00004D0E  EB60              jmp short 0x4d70
00004D10  90                nop
00004D11  A02E3C            mov al,[0x3c2e]
00004D14  FEC0              inc al
00004D16  FEC8              dec al
00004D18  7403              jz 0x4d1d
00004D1A  EB02              jmp short 0x4d1e
00004D1C  90                nop
00004D1D  C3                ret
00004D1E  A0650B            mov al,[0xb65]
00004D21  3C87              cmp al,0x87
00004D23  F5                cmc
00004D24  7503              jnz 0x4d29
00004D26  EB02              jmp short 0x4d2a
00004D28  90                nop
00004D29  C3                ret
00004D2A  8A1E3A4A          mov bl,[0x4a3a]
00004D2E  8A87F549          mov al,[bx+0x49f5]
00004D32  3A06223C          cmp al,[0x3c22]
00004D36  F5                cmc
00004D37  7503              jnz 0x4d3c
00004D39  EB02              jmp short 0x4d3d
00004D3B  90                nop
00004D3C  C3                ret
00004D3D  B81A22            mov ax,0x221a
00004D40  E8B8F9            call word 0x46fb
00004D43  B000              mov al,0x0
00004D45  A22E3C            mov [0x3c2e],al
00004D48  8A1E303C          mov bl,[0x3c30]
00004D4C  881E044D          mov [0x4d04],bl
00004D50  B003              mov al,0x3
00004D52  8887283C          mov [bx+0x3c28],al
00004D56  B001              mov al,0x1
00004D58  A2014D            mov [0x4d01],al
00004D5B  A0223C            mov al,[0x3c22]
00004D5E  A2FD4C            mov [0x4cfd],al
00004D61  A0243C            mov al,[0x3c24]
00004D64  A2FE4C            mov [0x4cfe],al
00004D67  A0233C            mov al,[0x3c23]
00004D6A  A2FF4C            mov [0x4cff],al
00004D6D  A2004D            mov [0x4d00],al
00004D70  A0FD4C            mov al,[0x4cfd]
00004D73  A29B6D            mov [0x6d9b],al
00004D76  A2FE4C            mov [0x4cfe],al
00004D79  A0FF4C            mov al,[0x4cff]
00004D7C  A29C6D            mov [0x6d9c],al
00004D7F  A06C72            mov al,[0x726c]
00004D82  FEC0              inc al
00004D84  FEC8              dec al
00004D86  A2034D            mov [0x4d03],al
00004D89  E89A00            call word 0x4e26
00004D8C  FE06FF4C          inc byte [0x4cff]
00004D90  FE06FF4C          inc byte [0x4cff]
00004D94  FE06FF4C          inc byte [0x4cff]
00004D98  FE06FF4C          inc byte [0x4cff]
00004D9C  A0FF4C            mov al,[0x4cff]
00004D9F  3CAC              cmp al,0xac
00004DA1  F5                cmc
00004DA2  7303              jnc 0x4da7
00004DA4  EB02              jmp short 0x4da8
00004DA6  90                nop
00004DA7  C3                ret
00004DA8  B002              mov al,0x2
00004DAA  A20125            mov [0x2501],al
00004DAD  B005              mov al,0x5
00004DAF  FEC0              inc al
00004DB1  FEC8              dec al
00004DB3  A20025            mov [0x2500],al
00004DB6  E86FD7            call word 0x2528
00004DB9  A0FD4C            mov al,[0x4cfd]
00004DBC  A29B6D            mov [0x6d9b],al
00004DBF  A0004D            mov al,[0x4d00]
00004DC2  A29C6D            mov [0x6d9c],al
00004DC5  A06B72            mov al,[0x726b]
00004DC8  FEC0              inc al
00004DCA  FEC8              dec al
00004DCC  A2034D            mov [0x4d03],al
00004DCF  E85400            call word 0x4e26
00004DD2  B000              mov al,0x0
00004DD4  A2014D            mov [0x4d01],al
00004DD7  8A1E3A4A          mov bl,[0x4a3a]
00004DDB  8A87DF4E          mov al,[bx+0x4edf]
00004DDF  A2DD4E            mov [0x4edd],al
00004DE2  B305              mov bl,0x5
00004DE4  A03A4A            mov al,[0x4a3a]
00004DE7  FEC0              inc al
00004DE9  FEC8              dec al
00004DEB  7403              jz 0x4df0
00004DED  EB1C              jmp short 0x4e0b
00004DEF  90                nop
00004DF0  8A87BC26          mov al,[bx+0x26bc]
00004DF4  A2E14E            mov [0x4ee1],al
00004DF7  A29B6D            mov [0x6d9b],al
00004DFA  8A87C226          mov al,[bx+0x26c2]
00004DFE  FEC0              inc al
00004E00  FEC8              dec al
00004E02  A2E24E            mov [0x4ee2],al
00004E05  A29C6D            mov [0x6d9c],al
00004E08  E97B01            jmp word 0x4f86
00004E0B  8A87C826          mov al,[bx+0x26c8]
00004E0F  A2E14E            mov [0x4ee1],al
00004E12  A29B6D            mov [0x6d9b],al
00004E15  8A87CE26          mov al,[bx+0x26ce]
00004E19  FEC0              inc al
00004E1B  FEC8              dec al
00004E1D  A2E24E            mov [0x4ee2],al
00004E20  A29C6D            mov [0x6d9c],al
00004E23  E96001            jmp word 0x4f86
00004E26  A0004D            mov al,[0x4d00]
00004E29  A29E6D            mov [0x6d9e],al
00004E2C  A0FE4C            mov al,[0x4cfe]
00004E2F  A29D6D            mov [0x6d9d],al
00004E32  A0034D            mov al,[0x4d03]
00004E35  A29A6D            mov [0x6d9a],al
00004E38  A06C72            mov al,[0x726c]
00004E3B  FEC0              inc al
00004E3D  FEC8              dec al
00004E3F  A2986D            mov [0x6d98],al
00004E42  E823B5            call word 0x368
00004E45  A0FF4C            mov al,[0x4cff]
00004E48  A2004D            mov [0x4d00],al
00004E4B  A0FD4C            mov al,[0x4cfd]
00004E4E  FEC0              inc al
00004E50  FEC8              dec al
00004E52  A2FE4C            mov [0x4cfe],al
00004E55  C3                ret
00004E56  0001              add [bx+di],al
00004E58  0305              add ax,[di]
00004E5A  03A06C0B          add sp,[bx+si+0xb6c]
00004E5E  FEC0              inc al
00004E60  FEC8              dec al
00004E62  7503              jnz 0x4e67
00004E64  EB02              jmp short 0x4e68
00004E66  90                nop
00004E67  C3                ret
00004E68  A0650B            mov al,[0xb65]
00004E6B  3C47              cmp al,0x47
00004E6D  F5                cmc
00004E6E  7503              jnz 0x4e73
00004E70  EB02              jmp short 0x4e74
00004E72  90                nop
00004E73  C3                ret
00004E74  A0600B            mov al,[0xb60]
00004E77  3C70              cmp al,0x70
00004E79  F5                cmc
00004E7A  7203              jc 0x4e7f
00004E7C  EB02              jmp short 0x4e80
00004E7E  90                nop
00004E7F  C3                ret
00004E80  A07A0B            mov al,[0xb7a]
00004E83  FEC0              inc al
00004E85  FEC8              dec al
00004E87  7403              jz 0x4e8c
00004E89  EB1D              jmp short 0x4ea8
00004E8B  90                nop
00004E8C  FE0E600B          dec byte [0xb60]
00004E90  FE0E600B          dec byte [0xb60]
00004E94  E845C6            call word 0x14dc
00004E97  A06D0B            mov al,[0xb6d]
00004E9A  3C01              cmp al,0x1
00004E9C  F5                cmc
00004E9D  7403              jz 0x4ea2
00004E9F  EB04              jmp short 0x4ea5
00004EA1  90                nop
00004EA2  E98906            jmp word 0x552e
00004EA5  E99606            jmp word 0x553e
00004EA8  A06D0B            mov al,[0xb6d]
00004EAB  3C01              cmp al,0x1
00004EAD  F5                cmc
00004EAE  7403              jz 0x4eb3
00004EB0  EB28              jmp short 0x4eda
00004EB2  90                nop
00004EB3  FE0E600B          dec byte [0xb60]
00004EB7  FE0E600B          dec byte [0xb60]
00004EBB  A0564E            mov al,[0x4e56]
00004EBE  3C04              cmp al,0x4
00004EC0  F5                cmc
00004EC1  7403              jz 0x4ec6
00004EC3  EB06              jmp short 0x4ecb
00004EC5  90                nop
00004EC6  B000              mov al,0x0
00004EC8  A2564E            mov [0x4e56],al
00004ECB  8AD8              mov bl,al
00004ECD  8A87574E          mov al,[bx+0x4e57]
00004ED1  8AD8              mov bl,al
00004ED3  FE06564E          inc byte [0x4e56]
00004ED7  E9AEC2            jmp word 0x1188
00004EDA  E9C8C2            jmp word 0x11a5
00004EDD  0000              add [bx+si],al
00004EDF  0102              add [bp+si],ax
00004EE1  0000              add [bx+si],al
00004EE3  A0DD4E            mov al,[0x4edd]
00004EE6  FEC0              inc al
00004EE8  FEC8              dec al
00004EEA  7403              jz 0x4eef
00004EEC  EB02              jmp short 0x4ef0
00004EEE  90                nop
00004EEF  C3                ret
00004EF0  A0E14E            mov al,[0x4ee1]
00004EF3  A29B6D            mov [0x6d9b],al
00004EF6  A0E24E            mov al,[0x4ee2]
00004EF9  FEC0              inc al
00004EFB  FEC8              dec al
00004EFD  A29C6D            mov [0x6d9c],al
00004F00  E88300            call word 0x4f86
00004F03  A0DD4E            mov al,[0x4edd]
00004F06  3C01              cmp al,0x1
00004F08  F5                cmc
00004F09  7403              jz 0x4f0e
00004F0B  EB23              jmp short 0x4f30
00004F0D  90                nop
00004F0E  8A1EDE4E          mov bl,[0x4ede]
00004F12  8A87BC26          mov al,[bx+0x26bc]
00004F16  A29B6D            mov [0x6d9b],al
00004F19  A2E14E            mov [0x4ee1],al
00004F1C  8A87C226          mov al,[bx+0x26c2]
00004F20  FEC0              inc al
00004F22  FEC8              dec al
00004F24  A29C6D            mov [0x6d9c],al
00004F27  A2E24E            mov [0x4ee2],al
00004F2A  E85900            call word 0x4f86
00004F2D  EB20              jmp short 0x4f4f
00004F2F  90                nop
00004F30  8A1EDE4E          mov bl,[0x4ede]
00004F34  8A87C826          mov al,[bx+0x26c8]
00004F38  A29B6D            mov [0x6d9b],al
00004F3B  A2E14E            mov [0x4ee1],al
00004F3E  8A87CE26          mov al,[bx+0x26ce]
00004F42  FEC0              inc al
00004F44  FEC8              dec al
00004F46  A29C6D            mov [0x6d9c],al
00004F49  A2E24E            mov [0x4ee2],al
00004F4C  E83700            call word 0x4f86
00004F4F  FE0EDE4E          dec byte [0x4ede]
00004F53  7903              jns 0x4f58
00004F55  EB02              jmp short 0x4f59
00004F57  90                nop
00004F58  C3                ret
00004F59  B82F49            mov ax,0x492f
00004F5C  E89CF7            call word 0x46fb
00004F5F  B000              mov al,0x0
00004F61  A2DD4E            mov [0x4edd],al
00004F64  B005              mov al,0x5
00004F66  A2DE4E            mov [0x4ede],al
00004F69  A0E14E            mov al,[0x4ee1]
00004F6C  A29B6D            mov [0x6d9b],al
00004F6F  A0E24E            mov al,[0x4ee2]
00004F72  A29C6D            mov [0x6d9c],al
00004F75  8A1E044D          mov bl,[0x4d04]
00004F79  B000              mov al,0x0
00004F7B  FEC0              inc al
00004F7D  FEC8              dec al
00004F7F  8887283C          mov [bx+0x3c28],al
00004F83  EB01              jmp short 0x4f86
00004F85  90                nop
00004F86  C706976D2671      mov word [0x6d97],0x7126
00004F8C  E8EFCB            call word 0x1b7e
00004F8F  C3                ret
00004F90  0000              add [bx+si],al
00004F92  0000              add [bx+si],al
00004F94  0000              add [bx+si],al
00004F96  A06722            mov al,[0x2267]
00004F99  FEC0              inc al
00004F9B  FEC8              dec al
00004F9D  7503              jnz 0x4fa2
00004F9F  EB02              jmp short 0x4fa3
00004FA1  90                nop
00004FA2  C3                ret
00004FA3  A06C0B            mov al,[0xb6c]
00004FA6  FEC0              inc al
00004FA8  FEC8              dec al
00004FAA  7503              jnz 0x4faf
00004FAC  EB02              jmp short 0x4fb0
00004FAE  90                nop
00004FAF  C3                ret
00004FB0  A0914F            mov al,[0x4f91]
00004FB3  FEC0              inc al
00004FB5  FEC8              dec al
00004FB7  7403              jz 0x4fbc
00004FB9  EB02              jmp short 0x4fbd
00004FBB  90                nop
00004FBC  C3                ret
00004FBD  A0600B            mov al,[0xb60]
00004FC0  3C14              cmp al,0x14
00004FC2  F5                cmc
00004FC3  7203              jc 0x4fc8
00004FC5  EB0B              jmp short 0x4fd2
00004FC7  90                nop
00004FC8  B000              mov al,0x0
00004FCA  FEC0              inc al
00004FCC  FEC8              dec al
00004FCE  A2904F            mov [0x4f90],al
00004FD1  C3                ret
00004FD2  A0640B            mov al,[0xb64]
00004FD5  3A06630B          cmp al,[0xb63]
00004FD9  F5                cmc
00004FDA  7503              jnz 0x4fdf
00004FDC  EB04              jmp short 0x4fe2
00004FDE  90                nop
00004FDF  E923E5            jmp word 0x3505
00004FE2  A0600B            mov al,[0xb60]
00004FE5  3C10              cmp al,0x10
00004FE7  F5                cmc
00004FE8  7203              jc 0x4fed
00004FEA  EB02              jmp short 0x4fee
00004FEC  90                nop
00004FED  C3                ret
00004FEE  B88365            mov ax,0x6583
00004FF1  E89615            call word 0x658a
00004FF4  B001              mov al,0x1
00004FF6  A26722            mov [0x2267],al
00004FF9  A2904F            mov [0x4f90],al
00004FFC  A2720B            mov [0xb72],al
00004FFF  A26822            mov [0x2268],al
00005002  9F                lahf
00005003  802681077F        and byte [0x781],0x7f
00005008  9E                sahf
00005009  A2944F            mov [0x4f94],al
0000500C  A2954F            mov [0x4f95],al
0000500F  B000              mov al,0x0
00005011  A2914F            mov [0x4f91],al
00005014  A02E3C            mov al,[0x3c2e]
00005017  FEC0              inc al
00005019  FEC8              dec al
0000501B  7403              jz 0x5020
0000501D  EB02              jmp short 0x5021
0000501F  90                nop
00005020  C3                ret
00005021  A03040            mov al,[0x4030]
00005024  FEC0              inc al
00005026  FEC8              dec al
00005028  7503              jnz 0x502d
0000502A  EB36              jmp short 0x5062
0000502C  90                nop
0000502D  A06B72            mov al,[0x726b]
00005030  A29A6D            mov [0x6d9a],al
00005033  A08F37            mov al,[0x378f]
00005036  A2986D            mov [0x6d98],al
00005039  A08837            mov al,[0x3788]
0000503C  A29B6D            mov [0x6d9b],al
0000503F  A29D6D            mov [0x6d9d],al
00005042  A08A37            mov al,[0x378a]
00005045  FEC0              inc al
00005047  FEC8              dec al
00005049  A29C6D            mov [0x6d9c],al
0000504C  A29E6D            mov [0x6d9e],al
0000504F  E816B3            call word 0x368
00005052  A06B72            mov al,[0x726b]
00005055  A28F37            mov [0x378f],al
00005058  B001              mov al,0x1
0000505A  FEC0              inc al
0000505C  FEC8              dec al
0000505E  A2FA43            mov [0x43fa],al
00005061  C3                ret
00005062  A06B72            mov al,[0x726b]
00005065  A29A6D            mov [0x6d9a],al
00005068  A0633D            mov al,[0x3d63]
0000506B  A2986D            mov [0x6d98],al
0000506E  A0583D            mov al,[0x3d58]
00005071  A29B6D            mov [0x6d9b],al
00005074  A29D6D            mov [0x6d9d],al
00005077  A0593D            mov al,[0x3d59]
0000507A  FEC0              inc al
0000507C  FEC8              dec al
0000507E  A29C6D            mov [0x6d9c],al
00005081  A29E6D            mov [0x6d9e],al
00005084  E8E1B2            call word 0x368
00005087  A06B72            mov al,[0x726b]
0000508A  A2633D            mov [0x3d63],al
0000508D  B001              mov al,0x1
0000508F  FEC0              inc al
00005091  FEC8              dec al
00005093  A2934F            mov [0x4f93],al
00005096  C3                ret
00005097  0000              add [bx+si],al
00005099  01A0924F          add [bx+si+0x4f92],sp
0000509D  FEC0              inc al
0000509F  FEC8              dec al
000050A1  7403              jz 0x50a6
000050A3  EB02              jmp short 0x50a7
000050A5  90                nop
000050A6  C3                ret
000050A7  FE0E9950          dec byte [0x5099]
000050AB  7503              jnz 0x50b0
000050AD  EB02              jmp short 0x50b1
000050AF  90                nop
000050B0  C3                ret
000050B1  B003              mov al,0x3
000050B3  A29950            mov [0x5099],al
000050B6  A09850            mov al,[0x5098]
000050B9  FEC0              inc al
000050BB  FEC8              dec al
000050BD  7403              jz 0x50c2
000050BF  EB15              jmp short 0x50d6
000050C1  90                nop
000050C2  B008              mov al,0x8
000050C4  A29750            mov [0x5097],al
000050C7  B001              mov al,0x1
000050C9  FEC0              inc al
000050CB  FEC8              dec al
000050CD  A29850            mov [0x5098],al
000050D0  B83622            mov ax,0x2236
000050D3  E825F6            call word 0x46fb
000050D6  8A1E640B          mov bl,[0xb64]
000050DA  8A87B315          mov al,[bx+0x15b3]
000050DE  A29C6D            mov [0x6d9c],al
000050E1  2C10              sub al,0x10
000050E3  F5                cmc
000050E4  A2641B            mov [0x1b64],al
000050E7  B001              mov al,0x1
000050E9  A29B6D            mov [0x6d9b],al
000050EC  0401              add al,0x1
000050EE  A2651B            mov [0x1b65],al
000050F1  8A1E9750          mov bl,[0x5097]
000050F5  8A872472          mov al,[bx+0x7224]
000050F9  32E4              xor ah,ah
000050FB  050009            add ax,0x900
000050FE  A3976D            mov [0x6d97],ax
00005101  E813B2            call word 0x317
00005104  FE0E9750          dec byte [0x5097]
00005108  7903              jns 0x510d
0000510A  EB02              jmp short 0x510e
0000510C  90                nop
0000510D  C3                ret
0000510E  B000              mov al,0x0
00005110  A2924F            mov [0x4f92],al
00005113  A29850            mov [0x5098],al
00005116  A2720B            mov [0xb72],al
00005119  A2944F            mov [0x4f94],al
0000511C  A2954F            mov [0x4f95],al
0000511F  B001              mov al,0x1
00005121  A29950            mov [0x5099],al
00005124  A02634            mov al,[0x3426]
00005127  A2600B            mov [0xb60],al
0000512A  A2660B            mov [0xb66],al
0000512D  A02734            mov al,[0x3427]
00005130  A2650B            mov [0xb65],al
00005133  A2670B            mov [0xb67],al
00005136  A06772            mov al,[0x7267]
00005139  A26B0B            mov [0xb6b],al
0000513C  A02E3C            mov al,[0x3c2e]
0000513F  FEC0              inc al
00005141  FEC8              dec al
00005143  7403              jz 0x5148
00005145  EB02              jmp short 0x5149
00005147  90                nop
00005148  C3                ret
00005149  A03040            mov al,[0x4030]
0000514C  FEC0              inc al
0000514E  FEC8              dec al
00005150  7503              jnz 0x5155
00005152  EB16              jmp short 0x516a
00005154  90                nop
00005155  B014              mov al,0x14
00005157  A28937            mov [0x3789],al
0000515A  A0650B            mov al,[0xb65]
0000515D  A28B37            mov [0x378b],al
00005160  B000              mov al,0x0
00005162  FEC0              inc al
00005164  FEC8              dec al
00005166  A2FA43            mov [0x43fa],al
00005169  C3                ret
0000516A  B014              mov al,0x14
0000516C  A25A3D            mov [0x3d5a],al
0000516F  A0650B            mov al,[0xb65]
00005172  A25B3D            mov [0x3d5b],al
00005175  B000              mov al,0x0
00005177  FEC0              inc al
00005179  FEC8              dec al
0000517B  A2934F            mov [0x4f93],al
0000517E  C3                ret
0000517F  A0650B            mov al,[0xb65]
00005182  D0D4              rcl ah,1
00005184  24F0              and al,0xf0
00005186  D0DC              rcr ah,1
00005188  F8                clc
00005189  D0D8              rcr al,1
0000518B  D0D8              rcr al,1
0000518D  D0D8              rcr al,1
0000518F  D0D8              rcr al,1
00005191  D0E8              shr al,1
00005193  8AD8              mov bl,al
00005195  FECB              dec bl
00005197  881E630B          mov [0xb63],bl
0000519B  A0600B            mov al,[0xb60]
0000519E  3C14              cmp al,0x14
000051A0  F5                cmc
000051A1  7203              jc 0x51a6
000051A3  EB0A              jmp short 0x51af
000051A5  90                nop
000051A6  B001              mov al,0x1
000051A8  FEC0              inc al
000051AA  FEC8              dec al
000051AC  A2914F            mov [0x4f91],al
000051AF  C3                ret
000051B0  0000              add [bx+si],al
000051B2  0000              add [bx+si],al
000051B4  0000              add [bx+si],al
000051B6  000C              add [si],cl
000051B8  16                push ss
000051B9  2300              and ax,[bx+si]
000051BB  A0B251            mov al,[0x51b2]
000051BE  FEC0              inc al
000051C0  FEC8              dec al
000051C2  7403              jz 0x51c7
000051C4  EB51              jmp short 0x5217
000051C6  90                nop
000051C7  A06C0B            mov al,[0xb6c]
000051CA  FEC0              inc al
000051CC  FEC8              dec al
000051CE  7503              jnz 0x51d3
000051D0  EB02              jmp short 0x51d4
000051D2  90                nop
000051D3  C3                ret
000051D4  A0600B            mov al,[0xb60]
000051D7  3CDB              cmp al,0xdb
000051D9  F5                cmc
000051DA  7303              jnc 0x51df
000051DC  EB02              jmp short 0x51e0
000051DE  90                nop
000051DF  C3                ret
000051E0  3CEE              cmp al,0xee
000051E2  F5                cmc
000051E3  7303              jnc 0x51e8
000051E5  EB04              jmp short 0x51eb
000051E7  90                nop
000051E8  E93DE3            jmp word 0x3528
000051EB  B001              mov al,0x1
000051ED  A2720B            mov [0xb72],al
000051F0  A2B251            mov [0x51b2],al
000051F3  A2B051            mov [0x51b0],al
000051F6  A2944F            mov [0x4f94],al
000051F9  C7061510006F      mov word [0x1015],0x6f00
000051FF  8A1E630B          mov bl,[0xb63]
00005203  FEC3              inc bl
00005205  FECB              dec bl
00005207  FECB              dec bl
00005209  7803              js 0x520e
0000520B  EB03              jmp short 0x5210
0000520D  90                nop
0000520E  B304              mov bl,0x4
00005210  8A87B315          mov al,[bx+0x15b3]
00005214  A2B151            mov [0x51b1],al
00005217  A0B051            mov al,[0x51b0]
0000521A  FEC0              inc al
0000521C  FEC8              dec al
0000521E  7503              jnz 0x5223
00005220  EB1F              jmp short 0x5241
00005222  90                nop
00005223  E85C00            call word 0x5282
00005226  E80EBF            call word 0x1137
00005229  E85F00            call word 0x528b
0000522C  A0650B            mov al,[0xb65]
0000522F  3CB7              cmp al,0xb7
00005231  F5                cmc
00005232  7403              jz 0x5237
00005234  EB41              jmp short 0x5277
00005236  90                nop
00005237  B000              mov al,0x0
00005239  FEC0              inc al
0000523B  FEC8              dec al
0000523D  A2B051            mov [0x51b0],al
00005240  C3                ret
00005241  E83400            call word 0x5278
00005244  E8B5BE            call word 0x10fc
00005247  E84100            call word 0x528b
0000524A  A0650B            mov al,[0xb65]
0000524D  3A06B151          cmp al,[0x51b1]
00005251  F5                cmc
00005252  7403              jz 0x5257
00005254  EB21              jmp short 0x5277
00005256  90                nop
00005257  B000              mov al,0x0
00005259  A2B251            mov [0x51b2],al
0000525C  A2720B            mov [0xb72],al
0000525F  A26C0B            mov [0xb6c],al
00005262  A2944F            mov [0x4f94],al
00005265  B003              mov al,0x3
00005267  FEC0              inc al
00005269  FEC8              dec al
0000526B  A26D0B            mov [0xb6d],al
0000526E  E87FBF            call word 0x11f0
00005271  C70615100071      mov word [0x1015],0x7100
00005277  C3                ret
00005278  A0650B            mov al,[0xb65]
0000527B  2C02              sub al,0x2
0000527D  F5                cmc
0000527E  A2650B            mov [0xb65],al
00005281  C3                ret
00005282  A0650B            mov al,[0xb65]
00005285  0402              add al,0x2
00005287  A2650B            mov [0xb65],al
0000528A  C3                ret
0000528B  A0650B            mov al,[0xb65]
0000528E  3CAF              cmp al,0xaf
00005290  F5                cmc
00005291  7503              jnz 0x5296
00005293  EB12              jmp short 0x52a7
00005295  90                nop
00005296  3CB3              cmp al,0xb3
00005298  F5                cmc
00005299  7503              jnz 0x529e
0000529B  EB13              jmp short 0x52b0
0000529D  90                nop
0000529E  3CB7              cmp al,0xb7
000052A0  F5                cmc
000052A1  7503              jnz 0x52a6
000052A3  EB14              jmp short 0x52b9
000052A5  90                nop
000052A6  C3                ret
000052A7  C706976D000C      mov word [0x6d97],0xc00
000052AD  EB16              jmp short 0x52c5
000052AF  90                nop
000052B0  C706976D000D      mov word [0x6d97],0xd00
000052B6  EB0D              jmp short 0x52c5
000052B8  90                nop
000052B9  B85622            mov ax,0x2256
000052BC  E83CF4            call word 0x46fb
000052BF  C706976D000E      mov word [0x6d97],0xe00
000052C5  A0986D            mov al,[0x6d98]
000052C8  A2B651            mov [0x51b6],al
000052CB  A0976D            mov al,[0x6d97]
000052CE  A2B551            mov [0x51b5],al
000052D1  A0B451            mov al,[0x51b4]
000052D4  A29A6D            mov [0x6d9a],al
000052D7  A0B351            mov al,[0x51b3]
000052DA  A2996D            mov [0x6d99],al
000052DD  8A0EBA51          mov cl,[0x51ba]
000052E1  8BF1              mov si,cx
000052E3  8A84B751          mov al,[si+0x51b7]
000052E7  A29B6D            mov [0x6d9b],al
000052EA  A29D6D            mov [0x6d9d],al
000052ED  B0BC              mov al,0xbc
000052EF  FEC0              inc al
000052F1  FEC8              dec al
000052F3  A29C6D            mov [0x6d9c],al
000052F6  A29E6D            mov [0x6d9e],al
000052F9  E8B5B0            call word 0x3b1
000052FC  A0B651            mov al,[0x51b6]
000052FF  A2B451            mov [0x51b4],al
00005302  A0B551            mov al,[0x51b5]
00005305  FEC0              inc al
00005307  FEC8              dec al
00005309  A2B351            mov [0x51b3],al
0000530C  C3                ret
0000530D  A06C0B            mov al,[0xb6c]
00005310  FEC0              inc al
00005312  FEC8              dec al
00005314  7403              jz 0x5319
00005316  EB02              jmp short 0x531a
00005318  90                nop
00005319  C3                ret
0000531A  A0600B            mov al,[0xb60]
0000531D  3CDB              cmp al,0xdb
0000531F  F5                cmc
00005320  7303              jnc 0x5325
00005322  EB0B              jmp short 0x532f
00005324  90                nop
00005325  B000              mov al,0x0
00005327  FEC0              inc al
00005329  FEC8              dec al
0000532B  A2944F            mov [0x4f94],al
0000532E  C3                ret
0000532F  B001              mov al,0x1
00005331  FEC0              inc al
00005333  FEC8              dec al
00005335  A2944F            mov [0x4f94],al
00005338  C3                ret
00005339  B304              mov bl,0x4
0000533B  8A873140          mov al,[bx+0x4031]
0000533F  3C02              cmp al,0x2
00005341  F5                cmc
00005342  7403              jz 0x5347
00005344  EB22              jmp short 0x5368
00005346  90                nop
00005347  FECB              dec bl
00005349  7402              jz 0x534d
0000534B  EBEE              jmp short 0x533b
0000534D  B001              mov al,0x1
0000534F  FEC0              inc al
00005351  FEC8              dec al
00005353  A2B73E            mov [0x3eb7],al
00005356  E892EC            call word 0x3feb
00005359  E82F0C            call word 0x5f8b
0000535C  E8450E            call word 0x61a4
0000535F  B81D65            mov ax,0x651d
00005362  E82512            call word 0x658a
00005365  E90ABA            jmp word 0xd72
00005368  C3                ret
00005369  0000              add [bx+si],al
0000536B  0000              add [bx+si],al
0000536D  0000              add [bx+si],al
0000536F  0000              add [bx+si],al
00005371  0000              add [bx+si],al
00005373  00A07053          add [bx+si+0x5370],ah
00005377  FEC0              inc al
00005379  FEC8              dec al
0000537B  7503              jnz 0x5380
0000537D  EB02              jmp short 0x5381
0000537F  90                nop
00005380  C3                ret
00005381  A07153            mov al,[0x5371]
00005384  FEC0              inc al
00005386  FEC8              dec al
00005388  7503              jnz 0x538d
0000538A  EB02              jmp short 0x538e
0000538C  90                nop
0000538D  C3                ret
0000538E  A0600B            mov al,[0xb60]
00005391  3C54              cmp al,0x54
00005393  F5                cmc
00005394  7303              jnc 0x5399
00005396  EB02              jmp short 0x539a
00005398  90                nop
00005399  C3                ret
0000539A  3C9A              cmp al,0x9a
0000539C  F5                cmc
0000539D  7203              jc 0x53a2
0000539F  EB02              jmp short 0x53a3
000053A1  90                nop
000053A2  C3                ret
000053A3  A06C0B            mov al,[0xb6c]
000053A6  FEC0              inc al
000053A8  FEC8              dec al
000053AA  7403              jz 0x53af
000053AC  EB02              jmp short 0x53b0
000053AE  90                nop
000053AF  C3                ret
000053B0  A0650B            mov al,[0xb65]
000053B3  0404              add al,0x4
000053B5  3A068D6B          cmp al,[0x6b8d]
000053B9  F5                cmc
000053BA  7303              jnc 0x53bf
000053BC  EB04              jmp short 0x53c2
000053BE  90                nop
000053BF  EB51              jmp short 0x5412
000053C1  90                nop
000053C2  2C06              sub al,0x6
000053C4  F5                cmc
000053C5  3A068D6B          cmp al,[0x6b8d]
000053C9  F5                cmc
000053CA  7203              jc 0x53cf
000053CC  EB04              jmp short 0x53d2
000053CE  90                nop
000053CF  EB41              jmp short 0x5412
000053D1  90                nop
000053D2  A0600B            mov al,[0xb60]
000053D5  3C5B              cmp al,0x5b
000053D7  F5                cmc
000053D8  7303              jnc 0x53dd
000053DA  EB04              jmp short 0x53e0
000053DC  90                nop
000053DD  EB33              jmp short 0x5412
000053DF  90                nop
000053E0  3C98              cmp al,0x98
000053E2  F5                cmc
000053E3  7203              jc 0x53e8
000053E5  EB04              jmp short 0x53eb
000053E7  90                nop
000053E8  EB28              jmp short 0x5412
000053EA  90                nop
000053EB  A06C0B            mov al,[0xb6c]
000053EE  FEC0              inc al
000053F0  FEC8              dec al
000053F2  7503              jnz 0x53f7
000053F4  EB04              jmp short 0x53fa
000053F6  90                nop
000053F7  E8CABE            call word 0x12c4
000053FA  B001              mov al,0x1
000053FC  A27253            mov [0x5372],al
000053FF  A27053            mov [0x5370],al
00005402  A27153            mov [0x5371],al
00005405  B000              mov al,0x0
00005407  FEC0              inc al
00005409  FEC8              dec al
0000540B  A2926B            mov [0x6b92],al
0000540E  A2790B            mov [0xb79],al
00005411  C3                ret
00005412  B000              mov al,0x0
00005414  FEC0              inc al
00005416  FEC8              dec al
00005418  A27153            mov [0x5371],al
0000541B  C3                ret
0000541C  A07153            mov al,[0x5371]
0000541F  FEC0              inc al
00005421  FEC8              dec al
00005423  7403              jz 0x5428
00005425  EB02              jmp short 0x5429
00005427  90                nop
00005428  C3                ret
00005429  A08D6B            mov al,[0x6b8d]
0000542C  A2650B            mov [0xb65],al
0000542F  A07A0B            mov al,[0xb7a]
00005432  FEC0              inc al
00005434  FEC8              dec al
00005436  7403              jz 0x543b
00005438  EB04              jmp short 0x543e
0000543A  90                nop
0000543B  E84500            call word 0x5483
0000543E  A0600B            mov al,[0xb60]
00005441  3C69              cmp al,0x69
00005443  F5                cmc
00005444  7303              jnc 0x5449
00005446  EB04              jmp short 0x544c
00005448  90                nop
00005449  EB20              jmp short 0x546b
0000544B  90                nop
0000544C  3C85              cmp al,0x85
0000544E  F5                cmc
0000544F  7203              jc 0x5454
00005451  EB0E              jmp short 0x5461
00005453  90                nop
00005454  EB21              jmp short 0x5477
00005456  90                nop
00005457  B000              mov al,0x0
00005459  FEC0              inc al
0000545B  FEC8              dec al
0000545D  A27253            mov [0x5372],al
00005460  C3                ret
00005461  B001              mov al,0x1
00005463  FEC0              inc al
00005465  FEC8              dec al
00005467  A27253            mov [0x5372],al
0000546A  C3                ret
0000546B  A06D0B            mov al,[0xb6d]
0000546E  3C03              cmp al,0x3
00005470  F5                cmc
00005471  7502              jnz 0x5475
00005473  EBE2              jmp short 0x5457
00005475  EBEA              jmp short 0x5461
00005477  A06D0B            mov al,[0xb6d]
0000547A  3C01              cmp al,0x1
0000547C  F5                cmc
0000547D  7502              jnz 0x5481
0000547F  EBD6              jmp short 0x5457
00005481  EBDE              jmp short 0x5461
00005483  A06D0B            mov al,[0xb6d]
00005486  3C01              cmp al,0x1
00005488  F5                cmc
00005489  7403              jz 0x548e
0000548B  EB04              jmp short 0x5491
0000548D  90                nop
0000548E  E99D00            jmp word 0x552e
00005491  E9AA00            jmp word 0x553e
00005494  0000              add [bx+si],al
00005496  00A09454          add [bx+si+0x5494],ah
0000549A  FEC0              inc al
0000549C  FEC8              dec al
0000549E  7403              jz 0x54a3
000054A0  EB02              jmp short 0x54a4
000054A2  90                nop
000054A3  C3                ret
000054A4  8A1E9554          mov bl,[0x5495]
000054A8  8A875E30          mov al,[bx+0x305e]
000054AC  A2600B            mov [0xb60],al
000054AF  8A878230          mov al,[bx+0x3082]
000054B3  2C02              sub al,0x2
000054B5  F5                cmc
000054B6  A2650B            mov [0xb65],al
000054B9  FE0E9554          dec byte [0x5495]
000054BD  7903              jns 0x54c2
000054BF  EB2B              jmp short 0x54ec
000054C1  90                nop
000054C2  E86900            call word 0x552e
000054C5  A09554            mov al,[0x5495]
000054C8  3C0A              cmp al,0xa
000054CA  F5                cmc
000054CB  7303              jnc 0x54d0
000054CD  EB02              jmp short 0x54d1
000054CF  90                nop
000054D0  C3                ret
000054D1  3C10              cmp al,0x10
000054D3  F5                cmc
000054D4  7203              jc 0x54d9
000054D6  EB02              jmp short 0x54da
000054D8  90                nop
000054D9  C3                ret
000054DA  B000              mov al,0x0
000054DC  A27253            mov [0x5372],al
000054DF  B001              mov al,0x1
000054E1  FEC0              inc al
000054E3  FEC8              dec al
000054E5  A2926B            mov [0x6b92],al
000054E8  A27353            mov [0x5373],al
000054EB  C3                ret
000054EC  E98EE1            jmp word 0x367d
000054EF  A09654            mov al,[0x5496]
000054F2  FEC0              inc al
000054F4  FEC8              dec al
000054F6  7503              jnz 0x54fb
000054F8  EB02              jmp short 0x54fc
000054FA  90                nop
000054FB  C3                ret
000054FC  A06E0B            mov al,[0xb6e]
000054FF  3C0A              cmp al,0xa
00005501  F5                cmc
00005502  7503              jnz 0x5507
00005504  EB02              jmp short 0x5508
00005506  90                nop
00005507  C3                ret
00005508  E8B9BD            call word 0x12c4
0000550B  B001              mov al,0x1
0000550D  A29454            mov [0x5494],al
00005510  A29654            mov [0x5496],al
00005513  A27253            mov [0x5372],al
00005516  B323              mov bl,0x23
00005518  8A875E30          mov al,[bx+0x305e]
0000551C  A2600B            mov [0xb60],al
0000551F  8A878230          mov al,[bx+0x3082]
00005523  2C02              sub al,0x2
00005525  F5                cmc
00005526  A2650B            mov [0xb65],al
00005529  881E9554          mov [0x5495],bl
0000552D  C3                ret
0000552E  A06172            mov al,[0x7261]
00005531  FEC0              inc al
00005533  FEC8              dec al
00005535  A2986D            mov [0x6d98],al
00005538  A2690B            mov [0xb69],al
0000553B  E9B8BD            jmp word 0x12f6
0000553E  A06372            mov al,[0x7263]
00005541  FEC0              inc al
00005543  FEC8              dec al
00005545  A2986D            mov [0x6d98],al
00005548  A2690B            mov [0xb69],al
0000554B  E9A8BD            jmp word 0x12f6
0000554E  A04F59            mov al,[0x594f]
00005551  3C02              cmp al,0x2
00005553  F5                cmc
00005554  7403              jz 0x5559
00005556  EB02              jmp short 0x555a
00005558  90                nop
00005559  C3                ret
0000555A  B103              mov cl,0x3
0000555C  A0650B            mov al,[0xb65]
0000555F  8BF1              mov si,cx
00005561  3A84B315          cmp al,[si+0x15b3]
00005565  F5                cmc
00005566  7503              jnz 0x556b
00005568  EB26              jmp short 0x5590
0000556A  90                nop
0000556B  FEC9              dec cl
0000556D  7802              js 0x5571
0000556F  EBEE              jmp short 0x555f
00005571  A0650B            mov al,[0xb65]
00005574  3CBB              cmp al,0xbb
00005576  F5                cmc
00005577  7303              jnc 0x557c
00005579  EB0B              jmp short 0x5586
0000557B  90                nop
0000557C  B018              mov al,0x18
0000557E  FEC0              inc al
00005580  FEC8              dec al
00005582  A27B0B            mov [0xb7b],al
00005585  C3                ret
00005586  B00F              mov al,0xf
00005588  FEC0              inc al
0000558A  FEC8              dec al
0000558C  A27B0B            mov [0xb7b],al
0000558F  C3                ret
00005590  A0600B            mov al,[0xb60]
00005593  3C50              cmp al,0x50
00005595  F5                cmc
00005596  7303              jnc 0x559b
00005598  EB04              jmp short 0x559e
0000559A  90                nop
0000559B  E926BD            jmp word 0x12c4
0000559E  3C9E              cmp al,0x9e
000055A0  F5                cmc
000055A1  7203              jc 0x55a6
000055A3  EB04              jmp short 0x55a9
000055A5  90                nop
000055A6  E91BBD            jmp word 0x12c4
000055A9  A0650B            mov al,[0xb65]
000055AC  3C27              cmp al,0x27
000055AE  F5                cmc
000055AF  7503              jnz 0x55b4
000055B1  EB0B              jmp short 0x55be
000055B3  90                nop
000055B4  B018              mov al,0x18
000055B6  FEC0              inc al
000055B8  FEC8              dec al
000055BA  A27B0B            mov [0xb7b],al
000055BD  C3                ret
000055BE  B00F              mov al,0xf
000055C0  FEC0              inc al
000055C2  FEC8              dec al
000055C4  A27B0B            mov [0xb7b],al
000055C7  C3                ret
000055C8  A0650B            mov al,[0xb65]
000055CB  3CB0              cmp al,0xb0
000055CD  F5                cmc
000055CE  7303              jnc 0x55d3
000055D0  EB0B              jmp short 0x55dd
000055D2  90                nop
000055D3  B001              mov al,0x1
000055D5  FEC0              inc al
000055D7  FEC8              dec al
000055D9  A27C0B            mov [0xb7c],al
000055DC  C3                ret
000055DD  B000              mov al,0x0
000055DF  FEC0              inc al
000055E1  FEC8              dec al
000055E3  A27C0B            mov [0xb7c],al
000055E6  C3                ret
000055E7  A06C0B            mov al,[0xb6c]
000055EA  FEC0              inc al
000055EC  FEC8              dec al
000055EE  7503              jnz 0x55f3
000055F0  EB02              jmp short 0x55f4
000055F2  90                nop
000055F3  C3                ret
000055F4  A0650B            mov al,[0xb65]
000055F7  3CB0              cmp al,0xb0
000055F9  F5                cmc
000055FA  7203              jc 0x55ff
000055FC  EB02              jmp short 0x5600
000055FE  90                nop
000055FF  C3                ret
00005600  A0600B            mov al,[0xb60]
00005603  3C52              cmp al,0x52
00005605  F5                cmc
00005606  7303              jnc 0x560b
00005608  EB02              jmp short 0x560c
0000560A  90                nop
0000560B  C3                ret
0000560C  3C5A              cmp al,0x5a
0000560E  F5                cmc
0000560F  7203              jc 0x5614
00005611  EB04              jmp short 0x5617
00005613  90                nop
00005614  EB13              jmp short 0x5629
00005616  90                nop
00005617  B0B1              mov al,0xb1
00005619  A22334            mov [0x3423],al
0000561C  A0600B            mov al,[0xb60]
0000561F  FEC0              inc al
00005621  FEC8              dec al
00005623  A22234            mov [0x3422],al
00005626  E90ADF            jmp word 0x3533
00005629  3C98              cmp al,0x98
0000562B  F5                cmc
0000562C  7303              jnc 0x5631
0000562E  EB02              jmp short 0x5632
00005630  90                nop
00005631  C3                ret
00005632  3C9E              cmp al,0x9e
00005634  F5                cmc
00005635  7203              jc 0x563a
00005637  EB02              jmp short 0x563b
00005639  90                nop
0000563A  C3                ret
0000563B  B0BD              mov al,0xbd
0000563D  A22334            mov [0x3423],al
00005640  A0600B            mov al,[0xb60]
00005643  FEC0              inc al
00005645  FEC8              dec al
00005647  A22234            mov [0x3422],al
0000564A  E9E6DE            jmp word 0x3533
0000564D  27                daa
0000564E  47                inc di
0000564F  6787BDA06C0BFE    xchg di,[ebp-0x1f49360]
00005656  C0FEC8            sar dh,byte 0xc8
00005659  7403              jz 0x565e
0000565B  EB02              jmp short 0x565f
0000565D  90                nop
0000565E  C3                ret
0000565F  A06E0B            mov al,[0xb6e]
00005662  3C17              cmp al,0x17
00005664  F5                cmc
00005665  7503              jnz 0x566a
00005667  EB02              jmp short 0x566b
00005669  90                nop
0000566A  C3                ret
0000566B  A0600B            mov al,[0xb60]
0000566E  3C58              cmp al,0x58
00005670  F5                cmc
00005671  7303              jnc 0x5676
00005673  EB04              jmp short 0x5679
00005675  90                nop
00005676  EB09              jmp short 0x5681
00005678  90                nop
00005679  3C98              cmp al,0x98
0000567B  F5                cmc
0000567C  7203              jc 0x5681
0000567E  EB32              jmp short 0x56b2
00005680  90                nop
00005681  B100              mov cl,0x0
00005683  A0650B            mov al,[0xb65]
00005686  8BF1              mov si,cx
00005688  3A844D56          cmp al,[si+0x564d]
0000568C  F5                cmc
0000568D  7203              jc 0x5692
0000568F  EB0B              jmp short 0x569c
00005691  90                nop
00005692  FEC1              inc cl
00005694  80F905            cmp cl,0x5
00005697  F5                cmc
00005698  7402              jz 0x569c
0000569A  EBEA              jmp short 0x5686
0000569C  8BF1              mov si,cx
0000569E  8A844D56          mov al,[si+0x564d]
000056A2  A22334            mov [0x3423],al
000056A5  A0600B            mov al,[0xb60]
000056A8  FEC0              inc al
000056AA  FEC8              dec al
000056AC  A22234            mov [0x3422],al
000056AF  E981DE            jmp word 0x3533
000056B2  A08D6B            mov al,[0x6b8d]
000056B5  3A06650B          cmp al,[0xb65]
000056B9  F5                cmc
000056BA  7203              jc 0x56bf
000056BC  EB0D              jmp short 0x56cb
000056BE  90                nop
000056BF  D0D4              rcl ah,1
000056C1  0C01              or al,0x1
000056C3  D0DC              rcr ah,1
000056C5  A22334            mov [0x3423],al
000056C8  EB0A              jmp short 0x56d4
000056CA  90                nop
000056CB  B0BD              mov al,0xbd
000056CD  FEC0              inc al
000056CF  FEC8              dec al
000056D1  A22334            mov [0x3423],al
000056D4  E95CDE            jmp word 0x3533
000056D7  A6                cmpsb
000056D8  77A0              ja 0x567a
000056DA  3857FE            cmp [bx-0x2],dl
000056DD  C0FEC8            sar dh,byte 0xc8
000056E0  7503              jnz 0x56e5
000056E2  EB02              jmp short 0x56e6
000056E4  90                nop
000056E5  C3                ret
000056E6  A0650B            mov al,[0xb65]
000056E9  3C48              cmp al,0x48
000056EB  F5                cmc
000056EC  7203              jc 0x56f1
000056EE  EB02              jmp short 0x56f2
000056F0  90                nop
000056F1  C3                ret
000056F2  A0600B            mov al,[0xb60]
000056F5  3CAA              cmp al,0xaa
000056F7  F5                cmc
000056F8  7303              jnc 0x56fd
000056FA  EB02              jmp short 0x56fe
000056FC  90                nop
000056FD  C3                ret
000056FE  A06E0B            mov al,[0xb6e]
00005701  3C0A              cmp al,0xa
00005703  F5                cmc
00005704  7503              jnz 0x5709
00005706  EB02              jmp short 0x570a
00005708  90                nop
00005709  C3                ret
0000570A  E8B7BB            call word 0x12c4
0000570D  B001              mov al,0x1
0000570F  A23757            mov [0x5737],al
00005712  A2720B            mov [0xb72],al
00005715  A23857            mov [0x5738],al
00005718  B323              mov bl,0x23
0000571A  8A875E30          mov al,[bx+0x305e]
0000571E  0206D756          add al,[0x56d7]
00005722  A2600B            mov [0xb60],al
00005725  8A878230          mov al,[bx+0x3082]
00005729  2A06D856          sub al,[0x56d8]
0000572D  F5                cmc
0000572E  A2650B            mov [0xb65],al
00005731  881E9554          mov [0x5495],bl
00005735  C3                ret
00005736  C3                ret
00005737  0000              add [bx+si],al
00005739  A03757            mov al,[0x5737]
0000573C  FEC0              inc al
0000573E  FEC8              dec al
00005740  7403              jz 0x5745
00005742  EB02              jmp short 0x5746
00005744  90                nop
00005745  C3                ret
00005746  8A1E9554          mov bl,[0x5495]
0000574A  8A875E30          mov al,[bx+0x305e]
0000574E  0206D756          add al,[0x56d7]
00005752  7903              jns 0x5757
00005754  EB03              jmp short 0x5759
00005756  90                nop
00005757  B0FE              mov al,0xfe
00005759  A2600B            mov [0xb60],al
0000575C  8A878230          mov al,[bx+0x3082]
00005760  2A06D856          sub al,[0x56d8]
00005764  F5                cmc
00005765  A2650B            mov [0xb65],al
00005768  FE0E9554          dec byte [0x5495]
0000576C  A09554            mov al,[0x5495]
0000576F  3C05              cmp al,0x5
00005771  F5                cmc
00005772  7503              jnz 0x5777
00005774  EB04              jmp short 0x577a
00005776  90                nop
00005777  E9B4FD            jmp word 0x552e
0000577A  B024              mov al,0x24
0000577C  FEC0              inc al
0000577E  FEC8              dec al
00005780  A26658            mov [0x5866],al
00005783  E9E100            jmp word 0x5867
00005786  A03757            mov al,[0x5737]
00005789  FEC0              inc al
0000578B  FEC8              dec al
0000578D  7403              jz 0x5792
0000578F  EB02              jmp short 0x5793
00005791  90                nop
00005792  C3                ret
00005793  B305              mov bl,0x5
00005795  8A87A038          mov al,[bx+0x38a0]
00005799  FEC0              inc al
0000579B  FEC8              dec al
0000579D  7403              jz 0x57a2
0000579F  EB17              jmp short 0x57b8
000057A1  90                nop
000057A2  FECB              dec bl
000057A4  7802              js 0x57a8
000057A6  EBED              jmp short 0x5795
000057A8  A0255D            mov al,[0x5d25]
000057AB  2C04              sub al,0x4
000057AD  F5                cmc
000057AE  3A06600B          cmp al,[0xb60]
000057B2  F5                cmc
000057B3  7203              jc 0x57b8
000057B5  EB02              jmp short 0x57b9
000057B7  90                nop
000057B8  C3                ret
000057B9  040E              add al,0xe
000057BB  3A06600B          cmp al,[0xb60]
000057BF  F5                cmc
000057C0  7303              jnc 0x57c5
000057C2  EB02              jmp short 0x57c6
000057C4  90                nop
000057C5  C3                ret
000057C6  A0265D            mov al,[0x5d26]
000057C9  041A              add al,0x1a
000057CB  3A06650B          cmp al,[0xb65]
000057CF  F5                cmc
000057D0  7303              jnc 0x57d5
000057D2  EB02              jmp short 0x57d6
000057D4  90                nop
000057D5  C3                ret
000057D6  A0265D            mov al,[0x5d26]
000057D9  040F              add al,0xf
000057DB  A2650B            mov [0xb65],al
000057DE  B82F49            mov ax,0x492f
000057E1  E817EF            call word 0x46fb
000057E4  E84605            call word 0x5d2d
000057E7  B000              mov al,0x0
000057E9  FEC0              inc al
000057EB  FEC8              dec al
000057ED  A27A0B            mov [0xb7a],al
000057F0  E8CBC9            call word 0x21be
000057F3  E86BEF            call word 0x4761
000057F6  E868EF            call word 0x4761
000057F9  A0255D            mov al,[0x5d25]
000057FC  FEC0              inc al
000057FE  FEC8              dec al
00005800  A2600B            mov [0xb60],al
00005803  E83EB9            call word 0x1144
00005806  A0600B            mov al,[0xb60]
00005809  3C8E              cmp al,0x8e
0000580B  F5                cmc
0000580C  7503              jnz 0x5811
0000580E  EB0C              jmp short 0x581c
00005810  90                nop
00005811  B060              mov al,0x60
00005813  FEC0              inc al
00005815  FEC8              dec al
00005817  E8C5A9            call word 0x1df
0000581A  EBC8              jmp short 0x57e4
0000581C  B027              mov al,0x27
0000581E  A2650B            mov [0xb65],al
00005821  B08E              mov al,0x8e
00005823  FEC0              inc al
00005825  FEC8              dec al
00005827  A2600B            mov [0xb60],al
0000582A  E817B9            call word 0x1144
0000582D  B114              mov cl,0x14
0000582F  FEC1              inc cl
00005831  FEC9              dec cl
00005833  880EC86D          mov [0x6dc8],cl
00005837  E8F304            call word 0x5d2d
0000583A  B080              mov al,0x80
0000583C  FEC0              inc al
0000583E  FEC8              dec al
00005840  E89CA9            call word 0x1df
00005843  FE0EC86D          dec byte [0x6dc8]
00005847  7802              js 0x584b
00005849  EBEC              jmp short 0x5837
0000584B  B001              mov al,0x1
0000584D  FEC0              inc al
0000584F  FEC8              dec al
00005851  A2B73E            mov [0x3eb7],al
00005854  E894E7            call word 0x3feb
00005857  E83107            call word 0x5f8b
0000585A  E84709            call word 0x61a4
0000585D  B83165            mov ax,0x6531
00005860  E8270D            call word 0x658a
00005863  E875B3            call word 0xbdb
00005866  00A06B0B          add [bx+si+0xb6b],ah
0000586A  A29A6D            mov [0x6d9a],al
0000586D  A06B72            mov al,[0x726b]
00005870  A2986D            mov [0x6d98],al
00005873  B0FA              mov al,0xfa
00005875  A29B6D            mov [0x6d9b],al
00005878  A29D6D            mov [0x6d9d],al
0000587B  B02F              mov al,0x2f
0000587D  FEC0              inc al
0000587F  FEC8              dec al
00005881  A29C6D            mov [0x6d9c],al
00005884  A29E6D            mov [0x6d9e],al
00005887  E8DEAA            call word 0x368
0000588A  C706E4650035      mov word [0x65e4],0x3500
00005890  C706E665005C      mov word [0x65e6],0x5c00
00005896  E83800            call word 0x58d1
00005899  B028              mov al,0x28
0000589B  FEC0              inc al
0000589D  FEC8              dec al
0000589F  E83DA9            call word 0x1df
000058A2  FE06650B          inc byte [0xb65]
000058A6  A0650B            mov al,[0xb65]
000058A9  3CBD              cmp al,0xbd
000058AB  F5                cmc
000058AC  7402              jz 0x58b0
000058AE  EBE6              jmp short 0x5896
000058B0  B128              mov cl,0x28
000058B2  FEC1              inc cl
000058B4  FEC9              dec cl
000058B6  880EC86D          mov [0x6dc8],cl
000058BA  E81400            call word 0x58d1
000058BD  B014              mov al,0x14
000058BF  FEC0              inc al
000058C1  FEC8              dec al
000058C3  E819A9            call word 0x1df
000058C6  FE0EC86D          dec byte [0x6dc8]
000058CA  7802              js 0x58ce
000058CC  EBEC              jmp short 0x58ba
000058CE  E9ACDD            jmp word 0x367d
000058D1  A06658            mov al,[0x5866]
000058D4  A29B6D            mov [0x6d9b],al
000058D7  A29D6D            mov [0x6d9d],al
000058DA  A0650B            mov al,[0xb65]
000058DD  A29C6D            mov [0x6d9c],al
000058E0  A0670B            mov al,[0xb67]
000058E3  A29E6D            mov [0x6d9e],al
000058E6  A0E765            mov al,[0x65e7]
000058E9  A29A6D            mov [0x6d9a],al
000058EC  A0E665            mov al,[0x65e6]
000058EF  A2996D            mov [0x6d99],al
000058F2  A0E565            mov al,[0x65e5]
000058F5  A2986D            mov [0x6d98],al
000058F8  A0E465            mov al,[0x65e4]
000058FB  FEC0              inc al
000058FD  FEC8              dec al
000058FF  A2976D            mov [0x6d97],al
00005902  E8ACAA            call word 0x3b1
00005905  A0E565            mov al,[0x65e5]
00005908  A2E765            mov [0x65e7],al
0000590B  A0E465            mov al,[0x65e4]
0000590E  A2E665            mov [0x65e6],al
00005911  A0650B            mov al,[0xb65]
00005914  FEC0              inc al
00005916  FEC8              dec al
00005918  A2670B            mov [0xb67],al
0000591B  E8CCC4            call word 0x1dea
0000591E  D0D4              rcl ah,1
00005920  2403              and al,0x3
00005922  D0DC              rcr ah,1
00005924  8AD8              mov bl,al
00005926  8A875072          mov al,[bx+0x7250]
0000592A  32E4              xor ah,ah
0000592C  050035            add ax,0x3500
0000592F  A3E465            mov [0x65e4],ax
00005932  A0E565            mov al,[0x65e5]
00005935  FEC0              inc al
00005937  FEC8              dec al
00005939  C3                ret
0000593A  000F              add [bx],cl
0000593C  004400            add [si+0x0],al
0000593F  1000              adc [bx+si],al
00005941  43                inc bx
00005942  0000              add [bx+si],al
00005944  54                push sp
00005945  27                daa
00005946  A827              test al,0x27
00005948  8CBC0000          mov [si+0x0],segr7
0000594C  0000              add [bx+si],al
0000594E  0000              add [bx+si],al
00005950  A04F59            mov al,[0x594f]
00005953  D0E0              shl al,1
00005955  8AD8              mov bl,al
00005957  8A874259          mov al,[bx+0x5942]
0000595B  A24A59            mov [0x594a],al
0000595E  FEC3              inc bl
00005960  8A874259          mov al,[bx+0x5942]
00005964  FEC0              inc al
00005966  FEC8              dec al
00005968  A24B59            mov [0x594b],al
0000596B  E87CC4            call word 0x1dea
0000596E  D0D4              rcl ah,1
00005970  2403              and al,0x3
00005972  D0DC              rcr ah,1
00005974  D0E0              shl al,1
00005976  8AD8              mov bl,al
00005978  8A873A59          mov al,[bx+0x593a]
0000597C  A2976D            mov [0x6d97],al
0000597F  A24C59            mov [0x594c],al
00005982  FEC3              inc bl
00005984  8A873A59          mov al,[bx+0x593a]
00005988  A2986D            mov [0x6d98],al
0000598B  A24D59            mov [0x594d],al
0000598E  B001              mov al,0x1
00005990  A2671B            mov [0x1b67],al
00005993  8A1E4A59          mov bl,[0x594a]
00005997  8A879428          mov al,[bx+0x2894]
0000599B  A29B6D            mov [0x6d9b],al
0000599E  0401              add al,0x1
000059A0  A2651B            mov [0x1b65],al
000059A3  A04B59            mov al,[0x594b]
000059A6  A29C6D            mov [0x6d9c],al
000059A9  2C10              sub al,0x10
000059AB  F5                cmc
000059AC  A2641B            mov [0x1b64],al
000059AF  E865A9            call word 0x317
000059B2  C3                ret
000059B3  A04E59            mov al,[0x594e]
000059B6  FEC0              inc al
000059B8  FEC8              dec al
000059BA  7503              jnz 0x59bf
000059BC  EB02              jmp short 0x59c0
000059BE  90                nop
000059BF  C3                ret
000059C0  A04A59            mov al,[0x594a]
000059C3  A22B5A            mov [0x5a2b],al
000059C6  A04B59            mov al,[0x594b]
000059C9  FEC0              inc al
000059CB  FEC8              dec al
000059CD  A22C5A            mov [0x5a2c],al
000059D0  E85A00            call word 0x5a2d
000059D3  A02A5A            mov al,[0x5a2a]
000059D6  FEC0              inc al
000059D8  FEC8              dec al
000059DA  7403              jz 0x59df
000059DC  EB02              jmp short 0x59e0
000059DE  90                nop
000059DF  C3                ret
000059E0  8A1E4A59          mov bl,[0x594a]
000059E4  8A879428          mov al,[bx+0x2894]
000059E8  A29B6D            mov [0x6d9b],al
000059EB  0401              add al,0x1
000059ED  A2651B            mov [0x1b65],al
000059F0  A04B59            mov al,[0x594b]
000059F3  A29C6D            mov [0x6d9c],al
000059F6  2C10              sub al,0x10
000059F8  F5                cmc
000059F9  A2641B            mov [0x1b64],al
000059FC  A04C59            mov al,[0x594c]
000059FF  A2976D            mov [0x6d97],al
00005A02  A04D59            mov al,[0x594d]
00005A05  A2986D            mov [0x6d98],al
00005A08  B001              mov al,0x1
00005A0A  FEC0              inc al
00005A0C  FEC8              dec al
00005A0E  A2671B            mov [0x1b67],al
00005A11  A24E59            mov [0x594e],al
00005A14  E800A9            call word 0x317
00005A17  B002              mov al,0x2
00005A19  FEC0              inc al
00005A1B  FEC8              dec al
00005A1D  A20225            mov [0x2502],al
00005A20  E805CB            call word 0x2528
00005A23  B80622            mov ax,0x2206
00005A26  E8D2EC            call word 0x46fb
00005A29  C3                ret
00005A2A  0000              add [bx+si],al
00005A2C  00A02B5A          add [bx+si+0x5a2b],ah
00005A30  2C0A              sub al,0xa
00005A32  F5                cmc
00005A33  3CF0              cmp al,0xf0
00005A35  F5                cmc
00005A36  7203              jc 0x5a3b
00005A38  EB03              jmp short 0x5a3d
00005A3A  90                nop
00005A3B  B000              mov al,0x0
00005A3D  3A06600B          cmp al,[0xb60]
00005A41  F5                cmc
00005A42  7203              jc 0x5a47
00005A44  EB04              jmp short 0x5a4a
00005A46  90                nop
00005A47  EB3C              jmp short 0x5a85
00005A49  90                nop
00005A4A  0412              add al,0x12
00005A4C  3A06600B          cmp al,[0xb60]
00005A50  F5                cmc
00005A51  7303              jnc 0x5a56
00005A53  EB04              jmp short 0x5a59
00005A55  90                nop
00005A56  EB2D              jmp short 0x5a85
00005A58  90                nop
00005A59  A02C5A            mov al,[0x5a2c]
00005A5C  2C04              sub al,0x4
00005A5E  F5                cmc
00005A5F  3A06650B          cmp al,[0xb65]
00005A63  F5                cmc
00005A64  7203              jc 0x5a69
00005A66  EB04              jmp short 0x5a6c
00005A68  90                nop
00005A69  EB1A              jmp short 0x5a85
00005A6B  90                nop
00005A6C  0408              add al,0x8
00005A6E  3A06650B          cmp al,[0xb65]
00005A72  F5                cmc
00005A73  7303              jnc 0x5a78
00005A75  EB04              jmp short 0x5a7b
00005A77  90                nop
00005A78  EB0B              jmp short 0x5a85
00005A7A  90                nop
00005A7B  B001              mov al,0x1
00005A7D  FEC0              inc al
00005A7F  FEC8              dec al
00005A81  A22A5A            mov [0x5a2a],al
00005A84  C3                ret
00005A85  B000              mov al,0x0
00005A87  FEC0              inc al
00005A89  FEC8              dec al
00005A8B  A22A5A            mov [0x5a2a],al
00005A8E  C3                ret
00005A8F  A02B5A            mov al,[0x5a2b]
00005A92  2C08              sub al,0x8
00005A94  F5                cmc
00005A95  3CF4              cmp al,0xf4
00005A97  F5                cmc
00005A98  7203              jc 0x5a9d
00005A9A  EB03              jmp short 0x5a9f
00005A9C  90                nop
00005A9D  B000              mov al,0x0
00005A9F  3A06600B          cmp al,[0xb60]
00005AA3  F5                cmc
00005AA4  7503              jnz 0x5aa9
00005AA6  EB08              jmp short 0x5ab0
00005AA8  90                nop
00005AA9  7203              jc 0x5aae
00005AAB  EB03              jmp short 0x5ab0
00005AAD  90                nop
00005AAE  EBD5              jmp short 0x5a85
00005AB0  0410              add al,0x10
00005AB2  3A06600B          cmp al,[0xb60]
00005AB6  F5                cmc
00005AB7  7303              jnc 0x5abc
00005AB9  EB03              jmp short 0x5abe
00005ABB  90                nop
00005ABC  EBC7              jmp short 0x5a85
00005ABE  A02C5A            mov al,[0x5a2c]
00005AC1  2C0C              sub al,0xc
00005AC3  F5                cmc
00005AC4  3A06650B          cmp al,[0xb65]
00005AC8  F5                cmc
00005AC9  7203              jc 0x5ace
00005ACB  EB03              jmp short 0x5ad0
00005ACD  90                nop
00005ACE  EBB5              jmp short 0x5a85
00005AD0  0418              add al,0x18
00005AD2  3A06650B          cmp al,[0xb65]
00005AD6  F5                cmc
00005AD7  7303              jnc 0x5adc
00005AD9  EB03              jmp short 0x5ade
00005ADB  90                nop
00005ADC  EBA7              jmp short 0x5a85
00005ADE  B001              mov al,0x1
00005AE0  FEC0              inc al
00005AE2  FEC8              dec al
00005AE4  A22A5A            mov [0x5a2a],al
00005AE7  C3                ret
00005AE8  0200              add al,[bx+si]
00005AEA  0000              add [bx+si],al
00005AEC  001C              add [si],bl
00005AEE  382A              cmp [bp+si],ch
00005AF0  2A850000          sub al,[di+0x0]
00005AF4  0000              add [bx+si],al
00005AF6  B271              mov dl,0x71
00005AF8  CA71FE            retf 0xfe71
00005AFB  0E                push cs
00005AFC  E85A75            call word 0xd059
00005AFF  03EB              add bp,bx
00005B01  0290C3B0          add dl,[bx+si-0x4f3d]
00005B05  02A2E85A          add ah,[bp+si+0x5ae8]
00005B09  A0F45A            mov al,[0x5af4]
00005B0C  FEC0              inc al
00005B0E  FEC8              dec al
00005B10  7403              jz 0x5b15
00005B12  EB4F              jmp short 0x5b63
00005B14  90                nop
00005B15  B001              mov al,0x1
00005B17  A2F45A            mov [0x5af4],al
00005B1A  B301              mov bl,0x1
00005B1C  B038              mov al,0x38
00005B1E  8887E95A          mov [bx+0x5ae9],al
00005B22  8887EB5A          mov [bx+0x5aeb],al
00005B26  B000              mov al,0x0
00005B28  8887F25A          mov [bx+0x5af2],al
00005B2C  A0F15A            mov al,[0x5af1]
00005B2F  A29C6D            mov [0x6d9c],al
00005B32  8A87E95A          mov al,[bx+0x5ae9]
00005B36  A29B6D            mov [0x6d9b],al
00005B39  E8D100            call word 0x5c0d
00005B3C  B300              mov bl,0x0
00005B3E  B01C              mov al,0x1c
00005B40  8887E95A          mov [bx+0x5ae9],al
00005B44  8887EB5A          mov [bx+0x5aeb],al
00005B48  B001              mov al,0x1
00005B4A  8887F25A          mov [bx+0x5af2],al
00005B4E  A0F15A            mov al,[0x5af1]
00005B51  A29C6D            mov [0x6d9c],al
00005B54  8A87E95A          mov al,[bx+0x5ae9]
00005B58  FEC0              inc al
00005B5A  FEC8              dec al
00005B5C  A29B6D            mov [0x6d9b],al
00005B5F  E8AB00            call word 0x5c0d
00005B62  C3                ret
00005B63  B301              mov bl,0x1
00005B65  881EF55A          mov [0x5af5],bl
00005B69  8A87EB5A          mov al,[bx+0x5aeb]
00005B6D  A29B6D            mov [0x6d9b],al
00005B70  A0F15A            mov al,[0x5af1]
00005B73  FEC0              inc al
00005B75  FEC8              dec al
00005B77  A29C6D            mov [0x6d9c],al
00005B7A  E89000            call word 0x5c0d
00005B7D  8A1EF55A          mov bl,[0x5af5]
00005B81  8A87E95A          mov al,[bx+0x5ae9]
00005B85  A29B6D            mov [0x6d9b],al
00005B88  A0F15A            mov al,[0x5af1]
00005B8B  FEC0              inc al
00005B8D  FEC8              dec al
00005B8F  A29C6D            mov [0x6d9c],al
00005B92  E87800            call word 0x5c0d
00005B95  8A0EF55A          mov cl,[0x5af5]
00005B99  8BF1              mov si,cx
00005B9B  8A84E95A          mov al,[si+0x5ae9]
00005B9F  8BF1              mov si,cx
00005BA1  8884EB5A          mov [si+0x5aeb],al
00005BA5  8BF1              mov si,cx
00005BA7  8A84F25A          mov al,[si+0x5af2]
00005BAB  FEC0              inc al
00005BAD  FEC8              dec al
00005BAF  7403              jz 0x5bb4
00005BB1  EB10              jmp short 0x5bc3
00005BB3  90                nop
00005BB4  8BF1              mov si,cx
00005BB6  FE8CE95A          dec byte [si+0x5ae9]
00005BBA  8BF1              mov si,cx
00005BBC  FE8CE95A          dec byte [si+0x5ae9]
00005BC0  EB0D              jmp short 0x5bcf
00005BC2  90                nop
00005BC3  8BF1              mov si,cx
00005BC5  FE84E95A          inc byte [si+0x5ae9]
00005BC9  8BF1              mov si,cx
00005BCB  FE84E95A          inc byte [si+0x5ae9]
00005BCF  8BF1              mov si,cx
00005BD1  8A84E95A          mov al,[si+0x5ae9]
00005BD5  3C2A              cmp al,0x2a
00005BD7  F5                cmc
00005BD8  7503              jnz 0x5bdd
00005BDA  EB0D              jmp short 0x5be9
00005BDC  90                nop
00005BDD  8BF1              mov si,cx
00005BDF  3A84ED5A          cmp al,[si+0x5aed]
00005BE3  F5                cmc
00005BE4  7403              jz 0x5be9
00005BE6  EB13              jmp short 0x5bfb
00005BE8  90                nop
00005BE9  8BF1              mov si,cx
00005BEB  8A84F25A          mov al,[si+0x5af2]
00005BEF  D0D4              rcl ah,1
00005BF1  3401              xor al,0x1
00005BF3  D0DC              rcr ah,1
00005BF5  8BF1              mov si,cx
00005BF7  8884F25A          mov [si+0x5af2],al
00005BFB  FE0EF55A          dec byte [0x5af5]
00005BFF  8A1EF55A          mov bl,[0x5af5]
00005C03  FEC3              inc bl
00005C05  FECB              dec bl
00005C07  7803              js 0x5c0c
00005C09  E95DFF            jmp word 0x5b69
00005C0C  C3                ret
00005C0D  8AC3              mov al,bl
00005C0F  D0E0              shl al,1
00005C11  8AD8              mov bl,al
00005C13  8A87F65A          mov al,[bx+0x5af6]
00005C17  A2976D            mov [0x6d97],al
00005C1A  FEC3              inc bl
00005C1C  8A87F65A          mov al,[bx+0x5af6]
00005C20  FEC0              inc al
00005C22  FEC8              dec al
00005C24  A2986D            mov [0x6d98],al
00005C27  E854BF            call word 0x1b7e
00005C2A  C3                ret
00005C2B  0000              add [bx+si],al
00005C2D  0000              add [bx+si],al
00005C2F  0000              add [bx+si],al
00005C31  0000              add [bx+si],al
00005C33  041C              add al,0x1c
00005C35  0A22              or ah,[bp+si]
00005C37  BC47AC            mov sp,0xac47
00005C3A  37                aaa
00005C3B  0003              add [bp+di],al
00005C3D  FE0E3C5C          dec byte [0x5c3c]
00005C41  7503              jnz 0x5c46
00005C43  EB02              jmp short 0x5c47
00005C45  90                nop
00005C46  C3                ret
00005C47  B002              mov al,0x2
00005C49  A23C5C            mov [0x5c3c],al
00005C4C  B301              mov bl,0x1
00005C4E  881EC86D          mov [0x6dc8],bl
00005C52  A02C5C            mov al,[0x5c2c]
00005C55  A29A6D            mov [0x6d9a],al
00005C58  A02B5C            mov al,[0x5c2b]
00005C5B  A2996D            mov [0x6d99],al
00005C5E  A02E5C            mov al,[0x5c2e]
00005C61  A2986D            mov [0x6d98],al
00005C64  A02D5C            mov al,[0x5c2d]
00005C67  A2976D            mov [0x6d97],al
00005C6A  8A87335C          mov al,[bx+0x5c33]
00005C6E  A29B6D            mov [0x6d9b],al
00005C71  A29D6D            mov [0x6d9d],al
00005C74  8A87375C          mov al,[bx+0x5c37]
00005C78  A29C6D            mov [0x6d9c],al
00005C7B  A29E6D            mov [0x6d9e],al
00005C7E  B001              mov al,0x1
00005C80  FEC0              inc al
00005C82  FEC8              dec al
00005C84  A2362D            mov [0x2d36],al
00005C87  E827A7            call word 0x3b1
00005C8A  8A1EC86D          mov bl,[0x6dc8]
00005C8E  A0305C            mov al,[0x5c30]
00005C91  A29A6D            mov [0x6d9a],al
00005C94  A02F5C            mov al,[0x5c2f]
00005C97  A2996D            mov [0x6d99],al
00005C9A  A0325C            mov al,[0x5c32]
00005C9D  A2986D            mov [0x6d98],al
00005CA0  A0315C            mov al,[0x5c31]
00005CA3  A2976D            mov [0x6d97],al
00005CA6  8A87355C          mov al,[bx+0x5c35]
00005CAA  A29B6D            mov [0x6d9b],al
00005CAD  A29D6D            mov [0x6d9d],al
00005CB0  8A87395C          mov al,[bx+0x5c39]
00005CB4  A29C6D            mov [0x6d9c],al
00005CB7  A29E6D            mov [0x6d9e],al
00005CBA  B001              mov al,0x1
00005CBC  FEC0              inc al
00005CBE  FEC8              dec al
00005CC0  A2362D            mov [0x2d36],al
00005CC3  E8EBA6            call word 0x3b1
00005CC6  FE0EC86D          dec byte [0x6dc8]
00005CCA  8A1EC86D          mov bl,[0x6dc8]
00005CCE  FEC3              inc bl
00005CD0  FECB              dec bl
00005CD2  7803              js 0x5cd7
00005CD4  E97BFF            jmp word 0x5c52
00005CD7  A02E5C            mov al,[0x5c2e]
00005CDA  A22C5C            mov [0x5c2c],al
00005CDD  A02D5C            mov al,[0x5c2d]
00005CE0  A22B5C            mov [0x5c2b],al
00005CE3  A0325C            mov al,[0x5c32]
00005CE6  A2305C            mov [0x5c30],al
00005CE9  A0315C            mov al,[0x5c31]
00005CEC  A22F5C            mov [0x5c2f],al
00005CEF  FE063B5C          inc byte [0x5c3b]
00005CF3  A03B5C            mov al,[0x5c3b]
00005CF6  3C04              cmp al,0x4
00005CF8  F5                cmc
00005CF9  7403              jz 0x5cfe
00005CFB  EB06              jmp short 0x5d03
00005CFD  90                nop
00005CFE  B000              mov al,0x0
00005D00  A23B5C            mov [0x5c3b],al
00005D03  8AD8              mov bl,al
00005D05  8A872D72          mov al,[bx+0x722d]
00005D09  32E4              xor ah,ah
00005D0B  05004D            add ax,0x4d00
00005D0E  A32D5C            mov [0x5c2d],ax
00005D11  8A872D72          mov al,[bx+0x722d]
00005D15  32E4              xor ah,ah
00005D17  050051            add ax,0x5100
00005D1A  A3315C            mov [0x5c31],ax
00005D1D  A0325C            mov al,[0x5c32]
00005D20  FEC0              inc al
00005D22  FEC8              dec al
00005D24  C3                ret
00005D25  0000              add [bx+si],al
00005D27  0000              add [bx+si],al
00005D29  0000              add [bx+si],al
00005D2B  0000              add [bx+si],al
00005D2D  A02B5D            mov al,[0x5d2b]
00005D30  FEC0              inc al
00005D32  FEC8              dec al
00005D34  7403              jz 0x5d39
00005D36  EB28              jmp short 0x5d60
00005D38  90                nop
00005D39  B001              mov al,0x1
00005D3B  A22B5D            mov [0x5d2b],al
00005D3E  B096              mov al,0x96
00005D40  A2255D            mov [0x5d25],al
00005D43  A2275D            mov [0x5d27],al
00005D46  B017              mov al,0x17
00005D48  A2265D            mov [0x5d26],al
00005D4B  A2285D            mov [0x5d28],al
00005D4E  A06B72            mov al,[0x726b]
00005D51  A22A5D            mov [0x5d2a],al
00005D54  B000              mov al,0x0
00005D56  FEC0              inc al
00005D58  FEC8              dec al
00005D5A  A22C5D            mov [0x5d2c],al
00005D5D  EB16              jmp short 0x5d75
00005D5F  90                nop
00005D60  B305              mov bl,0x5
00005D62  8A87A038          mov al,[bx+0x38a0]
00005D66  FEC0              inc al
00005D68  FEC8              dec al
00005D6A  7403              jz 0x5d6f
00005D6C  EB6C              jmp short 0x5dda
00005D6E  90                nop
00005D6F  FECB              dec bl
00005D71  7802              js 0x5d75
00005D73  EBED              jmp short 0x5d62
00005D75  A0275D            mov al,[0x5d27]
00005D78  A29D6D            mov [0x6d9d],al
00005D7B  A0285D            mov al,[0x5d28]
00005D7E  A29E6D            mov [0x6d9e],al
00005D81  A0255D            mov al,[0x5d25]
00005D84  A29B6D            mov [0x6d9b],al
00005D87  A0265D            mov al,[0x5d26]
00005D8A  A29C6D            mov [0x6d9c],al
00005D8D  A02A5D            mov al,[0x5d2a]
00005D90  A29A6D            mov [0x6d9a],al
00005D93  A05D72            mov al,[0x725d]
00005D96  FEC0              inc al
00005D98  FEC8              dec al
00005D9A  A2986D            mov [0x6d98],al
00005D9D  E8C8A5            call word 0x368
00005DA0  A05D72            mov al,[0x725d]
00005DA3  A22A5D            mov [0x5d2a],al
00005DA6  A0255D            mov al,[0x5d25]
00005DA9  A2275D            mov [0x5d27],al
00005DAC  A0265D            mov al,[0x5d26]
00005DAF  A2285D            mov [0x5d28],al
00005DB2  A02C5D            mov al,[0x5d2c]
00005DB5  FEC0              inc al
00005DB7  FEC8              dec al
00005DB9  7403              jz 0x5dbe
00005DBB  EB1E              jmp short 0x5ddb
00005DBD  90                nop
00005DBE  FE0E255D          dec byte [0x5d25]
00005DC2  FE0E255D          dec byte [0x5d25]
00005DC6  A0255D            mov al,[0x5d25]
00005DC9  3C8C              cmp al,0x8c
00005DCB  F5                cmc
00005DCC  7403              jz 0x5dd1
00005DCE  EB0A              jmp short 0x5dda
00005DD0  90                nop
00005DD1  B001              mov al,0x1
00005DD3  FEC0              inc al
00005DD5  FEC8              dec al
00005DD7  A22C5D            mov [0x5d2c],al
00005DDA  C3                ret
00005DDB  FE06255D          inc byte [0x5d25]
00005DDF  FE06255D          inc byte [0x5d25]
00005DE3  A0255D            mov al,[0x5d25]
00005DE6  3CF0              cmp al,0xf0
00005DE8  F5                cmc
00005DE9  7402              jz 0x5ded
00005DEB  EBED              jmp short 0x5dda
00005DED  B000              mov al,0x0
00005DEF  FEC0              inc al
00005DF1  FEC8              dec al
00005DF3  A22C5D            mov [0x5d2c],al
00005DF6  C3                ret
00005DF7  0000              add [bx+si],al
00005DF9  0000              add [bx+si],al
00005DFB  0000              add [bx+si],al
00005DFD  0000              add [bx+si],al
00005DFF  3808              cmp [bx+si],cl
00005E01  1200              adc al,[bx+si]
00005E03  00A0F75D          add [bx+si+0x5df7],ah
00005E07  FEC0              inc al
00005E09  FEC8              dec al
00005E0B  7503              jnz 0x5e10
00005E0D  EB04              jmp short 0x5e13
00005E0F  90                nop
00005E10  EB7B              jmp short 0x5e8d
00005E12  90                nop
00005E13  A0650B            mov al,[0xb65]
00005E16  2C10              sub al,0x10
00005E18  F5                cmc
00005E19  A2025E            mov [0x5e02],al
00005E1C  A0FF5D            mov al,[0x5dff]
00005E1F  2C04              sub al,0x4
00005E21  F5                cmc
00005E22  3A06600B          cmp al,[0xb60]
00005E26  F5                cmc
00005E27  7203              jc 0x5e2c
00005E29  EB02              jmp short 0x5e2d
00005E2B  90                nop
00005E2C  C3                ret
00005E2D  0408              add al,0x8
00005E2F  3A06600B          cmp al,[0xb60]
00005E33  F5                cmc
00005E34  7303              jnc 0x5e39
00005E36  EB02              jmp short 0x5e3a
00005E38  90                nop
00005E39  C3                ret
00005E3A  A0015E            mov al,[0x5e01]
00005E3D  2C04              sub al,0x4
00005E3F  F5                cmc
00005E40  3A06025E          cmp al,[0x5e02]
00005E44  F5                cmc
00005E45  7203              jc 0x5e4a
00005E47  EB02              jmp short 0x5e4b
00005E49  90                nop
00005E4A  C3                ret
00005E4B  0408              add al,0x8
00005E4D  3A06025E          cmp al,[0x5e02]
00005E51  F5                cmc
00005E52  7303              jnc 0x5e57
00005E54  EB02              jmp short 0x5e58
00005E56  90                nop
00005E57  C3                ret
00005E58  B001              mov al,0x1
00005E5A  FEC0              inc al
00005E5C  FEC8              dec al
00005E5E  A20125            mov [0x2501],al
00005E61  E8C4C6            call word 0x2528
00005E64  B014              mov al,0x14
00005E66  A2F85D            mov [0x5df8],al
00005E69  B000              mov al,0x0
00005E6B  A2F95D            mov [0x5df9],al
00005E6E  B001              mov al,0x1
00005E70  FEC0              inc al
00005E72  FEC8              dec al
00005E74  A2F75D            mov [0x5df7],al
00005E77  A2FA5D            mov [0x5dfa],al
00005E7A  C706FD5D0046      mov word [0x5dfd],0x4600
00005E80  C706FB5D0045      mov word [0x5dfb],0x4500
00005E86  B81D49            mov ax,0x491d
00005E89  E86FE8            call word 0x46fb
00005E8C  C3                ret
00005E8D  A0005E            mov al,[0x5e00]
00005E90  A29B6D            mov [0x6d9b],al
00005E93  A29D6D            mov [0x6d9d],al
00005E96  A0015E            mov al,[0x5e01]
00005E99  A29C6D            mov [0x6d9c],al
00005E9C  A29E6D            mov [0x6d9e],al
00005E9F  A0FE5D            mov al,[0x5dfe]
00005EA2  A29A6D            mov [0x6d9a],al
00005EA5  A0FD5D            mov al,[0x5dfd]
00005EA8  A2996D            mov [0x6d99],al
00005EAB  A0FC5D            mov al,[0x5dfc]
00005EAE  A2986D            mov [0x6d98],al
00005EB1  A0FB5D            mov al,[0x5dfb]
00005EB4  FEC0              inc al
00005EB6  FEC8              dec al
00005EB8  A2976D            mov [0x6d97],al
00005EBB  E8F3A4            call word 0x3b1
00005EBE  A0FC5D            mov al,[0x5dfc]
00005EC1  A2FE5D            mov [0x5dfe],al
00005EC4  A0FB5D            mov al,[0x5dfb]
00005EC7  A2FD5D            mov [0x5dfd],al
00005ECA  A0F95D            mov al,[0x5df9]
00005ECD  FEC0              inc al
00005ECF  FEC8              dec al
00005ED1  7403              jz 0x5ed6
00005ED3  EB1D              jmp short 0x5ef2
00005ED5  90                nop
00005ED6  FE0EFA5D          dec byte [0x5dfa]
00005EDA  A0FA5D            mov al,[0x5dfa]
00005EDD  FEC0              inc al
00005EDF  FEC8              dec al
00005EE1  7403              jz 0x5ee6
00005EE3  EB0A              jmp short 0x5eef
00005EE5  90                nop
00005EE6  B001              mov al,0x1
00005EE8  FEC0              inc al
00005EEA  FEC8              dec al
00005EEC  A2F95D            mov [0x5df9],al
00005EEF  EB19              jmp short 0x5f0a
00005EF1  90                nop
00005EF2  FE06FA5D          inc byte [0x5dfa]
00005EF6  A0FA5D            mov al,[0x5dfa]
00005EF9  3C02              cmp al,0x2
00005EFB  F5                cmc
00005EFC  7403              jz 0x5f01
00005EFE  EB0A              jmp short 0x5f0a
00005F00  90                nop
00005F01  B000              mov al,0x0
00005F03  FEC0              inc al
00005F05  FEC8              dec al
00005F07  A2F95D            mov [0x5df9],al
00005F0A  FE0EF85D          dec byte [0x5df8]
00005F0E  7803              js 0x5f13
00005F10  EB0D              jmp short 0x5f1f
00005F12  90                nop
00005F13  B000              mov al,0x0
00005F15  FEC0              inc al
00005F17  FEC8              dec al
00005F19  A2F75D            mov [0x5df7],al
00005F1C  E80FC4            call word 0x232e
00005F1F  8A1EFA5D          mov bl,[0x5dfa]
00005F23  8A873172          mov al,[bx+0x7231]
00005F27  32E4              xor ah,ah
00005F29  050045            add ax,0x4500
00005F2C  A3FB5D            mov [0x5dfb],ax
00005F2F  A0FC5D            mov al,[0x5dfc]
00005F32  FEC0              inc al
00005F34  FEC8              dec al
00005F36  C3                ret
00005F37  041E              add al,0x1e
00005F39  15FE0E            adc ax,0xefe
00005F3C  395F75            cmp [bx+0x75],bx
00005F3F  03EB              add bp,bx
00005F41  0290C3B0          add dl,[bx+si-0x4f3d]
00005F45  28A2395F          sub [bp+si+0x5f39],ah
00005F49  B301              mov bl,0x1
00005F4B  881EC86D          mov [0x6dc8],bl
00005F4F  B0AB              mov al,0xab
00005F51  A29C6D            mov [0x6d9c],al
00005F54  2C10              sub al,0x10
00005F56  F5                cmc
00005F57  A2641B            mov [0x1b64],al
00005F5A  8A87375F          mov al,[bx+0x5f37]
00005F5E  A29B6D            mov [0x6d9b],al
00005F61  0401              add al,0x1
00005F63  A2651B            mov [0x1b65],al
00005F66  C706976D004B      mov word [0x6d97],0x4b00
00005F6C  B001              mov al,0x1
00005F6E  FEC0              inc al
00005F70  FEC8              dec al
00005F72  A2671B            mov [0x1b67],al
00005F75  E89FA3            call word 0x317
00005F78  FE0EC86D          dec byte [0x6dc8]
00005F7C  8A1EC86D          mov bl,[0x6dc8]
00005F80  FEC3              inc bl
00005F82  FECB              dec bl
00005F84  7802              js 0x5f88
00005F86  EBC7              jmp short 0x5f4f
00005F88  C3                ret
00005F89  0000              add [bx+si],al
00005F8B  FE06895F          inc byte [0x5f89]
00005F8F  A0895F            mov al,[0x5f89]
00005F92  3C0A              cmp al,0xa
00005F94  F5                cmc
00005F95  7203              jc 0x5f9a
00005F97  EB2F              jmp short 0x5fc8
00005F99  90                nop
00005F9A  B000              mov al,0x0
00005F9C  A2895F            mov [0x5f89],al
00005F9F  FE068A5F          inc byte [0x5f8a]
00005FA3  A08A5F            mov al,[0x5f8a]
00005FA6  3C0A              cmp al,0xa
00005FA8  F5                cmc
00005FA9  7203              jc 0x5fae
00005FAB  EB06              jmp short 0x5fb3
00005FAD  90                nop
00005FAE  B000              mov al,0x0
00005FB0  A28A5F            mov [0x5f8a],al
00005FB3  B026              mov al,0x26
00005FB5  A29B6D            mov [0x6d9b],al
00005FB8  B070              mov al,0x70
00005FBA  A29C6D            mov [0x6d9c],al
00005FBD  8A1E8A5F          mov bl,[0x5f8a]
00005FC1  FEC3              inc bl
00005FC3  FECB              dec bl
00005FC5  E80E00            call word 0x5fd6
00005FC8  B027              mov al,0x27
00005FCA  A29B6D            mov [0x6d9b],al
00005FCD  B070              mov al,0x70
00005FCF  A29C6D            mov [0x6d9c],al
00005FD2  8A1E895F          mov bl,[0x5f89]
00005FD6  8AC3              mov al,bl
00005FD8  D0D4              rcl ah,1
00005FDA  0C30              or al,0x30
00005FDC  D0DC              rcr ah,1
00005FDE  A2F95F            mov [0x5ff9],al
00005FE1  A09B6D            mov al,[0x6d9b]
00005FE4  A2F75F            mov [0x5ff7],al
00005FE7  A09C6D            mov al,[0x6d9c]
00005FEA  FEC0              inc al
00005FEC  FEC8              dec al
00005FEE  A2F85F            mov [0x5ff8],al
00005FF1  B8F75F            mov ax,0x5ff7
00005FF4  E98FBE            jmp word 0x1e86
00005FF7  0000              add [bx+si],al
00005FF9  3000              xor [bx+si],al
00005FFB  E825A2            call word 0x223
00005FFE  B8771F            mov ax,0x1f77
00006001  E882BE            call word 0x1e86
00006004  E86900            call word 0x6070
00006007  B000              mov al,0x0
00006009  A2AC2A            mov [0x2aac],al
0000600C  B090              mov al,0x90
0000600E  A29C6D            mov [0x6d9c],al
00006011  B004              mov al,0x4
00006013  FEC0              inc al
00006015  FEC8              dec al
00006017  A29B6D            mov [0x6d9b],al
0000601A  E80BCB            call word 0x2b28
0000601D  B090              mov al,0x90
0000601F  A29C6D            mov [0x6d9c],al
00006022  B00E              mov al,0xe
00006024  FEC0              inc al
00006026  FEC8              dec al
00006028  A29B6D            mov [0x6d9b],al
0000602B  E8D5CA            call word 0x2b03
0000602E  B018              mov al,0x18
00006030  A29B6D            mov [0x6d9b],al
00006033  B090              mov al,0x90
00006035  FEC0              inc al
00006037  FEC8              dec al
00006039  A29C6D            mov [0x6d9c],al
0000603C  E8C4CA            call word 0x2b03
0000603F  B18A              mov cl,0x8a
00006041  B388              mov bl,0x88
00006043  A06072            mov al,[0x7260]
00006046  FEC0              inc al
00006048  FEC8              dec al
0000604A  E8B2C0            call word 0x20ff
0000604D  B128              mov cl,0x28
0000604F  B388              mov bl,0x88
00006051  A06E72            mov al,[0x726e]
00006054  FEC0              inc al
00006056  FEC8              dec al
00006058  E8A4C0            call word 0x20ff
0000605B  B1E8              mov cl,0xe8
0000605D  B388              mov bl,0x88
0000605F  A06D72            mov al,[0x726d]
00006062  FEC0              inc al
00006064  FEC8              dec al
00006066  E896C0            call word 0x20ff
00006069  E83BCB            call word 0x2ba7
0000606C  E86301            call word 0x61d2
0000606F  C3                ret
00006070  B007              mov al,0x7
00006072  A29B6D            mov [0x6d9b],al
00006075  0419              add al,0x19
00006077  A2651B            mov [0x1b65],al
0000607A  B020              mov al,0x20
0000607C  A29C6D            mov [0x6d9c],al
0000607F  2C14              sub al,0x14
00006081  F5                cmc
00006082  A2641B            mov [0x1b64],al
00006085  C706976D005E      mov word [0x6d97],0x5e00
0000608B  E889A2            call word 0x317
0000608E  C3                ret
0000608F  B305              mov bl,0x5
00006091  8A87283C          mov al,[bx+0x3c28]
00006095  FEC0              inc al
00006097  FEC8              dec al
00006099  7403              jz 0x609e
0000609B  EB32              jmp short 0x60cf
0000609D  90                nop
0000609E  FECB              dec bl
000060A0  7802              js 0x60a4
000060A2  EBED              jmp short 0x6091
000060A4  A0DD4E            mov al,[0x4edd]
000060A7  FEC0              inc al
000060A9  FEC8              dec al
000060AB  7503              jnz 0x60b0
000060AD  EB02              jmp short 0x60b1
000060AF  90                nop
000060B0  C3                ret
000060B1  B001              mov al,0x1
000060B3  FEC0              inc al
000060B5  FEC8              dec al
000060B7  A2B73E            mov [0x3eb7],al
000060BA  A27D0B            mov [0xb7d],al
000060BD  E82BDF            call word 0x3feb
000060C0  E8E100            call word 0x61a4
000060C3  B86865            mov ax,0x6568
000060C6  E8C104            call word 0x658a
000060C9  E8BFFE            call word 0x5f8b
000060CC  E9E7AB            jmp word 0xcb6
000060CF  C3                ret
000060D0  686460            push word 0x6064
000060D3  5C                pop sp
000060D4  58                pop ax
000060D5  56                push si
000060D6  56                push si
000060D7  56                push si
000060D8  56                push si
000060D9  56                push si
000060DA  56                push si
000060DB  56                push si
000060DC  58                pop ax
000060DD  5C                pop sp
000060DE  626870            bound bp,[bx+si+0x70]
000060E1  788F              js 0x6072
000060E3  93                xchg ax,bx
000060E4  98                cbw
000060E5  9F                lahf
000060E6  A6                cmpsb
000060E7  AC                lodsb
000060E8  AF                scasw
000060E9  B3B7              mov bl,0xb7
000060EB  B3AF              mov bl,0xaf
000060ED  AC                lodsb
000060EE  A6                cmpsb
000060EF  A39F9D            mov [0x9d9f],ax
000060F2  9D                popfw
000060F3  9F                lahf
000060F4  0000              add [bx+si],al
000060F6  0000              add [bx+si],al
000060F8  0000              add [bx+si],al
000060FA  0101              add [bx+di],ax
000060FC  0101              add [bx+di],ax
000060FE  0102              add [bp+si],ax
00006100  0202              add al,[bp+si]
00006102  0202              add al,[bp+si]
00006104  0201              add al,[bx+di]
00006106  006D00            add [di+0x0],ch
00006109  6F                outsw
0000610A  006BA0            add [bp+di-0x60],ch
0000610D  D7                xlatb
0000610E  4B                dec bx
0000610F  3C51              cmp al,0x51
00006111  F5                cmc
00006112  7303              jnc 0x6117
00006114  EB02              jmp short 0x6118
00006116  90                nop
00006117  C3                ret
00006118  B300              mov bl,0x0
0000611A  881EC86D          mov [0x6dc8],bl
0000611E  8A87D060          mov al,[bx+0x60d0]
00006122  A2600B            mov [0xb60],al
00006125  8A87E260          mov al,[bx+0x60e2]
00006129  A2650B            mov [0xb65],al
0000612C  8A87F460          mov al,[bx+0x60f4]
00006130  D0E0              shl al,1
00006132  8AD8              mov bl,al
00006134  FEC3              inc bl
00006136  8A870661          mov al,[bx+0x6106]
0000613A  FEC0              inc al
0000613C  FEC8              dec al
0000613E  A2986D            mov [0x6d98],al
00006141  A2690B            mov [0xb69],al
00006144  E8AFB1            call word 0x12f6
00006147  A03A4A            mov al,[0x4a3a]
0000614A  FEC0              inc al
0000614C  FEC8              dec al
0000614E  A2BA51            mov [0x51ba],al
00006151  E837F1            call word 0x528b
00006154  B090              mov al,0x90
00006156  FEC0              inc al
00006158  FEC8              dec al
0000615A  E882A0            call word 0x1df
0000615D  FE06C86D          inc byte [0x6dc8]
00006161  8A1EC86D          mov bl,[0x6dc8]
00006165  80FB12            cmp bl,0x12
00006168  F5                cmc
00006169  7402              jz 0x616d
0000616B  EBB1              jmp short 0x611e
0000616D  B002              mov al,0x2
0000616F  A23A4A            mov [0x4a3a],al
00006172  B001              mov al,0x1
00006174  FEC0              inc al
00006176  FEC8              dec al
00006178  A27E0B            mov [0xb7e],al
0000617B  E953D4            jmp word 0x35d1
0000617E  00A07E61          add [bx+si+0x617e],ah
00006182  FEC0              inc al
00006184  FEC8              dec al
00006186  7503              jnz 0x618b
00006188  EB02              jmp short 0x618c
0000618A  90                nop
0000618B  C3                ret
0000618C  A00925            mov al,[0x2509]
0000618F  3C07              cmp al,0x7
00006191  F5                cmc
00006192  7503              jnz 0x6197
00006194  EB02              jmp short 0x6198
00006196  90                nop
00006197  C3                ret
00006198  B001              mov al,0x1
0000619A  A27E61            mov [0x617e],al
0000619D  FE062E34          inc byte [0x342e]
000061A1  E944BF            jmp word 0x20e8
000061A4  B003              mov al,0x3
000061A6  A2C86D            mov [0x6dc8],al
000061A9  B0FF              mov al,0xff
000061AB  FEC0              inc al
000061AD  FEC8              dec al
000061AF  E82DA0            call word 0x1df
000061B2  FE0EC86D          dec byte [0x6dc8]
000061B6  7802              js 0x61ba
000061B8  EBEF              jmp short 0x61a9
000061BA  C3                ret
000061BB  B003              mov al,0x3
000061BD  A2C86D            mov [0x6dc8],al
000061C0  B0FF              mov al,0xff
000061C2  FEC0              inc al
000061C4  FEC8              dec al
000061C6  E816A0            call word 0x1df
000061C9  FE0EC86D          dec byte [0x6dc8]
000061CD  7802              js 0x61d1
000061CF  EBEF              jmp short 0x61c0
000061D1  C3                ret
000061D2  B040              mov al,0x40
000061D4  A2C86D            mov [0x6dc8],al
000061D7  B0FF              mov al,0xff
000061D9  FEC0              inc al
000061DB  FEC8              dec al
000061DD  E8FF9F            call word 0x1df
000061E0  E8ADAD            call word 0xf90
000061E3  E81401            call word 0x62fa
000061E6  A0620B            mov al,[0xb62]
000061E9  FEC0              inc al
000061EB  FEC8              dec al
000061ED  7503              jnz 0x61f2
000061EF  EB0E              jmp short 0x61ff
000061F1  90                nop
000061F2  A01B62            mov al,[0x621b]
000061F5  FEC0              inc al
000061F7  FEC8              dec al
000061F9  A2710B            mov [0xb71],al
000061FC  E9BDA9            jmp word 0xbbc
000061FF  FE0EC86D          dec byte [0x6dc8]
00006203  7802              js 0x6207
00006205  EBD0              jmp short 0x61d7
00006207  C3                ret
00006208  0000              add [bx+si],al
0000620A  00DB              add bl,bl
0000620C  0BFB              or di,bx
0000620E  5F                pop di
0000620F  B60C              mov dh,0xc
00006211  720D              jc 0x6220
00006213  0303              add ax,[bp+di]
00006215  0303              add ax,[bp+di]
00006217  0101              add [bx+di],ax
00006219  0202              add al,[bp+si]
0000621B  00B001A2          add [bx+si-0x5dff],dh
0000621F  800BA2            or byte [bp+di],0xa2
00006222  720B              jc 0x622f
00006224  A20862            mov [0x6208],al
00006227  B000              mov al,0x0
00006229  A2926B            mov [0x6b92],al
0000622C  A01B62            mov al,[0x621b]
0000622F  A2710B            mov [0xb71],al
00006232  B0FF              mov al,0xff
00006234  A20962            mov [0x6209],al
00006237  FE060A62          inc byte [0x620a]
0000623B  A00A62            mov al,[0x620a]
0000623E  3C04              cmp al,0x4
00006240  F5                cmc
00006241  7403              jz 0x6246
00006243  EB06              jmp short 0x624b
00006245  90                nop
00006246  B000              mov al,0x0
00006248  A20A62            mov [0x620a],al
0000624B  D0E0              shl al,1
0000624D  8AD8              mov bl,al
0000624F  8A870B62          mov al,[bx+0x620b]
00006253  A2AA6D            mov [0x6daa],al
00006256  8A870C62          mov al,[bx+0x620c]
0000625A  A2AB6D            mov [0x6dab],al
0000625D  8A871362          mov al,[bx+0x6213]
00006261  FEC0              inc al
00006263  FEC8              dec al
00006265  A2895F            mov [0x5f89],al
00006268  FF26AA6D          jmp word [0x6daa]
0000626C  A00862            mov al,[0x6208]
0000626F  FEC0              inc al
00006271  FEC8              dec al
00006273  7403              jz 0x6278
00006275  EB02              jmp short 0x6279
00006277  90                nop
00006278  C3                ret
00006279  FE0E0962          dec byte [0x6209]
0000627D  7503              jnz 0x6282
0000627F  EB2F              jmp short 0x62b0
00006281  90                nop
00006282  B001              mov al,0x1
00006284  A2720B            mov [0xb72],al
00006287  B000              mov al,0x0
00006289  FEC0              inc al
0000628B  FEC8              dec al
0000628D  A2926B            mov [0x6b92],al
00006290  E86700            call word 0x62fa
00006293  E8FAAC            call word 0xf90
00006296  A0620B            mov al,[0xb62]
00006299  FEC0              inc al
0000629B  FEC8              dec al
0000629D  7503              jnz 0x62a2
0000629F  EB0E              jmp short 0x62af
000062A1  90                nop
000062A2  A01B62            mov al,[0x621b]
000062A5  FEC0              inc al
000062A7  FEC8              dec al
000062A9  A2710B            mov [0xb71],al
000062AC  E90DA9            jmp word 0xbbc
000062AF  C3                ret
000062B0  E9F5A8            jmp word 0xba8
000062B3  0000              add [bx+si],al
000062B5  B60C              mov dh,0xc
000062B7  B60C              mov dh,0xc
000062B9  720D              jc 0x62c8
000062BB  DB0B              fisttp dword [bp+di]
000062BD  3CB2              cmp al,0xb2
000062BF  F5                cmc
000062C0  7503              jnz 0x62c5
000062C2  EB12              jmp short 0x62d6
000062C4  90                nop
000062C5  3CB3              cmp al,0xb3
000062C7  F5                cmc
000062C8  7503              jnz 0x62cd
000062CA  EB0A              jmp short 0x62d6
000062CC  90                nop
000062CD  3CB1              cmp al,0xb1
000062CF  F5                cmc
000062D0  7503              jnz 0x62d5
000062D2  EB02              jmp short 0x62d6
000062D4  90                nop
000062D5  C3                ret
000062D6  D0D4              rcl ah,1
000062D8  240F              and al,0xf
000062DA  D0DC              rcr ah,1
000062DC  D0E0              shl al,1
000062DE  8AD8              mov bl,al
000062E0  8A87B562          mov al,[bx+0x62b5]
000062E4  A2D90B            mov [0xbd9],al
000062E7  8A87B662          mov al,[bx+0x62b6]
000062EB  FEC0              inc al
000062ED  FEC8              dec al
000062EF  A2DA0B            mov [0xbda],al
000062F2  9F                lahf
000062F3  802681077F        and byte [0x781],0x7f
000062F8  9E                sahf
000062F9  C3                ret
000062FA  A08107            mov al,[0x781]
000062FD  3C83              cmp al,0x83
000062FF  F5                cmc
00006300  7503              jnz 0x6305
00006302  EB02              jmp short 0x6306
00006304  90                nop
00006305  C3                ret
00006306  E81A9F            call word 0x223
00006309  B87664            mov ax,0x6476
0000630C  E877BB            call word 0x1e86
0000630F  B88B64            mov ax,0x648b
00006312  E871BB            call word 0x1e86
00006315  B000              mov al,0x0
00006317  FEC0              inc al
00006319  FEC8              dec al
0000631B  A2E910            mov [0x10e9],al
0000631E  A2E710            mov [0x10e7],al
00006321  A2E310            mov [0x10e3],al
00006324  A2EB10            mov [0x10eb],al
00006327  A2E510            mov [0x10e5],al
0000632A  A2E022            mov [0x22e0],al
0000632D  B89C64            mov ax,0x649c
00006330  E853BB            call word 0x1e86
00006333  E86100            call word 0x6397
00006336  A2E910            mov [0x10e9],al
00006339  B8A564            mov ax,0x64a5
0000633C  E847BB            call word 0x1e86
0000633F  E85500            call word 0x6397
00006342  A2E710            mov [0x10e7],al
00006345  B8AE64            mov ax,0x64ae
00006348  E83BBB            call word 0x1e86
0000634B  E84900            call word 0x6397
0000634E  A2E310            mov [0x10e3],al
00006351  B8B764            mov ax,0x64b7
00006354  E82FBB            call word 0x1e86
00006357  E83D00            call word 0x6397
0000635A  A2E510            mov [0x10e5],al
0000635D  B8C064            mov ax,0x64c0
00006360  E823BB            call word 0x1e86
00006363  E83100            call word 0x6397
00006366  A2EB10            mov [0x10eb],al
00006369  B8C964            mov ax,0x64c9
0000636C  E817BB            call word 0x1e86
0000636F  E82500            call word 0x6397
00006372  A2E022            mov [0x22e0],al
00006375  B8D264            mov ax,0x64d2
00006378  E80BBB            call word 0x1e86
0000637B  9F                lahf
0000637C  802681077F        and byte [0x781],0x7f
00006381  9E                sahf
00006382  A08107            mov al,[0x781]
00006385  FEC0              inc al
00006387  FEC8              dec al
00006389  7802              js 0x638d
0000638B  EBF5              jmp short 0x6382
0000638D  9F                lahf
0000638E  802681077F        and byte [0x781],0x7f
00006393  9E                sahf
00006394  E9EAA7            jmp word 0xb81
00006397  9F                lahf
00006398  802681077F        and byte [0x781],0x7f
0000639D  9E                sahf
0000639E  A08107            mov al,[0x781]
000063A1  FEC0              inc al
000063A3  FEC8              dec al
000063A5  7802              js 0x63a9
000063A7  EBF5              jmp short 0x639e
000063A9  D0D4              rcl ah,1
000063AB  247F              and al,0x7f
000063AD  D0DC              rcr ah,1
000063AF  3C1B              cmp al,0x1b
000063B1  F5                cmc
000063B2  7503              jnz 0x63b7
000063B4  E98400            jmp word 0x643b
000063B7  3C03              cmp al,0x3
000063B9  F5                cmc
000063BA  7503              jnz 0x63bf
000063BC  EB7D              jmp short 0x643b
000063BE  90                nop
000063BF  3C0A              cmp al,0xa
000063C1  F5                cmc
000063C2  7503              jnz 0x63c7
000063C4  EB75              jmp short 0x643b
000063C6  90                nop
000063C7  3C0B              cmp al,0xb
000063C9  F5                cmc
000063CA  7503              jnz 0x63cf
000063CC  EB6D              jmp short 0x643b
000063CE  90                nop
000063CF  3C30              cmp al,0x30
000063D1  F5                cmc
000063D2  7503              jnz 0x63d7
000063D4  EB65              jmp short 0x643b
000063D6  90                nop
000063D7  3C13              cmp al,0x13
000063D9  F5                cmc
000063DA  7503              jnz 0x63df
000063DC  EB5D              jmp short 0x643b
000063DE  90                nop
000063DF  3C12              cmp al,0x12
000063E1  F5                cmc
000063E2  7503              jnz 0x63e7
000063E4  EB55              jmp short 0x643b
000063E6  90                nop
000063E7  3C1E              cmp al,0x1e
000063E9  F5                cmc
000063EA  7503              jnz 0x63ef
000063EC  EB4D              jmp short 0x643b
000063EE  90                nop
000063EF  3C1D              cmp al,0x1d
000063F1  F5                cmc
000063F2  7503              jnz 0x63f7
000063F4  EB45              jmp short 0x643b
000063F6  90                nop
000063F7  D0D4              rcl ah,1
000063F9  0C80              or al,0x80
000063FB  D0DC              rcr ah,1
000063FD  3A06E910          cmp al,[0x10e9]
00006401  F5                cmc
00006402  7503              jnz 0x6407
00006404  EB35              jmp short 0x643b
00006406  90                nop
00006407  3A06E710          cmp al,[0x10e7]
0000640B  F5                cmc
0000640C  7503              jnz 0x6411
0000640E  EB2B              jmp short 0x643b
00006410  90                nop
00006411  3A06E310          cmp al,[0x10e3]
00006415  F5                cmc
00006416  7503              jnz 0x641b
00006418  EB21              jmp short 0x643b
0000641A  90                nop
0000641B  3A06E510          cmp al,[0x10e5]
0000641F  F5                cmc
00006420  7503              jnz 0x6425
00006422  EB17              jmp short 0x643b
00006424  90                nop
00006425  3A06EB10          cmp al,[0x10eb]
00006429  F5                cmc
0000642A  7503              jnz 0x642f
0000642C  EB0D              jmp short 0x643b
0000642E  90                nop
0000642F  3A06E022          cmp al,[0x22e0]
00006433  F5                cmc
00006434  7503              jnz 0x6439
00006436  EB03              jmp short 0x643b
00006438  90                nop
00006439  C3                ret
0000643A  00B105FE          add [bx+di-0x1fb],dh
0000643E  C1FEC9            sar si,byte 0xc9
00006441  E80300            call word 0x6447
00006444  E950FF            jmp word 0x6397
00006447  880E3A64          mov [0x643a],cl
0000644B  B120              mov cl,0x20
0000644D  8AC1              mov al,cl
0000644F  8AD8              mov bl,al
00006451  FEC0              inc al
00006453  FEC8              dec al
00006455  FECB              dec bl
00006457  7402              jz 0x645b
00006459  EBFA              jmp short 0x6455
0000645B  E461              in al,0x61
0000645D  3402              xor al,0x2
0000645F  E661              out 0x61,al
00006461  8AC1              mov al,cl
00006463  FEC1              inc cl
00006465  80F9A0            cmp cl,0xa0
00006468  F5                cmc
00006469  7402              jz 0x646d
0000646B  EBE0              jmp short 0x644d
0000646D  FE0E3A64          dec byte [0x643a]
00006471  7402              jz 0x6475
00006473  EBD6              jmp short 0x644b
00006475  C3                ret
00006476  0B00              or ax,[bx+si]
00006478  43                inc bx
00006479  4F                dec di
0000647A  4E                dec si
0000647B  46                inc si
0000647C  49                dec cx
0000647D  47                inc di
0000647E  55                push bp
0000647F  52                push dx
00006480  41                inc cx
00006481  54                push sp
00006482  49                dec cx
00006483  4F                dec di
00006484  4E                dec si
00006485  204D45            and [di+0x45],cl
00006488  4E                dec si
00006489  55                push bp
0000648A  0000              add [bx+si],al
0000648C  285052            sub [bx+si+0x52],dl
0000648F  45                inc bp
00006490  53                push bx
00006491  53                push bx
00006492  204B45            and [bp+di+0x45],cl
00006495  59                pop cx
00006496  20464F            and [bp+0x4f],al
00006499  52                push dx
0000649A  2000              and [bx+si],al
0000649C  0E                push cs
0000649D  284C45            sub [si+0x45],cl
000064A0  46                inc si
000064A1  54                push sp
000064A2  203A              and [bp+si],bh
000064A4  000E2852          add [0x5228],cl
000064A8  49                dec cx
000064A9  47                inc di
000064AA  48                dec ax
000064AB  54                push sp
000064AC  3A00              cmp al,[bx+si]
000064AE  0E                push cs
000064AF  285550            sub [di+0x50],dl
000064B2  3A20              cmp ah,[bx+si]
000064B4  2020              and [bx+si],ah
000064B6  000E2844          add [0x4428],cl
000064BA  4F                dec di
000064BB  57                push di
000064BC  4E                dec si
000064BD  3A20              cmp ah,[bx+si]
000064BF  000E284A          add [0x4a28],cl
000064C3  55                push bp
000064C4  4D                dec bp
000064C5  50                push ax
000064C6  3A20              cmp ah,[bx+si]
000064C8  000E2844          add [0x4428],cl
000064CC  52                push dx
000064CD  4F                dec di
000064CE  50                push ax
000064CF  3A20              cmp ah,[bx+si]
000064D1  0000              add [bx+si],al
000064D3  285052            sub [bx+si+0x52],dl
000064D6  45                inc bp
000064D7  53                push bx
000064D8  53                push bx
000064D9  20414E            and [bx+di+0x4e],al
000064DC  59                pop cx
000064DD  204B45            and [bp+di+0x45],cl
000064E0  59                pop cx
000064E1  2020              and [bx+si],ah
000064E3  2020              and [bx+si],ah
000064E5  2020              and [bx+si],ah
000064E7  2020              and [bx+si],ah
000064E9  2020              and [bx+si],ah
000064EB  2000              and [bx+si],al
000064ED  0000              add [bx+si],al
000064EF  0000              add [bx+si],al
000064F1  0000              add [bx+si],al
000064F3  C1                db 0xc1
000064F4  B7AC              mov bh,0xac
000064F6  A29990            mov [0x9099],al
000064F9  88807972          mov [bx+si+0x7279],al
000064FD  6C                insb
000064FE  6560              gs pushaw
00006500  5A                pop dx
00006501  56                push si
00006502  50                push ax
00006503  4C                dec sp
00006504  48                dec ax
00006505  43                inc bx
00006506  40                inc ax
00006507  3C38              cmp al,0x38
00006509  35322F            xor ax,0x2f32
0000650C  11600C            adc [bx+si+0xc],sp
0000650F  300C              xor [si],cl
00006511  300D              xor [di],cl
00006513  60                pushaw
00006514  0F6011            punpcklbw mm2,[bx+di]
00006517  60                pushaw
00006518  0C60              or al,0x60
0000651A  116000            adc [bx+si+0x0],sp
0000651D  0D6008            or ax,0x860
00006520  3008              xor [bx+si],cl
00006522  3005              xor [di],al
00006524  60                pushaw
00006525  06                push es
00006526  30063008          xor [0x830],al
0000652A  60                pushaw
0000652B  086001            or [bx+si+0x1],ah
0000652E  B000              mov al,0x0
00006530  0014              add [si],dl
00006532  3014              xor [si],dl
00006534  3011              xor [bx+di],dl
00006536  3011              xor [bx+di],dl
00006538  3012              xor [bp+si],dl
0000653A  3012              xor [bp+si],dl
0000653C  300F              xor [bx],cl
0000653E  300F              xor [bx],cl
00006540  300D              xor [di],cl
00006542  3014              xor [si],dl
00006544  3012              xor [bp+si],dl
00006546  3011              xor [bx+di],dl
00006548  300F              xor [bx],cl
0000654A  3011              xor [bx+di],dl
0000654C  300D              xor [di],cl
0000654E  60                pushaw
0000654F  0018              add [bx+si],bl
00006551  1800              sbb [bx+si],al
00006553  0D3012            or ax,0x1230
00006556  90                nop
00006557  1130              adc [bx+si],si
00006559  0F                db 0x0f
0000655A  90                nop
0000655B  1230              adc dh,[bx+si]
0000655D  1430              adc al,0x30
0000655F  16                push ss
00006560  3014              xor [si],dl
00006562  3012              xor [bp+si],dl
00006564  3011              xor [bx+di],dl
00006566  B000              mov al,0x0
00006568  0D3014            or ax,0x1430
0000656B  3012              xor [bp+si],dl
0000656D  300F              xor [bx],cl
0000656F  3011              xor [bx+di],dl
00006571  300D              xor [di],cl
00006573  300F              xor [bx],cl
00006575  300C              xor [si],cl
00006577  300D              xor [di],cl
00006579  3008              xor [bx+si],cl
0000657B  300A              xor [bp+si],cl
0000657D  300C              xor [si],cl
0000657F  300D              xor [di],cl
00006581  90                nop
00006582  0020              add [bx+si],ah
00006584  1818              sbb [bx+si],bl
00006586  1819              sbb [bx+di],bl
00006588  1800              sbb [bx+si],al
0000658A  8BF0              mov si,ax
0000658C  A0710B            mov al,[0xb71]
0000658F  FEC0              inc al
00006591  FEC8              dec al
00006593  7401              jz 0x6596
00006595  C3                ret
00006596  8936DC6D          mov [0x6ddc],si
0000659A  B300              mov bl,0x0
0000659C  881EF264          mov [0x64f2],bl
000065A0  8A1EF264          mov bl,[0x64f2]
000065A4  D0E3              shl bl,1
000065A6  8B36DC6D          mov si,[0x6ddc]
000065AA  8A00              mov al,[bx+si]
000065AC  3C00              cmp al,0x0
000065AE  74E5              jz 0x6595
000065B0  8AC8              mov cl,al
000065B2  8BF1              mov si,cx
000065B4  8A84F364          mov al,[si+0x64f3]
000065B8  A2F064            mov [0x64f0],al
000065BB  FEC3              inc bl
000065BD  8B36DC6D          mov si,[0x6ddc]
000065C1  8A00              mov al,[bx+si]
000065C3  A2F164            mov [0x64f1],al
000065C6  FE06F264          inc byte [0x64f2]
000065CA  E461              in al,0x61
000065CC  3402              xor al,0x2
000065CE  E661              out 0x61,al
000065D0  FECB              dec bl
000065D2  7506              jnz 0x65da
000065D4  FE0EF164          dec byte [0x64f1]
000065D8  74C6              jz 0x65a0
000065DA  FEC9              dec cl
000065DC  75F2              jnz 0x65d0
000065DE  8A0EF064          mov cl,[0x64f0]
000065E2  EBE6              jmp short 0x65ca
000065E4  0000              add [bx+si],al
000065E6  0000              add [bx+si],al
000065E8  0001              add [bx+di],al
000065EA  FE0EE965          dec byte [0x65e9]
000065EE  7503              jnz 0x65f3
000065F0  EB02              jmp short 0x65f4
000065F2  90                nop
000065F3  C3                ret
000065F4  B002              mov al,0x2
000065F6  A2E965            mov [0x65e9],al
000065F9  A0E865            mov al,[0x65e8]
000065FC  FEC0              inc al
000065FE  FEC8              dec al
00006600  7403              jz 0x6605
00006602  EB12              jmp short 0x6616
00006604  90                nop
00006605  C706E4650006      mov word [0x65e4],0x600
0000660B  C706E665005C      mov word [0x65e6],0x5c00
00006611  B001              mov al,0x1
00006613  A2E865            mov [0x65e8],al
00006616  B024              mov al,0x24
00006618  A29B6D            mov [0x6d9b],al
0000661B  A29D6D            mov [0x6d9d],al
0000661E  B02F              mov al,0x2f
00006620  A29C6D            mov [0x6d9c],al
00006623  A29E6D            mov [0x6d9e],al
00006626  A0E765            mov al,[0x65e7]
00006629  A29A6D            mov [0x6d9a],al
0000662C  A0E665            mov al,[0x65e6]
0000662F  A2996D            mov [0x6d99],al
00006632  A0E565            mov al,[0x65e5]
00006635  A2986D            mov [0x6d98],al
00006638  A0E465            mov al,[0x65e4]
0000663B  FEC0              inc al
0000663D  FEC8              dec al
0000663F  A2976D            mov [0x6d97],al
00006642  E86C9D            call word 0x3b1
00006645  A0E565            mov al,[0x65e5]
00006648  A2E765            mov [0x65e7],al
0000664B  A0E465            mov al,[0x65e4]
0000664E  FEC0              inc al
00006650  FEC8              dec al
00006652  A2E665            mov [0x65e6],al
00006655  E892B7            call word 0x1dea
00006658  D0D4              rcl ah,1
0000665A  2403              and al,0x3
0000665C  D0DC              rcr ah,1
0000665E  8AD8              mov bl,al
00006660  8A875072          mov al,[bx+0x7250]
00006664  32E4              xor ah,ah
00006666  050006            add ax,0x600
00006669  A3E465            mov [0x65e4],ax
0000666C  A0E565            mov al,[0x65e5]
0000666F  FEC0              inc al
00006671  FEC8              dec al
00006673  C3                ret
00006674  0000              add [bx+si],al
00006676  0000              add [bx+si],al
00006678  0000              add [bx+si],al
0000667A  0000              add [bx+si],al
0000667C  0000              add [bx+si],al
0000667E  0000              add [bx+si],al
00006680  0000              add [bx+si],al
00006682  0000              add [bx+si],al
00006684  0002              add [bp+si],al
00006686  FE0E8566          dec byte [0x6685]
0000668A  7503              jnz 0x668f
0000668C  EB02              jmp short 0x6690
0000668E  90                nop
0000668F  C3                ret
00006690  B002              mov al,0x2
00006692  A28566            mov [0x6685],al
00006695  B000              mov al,0x0
00006697  A2A415            mov [0x15a4],al
0000669A  A07466            mov al,[0x6674]
0000669D  FEC0              inc al
0000669F  FEC8              dec al
000066A1  7403              jz 0x66a6
000066A3  EB50              jmp short 0x66f5
000066A5  90                nop
000066A6  B001              mov al,0x1
000066A8  A27466            mov [0x6674],al
000066AB  B30A              mov bl,0xa
000066AD  881EC86D          mov [0x6dc8],bl
000066B1  B000              mov al,0x0
000066B3  A2C96D            mov [0x6dc9],al
000066B6  88877566          mov [bx+0x6675],al
000066BA  0404              add al,0x4
000066BC  A2C96D            mov [0x6dc9],al
000066BF  8A877566          mov al,[bx+0x6675]
000066C3  8AC8              mov cl,al
000066C5  8BF1              mov si,cx
000066C7  8A84A630          mov al,[si+0x30a6]
000066CB  2C1C              sub al,0x1c
000066CD  F5                cmc
000066CE  A29B6D            mov [0x6d9b],al
000066D1  8BF1              mov si,cx
000066D3  8A84D230          mov al,[si+0x30d2]
000066D7  FEC0              inc al
000066D9  FEC8              dec al
000066DB  A29C6D            mov [0x6d9c],al
000066DE  E8B89B            call word 0x299
000066E1  A0C96D            mov al,[0x6dc9]
000066E4  FE0EC86D          dec byte [0x6dc8]
000066E8  8A1EC86D          mov bl,[0x6dc8]
000066EC  FEC3              inc bl
000066EE  FECB              dec bl
000066F0  7802              js 0x66f4
000066F2  EBC2              jmp short 0x66b6
000066F4  C3                ret
000066F5  B30A              mov bl,0xa
000066F7  881EC86D          mov [0x6dc8],bl
000066FB  8A877566          mov al,[bx+0x6675]
000066FF  8AC8              mov cl,al
00006701  8BF1              mov si,cx
00006703  8A84A630          mov al,[si+0x30a6]
00006707  2C1C              sub al,0x1c
00006709  F5                cmc
0000670A  A29B6D            mov [0x6d9b],al
0000670D  8BF1              mov si,cx
0000670F  8A84D230          mov al,[si+0x30d2]
00006713  FEC0              inc al
00006715  FEC8              dec al
00006717  A29C6D            mov [0x6d9c],al
0000671A  E87C9B            call word 0x299
0000671D  FE0EC86D          dec byte [0x6dc8]
00006721  8A1EC86D          mov bl,[0x6dc8]
00006725  FEC3              inc bl
00006727  FECB              dec bl
00006729  7802              js 0x672d
0000672B  EBCE              jmp short 0x66fb
0000672D  B30A              mov bl,0xa
0000672F  881EC86D          mov [0x6dc8],bl
00006733  8A877566          mov al,[bx+0x6675]
00006737  0401              add al,0x1
00006739  3C2B              cmp al,0x2b
0000673B  F5                cmc
0000673C  7403              jz 0x6741
0000673E  EB03              jmp short 0x6743
00006740  90                nop
00006741  B000              mov al,0x0
00006743  88877566          mov [bx+0x6675],al
00006747  8AC8              mov cl,al
00006749  8BF1              mov si,cx
0000674B  8A84A630          mov al,[si+0x30a6]
0000674F  2C1C              sub al,0x1c
00006751  F5                cmc
00006752  A29B6D            mov [0x6d9b],al
00006755  8BF1              mov si,cx
00006757  8A84D230          mov al,[si+0x30d2]
0000675B  FEC0              inc al
0000675D  FEC8              dec al
0000675F  A29C6D            mov [0x6d9c],al
00006762  E8349B            call word 0x299
00006765  FE0EC86D          dec byte [0x6dc8]
00006769  8A1EC86D          mov bl,[0x6dc8]
0000676D  FEC3              inc bl
0000676F  FECB              dec bl
00006771  7802              js 0x6775
00006773  EBBE              jmp short 0x6733
00006775  C3                ret
00006776  0000              add [bx+si],al
00006778  0000              add [bx+si],al
0000677A  004C96            add [si-0x6a],cl
0000677D  02FE              add bh,dh
0000677F  0E                push cs
00006780  7D67              jnl 0x67e9
00006782  7503              jnz 0x6787
00006784  EB02              jmp short 0x6788
00006786  90                nop
00006787  C3                ret
00006788  B002              mov al,0x2
0000678A  A27D67            mov [0x677d],al
0000678D  B301              mov bl,0x1
0000678F  881EC86D          mov [0x6dc8],bl
00006793  A07967            mov al,[0x6779]
00006796  A29A6D            mov [0x6d9a],al
00006799  A07867            mov al,[0x6778]
0000679C  A2996D            mov [0x6d99],al
0000679F  A07767            mov al,[0x6777]
000067A2  A2986D            mov [0x6d98],al
000067A5  A07667            mov al,[0x6776]
000067A8  A2976D            mov [0x6d97],al
000067AB  B011              mov al,0x11
000067AD  A29B6D            mov [0x6d9b],al
000067B0  A29D6D            mov [0x6d9d],al
000067B3  8A877B67          mov al,[bx+0x677b]
000067B7  FEC0              inc al
000067B9  FEC8              dec al
000067BB  A29C6D            mov [0x6d9c],al
000067BE  A29E6D            mov [0x6d9e],al
000067C1  E8ED9B            call word 0x3b1
000067C4  FE0EC86D          dec byte [0x6dc8]
000067C8  8A1EC86D          mov bl,[0x6dc8]
000067CC  FEC3              inc bl
000067CE  FECB              dec bl
000067D0  7802              js 0x67d4
000067D2  EBBF              jmp short 0x6793
000067D4  A07767            mov al,[0x6777]
000067D7  A27967            mov [0x6779],al
000067DA  A07667            mov al,[0x6776]
000067DD  A27867            mov [0x6778],al
000067E0  FE067A67          inc byte [0x677a]
000067E4  A07A67            mov al,[0x677a]
000067E7  3C04              cmp al,0x4
000067E9  F5                cmc
000067EA  7403              jz 0x67ef
000067EC  EB06              jmp short 0x67f4
000067EE  90                nop
000067EF  B000              mov al,0x0
000067F1  A27A67            mov [0x677a],al
000067F4  8AD8              mov bl,al
000067F6  8A873472          mov al,[bx+0x7234]
000067FA  32E4              xor ah,ah
000067FC  05002C            add ax,0x2c00
000067FF  A37667            mov [0x6776],ax
00006802  A07767            mov al,[0x6777]
00006805  FEC0              inc al
00006807  FEC8              dec al
00006809  C3                ret
0000680A  0000              add [bx+si],al
0000680C  0000              add [bx+si],al
0000680E  0000              add [bx+si],al
00006810  0000              add [bx+si],al
00006812  0A00              or al,[bx+si]
00006814  00B3018A          add [bp+di-0x75ff],dh
00006818  8712              xchg dx,[bp+si]
0000681A  69FEC0FE          imul di,si,word 0xfec0
0000681E  C87503EB          enter 0x375,0xeb
00006822  0890FECB          or [bx+si-0x3402],dl
00006826  7802              js 0x682a
00006828  EBED              jmp short 0x6817
0000682A  C3                ret
0000682B  FE0E1268          dec byte [0x6812]
0000682F  7503              jnz 0x6834
00006831  EB02              jmp short 0x6835
00006833  90                nop
00006834  C3                ret
00006835  A01368            mov al,[0x6813]
00006838  FEC0              inc al
0000683A  FEC8              dec al
0000683C  7403              jz 0x6841
0000683E  EB26              jmp short 0x6866
00006840  90                nop
00006841  881E1468          mov [0x6814],bl
00006845  B001              mov al,0x1
00006847  A21368            mov [0x6813],al
0000684A  B004              mov al,0x4
0000684C  A20A68            mov [0x680a],al
0000684F  A20C68            mov [0x680c],al
00006852  B0A6              mov al,0xa6
00006854  A20B68            mov [0x680b],al
00006857  A20D68            mov [0x680d],al
0000685A  C7060E680017      mov word [0x680e],0x1700
00006860  C7061068005C      mov word [0x6810],0x5c00
00006866  A00A68            mov al,[0x680a]
00006869  A29B6D            mov [0x6d9b],al
0000686C  A29D6D            mov [0x6d9d],al
0000686F  A00B68            mov al,[0x680b]
00006872  A29C6D            mov [0x6d9c],al
00006875  A00D68            mov al,[0x680d]
00006878  A29E6D            mov [0x6d9e],al
0000687B  A01168            mov al,[0x6811]
0000687E  A29A6D            mov [0x6d9a],al
00006881  A01068            mov al,[0x6810]
00006884  A2996D            mov [0x6d99],al
00006887  A00B68            mov al,[0x680b]
0000688A  D0D4              rcl ah,1
0000688C  240F              and al,0xf
0000688E  D0DC              rcr ah,1
00006890  8AD8              mov bl,al
00006892  8A873872          mov al,[bx+0x7238]
00006896  32E4              xor ah,ah
00006898  050017            add ax,0x1700
0000689B  A3976D            mov [0x6d97],ax
0000689E  A30E68            mov [0x680e],ax
000068A1  E80D9B            call word 0x3b1
000068A4  A00B68            mov al,[0x680b]
000068A7  3CB4              cmp al,0xb4
000068A9  F5                cmc
000068AA  7503              jnz 0x68af
000068AC  EB1E              jmp short 0x68cc
000068AE  90                nop
000068AF  A20D68            mov [0x680d],al
000068B2  FE060B68          inc byte [0x680b]
000068B6  A00F68            mov al,[0x680f]
000068B9  A21168            mov [0x6811],al
000068BC  A00E68            mov al,[0x680e]
000068BF  A21068            mov [0x6810],al
000068C2  B001              mov al,0x1
000068C4  FEC0              inc al
000068C6  FEC8              dec al
000068C8  A21268            mov [0x6812],al
000068CB  C3                ret
000068CC  A00F68            mov al,[0x680f]
000068CF  A2986D            mov [0x6d98],al
000068D2  A00E68            mov al,[0x680e]
000068D5  A2976D            mov [0x6d97],al
000068D8  C706996D005C      mov word [0x6d99],0x5c00
000068DE  A00A68            mov al,[0x680a]
000068E1  A29B6D            mov [0x6d9b],al
000068E4  A29D6D            mov [0x6d9d],al
000068E7  A00B68            mov al,[0x680b]
000068EA  FEC0              inc al
000068EC  FEC8              dec al
000068EE  A29C6D            mov [0x6d9c],al
000068F1  A29E6D            mov [0x6d9e],al
000068F4  E8BA9A            call word 0x3b1
000068F7  B000              mov al,0x0
000068F9  A21368            mov [0x6813],al
000068FC  8A1E1468          mov bl,[0x6814]
00006900  B001              mov al,0x1
00006902  88871269          mov [bx+0x6912],al
00006906  B00A              mov al,0xa
00006908  FEC0              inc al
0000690A  FEC8              dec al
0000690C  A21268            mov [0x6812],al
0000690F  C3                ret
00006910  0000              add [bx+si],al
00006912  0000              add [bx+si],al
00006914  0000              add [bx+si],al
00006916  0000              add [bx+si],al
00006918  0000              add [bx+si],al
0000691A  0000              add [bx+si],al
0000691C  0000              add [bx+si],al
0000691E  0000              add [bx+si],al
00006920  0000              add [bx+si],al
00006922  B301              mov bl,0x1
00006924  8A871269          mov al,[bx+0x6912]
00006928  FEC0              inc al
0000692A  FEC8              dec al
0000692C  7503              jnz 0x6931
0000692E  EB10              jmp short 0x6940
00006930  90                nop
00006931  881E2169          mov [0x6921],bl
00006935  E80F00            call word 0x6947
00006938  8A1E2169          mov bl,[0x6921]
0000693C  FEC3              inc bl
0000693E  FECB              dec bl
00006940  FECB              dec bl
00006942  7802              js 0x6946
00006944  EBDE              jmp short 0x6924
00006946  C3                ret
00006947  8A871F69          mov al,[bx+0x691f]
0000694B  FEC0              inc al
0000694D  FEC8              dec al
0000694F  7403              jz 0x6954
00006951  EB4D              jmp short 0x69a0
00006953  90                nop
00006954  B001              mov al,0x1
00006956  88871F69          mov [bx+0x691f],al
0000695A  B023              mov al,0x23
0000695C  88871069          mov [bx+0x6910],al
00006960  A06B72            mov al,[0x726b]
00006963  A29A6D            mov [0x6d9a],al
00006966  A06972            mov al,[0x7269]
00006969  A2986D            mov [0x6d98],al
0000696C  B123              mov cl,0x23
0000696E  8BF1              mov si,cx
00006970  8A845E30          mov al,[si+0x305e]
00006974  A29B6D            mov [0x6d9b],al
00006977  A29D6D            mov [0x6d9d],al
0000697A  88871469          mov [bx+0x6914],al
0000697E  88871669          mov [bx+0x6916],al
00006982  8BF1              mov si,cx
00006984  8A848230          mov al,[si+0x3082]
00006988  FEC0              inc al
0000698A  FEC8              dec al
0000698C  A29C6D            mov [0x6d9c],al
0000698F  A29E6D            mov [0x6d9e],al
00006992  88871869          mov [bx+0x6918],al
00006996  88871A69          mov [bx+0x691a],al
0000699A  E8CB99            call word 0x368
0000699D  EB2D              jmp short 0x69cc
0000699F  90                nop
000069A0  8A871669          mov al,[bx+0x6916]
000069A4  A29D6D            mov [0x6d9d],al
000069A7  8A871A69          mov al,[bx+0x691a]
000069AB  A29E6D            mov [0x6d9e],al
000069AE  A06972            mov al,[0x7269]
000069B1  A2986D            mov [0x6d98],al
000069B4  A29A6D            mov [0x6d9a],al
000069B7  8A871469          mov al,[bx+0x6914]
000069BB  A29B6D            mov [0x6d9b],al
000069BE  8A871869          mov al,[bx+0x6918]
000069C2  FEC0              inc al
000069C4  FEC8              dec al
000069C6  A29C6D            mov [0x6d9c],al
000069C9  E89C99            call word 0x368
000069CC  8A0E2169          mov cl,[0x6921]
000069D0  8BF1              mov si,cx
000069D2  FE8C1069          dec byte [si+0x6910]
000069D6  7903              jns 0x69db
000069D8  EB3A              jmp short 0x6a14
000069DA  90                nop
000069DB  8BF1              mov si,cx
000069DD  8A841069          mov al,[si+0x6910]
000069E1  8AD8              mov bl,al
000069E3  8BF1              mov si,cx
000069E5  8A841469          mov al,[si+0x6914]
000069E9  8BF1              mov si,cx
000069EB  88841669          mov [si+0x6916],al
000069EF  8BF1              mov si,cx
000069F1  8A841869          mov al,[si+0x6918]
000069F5  8BF1              mov si,cx
000069F7  88841A69          mov [si+0x691a],al
000069FB  8A875E30          mov al,[bx+0x305e]
000069FF  8BF1              mov si,cx
00006A01  88841469          mov [si+0x6914],al
00006A05  8A878230          mov al,[bx+0x3082]
00006A09  FEC0              inc al
00006A0B  FEC8              dec al
00006A0D  8BF1              mov si,cx
00006A0F  88841869          mov [si+0x6918],al
00006A13  C3                ret
00006A14  B000              mov al,0x0
00006A16  8BF1              mov si,cx
00006A18  88841F69          mov [si+0x691f],al
00006A1C  8BF1              mov si,cx
00006A1E  88841269          mov [si+0x6912],al
00006A22  8BF1              mov si,cx
00006A24  8A841469          mov al,[si+0x6914]
00006A28  A29B6D            mov [0x6d9b],al
00006A2B  A29D6D            mov [0x6d9d],al
00006A2E  8BF1              mov si,cx
00006A30  8A841869          mov al,[si+0x6918]
00006A34  A29C6D            mov [0x6d9c],al
00006A37  A29E6D            mov [0x6d9e],al
00006A3A  A06972            mov al,[0x7269]
00006A3D  A2986D            mov [0x6d98],al
00006A40  A06B72            mov al,[0x726b]
00006A43  FEC0              inc al
00006A45  FEC8              dec al
00006A47  A29A6D            mov [0x6d9a],al
00006A4A  E81B99            call word 0x368
00006A4D  C3                ret
00006A4E  0000              add [bx+si],al
00006A50  0000              add [bx+si],al
00006A52  0001              add [bx+di],al
00006A54  06                push es
00006A55  0000              add [bx+si],al
00006A57  0000              add [bx+si],al
00006A59  0000              add [bx+si],al
00006A5B  00A0536A          add [bx+si+0x6a53],ah
00006A5F  FEC0              inc al
00006A61  FEC8              dec al
00006A63  7503              jnz 0x6a68
00006A65  EB06              jmp short 0x6a6d
00006A67  90                nop
00006A68  FE0E536A          dec byte [0x6a53]
00006A6C  C3                ret
00006A6D  A0506A            mov al,[0x6a50]
00006A70  FEC0              inc al
00006A72  FEC8              dec al
00006A74  7503              jnz 0x6a79
00006A76  EB15              jmp short 0x6a8d
00006A78  90                nop
00006A79  A04E6A            mov al,[0x6a4e]
00006A7C  A24F6A            mov [0x6a4f],al
00006A7F  A2516A            mov [0x6a51],al
00006A82  0404              add al,0x4
00006A84  A24E6A            mov [0x6a4e],al
00006A87  A2526A            mov [0x6a52],al
00006A8A  EB13              jmp short 0x6a9f
00006A8C  90                nop
00006A8D  A04E6A            mov al,[0x6a4e]
00006A90  A24F6A            mov [0x6a4f],al
00006A93  A2516A            mov [0x6a51],al
00006A96  2C04              sub al,0x4
00006A98  F5                cmc
00006A99  A24E6A            mov [0x6a4e],al
00006A9C  A2526A            mov [0x6a52],al
00006A9F  E85000            call word 0x6af2
00006AA2  E87300            call word 0x6b18
00006AA5  A0506A            mov al,[0x6a50]
00006AA8  FEC0              inc al
00006AAA  FEC8              dec al
00006AAC  7403              jz 0x6ab1
00006AAE  EB1D              jmp short 0x6acd
00006AB0  90                nop
00006AB1  A04E6A            mov al,[0x6a4e]
00006AB4  3A06566A          cmp al,[0x6a56]
00006AB8  F5                cmc
00006AB9  7403              jz 0x6abe
00006ABB  EB34              jmp short 0x6af1
00006ABD  90                nop
00006ABE  B001              mov al,0x1
00006AC0  A2506A            mov [0x6a50],al
00006AC3  B010              mov al,0x10
00006AC5  FEC0              inc al
00006AC7  FEC8              dec al
00006AC9  A2536A            mov [0x6a53],al
00006ACC  C3                ret
00006ACD  A04E6A            mov al,[0x6a4e]
00006AD0  3A06576A          cmp al,[0x6a57]
00006AD4  F5                cmc
00006AD5  7403              jz 0x6ada
00006AD7  EB18              jmp short 0x6af1
00006AD9  90                nop
00006ADA  B000              mov al,0x0
00006ADC  A2506A            mov [0x6a50],al
00006ADF  A07A0B            mov al,[0xb7a]
00006AE2  FEC0              inc al
00006AE4  FEC8              dec al
00006AE6  7403              jz 0x6aeb
00006AE8  EB07              jmp short 0x6af1
00006AEA  90                nop
00006AEB  B81549            mov ax,0x4915
00006AEE  E80ADC            call word 0x46fb
00006AF1  C3                ret
00006AF2  A0586A            mov al,[0x6a58]
00006AF5  A29B6D            mov [0x6d9b],al
00006AF8  A29D6D            mov [0x6d9d],al
00006AFB  A04E6A            mov al,[0x6a4e]
00006AFE  A29C6D            mov [0x6d9c],al
00006B01  A04F6A            mov al,[0x6a4f]
00006B04  FEC0              inc al
00006B06  FEC8              dec al
00006B08  A29E6D            mov [0x6d9e],al
00006B0B  B80005            mov ax,0x500
00006B0E  A3976D            mov [0x6d97],ax
00006B11  A3996D            mov [0x6d99],ax
00006B14  E89A98            call word 0x3b1
00006B17  C3                ret
00006B18  A05B6A            mov al,[0x6a5b]
00006B1B  A2A215            mov [0x15a2],al
00006B1E  A0596A            mov al,[0x6a59]
00006B21  A2A015            mov [0x15a0],al
00006B24  A2A115            mov [0x15a1],al
00006B27  A0516A            mov al,[0x6a51]
00006B2A  2A06546A          sub al,[0x6a54]
00006B2E  F5                cmc
00006B2F  A2A315            mov [0x15a3],al
00006B32  E89397            call word 0x2c8
00006B35  A05B6A            mov al,[0x6a5b]
00006B38  A2A215            mov [0x15a2],al
00006B3B  A0596A            mov al,[0x6a59]
00006B3E  A2A015            mov [0x15a0],al
00006B41  A2A115            mov [0x15a1],al
00006B44  A0526A            mov al,[0x6a52]
00006B47  2A06546A          sub al,[0x6a54]
00006B4B  F5                cmc
00006B4C  A2A315            mov [0x15a3],al
00006B4F  E87697            call word 0x2c8
00006B52  A05B6A            mov al,[0x6a5b]
00006B55  A2A215            mov [0x15a2],al
00006B58  A05A6A            mov al,[0x6a5a]
00006B5B  A2A015            mov [0x15a0],al
00006B5E  A2A115            mov [0x15a1],al
00006B61  A0516A            mov al,[0x6a51]
00006B64  2A06546A          sub al,[0x6a54]
00006B68  F5                cmc
00006B69  A2A315            mov [0x15a3],al
00006B6C  E85997            call word 0x2c8
00006B6F  A05B6A            mov al,[0x6a5b]
00006B72  A2A215            mov [0x15a2],al
00006B75  A05A6A            mov al,[0x6a5a]
00006B78  A2A015            mov [0x15a0],al
00006B7B  A2A115            mov [0x15a1],al
00006B7E  A0526A            mov al,[0x6a52]
00006B81  2A06546A          sub al,[0x6a54]
00006B85  F5                cmc
00006B86  A2A315            mov [0x15a3],al
00006B89  E83C97            call word 0x2c8
00006B8C  C3                ret
00006B8D  0000              add [bx+si],al
00006B8F  0000              add [bx+si],al
00006B91  0000              add [bx+si],al
00006B93  A0926B            mov al,[0x6b92]
00006B96  FEC0              inc al
00006B98  FEC8              dec al
00006B9A  7503              jnz 0x6b9f
00006B9C  EB02              jmp short 0x6ba0
00006B9E  90                nop
00006B9F  C3                ret
00006BA0  A0916B            mov al,[0x6b91]
00006BA3  FEC0              inc al
00006BA5  FEC8              dec al
00006BA7  7503              jnz 0x6bac
00006BA9  EB06              jmp short 0x6bb1
00006BAB  90                nop
00006BAC  FE0E916B          dec byte [0x6b91]
00006BB0  C3                ret
00006BB1  A0906B            mov al,[0x6b90]
00006BB4  FEC0              inc al
00006BB6  FEC8              dec al
00006BB8  7403              jz 0x6bbd
00006BBA  EB0B              jmp short 0x6bc7
00006BBC  90                nop
00006BBD  E85400            call word 0x6c14
00006BC0  FE0E8E6B          dec byte [0x6b8e]
00006BC4  EB05              jmp short 0x6bcb
00006BC6  90                nop
00006BC7  FE068E6B          inc byte [0x6b8e]
00006BCB  E85800            call word 0x6c26
00006BCE  B000              mov al,0x0
00006BD0  A2A415            mov [0x15a4],al
00006BD3  A08E6B            mov al,[0x6b8e]
00006BD6  A28F6B            mov [0x6b8f],al
00006BD9  A0906B            mov al,[0x6b90]
00006BDC  FEC0              inc al
00006BDE  FEC8              dec al
00006BE0  7403              jz 0x6be5
00006BE2  EB1B              jmp short 0x6bff
00006BE4  90                nop
00006BE5  A08E6B            mov al,[0x6b8e]
00006BE8  3C4F              cmp al,0x4f
00006BEA  F5                cmc
00006BEB  7403              jz 0x6bf0
00006BED  EB0F              jmp short 0x6bfe
00006BEF  90                nop
00006BF0  B001              mov al,0x1
00006BF2  A2906B            mov [0x6b90],al
00006BF5  B00A              mov al,0xa
00006BF7  FEC0              inc al
00006BF9  FEC8              dec al
00006BFB  A2916B            mov [0x6b91],al
00006BFE  C3                ret
00006BFF  A08E6B            mov al,[0x6b8e]
00006C02  3CA8              cmp al,0xa8
00006C04  F5                cmc
00006C05  7403              jz 0x6c0a
00006C07  EB0B              jmp short 0x6c14
00006C09  90                nop
00006C0A  B000              mov al,0x0
00006C0C  A2906B            mov [0x6b90],al
00006C0F  B00A              mov al,0xa
00006C11  A2916B            mov [0x6b91],al
00006C14  B07C              mov al,0x7c
00006C16  A29B6D            mov [0x6d9b],al
00006C19  A08E6B            mov al,[0x6b8e]
00006C1C  2C08              sub al,0x8
00006C1E  F5                cmc
00006C1F  A29C6D            mov [0x6d9c],al
00006C22  E87496            call word 0x299
00006C25  C3                ret
00006C26  B00E              mov al,0xe
00006C28  A2C86D            mov [0x6dc8],al
00006C2B  B303              mov bl,0x3
00006C2D  881EC96D          mov [0x6dc9],bl
00006C31  8A1EC96D          mov bl,[0x6dc9]
00006C35  A0C86D            mov al,[0x6dc8]
00006C38  A29B6D            mov [0x6d9b],al
00006C3B  A29D6D            mov [0x6d9d],al
00006C3E  8A874C72          mov al,[bx+0x724c]
00006C42  32E4              xor ah,ah
00006C44  05001F            add ax,0x1f00
00006C47  A3976D            mov [0x6d97],ax
00006C4A  A3996D            mov [0x6d99],ax
00006C4D  A08E6B            mov al,[0x6b8e]
00006C50  A29C6D            mov [0x6d9c],al
00006C53  A08F6B            mov al,[0x6b8f]
00006C56  A29E6D            mov [0x6d9e],al
00006C59  B001              mov al,0x1
00006C5B  FEC0              inc al
00006C5D  FEC8              dec al
00006C5F  A2362D            mov [0x2d36],al
00006C62  E84C97            call word 0x3b1
00006C65  FE06C86D          inc byte [0x6dc8]
00006C69  FE06C86D          inc byte [0x6dc8]
00006C6D  FE0EC96D          dec byte [0x6dc9]
00006C71  7802              js 0x6c75
00006C73  EBBC              jmp short 0x6c31
00006C75  A08E6B            mov al,[0x6b8e]
00006C78  2C08              sub al,0x8
00006C7A  F5                cmc
00006C7B  A28D6B            mov [0x6b8d],al
00006C7E  C3                ret
00006C7F  0010              add [bx+si],dl
00006C81  FE0E806C          dec byte [0x6c80]
00006C85  7503              jnz 0x6c8a
00006C87  EB02              jmp short 0x6c8b
00006C89  90                nop
00006C8A  C3                ret
00006C8B  B00A              mov al,0xa
00006C8D  A2806C            mov [0x6c80],al
00006C90  A07F6C            mov al,[0x6c7f]
00006C93  FEC0              inc al
00006C95  FEC8              dec al
00006C97  7503              jnz 0x6c9c
00006C99  EB0D              jmp short 0x6ca8
00006C9B  90                nop
00006C9C  B000              mov al,0x0
00006C9E  FEC0              inc al
00006CA0  FEC8              dec al
00006CA2  A27F6C            mov [0x6c7f],al
00006CA5  EB06              jmp short 0x6cad
00006CA7  90                nop
00006CA8  B001              mov al,0x1
00006CAA  A27F6C            mov [0x6c7f],al
00006CAD  B00E              mov al,0xe
00006CAF  A29B6D            mov [0x6d9b],al
00006CB2  0401              add al,0x1
00006CB4  A2651B            mov [0x1b65],al
00006CB7  B027              mov al,0x27
00006CB9  A29C6D            mov [0x6d9c],al
00006CBC  2C10              sub al,0x10
00006CBE  F5                cmc
00006CBF  A2641B            mov [0x1b64],al
00006CC2  8A1E7F6C          mov bl,[0x6c7f]
00006CC6  8A874872          mov al,[bx+0x7248]
00006CCA  32E4              xor ah,ah
00006CCC  050011            add ax,0x1100
00006CCF  A3976D            mov [0x6d97],ax
00006CD2  E84296            call word 0x317
00006CD5  C3                ret
00006CD6  0000              add [bx+si],al
00006CD8  0000              add [bx+si],al
00006CDA  0000              add [bx+si],al
00006CDC  01FE              add si,di
00006CDE  0E                push cs
00006CDF  DC6C75            fsubr qword [si+0x75]
00006CE2  03EB              add bp,bx
00006CE4  0290C3B0          add dl,[bx+si-0x4f3d]
00006CE8  02A2DC6C          add ah,[bp+si+0x6cdc]
00006CEC  A0D66C            mov al,[0x6cd6]
00006CEF  FEC0              inc al
00006CF1  FEC8              dec al
00006CF3  7403              jz 0x6cf8
00006CF5  EB37              jmp short 0x6d2e
00006CF7  90                nop
00006CF8  B01A              mov al,0x1a
00006CFA  A29B6D            mov [0x6d9b],al
00006CFD  A29D6D            mov [0x6d9d],al
00006D00  B0BC              mov al,0xbc
00006D02  FEC0              inc al
00006D04  FEC8              dec al
00006D06  A29C6D            mov [0x6d9c],al
00006D09  A29E6D            mov [0x6d9e],al
00006D0C  B8003C            mov ax,0x3c00
00006D0F  A3976D            mov [0x6d97],ax
00006D12  A3D96C            mov [0x6cd9],ax
00006D15  C706996D005C      mov word [0x6d99],0x5c00
00006D1B  E89396            call word 0x3b1
00006D1E  B001              mov al,0x1
00006D20  FEC0              inc al
00006D22  FEC8              dec al
00006D24  A2D66C            mov [0x6cd6],al
00006D27  C706D76C003D      mov word [0x6cd7],0x3d00
00006D2D  C3                ret
00006D2E  B01A              mov al,0x1a
00006D30  A29B6D            mov [0x6d9b],al
00006D33  A29D6D            mov [0x6d9d],al
00006D36  B0BC              mov al,0xbc
00006D38  A29C6D            mov [0x6d9c],al
00006D3B  A29E6D            mov [0x6d9e],al
00006D3E  A0DA6C            mov al,[0x6cda]
00006D41  A29A6D            mov [0x6d9a],al
00006D44  A0D96C            mov al,[0x6cd9]
00006D47  A2996D            mov [0x6d99],al
00006D4A  A0D86C            mov al,[0x6cd8]
00006D4D  A2986D            mov [0x6d98],al
00006D50  A0D76C            mov al,[0x6cd7]
00006D53  FEC0              inc al
00006D55  FEC8              dec al
00006D57  A2976D            mov [0x6d97],al
00006D5A  E85496            call word 0x3b1
00006D5D  A0D86C            mov al,[0x6cd8]
00006D60  A2DA6C            mov [0x6cda],al
00006D63  A0D76C            mov al,[0x6cd7]
00006D66  A2D96C            mov [0x6cd9],al
00006D69  A0DB6C            mov al,[0x6cdb]
00006D6C  D0D4              rcl ah,1
00006D6E  3401              xor al,0x1
00006D70  D0DC              rcr ah,1
00006D72  A2DB6C            mov [0x6cdb],al
00006D75  8AD8              mov bl,al
00006D77  8A874A72          mov al,[bx+0x724a]
00006D7B  32E4              xor ah,ah
00006D7D  05003C            add ax,0x3c00
00006D80  A3D76C            mov [0x6cd7],ax
00006D83  A0D86C            mov al,[0x6cd8]
00006D86  FEC0              inc al
00006D88  FEC8              dec al
00006D8A  C3                ret
00006D8B  0000              add [bx+si],al
00006D8D  0000              add [bx+si],al
00006D8F  0000              add [bx+si],al
00006D91  0000              add [bx+si],al
00006D93  0000              add [bx+si],al
00006D95  0000              add [bx+si],al
00006D97  0000              add [bx+si],al
00006D99  0000              add [bx+si],al
00006D9B  0000              add [bx+si],al
00006D9D  0000              add [bx+si],al
00006D9F  0000              add [bx+si],al
00006DA1  0000              add [bx+si],al
00006DA3  0000              add [bx+si],al
00006DA5  0000              add [bx+si],al
00006DA7  0000              add [bx+si],al
00006DA9  0000              add [bx+si],al
00006DAB  0000              add [bx+si],al
00006DAD  0000              add [bx+si],al
00006DAF  0000              add [bx+si],al
00006DB1  0000              add [bx+si],al
00006DB3  0000              add [bx+si],al
00006DB5  0000              add [bx+si],al
00006DB7  0000              add [bx+si],al
00006DB9  0000              add [bx+si],al
00006DBB  0000              add [bx+si],al
00006DBD  0000              add [bx+si],al
00006DBF  0000              add [bx+si],al
00006DC1  0000              add [bx+si],al
00006DC3  0000              add [bx+si],al
00006DC5  0000              add [bx+si],al
00006DC7  0000              add [bx+si],al
00006DC9  0000              add [bx+si],al
00006DCB  0000              add [bx+si],al
00006DCD  0000              add [bx+si],al
00006DCF  0000              add [bx+si],al
00006DD1  0000              add [bx+si],al
00006DD3  0000              add [bx+si],al
00006DD5  0000              add [bx+si],al
00006DD7  0000              add [bx+si],al
00006DD9  0000              add [bx+si],al
00006DDB  0000              add [bx+si],al
00006DDD  0000              add [bx+si],al
00006DDF  0000              add [bx+si],al
00006DE1  0000              add [bx+si],al
00006DE3  0000              add [bx+si],al
00006DE5  0000              add [bx+si],al
00006DE7  0000              add [bx+si],al
00006DE9  0000              add [bx+si],al
00006DEB  0000              add [bx+si],al
00006DED  0000              add [bx+si],al
00006DEF  0000              add [bx+si],al
00006DF1  0000              add [bx+si],al
00006DF3  0000              add [bx+si],al
00006DF5  0000              add [bx+si],al
00006DF7  0000              add [bx+si],al
00006DF9  0000              add [bx+si],al
00006DFB  0000              add [bx+si],al
00006DFD  0000              add [bx+si],al
00006DFF  0000              add [bx+si],al
00006E01  0000              add [bx+si],al
00006E03  0000              add [bx+si],al
00006E05  0000              add [bx+si],al
00006E07  0000              add [bx+si],al
00006E09  0000              add [bx+si],al
00006E0B  0000              add [bx+si],al
00006E0D  0000              add [bx+si],al
00006E0F  006F77            add [bx+0x77],ch
00006E12  B177              mov cl,0x77
00006E14  F37735            rep ja 0x6e4c
00006E17  7877              js 0x6e90
00006E19  7899              js 0x6db4
00006E1B  78DB              js 0x6df8
00006E1D  781D              js 0x6e3c
00006E1F  795F              jns 0x6e80
00006E21  79A1              jns 0x6dc4
00006E23  79E3              jns 0x6e08
00006E25  7925              jns 0x6e4c
00006E27  7A67              jpe 0x6e90
00006E29  7AA9              jpe 0x6dd4
00006E2B  7AEB              jpe 0x6e18
00006E2D  7A2D              jpe 0x6e5c
00006E2F  7B6F              jpo 0x6ea0
00006E31  7BB1              jpo 0x6de4
00006E33  7BF3              jpo 0x6e28
00006E35  7B35              jpo 0x6e6c
00006E37  7C77              jl 0x6eb0
00006E39  7CB9              jl 0x6df4
00006E3B  7CFB              jl 0x6e38
00006E3D  7C3D              jl 0x6e7c
00006E3F  7D7F              jnl 0x6ec0
00006E41  7DC1              jnl 0x6e04
00006E43  7D03              jnl 0x6e48
00006E45  7E45              jng 0x6e8c
00006E47  7E87              jng 0x6dd0
00006E49  7EC9              jng 0x6e14
00006E4B  7E0B              jng 0x6e58
00006E4D  7F4D              jg 0x6e9c
00006E4F  7F8F              jg 0x6de0
00006E51  7FD1              jg 0x6e24
00006E53  7F13              jg 0x6e68
00006E55  80558097          adc byte [di-0x80],0x97
00006E59  80D980            sbb cl,0x80
00006E5C  F1                int1
00006E5D  9B27              wait daa
00006E5F  9D                popfw
00006E60  D19D259F          rcr word [di-0x60db],1
00006E64  7B9E              jpo 0x6e04
00006E66  CF                iretw
00006E67  9F                lahf
00006E68  4B                dec bx
00006E69  818D81CF8111      or word [di-0x307f],0x1181
00006E6F  82                db 0x82
00006E70  53                push bx
00006E71  82                db 0x82
00006E72  79A0              jns 0x6e14
00006E74  4D                dec bp
00006E75  A1A6A2            mov ax,[0xa2a6]
00006E78  9D                popfw
00006E79  82                db 0x82
00006E7A  BF8201            mov di,0x182
00006E7D  83438385          add word [bp+di-0x7d],byte -0x7b
00006E81  83C783            add di,byte -0x7d
00006E84  FFA33184          jmp word [bp+di-0x7bcf]
00006E88  7384              jnc 0x6e0e
00006E8A  B584              mov ch,0x84
00006E8C  F78439857B85      test word [si-0x7ac7],0x857b
00006E92  BD85FF            mov bp,0xff85
00006E95  854186            test [bx+di-0x7a],ax
00006E98  8386C58607        add word [bp-0x793b],byte +0x7
00006E9D  874987            xchg cx,[bx+di-0x79]
00006EA0  8B87CD87          mov ax,[bx-0x7833]
00006EA4  0F885188          js word 0xf6f9
00006EA8  99                cwd
00006EA9  A4                movsb
00006EAA  93                xchg ax,bx
00006EAB  88B588D7          mov [di-0x2878],dh
00006EAF  88F9              mov cl,bh
00006EB1  881B              mov [bp+di],bl
00006EB3  893D              mov [di],di
00006EB5  895F89            mov [bx-0x77],bx
00006EB8  8189A389E589      or word [bx+di-0x765d],0x89e5
00006EBE  27                daa
00006EBF  8A698A            mov ch,[bx+di-0x76]
00006EC2  AB                stosw
00006EC3  8AED              mov ch,ch
00006EC5  8A2F              mov ch,[bx]
00006EC7  8B4BA5            mov cx,[bp+di-0x5b]
00006ECA  3D9557            cmp ax,0x5795
00006ECD  98                cbw
00006ECE  718B              jno 0x6e5b
00006ED0  51                push cx
00006ED1  A5                movsw
00006ED2  E38B              jcxz 0x6e5f
00006ED4  51                push cx
00006ED5  A5                movsw
00006ED6  55                push bp
00006ED7  8C51A5            mov [bx+di-0x5b],ss
00006EDA  C7                db 0xc7
00006EDB  8C51A5            mov [bx+di-0x5b],ss
00006EDE  398D51A5          cmp [di-0x5aaf],cx
00006EE2  AB                stosw
00006EE3  8D51A5            lea dx,[bx+di-0x5b]
00006EE6  1D8E51            sbb ax,0x518e
00006EE9  A5                movsw
00006EEA  8F                db 0x8f
00006EEB  8E51A5            mov ss,[bx+di-0x5b]
00006EEE  018F51A5          add [bx-0x5aaf],cx
00006EF2  738F              jnc 0x6e83
00006EF4  51                push cx
00006EF5  A5                movsw
00006EF6  E58F              in ax,0x8f
00006EF8  51                push cx
00006EF9  A5                movsw
00006EFA  57                push di
00006EFB  90                nop
00006EFC  51                push cx
00006EFD  A5                movsw
00006EFE  C9                leave
00006EFF  90                nop
00006F00  51                push cx
00006F01  A5                movsw
00006F02  3B9151A5          cmp dx,[bx+di-0x5aaf]
00006F06  AD                lodsw
00006F07  91                xchg ax,cx
00006F08  51                push cx
00006F09  A5                movsw
00006F0A  1F                pop ds
00006F0B  92                xchg ax,dx
00006F0C  51                push cx
00006F0D  A5                movsw
00006F0E  91                xchg ax,cx
00006F0F  92                xchg ax,dx
00006F10  51                push cx
00006F11  A5                movsw
00006F12  039351A5          add dx,[bp+di-0x5aaf]
00006F16  7593              jnz 0x6eab
00006F18  51                push cx
00006F19  A5                movsw
00006F1A  E793              out 0x93,ax
00006F1C  51                push cx
00006F1D  A5                movsw
00006F1E  59                pop cx
00006F1F  94                xchg ax,sp
00006F20  51                push cx
00006F21  A5                movsw
00006F22  CB                retf
00006F23  94                xchg ax,sp
00006F24  51                push cx
00006F25  A5                movsw
00006F26  51                push cx
00006F27  A5                movsw
00006F28  51                push cx
00006F29  A5                movsw
00006F2A  51                push cx
00006F2B  A5                movsw
00006F2C  51                push cx
00006F2D  A5                movsw
00006F2E  51                push cx
00006F2F  A5                movsw
00006F30  51                push cx
00006F31  A5                movsw
00006F32  51                push cx
00006F33  A5                movsw
00006F34  51                push cx
00006F35  A5                movsw
00006F36  51                push cx
00006F37  A5                movsw
00006F38  51                push cx
00006F39  A5                movsw
00006F3A  51                push cx
00006F3B  A5                movsw
00006F3C  51                push cx
00006F3D  A5                movsw
00006F3E  51                push cx
00006F3F  A5                movsw
00006F40  51                push cx
00006F41  A5                movsw
00006F42  51                push cx
00006F43  A5                movsw
00006F44  51                push cx
00006F45  A5                movsw
00006F46  51                push cx
00006F47  A5                movsw
00006F48  51                push cx
00006F49  A5                movsw
00006F4A  51                push cx
00006F4B  A5                movsw
00006F4C  51                push cx
00006F4D  A5                movsw
00006F4E  51                push cx
00006F4F  A5                movsw
00006F50  51                push cx
00006F51  A5                movsw
00006F52  51                push cx
00006F53  A5                movsw
00006F54  51                push cx
00006F55  A5                movsw
00006F56  51                push cx
00006F57  A5                movsw
00006F58  51                push cx
00006F59  A5                movsw
00006F5A  51                push cx
00006F5B  A5                movsw
00006F5C  51                push cx
00006F5D  A5                movsw
00006F5E  51                push cx
00006F5F  A5                movsw
00006F60  51                push cx
00006F61  A5                movsw
00006F62  51                push cx
00006F63  A5                movsw
00006F64  51                push cx
00006F65  A5                movsw
00006F66  51                push cx
00006F67  A5                movsw
00006F68  51                push cx
00006F69  A5                movsw
00006F6A  51                push cx
00006F6B  A5                movsw
00006F6C  51                push cx
00006F6D  A5                movsw
00006F6E  51                push cx
00006F6F  A5                movsw
00006F70  51                push cx
00006F71  A5                movsw
00006F72  51                push cx
00006F73  A5                movsw
00006F74  51                push cx
00006F75  A5                movsw
00006F76  51                push cx
00006F77  A5                movsw
00006F78  51                push cx
00006F79  A5                movsw
00006F7A  51                push cx
00006F7B  A5                movsw
00006F7C  51                push cx
00006F7D  A5                movsw
00006F7E  51                push cx
00006F7F  A5                movsw
00006F80  51                push cx
00006F81  A5                movsw
00006F82  51                push cx
00006F83  A5                movsw
00006F84  51                push cx
00006F85  A5                movsw
00006F86  51                push cx
00006F87  A5                movsw
00006F88  51                push cx
00006F89  A5                movsw
00006F8A  51                push cx
00006F8B  A5                movsw
00006F8C  51                push cx
00006F8D  A5                movsw
00006F8E  51                push cx
00006F8F  A5                movsw
00006F90  51                push cx
00006F91  A5                movsw
00006F92  51                push cx
00006F93  A5                movsw
00006F94  51                push cx
00006F95  A5                movsw
00006F96  51                push cx
00006F97  A5                movsw
00006F98  51                push cx
00006F99  A5                movsw
00006F9A  51                push cx
00006F9B  A5                movsw
00006F9C  51                push cx
00006F9D  A5                movsw
00006F9E  51                push cx
00006F9F  A5                movsw
00006FA0  51                push cx
00006FA1  A5                movsw
00006FA2  51                push cx
00006FA3  A5                movsw
00006FA4  51                push cx
00006FA5  A5                movsw
00006FA6  51                push cx
00006FA7  A5                movsw
00006FA8  51                push cx
00006FA9  A5                movsw
00006FAA  51                push cx
00006FAB  A5                movsw
00006FAC  51                push cx
00006FAD  A5                movsw
00006FAE  51                push cx
00006FAF  A5                movsw
00006FB0  51                push cx
00006FB1  A5                movsw
00006FB2  51                push cx
00006FB3  A5                movsw
00006FB4  51                push cx
00006FB5  A5                movsw
00006FB6  51                push cx
00006FB7  A5                movsw
00006FB8  51                push cx
00006FB9  A5                movsw
00006FBA  51                push cx
00006FBB  A5                movsw
00006FBC  51                push cx
00006FBD  A5                movsw
00006FBE  51                push cx
00006FBF  A5                movsw
00006FC0  51                push cx
00006FC1  A5                movsw
00006FC2  51                push cx
00006FC3  A5                movsw
00006FC4  51                push cx
00006FC5  A5                movsw
00006FC6  51                push cx
00006FC7  A5                movsw
00006FC8  51                push cx
00006FC9  A5                movsw
00006FCA  51                push cx
00006FCB  A5                movsw
00006FCC  51                push cx
00006FCD  A5                movsw
00006FCE  51                push cx
00006FCF  A5                movsw
00006FD0  51                push cx
00006FD1  A5                movsw
00006FD2  51                push cx
00006FD3  A5                movsw
00006FD4  51                push cx
00006FD5  A5                movsw
00006FD6  51                push cx
00006FD7  A5                movsw
00006FD8  51                push cx
00006FD9  A5                movsw
00006FDA  51                push cx
00006FDB  A5                movsw
00006FDC  51                push cx
00006FDD  A5                movsw
00006FDE  51                push cx
00006FDF  A5                movsw
00006FE0  51                push cx
00006FE1  A5                movsw
00006FE2  51                push cx
00006FE3  A5                movsw
00006FE4  51                push cx
00006FE5  A5                movsw
00006FE6  51                push cx
00006FE7  A5                movsw
00006FE8  51                push cx
00006FE9  A5                movsw
00006FEA  51                push cx
00006FEB  A5                movsw
00006FEC  51                push cx
00006FED  A5                movsw
00006FEE  51                push cx
00006FEF  A5                movsw
00006FF0  51                push cx
00006FF1  A5                movsw
00006FF2  51                push cx
00006FF3  A5                movsw
00006FF4  51                push cx
00006FF5  A5                movsw
00006FF6  51                push cx
00006FF7  A5                movsw
00006FF8  51                push cx
00006FF9  A5                movsw
00006FFA  51                push cx
00006FFB  A5                movsw
00006FFC  51                push cx
00006FFD  A5                movsw
00006FFE  51                push cx
00006FFF  A5                movsw
00007000  51                push cx
00007001  A5                movsw
00007002  51                push cx
00007003  A5                movsw
00007004  51                push cx
00007005  A5                movsw
00007006  51                push cx
00007007  A5                movsw
00007008  51                push cx
00007009  A5                movsw
0000700A  51                push cx
0000700B  A5                movsw
0000700C  51                push cx
0000700D  A5                movsw
0000700E  51                push cx
0000700F  A5                movsw
00007010  51                push cx
00007011  A5                movsw
00007012  51                push cx
00007013  A5                movsw
00007014  51                push cx
00007015  A5                movsw
00007016  51                push cx
00007017  A5                movsw
00007018  51                push cx
00007019  A5                movsw
0000701A  51                push cx
0000701B  A5                movsw
0000701C  51                push cx
0000701D  A5                movsw
0000701E  51                push cx
0000701F  A5                movsw
00007020  51                push cx
00007021  A5                movsw
00007022  51                push cx
00007023  A5                movsw
00007024  51                push cx
00007025  A5                movsw
00007026  51                push cx
00007027  A5                movsw
00007028  51                push cx
00007029  A5                movsw
0000702A  51                push cx
0000702B  A5                movsw
0000702C  51                push cx
0000702D  A5                movsw
0000702E  51                push cx
0000702F  A5                movsw
00007030  51                push cx
00007031  A5                movsw
00007032  51                push cx
00007033  A5                movsw
00007034  51                push cx
00007035  A5                movsw
00007036  51                push cx
00007037  A5                movsw
00007038  51                push cx
00007039  A5                movsw
0000703A  51                push cx
0000703B  A5                movsw
0000703C  51                push cx
0000703D  A5                movsw
0000703E  51                push cx
0000703F  A5                movsw
00007040  51                push cx
00007041  A5                movsw
00007042  51                push cx
00007043  A5                movsw
00007044  51                push cx
00007045  A5                movsw
00007046  51                push cx
00007047  A5                movsw
00007048  51                push cx
00007049  A5                movsw
0000704A  51                push cx
0000704B  A5                movsw
0000704C  51                push cx
0000704D  A5                movsw
0000704E  51                push cx
0000704F  A5                movsw
00007050  51                push cx
00007051  A5                movsw
00007052  51                push cx
00007053  A5                movsw
00007054  51                push cx
00007055  A5                movsw
00007056  51                push cx
00007057  A5                movsw
00007058  51                push cx
00007059  A5                movsw
0000705A  51                push cx
0000705B  A5                movsw
0000705C  51                push cx
0000705D  A5                movsw
0000705E  51                push cx
0000705F  A5                movsw
00007060  51                push cx
00007061  A5                movsw
00007062  51                push cx
00007063  A5                movsw
00007064  51                push cx
00007065  A5                movsw
00007066  51                push cx
00007067  A5                movsw
00007068  51                push cx
00007069  A5                movsw
0000706A  51                push cx
0000706B  A5                movsw
0000706C  51                push cx
0000706D  A5                movsw
0000706E  51                push cx
0000706F  A5                movsw
00007070  51                push cx
00007071  A5                movsw
00007072  51                push cx
00007073  A5                movsw
00007074  51                push cx
00007075  A5                movsw
00007076  51                push cx
00007077  A5                movsw
00007078  51                push cx
00007079  A5                movsw
0000707A  51                push cx
0000707B  A5                movsw
0000707C  51                push cx
0000707D  A5                movsw
0000707E  51                push cx
0000707F  A5                movsw
00007080  51                push cx
00007081  A5                movsw
00007082  51                push cx
00007083  A5                movsw
00007084  51                push cx
00007085  A5                movsw
00007086  51                push cx
00007087  A5                movsw
00007088  51                push cx
00007089  A5                movsw
0000708A  51                push cx
0000708B  A5                movsw
0000708C  51                push cx
0000708D  A5                movsw
0000708E  51                push cx
0000708F  A5                movsw
00007090  51                push cx
00007091  A5                movsw
00007092  51                push cx
00007093  A5                movsw
00007094  51                push cx
00007095  A5                movsw
00007096  51                push cx
00007097  A5                movsw
00007098  51                push cx
00007099  A5                movsw
0000709A  51                push cx
0000709B  A5                movsw
0000709C  51                push cx
0000709D  A5                movsw
0000709E  51                push cx
0000709F  A5                movsw
000070A0  51                push cx
000070A1  A5                movsw
000070A2  51                push cx
000070A3  A5                movsw
000070A4  51                push cx
000070A5  A5                movsw
000070A6  51                push cx
000070A7  A5                movsw
000070A8  51                push cx
000070A9  A5                movsw
000070AA  51                push cx
000070AB  A5                movsw
000070AC  51                push cx
000070AD  A5                movsw
000070AE  51                push cx
000070AF  A5                movsw
000070B0  51                push cx
000070B1  A5                movsw
000070B2  51                push cx
000070B3  A5                movsw
000070B4  51                push cx
000070B5  A5                movsw
000070B6  51                push cx
000070B7  A5                movsw
000070B8  51                push cx
000070B9  A5                movsw
000070BA  51                push cx
000070BB  A5                movsw
000070BC  51                push cx
000070BD  A5                movsw
000070BE  51                push cx
000070BF  A5                movsw
000070C0  51                push cx
000070C1  A5                movsw
000070C2  51                push cx
000070C3  A5                movsw
000070C4  51                push cx
000070C5  A5                movsw
000070C6  51                push cx
000070C7  A5                movsw
000070C8  51                push cx
000070C9  A5                movsw
000070CA  51                push cx
000070CB  A5                movsw
000070CC  51                push cx
000070CD  A5                movsw
000070CE  51                push cx
000070CF  A5                movsw
000070D0  51                push cx
000070D1  A5                movsw
000070D2  51                push cx
000070D3  A5                movsw
000070D4  51                push cx
000070D5  A5                movsw
000070D6  51                push cx
000070D7  A5                movsw
000070D8  51                push cx
000070D9  A5                movsw
000070DA  51                push cx
000070DB  A5                movsw
000070DC  51                push cx
000070DD  A5                movsw
000070DE  51                push cx
000070DF  A5                movsw
000070E0  51                push cx
000070E1  A5                movsw
000070E2  51                push cx
000070E3  A5                movsw
000070E4  51                push cx
000070E5  A5                movsw
000070E6  51                push cx
000070E7  A5                movsw
000070E8  51                push cx
000070E9  A5                movsw
000070EA  51                push cx
000070EB  A5                movsw
000070EC  51                push cx
000070ED  A5                movsw
000070EE  51                push cx
000070EF  A5                movsw
000070F0  51                push cx
000070F1  A5                movsw
000070F2  51                push cx
000070F3  A5                movsw
000070F4  51                push cx
000070F5  A5                movsw
000070F6  51                push cx
000070F7  A5                movsw
000070F8  51                push cx
000070F9  A5                movsw
000070FA  51                push cx
000070FB  A5                movsw
000070FC  51                push cx
000070FD  A5                movsw
000070FE  51                push cx
000070FF  A5                movsw
00007100  51                push cx
00007101  A5                movsw
00007102  51                push cx
00007103  A5                movsw
00007104  51                push cx
00007105  A5                movsw
00007106  51                push cx
00007107  A5                movsw
00007108  51                push cx
00007109  A5                movsw
0000710A  51                push cx
0000710B  A5                movsw
0000710C  51                push cx
0000710D  A5                movsw
0000710E  51                push cx
0000710F  A5                movsw
00007110  51                push cx
00007111  A5                movsw
00007112  51                push cx
00007113  A5                movsw
00007114  51                push cx
00007115  A5                movsw
00007116  51                push cx
00007117  A5                movsw
00007118  51                push cx
00007119  A5                movsw
0000711A  51                push cx
0000711B  A5                movsw
0000711C  51                push cx
0000711D  A5                movsw
0000711E  51                push cx
0000711F  A5                movsw
00007120  51                push cx
00007121  A5                movsw
00007122  51                push cx
00007123  A5                movsw
00007124  51                push cx
00007125  A5                movsw
00007126  0004              add [si],al
00007128  0404              add al,0x4
0000712A  0304              add ax,[si]
0000712C  0101              add [bx+di],ax
0000712E  0101              add [bx+di],ax
00007130  0203              add al,[bp+di]
00007132  0202              add al,[bp+si]
00007134  0203              add al,[bp+di]
00007136  0404              add al,0x4
00007138  040F              add al,0xf
0000713A  0005              add [di],al
0000713C  0105              add [di],ax
0000713E  0105              add [di],ax
00007140  0105              add [di],ax
00007142  0105              add [di],ax
00007144  0105              add [di],ax
00007146  0102              add [bp+si],ax
00007148  07                pop es
00007149  0307              add ax,[bx]
0000714B  0307              add ax,[bx]
0000714D  0307              add ax,[bx]
0000714F  0307              add ax,[bx]
00007151  0307              add ax,[bx]
00007153  030F              add cx,[bx]
00007155  0005              add [di],al
00007157  0105              add [di],ax
00007159  0105              add [di],ax
0000715B  0105              add [di],ax
0000715D  0102              add [bp+si],ax
0000715F  07                pop es
00007160  0307              add ax,[bx]
00007162  0307              add ax,[bx]
00007164  0307              add ax,[bx]
00007166  030F              add cx,[bx]
00007168  0005              add [di],al
0000716A  0105              add [di],ax
0000716C  0102              add [bp+si],ax
0000716E  07                pop es
0000716F  0307              add ax,[bx]
00007171  030F              add cx,[bx]
00007173  0002              add [bp+si],al
00007175  0F0307            lsl ax,[bx]
00007178  0307              add ax,[bx]
0000717A  0307              add ax,[bx]
0000717C  0307              add ax,[bx]
0000717E  0307              add ax,[bx]
00007180  0307              add ax,[bx]
00007182  0302              add ax,[bp+si]
00007184  050105            add ax,0x501
00007187  0105              add [di],ax
00007189  0105              add [di],ax
0000718B  0105              add [di],ax
0000718D  0105              add [di],ax
0000718F  010F              add [bx],cx
00007191  0307              add ax,[bx]
00007193  0307              add ax,[bx]
00007195  0307              add ax,[bx]
00007197  0307              add ax,[bx]
00007199  0302              add ax,[bp+si]
0000719B  050105            add ax,0x501
0000719E  0105              add [di],ax
000071A0  0105              add [di],ax
000071A2  010F              add [bx],cx
000071A4  0307              add ax,[bx]
000071A6  0307              add ax,[bx]
000071A8  0302              add ax,[bp+si]
000071AA  050105            add ax,0x501
000071AD  010F              add [bx],cx
000071AF  0302              add ax,[bp+si]
000071B1  0F0004            sldt [si]
000071B4  0404              add al,0x4
000071B6  0302              add ax,[bp+si]
000071B8  0202              add al,[bp+si]
000071BA  0302              add ax,[bp+si]
000071BC  0204              add al,[si]
000071BE  0403              add al,0x3
000071C0  0407              add al,0x7
000071C2  0202              add al,[bp+si]
000071C4  0203              add al,[bp+di]
000071C6  0407              add al,0x7
000071C8  020F              add cl,[bx]
000071CA  0004              add [si],al
000071CC  0404              add al,0x4
000071CE  0102              add [bp+si],ax
000071D0  0202              add al,[bp+si]
000071D2  0102              add [bp+si],ax
000071D4  0204              add al,[si]
000071D6  0401              add al,0x1
000071D8  0405              add al,0x5
000071DA  0202              add al,[bp+si]
000071DC  0201              add al,[bx+di]
000071DE  0405              add al,0x5
000071E0  020F              add cl,[bx]
000071E2  0001              add [bx+di],al
000071E4  0201              add al,[bx+di]
000071E6  0001              add [bx+di],al
000071E8  0001              add [bx+di],al
000071EA  0300              add ax,[bx+si]
000071EC  0101              add [bx+di],ax
000071EE  0100              add [bx+si],ax
000071F0  0101              add [bx+di],ax
000071F2  0001              add [bx+di],al
000071F4  0101              add [bx+di],ax
000071F6  0002              add [bp+si],al
000071F8  0100              add [bx+si],ax
000071FA  0101              add [bx+di],ax
000071FC  0001              add [bx+di],al
000071FE  0100              add [bx+si],ax
00007200  0101              add [bx+di],ax
00007202  0001              add [bx+di],al
00007204  0100              add [bx+si],ax
00007206  0101              add [bx+di],ax
00007208  0001              add [bx+di],al
0000720A  0100              add [bx+si],ax
0000720C  0404              add al,0x4
0000720E  0404              add al,0x4
00007210  0000              add [bx+si],al
00007212  0001              add [bx+di],al
00007214  0000              add [bx+si],al
00007216  0200              add al,[bx+si]
00007218  0101              add [bx+di],ax
0000721A  0100              add [bx+si],ax
0000721C  0101              add [bx+di],ax
0000721E  0001              add [bx+di],al
00007220  0101              add [bx+di],ax
00007222  0003              add [bp+di],al
00007224  0001              add [bx+di],al
00007226  0201              add al,[bx+di]
00007228  0001              add [bx+di],al
0000722A  0201              add al,[bx+di]
0000722C  0000              add [bx+si],al
0000722E  0102              add [bp+si],ax
00007230  0300              add ax,[bx+si]
00007232  0102              add [bp+si],ax
00007234  0001              add [bx+di],al
00007236  0203              add al,[bp+di]
00007238  0101              add [bx+di],ax
0000723A  0101              add [bx+di],ax
0000723C  0001              add [bx+di],al
0000723E  0001              add [bx+di],al
00007240  0101              add [bx+di],ax
00007242  0101              add [bx+di],ax
00007244  0101              add [bx+di],ax
00007246  0101              add [bx+di],ax
00007248  0001              add [bx+di],al
0000724A  0001              add [bx+di],al
0000724C  0200              add al,[bx+si]
0000724E  0003              add [bp+di],al
00007250  0001              add [bx+di],al
00007252  0201              add al,[bx+di]
00007254  0000              add [bx+si],al
00007256  0000              add [bx+si],al
00007258  0000              add [bx+si],al
0000725A  0100              add [bx+si],ax
0000725C  01858789          add [di-0x7679],ax
00007260  5F                pop di
00007261  61                popaw
00007262  6567696B6D6F81    imul bp,[gs:ebx+0x6d],word 0x816f
00007269  837B5C7F          cmp word [bp+di+0x5c],byte +0x7f
0000726D  7773              ja 0x72e2
0000726F  1D750B            sbb ax,0xb75
00007272  75F9              jnz 0x726d
00007274  74E7              jz 0x725d
00007276  74D5              jz 0x724d
00007278  74C3              jz 0x723d
0000727A  74B1              jz 0x722d
0000727C  749F              jz 0x721d
0000727E  748D              jz 0x720d
00007280  747B              jz 0x72fd
00007282  7469              jz 0x72ed
00007284  7457              jz 0x72dd
00007286  7445              jz 0x72cd
00007288  7433              jz 0x72bd
0000728A  7421              jz 0x72ad
0000728C  740F              jz 0x729d
0000728E  74FD              jz 0x728d
00007290  73EB              jnc 0x727d
00007292  73D9              jnc 0x726d
00007294  73C7              jnc 0x725d
00007296  73B5              jnc 0x724d
00007298  73A3              jnc 0x723d
0000729A  7391              jnc 0x722d
0000729C  737F              jnc 0x731d
0000729E  736D              jnc 0x730d
000072A0  735B              jnc 0x72fd
000072A2  7349              jnc 0x72ed
000072A4  7337              jnc 0x72dd
000072A6  7325              jnc 0x72cd
000072A8  7313              jnc 0x72bd
000072AA  7301              jnc 0x72ad
000072AC  73EF              jnc 0x729d
000072AE  725D              jc 0x730d
000072B0  774B              ja 0x72fd
000072B2  7739              ja 0x72ed
000072B4  7727              ja 0x72dd
000072B6  7715              ja 0x72cd
000072B8  7703              ja 0x72bd
000072BA  77F1              ja 0x72ad
000072BC  76DF              jna 0x729d
000072BE  76CD              jna 0x728d
000072C0  76BB              jna 0x727d
000072C2  76A9              jna 0x726d
000072C4  7697              jna 0x725d
000072C6  7685              jna 0x724d
000072C8  7673              jna 0x733d
000072CA  7661              jna 0x732d
000072CC  764F              jna 0x731d
000072CE  763D              jna 0x730d
000072D0  762B              jna 0x72fd
000072D2  7619              jna 0x72ed
000072D4  7607              jna 0x72dd
000072D6  76F5              jna 0x72cd
000072D8  75E3              jnz 0x72bd
000072DA  75D1              jnz 0x72ad
000072DC  75BF              jnz 0x729d
000072DE  75AD              jnz 0x728d
000072E0  759B              jnz 0x727d
000072E2  7589              jnz 0x726d
000072E4  7577              jnz 0x735d
000072E6  7565              jnz 0x734d
000072E8  7553              jnz 0x733d
000072EA  7541              jnz 0x732d
000072EC  752F              jnz 0x731d
000072EE  7502              jnz 0x72f2
000072F0  0800              or [bx+si],al
000072F2  0000              add [bx+si],al
000072F4  0000              add [bx+si],al
000072F6  0000              add [bx+si],al
000072F8  0000              add [bx+si],al
000072FA  0000              add [bx+si],al
000072FC  00FF              add bh,bh
000072FE  FC                cld
000072FF  0000              add [bx+si],al
00007301  0208              add cl,[bx+si]
00007303  0100              add [bx+si],ax
00007305  0FC03F            xadd [bx],bh
00007308  F0                lock
00007309  FF                db 0xff
0000730A  FC                cld
0000730B  0000              add [bx+si],al
0000730D  0000              add [bx+si],al
0000730F  0000              add [bx+si],al
00007311  0000              add [bx+si],al
00007313  0208              add cl,[bx+si]
00007315  03FC              add di,sp
00007317  03FC              add di,sp
00007319  003C              add [si],bh
0000731B  003C              add [si],bh
0000731D  03FC              add di,sp
0000731F  03FC              add di,sp
00007321  0000              add [bx+si],al
00007323  0000              add [bx+si],al
00007325  0208              add cl,[bx+si]
00007327  3C00              cmp al,0x0
00007329  3F                aas
0000732A  000F              add [bx],cl
0000732C  C003F0            rol byte [bp+di],byte 0xf0
0000732F  00FC              add ah,bh
00007331  003C              add [si],bh
00007333  0000              add [bx+si],al
00007335  0000              add [bx+si],al
00007337  0208              add cl,[bx+si]
00007339  3F                aas
0000733A  C03FC0            sar byte [bx],byte 0xc0
0000733D  3C00              cmp al,0x0
0000733F  3C00              cmp al,0x0
00007341  3F                aas
00007342  C03FC0            sar byte [bx],byte 0xc0
00007345  0000              add [bx+si],al
00007347  0000              add [bx+si],al
00007349  0208              add cl,[bx+si]
0000734B  FFF0              push ax
0000734D  00F0              add al,dh
0000734F  03C0              add ax,ax
00007351  0F                db 0x0f
00007352  003C              add [si],bh
00007354  00F0              add al,dh
00007356  00FF              add bh,bh
00007358  F00000            lock add [bx+si],al
0000735B  0208              add cl,[bx+si]
0000735D  F0F0F0F0F0F03F    lock aas
00007364  C00F00            ror byte [bx],byte 0x0
00007367  0F000F            str [bx]
0000736A  0000              add [bx+si],al
0000736C  0002              add [bp+si],al
0000736E  08F0              or al,dh
00007370  F0F0F03F          lock aas
00007374  C00F00            ror byte [bx],byte 0x0
00007377  3F                aas
00007378  C0                db 0xc0
00007379  F0F0F0F00000      lock add [bx+si],al
0000737F  0208              add cl,[bx+si]
00007381  F0F0F0F0F0F0F0F0  lock push ax
         -F0F0FFF0
0000738D  F0F00000          lock add [bx+si],al
00007391  0208              add cl,[bx+si]
00007393  F0F0F0F0F0F0F0F0  lock aas
         -F0F03F
0000739E  C00F00            ror byte [bx],byte 0x0
000073A1  0000              add [bx+si],al
000073A3  0208              add cl,[bx+si]
000073A5  F0F0F0F0F0F0F0F0  lock aas
         -F0F0F0F03F
000073B2  C00000            rol byte [bx+si],byte 0x0
000073B5  0208              add cl,[bx+si]
000073B7  FFF0              push ax
000073B9  0F000F            str [bx]
000073BC  000F              add [bx],cl
000073BE  000F              add [bx],cl
000073C0  000F              add [bx],cl
000073C2  000F              add [bx],cl
000073C4  0000              add [bx+si],al
000073C6  0002              add [bp+si],al
000073C8  083F              or [bx],bh
000073CA  C0                db 0xc0
000073CB  F0F0F0003F        lock add [bx],bh
000073D0  C000F0            rol byte [bx+si],byte 0xf0
000073D3  F0F03F            lock aas
000073D6  C00000            rol byte [bx+si],byte 0x0
000073D9  0208              add cl,[bx+si]
000073DB  FFC0              inc ax
000073DD  F0F0F0F0FFC0      lock inc ax
000073E3  FF00              inc word [bx+si]
000073E5  F3                rep
000073E6  C0                db 0xc0
000073E7  F0F00000          lock add [bx+si],al
000073EB  0208              add cl,[bx+si]
000073ED  3F                aas
000073EE  C0                db 0xc0
000073EF  F0F0F0F0FC        lock cld
000073F4  F0F3F0F0C03F30    rep lock sar byte [bx],byte 0x30
000073FB  0000              add [bx+si],al
000073FD  0208              add cl,[bx+si]
000073FF  FFC0              inc ax
00007401  F0F0F0F0FFC0      lock inc ax
00007407  F000F0            lock add al,dh
0000740A  00F0              add al,dh
0000740C  0000              add [bx+si],al
0000740E  0002              add [bp+si],al
00007410  083F              or [bx],bh
00007412  C0                db 0xc0
00007413  F0F0F0F0F0F0F0F0  lock aas
         -F0F03F
0000741E  C00000            rol byte [bx+si],byte 0x0
00007421  0208              add cl,[bx+si]
00007423  F0F0F0F0FC        lock cld
00007428  F0F3F0F0F0F0F0F0  xrelease lock add [bx+si],al
         -F00000
00007433  0208              add cl,[bx+si]
00007435  F0F0FFF0          lock push ax
00007439  F0F0F0F0F0F0F0F0  lock add [bx+si],al
         -F0F00000
00007445  0208              add cl,[bx+si]
00007447  F000F0            lock add al,dh
0000744A  00F0              add al,dh
0000744C  00F0              add al,dh
0000744E  00F0              add al,dh
00007450  00F0              add al,dh
00007452  00FF              add bh,bh
00007454  F00000            lock add [bx+si],al
00007457  0208              add cl,[bx+si]
00007459  F0F0F3C0FF00      rep lock sar bh,byte 0x0
0000745F  FC                cld
00007460  00FF              add bh,bh
00007462  00F3              add bl,dh
00007464  C0                db 0xc0
00007465  F0F00000          lock add [bx+si],al
00007469  0208              add cl,[bx+si]
0000746B  00F0              add al,dh
0000746D  00F0              add al,dh
0000746F  00F0              add al,dh
00007471  00F0              add al,dh
00007473  F0F0F0F03F        lock aas
00007478  C00000            rol byte [bx+si],byte 0x0
0000747B  0208              add cl,[bx+si]
0000747D  FFF0              push ax
0000747F  0F000F            str [bx]
00007482  000F              add [bx],cl
00007484  000F              add [bx],cl
00007486  000F              add [bx],cl
00007488  00FF              add bh,bh
0000748A  F00000            lock add [bx+si],al
0000748D  0208              add cl,[bx+si]
0000748F  F0F0F0F0F0F0FFF0  lock push ax
00007497  F0F0F0F0F0F00000  lock add [bx+si],al
0000749F  0208              add cl,[bx+si]
000074A1  3F                aas
000074A2  C0                db 0xc0
000074A3  F0F0F000F3        lock add bl,dh
000074A8  F0F0F0F0F03F      lock aas
000074AE  C00000            rol byte [bx+si],byte 0x0
000074B1  0208              add cl,[bx+si]
000074B3  3F                aas
000074B4  C0                db 0xc0
000074B5  F0F0F000FF        lock add bh,bh
000074BA  C0                db 0xc0
000074BB  F000F0            lock add al,dh
000074BE  00F0              add al,dh
000074C0  0000              add [bx+si],al
000074C2  0002              add [bp+si],al
000074C4  083F              or [bx],bh
000074C6  C0                db 0xc0
000074C7  F0F0F000FF        lock add bh,bh
000074CC  C0                db 0xc0
000074CD  F000F0            lock add al,dh
000074D0  F03F              lock aas
000074D2  C00000            rol byte [bx+si],byte 0x0
000074D5  0208              add cl,[bx+si]
000074D7  FF00              inc word [bx+si]
000074D9  F3                rep
000074DA  C0                db 0xc0
000074DB  F0F0F0F0F0F0F3C0  rep lock sar bh,byte 0x0
         -FF00
000074E5  0000              add [bx+si],al
000074E7  0208              add cl,[bx+si]
000074E9  3F                aas
000074EA  C0                db 0xc0
000074EB  F0F0F000F0        lock add al,dh
000074F0  00F0              add al,dh
000074F2  00F0              add al,dh
000074F4  F03F              lock aas
000074F6  C00000            rol byte [bx+si],byte 0x0
000074F9  0208              add cl,[bx+si]
000074FB  FFC0              inc ax
000074FD  F0F0F0F0FFC0      lock inc ax
00007503  F0F0F0F0FFC0      lock inc ax
00007509  0000              add [bx+si],al
0000750B  0208              add cl,[bx+si]
0000750D  3F                aas
0000750E  C0                db 0xc0
0000750F  F0F0F0F0FFF0      lock push ax
00007515  F0F0F0F0F0F00000  lock add [bx+si],al
0000751D  0208              add cl,[bx+si]
0000751F  004002            add [bx+si+0x2],al
00007522  003C              add [si],bh
00007524  F0                lock
00007525  FF                db 0xff
00007526  FC                cld
00007527  FF                db 0xff
00007528  FC                cld
00007529  FF                db 0xff
0000752A  FC                cld
0000752B  3F                aas
0000752C  F03CF0            lock cmp al,0xf0
0000752F  0208              add cl,[bx+si]
00007531  0F                db 0x0f
00007532  F03F              lock aas
00007534  FC                cld
00007535  103C              adc [si],bh
00007537  00F0              add al,dh
00007539  03C0              add ax,ax
0000753B  0000              add [bx+si],al
0000753D  03C0              add ax,ax
0000753F  0000              add [bx+si],al
00007541  0208              add cl,[bx+si]
00007543  0800              or [bx+si],al
00007545  0F000F            str [bx]
00007548  C00FF0            ror byte [bx],byte 0xf0
0000754B  0FC00F            xadd [bx],cl
0000754E  0008              add [bx+si],cl
00007550  0000              add [bx+si],al
00007552  0002              add [bp+si],al
00007554  0800              or [bx+si],al
00007556  0000              add [bx+si],al
00007558  003F              add [bx],bh
0000755A  FC                cld
0000755B  0000              add [bx+si],al
0000755D  3F                aas
0000755E  FC                cld
0000755F  0000              add [bx+si],al
00007561  0000              add [bx+si],al
00007563  0000              add [bx+si],al
00007565  0208              add cl,[bx+si]
00007567  008003C0          add [bx+si-0x3ffd],al
0000756B  0FC03F            xadd [bx],bh
0000756E  C00FC0            ror byte [bx],byte 0xc0
00007571  03C0              add ax,ax
00007573  00800000          add [bx+si+0x0],al
00007577  0208              add cl,[bx+si]
00007579  0000              add [bx+si],al
0000757B  03C0              add ax,ax
0000757D  03C0              add ax,ax
0000757F  0000              add [bx+si],al
00007581  03C0              add ax,ax
00007583  03C0              add ax,ax
00007585  00800100          add [bx+si+0x1],al
00007589  0208              add cl,[bx+si]
0000758B  0000              add [bx+si],al
0000758D  03C0              add ax,ax
0000758F  03C0              add ax,ax
00007591  0000              add [bx+si],al
00007593  03C0              add ax,ax
00007595  03C0              add ax,ax
00007597  0000              add [bx+si],al
00007599  0000              add [bx+si],al
0000759B  0208              add cl,[bx+si]
0000759D  3F                aas
0000759E  C0                db 0xc0
0000759F  F0F0F0F03F        lock aas
000075A4  F000F0            lock add al,dh
000075A7  03C0              add ax,ax
000075A9  0F0000            sldt [bx+si]
000075AC  0002              add [bp+si],al
000075AE  083F              or [bx],bh
000075B0  C0                db 0xc0
000075B1  F0F0F0F03F        lock aas
000075B6  C0                db 0xc0
000075B7  F0F0F0F03F        lock aas
000075BC  C00000            rol byte [bx+si],byte 0x0
000075BF  0208              add cl,[bx+si]
000075C1  FFF0              push ax
000075C3  F0F003C0          lock add ax,ax
000075C7  0F000F            str [bx]
000075CA  000F              add [bx],cl
000075CC  000F              add [bx],cl
000075CE  0000              add [bx+si],al
000075D0  0002              add [bp+si],al
000075D2  080F              or [bx],cl
000075D4  C03C00            sar byte [si],byte 0x0
000075D7  F000FF            lock add bh,bh
000075DA  C0                db 0xc0
000075DB  F0F0F0F03F        lock aas
000075E0  C00000            rol byte [bx+si],byte 0x0
000075E3  0208              add cl,[bx+si]
000075E5  FFF0              push ax
000075E7  F000F0            lock add al,dh
000075EA  00FF              add bh,bh
000075EC  C000F0            rol byte [bx+si],byte 0xf0
000075EF  F0F03F            lock aas
000075F2  C00000            rol byte [bx+si],byte 0x0
000075F5  0208              add cl,[bx+si]
000075F7  03F0              add si,ax
000075F9  0F                db 0x0f
000075FA  F03CF0            lock cmp al,0xf0
000075FD  F0F0FFF0          lock push ax
00007601  00F0              add al,dh
00007603  00F0              add al,dh
00007605  0000              add [bx+si],al
00007607  0208              add cl,[bx+si]
00007609  3F                aas
0000760A  C0                db 0xc0
0000760B  F0F000F0          lock add al,dh
0000760F  0FC000            xadd [bx+si],al
00007612  F0F0F03F          lock aas
00007616  C00000            rol byte [bx+si],byte 0x0
00007619  0208              add cl,[bx+si]
0000761B  3F                aas
0000761C  C0                db 0xc0
0000761D  F0F000F0          lock add al,dh
00007621  03C0              add ax,ax
00007623  0F                db 0x0f
00007624  003C              add [si],bh
00007626  00FF              add bh,bh
00007628  F00000            lock add [bx+si],al
0000762B  0208              add cl,[bx+si]
0000762D  0F                db 0x0f
0000762E  003F              add [bx],bh
00007630  00FF              add bh,bh
00007632  000F              add [bx],cl
00007634  000F              add [bx],cl
00007636  000F              add [bx],cl
00007638  00FF              add bh,bh
0000763A  F00000            lock add [bx+si],al
0000763D  0208              add cl,[bx+si]
0000763F  3F                aas
00007640  C0                db 0xc0
00007641  F0F0F3F0FFF0      rep lock push ax
00007647  FC                cld
00007648  F0F0F03F          lock aas
0000764C  C00000            rol byte [bx+si],byte 0x0
0000764F  0208              add cl,[bx+si]
00007651  003C              add [si],bh
00007653  00FC              add ah,bh
00007655  03F0              add si,ax
00007657  0FC03F            xadd [bx],bh
0000765A  003C              add [si],bh
0000765C  0000              add [bx+si],al
0000765E  0000              add [bx+si],al
00007660  0002              add [bp+si],al
00007662  0800              or [bx+si],al
00007664  0000              add [bx+si],al
00007666  0000              add [bx+si],al
00007668  0000              add [bx+si],al
0000766A  0000              add [bx+si],al
0000766C  00F0              add al,dh
0000766E  00F0              add al,dh
00007670  0000              add [bx+si],al
00007672  0002              add [bp+si],al
00007674  0800              or [bx+si],al
00007676  0000              add [bx+si],al
00007678  0000              add [bx+si],al
0000767A  003F              add [bx],bh
0000767C  FC                cld
0000767D  3F                aas
0000767E  FC                cld
0000767F  0000              add [bx+si],al
00007681  0000              add [bx+si],al
00007683  0000              add [bx+si],al
00007685  0208              add cl,[bx+si]
00007687  0000              add [bx+si],al
00007689  0000              add [bx+si],al
0000768B  0000              add [bx+si],al
0000768D  0000              add [bx+si],al
0000768F  F000F0            lock add al,dh
00007692  0030              add [bx+si],dh
00007694  00C0              add al,al
00007696  0002              add [bp+si],al
00007698  0800              or [bx+si],al
0000769A  0001              add [bx+di],al
0000769C  0001              add [bx+di],al
0000769E  003F              add [bx],bh
000076A0  F00100            lock add [bx+si],ax
000076A3  0100              add [bx+si],ax
000076A5  0000              add [bx+si],al
000076A7  0000              add [bx+si],al
000076A9  0208              add cl,[bx+si]
000076AB  1010              adc [bx+si],dl
000076AD  0FC03C            xadd [si],bh
000076B0  F00FC010          lock xadd [bx+si],dl
000076B4  1000              adc [bx+si],al
000076B6  0000              add [bx+si],al
000076B8  0000              add [bx+si],al
000076BA  0002              add [bp+si],al
000076BC  083F              or [bx],bh
000076BE  000F              add [bx],cl
000076C0  C003F0            rol byte [bp+di],byte 0xf0
000076C3  03F0              add si,ax
000076C5  03F0              add si,ax
000076C7  0FC03F            xadd [bx],bh
000076CA  0000              add [bx+si],al
000076CC  0002              add [bp+si],al
000076CE  0803              or [bp+di],al
000076D0  F00FC03F          lock xadd [bx],bh
000076D4  003F              add [bx],bh
000076D6  003F              add [bx],bh
000076D8  000F              add [bx],cl
000076DA  C003F0            rol byte [bp+di],byte 0xf0
000076DD  0000              add [bx+si],al
000076DF  0208              add cl,[bx+si]
000076E1  03C0              add ax,ax
000076E3  03C0              add ax,ax
000076E5  00800100          add [bx+si+0x1],al
000076E9  0000              add [bx+si],al
000076EB  0000              add [bx+si],al
000076ED  0000              add [bx+si],al
000076EF  0000              add [bx+si],al
000076F1  0208              add cl,[bx+si]
000076F3  3F                aas
000076F4  00F0              add al,dh
000076F6  C0                db 0xc0
000076F7  F0003C            lock add [si],bh
000076FA  00F3              add bl,dh
000076FC  30F0              xor al,dh
000076FE  C03F30            sar byte [bx],byte 0x30
00007701  0000              add [bx+si],al
00007703  0208              add cl,[bx+si]
00007705  1008              adc [bx+si],cl
00007707  8810              mov [bx+si],dl
00007709  10800100          adc [bx+si+0x1],al
0000770D  0810              or [bx+si],dl
0000770F  10888010          adc [bx+si+0x1080],cl
00007713  0000              add [bx+si],al
00007715  0208              add cl,[bx+si]
00007717  0100              add [bx+si],ax
00007719  3F                aas
0000771A  F01000            lock adc [bx+si],al
0000771D  3F                aas
0000771E  F00010            lock add [bx+si],dl
00007721  3F                aas
00007722  F00100            lock add [bx+si],ax
00007725  0000              add [bx+si],al
00007727  0208              add cl,[bx+si]
00007729  0000              add [bx+si],al
0000772B  0810              or [bx+si],dl
0000772D  3F                aas
0000772E  FC                cld
0000772F  0810              or [bx+si],dl
00007731  3F                aas
00007732  FC                cld
00007733  0810              or [bx+si],dl
00007735  0000              add [bx+si],al
00007737  0000              add [bx+si],al
00007739  0208              add cl,[bx+si]
0000773B  3CF0              cmp al,0xf0
0000773D  3CF0              cmp al,0xf0
0000773F  0810              or [bx+si],dl
00007741  10800000          adc [bx+si+0x0],al
00007745  0000              add [bx+si],al
00007747  0000              add [bx+si],al
00007749  0000              add [bx+si],al
0000774B  0208              add cl,[bx+si]
0000774D  03F0              add si,ax
0000774F  03F0              add si,ax
00007751  03F0              add si,ax
00007753  03F0              add si,ax
00007755  0000              add [bx+si],al
00007757  03F0              add si,ax
00007759  0000              add [bx+si],al
0000775B  0000              add [bx+si],al
0000775D  0208              add cl,[bx+si]
0000775F  0000              add [bx+si],al
00007761  0000              add [bx+si],al
00007763  0000              add [bx+si],al
00007765  0000              add [bx+si],al
00007767  0000              add [bx+si],al
00007769  0000              add [bx+si],al
0000776B  0000              add [bx+si],al
0000776D  0000              add [bx+si],al
0000776F  0410              add al,0x10
00007771  0000              add [bx+si],al
00007773  0000              add [bx+si],al
00007775  0000              add [bx+si],al
00007777  0000              add [bx+si],al
00007779  0000              add [bx+si],al
0000777B  0000              add [bx+si],al
0000777D  00FF              add bh,bh
0000777F  FFC0              inc ax
00007781  00FF              add bh,bh
00007783  FFC0              inc ax
00007785  00FF              add bh,bh
00007787  FFC0              inc ax
00007789  003F              add [bx],bh
0000778B  FF00              inc word [bx+si]
0000778D  003F              add [bx],bh
0000778F  FF00              inc word [bx+si]
00007791  000A              add [bp+si],cl
00007793  A800              test al,0x0
00007795  000A              add [bp+si],cl
00007797  A800              test al,0x0
00007799  0001              add [bx+di],al
0000779B  50                push ax
0000779C  0000              add [bx+si],al
0000779E  015000            add [bx+si+0x0],dx
000077A1  000A              add [bp+si],cl
000077A3  A800              test al,0x0
000077A5  000A              add [bp+si],cl
000077A7  A800              test al,0x0
000077A9  003F              add [bx],bh
000077AB  FF00              inc word [bx+si]
000077AD  003F              add [bx],bh
000077AF  FF00              inc word [bx+si]
000077B1  0410              add al,0x10
000077B3  0000              add [bx+si],al
000077B5  0000              add [bx+si],al
000077B7  0000              add [bx+si],al
000077B9  0000              add [bx+si],al
000077BB  0000              add [bx+si],al
000077BD  0000              add [bx+si],al
000077BF  0000              add [bx+si],al
000077C1  0000              add [bx+si],al
000077C3  0000              add [bx+si],al
000077C5  0000              add [bx+si],al
000077C7  0000              add [bx+si],al
000077C9  0000              add [bx+si],al
000077CB  0000              add [bx+si],al
000077CD  0000              add [bx+si],al
000077CF  0000              add [bx+si],al
000077D1  0000              add [bx+si],al
000077D3  0000              add [bx+si],al
000077D5  0000              add [bx+si],al
000077D7  AA                stosb
000077D8  AA                stosb
000077D9  AA                stosb
000077DA  A0AAAA            mov al,[0xaaaa]
000077DD  AA                stosb
000077DE  A0FFFF            mov al,[0xffff]
000077E1  FFF0              push ax
000077E3  AA                stosb
000077E4  AA                stosb
000077E5  AA                stosb
000077E6  A0FFFF            mov al,[0xffff]
000077E9  FFF0              push ax
000077EB  AA                stosb
000077EC  AA                stosb
000077ED  AA                stosb
000077EE  A0AAAA            mov al,[0xaaaa]
000077F1  AA                stosb
000077F2  A00410            mov al,[0x1004]
000077F5  0000              add [bx+si],al
000077F7  0000              add [bx+si],al
000077F9  0000              add [bx+si],al
000077FB  0000              add [bx+si],al
000077FD  0000              add [bx+si],al
000077FF  0000              add [bx+si],al
00007801  155550            adc ax,0x5055
00007804  003F              add [bx],bh
00007806  FFF0              push ax
00007808  0015              add [di],dl
0000780A  55                push bp
0000780B  50                push ax
0000780C  003F              add [bx],bh
0000780E  FFF0              push ax
00007810  0015              add [di],dl
00007812  55                push bp
00007813  50                push ax
00007814  0015              add [di],dl
00007816  55                push bp
00007817  50                push ax
00007818  00AAAAA8          add [bp+si-0x5756],ch
0000781C  00AAAAA8          add [bp+si-0x5756],ch
00007820  00FF              add bh,bh
00007822  FF                db 0xff
00007823  FC                cld
00007824  00AAAAA8          add [bp+si-0x5756],ch
00007828  00FF              add bh,bh
0000782A  FFF0              push ax
0000782C  00AAAA80          add [bp+si-0x7f56],ch
00007830  00AAA800          add [bp+si+0xa8],ch
00007834  0004              add [si],al
00007836  1000              adc [bx+si],al
00007838  1400              adc al,0x0
0000783A  0000              add [bx+si],al
0000783C  41                inc cx
0000783D  0000              add [bx+si],al
0000783F  004100            add [bx+di+0x0],al
00007842  0000              add [bx+si],al
00007844  41                inc cx
00007845  0000              add [bx+si],al
00007847  0014              add [si],dl
00007849  0000              add [bx+si],al
0000784B  004100            add [bx+di+0x0],al
0000784E  0000              add [bx+si],al
00007850  41                inc cx
00007851  0000              add [bx+si],al
00007853  004100            add [bx+di+0x0],al
00007856  0000              add [bx+si],al
00007858  1400              adc al,0x0
0000785A  0000              add [bx+si],al
0000785C  41                inc cx
0000785D  0000              add [bx+si],al
0000785F  004100            add [bx+di+0x0],al
00007862  0000              add [bx+si],al
00007864  41                inc cx
00007865  0000              add [bx+si],al
00007867  0014              add [si],dl
00007869  0000              add [bx+si],al
0000786B  004100            add [bx+di+0x0],al
0000786E  0000              add [bx+si],al
00007870  41                inc cx
00007871  0000              add [bx+si],al
00007873  004100            add [bx+di+0x0],al
00007876  0004              add [si],al
00007878  08FF              or bh,bh
0000787A  FF                db 0xff
0000787B  FFC0              inc ax
0000787D  AA                stosb
0000787E  AA                stosb
0000787F  AA                stosb
00007880  80FFFF            cmp bh,0xff
00007883  FFC0              inc ax
00007885  AA                stosb
00007886  AA                stosb
00007887  AA                stosb
00007888  80FFFF            cmp bh,0xff
0000788B  FFC0              inc ax
0000788D  AA                stosb
0000788E  AA                stosb
0000788F  AA                stosb
00007890  80FFFF            cmp bh,0xff
00007893  FFC0              inc ax
00007895  0000              add [bx+si],al
00007897  0000              add [bx+si],al
00007899  0410              add al,0x10
0000789B  FF                db 0xff
0000789C  FF                db 0xff
0000789D  FFC0              inc ax
0000789F  FE                db 0xfe
000078A0  AA                stosb
000078A1  AF                scasw
000078A2  C0FFEF            sar bh,byte 0xef
000078A5  EF                out dx,ax
000078A6  C0FEFE            sar dh,byte 0xfe
000078A9  FFC0              inc ax
000078AB  FE                db 0xfe
000078AC  AA                stosb
000078AD  AF                scasw
000078AE  C03FFF            sar byte [bx],byte 0xff
000078B1  FF00              inc word [bx+si]
000078B3  0000              add [bx+si],al
000078B5  0000              add [bx+si],al
000078B7  0000              add [bx+si],al
000078B9  0000              add [bx+si],al
000078BB  0000              add [bx+si],al
000078BD  0000              add [bx+si],al
000078BF  0000              add [bx+si],al
000078C1  0000              add [bx+si],al
000078C3  0000              add [bx+si],al
000078C5  0000              add [bx+si],al
000078C7  0000              add [bx+si],al
000078C9  0000              add [bx+si],al
000078CB  0000              add [bx+si],al
000078CD  0000              add [bx+si],al
000078CF  0000              add [bx+si],al
000078D1  0000              add [bx+si],al
000078D3  0000              add [bx+si],al
000078D5  0000              add [bx+si],al
000078D7  0000              add [bx+si],al
000078D9  0000              add [bx+si],al
000078DB  0410              add al,0x10
000078DD  0000              add [bx+si],al
000078DF  0000              add [bx+si],al
000078E1  0000              add [bx+si],al
000078E3  2AA00002          sub ah,[bx+si+0x200]
000078E7  AA                stosb
000078E8  A002AA            mov al,[0xaa02]
000078EB  AA                stosb
000078EC  A003FB            mov al,[0xfb03]
000078EF  FA                cli
000078F0  A03FFA            mov al,[0xfa3f]
000078F3  AA                stosb
000078F4  A02AAB            mov al,[0xab2a]
000078F7  FA                cli
000078F8  A02A3F            mov al,[0x3f2a]
000078FB  2AA0282A          sub ah,[bx+si+0x2a28]
000078FF  0A00              or al,[bx+si]
00007901  2A0A              sub cl,[bp+si]
00007903  2A00              sub al,[bx+si]
00007905  2828              sub [bx+si],ch
00007907  3C00              cmp al,0x0
00007909  E3C0              jcxz 0x78cb
0000790B  2000              and [bx+si],al
0000790D  E00F              loopne 0x791e
0000790F  A000FC            mov al,[0xfc00]
00007912  0F80003C          jo word 0xb516
00007916  0F800000          jo word 0x791a
0000791A  02800004          add al,[bx+si+0x400]
0000791E  1000              adc [bx+si],al
00007920  0000              add [bx+si],al
00007922  A00000            mov al,[0x0]
00007925  2AA00002          sub ah,[bx+si+0x200]
00007929  AA                stosb
0000792A  A0022A            mov al,[0x2a02]
0000792D  AB                stosw
0000792E  A003FB            mov al,[0xfb03]
00007931  FA                cli
00007932  A03FFA            mov al,[0xfa3f]
00007935  AA                stosb
00007936  A02AAB            mov al,[0xab2a]
00007939  FB                sti
0000793A  F0                lock
0000793B  0F                db 0x0f
0000793C  3F                aas
0000793D  AA                stosb
0000793E  203C              and [si],bh
00007940  02BA0000          add bh,[bp+si+0x0]
00007944  02AA0000          add ch,[bp+si+0x0]
00007948  02BC0000          add bh,[si+0x0]
0000794C  02A00000          add ah,[bx+si+0x0]
00007950  FA                cli
00007951  A00000            mov al,[0x0]
00007954  F8                clc
00007955  0000              add [bx+si],al
00007957  00F8              add al,bh
00007959  0000              add [bx+si],al
0000795B  0028              add [bx+si],ch
0000795D  0000              add [bx+si],al
0000795F  0410              add al,0x10
00007961  0000              add [bx+si],al
00007963  0020              add [bx+si],ah
00007965  0000              add [bx+si],al
00007967  0220              add ah,[bx+si]
00007969  0002              add [bp+si],al
0000796B  0BF0              or si,ax
0000796D  000A              add [bp+si],cl
0000796F  2AA0002B          sub ah,[bx+si+0x2b00]
00007973  FA                cli
00007974  A0002A            mov al,[0x2a00]
00007977  BFA000            mov di,0xa0
0000797A  0BF0              or si,ax
0000797C  F0000F            lock add [bx],cl
0000797F  2020              and [bx+si],ah
00007981  0020              add [bx+si],ah
00007983  0000              add [bx+si],al
00007985  0000              add [bx+si],al
00007987  0000              add [bx+si],al
00007989  0000              add [bx+si],al
0000798B  0000              add [bx+si],al
0000798D  0000              add [bx+si],al
0000798F  0000              add [bx+si],al
00007991  0000              add [bx+si],al
00007993  0000              add [bx+si],al
00007995  0000              add [bx+si],al
00007997  0000              add [bx+si],al
00007999  0000              add [bx+si],al
0000799B  0000              add [bx+si],al
0000799D  0000              add [bx+si],al
0000799F  0000              add [bx+si],al
000079A1  0410              add al,0x10
000079A3  3F                aas
000079A4  C0FF00            sar bh,byte 0x0
000079A7  0FC0FC            xadd ah,bh
000079AA  000A              add [bp+si],cl
000079AC  F3E8000A          rep call word 0x83b0
000079B0  AA                stosb
000079B1  A800              test al,0x0
000079B3  00AA8000          add [bp+si+0x80],ch
000079B7  00F7              add bh,dh
000079B9  C0000F            rol byte [bx+si],byte 0xf
000079BC  55                push bp
000079BD  7C00              jl 0x79bf
000079BF  3F                aas
000079C0  55                push bp
000079C1  7F00              jg 0x79c3
000079C3  3F                aas
000079C4  55                push bp
000079C5  7F00              jg 0x79c7
000079C7  00AA8000          add [bp+si+0x80],ch
000079CB  00AA8000          add [bp+si+0x80],ch
000079CF  0FFF              ud0
000079D1  FC                cld
000079D2  0003              add [bp+di],al
000079D4  FFF0              push ax
000079D6  0003              add [bp+di],al
000079D8  F3F00000          xrelease lock add [bx+si],al
000079DC  F3C00000          rep rol byte [bx+si],byte 0x0
000079E0  0000              add [bx+si],al
000079E2  0004              add [si],al
000079E4  103F              adc [bx],bh
000079E6  C0FF00            sar bh,byte 0x0
000079E9  0FC0FC            xadd ah,bh
000079EC  000A              add [bp+si],cl
000079EE  AA                stosb
000079EF  A800              test al,0x0
000079F1  00F7              add bh,dh
000079F3  C00001            rol byte [bx+si],byte 0x1
000079F6  55                push bp
000079F7  50                push ax
000079F8  00FF              add bh,bh
000079FA  55                push bp
000079FB  7FC0              jg 0x79bd
000079FD  00AA8000          add [bp+si+0x80],ch
00007A01  0FFF              ud0
00007A03  FC                cld
00007A04  0003              add [bp+di],al
00007A06  FFF0              push ax
00007A08  0000              add [bx+si],al
00007A0A  F3C00000          rep rol byte [bx+si],byte 0x0
00007A0E  0000              add [bx+si],al
00007A10  0000              add [bx+si],al
00007A12  0000              add [bx+si],al
00007A14  0000              add [bx+si],al
00007A16  0000              add [bx+si],al
00007A18  0000              add [bx+si],al
00007A1A  0000              add [bx+si],al
00007A1C  0000              add [bx+si],al
00007A1E  0000              add [bx+si],al
00007A20  0000              add [bx+si],al
00007A22  0000              add [bx+si],al
00007A24  0004              add [si],al
00007A26  103F              adc [bx],bh
00007A28  C0FF00            sar bh,byte 0x0
00007A2B  0AF3              or dh,bl
00007A2D  E80000            call word 0x7a30
00007A30  F3C0003F          rep rol byte [bx+si],byte 0x3f
00007A34  55                push bp
00007A35  7F00              jg 0x7a37
00007A37  00AA8000          add [bp+si+0x80],ch
00007A3B  0FFF              ud0
00007A3D  FC                cld
00007A3E  0000              add [bx+si],al
00007A40  F3C00000          rep rol byte [bx+si],byte 0x0
00007A44  0000              add [bx+si],al
00007A46  0000              add [bx+si],al
00007A48  0000              add [bx+si],al
00007A4A  0000              add [bx+si],al
00007A4C  0000              add [bx+si],al
00007A4E  0000              add [bx+si],al
00007A50  0000              add [bx+si],al
00007A52  0000              add [bx+si],al
00007A54  0000              add [bx+si],al
00007A56  0000              add [bx+si],al
00007A58  0000              add [bx+si],al
00007A5A  0000              add [bx+si],al
00007A5C  0000              add [bx+si],al
00007A5E  0000              add [bx+si],al
00007A60  0000              add [bx+si],al
00007A62  0000              add [bx+si],al
00007A64  0000              add [bx+si],al
00007A66  0004              add [si],al
00007A68  100A              adc [bp+si],cl
00007A6A  AA                stosb
00007A6B  AA                stosb
00007A6C  800AAA            or byte [bp+si],0xaa
00007A6F  AA                stosb
00007A70  800019            add byte [bx+si],0x19
00007A73  90                nop
00007A74  0000              add [bx+si],al
00007A76  2660              es pushaw
00007A78  0000              add [bx+si],al
00007A7A  A6                cmpsb
00007A7B  680000            push word 0x0
00007A7E  99                cwd
00007A7F  98                cbw
00007A80  0000              add [bx+si],al
00007A82  99                cwd
00007A83  98                cbw
00007A84  0000              add [bx+si],al
00007A86  2660              es pushaw
00007A88  0000              add [bx+si],al
00007A8A  2660              es pushaw
00007A8C  0015              add [di],dl
00007A8E  55                push bp
00007A8F  55                push bp
00007A90  50                push ax
00007A91  155555            adc ax,0x5555
00007A94  50                push ax
00007A95  0FFF              ud0
00007A97  FFC0              inc ax
00007A99  0000              add [bx+si],al
00007A9B  0000              add [bx+si],al
00007A9D  0000              add [bx+si],al
00007A9F  0000              add [bx+si],al
00007AA1  0000              add [bx+si],al
00007AA3  0000              add [bx+si],al
00007AA5  0000              add [bx+si],al
00007AA7  0000              add [bx+si],al
00007AA9  0410              add al,0x10
00007AAB  0AAAAA80          or ch,[bp+si-0x7f56]
00007AAF  0AAAAA80          or ch,[bp+si-0x7f56]
00007AB3  00999800          add [bx+di+0x98],bl
00007AB7  016665            add [bp+0x65],sp
00007ABA  0009              add [bx+di],cl
00007ABC  6665800166        o32 add byte [gs:bx+di],0x66
00007AC1  650000            add [gs:bx+si],al
00007AC4  99                cwd
00007AC5  98                cbw
00007AC6  0015              add [di],dl
00007AC8  55                push bp
00007AC9  55                push bp
00007ACA  50                push ax
00007ACB  155555            adc ax,0x5555
00007ACE  50                push ax
00007ACF  0FFF              ud0
00007AD1  FFC0              inc ax
00007AD3  0000              add [bx+si],al
00007AD5  0000              add [bx+si],al
00007AD7  0000              add [bx+si],al
00007AD9  0000              add [bx+si],al
00007ADB  0000              add [bx+si],al
00007ADD  0000              add [bx+si],al
00007ADF  0000              add [bx+si],al
00007AE1  0000              add [bx+si],al
00007AE3  0000              add [bx+si],al
00007AE5  0000              add [bx+si],al
00007AE7  0000              add [bx+si],al
00007AE9  0000              add [bx+si],al
00007AEB  0410              add al,0x10
00007AED  0AAAAA80          or ch,[bp+si-0x7f56]
00007AF1  0AAAAA80          or ch,[bp+si-0x7f56]
00007AF5  155555            adc ax,0x5555
00007AF8  50                push ax
00007AF9  155555            adc ax,0x5555
00007AFC  50                push ax
00007AFD  0FFF              ud0
00007AFF  FFC0              inc ax
00007B01  0000              add [bx+si],al
00007B03  0000              add [bx+si],al
00007B05  0000              add [bx+si],al
00007B07  0000              add [bx+si],al
00007B09  0000              add [bx+si],al
00007B0B  0000              add [bx+si],al
00007B0D  0000              add [bx+si],al
00007B0F  0000              add [bx+si],al
00007B11  0000              add [bx+si],al
00007B13  0000              add [bx+si],al
00007B15  0000              add [bx+si],al
00007B17  0000              add [bx+si],al
00007B19  0000              add [bx+si],al
00007B1B  0000              add [bx+si],al
00007B1D  0000              add [bx+si],al
00007B1F  0000              add [bx+si],al
00007B21  0000              add [bx+si],al
00007B23  0000              add [bx+si],al
00007B25  0000              add [bx+si],al
00007B27  0000              add [bx+si],al
00007B29  0000              add [bx+si],al
00007B2B  0000              add [bx+si],al
00007B2D  0410              add al,0x10
00007B2F  000A              add [bp+si],cl
00007B31  800000            add byte [bx+si],0x0
00007B34  0FC000            xadd [bx+si],al
00007B37  000F              add [bx],cl
00007B39  C00000            rol byte [bx+si],byte 0x0
00007B3C  0FC000            xadd [bx+si],al
00007B3F  000A              add [bp+si],cl
00007B41  800000            add byte [bx+si],0x0
00007B44  0A800000          or al,[bx+si+0x0]
00007B48  0A800000          or al,[bx+si+0x0]
00007B4C  0A800000          or al,[bx+si+0x0]
00007B50  0A8000D0          or al,[bx+si-0x3000]
00007B54  0A80003F          or al,[bx+si+0x3f00]
00007B58  0A8FC00F          or cl,[bx+0xfc0]
00007B5C  FF                db 0xff
00007B5D  FFC0              inc ax
00007B5F  03FF              add di,di
00007B61  FFC0              inc ax
00007B63  0000              add [bx+si],al
00007B65  0FC000            xadd [bx+si],al
00007B68  0000              add [bx+si],al
00007B6A  0000              add [bx+si],al
00007B6C  0000              add [bx+si],al
00007B6E  0004              add [si],al
00007B70  1000              adc [bx+si],al
00007B72  0000              add [bx+si],al
00007B74  000F              add [bx],cl
00007B76  F00000            lock add [bx+si],al
00007B79  0FFC00            paddb mm0,[bx+si]
00007B7C  0000              add [bx+si],al
00007B7E  1C00              sbb al,0x0
00007B80  00D0              add al,dl
00007B82  3C00              cmp al,0x0
00007B84  00FF              add bh,bh
00007B86  FC                cld
00007B87  0000              add [bx+si],al
00007B89  3F                aas
00007B8A  FF00              inc word [bx+si]
00007B8C  0000              add [bx+si],al
00007B8E  FFC0              inc ax
00007B90  0000              add [bx+si],al
00007B92  3F                aas
00007B93  F00000            lock add [bx+si],al
00007B96  0FFF              ud0
00007B98  C00003            rol byte [bx+si],byte 0x3
00007B9B  FFF0              push ax
00007B9D  0003              add [bp+di],al
00007B9F  C0                db 0xc0
00007BA0  F00003            lock add [bp+di],al
00007BA3  C0                db 0xc0
00007BA4  7000              jo 0x7ba6
00007BA6  03DC              add bx,sp
00007BA8  0000              add [bx+si],al
00007BAA  00FC              add ah,bh
00007BAC  0000              add [bx+si],al
00007BAE  0000              add [bx+si],al
00007BB0  0004              add [si],al
00007BB2  100F              adc [bx],cl
00007BB4  FF                db 0xff
00007BB5  FF00              inc word [bx+si]
00007BB7  3F                aas
00007BB8  EAAFC03DAA        jmp word 0xaa3d:0xc0af
00007BBD  AF                scasw
00007BBE  C03D55            sar byte [di],byte 0x55
00007BC1  57                push di
00007BC2  C03D55            sar byte [di],byte 0x55
00007BC5  57                push di
00007BC6  C03DA5            sar byte [di],byte 0xa5
00007BC9  AF                scasw
00007BCA  C03FEA            sar byte [bx],byte 0xea
00007BCD  AF                scasw
00007BCE  C00FFF            ror byte [bx],byte 0xff
00007BD1  FF00              inc word [bx+si]
00007BD3  01503C            add [bx+si+0x3c],dx
00007BD6  0001              add [bx+di],al
00007BD8  50                push ax
00007BD9  0F0001            sldt [bx+di]
00007BDC  50                push ax
00007BDD  03C0              add ax,ax
00007BDF  3F                aas
00007BE0  FF00              inc word [bx+si]
00007BE2  F00FFC00          lock paddb mm0,[bx+si]
00007BE6  3C00              cmp al,0x0
00007BE8  800000            add byte [bx+si],0x0
00007BEB  0000              add [bx+si],al
00007BED  0000              add [bx+si],al
00007BEF  0000              add [bx+si],al
00007BF1  0000              add [bx+si],al
00007BF3  0410              add al,0x10
00007BF5  3F                aas
00007BF6  FF                db 0xff
00007BF7  FFC0              inc ax
00007BF9  FE                db 0xfe
00007BFA  AA                stosb
00007BFB  AA                stosb
00007BFC  F0                lock
00007BFD  FE                db 0xfe
00007BFE  A5                movsw
00007BFF  6AF0              push byte -0x10
00007C01  FE                db 0xfe
00007C02  95                xchg ax,bp
00007C03  5A                pop dx
00007C04  F0                lock
00007C05  FE                db 0xfe
00007C06  95                xchg ax,bp
00007C07  5A                pop dx
00007C08  F0                lock
00007C09  FE                db 0xfe
00007C0A  A5                movsw
00007C0B  6AF0              push byte -0x10
00007C0D  FE                db 0xfe
00007C0E  AA                stosb
00007C0F  AA                stosb
00007C10  F03F              lock aas
00007C12  FF                db 0xff
00007C13  FFC0              inc ax
00007C15  01503C            add [bx+si+0x3c],dx
00007C18  003F              add [bx],bh
00007C1A  FF0F              dec word [bx]
00007C1C  000F              add [bx],cl
00007C1E  FC                cld
00007C1F  03C0              add ax,ax
00007C21  008000F0          add [bx+si-0x1000],al
00007C25  0000              add [bx+si],al
00007C27  003C              add [si],bh
00007C29  0000              add [bx+si],al
00007C2B  0000              add [bx+si],al
00007C2D  0000              add [bx+si],al
00007C2F  0000              add [bx+si],al
00007C31  0000              add [bx+si],al
00007C33  0000              add [bx+si],al
00007C35  0410              add al,0x10
00007C37  00FF              add bh,bh
00007C39  C00000            rol byte [bx+si],byte 0x0
00007C3C  FF10              call word [bx+si]
00007C3E  0000              add [bx+si],al
00007C40  FC                cld
00007C41  F00000            lock add [bx+si],al
00007C44  F3F00000          xrelease lock add [bx+si],al
00007C48  8FC0              pop ax
00007C4A  0000              add [bx+si],al
00007C4C  FF10              call word [bx+si]
00007C4E  0000              add [bx+si],al
00007C50  FC                cld
00007C51  F00000            lock add [bx+si],al
00007C54  F3F00000          xrelease lock add [bx+si],al
00007C58  8FC0              pop ax
00007C5A  0000              add [bx+si],al
00007C5C  FF10              call word [bx+si]
00007C5E  0000              add [bx+si],al
00007C60  FC                cld
00007C61  F00000            lock add [bx+si],al
00007C64  F3F00000          xrelease lock add [bx+si],al
00007C68  8FC0              pop ax
00007C6A  0000              add [bx+si],al
00007C6C  FF10              call word [bx+si]
00007C6E  0000              add [bx+si],al
00007C70  FC                cld
00007C71  F00000            lock add [bx+si],al
00007C74  F3F00004          xrelease lock add [si],al
00007C78  10FF              adc bh,bh
00007C7A  FF                db 0xff
00007C7B  FFF0              push ax
00007C7D  EABFAAA0EA        jmp word 0xeaa0:0xaabf
00007C82  BFAAA0            mov di,0xa0aa
00007C85  EABFAAA0FF        jmp word 0xffa0:0xaabf
00007C8A  FC                cld
00007C8B  FFF0              push ax
00007C8D  FF                db 0xff
00007C8E  FC                cld
00007C8F  FFF0              push ax
00007C91  3F                aas
00007C92  F3FFC0            rep inc ax
00007C95  0F                db 0x0f
00007C96  CF                iretw
00007C97  FF00              inc word [bx+si]
00007C99  004010            add [bx+si+0x10],al
00007C9C  0000              add [bx+si],al
00007C9E  40                inc ax
00007C9F  1000              adc [bx+si],al
00007CA1  0015              add [di],dl
00007CA3  40                inc ax
00007CA4  0000              add [bx+si],al
00007CA6  0000              add [bx+si],al
00007CA8  0000              add [bx+si],al
00007CAA  0000              add [bx+si],al
00007CAC  0000              add [bx+si],al
00007CAE  0000              add [bx+si],al
00007CB0  0000              add [bx+si],al
00007CB2  0000              add [bx+si],al
00007CB4  0000              add [bx+si],al
00007CB6  0000              add [bx+si],al
00007CB8  0004              add [si],al
00007CBA  100F              adc [bx],cl
00007CBC  FF                db 0xff
00007CBD  FF00              inc word [bx+si]
00007CBF  0AAAAA80          or ch,[bp+si-0x7f56]
00007CC3  02AAAA80          add ch,[bp+si-0x7f56]
00007CC7  0AAF57C0          or ch,[bx-0x3fa9]
00007CCB  0AAF57C0          or ch,[bx-0x3fa9]
00007CCF  0AAF57C0          or ch,[bx-0x3fa9]
00007CD3  0AAF57C0          or ch,[bx-0x3fa9]
00007CD7  0AA99A80          or ch,[bx+di-0x7f66]
00007CDB  AA                stosb
00007CDC  FD                std
00007CDD  9F                lahf
00007CDE  C0AAFDFFC0        shr byte [bp+si-0x3],byte 0xc0
00007CE3  AA                stosb
00007CE4  A9FFC0            test ax,0xc0ff
00007CE7  00A9FC00          add [bx+di+0xfc],ch
00007CEB  0000              add [bx+si],al
00007CED  F00000            lock add [bx+si],al
00007CF0  00F0              add al,dh
00007CF2  0000              add [bx+si],al
00007CF4  0FFC00            paddb mm0,[bx+si]
00007CF7  0003              add [bp+di],al
00007CF9  F00004            lock add [si],al
00007CFC  100F              adc [bx],cl
00007CFE  FF                db 0xff
00007CFF  FFC0              inc ax
00007D01  AA                stosb
00007D02  AA                stosb
00007D03  AA                stosb
00007D04  8002AA            add byte [bp+si],0xaa
00007D07  AA                stosb
00007D08  8002AF            add byte [bp+si],0xaf
00007D0B  57                push di
00007D0C  C00AAF            ror byte [bp+si],byte 0xaf
00007D0F  57                push di
00007D10  C0AAAF57C0        shr byte [bp+si+0x57af],byte 0xc0
00007D15  0AA9AA80          or ch,[bx+di-0x7f56]
00007D19  0AFD              or bh,ch
00007D1B  AF                scasw
00007D1C  C00AFD            ror byte [bp+si],byte 0xfd
00007D1F  FFC0              inc ax
00007D21  8AA9FFC0          mov ch,[bx+di-0x3f01]
00007D25  FE                db 0xfe
00007D26  A9FF00            test ax,0xff
00007D29  8800              mov [bx+si],al
00007D2B  F00000            lock add [bx+si],al
00007D2E  00F0              add al,dh
00007D30  0000              add [bx+si],al
00007D32  0FFC00            paddb mm0,[bx+si]
00007D35  0003              add [bp+di],al
00007D37  F00000            lock add [bx+si],al
00007D3A  0000              add [bx+si],al
00007D3C  0004              add [si],al
00007D3E  101F              adc [bx],bl
00007D40  FC                cld
00007D41  0000              add [bx+si],al
00007D43  FF                db 0xff
00007D44  E80000            call word 0x7d47
00007D47  17                pop ss
00007D48  FF00              inc word [bx+si]
00007D4A  00FF              add bh,bh
00007D4C  D500              aad 0x0
00007D4E  00AAFF00          add [bp+si+0xff],ch
00007D52  00FF              add bh,bh
00007D54  58                pop ax
00007D55  0000              add [bx+si],al
00007D57  17                pop ss
00007D58  F00000            lock add [bx+si],al
00007D5B  0000              add [bx+si],al
00007D5D  0000              add [bx+si],al
00007D5F  0000              add [bx+si],al
00007D61  0000              add [bx+si],al
00007D63  0000              add [bx+si],al
00007D65  0000              add [bx+si],al
00007D67  0001              add [bx+di],al
00007D69  0000              add [bx+si],al
00007D6B  0000              add [bx+si],al
00007D6D  0000              add [bx+si],al
00007D6F  0000              add [bx+si],al
00007D71  0000              add [bx+si],al
00007D73  0000              add [bx+si],al
00007D75  0000              add [bx+si],al
00007D77  0000              add [bx+si],al
00007D79  0000              add [bx+si],al
00007D7B  0000              add [bx+si],al
00007D7D  0000              add [bx+si],al
00007D7F  0410              add al,0x10
00007D81  3F                aas
00007D82  E80000            call word 0x7d85
00007D85  FD                std
00007D86  FF00              inc word [bx+si]
00007D88  00D7              add bh,dl
00007D8A  E500              in ax,0x0
00007D8C  00AFFF00          add [bx+0xff],ch
00007D90  003F              add [bx],bh
00007D92  680000            push word 0x0
00007D95  0FFC00            paddb mm0,[bx+si]
00007D98  0001              add [bx+di],al
00007D9A  90                nop
00007D9B  0000              add [bx+si],al
00007D9D  03F0              add si,ax
00007D9F  0000              add [bx+si],al
00007DA1  0000              add [bx+si],al
00007DA3  0000              add [bx+si],al
00007DA5  0000              add [bx+si],al
00007DA7  0000              add [bx+si],al
00007DA9  0000              add [bx+si],al
00007DAB  0000              add [bx+si],al
00007DAD  0000              add [bx+si],al
00007DAF  0000              add [bx+si],al
00007DB1  0000              add [bx+si],al
00007DB3  0000              add [bx+si],al
00007DB5  0000              add [bx+si],al
00007DB7  0000              add [bx+si],al
00007DB9  0000              add [bx+si],al
00007DBB  0000              add [bx+si],al
00007DBD  0000              add [bx+si],al
00007DBF  0000              add [bx+si],al
00007DC1  0410              add al,0x10
00007DC3  0030              add [bx+si],dh
00007DC5  0000              add [bx+si],al
00007DC7  003C              add [si],bh
00007DC9  0000              add [bx+si],al
00007DCB  00AF0000          add [bx+0x0],ch
00007DCF  028BC000          add cl,[bp+di+0xc0]
00007DD3  3E02F0            ds add dh,al
00007DD6  000F              add [bx],cl
00007DD8  8ABC0003          mov bh,[si+0x300]
00007DDC  EAAF0000FA        jmp word 0xfa00:0xaf
00007DE1  8BC0              mov ax,ax
00007DE3  003E02F0          add [0xf002],bh
00007DE7  000F              add [bx],cl
00007DE9  8A00              mov al,[bx+si]
00007DEB  0003              add [bp+di],al
00007DED  E80000            call word 0x7df0
00007DF0  00F0              add al,dh
00007DF2  0000              add [bx+si],al
00007DF4  0030              add [bx+si],dh
00007DF6  0000              add [bx+si],al
00007DF8  0000              add [bx+si],al
00007DFA  0000              add [bx+si],al
00007DFC  0000              add [bx+si],al
00007DFE  0000              add [bx+si],al
00007E00  0000              add [bx+si],al
00007E02  0004              add [si],al
00007E04  1000              adc [bx+si],al
00007E06  0030              add [bx+si],dh
00007E08  0000              add [bx+si],al
00007E0A  00F0              add al,dh
00007E0C  0000              add [bx+si],al
00007E0E  03E8              add bp,ax
00007E10  0000              add [bx+si],al
00007E12  0F8A0000          jpe word 0x7e16
00007E16  3E02F0            ds add dh,al
00007E19  00FA              add dl,bh
00007E1B  8BC0              mov ax,ax
00007E1D  03EA              add bp,dx
00007E1F  AF                scasw
00007E20  000F              add [bx],cl
00007E22  8ABC003E          mov bh,[si+0x3e00]
00007E26  02F0              add dh,al
00007E28  0002              add [bp+si],al
00007E2A  8BC0              mov ax,ax
00007E2C  0000              add [bx+si],al
00007E2E  AF                scasw
00007E2F  0000              add [bx+si],al
00007E31  003C              add [si],bh
00007E33  0000              add [bx+si],al
00007E35  0030              add [bx+si],dh
00007E37  0000              add [bx+si],al
00007E39  0000              add [bx+si],al
00007E3B  0000              add [bx+si],al
00007E3D  0000              add [bx+si],al
00007E3F  0000              add [bx+si],al
00007E41  0000              add [bx+si],al
00007E43  0000              add [bx+si],al
00007E45  0410              add al,0x10
00007E47  55                push bp
00007E48  55                push bp
00007E49  55                push bp
00007E4A  50                push ax
00007E4B  55                push bp
00007E4C  55                push bp
00007E4D  55                push bp
00007E4E  50                push ax
00007E4F  AA                stosb
00007E50  AA                stosb
00007E51  AA                stosb
00007E52  A080AA            mov al,[0xaa80]
00007E55  80A080AA80        and byte [bx+si-0x5580],0x80
00007E5A  A0AAAA            mov al,[0xaaaa]
00007E5D  AA                stosb
00007E5E  A05555            mov al,[0x5555]
00007E61  55                push bp
00007E62  50                push ax
00007E63  55                push bp
00007E64  55                push bp
00007E65  55                push bp
00007E66  50                push ax
00007E67  0000              add [bx+si],al
00007E69  0000              add [bx+si],al
00007E6B  0000              add [bx+si],al
00007E6D  0000              add [bx+si],al
00007E6F  0000              add [bx+si],al
00007E71  0000              add [bx+si],al
00007E73  0000              add [bx+si],al
00007E75  0000              add [bx+si],al
00007E77  0000              add [bx+si],al
00007E79  0000              add [bx+si],al
00007E7B  0000              add [bx+si],al
00007E7D  0000              add [bx+si],al
00007E7F  0000              add [bx+si],al
00007E81  0000              add [bx+si],al
00007E83  0000              add [bx+si],al
00007E85  0000              add [bx+si],al
00007E87  0410              add al,0x10
00007E89  55                push bp
00007E8A  55                push bp
00007E8B  55                push bp
00007E8C  50                push ax
00007E8D  55                push bp
00007E8E  55                push bp
00007E8F  55                push bp
00007E90  50                push ax
00007E91  AA                stosb
00007E92  AA                stosb
00007E93  AA                stosb
00007E94  A0AAAA            mov al,[0xaaaa]
00007E97  AA                stosb
00007E98  A0AAAA            mov al,[0xaaaa]
00007E9B  AA                stosb
00007E9C  A0AAAA            mov al,[0xaaaa]
00007E9F  AA                stosb
00007EA0  A05555            mov al,[0x5555]
00007EA3  55                push bp
00007EA4  50                push ax
00007EA5  55                push bp
00007EA6  55                push bp
00007EA7  55                push bp
00007EA8  50                push ax
00007EA9  0000              add [bx+si],al
00007EAB  0000              add [bx+si],al
00007EAD  0000              add [bx+si],al
00007EAF  0000              add [bx+si],al
00007EB1  0000              add [bx+si],al
00007EB3  0000              add [bx+si],al
00007EB5  0000              add [bx+si],al
00007EB7  0000              add [bx+si],al
00007EB9  0000              add [bx+si],al
00007EBB  0000              add [bx+si],al
00007EBD  0000              add [bx+si],al
00007EBF  0000              add [bx+si],al
00007EC1  0000              add [bx+si],al
00007EC3  0000              add [bx+si],al
00007EC5  0000              add [bx+si],al
00007EC7  0000              add [bx+si],al
00007EC9  0410              add al,0x10
00007ECB  55                push bp
00007ECC  55                push bp
00007ECD  55                push bp
00007ECE  40                inc ax
00007ECF  55                push bp
00007ED0  55                push bp
00007ED1  55                push bp
00007ED2  40                inc ax
00007ED3  AA                stosb
00007ED4  AA                stosb
00007ED5  8000AA            add byte [bx+si],0xaa
00007ED8  AA                stosb
00007ED9  8000AA            add byte [bx+si],0xaa
00007EDC  AA                stosb
00007EDD  8000AA            add byte [bx+si],0xaa
00007EE0  AA                stosb
00007EE1  800055            add byte [bx+si],0x55
00007EE4  55                push bp
00007EE5  55                push bp
00007EE6  40                inc ax
00007EE7  55                push bp
00007EE8  55                push bp
00007EE9  55                push bp
00007EEA  40                inc ax
00007EEB  0000              add [bx+si],al
00007EED  0000              add [bx+si],al
00007EEF  0000              add [bx+si],al
00007EF1  0000              add [bx+si],al
00007EF3  0000              add [bx+si],al
00007EF5  0000              add [bx+si],al
00007EF7  0000              add [bx+si],al
00007EF9  0000              add [bx+si],al
00007EFB  0000              add [bx+si],al
00007EFD  0000              add [bx+si],al
00007EFF  0000              add [bx+si],al
00007F01  0000              add [bx+si],al
00007F03  0000              add [bx+si],al
00007F05  0000              add [bx+si],al
00007F07  0000              add [bx+si],al
00007F09  0000              add [bx+si],al
00007F0B  0410              add al,0x10
00007F0D  55                push bp
00007F0E  55                push bp
00007F0F  55                push bp
00007F10  50                push ax
00007F11  55                push bp
00007F12  55                push bp
00007F13  55                push bp
00007F14  50                push ax
00007F15  00AAAAA0          add [bp+si-0x5f56],ch
00007F19  00AAAAA0          add [bp+si-0x5f56],ch
00007F1D  00AAAAA0          add [bp+si-0x5f56],ch
00007F21  00AAAAA0          add [bp+si-0x5f56],ch
00007F25  55                push bp
00007F26  55                push bp
00007F27  55                push bp
00007F28  50                push ax
00007F29  55                push bp
00007F2A  55                push bp
00007F2B  55                push bp
00007F2C  50                push ax
00007F2D  0000              add [bx+si],al
00007F2F  0000              add [bx+si],al
00007F31  0000              add [bx+si],al
00007F33  0000              add [bx+si],al
00007F35  0000              add [bx+si],al
00007F37  0000              add [bx+si],al
00007F39  0000              add [bx+si],al
00007F3B  0000              add [bx+si],al
00007F3D  0000              add [bx+si],al
00007F3F  0000              add [bx+si],al
00007F41  0000              add [bx+si],al
00007F43  0000              add [bx+si],al
00007F45  0000              add [bx+si],al
00007F47  0000              add [bx+si],al
00007F49  0000              add [bx+si],al
00007F4B  0000              add [bx+si],al
00007F4D  0410              add al,0x10
00007F4F  AA                stosb
00007F50  AA                stosb
00007F51  AA                stosb
00007F52  A0AAAA            mov al,[0xaaaa]
00007F55  AA                stosb
00007F56  A05555            mov al,[0x5555]
00007F59  55                push bp
00007F5A  50                push ax
00007F5B  50                push ax
00007F5C  155010            adc ax,0x1050
00007F5F  50                push ax
00007F60  155010            adc ax,0x1050
00007F63  55                push bp
00007F64  55                push bp
00007F65  55                push bp
00007F66  50                push ax
00007F67  AA                stosb
00007F68  AA                stosb
00007F69  AA                stosb
00007F6A  A0AAAA            mov al,[0xaaaa]
00007F6D  AA                stosb
00007F6E  A00000            mov al,[0x0]
00007F71  0000              add [bx+si],al
00007F73  0000              add [bx+si],al
00007F75  0000              add [bx+si],al
00007F77  0000              add [bx+si],al
00007F79  0000              add [bx+si],al
00007F7B  0000              add [bx+si],al
00007F7D  0000              add [bx+si],al
00007F7F  0000              add [bx+si],al
00007F81  0000              add [bx+si],al
00007F83  0000              add [bx+si],al
00007F85  0000              add [bx+si],al
00007F87  0000              add [bx+si],al
00007F89  0000              add [bx+si],al
00007F8B  0000              add [bx+si],al
00007F8D  0000              add [bx+si],al
00007F8F  0410              add al,0x10
00007F91  AA                stosb
00007F92  AA                stosb
00007F93  AA                stosb
00007F94  A0AAAA            mov al,[0xaaaa]
00007F97  AA                stosb
00007F98  A05555            mov al,[0x5555]
00007F9B  55                push bp
00007F9C  50                push ax
00007F9D  55                push bp
00007F9E  55                push bp
00007F9F  55                push bp
00007FA0  50                push ax
00007FA1  55                push bp
00007FA2  55                push bp
00007FA3  55                push bp
00007FA4  50                push ax
00007FA5  55                push bp
00007FA6  55                push bp
00007FA7  55                push bp
00007FA8  50                push ax
00007FA9  AA                stosb
00007FAA  AA                stosb
00007FAB  AA                stosb
00007FAC  A0AAAA            mov al,[0xaaaa]
00007FAF  AA                stosb
00007FB0  A00000            mov al,[0x0]
00007FB3  0000              add [bx+si],al
00007FB5  0000              add [bx+si],al
00007FB7  0000              add [bx+si],al
00007FB9  0000              add [bx+si],al
00007FBB  0000              add [bx+si],al
00007FBD  0000              add [bx+si],al
00007FBF  0000              add [bx+si],al
00007FC1  0000              add [bx+si],al
00007FC3  0000              add [bx+si],al
00007FC5  0000              add [bx+si],al
00007FC7  0000              add [bx+si],al
00007FC9  0000              add [bx+si],al
00007FCB  0000              add [bx+si],al
00007FCD  0000              add [bx+si],al
00007FCF  0000              add [bx+si],al
00007FD1  0410              add al,0x10
00007FD3  AA                stosb
00007FD4  AA                stosb
00007FD5  AA                stosb
00007FD6  80AAAAAA80        sub byte [bp+si-0x5556],0x80
00007FDB  55                push bp
00007FDC  55                push bp
00007FDD  50                push ax
00007FDE  005555            add [di+0x55],dl
00007FE1  50                push ax
00007FE2  005555            add [di+0x55],dl
00007FE5  50                push ax
00007FE6  005555            add [di+0x55],dl
00007FE9  50                push ax
00007FEA  00AAAAAA          add [bp+si-0x5556],ch
00007FEE  80AAAAAA80        sub byte [bp+si-0x5556],0x80
00007FF3  0000              add [bx+si],al
00007FF5  0000              add [bx+si],al
00007FF7  0000              add [bx+si],al
00007FF9  0000              add [bx+si],al
00007FFB  0000              add [bx+si],al
00007FFD  0000              add [bx+si],al
00007FFF  0000              add [bx+si],al
00008001  0000              add [bx+si],al
00008003  0000              add [bx+si],al
00008005  0000              add [bx+si],al
00008007  0000              add [bx+si],al
00008009  0000              add [bx+si],al
0000800B  0000              add [bx+si],al
0000800D  0000              add [bx+si],al
0000800F  0000              add [bx+si],al
00008011  0000              add [bx+si],al
00008013  0410              add al,0x10
00008015  AA                stosb
00008016  AA                stosb
00008017  AA                stosb
00008018  A0AAAA            mov al,[0xaaaa]
0000801B  AA                stosb
0000801C  A00155            mov al,[0x5501]
0000801F  55                push bp
00008020  50                push ax
00008021  015555            add [di+0x55],dx
00008024  50                push ax
00008025  015555            add [di+0x55],dx
00008028  50                push ax
00008029  015555            add [di+0x55],dx
0000802C  50                push ax
0000802D  AA                stosb
0000802E  AA                stosb
0000802F  AA                stosb
00008030  A0AAAA            mov al,[0xaaaa]
00008033  AA                stosb
00008034  A00000            mov al,[0x0]
00008037  0000              add [bx+si],al
00008039  0000              add [bx+si],al
0000803B  0000              add [bx+si],al
0000803D  0000              add [bx+si],al
0000803F  0000              add [bx+si],al
00008041  0000              add [bx+si],al
00008043  0000              add [bx+si],al
00008045  0000              add [bx+si],al
00008047  0000              add [bx+si],al
00008049  0000              add [bx+si],al
0000804B  0000              add [bx+si],al
0000804D  0000              add [bx+si],al
0000804F  0000              add [bx+si],al
00008051  0000              add [bx+si],al
00008053  0000              add [bx+si],al
00008055  0410              add al,0x10
00008057  00880880          add [bx+si-0x7ff8],cl
0000805B  3F                aas
0000805C  55                push bp
0000805D  59                pop cx
0000805E  90                nop
0000805F  3F                aas
00008060  FF5990            call word far [bx+di-0x70]
00008063  3F                aas
00008064  AF                scasw
00008065  59                pop cx
00008066  90                nop
00008067  3F                aas
00008068  FF5990            call word far [bx+di-0x70]
0000806B  3F                aas
0000806C  57                push di
0000806D  F9                stc
0000806E  90                nop
0000806F  3F                aas
00008070  55                push bp
00008071  7FF0              jg 0x8063
00008073  3F                aas
00008074  55                push bp
00008075  5A                pop dx
00008076  90                nop
00008077  3F                aas
00008078  55                push bp
00008079  7FF0              jg 0x806b
0000807B  3F                aas
0000807C  55                push bp
0000807D  55                push bp
0000807E  50                push ax
0000807F  3F                aas
00008080  FF                db 0xff
00008081  FFF0              push ax
00008083  0000              add [bx+si],al
00008085  3C00              cmp al,0x0
00008087  0000              add [bx+si],al
00008089  3C00              cmp al,0x0
0000808B  0003              add [bp+di],al
0000808D  FFC0              inc ax
0000808F  0000              add [bx+si],al
00008091  FF00              inc word [bx+si]
00008093  0000              add [bx+si],al
00008095  3C00              cmp al,0x0
00008097  0410              add al,0x10
00008099  00880880          add [bx+si-0x7ff8],cl
0000809D  3F                aas
0000809E  99                cwd
0000809F  59                pop cx
000080A0  90                nop
000080A1  3F                aas
000080A2  FF5990            call word far [bx+di-0x70]
000080A5  3F                aas
000080A6  FF5990            call word far [bx+di-0x70]
000080A9  3F                aas
000080AA  57                push di
000080AB  F9                stc
000080AC  90                nop
000080AD  3F                aas
000080AE  55                push bp
000080AF  59                pop cx
000080B0  90                nop
000080B1  3F                aas
000080B2  55                push bp
000080B3  7FF0              jg 0x80a5
000080B5  3F                aas
000080B6  FF                db 0xff
000080B7  FFF0              push ax
000080B9  0000              add [bx+si],al
000080BB  3C00              cmp al,0x0
000080BD  0003              add [bp+di],al
000080BF  FFC0              inc ax
000080C1  0000              add [bx+si],al
000080C3  FF00              inc word [bx+si]
000080C5  0000              add [bx+si],al
000080C7  3C00              cmp al,0x0
000080C9  0000              add [bx+si],al
000080CB  0000              add [bx+si],al
000080CD  0000              add [bx+si],al
000080CF  0000              add [bx+si],al
000080D1  0000              add [bx+si],al
000080D3  0000              add [bx+si],al
000080D5  0000              add [bx+si],al
000080D7  0000              add [bx+si],al
000080D9  07                pop es
000080DA  1000              adc [bx+si],al
000080DC  155555            adc ax,0x5555
000080DF  55                push bp
000080E0  50                push ax
000080E1  0000              add [bx+si],al
000080E3  155555            adc ax,0x5555
000080E6  55                push bp
000080E7  50                push ax
000080E8  0000              add [bx+si],al
000080EA  000A              add [bp+si],cl
000080EC  AA                stosb
000080ED  800000            add byte [bx+si],0x0
000080F0  0000              add [bx+si],al
000080F2  0AAA8000          or ch,[bp+si+0x80]
000080F6  0000              add [bx+si],al
000080F8  03FF              add di,di
000080FA  FF                db 0xff
000080FB  FF00              inc word [bx+si]
000080FD  0000              add [bx+si],al
000080FF  0F03FF            lsl di,di
00008102  FFC0              inc ax
00008104  0000              add [bx+si],al
00008106  3C3F              cmp al,0x3f
00008108  FF                db 0xff
00008109  FFF3              push bx
0000810B  F0003C            lock add [si],bh
0000810E  3F                aas
0000810F  FF                db 0xff
00008110  FFF1              push cx
00008112  50                push ax
00008113  003C              add [si],bh
00008115  3F                aas
00008116  FF                db 0xff
00008117  FF                db 0xff
00008118  FF                db 0xff
00008119  FC                cld
0000811A  003C              add [si],bh
0000811C  3F                aas
0000811D  FF                db 0xff
0000811E  FFF0              push ax
00008120  A800              test al,0x0
00008122  3F                aas
00008123  FF                db 0xff
00008124  FF                db 0xff
00008125  FFF0              push ax
00008127  FC                cld
00008128  003F              add [bx],bh
0000812A  C0000F            rol byte [bx+si],byte 0xf
0000812D  F00000            lock add [bx+si],al
00008130  3F                aas
00008131  0000              add [bx+si],al
00008133  03F0              add si,ax
00008135  0000              add [bx+si],al
00008137  0F0000            sldt [bx+si]
0000813A  03C0              add ax,ax
0000813C  0000              add [bx+si],al
0000813E  0FC000            xadd [bx+si],al
00008141  0FC000            xadd [bx+si],al
00008144  0000              add [bx+si],al
00008146  FF                db 0xff
00008147  FF                db 0xff
00008148  FC                cld
00008149  0000              add [bx+si],al
0000814B  0410              add al,0x10
0000814D  0000              add [bx+si],al
0000814F  0000              add [bx+si],al
00008151  0000              add [bx+si],al
00008153  0000              add [bx+si],al
00008155  0000              add [bx+si],al
00008157  0000              add [bx+si],al
00008159  0000              add [bx+si],al
0000815B  0000              add [bx+si],al
0000815D  0000              add [bx+si],al
0000815F  0000              add [bx+si],al
00008161  0000              add [bx+si],al
00008163  0000              add [bx+si],al
00008165  015555            add [di+0x55],dx
00008168  0015              add [di],dl
0000816A  0001              add [bx+di],al
0000816C  50                push ax
0000816D  143F              adc al,0x3f
0000816F  F050              lock push ax
00008171  14AF              adc al,0xaf
00008173  FC                cld
00008174  50                push ax
00008175  14AA              adc al,0xaa
00008177  FC                cld
00008178  50                push ax
00008179  14FE              adc al,0xfe
0000817B  A850              test al,0x50
0000817D  14FF              adc al,0xff
0000817F  E85014            call word 0x95d2
00008182  3F                aas
00008183  F050              lock push ax
00008185  150001            adc ax,0x100
00008188  50                push ax
00008189  015555            add [di+0x55],dx
0000818C  0004              add [si],al
0000818E  1000              adc [bx+si],al
00008190  0000              add [bx+si],al
00008192  0000              add [bx+si],al
00008194  0000              add [bx+si],al
00008196  0000              add [bx+si],al
00008198  0000              add [bx+si],al
0000819A  0000              add [bx+si],al
0000819C  0000              add [bx+si],al
0000819E  0000              add [bx+si],al
000081A0  0000              add [bx+si],al
000081A2  0000              add [bx+si],al
000081A4  0000              add [bx+si],al
000081A6  0001              add [bx+di],al
000081A8  55                push bp
000081A9  55                push bp
000081AA  0015              add [di],dl
000081AC  0001              add [bx+di],al
000081AE  50                push ax
000081AF  143E              adc al,0x3e
000081B1  F050              lock push ax
000081B3  14FE              adc al,0xfe
000081B5  FC                cld
000081B6  50                push ax
000081B7  14FE              adc al,0xfe
000081B9  FC                cld
000081BA  50                push ax
000081BB  14FE              adc al,0xfe
000081BD  FC                cld
000081BE  50                push ax
000081BF  14FE              adc al,0xfe
000081C1  FC                cld
000081C2  50                push ax
000081C3  143E              adc al,0x3e
000081C5  F050              lock push ax
000081C7  150001            adc ax,0x100
000081CA  50                push ax
000081CB  015555            add [di+0x55],dx
000081CE  0004              add [si],al
000081D0  1000              adc [bx+si],al
000081D2  0000              add [bx+si],al
000081D4  0000              add [bx+si],al
000081D6  0000              add [bx+si],al
000081D8  0000              add [bx+si],al
000081DA  0000              add [bx+si],al
000081DC  0000              add [bx+si],al
000081DE  0000              add [bx+si],al
000081E0  0000              add [bx+si],al
000081E2  0000              add [bx+si],al
000081E4  0000              add [bx+si],al
000081E6  0000              add [bx+si],al
000081E8  0001              add [bx+di],al
000081EA  55                push bp
000081EB  55                push bp
000081EC  0015              add [di],dl
000081EE  0001              add [bx+di],al
000081F0  50                push ax
000081F1  143F              adc al,0x3f
000081F3  F050              lock push ax
000081F5  14FF              adc al,0xff
000081F7  E85014            call word 0x964a
000081FA  FE                db 0xfe
000081FB  A850              test al,0x50
000081FD  14AA              adc al,0xaa
000081FF  FC                cld
00008200  50                push ax
00008201  14AF              adc al,0xaf
00008203  FC                cld
00008204  50                push ax
00008205  143F              adc al,0x3f
00008207  F050              lock push ax
00008209  150001            adc ax,0x100
0000820C  50                push ax
0000820D  015555            add [di+0x55],dx
00008210  0004              add [si],al
00008212  1000              adc [bx+si],al
00008214  0000              add [bx+si],al
00008216  0000              add [bx+si],al
00008218  0000              add [bx+si],al
0000821A  0000              add [bx+si],al
0000821C  0000              add [bx+si],al
0000821E  0000              add [bx+si],al
00008220  0000              add [bx+si],al
00008222  0000              add [bx+si],al
00008224  0000              add [bx+si],al
00008226  0000              add [bx+si],al
00008228  0000              add [bx+si],al
0000822A  0001              add [bx+di],al
0000822C  55                push bp
0000822D  55                push bp
0000822E  0015              add [di],dl
00008230  0001              add [bx+di],al
00008232  50                push ax
00008233  143F              adc al,0x3f
00008235  F050              lock push ax
00008237  14FF              adc al,0xff
00008239  FC                cld
0000823A  50                push ax
0000823B  14AA              adc al,0xaa
0000823D  A850              test al,0x50
0000823F  14AA              adc al,0xaa
00008241  A850              test al,0x50
00008243  14FF              adc al,0xff
00008245  FC                cld
00008246  50                push ax
00008247  143F              adc al,0x3f
00008249  F050              lock push ax
0000824B  150001            adc ax,0x100
0000824E  50                push ax
0000824F  015555            add [di+0x55],dx
00008252  0004              add [si],al
00008254  123E800A          adc bh,[0xa80]
00008258  F03E800AF0        lock or byte [ds:bp+si],0xf0
0000825D  3E800AF0          or byte [ds:bp+si],0xf0
00008261  3E800AF0          or byte [ds:bp+si],0xf0
00008265  3E800AF0          or byte [ds:bp+si],0xf0
00008269  3E800AF0          or byte [ds:bp+si],0xf0
0000826D  3E800AF0          or byte [ds:bp+si],0xf0
00008271  3E800AF0          or byte [ds:bp+si],0xf0
00008275  3E800AF0          or byte [ds:bp+si],0xf0
00008279  3E800AF0          or byte [ds:bp+si],0xf0
0000827D  3E800AF0          or byte [ds:bp+si],0xf0
00008281  3E800AF0          or byte [ds:bp+si],0xf0
00008285  3E800AF0          or byte [ds:bp+si],0xf0
00008289  3E800AF0          or byte [ds:bp+si],0xf0
0000828D  3E800AF0          or byte [ds:bp+si],0xf0
00008291  3E800AF0          or byte [ds:bp+si],0xf0
00008295  0FFF              ud0
00008297  FFC0              inc ax
00008299  00FF              add bh,bh
0000829B  FC                cld
0000829C  0004              add [si],al
0000829E  08FF              or bh,bh
000082A0  FF                db 0xff
000082A1  FFF0              push ax
000082A3  FF                db 0xff
000082A4  FF                db 0xff
000082A5  FFF0              push ax
000082A7  AA                stosb
000082A8  AA                stosb
000082A9  AA                stosb
000082AA  A0AAAA            mov al,[0xaaaa]
000082AD  AA                stosb
000082AE  A0AAAA            mov al,[0xaaaa]
000082B1  AA                stosb
000082B2  A0AAAA            mov al,[0xaaaa]
000082B5  AA                stosb
000082B6  A0FFFF            mov al,[0xffff]
000082B9  FFF0              push ax
000082BB  FF                db 0xff
000082BC  FF                db 0xff
000082BD  FFF0              push ax
000082BF  0410              add al,0x10
000082C1  0002              add [bp+si],al
000082C3  A00002            mov al,[0x200]
000082C6  06                push es
000082C7  A00003            mov al,[0x300]
000082CA  F7F0              div ax
000082CC  003F              add [bx],bh
000082CE  F6AA002A          imul byte [bp+si+0x2a00]
000082D2  07                pop es
000082D3  FA                cli
000082D4  000F              add [bx],cl
000082D6  3F                aas
000082D7  6A00              push byte +0x0
000082D9  3C02              cmp al,0x2
000082DB  5A                pop dx
000082DC  0000              add [bx+si],al
000082DE  2A6A00            sub ch,[bp+si+0x0]
000082E1  0F                db 0x0f
000082E2  003C              add [si],bh
000082E4  0000              add [bx+si],al
000082E6  0029              add [bx+di],ch
000082E8  40                inc ax
000082E9  00F0              add al,dh
000082EB  294000            sub [bx+si+0x0],ax
000082EE  FA                cli
000082EF  89A000F0          mov [bx+si-0x1000],sp
000082F3  02A00020          add ah,[bx+si+0x2000]
000082F7  02A0000F          add ah,[bx+si+0xf00]
000082FB  00F0              add al,dh
000082FD  0002              add [bp+si],al
000082FF  00F0              add al,dh
00008301  0410              add al,0x10
00008303  0003              add [bp+di],al
00008305  F00002            lock add [bp+si],al
00008308  02A00003          add ah,[bx+si+0x300]
0000830C  FFA0003F          jmp word [bx+si+0x3f00]
00008310  6BF200            imul si,dx,byte +0x0
00008313  2A6F7F            sub ch,[bx+0x7f]
00008316  000F              add [bx],cl
00008318  666A00            o32 push byte +0x0
0000831B  3E5A              ds pop dx
0000831D  6A00              push byte +0x0
0000831F  006A6A            add [bp+si+0x6a],ch
00008322  000F              add [bx],cl
00008324  2A7C00            sub bh,[si+0x0]
00008327  002A              add [bp+si],ch
00008329  54                push sp
0000832A  0000              add [bx+si],al
0000832C  FF6000            jmp word [bx+si+0x0]
0000832F  0000              add [bx+si],al
00008331  40                inc ax
00008332  0000              add [bx+si],al
00008334  2AA00000          sub ah,[bx+si+0x0]
00008338  252000            and ax,0x20
0000833B  003C              add [si],bh
0000833D  0000              add [bx+si],al
0000833F  0000              add [bx+si],al
00008341  0000              add [bx+si],al
00008343  0410              add al,0x10
00008345  0002              add [bp+si],al
00008347  A00002            mov al,[0x200]
0000834A  02A00003          add ah,[bx+si+0x300]
0000834E  FFA0003F          jmp word [bx+si+0x3f00]
00008352  AA                stosb
00008353  A20026            mov [0x2600],al
00008356  56                push si
00008357  BF000F            mov di,0xf00
0000835A  7FFA              jg 0x8356
0000835C  003C              add [si],bh
0000835E  0A5600            or dl,[bp+0x0]
00008361  002A              add [bp+si],ch
00008363  66000F            o32 add [bx],cl
00008366  683C00            push word 0x3c
00008369  0F6420            pcmpgtb mm4,[bx+si]
0000836C  0004              add [si],al
0000836E  7C20              jl 0x8390
00008370  003C              add [si],bh
00008372  005000            add [bx+si+0x0],dl
00008375  2002              and [bp+si],al
00008377  800020            add byte [bx+si],0x20
0000837A  03C0              add ax,ax
0000837C  000F              add [bx],cl
0000837E  03C0              add ax,ax
00008380  0000              add [bx+si],al
00008382  0200              add al,[bx+si]
00008384  0004              add [si],al
00008386  10D0              adc al,dl
00008388  F3C3              rep ret
0000838A  C0D555            rcl ch,byte 0x55
0000838D  53                push bx
0000838E  C0FF55            sar bh,byte 0x55
00008391  53                push bx
00008392  C03F55            sar byte [bx],byte 0x55
00008395  7F00              jg 0x8397
00008397  00AA8000          add [bp+si+0x80],ch
0000839B  00AA8000          add [bp+si+0x80],ch
0000839F  0FFF              ud0
000083A1  FC                cld
000083A2  0003              add [bp+di],al
000083A4  FFF0              push ax
000083A6  0003              add [bp+di],al
000083A8  F3F00000          xrelease lock add [bx+si],al
000083AC  F3C00000          rep rol byte [bx+si],byte 0x0
000083B0  0000              add [bx+si],al
000083B2  0000              add [bx+si],al
000083B4  0000              add [bx+si],al
000083B6  0000              add [bx+si],al
000083B8  0000              add [bx+si],al
000083BA  0000              add [bx+si],al
000083BC  0000              add [bx+si],al
000083BE  0000              add [bx+si],al
000083C0  0000              add [bx+si],al
000083C2  0000              add [bx+si],al
000083C4  0000              add [bx+si],al
000083C6  0004              add [si],al
000083C8  1A00              sbb al,[bx+si]
000083CA  AA                stosb
000083CB  800000            add byte [bx+si],0x0
000083CE  AA                stosb
000083CF  80000F            add byte [bx+si],0xf
000083D2  FF                db 0xff
000083D3  FC                cld
000083D4  0003              add [bp+di],al
000083D6  FFF0              push ax
000083D8  0003              add [bp+di],al
000083DA  F3F00000          xrelease lock add [bx+si],al
000083DE  F3C00000          rep rol byte [bx+si],byte 0x0
000083E2  0000              add [bx+si],al
000083E4  0000              add [bx+si],al
000083E6  0000              add [bx+si],al
000083E8  0000              add [bx+si],al
000083EA  0000              add [bx+si],al
000083EC  0000              add [bx+si],al
000083EE  0000              add [bx+si],al
000083F0  0000              add [bx+si],al
000083F2  0000              add [bx+si],al
000083F4  0000              add [bx+si],al
000083F6  0000              add [bx+si],al
000083F8  0000              add [bx+si],al
000083FA  0000              add [bx+si],al
000083FC  0000              add [bx+si],al
000083FE  0000              add [bx+si],al
00008400  0000              add [bx+si],al
00008402  0000              add [bx+si],al
00008404  0000              add [bx+si],al
00008406  0000              add [bx+si],al
00008408  0000              add [bx+si],al
0000840A  0000              add [bx+si],al
0000840C  0000              add [bx+si],al
0000840E  0000              add [bx+si],al
00008410  0000              add [bx+si],al
00008412  0000              add [bx+si],al
00008414  0000              add [bx+si],al
00008416  0000              add [bx+si],al
00008418  0000              add [bx+si],al
0000841A  0000              add [bx+si],al
0000841C  0000              add [bx+si],al
0000841E  0000              add [bx+si],al
00008420  0000              add [bx+si],al
00008422  0000              add [bx+si],al
00008424  0000              add [bx+si],al
00008426  0000              add [bx+si],al
00008428  0000              add [bx+si],al
0000842A  0000              add [bx+si],al
0000842C  0000              add [bx+si],al
0000842E  0000              add [bx+si],al
00008430  0004              add [si],al
00008432  10FF              adc bh,bh
00008434  FF                db 0xff
00008435  FFC0              inc ax
00008437  0AAAAA80          or ch,[bp+si-0x7f56]
0000843B  0AFE              or bh,dh
0000843D  FE800AFE          inc byte [bx+si-0x1f6]
00008441  FE800AAA          inc byte [bx+si-0x55f6]
00008445  AA                stosb
00008446  800AAA            or byte [bp+si],0xaa
00008449  AA                stosb
0000844A  800AFF            or byte [bp+si],0xff
0000844D  FE800AAA          inc byte [bx+si-0x55f6]
00008451  AA                stosb
00008452  80AFFFFFC0        sub byte [bx-0x1],0xc0
00008457  AF                scasw
00008458  03C3              add ax,bx
0000845A  C0AF0003C0        shr byte [bx+0x300],byte 0xc0
0000845F  AF                scasw
00008460  FF                db 0xff
00008461  FFC0              inc ax
00008463  AA                stosb
00008464  AA                stosb
00008465  AA                stosb
00008466  800AAA            or byte [bp+si],0xaa
00008469  AA                stosb
0000846A  800150            add byte [bx+di],0x50
0000846D  150001            adc ax,0x100
00008470  50                push ax
00008471  150004            adc ax,0x400
00008474  1002              adc [bp+si],al
00008476  AA                stosb
00008477  A00002            mov al,[0x200]
0000847A  AA                stosb
0000847B  A00002            mov al,[0x200]
0000847E  AA                stosb
0000847F  A00001            mov al,[0x100]
00008482  55                push bp
00008483  50                push ax
00008484  0002              add [bp+si],al
00008486  AA                stosb
00008487  A00002            mov al,[0x200]
0000848A  AA                stosb
0000848B  A00002            mov al,[0x200]
0000848E  AA                stosb
0000848F  A00002            mov al,[0x200]
00008492  AA                stosb
00008493  A00000            mov al,[0x0]
00008496  0400              add al,0x0
00008498  0000              add [bx+si],al
0000849A  0200              add al,[bx+si]
0000849C  0000              add [bx+si],al
0000849E  004000            add [bx+si+0x0],al
000084A1  0000              add [bx+si],al
000084A3  0400              add al,0x0
000084A5  0000              add [bx+si],al
000084A7  40                inc ax
000084A8  0000              add [bx+si],al
000084AA  0000              add [bx+si],al
000084AC  0000              add [bx+si],al
000084AE  0000              add [bx+si],al
000084B0  0000              add [bx+si],al
000084B2  0000              add [bx+si],al
000084B4  0004              add [si],al
000084B6  1002              adc [bp+si],al
000084B8  AA                stosb
000084B9  A00002            mov al,[0x200]
000084BC  AA                stosb
000084BD  A00002            mov al,[0x200]
000084C0  AA                stosb
000084C1  A00001            mov al,[0x100]
000084C4  55                push bp
000084C5  50                push ax
000084C6  0002              add [bp+si],al
000084C8  AA                stosb
000084C9  A00002            mov al,[0x200]
000084CC  AA                stosb
000084CD  A00002            mov al,[0x200]
000084D0  AA                stosb
000084D1  A00002            mov al,[0x200]
000084D4  AA                stosb
000084D5  A00000            mov al,[0x0]
000084D8  0400              add al,0x0
000084DA  0000              add [bx+si],al
000084DC  0200              add al,[bx+si]
000084DE  0000              add [bx+si],al
000084E0  0020              add [bx+si],ah
000084E2  0000              add [bx+si],al
000084E4  004000            add [bx+si+0x0],al
000084E7  0000              add [bx+si],al
000084E9  0400              add al,0x0
000084EB  0000              add [bx+si],al
000084ED  0000              add [bx+si],al
000084EF  0000              add [bx+si],al
000084F1  0000              add [bx+si],al
000084F3  0000              add [bx+si],al
000084F5  0000              add [bx+si],al
000084F7  0410              add al,0x10
000084F9  AA                stosb
000084FA  AA                stosb
000084FB  AA                stosb
000084FC  A0AAAA            mov al,[0xaaaa]
000084FF  AA                stosb
00008500  A05555            mov al,[0x5555]
00008503  55                push bp
00008504  50                push ax
00008505  40                inc ax
00008506  55                push bp
00008507  40                inc ax
00008508  50                push ax
00008509  40                inc ax
0000850A  55                push bp
0000850B  40                inc ax
0000850C  50                push ax
0000850D  55                push bp
0000850E  55                push bp
0000850F  55                push bp
00008510  50                push ax
00008511  AA                stosb
00008512  AA                stosb
00008513  AA                stosb
00008514  A0AAAA            mov al,[0xaaaa]
00008517  AA                stosb
00008518  A00000            mov al,[0x0]
0000851B  0000              add [bx+si],al
0000851D  0000              add [bx+si],al
0000851F  0000              add [bx+si],al
00008521  0000              add [bx+si],al
00008523  0000              add [bx+si],al
00008525  0000              add [bx+si],al
00008527  0000              add [bx+si],al
00008529  0000              add [bx+si],al
0000852B  0000              add [bx+si],al
0000852D  0000              add [bx+si],al
0000852F  0000              add [bx+si],al
00008531  0000              add [bx+si],al
00008533  0000              add [bx+si],al
00008535  0000              add [bx+si],al
00008537  0000              add [bx+si],al
00008539  0410              add al,0x10
0000853B  AA                stosb
0000853C  AA                stosb
0000853D  AA                stosb
0000853E  A0AAAA            mov al,[0xaaaa]
00008541  AA                stosb
00008542  A05555            mov al,[0x5555]
00008545  55                push bp
00008546  50                push ax
00008547  55                push bp
00008548  55                push bp
00008549  55                push bp
0000854A  50                push ax
0000854B  55                push bp
0000854C  55                push bp
0000854D  55                push bp
0000854E  50                push ax
0000854F  55                push bp
00008550  55                push bp
00008551  55                push bp
00008552  50                push ax
00008553  AA                stosb
00008554  AA                stosb
00008555  AA                stosb
00008556  A0AAAA            mov al,[0xaaaa]
00008559  AA                stosb
0000855A  A00000            mov al,[0x0]
0000855D  0000              add [bx+si],al
0000855F  0000              add [bx+si],al
00008561  0000              add [bx+si],al
00008563  0000              add [bx+si],al
00008565  0000              add [bx+si],al
00008567  0000              add [bx+si],al
00008569  0000              add [bx+si],al
0000856B  0000              add [bx+si],al
0000856D  0000              add [bx+si],al
0000856F  0000              add [bx+si],al
00008571  0000              add [bx+si],al
00008573  0000              add [bx+si],al
00008575  0000              add [bx+si],al
00008577  0000              add [bx+si],al
00008579  0000              add [bx+si],al
0000857B  0410              add al,0x10
0000857D  AA                stosb
0000857E  AA                stosb
0000857F  AA                stosb
00008580  A0AAAA            mov al,[0xaaaa]
00008583  AA                stosb
00008584  A05555            mov al,[0x5555]
00008587  54                push sp
00008588  005555            add [di+0x55],dl
0000858B  54                push sp
0000858C  005555            add [di+0x55],dl
0000858F  54                push sp
00008590  005555            add [di+0x55],dl
00008593  54                push sp
00008594  00AAAAAA          add [bp+si-0x5556],ch
00008598  A0AAAA            mov al,[0xaaaa]
0000859B  AA                stosb
0000859C  A00000            mov al,[0x0]
0000859F  0000              add [bx+si],al
000085A1  0000              add [bx+si],al
000085A3  0000              add [bx+si],al
000085A5  0000              add [bx+si],al
000085A7  0000              add [bx+si],al
000085A9  0000              add [bx+si],al
000085AB  0000              add [bx+si],al
000085AD  0000              add [bx+si],al
000085AF  0000              add [bx+si],al
000085B1  0000              add [bx+si],al
000085B3  0000              add [bx+si],al
000085B5  0000              add [bx+si],al
000085B7  0000              add [bx+si],al
000085B9  0000              add [bx+si],al
000085BB  0000              add [bx+si],al
000085BD  0410              add al,0x10
000085BF  2AAAAAA0          sub ch,[bp+si-0x5f56]
000085C3  2AAAAAA0          sub ch,[bp+si-0x5f56]
000085C7  005555            add [di+0x55],dl
000085CA  50                push ax
000085CB  005555            add [di+0x55],dl
000085CE  50                push ax
000085CF  005555            add [di+0x55],dl
000085D2  50                push ax
000085D3  005555            add [di+0x55],dl
000085D6  50                push ax
000085D7  2AAAAAA0          sub ch,[bp+si-0x5f56]
000085DB  2AAAAAA0          sub ch,[bp+si-0x5f56]
000085DF  0000              add [bx+si],al
000085E1  0000              add [bx+si],al
000085E3  0000              add [bx+si],al
000085E5  0000              add [bx+si],al
000085E7  0000              add [bx+si],al
000085E9  0000              add [bx+si],al
000085EB  0000              add [bx+si],al
000085ED  0000              add [bx+si],al
000085EF  0000              add [bx+si],al
000085F1  0000              add [bx+si],al
000085F3  0000              add [bx+si],al
000085F5  0000              add [bx+si],al
000085F7  0000              add [bx+si],al
000085F9  0000              add [bx+si],al
000085FB  0000              add [bx+si],al
000085FD  0000              add [bx+si],al
000085FF  0410              add al,0x10
00008601  3F                aas
00008602  FF                db 0xff
00008603  FF00              inc word [bx+si]
00008605  D555              aad 0x55
00008607  57                push di
00008608  C0D555            rcl ch,byte 0x55
0000860B  57                push di
0000860C  C0D5F5            rcl ch,byte 0xf5
0000860F  57                push di
00008610  C0D5F5            rcl ch,byte 0xf5
00008613  57                push di
00008614  C0D555            rcl ch,byte 0x55
00008617  57                push di
00008618  C0D7FF            rcl bh,byte 0xff
0000861B  F7C0FC00          test ax,0xfc
0000861F  0FC010            xadd [bx+si],dl
00008622  0001              add [bx+di],al
00008624  000F              add [bx],cl
00008626  FF                db 0xff
00008627  FC                cld
00008628  0000              add [bx+si],al
0000862A  0000              add [bx+si],al
0000862C  0000              add [bx+si],al
0000862E  0000              add [bx+si],al
00008630  0000              add [bx+si],al
00008632  0000              add [bx+si],al
00008634  0000              add [bx+si],al
00008636  0000              add [bx+si],al
00008638  0000              add [bx+si],al
0000863A  0000              add [bx+si],al
0000863C  0000              add [bx+si],al
0000863E  0000              add [bx+si],al
00008640  0004              add [si],al
00008642  10FF              adc bh,bh
00008644  FF                db 0xff
00008645  FFC0              inc ax
00008647  AA                stosb
00008648  AA                stosb
00008649  AA                stosb
0000864A  800155            add byte [bx+di],0x55
0000864D  50                push ax
0000864E  0003              add [bp+di],al
00008650  F7F0              div ax
00008652  0000              add [bx+si],al
00008654  150000            adc ax,0x0
00008657  00F7              add bh,dh
00008659  C00003            rol byte [bx+si],byte 0x3
0000865C  F7F0              div ax
0000865E  000F              add [bx],cl
00008660  D5FC              aad 0xfc
00008662  000F              add [bx],cl
00008664  FF                db 0xff
00008665  FF00              inc word [bx+si]
00008667  0FFF              ud0
00008669  FFC0              inc ax
0000866B  03FF              add di,di
0000866D  D5C0              aad 0xc0
0000866F  00FF              add bh,bh
00008671  D5C0              aad 0xc0
00008673  000F              add [bx],cl
00008675  D500              aad 0x0
00008677  0000              add [bx+si],al
00008679  FC                cld
0000867A  0000              add [bx+si],al
0000867C  0000              add [bx+si],al
0000867E  0000              add [bx+si],al
00008680  0000              add [bx+si],al
00008682  0004              add [si],al
00008684  1000              adc [bx+si],al
00008686  800000            add byte [bx+si],0x0
00008689  0010              add [bx+si],dl
0000868B  0000              add [bx+si],al
0000868D  00F0              add al,dh
0000868F  0000              add [bx+si],al
00008691  00800000          add [bx+si+0x0],al
00008695  0010              add [bx+si],dl
00008697  0000              add [bx+si],al
00008699  00F0              add al,dh
0000869B  0000              add [bx+si],al
0000869D  00800000          add [bx+si+0x0],al
000086A1  00FC              add ah,bh
000086A3  0000              add [bx+si],al
000086A5  015500            add [di+0x0],dx
000086A8  0001              add [bx+di],al
000086AA  55                push bp
000086AB  0000              add [bx+si],al
000086AD  03F5              add si,bp
000086AF  0000              add [bx+si],al
000086B1  015500            add [di+0x0],dx
000086B4  0003              add [bp+di],al
000086B6  F7EA              imul dx
000086B8  800157            add byte [bx+di],0x57
000086BB  E88001            call word 0x883e
000086BE  57                push di
000086BF  E88003            call word 0x8a42
000086C2  FF00              inc word [bx+si]
000086C4  0004              add [si],al
000086C6  1000              adc [bx+si],al
000086C8  10800000          adc [bx+si+0x0],al
000086CC  0FC000            xadd [bx+si],al
000086CF  003F              add [bx],bh
000086D1  F00003            lock add [bp+di],al
000086D4  FFF0              push ax
000086D6  000F              add [bx],cl
000086D8  FF                db 0xff
000086D9  FC                cld
000086DA  0000              add [bx+si],al
000086DC  FF                db 0xff
000086DD  FC                cld
000086DE  0000              add [bx+si],al
000086E0  0FF100            psllw mm0,[bx+si]
000086E3  0001              add [bx+di],al
000086E5  0800              or [bx+si],al
000086E7  0008              add [bx+si],cl
000086E9  0800              or [bx+si],al
000086EB  0010              add [bx+si],dl
000086ED  1000              adc [bx+si],al
000086EF  0000              add [bx+si],al
000086F1  0000              add [bx+si],al
000086F3  0000              add [bx+si],al
000086F5  0000              add [bx+si],al
000086F7  0000              add [bx+si],al
000086F9  0000              add [bx+si],al
000086FB  0000              add [bx+si],al
000086FD  0000              add [bx+si],al
000086FF  0000              add [bx+si],al
00008701  0000              add [bx+si],al
00008703  0000              add [bx+si],al
00008705  0000              add [bx+si],al
00008707  0410              add al,0x10
00008709  0008              add [bx+si],cl
0000870B  0000              add [bx+si],al
0000870D  0FFF              ud0
0000870F  FC                cld
00008710  0003              add [bp+di],al
00008712  FFF0              push ax
00008714  0003              add [bp+di],al
00008716  FFF0              push ax
00008718  0000              add [bx+si],al
0000871A  FFC0              inc ax
0000871C  0000              add [bx+si],al
0000871E  FFC0              inc ax
00008720  0000              add [bx+si],al
00008722  3F                aas
00008723  0000              add [bx+si],al
00008725  00808000          add [bx+si+0x80],al
00008729  00808000          add [bx+si+0x80],al
0000872D  00808000          add [bx+si+0x80],al
00008731  0000              add [bx+si],al
00008733  0000              add [bx+si],al
00008735  0000              add [bx+si],al
00008737  0000              add [bx+si],al
00008739  0000              add [bx+si],al
0000873B  0000              add [bx+si],al
0000873D  0000              add [bx+si],al
0000873F  0000              add [bx+si],al
00008741  0000              add [bx+si],al
00008743  0000              add [bx+si],al
00008745  0000              add [bx+si],al
00008747  0000              add [bx+si],al
00008749  0410              add al,0x10
0000874B  0010              add [bx+si],dl
0000874D  800000            add byte [bx+si],0x0
00008750  3F                aas
00008751  0000              add [bx+si],al
00008753  00FF              add bh,bh
00008755  C00000            rol byte [bx+si],byte 0x0
00008758  FF                db 0xff
00008759  FC                cld
0000875A  0003              add [bp+di],al
0000875C  FF                db 0xff
0000875D  FF00              inc word [bx+si]
0000875F  03FF              add di,di
00008761  F00008            lock add [bx+si],cl
00008764  FF00              inc word [bx+si]
00008766  0001              add [bx+di],al
00008768  0800              or [bx+si],al
0000876A  0001              add [bx+di],al
0000876C  0100              add [bx+si],ax
0000876E  0000              add [bx+si],al
00008770  8080000000        add byte [bx+si+0x0],0x0
00008775  0000              add [bx+si],al
00008777  0000              add [bx+si],al
00008779  0000              add [bx+si],al
0000877B  0000              add [bx+si],al
0000877D  0000              add [bx+si],al
0000877F  0000              add [bx+si],al
00008781  0000              add [bx+si],al
00008783  0000              add [bx+si],al
00008785  0000              add [bx+si],al
00008787  0000              add [bx+si],al
00008789  0000              add [bx+si],al
0000878B  0410              add al,0x10
0000878D  003F              add [bx],bh
0000878F  C00000            rol byte [bx+si],byte 0x0
00008792  3F                aas
00008793  C00013            rol byte [bx+si],byte 0x13
00008796  CF                iretw
00008797  108003CF          adc [bx+si-0x30fd],al
0000879B  FC                cld
0000879C  0013              add [bp+di],dl
0000879E  FFF1              push cx
000087A0  0000              add [bx+si],al
000087A2  FF                db 0xff
000087A3  FC                cld
000087A4  0000              add [bx+si],al
000087A6  0110              add [bx+si],dx
000087A8  800000            add byte [bx+si],0x0
000087AB  0000              add [bx+si],al
000087AD  0000              add [bx+si],al
000087AF  0000              add [bx+si],al
000087B1  0000              add [bx+si],al
000087B3  0000              add [bx+si],al
000087B5  0000              add [bx+si],al
000087B7  0000              add [bx+si],al
000087B9  0000              add [bx+si],al
000087BB  0000              add [bx+si],al
000087BD  0000              add [bx+si],al
000087BF  0000              add [bx+si],al
000087C1  0000              add [bx+si],al
000087C3  0000              add [bx+si],al
000087C5  0000              add [bx+si],al
000087C7  0000              add [bx+si],al
000087C9  0000              add [bx+si],al
000087CB  0000              add [bx+si],al
000087CD  0410              add al,0x10
000087CF  00FF              add bh,bh
000087D1  F00000            lock add [bx+si],al
000087D4  FFF0              push ax
000087D6  0000              add [bx+si],al
000087D8  AF                scasw
000087D9  BC800F            mov sp,0xf80
000087DC  FF                db 0xff
000087DD  FF00              inc word [bx+si]
000087DF  D57E              aad 0x7e
000087E1  FC                cld
000087E2  003F              add [bx],bh
000087E4  FF                db 0xff
000087E5  FD                std
000087E6  50                push ax
000087E7  17                pop ss
000087E8  D555              aad 0x55
000087EA  000F              add [bx],cl
000087EC  DF                db 0xdf
000087ED  FC                cld
000087EE  0003              add [bp+di],al
000087F0  FF                db 0xff
000087F1  FE80000F          inc byte [bx+si+0xf00]
000087F5  50                push ax
000087F6  0000              add [bx+si],al
000087F8  0000              add [bx+si],al
000087FA  0000              add [bx+si],al
000087FC  0000              add [bx+si],al
000087FE  0000              add [bx+si],al
00008800  0000              add [bx+si],al
00008802  0000              add [bx+si],al
00008804  0000              add [bx+si],al
00008806  0000              add [bx+si],al
00008808  0000              add [bx+si],al
0000880A  0000              add [bx+si],al
0000880C  0000              add [bx+si],al
0000880E  0004              add [si],al
00008810  1000              adc [bx+si],al
00008812  FFF0              push ax
00008814  0000              add [bx+si],al
00008816  FFF0              push ax
00008818  0000              add [bx+si],al
0000881A  FFF0              push ax
0000881C  0000              add [bx+si],al
0000881E  FFF0              push ax
00008820  0000              add [bx+si],al
00008822  FFF0              push ax
00008824  0010              add [bx+si],dl
00008826  FF                db 0xff
00008827  FFC0              inc ax
00008829  FE                db 0xfe
0000882A  9F                lahf
0000882B  7FF0              jg 0x881d
0000882D  FF                db 0xff
0000882E  FFF7              push di
00008830  C00FFE            ror byte [bx],byte 0xfe
00008833  FFF0              push ax
00008835  017EAB            add [bp-0x55],di
00008838  F03F              lock aas
0000883A  FF                db 0xff
0000883B  BFC03F            mov di,0x3fc0
0000883E  BFFFF0            mov di,0xf0ff
00008841  8F                db 0x8f
00008842  FF                db 0xff
00008843  BF0000            mov di,0x0
00008846  FF                db 0xff
00008847  FC                cld
00008848  0008              add [bx+si],cl
0000884A  0001              add [bx+di],al
0000884C  50                push ax
0000884D  02814000          add al,[bx+di+0x40]
00008851  0410              add al,0x10
00008853  0000              add [bx+si],al
00008855  0000              add [bx+si],al
00008857  000C              add [si],cl
00008859  0000              add [bx+si],al
0000885B  003F              add [bx],bh
0000885D  0000              add [bx+si],al
0000885F  00FF              add bh,bh
00008861  C00003            rol byte [bx+si],byte 0x3
00008864  FFF0              push ax
00008866  0000              add [bx+si],al
00008868  3F                aas
00008869  0000              add [bx+si],al
0000886B  003F              add [bx],bh
0000886D  0000              add [bx+si],al
0000886F  003F              add [bx],bh
00008871  0000              add [bx+si],al
00008873  003F              add [bx],bh
00008875  0000              add [bx+si],al
00008877  0000              add [bx+si],al
00008879  0000              add [bx+si],al
0000887B  0000              add [bx+si],al
0000887D  0000              add [bx+si],al
0000887F  3F                aas
00008880  CF                iretw
00008881  0F000F            str [bx]
00008884  0F                db 0x0f
00008885  3F                aas
00008886  000F              add [bx],cl
00008888  0FFF              ud0
0000888A  000F              add [bx],cl
0000888C  0F                db 0x0f
0000888D  CF                iretw
0000888E  003F              add [bx],bh
00008890  CF                iretw
00008891  0F0004            sldt [si]
00008894  083F              or [bx],bh
00008896  FC                cld
00008897  0000              add [bx+si],al
00008899  FF                db 0xff
0000889A  3F                aas
0000889B  F000FF            lock add bh,bh
0000889E  3F                aas
0000889F  FFC0              inc ax
000088A1  FF                db 0xff
000088A2  3F                aas
000088A3  AB                stosw
000088A4  F0                lock
000088A5  FF                db 0xff
000088A6  3F                aas
000088A7  AA                stosb
000088A8  A03FFF            mov al,[0xff3f]
000088AB  AB                stosw
000088AC  F000FF            lock add bh,bh
000088AF  FB                sti
000088B0  F00003            lock add [bp+di],al
000088B3  FFA00408          jmp word [bx+si+0x804]
000088B7  3F                aas
000088B8  FC                cld
000088B9  0000              add [bx+si],al
000088BB  EAFFF000FE        jmp word 0xfe00:0xf0ff
000088C0  BFFFC0            mov di,0xc0ff
000088C3  FFAFABF0          jmp word far [bx-0xf55]
000088C7  FF                db 0xff
000088C8  EAAAA03FFF        jmp word 0xff3f:0xa0aa
000088CD  AB                stosw
000088CE  F000FF            lock add bh,bh
000088D1  FB                sti
000088D2  F00003            lock add [bp+di],al
000088D5  FFA00408          jmp word [bx+si+0x804]
000088D9  3F                aas
000088DA  FC                cld
000088DB  0000              add [bx+si],al
000088DD  FF                db 0xff
000088DE  FFF0              push ax
000088E0  00EA              add dl,ch
000088E2  AB                stosw
000088E3  FFC0              inc ax
000088E5  EAAAABF0FF        jmp word 0xfff0:0xabaa
000088EA  FFAAA03F          jmp word far [bp+si+0x3fa0]
000088EE  FFABF000          jmp word far [bp+di+0xf0]
000088F2  FF                db 0xff
000088F3  FB                sti
000088F4  F00003            lock add [bp+di],al
000088F7  FFA00408          jmp word [bx+si+0x804]
000088FB  3F                aas
000088FC  FC                cld
000088FD  0000              add [bx+si],al
000088FF  FF                db 0xff
00008900  EF                out dx,ax
00008901  F000FE            lock add dh,bh
00008904  AF                scasw
00008905  FFC0              inc ax
00008907  EAFFABF0EB        jmp word 0xebf0:0xabff
0000890C  FFAAA03F          jmp word far [bp+si+0x3fa0]
00008910  FFABF000          jmp word far [bp+di+0xf0]
00008914  FF                db 0xff
00008915  FB                sti
00008916  F00003            lock add [bp+di],al
00008919  FFA00408          jmp word [bx+si+0x804]
0000891D  AA                stosb
0000891E  AB                stosw
0000891F  FFC0              inc ax
00008921  AA                stosb
00008922  AB                stosw
00008923  FB                sti
00008924  F0EAABFBF03F      lock jmp word 0x3ff0:0xfbab
0000892A  FB                sti
0000892B  FB                sti
0000892C  F000FF            lock add bh,bh
0000892F  FB                sti
00008930  F00003            lock add [bp+di],al
00008933  FFC0              inc ax
00008935  0000              add [bx+si],al
00008937  0000              add [bx+si],al
00008939  0000              add [bx+si],al
0000893B  0000              add [bx+si],al
0000893D  0408              add al,0x8
0000893F  AA                stosb
00008940  AB                stosw
00008941  FFC0              inc ax
00008943  AA                stosb
00008944  AA                stosb
00008945  AF                scasw
00008946  F0EAABEBF03F      lock jmp word 0x3ff0:0xebab
0000894C  FB                sti
0000894D  FA                cli
0000894E  F000FF            lock add bh,bh
00008951  FE                db 0xfe
00008952  F00003            lock add [bp+di],al
00008955  FFC0              inc ax
00008957  0000              add [bx+si],al
00008959  0000              add [bx+si],al
0000895B  0000              add [bx+si],al
0000895D  0000              add [bx+si],al
0000895F  0408              add al,0x8
00008961  AA                stosb
00008962  AB                stosw
00008963  FFC0              inc ax
00008965  AA                stosb
00008966  AB                stosw
00008967  FFF0              push ax
00008969  EAAAAAA03F        jmp word 0x3fa0:0xaaaa
0000896E  FA                cli
0000896F  AA                stosb
00008970  A000FF            mov al,[0xff00]
00008973  FFF0              push ax
00008975  0003              add [bp+di],al
00008977  FFC0              inc ax
00008979  0000              add [bx+si],al
0000897B  0000              add [bx+si],al
0000897D  0000              add [bx+si],al
0000897F  0000              add [bx+si],al
00008981  0408              add al,0x8
00008983  AA                stosb
00008984  AB                stosw
00008985  FFC0              inc ax
00008987  AA                stosb
00008988  AB                stosw
00008989  FE                db 0xfe
0000898A  F0EAABFAF03F      lock jmp word 0x3ff0:0xfaab
00008990  FB                sti
00008991  EBF0              jmp short 0x8983
00008993  00FF              add bh,bh
00008995  EF                out dx,ax
00008996  F00003            lock add [bp+di],al
00008999  FFC0              inc ax
0000899B  0000              add [bx+si],al
0000899D  0000              add [bx+si],al
0000899F  0000              add [bx+si],al
000089A1  0000              add [bx+si],al
000089A3  0410              add al,0x10
000089A5  0001              add [bx+di],al
000089A7  0000              add [bx+si],al
000089A9  0001              add [bx+di],al
000089AB  0100              add [bx+si],ax
000089AD  0003              add [bp+di],al
000089AF  C10001            rol word [bx+si],byte 0x1
000089B2  013C              add [si],di
000089B4  0001              add [bx+di],al
000089B6  0F0000            sldt [bx+si]
000089B9  00F0              add al,dh
000089BB  81000000          add word [bx+si],0x0
000089BF  3C00              cmp al,0x0
000089C1  0000              add [bx+si],al
000089C3  0000              add [bx+si],al
000089C5  0000              add [bx+si],al
000089C7  0000              add [bx+si],al
000089C9  0000              add [bx+si],al
000089CB  0000              add [bx+si],al
000089CD  0000              add [bx+si],al
000089CF  0000              add [bx+si],al
000089D1  0000              add [bx+si],al
000089D3  0000              add [bx+si],al
000089D5  0000              add [bx+si],al
000089D7  0000              add [bx+si],al
000089D9  0000              add [bx+si],al
000089DB  0000              add [bx+si],al
000089DD  0000              add [bx+si],al
000089DF  0000              add [bx+si],al
000089E1  0000              add [bx+si],al
000089E3  0000              add [bx+si],al
000089E5  0410              add al,0x10
000089E7  0001              add [bx+di],al
000089E9  0000              add [bx+si],al
000089EB  0001              add [bx+di],al
000089ED  0100              add [bx+si],ax
000089EF  0003              add [bp+di],al
000089F1  C10001            rol word [bx+si],byte 0x1
000089F4  013C              add [si],di
000089F6  0001              add [bx+di],al
000089F8  0F0000            sldt [bx+si]
000089FB  80F100            xor cl,0x0
000089FE  10800100          adc [bx+si+0x1],al
00008A02  103C              adc [si],bh
00008A04  3CF3              cmp al,0xf3
00008A06  C003C0            rol byte [bp+di],byte 0xc0
00008A09  3C00              cmp al,0x0
00008A0B  0000              add [bx+si],al
00008A0D  0000              add [bx+si],al
00008A0F  0000              add [bx+si],al
00008A11  0000              add [bx+si],al
00008A13  0000              add [bx+si],al
00008A15  0000              add [bx+si],al
00008A17  0000              add [bx+si],al
00008A19  0000              add [bx+si],al
00008A1B  0000              add [bx+si],al
00008A1D  0000              add [bx+si],al
00008A1F  0000              add [bx+si],al
00008A21  0000              add [bx+si],al
00008A23  0000              add [bx+si],al
00008A25  0000              add [bx+si],al
00008A27  0410              add al,0x10
00008A29  0001              add [bx+di],al
00008A2B  0000              add [bx+si],al
00008A2D  0001              add [bx+di],al
00008A2F  0000              add [bx+si],al
00008A31  00810100          add [bx+di+0x1],al
00008A35  1001              adc [bx+di],al
00008A37  0010              add [bx+si],dl
00008A39  0101              add [bx+di],ax
00008A3B  0100              add [bx+si],ax
00008A3D  810FC100          or word [bx],0xc1
00008A41  00F1              add cl,dh
00008A43  3C10              cmp al,0x10
00008A45  1001              adc [bx+di],al
00008A47  0000              add [bx+si],al
00008A49  1001              adc [bx+di],al
00008A4B  0010              add [bx+si],dl
00008A4D  0801              or [bx+di],al
00008A4F  0010              add [bx+si],dl
00008A51  0808              or [bx+si],cl
00008A53  83C003            add ax,byte +0x3
00008A56  F03C00            lock cmp al,0x0
00008A59  0000              add [bx+si],al
00008A5B  0000              add [bx+si],al
00008A5D  0000              add [bx+si],al
00008A5F  0000              add [bx+si],al
00008A61  0000              add [bx+si],al
00008A63  0000              add [bx+si],al
00008A65  0000              add [bx+si],al
00008A67  0000              add [bx+si],al
00008A69  0410              add al,0x10
00008A6B  40                inc ax
00008A6C  0000              add [bx+si],al
00008A6E  004000            add [bx+si+0x0],al
00008A71  0000              add [bx+si],al
00008A73  40                inc ax
00008A74  0000              add [bx+si],al
00008A76  00EA              add dl,ch
00008A78  80400040          add byte [bx+si+0x0],0x40
00008A7C  2800              sub [bx+si],al
00008A7E  004002            add [bx+si+0x2],al
00008A81  0000              add [bx+si],al
00008A83  40                inc ax
00008A84  42                inc dx
00008A85  A4                movsb
00008A86  004002            add [bx+si+0x2],al
00008A89  0000              add [bx+si],al
00008A8B  40                inc ax
00008A8C  0000              add [bx+si],al
00008A8E  004004            add [bx+si+0x4],al
00008A91  0000              add [bx+si],al
00008A93  40                inc ax
00008A94  0420              add al,0x20
00008A96  00E0              add al,ah
00008A98  2640              es inc ax
00008A9A  004A80            add [bp+si-0x80],cl
00008A9D  8400              test [bx+si],al
00008A9F  40                inc ax
00008AA0  0200              add al,[bx+si]
00008AA2  004000            add [bx+si+0x0],al
00008AA5  0000              add [bx+si],al
00008AA7  40                inc ax
00008AA8  0000              add [bx+si],al
00008AAA  0004              add [si],al
00008AAC  104000            adc [bx+si+0x0],al
00008AAF  0000              add [bx+si],al
00008AB1  40                inc ax
00008AB2  0402              add al,0x2
00008AB4  004001            add [bx+si+0x1],al
00008AB7  0800              or [bx+si],al
00008AB9  EA02A40040        jmp word 0x4000:0xa402
00008ABE  A800              test al,0x0
00008AC0  004001            add [bx+si+0x1],al
00008AC3  0200              add al,[bx+si]
00008AC5  40                inc ax
00008AC6  004000            add [bx+si+0x0],al
00008AC9  40                inc ax
00008ACA  0000              add [bx+si],al
00008ACC  004000            add [bx+si+0x0],al
00008ACF  0000              add [bx+si],al
00008AD1  40                inc ax
00008AD2  004000            add [bx+si+0x0],al
00008AD5  40                inc ax
00008AD6  004040            add [bx+si+0x40],al
00008AD9  EA02650040        jmp word 0x4000:0x6502
00008ADE  A840              test al,0x40
00008AE0  40                inc ax
00008AE1  40                inc ax
00008AE2  004000            add [bx+si+0x0],al
00008AE5  40                inc ax
00008AE6  0002              add [bp+si],al
00008AE8  004000            add [bx+si+0x0],al
00008AEB  0000              add [bx+si],al
00008AED  0410              add al,0x10
00008AEF  40                inc ax
00008AF0  0400              add al,0x0
00008AF2  004005            add [bx+si+0x5],al
00008AF5  0400              add al,0x0
00008AF7  40                inc ax
00008AF8  6A50              push byte +0x50
00008AFA  004024            add [bx+si+0x24],al
00008AFD  0000              add [bx+si],al
00008AFF  42                inc dx
00008B00  A02000            mov al,[0x20]
00008B03  E80000            call word 0x8b06
00008B06  004000            add [bx+si+0x0],al
00008B09  0000              add [bx+si],al
00008B0B  40                inc ax
00008B0C  0020              add [bx+si],ah
00008B0E  004005            add [bx+si+0x5],al
00008B11  2000              and [bx+si],al
00008B13  40                inc ax
00008B14  006A00            add [bp+si+0x0],ch
00008B17  40                inc ax
00008B18  0210              add dl,[bx+si]
00008B1A  0040A6            add [bx+si-0x5a],al
00008B1D  0400              add al,0x0
00008B1F  EA02000040        jmp word 0x4000:0x2
00008B24  0000              add [bx+si],al
00008B26  004000            add [bx+si+0x0],al
00008B29  0000              add [bx+si],al
00008B2B  40                inc ax
00008B2C  0000              add [bx+si],al
00008B2E  0004              add [si],al
00008B30  10FF              adc bh,bh
00008B32  FF                db 0xff
00008B33  FFF0              push ax
00008B35  FF                db 0xff
00008B36  FF                db 0xff
00008B37  FFF0              push ax
00008B39  FF                db 0xff
00008B3A  FF                db 0xff
00008B3B  FFF0              push ax
00008B3D  FF                db 0xff
00008B3E  FF                db 0xff
00008B3F  FFF0              push ax
00008B41  FF                db 0xff
00008B42  FF                db 0xff
00008B43  FFF0              push ax
00008B45  FF                db 0xff
00008B46  FF                db 0xff
00008B47  FFF0              push ax
00008B49  FF                db 0xff
00008B4A  FF                db 0xff
00008B4B  FFF0              push ax
00008B4D  FF                db 0xff
00008B4E  FF                db 0xff
00008B4F  FFF0              push ax
00008B51  FF                db 0xff
00008B52  FF                db 0xff
00008B53  FFF0              push ax
00008B55  FF                db 0xff
00008B56  FF                db 0xff
00008B57  FFF0              push ax
00008B59  FF                db 0xff
00008B5A  FF                db 0xff
00008B5B  FFF0              push ax
00008B5D  FF                db 0xff
00008B5E  FF                db 0xff
00008B5F  FFF0              push ax
00008B61  FF                db 0xff
00008B62  FF                db 0xff
00008B63  FFF0              push ax
00008B65  FF                db 0xff
00008B66  FF                db 0xff
00008B67  FFF0              push ax
00008B69  FF                db 0xff
00008B6A  FF                db 0xff
00008B6B  FFF0              push ax
00008B6D  FF                db 0xff
00008B6E  FF                db 0xff
00008B6F  FFF0              push ax
00008B71  07                pop es
00008B72  10FC              adc ah,bh
00008B74  003F              add [bx],bh
00008B76  0000              add [bx+si],al
00008B78  0000              add [bx+si],al
00008B7A  FC                cld
00008B7B  003C              add [si],bh
00008B7D  0000              add [bx+si],al
00008B7F  0000              add [bx+si],al
00008B81  FFC0              inc ax
00008B83  FC                cld
00008B84  0000              add [bx+si],al
00008B86  0000              add [bx+si],al
00008B88  3EAA              ds stosb
00008B8A  A800              test al,0x0
00008B8C  0000              add [bx+si],al
00008B8E  000A              add [bp+si],cl
00008B90  AA                stosb
00008B91  800000            add byte [bx+si],0x0
00008B94  0000              add [bx+si],al
00008B96  015557            add [di+0x57],dx
00008B99  C00000            rol byte [bx+si],byte 0x0
00008B9C  0001              add [bx+di],al
00008B9E  55                push bp
00008B9F  57                push di
00008BA0  C00000            rol byte [bx+si],byte 0x0
00008BA3  0001              add [bx+di],al
00008BA5  55                push bp
00008BA6  0100              add [bx+si],ax
00008BA8  0000              add [bx+si],al
00008BAA  0000              add [bx+si],al
00008BAC  A800              test al,0x0
00008BAE  0000              add [bx+si],al
00008BB0  0000              add [bx+si],al
00008BB2  00AA8000          add [bp+si+0x80],ch
00008BB6  0000              add [bx+si],al
00008BB8  0000              add [bx+si],al
00008BBA  AF                scasw
00008BBB  C00000            rol byte [bx+si],byte 0x0
00008BBE  0000              add [bx+si],al
00008BC0  0FFF              ud0
00008BC2  FF00              inc word [bx+si]
00008BC4  0000              add [bx+si],al
00008BC6  000F              add [bx],cl
00008BC8  FFF0              push ax
00008BCA  0000              add [bx+si],al
00008BCC  0000              add [bx+si],al
00008BCE  03FF              add di,di
00008BD0  C00000            rol byte [bx+si],byte 0x0
00008BD3  0000              add [bx+si],al
00008BD5  00FF              add bh,bh
00008BD7  0000              add [bx+si],al
00008BD9  0000              add [bx+si],al
00008BDB  0000              add [bx+si],al
00008BDD  0000              add [bx+si],al
00008BDF  0000              add [bx+si],al
00008BE1  0000              add [bx+si],al
00008BE3  07                pop es
00008BE4  1000              adc [bx+si],al
00008BE6  FFC0              inc ax
00008BE8  0000              add [bx+si],al
00008BEA  0000              add [bx+si],al
00008BEC  00FC              add ah,bh
00008BEE  0000              add [bx+si],al
00008BF0  0000              add [bx+si],al
00008BF2  0000              add [bx+si],al
00008BF4  FF00              inc word [bx+si]
00008BF6  0000              add [bx+si],al
00008BF8  0000              add [bx+si],al
00008BFA  00AA8000          add [bp+si+0x80],ch
00008BFE  0000              add [bx+si],al
00008C00  0000              add [bx+si],al
00008C02  AA                stosb
00008C03  800000            add byte [bx+si],0x0
00008C06  0000              add [bx+si],al
00008C08  015500            add [di+0x0],dx
00008C0B  0000              add [bx+si],al
00008C0D  0000              add [bx+si],al
00008C0F  015550            add [di+0x50],dx
00008C12  0000              add [bx+si],al
00008C14  0000              add [bx+si],al
00008C16  015557            add [di+0x57],dx
00008C19  C00000            rol byte [bx+si],byte 0x0
00008C1C  0000              add [bx+si],al
00008C1E  AA                stosb
00008C1F  17                pop ss
00008C20  C00000            rol byte [bx+si],byte 0x0
00008C23  0000              add [bx+si],al
00008C25  AA                stosb
00008C26  81000000          add word [bx+si],0x0
00008C2A  0000              add [bx+si],al
00008C2C  AF                scasw
00008C2D  C00000            rol byte [bx+si],byte 0x0
00008C30  0000              add [bx+si],al
00008C32  0FFF              ud0
00008C34  FF00              inc word [bx+si]
00008C36  0000              add [bx+si],al
00008C38  000F              add [bx],cl
00008C3A  FFF0              push ax
00008C3C  0000              add [bx+si],al
00008C3E  0000              add [bx+si],al
00008C40  03FF              add di,di
00008C42  C00000            rol byte [bx+si],byte 0x0
00008C45  0000              add [bx+si],al
00008C47  00FF              add bh,bh
00008C49  0000              add [bx+si],al
00008C4B  0000              add [bx+si],al
00008C4D  0000              add [bx+si],al
00008C4F  0000              add [bx+si],al
00008C51  0000              add [bx+si],al
00008C53  0000              add [bx+si],al
00008C55  07                pop es
00008C56  100F              adc [bx],cl
00008C58  F00000            lock add [bx+si],al
00008C5B  0000              add [bx+si],al
00008C5D  000F              add [bx],cl
00008C5F  C00FC0            ror byte [bx],byte 0xc0
00008C62  0000              add [bx+si],al
00008C64  000F              add [bx],cl
00008C66  C03FF0            sar byte [bx],byte 0xf0
00008C69  0000              add [bx+si],al
00008C6B  000A              add [bp+si],cl
00008C6D  AA                stosb
00008C6E  A800              test al,0x0
00008C70  0000              add [bx+si],al
00008C72  000A              add [bp+si],cl
00008C74  AA                stosb
00008C75  A800              test al,0x0
00008C77  0000              add [bx+si],al
00008C79  0001              add [bx+di],al
00008C7B  7FF0              jg 0x8c6d
00008C7D  0000              add [bx+si],al
00008C7F  0000              add [bx+si],al
00008C81  017F50            add [bx+0x50],di
00008C84  0000              add [bx+si],al
00008C86  0000              add [bx+si],al
00008C88  015550            add [di+0x50],dx
00008C8B  0000              add [bx+si],al
00008C8D  0000              add [bx+si],al
00008C8F  00A80000          add [bx+si+0x0],ch
00008C93  0000              add [bx+si],al
00008C95  0000              add [bx+si],al
00008C97  AA                stosb
00008C98  800000            add byte [bx+si],0x0
00008C9B  0000              add [bx+si],al
00008C9D  00AFC000          add [bx+0xc0],ch
00008CA1  0000              add [bx+si],al
00008CA3  000F              add [bx],cl
00008CA5  FF                db 0xff
00008CA6  FF00              inc word [bx+si]
00008CA8  0000              add [bx+si],al
00008CAA  000F              add [bx],cl
00008CAC  FFF0              push ax
00008CAE  0000              add [bx+si],al
00008CB0  0000              add [bx+si],al
00008CB2  03FF              add di,di
00008CB4  C00000            rol byte [bx+si],byte 0x0
00008CB7  0000              add [bx+si],al
00008CB9  00FF              add bh,bh
00008CBB  0000              add [bx+si],al
00008CBD  0000              add [bx+si],al
00008CBF  0000              add [bx+si],al
00008CC1  0000              add [bx+si],al
00008CC3  0000              add [bx+si],al
00008CC5  0000              add [bx+si],al
00008CC7  07                pop es
00008CC8  103F              adc [bx],bh
00008CCA  000F              add [bx],cl
00008CCC  C00000            rol byte [bx+si],byte 0x0
00008CCF  000F              add [bx],cl
00008CD1  000F              add [bx],cl
00008CD3  C00000            rol byte [bx+si],byte 0x0
00008CD6  000F              add [bx],cl
00008CD8  C0FFC0            sar bh,byte 0xc0
00008CDB  0000              add [bx+si],al
00008CDD  000A              add [bp+si],cl
00008CDF  AA                stosb
00008CE0  AF                scasw
00008CE1  0000              add [bx+si],al
00008CE3  0000              add [bx+si],al
00008CE5  00AAA800          add [bp+si+0xa8],ch
00008CE9  0000              add [bx+si],al
00008CEB  00D5              add ch,dl
00008CED  55                push bp
00008CEE  50                push ax
00008CEF  0000              add [bx+si],al
00008CF1  0000              add [bx+si],al
00008CF3  D555              aad 0x55
00008CF5  50                push ax
00008CF6  0000              add [bx+si],al
00008CF8  0000              add [bx+si],al
00008CFA  1015              adc [di],dl
00008CFC  50                push ax
00008CFD  0000              add [bx+si],al
00008CFF  0000              add [bx+si],al
00008D01  000A              add [bp+si],cl
00008D03  800000            add byte [bx+si],0x0
00008D06  0000              add [bx+si],al
00008D08  00AA8000          add [bp+si+0x80],ch
00008D0C  0000              add [bx+si],al
00008D0E  0000              add [bx+si],al
00008D10  FE800000          inc byte [bx+si+0x0]
00008D14  0000              add [bx+si],al
00008D16  3F                aas
00008D17  FF                db 0xff
00008D18  FC                cld
00008D19  0000              add [bx+si],al
00008D1B  0000              add [bx+si],al
00008D1D  03FF              add di,di
00008D1F  FC                cld
00008D20  0000              add [bx+si],al
00008D22  0000              add [bx+si],al
00008D24  00FF              add bh,bh
00008D26  F00000            lock add [bx+si],al
00008D29  0000              add [bx+si],al
00008D2B  003F              add [bx],bh
00008D2D  C00000            rol byte [bx+si],byte 0x0
00008D30  0000              add [bx+si],al
00008D32  0000              add [bx+si],al
00008D34  0000              add [bx+si],al
00008D36  0000              add [bx+si],al
00008D38  0007              add [bx],al
00008D3A  1000              adc [bx+si],al
00008D3C  FFC0              inc ax
00008D3E  0000              add [bx+si],al
00008D40  0000              add [bx+si],al
00008D42  000F              add [bx],cl
00008D44  C00000            rol byte [bx+si],byte 0x0
00008D47  0000              add [bx+si],al
00008D49  003F              add [bx],bh
00008D4B  C00000            rol byte [bx+si],byte 0x0
00008D4E  0000              add [bx+si],al
00008D50  00AA8000          add [bp+si+0x80],ch
00008D54  0000              add [bx+si],al
00008D56  0000              add [bx+si],al
00008D58  AA                stosb
00008D59  800000            add byte [bx+si],0x0
00008D5C  0000              add [bx+si],al
00008D5E  0015              add [di],dl
00008D60  50                push ax
00008D61  0000              add [bx+si],al
00008D63  0000              add [bx+si],al
00008D65  015550            add [di+0x50],dx
00008D68  0000              add [bx+si],al
00008D6A  0000              add [bx+si],al
00008D6C  D555              aad 0x55
00008D6E  50                push ax
00008D6F  0000              add [bx+si],al
00008D71  0000              add [bx+si],al
00008D73  D56A              aad 0x6a
00008D75  800000            add byte [bx+si],0x0
00008D78  0000              add [bx+si],al
00008D7A  10AA8000          adc [bp+si+0x80],ch
00008D7E  0000              add [bx+si],al
00008D80  0000              add [bx+si],al
00008D82  FE800000          inc byte [bx+si+0x0]
00008D86  0000              add [bx+si],al
00008D88  3F                aas
00008D89  FF                db 0xff
00008D8A  FC                cld
00008D8B  0000              add [bx+si],al
00008D8D  0000              add [bx+si],al
00008D8F  03FF              add di,di
00008D91  FC                cld
00008D92  0000              add [bx+si],al
00008D94  0000              add [bx+si],al
00008D96  00FF              add bh,bh
00008D98  F00000            lock add [bx+si],al
00008D9B  0000              add [bx+si],al
00008D9D  003F              add [bx],bh
00008D9F  C00000            rol byte [bx+si],byte 0x0
00008DA2  0000              add [bx+si],al
00008DA4  0000              add [bx+si],al
00008DA6  0000              add [bx+si],al
00008DA8  0000              add [bx+si],al
00008DAA  0007              add [bx],al
00008DAC  1000              adc [bx+si],al
00008DAE  03FC              add di,sp
00008DB0  0000              add [bx+si],al
00008DB2  0000              add [bx+si],al
00008DB4  FC                cld
00008DB5  00FC              add ah,bh
00008DB7  0000              add [bx+si],al
00008DB9  0000              add [bx+si],al
00008DBB  FF00              inc word [bx+si]
00008DBD  FC                cld
00008DBE  0000              add [bx+si],al
00008DC0  0000              add [bx+si],al
00008DC2  0AAAA800          or ch,[bp+si+0xa8]
00008DC6  0000              add [bx+si],al
00008DC8  000A              add [bp+si],cl
00008DCA  AA                stosb
00008DCB  A800              test al,0x0
00008DCD  0000              add [bx+si],al
00008DCF  0003              add [bp+di],al
00008DD1  FF5000            call word [bx+si+0x0]
00008DD4  0000              add [bx+si],al
00008DD6  0001              add [bx+di],al
00008DD8  7F50              jg 0x8e2a
00008DDA  0000              add [bx+si],al
00008DDC  0000              add [bx+si],al
00008DDE  015550            add [di+0x50],dx
00008DE1  0000              add [bx+si],al
00008DE3  0000              add [bx+si],al
00008DE5  000A              add [bp+si],cl
00008DE7  800000            add byte [bx+si],0x0
00008DEA  0000              add [bx+si],al
00008DEC  00AA8000          add [bp+si+0x80],ch
00008DF0  0000              add [bx+si],al
00008DF2  0000              add [bx+si],al
00008DF4  FE800000          inc byte [bx+si+0x0]
00008DF8  0000              add [bx+si],al
00008DFA  3F                aas
00008DFB  FF                db 0xff
00008DFC  FC                cld
00008DFD  0000              add [bx+si],al
00008DFF  0000              add [bx+si],al
00008E01  03FF              add di,di
00008E03  FC                cld
00008E04  0000              add [bx+si],al
00008E06  0000              add [bx+si],al
00008E08  00FF              add bh,bh
00008E0A  F00000            lock add [bx+si],al
00008E0D  0000              add [bx+si],al
00008E0F  003F              add [bx],bh
00008E11  C00000            rol byte [bx+si],byte 0x0
00008E14  0000              add [bx+si],al
00008E16  0000              add [bx+si],al
00008E18  0000              add [bx+si],al
00008E1A  0000              add [bx+si],al
00008E1C  0007              add [bx],al
00008E1E  1000              adc [bx+si],al
00008E20  0000              add [bx+si],al
00008E22  0000              add [bx+si],al
00008E24  0000              add [bx+si],al
00008E26  FF00              inc word [bx+si]
00008E28  3F                aas
00008E29  0000              add [bx+si],al
00008E2B  0000              add [bx+si],al
00008E2D  FFC0              inc ax
00008E2F  FF00              inc word [bx+si]
00008E31  0000              add [bx+si],al
00008E33  000A              add [bp+si],cl
00008E35  AA                stosb
00008E36  A800              test al,0x0
00008E38  0000              add [bx+si],al
00008E3A  000A              add [bp+si],cl
00008E3C  AA                stosb
00008E3D  800000            add byte [bx+si],0x0
00008E40  0000              add [bx+si],al
00008E42  015557            add [di+0x57],dx
00008E45  C00000            rol byte [bx+si],byte 0x0
00008E48  0001              add [bx+di],al
00008E4A  55                push bp
00008E4B  57                push di
00008E4C  C00000            rol byte [bx+si],byte 0x0
00008E4F  0001              add [bx+di],al
00008E51  55                push bp
00008E52  0100              add [bx+si],ax
00008E54  0000              add [bx+si],al
00008E56  0000              add [bx+si],al
00008E58  A800              test al,0x0
00008E5A  0000              add [bx+si],al
00008E5C  0000              add [bx+si],al
00008E5E  00AA8000          add [bp+si+0x80],ch
00008E62  0000              add [bx+si],al
00008E64  0000              add [bx+si],al
00008E66  AF                scasw
00008E67  C00000            rol byte [bx+si],byte 0x0
00008E6A  0000              add [bx+si],al
00008E6C  0FFF              ud0
00008E6E  FF00              inc word [bx+si]
00008E70  0000              add [bx+si],al
00008E72  000F              add [bx],cl
00008E74  FFF0              push ax
00008E76  0000              add [bx+si],al
00008E78  0000              add [bx+si],al
00008E7A  03FF              add di,di
00008E7C  C00000            rol byte [bx+si],byte 0x0
00008E7F  0000              add [bx+si],al
00008E81  00FF              add bh,bh
00008E83  0000              add [bx+si],al
00008E85  0000              add [bx+si],al
00008E87  0000              add [bx+si],al
00008E89  0000              add [bx+si],al
00008E8B  0000              add [bx+si],al
00008E8D  0000              add [bx+si],al
00008E8F  07                pop es
00008E90  1000              adc [bx+si],al
00008E92  0000              add [bx+si],al
00008E94  0000              add [bx+si],al
00008E96  0000              add [bx+si],al
00008E98  3F                aas
00008E99  003F              add [bx],bh
00008E9B  C00000            rol byte [bx+si],byte 0x0
00008E9E  003F              add [bx],bh
00008EA0  C0FFC0            sar bh,byte 0xc0
00008EA3  0000              add [bx+si],al
00008EA5  000A              add [bp+si],cl
00008EA7  AA                stosb
00008EA8  A800              test al,0x0
00008EAA  0000              add [bx+si],al
00008EAC  0000              add [bx+si],al
00008EAE  AA                stosb
00008EAF  A800              test al,0x0
00008EB1  0000              add [bx+si],al
00008EB3  00D5              add ch,dl
00008EB5  55                push bp
00008EB6  50                push ax
00008EB7  0000              add [bx+si],al
00008EB9  0000              add [bx+si],al
00008EBB  D555              aad 0x55
00008EBD  50                push ax
00008EBE  0000              add [bx+si],al
00008EC0  0000              add [bx+si],al
00008EC2  1015              adc [di],dl
00008EC4  50                push ax
00008EC5  0000              add [bx+si],al
00008EC7  0000              add [bx+si],al
00008EC9  000A              add [bp+si],cl
00008ECB  800000            add byte [bx+si],0x0
00008ECE  0000              add [bx+si],al
00008ED0  00AA8000          add [bp+si+0x80],ch
00008ED4  0000              add [bx+si],al
00008ED6  0000              add [bx+si],al
00008ED8  FE800000          inc byte [bx+si+0x0]
00008EDC  0000              add [bx+si],al
00008EDE  3F                aas
00008EDF  FF                db 0xff
00008EE0  FC                cld
00008EE1  0000              add [bx+si],al
00008EE3  0000              add [bx+si],al
00008EE5  03FF              add di,di
00008EE7  FC                cld
00008EE8  0000              add [bx+si],al
00008EEA  0000              add [bx+si],al
00008EEC  00FF              add bh,bh
00008EEE  F00000            lock add [bx+si],al
00008EF1  0000              add [bx+si],al
00008EF3  003F              add [bx],bh
00008EF5  C00000            rol byte [bx+si],byte 0x0
00008EF8  0000              add [bx+si],al
00008EFA  0000              add [bx+si],al
00008EFC  0000              add [bx+si],al
00008EFE  0000              add [bx+si],al
00008F00  0007              add [bx],al
00008F02  100F              adc [bx],cl
00008F04  F03F              lock aas
00008F06  C00000            rol byte [bx+si],byte 0x0
00008F09  0003              add [bp+di],al
00008F0B  F03F              lock aas
00008F0D  0000              add [bx+si],al
00008F0F  0000              add [bx+si],al
00008F11  02BCFA00          add bh,[si+0xfa]
00008F15  0000              add [bx+si],al
00008F17  0002              add [bp+si],al
00008F19  AA                stosb
00008F1A  AA                stosb
00008F1B  0000              add [bx+si],al
00008F1D  0000              add [bx+si],al
00008F1F  002A              add [bp+si],ch
00008F21  A00000            mov al,[0x0]
00008F24  0000              add [bx+si],al
00008F26  003D              add [di],bh
00008F28  F00000            lock add [bx+si],al
00008F2B  0000              add [bx+si],al
00008F2D  03D5              add dx,bp
00008F2F  5F                pop di
00008F30  0000              add [bx+si],al
00008F32  0000              add [bx+si],al
00008F34  0FD55FC0          pmullw mm3,[bx-0x40]
00008F38  0000              add [bx+si],al
00008F3A  000F              add [bx],cl
00008F3C  D55F              aad 0x5f
00008F3E  C00000            rol byte [bx+si],byte 0x0
00008F41  0000              add [bx+si],al
00008F43  2AA00000          sub ah,[bx+si+0x0]
00008F47  0000              add [bx+si],al
00008F49  002A              add [bp+si],ch
00008F4B  A00000            mov al,[0x0]
00008F4E  0000              add [bx+si],al
00008F50  03FF              add di,di
00008F52  FF00              inc word [bx+si]
00008F54  0000              add [bx+si],al
00008F56  0000              add [bx+si],al
00008F58  FF                db 0xff
00008F59  FC                cld
00008F5A  0000              add [bx+si],al
00008F5C  0000              add [bx+si],al
00008F5E  00FC              add ah,bh
00008F60  FC                cld
00008F61  0000              add [bx+si],al
00008F63  0000              add [bx+si],al
00008F65  003C              add [si],bh
00008F67  F00000            lock add [bx+si],al
00008F6A  0000              add [bx+si],al
00008F6C  0000              add [bx+si],al
00008F6E  0000              add [bx+si],al
00008F70  0000              add [bx+si],al
00008F72  0007              add [bx],al
00008F74  1000              adc [bx+si],al
00008F76  0000              add [bx+si],al
00008F78  0000              add [bx+si],al
00008F7A  0000              add [bx+si],al
00008F7C  0000              add [bx+si],al
00008F7E  0000              add [bx+si],al
00008F80  0000              add [bx+si],al
00008F82  000F              add [bx],cl
00008F84  F03F              lock aas
00008F86  C00000            rol byte [bx+si],byte 0x0
00008F89  0003              add [bp+di],al
00008F8B  F03F              lock aas
00008F8D  0000              add [bx+si],al
00008F8F  0000              add [bx+si],al
00008F91  023C              add bh,[si]
00008F93  F20000            repne add [bx+si],al
00008F96  0000              add [bx+si],al
00008F98  002A              add [bp+si],ch
00008F9A  A00000            mov al,[0x0]
00008F9D  0000              add [bx+si],al
00008F9F  003D              add [di],bh
00008FA1  F00000            lock add [bx+si],al
00008FA4  0000              add [bx+si],al
00008FA6  0FD55FC0          pmullw mm3,[bx-0x40]
00008FAA  0000              add [bx+si],al
00008FAC  000F              add [bx],cl
00008FAE  D55F              aad 0x5f
00008FB0  C00000            rol byte [bx+si],byte 0x0
00008FB3  0000              add [bx+si],al
00008FB5  2AA00000          sub ah,[bx+si+0x0]
00008FB9  0000              add [bx+si],al
00008FBB  002A              add [bp+si],ch
00008FBD  A00000            mov al,[0x0]
00008FC0  0000              add [bx+si],al
00008FC2  03FF              add di,di
00008FC4  FF00              inc word [bx+si]
00008FC6  0000              add [bx+si],al
00008FC8  0000              add [bx+si],al
00008FCA  FF                db 0xff
00008FCB  FC                cld
00008FCC  0000              add [bx+si],al
00008FCE  0000              add [bx+si],al
00008FD0  00FC              add ah,bh
00008FD2  FC                cld
00008FD3  0000              add [bx+si],al
00008FD5  0000              add [bx+si],al
00008FD7  003C              add [si],bh
00008FD9  F00000            lock add [bx+si],al
00008FDC  0000              add [bx+si],al
00008FDE  0000              add [bx+si],al
00008FE0  0000              add [bx+si],al
00008FE2  0000              add [bx+si],al
00008FE4  0007              add [bx],al
00008FE6  1000              adc [bx+si],al
00008FE8  003F              add [bx],bh
00008FEA  C00000            rol byte [bx+si],byte 0x0
00008FED  000F              add [bx],cl
00008FEF  F0150000          lock adc ax,0x0
00008FF3  0000              add [bx+si],al
00008FF5  015015            add [bx+si+0x15],dx
00008FF8  0000              add [bx+si],al
00008FFA  0000              add [bx+si],al
00008FFC  017CF5            add [si-0xb],di
00008FFF  0000              add [bx+si],al
00009001  0000              add [bx+si],al
00009003  0015              add [di],dl
00009005  50                push ax
00009006  0000              add [bx+si],al
00009008  0000              add [bx+si],al
0000900A  0001              add [bx+di],al
0000900C  0000              add [bx+si],al
0000900E  0000              add [bx+si],al
00009010  0010              add [bx+si],dl
00009012  AA                stosb
00009013  A810              test al,0x10
00009015  0000              add [bx+si],al
00009017  0010              add [bx+si],dl
00009019  AA                stosb
0000901A  A810              test al,0x10
0000901C  0000              add [bx+si],al
0000901E  0010              add [bx+si],dl
00009020  AF                scasw
00009021  E81000            call word 0x9034
00009024  0000              add [bx+si],al
00009026  0F1553C0          unpckhps xmm2,oword [bp+di-0x40]
0000902A  0000              add [bx+si],al
0000902C  0000              add [bx+si],al
0000902E  3EF00000          lock add [ds:bx+si],al
00009032  0000              add [bx+si],al
00009034  0015              add [di],dl
00009036  50                push ax
00009037  0000              add [bx+si],al
00009039  0000              add [bx+si],al
0000903B  00AAA800          add [bp+si+0xa8],ch
0000903F  0000              add [bx+si],al
00009041  0001              add [bx+di],al
00009043  52                push dx
00009044  150000            adc ax,0x0
00009047  0000              add [bx+si],al
00009049  080A              or [bp+si],cl
0000904B  8080000000        add byte [bx+si+0x0],0x0
00009050  0014              add [si],dl
00009052  50                push ax
00009053  0000              add [bx+si],al
00009055  0000              add [bx+si],al
00009057  07                pop es
00009058  100F              adc [bx],cl
0000905A  F00000            lock add [bx+si],al
0000905D  0000              add [bx+si],al
0000905F  0001              add [bx+di],al
00009061  50                push ax
00009062  3F                aas
00009063  C00000            rol byte [bx+si],byte 0x0
00009066  0001              add [bx+di],al
00009068  50                push ax
00009069  150000            adc ax,0x0
0000906C  0000              add [bx+si],al
0000906E  017CF5            add [si-0xb],di
00009071  0000              add [bx+si],al
00009073  0000              add [bx+si],al
00009075  0015              add [di],dl
00009077  50                push ax
00009078  0000              add [bx+si],al
0000907A  0000              add [bx+si],al
0000907C  1001              adc [bx+di],al
0000907E  0010              add [bx+si],dl
00009080  0000              add [bx+si],al
00009082  0010              add [bx+si],dl
00009084  AA                stosb
00009085  A810              test al,0x10
00009087  0000              add [bx+si],al
00009089  003C              add [si],bh
0000908B  AA                stosb
0000908C  A8F0              test al,0xf0
0000908E  0000              add [bx+si],al
00009090  0003              add [bp+di],al
00009092  CF                iretw
00009093  CF                iretw
00009094  0000              add [bx+si],al
00009096  0000              add [bx+si],al
00009098  0015              add [di],dl
0000909A  50                push ax
0000909B  0000              add [bx+si],al
0000909D  0000              add [bx+si],al
0000909F  003EF000          add [0xf0],bh
000090A3  0000              add [bx+si],al
000090A5  0000              add [bx+si],al
000090A7  155000            adc ax,0x50
000090AA  0000              add [bx+si],al
000090AC  0000              add [bx+si],al
000090AE  88810000          mov [bx+di+0x0],al
000090B2  0000              add [bx+si],al
000090B4  0808              or [bx+si],cl
000090B6  150000            adc ax,0x0
000090B9  0000              add [bx+si],al
000090BB  015554            add [di+0x54],dx
000090BE  800000            add byte [bx+si],0x0
000090C1  0008              add [bx+si],cl
000090C3  10880000          adc [bx+si+0x0],cl
000090C7  0000              add [bx+si],al
000090C9  07                pop es
000090CA  1000              adc [bx+si],al
000090CC  03FC              add di,sp
000090CE  0000              add [bx+si],al
000090D0  0000              add [bx+si],al
000090D2  0FF3F0            psllq mm6,mm0
000090D5  0000              add [bx+si],al
000090D7  0000              add [bx+si],al
000090D9  03F1              add si,cx
000090DB  50                push ax
000090DC  0000              add [bx+si],al
000090DE  0000              add [bx+si],al
000090E0  015150            add [bx+di+0x50],dx
000090E3  0000              add [bx+si],al
000090E5  0000              add [bx+si],al
000090E7  015150            add [bx+di+0x50],dx
000090EA  0000              add [bx+si],al
000090EC  0000              add [bx+si],al
000090EE  015150            add [bx+di+0x50],dx
000090F1  0000              add [bx+si],al
000090F3  0000              add [bx+si],al
000090F5  03EA              add bp,dx
000090F7  F00000            lock add [bx+si],al
000090FA  0000              add [bx+si],al
000090FC  03EA              add bp,dx
000090FE  F00000            lock add [bx+si],al
00009101  0000              add [bx+si],al
00009103  0FEAFC            pminsw mm7,mm4
00009106  0000              add [bx+si],al
00009108  0000              add [bx+si],al
0000910A  FF                db 0xff
0000910B  FB                sti
0000910C  FFC0              inc ax
0000910E  0000              add [bx+si],al
00009110  00D0              add al,dl
00009112  3F                aas
00009113  03C0              add ax,ax
00009115  0000              add [bx+si],al
00009117  0000              add [bx+si],al
00009119  AA                stosb
0000911A  800000            add byte [bx+si],0x0
0000911D  0000              add [bx+si],al
0000911F  03FF              add di,di
00009121  F00000            lock add [bx+si],al
00009124  0000              add [bx+si],al
00009126  03EA              add bp,dx
00009128  F00000            lock add [bx+si],al
0000912B  0000              add [bx+si],al
0000912D  03FF              add di,di
0000912F  F00000            lock add [bx+si],al
00009132  0000              add [bx+si],al
00009134  00AA8000          add [bp+si+0x80],ch
00009138  0000              add [bx+si],al
0000913A  0007              add [bx],al
0000913C  100F              adc [bx],cl
0000913E  F00000            lock add [bx+si],al
00009141  0000              add [bx+si],al
00009143  0003              add [bp+di],al
00009145  F3FC              rep cld
00009147  0000              add [bx+si],al
00009149  0000              add [bx+si],al
0000914B  0153F0            add [bp+di-0x10],dx
0000914E  0000              add [bx+si],al
00009150  0000              add [bx+si],al
00009152  015150            add [bx+di+0x50],dx
00009155  0000              add [bx+si],al
00009157  0000              add [bx+si],al
00009159  015150            add [bx+di+0x50],dx
0000915C  0000              add [bx+si],al
0000915E  0000              add [bx+si],al
00009160  015150            add [bx+di+0x50],dx
00009163  0000              add [bx+si],al
00009165  0000              add [bx+si],al
00009167  03EA              add bp,dx
00009169  F00000            lock add [bx+si],al
0000916C  0000              add [bx+si],al
0000916E  03EA              add bp,dx
00009170  F00000            lock add [bx+si],al
00009173  0000              add [bx+si],al
00009175  0FEAFC            pminsw mm7,mm4
00009178  0000              add [bx+si],al
0000917A  0000              add [bx+si],al
0000917C  3F                aas
0000917D  FB                sti
0000917E  FF00              inc word [bx+si]
00009180  0000              add [bx+si],al
00009182  0010              add [bx+si],dl
00009184  3F                aas
00009185  0100              add [bx+si],ax
00009187  0000              add [bx+si],al
00009189  00D0              add al,dl
0000918B  AA                stosb
0000918C  83C000            add ax,byte +0x0
0000918F  0000              add [bx+si],al
00009191  D3FF              sar di,cl
00009193  F3C00000          rep rol byte [bx+si],byte 0x0
00009197  0003              add [bp+di],al
00009199  EAF0000000        jmp word 0x0:0xf0
0000919E  0003              add [bp+di],al
000091A0  FFF0              push ax
000091A2  0000              add [bx+si],al
000091A4  0000              add [bx+si],al
000091A6  00AA8000          add [bp+si+0x80],ch
000091AA  0000              add [bx+si],al
000091AC  0007              add [bx],al
000091AE  1000              adc [bx+si],al
000091B0  0F0000            sldt [bx+si]
000091B3  0000              add [bx+si],al
000091B5  0000              add [bx+si],al
000091B7  0F0000            sldt [bx+si]
000091BA  0000              add [bx+si],al
000091BC  0000              add [bx+si],al
000091BE  0F0000            sldt [bx+si]
000091C1  0000              add [bx+si],al
000091C3  0000              add [bx+si],al
000091C5  0F0000            sldt [bx+si]
000091C8  0000              add [bx+si],al
000091CA  0000              add [bx+si],al
000091CC  3F                aas
000091CD  C00000            rol byte [bx+si],byte 0x0
000091D0  0000              add [bx+si],al
000091D2  00AA8000          add [bp+si+0x80],ch
000091D6  0000              add [bx+si],al
000091D8  0000              add [bx+si],al
000091DA  AA                stosb
000091DB  800000            add byte [bx+si],0x0
000091DE  0000              add [bx+si],al
000091E0  00FF              add bh,bh
000091E2  C00000            rol byte [bx+si],byte 0x0
000091E5  0000              add [bx+si],al
000091E7  00AA8000          add [bp+si+0x80],ch
000091EB  0000              add [bx+si],al
000091ED  0000              add [bx+si],al
000091EF  FFC0              inc ax
000091F1  0000              add [bx+si],al
000091F3  0000              add [bx+si],al
000091F5  00AA8000          add [bp+si+0x80],ch
000091F9  0000              add [bx+si],al
000091FB  0000              add [bx+si],al
000091FD  AA                stosb
000091FE  800000            add byte [bx+si],0x0
00009201  0000              add [bx+si],al
00009203  3F                aas
00009204  FF                db 0xff
00009205  FFC0              inc ax
00009207  0000              add [bx+si],al
00009209  00FF              add bh,bh
0000920B  FF                db 0xff
0000920C  FFF0              push ax
0000920E  0000              add [bx+si],al
00009210  0000              add [bx+si],al
00009212  3F                aas
00009213  0000              add [bx+si],al
00009215  0000              add [bx+si],al
00009217  0000              add [bx+si],al
00009219  0000              add [bx+si],al
0000921B  0000              add [bx+si],al
0000921D  0000              add [bx+si],al
0000921F  07                pop es
00009220  1000              adc [bx+si],al
00009222  0F0000            sldt [bx+si]
00009225  0000              add [bx+si],al
00009227  0000              add [bx+si],al
00009229  3F                aas
0000922A  C00000            rol byte [bx+si],byte 0x0
0000922D  0000              add [bx+si],al
0000922F  00AA8000          add [bp+si+0x80],ch
00009233  0000              add [bx+si],al
00009235  0000              add [bx+si],al
00009237  AA                stosb
00009238  800000            add byte [bx+si],0x0
0000923B  0000              add [bx+si],al
0000923D  00FF              add bh,bh
0000923F  C00000            rol byte [bx+si],byte 0x0
00009242  0000              add [bx+si],al
00009244  00AA8000          add [bp+si+0x80],ch
00009248  0000              add [bx+si],al
0000924A  0000              add [bx+si],al
0000924C  FFC0              inc ax
0000924E  0000              add [bx+si],al
00009250  0000              add [bx+si],al
00009252  00AA8000          add [bp+si+0x80],ch
00009256  0000              add [bx+si],al
00009258  0000              add [bx+si],al
0000925A  AA                stosb
0000925B  800000            add byte [bx+si],0x0
0000925E  0000              add [bx+si],al
00009260  3F                aas
00009261  FF                db 0xff
00009262  FFC0              inc ax
00009264  0000              add [bx+si],al
00009266  00FF              add bh,bh
00009268  FF                db 0xff
00009269  FFF0              push ax
0000926B  0000              add [bx+si],al
0000926D  0000              add [bx+si],al
0000926F  3F                aas
00009270  0000              add [bx+si],al
00009272  0000              add [bx+si],al
00009274  0000              add [bx+si],al
00009276  0000              add [bx+si],al
00009278  0000              add [bx+si],al
0000927A  0000              add [bx+si],al
0000927C  0000              add [bx+si],al
0000927E  0000              add [bx+si],al
00009280  0000              add [bx+si],al
00009282  0000              add [bx+si],al
00009284  0000              add [bx+si],al
00009286  0000              add [bx+si],al
00009288  0000              add [bx+si],al
0000928A  0000              add [bx+si],al
0000928C  0000              add [bx+si],al
0000928E  0000              add [bx+si],al
00009290  0007              add [bx],al
00009292  10FF              adc bh,bh
00009294  FF                db 0xff
00009295  FC                cld
00009296  0000              add [bx+si],al
00009298  0000              add [bx+si],al
0000929A  FE                db 0xfe
0000929B  AA                stosb
0000929C  FFC0              inc ax
0000929E  0000              add [bx+si],al
000092A0  00FE              add dh,bh
000092A2  AA                stosb
000092A3  F7F0              div ax
000092A5  0000              add [bx+si],al
000092A7  00FE              add dh,bh
000092A9  AA                stosb
000092AA  F5                cmc
000092AB  50                push ax
000092AC  0000              add [bx+si],al
000092AE  00FF              add bh,bh
000092B0  FFF5              push bp
000092B2  50                push ax
000092B3  0000              add [bx+si],al
000092B5  00D5              add ch,dl
000092B7  55                push bp
000092B8  7F50              jg 0x930a
000092BA  0000              add [bx+si],al
000092BC  000F              add [bx],cl
000092BE  55                push bp
000092BF  57                push di
000092C0  F00000            lock add [bx+si],al
000092C3  0000              add [bx+si],al
000092C5  FF                db 0xff
000092C6  FFF0              push ax
000092C8  0000              add [bx+si],al
000092CA  0000              add [bx+si],al
000092CC  0000              add [bx+si],al
000092CE  0000              add [bx+si],al
000092D0  0000              add [bx+si],al
000092D2  0000              add [bx+si],al
000092D4  0000              add [bx+si],al
000092D6  0000              add [bx+si],al
000092D8  0000              add [bx+si],al
000092DA  0000              add [bx+si],al
000092DC  0000              add [bx+si],al
000092DE  0000              add [bx+si],al
000092E0  0000              add [bx+si],al
000092E2  0000              add [bx+si],al
000092E4  0000              add [bx+si],al
000092E6  0000              add [bx+si],al
000092E8  0000              add [bx+si],al
000092EA  0000              add [bx+si],al
000092EC  0000              add [bx+si],al
000092EE  0000              add [bx+si],al
000092F0  0000              add [bx+si],al
000092F2  0000              add [bx+si],al
000092F4  0000              add [bx+si],al
000092F6  0000              add [bx+si],al
000092F8  0000              add [bx+si],al
000092FA  0000              add [bx+si],al
000092FC  0000              add [bx+si],al
000092FE  0000              add [bx+si],al
00009300  0000              add [bx+si],al
00009302  0007              add [bx],al
00009304  10FF              adc bh,bh
00009306  FF                db 0xff
00009307  FFF0              push ax
00009309  0000              add [bx+si],al
0000930B  00FF              add bh,bh
0000930D  FF                db 0xff
0000930E  FFF0              push ax
00009310  0000              add [bx+si],al
00009312  005555            add [di+0x55],dl
00009315  55                push bp
00009316  50                push ax
00009317  0000              add [bx+si],al
00009319  005555            add [di+0x55],dl
0000931C  55                push bp
0000931D  50                push ax
0000931E  0000              add [bx+si],al
00009320  005555            add [di+0x55],dl
00009323  55                push bp
00009324  50                push ax
00009325  0000              add [bx+si],al
00009327  005555            add [di+0x55],dl
0000932A  55                push bp
0000932B  50                push ax
0000932C  0000              add [bx+si],al
0000932E  00FF              add bh,bh
00009330  FF                db 0xff
00009331  FFF0              push ax
00009333  0000              add [bx+si],al
00009335  00FF              add bh,bh
00009337  FF                db 0xff
00009338  FFF0              push ax
0000933A  0000              add [bx+si],al
0000933C  0000              add [bx+si],al
0000933E  0000              add [bx+si],al
00009340  0000              add [bx+si],al
00009342  0000              add [bx+si],al
00009344  0000              add [bx+si],al
00009346  0000              add [bx+si],al
00009348  0000              add [bx+si],al
0000934A  0000              add [bx+si],al
0000934C  0000              add [bx+si],al
0000934E  0000              add [bx+si],al
00009350  0000              add [bx+si],al
00009352  0000              add [bx+si],al
00009354  0000              add [bx+si],al
00009356  0000              add [bx+si],al
00009358  0000              add [bx+si],al
0000935A  0000              add [bx+si],al
0000935C  0000              add [bx+si],al
0000935E  0000              add [bx+si],al
00009360  0000              add [bx+si],al
00009362  0000              add [bx+si],al
00009364  0000              add [bx+si],al
00009366  0000              add [bx+si],al
00009368  0000              add [bx+si],al
0000936A  0000              add [bx+si],al
0000936C  0000              add [bx+si],al
0000936E  0000              add [bx+si],al
00009370  0000              add [bx+si],al
00009372  0000              add [bx+si],al
00009374  0007              add [bx],al
00009376  1008              adc [bx+si],cl
00009378  0000              add [bx+si],al
0000937A  0000              add [bx+si],al
0000937C  0000              add [bx+si],al
0000937E  0FC000            xadd [bx+si],al
00009381  0000              add [bx+si],al
00009383  0000              add [bx+si],al
00009385  3F                aas
00009386  F3C00000          rep rol byte [bx+si],byte 0x0
0000938A  0000              add [bx+si],al
0000938C  0AAFFD80          or ch,[bx-0x7f03]
00009390  0000              add [bx+si],al
00009392  003F              add [bx],bh
00009394  FA                cli
00009395  9F                lahf
00009396  C00000            rol byte [bx+si],byte 0x0
00009399  0019              add [bx+di],bl
0000939B  BFD980            mov di,0x80d9
0000939E  0000              add [bx+si],al
000093A0  003F              add [bx],bh
000093A2  D57C              aad 0x7c
000093A4  0000              add [bx+si],al
000093A6  0000              add [bx+si],al
000093A8  08FC              or ah,bh
000093AA  F00000            lock add [bx+si],al
000093AD  0000              add [bx+si],al
000093AF  0000              add [bx+si],al
000093B1  0000              add [bx+si],al
000093B3  0000              add [bx+si],al
000093B5  0000              add [bx+si],al
000093B7  0000              add [bx+si],al
000093B9  0000              add [bx+si],al
000093BB  0000              add [bx+si],al
000093BD  0000              add [bx+si],al
000093BF  0000              add [bx+si],al
000093C1  0000              add [bx+si],al
000093C3  0000              add [bx+si],al
000093C5  0000              add [bx+si],al
000093C7  0000              add [bx+si],al
000093C9  0000              add [bx+si],al
000093CB  0000              add [bx+si],al
000093CD  0000              add [bx+si],al
000093CF  0000              add [bx+si],al
000093D1  0000              add [bx+si],al
000093D3  0000              add [bx+si],al
000093D5  0000              add [bx+si],al
000093D7  0000              add [bx+si],al
000093D9  0000              add [bx+si],al
000093DB  0000              add [bx+si],al
000093DD  0000              add [bx+si],al
000093DF  0000              add [bx+si],al
000093E1  0000              add [bx+si],al
000093E3  0000              add [bx+si],al
000093E5  0000              add [bx+si],al
000093E7  07                pop es
000093E8  100A              adc [bp+si],cl
000093EA  AA                stosb
000093EB  AA                stosb
000093EC  800000            add byte [bx+si],0x0
000093EF  003F              add [bx],bh
000093F1  FF                db 0xff
000093F2  FFF0              push ax
000093F4  0000              add [bx+si],al
000093F6  000A              add [bp+si],cl
000093F8  AA                stosb
000093F9  AA                stosb
000093FA  800000            add byte [bx+si],0x0
000093FD  000F              add [bx],cl
000093FF  FF                db 0xff
00009400  FFC0              inc ax
00009402  0000              add [bx+si],al
00009404  0003              add [bp+di],al
00009406  FF                db 0xff
00009407  FF00              inc word [bx+si]
00009409  0000              add [bx+si],al
0000940B  0000              add [bx+si],al
0000940D  054000            add ax,0x40
00009410  0000              add [bx+si],al
00009412  0000              add [bx+si],al
00009414  054000            add ax,0x40
00009417  0000              add [bx+si],al
00009419  0000              add [bx+si],al
0000941B  054000            add ax,0x40
0000941E  0000              add [bx+si],al
00009420  0000              add [bx+si],al
00009422  054000            add ax,0x40
00009425  0000              add [bx+si],al
00009427  0000              add [bx+si],al
00009429  054000            add ax,0x40
0000942C  0000              add [bx+si],al
0000942E  0000              add [bx+si],al
00009430  054000            add ax,0x40
00009433  0000              add [bx+si],al
00009435  0000              add [bx+si],al
00009437  054000            add ax,0x40
0000943A  0000              add [bx+si],al
0000943C  0000              add [bx+si],al
0000943E  054000            add ax,0x40
00009441  0000              add [bx+si],al
00009443  0000              add [bx+si],al
00009445  054000            add ax,0x40
00009448  0000              add [bx+si],al
0000944A  0000              add [bx+si],al
0000944C  054000            add ax,0x40
0000944F  0000              add [bx+si],al
00009451  0000              add [bx+si],al
00009453  054000            add ax,0x40
00009456  0000              add [bx+si],al
00009458  0007              add [bx],al
0000945A  100F              adc [bx],cl
0000945C  F00000            lock add [bx+si],al
0000945F  0000              add [bx+si],al
00009461  000F              add [bx],cl
00009463  F03F              lock aas
00009465  C00000            rol byte [bx+si],byte 0x0
00009468  0002              add [bp+si],al
0000946A  BCFA00            mov sp,0xfa
0000946D  0000              add [bx+si],al
0000946F  0002              add [bp+si],al
00009471  AA                stosb
00009472  AA                stosb
00009473  0000              add [bx+si],al
00009475  0000              add [bx+si],al
00009477  003D              add [di],bh
00009479  F00000            lock add [bx+si],al
0000947C  0000              add [bx+si],al
0000947E  005554            add [di+0x54],dl
00009481  0000              add [bx+si],al
00009483  0000              add [bx+si],al
00009485  3F                aas
00009486  D55F              aad 0x5f
00009488  F00000            lock add [bx+si],al
0000948B  0000              add [bx+si],al
0000948D  2AA00000          sub ah,[bx+si+0x0]
00009491  0000              add [bx+si],al
00009493  03FF              add di,di
00009495  FF00              inc word [bx+si]
00009497  0000              add [bx+si],al
00009499  0000              add [bx+si],al
0000949B  FF                db 0xff
0000949C  FC                cld
0000949D  0000              add [bx+si],al
0000949F  0000              add [bx+si],al
000094A1  003C              add [si],bh
000094A3  F00000            lock add [bx+si],al
000094A6  0000              add [bx+si],al
000094A8  0000              add [bx+si],al
000094AA  0000              add [bx+si],al
000094AC  0000              add [bx+si],al
000094AE  0000              add [bx+si],al
000094B0  0000              add [bx+si],al
000094B2  0000              add [bx+si],al
000094B4  0000              add [bx+si],al
000094B6  0000              add [bx+si],al
000094B8  0000              add [bx+si],al
000094BA  0000              add [bx+si],al
000094BC  0000              add [bx+si],al
000094BE  0000              add [bx+si],al
000094C0  0000              add [bx+si],al
000094C2  0000              add [bx+si],al
000094C4  0000              add [bx+si],al
000094C6  0000              add [bx+si],al
000094C8  0000              add [bx+si],al
000094CA  0007              add [bx],al
000094CC  100F              adc [bx],cl
000094CE  F03F              lock aas
000094D0  C00000            rol byte [bx+si],byte 0x0
000094D3  0002              add [bp+si],al
000094D5  BCFA00            mov sp,0xfa
000094D8  0000              add [bx+si],al
000094DA  0000              add [bx+si],al
000094DC  3CF0              cmp al,0xf0
000094DE  0000              add [bx+si],al
000094E0  0000              add [bx+si],al
000094E2  0FD55FC0          pmullw mm3,[bx-0x40]
000094E6  0000              add [bx+si],al
000094E8  0000              add [bx+si],al
000094EA  2AA00000          sub ah,[bx+si+0x0]
000094EE  0000              add [bx+si],al
000094F0  03FF              add di,di
000094F2  FF00              inc word [bx+si]
000094F4  0000              add [bx+si],al
000094F6  0000              add [bx+si],al
000094F8  3CF0              cmp al,0xf0
000094FA  0000              add [bx+si],al
000094FC  0000              add [bx+si],al
000094FE  0000              add [bx+si],al
00009500  0000              add [bx+si],al
00009502  0000              add [bx+si],al
00009504  0000              add [bx+si],al
00009506  0000              add [bx+si],al
00009508  0000              add [bx+si],al
0000950A  0000              add [bx+si],al
0000950C  0000              add [bx+si],al
0000950E  0000              add [bx+si],al
00009510  0000              add [bx+si],al
00009512  0000              add [bx+si],al
00009514  0000              add [bx+si],al
00009516  0000              add [bx+si],al
00009518  0000              add [bx+si],al
0000951A  0000              add [bx+si],al
0000951C  0000              add [bx+si],al
0000951E  0000              add [bx+si],al
00009520  0000              add [bx+si],al
00009522  0000              add [bx+si],al
00009524  0000              add [bx+si],al
00009526  0000              add [bx+si],al
00009528  0000              add [bx+si],al
0000952A  0000              add [bx+si],al
0000952C  0000              add [bx+si],al
0000952E  0000              add [bx+si],al
00009530  0000              add [bx+si],al
00009532  0000              add [bx+si],al
00009534  0000              add [bx+si],al
00009536  0000              add [bx+si],al
00009538  0000              add [bx+si],al
0000953A  0000              add [bx+si],al
0000953C  0018              add [bx+si],bl
0000953E  21FF              and di,di
00009540  FC                cld
00009541  FFCF              dec di
00009543  FC                cld
00009544  3F                aas
00009545  00FC              add ah,bh
00009547  0F                db 0x0f
00009548  CF                iretw
00009549  0F                db 0x0f
0000954A  C3                ret
0000954B  F3F3F0FC          rep lock cld
0000954F  0FC0FC            xadd ah,bh
00009552  FC                cld
00009553  F03F              lock aas
00009555  00FC              add ah,bh
00009557  300C              xor [si],cl
00009559  30C3              xor bl,al
0000955B  0CC0              or al,0xc0
0000955D  C0                db 0xc0
0000955E  3003              xor [bp+di],al
00009560  0C30              or al,0x30
00009562  30C0              xor al,al
00009564  C0C303            rol bl,byte 0x3
00009567  0300              add ax,[bx+si]
00009569  3030              xor [bx+si],dh
0000956B  C00C03            ror byte [si],byte 0x3
0000956E  0330              add si,[bx+si]
00009570  0030              add [bx+si],dh
00009572  0300              add ax,[bx+si]
00009574  C00030            rol byte [bx+si],byte 0x30
00009577  0330              add si,[bx+si]
00009579  3030              xor [bx+si],dh
0000957B  C3                ret
0000957C  C0C300            rol bl,byte 0x0
0000957F  0300              add ax,[bx+si]
00009581  3033              xor [bp+di],dh
00009583  000C              add [si],cl
00009585  0003              add [bp+di],al
00009587  30C0              xor al,al
00009589  3003              xor [bp+di],al
0000958B  F0C00030          lock rol byte [bx+si],byte 0x30
0000958F  03F0              add si,ax
00009591  3030              xor [bx+si],dh
00009593  CC                int3
00009594  C0C300            rol bl,byte 0x0
00009597  00FF              add bh,bh
00009599  C03F00            sar byte [bx],byte 0x0
0000959C  0C00              or al,0x0
0000959E  FC                cld
0000959F  3F                aas
000095A0  C0                db 0xc0
000095A1  3003              xor [bp+di],al
000095A3  00C0              add al,al
000095A5  0030              add [bx+si],dh
000095A7  030C              add cx,[si]
000095A9  3030              xor [bx+si],dh
000095AB  F0C0C300          lock rol bl,byte 0x0
000095AF  00C0              add al,al
000095B1  C0                db 0xc0
000095B2  30C0              xor al,al
000095B4  0C03              or al,0x3
000095B6  0030              add [bx+si],dh
000095B8  C0                db 0xc0
000095B9  3003              xor [bp+di],al
000095BB  0CC0              or al,0xc0
000095BD  CC                int3
000095BE  30C3              xor bl,al
000095C0  0C30              or al,0x30
000095C2  30C0              xor al,al
000095C4  C0C303            rol bl,byte 0x3
000095C7  00C0              add al,al
000095C9  C0                db 0xc0
000095CA  30C3              xor bl,al
000095CC  0C33              or al,0x33
000095CE  0330              add si,[bx+si]
000095D0  00FC              add ah,bh
000095D2  0FFC3F            paddb mm7,[bx]
000095D5  0FFF              ud0
000095D7  CF                iretw
000095D8  F0                lock
000095D9  0F                db 0x0f
000095DA  C3                ret
000095DB  F3F3F0FC          rep lock cld
000095DF  0033              add [bp+di],dh
000095E1  00FF              add bh,bh
000095E3  03FF              add di,di
000095E5  F0FC              lock cld
000095E7  300C              xor [si],cl
000095E9  0000              add [bx+si],al
000095EB  0000              add [bx+si],al
000095ED  0000              add [bx+si],al
000095EF  0000              add [bx+si],al
000095F1  0000              add [bx+si],al
000095F3  0000              add [bx+si],al
000095F5  0000              add [bx+si],al
000095F7  0033              add [bp+di],dh
000095F9  0000              add [bx+si],al
000095FB  0000              add [bx+si],al
000095FD  0000              add [bx+si],al
000095FF  FF                db 0xff
00009600  FC                cld
00009601  0000              add [bx+si],al
00009603  0000              add [bx+si],al
00009605  0000              add [bx+si],al
00009607  0000              add [bx+si],al
00009609  0000              add [bx+si],al
0000960B  0000              add [bx+si],al
0000960D  0000              add [bx+si],al
0000960F  000C              add [si],cl
00009611  0000              add [bx+si],al
00009613  0000              add [bx+si],al
00009615  0000              add [bx+si],al
00009617  0000              add [bx+si],al
00009619  0000              add [bx+si],al
0000961B  0000              add [bx+si],al
0000961D  0000              add [bx+si],al
0000961F  0000              add [bx+si],al
00009621  0000              add [bx+si],al
00009623  0000              add [bx+si],al
00009625  0000              add [bx+si],al
00009627  0000              add [bx+si],al
00009629  0000              add [bx+si],al
0000962B  0000              add [bx+si],al
0000962D  0000              add [bx+si],al
0000962F  0000              add [bx+si],al
00009631  0000              add [bx+si],al
00009633  0000              add [bx+si],al
00009635  0000              add [bx+si],al
00009637  0000              add [bx+si],al
00009639  0000              add [bx+si],al
0000963B  0000              add [bx+si],al
0000963D  0000              add [bx+si],al
0000963F  0000              add [bx+si],al
00009641  0000              add [bx+si],al
00009643  0000              add [bx+si],al
00009645  0000              add [bx+si],al
00009647  0000              add [bx+si],al
00009649  0000              add [bx+si],al
0000964B  0000              add [bx+si],al
0000964D  0000              add [bx+si],al
0000964F  0000              add [bx+si],al
00009651  0000              add [bx+si],al
00009653  0000              add [bx+si],al
00009655  0000              add [bx+si],al
00009657  0000              add [bx+si],al
00009659  0000              add [bx+si],al
0000965B  0000              add [bx+si],al
0000965D  0000              add [bx+si],al
0000965F  0000              add [bx+si],al
00009661  0000              add [bx+si],al
00009663  0000              add [bx+si],al
00009665  FF                db 0xff
00009666  FF                db 0xff
00009667  FF                db 0xff
00009668  FFC0              inc ax
0000966A  FF                db 0xff
0000966B  FF                db 0xff
0000966C  FF                db 0xff
0000966D  FF                db 0xff
0000966E  FF                db 0xff
0000966F  FF                db 0xff
00009670  FFF0              push ax
00009672  0000              add [bx+si],al
00009674  0000              add [bx+si],al
00009676  0000              add [bx+si],al
00009678  0000              add [bx+si],al
0000967A  0000              add [bx+si],al
0000967C  03F0              add si,ax
0000967E  0000              add [bx+si],al
00009680  003F              add [bx],bh
00009682  0000              add [bx+si],al
00009684  FC                cld
00009685  0000              add [bx+si],al
00009687  03FF              add di,di
00009689  C00000            rol byte [bx+si],byte 0x0
0000968C  0000              add [bx+si],al
0000968E  0000              add [bx+si],al
00009690  0000              add [bx+si],al
00009692  0000              add [bx+si],al
00009694  0FFF              ud0
00009696  FF                db 0xff
00009697  FF                db 0xff
00009698  FF                db 0xff
00009699  FF                db 0xff
0000969A  FF                db 0xff
0000969B  FF                db 0xff
0000969C  FF                db 0xff
0000969D  FF                db 0xff
0000969E  FF                db 0xff
0000969F  FF                db 0xff
000096A0  FFC0              inc ax
000096A2  0000              add [bx+si],al
000096A4  0000              add [bx+si],al
000096A6  0000              add [bx+si],al
000096A8  0000              add [bx+si],al
000096AA  0000              add [bx+si],al
000096AC  3F                aas
000096AD  F00000            lock add [bx+si],al
000096B0  00C0              add al,al
000096B2  0000              add [bx+si],al
000096B4  3F                aas
000096B5  C00003            rol byte [bx+si],byte 0x3
000096B8  FF00              inc word [bx+si]
000096BA  0000              add [bx+si],al
000096BC  0000              add [bx+si],al
000096BE  0000              add [bx+si],al
000096C0  0000              add [bx+si],al
000096C2  0000              add [bx+si],al
000096C4  3F                aas
000096C5  FF                db 0xff
000096C6  FF                db 0xff
000096C7  FF                db 0xff
000096C8  FF                db 0xff
000096C9  FF                db 0xff
000096CA  FF                db 0xff
000096CB  FF                db 0xff
000096CC  FF                db 0xff
000096CD  FF                db 0xff
000096CE  FF                db 0xff
000096CF  FF                db 0xff
000096D0  FF00              inc word [bx+si]
000096D2  0000              add [bx+si],al
000096D4  0000              add [bx+si],al
000096D6  0000              add [bx+si],al
000096D8  0000              add [bx+si],al
000096DA  0000              add [bx+si],al
000096DC  3F                aas
000096DD  F00000            lock add [bx+si],al
000096E0  0FC000            xadd [bx+si],al
000096E3  000F              add [bx],cl
000096E5  FC                cld
000096E6  000F              add [bx],cl
000096E8  FC                cld
000096E9  0000              add [bx+si],al
000096EB  0000              add [bx+si],al
000096ED  0000              add [bx+si],al
000096EF  0000              add [bx+si],al
000096F1  0000              add [bx+si],al
000096F3  003F              add [bx],bh
000096F5  FF                db 0xff
000096F6  FF                db 0xff
000096F7  FF                db 0xff
000096F8  FF                db 0xff
000096F9  FF                db 0xff
000096FA  FF                db 0xff
000096FB  FF                db 0xff
000096FC  FF                db 0xff
000096FD  FF                db 0xff
000096FE  FF                db 0xff
000096FF  FF                db 0xff
00009700  FC                cld
00009701  0000              add [bx+si],al
00009703  0000              add [bx+si],al
00009705  0000              add [bx+si],al
00009707  0000              add [bx+si],al
00009709  0000              add [bx+si],al
0000970B  003F              add [bx],bh
0000970D  F00000            lock add [bx+si],al
00009710  3F                aas
00009711  C00000            rol byte [bx+si],byte 0x0
00009714  03FF              add di,di
00009716  000F              add [bx],cl
00009718  F00000            lock add [bx+si],al
0000971B  0000              add [bx+si],al
0000971D  0000              add [bx+si],al
0000971F  0000              add [bx+si],al
00009721  0000              add [bx+si],al
00009723  003F              add [bx],bh
00009725  FF                db 0xff
00009726  FF                db 0xff
00009727  FF                db 0xff
00009728  FF                db 0xff
00009729  FF                db 0xff
0000972A  FF                db 0xff
0000972B  FF                db 0xff
0000972C  FF                db 0xff
0000972D  FF                db 0xff
0000972E  FF                db 0xff
0000972F  FFF0              push ax
00009731  0000              add [bx+si],al
00009733  0000              add [bx+si],al
00009735  0000              add [bx+si],al
00009737  0000              add [bx+si],al
00009739  0000              add [bx+si],al
0000973B  003F              add [bx],bh
0000973D  F00000            lock add [bx+si],al
00009740  3F                aas
00009741  C00000            rol byte [bx+si],byte 0x0
00009744  00FF              add bh,bh
00009746  003F              add [bx],bh
00009748  C00000            rol byte [bx+si],byte 0x0
0000974B  0000              add [bx+si],al
0000974D  0000              add [bx+si],al
0000974F  0000              add [bx+si],al
00009751  0000              add [bx+si],al
00009753  003F              add [bx],bh
00009755  FF                db 0xff
00009756  FF                db 0xff
00009757  FF                db 0xff
00009758  FF                db 0xff
00009759  FF                db 0xff
0000975A  FF                db 0xff
0000975B  FF                db 0xff
0000975C  FF                db 0xff
0000975D  FF                db 0xff
0000975E  FF                db 0xff
0000975F  FFC0              inc ax
00009761  0000              add [bx+si],al
00009763  0000              add [bx+si],al
00009765  0000              add [bx+si],al
00009767  0000              add [bx+si],al
00009769  0000              add [bx+si],al
0000976B  003F              add [bx],bh
0000976D  F00000            lock add [bx+si],al
00009770  3F                aas
00009771  C00000            rol byte [bx+si],byte 0x0
00009774  003F              add [bx],bh
00009776  003F              add [bx],bh
00009778  0000              add [bx+si],al
0000977A  0000              add [bx+si],al
0000977C  0000              add [bx+si],al
0000977E  0000              add [bx+si],al
00009780  0000              add [bx+si],al
00009782  0000              add [bx+si],al
00009784  3F                aas
00009785  FF                db 0xff
00009786  FF                db 0xff
00009787  FF                db 0xff
00009788  FF                db 0xff
00009789  FF                db 0xff
0000978A  FF                db 0xff
0000978B  FF                db 0xff
0000978C  FF                db 0xff
0000978D  FF                db 0xff
0000978E  FF                db 0xff
0000978F  FF00              inc word [bx+si]
00009791  0000              add [bx+si],al
00009793  0000              add [bx+si],al
00009795  0000              add [bx+si],al
00009797  0000              add [bx+si],al
00009799  0000              add [bx+si],al
0000979B  003F              add [bx],bh
0000979D  F00000            lock add [bx+si],al
000097A0  3F                aas
000097A1  C00000            rol byte [bx+si],byte 0x0
000097A4  0000              add [bx+si],al
000097A6  00FC              add ah,bh
000097A8  0000              add [bx+si],al
000097AA  0000              add [bx+si],al
000097AC  0000              add [bx+si],al
000097AE  0000              add [bx+si],al
000097B0  0000              add [bx+si],al
000097B2  0000              add [bx+si],al
000097B4  3F                aas
000097B5  FF                db 0xff
000097B6  FF                db 0xff
000097B7  FF                db 0xff
000097B8  FF                db 0xff
000097B9  FF                db 0xff
000097BA  FF                db 0xff
000097BB  FF                db 0xff
000097BC  FF                db 0xff
000097BD  FF                db 0xff
000097BE  FF                db 0xff
000097BF  FC                cld
000097C0  0000              add [bx+si],al
000097C2  0000              add [bx+si],al
000097C4  0000              add [bx+si],al
000097C6  0000              add [bx+si],al
000097C8  0000              add [bx+si],al
000097CA  0000              add [bx+si],al
000097CC  3F                aas
000097CD  F00000            lock add [bx+si],al
000097D0  0FC000            xadd [bx+si],al
000097D3  0000              add [bx+si],al
000097D5  0000              add [bx+si],al
000097D7  F00000            lock add [bx+si],al
000097DA  0000              add [bx+si],al
000097DC  0000              add [bx+si],al
000097DE  0000              add [bx+si],al
000097E0  0000              add [bx+si],al
000097E2  0000              add [bx+si],al
000097E4  3F                aas
000097E5  FF                db 0xff
000097E6  FF                db 0xff
000097E7  FF                db 0xff
000097E8  FF                db 0xff
000097E9  FF                db 0xff
000097EA  FF                db 0xff
000097EB  FF                db 0xff
000097EC  FFF0              push ax
000097EE  FFF0              push ax
000097F0  0000              add [bx+si],al
000097F2  0000              add [bx+si],al
000097F4  0000              add [bx+si],al
000097F6  0000              add [bx+si],al
000097F8  0000              add [bx+si],al
000097FA  0000              add [bx+si],al
000097FC  3F                aas
000097FD  F00000            lock add [bx+si],al
00009800  00C0              add al,al
00009802  0000              add [bx+si],al
00009804  0000              add [bx+si],al
00009806  00C0              add al,al
00009808  0000              add [bx+si],al
0000980A  0000              add [bx+si],al
0000980C  0000              add [bx+si],al
0000980E  0000              add [bx+si],al
00009810  0000              add [bx+si],al
00009812  0000              add [bx+si],al
00009814  0FFF              ud0
00009816  FF                db 0xff
00009817  FF                db 0xff
00009818  FF                db 0xff
00009819  FF                db 0xff
0000981A  FF                db 0xff
0000981B  FF                db 0xff
0000981C  FF00              inc word [bx+si]
0000981E  3F                aas
0000981F  C00000            rol byte [bx+si],byte 0x0
00009822  0000              add [bx+si],al
00009824  0000              add [bx+si],al
00009826  0000              add [bx+si],al
00009828  0000              add [bx+si],al
0000982A  0000              add [bx+si],al
0000982C  03F0              add si,ax
0000982E  0000              add [bx+si],al
00009830  000F              add [bx],cl
00009832  0000              add [bx+si],al
00009834  0000              add [bx+si],al
00009836  0300              add ax,[bx+si]
00009838  0000              add [bx+si],al
0000983A  0000              add [bx+si],al
0000983C  0000              add [bx+si],al
0000983E  0000              add [bx+si],al
00009840  0000              add [bx+si],al
00009842  0000              add [bx+si],al
00009844  00FF              add bh,bh
00009846  FF                db 0xff
00009847  FF                db 0xff
00009848  FFC0              inc ax
0000984A  FF                db 0xff
0000984B  FFC0              inc ax
0000984D  000F              add [bx],cl
0000984F  0000              add [bx+si],al
00009851  0000              add [bx+si],al
00009853  0000              add [bx+si],al
00009855  0000              add [bx+si],al
00009857  2E1400            cs adc al,0x0
0000985A  55                push bp
0000985B  55                push bp
0000985C  55                push bp
0000985D  55                push bp
0000985E  55                push bp
0000985F  55                push bp
00009860  55                push bp
00009861  55                push bp
00009862  55                push bp
00009863  55                push bp
00009864  55                push bp
00009865  55                push bp
00009866  55                push bp
00009867  55                push bp
00009868  55                push bp
00009869  55                push bp
0000986A  55                push bp
0000986B  55                push bp
0000986C  55                push bp
0000986D  55                push bp
0000986E  55                push bp
0000986F  55                push bp
00009870  55                push bp
00009871  55                push bp
00009872  55                push bp
00009873  55                push bp
00009874  55                push bp
00009875  55                push bp
00009876  55                push bp
00009877  55                push bp
00009878  55                push bp
00009879  55                push bp
0000987A  55                push bp
0000987B  55                push bp
0000987C  55                push bp
0000987D  55                push bp
0000987E  55                push bp
0000987F  55                push bp
00009880  55                push bp
00009881  55                push bp
00009882  55                push bp
00009883  55                push bp
00009884  55                push bp
00009885  40                inc ax
00009886  0005              add [di],al
00009888  55                push bp
00009889  55                push bp
0000988A  55                push bp
0000988B  55                push bp
0000988C  55                push bp
0000988D  55                push bp
0000988E  55                push bp
0000988F  55                push bp
00009890  55                push bp
00009891  55                push bp
00009892  55                push bp
00009893  55                push bp
00009894  55                push bp
00009895  55                push bp
00009896  55                push bp
00009897  55                push bp
00009898  55                push bp
00009899  55                push bp
0000989A  55                push bp
0000989B  55                push bp
0000989C  55                push bp
0000989D  55                push bp
0000989E  55                push bp
0000989F  55                push bp
000098A0  55                push bp
000098A1  55                push bp
000098A2  55                push bp
000098A3  55                push bp
000098A4  55                push bp
000098A5  55                push bp
000098A6  55                push bp
000098A7  55                push bp
000098A8  55                push bp
000098A9  55                push bp
000098AA  55                push bp
000098AB  55                push bp
000098AC  55                push bp
000098AD  55                push bp
000098AE  55                push bp
000098AF  55                push bp
000098B0  55                push bp
000098B1  55                push bp
000098B2  55                push bp
000098B3  54                push sp
000098B4  00AAAAAA          add [bp+si-0x5556],ch
000098B8  AA                stosb
000098B9  AA                stosb
000098BA  AA                stosb
000098BB  AA                stosb
000098BC  AA                stosb
000098BD  AA                stosb
000098BE  AA                stosb
000098BF  AA                stosb
000098C0  AA                stosb
000098C1  AA                stosb
000098C2  AA                stosb
000098C3  AA                stosb
000098C4  AA                stosb
000098C5  AA                stosb
000098C6  AA                stosb
000098C7  AA                stosb
000098C8  AA                stosb
000098C9  AA                stosb
000098CA  AA                stosb
000098CB  AA                stosb
000098CC  AA                stosb
000098CD  AA                stosb
000098CE  AA                stosb
000098CF  AA                stosb
000098D0  AA                stosb
000098D1  AA                stosb
000098D2  AA                stosb
000098D3  AA                stosb
000098D4  AA                stosb
000098D5  AA                stosb
000098D6  AA                stosb
000098D7  AA                stosb
000098D8  AA                stosb
000098D9  AA                stosb
000098DA  AA                stosb
000098DB  AA                stosb
000098DC  AA                stosb
000098DD  AA                stosb
000098DE  AA                stosb
000098DF  AA                stosb
000098E0  AA                stosb
000098E1  AA                stosb
000098E2  800000            add byte [bx+si],0x0
000098E5  0000              add [bx+si],al
000098E7  0000              add [bx+si],al
000098E9  0000              add [bx+si],al
000098EB  0000              add [bx+si],al
000098ED  0000              add [bx+si],al
000098EF  0000              add [bx+si],al
000098F1  0000              add [bx+si],al
000098F3  0000              add [bx+si],al
000098F5  0000              add [bx+si],al
000098F7  0000              add [bx+si],al
000098F9  0000              add [bx+si],al
000098FB  0000              add [bx+si],al
000098FD  0000              add [bx+si],al
000098FF  0000              add [bx+si],al
00009901  0000              add [bx+si],al
00009903  0000              add [bx+si],al
00009905  0000              add [bx+si],al
00009907  0000              add [bx+si],al
00009909  0000              add [bx+si],al
0000990B  0000              add [bx+si],al
0000990D  0000              add [bx+si],al
0000990F  0000              add [bx+si],al
00009911  3F                aas
00009912  000F              add [bx],cl
00009914  CF                iretw
00009915  C000FC            rol byte [bx+si],byte 0xfc
00009918  3F                aas
00009919  003F              add [bx],bh
0000991B  C3                ret
0000991C  F3FF00            rep inc word [bx+si]
0000991F  0000              add [bx+si],al
00009921  0003              add [bp+di],al
00009923  F000FC            lock add ah,bh
00009926  3F                aas
00009927  0003              add [bp+di],al
00009929  F003FC            lock add di,sp
0000992C  0000              add [bx+si],al
0000992E  0000              add [bx+si],al
00009930  0FC003            xadd [bp+di],al
00009933  F0FC              lock cld
00009935  000F              add [bx],cl
00009937  C00F0F            ror byte [bx],byte 0xf
0000993A  003F              add [bx],bh
0000993C  003F              add [bx],bh
0000993E  C03F00            sar byte [bx],byte 0x0
00009941  0F                db 0x0f
00009942  CF                iretw
00009943  C000FC            rol byte [bx+si],byte 0xfc
00009946  3F                aas
00009947  00FF              add bh,bh
00009949  03F3              add si,bx
0000994B  FFC0              inc ax
0000994D  0000              add [bx+si],al
0000994F  0003              add [bp+di],al
00009951  F000FC            lock add ah,bh
00009954  3F                aas
00009955  0003              add [bp+di],al
00009957  F003FC            lock add di,sp
0000995A  0000              add [bx+si],al
0000995C  0000              add [bx+si],al
0000995E  0FC003            xadd [bp+di],al
00009961  F0FC              lock cld
00009963  000F              add [bx],cl
00009965  C0FF0F            sar bh,byte 0xf
00009968  F03F              lock aas
0000996A  00FF              add bh,bh
0000996C  003F              add [bx],bh
0000996E  000F              add [bx],cl
00009970  C3                ret
00009971  F3FFF0            rep push ax
00009974  3F                aas
00009975  03FC              add di,sp
00009977  03F3              add si,bx
00009979  FFF0              push ax
0000997B  0000              add [bx+si],al
0000997D  0003              add [bp+di],al
0000997F  F000FC            lock add ah,bh
00009982  0F                db 0x0f
00009983  CF                iretw
00009984  FFC0              inc ax
00009986  03FC              add di,sp
00009988  0000              add [bx+si],al
0000998A  0000              add [bx+si],al
0000998C  0FC003            xadd [bp+di],al
0000998F  F03F              lock aas
00009991  0FFF              ud0
00009993  03FF              add di,di
00009995  0FFC3F            paddb mm7,[bx]
00009998  03FC              add di,sp
0000999A  003F              add [bx],bh
0000999C  000F              add [bx],cl
0000999E  C3                ret
0000999F  F0FFF0            lock push ax
000099A2  3F                aas
000099A3  0F                db 0x0f
000099A4  F003F0            lock add si,ax
000099A7  03FC              add di,sp
000099A9  0000              add [bx+si],al
000099AB  0003              add [bp+di],al
000099AD  F000FC            lock add ah,bh
000099B0  0F                db 0x0f
000099B1  C3                ret
000099B2  FFC0              inc ax
000099B4  03FC              add di,sp
000099B6  0000              add [bx+si],al
000099B8  0000              add [bx+si],al
000099BA  0FC003            xadd [bp+di],al
000099BD  F03F              lock aas
000099BF  0FFF              ud0
000099C1  03F0              add si,ax
000099C3  00FC              add ah,bh
000099C5  3F                aas
000099C6  0F                db 0x0f
000099C7  F0003F            lock add [bx],bh
000099CA  000F              add [bx],cl
000099CC  C0FC0F            sar ah,byte 0xf
000099CF  C03F00            sar byte [bx],byte 0x0
000099D2  0003              add [bp+di],al
000099D4  F000FC            lock add ah,bh
000099D7  0000              add [bx+si],al
000099D9  0003              add [bp+di],al
000099DB  F000FC            lock add ah,bh
000099DE  03F0              add si,ax
000099E0  3F                aas
000099E1  0003              add [bp+di],al
000099E3  FC                cld
000099E4  0000              add [bx+si],al
000099E6  0000              add [bx+si],al
000099E8  0FC003            xadd [bp+di],al
000099EB  F00FC0FC          lock xadd ah,bh
000099EF  0FC000            xadd [bx+si],al
000099F2  003F              add [bx],bh
000099F4  3F                aas
000099F5  C0003F            rol byte [bx+si],byte 0x3f
000099F8  3F                aas
000099F9  CF                iretw
000099FA  C0FC0F            sar ah,byte 0xf
000099FD  C03F3F            sar byte [bx],byte 0x3f
00009A00  C003F0            rol byte [bp+di],byte 0xf0
00009A03  00FC              add ah,bh
00009A05  0000              add [bx+si],al
00009A07  0003              add [bp+di],al
00009A09  F3FC              rep cld
00009A0B  FC                cld
00009A0C  03F0              add si,ax
00009A0E  3F                aas
00009A0F  0003              add [bp+di],al
00009A11  FC                cld
00009A12  0000              add [bx+si],al
00009A14  0000              add [bx+si],al
00009A16  0FC003            xadd [bp+di],al
00009A19  F00FC0FC          lock xadd ah,bh
00009A1D  0FC000            xadd [bx+si],al
00009A20  003F              add [bx],bh
00009A22  3F                aas
00009A23  0000              add [bx+si],al
00009A25  3F                aas
00009A26  3F                aas
00009A27  CF                iretw
00009A28  C03F3F            sar byte [bx],byte 0x3f
00009A2B  003F              add [bx],bh
00009A2D  3F                aas
00009A2E  FC                cld
00009A2F  03F0              add si,ax
00009A31  00FC              add ah,bh
00009A33  0000              add [bx+si],al
00009A35  0003              add [bp+di],al
00009A37  F3FC              rep cld
00009A39  FC                cld
00009A3A  00FC              add ah,bh
00009A3C  FC                cld
00009A3D  0003              add [bp+di],al
00009A3F  FC                cld
00009A40  0000              add [bx+si],al
00009A42  0000              add [bx+si],al
00009A44  0F                db 0x0f
00009A45  C3                ret
00009A46  C3                ret
00009A47  F003C3            lock add ax,bx
00009A4A  F00FC000          lock xadd [bx+si],al
00009A4E  003F              add [bx],bh
00009A50  3C00              cmp al,0x0
00009A52  003F              add [bx],bh
00009A54  3F                aas
00009A55  CF                iretw
00009A56  C03C3F            sar byte [si],byte 0x3f
00009A59  003F              add [bx],bh
00009A5B  3F                aas
00009A5C  FF03              inc word [bp+di]
00009A5E  F000FC            lock add ah,bh
00009A61  0000              add [bx+si],al
00009A63  0003              add [bp+di],al
00009A65  F3FC              rep cld
00009A67  FC                cld
00009A68  00F0              add al,dh
00009A6A  FC                cld
00009A6B  0003              add [bp+di],al
00009A6D  FC                cld
00009A6E  0000              add [bx+si],al
00009A70  0000              add [bx+si],al
00009A72  0F                db 0x0f
00009A73  0FF3F0            psllq mm6,mm0
00009A76  0303              add ax,[bp+di]
00009A78  F00FC000          lock xadd [bx+si],al
00009A7C  003F              add [bx],bh
00009A7E  3000              xor [bx+si],al
00009A80  003F              add [bx],bh
00009A82  000F              add [bx],cl
00009A84  C000FC            rol byte [bx+si],byte 0xfc
00009A87  003F              add [bx],bh
00009A89  003F              add [bx],bh
00009A8B  03F0              add si,ax
00009A8D  00FC              add ah,bh
00009A8F  0000              add [bx+si],al
00009A91  0003              add [bp+di],al
00009A93  F000FC            lock add ah,bh
00009A96  0003              add [bp+di],al
00009A98  F00003            lock add [bp+di],al
00009A9B  FC                cld
00009A9C  0000              add [bx+si],al
00009A9E  0000              add [bx+si],al
00009AA0  0C3F              or al,0x3f
00009AA2  FFF0              push ax
00009AA4  000F              add [bx],cl
00009AA6  C00FC0            ror byte [bx],byte 0xc0
00009AA9  0000              add [bx+si],al
00009AAB  3F                aas
00009AAC  03C0              add ax,ax
00009AAE  003F              add [bx],bh
00009AB0  000F              add [bx],cl
00009AB2  C000FC            rol byte [bx+si],byte 0xfc
00009AB5  003F              add [bx],bh
00009AB7  003F              add [bx],bh
00009AB9  03F0              add si,ax
00009ABB  03FC              add di,sp
00009ABD  0000              add [bx+si],al
00009ABF  0003              add [bp+di],al
00009AC1  F000FC            lock add ah,bh
00009AC4  0003              add [bp+di],al
00009AC6  F00000            lock add [bx+si],al
00009AC9  0000              add [bx+si],al
00009ACB  0000              add [bx+si],al
00009ACD  0000              add [bx+si],al
00009ACF  FF                db 0xff
00009AD0  FFF0              push ax
00009AD2  000F              add [bx],cl
00009AD4  C003F0            rol byte [bp+di],byte 0xf0
00009AD7  00FC              add ah,bh
00009AD9  3F                aas
00009ADA  0F                db 0x0f
00009ADB  F0003F            lock add [bx],bh
00009ADE  000F              add [bx],cl
00009AE0  C003F0            rol byte [bp+di],byte 0xf0
00009AE3  003F              add [bx],bh
00009AE5  3F                aas
00009AE6  FF03              inc word [bp+di]
00009AE8  F3FFF0            rep push ax
00009AEB  0000              add [bx+si],al
00009AED  0003              add [bp+di],al
00009AEF  F000FC            lock add ah,bh
00009AF2  000F              add [bx],cl
00009AF4  C003FF            rol byte [bp+di],byte 0xff
00009AF7  FF                db 0xff
00009AF8  FC                cld
00009AF9  0000              add [bx+si],al
00009AFB  0003              add [bp+di],al
00009AFD  FC                cld
00009AFE  3F                aas
00009AFF  F0003F            lock add [bx],bh
00009B02  0003              add [bp+di],al
00009B04  FF0F              dec word [bx]
00009B06  FC                cld
00009B07  3F                aas
00009B08  03FC              add di,sp
00009B0A  003F              add [bx],bh
00009B0C  000F              add [bx],cl
00009B0E  C003F0            rol byte [bp+di],byte 0xf0
00009B11  003F              add [bx],bh
00009B13  3F                aas
00009B14  FC                cld
00009B15  03F3              add si,bx
00009B17  FFC0              inc ax
00009B19  0000              add [bx+si],al
00009B1B  0003              add [bp+di],al
00009B1D  F000FC            lock add ah,bh
00009B20  000F              add [bx],cl
00009B22  C003FF            rol byte [bp+di],byte 0xff
00009B25  FF                db 0xff
00009B26  FC                cld
00009B27  0000              add [bx+si],al
00009B29  000F              add [bx],cl
00009B2B  F0                lock
00009B2C  0F                db 0x0f
00009B2D  F0003F            lock add [bx],bh
00009B30  0000              add [bx+si],al
00009B32  FF0F              dec word [bx]
00009B34  F03F              lock aas
00009B36  00FF              add bh,bh
00009B38  003F              add [bx],bh
00009B3A  000F              add [bx],cl
00009B3C  C000C0            rol byte [bx+si],byte 0xc0
00009B3F  003F              add [bx],bh
00009B41  3F                aas
00009B42  C003F3            rol byte [bp+di],byte 0xf3
00009B45  FF00              inc word [bx+si]
00009B47  0000              add [bx+si],al
00009B49  0003              add [bp+di],al
00009B4B  F000FC            lock add ah,bh
00009B4E  0003              add [bp+di],al
00009B50  0003              add [bp+di],al
00009B52  FF                db 0xff
00009B53  FF                db 0xff
00009B54  FC                cld
00009B55  0000              add [bx+si],al
00009B57  000F              add [bx],cl
00009B59  C003F0            rol byte [bp+di],byte 0xf0
00009B5C  000C              add [si],cl
00009B5E  0000              add [bx+si],al
00009B60  0F                db 0x0f
00009B61  0F                db 0x0f
00009B62  003F              add [bx],bh
00009B64  003F              add [bx],bh
00009B66  C00000            rol byte [bx+si],byte 0x0
00009B69  0000              add [bx+si],al
00009B6B  0000              add [bx+si],al
00009B6D  0000              add [bx+si],al
00009B6F  0000              add [bx+si],al
00009B71  0000              add [bx+si],al
00009B73  0000              add [bx+si],al
00009B75  0000              add [bx+si],al
00009B77  0000              add [bx+si],al
00009B79  0000              add [bx+si],al
00009B7B  0000              add [bx+si],al
00009B7D  0000              add [bx+si],al
00009B7F  0000              add [bx+si],al
00009B81  0000              add [bx+si],al
00009B83  0000              add [bx+si],al
00009B85  0000              add [bx+si],al
00009B87  0000              add [bx+si],al
00009B89  0000              add [bx+si],al
00009B8B  0000              add [bx+si],al
00009B8D  0000              add [bx+si],al
00009B8F  0000              add [bx+si],al
00009B91  0000              add [bx+si],al
00009B93  0000              add [bx+si],al
00009B95  AA                stosb
00009B96  AA                stosb
00009B97  AA                stosb
00009B98  AA                stosb
00009B99  AA                stosb
00009B9A  AA                stosb
00009B9B  AA                stosb
00009B9C  AA                stosb
00009B9D  AA                stosb
00009B9E  AA                stosb
00009B9F  AA                stosb
00009BA0  AA                stosb
00009BA1  AA                stosb
00009BA2  AA                stosb
00009BA3  AA                stosb
00009BA4  AA                stosb
00009BA5  AA                stosb
00009BA6  AA                stosb
00009BA7  AA                stosb
00009BA8  AA                stosb
00009BA9  AA                stosb
00009BAA  AA                stosb
00009BAB  AA                stosb
00009BAC  AA                stosb
00009BAD  AA                stosb
00009BAE  AA                stosb
00009BAF  AA                stosb
00009BB0  AA                stosb
00009BB1  AA                stosb
00009BB2  AA                stosb
00009BB3  AA                stosb
00009BB4  AA                stosb
00009BB5  AA                stosb
00009BB6  AA                stosb
00009BB7  AA                stosb
00009BB8  AA                stosb
00009BB9  AA                stosb
00009BBA  AA                stosb
00009BBB  AA                stosb
00009BBC  AA                stosb
00009BBD  AA                stosb
00009BBE  AA                stosb
00009BBF  AA                stosb
00009BC0  AA                stosb
00009BC1  AA                stosb
00009BC2  800555            add byte [di],0x55
00009BC5  55                push bp
00009BC6  55                push bp
00009BC7  55                push bp
00009BC8  55                push bp
00009BC9  55                push bp
00009BCA  55                push bp
00009BCB  55                push bp
00009BCC  55                push bp
00009BCD  55                push bp
00009BCE  55                push bp
00009BCF  55                push bp
00009BD0  55                push bp
00009BD1  55                push bp
00009BD2  55                push bp
00009BD3  55                push bp
00009BD4  55                push bp
00009BD5  55                push bp
00009BD6  55                push bp
00009BD7  55                push bp
00009BD8  55                push bp
00009BD9  55                push bp
00009BDA  55                push bp
00009BDB  55                push bp
00009BDC  55                push bp
00009BDD  55                push bp
00009BDE  55                push bp
00009BDF  55                push bp
00009BE0  55                push bp
00009BE1  55                push bp
00009BE2  55                push bp
00009BE3  55                push bp
00009BE4  55                push bp
00009BE5  55                push bp
00009BE6  55                push bp
00009BE7  55                push bp
00009BE8  55                push bp
00009BE9  55                push bp
00009BEA  55                push bp
00009BEB  55                push bp
00009BEC  55                push bp
00009BED  55                push bp
00009BEE  55                push bp
00009BEF  54                push sp
00009BF0  000E163F          add [0x3f16],cl
00009BF4  FC                cld
00009BF5  0000              add [bx+si],al
00009BF7  0000              add [bx+si],al
00009BF9  0000              add [bx+si],al
00009BFB  0000              add [bx+si],al
00009BFD  0FFF              ud0
00009BFF  FFF0              push ax
00009C01  FF                db 0xff
00009C02  BFF000            mov di,0xf0
00009C05  0000              add [bx+si],al
00009C07  0000              add [bx+si],al
00009C09  0000              add [bx+si],al
00009C0B  05555F            add ax,0x5f55
00009C0E  F0                lock
00009C0F  FF                db 0xff
00009C10  BFFFC0            mov di,0xc0ff
00009C13  0000              add [bx+si],al
00009C15  0000              add [bx+si],al
00009C17  0000              add [bx+si],al
00009C19  03D5              add dx,bp
00009C1B  5F                pop di
00009C1C  F0                lock
00009C1D  FF                db 0xff
00009C1E  BFABFF            mov di,0xffab
00009C21  0000              add [bx+si],al
00009C23  0000              add [bx+si],al
00009C25  0000              add [bx+si],al
00009C27  00FF              add bh,bh
00009C29  FFF0              push ax
00009C2B  FF                db 0xff
00009C2C  BFAAAB            mov di,0xabaa
00009C2F  FC                cld
00009C30  0000              add [bx+si],al
00009C32  0000              add [bx+si],al
00009C34  0000              add [bx+si],al
00009C36  0003              add [bp+di],al
00009C38  F03F              lock aas
00009C3A  FFABFABF          jmp word far [bp+di-0x4006]
00009C3E  F00000            lock add [bx+si],al
00009C41  0000              add [bx+si],al
00009C43  0000              add [bx+si],al
00009C45  03F0              add si,ax
00009C47  00FF              add bh,bh
00009C49  FB                sti
00009C4A  FA                cli
00009C4B  AA                stosb
00009C4C  AF                scasw
00009C4D  C00000            rol byte [bx+si],byte 0x0
00009C50  0000              add [bx+si],al
00009C52  0003              add [bp+di],al
00009C54  F00003            lock add [bp+di],al
00009C57  FFAABFAB          jmp word far [bp+si-0x5441]
00009C5B  FF00              inc word [bx+si]
00009C5D  0000              add [bx+si],al
00009C5F  0000              add [bx+si],al
00009C61  03F0              add si,ax
00009C63  0000              add [bx+si],al
00009C65  0FFABFAAAB        psubd mm7,[bx-0x5456]
00009C6A  FC                cld
00009C6B  0000              add [bx+si],al
00009C6D  0000              add [bx+si],al
00009C6F  03F0              add si,ax
00009C71  0000              add [bx+si],al
00009C73  003F              add [bx],bh
00009C75  FA                cli
00009C76  AB                stosw
00009C77  FA                cli
00009C78  BFF000            mov di,0xf0
00009C7B  0000              add [bx+si],al
00009C7D  03F0              add si,ax
00009C7F  0000              add [bx+si],al
00009C81  0000              add [bx+si],al
00009C83  FFABFAAA          jmp word far [bp+di-0x5506]
00009C87  BFC000            mov di,0xc0
00009C8A  0003              add [bp+di],al
00009C8C  F00000            lock add [bx+si],al
00009C8F  0000              add [bx+si],al
00009C91  03FF              add di,di
00009C93  AA                stosb
00009C94  BFABFF            mov di,0xffab
00009C97  0000              add [bx+si],al
00009C99  03F0              add si,ax
00009C9B  0000              add [bx+si],al
00009C9D  0000              add [bx+si],al
00009C9F  000F              add [bx],cl
00009CA1  FA                cli
00009CA2  BFAAAB            mov di,0xabaa
00009CA5  FC                cld
00009CA6  0003              add [bp+di],al
00009CA8  F00000            lock add [bx+si],al
00009CAB  0000              add [bx+si],al
00009CAD  0000              add [bx+si],al
00009CAF  3F                aas
00009CB0  FA                cli
00009CB1  AB                stosw
00009CB2  FA                cli
00009CB3  BFF003            mov di,0x3f0
00009CB6  F00000            lock add [bx+si],al
00009CB9  0000              add [bx+si],al
00009CBB  0000              add [bx+si],al
00009CBD  00FF              add bh,bh
00009CBF  AB                stosw
00009CC0  FA                cli
00009CC1  AA                stosb
00009CC2  BFC3F0            mov di,0xf0c3
00009CC5  0000              add [bx+si],al
00009CC7  0000              add [bx+si],al
00009CC9  0000              add [bx+si],al
00009CCB  0003              add [bp+di],al
00009CCD  FFAABFAB          jmp word far [bp+si-0x5441]
00009CD1  FFF0              push ax
00009CD3  0000              add [bx+si],al
00009CD5  0000              add [bx+si],al
00009CD7  0000              add [bx+si],al
00009CD9  0000              add [bx+si],al
00009CDB  0FFABFAABF        psubd mm7,[bx-0x4056]
00009CE0  FC                cld
00009CE1  0000              add [bx+si],al
00009CE3  0000              add [bx+si],al
00009CE5  0000              add [bx+si],al
00009CE7  0000              add [bx+si],al
00009CE9  003F              add [bx],bh
00009CEB  FA                cli
00009CEC  AA                stosb
00009CED  BFBF00            mov di,0xbf
00009CF0  0000              add [bx+si],al
00009CF2  0000              add [bx+si],al
00009CF4  0000              add [bx+si],al
00009CF6  0000              add [bx+si],al
00009CF8  00FF              add bh,bh
00009CFA  AA                stosb
00009CFB  BFBF00            mov di,0xbf
00009CFE  0000              add [bx+si],al
00009D00  0000              add [bx+si],al
00009D02  0000              add [bx+si],al
00009D04  0000              add [bx+si],al
00009D06  0003              add [bp+di],al
00009D08  FF                db 0xff
00009D09  BFBF00            mov di,0xbf
00009D0C  0000              add [bx+si],al
00009D0E  0000              add [bx+si],al
00009D10  0000              add [bx+si],al
00009D12  0000              add [bx+si],al
00009D14  0000              add [bx+si],al
00009D16  0FFF              ud0
00009D18  BF0000            mov di,0x0
00009D1B  0000              add [bx+si],al
00009D1D  0000              add [bx+si],al
00009D1F  0000              add [bx+si],al
00009D21  0000              add [bx+si],al
00009D23  0000              add [bx+si],al
00009D25  3F                aas
00009D26  FC                cld
00009D27  150800            adc ax,0x8
00009D2A  AA                stosb
00009D2B  AA                stosb
00009D2C  AA                stosb
00009D2D  AA                stosb
00009D2E  AA                stosb
00009D2F  AA                stosb
00009D30  AA                stosb
00009D31  AA                stosb
00009D32  AA                stosb
00009D33  AA                stosb
00009D34  AA                stosb
00009D35  AA                stosb
00009D36  AA                stosb
00009D37  AA                stosb
00009D38  AA                stosb
00009D39  AA                stosb
00009D3A  AA                stosb
00009D3B  AA                stosb
00009D3C  A800              test al,0x0
00009D3E  2AFF              sub bh,bh
00009D40  FF                db 0xff
00009D41  FF                db 0xff
00009D42  FF                db 0xff
00009D43  FF                db 0xff
00009D44  FF                db 0xff
00009D45  FF                db 0xff
00009D46  FF                db 0xff
00009D47  FF                db 0xff
00009D48  FF                db 0xff
00009D49  FF                db 0xff
00009D4A  FF                db 0xff
00009D4B  FF                db 0xff
00009D4C  FF                db 0xff
00009D4D  FF                db 0xff
00009D4E  FF                db 0xff
00009D4F  FF                db 0xff
00009D50  FF                db 0xff
00009D51  FE80AFF5          inc byte [bx+si-0xa51]
00009D55  55                push bp
00009D56  50                push ax
00009D57  0000              add [bx+si],al
00009D59  0000              add [bx+si],al
00009D5B  0000              add [bx+si],al
00009D5D  0000              add [bx+si],al
00009D5F  0000              add [bx+si],al
00009D61  0000              add [bx+si],al
00009D63  0015              add [di],dl
00009D65  55                push bp
00009D66  7FE8              jg 0x9d50
00009D68  AF                scasw
00009D69  F5                cmc
00009D6A  7F50              jg 0x9dbc
00009D6C  0000              add [bx+si],al
00009D6E  0000              add [bx+si],al
00009D70  0000              add [bx+si],al
00009D72  0000              add [bx+si],al
00009D74  0000              add [bx+si],al
00009D76  0000              add [bx+si],al
00009D78  0017              add [bx],dl
00009D7A  F5                cmc
00009D7B  7FE8              jg 0x9d65
00009D7D  AF                scasw
00009D7E  F5                cmc
00009D7F  7F50              jg 0x9dd1
00009D81  0000              add [bx+si],al
00009D83  0000              add [bx+si],al
00009D85  0000              add [bx+si],al
00009D87  0000              add [bx+si],al
00009D89  0000              add [bx+si],al
00009D8B  0000              add [bx+si],al
00009D8D  0017              add [bx],dl
00009D8F  F5                cmc
00009D90  7FE8              jg 0x9d7a
00009D92  AF                scasw
00009D93  F5                cmc
00009D94  55                push bp
00009D95  50                push ax
00009D96  0000              add [bx+si],al
00009D98  0000              add [bx+si],al
00009D9A  0000              add [bx+si],al
00009D9C  0000              add [bx+si],al
00009D9E  0000              add [bx+si],al
00009DA0  0000              add [bx+si],al
00009DA2  0015              add [di],dl
00009DA4  55                push bp
00009DA5  7FE8              jg 0x9d8f
00009DA7  2AFF              sub bh,bh
00009DA9  FF                db 0xff
00009DAA  FF                db 0xff
00009DAB  FF                db 0xff
00009DAC  FF                db 0xff
00009DAD  FF                db 0xff
00009DAE  FF                db 0xff
00009DAF  FF                db 0xff
00009DB0  FF                db 0xff
00009DB1  FF                db 0xff
00009DB2  FF                db 0xff
00009DB3  FF                db 0xff
00009DB4  FF                db 0xff
00009DB5  FF                db 0xff
00009DB6  FF                db 0xff
00009DB7  FF                db 0xff
00009DB8  FF                db 0xff
00009DB9  FF                db 0xff
00009DBA  FE8000AA          inc byte [bx+si-0x5600]
00009DBE  AA                stosb
00009DBF  AA                stosb
00009DC0  AA                stosb
00009DC1  AA                stosb
00009DC2  AA                stosb
00009DC3  AA                stosb
00009DC4  AA                stosb
00009DC5  AA                stosb
00009DC6  AA                stosb
00009DC7  AA                stosb
00009DC8  AA                stosb
00009DC9  AA                stosb
00009DCA  AA                stosb
00009DCB  AA                stosb
00009DCC  AA                stosb
00009DCD  AA                stosb
00009DCE  AA                stosb
00009DCF  AA                stosb
00009DD0  0015              add [di],dl
00009DD2  08AAAAAA          or [bp+si-0x5556],ch
00009DD6  AA                stosb
00009DD7  AA                stosb
00009DD8  AA                stosb
00009DD9  AA                stosb
00009DDA  AA                stosb
00009DDB  AA                stosb
00009DDC  AA                stosb
00009DDD  AA                stosb
00009DDE  AA                stosb
00009DDF  AA                stosb
00009DE0  AA                stosb
00009DE1  AA                stosb
00009DE2  AA                stosb
00009DE3  AA                stosb
00009DE4  AA                stosb
00009DE5  AA                stosb
00009DE6  AA                stosb
00009DE7  A8AA              test al,0xaa
00009DE9  AA                stosb
00009DEA  AA                stosb
00009DEB  AA                stosb
00009DEC  AA                stosb
00009DED  AA                stosb
00009DEE  AA                stosb
00009DEF  AA                stosb
00009DF0  AA                stosb
00009DF1  AA                stosb
00009DF2  AA                stosb
00009DF3  AA                stosb
00009DF4  AA                stosb
00009DF5  AA                stosb
00009DF6  AA                stosb
00009DF7  AA                stosb
00009DF8  AA                stosb
00009DF9  AA                stosb
00009DFA  AA                stosb
00009DFB  AA                stosb
00009DFC  A855              test al,0x55
00009DFE  55                push bp
00009DFF  55                push bp
00009E00  55                push bp
00009E01  55                push bp
00009E02  55                push bp
00009E03  55                push bp
00009E04  55                push bp
00009E05  55                push bp
00009E06  55                push bp
00009E07  55                push bp
00009E08  55                push bp
00009E09  55                push bp
00009E0A  55                push bp
00009E0B  55                push bp
00009E0C  55                push bp
00009E0D  55                push bp
00009E0E  55                push bp
00009E0F  55                push bp
00009E10  55                push bp
00009E11  005555            add [di+0x55],dl
00009E14  55                push bp
00009E15  55                push bp
00009E16  015501            add [di+0x1],dx
00009E19  55                push bp
00009E1A  55                push bp
00009E1B  55                push bp
00009E1C  55                push bp
00009E1D  55                push bp
00009E1E  55                push bp
00009E1F  55                push bp
00009E20  50                push ax
00009E21  155015            adc ax,0x1550
00009E24  55                push bp
00009E25  55                push bp
00009E26  005555            add [di+0x55],dl
00009E29  55                push bp
00009E2A  55                push bp
00009E2B  015501            add [di+0x1],dx
00009E2E  55                push bp
00009E2F  55                push bp
00009E30  55                push bp
00009E31  55                push bp
00009E32  55                push bp
00009E33  55                push bp
00009E34  55                push bp
00009E35  50                push ax
00009E36  155015            adc ax,0x1550
00009E39  55                push bp
00009E3A  55                push bp
00009E3B  005555            add [di+0x55],dl
00009E3E  55                push bp
00009E3F  55                push bp
00009E40  55                push bp
00009E41  55                push bp
00009E42  55                push bp
00009E43  55                push bp
00009E44  55                push bp
00009E45  55                push bp
00009E46  55                push bp
00009E47  55                push bp
00009E48  55                push bp
00009E49  55                push bp
00009E4A  55                push bp
00009E4B  55                push bp
00009E4C  55                push bp
00009E4D  55                push bp
00009E4E  55                push bp
00009E4F  55                push bp
00009E50  00AAAAAA          add [bp+si-0x5556],ch
00009E54  AA                stosb
00009E55  AA                stosb
00009E56  AA                stosb
00009E57  AA                stosb
00009E58  AA                stosb
00009E59  AA                stosb
00009E5A  AA                stosb
00009E5B  AA                stosb
00009E5C  AA                stosb
00009E5D  AA                stosb
00009E5E  AA                stosb
00009E5F  AA                stosb
00009E60  AA                stosb
00009E61  AA                stosb
00009E62  AA                stosb
00009E63  AA                stosb
00009E64  AA                stosb
00009E65  A8AA              test al,0xaa
00009E67  AA                stosb
00009E68  AA                stosb
00009E69  AA                stosb
00009E6A  AA                stosb
00009E6B  AA                stosb
00009E6C  AA                stosb
00009E6D  AA                stosb
00009E6E  AA                stosb
00009E6F  AA                stosb
00009E70  AA                stosb
00009E71  AA                stosb
00009E72  AA                stosb
00009E73  AA                stosb
00009E74  AA                stosb
00009E75  AA                stosb
00009E76  AA                stosb
00009E77  AA                stosb
00009E78  AA                stosb
00009E79  AA                stosb
00009E7A  A815              test al,0x15
00009E7C  08AAAAAA          or [bp+si-0x5556],ch
00009E80  AA                stosb
00009E81  AA                stosb
00009E82  AA                stosb
00009E83  AA                stosb
00009E84  AA                stosb
00009E85  AA                stosb
00009E86  AA                stosb
00009E87  AA                stosb
00009E88  AA                stosb
00009E89  AA                stosb
00009E8A  AA                stosb
00009E8B  AA                stosb
00009E8C  AA                stosb
00009E8D  AA                stosb
00009E8E  AA                stosb
00009E8F  AA                stosb
00009E90  AA                stosb
00009E91  A8AA              test al,0xaa
00009E93  AA                stosb
00009E94  AA                stosb
00009E95  AA                stosb
00009E96  AA                stosb
00009E97  AA                stosb
00009E98  AA                stosb
00009E99  AA                stosb
00009E9A  AA                stosb
00009E9B  AA                stosb
00009E9C  AA                stosb
00009E9D  AA                stosb
00009E9E  AA                stosb
00009E9F  AA                stosb
00009EA0  AA                stosb
00009EA1  AA                stosb
00009EA2  AA                stosb
00009EA3  AA                stosb
00009EA4  AA                stosb
00009EA5  AA                stosb
00009EA6  A801              test al,0x1
00009EA8  55                push bp
00009EA9  55                push bp
00009EAA  55                push bp
00009EAB  55                push bp
00009EAC  55                push bp
00009EAD  55                push bp
00009EAE  55                push bp
00009EAF  55                push bp
00009EB0  55                push bp
00009EB1  55                push bp
00009EB2  55                push bp
00009EB3  55                push bp
00009EB4  55                push bp
00009EB5  55                push bp
00009EB6  55                push bp
00009EB7  55                push bp
00009EB8  55                push bp
00009EB9  55                push bp
00009EBA  55                push bp
00009EBB  54                push sp
00009EBC  015555            add [di+0x55],dx
00009EBF  55                push bp
00009EC0  015501            add [di+0x1],dx
00009EC3  55                push bp
00009EC4  55                push bp
00009EC5  55                push bp
00009EC6  55                push bp
00009EC7  55                push bp
00009EC8  55                push bp
00009EC9  55                push bp
00009ECA  50                push ax
00009ECB  155015            adc ax,0x1550
00009ECE  55                push bp
00009ECF  55                push bp
00009ED0  54                push sp
00009ED1  015555            add [di+0x55],dx
00009ED4  55                push bp
00009ED5  015501            add [di+0x1],dx
00009ED8  55                push bp
00009ED9  55                push bp
00009EDA  55                push bp
00009EDB  55                push bp
00009EDC  55                push bp
00009EDD  55                push bp
00009EDE  55                push bp
00009EDF  50                push ax
00009EE0  155015            adc ax,0x1550
00009EE3  55                push bp
00009EE4  55                push bp
00009EE5  54                push sp
00009EE6  015555            add [di+0x55],dx
00009EE9  55                push bp
00009EEA  55                push bp
00009EEB  55                push bp
00009EEC  55                push bp
00009EED  55                push bp
00009EEE  55                push bp
00009EEF  55                push bp
00009EF0  55                push bp
00009EF1  55                push bp
00009EF2  55                push bp
00009EF3  55                push bp
00009EF4  55                push bp
00009EF5  55                push bp
00009EF6  55                push bp
00009EF7  55                push bp
00009EF8  55                push bp
00009EF9  55                push bp
00009EFA  54                push sp
00009EFB  AA                stosb
00009EFC  AA                stosb
00009EFD  AA                stosb
00009EFE  AA                stosb
00009EFF  AA                stosb
00009F00  AA                stosb
00009F01  AA                stosb
00009F02  AA                stosb
00009F03  AA                stosb
00009F04  AA                stosb
00009F05  AA                stosb
00009F06  AA                stosb
00009F07  AA                stosb
00009F08  AA                stosb
00009F09  AA                stosb
00009F0A  AA                stosb
00009F0B  AA                stosb
00009F0C  AA                stosb
00009F0D  AA                stosb
00009F0E  AA                stosb
00009F0F  A8AA              test al,0xaa
00009F11  AA                stosb
00009F12  AA                stosb
00009F13  AA                stosb
00009F14  AA                stosb
00009F15  AA                stosb
00009F16  AA                stosb
00009F17  AA                stosb
00009F18  AA                stosb
00009F19  AA                stosb
00009F1A  AA                stosb
00009F1B  AA                stosb
00009F1C  AA                stosb
00009F1D  AA                stosb
00009F1E  AA                stosb
00009F1F  AA                stosb
00009F20  AA                stosb
00009F21  AA                stosb
00009F22  AA                stosb
00009F23  AA                stosb
00009F24  A815              test al,0x15
00009F26  08AAAAAA          or [bp+si-0x5556],ch
00009F2A  AA                stosb
00009F2B  AA                stosb
00009F2C  AA                stosb
00009F2D  AA                stosb
00009F2E  AA                stosb
00009F2F  AA                stosb
00009F30  AA                stosb
00009F31  AA                stosb
00009F32  AA                stosb
00009F33  AA                stosb
00009F34  AA                stosb
00009F35  AA                stosb
00009F36  AA                stosb
00009F37  AA                stosb
00009F38  AA                stosb
00009F39  AA                stosb
00009F3A  AA                stosb
00009F3B  AA                stosb
00009F3C  AA                stosb
00009F3D  AA                stosb
00009F3E  AA                stosb
00009F3F  AA                stosb
00009F40  AA                stosb
00009F41  AA                stosb
00009F42  AA                stosb
00009F43  AA                stosb
00009F44  AA                stosb
00009F45  AA                stosb
00009F46  AA                stosb
00009F47  AA                stosb
00009F48  AA                stosb
00009F49  AA                stosb
00009F4A  AA                stosb
00009F4B  AA                stosb
00009F4C  AA                stosb
00009F4D  AA                stosb
00009F4E  AA                stosb
00009F4F  AA                stosb
00009F50  AA                stosb
00009F51  55                push bp
00009F52  55                push bp
00009F53  55                push bp
00009F54  55                push bp
00009F55  55                push bp
00009F56  55                push bp
00009F57  55                push bp
00009F58  55                push bp
00009F59  55                push bp
00009F5A  55                push bp
00009F5B  55                push bp
00009F5C  55                push bp
00009F5D  55                push bp
00009F5E  55                push bp
00009F5F  55                push bp
00009F60  55                push bp
00009F61  55                push bp
00009F62  55                push bp
00009F63  55                push bp
00009F64  55                push bp
00009F65  40                inc ax
00009F66  55                push bp
00009F67  55                push bp
00009F68  55                push bp
00009F69  54                push sp
00009F6A  055405            add ax,0x554
00009F6D  55                push bp
00009F6E  55                push bp
00009F6F  55                push bp
00009F70  55                push bp
00009F71  55                push bp
00009F72  55                push bp
00009F73  55                push bp
00009F74  40                inc ax
00009F75  55                push bp
00009F76  40                inc ax
00009F77  55                push bp
00009F78  55                push bp
00009F79  55                push bp
00009F7A  40                inc ax
00009F7B  55                push bp
00009F7C  55                push bp
00009F7D  55                push bp
00009F7E  54                push sp
00009F7F  055405            add ax,0x554
00009F82  55                push bp
00009F83  55                push bp
00009F84  55                push bp
00009F85  55                push bp
00009F86  55                push bp
00009F87  55                push bp
00009F88  55                push bp
00009F89  40                inc ax
00009F8A  55                push bp
00009F8B  40                inc ax
00009F8C  55                push bp
00009F8D  55                push bp
00009F8E  55                push bp
00009F8F  40                inc ax
00009F90  55                push bp
00009F91  55                push bp
00009F92  55                push bp
00009F93  55                push bp
00009F94  55                push bp
00009F95  55                push bp
00009F96  55                push bp
00009F97  55                push bp
00009F98  55                push bp
00009F99  55                push bp
00009F9A  55                push bp
00009F9B  55                push bp
00009F9C  55                push bp
00009F9D  55                push bp
00009F9E  55                push bp
00009F9F  55                push bp
00009FA0  55                push bp
00009FA1  55                push bp
00009FA2  55                push bp
00009FA3  55                push bp
00009FA4  40                inc ax
00009FA5  AA                stosb
00009FA6  AA                stosb
00009FA7  AA                stosb
00009FA8  AA                stosb
00009FA9  AA                stosb
00009FAA  AA                stosb
00009FAB  AA                stosb
00009FAC  AA                stosb
00009FAD  AA                stosb
00009FAE  AA                stosb
00009FAF  AA                stosb
00009FB0  AA                stosb
00009FB1  AA                stosb
00009FB2  AA                stosb
00009FB3  AA                stosb
00009FB4  AA                stosb
00009FB5  AA                stosb
00009FB6  AA                stosb
00009FB7  AA                stosb
00009FB8  AA                stosb
00009FB9  AA                stosb
00009FBA  AA                stosb
00009FBB  AA                stosb
00009FBC  AA                stosb
00009FBD  AA                stosb
00009FBE  AA                stosb
00009FBF  AA                stosb
00009FC0  AA                stosb
00009FC1  AA                stosb
00009FC2  AA                stosb
00009FC3  AA                stosb
00009FC4  AA                stosb
00009FC5  AA                stosb
00009FC6  AA                stosb
00009FC7  AA                stosb
00009FC8  AA                stosb
00009FC9  AA                stosb
00009FCA  AA                stosb
00009FCB  AA                stosb
00009FCC  AA                stosb
00009FCD  AA                stosb
00009FCE  AA                stosb
00009FCF  15082A            adc ax,0x2a08
00009FD2  AA                stosb
00009FD3  AA                stosb
00009FD4  AA                stosb
00009FD5  AA                stosb
00009FD6  AA                stosb
00009FD7  AA                stosb
00009FD8  AA                stosb
00009FD9  AA                stosb
00009FDA  AA                stosb
00009FDB  AA                stosb
00009FDC  AA                stosb
00009FDD  AA                stosb
00009FDE  AA                stosb
00009FDF  AA                stosb
00009FE0  AA                stosb
00009FE1  AA                stosb
00009FE2  AA                stosb
00009FE3  AA                stosb
00009FE4  AA                stosb
00009FE5  AA                stosb
00009FE6  2AAAAAAA          sub ch,[bp+si-0x5556]
00009FEA  AA                stosb
00009FEB  AA                stosb
00009FEC  AA                stosb
00009FED  AA                stosb
00009FEE  AA                stosb
00009FEF  AA                stosb
00009FF0  AA                stosb
00009FF1  AA                stosb
00009FF2  AA                stosb
00009FF3  AA                stosb
00009FF4  AA                stosb
00009FF5  AA                stosb
00009FF6  AA                stosb
00009FF7  AA                stosb
00009FF8  AA                stosb
00009FF9  AA                stosb
00009FFA  AA                stosb
00009FFB  005555            add [di+0x55],dl
00009FFE  55                push bp
00009FFF  55                push bp
0000A000  55                push bp
0000A001  55                push bp
0000A002  55                push bp
0000A003  55                push bp
0000A004  55                push bp
0000A005  55                push bp
0000A006  55                push bp
0000A007  55                push bp
0000A008  55                push bp
0000A009  55                push bp
0000A00A  55                push bp
0000A00B  55                push bp
0000A00C  55                push bp
0000A00D  55                push bp
0000A00E  55                push bp
0000A00F  55                push bp
0000A010  005555            add [di+0x55],dl
0000A013  54                push sp
0000A014  055405            add ax,0x554
0000A017  55                push bp
0000A018  55                push bp
0000A019  55                push bp
0000A01A  55                push bp
0000A01B  55                push bp
0000A01C  55                push bp
0000A01D  55                push bp
0000A01E  40                inc ax
0000A01F  55                push bp
0000A020  40                inc ax
0000A021  55                push bp
0000A022  55                push bp
0000A023  55                push bp
0000A024  55                push bp
0000A025  005555            add [di+0x55],dl
0000A028  54                push sp
0000A029  055405            add ax,0x554
0000A02C  55                push bp
0000A02D  55                push bp
0000A02E  55                push bp
0000A02F  55                push bp
0000A030  55                push bp
0000A031  55                push bp
0000A032  55                push bp
0000A033  40                inc ax
0000A034  55                push bp
0000A035  40                inc ax
0000A036  55                push bp
0000A037  55                push bp
0000A038  55                push bp
0000A039  55                push bp
0000A03A  005555            add [di+0x55],dl
0000A03D  55                push bp
0000A03E  55                push bp
0000A03F  55                push bp
0000A040  55                push bp
0000A041  55                push bp
0000A042  55                push bp
0000A043  55                push bp
0000A044  55                push bp
0000A045  55                push bp
0000A046  55                push bp
0000A047  55                push bp
0000A048  55                push bp
0000A049  55                push bp
0000A04A  55                push bp
0000A04B  55                push bp
0000A04C  55                push bp
0000A04D  55                push bp
0000A04E  55                push bp
0000A04F  2AAAAAAA          sub ch,[bp+si-0x5556]
0000A053  AA                stosb
0000A054  AA                stosb
0000A055  AA                stosb
0000A056  AA                stosb
0000A057  AA                stosb
0000A058  AA                stosb
0000A059  AA                stosb
0000A05A  AA                stosb
0000A05B  AA                stosb
0000A05C  AA                stosb
0000A05D  AA                stosb
0000A05E  AA                stosb
0000A05F  AA                stosb
0000A060  AA                stosb
0000A061  AA                stosb
0000A062  AA                stosb
0000A063  AA                stosb
0000A064  2AAAAAAA          sub ch,[bp+si-0x5556]
0000A068  AA                stosb
0000A069  AA                stosb
0000A06A  AA                stosb
0000A06B  AA                stosb
0000A06C  AA                stosb
0000A06D  AA                stosb
0000A06E  AA                stosb
0000A06F  AA                stosb
0000A070  AA                stosb
0000A071  AA                stosb
0000A072  AA                stosb
0000A073  AA                stosb
0000A074  AA                stosb
0000A075  AA                stosb
0000A076  AA                stosb
0000A077  AA                stosb
0000A078  AA                stosb
0000A079  07                pop es
0000A07A  1E                push ds
0000A07B  FF                db 0xff
0000A07C  FF                db 0xff
0000A07D  FF                db 0xff
0000A07E  FF                db 0xff
0000A07F  FF                db 0xff
0000A080  FF                db 0xff
0000A081  FF                db 0xff
0000A082  FD                std
0000A083  55                push bp
0000A084  55                push bp
0000A085  55                push bp
0000A086  55                push bp
0000A087  55                push bp
0000A088  5F                pop di
0000A089  FD                std
0000A08A  55                push bp
0000A08B  55                push bp
0000A08C  55                push bp
0000A08D  55                push bp
0000A08E  55                push bp
0000A08F  5F                pop di
0000A090  FD                std
0000A091  5F                pop di
0000A092  FF                db 0xff
0000A093  FF                db 0xff
0000A094  FFD5              call bp
0000A096  5F                pop di
0000A097  FD                std
0000A098  5F                pop di
0000A099  AA                stosb
0000A09A  AA                stosb
0000A09B  AB                stosw
0000A09C  D55F              aad 0x5f
0000A09E  FD                std
0000A09F  5F                pop di
0000A0A0  AA                stosb
0000A0A1  AA                stosb
0000A0A2  AB                stosw
0000A0A3  D55F              aad 0x5f
0000A0A5  FD                std
0000A0A6  5F                pop di
0000A0A7  AA                stosb
0000A0A8  AA                stosb
0000A0A9  AB                stosw
0000A0AA  D55F              aad 0x5f
0000A0AC  FD                std
0000A0AD  5F                pop di
0000A0AE  AA                stosb
0000A0AF  AA                stosb
0000A0B0  BFD55F            mov di,0x5fd5
0000A0B3  FD                std
0000A0B4  5F                pop di
0000A0B5  AA                stosb
0000A0B6  AA                stosb
0000A0B7  BFD55F            mov di,0x5fd5
0000A0BA  FD                std
0000A0BB  5F                pop di
0000A0BC  AA                stosb
0000A0BD  AA                stosb
0000A0BE  AB                stosw
0000A0BF  D55F              aad 0x5f
0000A0C1  FD                std
0000A0C2  5F                pop di
0000A0C3  BFAAAB            mov di,0xabaa
0000A0C6  D55F              aad 0x5f
0000A0C8  FD                std
0000A0C9  5F                pop di
0000A0CA  BFAAAB            mov di,0xabaa
0000A0CD  D55F              aad 0x5f
0000A0CF  FD                std
0000A0D0  5F                pop di
0000A0D1  BFAAAB            mov di,0xabaa
0000A0D4  D55F              aad 0x5f
0000A0D6  FD                std
0000A0D7  5F                pop di
0000A0D8  AA                stosb
0000A0D9  AA                stosb
0000A0DA  BFD55F            mov di,0x5fd5
0000A0DD  FD                std
0000A0DE  5F                pop di
0000A0DF  AA                stosb
0000A0E0  AA                stosb
0000A0E1  BFD55F            mov di,0x5fd5
0000A0E4  FD                std
0000A0E5  5F                pop di
0000A0E6  AA                stosb
0000A0E7  AA                stosb
0000A0E8  AB                stosw
0000A0E9  D55F              aad 0x5f
0000A0EB  FD                std
0000A0EC  5F                pop di
0000A0ED  AA                stosb
0000A0EE  AA                stosb
0000A0EF  AB                stosw
0000A0F0  D55F              aad 0x5f
0000A0F2  FD                std
0000A0F3  57                push di
0000A0F4  FF                db 0xff
0000A0F5  FF                db 0xff
0000A0F6  FFD5              call bp
0000A0F8  5F                pop di
0000A0F9  FD                std
0000A0FA  55                push bp
0000A0FB  55                push bp
0000A0FC  55                push bp
0000A0FD  55                push bp
0000A0FE  55                push bp
0000A0FF  5F                pop di
0000A100  FD                std
0000A101  55                push bp
0000A102  55                push bp
0000A103  55                push bp
0000A104  55                push bp
0000A105  55                push bp
0000A106  5F                pop di
0000A107  FD                std
0000A108  FF                db 0xff
0000A109  FF                db 0xff
0000A10A  FF                db 0xff
0000A10B  FF                db 0xff
0000A10C  FD                std
0000A10D  5F                pop di
0000A10E  FD                std
0000A10F  F042              lock inc dx
0000A111  0204              add al,[si]
0000A113  1D5FFD            sbb ax,0xfd5f
0000A116  F042              lock inc dx
0000A118  0204              add al,[si]
0000A11A  1D5FFD            sbb ax,0xfd5f
0000A11D  FF                db 0xff
0000A11E  FF                db 0xff
0000A11F  FF                db 0xff
0000A120  FF                db 0xff
0000A121  DD5FFD            fstp qword [bx-0x3]
0000A124  F042              lock inc dx
0000A126  0204              add al,[si]
0000A128  1D5FFD            sbb ax,0xfd5f
0000A12B  F042              lock inc dx
0000A12D  0204              add al,[si]
0000A12F  1D5FFD            sbb ax,0xfd5f
0000A132  FF                db 0xff
0000A133  FF                db 0xff
0000A134  FF                db 0xff
0000A135  FF                db 0xff
0000A136  FD                std
0000A137  5F                pop di
0000A138  FD                std
0000A139  55                push bp
0000A13A  55                push bp
0000A13B  55                push bp
0000A13C  55                push bp
0000A13D  55                push bp
0000A13E  5F                pop di
0000A13F  FF                db 0xff
0000A140  FF                db 0xff
0000A141  FF                db 0xff
0000A142  FF                db 0xff
0000A143  FF                db 0xff
0000A144  FF                db 0xff
0000A145  FF00              inc word [bx+si]
0000A147  0000              add [bx+si],al
0000A149  0000              add [bx+si],al
0000A14B  0000              add [bx+si],al
0000A14D  07                pop es
0000A14E  3100              xor [bx+si],ax
0000A150  0000              add [bx+si],al
0000A152  0000              add [bx+si],al
0000A154  0000              add [bx+si],al
0000A156  0000              add [bx+si],al
0000A158  0000              add [bx+si],al
0000A15A  0000              add [bx+si],al
0000A15C  0000              add [bx+si],al
0000A15E  0000              add [bx+si],al
0000A160  0000              add [bx+si],al
0000A162  0000              add [bx+si],al
0000A164  0000              add [bx+si],al
0000A166  0000              add [bx+si],al
0000A168  0000              add [bx+si],al
0000A16A  0000              add [bx+si],al
0000A16C  0000              add [bx+si],al
0000A16E  0000              add [bx+si],al
0000A170  0000              add [bx+si],al
0000A172  0000              add [bx+si],al
0000A174  0000              add [bx+si],al
0000A176  0000              add [bx+si],al
0000A178  0000              add [bx+si],al
0000A17A  0000              add [bx+si],al
0000A17C  0000              add [bx+si],al
0000A17E  0000              add [bx+si],al
0000A180  0000              add [bx+si],al
0000A182  0000              add [bx+si],al
0000A184  0000              add [bx+si],al
0000A186  00FF              add bh,bh
0000A188  FF                db 0xff
0000A189  FF                db 0xff
0000A18A  FF                db 0xff
0000A18B  FF                db 0xff
0000A18C  FF                db 0xff
0000A18D  FC                cld
0000A18E  FF                db 0xff
0000A18F  FF                db 0xff
0000A190  FF                db 0xff
0000A191  FF                db 0xff
0000A192  FF                db 0xff
0000A193  FF                db 0xff
0000A194  FC                cld
0000A195  FF5555            call word [di+0x55]
0000A198  55                push bp
0000A199  55                push bp
0000A19A  57                push di
0000A19B  FC                cld
0000A19C  FF5555            call word [di+0x55]
0000A19F  55                push bp
0000A1A0  55                push bp
0000A1A1  57                push di
0000A1A2  FC                cld
0000A1A3  FF                db 0xff
0000A1A4  FF                db 0xff
0000A1A5  FF                db 0xff
0000A1A6  FF                db 0xff
0000A1A7  FF                db 0xff
0000A1A8  FF                db 0xff
0000A1A9  FC                cld
0000A1AA  D000              rol byte [bx+si],1
0000A1AC  0000              add [bx+si],al
0000A1AE  0000              add [bx+si],al
0000A1B0  3CD0              cmp al,0xd0
0000A1B2  0000              add [bx+si],al
0000A1B4  0000              add [bx+si],al
0000A1B6  003C              add [si],bh
0000A1B8  D000              rol byte [bx+si],1
0000A1BA  0000              add [bx+si],al
0000A1BC  0000              add [bx+si],al
0000A1BE  3CD0              cmp al,0xd0
0000A1C0  0000              add [bx+si],al
0000A1C2  0000              add [bx+si],al
0000A1C4  003C              add [si],bh
0000A1C6  D000              rol byte [bx+si],1
0000A1C8  0000              add [bx+si],al
0000A1CA  0000              add [bx+si],al
0000A1CC  3CD0              cmp al,0xd0
0000A1CE  0000              add [bx+si],al
0000A1D0  0000              add [bx+si],al
0000A1D2  003C              add [si],bh
0000A1D4  D000              rol byte [bx+si],1
0000A1D6  0000              add [bx+si],al
0000A1D8  0000              add [bx+si],al
0000A1DA  3CD0              cmp al,0xd0
0000A1DC  0000              add [bx+si],al
0000A1DE  0000              add [bx+si],al
0000A1E0  003C              add [si],bh
0000A1E2  D000              rol byte [bx+si],1
0000A1E4  0000              add [bx+si],al
0000A1E6  0000              add [bx+si],al
0000A1E8  3CD0              cmp al,0xd0
0000A1EA  0000              add [bx+si],al
0000A1EC  0000              add [bx+si],al
0000A1EE  003C              add [si],bh
0000A1F0  D000              rol byte [bx+si],1
0000A1F2  0000              add [bx+si],al
0000A1F4  0000              add [bx+si],al
0000A1F6  3CD0              cmp al,0xd0
0000A1F8  0000              add [bx+si],al
0000A1FA  0000              add [bx+si],al
0000A1FC  003C              add [si],bh
0000A1FE  D000              rol byte [bx+si],1
0000A200  0000              add [bx+si],al
0000A202  0000              add [bx+si],al
0000A204  3CD0              cmp al,0xd0
0000A206  0000              add [bx+si],al
0000A208  0000              add [bx+si],al
0000A20A  003C              add [si],bh
0000A20C  D000              rol byte [bx+si],1
0000A20E  0000              add [bx+si],al
0000A210  0000              add [bx+si],al
0000A212  3CD0              cmp al,0xd0
0000A214  0000              add [bx+si],al
0000A216  0000              add [bx+si],al
0000A218  003C              add [si],bh
0000A21A  D000              rol byte [bx+si],1
0000A21C  0000              add [bx+si],al
0000A21E  0000              add [bx+si],al
0000A220  3CD0              cmp al,0xd0
0000A222  0000              add [bx+si],al
0000A224  0000              add [bx+si],al
0000A226  003C              add [si],bh
0000A228  D000              rol byte [bx+si],1
0000A22A  0000              add [bx+si],al
0000A22C  0000              add [bx+si],al
0000A22E  3CD0              cmp al,0xd0
0000A230  0000              add [bx+si],al
0000A232  0000              add [bx+si],al
0000A234  003C              add [si],bh
0000A236  D000              rol byte [bx+si],1
0000A238  0000              add [bx+si],al
0000A23A  0000              add [bx+si],al
0000A23C  3CD0              cmp al,0xd0
0000A23E  0000              add [bx+si],al
0000A240  0000              add [bx+si],al
0000A242  003C              add [si],bh
0000A244  D000              rol byte [bx+si],1
0000A246  0000              add [bx+si],al
0000A248  0000              add [bx+si],al
0000A24A  3CD0              cmp al,0xd0
0000A24C  0000              add [bx+si],al
0000A24E  0000              add [bx+si],al
0000A250  003C              add [si],bh
0000A252  FF                db 0xff
0000A253  FF                db 0xff
0000A254  FF                db 0xff
0000A255  FF                db 0xff
0000A256  FF                db 0xff
0000A257  FF                db 0xff
0000A258  FC                cld
0000A259  FE                db 0xfe
0000A25A  AA                stosb
0000A25B  AA                stosb
0000A25C  AA                stosb
0000A25D  AA                stosb
0000A25E  AA                stosb
0000A25F  FC                cld
0000A260  FE                db 0xfe
0000A261  AA                stosb
0000A262  AA                stosb
0000A263  AA                stosb
0000A264  AA                stosb
0000A265  AA                stosb
0000A266  FC                cld
0000A267  FF                db 0xff
0000A268  FF                db 0xff
0000A269  FF                db 0xff
0000A26A  FF                db 0xff
0000A26B  FF                db 0xff
0000A26C  FF                db 0xff
0000A26D  FC                cld
0000A26E  0000              add [bx+si],al
0000A270  0000              add [bx+si],al
0000A272  0000              add [bx+si],al
0000A274  0000              add [bx+si],al
0000A276  0000              add [bx+si],al
0000A278  0000              add [bx+si],al
0000A27A  0000              add [bx+si],al
0000A27C  0000              add [bx+si],al
0000A27E  0000              add [bx+si],al
0000A280  0000              add [bx+si],al
0000A282  0000              add [bx+si],al
0000A284  0000              add [bx+si],al
0000A286  0000              add [bx+si],al
0000A288  0000              add [bx+si],al
0000A28A  0000              add [bx+si],al
0000A28C  0000              add [bx+si],al
0000A28E  0000              add [bx+si],al
0000A290  0000              add [bx+si],al
0000A292  0000              add [bx+si],al
0000A294  0000              add [bx+si],al
0000A296  0000              add [bx+si],al
0000A298  0000              add [bx+si],al
0000A29A  0000              add [bx+si],al
0000A29C  0000              add [bx+si],al
0000A29E  0000              add [bx+si],al
0000A2A0  0000              add [bx+si],al
0000A2A2  0000              add [bx+si],al
0000A2A4  0000              add [bx+si],al
0000A2A6  07                pop es
0000A2A7  3100              xor [bx+si],ax
0000A2A9  0000              add [bx+si],al
0000A2AB  0000              add [bx+si],al
0000A2AD  0000              add [bx+si],al
0000A2AF  0000              add [bx+si],al
0000A2B1  0000              add [bx+si],al
0000A2B3  0000              add [bx+si],al
0000A2B5  0000              add [bx+si],al
0000A2B7  0000              add [bx+si],al
0000A2B9  0000              add [bx+si],al
0000A2BB  0000              add [bx+si],al
0000A2BD  0000              add [bx+si],al
0000A2BF  0000              add [bx+si],al
0000A2C1  0000              add [bx+si],al
0000A2C3  0000              add [bx+si],al
0000A2C5  0000              add [bx+si],al
0000A2C7  0000              add [bx+si],al
0000A2C9  0000              add [bx+si],al
0000A2CB  0000              add [bx+si],al
0000A2CD  0000              add [bx+si],al
0000A2CF  0000              add [bx+si],al
0000A2D1  0000              add [bx+si],al
0000A2D3  0000              add [bx+si],al
0000A2D5  0000              add [bx+si],al
0000A2D7  0000              add [bx+si],al
0000A2D9  0000              add [bx+si],al
0000A2DB  0000              add [bx+si],al
0000A2DD  0000              add [bx+si],al
0000A2DF  00FF              add bh,bh
0000A2E1  FF                db 0xff
0000A2E2  FF                db 0xff
0000A2E3  FF                db 0xff
0000A2E4  FF                db 0xff
0000A2E5  FF                db 0xff
0000A2E6  FC                cld
0000A2E7  FF                db 0xff
0000A2E8  FF                db 0xff
0000A2E9  FF                db 0xff
0000A2EA  FF                db 0xff
0000A2EB  FF                db 0xff
0000A2EC  FF                db 0xff
0000A2ED  FC                cld
0000A2EE  FF5555            call word [di+0x55]
0000A2F1  55                push bp
0000A2F2  55                push bp
0000A2F3  57                push di
0000A2F4  FC                cld
0000A2F5  FF5555            call word [di+0x55]
0000A2F8  55                push bp
0000A2F9  55                push bp
0000A2FA  57                push di
0000A2FB  FC                cld
0000A2FC  FF                db 0xff
0000A2FD  FF                db 0xff
0000A2FE  FF                db 0xff
0000A2FF  FF                db 0xff
0000A300  FF                db 0xff
0000A301  FF                db 0xff
0000A302  FC                cld
0000A303  D000              rol byte [bx+si],1
0000A305  3F                aas
0000A306  C0FF00            sar bh,byte 0x0
0000A309  3CD0              cmp al,0xd0
0000A30B  000F              add [bx],cl
0000A30D  C0FC00            sar ah,byte 0x0
0000A310  3CD0              cmp al,0xd0
0000A312  0005              add [di],al
0000A314  F3D400            rep aam 0x0
0000A317  3CD0              cmp al,0xd0
0000A319  0005              add [di],al
0000A31B  55                push bp
0000A31C  54                push sp
0000A31D  003C              add [si],bh
0000A31F  D000              rol byte [bx+si],1
0000A321  005540            add [di+0x40],dl
0000A324  003C              add [si],bh
0000A326  D000              rol byte [bx+si],1
0000A328  00F7              add bh,dh
0000A32A  C0003C            rol byte [bx+si],byte 0x3c
0000A32D  D000              rol byte [bx+si],1
0000A32F  0FAA              rsm
0000A331  BC003C            mov sp,0x3c00
0000A334  D000              rol byte [bx+si],1
0000A336  3F                aas
0000A337  AA                stosb
0000A338  BF003C            mov di,0x3c00
0000A33B  D000              rol byte [bx+si],1
0000A33D  3F                aas
0000A33E  AA                stosb
0000A33F  BF003C            mov di,0x3c00
0000A342  D000              rol byte [bx+si],1
0000A344  005540            add [di+0x40],dl
0000A347  003C              add [si],bh
0000A349  D000              rol byte [bx+si],1
0000A34B  005540            add [di+0x40],dl
0000A34E  003C              add [si],bh
0000A350  D000              rol byte [bx+si],1
0000A352  0FFF              ud0
0000A354  FC                cld
0000A355  003C              add [si],bh
0000A357  D000              rol byte [bx+si],1
0000A359  03FF              add di,di
0000A35B  F0003C            lock add [si],bh
0000A35E  D000              rol byte [bx+si],1
0000A360  03F3              add si,bx
0000A362  F0003C            lock add [si],bh
0000A365  D000              rol byte [bx+si],1
0000A367  00F3              add bl,dh
0000A369  C0003C            rol byte [bx+si],byte 0x3c
0000A36C  D000              rol byte [bx+si],1
0000A36E  0000              add [bx+si],al
0000A370  0000              add [bx+si],al
0000A372  3CD0              cmp al,0xd0
0000A374  0000              add [bx+si],al
0000A376  0000              add [bx+si],al
0000A378  003C              add [si],bh
0000A37A  D000              rol byte [bx+si],1
0000A37C  0000              add [bx+si],al
0000A37E  0000              add [bx+si],al
0000A380  3CD0              cmp al,0xd0
0000A382  0000              add [bx+si],al
0000A384  0000              add [bx+si],al
0000A386  003C              add [si],bh
0000A388  D000              rol byte [bx+si],1
0000A38A  0000              add [bx+si],al
0000A38C  0000              add [bx+si],al
0000A38E  3CD0              cmp al,0xd0
0000A390  0000              add [bx+si],al
0000A392  0000              add [bx+si],al
0000A394  003C              add [si],bh
0000A396  D000              rol byte [bx+si],1
0000A398  0000              add [bx+si],al
0000A39A  0000              add [bx+si],al
0000A39C  3CD0              cmp al,0xd0
0000A39E  0000              add [bx+si],al
0000A3A0  0000              add [bx+si],al
0000A3A2  003C              add [si],bh
0000A3A4  D000              rol byte [bx+si],1
0000A3A6  0000              add [bx+si],al
0000A3A8  0000              add [bx+si],al
0000A3AA  3CFF              cmp al,0xff
0000A3AC  FF                db 0xff
0000A3AD  FF                db 0xff
0000A3AE  FF                db 0xff
0000A3AF  FF                db 0xff
0000A3B0  FF                db 0xff
0000A3B1  FC                cld
0000A3B2  FE                db 0xfe
0000A3B3  AA                stosb
0000A3B4  AA                stosb
0000A3B5  AA                stosb
0000A3B6  AA                stosb
0000A3B7  AA                stosb
0000A3B8  FC                cld
0000A3B9  FE                db 0xfe
0000A3BA  AA                stosb
0000A3BB  AA                stosb
0000A3BC  AA                stosb
0000A3BD  AA                stosb
0000A3BE  AA                stosb
0000A3BF  FC                cld
0000A3C0  FF                db 0xff
0000A3C1  FF                db 0xff
0000A3C2  FF                db 0xff
0000A3C3  FF                db 0xff
0000A3C4  FF                db 0xff
0000A3C5  FF                db 0xff
0000A3C6  FC                cld
0000A3C7  0000              add [bx+si],al
0000A3C9  0000              add [bx+si],al
0000A3CB  0000              add [bx+si],al
0000A3CD  0000              add [bx+si],al
0000A3CF  0000              add [bx+si],al
0000A3D1  0000              add [bx+si],al
0000A3D3  0000              add [bx+si],al
0000A3D5  0000              add [bx+si],al
0000A3D7  0000              add [bx+si],al
0000A3D9  0000              add [bx+si],al
0000A3DB  0000              add [bx+si],al
0000A3DD  0000              add [bx+si],al
0000A3DF  0000              add [bx+si],al
0000A3E1  0000              add [bx+si],al
0000A3E3  0000              add [bx+si],al
0000A3E5  0000              add [bx+si],al
0000A3E7  0000              add [bx+si],al
0000A3E9  0000              add [bx+si],al
0000A3EB  0000              add [bx+si],al
0000A3ED  0000              add [bx+si],al
0000A3EF  0000              add [bx+si],al
0000A3F1  0000              add [bx+si],al
0000A3F3  0000              add [bx+si],al
0000A3F5  0000              add [bx+si],al
0000A3F7  0000              add [bx+si],al
0000A3F9  0000              add [bx+si],al
0000A3FB  0000              add [bx+si],al
0000A3FD  0000              add [bx+si],al
0000A3FF  0426              add al,0x26
0000A401  0F5557C0          andnps xmm2,oword [bx-0x40]
0000A405  0F5557C0          andnps xmm2,oword [bx-0x40]
0000A409  0F5557C0          andnps xmm2,oword [bx-0x40]
0000A40D  0F5017            movmskps edx,xmm12
0000A410  C00F50            ror byte [bx],byte 0x50
0000A413  17                pop ss
0000A414  C00F55            ror byte [bx],byte 0x55
0000A417  57                push di
0000A418  C00F55            ror byte [bx],byte 0x55
0000A41B  57                push di
0000A41C  C00F55            ror byte [bx],byte 0x55
0000A41F  57                push di
0000A420  C00F55            ror byte [bx],byte 0x55
0000A423  57                push di
0000A424  C00F55            ror byte [bx],byte 0x55
0000A427  57                push di
0000A428  C00F50            ror byte [bx],byte 0x50
0000A42B  17                pop ss
0000A42C  C00F50            ror byte [bx],byte 0x50
0000A42F  17                pop ss
0000A430  C00F55            ror byte [bx],byte 0x55
0000A433  57                push di
0000A434  C00F55            ror byte [bx],byte 0x55
0000A437  57                push di
0000A438  C00F55            ror byte [bx],byte 0x55
0000A43B  57                push di
0000A43C  C00F55            ror byte [bx],byte 0x55
0000A43F  57                push di
0000A440  C00F55            ror byte [bx],byte 0x55
0000A443  57                push di
0000A444  C00F55            ror byte [bx],byte 0x55
0000A447  57                push di
0000A448  C00F55            ror byte [bx],byte 0x55
0000A44B  57                push di
0000A44C  C00F55            ror byte [bx],byte 0x55
0000A44F  57                push di
0000A450  C00F55            ror byte [bx],byte 0x55
0000A453  57                push di
0000A454  C00F55            ror byte [bx],byte 0x55
0000A457  57                push di
0000A458  C00F55            ror byte [bx],byte 0x55
0000A45B  57                push di
0000A45C  C00F55            ror byte [bx],byte 0x55
0000A45F  57                push di
0000A460  C00000            rol byte [bx+si],byte 0x0
0000A463  0000              add [bx+si],al
0000A465  0000              add [bx+si],al
0000A467  0000              add [bx+si],al
0000A469  0000              add [bx+si],al
0000A46B  0000              add [bx+si],al
0000A46D  0000              add [bx+si],al
0000A46F  0000              add [bx+si],al
0000A471  0000              add [bx+si],al
0000A473  0000              add [bx+si],al
0000A475  0000              add [bx+si],al
0000A477  0000              add [bx+si],al
0000A479  0000              add [bx+si],al
0000A47B  0000              add [bx+si],al
0000A47D  0000              add [bx+si],al
0000A47F  0000              add [bx+si],al
0000A481  0000              add [bx+si],al
0000A483  0000              add [bx+si],al
0000A485  0000              add [bx+si],al
0000A487  0000              add [bx+si],al
0000A489  0000              add [bx+si],al
0000A48B  0000              add [bx+si],al
0000A48D  0000              add [bx+si],al
0000A48F  0000              add [bx+si],al
0000A491  0000              add [bx+si],al
0000A493  0000              add [bx+si],al
0000A495  0000              add [bx+si],al
0000A497  0000              add [bx+si],al
0000A499  0B10              or dx,[bx+si]
0000A49B  3F                aas
0000A49C  FF                db 0xff
0000A49D  FF                db 0xff
0000A49E  FF                db 0xff
0000A49F  FF                db 0xff
0000A4A0  FF                db 0xff
0000A4A1  FF                db 0xff
0000A4A2  FF                db 0xff
0000A4A3  FF                db 0xff
0000A4A4  FF00              inc word [bx+si]
0000A4A6  3F                aas
0000A4A7  50                push ax
0000A4A8  1015              adc [di],dl
0000A4AA  55                push bp
0000A4AB  55                push bp
0000A4AC  55                push bp
0000A4AD  0101              add [bx+di],ax
0000A4AF  7F00              jg 0xa4b1
0000A4B1  3F                aas
0000A4B2  55                push bp
0000A4B3  55                push bp
0000A4B4  5A                pop dx
0000A4B5  AA                stosb
0000A4B6  AA                stosb
0000A4B7  A95555            test ax,0x5555
0000A4BA  7F00              jg 0xa4bc
0000A4BC  3F                aas
0000A4BD  F5                cmc
0000A4BE  55                push bp
0000A4BF  55                push bp
0000A4C0  55                push bp
0000A4C1  55                push bp
0000A4C2  55                push bp
0000A4C3  55                push bp
0000A4C4  57                push di
0000A4C5  FF00              inc word [bx+si]
0000A4C7  00FF              add bh,bh
0000A4C9  55                push bp
0000A4CA  55                push bp
0000A4CB  55                push bp
0000A4CC  55                push bp
0000A4CD  55                push bp
0000A4CE  55                push bp
0000A4CF  7FC0              jg 0xa491
0000A4D1  0000              add [bx+si],al
0000A4D3  0FF55AAA          pmaddwd mm3,[bp+si-0x56]
0000A4D7  AA                stosb
0000A4D8  A957FC            test ax,0xfc57
0000A4DB  0000              add [bx+si],al
0000A4DD  3F                aas
0000A4DE  F0F5              lock cmc
0000A4E0  5A                pop dx
0000A4E1  AA                stosb
0000A4E2  AA                stosb
0000A4E3  A957C3            test ax,0xc357
0000A4E6  FF00              inc word [bx+si]
0000A4E8  3F                aas
0000A4E9  FF                db 0xff
0000A4EA  3F                aas
0000A4EB  55                push bp
0000A4EC  55                push bp
0000A4ED  55                push bp
0000A4EE  55                push bp
0000A4EF  7F3F              jg 0xa530
0000A4F1  FF00              inc word [bx+si]
0000A4F3  0FFF              ud0
0000A4F5  0F555555          andnps xmm2,oword [di+0x55]
0000A4F9  55                push bp
0000A4FA  7C3F              jl 0xa53b
0000A4FC  FC                cld
0000A4FD  0003              add [bp+di],al
0000A4FF  FC                cld
0000A500  F3                rep
0000A501  FF                db 0xff
0000A502  FF                db 0xff
0000A503  FF                db 0xff
0000A504  FFF3              push bx
0000A506  CF                iretw
0000A507  F00000            lock add [bx+si],al
0000A50A  FC                cld
0000A50B  F0                lock
0000A50C  FE                db 0xfe
0000A50D  AA                stosb
0000A50E  AA                stosb
0000A50F  AF                scasw
0000A510  C3                ret
0000A511  CF                iretw
0000A512  C00000            rol byte [bx+si],byte 0x0
0000A515  3CF0              cmp al,0xf0
0000A517  00AAAA80          add [bp+si-0x7f56],ch
0000A51B  03CF              add cx,di
0000A51D  0000              add [bx+si],al
0000A51F  000F              add [bx],cl
0000A521  F0003F            lock add [bx],bh
0000A524  FF00              inc word [bx+si]
0000A526  03FC              add di,sp
0000A528  0000              add [bx+si],al
0000A52A  0003              add [bp+di],al
0000A52C  F000F0            lock add al,dh
0000A52F  FFC0              inc ax
0000A531  03F0              add si,ax
0000A533  0000              add [bx+si],al
0000A535  0000              add [bx+si],al
0000A537  0003              add [bp+di],al
0000A539  C3                ret
0000A53A  FFF0              push ax
0000A53C  0000              add [bx+si],al
0000A53E  0000              add [bx+si],al
0000A540  0000              add [bx+si],al
0000A542  000F              add [bx],cl
0000A544  FF                db 0xff
0000A545  FF                db 0xff
0000A546  FC                cld
0000A547  0000              add [bx+si],al
0000A549  0000              add [bx+si],al
0000A54B  0104              add [si],ax
0000A54D  0000              add [bx+si],al
0000A54F  0000              add [bx+si],al
0000A551  0102              add [bp+si],ax
0000A553  F0F00000          lock add [bx+si],al
0000A557  0000              add [bx+si],al
0000A559  0000              add [bx+si],al
0000A55B  0000              add [bx+si],al
0000A55D  0000              add [bx+si],al
0000A55F  0000              add [bx+si],al
0000A561  0000              add [bx+si],al
0000A563  0000              add [bx+si],al
0000A565  0000              add [bx+si],al
0000A567  0000              add [bx+si],al
0000A569  0000              add [bx+si],al
0000A56B  0000              add [bx+si],al
0000A56D  0000              add [bx+si],al
0000A56F  0000              add [bx+si],al
0000A571  0000              add [bx+si],al
0000A573  0000              add [bx+si],al
0000A575  0000              add [bx+si],al
0000A577  0000              add [bx+si],al
0000A579  0000              add [bx+si],al
0000A57B  0000              add [bx+si],al
0000A57D  0000              add [bx+si],al
0000A57F  00                db 0x00
