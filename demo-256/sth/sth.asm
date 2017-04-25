00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  680070            push word 0x7000
00000107  0FA1              pop fs
00000109  680080            push word 0x8000
0000010C  0FA9              pop gs
0000010E  6800A0            push word 0xa000
00000111  07                pop es
00000112  BBF301            mov bx,0x1f3
00000115  B9C800            mov cx,0xc8
00000118  33FF              xor di,di
0000011A  D9E8              fld1
0000011C  DF4702            fild word [bx+0x2]
0000011F  DF07              fild word [bx]
00000121  B84001            mov ax,0x140
00000124  D9C1              fld st1
00000126  D8C8              fmul st0
00000128  D9C1              fld st1
0000012A  D8C8              fmul st0
0000012C  DEC1              faddp st1
0000012E  D9FA              fsqrt
00000130  64DF1D            fistp word [fs:di]
00000133  D9C1              fld st1
00000135  D9C1              fld st1
00000137  D9F3              fpatan
00000139  D84F04            fmul dword [bx+0x4]
0000013C  90                nop
0000013D  65DF1D            fistp word [gs:di]
00000140  D8C2              fadd st2
00000142  47                inc di
00000143  48                dec ax
00000144  75DE              jnz 0x124
00000146  DDD8              fstp st0
00000148  D8C1              fadd st1
0000014A  E2D3              loop 0x11f
0000014C  BAC803            mov dx,0x3c8
0000014F  EE                out dx,al
00000150  42                inc dx
00000151  8AC4              mov al,ah
00000153  C0E802            shr al,byte 0x2
00000156  EE                out dx,al
00000157  EE                out dx,al
00000158  D0E8              shr al,1
0000015A  EE                out dx,al
0000015B  FEC4              inc ah
0000015D  75F2              jnz 0x151
0000015F  D9C0              fld st0
00000161  D8C0              fadd st0
00000163  D9FE              fsin
00000165  D9C2              fld st2
00000167  D9FF              fcos
00000169  D84F04            fmul dword [bx+0x4]
0000016C  90                nop
0000016D  DF1F              fistp word [bx]
0000016F  D84F04            fmul dword [bx+0x4]
00000172  90                nop
00000173  DF5F02            fistp word [bx+0x2]
00000176  D84708            fadd dword [bx+0x8]
00000179  90                nop
0000017A  8B7702            mov si,[bx+0x2]
0000017D  69F64001          imul si,si,word 0x140
00000181  0337              add si,[bx]
00000183  60                pushaw
00000184  8BDE              mov bx,si
00000186  03DE              add bx,si
00000188  F7DB              neg bx
0000018A  81C6303E          add si,0x3e30
0000018E  BFBE01            mov di,0x1be
00000191  B164              mov cl,0x64
00000193  BAA000            mov dx,0xa0
00000196  03F2              add si,dx
00000198  03FA              add di,dx
0000019A  03FA              add di,dx
0000019C  648A04            mov al,[fs:si]
0000019F  47                inc di
000001A0  658A24            mov ah,[gs:si]
000001A3  47                inc di
000001A4  642A00            sub al,[fs:bx+si]
000001A7  652A20            sub ah,[gs:bx+si]
000001AA  46                inc si
000001AB  03C5              add ax,bp
000001AD  0AC4              or al,ah
000001AF  2A05              sub al,[di]
000001B1  D0D8              rcr al,1
000001B3  D0F8              sar al,1
000001B5  0205              add al,[di]
000001B7  8AE0              mov ah,al
000001B9  8905              mov [di],ax
000001BB  4A                dec dx
000001BC  89854001          mov [di+0x140],ax
000001C0  75DA              jnz 0x19c
000001C2  E2CF              loop 0x193
000001C4  BADA03            mov dx,0x3da
000001C7  EC                in al,dx
000001C8  2408              and al,0x8
000001CA  74FB              jz 0x1c7
000001CC  BE4004            mov si,0x440
000001CF  B1C6              mov cl,0xc6
000001D1  AC                lodsb
000001D2  BA3E01            mov dx,0x13e
000001D5  0204              add al,[si]
000001D7  D0D8              rcr al,1
000001D9  26888400FD        mov [es:si-0x300],al
000001DE  46                inc si
000001DF  4A                dec dx
000001E0  75F3              jnz 0x1d5
000001E2  46                inc si
000001E3  E2EC              loop 0x1d1
000001E5  61                popaw
000001E6  81C50101          add bp,0x101
000001EA  E460              in al,0x60
000001EC  3C01              cmp al,0x1
000001EE  0F856DFF          jnz word 0x15f
000001F2  C3                ret
000001F3  60                pushaw
000001F4  FF9CFF83          call word far [si-0x7c01]
000001F8  F9                stc
000001F9  2242A6            and al,[bp+si-0x5a]
000001FC  9B44              wait inc sp
000001FE  3B                db 0x3b
