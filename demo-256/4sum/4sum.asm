00000100  B012              mov al,0x12
00000102  CD10              int 0x10

00000104  B7A0              mov bh,0xa0
00000106  8EC3              mov es,bx
00000108  8BFB              mov di,bx
0000010A  B2C0              mov dl,0xc0
0000010C  B94101            mov cx,0x141
0000010F  AC                lodsb
00000110  AA                stosb
00000111  E2FC              loop 0x10f

; registers are the same so far

00000113  B401              mov ah,0x1
00000115  CD16              int 0x16
00000117  7505              jnz 0x11e
00000119  4A                dec dx
0000011A  75F0              jnz 0x10c
0000011C  EBEA              jmp short 0x108
0000011E  33C0              xor ax,ax
00000120  CD16              int 0x16
00000122  B81300            mov ax,0x13
00000125  CD10              int 0x10
00000127  6800A0            push word 0xa000
0000012A  07                pop es
0000012B  B240              mov dl,0x40
0000012D  8BDE              mov bx,si
0000012F  69FB4001          imul di,bx,word 0x140
00000133  03FA              add di,dx
00000135  B91E00            mov cx,0x1e
00000138  26FE05            inc byte [es:di]
0000013B  47                inc di
0000013C  E2FA              loop 0x138
0000013E  8BD8              mov bx,ax
00000140  B401              mov ah,0x1
00000142  CD16              int 0x16
00000144  751E              jnz 0x164
00000146  69C36D4E          imul ax,bx,word 0x4e6d
0000014A  D1E0              shl ax,1
0000014C  156100            adc ax,0x61
0000014F  D1E8              shr ax,1
00000151  F7D8              neg ax
00000153  D1E0              shl ax,1
00000155  25FE7F            and ax,0x7ffe
00000158  D1E8              shr ax,1
0000015A  3C80              cmp al,0x80
0000015C  7202              jc 0x160
0000015E  42                inc dx
0000015F  42                inc dx
00000160  4A                dec dx
00000161  46                inc si
00000162  EBC9              jmp short 0x12d
00000164  33C0              xor ax,ax
00000166  CD16              int 0x16
00000168  6BC003            imul ax,ax,byte +0x3
0000016B  8BCB              mov cx,bx
0000016D  03CD              add cx,bp
0000016F  8BD3              mov dx,bx
00000171  F7DA              neg dx
00000173  03D5              add dx,bp
00000175  83C24B            add dx,byte +0x4b
00000178  85C0              test ax,ax
0000017A  7F07              jg 0x183
0000017C  83C150            add cx,byte +0x50
0000017F  2BC1              sub ax,cx
00000181  EB08              jmp short 0x18b
00000183  83E950            sub cx,byte +0x50
00000186  83C232            add dx,byte +0x32
00000189  03C1              add ax,cx
0000018B  D1E9              shr cx,1
0000018D  D1EA              shr dx,1
0000018F  50                push ax
00000190  8BD9              mov bx,cx
00000192  8BEA              mov bp,dx
00000194  B84001            mov ax,0x140
00000197  F7E2              mul dx
00000199  03C1              add ax,cx
0000019B  2D7800            sub ax,0x78
0000019E  97                xchg ax,di
0000019F  B017              mov al,0x17
000001A1  AA                stosb
000001A2  83EF04            sub di,byte +0x4
000001A5  B014              mov al,0x14
000001A7  AA                stosb
000001A8  B401              mov ah,0x1
000001AA  CD16              int 0x16
000001AC  58                pop ax
000001AD  74B9              jz 0x168
000001AF  33C0              xor ax,ax
000001B1  CD16              int 0x16
000001B3  33DB              xor bx,bx
000001B5  33D2              xor dx,dx
000001B7  33ED              xor bp,bp
000001B9  33C9              xor cx,cx
000001BB  6BC003            imul ax,ax,byte +0x3
000001BE  3D55D5            cmp ax,0xd555
000001C1  7C12              jl 0x1d5
000001C3  B1A0              mov cl,0xa0
000001C5  03E9              add bp,cx
000001C7  3DAB2A            cmp ax,0x2aab
000001CA  7F05              jg 0x1d1
000001CC  40                inc ax
000001CD  03E9              add bp,cx
000001CF  EB04              jmp short 0x1d5
000001D1  81C3C800          add bx,0xc8
000001D5  D1ED              shr bp,1
000001D7  D1EB              shr bx,1
000001D9  50                push ax
000001DA  69FB4001          imul di,bx,word 0x140
000001DE  03FD              add di,bp
000001E0  B009              mov al,0x9
000001E2  AA                stosb
000001E3  83EF04            sub di,byte +0x4
000001E6  B004              mov al,0x4
000001E8  AA                stosb
000001E9  B401              mov ah,0x1
000001EB  CD16              int 0x16
000001ED  58                pop ax
000001EE  74CB              jz 0x1bb
000001F0  B80300            mov ax,0x3
000001F3  CD10              int 0x10
000001F5  C3                ret
