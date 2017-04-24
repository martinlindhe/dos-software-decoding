00000100  9BDBE3            finit
00000103  B81300            mov ax,0x13
00000106  CD10              int 0x10
00000108  1E                push ds
00000109  07                pop es
0000010A  BF2803            mov di,0x328
0000010D  33C0              xor ax,ax
0000010F  B9803E            mov cx,0x3e80
00000112  F366AB            rep stosd
00000115  D906E802          fld dword [0x2e8]
00000119  D9C0              fld st0
0000011B  D9FE              fsin
0000011D  D91E0403          fstp dword [0x304]
00000121  D9FF              fcos
00000123  D91E0803          fstp dword [0x308]
00000127  B81000            mov ax,0x10
0000012A  A32603            mov [0x326],ax
0000012D  A32403            mov [0x324],ax
00000130  A1E402            mov ax,[0x2e4]
00000133  F7D8              neg ax
00000135  A32203            mov [0x322],ax
00000138  B89CFF            mov ax,0xff9c
0000013B  A32003            mov [0x320],ax
0000013E  B8A000            mov ax,0xa0
00000141  A3F002            mov [0x2f0],ax
00000144  DF062203          fild word [0x322]
00000148  D80EEC02          fmul dword [0x2ec]
0000014C  D906E802          fld dword [0x2e8]
00000150  D80EF802          fmul dword [0x2f8]
00000154  D9FE              fsin
00000156  D906E802          fld dword [0x2e8]
0000015A  D80EFC02          fmul dword [0x2fc]
0000015E  D9FF              fcos
00000160  DEC1              faddp st1
00000162  DEC9              fmulp st1
00000164  D9FE              fsin
00000166  D9C0              fld st0
00000168  D806F402          fadd dword [0x2f4]
0000016C  D91E0003          fstp dword [0x300]
00000170  DE0EF002          fimul word [0x2f0]
00000174  DE06F002          fiadd word [0x2f0]
00000178  DF1EF002          fistp word [0x2f0]
0000017C  DF06E202          fild word [0x2e2]
00000180  DF062003          fild word [0x320]
00000184  D80E0803          fmul dword [0x308]
00000188  DF062203          fild word [0x322]
0000018C  D80E0403          fmul dword [0x304]
00000190  DEE9              fsubp st1
00000192  D9C0              fld st0
00000194  DEC9              fmulp st1
00000196  DEE9              fsubp st1
00000198  D9E4              ftst
0000019A  9BDFE0            fstsw ax
0000019D  D91E0C03          fstp dword [0x30c]
000001A1  9E                sahf
000001A2  0F82A700          jc word 0x24d
000001A6  DF062203          fild word [0x322]
000001AA  D80E0803          fmul dword [0x308]
000001AE  DF062003          fild word [0x320]
000001B2  D80E0403          fmul dword [0x304]
000001B6  DEC1              faddp st1
000001B8  D9C0              fld st0
000001BA  DEC9              fmulp st1
000001BC  D91E1003          fstp dword [0x310]
000001C0  D9060C03          fld dword [0x30c]
000001C4  D9FA              fsqrt
000001C6  D9160C03          fst dword [0x30c]
000001CA  DF06E002          fild word [0x2e0]
000001CE  D80EDC02          fmul dword [0x2dc]
000001D2  DEC1              faddp st1
000001D4  D9C0              fld st0
000001D6  DEC9              fmulp st1
000001D8  D8261003          fsub dword [0x310]
000001DC  D9E4              ftst
000001DE  9BDFE0            fstsw ax
000001E1  D91E1403          fstp dword [0x314]
000001E5  9E                sahf
000001E6  7265              jc 0x24d
000001E8  D9061403          fld dword [0x314]
000001EC  D9FA              fsqrt
000001EE  D80E0003          fmul dword [0x300]
000001F2  DF1E1C03          fistp word [0x31c]
000001F6  8B3EF202          mov di,[0x2f2]
000001FA  033E2003          add di,[0x320]
000001FE  69FF4001          imul di,di,word 0x140
00000202  81C72803          add di,0x328
00000206  DF06E002          fild word [0x2e0]
0000020A  D80EDC02          fmul dword [0x2dc]
0000020E  D8260C03          fsub dword [0x30c]
00000212  D9C0              fld st0
00000214  DEC9              fmulp st1
00000216  D8261003          fsub dword [0x310]
0000021A  D9E4              ftst
0000021C  9BDFE0            fstsw ax
0000021F  D91E1803          fstp dword [0x318]
00000223  9E                sahf
00000224  7305              jnc 0x22b
00000226  A11C03            mov ax,[0x31c]
00000229  EB1A              jmp short 0x245
0000022B  D9061803          fld dword [0x318]
0000022F  D9FA              fsqrt
00000231  D80E0003          fmul dword [0x300]
00000235  DF1E1E03          fistp word [0x31e]
00000239  E87800            call word 0x2b4
0000023C  A11E03            mov ax,[0x31e]
0000023F  F7D8              neg ax
00000241  87061C03          xchg ax,[0x31c]
00000245  F7D8              neg ax
00000247  A31E03            mov [0x31e],ax
0000024A  E86700            call word 0x2b4
0000024D  A12003            mov ax,[0x320]
00000250  40                inc ax
00000251  A32003            mov [0x320],ax
00000254  3D6400            cmp ax,0x64
00000257  0F8E21FF          jng word 0x17c
0000025B  A12603            mov ax,[0x326]
0000025E  050100            add ax,0x1
00000261  3D2E00            cmp ax,0x2e
00000264  7C03              jl 0x269
00000266  B81000            mov ax,0x10
00000269  A32603            mov [0x326],ax
0000026C  3D2000            cmp ax,0x20
0000026F  7C05              jl 0x276
00000271  F7D8              neg ax
00000273  053E00            add ax,0x3e
00000276  A32403            mov [0x324],ax
00000279  A12203            mov ax,[0x322]
0000027C  0306E602          add ax,[0x2e6]
00000280  A32203            mov [0x322],ax
00000283  3B06E402          cmp ax,[0x2e4]
00000287  0F8EADFE          jng word 0x138
0000028B  33FF              xor di,di
0000028D  6800A0            push word 0xa000
00000290  07                pop es
00000291  BE2803            mov si,0x328
00000294  B9803E            mov cx,0x3e80
00000297  F366A5            rep movsd
0000029A  D906E802          fld dword [0x2e8]
0000029E  D806EC02          fadd dword [0x2ec]
000002A2  D91EE802          fstp dword [0x2e8]
000002A6  E460              in al,0x60
000002A8  FEC8              dec al
000002AA  0F855AFE          jnz word 0x108
000002AE  B80300            mov ax,0x3
000002B1  CD10              int 0x10
000002B3  C3                ret
000002B4  57                push di
000002B5  A1F002            mov ax,[0x2f0]
000002B8  8BC8              mov cx,ax
000002BA  03061E03          add ax,[0x31e]
000002BE  7D02              jnl 0x2c2
000002C0  33C0              xor ax,ax
000002C2  030E1C03          add cx,[0x31c]
000002C6  81F94001          cmp cx,0x140
000002CA  7C03              jl 0x2cf
000002CC  B93F01            mov cx,0x13f
000002CF  2BC8              sub cx,ax
000002D1  7C07              jl 0x2da
000002D3  03F8              add di,ax
000002D5  A12403            mov ax,[0x324]
000002D8  F3AA              rep stosb
000002DA  5F                pop di
000002DB  C3                ret
000002DC  0000              add [bx+si],al
000002DE  004020            add [bx+si+0x20],al
000002E1  0000              add [bx+si],al
000002E3  0460              add al,0x60
000002E5  0008              add [bx+si],cl
000002E7  0000              add [bx+si],al
000002E9  0000              add [bx+si],al
000002EB  000A              add [bp+si],cl
000002ED  D7                xlatb
000002EE  A33CA0            mov [0xa03c],ax
000002F1  006400            add [si+0x0],ah
000002F4  9A99993F29        call word 0x293f:0x9999
000002F9  5C                pop sp
000002FA  AF                scasw
000002FB  3F                aas
000002FC  713D              jno 0x33b
000002FE  EA                db 0xea
000002FF  3F                aas
