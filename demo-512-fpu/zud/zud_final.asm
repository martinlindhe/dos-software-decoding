00000100  60                pusha
00000101  B013              mov al,0x13
00000103  CD10              int 0x10
00000105  61                popa
00000106  FD                std
00000107  F3AB              rep stosw
00000109  FC                cld
0000010A  BAC803            mov dx,0x3c8
0000010D  88C8              mov al,cl
0000010F  EE                out dx,al
00000110  42                inc dx
00000111  C0E802            shr al,byte 0x2
00000114  EE                out dx,al
00000115  EE                out dx,al
00000116  EE                out dx,al
00000117  E2F1              loop 0x10a
00000119  99                cwd
0000011A  BE0103            mov si,0x301
0000011D  BF40FF            mov di,0xff40
00000120  AD                lodsw
00000121  08C1              or cl,al
00000123  B0B0              mov al,0xb0
00000125  F3AB              rep stosw
00000127  75F7              jnz 0x120
00000129  0E                push cs
0000012A  07                pop es
0000012B  DBE3              fninit
0000012D  BE0B03            mov si,0x30b
00000130  BF00FE            mov di,0xfe00
00000133  BB10FF            mov bx,0xff10
00000136  B204              mov dl,0x4
00000138  D94720            fld dword [bx+0x20]
0000013B  B103              mov cl,0x3
0000013D  DF04              fild word [si]
0000013F  AD                lodsw
00000140  E2FB              loop 0x13d
00000142  B103              mov cl,0x3
00000144  D9C3              fld st3
00000146  D9FB              fsincos
00000148  DCE5              fsubr to st5
0000014A  D9C4              fld st4
0000014C  D8C9              fmul st1
0000014E  D9C3              fld st3
00000150  D8CB              fmul st3
00000152  DEC1              faddp st1
00000154  D9CD              fxch st5
00000156  DECA              fmulp st2
00000158  DECA              fmulp st2
0000015A  DEE9              fsubp st1
0000015C  D9CA              fxch st2
0000015E  D9C9              fxch st1
00000160  E2E2              loop 0x144
00000162  D95D08            fstp dword [di+0x8]
00000165  D95D04            fstp dword [di+0x4]
00000168  D91D              fstp dword [di]
0000016A  DDD8              fstp st0
0000016C  83C710            add di,byte +0x10
0000016F  4A                dec dx
00000170  75C6              jnz 0x138
00000172  DF44F2            fild word [si-0xe]
00000175  BE50FE            mov si,0xfe50
00000178  D9EE              fldz
0000017A  B108              mov cl,0x8
0000017C  D9EE              fldz
0000017E  D9EA              fldl2e
00000180  60                pusha
00000181  B103              mov cl,0x3
00000183  D9C2              fld st2
00000185  D8C9              fmul st1
00000187  D8C1              fadd st1
00000189  D80630FF          fadd dword [0xff30]
0000018D  D9FB              fsincos
0000018F  DECA              fmulp st2
00000191  D8CB              fmul st3
00000193  D8CC              fmul st4
00000195  D86DC0            fsubr dword [di-0x40]
00000198  D914              fst dword [si]
0000019A  DCC8              fmul to st0
0000019C  DEC2              faddp st2
0000019E  A5                movsw
0000019F  A5                movsw
000001A0  E2E1              loop 0x183
000001A2  61                popa
000001A3  DDD8              fstp st0
000001A5  D86770            fsub dword [bx+0x70]
000001A8  D91F              fstp dword [bx]
000001AA  D9EC              fldlg2
000001AC  DEC1              faddp st1
000001AE  83C610            add si,byte +0x10
000001B1  83C304            add bx,byte +0x4
000001B4  E2C6              loop 0x17c
000001B6  D907              fld dword [bx]
000001B8  D84730            fadd dword [bx+0x30]
000001BB  D91F              fstp dword [bx]
000001BD  0F2875D0          movaps xmm6,oword [di-0x30]
000001C1  BF000F            mov di,0xf00
000001C4  57                push di
000001C5  B270              mov dl,0x70
000001C7  0F28EE            movaps xmm5,xmm6
000001CA  BD4001            mov bp,0x140
000001CD  0F28C5            movaps xmm0,xmm5
000001D0  E82800            call 0x1fb
000001D3  B320              mov bl,0x20
000001D5  0F586F10          addps xmm5,oword [bx+0x10]
000001D9  4D                dec bp
000001DA  75F1              jnz 0x1cd
000001DC  0F5837            addps xmm6,oword [bx]
000001DF  4A                dec dx
000001E0  75E5              jnz 0x1c7
000001E2  5E                pop si
000001E3  6870A3            push word 0xa370
000001E6  07                pop es
000001E7  31FF              xor di,di
000001E9  B546              mov ch,0x46
000001EB  F3A5              rep movsw
000001ED  E460              in al,0x60
000001EF  98                cbw
000001F0  48                dec ax
000001F1  7403              jz 0x1f6
000001F3  E933FF            jmp 0x129
000001F6  B003              mov al,0x3
000001F8  CD10              int 0x10
000001FA  C3                ret
000001FB  E8BA00            call 0x2b8
000001FE  0F28D9            movaps xmm3,xmm1
00000201  BEF0FE            mov si,0xfef0
00000204  BB50FE            mov bx,0xfe50
00000207  53                push bx
00000208  B108              mov cl,0x8
0000020A  51                push cx
0000020B  0F28C3            movaps xmm0,xmm3
0000020E  0F5907            mulps xmm0,oword [bx]
00000211  0F58C0            addps xmm0,xmm0
00000214  E8D800            call 0x2ef
00000217  F30F1104          movss dword [si],xmm0
0000021B  AD                lodsw
0000021C  AD                lodsw
0000021D  83C310            add bx,byte +0x10
00000220  59                pop cx
00000221  E2E7              loop 0x20a
00000223  5B                pop bx
00000224  0F288C6000        movaps xmm1,oword [si+0x60]
00000229  0F57D2            xorps xmm2,xmm2
0000022C  B403              mov ah,0x3
0000022E  88E0              mov al,ah
00000230  0F28E0            movaps xmm4,xmm0
00000233  0F58D1            addps xmm2,xmm1
00000236  E88F00            call 0x2c8
00000239  30E0              xor al,ah
0000023B  74F1              jz 0x22e
0000023D  0F5CE0            subps xmm4,xmm0
00000240  0F5CC1            subps xmm0,xmm1
00000243  0F5EC4            divps xmm0,xmm4
00000246  0FC6C000          shufps xmm0,xmm0,byte 0x0
0000024A  0F59C1            mulps xmm0,xmm1
0000024D  0F58D0            addps xmm2,xmm0
00000250  E87500            call 0x2c8
00000253  0F59D3            mulps xmm2,xmm3
00000256  BED0FE            mov si,0xfed0
00000259  0F57C0            xorps xmm0,xmm0
0000025C  B108              mov cl,0x8
0000025E  0F100C            movups xmm1,oword [si]
00000261  0F2827            movaps xmm4,oword [bx]
00000264  0F59C9            mulps xmm1,xmm1
00000267  0F58E2            addps xmm4,xmm2
0000026A  F30F594C70        mulss xmm1,dword [si+0x70]
0000026F  0FC6C900          shufps xmm1,xmm1,byte 0x0
00000273  0F59E1            mulps xmm4,xmm1
00000276  0F58C4            addps xmm0,xmm4
00000279  AD                lodsw
0000027A  AD                lodsw
0000027B  83C310            add bx,byte +0x10
0000027E  E2DE              loop 0x25e
00000280  E83500            call 0x2b8
00000283  0F110D            movups oword [di],xmm1
00000286  D905              fld dword [di]
00000288  D8CA              fmul st2
0000028A  DF1D              fistp word [di]
0000028C  D94504            fld dword [di+0x4]
0000028F  D8CA              fmul st2
00000291  DF5D01            fistp word [di+0x1]
00000294  8B05              mov ax,[di]
00000296  30E0              xor al,ah
00000298  242F              and al,0x2f
0000029A  0F59CB            mulps xmm1,xmm3
0000029D  0F28C1            movaps xmm0,xmm1
000002A0  E84C00            call 0x2ef
000002A3  0F1105            movups oword [di],xmm0
000002A6  D905              fld dword [di]
000002A8  DCC8              fmul to st0
000002AA  DCC8              fmul to st0
000002AC  DCC8              fmul to st0
000002AE  D8CA              fmul st2
000002B0  DF1D              fistp word [di]
000002B2  0205              add al,[di]
000002B4  0420              add al,0x20
000002B6  AA                stosb
000002B7  C3                ret
000002B8  0F28C8            movaps xmm1,xmm0
000002BB  0F59C0            mulps xmm0,xmm0
000002BE  E82E00            call 0x2ef
000002C1  0F52C0            rsqrtps xmm0,xmm0
000002C4  0F59C8            mulps xmm1,xmm0
000002C7  C3                ret
000002C8  56                push si
000002C9  0F57C0            xorps xmm0,xmm0
000002CC  B102              mov cl,0x2
000002CE  0F287CE0          movaps xmm7,oword [si-0x20]
000002D2  0F58FA            addps xmm7,xmm2
000002D5  0F59FA            mulps xmm7,xmm2
000002D8  0F583C            addps xmm7,oword [si]
000002DB  0F53FF            rcpps xmm7,xmm7
000002DE  0F297CC0          movaps oword [si-0x40],xmm7
000002E2  0F597C30          mulps xmm7,oword [si+0x30]
000002E6  0F58C7            addps xmm0,xmm7
000002E9  83C610            add si,byte +0x10
000002EC  E2E0              loop 0x2ce
000002EE  5E                pop si
000002EF  B102              mov cl,0x2
000002F1  0F12F8            movhlps xmm7,xmm0
000002F4  0F58C7            addps xmm0,xmm7
000002F7  0F14C0            unpcklps xmm0,xmm0
000002FA  E2F5              loop 0x2f1
000002FC  0F2FC1            comiss xmm0,xmm1
000002FF  9F                lahf
00000300  C3                ret
00000301  02C8              add cl,al
00000303  0E                push cs
00000304  46                inc si
00000305  083C              or [si],bh
00000307  084102            or [bx+di+0x2],al
0000030A  47                inc di
0000030B  0000              add [bx+si],al
0000030D  0000              add [bx+si],al
0000030F  2EFF60FF          jmp [cs:bx+si-0x1]
00000313  C8FFA000          enter 0xa0ff,0x0
00000317  0000              add [bx+si],al
00000319  0100              add [bx+si],ax
0000031B  0000              add [bx+si],al
0000031D  0100              add [bx+si],ax
0000031F  0000              add [bx+si],al
00000321  0000              add [bx+si],al
