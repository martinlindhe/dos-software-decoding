00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  97                xchg ax,di
00000105  BAC803            mov dx,0x3c8
00000108  EE                out dx,al
00000109  BFFF01            mov di,0x1ff
0000010C  57                push di
0000010D  42                inc dx
0000010E  AA                stosb
0000010F  AB                stosw
00000110  40                inc ax
00000111  3C40              cmp al,0x40
00000113  75F9              jnz 0x10e
00000115  B13F              mov cl,0x3f
00000117  AA                stosb
00000118  91                xchg ax,cx
00000119  AB                stosw
0000011A  91                xchg ax,cx
0000011B  E2FA              loop 0x117
0000011D  91                xchg ax,cx
0000011E  AB                stosw
0000011F  AA                stosb
00000120  40                inc ax
00000121  3C40              cmp al,0x40
00000123  75F9              jnz 0x11e
00000125  B13F              mov cl,0x3f
00000127  AB                stosw
00000128  91                xchg ax,cx
00000129  AA                stosb
0000012A  91                xchg ax,cx
0000012B  E2FA              loop 0x127
0000012D  5E                pop si
0000012E  B503              mov ch,0x3
00000130  F36E              rep outsb
00000132  6800A0            push word 0xa000
00000135  07                pop es
00000136  832E3C0103        sub word [0x13c],byte +0x3
0000013B  B828DD            mov ax,0xdd28
0000013E  A802              test al,0x2
00000140  741F              jz 0x161
00000142  E82C00            call word 0x171
00000145  3C80              cmp al,0x80
00000147  7518              jnz 0x161
00000149  B10E              mov cl,0xe
0000014B  BEAB01            mov si,0x1ab
0000014E  AD                lodsw
0000014F  97                xchg ax,di
00000150  AD                lodsw
00000151  93                xchg ax,bx
00000152  AD                lodsw
00000153  95                xchg ax,bp
00000154  8BC7              mov ax,di
00000156  E82800            call word 0x181
00000159  03FD              add di,bp
0000015B  3BFB              cmp di,bx
0000015D  75F5              jnz 0x154
0000015F  E2ED              loop 0x14e
00000161  E81D00            call word 0x181
00000164  E460              in al,0x60
00000166  3C01              cmp al,0x1
00000168  7402              jz 0x16c
0000016A  EBCA              jmp short 0x136
0000016C  B80300            mov ax,0x3
0000016F  CD10              int 0x10
00000171  810678019162      add word [0x178],0x6291
00000177  B85393            mov ax,0x9353
0000017A  01067F01          add [0x17f],ax
0000017E  B864F5            mov ax,0xf564
00000181  60                pushaw
00000182  97                xchg ax,di
00000183  B118              mov cl,0x18
00000185  B518              mov ch,0x18
00000187  B00C              mov al,0xc
00000189  2AC5              sub al,ch
0000018B  F6E8              imul al
0000018D  8AD0              mov dl,al
0000018F  B00C              mov al,0xc
00000191  2AC1              sub al,cl
00000193  F6E8              imul al
00000195  02D0              add dl,al
00000197  80FA30            cmp dl,0x30
0000019A  26801500          adc byte [es:di],0x0
0000019E  47                inc di
0000019F  FECD              dec ch
000001A1  75E4              jnz 0x187
000001A3  81C72801          add di,0x128
000001A7  E2DC              loop 0x185
000001A9  61                popaw
000001AA  C3                ret
000001AB  800C3C            or byte [si],0x3c
000001AE  00C6              add dh,al
000001B0  FE800C3C          inc byte [bx+si+0x3c0c]
000001B4  4B                dec bx
000001B5  46                inc si
000001B6  06                push es
000001B7  3C4B              cmp al,0x4b
000001B9  80573A01          adc byte [bx+0x3a],0x1
000001BD  80708AD4          xor byte [bx+si-0x76],0xd4
000001C1  010A              add [bp+si],cx
000001C3  80703C7D          xor byte [bx+si+0x3c],0x7d
000001C7  46                inc si
000001C8  013C              add [si],di
000001CA  7D80              jnl 0x14c
000001CC  A2BA03            mov [0x3ba],al
000001CF  80A2BCD406        and byte [bp+si-0x2b44],0x6
000001D4  057B00            add ax,0x7b
000001D7  50                push ax
000001D8  D7                xlatb
000001D9  FF04              inc word [si]
000001DB  7B00              jpo 0x1dd
000001DD  A6                cmpsb
000001DE  D7                xlatb
000001DF  0105              add [di],ax
000001E1  64640C71          fs or al,0x71
000001E5  44                inc sp
000001E6  01B0D7DB          add [bx+si-0x2429],si
000001EA  0001              add [bx+di],al
000001EC  FB                sti
000001ED  2801              sub [bx+di],al
000001EF  6C                insb
000001F0  71BE              jno 0x1b0
000001F2  03EC              add bp,sp
000001F4  64A8D5            fs test al,0xd5
000001F7  C2036C            ret 0x6c03
000001FA  7128              jno 0x224
000001FC  65                gs
000001FD  C6                db 0xc6
000001FE  FE                db 0xfe
