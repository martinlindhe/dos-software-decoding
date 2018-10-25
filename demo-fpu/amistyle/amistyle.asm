00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8CC8              mov ax,cs
00000106  0106D901          add [0x1d9],ax
0000010A  BAC803            mov dx,0x3c8
0000010D  33C0              xor ax,ax
0000010F  EE                out dx,al
00000110  42                inc dx
00000111  BEE801            mov si,0x1e8
00000114  B93000            mov cx,0x30
00000117  80F401            xor ah,0x1
0000011A  7401              jz 0x11d
0000011C  AC                lodsb
0000011D  EE                out dx,al
0000011E  C0C004            rol al,byte 0x4
00000121  E2F4              loop 0x117
00000123  D9EE              fldz
00000125  B90005            mov cx,0x500
00000128  D9C0              fld st0
0000012A  D9FF              fcos
0000012C  D80EE001          fmul dword [0x1e0]
00000130  DB1C              fistp dword [si]
00000132  D806E401          fadd dword [0x1e4]
00000136  83C604            add si,byte +0x4
00000139  E2ED              loop 0x128
0000013B  DDC0              ffree st0
0000013D  66BDFC0FFC0F      mov ebp,0xffc0ffc
00000143  8E06D901          mov es,[0x1d9]
00000147  33FF              xor di,di
00000149  33C0              xor ax,ax
0000014B  B90080            mov cx,0x8000
0000014E  F3AB              rep stosw
00000150  8B3E0016          mov di,[0x1600]
00000154  8B1E0216          mov bx,[0x1602]
00000158  66810600160C000C  add dword [0x1600],0xc000c
         -00
00000161  66212E0016        and [0x1600],ebp
00000166  B96400            mov cx,0x64
00000169  8BB70006          mov si,[bx+0x600]
0000016D  69F64001          imul si,si,word 0x140
00000171  03B50006          add si,[di+0x600]
00000175  26C784605E0106    mov word [es:si+0x5e60],0x601
0000017C  26C784A05F0504    mov word [es:si+0x5fa0],0x405
00000183  8B36DE01          mov si,[0x1de]
00000187  AD                lodsw
00000188  3304              xor ax,[si]
0000018A  32E4              xor ah,ah
0000018C  2BF8              sub di,ax
0000018E  23FD              and di,bp
00000190  AD                lodsw
00000191  3304              xor ax,[si]
00000193  32E4              xor ah,ah
00000195  2BD8              sub bx,ax
00000197  23DD              and bx,bp
00000199  E2CE              loop 0x169
0000019B  FF06DD01          inc word [0x1dd]
0000019F  BADA03            mov dx,0x3da
000001A2  EC                in al,dx
000001A3  A808              test al,0x8
000001A5  74FB              jz 0x1a2
000001A7  1E                push ds
000001A8  06                push es
000001A9  8E06DB01          mov es,[0x1db]
000001AD  1F                pop ds
000001AE  33F6              xor si,si
000001B0  33FF              xor di,di
000001B2  B9C05D            mov cx,0x5dc0
000001B5  F3A5              rep movsw
000001B7  BA3200            mov dx,0x32
000001BA  81EEC003          sub si,0x3c0
000001BE  B94001            mov cx,0x140
000001C1  AC                lodsb
000001C2  0408              add al,0x8
000001C4  AA                stosb
000001C5  E2FA              loop 0x1c1
000001C7  4A                dec dx
000001C8  75F0              jnz 0x1ba
000001CA  1F                pop ds
000001CB  B401              mov ah,0x1
000001CD  CD16              int 0x16
000001CF  0F8470FF          jz word 0x143
000001D3  B80300            mov ax,0x3
000001D6  CD10              int 0x10
000001D8  C3                ret
000001D9  0010              add [bx+si],dl
000001DB  00A00000          add [bx+si+0x0],ah
000001DF  0100              add [bx+si],ax
000001E1  009042DB          add [bx+si-0x24be],dl
000001E5  0F                db 0x0f
000001E6  C9                leave
000001E7  3B00              cmp ax,[bx+si]
000001E9  4B                dec bx
000001EA  BBCC49            mov bx,0x49cc
000001ED  15DD5A            adc ax,0x5add
000001F0  26EE              es out dx,al
000001F2  6B37C0            imul si,[bx],byte -0x40
000001F5  4F                dec di
000001F6  FF8D55E1          dec word [di-0x1eab]
000001FA  9E                sahf
000001FB  66F2AF            repne scasd
000001FE  77FF              ja 0x1ff
