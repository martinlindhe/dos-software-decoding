00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  33C0              xor ax,ax
00000106  B4A0              mov ah,0xa0
00000108  8EE0              mov fs,ax
0000010A  BAC803            mov dx,0x3c8
0000010D  EE                out dx,al
0000010E  42                inc dx
0000010F  50                push ax
00000110  34FF              xor al,0xff
00000112  C0E803            shr al,byte 0x3
00000115  EE                out dx,al
00000116  EE                out dx,al
00000117  EE                out dx,al
00000118  58                pop ax
00000119  40                inc ax
0000011A  75EE              jnz 0x10a
0000011C  0E                push cs
0000011D  07                pop es
0000011E  B44A              mov ah,0x4a
00000120  E8D100            call word 0x1f4
00000123  E8CC00            call word 0x1f2
00000126  50                push ax
00000127  E8C800            call word 0x1f2
0000012A  8ED8              mov ds,ax
0000012C  8EC0              mov es,ax
0000012E  B180              mov cl,0x80
00000130  8BF1              mov si,cx
00000132  33DB              xor bx,bx
00000134  E84B00            call word 0x182
00000137  07                pop es
00000138  BEA000            mov si,0xa0
0000013B  B96400            mov cx,0x64
0000013E  4B                dec bx
0000013F  E84000            call word 0x182
00000142  BADA03            mov dx,0x3da
00000145  EC                in al,dx
00000146  A808              test al,0x8
00000148  75FB              jnz 0x145
0000014A  E87200            call word 0x1bf
0000014D  86E0              xchg ah,al
0000014F  E86D00            call word 0x1bf
00000152  81C10201          add cx,0x102
00000156  33FF              xor di,di
00000158  96                xchg ax,si
00000159  B84001            mov ax,0x140
0000015C  268ABDC0FE        mov bh,[es:di-0x140]
00000161  268A5DFF          mov bl,[es:di-0x1]
00000165  47                inc di
00000166  262ABD3F01        sub bh,[es:di+0x13f]
0000016B  262A1D            sub bl,[es:di]
0000016E  8A18              mov bl,[bx+si]
00000170  64881D            mov [fs:di],bl
00000173  46                inc si
00000174  48                dec ax
00000175  75E5              jnz 0x15c
00000177  83EE40            sub si,byte +0x40
0000017A  81FF00FA          cmp di,0xfa00
0000017E  75D9              jnz 0x159
00000180  EBC0              jmp short 0x142
00000182  8BD1              mov dx,cx
00000184  F7DA              neg dx
00000186  8BEE              mov bp,si
00000188  F7DE              neg si
0000018A  8EEE              mov gs,si
0000018C  E85400            call word 0x1e3
0000018F  8EE9              mov gs,cx
00000191  E84F00            call word 0x1e3
00000194  DEC1              faddp st1
00000196  D9FA              fsqrt
00000198  D0CB              ror bl,1
0000019A  730E              jnc 0x1aa
0000019C  90                nop
0000019D  90                nop
0000019E  2EDE36FE01        fidiv word [cs:0x1fe]
000001A3  D9FE              fsin
000001A5  2EDE0EFA01        fimul word [cs:0x1fa]
000001AA  2EDF1E0002        fistp word [cs:0x200]
000001AF  2EA00002          mov al,[cs:0x200]
000001B3  AA                stosb
000001B4  46                inc si
000001B5  3BF5              cmp si,bp
000001B7  75D1              jnz 0x18a
000001B9  49                dec cx
000001BA  3BCA              cmp cx,dx
000001BC  75CA              jnz 0x188
000001BE  C3                ret
000001BF  2E890E0002        mov [cs:0x200],cx
000001C4  2EDF06FC01        fild word [cs:0x1fc]
000001C9  D9EB              fldpi
000001CB  2EDE0E0002        fimul word [cs:0x200]
000001D0  D8F1              fdiv st1
000001D2  D9FE              fsin
000001D4  DEC9              fmulp st1
000001D6  2EDF1E0202        fistp word [cs:0x202]
000001DB  2E86260202        xchg ah,[cs:0x202]
000001E0  86E9              xchg ch,cl
000001E2  C3                ret
000001E3  2E8C2E0002        mov [cs:0x200],gs
000001E8  2EDF060002        fild word [cs:0x200]
000001ED  D9C0              fld st0
000001EF  DEC9              fmulp st1
000001F1  C3                ret
000001F2  B448              mov ah,0x48
000001F4  BB0010            mov bx,0x1000
000001F7  CD21              int 0x21
000001F9  C3                ret
000001FA  40                inc ax
000001FB  00800004          add [bx+si+0x400],al
000001FF  00                db 0x00
