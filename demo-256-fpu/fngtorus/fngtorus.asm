00000100  DBE3              fninit
00000102  B013              mov al,0x13
00000104  CD10              int 0x10
00000106  B409              mov ah,0x9
00000108  BAFB01            mov dx,0x1fb
0000010B  CD21              int 0x21
0000010D  BF0ACA            mov di,0xca0a
00000110  B120              mov cl,0x20
00000112  B520              mov ch,0x20
00000114  B010              mov al,0x10
00000116  2AC1              sub al,cl
00000118  F6E8              imul al
0000011A  93                xchg ax,bx
0000011B  B010              mov al,0x10
0000011D  2AC5              sub al,ch
0000011F  F6E8              imul al
00000121  03C3              add ax,bx
00000123  F7D8              neg ax
00000125  FEC4              inc ah
00000127  8904              mov [si],ax
00000129  DF04              fild word [si]
0000012B  D9FA              fsqrt
0000012D  DF1C              fistp word [si]
0000012F  A4                movsb
00000130  4E                dec si
00000131  FECD              dec ch
00000133  75DF              jnz 0x114
00000135  E2DB              loop 0x112
00000137  BF0402            mov di,0x204
0000013A  8BF7              mov si,di
0000013C  B90064            mov cx,0x6400
0000013F  B020              mov al,0x20
00000141  F3AA              rep stosb
00000143  B94006            mov cx,0x640
00000146  F3AA              rep stosb
00000148  FEC0              inc al
0000014A  3C30              cmp al,0x30
0000014C  72F5              jc 0x143
0000014E  FF44FE            inc word [si-0x2]
00000151  B180              mov cl,0x80
00000153  60                pushaw
00000154  894CFC            mov [si-0x4],cx
00000157  D9EE              fldz
00000159  DF44FC            fild word [si-0x4]
0000015C  D874F3            fdiv dword [si-0xd]
0000015F  D9FB              fsincos
00000161  D9C0              fld st0
00000163  D9C3              fld st3
00000165  DF44FE            fild word [si-0x2]
00000168  D874F3            fdiv dword [si-0xd]
0000016B  D9FB              fsincos
0000016D  DCCE              fmul to st6
0000016F  DECC              fmulp st4
00000171  DCCA              fmul to st2
00000173  DEC9              fmulp st1
00000175  DEEA              fsubp st2
00000177  DEC3              faddp st3
00000179  D9C9              fxch st1
0000017B  F5                cmc
0000017C  72E3              jc 0x161
0000017E  B103              mov cl,0x3
00000180  DE4C86            fimul word [si-0x7a]
00000183  DF1D              fistp word [di]
00000185  47                inc di
00000186  47                inc di
00000187  E2F7              loop 0x180
00000189  BB4000            mov bx,0x40
0000018C  8B6DFA            mov bp,[di-0x6]
0000018F  03EB              add bp,bx
00000191  8B45FC            mov ax,[di-0x4]
00000194  03C3              add ax,bx
00000196  F76CDF            imul word [si-0x21]
00000199  03C5              add ax,bp
0000019B  035DFE            add bx,[di-0x2]
0000019E  97                xchg ax,di
0000019F  03FE              add di,si
000001A1  96                xchg ax,si
000001A2  B120              mov cl,0x20
000001A4  B520              mov ch,0x20
000001A6  AC                lodsb
000001A7  0AC0              or al,al
000001A9  7410              jz 0x1bb
000001AB  040F              add al,0xf
000001AD  02C3              add al,bl
000001AF  3805              cmp [di],al
000001B1  7308              jnc 0x1bb
000001B3  8805              mov [di],al
000001B5  2AC3              sub al,bl
000001B7  8885FF63          mov [di+0x63ff],al
000001BB  47                inc di
000001BC  FECD              dec ch
000001BE  75E6              jnz 0x1a6
000001C0  81C78000          add di,0x80
000001C4  E2DE              loop 0x1a4
000001C6  61                popaw
000001C7  E28A              loop 0x153
000001C9  BADA03            mov dx,0x3da
000001CC  EC                in al,dx
000001CD  A808              test al,0x8
000001CF  74FB              jz 0x1cc
000001D1  06                push es
000001D2  6800A0            push word 0xa000
000001D5  07                pop es
000001D6  8BFD              mov di,bp
000001D8  BE0466            mov si,0x6604
000001DB  B3A0              mov bl,0xa0
000001DD  B150              mov cl,0x50
000001DF  F3A5              rep movsw
000001E1  81C7A000          add di,0xa0
000001E5  4B                dec bx
000001E6  75F5              jnz 0x1dd
000001E8  07                pop es
000001E9  E460              in al,0x60
000001EB  3C01              cmp al,0x1
000001ED  0F8546FF          jnz word 0x137
000001F1  B80300            mov ax,0x3
000001F4  CD10              int 0x10
000001F6  C3                ret
000001F7  83F9A2            cmp cx,byte -0x5e
000001FA  41                inc cx
000001FB  25656C            and ax,0x6c65
000001FE  7624              jna 0x224
