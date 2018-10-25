00000100  BE0D01            mov si,0x10d
00000103  BF007F            mov di,0x7f00
00000106  8BCF              mov cx,di
00000108  FC                cld
00000109  57                push di
0000010A  F3A4              rep movsb
0000010C  C3                ret
0000010D  BF0001            mov di,0x100
00000110  57                push di
00000111  BE6A7F            mov si,0x7f6a
00000114  B280              mov dl,0x80
00000116  BD5F7F            mov bp,0x7f5f
00000119  50                push ax
0000011A  A4                movsb
0000011B  FFD5              call bp
0000011D  73FB              jnc 0x11a
0000011F  FFD5              call bp
00000121  41                inc cx
00000122  7312              jnc 0x136
00000124  FFD5              call bp
00000126  BB1000            mov bx,0x10
00000129  7224              jc 0x14f
0000012B  FFD5              call bp
0000012D  12DB              adc bl,bl
0000012F  73FA              jnc 0x12b
00000131  7530              jnz 0x163
00000133  93                xchg ax,bx
00000134  EB31              jmp short 0x167
00000136  B701              mov bh,0x1
00000138  FFD5              call bp
0000013A  12FF              adc bh,bh
0000013C  7237              jc 0x175
0000013E  FFD5              call bp
00000140  72F6              jc 0x138
00000142  FFD5              call bp
00000144  13C9              adc cx,cx
00000146  FFD5              call bp
00000148  72F8              jc 0x142
0000014A  80EF03            sub bh,0x3
0000014D  7212              jc 0x161
0000014F  8A1C              mov bl,[si]
00000151  46                inc si
00000152  7304              jnc 0x158
00000154  D0EB              shr bl,1
00000156  1ACF              sbb cl,bh
00000158  83FB7F            cmp bx,byte +0x7f
0000015B  7702              ja 0x15f
0000015D  41                inc cx
0000015E  41                inc cx
0000015F  58                pop ax
00000160  A85B              test al,0x5b
00000162  53                push bx
00000163  F7DB              neg bx
00000165  8A01              mov al,[bx+di]
00000167  AA                stosb
00000168  E2FB              loop 0x165
0000016A  EBAF              jmp short 0x11b
0000016C  02D2              add dl,dl
0000016E  7504              jnz 0x174
00000170  AC                lodsb
00000171  92                xchg ax,dx
00000172  12D2              adc dl,dl
00000174  C3                ret
00000175  58                pop ax
00000176  C3                ret
00000177  B000              mov al,0x0
00000179  13CD              adc cx,bp
0000017B  10BAC803          adc [bp+si+0x3c8],bh
0000017F  32C0              xor al,al
00000181  06                push es
00000182  EE                out dx,al
00000183  FEC2              inc dl
00000185  B9FF00            mov cx,0xff
00000188  33DB              xor bx,bx
0000018A  8AC7              mov al,bh
0000018C  D5AF              aad 0xaf
0000018E  23C3              and ax,bx
00000190  79E8              jns 0x17a
00000192  02F3              add dh,bl
00000194  2300              and ax,[bx+si]
00000196  E2F2              loop 0x18a
00000198  8CC8              mov ax,cs
0000019A  80C410            add ah,0x10
0000019D  6E                outsb
0000019E  8E60B8            mov fs,[bx+si-0x48]
000001A1  65A000E8          mov al,[gs:0xe800]
000001A5  DBE3              fninit
000001A7  B92C01            mov cx,0x12c
000001AA  33FF              xor di,di
000001AC  37                aaa
000001AD  51                push cx
000001AE  57                push di
000001AF  333F              xor di,[bx]
000001B1  ED                in ax,dx
000001B2  036302            add sp,[bp+di+0x2]
000001B5  5F                pop di
000001B6  59                pop cx
000001B7  40                inc ax
000001B8  50                push ax
000001B9  B018              mov al,0x18
000001BB  646C              fs insb
000001BD  CB                retf
000001BE  108BD058          adc [bp+di+0x58d0],cl
000001C2  1832              sbb [bp+si],dh
000001C4  FFB38083          push word [bp+di-0x7c80]
000001C8  FA                cli
000001C9  0B770A            or si,[bx+0xa]
000001CC  0300              add ax,[bx+si]
000001CE  F8                clc
000001CF  26889D80FC        mov [es:di-0x380],bl
000001D4  EB30              jmp short 0x206
000001D6  7490              jz 0x168
000001D8  1F                pop ds
000001D9  1362BD            adc sp,[bp+si-0x43]
000001DC  2421              and al,0x21
000001DE  4D                dec bp
000001DF  3BE8              cmp bp,ax
000001E1  0F868A9D          jna near 0x9f6f
000001E5  81FA4223          cmp dx,0x2342
000001E9  0D90A4            or ax,0xa490
000001EC  0F7F60E2          movq [bx+si-0x1e],mm4
000001F0  A1BB6A            mov ax,[0x6abb]
000001F3  7E3B              jng 0x230
000001F5  32E4              xor ah,ah
000001F7  2307              and ax,[bx]
000001F9  7902              jns 0x1fd
000001FB  87CC              xchg cx,sp
000001FD  CB                retf
000001FE  80D41D            adc ah,0x1d
00000201  10401C            adc [bx+si+0x1c],al
00000204  41                inc cx
00000205  846D2D            test [di+0x2d],ch
00000208  C0                db 0xc0
00000209  73D6              jnc 0x1e1
0000020B  3328              xor bp,[bx+si]
0000020D  C0C19F            rol cl,byte 0x9f
00000210  E163              loope 0x275
00000212  07                pop es
00000213  4B                dec bx
00000214  75D3              jnz 0x1e9
00000216  41                inc cx
00000217  B0B5              mov al,0xb5
00000219  6441              fs inc cx
0000021B  93                xchg ax,bx
0000021C  B1A0              mov cl,0xa0
0000021E  B52E              mov ch,0x2e
00000220  A4                movsb
00000221  03DF              add bx,di
00000223  7D06              jnl 0x22b
00000225  090A              or [bp+si],cx
00000227  0E                push cs
00000228  43                inc bx
00000229  08D9              or cl,bl
0000022B  F316              rep push ss
0000022D  E7DD              out 0xdd,ax
0000022F  0D18EB            or ax,0xeb18
00000232  DEF9              fdivp st1
00000234  87C9              xchg cx,cx
00000236  DF1E213D          fistp word [0x3d21]
0000023A  8B3E3961          mov di,[0x6139]
0000023E  24D8              and al,0xd8
00000240  C85926C2          enter 0x2659,0xc2
00000244  15DEC1            adc ax,0xc1de
00000247  D9FA              fsqrt
00000249  A7                cmpsw
0000024A  2036086D          and [0x6d08],dh
0000024E  D6                salc
0000024F  31E6              xor si,sp
00000251  089BE206          or [bp+di+0x6e2],bl
00000255  46                inc si
00000256  F2F7DE            repne neg si
00000259  D5FE              aad 0xfe
0000025B  07                pop es
0000025C  8505              test [di],ax
0000025E  65                gs
0000025F  C7                db 0xc7
00000260  684303            push word 0x343
00000263  C9                leave
00000264  75A3              jnz 0x209
00000266  81C3A006          add bx,0x6a0
0000026A  86CD              xchg cl,ch
0000026C  8399BBD00F        sbb word [bx+di-0x2f45],byte +0xf
00000271  6E                outsb
00000272  3243C9            xor al,[bp+di-0x37]
00000275  AA                stosb
00000276  620C              bound cx,[si]
00000278  DF81C79F          fild word [bx+di-0x6039]
0000027C  14A0              adc al,0xa0
0000027E  74C1              jz 0x241
00000280  80F914            cmp cl,0x14
00000283  A0759A            mov al,[0x9a75]
00000286  C6                db 0xc6
00000287  7790              ja 0x219
00000289  BB017D            mov bx,0x7d01
0000028C  32ED              xor ch,ch
0000028E  4E                dec si
0000028F  E9E5EB            jmp 0xee77
00000292  EF                out dx,ax
00000293  44                inc sp
00000294  E7A1              out 0xa1,ax
00000296  30C5              xor ch,al
00000298  80FD6B            cmp ch,0x6b
0000029B  6451              fs push cx
0000029D  94                xchg ax,sp
0000029E  EAE9E6DD28        jmp 0x28dd:0xe6e9
000002A3  EAE842A0A2        jmp 0xa2a0:0x42e8
000002A8  9C                pushf
000002A9  94                xchg ax,sp
000002AA  781A              js 0x2c6
000002AC  8F                db 0x8f
000002AD  E460              in al,0x60
000002AF  41                inc cx
000002B0  C87403E9          enter 0x374,0xe9
000002B4  96                xchg ax,si
000002B5  B1B8              mov cl,0xb8
000002B7  97                xchg ax,di
000002B8  04C1              add al,0xc1
000002BA  98                cbw
000002BB  C3                ret
000002BC  8BB42EA1          mov si,[si-0x5ed2]
000002C0  6F                outsw
000002C1  D9C9              fxch st1
000002C3  9C                pushf
000002C4  1E                push ds
000002C5  D7                xlatb
000002C6  ED                in ax,dx
000002C7  8BF0              mov si,ax
000002C9  A3FB8A            mov [0x8afb],ax
000002CC  D412              aam 0x12
000002CE  E063              loopne 0x333
000002D0  9F                lahf
000002D1  368032DB          xor byte [ss:bp+si],0xdb
000002D5  D0DA              rcr dl,1
000002D7  31D1              xor cx,dx
000002D9  D873D8            fdiv dword [bp+di-0x28]
000002DC  13C6              adc ax,si
000002DE  807BE962          cmp byte [bp+di-0x17],0x62
000002E2  151936            adc ax,0x3619
000002E5  2E89F9            cs mov cx,di
000002E8  48                dec ax
000002E9  5C                pop sp
000002EA  A35B33            mov [0x335b],ax
000002ED  D206F7F1          rol byte [0xf1f7],cl
000002F1  8BC2              mov ax,dx
000002F3  C3                ret
000002F4  0A6301            or ah,[bp+di+0x1]
000002F7  2043B2            and [bp+di-0x4e],al
000002FA  09A05FFF          or [bx+si-0xa1],sp
000002FE  C0                db 0xc0
