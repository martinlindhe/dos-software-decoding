00000100  0E                push cs
00000101  1F                pop ds
00000102  B800A0            mov ax,0xa000
00000105  8EC0              mov es,ax
00000107  DBE3              fninit
00000109  B81300            mov ax,0x13
0000010C  CD10              int 0x10
0000010E  BAD403            mov dx,0x3d4
00000111  B80903            mov ax,0x309
00000114  EF                out dx,ax
00000115  31C0              xor ax,ax
00000117  31DB              xor bx,bx
00000119  B93F00            mov cx,0x3f
0000011C  BAC803            mov dx,0x3c8
0000011F  EE                out dx,al
00000120  42                inc dx
00000121  88E0              mov al,ah
00000123  20D8              and al,bl
00000125  EE                out dx,al
00000126  88E0              mov al,ah
00000128  20E8              and al,ch
0000012A  08F8              or al,bh
0000012C  EE                out dx,al
0000012D  88E0              mov al,ah
0000012F  08E8              or al,ch
00000131  EE                out dx,al
00000132  FEC4              inc ah
00000134  FEC9              dec cl
00000136  75E9              jnz 0x121
00000138  08DB              or bl,bl
0000013A  750A              jnz 0x146
0000013C  08FB              or bl,bh
0000013E  08EF              or bh,ch
00000140  FECD              dec ch
00000142  B140              mov cl,0x40
00000144  EBDB              jmp short 0x121
00000146  BEED02            mov si,0x2ed
00000149  B9C000            mov cx,0xc0
0000014C  B86801            mov ax,0x168
0000014F  6631D2            xor edx,edx
00000152  B301              mov bl,0x1
00000154  668914            mov [si],edx
00000157  C74404C800        mov word [si+0x4],0xc8
0000015C  895414            mov [si+0x14],dx
0000015F  6689540C          mov [si+0xc],edx
00000163  C744105000        mov word [si+0x10],0x50
00000168  894412            mov [si+0x12],ax
0000016B  885C16            mov [si+0x16],bl
0000016E  2D1E00            sub ax,0x1e
00000171  7905              jns 0x178
00000173  B86801            mov ax,0x168
00000176  31DB              xor bx,bx
00000178  81C61700          add si,0x17
0000017C  49                dec cx
0000017D  75D5              jnz 0x154
0000017F  BEED02            mov si,0x2ed
00000182  BA1000            mov dx,0x10
00000185  B90C00            mov cx,0xc
00000188  D906D402          fld dword [0x2d4]
0000018C  D9C0              fld st0
0000018E  DE4C12            fimul word [si+0x12]
00000191  D91EE602          fstp dword [0x2e6]
00000195  DE4C10            fimul word [si+0x10]
00000198  D916E202          fst dword [0x2e2]
0000019C  D9FF              fcos
0000019E  D906E602          fld dword [0x2e6]
000001A2  D9FF              fcos
000001A4  DE0ED202          fimul word [0x2d2]
000001A8  D84C0C            fmul dword [si+0xc]
000001AB  D8C9              fmul st1
000001AD  DF06E002          fild word [0x2e0]
000001B1  DE36D002          fidiv word [0x2d0]
000001B5  D9FE              fsin
000001B7  D80EDC02          fmul dword [0x2dc]
000001BB  DE0ED202          fimul word [0x2d2]
000001BF  D84C0C            fmul dword [si+0xc]
000001C2  DEC1              faddp st1
000001C4  DF5C06            fistp word [si+0x6]
000001C7  D906E602          fld dword [0x2e6]
000001CB  D9FE              fsin
000001CD  DE0ED202          fimul word [0x2d2]
000001D1  D84C0C            fmul dword [si+0xc]
000001D4  DEC9              fmulp st1
000001D6  DE4404            fiadd word [si+0x4]
000001D9  DF5C0A            fistp word [si+0xa]
000001DC  D906E202          fld dword [0x2e2]
000001E0  D9FE              fsin
000001E2  D84C0C            fmul dword [si+0xc]
000001E5  DE0ED202          fimul word [0x2d2]
000001E9  D9440C            fld dword [si+0xc]
000001EC  D8C8              fmul st0
000001EE  DE0ECE02          fimul word [0x2ce]
000001F2  DEE9              fsubp st1
000001F4  D9E0              fchs
000001F6  DF5C08            fistp word [si+0x8]
000001F9  807C1601          cmp byte [si+0x16],0x1
000001FD  751F              jnz 0x21e
000001FF  D9440C            fld dword [si+0xc]
00000202  D806D802          fadd dword [0x2d8]
00000206  D95C0C            fstp dword [si+0xc]
00000209  FF4414            inc word [si+0x14]
0000020C  81FA0100          cmp dx,0x1
00000210  740C              jz 0x21e
00000212  817C141900        cmp word [si+0x14],0x19
00000217  7505              jnz 0x21e
00000219  C6842A0101        mov byte [si+0x12a],0x1
0000021E  817C080A00        cmp word [si+0x8],0xa
00000223  7C0A              jl 0x22f
00000225  D9EE              fldz
00000227  D95C0C            fstp dword [si+0xc]
0000022A  C744140000        mov word [si+0x14],0x0
0000022F  81C61700          add si,0x17
00000233  49                dec cx
00000234  0F8550FF          jnz near 0x188
00000238  4A                dec dx
00000239  0F8548FF          jnz near 0x185
0000023D  BEF302            mov si,0x2f3
00000240  BF2D14            mov di,0x142d
00000243  B9C000            mov cx,0xc0
00000246  69040001          imul ax,[si],word 0x100
0000024A  99                cwd
0000024B  F77C04            idiv word [si+0x4]
0000024E  05A000            add ax,0xa0
00000251  8905              mov [di],ax
00000253  6944020001        imul ax,[si+0x2],word 0x100
00000258  99                cwd
00000259  F77C04            idiv word [si+0x4]
0000025C  054B00            add ax,0x4b
0000025F  894502            mov [di+0x2],ax
00000262  695D024001        imul bx,[di+0x2],word 0x140
00000267  031D              add bx,[di]
00000269  C6872D2182        mov byte [bx+0x212d],0x82
0000026E  81C61700          add si,0x17
00000272  81C70400          add di,0x4
00000276  49                dec cx
00000277  75CD              jnz 0x246
00000279  BFAD19            mov di,0x19ad
0000027C  0FB655FF          movzx dx,[di-0x1]
00000280  0FB64501          movzx ax,[di+0x1]
00000284  01C2              add dx,ax
00000286  8A854001          mov al,[di+0x140]
0000028A  01C2              add dx,ax
0000028C  8A85C0FE          mov al,[di-0x140]
00000290  01C2              add dx,ax
00000292  C1EA02            shr dx,byte 0x2
00000295  08D2              or dl,dl
00000297  7402              jz 0x29b
00000299  FECA              dec dl
0000029B  8815              mov [di],dl
0000029D  47                inc di
0000029E  81FFFCA5          cmp di,0xa5fc
000002A2  75D8              jnz 0x27c
000002A4  BE2D21            mov si,0x212d
000002A7  31FF              xor di,di
000002A9  B9401F            mov cx,0x1f40
000002AC  F366A5            rep movsd
000002AF  BADA03            mov dx,0x3da
000002B2  EC                in al,dx
000002B3  A808              test al,0x8
000002B5  74FB              jz 0x2b2
000002B7  EC                in al,dx
000002B8  A808              test al,0x8
000002BA  75FB              jnz 0x2b7
000002BC  FF06E002          inc word [0x2e0]
000002C0  E460              in al,0x60
000002C2  FEC8              dec al
000002C4  0F85B7FE          jnz near 0x17f
000002C8  B80300            mov ax,0x3
000002CB  CD10              int 0x10
000002CD  C3                ret
000002CE  050064            add ax,0x6400
000002D1  0020              add [bx+si],ah
000002D3  0035              add [di],dh
000002D5  FA                cli
000002D6  8E3C              mov segr7,[si]
000002D8  CDCC              int 0xcc
000002DA  4C                dec sp
000002DB  3D3333            cmp ax,0x3333
000002DE  B33E              mov bl,0x3e
