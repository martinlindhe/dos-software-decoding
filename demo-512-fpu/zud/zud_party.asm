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
0000011A  0E                push cs
0000011B  07                pop es
0000011C  DBE3              fninit
0000011E  BED902            mov si,0x2d9
00000121  BF40FF            mov di,0xff40
00000124  AD                lodsw
00000125  08C1              or cl,al
00000127  B0A0              mov al,0xa0
00000129  F3AB              rep stosw
0000012B  75F7              jnz 0x124
0000012D  DF04              fild word [si]
0000012F  4E                dec si
00000130  BF08FE            mov di,0xfe08
00000133  B105              mov cl,0x5
00000135  AD                lodsw
00000136  AB                stosw
00000137  AB                stosw
00000138  E2FB              loop 0x135
0000013A  D9E8              fld1
0000013C  D95508            fst dword [di+0x8]
0000013F  D95D14            fstp dword [di+0x14]
00000142  BD0400            mov bp,0x4
00000145  BE50FE            mov si,0xfe50
00000148  BB10FF            mov bx,0xff10
0000014B  D9EE              fldz
0000014D  B208              mov dl,0x8
0000014F  D9EE              fldz
00000151  D9EA              fldl2e
00000153  BF00FE            mov di,0xfe00
00000156  B103              mov cl,0x3
00000158  D9C2              fld st2
0000015A  D8C9              fmul st1
0000015C  D8C1              fadd st1
0000015E  D80630FF          fadd dword [0xff30]
00000162  D9FB              fsincos
00000164  DECA              fmulp st2
00000166  D8CB              fmul st3
00000168  D8CC              fmul st4
0000016A  D82D              fsubr dword [di]
0000016C  D914              fst dword [si]
0000016E  DCC8              fmul to st0
00000170  DEC2              faddp st2
00000172  01EE              add si,bp
00000174  01EF              add di,bp
00000176  E2E0              loop 0x158
00000178  DDD8              fstp st0
0000017A  D86770            fsub dword [bx+0x70]
0000017D  D91F              fstp dword [bx]
0000017F  D9EC              fldlg2
00000181  DEC1              faddp st1
00000183  01EE              add si,bp
00000185  01EB              add bx,bp
00000187  4A                dec dx
00000188  75C5              jnz 0x14f
0000018A  D907              fld dword [bx]
0000018C  D84730            fadd dword [bx+0x30]
0000018F  D91F              fstp dword [bx]
00000191  0F2833            movaps xmm6,oword [bp+di]
00000194  BF000F            mov di,0xf00
00000197  57                push di
00000198  B2A0              mov dl,0xa0
0000019A  0F28EE            movaps xmm5,xmm6
0000019D  BD4001            mov bp,0x140
000001A0  0F28C5            movaps xmm0,xmm5
000001A3  E82900            call 0x1cf
000001A6  0F582E30FE        addps xmm5,oword [0xfe30]
000001AB  4D                dec bp
000001AC  75F2              jnz 0x1a0
000001AE  0F583620FE        addps xmm6,oword [0xfe20]
000001B3  4A                dec dx
000001B4  75E4              jnz 0x19a
000001B6  5E                pop si
000001B7  6870A3            push word 0xa370
000001BA  07                pop es
000001BB  31FF              xor di,di
000001BD  B546              mov ch,0x46
000001BF  F3A5              rep movsw
000001C1  E460              in al,0x60
000001C3  98                cbw
000001C4  48                dec ax
000001C5  7403              jz 0x1ca
000001C7  E950FF            jmp 0x11a
000001CA  B003              mov al,0x3
000001CC  CD10              int 0x10
000001CE  C3                ret
000001CF  E8BE00            call 0x290
000001D2  0F28D9            movaps xmm3,xmm1
000001D5  BEF0FE            mov si,0xfef0
000001D8  BB50FE            mov bx,0xfe50
000001DB  53                push bx
000001DC  B108              mov cl,0x8
000001DE  51                push cx
000001DF  0F28C3            movaps xmm0,xmm3
000001E2  0F5907            mulps xmm0,oword [bx]
000001E5  0F58C0            addps xmm0,xmm0
000001E8  E8DC00            call 0x2c7
000001EB  F30F1104          movss dword [si],xmm0
000001EF  AD                lodsw
000001F0  AD                lodsw
000001F1  83C310            add bx,byte +0x10
000001F4  59                pop cx
000001F5  E2E7              loop 0x1de
000001F7  5B                pop bx
000001F8  0F288C6000        movaps xmm1,oword [si+0x60]
000001FD  0F57D2            xorps xmm2,xmm2
00000200  B403              mov ah,0x3
00000202  88E0              mov al,ah
00000204  0F28E0            movaps xmm4,xmm0
00000207  0F58D1            addps xmm2,xmm1
0000020A  E89300            call 0x2a0
0000020D  30E0              xor al,ah
0000020F  74F1              jz 0x202
00000211  0F5CE0            subps xmm4,xmm0
00000214  0F5CC1            subps xmm0,xmm1
00000217  0F5EC4            divps xmm0,xmm4
0000021A  0FC6C000          shufps xmm0,xmm0,byte 0x0
0000021E  0F59C1            mulps xmm0,xmm1
00000221  0F58D0            addps xmm2,xmm0
00000224  E87900            call 0x2a0
00000227  0F59D3            mulps xmm2,xmm3
0000022A  BED0FE            mov si,0xfed0
0000022D  0F57C0            xorps xmm0,xmm0
00000230  B108              mov cl,0x8
00000232  0F100C            movups xmm1,oword [si]
00000235  0F2827            movaps xmm4,oword [bx]
00000238  0F59C9            mulps xmm1,xmm1
0000023B  0F58E2            addps xmm4,xmm2
0000023E  F30F594C70        mulss xmm1,dword [si+0x70]
00000243  0FC6C900          shufps xmm1,xmm1,byte 0x0
00000247  0F59E1            mulps xmm4,xmm1
0000024A  0F58C4            addps xmm0,xmm4
0000024D  AD                lodsw
0000024E  AD                lodsw
0000024F  83C310            add bx,byte +0x10
00000252  E2DE              loop 0x232
00000254  E83900            call 0x290
00000257  0F110D            movups oword [di],xmm1
0000025A  D905              fld dword [di]
0000025C  D8CA              fmul st2
0000025E  DF1D              fistp word [di]
00000260  D94504            fld dword [di+0x4]
00000263  D8CA              fmul st2
00000265  DF5D01            fistp word [di+0x1]
00000268  8B05              mov ax,[di]
0000026A  30E0              xor al,ah
0000026C  242F              and al,0x2f
0000026E  0F59CB            mulps xmm1,xmm3
00000271  0F28C1            movaps xmm0,xmm1
00000274  E85000            call 0x2c7
00000277  0F1105            movups oword [di],xmm0
0000027A  D905              fld dword [di]
0000027C  DCC8              fmul to st0
0000027E  DCC8              fmul to st0
00000280  DCC8              fmul to st0
00000282  D8CA              fmul st2
00000284  DF1D              fistp word [di]
00000286  0205              add al,[di]
00000288  0430              add al,0x30
0000028A  18E4              sbb ah,ah
0000028C  08E0              or al,ah
0000028E  AA                stosb
0000028F  C3                ret
00000290  0F28C8            movaps xmm1,xmm0
00000293  0F59C0            mulps xmm0,xmm0
00000296  E82E00            call 0x2c7
00000299  0F52C0            rsqrtps xmm0,xmm0
0000029C  0F59C8            mulps xmm1,xmm0
0000029F  C3                ret
000002A0  56                push si
000002A1  0F57C0            xorps xmm0,xmm0
000002A4  B102              mov cl,0x2
000002A6  0F287CE0          movaps xmm7,oword [si-0x20]
000002AA  0F58FA            addps xmm7,xmm2
000002AD  0F59FA            mulps xmm7,xmm2
000002B0  0F583C            addps xmm7,oword [si]
000002B3  0F53FF            rcpps xmm7,xmm7
000002B6  0F297CC0          movaps oword [si-0x40],xmm7
000002BA  0F597C30          mulps xmm7,oword [si+0x30]
000002BE  0F58C7            addps xmm0,xmm7
000002C1  83C610            add si,byte +0x10
000002C4  E2E0              loop 0x2a6
000002C6  5E                pop si
000002C7  B102              mov cl,0x2
000002C9  0F12F8            movhlps xmm7,xmm0
000002CC  0F58C7            addps xmm0,xmm7
000002CF  0F14C0            unpcklps xmm0,xmm0
000002D2  E2F5              loop 0x2c9
000002D4  0F2FC1            comiss xmm0,xmm1
000002D7  9F                lahf
000002D8  C3                ret
000002D9  02C8              add cl,al
000002DB  0E                push cs
000002DC  46                inc si
000002DD  083C              or [si],bh
000002DF  084102            or [bx+di+0x2],al
000002E2  47                inc di
000002E3  0080C300          add [bx+si+0xc3],al
000002E7  0020              add [bx+si],ah
000002E9  C3                ret
000002EA  60                pusha
000002EB  C20043            ret 0x4300
