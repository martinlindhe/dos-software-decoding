00000100  9BDBE3            finit
00000103  B81300            mov ax,0x13
00000106  CD10              int 0x10
00000108  B81B10            mov ax,0x101b
0000010B  B9AA00            mov cx,0xaa
0000010E  8BD9              mov bx,cx
00000110  CD10              int 0x10
00000112  6800A0            push word 0xa000
00000115  07                pop es
00000116  BED601            mov si,0x1d6
00000119  BD0300            mov bp,0x3
0000011C  AD                lodsw
0000011D  93                xchg ax,bx
0000011E  AD                lodsw
0000011F  97                xchg ax,di
00000120  AD                lodsw
00000121  0104              add [si],ax
00000123  0F82A900          jc word 0x1d0
00000127  B103              mov cl,0x3
00000129  DF04              fild word [si]
0000012B  DE361701          fidiv word [0x117]
0000012F  D9FB              fsincos
00000131  D9C0              fld st0
00000133  DE0F              fimul word [bx]
00000135  D9C2              fld st2
00000137  DE0D              fimul word [di]
00000139  DEE9              fsubp st1
0000013B  DF5F12            fistp word [bx+0x12]
0000013E  DE0D              fimul word [di]
00000140  D9C1              fld st1
00000142  DE0F              fimul word [bx]
00000144  DEC1              faddp st1
00000146  DF5D12            fistp word [di+0x12]
00000149  DDC0              ffree st0
0000014B  83C306            add bx,byte +0x6
0000014E  83C706            add di,byte +0x6
00000151  E2D6              loop 0x129
00000153  AD                lodsw
00000154  4D                dec bp
00000155  75C5              jnz 0x11c
00000157  33FF              xor di,di
00000159  B94001            mov cx,0x140
0000015C  66A11E02          mov eax,[0x21e]
00000160  66A32402          mov [0x224],eax
00000164  A12202            mov ax,[0x222]
00000167  2EA32802          mov [cs:0x228],ax
0000016B  DF062402          fild word [0x224]
0000016F  D9C0              fld st0
00000171  D8C8              fmul st0
00000173  DF062602          fild word [0x226]
00000177  D8C8              fmul st0
00000179  DEC1              faddp st1
0000017B  D9FA              fsqrt
0000017D  DF062802          fild word [0x228]
00000181  D8F1              fdiv st1
00000183  DE0E0401          fimul word [0x104]
00000187  DF1E2A02          fistp word [0x22a]
0000018B  DEF9              fdivp st1
0000018D  DE0E0401          fimul word [0x104]
00000191  DF1E2B02          fistp word [0x22b]
00000195  9BA12A02          wait mov ax,[0x22a]
00000199  02C2              add al,dl
0000019B  32C4              xor al,ah
0000019D  AA                stosb
0000019E  66A11202          mov eax,[0x212]
000001A2  6601062402        add [0x224],eax
000001A7  A11602            mov ax,[0x216]
000001AA  01062802          add [0x228],ax
000001AE  E2BB              loop 0x16b
000001B0  66A11802          mov eax,[0x218]
000001B4  6601061E02        add [0x21e],eax
000001B9  A11C02            mov ax,[0x21c]
000001BC  01062202          add [0x222],ax
000001C0  81FF00FA          cmp di,0xfa00
000001C4  7593              jnz 0x159
000001C6  42                inc dx
000001C7  42                inc dx
000001C8  E460              in al,0x60
000001CA  FEC8              dec al
000001CC  0F8546FF          jnz word 0x116
000001D0  B80300            mov ax,0x3
000001D3  CD10              int 0x10
000001D5  C3                ret
000001D6  EE                out dx,al
000001D7  01F2              add dx,si
000001D9  010D              add [di],cx
000001DB  0000              add [bx+si],al
000001DD  00F0              add al,dh
000001DF  0104              add [si],ax
000001E1  020B              add cl,[bp+di]
000001E3  0000              add [bx+si],al
000001E5  0000              add [bx+si],al
000001E7  0202              add al,[bp+si]
000001E9  024300            add al,[bp+di+0x0]
000001EC  0000              add [bx+si],al
000001EE  8C00              mov [bx+si],es
000001F0  0000              add [bx+si],al
000001F2  0000              add [bx+si],al
000001F4  0000              add [bx+si],al
000001F6  8C00              mov [bx+si],es
000001F8  0000              add [bx+si],al
000001FA  80A850C900        sub byte [bx+si-0x36b0],0x0
000001FF  46                inc si
