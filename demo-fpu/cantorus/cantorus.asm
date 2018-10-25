00000100  BD8502            mov bp,0x285
00000103  B013              mov al,0x13
00000105  CD10              int 0x10
00000107  BA3103            mov dx,0x331
0000010A  B03F              mov al,0x3f
0000010C  EE                out dx,al
0000010D  B001              mov al,0x1
0000010F  BAC803            mov dx,0x3c8
00000112  EE                out dx,al
00000113  42                inc dx
00000114  91                xchg ax,cx
00000115  EE                out dx,al
00000116  91                xchg ax,cx
00000117  EE                out dx,al
00000118  93                xchg ax,bx
00000119  EE                out dx,al
0000011A  93                xchg ax,bx
0000011B  FEC0              inc al
0000011D  75F5              jnz 0x114
0000011F  E83401            call 0x256
00000122  31C9              xor cx,cx
00000124  51                push cx
00000125  0E                push cs
00000126  07                pop es
00000127  89EF              mov di,bp
00000129  B900FA            mov cx,0xfa00
0000012C  31C0              xor ax,ax
0000012E  F3AA              rep stosb
00000130  6800A0            push word 0xa000
00000133  07                pop es
00000134  DF06FCFF          fild word [0xfffc]
00000138  DE366302          fidiv word [0x263]
0000013C  D9FF              fcos
0000013E  D9066502          fld dword [0x265]
00000142  DEC9              fmulp st1
00000144  D9066902          fld dword [0x269]
00000148  DEC1              faddp st1
0000014A  D91E8102          fstp dword [0x281]
0000014E  31C0              xor ax,ax
00000150  CD1A              int 0x1a
00000152  8B0E7B02          mov cx,[0x27b]
00000156  83C103            add cx,byte +0x3
00000159  39CA              cmp dx,cx
0000015B  7D06              jnl 0x163
0000015D  8B0E7502          mov cx,[0x275]
00000161  EB43              jmp short 0x1a6
00000163  E8F000            call 0x256
00000166  B91000            mov cx,0x10
00000169  B078              mov al,0x78
0000016B  BA0300            mov dx,0x3
0000016E  D3C2              rol dx,cl
00000170  83E207            and dx,byte +0x7
00000173  0FA3D0            bt ax,dx
00000176  D1DB              rcr bx,1
00000178  E2F1              loop 0x16b
0000017A  D1C3              rol bx,1
0000017C  891E6C01          mov [0x16c],bx
00000180  83E307            and bx,byte +0x7
00000183  0FBDCB            bsr cx,bx
00000186  7413              jz 0x19b
00000188  BA3003            mov dx,0x330
0000018B  B099              mov al,0x99
0000018D  EE                out dx,al
0000018E  B024              mov al,0x24
00000190  00C8              add al,cl
00000192  EE                out dx,al
00000193  B07F              mov al,0x7f
00000195  EE                out dx,al
00000196  83C103            add cx,byte +0x3
00000199  EB07              jmp short 0x1a2
0000019B  B90100            mov cx,0x1
0000019E  FF0E7702          dec word [0x277]
000001A2  890E7502          mov [0x275],cx
000001A6  51                push cx
000001A7  890E7902          mov [0x279],cx
000001AB  DBE3              fninit
000001AD  D9068102          fld dword [0x281]
000001B1  D9FB              fsincos
000001B3  D9066D02          fld dword [0x26d]
000001B7  DE0E7502          fimul word [0x275]
000001BB  D9067102          fld dword [0x271]
000001BF  DEC1              faddp st1
000001C1  DE0E7902          fimul word [0x279]
000001C5  D9C0              fld st0
000001C7  B9E803            mov cx,0x3e8
000001CA  88C8              mov al,cl
000001CC  51                push cx
000001CD  D9C0              fld st0
000001CF  D8C9              fmul st1
000001D1  DEE2              fsubrp st2
000001D3  D9C1              fld st1
000001D5  D8CB              fmul st3
000001D7  D9C1              fld st1
000001D9  D8CD              fmul st5
000001DB  DEE1              fsubrp st1
000001DD  D9C0              fld st0
000001DF  DE0E5F02          fimul word [0x25f]
000001E3  DE065F02          fiadd word [0x25f]
000001E7  DF1E7D02          fistp word [0x27d]
000001EB  D9CA              fxch st2
000001ED  D8CC              fmul st4
000001EF  D9C9              fxch st1
000001F1  D8CB              fmul st3
000001F3  DEC1              faddp st1
000001F5  D9C0              fld st0
000001F7  DE0E6102          fimul word [0x261]
000001FB  DE066102          fiadd word [0x261]
000001FF  DF1E7F02          fistp word [0x27f]
00000203  8B3E7F02          mov di,[0x27f]
00000207  69FF4001          imul di,di,word 0x140
0000020B  033E7D02          add di,[0x27d]
0000020F  01EF              add di,bp
00000211  BBF66F            mov bx,0x6ff6
00000214  B90400            mov cx,0x4
00000217  BA0400            mov dx,0x4
0000021A  D1C3              rol bx,1
0000021C  7302              jnc 0x220
0000021E  8805              mov [di],al
00000220  47                inc di
00000221  4A                dec dx
00000222  75F6              jnz 0x21a
00000224  81C73C01          add di,0x13c
00000228  E2ED              loop 0x217
0000022A  59                pop cx
0000022B  E29D              loop 0x1ca
0000022D  59                pop cx
0000022E  49                dec cx
0000022F  0F8573FF          jnz near 0x1a6
00000233  BADA03            mov dx,0x3da
00000236  EC                in al,dx
00000237  A808              test al,0x8
00000239  74FB              jz 0x236
0000023B  31FF              xor di,di
0000023D  89EE              mov si,bp
0000023F  B900FA            mov cx,0xfa00
00000242  F3A4              rep movsb
00000244  59                pop cx
00000245  B401              mov ah,0x1
00000247  CD16              int 0x16
00000249  750A              jnz 0x255
0000024B  41                inc cx
0000024C  A17702            mov ax,[0x277]
0000024F  09C0              or ax,ax
00000251  0F85CFFE          jnz near 0x124
00000255  C3                ret
00000256  31C0              xor ax,ax
00000258  CD1A              int 0x1a
0000025A  89167B02          mov [0x27b],dx
0000025E  C3                ret
0000025F  A00064            mov al,[0x6400]
00000262  005000            add [bx+si+0x0],dl
00000265  CDCC              int 0xcc
00000267  4C                dec sp
00000268  3ECDCC            ds int 0xcc
0000026B  8C3F              mov [bx],segr7
0000026D  0AD7              or dl,bh
0000026F  233C              and di,[si]
00000271  CDCC              int 0xcc
00000273  4C                dec sp
00000274  3D0100            cmp ax,0x1
00000277  2800              sub [bx+si],al
