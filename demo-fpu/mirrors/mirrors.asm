00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  6800A0            push word 0xa000
00000107  07                pop es
00000108  BD9E81            mov bp,0x819e
0000010B  33C9              xor cx,cx
0000010D  F7C17F00          test cx,0x7f
00000111  753A              jnz 0x14d
00000113  33C0              xor ax,ax
00000115  BAC803            mov dx,0x3c8
00000118  EE                out dx,al
00000119  42                inc dx
0000011A  8BD8              mov bx,ax
0000011C  83E33F            and bx,byte +0x3f
0000011F  7504              jnz 0x125
00000121  6BED69            imul bp,bp,byte +0x69
00000124  45                inc bp
00000125  83FB20            cmp bx,byte +0x20
00000128  7C05              jl 0x12f
0000012A  F7DB              neg bx
0000012C  83C33F            add bx,byte +0x3f
0000012F  60                pusha
00000130  B90300            mov cx,0x3
00000133  8BC5              mov ax,bp
00000135  251F00            and ax,0x1f
00000138  0C2C              or al,0x2c
0000013A  0FAFC3            imul ax,bx
0000013D  C1E805            shr ax,byte 0x5
00000140  EE                out dx,al
00000141  C1ED05            shr bp,byte 0x5
00000144  E2ED              loop 0x133
00000146  61                popa
00000147  40                inc ax
00000148  3D0001            cmp ax,0x100
0000014B  7CC8              jl 0x115
0000014D  33FF              xor di,di
0000014F  C7049CFF          mov word [si],0xff9c
00000153  C744FE60FF        mov word [si-0x2],0xff60
00000158  33C0              xor ax,ax
0000015A  DBE3              fninit
0000015C  DF04              fild word [si]
0000015E  D80EC302          fmul dword [0x2c3]
00000162  D9EE              fldz
00000164  DF44FE            fild word [si-0x2]
00000167  D95CF8            fstp dword [si-0x8]
0000016A  D95CF0            fstp dword [si-0x10]
0000016D  D95CF4            fstp dword [si-0xc]
00000170  C744FC0000        mov word [si-0x4],0x0
00000175  8B5CFC            mov bx,[si-0x4]
00000178  C1E304            shl bx,byte 0x4
0000017B  81C30010          add bx,0x1000
0000017F  85FF              test di,di
00000181  7526              jnz 0x1a9
00000183  894CEC            mov [si-0x14],cx
00000186  DF44EC            fild word [si-0x14]
00000189  D80EB502          fmul dword [0x2b5]
0000018D  DF44FC            fild word [si-0x4]
00000190  D80EBF02          fmul dword [0x2bf]
00000194  D8C1              fadd st1
00000196  D9FB              fsincos
00000198  D91F              fstp dword [bx]
0000019A  D95F04            fstp dword [bx+0x4]
0000019D  D9EA              fldl2e
0000019F  DEC1              faddp st1
000001A1  D9FB              fsincos
000001A3  D95F08            fstp dword [bx+0x8]
000001A6  D95F0C            fstp dword [bx+0xc]
000001A9  D944F8            fld dword [si-0x8]
000001AC  D944F4            fld dword [si-0xc]
000001AF  D944F0            fld dword [si-0x10]
000001B2  D94708            fld dword [bx+0x8]
000001B5  D8C9              fmul st1
000001B7  D9470C            fld dword [bx+0xc]
000001BA  D8CC              fmul st4
000001BC  DEE9              fsubp st1
000001BE  D9CB              fxch st3
000001C0  D84F08            fmul dword [bx+0x8]
000001C3  D9470C            fld dword [bx+0xc]
000001C6  DECA              fmulp st2
000001C8  DEC1              faddp st1
000001CA  D9C9              fxch st1
000001CC  D94708            fld dword [bx+0x8]
000001CF  D8C9              fmul st1
000001D1  D9470C            fld dword [bx+0xc]
000001D4  D8CC              fmul st4
000001D6  DEE9              fsubp st1
000001D8  D9CB              fxch st3
000001DA  D84F08            fmul dword [bx+0x8]
000001DD  D9470C            fld dword [bx+0xc]
000001E0  DECA              fmulp st2
000001E2  DEC1              faddp st1
000001E4  D8C0              fadd st0
000001E6  D9C9              fxch st1
000001E8  D907              fld dword [bx]
000001EA  D8C9              fmul st1
000001EC  D94704            fld dword [bx+0x4]
000001EF  D8CC              fmul st4
000001F1  DEE9              fsubp st1
000001F3  D9CB              fxch st3
000001F5  D80F              fmul dword [bx]
000001F7  D94704            fld dword [bx+0x4]
000001FA  DECA              fmulp st2
000001FC  DEC1              faddp st1
000001FE  D8C0              fadd st0
00000200  D9CA              fxch st2
00000202  D8C0              fadd st0
00000204  51                push cx
00000205  81E18001          and cx,0x180
00000209  81F98001          cmp cx,0x180
0000020D  59                pop cx
0000020E  7404              jz 0x214
00000210  DE06B902          fiadd word [0x2b9]
00000214  D9EE              fldz
00000216  F7C10001          test cx,0x100
0000021A  7504              jnz 0x220
0000021C  D8C3              fadd st3
0000021E  D8C8              fmul st0
00000220  F7C18001          test cx,0x180
00000224  750C              jnz 0x232
00000226  D9C1              fld st1
00000228  D8C8              fmul st0
0000022A  DEC1              faddp st1
0000022C  D9C2              fld st2
0000022E  D8C8              fmul st0
00000230  DEC1              faddp st1
00000232  51                push cx
00000233  81E10001          and cx,0x100
00000237  81F90001          cmp cx,0x100
0000023B  59                pop cx
0000023C  750E              jnz 0x24c
0000023E  DDD8              fstp st0
00000240  D9C0              fld st0
00000242  D9E1              fabs
00000244  D9C3              fld st3
00000246  D9E1              fabs
00000248  DEC1              faddp st1
0000024A  D8C8              fmul st0
0000024C  DE26BD02          fisub word [0x2bd]
00000250  D9E4              ftst
00000252  50                push ax
00000253  DFE0              fnstsw ax
00000255  9E                sahf
00000256  58                pop ax
00000257  730F              jnc 0x268
00000259  DDD8              fstp st0
0000025B  0408              add al,0x8
0000025D  80C440            add ah,0x40
00000260  80FC00            cmp ah,0x0
00000263  742B              jz 0x290
00000265  E9FFFE            jmp 0x167
00000268  DE16BB02          ficom word [0x2bb]
0000026C  50                push ax
0000026D  DFE0              fnstsw ax
0000026F  9E                sahf
00000270  58                pop ax
00000271  D80EC702          fmul dword [0x2c7]
00000275  DF5CEC            fistp word [si-0x14]
00000278  DED9              fcompp
0000027A  DDD8              fstp st0
0000027C  7307              jnc 0x285
0000027E  02C4              add al,ah
00000280  0244EC            add al,[si-0x14]
00000283  EB0B              jmp short 0x290
00000285  FF44FC            inc word [si-0x4]
00000288  837CFC05          cmp word [si-0x4],byte +0x5
0000028C  0F8CE5FE          jl near 0x175
00000290  AA                stosb
00000291  FF44FE            inc word [si-0x2]
00000294  817CFEA000        cmp word [si-0x2],0xa0
00000299  0F85BBFE          jnz near 0x158
0000029D  FF04              inc word [si]
0000029F  833C64            cmp word [si],byte +0x64
000002A2  0F85ADFE          jnz near 0x153
000002A6  41                inc cx
000002A7  E460              in al,0x60
000002A9  98                cbw
000002AA  48                dec ax
000002AB  0F855EFE          jnz near 0x10d
000002AF  B80300            mov ax,0x3
000002B2  CD10              int 0x10
000002B4  C3                ret
000002B5  0000              add [bx+si],al
000002B7  803C92            cmp byte [si],0x92
000002BA  00F8              add al,bh
000002BC  07                pop es
000002BD  C1247C            shl word [si],byte 0x7c
000002C0  D9A03F9A          fldenv [bx+si-0x65c1]
000002C4  99                cwd
000002C5  99                cwd
000002C6  3F                aas
000002C7  0000              add [bx+si],al
000002C9  003D              add [di],bh
