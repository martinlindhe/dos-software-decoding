00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC903            mov dx,0x3c9
00000107  B03F              mov al,0x3f
00000109  2AC1              sub al,cl
0000010B  EE                out dx,al
0000010C  EE                out dx,al
0000010D  EE                out dx,al
0000010E  E2F7              loop 0x107
00000110  BD3B02            mov bp,0x23b
00000113  C70637022000      mov word [0x237],0x20
00000119  C7063402B5FF      mov word [0x234],0xffb5
0000011F  C606360204        mov byte [0x236],0x4
00000124  90                nop
00000125  C70639020500      mov word [0x239],0x5
0000012B  E82700            call 0x155
0000012E  C70637023700      mov word [0x237],0x37
00000134  C70634025000      mov word [0x234],0x50
0000013A  C60636020A        mov byte [0x236],0xa
0000013F  90                nop
00000140  C70639020700      mov word [0x239],0x7
00000146  E80C00            call 0x155
00000149  B401              mov ah,0x1
0000014B  CD16              int 0x16
0000014D  74C4              jz 0x113
0000014F  B80300            mov ax,0x3
00000152  CD10              int 0x10
00000154  C3                ret
00000155  0E                push cs
00000156  07                pop es
00000157  33C0              xor ax,ax
00000159  8BFD              mov di,bp
0000015B  B5FA              mov ch,0xfa
0000015D  F3AA              rep stosb
0000015F  D9062802          fld dword [0x228]
00000163  D8062002          fadd dword [0x220]
00000167  D9162802          fst dword [0x228]
0000016B  D91E2C02          fstp dword [0x22c]
0000016F  6800A0            push word 0xa000
00000172  07                pop es
00000173  BB3200            mov bx,0x32
00000176  B103              mov cl,0x3
00000178  D9062C02          fld dword [0x22c]
0000017C  D8062C02          fadd dword [0x22c]
00000180  D9FE              fsin
00000182  D9FE              fsin
00000184  DE0E3702          fimul word [0x237]
00000188  DF1E3002          fistp word [0x230]
0000018C  D9062C02          fld dword [0x22c]
00000190  D9FE              fsin
00000192  DE0E3902          fimul word [0x239]
00000196  DE063902          fiadd word [0x239]
0000019A  DE063902          fiadd word [0x239]
0000019E  DF1E3202          fistp word [0x232]
000001A2  8B163202          mov dx,[0x232]
000001A6  8BFB              mov di,bx
000001A8  2B3E3002          sub di,[0x230]
000001AC  B531              mov ch,0x31
000001AE  3A93A000          cmp dl,[bp+di+0xa0]
000001B2  7612              jna 0x1c6
000001B4  8AC5              mov al,ch
000001B6  02C7              add al,bh
000001B8  22063602          and al,[0x236]
000001BC  02C4              add al,ah
000001BE  03C2              add ax,dx
000001C0  8803              mov [bp+di],al
000001C2  8893A000          mov [bp+di+0xa0],dl
000001C6  80FD19            cmp ch,0x19
000001C9  7604              jna 0x1cf
000001CB  FEC4              inc ah
000001CD  EB02              jmp short 0x1d1
000001CF  FECC              dec ah
000001D1  47                inc di
000001D2  FECD              dec ch
000001D4  75D8              jnz 0x1ae
000001D6  D9062C02          fld dword [0x22c]
000001DA  D8062402          fadd dword [0x224]
000001DE  80F901            cmp cl,0x1
000001E1  7704              ja 0x1e7
000001E3  D8061C02          fadd dword [0x21c]
000001E7  D91E2C02          fstp dword [0x22c]
000001EB  E28B              loop 0x178
000001ED  81C34001          add bx,0x140
000001F1  81FB72FB          cmp bx,0xfb72
000001F5  0F827DFF          jc near 0x176
000001F9  BADA03            mov dx,0x3da
000001FC  EC                in al,dx
000001FD  A808              test al,0x8
000001FF  74FB              jz 0x1fc
00000201  8BF5              mov si,bp
00000203  8B3E3402          mov di,[0x234]
00000207  BAC800            mov dx,0xc8
0000020A  B8A000            mov ax,0xa0
0000020D  8BC8              mov cx,ax
0000020F  F3A4              rep movsb
00000211  03F8              add di,ax
00000213  03F0              add si,ax
00000215  4A                dec dx
00000216  75F5              jnz 0x20d
00000218  C3                ret
00000219  7369              jnc 0x284
0000021B  6C                insb
0000021C  A7                cmpsw
0000021D  99                cwd
0000021E  E43C              in al,0x3c
00000220  0DD7A3            or ax,0xa3d7
00000223  3C7C              cmp al,0x7c
00000225  0A064000          or al,[0x40]
00000229  0000              add [bx+si],al
0000022B  00                db 0x00
