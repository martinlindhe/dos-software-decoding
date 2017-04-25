00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  32C0              xor al,al
00000107  BAC803            mov dx,0x3c8
0000010A  EE                out dx,al
0000010B  42                inc dx
0000010C  EE                out dx,al
0000010D  EE                out dx,al
0000010E  EE                out dx,al
0000010F  FEC0              inc al
00000111  75F9              jnz 0x10c
00000113  6800A0            push word 0xa000
00000116  07                pop es
00000117  33ED              xor bp,bp
00000119  892E0202          mov [0x202],bp
0000011D  8BF5              mov si,bp
0000011F  DF060202          fild word [0x202]
00000123  D80EF001          fmul dword [0x1f0]
00000127  D9C0              fld st0
00000129  D9FE              fsin
0000012B  D80EF801          fmul dword [0x1f8]
0000012F  DF1E0002          fistp word [0x200]
00000133  A10002            mov ax,[0x200]
00000136  D9FF              fcos
00000138  D80EFC01          fmul dword [0x1fc]
0000013C  DF1E0002          fistp word [0x200]
00000140  8B1E0002          mov bx,[0x200]
00000144  8BD3              mov dx,bx
00000146  03D3              add dx,bx
00000148  DF060202          fild word [0x202]
0000014C  D80EF401          fmul dword [0x1f4]
00000150  D9FE              fsin
00000152  D80EFC01          fmul dword [0x1fc]
00000156  DF1E0002          fistp word [0x200]
0000015A  031E0002          add bx,[0x200]
0000015E  2B160002          sub dx,[0x200]
00000162  C1FA04            sar dx,byte 0x4
00000165  83C20C            add dx,byte +0xc
00000168  059600            add ax,0x96
0000016B  83C364            add bx,byte +0x64
0000016E  E82900            call word 0x19a
00000171  832E020208        sub word [0x202],byte +0x8
00000176  83EE08            sub si,byte +0x8
00000179  79A4              jns 0x11f
0000017B  BA00FA            mov dx,0xfa00
0000017E  33FF              xor di,di
00000180  268A05            mov al,[es:di]
00000183  2C04              sub al,0x4
00000185  7902              jns 0x189
00000187  32C0              xor al,al
00000189  AA                stosb
0000018A  4A                dec dx
0000018B  75F3              jnz 0x180
0000018D  45                inc bp
0000018E  B401              mov ah,0x1
00000190  CD16              int 0x16
00000192  7485              jz 0x119
00000194  B80300            mov ax,0x3
00000197  CD10              int 0x10
00000199  C3                ret
0000019A  02E3              add ah,bl
0000019C  C1E306            shl bx,byte 0x6
0000019F  03C3              add ax,bx
000001A1  8BF8              mov di,ax
000001A3  B80001            mov ax,0x100
000001A6  F6F2              div dl
000001A8  8AE8              mov ch,al
000001AA  B80001            mov ax,0x100
000001AD  F6F5              div ch
000001AF  32F6              xor dh,dh
000001B1  8AD0              mov dl,al
000001B3  8AF8              mov bh,al
000001B5  8ADA              mov bl,dl
000001B7  8AC3              mov al,bl
000001B9  F6E5              mul ch
000001BB  3480              xor al,0x80
000001BD  F6E8              imul al
000001BF  8ACC              mov cl,ah
000001C1  8AC7              mov al,bh
000001C3  F6E5              mul ch
000001C5  3480              xor al,0x80
000001C7  F6E8              imul al
000001C9  02CC              add cl,ah
000001CB  B018              mov al,0x18
000001CD  02C2              add al,dl
000001CF  02C2              add al,dl
000001D1  2AC1              sub al,cl
000001D3  7302              jnc 0x1d7
000001D5  32C0              xor al,al
000001D7  263805            cmp [es:di],al
000001DA  7703              ja 0x1df
000001DC  268805            mov [es:di],al
000001DF  47                inc di
000001E0  FECB              dec bl
000001E2  75D3              jnz 0x1b7
000001E4  81C74001          add di,0x140
000001E8  2BFA              sub di,dx
000001EA  FECF              dec bh
000001EC  75C7              jnz 0x1b5
000001EE  C3                ret
000001EF  90                nop
000001F0  42                inc dx
000001F1  60                pushaw
000001F2  653C8F            gs cmp al,0x8f
000001F5  C2753D            ret 0x3d75
000001F8  0000              add [bx+si],al
000001FA  C0420000          rol byte [bp+si+0x0],byte 0x0
000001FE  00                db 0x00
000001FF  42                inc dx
