00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8CC8              mov ax,cs
00000106  050010            add ax,0x1000
00000109  8EE8              mov gs,ax
0000010B  050010            add ax,0x1000
0000010E  8EE0              mov fs,ax
00000110  050010            add ax,0x1000
00000113  8EC0              mov es,ax
00000115  B3FF              mov bl,0xff
00000117  B1FF              mov cl,0xff
00000119  8BC3              mov ax,bx
0000011B  F7E0              mul ax
0000011D  8BF0              mov si,ax
0000011F  8BC1              mov ax,cx
00000121  F7E0              mul ax
00000123  03C6              add ax,si
00000125  AA                stosb
00000126  E2F1              loop 0x119
00000128  FECB              dec bl
0000012A  75EB              jnz 0x117
0000012C  33FF              xor di,di
0000012E  B307              mov bl,0x7
00000130  268A45FF          mov al,[es:di-0x1]
00000134  26024501          add al,[es:di+0x1]
00000138  260285C0FE        add al,[es:di-0x140]
0000013D  2602854001        add al,[es:di+0x140]
00000142  C0E802            shr al,byte 0x2
00000145  AA                stosb
00000146  E2E8              loop 0x130
00000148  FECB              dec bl
0000014A  75E4              jnz 0x130
0000014C  BAC803            mov dx,0x3c8
0000014F  32C0              xor al,al
00000151  EE                out dx,al
00000152  42                inc dx
00000153  B501              mov ch,0x1
00000155  8AC1              mov al,cl
00000157  EE                out dx,al
00000158  EE                out dx,al
00000159  EE                out dx,al
0000015A  E2F9              loop 0x155
0000015C  C70600009CFF      mov word [0x0],0xff9c
00000162  C706020060FF      mov word [0x2],0xff60
00000168  391E0200          cmp [0x2],bx
0000016C  7425              jz 0x193
0000016E  DF060200          fild word [0x2]
00000172  DF060000          fild word [0x0]
00000176  D9C0              fld st0
00000178  D9C2              fld st2
0000017A  D9F3              fpatan
0000017C  DE0EF201          fimul word [0x1f2]
00000180  64DF3D            fistp qword [fs:di]
00000183  D9F3              fpatan
00000185  D9FE              fsin
00000187  DE0EF301          fimul word [0x1f3]
0000018B  DE360200          fidiv word [0x2]
0000018F  65DF3D            fistp qword [gs:di]
00000192  47                inc di
00000193  FF060200          inc word [0x2]
00000197  813E0200A100      cmp word [0x2],0xa1
0000019D  7CC9              jl 0x168
0000019F  FF060000          inc word [0x0]
000001A3  81FF00FA          cmp di,0xfa00
000001A7  72B9              jc 0x162
000001A9  06                push es
000001AA  1F                pop ds
000001AB  6800A0            push word 0xa000
000001AE  07                pop es
000001AF  33FF              xor di,di
000001B1  658A25            mov ah,[gs:di]
000001B4  648A05            mov al,[fs:di]
000001B7  8AD4              mov dl,ah
000001B9  050000            add ax,0x0
000001BC  96                xchg ax,si
000001BD  AC                lodsb
000001BE  C0EA02            shr dl,byte 0x2
000001C1  3AD0              cmp dl,al
000001C3  7202              jc 0x1c7
000001C5  8BD0              mov dx,ax
000001C7  2AD0              sub dl,al
000001C9  92                xchg ax,dx
000001CA  AA                stosb
000001CB  0BFF              or di,di
000001CD  75E2              jnz 0x1b1
000001CF  B80300            mov ax,0x3
000001D2  CD33              int 0x33
000001D4  80C701            add bh,0x1
000001D7  2E011EBA01        add [cs:0x1ba],bx
000001DC  E460              in al,0x60
000001DE  3C01              cmp al,0x1
000001E0  75CD              jnz 0x1af
000001E2  B80300            mov ax,0x3
000001E5  CD10              int 0x10
000001E7  0E                push cs
000001E8  1F                pop ds
000001E9  BAF501            mov dx,0x1f5
000001EC  B409              mov ah,0x9
000001EE  CD21              int 0x21
000001F0  CD20              int 0x20
000001F2  2900              sub [bx+si],ax
000001F4  1468              adc al,0x68
000001F6  61                popaw
000001F7  6765722F          gs jc 0x22a
000001FB  7072              jo 0x26f
000001FD  66                o32
000001FE  24                db 0x24
