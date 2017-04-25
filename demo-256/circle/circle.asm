00000100  BDFCFF            mov bp,0xfffc
00000103  BE00FA            mov si,0xfa00
00000106  9BDBE3            finit
00000109  B81300            mov ax,0x13
0000010C  CD10              int 0x10
0000010E  B0FF              mov al,0xff
00000110  BAC803            mov dx,0x3c8
00000113  EE                out dx,al
00000114  42                inc dx
00000115  EE                out dx,al
00000116  EE                out dx,al
00000117  EE                out dx,al
00000118  FEC8              dec al
0000011A  75F4              jnz 0x110
0000011C  BB0010            mov bx,0x1000
0000011F  8CC8              mov ax,cs
00000121  03C3              add ax,bx
00000123  8EE8              mov gs,ax
00000125  03C3              add ax,bx
00000127  8EE0              mov fs,ax
00000129  6800A0            push word 0xa000
0000012C  07                pop es
0000012D  8BDE              mov bx,si
0000012F  FEC1              inc cl
00000131  F6C1D0            test cl,0xd0
00000134  7409              jz 0x13f
00000136  90                nop
00000137  90                nop
00000138  FEC0              inc al
0000013A  8AE0              mov ah,al
0000013C  80E43F            and ah,0x3f
0000013F  658827            mov [gs:bx],ah
00000142  4B                dec bx
00000143  75EA              jnz 0x12f
00000145  B10A              mov cl,0xa
00000147  E89300            call word 0x1dd
0000014A  8BDE              mov bx,si
0000014C  268A07            mov al,[es:bx]
0000014F  658807            mov [gs:bx],al
00000152  648807            mov [fs:bx],al
00000155  4B                dec bx
00000156  75F4              jnz 0x14c
00000158  FEC9              dec cl
0000015A  75EB              jnz 0x147
0000015C  33FF              xor di,di
0000015E  03FD              add di,bp
00000160  0BFF              or di,di
00000162  780A              js 0x16e
00000164  90                nop
00000165  90                nop
00000166  81FF4001          cmp di,0x140
0000016A  7E04              jng 0x170
0000016C  90                nop
0000016D  90                nop
0000016E  F7DD              neg bp
00000170  33C0              xor ax,ax
00000172  A30502            mov [0x205],ax
00000175  B50A              mov ch,0xa
00000177  B13F              mov cl,0x3f
00000179  DF06FF01          fild word [0x1ff]
0000017D  DE36FD01          fidiv word [0x1fd]
00000181  D9FB              fsincos
00000183  DE0E0502          fimul word [0x205]
00000187  DF1E0302          fistp word [0x203]
0000018B  DE0E0502          fimul word [0x205]
0000018F  DF1E0102          fistp word [0x201]
00000193  A10302            mov ax,[0x203]
00000196  056400            add ax,0x64
00000199  BB4001            mov bx,0x140
0000019C  F7E3              mul bx
0000019E  8BDF              mov bx,di
000001A0  03D8              add bx,ax
000001A2  031E0102          add bx,[0x201]
000001A6  3BDE              cmp bx,si
000001A8  770C              ja 0x1b6
000001AA  90                nop
000001AB  90                nop
000001AC  65C6073F          mov byte [gs:bx],0x3f
000001B0  65C687410100      mov byte [gs:bx+0x141],0x0
000001B6  FF06FF01          inc word [0x1ff]
000001BA  FEC9              dec cl
000001BC  75BB              jnz 0x179
000001BE  8306050208        add word [0x205],byte +0x8
000001C3  FECD              dec ch
000001C5  75B0              jnz 0x177
000001C7  E81300            call word 0x1dd
000001CA  8BDE              mov bx,si
000001CC  648A07            mov al,[fs:bx]
000001CF  658807            mov [gs:bx],al
000001D2  4B                dec bx
000001D3  75F7              jnz 0x1cc
000001D5  E460              in al,0x60
000001D7  FEC8              dec al
000001D9  7583              jnz 0x15e
000001DB  CD20              int 0x20
000001DD  BBC0F8            mov bx,0xf8c0
000001E0  4B                dec bx
000001E1  658A07            mov al,[gs:bx]
000001E4  65024701          add al,[gs:bx+0x1]
000001E8  6502874001        add al,[gs:bx+0x140]
000001ED  6502874101        add al,[gs:bx+0x141]
000001F2  C0E802            shr al,byte 0x2
000001F5  268807            mov [es:bx],al
000001F8  0BDB              or bx,bx
000001FA  75E4              jnz 0x1e0
000001FC  C3                ret
000001FD  0A00              or al,[bx+si]
