00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  95                xchg ax,bp
00000105  BAB002            mov dx,0x2b0
00000108  CD21              int 0x21
0000010A  6800A0            push word 0xa000
0000010D  07                pop es
0000010E  B2C9              mov dl,0xc9
00000110  B000              mov al,0x0
00000112  EE                out dx,al
00000113  EE                out dx,al
00000114  EE                out dx,al
00000115  B9FF00            mov cx,0xff
00000118  8B1EF802          mov bx,[0x2f8]
0000011C  88F8              mov al,bh
0000011E  28C8              sub al,cl
00000120  EE                out dx,al
00000121  88F8              mov al,bh
00000123  00C8              add al,cl
00000125  EE                out dx,al
00000126  EE                out dx,al
00000127  E2F3              loop 0x11c
00000129  C70604031400      mov word [0x304],0x14
0000012F  C70602030000      mov word [0x302],0x0
00000135  A1B902            mov ax,[0x2b9]
00000138  2B060203          sub ax,[0x302]
0000013C  F7E0              mul ax
0000013E  6689C3            mov ebx,eax
00000141  A1BD02            mov ax,[0x2bd]
00000144  2B060403          sub ax,[0x304]
00000148  F7E0              mul ax
0000014A  6601C3            add ebx,eax
0000014D  66891EFA02        mov [0x2fa],ebx
00000152  DB06FA02          fild dword [0x2fa]
00000156  D9FA              fsqrt
00000158  DE06F802          fiadd word [0x2f8]
0000015C  DB1EFA02          fistp dword [0x2fa]
00000160  A1C102            mov ax,[0x2c1]
00000163  2B060203          sub ax,[0x302]
00000167  F7E0              mul ax
00000169  6689C3            mov ebx,eax
0000016C  A1C502            mov ax,[0x2c5]
0000016F  2B060403          sub ax,[0x304]
00000173  F7E0              mul ax
00000175  6601C3            add ebx,eax
00000178  66891EFE02        mov [0x2fe],ebx
0000017D  DB06FE02          fild dword [0x2fe]
00000181  D9FA              fsqrt
00000183  DE06F802          fiadd word [0x2f8]
00000187  DB1EFE02          fistp dword [0x2fe]
0000018B  668B0EFA02        mov ecx,[0x2fa]
00000190  660B0EFE02        or ecx,[0x2fe]
00000195  A1F802            mov ax,[0x2f8]
00000198  3DC005            cmp ax,0x5c0
0000019B  7713              ja 0x1b0
0000019D  3DE002            cmp ax,0x2e0
000001A0  7206              jc 0x1a8
000001A2  85060403          test [0x304],ax
000001A6  7608              jna 0x1b0
000001A8  85060203          test [0x302],ax
000001AC  7602              jna 0x1b0
000001AE  31C9              xor cx,cx
000001B0  A10403            mov ax,[0x304]
000001B3  BB4001            mov bx,0x140
000001B6  F7E3              mul bx
000001B8  8B3E0203          mov di,[0x302]
000001BC  01C7              add di,ax
000001BE  88C8              mov al,cl
000001C0  268805            mov [es:di],al
000001C3  FF060203          inc word [0x302]
000001C7  813E02034001      cmp word [0x302],0x140
000001CD  0F8264FF          jc near 0x135
000001D1  FF060403          inc word [0x304]
000001D5  813E0403B400      cmp word [0x304],0xb4
000001DB  0F8250FF          jc near 0x12f
000001DF  31DB              xor bx,bx
000001E1  8B87BB02          mov ax,[bx+0x2bb]
000001E5  0187B902          add [bx+0x2b9],ax
000001E9  83C304            add bx,byte +0x4
000001EC  83FB10            cmp bx,byte +0x10
000001EF  72F0              jc 0x1e1
000001F1  31C0              xor ax,ax
000001F3  3906C102          cmp [0x2c1],ax
000001F7  760A              jna 0x203
000001F9  813EC1024001      cmp word [0x2c1],0x140
000001FF  7302              jnc 0x203
00000201  EB04              jmp short 0x207
00000203  F71EC302          neg word [0x2c3]
00000207  3906C502          cmp [0x2c5],ax
0000020B  760A              jna 0x217
0000020D  813EC502C800      cmp word [0x2c5],0xc8
00000213  7302              jnc 0x217
00000215  EB04              jmp short 0x21b
00000217  F71EC702          neg word [0x2c7]
0000021B  3906B902          cmp [0x2b9],ax
0000021F  760A              jna 0x22b
00000221  813EB9024001      cmp word [0x2b9],0x140
00000227  7302              jnc 0x22b
00000229  EB04              jmp short 0x22f
0000022B  F71EBB02          neg word [0x2bb]
0000022F  3906BD02          cmp [0x2bd],ax
00000233  760A              jna 0x23f
00000235  813EBD02C800      cmp word [0x2bd],0xc8
0000023B  7302              jnc 0x23f
0000023D  EB04              jmp short 0x243
0000023F  F71EBF02          neg word [0x2bf]
00000243  A1F802            mov ax,[0x2f8]
00000246  B400              mov ah,0x0
00000248  B310              mov bl,0x10
0000024A  F6F3              div bl
0000024C  80FC00            cmp ah,0x0
0000024F  753B              jnz 0x28c
00000251  31DB              xor bx,bx
00000253  8A1EF702          mov bl,[0x2f7]
00000257  8ABFC902          mov bh,[bx+0x2c9]
0000025B  B300              mov bl,0x0
0000025D  B0B6              mov al,0xb6
0000025F  E643              out 0x43,al
00000261  E461              in al,0x61
00000263  0C03              or al,0x3
00000265  E661              out 0x61,al
00000267  B8DC34            mov ax,0x34dc
0000026A  B212              mov dl,0x12
0000026C  39DA              cmp dx,bx
0000026E  730C              jnc 0x27c
00000270  F7F3              div bx
00000272  89C3              mov bx,ax
00000274  88D8              mov al,bl
00000276  E642              out 0x42,al
00000278  86C7              xchg al,bh
0000027A  E642              out 0x42,al
0000027C  FE06F702          inc byte [0x2f7]
00000280  803EF7022E        cmp byte [0x2f7],0x2e
00000285  7205              jc 0x28c
00000287  C606F70200        mov byte [0x2f7],0x0
0000028C  BADA03            mov dx,0x3da
0000028F  EC                in al,dx
00000290  A808              test al,0x8
00000292  74FB              jz 0x28f
00000294  EC                in al,dx
00000295  A808              test al,0x8
00000297  75FB              jnz 0x294
00000299  FF06F802          inc word [0x2f8]
0000029D  B401              mov ah,0x1
0000029F  CD16              int 0x16
000002A1  0F8469FE          jz near 0x10e
000002A5  30E4              xor ah,ah
000002A7  CD16              int 0x16
000002A9  3C1B              cmp al,0x1b
000002AB  0F855FFE          jnz near 0x10e
000002AF  C3                ret
000002B0  2E44              cs inc sp
000002B2  7561              jnz 0x315
000002B4  6C                insb
000002B5  69747924B4        imul si,[si+0x79],word 0xb424
000002BA  0001              add [bx+di],al
000002BC  006400            add [si+0x0],ah
000002BF  0100              add [bx+si],ax
000002C1  3C00              cmp al,0x0
000002C3  FF                db 0xff
000002C4  FF                db 0xff
000002C5  7800              js 0x2c7
000002C7  FF                db 0xff
000002C8  FF02              inc word [bp+si]
000002CA  0103              add [bp+di],ax
000002CC  0104              add [si],ax
000002CE  0304              add ax,[si]
000002D0  0302              add ax,[bp+si]
000002D2  0103              add [bp+di],ax
000002D4  0104              add [si],ax
000002D6  0304              add ax,[si]
000002D8  0301              add ax,[bx+di]
000002DA  020A              add cl,[bp+si]
000002DC  0102              add [bp+si],ax
000002DE  010C              add [si],cx
000002E0  0001              add [bx+di],al
000002E2  020A              add cl,[bp+si]
000002E4  0102              add [bp+si],ax
000002E6  010C              add [si],cx
000002E8  0009              add [bx+di],cl
000002EA  08060700          or [0x7],al
000002EE  0800              or [bx+si],al
000002F0  0908              or [bx+si],cx
000002F2  0900              or [bx+si],ax
000002F4  050000            add ax,0x0
000002F7  0000              add [bx+si],al
000002F9  00                db 0x00
