00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  B94000            mov cx,0x40
00000108  BAC803            mov dx,0x3c8
0000010B  88C8              mov al,cl
0000010D  EE                out dx,al
0000010E  42                inc dx
0000010F  EE                out dx,al
00000110  EE                out dx,al
00000111  EE                out dx,al
00000112  E2F4              loop 0x108
00000114  9BDBE3            finit
00000117  D906AA02          fld dword [0x2aa]
0000011B  D806A602          fadd dword [0x2a6]
0000011F  D916AA02          fst dword [0x2aa]
00000123  D9FB              fsincos
00000125  D91EC202          fstp dword [0x2c2]
00000129  D91EBE02          fstp dword [0x2be]
0000012D  8CD9              mov cx,ds
0000012F  81C10020          add cx,0x2000
00000133  8EC1              mov es,cx
00000135  B900FA            mov cx,0xfa00
00000138  31FF              xor di,di
0000013A  30C0              xor al,al
0000013C  FC                cld
0000013D  F3AA              rep stosb
0000013F  D9EE              fldz
00000141  B90002            mov cx,0x200
00000144  D9EE              fldz
00000146  BB0002            mov bx,0x200
00000149  E8B900            call 0x205
0000014C  BFAE02            mov di,0x2ae
0000014F  BEB602            mov si,0x2b6
00000152  E88F00            call 0x1e4
00000155  BFB602            mov di,0x2b6
00000158  BEB202            mov si,0x2b2
0000015B  E88600            call 0x1e4
0000015E  D906B602          fld dword [0x2b6]
00000162  D8069A02          fadd dword [0x29a]
00000166  D91EB602          fstp dword [0x2b6]
0000016A  D906B202          fld dword [0x2b2]
0000016E  D836B602          fdiv dword [0x2b6]
00000172  D80E9602          fmul dword [0x296]
00000176  D9E8              fld1
00000178  DEC1              faddp st1
0000017A  DE0E9002          fimul word [0x290]
0000017E  DF1EBC02          fistp word [0x2bc]
00000182  D906AE02          fld dword [0x2ae]
00000186  D836B602          fdiv dword [0x2b6]
0000018A  D9E8              fld1
0000018C  DEC1              faddp st1
0000018E  DE0E8E02          fimul word [0x28e]
00000192  DF1EBA02          fistp word [0x2ba]
00000196  8B3EBC02          mov di,[0x2bc]
0000019A  69FF4001          imul di,di,word 0x140
0000019E  033EBA02          add di,[0x2ba]
000001A2  268A05            mov al,[es:di]
000001A5  3C3F              cmp al,0x3f
000001A7  7403              jz 0x1ac
000001A9  FEC0              inc al
000001AB  AA                stosb
000001AC  D8069202          fadd dword [0x292]
000001B0  4B                dec bx
000001B1  85DB              test bx,bx
000001B3  7594              jnz 0x149
000001B5  DDD8              fstp st0
000001B7  D8069202          fadd dword [0x292]
000001BB  E287              loop 0x144
000001BD  1E                push ds
000001BE  31FF              xor di,di
000001C0  31F6              xor si,si
000001C2  06                push es
000001C3  1F                pop ds
000001C4  6800A0            push word 0xa000
000001C7  07                pop es
000001C8  B900FA            mov cx,0xfa00
000001CB  F3A4              rep movsb
000001CD  1F                pop ds
000001CE  BADA03            mov dx,0x3da
000001D1  EC                in al,dx
000001D2  A808              test al,0x8
000001D4  74F8              jz 0x1ce
000001D6  B401              mov ah,0x1
000001D8  CD16              int 0x16
000001DA  0F8439FF          jz near 0x117
000001DE  B80300            mov ax,0x3
000001E1  CD10              int 0x10
000001E3  C3                ret
000001E4  D905              fld dword [di]
000001E6  D80EC202          fmul dword [0x2c2]
000001EA  D904              fld dword [si]
000001EC  D80EBE02          fmul dword [0x2be]
000001F0  DEE9              fsubp st1
000001F2  D905              fld dword [di]
000001F4  D80EBE02          fmul dword [0x2be]
000001F8  D904              fld dword [si]
000001FA  D80EC202          fmul dword [0x2c2]
000001FE  DEC1              faddp st1
00000200  D91C              fstp dword [si]
00000202  D91D              fstp dword [di]
00000204  C3                ret
00000205  D9C1              fld st1
00000207  D9FB              fsincos
00000209  D916D202          fst dword [0x2d2]
0000020D  DE368C02          fidiv word [0x28c]
00000211  D9E8              fld1
00000213  DEE9              fsubp st1
00000215  D9E0              fchs
00000217  D80E9E02          fmul dword [0x29e]
0000021B  D91EB602          fstp dword [0x2b6]
0000021F  D91ECE02          fstp dword [0x2ce]
00000223  D9C0              fld st0
00000225  D9FB              fsincos
00000227  D91ECA02          fstp dword [0x2ca]
0000022B  D91EC602          fstp dword [0x2c6]
0000022F  D906B602          fld dword [0x2b6]
00000233  D80ECA02          fmul dword [0x2ca]
00000237  81F90001          cmp cx,0x100
0000023B  7606              jna 0x243
0000023D  D80ED202          fmul dword [0x2d2]
00000241  EB02              jmp short 0x245
00000243  D9E0              fchs
00000245  D9E8              fld1
00000247  D806CE02          fadd dword [0x2ce]
0000024B  D80ED202          fmul dword [0x2d2]
0000024F  D80EA202          fmul dword [0x2a2]
00000253  DEC1              faddp st1
00000255  D91EAE02          fstp dword [0x2ae]
00000259  D906CE02          fld dword [0x2ce]
0000025D  DE0E8C02          fimul word [0x28c]
00000261  D8269E02          fsub dword [0x29e]
00000265  D9E0              fchs
00000267  81F90001          cmp cx,0x100
0000026B  760E              jna 0x27b
0000026D  D906CE02          fld dword [0x2ce]
00000271  D80ECA02          fmul dword [0x2ca]
00000275  D80EB602          fmul dword [0x2b6]
00000279  DEE9              fsubp st1
0000027B  D91EB202          fstp dword [0x2b2]
0000027F  D906B602          fld dword [0x2b6]
00000283  D80EC602          fmul dword [0x2c6]
00000287  D91EB602          fstp dword [0x2b6]
0000028B  C3                ret
0000028C  0200              add al,[bx+si]
0000028E  A00064            mov al,[0x6400]
00000291  00DB              add bl,bl
00000293  0F493C            cmovns di,[si]
00000296  CDCC              int 0xcc
00000298  CC                int3
00000299  3F                aas
0000029A  0000              add [bx+si],al
0000029C  B040              mov al,0x40
0000029E  9A99193F66        call 0x663f:0x1999
000002A3  66663F            o32 aas
000002A6  50                push ax
000002A7  7756              ja 0x2ff
000002A9  3D                db 0x3d
