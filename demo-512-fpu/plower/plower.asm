00000100  5A                pop dx
00000101  52                push dx
00000102  52                push dx
00000103  52                push dx
00000104  665A              pop edx
00000106  687021            push word 0x2170
00000109  58                pop ax
0000010A  50                push ax
0000010B  2D5120            sub ax,0x2051
0000010E  50                push ax
0000010F  50                push ax
00000110  5D                pop bp
00000111  685D5D            push word 0x5d5d
00000114  5B                pop bx
00000115  285E20            sub [bp+0x20],bl
00000118  295E26            sub [bp+0x26],bx
0000011B  5B                pop bx
0000011C  5F                pop di
0000011D  66215520          and [di+0x20],edx
00000121  6A24              push byte +0x24
00000123  58                pop ax
00000124  2C20              sub al,0x20
00000126  6A20              push byte +0x20
00000128  59                pop cx
00000129  284E2A            sub [bp+0x2a],cl
0000012C  666B4D2040        imul ecx,[di+0x20],byte +0x40
00000131  324E2A            xor cl,[bp+0x2a]
00000134  66215520          and [di+0x20],edx
00000138  66314D20          xor [di+0x20],ecx
0000013C  45                inc bp
0000013D  48                dec ax
0000013E  7543              jnz 0x183
00000140  47                inc di
00000141  47                inc di
00000142  47                inc di
00000143  4B                dec bx
00000144  7534              jnz 0x17a
00000146  47                inc di
00000147  47                inc di
00000148  205331            and [bp+di+0x31],dl
0000014B  2E50              cs push ax
0000014D  36215830          and [ss:bx+si+0x30],bx
00000151  2420              and al,0x20
00000153  2025              and [di],ah
00000155  4F                dec di
00000156  303D              xor [di],bh
00000158  305632            xor [bp+0x32],dl
0000015B  2A4F5B            sub cl,[bx+0x5b]
0000015E  4D                dec bp
0000015F  47                inc di
00000160  4E                dec si
00000161  42                inc dx
00000162  5C                pop sp
00000163  205352            and [bp+di+0x52],dl
00000166  284F58            sub [bx+0x58],cl
00000169  4A                dec dx
0000016A  4F                dec di
0000016B  2D2923            sub ax,0x2329
0000016E  245A              and al,0x5a
00000170  2B574C            sub dx,[bx+0x4c]
00000173  27                daa
00000174  395750            cmp [bx+0x50],dx
00000177  49                dec cx
00000178  3651              ss push cx
0000017A  2F                das
0000017B  3B4021            cmp ax,[bx+si+0x21]
0000017E  27                daa
0000017F  352156            xor ax,0x5621
00000182  3D433D            cmp ax,0x3d43
00000185  50                push ax
00000186  3D4748            cmp ax,0x4847
00000189  23445B            and ax,[si+0x5b]
0000018C  38563F            cmp [bp+0x3f],dl
0000018F  5B                pop bx
00000190  39503D            cmp [bx+si+0x3d],dx
00000193  5B                pop bx
00000194  48                dec ax
00000195  2644              es inc sp
00000197  5B                pop bx
00000198  3825              cmp [di],ah
0000019A  44                inc sp
0000019B  3B38              cmp di,[bx+si]
0000019D  28455B            sub [di+0x5b],al
000001A0  39563E            cmp [bp+0x3e],dx
000001A3  5B                pop bx
000001A4  39505D            cmp [bx+si+0x5d],dx
000001A7  43                inc bx
000001A8  20574C            and [bx+0x4c],dl
000001AB  27                daa
000001AC  395630            cmp [bp+0x30],dx
000001AF  212E5A2D          and [0x2d5a],bp
000001B3  47                inc di
000001B4  5E                pop si
000001B5  57                push di
000001B6  4C                dec sp
000001B7  3339              xor di,[bx+di]
000001B9  52                push dx
000001BA  3D5B49            cmp ax,0x495b
000001BD  57                push di
000001BE  4C                dec sp
000001BF  2B39              sub di,[bx+di]
000001C1  56                push si
000001C2  3029              xor [bx+di],ch
000001C4  2E51              cs push cx
000001C6  2D475E            sub ax,0x5e47
000001C9  57                push di
000001CA  4C                dec sp
000001CB  47                inc di
000001CC  3E334D43          xor cx,[ds:di+0x43]
000001D0  2131              and [bx+di],si
000001D2  4D                dec bp
000001D3  40                inc ax
000001D4  32523D            xor dl,[bp+si+0x3d]
000001D7  44                inc sp
000001D8  42                inc dx
000001D9  56                push si
000001DA  2F                das
000001DB  4F                dec di
000001DC  3933              cmp [bp+di],si
000001DE  4D                dec bp
000001DF  5B                pop bx
000001E0  2A37              sub dh,[bx]
000001E2  4D                dec bp
000001E3  5C                pop sp
000001E4  2452              and al,0x52
000001E6  3D5846            cmp ax,0x4658
000001E9  21445B            and [si+0x5b],ax
000001EC  3E2A25            sub ah,[ds:di]
000001EF  5B                pop bx
000001F0  3F                aas
000001F1  2A24              sub ah,[si]
000001F3  3A2B              cmp ch,[bp+di]
000001F5  2034              and [si],dh
000001F7  225A42            and bl,[bp+si+0x42]
000001FA  5E                pop si
000001FB  2B5721            sub dx,[bx+0x21]
000001FE  4B                dec bx
000001FF  4F                dec di
00000200  58                pop ax
00000201  3F                aas
00000202  40                inc ax
00000203  2C20              sub al,0x20
00000205  51                push cx
00000206  58                pop ax
00000207  2446              and al,0x46
00000209  43                inc bx
0000020A  37                aaa
0000020B  56                push si
0000020C  40                inc ax
0000020D  5F                pop di
0000020E  37                aaa
0000020F  5A                pop dx
00000210  55                push bp
00000211  4A                dec dx
00000212  40                inc ax
00000213  5E                pop si
00000214  50                push ax
00000215  2128              and [bx+si],bp
00000217  48                dec ax
00000218  46                inc si
00000219  3D3C22            cmp ax,0x223c
0000021C  2422              and al,0x22
0000021E  3B20              cmp sp,[bx+si]
00000220  2A21              sub ah,[bx+di]
00000222  284046            sub [bx+si+0x46],al
00000225  41                inc cx
00000226  284046            sub [bx+si+0x46],al
00000229  314025            xor [bx+si+0x25],ax
0000022C  215A27            and [bp+si+0x27],bx
0000022F  352B27            xor ax,0x272b
00000232  44                inc sp
00000233  3B38              cmp di,[bx+si]
00000235  44                inc sp
00000236  27                daa
00000237  352957            xor ax,0x5729
0000023A  3D433D            cmp ax,0x3d43
0000023D  394D43            cmp [di+0x43],cx
00000240  3839              cmp [bx+di],bh
00000242  4D                dec bp
00000243  40                inc ax
00000244  3A523D            cmp dl,[bp+si+0x3d]
00000247  44                inc sp
00000248  3A26443B          cmp ah,[0x3b44]
0000024C  3822              cmp [bp+si],ah
0000024E  253B3E            and ax,0x3e3b
00000251  5D                pop bp
00000252  4E                dec si
00000253  233F              and di,[bx]
00000255  3D3427            cmp ax,0x2734
00000258  2431              and al,0x31
0000025A  48                dec ax
0000025B  4C                dec sp
0000025C  3131              xor [bx+di],si
0000025E  48                dec ax
0000025F  44                inc sp
00000260  224054            and al,[bx+si+0x54]
00000263  2020              and [bx+si],ah
00000265  42                inc dx
00000266  303F              xor [bx],bh
00000268  40                inc ax
00000269  57                push di
0000026A  3029              xor [bx+di],ch
0000026C  265B              es pop bx
0000026E  4D                dec bp
0000026F  47                inc di
00000270  38405C            cmp [bx+si+0x5c],al
00000273  47                inc di
00000274  3921              cmp [bx+di],sp
00000276  305126            xor [bx+di+0x26],dl
00000279  2327              and sp,[bx]
0000027B  5A                pop dx
0000027C  213D              and [di],di
0000027E  40                inc ax
0000027F  40                inc ax
00000280  2031              and [bx+di],dh
00000282  4C                dec sp
00000283  3C25              cmp al,0x25
00000285  2220              and ah,[bx+si]
00000287  202C              and [si],ch
00000289  214038            and [bx+si+0x38],ax
0000028C  3E2026403F        and [ds:0x3f40],ah
00000291  4E                dec si
00000292  40                inc ax
00000293  3E40              ds inc ax
00000295  5B                pop bx
00000296  202F              and [bx],ch
00000298  3A3D              cmp bh,[di]
0000029A  304248            xor [bp+si+0x48],al
0000029D  4A                dec dx
0000029E  2E53              cs push bx
000002A0  5B                pop bx
000002A1  5E                pop si
000002A2  57                push di
000002A3  3028              xor [bx+si],ch
000002A5  2F                das
000002A6  48                dec ax
000002A7  225942            and bl,[bx+di+0x42]
000002AA  5F                pop di
000002AB  385339            cmp [bp+di+0x39],dl
000002AE  4F                dec di
000002AF  2F                das
000002B0  5E                pop si
000002B1  27                daa
000002B2  50                push ax
000002B3  3E45              ds inc bp
000002B5  5F                pop di
000002B6  46                inc si
000002B7  234441            and ax,[si+0x41]
000002BA  305F28            xor [bx+0x28],bl
000002BD  4E                dec si
000002BE  2F                das
000002BF  5B                pop bx
000002C0  59                pop cx
000002C1  53                push bx
000002C2  3020              xor [bx+si],ah
000002C4  2320              and sp,[bx+si]
000002C6  2C2C              sub al,0x2c
000002C8  3020              xor [bx+si],ah
000002CA  2030              and [bx+si],dh
000002CC  202F              and [bx],ch
000002CE  2021              and [bx+di],ah
000002D0  58                pop ax
000002D1  2020              and [bx+si],ah
000002D3  2820              sub [bx+si],ah
000002D5  2030              and [bx+si],dh
000002D7  2021              and [bx+di],ah
000002D9  4D                dec bp
000002DA  3440              xor al,0x40
000002DC  2020              and [bx+si],ah
000002DE  2423              and al,0x23
000002E0  3B2F              cmp bp,[bx]
000002E2  50                push ax
000002E3  2020              and [bx+si],ah
000002E5  294639            sub [bp+0x39],ax
000002E8  46                inc si
000002E9  55                push bp
000002EA  50                push ax
000002EB  48                dec ax
000002EC  5F                pop di
000002ED  56                push si
000002EE  53                push bx
000002EF  50                push ax
000002F0  43                inc bx
000002F1  2E54              cs push sp
000002F3  44                inc sp
000002F4  2F                das
