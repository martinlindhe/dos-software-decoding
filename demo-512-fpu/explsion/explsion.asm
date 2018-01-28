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
00000185  B94000            mov cx,0x40
00000188  33DB              xor bx,bx
0000018A  8AC3              mov al,bl
0000018C  D5AF              aad 0xaf
0000018E  23C7              and ax,di
00000190  E71D              out 0x1d,ax
00000192  03E2              add sp,dx
00000194  F5                cmc
00000195  B140              mov cl,0x40
00000197  B53F              mov ch,0x3f
00000199  43                inc bx
0000019A  C9                leave
0000019B  6BC5A8            imul ax,bp,byte -0x58
0000019E  21C1              and cx,ax
000001A0  1339              adc di,[bx+di]
000001A2  75F3              jnz 0x197
000001A4  2332              and si,[bp+si]
000001A6  DB470F            fild dword [bx+0xf]
000001A9  46                inc si
000001AA  FE4135            inc byte [bx+di+0x35]
000001AD  8F                db 0x8f
000001AE  1140FE            adc [bx+si-0x2],ax
000001B1  3B03              cmp ax,[bp+di]
000001B3  B0F7              mov al,0xf7
000001B5  8CC8              mov ax,cs
000001B7  8006C4108E        add byte [0x10c4],0x8e
000001BC  C0B806A051        sar byte [bx+si-0x5ffa],byte 0x51
000001C1  E8DBE3            call 0xe59f
000001C4  8CF5              mov bp,segr6
000001C6  01E6              add si,sp
000001C8  97                xchg ax,di
000001C9  B564              mov ch,0x64
000001CB  46                inc si
000001CC  FF60F6            jmp [bx+si-0xa]
000001CF  B1A0              mov cl,0xa0
000001D1  8807              mov [bx],al
000001D3  2ED003            rol byte [cs:bp+di],1
000001D6  DF0609D0          fild word [0xd009]
000001DA  0E                push cs
000001DB  A4                movsb
000001DC  0831              or [bx+di],dh
000001DE  D9F3              fpatan
000001E0  6E                outsb
000001E1  71D2              jno 0x1b5
000001E3  0DEBDE            or ax,0xdeeb
000001E6  F9                stc
000001E7  88C9              mov cl,cl
000001E9  DF731E            fbstp tword [bp+di+0x1e]
000001EC  218B3ED6          and [bp+di-0x29c2],cx
000001F0  3915              cmp [di],dx
000001F2  24D8              and al,0xd8
000001F4  C89C2615          enter 0x269c,0x15
000001F8  DEC1              faddp st1
000001FA  2AD9              sub bl,cl
000001FC  FA                cli
000001FD  207636            and [bp+0x36],dh
00000200  08D6              or dh,dl
00000202  D3E6              shl si,cl
00000204  0819              or [bx+di],bl
00000206  E206              loop 0x20e
00000208  B4F2              mov ah,0xf2
0000020A  F76DDE            imul word [di-0x22]
0000020D  00FE              add dh,bh
0000020F  268A05            mov al,[es:di]
00000212  658807            mov [gs:bx],al
00000215  43                inc bx
00000216  A883              test al,0x83
00000218  A38130            mov [0x3081],ax
0000021B  C3                ret
0000021C  A06868            mov al,[0x6868]
0000021F  CD3D              int 0x3d
00000221  97                xchg ax,di
00000222  BB0F21            mov bx,0x210f
00000225  7032              jo 0x259
00000227  C9                leave
00000228  0E                push cs
00000229  A988DF            test ax,0xdf88
0000022C  8130C79F          xor word [bx+si],0x9fc7
00000230  52                push dx
00000231  8076C180          xor byte [bp-0x3f],0x80
00000235  F9                stc
00000236  A07553            mov al,[0x5375]
00000239  9A18798EBB        call 0xbb8e:0x7918
0000023E  057D32            add ax,0x327d
00000241  ED                in ax,dx
00000242  3BE7              cmp sp,di
00000244  E9F3AD            jmp 0xb03a
00000247  10EB              adc bl,ch
00000249  A1C1C5            mov ax,[0xc5c1]
0000024C  80FD64            cmp ch,0x64
0000024F  AD                lodsw
00000250  92                xchg ax,dx
00000251  47                inc di
00000252  EE                out dx,al
00000253  EAA77CEEF4        jmp 0xf4ee:0x7ca7
00000258  E77A              out 0x7a,ax
0000025A  EE                out dx,al
0000025B  D1D9              rcr cx,1
0000025D  EC                in al,dx
0000025E  9C                pushf
0000025F  4A                dec dx
00000260  007A8D            add [bp+si-0x73],bh
00000263  BADA03            mov dx,0x3da
00000266  EC                in al,dx
00000267  A808              test al,0x8
00000269  60                pusha
0000026A  74FB              jz 0x267
0000026C  0A7001            or dh,[bx+si+0x1]
0000026F  B406              mov ah,0x6
00000271  B2FF              mov dl,0xff
00000273  CD21              int 0x21
00000275  A003E9            mov al,[0xe903]
00000278  190EFEB8          sbb [0xb8fe],cx
0000027C  704C              jo 0x2ca
0000027E  284AC3            sub [bp+si-0x3d],cl
00000281  93                xchg ax,bx
00000282  30B97F6B          xor [bx+di+0x6b7f],bh
00000286  06                push es
00000287  40                inc ax
00000288  0151E8            add [bx+di-0x18],dx
0000028B  37                aaa
0000028C  00598B            add [bx+di-0x75],bl
0000028F  F0B0DE            lock mov al,0xde
00000292  26058884          es add ax,0x8488
00000296  C0F8E2            sar al,byte 0xe2
00000299  06                push es
0000029A  AB                stosw
0000029B  DBB907FA          fstp tword [bx+di-0x5f9]
0000029F  A91C1D            test ax,0x1d1c
000002A2  8BC3              mov ax,bx
000002A4  0B9D3F28          or bx,[di+0x283f]
000002A8  0103              add [bp+di],ax
000002AA  07                pop es
000002AB  46                inc si
000002AC  40                inc ax
000002AD  224107            and al,[bx+di+0x7]
000002B0  C1E802            shr ax,byte 0x2
000002B3  FEC8              dec al
000002B5  57                push di
000002B6  0D0547            or ax,0x4705
000002B9  E2DB              loop 0x296
000002BB  8D8B212E          lea cx,[bp+di+0x2e21]
000002BF  A1CE03            mov ax,[0x3ce]
000002C2  93                xchg ax,bx
000002C3  391ECC43          cmp [0x43cc],bx
000002C7  97                xchg ax,di
000002C8  F068FB8A          lock push word 0x8afb
000002CC  D4C4              aam 0xc4
000002CE  E098              loopne 0x268
000002D0  7DCD              jnl 0x29f
000002D2  A2607A            mov [0x7a60],al
000002D5  D0DA              rcr dl,1
000002D7  31D1              xor cx,dx
000002D9  D866A0            fsub dword [bp-0x60]
000002DC  BE13C6            mov si,0xc613
000002DF  A08FE9            mov al,[0xe98f]
000002E2  6207              bound ax,[bx]
000002E4  151936            adc ax,0x3619
000002E7  2E8948CA          mov [cs:bx+si-0x36],cx
000002EB  A3E05B            mov [0x5be0],ax
000002EE  33D2              xor dx,dx
000002F0  F7F1              div cx
000002F2  8B30              mov si,[bx+si]
000002F4  C2C353            ret 0x53c3
000002F7  1D0120            sbb ax,0x2001
000002FA  43                inc bx
000002FB  09A092FF          or [bx+si-0x6e],sp
000002FF  FE                db 0xfe
