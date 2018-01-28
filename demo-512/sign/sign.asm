00000100  BE0D01            mov si,0x10d
00000103  BF007F            mov di,0x7f00
00000106  8BCF              mov cx,di
00000108  FC                cld
00000109  57                push di
0000010A  F3A4              rep movsb
0000010C  C3                ret
0000010D  BF0001            mov di,0x100
00000110  57                push di
00000111  57                push di
00000112  BE787F            mov si,0x7f78
00000115  B280              mov dl,0x80
00000117  BD607F            mov bp,0x7f60
0000011A  50                push ax
0000011B  A4                movsb
0000011C  FFD5              call bp
0000011E  73FB              jnc 0x11b
00000120  FFD5              call bp
00000122  41                inc cx
00000123  7312              jnc 0x137
00000125  FFD5              call bp
00000127  BB1000            mov bx,0x10
0000012A  7224              jc 0x150
0000012C  FFD5              call bp
0000012E  12DB              adc bl,bl
00000130  73FA              jnc 0x12c
00000132  7530              jnz 0x164
00000134  93                xchg ax,bx
00000135  EB31              jmp short 0x168
00000137  B701              mov bh,0x1
00000139  FFD5              call bp
0000013B  12FF              adc bh,bh
0000013D  7237              jc 0x176
0000013F  FFD5              call bp
00000141  72F6              jc 0x139
00000143  FFD5              call bp
00000145  13C9              adc cx,cx
00000147  FFD5              call bp
00000149  72F8              jc 0x143
0000014B  80EF03            sub bh,0x3
0000014E  7212              jc 0x162
00000150  8A1C              mov bl,[si]
00000152  46                inc si
00000153  7304              jnc 0x159
00000155  D0EB              shr bl,1
00000157  1ACF              sbb cl,bh
00000159  83FB7F            cmp bx,byte +0x7f
0000015C  7702              ja 0x160
0000015E  41                inc cx
0000015F  41                inc cx
00000160  58                pop ax
00000161  A85B              test al,0x5b
00000163  53                push bx
00000164  F7DB              neg bx
00000166  8A01              mov al,[bx+di]
00000168  AA                stosb
00000169  E2FB              loop 0x166
0000016B  EBAF              jmp short 0x11c
0000016D  02D2              add dl,dl
0000016F  7504              jnz 0x175
00000171  AC                lodsb
00000172  92                xchg ax,dx
00000173  12D2              adc dl,dl
00000175  C3                ret
00000176  58                pop ax
00000177  5E                pop si
00000178  B10C              mov cl,0xc
0000017A  AC                lodsb
0000017B  3CE8              cmp al,0xe8
0000017D  75FB              jnz 0x17a
0000017F  2934              sub [si],si
00000181  AD                lodsw
00000182  E2F6              loop 0x17a
00000184  C3                ret
00000185  B86013            mov ax,0x1360
00000188  18CD              sbb ch,cl
0000018A  106800            adc [bx+si+0x0],ch
0000018D  A007B1            mov al,[0xb107]
00000190  3F                aas
00000191  88C8              mov al,cl
00000193  C4                db 0xc4
00000194  CC                int3
00000195  C8CBCCCF          enter 0xcccb,0xcf
00000199  02E8              add ch,al
0000019B  1003              adc [bp+di],al
0000019D  B07F              mov al,0x7f
0000019F  28980DC0          sub [bx+si-0x3ff3],bl
000001A3  EF                out dx,ax
000001A4  DB4310            fild dword [bp+di+0x10]
000001A7  80045B            add byte [si],0x5b
000001AA  0AEC              or ch,ah
000001AC  02C4              add al,ah
000001AE  20FF              and bh,bh
000001B0  252810            and ax,0x1028
000001B3  E219              loop 0x1ce
000001B5  C3                ret
000001B6  BADA77            mov dx,0x77da
000001B9  0024              add [si],ah
000001BB  0874FB            or [si-0x5],dh
000001BE  6631FF            xor edi,edi
000001C1  EC                in al,dx
000001C2  07                pop es
000001C3  C0C3B9            rol bl,byte 0xb9
000001C6  803E0606F3        cmp byte [0x606],0xf3
000001CB  D1ABDBE3          shr word [bp+di-0x1c25],1
000001CF  A868              test al,0x68
000001D1  0100              add [bx+si],ax
000001D3  51                push cx
000001D4  67DF0424          fild word [dword esp]
000001D8  D9E8              fld1
000001DA  44                inc sp
000001DB  18EA              sbb dl,ch
000001DD  DEC1              faddp st1
000001DF  8D                db 0x8d
000001E0  F9                stc
000001E1  58                pop ax
000001E2  23062103          and ax,[0x321]
000001E6  6BC07B            imul ax,ax,byte +0x7b
000001E9  C243C9            ret 0xc943
000001EC  F61B              neg byte [bp+di]
000001EE  1929              sbb [bx+di],bp
000001F0  CE                into
000001F1  0CFE              or al,0xfe
000001F3  EF                out dx,ax
000001F4  18CA              sbb dl,cl
000001F6  09F8              or ax,di
000001F8  2C15              sub al,0x15
000001FA  06                push es
000001FB  2503A1            and ax,0xa103
000001FE  22DE              and bl,dh
00000200  BA870C            mov dx,0xc87
00000203  2D10FD            sub ax,0xfd10
00000206  1405              adc al,0x5
00000208  FF4BDE            dec word [bp+di-0x22]
0000020B  187D94            sbb [di-0x6c],bh
0000020E  1406              adc al,0x6
00000210  C1D8F1            rcr ax,byte 0xf1
00000213  68080A            push word 0xa08
00000216  1F                pop ds
00000217  6A58              push byte +0x58
00000219  2152A0            and [bp+si-0x60],dx
0000021C  AE                scasb
0000021D  0AE1              or ah,cl
0000021F  D91D              fstp dword [di]
00000221  C3                ret
00000222  D8CD              fmul st5
00000224  F5                cmc
00000225  BE0C68            mov si,0x680c
00000228  53                push bx
00000229  647515            fs jnz 0x241
0000022C  0D1419            or ax,0x1914
0000022F  8F                db 0x8f
00000230  9D                popf
00000231  5F                pop di
00000232  0F1CB45AE8        hint_nop38 word [si-0x17a6]
00000237  18B30250          sbb [bp+di+0x5002],dh
0000023B  680AAE            push word 0xae0a
0000023E  0F296804          movaps oword [bx+si+0x4],xmm5
00000242  2846A2            sub [bp-0x5e],al
00000245  F5                cmc
00000246  A5                movsw
00000247  D548              aad 0x48
00000249  771D              ja 0x268
0000024B  9AF19FA647        call 0x47a6:0x9ff1
00000250  D6                salc
00000251  E1A2              loope 0x1f5
00000253  97                xchg ax,di
00000254  8A16BD3C          mov dl,[0x3cbd]
00000258  6E                outsb
00000259  351D69            xor ax,0x691d
0000025C  31E9              xor cx,bp
0000025E  866A76            xchg ch,[bp+si+0x76]
00000261  45                inc bp
00000262  295065            sub [bx+si+0x65],dx
00000265  363804            cmp [ss:si],al
00000268  58                pop ax
00000269  054974            add ax,0x7449
0000026C  03E9              add bp,cx
0000026E  D6                salc
0000026F  60                pusha
00000270  FE                db 0xfe
00000271  E872C4            call 0xc6e6
00000274  D01EF411          rcr byte [0x11f4],1
00000278  DBDE              fcmovnu st6
0000027A  1F                pop ds
0000027B  7E18              jng 0x295
0000027D  8711              xchg dx,[bx+di]
0000027F  E460              in al,0x60
00000281  FEC8              dec al
00000283  42                inc dx
00000284  6699              cdq
00000286  6BB892AF1B        imul di,[bx+si-0x506e],byte +0x1b
0000028B  C3                ret
0000028C  81FFB019          cmp di,0x19b0
00000290  7C01              jl 0x293
00000292  D921              fldenv [bx+di]
00000294  DF790B            fistp qword [bx+di+0xb]
00000297  61                popa
00000298  FA                cli
00000299  40                inc ax
0000029A  AA                stosb
0000029B  840C              test [si],cl
0000029D  D24089            rol byte [bx+si-0x77],cl
000002A0  F8                clc
000002A1  C1E706            shl di,byte 0x6
000002A4  C6                db 0xc6
000002A5  E06F              loopne 0x316
000002A7  086CC7            or [si-0x39],ch
000002AA  0E                push cs
000002AB  D7                xlatb
000002AC  268A05            mov al,[es:di]
000002AF  07                pop es
000002B0  6576FF            gs jna 0x2b2
000002B3  095DE8            or [di-0x18],bx
000002B6  07                pop es
000002B7  BDC0FE            mov bp,0xfec0
000002BA  0B7095            or si,[bx+si-0x6b]
000002BD  53                push bx
000002BE  040B              add al,0xb
000002C0  80C4C9            add ah,0xc9
000002C3  8D                db 0x8d
000002C4  C3                ret
000002C5  D007              rol byte [bx],1
000002C7  C7                db 0xc7
000002C8  36C28826          ss ret 0x2688
000002CC  8805              mov [di],al
000002CE  3E46              ds inc si
000002D0  78B5              js 0x287
000002D2  C26D8A            ret 0x8a6d
000002D5  40                inc ax
000002D6  CAC803            retf 0x3c8
000002D9  37                aaa
000002DA  EE                out dx,al
000002DB  42                inc dx
000002DC  B2E0              mov dl,0xe0
000002DE  6D                insw
000002DF  76D8              jna 0x2b9
000002E1  07                pop es
000002E2  F8                clc
000002E3  AD                lodsw
000002E4  E125              loope 0x30b
000002E6  54                push sp
000002E7  6B3D83            imul di,[di],byte -0x7d
000002EA  0134              add [si],si
000002EC  43                inc bx
000002ED  CA093E            retf 0x3e09
000002F0  C42F              les bp,[bx]
000002F2  08FF              or bh,bh
000002F4  E0                db 0xe0
