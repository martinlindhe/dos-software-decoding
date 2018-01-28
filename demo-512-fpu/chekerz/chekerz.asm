00000100  9BDBE3            finit
00000103  B013              mov al,0x13
00000105  CD10              int 0x10
00000107  8CD8              mov ax,ds
00000109  80C410            add ah,0x10
0000010C  8EE0              mov fs,ax
0000010E  80C410            add ah,0x10
00000111  8EE8              mov gs,ax
00000113  80C410            add ah,0x10
00000116  8EC0              mov es,ax
00000118  BD7802            mov bp,0x278
0000011B  B9FEFF            mov cx,0xfffe
0000011E  D9EE              fldz
00000120  D9E8              fld1
00000122  D9C0              fld st0
00000124  D9FB              fsincos
00000126  D9C3              fld st3
00000128  D9C3              fld st3
0000012A  DEC1              faddp st1
0000012C  D9FE              fsin
0000012E  DEC9              fmulp st1
00000130  DEC1              faddp st1
00000132  D9E1              fabs
00000134  DE0E6402          fimul word [0x264]
00000138  65DF1F            fistp word [gs:bx]
0000013B  D846FC            fadd dword [bp-0x4]
0000013E  D9C9              fxch st1
00000140  D846F8            fadd dword [bp-0x8]
00000143  D9C9              fxch st1
00000145  43                inc bx
00000146  E2DA              loop 0x122
00000148  8A47FF            mov al,[bx-0x1]
0000014B  8807              mov [bx],al
0000014D  8AC1              mov al,cl
0000014F  BAC803            mov dx,0x3c8
00000152  EE                out dx,al
00000153  42                inc dx
00000154  B400              mov ah,0x0
00000156  F6E0              mul al
00000158  8AC4              mov al,ah
0000015A  EE                out dx,al
0000015B  D0E8              shr al,1
0000015D  EE                out dx,al
0000015E  8AC1              mov al,cl
00000160  D0E8              shr al,1
00000162  EE                out dx,al
00000163  E2E8              loop 0x14d
00000165  D9460C            fld dword [bp+0xc]
00000168  D94610            fld dword [bp+0x10]
0000016B  D846F0            fadd dword [bp-0x10]
0000016E  D95610            fst dword [bp+0x10]
00000171  D9FE              fsin
00000173  D84EF4            fmul dword [bp-0xc]
00000176  DEC1              faddp st1
00000178  D9560C            fst dword [bp+0xc]
0000017B  D9FB              fsincos
0000017D  D95E04            fstp dword [bp+0x4]
00000180  D95E08            fstp dword [bp+0x8]
00000183  658A07            mov al,[gs:bx]
00000186  C0E803            shr al,byte 0x3
00000189  042D              add al,0x2d
0000018B  98                cbw
0000018C  3E894602          mov [ds:bp+0x2],ax
00000190  8AE1              mov ah,cl
00000192  D9C0              fld st0
00000194  32E5              xor ah,ch
00000196  D9FE              fsin
00000198  80E408            and ah,0x8
0000019B  02C4              add al,ah
0000019D  3EDE4E02          fimul word [ds:bp+0x2]
000001A1  D9C0              fld st0
000001A3  D9C3              fld st3
000001A5  D9FE              fsin
000001A7  DEC9              fmulp st1
000001A9  D9C3              fld st3
000001AB  D9FF              fcos
000001AD  DECA              fmulp st2
000001AF  D9C2              fld st2
000001B1  D9FF              fcos
000001B3  3EDE4E02          fimul word [ds:bp+0x2]
000001B7  E88F00            call 0x249
000001BA  E88C00            call 0x249
000001BD  3EDF5E00          fistp word [ds:bp+0x0]
000001C1  3E8B7E00          mov di,[ds:bp+0x0]
000001C5  3EDF5E00          fistp word [ds:bp+0x0]
000001C9  69FF4001          imul di,di,word 0x140
000001CD  3E037E00          add di,[ds:bp+0x0]
000001D1  B400              mov ah,0x0
000001D3  81C7A07D          add di,0x7da0
000001D7  F6E0              mul al
000001D9  3EDF5E00          fistp word [ds:bp+0x0]
000001DD  8AC4              mov al,ah
000001DF  0428              add al,0x28
000001E1  3E8A6600          mov ah,[ds:bp+0x0]
000001E5  02C4              add al,ah
000001E7  3ED846FC          fadd dword [ds:bp-0x4]
000001EB  80C480            add ah,0x80
000001EE  E84200            call 0x233
000001F1  43                inc bx
000001F2  FEC9              dec cl
000001F4  758D              jnz 0x183
000001F6  D9C9              fxch st1
000001F8  3ED846FC          fadd dword [ds:bp-0x4]
000001FC  D9C9              fxch st1
000001FE  FECD              dec ch
00000200  7581              jnz 0x183
00000202  81C301FE          add bx,0xfe01
00000206  1E                push ds
00000207  06                push es
00000208  06                push es
00000209  1F                pop ds
0000020A  B6A0              mov dh,0xa0
0000020C  8EC2              mov es,dx
0000020E  33D2              xor dx,dx
00000210  33FF              xor di,di
00000212  33F6              xor si,si
00000214  B900FA            mov cx,0xfa00
00000217  648815            mov [fs:di],dl
0000021A  A4                movsb
0000021B  D06DFF            shr byte [di-0x1],1
0000021E  E2F7              loop 0x217
00000220  07                pop es
00000221  1F                pop ds
00000222  E460              in al,0x60
00000224  98                cbw
00000225  48                dec ax
00000226  0F853BFF          jnz near 0x165
0000022A  B003              mov al,0x3
0000022C  CD10              int 0x10
0000022E  B8004C            mov ax,0x4c00
00000231  CD21              int 0x21
00000233  E80400            call 0x23a
00000236  81C73F01          add di,0x13f
0000023A  E80100            call 0x23e
0000023D  47                inc di
0000023E  643A25            cmp ah,[fs:di]
00000241  7205              jc 0x248
00000243  648825            mov [fs:di],ah
00000246  AA                stosb
00000247  4F                dec di
00000248  C3                ret
00000249  D9C1              fld st1
0000024B  D84E04            fmul dword [bp+0x4]
0000024E  D9C1              fld st1
00000250  D84E04            fmul dword [bp+0x4]
00000253  D94608            fld dword [bp+0x8]
00000256  DCCB              fmul to st3
00000258  DECC              fmulp st4
0000025A  DEE3              fsubrp st3
0000025C  DEC1              faddp st1
0000025E  D9CA              fxch st2
00000260  C3                ret
00000261  87DB              xchg bx,bx
00000263  90                nop
00000264  7800              js 0x266
00000266  0000              add [bx+si],al
00000268  0AD7              or dl,bh
0000026A  233C              and di,[si]
0000026C  9A99193EDB        call 0xdb3e:0x1999
00000271  0F4939            cmovns di,[bx+di]
00000274  DB0F              fisttp dword [bx]
00000276  C9                leave
00000277  3C64              cmp al,0x64
00000279  756D              jnz 0x2e8
0000027B  62636F            bound sp,[bp+di+0x6f]
0000027E  64                fs
0000027F  65                gs
