00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  6800A0            push word 0xa000
00000107  07                pop es
00000108  BA8002            mov dx,0x280
0000010B  B1B8              mov cl,0xb8
0000010D  33FF              xor di,di
0000010F  B7FA              mov bh,0xfa
00000111  BD70FE            mov bp,0xfe70
00000114  BE80FD            mov si,0xfd80
00000117  4B                dec bx
00000118  E84600            call word 0x161
0000011B  83C604            add si,byte +0x4
0000011E  3BF2              cmp si,dx
00000120  75F5              jnz 0x117
00000122  83C504            add bp,byte +0x4
00000125  75ED              jnz 0x114
00000127  29068B01          sub [0x18b],ax
0000012B  E2E0              loop 0x10d
0000012D  B140              mov cl,0x40
0000012F  33FF              xor di,di
00000131  BBC0F8            mov bx,0xf8c0
00000134  BD6400            mov bp,0x64
00000137  BEC0FE            mov si,0xfec0
0000013A  60                pushaw
0000013B  0FAFE9            imul bp,cx
0000013E  0FAFF1            imul si,cx
00000141  D1FD              sar bp,1
00000143  D1FE              sar si,1
00000145  89368101          mov [0x181],si
00000149  892E8B01          mov [0x18b],bp
0000014D  E81100            call word 0x161
00000150  61                popaw
00000151  43                inc bx
00000152  47                inc di
00000153  46                inc si
00000154  75E4              jnz 0x13a
00000156  2BDA              sub bx,dx
00000158  4D                dec bp
00000159  75DC              jnz 0x137
0000015B  E2D2              loop 0x12f
0000015D  B003              mov al,0x3
0000015F  CD10              int 0x10
00000161  60                pushaw
00000162  53                push bx
00000163  B110              mov cl,0x10
00000165  8BC5              mov ax,bp
00000167  F7E8              imul ax
00000169  8ADC              mov bl,ah
0000016B  8AFA              mov bh,dl
0000016D  8BC6              mov ax,si
0000016F  F7E8              imul ax
00000171  0FACD008          shrd ax,dx,0x8
00000175  03C3              add ax,bx
00000177  80FC04            cmp ah,0x4
0000017A  7D14              jnl 0x190
0000017C  2BC3              sub ax,bx
0000017E  2BC3              sub ax,bx
00000180  052200            add ax,0x22
00000183  96                xchg ax,si
00000184  F7ED              imul bp
00000186  0FACD007          shrd ax,dx,0x7
0000018A  05DC05            add ax,0x5dc
0000018D  95                xchg ax,bp
0000018E  E2D5              loop 0x165
00000190  91                xchg ax,cx
00000191  0410              add al,0x10
00000193  AA                stosb
00000194  5F                pop di
00000195  AA                stosb
00000196  61                popaw
00000197  47                inc di
00000198  C3                ret
