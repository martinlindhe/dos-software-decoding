00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  B409              mov ah,0x9
00000107  BAEC01            mov dx,0x1ec
0000010A  CD21              int 0x21
0000010C  B93200            mov cx,0x32
0000010F  F4                hlt
00000110  E2FD              loop 0x10f
00000112  8CC8              mov ax,cs
00000114  050010            add ax,0x1000
00000117  8EE0              mov fs,ax
00000119  6800A0            push word 0xa000
0000011C  07                pop es
0000011D  32C0              xor al,al
0000011F  BAC803            mov dx,0x3c8
00000122  EE                out dx,al
00000123  42                inc dx
00000124  32DB              xor bl,bl
00000126  8AC3              mov al,bl
00000128  C0E802            shr al,byte 0x2
0000012B  EE                out dx,al
0000012C  EE                out dx,al
0000012D  EE                out dx,al
0000012E  FEC3              inc bl
00000130  75F4              jnz 0x126
00000132  0E                push cs
00000133  07                pop es
00000134  BF0012            mov di,0x1200
00000137  B1A0              mov cl,0xa0
00000139  BBF505            mov bx,0x5f5
0000013C  33D2              xor dx,dx
0000013E  8BC2              mov ax,dx
00000140  C1F80B            sar ax,byte 0xb
00000143  2BD8              sub bx,ax
00000145  C1E002            shl ax,byte 0x2
00000148  2BD8              sub bx,ax
0000014A  03D3              add dx,bx
0000014C  8AC6              mov al,dh
0000014E  AA                stosb
0000014F  8BC3              mov ax,bx
00000151  C1F809            sar ax,byte 0x9
00000154  02C6              add al,dh
00000156  AA                stosb
00000157  FEC9              dec cl
00000159  75E3              jnz 0x13e
0000015B  6800A0            push word 0xa000
0000015E  07                pop es
0000015F  B712              mov bh,0x12
00000161  FEC3              inc bl
00000163  BEE813            mov si,0x13e8
00000166  BF2100            mov di,0x21
00000169  B27F              mov dl,0x7f
0000016B  8AC2              mov al,dl
0000016D  F62F              imul byte [bx]
0000016F  D1E0              shl ax,1
00000171  8ACC              mov cl,ah
00000173  8AC2              mov al,dl
00000175  F66F40            imul byte [bx+0x40]
00000178  03C0              add ax,ax
0000017A  8AEC              mov ch,ah
0000017C  890C              mov [si],cx
0000017E  46                inc si
0000017F  46                inc si
00000180  FECA              dec dl
00000182  71E7              jno 0x16b
00000184  B664              mov dh,0x64
00000186  B27F              mov dl,0x7f
00000188  33C9              xor cx,cx
0000018A  BEE813            mov si,0x13e8
0000018D  8AC6              mov al,dh
0000018F  F62F              imul byte [bx]
00000191  03C0              add ax,ax
00000193  02EC              add ch,ah
00000195  8AC6              mov al,dh
00000197  F66F40            imul byte [bx+0x40]
0000019A  03C0              add ax,ax
0000019C  2ACC              sub cl,ah
0000019E  51                push cx
0000019F  52                push dx
000001A0  AD                lodsw
000001A1  03C8              add cx,ax
000001A3  B8FF00            mov ax,0xff
000001A6  8BD5              mov dx,bp
000001A8  2C07              sub al,0x7
000001AA  2BD1              sub dx,cx
000001AC  81C10A0A          add cx,0xa0a
000001B0  F7C28080          test dx,0x8080
000001B4  75F2              jnz 0x1a8
000001B6  8ACA              mov cl,dl
000001B8  0ACE              or cl,dh
000001BA  D0D9              rcr cl,1
000001BC  53                push bx
000001BD  8AD9              mov bl,cl
000001BF  8A1F              mov bl,[bx]
000001C1  C0E302            shl bl,byte 0x2
000001C4  02C3              add al,bl
000001C6  5B                pop bx
000001C7  5A                pop dx
000001C8  59                pop cx
000001C9  AA                stosb
000001CA  FECA              dec dl
000001CC  71D0              jno 0x19e
000001CE  83C740            add di,byte +0x40
000001D1  FECE              dec dh
000001D3  80FE9C            cmp dh,0x9c
000001D6  75B0              jnz 0x188
000001D8  81C50906          add bp,0x609
000001DC  2EFF0E0801        dec word [cs:0x108]
000001E1  0F857AFF          jnz word 0x15f
000001E5  B80300            mov ax,0x3
000001E8  CD10              int 0x10
000001EA  CD20              int 0x20
000001EC  4F                dec di
000001ED  7074              jo 0x263
000001EF  696D697A65        imul bp,[di+0x69],word 0x657a
000001F4  64206279          and [fs:bp+si+0x79],ah
000001F8  205473            and [si+0x73],dl
000001FB  6321              arpl [bx+di],sp
000001FD  24                db 0x24
