00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  8AC1              mov al,cl
00000106  BAC803            mov dx,0x3c8
00000109  EE                out dx,al
0000010A  42         loop2: inc dx
0000010B  C0E802            shr al,byte 0x2
0000010E  B703              mov bh,0x3
00000110  EE         loop1: out dx,al
00000111  F6E0              mul al
00000113  C1E806            shr ax,byte 0x6
00000116  FECF              dec bh
00000118  75F6              jnz 0x110   ; loop1
0000011A  E2E8              loop 0x104  ; loop2
0000011C  8CD8              mov ax,ds
0000011E  80C440            add ah,0x40
00000121  8EC0              mov es,ax
00000123  49                dec cx
00000124  F3AA              rep stosb       ; data copy
00000126  B02A              mov al,0x2a
00000128  B3FF              mov bl,0xff
0000012A  AA         loop3: stosb
0000012B  81C7631D          add di,0x1d63
0000012F  4B                dec bx
00000130  75F8              jnz 0x12a      ; loop3
00000132  B003              mov al,0x3      xxx never seen!?
00000134  CD33              int 0x33      ; XXX ah is not cleared, leading to invalid int.. ?!

00000136  D1E9              shr cx,1
00000138  890E0C02          mov [0x20c],cx
0000013C  89160E02          mov [0x20e],dx
00000140  8CD8              mov ax,ds
00000142  80C440            add ah,0x40
00000145  8EC0              mov es,ax
00000147  B800A0            mov ax,0xa000
0000014A  8EE0              mov fs,ax
0000014C  BF4101            mov di,0x141
0000014F  B80100            mov ax,0x1
00000152  2B060E02          sub ax,[0x20e]
00000156  A30A02            mov [0x20a],ax
00000159  C7060402C600      mov word [0x204],0xc6
0000015F  B80100            mov ax,0x1
00000162  2B060C02          sub ax,[0x20c]
00000166  A30802            mov [0x208],ax
00000169  C70606023E01      mov word [0x206],0x13e
0000016F  32FF              xor bh,bh
00000171  32E4              xor ah,ah
00000173  268A4501          mov al,[es:di+0x1]
00000177  268A5DFF          mov bl,[es:di-0x1]
0000017B  2BC3              sub ax,bx
0000017D  A30002            mov [0x200],ax
00000180  32E4              xor ah,ah
00000182  268A854001        mov al,[es:di+0x140]
00000187  268A9DC0FE        mov bl,[es:di-0x140]
0000018C  2BC3              sub ax,bx
0000018E  A30202            mov [0x202],ax
00000191  FF060802          inc word [0x208]
00000195  A10002            mov ax,[0x200]
00000198  2B060802          sub ax,[0x208]
0000019C  99                cwd
0000019D  33C2              xor ax,dx
0000019F  2BC2              sub ax,dx
000001A1  BB8000            mov bx,0x80
000001A4  2BD8              sub bx,ax
000001A6  0BDB              or bx,bx
000001A8  7F04              jg 0x1ae
000001AA  90                nop
000001AB  90                nop
000001AC  33DB              xor bx,bx

000001AE  A10202            mov ax,[0x202]
000001B1  2B060A02          sub ax,[0x20a]
000001B5  99                cwd
000001B6  33C2              xor ax,dx
000001B8  2BC2              sub ax,dx
000001BA  B98000            mov cx,0x80
000001BD  2BC8              sub cx,ax
000001BF  0BC9              or cx,cx
000001C1  7F04              jg 0x1c7

000001C3  90                nop
000001C4  90                nop
000001C5  33C9              xor cx,cx
000001C7  8BC3              mov ax,bx
000001C9  F7E1              mul cx
000001CB  C1E806            shr ax,byte 0x6
000001CE  0AE4              or ah,ah
000001D0  7405              jz 0x1d7
000001D2  90                nop
000001D3  90                nop
000001D4  B8FF00            mov ax,0xff
000001D7  648805            mov [fs:di],al
000001DA  47                inc di
000001DB  FF0E0602          dec word [0x206]
000001DF  758E              jnz 0x16f

000001E1  FF060A02          inc word [0x20a]
000001E5  83C702            add di,byte +0x2
000001E8  FF0E0402          dec word [0x204]
000001EC  0F856FFF          jnz word 0x15f
000001F0  E460              in al,0x60
000001F2  FEC8              dec al
000001F4  0F853AFF          jnz word 0x132
000001F8  B003              mov al,0x3
000001FA  CD10              int 0x10
000001FC  CD20              int 0x20

data:
000001FE  44                inc sp
000001FF  4B                dec bx
