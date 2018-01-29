00000100  EB4E              jmp short 0x150
00000102  90                nop
00000103  0000              add [bx+si],al
00000105  0000              add [bx+si],al
00000107  0000              add [bx+si],al
00000109  0000              add [bx+si],al
0000010B  0000              add [bx+si],al
0000010D  0000              add [bx+si],al
0000010F  0000              add [bx+si],al
00000111  0000              add [bx+si],al
00000113  0000              add [bx+si],al
00000115  0000              add [bx+si],al
00000117  0000              add [bx+si],al
00000119  0000              add [bx+si],al
0000011B  0000              add [bx+si],al
0000011D  0000              add [bx+si],al
0000011F  0000              add [bx+si],al
00000121  0000              add [bx+si],al
00000123  0000              add [bx+si],al
00000125  0000              add [bx+si],al
00000127  C00000            rol byte [bx+si],byte 0x0
0000012A  004000            add [bx+si+0x0],al
0000012D  0000              add [bx+si],al
0000012F  40                inc ax
00000130  0000              add [bx+si],al
00000132  60                pusha
00000133  40                inc ax
00000134  CDCC              int 0xcc
00000136  4C                dec sp
00000137  3C0A              cmp al,0xa
00000139  D7                xlatb
0000013A  A33C0A            mov [0xa3c],ax
0000013D  D7                xlatb
0000013E  233C              and di,[si]
00000140  0AD7              or dl,bh
00000142  23BC6666          and di,[si+0x6666]
00000146  E63F              out 0x3f,al
00000148  CDCC              int 0xcc
0000014A  4C                dec sp
0000014B  BF3333            mov di,0x3333
0000014E  333F              xor di,[bx]
00000150  B81300            mov ax,0x13
00000153  CD10              int 0x10
00000155  BAC803            mov dx,0x3c8
00000158  B001              mov al,0x1
0000015A  EE                out dx,al
0000015B  42                inc dx
0000015C  B311              mov bl,0x11
0000015E  8AC3              mov al,bl
00000160  EE                out dx,al
00000161  B000              mov al,0x0
00000163  EE                out dx,al
00000164  8AC3              mov al,bl
00000166  0405              add al,0x5
00000168  D0E0              shl al,1
0000016A  EE                out dx,al
0000016B  FECB              dec bl
0000016D  75EF              jnz 0x15e
0000016F  6800A0            push word 0xa000
00000172  07                pop es
00000173  BD007D            mov bp,0x7d00
00000176  BA4001            mov dx,0x140
00000179  BF0000            mov di,0x0
0000017C  FC                cld
0000017D  B80000            mov ax,0x0
00000180  2ED9062401        fld dword [cs:0x124]
00000185  2ED9162001        fst dword [cs:0x120]
0000018A  2ED91E1C01        fstp dword [cs:0x11c]
0000018F  2ED9061C01        fld dword [cs:0x11c]
00000194  2ED91E1401        fstp dword [cs:0x114]
00000199  2ED9062001        fld dword [cs:0x120]
0000019E  2ED91E1801        fstp dword [cs:0x118]
000001A3  B500              mov ch,0x0
000001A5  B110              mov cl,0x10
000001A7  2ED9061401        fld dword [cs:0x114]
000001AC  D8C8              fmul st0
000001AE  2ED9160301        fst dword [cs:0x103]
000001B3  2ED9061801        fld dword [cs:0x118]
000001B8  D8C8              fmul st0
000001BA  2ED9160701        fst dword [cs:0x107]
000001BF  DEC1              faddp st1
000001C1  2ED9063001        fld dword [cs:0x130]
000001C6  DED9              fcompp
000001C8  9BDFE0            fstsw ax
000001CB  9E                sahf
000001CC  723F              jc 0x20d
000001CE  90                nop
000001CF  90                nop
000001D0  2ED9060301        fld dword [cs:0x103]
000001D5  2ED9060701        fld dword [cs:0x107]
000001DA  DEE9              fsubp st1
000001DC  2ED9060C01        fld dword [cs:0x10c]
000001E1  DEC1              faddp st1
000001E3  2ED9061401        fld dword [cs:0x114]
000001E8  2ED9061801        fld dword [cs:0x118]
000001ED  DEC9              fmulp st1
000001EF  2ED9062C01        fld dword [cs:0x12c]
000001F4  DEC9              fmulp st1
000001F6  2ED9061001        fld dword [cs:0x110]
000001FB  DEC1              faddp st1
000001FD  2ED91E1801        fstp dword [cs:0x118]
00000202  2ED91E1401        fstp dword [cs:0x114]
00000207  FEC9              dec cl
00000209  759C              jnz 0x1a7
0000020B  B107              mov cl,0x7
0000020D  8AC1              mov al,cl
0000020F  AA                stosb
00000210  2ED9061C01        fld dword [cs:0x11c]
00000215  2ED9063401        fld dword [cs:0x134]
0000021A  DEC1              faddp st1
0000021C  2ED91E1C01        fstp dword [cs:0x11c]
00000221  4A                dec dx
00000222  7520              jnz 0x244
00000224  90                nop
00000225  90                nop
00000226  BA4001            mov dx,0x140
00000229  2ED9062401        fld dword [cs:0x124]
0000022E  2ED91E1C01        fstp dword [cs:0x11c]
00000233  2ED9062001        fld dword [cs:0x120]
00000238  2ED9063801        fld dword [cs:0x138]
0000023D  DEC1              faddp st1
0000023F  2ED91E2001        fstp dword [cs:0x120]
00000244  3BFD              cmp di,bp
00000246  0F8545FF          jnz near 0x18f
0000024A  B9007D            mov cx,0x7d00
0000024D  BF0000            mov di,0x0
00000250  BE00FA            mov si,0xfa00
00000253  268A05            mov al,[es:di]
00000256  268804            mov [es:si],al
00000259  47                inc di
0000025A  4E                dec si
0000025B  49                dec cx
0000025C  75F5              jnz 0x253
0000025E  268804            mov [es:si],al
00000261  2E803E0B0100      cmp byte [cs:0x10b],0x0
00000267  752B              jnz 0x294
00000269  90                nop
0000026A  90                nop
0000026B  2ED9060C01        fld dword [cs:0x10c]
00000270  2ED9063C01        fld dword [cs:0x13c]
00000275  DEC1              faddp st1
00000277  2ED9160C01        fst dword [cs:0x10c]
0000027C  2ED9064401        fld dword [cs:0x144]
00000281  DED9              fcompp
00000283  9BDFE0            fstsw ax
00000286  9E                sahf
00000287  7731              ja 0x2ba
00000289  90                nop
0000028A  90                nop
0000028B  B001              mov al,0x1
0000028D  2EA20B01          mov [cs:0x10b],al
00000291  EB27              jmp short 0x2ba
00000293  90                nop
00000294  2ED9060C01        fld dword [cs:0x10c]
00000299  2ED9064001        fld dword [cs:0x140]
0000029E  DEC1              faddp st1
000002A0  2ED9160C01        fst dword [cs:0x10c]
000002A5  2ED9064801        fld dword [cs:0x148]
000002AA  DED9              fcompp
000002AC  9BDFE0            fstsw ax
000002AF  9E                sahf
000002B0  7208              jc 0x2ba
000002B2  90                nop
000002B3  90                nop
000002B4  B000              mov al,0x0
000002B6  2EA20B01          mov [cs:0x10b],al
000002BA  2ED9061001        fld dword [cs:0x110]
000002BF  2ED9064C01        fld dword [cs:0x14c]
000002C4  DED9              fcompp
000002C6  9BDFE0            fstsw ax
000002C9  9E                sahf
000002CA  7213              jc 0x2df
000002CC  90                nop
000002CD  90                nop
000002CE  2ED9061001        fld dword [cs:0x110]
000002D3  2ED9063C01        fld dword [cs:0x13c]
000002D8  DEC1              faddp st1
000002DA  2ED91E1001        fstp dword [cs:0x110]
000002DF  B401              mov ah,0x1
000002E1  CD16              int 0x16
000002E3  0F8492FE          jz near 0x179
000002E7  B409              mov ah,0x9
000002E9  BAF202            mov dx,0x2f2
000002EC  CD21              int 0x21
000002EE  B44C              mov ah,0x4c
000002F0  CD21              int 0x21
000002F2  54                push sp
000002F3  7249              jc 0x33e
000002F5  7824              js 0x31b
