00000100  BEE301            mov si,0x1e3
00000103  8CD8              mov ax,ds
00000105  050010            add ax,0x1000
00000108  8EC0              mov es,ax
0000010A  8EE8              mov gs,ax
0000010C  33C0              xor ax,ax
0000010E  BD0010            mov bp,0x1000
00000111  D9EE              fldz
00000113  B90028            mov cx,0x2800
00000116  DDD1              fst st1
00000118  D9FE              fsin
0000011A  DE4C0C            fimul word [si+0xc]
0000011D  FF4C0C            dec word [si+0xc]
00000120  DF5600            fist word [bp+0x0]
00000123  D9C9              fxch st1
00000125  D84408            fadd dword [si+0x8]
00000128  45                inc bp
00000129  45                inc bp
0000012A  E2EA              loop 0x116
0000012C  B013              mov al,0x13
0000012E  CD10              int 0x10
00000130  BAC803            mov dx,0x3c8
00000133  33C0              xor ax,ax
00000135  EE                out dx,al
00000136  42                inc dx
00000137  B1C0              mov cl,0xc0
00000139  3401              xor al,0x1
0000013B  EE                out dx,al
0000013C  40                inc ax
0000013D  E2FA              loop 0x139
0000013F  DBE3              fninit
00000141  D94404            fld dword [si+0x4]
00000144  DF04              fild word [si]
00000146  DF04              fild word [si]
00000148  D9C1              fld st1
0000014A  D9C1              fld st1
0000014C  B110              mov cl,0x10
0000014E  D9C0              fld st0
00000150  D8C8              fmul st0
00000152  DE5402            ficom word [si+0x2]
00000155  9BDFE0            fstsw ax
00000158  D9C9              fxch st1
0000015A  D8CA              fmul st2
0000015C  D9CA              fxch st2
0000015E  D8C8              fmul st0
00000160  DEE9              fsubp st1
00000162  9E                sahf
00000163  7702              ja 0x167
00000165  E2E7              loop 0x14e
00000167  8AC1              mov al,cl
00000169  AA                stosb
0000016A  DDD8              fstp st0
0000016C  DDD8              fstp st0
0000016E  D8C2              fadd st2
00000170  FEC3              inc bl
00000172  75D4              jnz 0x148
00000174  DDD8              fstp st0
00000176  D8C1              fadd st1
00000178  FEC7              inc bh
0000017A  75CA              jnz 0x146
0000017C  6800A0            push word 0xa000
0000017F  07                pop es
00000180  BADA03            mov dx,0x3da
00000183  EC                in al,dx
00000184  A808              test al,0x8
00000186  74FB              jz 0x183
00000188  8B5C0E            mov bx,[si+0xe]
0000018B  81E3FF3F          and bx,0x3fff
0000018F  60                pushaw
00000190  8BAF0010          mov bp,[bx+0x1000]
00000194  8BB70018          mov si,[bx+0x1800]
00000198  C1FD02            sar bp,byte 0x2
0000019B  C1FE02            sar si,byte 0x2
0000019E  8BD6              mov dx,si
000001A0  8BDD              mov bx,bp
000001A2  8AF2              mov dh,dl
000001A4  8AFB              mov bh,bl
000001A6  33FF              xor di,di
000001A8  B9C800            mov cx,0xc8
000001AB  60                pushaw
000001AC  B94001            mov cx,0x140
000001AF  53                push bx
000001B0  8ADE              mov bl,dh
000001B2  658A07            mov al,[gs:bx]
000001B5  340F              xor al,0xf
000001B7  AA                stosb
000001B8  5B                pop bx
000001B9  03D5              add dx,bp
000001BB  03DE              add bx,si
000001BD  E2F0              loop 0x1af
000001BF  61                popaw
000001C0  81C74001          add di,0x140
000001C4  03D6              add dx,si
000001C6  2BDD              sub bx,bp
000001C8  E2E1              loop 0x1ab
000001CA  61                popaw
000001CB  83440E06          add word [si+0xe],byte +0x6
000001CF  B401              mov ah,0x1
000001D1  CD16              int 0x16
000001D3  74AB              jz 0x180
000001D5  B80300            mov ax,0x3
000001D8  CD10              int 0x10
000001DA  BAF501            mov dx,0x1f5
000001DD  B409              mov ah,0x9
000001DF  CD21              int 0x21
000001E1  CD20              int 0x20
000001E3  FC                cld
000001E4  FF00              inc word [bx+si]
000001E6  0200              add al,[bx+si]
000001E8  0000              add [bx+si],al
000001EA  3DDB0F            cmp ax,0xfdb
000001ED  C9                leave
000001EE  3A00              cmp al,[bx+si]
000001F0  1000              adc [bx+si],al
000001F2  0000              add [bx+si],al
000001F4  004861            add [bx+si+0x61],cl
000001F7  7070              jo 0x269
000001F9  7920              jns 0x21b
000001FB  58                pop ax
000001FC  4D                dec bp
000001FD  41                inc cx
000001FE  53                push bx
000001FF  24                db 0x24
