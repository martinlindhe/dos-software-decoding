00000100  6800A0            push word 0xa000
00000103  07                pop es
00000104  B650              mov dh,0x50
00000106  8EE2              mov fs,dx
00000108  B660              mov dh,0x60
0000010A  8EEA              mov gs,dx
0000010C  B013              mov al,0x13
0000010E  CD10              int 0x10
00000110  D9EE              fldz
00000112  D9C0              fld st0
00000114  D9FE              fsin
00000116  64D91F            fstp dword [fs:bx]
00000119  D806FC01          fadd dword [0x1fc]
0000011D  83C304            add bx,byte +0x4
00000120  75F0              jnz 0x112
00000122  33D2              xor dx,dx
00000124  33C9              xor cx,cx
00000126  33ED              xor bp,bp
00000128  52                push dx
00000129  33C0              xor ax,ax
0000012B  BE0018            mov si,0x1800
0000012E  BF0418            mov di,0x1804
00000131  668904            mov [si],eax
00000134  C7051E00          mov word [di],0x1e
00000138  8BDD              mov bx,bp
0000013A  E89F00            call word 0x1dc
0000013D  4F                dec di
0000013E  4F                dec di
0000013F  E88600            call word 0x1c8
00000142  BE0818            mov si,0x1808
00000145  BF0A18            mov di,0x180a
00000148  C7043E00          mov word [si],0x3e
0000014C  668905            mov [di],eax
0000014F  E87600            call word 0x1c8
00000152  A10018            mov ax,[0x1800]
00000155  F7E8              imul ax
00000157  8BD8              mov bx,ax
00000159  A10218            mov ax,[0x1802]
0000015C  F7E8              imul ax
0000015E  03C3              add ax,bx
00000160  03C0              add ax,ax
00000162  80C485            add ah,0x85
00000165  8AF4              mov dh,ah
00000167  8A160418          mov dl,[0x1804]
0000016B  0215              add dl,[di]
0000016D  A10218            mov ax,[0x1802]
00000170  03060A18          add ax,[0x180a]
00000174  D1F8              sar ax,1
00000176  69D84001          imul bx,ax,word 0x140
0000017A  A10018            mov ax,[0x1800]
0000017D  03060818          add ax,[0x1808]
00000181  D1F8              sar ax,1
00000183  05DF56            add ax,0x56df
00000186  03D8              add bx,ax
00000188  E83100            call word 0x1bc
0000018B  E82E00            call word 0x1bc
0000018E  81C33E01          add bx,0x13e
00000192  E82700            call word 0x1bc
00000195  E82400            call word 0x1bc
00000198  5A                pop dx
00000199  81C50002          add bp,0x200
0000019D  7589              jnz 0x128
0000019F  80C502            add ch,0x2
000001A2  7582              jnz 0x126
000001A4  65C6047F          mov byte [gs:si],0x7f
000001A8  A4                movsb
000001A9  C644FF00          mov byte [si-0x1],0x0
000001AD  49                dec cx
000001AE  E2F4              loop 0x1a4
000001B0  81C2B403          add dx,0x3b4
000001B4  E460              in al,0x60
000001B6  3C01              cmp al,0x1
000001B8  0F8568FF          jnz word 0x124
000001BC  653817            cmp [gs:bx],dl
000001BF  7C05              jl 0x1c6
000001C1  8837              mov [bx],dh
000001C3  658817            mov [gs:bx],dl
000001C6  43                inc bx
000001C7  C3                ret
000001C8  8BD9              mov bx,cx
000001CA  E80F00            call word 0x1dc
000001CD  47                inc di
000001CE  8BDA              mov bx,dx
000001D0  47                inc di
000001D1  E80800            call word 0x1dc
000001D4  46                inc si
000001D5  03DA              add bx,dx
000001D7  46                inc si
000001D8  E80100            call word 0x1dc
000001DB  C3                ret
000001DC  64D98700C0        fld dword [fs:bx-0x4000]
000001E1  DF04              fild word [si]
000001E3  D9C0              fld st0
000001E5  64D80F            fmul dword [fs:bx]
000001E8  DF05              fild word [di]
000001EA  D8CB              fmul st3
000001EC  DEE9              fsubp st1
000001EE  DF1C              fistp word [si]
000001F0  DEC9              fmulp st1
000001F2  DF05              fild word [di]
000001F4  64D80F            fmul dword [fs:bx]
000001F7  DEC1              faddp st1
000001F9  DF1D              fistp word [di]
000001FB  C3                ret
000001FC  DB0F              fisttp dword [bx]
000001FE  C9                leave
000001FF  39                db 0x39
