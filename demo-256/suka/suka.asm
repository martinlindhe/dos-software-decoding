00000100  B7FF              mov bh,0xff
00000102  8EE3              mov fs,bx
00000104  B7A0              mov bh,0xa0
00000106  8EC3              mov es,bx
00000108  B013              mov al,0x13
0000010A  CD10              int 0x10
0000010C  8AC1              mov al,cl
0000010E  BAC803            mov dx,0x3c8
00000111  EE                out dx,al
00000112  42                inc dx
00000113  C0E802            shr al,byte 0x2
00000116  B703              mov bh,0x3
00000118  EE                out dx,al
00000119  F6E0              mul al
0000011B  C1E806            shr ax,byte 0x6
0000011E  FECF              dec bh
00000120  75F6              jnz 0x118
00000122  E2E8              loop 0x10c
00000124  66B900FE93FF      mov ecx,0xff93fe00
0000012A  8CC8              mov ax,cs
0000012C  FEC4              inc ah
0000012E  50                push ax
0000012F  1F                pop ds
00000130  BF04FA            mov di,0xfa04
00000133  BD060D            mov bp,0xd06
00000136  E89100            call word 0x1ca
00000139  83C508            add bp,byte +0x8
0000013C  E88B00            call word 0x1ca
0000013F  83C5A8            add bp,byte -0x58
00000142  E88500            call word 0x1ca
00000145  83C5A8            add bp,byte -0x58
00000148  E87F00            call word 0x1ca
0000014B  81EF04FA          sub di,0xfa04
0000014F  C1EF02            shr di,byte 0x2
00000152  893E00FA          mov [0xfa00],di
00000156  C70602FA4000      mov word [0xfa02],0x40
0000015C  BEFFF9            mov si,0xf9ff
0000015F  C60400            mov byte [si],0x0
00000162  4E                dec si
00000163  75FA              jnz 0x15f
00000165  8B0E00FA          mov cx,[0xfa00]
00000169  BE04FA            mov si,0xfa04
0000016C  AD                lodsw
0000016D  99                cwd
0000016E  F73E02FA          idiv word [0xfa02]
00000172  05A000            add ax,0xa0
00000175  3D4001            cmp ax,0x140
00000178  8BF8              mov di,ax
0000017A  AD                lodsw
0000017B  731D              jnc 0x19a
0000017D  99                cwd
0000017E  F73E02FA          idiv word [0xfa02]
00000182  056400            add ax,0x64
00000185  3DC700            cmp ax,0xc7
00000188  7310              jnc 0x19a
0000018A  69C04001          imul ax,ax,word 0x140
0000018E  03F8              add di,ax
00000190  C705FFFF          mov word [di],0xffff
00000194  C7854001FFFF      mov word [di+0x140],0xffff
0000019A  E2D0              loop 0x16c
0000019C  33F6              xor si,si
0000019E  8A04              mov al,[si]
000001A0  260204            add al,[es:si]
000001A3  D0D8              rcr al,1
000001A5  268804            mov [es:si],al
000001A8  46                inc si
000001A9  81FE00FA          cmp si,0xfa00
000001AD  75EF              jnz 0x19e
000001AF  FE0E02FA          dec byte [0xfa02]
000001B3  74A1              jz 0x156
000001B5  E460              in al,0x60
000001B7  FEC8              dec al
000001B9  75A1              jnz 0x15c
000001BB  B80300            mov ax,0x3
000001BE  CD10              int 0x10
000001C0  0E                push cs
000001C1  1F                pop ds
000001C2  BAF601            mov dx,0x1f6
000001C5  B409              mov ah,0x9
000001C7  CD21              int 0x21
000001C9  C3                ret
000001CA  B208              mov dl,0x8
000001CC  648A6600          mov ah,[fs:bp+0x0]
000001D0  B008              mov al,0x8
000001D2  D0E4              shl ah,1
000001D4  7306              jnc 0x1dc
000001D6  66890D            mov [di],ecx
000001D9  83C704            add di,byte +0x4
000001DC  83C120            add cx,byte +0x20
000001DF  48                dec ax
000001E0  75F0              jnz 0x1d2
000001E2  6681C100FF1F00    add ecx,0x1fff00
000001E9  45                inc bp
000001EA  FECA              dec dl
000001EC  75DE              jnz 0x1cc
000001EE  6681C1000100FF    add ecx,0xff000100
000001F5  C3                ret
000001F6  53                push bx
000001F7  754B              jnz 0x244
000001F9  61                popaw
000001FA  46                inc si
000001FB  6F                outsw
000001FC  52                push dx
000001FD  7445              jz 0x244
000001FF  24                db 0x24
