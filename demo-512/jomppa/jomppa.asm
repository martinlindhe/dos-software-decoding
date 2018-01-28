00000100  686621            push word 0x2166
00000103  58                pop ax
00000104  2D2020            sub ax,0x2020
00000107  50                push ax
00000108  5C                pop sp
00000109  58                pop ax
0000010A  2D7320            sub ax,0x2073
0000010D  50                push ax
0000010E  44                inc sp
0000010F  44                inc sp
00000110  58                pop ax
00000111  2D2121            sub ax,0x2121
00000114  50                push ax
00000115  44                inc sp
00000116  44                inc sp
00000117  58                pop ax
00000118  2D603F            sub ax,0x3f60
0000011B  50                push ax
0000011C  44                inc sp
0000011D  44                inc sp
0000011E  58                pop ax
0000011F  2D2C28            sub ax,0x282c
00000122  50                push ax
00000123  44                inc sp
00000124  44                inc sp
00000125  58                pop ax
00000126  2D4075            sub ax,0x7540
00000129  50                push ax
0000012A  44                inc sp
0000012B  44                inc sp
0000012C  58                pop ax
0000012D  2D3E2B            sub ax,0x2b3e
00000130  50                push ax
00000131  5C                pop sp
00000132  687421            push word 0x2174
00000135  58                pop ax
00000136  2D2020            sub ax,0x2020
00000139  50                push ax
0000013A  5E                pop si
0000013B  50                push ax
0000013C  5F                pop di
0000013D  682022            push word 0x2220
00000140  58                pop ax
00000141  2D2020            sub ax,0x2020
00000144  50                push ax
00000145  59                pop cx
00000146  204630            and [bp+0x30],al
00000149  3020              xor [bx+si],ah
0000014B  2030              and [bx+si],dh
0000014D  3020              xor [bx+si],ah
0000014F  2020              and [bx+si],ah
00000151  2020              and [bx+si],ah
00000153  202B              and [bp+di],ch
00000155  2821              sub [bx+di],ah
00000157  2320              and sp,[bx+si]
00000159  202C              and [si],ch
0000015B  2D2120            sub ax,0x2021
0000015E  262820            sub [es:bx+si],ah
00000161  202A              and [bp+si],ch
00000163  2020              and [bx+si],ah
00000165  27                daa
00000166  2E2824            sub [cs:si],ah
00000169  2920              sub [bx+si],sp
0000016B  202D              and [di],ch
0000016D  242A              and al,0x2a
0000016F  2023              and [bp+di],ah
00000171  202E2420          and [0x2024],ch
00000175  212C              and [si],bp
00000177  2029              and [bx+di],ch
00000179  27                daa
0000017A  2B20              sub sp,[bx+si]
0000017C  202F              and [bx],ch
0000017E  2A2A              sub ch,[bp+si]
00000180  2B29              sub bp,[bx+di]
00000182  2C20              sub al,0x20
00000184  2F                das
00000185  2828              sub [bx+si],ch
00000187  292C              sub [si],bp
00000189  2F                das
0000018A  242F              and al,0x2f
0000018C  2F                das
0000018D  2D2226            sub ax,0x2622
00000190  282A              sub [bp+si],ch
00000192  2025              and [di],ah
00000194  2028              and [bx+si],ch
00000196  2C20              sub al,0x20
00000198  27                daa
00000199  2421              and al,0x21
0000019B  2A2E2822          sub ch,[0x2228]
0000019F  2E2020            and [cs:bx+si],ah
000001A2  2D2420            sub ax,0x2024
000001A5  2323              and sp,[bp+di]
000001A7  202E2429          and [0x2924],ch
000001AB  2328              and bp,[bx+si]
000001AD  212C              and [si],bp
000001AF  2323              and sp,[bp+di]
000001B1  2F                das
000001B2  2021              and [bx+di],ah
000001B4  2021              and [bx+di],ah
000001B6  2F                das
000001B7  2B2B              sub bp,[bp+di]
000001B9  2020              and [bx+si],ah
000001BB  2F                das
000001BC  22262328          and ah,[0x2823]
000001C0  2027              and [bx],ah
000001C2  27                daa
000001C3  2420              and al,0x20
000001C5  252226            and ax,0x2622
000001C8  2828              sub [bx+si],ch
000001CA  2027              and [bx],ah
000001CC  2321              and sp,[bx+di]
000001CE  2C20              sub al,0x20
000001D0  2A2A              sub ch,[bp+si]
000001D2  2E222D            and ch,[cs:di]
000001D5  2C2B              sub al,0x2b
000001D7  2420              and al,0x20
000001D9  212C              and [si],bp
000001DB  2D2126            sub ax,0x2621
000001DE  27                daa
000001DF  242C              and al,0x2c
000001E1  222B              and ch,[bp+di]
000001E3  2820              sub [bx+si],ah
000001E5  2320              and sp,[bx+si]
000001E7  202C              and [si],ch
000001E9  2D2120            sub ax,0x2021
000001EC  2B2A              sub bp,[bp+si]
000001EE  2B24              sub sp,[si]
000001F0  2021              and [bx+di],ah
000001F2  2B24              sub sp,[si]
000001F4  2029              and [bx+di],ch
000001F6  2C2D              sub al,0x2d
000001F8  2221              and ah,[bx+di]
000001FA  2C2D              sub al,0x2d
000001FC  2220              and ah,[bx+si]
000001FE  2B28              sub bp,[bx+si]
00000200  2E2122            and [cs:bp+si],sp
00000203  2B262B2C          sub sp,[0x2c2b]
00000207  2027              and [bx],ah
00000209  252420            and ax,0x2024
0000020C  2A23              sub ah,[bp+di]
0000020E  2A2A              sub ch,[bp+si]
00000210  2021              and [bx+di],ah
00000212  2C23              sub al,0x23
00000214  252726            and ax,0x2627
00000217  29262E27          sub [0x272e],sp
0000021B  2426              and al,0x26
0000021D  252722            and ax,0x2227
00000220  2220              and ah,[bx+si]
00000222  262927            sub [es:bx],sp
00000225  2322              and sp,[bp+si]
00000227  20262326          and [0x2623],ah
0000022B  2F                das
0000022C  262D2629          es sub ax,0x2926
00000230  262E2627          es daa
00000234  2220              and ah,[bx+si]
00000236  232A              and bp,[bp+si]
00000238  2228              and ch,[bx+si]
0000023A  202D              and [di],ch
0000023C  202A              and [bp+si],ch
0000023E  2224              and ah,[si]
