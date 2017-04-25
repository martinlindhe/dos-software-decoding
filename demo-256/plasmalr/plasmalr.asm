00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B44A              mov ah,0x4a
00000106  B710              mov bh,0x10
00000108  CD21              int 0x21
0000010A  B448              mov ah,0x48
0000010C  CD21              int 0x21
0000010E  8ED8              mov ds,ax
00000110  8EC0              mov es,ax
00000112  49                dec cx
00000113  B000              mov al,0x0
00000115  F3AA              rep stosb
00000117  B506              mov ch,0x6
00000119  E440              in al,0x40
0000011B  8AE0              mov ah,al
0000011D  E440              in al,0x40
0000011F  97                xchg ax,di
00000120  B020              mov al,0x20
00000122  B320              mov bl,0x20
00000124  800104            add byte [bx+di],0x4
00000127  4B                dec bx
00000128  75FA              jnz 0x124
0000012A  81C74001          add di,0x140
0000012E  FEC8              dec al
00000130  75F0              jnz 0x122
00000132  E2E5              loop 0x119
00000134  B10B              mov cl,0xb
00000136  33FF              xor di,di
00000138  8A45FF            mov al,[di-0x1]
0000013B  024501            add al,[di+0x1]
0000013E  8A9D4001          mov bl,[di+0x140]
00000142  03C3              add ax,bx
00000144  8A9DC0FE          mov bl,[di-0x140]
00000148  03C3              add ax,bx
0000014A  C1E802            shr ax,byte 0x2
0000014D  AA                stosb
0000014E  47                inc di
0000014F  47                inc di
00000150  75E6              jnz 0x138
00000152  E2E2              loop 0x136
00000154  6800A0            push word 0xa000
00000157  07                pop es
00000158  8A01              mov al,[bx+di]
0000015A  8BF0              mov si,ax
0000015C  53                push bx
0000015D  8BD9              mov bx,cx
0000015F  8A01              mov al,[bx+di]
00000161  03F0              add si,ax
00000163  8BDA              mov bx,dx
00000165  8A01              mov al,[bx+di]
00000167  03C6              add ax,si
00000169  5B                pop bx
0000016A  D1E8              shr ax,1
0000016C  2C28              sub al,0x28
0000016E  AA                stosb
0000016F  4F                dec di
00000170  47                inc di
00000171  75E5              jnz 0x158
00000173  43                inc bx
00000174  49                dec cx
00000175  81C24001          add dx,0x140
00000179  52                push dx
0000017A  E85900            call word 0x1d6
0000017D  5A                pop dx
0000017E  E460              in al,0x60
00000180  2F                das
00000181  72D5              jc 0x158
00000183  B400              mov ah,0x0
00000185  CD16              int 0x16
00000187  06                push es
00000188  1F                pop ds
00000189  B364              mov bl,0x64
0000018B  BE00FA            mov si,0xfa00
0000018E  B94001            mov cx,0x140
00000191  51                push cx
00000192  33C0              xor ax,ax
00000194  F3AA              rep stosb
00000196  59                pop cx
00000197  8804              mov [si],al
00000199  46                inc si
0000019A  E2FB              loop 0x197
0000019C  81EE8002          sub si,0x280
000001A0  E83300            call word 0x1d6
000001A3  FECB              dec bl
000001A5  75E7              jnz 0x18e
000001A7  BE3F7E            mov si,0x7e3f
000001AA  B150              mov cl,0x50
000001AC  33C0              xor ax,ax
000001AE  AB                stosw
000001AF  8904              mov [si],ax
000001B1  4E                dec si
000001B2  4E                dec si
000001B3  E82000            call word 0x1d6
000001B6  E2F4              loop 0x1ac
000001B8  B31F              mov bl,0x1f
000001BA  881D              mov [di],bl
000001BC  B106              mov cl,0x6
000001BE  E81500            call word 0x1d6
000001C1  E2FB              loop 0x1be
000001C3  4B                dec bx
000001C4  F6C310            test bl,0x10
000001C7  75F1              jnz 0x1ba
000001C9  B003              mov al,0x3
000001CB  CD10              int 0x10
000001CD  B409              mov ah,0x9
000001CF  0E                push cs
000001D0  1F                pop ds
000001D1  BAE401            mov dx,0x1e4
000001D4  CD21              int 0x21
000001D6  BADA03            mov dx,0x3da
000001D9  EC                in al,dx
000001DA  A808              test al,0x8
000001DC  75FB              jnz 0x1d9
000001DE  EC                in al,dx
000001DF  A808              test al,0x8
000001E1  74FB              jz 0x1de
000001E3  C3                ret
000001E4  50                push ax
000001E5  6C                insb
000001E6  61                popaw
000001E7  736D              jnc 0x256
000001E9  41                inc cx
000001EA  6C                insb
000001EB  6C                insb
000001EC  657267            gs jc 0x256
000001EF  7920              jns 0x211
000001F1  3A20              cmp ah,[bx+si]
000001F3  3235              xor dh,[di]
000001F5  366220            bound sp,[ss:bx+si]
000001F8  636F6D            arpl [bx+0x6d],bp
000001FB  706F              jo 0x26c
000001FD  24                db 0x24
