00000100  90                nop
00000101  B013              mov al,0x13
00000103  CD10              int 0x10
00000105  B87FFF            mov ax,0xff7f
00000108  60                pushaw
00000109  680020            push word 0x2000
0000010C  07                pop es
0000010D  054100            add ax,0x41
00000110  A30301            mov [0x103],ax
00000113  33FF              xor di,di
00000115  93                xchg ax,bx
00000116  B9F980            mov cx,0x80f9
00000119  60                pushaw
0000011A  F3AB              rep stosw
0000011C  97                xchg ax,di
0000011D  BB0E01            mov bx,0x10e
00000120  BFD901            mov di,0x1d9
00000123  FFD7              call di
00000125  D9E0              fchs
00000127  FFD0              call ax
00000129  E8BB00            call word 0x1e7
0000012C  E8AA00            call word 0x1d9
0000012F  E8B500            call word 0x1e7
00000132  FFD0              call ax
00000134  E8A200            call word 0x1d9
00000137  FFD0              call ax
00000139  D9E0              fchs
0000013B  E8A900            call word 0x1e7
0000013E  9C                pushfw
0000013F  8A05              mov al,[di]
00000141  8A6502            mov ah,[di+0x2]
00000144  83EF27            sub di,byte +0x27
00000147  8A1D              mov bl,[di]
00000149  8A7D02            mov bh,[di+0x2]
0000014C  60                pushaw
0000014D  3BD8              cmp bx,ax
0000014F  7201              jc 0x152
00000151  93                xchg ax,bx
00000152  2BC3              sub ax,bx
00000154  8ACC              mov cl,ah
00000156  8AE0              mov ah,al
00000158  E358              jcxz 0x1b2
0000015A  99                cwd
0000015B  F7F9              idiv cx
0000015D  95                xchg ax,bp
0000015E  8CC0              mov ax,es
00000160  99                cwd
00000161  F7F9              idiv cx
00000163  86F3              xchg dh,bl
00000165  81C33412          add bx,0x1234
00000169  8BFB              mov di,bx
0000016B  C1EB02            shr bx,byte 0x2
0000016E  03FB              add di,bx
00000170  96                xchg ax,si
00000171  33DB              xor bx,bx
00000173  60                pushaw
00000174  C1EA08            shr dx,byte 0x8
00000177  C1EB08            shr bx,byte 0x8
0000017A  80E3FC            and bl,0xfc
0000017D  8CC0              mov ax,es
0000017F  F6F2              div dl
00000181  32E4              xor ah,ah
00000183  33F6              xor si,si
00000185  60                pushaw
00000186  C1EE0B            shr si,byte 0xb
00000189  8D08              lea cx,[bx+si]
0000018B  F8                clc
0000018C  66BD0E5351F1      mov ebp,0xf151530e
00000192  B0B0              mov al,0xb0
00000194  66D3E5            shl ebp,cl
00000197  1C00              sbb al,0x0
00000199  2BFA              sub di,dx
0000019B  AA                stosb
0000019C  03FA              add di,dx
0000019E  03FA              add di,dx
000001A0  AA                stosb
000001A1  61                popaw
000001A2  03F0              add si,ax
000001A4  4A                dec dx
000001A5  79DE              jns 0x185
000001A7  61                popaw
000001A8  03DE              add bx,si
000001AA  03D5              add dx,bp
000001AC  81C74001          add di,0x140
000001B0  E2C1              loop 0x173
000001B2  61                popaw
000001B3  9D                popfw
000001B4  F5                cmc
000001B5  7287              jc 0x13e
000001B7  61                popaw
000001B8  8BF7              mov si,di
000001BA  1E                push ds
000001BB  6800A0            push word 0xa000
000001BE  06                push es
000001BF  1F                pop ds
000001C0  07                pop es
000001C1  F3A5              rep movsw
000001C3  1F                pop ds
000001C4  E460              in al,0x60
000001C6  3C01              cmp al,0x1
000001C8  61                popaw
000001C9  7408              jz 0x1d3
000001CB  40                inc ax
000001CC  0F8538FF          jnz word 0x108
000001D0  E932FF            jmp word 0x105
000001D3  B80300            mov ax,0x3
000001D6  CD10              int 0x10
000001D8  C3                ret
000001D9  83C727            add di,byte +0x27
000001DC  D9EB              fldpi
000001DE  DE4FF5            fimul word [bx-0xb]
000001E1  DE7703            fidiv word [bx+0x3]
000001E4  D9FB              fsincos
000001E6  C3                ret
000001E7  DE0F              fimul word [bx]
000001E9  DE6703            fisub word [bx+0x3]
000001EC  DE7F24            fidivr word [bx+0x24]
000001EF  DF1D              fistp word [di]
000001F1  C3                ret
000001F2  DE0F              fimul word [bx]
000001F4  DE47FB            fiadd word [bx-0x5]
000001F7  DF5502            fist word [di+0x2]
000001FA  D9E1              fabs
000001FC  DF5F59            fistp word [bx+0x59]
000001FF  C3                ret
