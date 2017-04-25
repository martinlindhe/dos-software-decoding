00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B44A              mov ah,0x4a
00000106  B710              mov bh,0x10
00000108  CD21              int 0x21
0000010A  B448              mov ah,0x48
0000010C  CD21              int 0x21
0000010E  8EC0              mov es,ax
00000110  BD0001            mov bp,0x100
00000113  8D4680            lea ax,[bp-0x80]
00000116  F6E8              imul al
00000118  92                xchg ax,dx
00000119  8D4480            lea ax,[si-0x80]
0000011C  F6E8              imul al
0000011E  03C2              add ax,dx
00000120  8907              mov [bx],ax
00000122  DF07              fild word [bx]
00000124  D9FA              fsqrt
00000126  DF1F              fistp word [bx]
00000128  8B07              mov ax,[bx]
0000012A  2C7D              sub al,0x7d
0000012C  7201              jc 0x12f
0000012E  D6                salc
0000012F  AA                stosb
00000130  4D                dec bp
00000131  75E0              jnz 0x113
00000133  4E                dec si
00000134  75DA              jnz 0x110
00000136  B448              mov ah,0x48
00000138  CD21              int 0x21
0000013A  8ED8              mov ds,ax
0000013C  BFC0F9            mov di,0xf9c0
0000013F  03F1              add si,cx
00000141  D3C6              rol si,cl
00000143  D1C9              ror cx,1
00000145  81C13412          add cx,0x1234
00000149  8D02              lea ax,[bp+si]
0000014B  C1F80C            sar ax,byte 0xc
0000014E  40                inc ax
0000014F  8A15              mov dl,[di]
00000151  47                inc di
00000152  8A1D              mov bl,[di]
00000154  03DA              add bx,dx
00000156  D1EB              shr bx,1
00000158  03C3              add ax,bx
0000015A  88853F01          mov [di+0x13f],al
0000015E  4D                dec bp
0000015F  75DE              jnz 0x13f
00000161  BAC803            mov dx,0x3c8
00000164  95                xchg ax,bp
00000165  EE                out dx,al
00000166  42                inc dx
00000167  B106              mov cl,0x6
00000169  EE                out dx,al
0000016A  E2FD              loop 0x169
0000016C  FEC8              dec al
0000016E  75F7              jnz 0x167
00000170  B4A0              mov ah,0xa0
00000172  8EE0              mov fs,ax
00000174  1E                push ds
00000175  0E                push cs
00000176  1F                pop ds
00000177  E86D00            call word 0x1e7
0000017A  D9FF              fcos
0000017C  DE0EF401          fimul word [0x1f4]
00000180  DF1D              fistp word [di]
00000182  8B05              mov ax,[di]
00000184  2D5A00            sub ax,0x5a
00000187  E85D00            call word 0x1e7
0000018A  D9FE              fsin
0000018C  DE0EF401          fimul word [0x1f4]
00000190  DF1D              fistp word [di]
00000192  8B2D              mov bp,[di]
00000194  81ED9600          sub bp,0x96
00000198  FF06F601          inc word [0x1f6]
0000019C  1F                pop ds
0000019D  BF7FF7            mov di,0xf77f
000001A0  B1C3              mov cl,0xc3
000001A2  BE4001            mov si,0x140
000001A5  8A5D01            mov bl,[di+0x1]
000001A8  2A5DFF            sub bl,[di-0x1]
000001AB  1AFF              sbb bh,bh
000001AD  D1E3              shl bx,1
000001AF  03DE              add bx,si
000001B1  2BD8              sub bx,ax
000001B3  8A954001          mov dl,[di+0x140]
000001B7  2A95C0FE          sub dl,[di-0x140]
000001BB  1AF6              sbb dh,dh
000001BD  D1E2              shl dx,1
000001BF  03D1              add dx,cx
000001C1  2BD5              sub dx,bp
000001C3  7C10              jl 0x1d5
000001C5  D1EB              shr bx,1
000001C7  D1EA              shr dx,1
000001C9  0AFF              or bh,bh
000001CB  7508              jnz 0x1d5
000001CD  8AFA              mov bh,dl
000001CF  268A1F            mov bl,[es:bx]
000001D2  64881D            mov [fs:di],bl
000001D5  4F                dec di
000001D6  4E                dec si
000001D7  75CC              jnz 0x1a5
000001D9  E2C7              loop 0x1a2
000001DB  B401              mov ah,0x1
000001DD  CD16              int 0x16
000001DF  7493              jz 0x174
000001E1  B80300            mov ax,0x3
000001E4  CD10              int 0x10
000001E6  C3                ret
000001E7  D9EB              fldpi
000001E9  DE36F201          fidiv word [0x1f2]
000001ED  DE0EF601          fimul word [0x1f6]
000001F1  C3                ret
000001F2  B400              mov ah,0x0
000001F4  7800              js 0x1f6
000001F6  0E                push cs
000001F7  01                db 0x01
