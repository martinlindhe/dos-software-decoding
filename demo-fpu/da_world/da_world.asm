00000100  BB8F79            mov bx,0x798f
00000103  33C9              xor cx,cx
00000105  BE0002            mov si,0x200
00000108  B8D9FF            mov ax,0xffd9
0000010B  F7EB              imul bx
0000010D  03CA              add cx,dx
0000010F  03D9              add bx,cx
00000111  88BC0003          mov [si+0x300],bh
00000115  4E                dec si
00000116  79F0              jns 0x108
00000118  B83011            mov ax,0x1130
0000011B  B706              mov bh,0x6
0000011D  CD10              int 0x10
0000011F  892EFC02          mov [0x2fc],bp
00000123  8C06FE02          mov [0x2fe],es
00000127  680060            push word 0x6000
0000012A  07                pop es
0000012B  33FF              xor di,di
0000012D  B9FFFF            mov cx,0xffff
00000130  8AC1              mov al,cl
00000132  E83A01            call 0x26f
00000135  E83701            call 0x26f
00000138  92                xchg ax,dx
00000139  8AC5              mov al,ch
0000013B  E83101            call 0x26f
0000013E  03C2              add ax,dx
00000140  AA                stosb
00000141  49                dec cx
00000142  75EC              jnz 0x130
00000144  B81300            mov ax,0x13
00000147  CD10              int 0x10
00000149  680080            push word 0x8000
0000014C  07                pop es
0000014D  680090            push word 0x9000
00000150  0FA9              pop gs
00000152  33FF              xor di,di
00000154  BEF402            mov si,0x2f4
00000157  BB38FF            mov bx,0xff38
0000015A  B9C0FE            mov cx,0xfec0
0000015D  890C              mov [si],cx
0000015F  895C02            mov [si+0x2],bx
00000162  DB06F002          fild dword [0x2f0]
00000166  DF04              fild word [si]
00000168  D8C8              fmul st0
0000016A  DF4402            fild word [si+0x2]
0000016D  D8C8              fmul st0
0000016F  DEC1              faddp st1
00000171  DB5404            fist dword [si+0x4]
00000174  DEE9              fsubp st1
00000176  D9FA              fsqrt
00000178  DF04              fild word [si]
0000017A  E85601            call 0x2d3
0000017D  80FC80            cmp ah,0x80
00000180  7522              jnz 0x1a4
00000182  B002              mov al,0x2
00000184  658805            mov [gs:di],al
00000187  AA                stosb
00000188  668B5404          mov edx,[si+0x4]
0000018C  66B8409C0000      mov eax,0x9c40
00000192  663BD0            cmp edx,eax
00000195  7D17              jnl 0x1ae
00000197  4F                dec di
00000198  662BC2            sub eax,edx
0000019B  66C1E809          shr eax,byte 0x9
0000019F  04F5              add al,0xf5
000001A1  AA                stosb
000001A2  EB0A              jmp short 0x1ae
000001A4  658805            mov [gs:di],al
000001A7  DF4402            fild word [si+0x2]
000001AA  E82601            call 0x2d3
000001AD  AA                stosb
000001AE  DDD8              fstp st0
000001B0  41                inc cx
000001B1  75AA              jnz 0x15d
000001B3  43                inc bx
000001B4  75A4              jnz 0x15a
000001B6  BAC803            mov dx,0x3c8
000001B9  32C0              xor al,al
000001BB  EE                out dx,al
000001BC  42                inc dx
000001BD  32C0              xor al,al
000001BF  EE                out dx,al
000001C0  EE                out dx,al
000001C1  B00A              mov al,0xa
000001C3  EE                out dx,al
000001C4  B17E              mov cl,0x7e
000001C6  32C0              xor al,al
000001C8  EE                out dx,al
000001C9  EE                out dx,al
000001CA  B07E              mov al,0x7e
000001CC  2AC1              sub al,cl
000001CE  D0E8              shr al,1
000001D0  EE                out dx,al
000001D1  E2F3              loop 0x1c6
000001D3  B174              mov cl,0x74
000001D5  B074              mov al,0x74
000001D7  2AC1              sub al,cl
000001D9  D0E8              shr al,1
000001DB  EE                out dx,al
000001DC  B0FF              mov al,0xff
000001DE  EE                out dx,al
000001DF  B028              mov al,0x28
000001E1  EE                out dx,al
000001E2  E2F1              loop 0x1d5
000001E4  B10B              mov cl,0xb
000001E6  B00B              mov al,0xb
000001E8  2AC1              sub al,cl
000001EA  C0E002            shl al,byte 0x2
000001ED  EE                out dx,al
000001EE  EE                out dx,al
000001EF  EE                out dx,al
000001F0  E2F4              loop 0x1e6
000001F2  680070            push word 0x7000
000001F5  07                pop es
000001F6  680080            push word 0x8000
000001F9  1F                pop ds
000001FA  680090            push word 0x9000
000001FD  0FA1              pop fs
000001FF  680060            push word 0x6000
00000202  0FA9              pop gs
00000204  33FF              xor di,di
00000206  66BE78563412      mov esi,0x12345678
0000020C  B900FA            mov cx,0xfa00
0000020F  648B1D            mov bx,[fs:di]
00000212  8B15              mov dx,[di]
00000214  80FB02            cmp bl,0x2
00000217  750D              jnz 0x226
00000219  32C0              xor al,al
0000021B  80FA02            cmp dl,0x2
0000021E  0F84BC00          jz near 0x2de
00000222  8AC2              mov al,dl
00000224  EB07              jmp short 0x22d
00000226  86F3              xchg dh,bl
00000228  03DD              add bx,bp
0000022A  658A07            mov al,[gs:bx]
0000022D  AA                stosb
0000022E  660FAFF6          imul esi,esi
00000232  6646              inc esi
00000234  33F1              xor si,cx
00000236  E2D7              loop 0x20f
00000238  0E                push cs
00000239  1F                pop ds
0000023A  BEB702            mov si,0x2b7
0000023D  E83600            call 0x276
00000240  E83300            call 0x276
00000243  81ED0101          sub bp,0x101
00000247  BADA03            mov dx,0x3da
0000024A  EC                in al,dx
0000024B  A808              test al,0x8
0000024D  74FB              jz 0x24a
0000024F  EC                in al,dx
00000250  A808              test al,0x8
00000252  75FB              jnz 0x24f
00000254  06                push es
00000255  1F                pop ds
00000256  6800A0            push word 0xa000
00000259  07                pop es
0000025A  33FF              xor di,di
0000025C  33F6              xor si,si
0000025E  B9007D            mov cx,0x7d00
00000261  F3A5              rep movsw
00000263  E460              in al,0x60
00000265  FEC8              dec al
00000267  7589              jnz 0x1f2
00000269  B80300            mov ax,0x3
0000026C  CD10              int 0x10
0000026E  C3                ret
0000026F  98                cbw
00000270  96                xchg ax,si
00000271  8A84C003          mov al,[si+0x3c0]
00000275  C3                ret
00000276  AD                lodsw
00000277  97                xchg ax,di
00000278  AC                lodsb
00000279  0AC0              or al,al
0000027B  7439              jz 0x2b6
0000027D  60                pusha
0000027E  98                cbw
0000027F  C1E004            shl ax,byte 0x4
00000282  8B36FC02          mov si,[0x2fc]
00000286  03F0              add si,ax
00000288  1E                push ds
00000289  C51EFC02          lds bx,[0x2fc]
0000028D  B91000            mov cx,0x10
00000290  AC                lodsb
00000291  BB0800            mov bx,0x8
00000294  C0E002            shl al,byte 0x2
00000297  730A              jnc 0x2a3
00000299  BAF0F0            mov dx,0xf0f0
0000029C  268815            mov [es:di],dl
0000029F  26895501          mov [es:di+0x1],dx
000002A3  83C703            add di,byte +0x3
000002A6  4B                dec bx
000002A7  75EB              jnz 0x294
000002A9  81C72801          add di,0x128
000002AD  E2E1              loop 0x290
000002AF  1F                pop ds
000002B0  61                popa
000002B1  83C711            add di,byte +0x11
000002B4  EBC2              jmp short 0x278
000002B6  C3                ret
000002B7  050A54            add ax,0x540a
000002BA  48                dec ax
000002BB  52                push dx
000002BC  4F                dec di
000002BD  42                inc dx
000002BE  207275            and [bp+si+0x75],dh
000002C1  6C                insb
000002C2  657A00            gs jpe 0x2c5
000002C5  852F              test [bx],bp
000002C7  44                inc sp
000002C8  61                popa
000002C9  20576F            and [bx+0x6f],dl
000002CC  726C              jc 0x33a
000002CE  64203D            and [fs:di],bh
000002D1  2900              sub [bx+si],ax
000002D3  DE0EEE02          fimul word [0x2ee]
000002D7  D8F1              fdiv st1
000002D9  DF1C              fistp word [si]
000002DB  8B04              mov ax,[si]
000002DD  C3                ret
000002DE  81FEFF00          cmp si,0xff
000002E2  0F8747FF          ja near 0x22d
000002E6  8BC6              mov ax,si
000002E8  0CF8              or al,0xf8
000002EA  E940FF            jmp 0x22d
000002ED  005000            add [bx+si+0x0],dl
000002F0  048D              add al,0x8d
000002F2  0000              add [bx+si],al
