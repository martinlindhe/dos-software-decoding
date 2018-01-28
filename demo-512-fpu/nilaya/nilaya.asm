00000100  BB4515            mov bx,0x1545
00000103  C1EB04            shr bx,byte 0x4
00000106  B44A              mov ah,0x4a
00000108  CD21              int 0x21
0000010A  B448              mov ah,0x48
0000010C  BB0030            mov bx,0x3000
0000010F  CD21              int 0x21
00000111  050010            add ax,0x1000
00000114  8EE8              mov gs,ax
00000116  32C0              xor al,al
00000118  33FF              xor di,di
0000011A  33C9              xor cx,cx
0000011C  658805            mov [gs:di],al
0000011F  47                inc di
00000120  E2FA              loop 0x11c
00000122  DBE3              fninit
00000124  B81300            mov ax,0x13
00000127  CD10              int 0x10
00000129  32C0              xor al,al
0000012B  BAC803            mov dx,0x3c8
0000012E  EE                out dx,al
0000012F  42                inc dx
00000130  B94000            mov cx,0x40
00000133  EE                out dx,al
00000134  EE                out dx,al
00000135  EE                out dx,al
00000136  FEC0              inc al
00000138  E2F9              loop 0x133
0000013A  FF36A502          push word [0x2a5]
0000013E  678B3C24          mov di,[dword esp]
00000142  B288              mov dl,0x88
00000144  B188              mov cl,0x88
00000146  B388              mov bl,0x88
00000148  8BC3              mov ax,bx
0000014A  98                cbw
0000014B  8905              mov [di],ax
0000014D  83C702            add di,byte +0x2
00000150  8BC1              mov ax,cx
00000152  98                cbw
00000153  8905              mov [di],ax
00000155  83C702            add di,byte +0x2
00000158  8BC2              mov ax,dx
0000015A  98                cbw
0000015B  8905              mov [di],ax
0000015D  83C702            add di,byte +0x2
00000160  80C318            add bl,0x18
00000163  80FB78            cmp bl,0x78
00000166  75E0              jnz 0x148
00000168  80C118            add cl,0x18
0000016B  80F978            cmp cl,0x78
0000016E  75D6              jnz 0x146
00000170  80C20C            add dl,0xc
00000173  80FA78            cmp dl,0x78
00000176  75CC              jnz 0x144
00000178  6800A0            push word 0xa000
0000017B  07                pop es
0000017C  5E                pop si
0000017D  BADA03            mov dx,0x3da
00000180  EC                in al,dx
00000181  2408              and al,0x8
00000183  75FB              jnz 0x180
00000185  EC                in al,dx
00000186  2408              and al,0x8
00000188  74FB              jz 0x185
0000018A  33FF              xor di,di
0000018C  B900FA            mov cx,0xfa00
0000018F  658A05            mov al,[gs:di]
00000192  65024501          add al,[gs:di+0x1]
00000196  65024503          add al,[gs:di+0x3]
0000019A  6502854001        add al,[gs:di+0x140]
0000019F  6502854001        add al,[gs:di+0x140]
000001A4  C0E804            shr al,byte 0x4
000001A7  658805            mov [gs:di],al
000001AA  47                inc di
000001AB  E2E2              loop 0x18f
000001AD  B9D007            mov cx,0x7d0
000001B0  56                push si
000001B1  DF4402            fild word [si+0x2]
000001B4  DF04              fild word [si]
000001B6  E88B00            call 0x244
000001B9  DF4404            fild word [si+0x4]
000001BC  E88500            call 0x244
000001BF  D9C9              fxch st1
000001C1  D9CA              fxch st2
000001C3  E87E00            call 0x244
000001C6  68D200            push word 0xd2
000001C9  67DF0424          fild word [dword esp]
000001CD  DCCA              fmul to st2
000001CF  DCCB              fmul to st3
000001D1  DEC1              faddp st1
000001D3  DCF9              fdiv to st1
000001D5  DEFA              fdivp st2
000001D7  67DF1C24          fistp word [dword esp]
000001DB  58                pop ax
000001DC  056400            add ax,0x64
000001DF  8BF8              mov di,ax
000001E1  86E0              xchg ah,al
000001E3  C1E706            shl di,byte 0x6
000001E6  03F8              add di,ax
000001E8  50                push ax
000001E9  67DF1C24          fistp word [dword esp]
000001ED  58                pop ax
000001EE  05A000            add ax,0xa0
000001F1  03F8              add di,ax
000001F3  BB6502            mov bx,0x265
000001F6  B208              mov dl,0x8
000001F8  B608              mov dh,0x8
000001FA  8A07              mov al,[bx]
000001FC  D0E0              shl al,1
000001FE  43                inc bx
000001FF  650005            add [gs:di],al
00000202  47                inc di
00000203  FECE              dec dh
00000205  75F3              jnz 0x1fa
00000207  81C73801          add di,0x138
0000020B  FECA              dec dl
0000020D  75E9              jnz 0x1f8
0000020F  83C606            add si,byte +0x6
00000212  E29D              loop 0x1b1
00000214  D9066102          fld dword [0x261]
00000218  66686F12033B      push dword 0x3b03126f
0000021E  67D90424          fld dword [dword esp]
00000222  DEC1              faddp st1
00000224  D91E6102          fstp dword [0x261]
00000228  6658              pop eax
0000022A  33FF              xor di,di
0000022C  33C9              xor cx,cx
0000022E  658A05            mov al,[gs:di]
00000231  268805            mov [es:di],al
00000234  47                inc di
00000235  E2F7              loop 0x22e
00000237  5E                pop si
00000238  E460              in al,0x60
0000023A  FEC8              dec al
0000023C  0F853DFF          jnz near 0x17d
00000240  B44C              mov ah,0x4c
00000242  CD21              int 0x21
00000244  D9066102          fld dword [0x261]
00000248  D9FB              fsincos
0000024A  D9C2              fld st2
0000024C  D8C9              fmul st1
0000024E  D9C4              fld st4
00000250  DECA              fmulp st2
00000252  D9CB              fxch st3
00000254  D8CA              fmul st2
00000256  D9CC              fxch st4
00000258  DECA              fmulp st2
0000025A  D9CB              fxch st3
0000025C  DEEB              fsubp st3
0000025E  DEC1              faddp st1
00000260  C3                ret
00000261  0000              add [bx+si],al
00000263  0000              add [bx+si],al
00000265  0000              add [bx+si],al
00000267  0202              add al,[bp+si]
00000269  0202              add al,[bp+si]
0000026B  0000              add [bx+si],al
0000026D  0002              add [bp+si],al
0000026F  0203              add al,[bp+di]
00000271  0302              add ax,[bp+si]
00000273  0200              add al,[bx+si]
00000275  0202              add al,[bp+si]
00000277  0304              add ax,[si]
00000279  0403              add al,0x3
0000027B  0202              add al,[bp+si]
0000027D  0203              add al,[bp+di]
0000027F  0405              add al,0x5
00000281  050403            add ax,0x304
00000284  0202              add al,[bp+si]
00000286  0304              add ax,[si]
00000288  050504            add ax,0x405
0000028B  0302              add ax,[bp+si]
0000028D  0202              add al,[bp+si]
0000028F  0304              add ax,[si]
00000291  0403              add al,0x3
00000293  0202              add al,[bp+si]
00000295  0002              add [bp+si],al
00000297  0203              add al,[bp+di]
00000299  0302              add ax,[bp+si]
0000029B  0200              add al,[bx+si]
0000029D  0000              add [bx+si],al
0000029F  0202              add al,[bp+si]
000002A1  0202              add al,[bp+si]
000002A3  0000              add [bx+si],al
