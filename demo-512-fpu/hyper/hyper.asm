00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  9BDBE3            finit
00000108  DF06F902          fild word [0x2f9]
0000010C  D9C0              fld st0
0000010E  D9E8              fld1
00000110  DEC1              faddp st1
00000112  DF06FC02          fild word [0x2fc]
00000116  DEC9              fmulp st1
00000118  DEF9              fdivp st1
0000011A  D9EB              fldpi
0000011C  DEC9              fmulp st1
0000011E  D91E0003          fstp dword [0x300]
00000122  8B0EF902          mov cx,[0x2f9]
00000126  6BC903            imul cx,cx,byte +0x3
00000129  BAC803            mov dx,0x3c8
0000012C  B001              mov al,0x1
0000012E  EE                out dx,al
0000012F  42                inc dx
00000130  D9EE              fldz
00000132  D9C0              fld st0
00000134  D9FE              fsin
00000136  D9C0              fld st0
00000138  DEC9              fmulp st1
0000013A  DE0EFE02          fimul word [0x2fe]
0000013E  DF1E2203          fistp word [0x322]
00000142  A12203            mov ax,[0x322]
00000145  EE                out dx,al
00000146  D8060003          fadd dword [0x300]
0000014A  E2E6              loop 0x132
0000014C  8CC8              mov ax,cs
0000014E  050010            add ax,0x1000
00000151  8EC0              mov es,ax
00000153  33FF              xor di,di
00000155  33C0              xor ax,ax
00000157  B9007D            mov cx,0x7d00
0000015A  F3AB              rep stosw
0000015C  D906DF02          fld dword [0x2df]
00000160  D9C0              fld st0
00000162  D9C0              fld st0
00000164  D9FE              fsin
00000166  D91E1003          fstp dword [0x310]
0000016A  D9FF              fcos
0000016C  D91E1403          fstp dword [0x314]
00000170  D80EEB02          fmul dword [0x2eb]
00000174  D9FF              fcos
00000176  DE0EF302          fimul word [0x2f3]
0000017A  D91E0403          fstp dword [0x304]
0000017E  A0FB02            mov al,[0x2fb]
00000181  A22403            mov [0x324],al
00000184  A1F502            mov ax,[0x2f5]
00000187  F7D8              neg ax
00000189  A32003            mov [0x320],ax
0000018C  C7061E039CFF      mov word [0x31e],0xff9c
00000192  BFA000            mov di,0xa0
00000195  DF061E03          fild word [0x31e]
00000199  D80E1403          fmul dword [0x314]
0000019D  DF062003          fild word [0x320]
000001A1  D80E1003          fmul dword [0x310]
000001A5  DEC1              faddp st1
000001A7  D9C0              fld st0
000001A9  D9E1              fabs
000001AB  D81EEF02          fcomp dword [0x2ef]
000001AF  9BDFE0            fstsw ax
000001B2  9E                sahf
000001B3  7C56              jl 0x20b
000001B5  DE3EF302          fidivr word [0x2f3]
000001B9  D9C0              fld st0
000001BB  DEC9              fmulp st1
000001BD  DF062003          fild word [0x320]
000001C1  D80E1403          fmul dword [0x314]
000001C5  DF061E03          fild word [0x31e]
000001C9  D80E1003          fmul dword [0x310]
000001CD  DEE9              fsubp st1
000001CF  D9C0              fld st0
000001D1  DEC9              fmulp st1
000001D3  DEE9              fsubp st1
000001D5  D8060403          fadd dword [0x304]
000001D9  D9E4              ftst
000001DB  9BDFE0            fstsw ax
000001DE  D91E1803          fstp dword [0x318]
000001E2  9E                sahf
000001E3  7226              jc 0x20b
000001E5  D9061803          fld dword [0x318]
000001E9  D9FA              fsqrt
000001EB  D80EE702          fmul dword [0x2e7]
000001EF  DF1E1C03          fistp word [0x31c]
000001F3  8B0E1C03          mov cx,[0x31c]
000001F7  81F9A000          cmp cx,0xa0
000001FB  7603              jna 0x200
000001FD  B9A000            mov cx,0xa0
00000200  A02403            mov al,[0x324]
00000203  57                push di
00000204  2BF9              sub di,cx
00000206  03C9              add cx,cx
00000208  F3AA              rep stosb
0000020A  5F                pop di
0000020B  81C74001          add di,0x140
0000020F  FF061E03          inc word [0x31e]
00000213  833E1E0364        cmp word [0x31e],byte +0x64
00000218  0F8E79FF          jng near 0x195
0000021C  FE0E2403          dec byte [0x324]
00000220  7506              jnz 0x228
00000222  A1F902            mov ax,[0x2f9]
00000225  A22403            mov [0x324],al
00000228  A12003            mov ax,[0x320]
0000022B  0306F702          add ax,[0x2f7]
0000022F  A32003            mov [0x320],ax
00000232  3B06F502          cmp ax,[0x2f5]
00000236  0F8E52FF          jng near 0x18c
0000023A  1E                push ds
0000023B  06                push es
0000023C  1F                pop ds
0000023D  33F6              xor si,si
0000023F  33FF              xor di,di
00000241  6800A0            push word 0xa000
00000244  07                pop es
00000245  B9803E            mov cx,0x3e80
00000248  F366A5            rep movsd
0000024B  1F                pop ds
0000024C  D906DF02          fld dword [0x2df]
00000250  D806E302          fadd dword [0x2e3]
00000254  D91EDF02          fstp dword [0x2df]
00000258  E460              in al,0x60
0000025A  FEC8              dec al
0000025C  0F85ECFE          jnz near 0x14c
00000260  B80300            mov ax,0x3
00000263  CD10              int 0x10
00000265  C3                ret
00000266  005468            add [si+0x68],dl
00000269  6973206765        imul si,[bp+di+0x20],word 0x6567
0000026E  6F                outsw
0000026F  6D                insw
00000270  657472            gs jz 0x2e5
00000273  6963207073        imul sp,[bp+di+0x20],word 0x7370
00000278  7963              jns 0x2dd
0000027A  686F64            push word 0x646f
0000027D  656C              gs insb
0000027F  6963206572        imul sp,[bp+di+0x20],word 0x7265
00000284  6F                outsw
00000285  7469              jz 0x2f0
00000287  6320              arpl [bx+si],sp
00000289  7368              jnc 0x2f3
0000028B  6F                outsw
0000028C  7720              ja 0x2ae
0000028E  6973206372        imul si,[bp+di+0x20],word 0x7263
00000293  6561              gs popa
00000295  7465              jz 0x2fc
00000297  64206279          and [fs:bp+si+0x79],ah
0000029B  20446F            and [si+0x6f],al
0000029E  63746F            arpl [si+0x6f],si
000002A1  7220              jc 0x2c3
000002A3  47                inc di
000002A4  6C                insb
000002A5  6F                outsw
000002A6  207370            and [bp+di+0x70],dh
000002A9  65636961          arpl [gs:bx+di+0x61],bp
000002AD  6C                insb
000002AE  6C                insb
000002AF  7920              jns 0x2d1
000002B1  666F              outsd
000002B3  7220              jc 0x2d5
000002B5  4D                dec bp
000002B6  696C6C656E        imul bp,[si+0x6c],word 0x6e65
000002BB  6E                outsb
000002BC  69756D2731        imul si,[di+0x6d],word 0x3127
000002C1  3930              cmp [bx+si],si
000002C3  322E004D          xor ch,[0x4d00]
000002C7  61                popa
000002C8  696C746F3A        imul bp,[si+0x74],word 0x3a6f
000002CD  676C              a32 insb
000002CF  6F                outsw
000002D0  7269              jc 0x33b
000002D2  6A61              push byte +0x61
000002D4  40                inc ax
000002D5  656C              gs insb
000002D7  6C                insb
000002D8  696E6B2E72        imul bp,[bp+0x6b],word 0x722e
000002DD  7500              jnz 0x2df
000002DF  0000              add [bx+si],al
000002E1  0000              add [bx+si],al
000002E3  0AD7              or dl,bh
000002E5  A33B9A            mov [0x9a3b],ax
000002E8  99                cwd
000002E9  99                cwd
000002EA  3F                aas
000002EB  5C                pop sp
000002EC  8F                db 0x8f
000002ED  A23F6F            mov [0x6f3f],al
000002F0  12833A48          adc al,[bp+di+0x483a]
000002F4  F4                hlt
000002F5  C7010A00          mov word [bx+di],0xa
000002F9  0E                push cs
000002FA  0001              add [bx+di],al
000002FC  0300              add ax,[bx+si]
000002FE  3F                aas
000002FF  00                db 0x00
