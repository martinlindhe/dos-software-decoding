00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8CC9              mov cx,cs
00000106  80C510            add ch,0x10
00000109  8EE9              mov gs,cx
0000010B  80C510            add ch,0x10
0000010E  890E0C04          mov [0x40c],cx
00000112  80C510            add ch,0x10
00000115  8EE1              mov fs,cx
00000117  9BDBE3            finit
0000011A  D9EE              fldz
0000011C  D9C0              fld st0
0000011E  D9FE              fsin
00000120  65D91F            fstp dword [gs:bx]
00000123  D806E802          fadd dword [0x2e8]
00000127  83C304            add bx,byte +0x4
0000012A  75F0              jnz 0x11c
0000012C  8BEC              mov bp,sp
0000012E  BEEC02            mov si,0x2ec
00000131  BF0E04            mov di,0x40e
00000134  33DB              xor bx,bx
00000136  BA0700            mov dx,0x7
00000139  32E4              xor ah,ah
0000013B  8A4401            mov al,[si+0x1]
0000013E  894602            mov [bp+0x2],ax
00000141  8A4403            mov al,[si+0x3]
00000144  894604            mov [bp+0x4],ax
00000147  8A4C02            mov cl,[si+0x2]
0000014A  2A0C              sub cl,[si]
0000014C  32ED              xor ch,ch
0000014E  894E08            mov [bp+0x8],cx
00000151  C746060000        mov word [bp+0x6],0x0
00000156  E84101            call 0x29a
00000159  8BC3              mov ax,bx
0000015B  2D5700            sub ax,0x57
0000015E  AB                stosw
0000015F  8B460A            mov ax,[bp+0xa]
00000162  AB                stosw
00000163  FF4606            inc word [bp+0x6]
00000166  43                inc bx
00000167  E2ED              loop 0x156
00000169  83C602            add si,byte +0x2
0000016C  4A                dec dx
0000016D  75CA              jnz 0x139
0000016F  BAC803            mov dx,0x3c8
00000172  33C0              xor ax,ax
00000174  EE                out dx,al
00000175  42                inc dx
00000176  EE                out dx,al
00000177  EE                out dx,al
00000178  EE                out dx,al
00000179  FEC0              inc al
0000017B  3C40              cmp al,0x40
0000017D  75F7              jnz 0x176
0000017F  FEC8              dec al
00000181  EE                out dx,al
00000182  EE                out dx,al
00000183  EE                out dx,al
00000184  75F9              jnz 0x17f
00000186  A10C04            mov ax,[0x40c]
00000189  8EC0              mov es,ax
0000018B  6800A0            push word 0xa000
0000018E  1F                pop ds
0000018F  BF00FA            mov di,0xfa00
00000192  33C9              xor cx,cx
00000194  029DC2FE          add bl,[di-0x13e]
00000198  029DC1FE          add bl,[di-0x13f]
0000019C  029D81FD          add bl,[di-0x27f]
000001A0  C0EB02            shr bl,byte 0x2
000001A3  2AD6              sub dl,dh
000001A5  C1CA03            ror dx,byte 0x3
000001A8  81F2363A          xor dx,0x3a36
000001AC  8BC2              mov ax,dx
000001AE  C0E806            shr al,byte 0x6
000001B1  02C3              add al,bl
000001B3  48                dec ax
000001B4  8AD8              mov bl,al
000001B6  8805              mov [di],al
000001B8  AA                stosb
000001B9  E2D9              loop 0x194
000001BB  0E                push cs
000001BC  1F                pop ds
000001BD  BADA03            mov dx,0x3da
000001C0  EC                in al,dx
000001C1  A808              test al,0x8
000001C3  74FB              jz 0x1c0
000001C5  EC                in al,dx
000001C6  A808              test al,0x8
000001C8  75FB              jnz 0x1c5
000001CA  49                dec cx
000001CB  A10C04            mov ax,[0x40c]
000001CE  8ED8              mov ds,ax
000001D0  0FA0              push fs
000001D2  07                pop es
000001D3  8BF7              mov si,di
000001D5  F3A4              rep movsb
000001D7  0E                push cs
000001D8  1F                pop ds
000001D9  B9AF00            mov cx,0xaf
000001DC  BE0E04            mov si,0x40e
000001DF  AD                lodsw
000001E0  A30604            mov [0x406],ax
000001E3  AD                lodsw
000001E4  A30804            mov [0x408],ax
000001E7  60                pusha
000001E8  33DB              xor bx,bx
000001EA  60                pusha
000001EB  A10604            mov ax,[0x406]
000001EE  A30004            mov [0x400],ax
000001F1  A10804            mov ax,[0x408]
000001F4  A30204            mov [0x402],ax
000001F7  33C0              xor ax,ax
000001F9  A30404            mov [0x404],ax
000001FC  BE0204            mov si,0x402
000001FF  BF0404            mov di,0x404
00000202  E8BB00            call 0x2c0
00000205  8B1EE002          mov bx,[0x2e0]
00000209  E8B400            call 0x2c0
0000020C  4E                dec si
0000020D  4E                dec si
0000020E  E8AF00            call 0x2c0
00000211  4F                dec di
00000212  4F                dec di
00000213  8B1EE202          mov bx,[0x2e2]
00000217  E8A600            call 0x2c0
0000021A  1E                push ds
0000021B  8B05              mov ax,[di]
0000021D  8AC8              mov cl,al
0000021F  0594FF            add ax,0xff94
00000222  69F84001          imul di,ax,word 0x140
00000226  8B04              mov ax,[si]
00000228  05A6FF            add ax,0xffa6
0000022B  03F8              add di,ax
0000022D  8B5404            mov dx,[si+0x4]
00000230  8CE1              mov cx,fs
00000232  80C510            add ch,0x10
00000235  8ED9              mov ds,cx
00000237  E85100            call 0x28b
0000023A  E84E00            call 0x28b
0000023D  E84B00            call 0x28b
00000240  81C73D01          add di,0x13d
00000244  E84400            call 0x28b
00000247  E84100            call 0x28b
0000024A  E83E00            call 0x28b
0000024D  1F                pop ds
0000024E  61                popa
0000024F  81C38000          add bx,0x80
00000253  7595              jnz 0x1ea
00000255  61                popa
00000256  E287              loop 0x1df
00000258  8106E0020002      add word [0x2e0],0x200
0000025E  8106E2026001      add word [0x2e2],0x160
00000264  49                dec cx
00000265  8CE0              mov ax,fs
00000267  80C410            add ah,0x10
0000026A  8ED8              mov ds,ax
0000026C  6800A0            push word 0xa000
0000026F  07                pop es
00000270  C6057F            mov byte [di],0x7f
00000273  648A05            mov al,[fs:di]
00000276  AA                stosb
00000277  E2F7              loop 0x270
00000279  E460              in al,0x60
0000027B  FEC8              dec al
0000027D  0F853AFF          jnz near 0x1bb
00000281  B80300            mov ax,0x3
00000284  CD10              int 0x10
00000286  B8004C            mov ax,0x4c00
00000289  CD21              int 0x21
0000028B  3815              cmp [di],dl
0000028D  7C09              jl 0x298
0000028F  8815              mov [di],dl
00000291  8AC2              mov al,dl
00000293  247F              and al,0x7f
00000295  648805            mov [fs:di],al
00000298  47                inc di
00000299  C3                ret
0000029A  DF4604            fild word [bp+0x4]
0000029D  D9E8              fld1
0000029F  DF4606            fild word [bp+0x6]
000002A2  DE7608            fidiv word [bp+0x8]
000002A5  D9EB              fldpi
000002A7  DEC9              fmulp st1
000002A9  D9FF              fcos
000002AB  D9E8              fld1
000002AD  DEE1              fsubrp st1
000002AF  D80EE402          fmul dword [0x2e4]
000002B3  DCE9              fsub to st1
000002B5  DECA              fmulp st2
000002B7  DE4E02            fimul word [bp+0x2]
000002BA  DEC1              faddp st1
000002BC  DF5E0A            fistp word [bp+0xa]
000002BF  C3                ret
000002C0  65D9870040        fld dword [gs:bx+0x4000]
000002C5  DF04              fild word [si]
000002C7  D9C0              fld st0
000002C9  65D80F            fmul dword [gs:bx]
000002CC  DF05              fild word [di]
000002CE  D8CB              fmul st3
000002D0  DEE9              fsubp st1
000002D2  DF1C              fistp word [si]
000002D4  DEC9              fmulp st1
000002D6  DF05              fild word [di]
000002D8  65D80F            fmul dword [gs:bx]
000002DB  DEC1              faddp st1
000002DD  DF1D              fistp word [di]
000002DF  C3                ret
000002E0  0000              add [bx+si],al
000002E2  0000              add [bx+si],al
000002E4  0000              add [bx+si],al
000002E6  003F              add [bx],bh
000002E8  DB                db 0xdb
000002E9  FFC9              dec cx
000002EB  3900              cmp [bx+si],ax
000002ED  20262D64          and [0x642d],ah
000002F1  036B08            add bp,[bp+di+0x8]
000002F4  7402              jz 0x2f8
000002F6  91                xchg ax,cx
000002F7  02A00AAF          add ah,[bx+si-0x50f6]
000002FB  1E                push ds
000002FC  0000              add [bx+si],al
000002FE  0000              add [bx+si],al
