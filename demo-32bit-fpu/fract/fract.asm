00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BF1503            mov di,0x315
00000107  B103              mov cl,0x3
00000109  51                push cx
0000010A  8AF1              mov dh,cl
0000010C  8CC8              mov ax,cs
0000010E  80C410            add ah,0x10
00000111  AB                stosw
00000112  E2FA              loop 0x10e
00000114  8AC1              mov al,cl
00000116  B2C8              mov dl,0xc8
00000118  EE                out dx,al
00000119  FEC2              inc dl
0000011B  FEC5              inc ch
0000011D  B80001            mov ax,0x100
00000120  2BC1              sub ax,cx
00000122  8AD8              mov bl,al
00000124  F6F6              div dh
00000126  D1EB              shr bx,1
00000128  8AC3              mov al,bl
0000012A  EE                out dx,al
0000012B  8AC4              mov al,ah
0000012D  EE                out dx,al
0000012E  EE                out dx,al
0000012F  E2EC              loop 0x11d
00000131  8E061503          mov es,[0x315]
00000135  BD60FF            mov bp,0xff60
00000138  8BC5              mov ax,bp
0000013A  D1E0              shl ax,1
0000013C  A3FF02            mov [0x2ff],ax
0000013F  BE60FF            mov si,0xff60
00000142  8BC6              mov ax,si
00000144  6BC003            imul ax,ax,byte +0x3
00000147  A30103            mov [0x301],ax
0000014A  6633C0            xor eax,eax
0000014D  66A30303          mov [0x303],eax
00000151  B11E              mov cl,0x1e
00000153  A10303            mov ax,[0x303]
00000156  8B1E0503          mov bx,[0x305]
0000015A  8BD0              mov dx,ax
0000015C  03C3              add ax,bx
0000015E  2BD3              sub dx,bx
00000160  F7EA              imul dx
00000162  0FACD008          shrd ax,dx,0x8
00000166  50                push ax
00000167  A10303            mov ax,[0x303]
0000016A  F72E0503          imul word [0x305]
0000016E  0FACD008          shrd ax,dx,0x8
00000172  03C0              add ax,ax
00000174  8BD8              mov bx,ax
00000176  A1FF02            mov ax,[0x2ff]
00000179  03D8              add bx,ax
0000017B  891E0503          mov [0x305],bx
0000017F  58                pop ax
00000180  03060103          add ax,[0x301]
00000184  A30303            mov [0x303],ax
00000187  F7E8              imul ax
00000189  8BFA              mov di,dx
0000018B  8BD8              mov bx,ax
0000018D  A10503            mov ax,[0x305]
00000190  F7E8              imul ax
00000192  03D7              add dx,di
00000194  03D8              add bx,ax
00000196  0FACD310          shrd bx,dx,0x10
0000019A  80FB04            cmp bl,0x4
0000019D  7702              ja 0x1a1
0000019F  E2B2              loop 0x153
000001A1  83F91E            cmp cx,byte +0x1e
000001A4  770F              ja 0x1b5
000001A6  8BFE              mov di,si
000001A8  69FF4001          imul di,di,word 0x140
000001AC  03FD              add di,bp
000001AE  81C7A0C8          add di,0xc8a0
000001B2  8AC1              mov al,cl
000001B4  AA                stosb
000001B5  46                inc si
000001B6  83FE28            cmp si,byte +0x28
000001B9  7C87              jl 0x142
000001BB  45                inc bp
000001BC  81FDA000          cmp bp,0xa0
000001C0  0F8C74FF          jl near 0x138
000001C4  B89EFF            mov ax,0xff9e
000001C7  A31103            mov [0x311],ax
000001CA  8E061703          mov es,[0x317]
000001CE  06                push es
000001CF  8E261503          mov fs,[0x315]
000001D3  FD                std
000001D4  B9C800            mov cx,0xc8
000001D7  51                push cx
000001D8  B80100            mov ax,0x1
000001DB  2B06FD02          sub ax,[0x2fd]
000001DF  A30F03            mov [0x30f],ax
000001E2  B94001            mov cx,0x140
000001E5  648A854001        mov al,[fs:di+0x140]
000001EA  648A9DC0FE        mov bl,[fs:di-0x140]
000001EF  2BC3              sub ax,bx
000001F1  8BE8              mov bp,ax
000001F3  FF060F03          inc word [0x30f]
000001F7  2B060F03          sub ax,[0x30f]
000001FB  99                cwd
000001FC  33C2              xor ax,dx
000001FE  2BC2              sub ax,dx
00000200  BB8000            mov bx,0x80
00000203  2BD8              sub bx,ax
00000205  7F02              jg 0x209
00000207  33DB              xor bx,bx
00000209  53                push bx
0000020A  8BC5              mov ax,bp
0000020C  2B061103          sub ax,[0x311]
00000210  99                cwd
00000211  33C2              xor ax,dx
00000213  2BC2              sub ax,dx
00000215  BA8000            mov dx,0x80
00000218  2BD0              sub dx,ax
0000021A  7F02              jg 0x21e
0000021C  33D2              xor dx,dx
0000021E  58                pop ax
0000021F  F7E2              mul dx
00000221  C1E807            shr ax,byte 0x7
00000224  84E4              test ah,ah
00000226  7402              jz 0x22a
00000228  B0FF              mov al,0xff
0000022A  AA                stosb
0000022B  E2B8              loop 0x1e5
0000022D  59                pop cx
0000022E  FF061103          inc word [0x311]
00000232  E2A3              loop 0x1d7
00000234  D906EF02          fld dword [0x2ef]
00000238  D9C0              fld st0
0000023A  D906F302          fld dword [0x2f3]
0000023E  D9C0              fld st0
00000240  D806F702          fadd dword [0x2f7]
00000244  D91EF302          fstp dword [0x2f3]
00000248  D9FB              fsincos
0000024A  DE0EFB02          fimul word [0x2fb]
0000024E  DECA              fmulp st2
00000250  D9C9              fxch st1
00000252  DF1E0903          fistp word [0x309]
00000256  DE0EFB02          fimul word [0x2fb]
0000025A  DEC9              fmulp st1
0000025C  DF1E0703          fistp word [0x307]
00000260  BB0050            mov bx,0x5000
00000263  A10903            mov ax,[0x309]
00000266  50                push ax
00000267  03060703          add ax,[0x307]
0000026B  6BC064            imul ax,ax,byte +0x64
0000026E  2BD8              sub bx,ax
00000270  891E0B03          mov [0x30b],bx
00000274  B90032            mov cx,0x3200
00000277  58                pop ax
00000278  2B060703          sub ax,[0x307]
0000027C  69C0A000          imul ax,ax,word 0xa0
00000280  2BC8              sub cx,ax
00000282  890E0D03          mov [0x30d],cx
00000286  0FA1              pop fs
00000288  8E061903          mov es,[0x319]
0000028C  06                push es
0000028D  FC                cld
0000028E  B9C800            mov cx,0xc8
00000291  51                push cx
00000292  B94001            mov cx,0x140
00000295  A10B03            mov ax,[0x30b]
00000298  8B360D03          mov si,[0x30d]
0000029C  50                push ax
0000029D  56                push si
0000029E  C1F807            sar ax,byte 0x7
000002A1  C1FE07            sar si,byte 0x7
000002A4  69F64001          imul si,si,word 0x140
000002A8  03F0              add si,ax
000002AA  64A4              fs movsb
000002AC  5E                pop si
000002AD  58                pop ax
000002AE  03060903          add ax,[0x309]
000002B2  2B360703          sub si,[0x307]
000002B6  E2E4              loop 0x29c
000002B8  59                pop cx
000002B9  66A10703          mov eax,[0x307]
000002BD  6601060B03        add [0x30b],eax
000002C2  E2CD              loop 0x291
000002C4  B5A0              mov ch,0xa0
000002C6  8EC1              mov es,cx
000002C8  33FF              xor di,di
000002CA  8BF7              mov si,di
000002CC  0FA1              pop fs
000002CE  B9803E            mov cx,0x3e80
000002D1  64F366A5          fs rep movsd
000002D5  A1FD02            mov ax,[0x2fd]
000002D8  40                inc ax
000002D9  3D8601            cmp ax,0x186
000002DC  7C02              jl 0x2e0
000002DE  33C0              xor ax,ax
000002E0  A3FD02            mov [0x2fd],ax
000002E3  E460              in al,0x60
000002E5  FEC8              dec al
000002E7  0F85D9FE          jnz near 0x1c4
000002EB  58                pop ax
000002EC  CD10              int 0x10
000002EE  C3                ret
000002EF  CDCC              int 0xcc
000002F1  CC                int3
000002F2  3E5F              ds pop di
000002F4  B532              mov ch,0x32
000002F6  3E5F              ds pop di
000002F8  B5B2              mov ch,0xb2
000002FA  3D8000            cmp ax,0x80
000002FD  0000              add [bx+si],al
