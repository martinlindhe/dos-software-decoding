00000100  CD03              int 0x3
00000102  B81300            mov ax,0x13
00000105  CD10              int 0x10
00000107  B800A0            mov ax,0xa000
0000010A  8EC0              mov es,ax
0000010C  B80050            mov ax,0x5000
0000010F  8ED8              mov ds,ax
00000111  2EC70600027C00    mov word [cs:0x200],0x7c
00000118  31FF              xor di,di
0000011A  2EA1FC01          mov ax,[cs:0x1fc]
0000011E  2EA30402          mov [cs:0x204],ax
00000122  B9C800            mov cx,0xc8
00000125  51                push cx
00000126  2EA1FE01          mov ax,[cs:0x1fe]
0000012A  2EA30202          mov [cs:0x202],ax
0000012E  B9A000            mov cx,0xa0
00000131  51                push cx
00000132  B10F              mov cl,0xf
00000134  2EA10202          mov ax,[cs:0x202]
00000138  2EA30602          mov [cs:0x206],ax
0000013C  2EA10402          mov ax,[cs:0x204]
00000140  2EA30802          mov [cs:0x208],ax
00000144  2EA10602          mov ax,[cs:0x206]
00000148  2E8B1E0602        mov bx,[cs:0x206]
0000014D  E89E00            call 0x1ee
00000150  50                push ax
00000151  2EA10802          mov ax,[cs:0x208]
00000155  2E8B1E0802        mov bx,[cs:0x208]
0000015A  E89100            call 0x1ee
0000015D  83C003            add ax,byte +0x3
00000160  5A                pop dx
00000161  29D0              sub ax,dx
00000163  2EA30C02          mov [cs:0x20c],ax
00000167  2EA10602          mov ax,[cs:0x206]
0000016B  2E8B1E0802        mov bx,[cs:0x208]
00000170  E87B00            call 0x1ee
00000173  83C04E            add ax,byte +0x4e
00000176  2EA30A02          mov [cs:0x20a],ax
0000017A  2EA10A02          mov ax,[cs:0x20a]
0000017E  2EA30602          mov [cs:0x206],ax
00000182  2E03060802        add ax,[cs:0x208]
00000187  83F800            cmp ax,byte +0x0
0000018A  7D03              jnl 0x18f
0000018C  F7D0              not ax
0000018E  40                inc ax
0000018F  3D0014            cmp ax,0x1400
00000192  7F0C              jg 0x1a0
00000194  2EA10C02          mov ax,[cs:0x20c]
00000198  2EA30802          mov [cs:0x208],ax
0000019C  FEC9              dec cl
0000019E  75A4              jnz 0x144
000001A0  88C8              mov al,cl
000001A2  040A              add al,0xa
000001A4  88C4              mov ah,al
000001A6  59                pop cx
000001A7  8905              mov [di],ax
000001A9  83C702            add di,byte +0x2
000001AC  2EA10002          mov ax,[cs:0x200]
000001B0  2E01060202        add [cs:0x202],ax
000001B5  49                dec cx
000001B6  0F8577FF          jnz near 0x131
000001BA  59                pop cx
000001BB  2EA10002          mov ax,[cs:0x200]
000001BF  2E01060402        add [cs:0x204],ax
000001C4  49                dec cx
000001C5  0F855CFF          jnz near 0x125
000001C9  31FF              xor di,di
000001CB  31F6              xor si,si
000001CD  B9803E            mov cx,0x3e80
000001D0  F366A5            rep movsd
000001D3  2E832E000201      sub word [cs:0x200],byte +0x1
000001D9  2E8306FC0132      add word [cs:0x1fc],byte +0x32
000001DF  2E8306FE0132      add word [cs:0x1fe],byte +0x32
000001E5  E460              in al,0x60
000001E7  3C01              cmp al,0x1
000001E9  0F852BFF          jnz near 0x118
000001ED  C3                ret
000001EE  F7EB              imul bx
000001F0  0FACD00A          shrd ax,dx,0xa
000001F4  81E20080          and dx,0x8000
000001F8  09D0              or ax,dx
000001FA  C3                ret
000001FB  0000              add [bx+si],al
000001FD  E864C8            call 0xca64
