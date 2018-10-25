00000100  EB01              jmp short 0x103
00000102  CF                iret
00000103  6A00              push byte +0x0
00000105  07                pop es
00000106  26C7068C000201    mov word [es:0x8c],0x102
0000010D  268C0E8E00        mov [es:0x8e],cs
00000112  E9E600            jmp 0x1fb
00000115  0000              add [bx+si],al
00000117  0000              add [bx+si],al
00000119  0000              add [bx+si],al
0000011B  0000              add [bx+si],al
0000011D  CE                into
0000011E  FF00              inc word [bx+si]
00000120  005589            add [di-0x77],dl
00000123  E5DF              in ax,0xdf
00000125  46                inc si
00000126  0AD9              or bl,cl
00000128  46                inc si
00000129  04D9              add al,0xd9
0000012B  FF                db 0xff
0000012C  DEC9              fmulp st1
0000012E  DF4608            fild word [bp+0x8]
00000131  D94604            fld dword [bp+0x4]
00000134  D9FE              fsin
00000136  DEC9              fmulp st1
00000138  DEE9              fsubp st1
0000013A  DF1E0203          fistp word [0x302]
0000013E  DF460A            fild word [bp+0xa]
00000141  D94604            fld dword [bp+0x4]
00000144  D9FE              fsin
00000146  DEC9              fmulp st1
00000148  DF4608            fild word [bp+0x8]
0000014B  D94604            fld dword [bp+0x4]
0000014E  D9FF              fcos
00000150  DEC9              fmulp st1
00000152  DEC1              faddp st1
00000154  DF1E0403          fistp word [0x304]
00000158  5D                pop bp
00000159  C20800            ret 0x8
0000015C  C8080000          enter 0x8,0x0
00000160  BAECFF            mov dx,0xffec
00000163  BBECFF            mov bx,0xffec
00000166  B9ECFF            mov cx,0xffec
00000169  52                push dx
0000016A  53                push bx
0000016B  66FF361501        push dword [0x115]
00000170  E8AEFF            call 0x121
00000173  A10403            mov ax,[0x304]
00000176  8946FA            mov [bp-0x6],ax
00000179  FF360203          push word [0x302]
0000017D  51                push cx
0000017E  66FF361501        push dword [0x115]
00000183  E89BFF            call 0x121
00000186  A10203            mov ax,[0x302]
00000189  8946F8            mov [bp-0x8],ax
0000018C  A10403            mov ax,[0x304]
0000018F  8946FC            mov [bp-0x4],ax
00000192  8956FE            mov [bp-0x2],dx
00000195  DF46FE            fild word [bp-0x2]
00000198  D8C8              fmul st0
0000019A  895EFE            mov [bp-0x2],bx
0000019D  DF46FE            fild word [bp-0x2]
000001A0  D8C8              fmul st0
000001A2  894EFE            mov [bp-0x2],cx
000001A5  DF46FE            fild word [bp-0x2]
000001A8  D8C8              fmul st0
000001AA  DEC1              faddp st1
000001AC  DEC1              faddp st1
000001AE  D9FA              fsqrt
000001B0  DF5EFE            fistp word [bp-0x2]
000001B3  A11D01            mov ax,[0x11d]
000001B6  3946FE            cmp [bp-0x2],ax
000001B9  0F8E2400          jng near 0x1e1
000001BD  A11F01            mov ax,[0x11f]
000001C0  3946FE            cmp [bp-0x2],ax
000001C3  0F8D1A00          jnl near 0x1e1
000001C7  53                push bx
000001C8  51                push cx
000001C9  52                push dx
000001CA  8B46F8            mov ax,[bp-0x8]
000001CD  03061901          add ax,[0x119]
000001D1  8B4EFA            mov cx,[bp-0x6]
000001D4  030E1B01          add cx,[0x11b]
000001D8  8B5EFC            mov bx,[bp-0x4]
000001DB  E8CF00            call 0x2ad
000001DE  5A                pop dx
000001DF  59                pop cx
000001E0  5B                pop bx
000001E1  41                inc cx
000001E2  83F914            cmp cx,byte +0x14
000001E5  7E82              jng 0x169
000001E7  43                inc bx
000001E8  83FB14            cmp bx,byte +0x14
000001EB  0F8E77FF          jng near 0x166
000001EF  42                inc dx
000001F0  83FA14            cmp dx,byte +0x14
000001F3  0F8E6CFF          jng near 0x163
000001F7  C9                leave
000001F8  C3                ret
000001F9  0000              add [bx+si],al
000001FB  B81300            mov ax,0x13
000001FE  CD10              int 0x10
00000200  8CD8              mov ax,ds
00000202  050002            add ax,0x200
00000205  8EE8              mov gs,ax
00000207  B9FF00            mov cx,0xff
0000020A  BAC803            mov dx,0x3c8
0000020D  88C8              mov al,cl
0000020F  EE                out dx,al
00000210  42                inc dx
00000211  C0E802            shr al,byte 0x2
00000214  EE                out dx,al
00000215  EE                out dx,al
00000216  EE                out dx,al
00000217  E2F1              loop 0x20a
00000219  D9061501          fld dword [0x115]
0000021D  D9E0              fchs
0000021F  D91E1501          fstp dword [0x115]
00000223  9BE8C800          wait call 0x2ef
00000227  832E1F0114        sub word [0x11f],byte +0x14
0000022C  B8F6FF            mov ax,0xfff6
0000022F  2B06F901          sub ax,[0x1f9]
00000233  D1F8              sar ax,1
00000235  A31901            mov [0x119],ax
00000238  A11901            mov ax,[0x119]
0000023B  F7D8              neg ax
0000023D  A31B01            mov [0x11b],ax
00000240  E819FF            call 0x15c
00000243  F7161901          not word [0x119]
00000247  F7161B01          not word [0x11b]
0000024B  E80EFF            call 0x15c
0000024E  FF0EF901          dec word [0x1f9]
00000252  D9061501          fld dword [0x115]
00000256  D9E0              fchs
00000258  D91E1501          fstp dword [0x115]
0000025C  9B83061F0114      wait add word [0x11f],byte +0x14
00000262  C70619010000      mov word [0x119],0x0
00000268  C7061B010000      mov word [0x11b],0x0
0000026E  E8EBFE            call 0x15c
00000271  66D906FC02        o32 fld dword [0x2fc]
00000276  D8061501          fadd dword [0x115]
0000027A  D91E1501          fstp dword [0x115]
0000027E  9BFF061D01        wait inc word [0x11d]
00000283  FF061F01          inc word [0x11f]
00000287  E80F00            call 0x299
0000028A  E84E00            call 0x2db
0000028D  E460              in al,0x60
0000028F  3C01              cmp al,0x1
00000291  7586              jnz 0x219
00000293  B80300            mov ax,0x3
00000296  CD10              int 0x10
00000298  C3                ret
00000299  6A00              push byte +0x0
0000029B  07                pop es
0000029C  26A16C04          mov ax,[es:0x46c]
000002A0  83C009            add ax,byte +0x9
000002A3  268B1E6C04        mov bx,[es:0x46c]
000002A8  39D8              cmp ax,bx
000002AA  73F7              jnc 0x2a3
000002AC  C3                ret
000002AD  BAA000            mov dx,0xa0
000002B0  01C2              add dx,ax
000002B2  29CA              sub dx,cx
000002B4  01C8              add ax,cx
000002B6  89C1              mov cx,ax
000002B8  01C9              add cx,cx
000002BA  83C164            add cx,byte +0x64
000002BD  05A000            add ax,0xa0
000002C0  C1E802            shr ax,byte 0x2
000002C3  29D8              sub ax,bx
000002C5  89C3              mov bx,ax
000002C7  69DB4001          imul bx,bx,word 0x140
000002CB  01D3              add bx,dx
000002CD  650FB607          movzx ax,[gs:bx]
000002D1  39C8              cmp ax,cx
000002D3  0F830300          jnc near 0x2da
000002D7  65880F            mov [gs:bx],cl
000002DA  C3                ret
000002DB  1E                push ds
000002DC  0FA8              push gs
000002DE  1F                pop ds
000002DF  6800A0            push word 0xa000
000002E2  07                pop es
000002E3  31F6              xor si,si
000002E5  BF803E            mov di,0x3e80
000002E8  B9007D            mov cx,0x7d00
000002EB  F3A4              rep movsb
000002ED  1F                pop ds
000002EE  C3                ret
000002EF  0FA8              push gs
000002F1  07                pop es
000002F2  31FF              xor di,di
000002F4  31C0              xor ax,ax
000002F6  B9007D            mov cx,0x7d00
000002F9  F3AA              rep stosb
000002FB  C3                ret
000002FC  CDCC              int 0xcc
000002FE  CC                int3
000002FF  3D                db 0x3d
