00000100  0E                push cs
00000101  1F                pop ds
00000102  B81300            mov ax,0x13
00000105  CD10              int 0x10
00000107  FA                cli
00000108  BAC803            mov dx,0x3c8
0000010B  33C0              xor ax,ax
0000010D  EE                out dx,al
0000010E  42                inc dx
0000010F  EE                out dx,al
00000110  BE1801            mov si,0x118
00000113  6E                outsb
00000114  EE                out dx,al
00000115  3C3F              cmp al,0x3f
00000117  1400              adc al,0x0
00000119  FEC4              inc ah
0000011B  75F2              jnz 0x10f
0000011D  BAD403            mov dx,0x3d4
00000120  B81300            mov ax,0x13
00000123  EF                out dx,ax
00000124  BA00A0            mov dx,0xa000
00000127  8EC2              mov es,dx
00000129  BEFF01            mov si,0x1ff
0000012C  D906D201          fld dword [0x1d2]
00000130  D806DA01          fadd dword [0x1da]
00000134  D916D201          fst dword [0x1d2]
00000138  D9FE              fsin
0000013A  D80ED601          fmul dword [0x1d6]
0000013E  D806DE01          fadd dword [0x1de]
00000142  DF1C              fistp word [si]
00000144  83C602            add si,byte +0x2
00000147  81FEFF03          cmp si,0x3ff
0000014B  75DF              jnz 0x12c
0000014D  BADA03            mov dx,0x3da
00000150  B408              mov ah,0x8
00000152  E86A00            call word 0x1bf
00000155  BE3C01            mov si,0x13c
00000158  6626C70400000000  mov dword [es:si],0x0
00000160  83EE04            sub si,byte +0x4
00000163  79F3              jns 0x158
00000165  A1CA01            mov ax,[0x1ca]
00000168  0306CE01          add ax,[0x1ce]
0000016C  A3CA01            mov [0x1ca],ax
0000016F  A3CC01            mov [0x1cc],ax
00000172  B98601            mov cx,0x186
00000175  6633DB            xor ebx,ebx
00000178  8A1ECC01          mov bl,[0x1cc]
0000017C  678B2C5DFF010000  mov bp,[dword ebx*2+0x1ff]
00000184  8A1ECD01          mov bl,[0x1cd]
00000188  67032C5DFF010000  add bp,[dword ebx*2+0x1ff]
00000190  6626810201020304  add dword [es:bp+si],0x4030201
00000198  6626814204040302  add dword [es:bp+si+0x4],0x1020304
         -01
000001A1  A1CC01            mov ax,[0x1cc]
000001A4  0306D001          add ax,[0x1d0]
000001A8  A3CC01            mov [0x1cc],ax
000001AB  B401              mov ah,0x1
000001AD  E80F00            call word 0x1bf
000001B0  E2C3              loop 0x175
000001B2  E460              in al,0x60
000001B4  3C01              cmp al,0x1
000001B6  7595              jnz 0x14d
000001B8  FB                sti
000001B9  B80300            mov ax,0x3
000001BC  CD10              int 0x10
000001BE  C3                ret
000001BF  EC                in al,dx
000001C0  22C4              and al,ah
000001C2  74FB              jz 0x1bf
000001C4  EC                in al,dx
000001C5  22C4              and al,ah
000001C7  75FB              jnz 0x1c4
000001C9  C3                ret
000001CA  003C              add [si],bh
000001CC  0000              add [bx+si],al
000001CE  01FD              add bp,di
000001D0  0102              add [bp+si],ax
000001D2  DA0F              fimul dword [bx]
000001D4  C9                leave
000001D5  BC0000            mov sp,0x0
000001D8  9B42              wait inc dx
000001DA  DA0F              fimul dword [bx]
000001DC  C9                leave
000001DD  3C00              cmp al,0x0
000001DF  009B4243          add [bp+di+0x4342],bl
000001E3  6F                outsw
000001E4  646564206279      and [fs:bp+si+0x79],ah
000001EA  20534C            and [bp+di+0x4c],dl
000001ED  49                dec cx
000001EE  47                inc di
000001EF  48                dec ax
000001F0  54                push sp
000001F1  206F6E            and [bx+0x6e],ch
000001F4  205175            and [bx+di+0x75],dl
000001F7  61                popaw
000001F8  53                push bx
000001F9  54                push sp
000001FA  27                daa
000001FB  3938              cmp [bx+si],di
000001FD  2021              and [bx+di],ah
