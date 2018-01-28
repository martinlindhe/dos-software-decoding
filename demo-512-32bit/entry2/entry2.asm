00000100  682023            push word 0x2320
00000103  58                pop ax
00000104  2D4020            sub ax,0x2040
00000107  50                push ax
00000108  5F                pop di
00000109  682D23            push word 0x232d
0000010C  58                pop ax
0000010D  2D7E21            sub ax,0x217e
00000110  50                push ax
00000111  5E                pop si
00000112  6A22              push byte +0x22
00000114  53                push bx
00000115  44                inc sp
00000116  58                pop ax
00000117  44                inc sp
00000118  2D7020            sub ax,0x2070
0000011B  2C3C              sub al,0x3c
0000011D  50                push ax
0000011E  5D                pop bp
0000011F  682020            push word 0x2020
00000122  59                pop cx
00000123  53                push bx
00000124  58                pop ax
00000125  48                dec ax
00000126  352020            xor ax,0x2020
00000129  50                push ax
0000012A  5A                pop dx
0000012B  306E20            xor [bp+0x20],ch
0000012E  306E2D            xor [bp+0x2d],ch
00000131  306E44            xor [bp+0x44],ch
00000134  306E51            xor [bp+0x51],ch
00000137  306E68            xor [bp+0x68],ch
0000013A  306E72            xor [bp+0x72],ch
0000013D  306E74            xor [bp+0x74],ch
00000140  307675            xor [bp+0x75],dh
00000143  306E77            xor [bp+0x77],ch
00000146  307678            xor [bp+0x78],dh
00000149  307679            xor [bp+0x79],dh
0000014C  30767A            xor [bp+0x7a],dh
0000014F  53                push bx
00000150  5D                pop bp
00000151  215D20            and [di+0x20],bx
00000154  215D22            and [di+0x22],bx
00000157  53                push bx
00000158  58                pop ax
00000159  324420            xor al,[si+0x20]
0000015C  2C3F              sub al,0x3f
0000015E  304520            xor [di+0x20],al
00000161  46                inc si
00000162  53                push bx
00000163  58                pop ax
00000164  324420            xor al,[si+0x20]
00000167  2C3F              sub al,0x3f
00000169  2430              and al,0x30
0000016B  215E20            and [bp+0x20],bx
0000016E  304620            xor [bp+0x20],al
00000171  6B462024          imul ax,[bp+0x20],byte +0x24
00000175  304520            xor [di+0x20],al
00000178  47                inc di
00000179  53                push bx
0000017A  58                pop ax
0000017B  324420            xor al,[si+0x20]
0000017E  2C3F              sub al,0x3f
00000180  242F              and al,0x2f
00000182  304520            xor [di+0x20],al
00000185  46                inc si
00000186  53                push bx
00000187  58                pop ax
00000188  324420            xor al,[si+0x20]
0000018B  2C3F              sub al,0x3f
0000018D  243C              and al,0x3c
0000018F  215E20            and [bp+0x20],bx
00000192  304620            xor [bp+0x20],al
00000195  6B462024          imul ax,[bp+0x20],byte +0x24
00000199  304520            xor [di+0x20],al
0000019C  47                inc di
0000019D  53                push bx
0000019E  58                pop ax
0000019F  324420            xor al,[si+0x20]
000001A2  2C3F              sub al,0x3f
000001A4  2423              and al,0x23
000001A6  304520            xor [di+0x20],al
000001A9  46                inc si
000001AA  53                push bx
000001AB  58                pop ax
000001AC  324420            xor al,[si+0x20]
000001AF  2C3F              sub al,0x3f
000001B1  243F              and al,0x3f
000001B3  215E20            and [bp+0x20],bx
000001B6  304620            xor [bp+0x20],al
000001B9  6B462024          imul ax,[bp+0x20],byte +0x24
000001BD  304520            xor [di+0x20],al
000001C0  46                inc si
000001C1  47                inc di
000001C2  57                push di
000001C3  58                pop ax
000001C4  3D2024            cmp ax,0x2420
000001C7  7223              jc 0x1ec
000001C9  363421            ss xor al,0x21
000001CC  365D              ss pop bp
000001CE  207762            and [bx+0x62],dh
000001D1  43                inc bx
000001D2  3F                aas
000001D3  4C                dec sp
000001D4  6F                outsw
000001D5  44                inc sp
000001D6  4B                dec bx
000001D7  3F                aas
000001D8  7E6B              jng 0x245
000001DA  3F                aas
000001DB  44                inc sp
000001DC  48                dec ax
000001DD  61                popa
000001DE  7D70              jnl 0x250
000001E0  3F                aas
000001E1  704B              jo 0x22e
000001E3  5A                pop dx
000001E4  704D              jo 0x233
000001E6  7347              jnc 0x22f
000001E8  6442              fs inc dx
000001EA  50                push ax
000001EB  47                inc di
000001EC  6C                insb
000001ED  46                inc si
000001EE  50                push ax
000001EF  47                inc di
000001F0  6446              fs inc si
000001F2  50                push ax
000001F3  41                inc cx
000001F4  50                push ax
000001F5  627E7C            bound di,[bp+0x7c]
000001F8  55                push bp
000001F9  41                inc cx
000001FA  5B                pop bx
000001FB  6F                outsw
000001FC  7760              ja 0x25e
000001FE  40                inc ax
000001FF  46                inc si
00000200  57                push di
00000201  60                pusha
00000202  46                inc si
00000203  46                inc si
00000204  57                push di
00000205  60                pusha
00000206  44                inc sp
00000207  46                inc si
00000208  52                push dx
00000209  50                push ax
0000020A  5F                pop di
0000020B  7E7C              jng 0x289
0000020D  7E40              jng 0x24f
0000020F  714F              jno 0x260
00000211  7C4B              jl 0x25e
00000213  5A                pop dx
00000214  786E              js 0x284
00000216  7E3F              jng 0x257
00000218  47                inc di
00000219  6D                insw
0000021A  43                inc bx
0000021B  4F                dec di
0000021C  49                dec cx
0000021D  6B3F44            imul di,[bx],byte +0x44
00000220  4C                dec sp
00000221  6F                outsw
00000222  43                inc bx
00000223  674F              a32 dec di
00000225  3F                aas
00000226  6746              a32 inc si
00000228  48                dec ax
00000229  6B573F4A          imul dx,[bx+0x3f],byte +0x4a
0000022D  6B3F4F            imul di,[bx],byte +0x4f
00000230  4D                dec bp
00000231  6E                outsb
00000232  61                popa
00000233  40                inc ax
00000234  47                inc di
00000235  624A40            bound cx,[bp+si+0x40]
00000238  40                inc ax
00000239  7B6D              jpo 0x2a8
0000023B  673F              a32 aas
0000023D  42                inc dx
0000023E  7C68              jl 0x2a8
00000240  7849              js 0x28b
00000242  747D              jz 0x2c1
00000244  7270              jc 0x2b6
00000246  5C                pop sp
00000247  7079              jo 0x2c2
00000249  6D                insw
0000024A  7542              jnz 0x28e
0000024C  4B                dec bx
0000024D  7748              ja 0x297
0000024F  47                inc di
00000250  44                inc sp
00000251  5E                pop si
00000252  7D6B              jnl 0x2bf
00000254  7347              jnc 0x29d
00000256  41                inc cx
00000257  735A              jnc 0x2b3
00000259  7D58              jnl 0x2b3
0000025B  60                pusha
0000025C  5F                pop di
0000025D  3F                aas
0000025E  41                inc cx
0000025F  6552              gs push dx
00000261  6740              a32 inc ax
00000263  47                inc di
00000264  40                inc ax
00000265  4E                dec si
00000266  7570              jnz 0x2d8
00000268  4E                dec si
00000269  7D6E              jnl 0x2d9
0000026B  42                inc dx
0000026C  47                inc di
0000026D  40                inc ax
0000026E  4B                dec bx
0000026F  3F                aas
00000270  7551              jnz 0x2c3
00000272  61                popa
00000273  5B                pop bx
00000274  42                inc dx
00000275  42                inc dx
00000276  60                pusha
00000277  3F                aas
00000278  3F                aas
00000279  44                inc sp
0000027A  5F                pop di
0000027B  7D76              jnl 0x2f3
0000027D  3F                aas
0000027E  41                inc cx
0000027F  7152              jno 0x2d3
00000281  7D48              jnl 0x2cb
00000283  47                inc di
00000284  6442              fs inc dx
00000286  50                push ax
00000287  49                dec cx
00000288  6D                insw
00000289  44                inc sp
0000028A  40                inc ax
0000028B  47                inc di
0000028C  49                dec cx
0000028D  62603F            bound sp,[bx+si+0x3f]
00000290  3F                aas
00000291  43                inc bx
00000292  6F                outsw
00000293  7772              ja 0x307
00000295  3F                aas
00000296  3F                aas
00000297  43                inc bx
00000298  4D                dec bp
00000299  7D40              jnl 0x2db
0000029B  45                inc bp
0000029C  47                inc di
0000029D  40                inc ax
0000029E  61                popa
0000029F  7770              ja 0x311
000002A1  4D                dec bp
000002A2  7376              jnc 0x31a
000002A4  754B              jnz 0x2f1
000002A6  7642              jna 0x2ea
000002A8  40                inc ax
000002A9  61                popa
000002AA  7D3F              jnl 0x2eb
000002AC  3F                aas
000002AD  40                inc ax
000002AE  5C                pop sp
000002AF  4A                dec dx
000002B0  7069              jo 0x31b
000002B2  3F                aas
000002B3  47                inc di
000002B4  42                inc dx
000002B5  6940474D7D        imul ax,[bx+si+0x47],word 0x7d4d
000002BA  40                inc ax
000002BB  44                inc sp
000002BC  47                inc di
000002BD  3F                aas
000002BE  5F                pop di
000002BF  45                inc bp
000002C0  43                inc bx
000002C1  3F                aas
000002C2  41                inc cx
000002C3  43                inc bx
000002C4  40                inc ax
000002C5  627E3F            bound di,[bp+0x3f]
000002C8  49                dec cx
000002C9  7D5B              jnl 0x326
000002CB  756D              jnz 0x33a
000002CD  7D42              jnl 0x311
000002CF  3F                aas
000002D0  47                inc di
000002D1  3F                aas
000002D2  5F                pop di
000002D3  6D                insw
000002D4  40                inc ax
000002D5  3F                aas
000002D6  41                inc cx
000002D7  40                inc ax
000002D8  4D                dec bp
000002D9  7D40              jnl 0x31b
000002DB  41                inc cx
000002DC  47                inc di
000002DD  3F                aas
000002DE  5F                pop di
000002DF  45                inc bp
000002E0  42                inc dx
000002E1  3F                aas
000002E2  41                inc cx
000002E3  41                inc cx
000002E4  43                inc bx
000002E5  6C                insb
000002E6  3F                aas
000002E7  4C                dec sp
000002E8  7543              jnz 0x32d
000002EA  5C                pop sp
000002EB  44                inc sp
000002EC  676E              a32 outsb
000002EE  3F                aas
000002EF  3F                aas
000002F0  4C                dec sp
000002F1  6F                outsw
000002F2  43                inc bx
000002F3  42                inc dx
000002F4  6F                outsw
000002F5  50                push ax
000002F6  3F                aas
