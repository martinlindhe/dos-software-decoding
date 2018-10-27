00000100  58                pop ax
00000101  50                push ax
00000102  50                push ax
00000103  5B                pop bx
00000104  50                push ax
00000105  48                dec ax
00000106  357E7E            xor ax,0x7e7e
00000109  50                push ax
0000010A  59                pop cx
0000010B  254041            and ax,0x4140
0000010E  50                push ax
0000010F  5E                pop si
00000110  30482E            xor [bx+si+0x2e],cl
00000113  304832            xor [bx+si+0x32],cl
00000116  31483A            xor [bx+si+0x3a],cx
00000119  30483D            xor [bx+si+0x3d],cl
0000011C  31483E            xor [bx+si+0x3e],cx
0000011F  314841            xor [bx+si+0x41],cx
00000122  314846            xor [bx+si+0x46],cx
00000125  3448              xor al,0x48
00000127  50                push ax
00000128  50                push ax
00000129  5E                pop si
0000012A  5F                pop di
0000012B  58                pop ax
0000012C  40                inc ax
0000012D  50                push ax
0000012E  2D3C21            sub ax,0x213c
00000131  727A              jc 0x1ad
00000133  243F              and al,0x3f
00000135  3440              xor al,0x40
00000137  50                push ax
00000138  5A                pop dx
00000139  58                pop ax
0000013A  51                push cx
0000013B  6B746E51          imul si,[si+0x6e],byte +0x51
0000013F  51                push cx
00000140  7379              jnc 0x1bb
00000142  2B5358            sub dx,[bp+di+0x58]
00000145  40                inc ax
00000146  63734D            arpl [bp+di+0x4d],si
00000149  60                pusha
0000014A  7C6C              jl 0x1b8
0000014C  48                dec ax
0000014D  7465              jz 0x1b4
0000014F  6B407542          imul ax,[bx+si+0x75],byte +0x42
00000153  647352            fs jnc 0x1a8
00000156  58                pop ax
00000157  57                push di
00000158  5B                pop bx
00000159  41                inc cx
0000015A  5C                pop sp
0000015B  633F              arpl [bx],di
0000015D  5F                pop di
0000015E  41                inc cx
0000015F  60                pusha
00000160  40                inc ax
00000161  5E                pop si
00000162  7477              jz 0x1db
00000164  51                push cx
00000165  736F              jnc 0x1d6
00000167  45                inc bp
00000168  40                inc ax
00000169  54                push sp
0000016A  40                inc ax
0000016B  784D              js 0x1ba
0000016D  6758              a32 pop ax
0000016F  5F                pop di
00000170  40                inc ax
00000171  42                inc dx
00000172  50                push ax
00000173  684F7B            push word 0x7b4f
00000176  42                inc dx
00000177  707D              jo 0x1f6
00000179  49                dec cx
0000017A  40                inc ax
0000017B  60                pusha
0000017C  6F                outsw
0000017D  4D                dec bp
0000017E  4C                dec sp
0000017F  50                push ax
00000180  6E                outsb
00000181  40                inc ax
00000182  747B              jz 0x1ff
00000184  7B45              jpo 0x1cb
00000186  7D74              jnl 0x1fc
00000188  647D47            fs jnl 0x1d2
0000018B  68407E            push word 0x7e40
0000018E  7E5B              jng 0x1eb
00000190  43                inc bx
00000191  42                inc dx
00000192  6C                insb
00000193  6B405F71          imul ax,[bx+si+0x5f],byte +0x71
00000197  7A40              jpe 0x1d9
00000199  5C                pop sp
0000019A  7463              jz 0x1ff
0000019C  41                inc cx
0000019D  5F                pop di
0000019E  4D                dec bp
0000019F  686E6E            push word 0x6e6e
000001A2  7945              jns 0x1e9
000001A4  4D                dec bp
000001A5  42                inc dx
000001A6  50                push ax
000001A7  6F                outsw
000001A8  53                push bx
000001A9  40                inc ax
000001AA  50                push ax
000001AB  5F                pop di
000001AC  40                inc ax
000001AD  40                inc ax
000001AE  4A                dec dx
000001AF  633F              arpl [bx],di
000001B1  5F                pop di
000001B2  51                push cx
000001B3  7D40              jnl 0x1f5
000001B5  7440              jz 0x1f7
000001B7  7840              js 0x1f9
000001B9  6C                insb
000001BA  41                inc cx
000001BB  59                pop cx
000001BC  44                inc sp
000001BD  41                inc cx
000001BE  7A5F              jpe 0x21f
000001C0  53                push bx
000001C1  7070              jo 0x233
000001C3  46                inc si
000001C4  5E                pop si
000001C5  60                pusha
000001C6  705F              jo 0x227
000001C8  61                popa
000001C9  7E4F              jng 0x21a
000001CB  48                dec ax
000001CC  3F                aas
000001CD  45                inc bp
000001CE  4A                dec dx
000001CF  60                pusha
000001D0  60                pusha
000001D1  7E57              jng 0x22a
000001D3  684340            push word 0x4043
000001D6  7C5F              jl 0x237
000001D8  61                popa
000001D9  4A                dec dx
000001DA  40                inc ax
000001DB  58                pop ax
000001DC  625F74            bound bx,[bx+0x74]
000001DF  41                inc cx
000001E0  727A              jc 0x25c
000001E2  7A6A              jpe 0x24e
000001E4  41                inc cx
000001E5  4C                dec sp
000001E6  7C4F              jl 0x237
000001E8  4E                dec si
000001E9  4F                dec di
000001EA  4B                dec bx
000001EB  634374            arpl [bp+di+0x74],ax
000001EE  3F                aas
000001EF  40                inc ax
000001F0  5F                pop di
000001F1  7459              jz 0x24c
000001F3  40                inc ax
000001F4  50                push ax
000001F5  7C5C              jl 0x253
000001F7  55                push bp
000001F8  4D                dec bp
000001F9  43                inc bx
000001FA  58                pop ax
000001FB  6F                outsw
000001FC  49                dec cx
000001FD  40                inc ax
000001FE  7845              js 0x245
00000200  7640              jna 0x242
00000202  40                inc ax
00000203  43                inc bx
00000204  6744              a32 inc sp
00000206  55                push bp
00000207  683F43            push word 0x433f
0000020A  42                inc dx
0000020B  50                push ax
0000020C  61                popa
0000020D  42                inc dx
0000020E  48                dec ax
0000020F  68416C            push word 0x6c41
00000212  42                inc dx
00000213  40                inc ax
00000214  40                inc ax
00000215  45                inc bp
00000216  7A40              jpe 0x258
00000218  40                inc ax
00000219  47                inc di
0000021A  704A              jo 0x266
0000021C  40                inc ax
0000021D  40                inc ax
0000021E  54                push sp
0000021F  684240            push word 0x4042
00000222  56                push si
00000223  40                inc ax
00000224  6B407060          imul ax,[bx+si+0x70],byte +0x60
00000228  57                push di
00000229  40                inc ax
0000022A  44                inc sp
0000022B  45                inc bp
0000022C  5B                pop bx
0000022D  54                push sp
0000022E  7551              jnz 0x281
00000230  7B4B              jpo 0x27d
00000232  6B6B6B77          imul bp,[bp+di+0x6b],byte +0x77
00000236  6B474048          imul ax,[bx+0x40],byte +0x48
0000023A  6D                insw
0000023B  4B                dec bx
0000023C  4B                dec bx
0000023D  765B              jna 0x29a
0000023F  42                inc dx
00000240  40                inc ax
00000241  5E                pop si
00000242  41                inc cx
00000243  57                push di
00000244  40                inc ax
00000245  44                inc sp
00000246  5B                pop bx
00000247  6B7D435C          imul di,[di+0x43],byte +0x5c
0000024B  4D                dec bp
0000024C  40                inc ax
0000024D  41                inc cx
0000024E  42                inc dx
0000024F  50                push ax
00000250  624058            bound ax,[bx+si+0x58]
00000253  6C                insb
00000254  6D                insw
00000255  724F              jc 0x2a6
00000257  58                pop ax
00000258  40                inc ax
00000259  41                inc cx
0000025A  42                inc dx
0000025B  50                push ax
0000025C  624048            bound ax,[bx+si+0x48]
0000025F  50                push ax
00000260  624044            bound ax,[bx+si+0x44]
00000263  50                push ax
00000264  61                popa
00000265  7E4F              jng 0x2b6
00000267  48                dec ax
00000268  40                inc ax
00000269  45                inc bp
0000026A  4A                dec dx
0000026B  60                pusha
0000026C  60                pusha
0000026D  52                push dx
0000026E  42                inc dx
0000026F  7C74              jl 0x2e5
00000271  40                inc ax
00000272  624B50            bound cx,[bp+di+0x50]
00000275  7243              jc 0x2ba
00000277  50                push ax
00000278  6E                outsb
00000279  40                inc ax
0000027A  44                inc sp
0000027B  43                inc bx
0000027C  43                inc bx
0000027D  50                push ax
0000027E  56                push si
0000027F  44                inc sp
00000280  60                pusha
00000281  4A                dec dx
00000282  7E51              jng 0x2d5
00000284  4B                dec bx
00000285  48                dec ax
00000286  6B6B5375          imul bp,[bp+di+0x53],byte +0x75
0000028A  41                inc cx
0000028B  7040              jo 0x2cd
0000028D  4C                dec sp
0000028E  4B                dec bx
0000028F  42                inc dx
00000290  7352              jnc 0x2e4
00000292  40                inc ax
00000293  636F75            arpl [bx+0x75],bp
00000296  4F                dec di
00000297  40                inc ax
00000298  60                pusha
00000299  42                inc dx
0000029A  46                inc si
0000029B  5E                pop si
0000029C  60                pusha
0000029D  635F67            arpl [bx+0x67],bx
000002A0  40                inc ax
000002A1  787B              js 0x31e
000002A3  7365              jnc 0x30a
000002A5  7659              jna 0x300
000002A7  40                inc ax
000002A8  6F                outsw
000002A9  7379              jnc 0x324
000002AB  7B4E              jpo 0x2fb
000002AD  41                inc cx
000002AE  42                inc dx
000002AF  58                pop ax
000002B0  7841              js 0x2f3
000002B2  4E                dec si
000002B3  7E7D              jng 0x332
000002B5  4B                dec bx
000002B6  40                inc ax
000002B7  60                pusha
000002B8  7750              ja 0x30a
000002BA  42                inc dx
000002BB  44                inc sp
000002BC  6E                outsb
000002BD  7E7D              jng 0x33c
000002BF  4D                dec bp
000002C0  6440              fs inc ax
000002C2  61                popa
000002C3  4B                dec bx
000002C4  5F                pop di
000002C5  7742              ja 0x309
000002C7  7473              jz 0x33c
000002C9  52                push dx
000002CA  58                pop ax
000002CB  48                dec ax
000002CC  43                inc bx
000002CD  7842              js 0x311
000002CF  58                pop ax
000002D0  6D                insw
000002D1  40                inc ax
000002D2  7E6C              jng 0x340
000002D4  44                inc sp
000002D5  5E                pop si
000002D6  7D68              jnl 0x340
000002D8  43                inc bx
000002D9  43                inc bx
000002DA  4B                dec bx
000002DB  54                push sp
000002DC  44                inc sp
000002DD  7862              js 0x341
000002DF  45                inc bp
000002E0  4C                dec sp
000002E1  7A4C              jpe 0x32f
000002E3  7976              jns 0x35b
000002E5  58                pop ax
000002E6  43                inc bx
000002E7  41                inc cx
000002E8  765A              jna 0x344
000002EA  686956            push word 0x5669
000002ED  53                push bx
000002EE  60                pusha
000002EF  6742              a32 inc dx
000002F1  52                push dx
000002F2  40                inc ax
000002F3  50                push ax
000002F4  7451              jz 0x347
000002F6  42                inc dx
