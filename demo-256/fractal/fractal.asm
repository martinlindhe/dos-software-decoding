00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  B800A0            mov ax,0xa000
00000108  8EC0              mov es,ax
0000010A  B80050            mov ax,0x5000
0000010D  8ED8              mov ds,ax
0000010F  2EC706FD017C00    mov word [cs:0x1fd],0x7c
00000116  33FF              xor di,di
00000118  2EA1F901          mov ax,[cs:0x1f9]
0000011C  2EA30102          mov [cs:0x201],ax
00000120  B9C800            mov cx,0xc8
00000123  51                push cx
00000124  2EA1FB01          mov ax,[cs:0x1fb]
00000128  2EA3FF01          mov [cs:0x1ff],ax
0000012C  B9A000            mov cx,0xa0
0000012F  51                push cx
00000130  B10F              mov cl,0xf
00000132  2EA1FF01          mov ax,[cs:0x1ff]
00000136  2EA30302          mov [cs:0x203],ax
0000013A  2EA10102          mov ax,[cs:0x201]
0000013E  2EA30502          mov [cs:0x205],ax
00000142  2EA10302          mov ax,[cs:0x203]
00000146  2E8B1E0302        mov bx,[cs:0x203]
0000014B  E89E00            call 0x1ec
0000014E  50                push ax
0000014F  2EA10502          mov ax,[cs:0x205]
00000153  2E8B1E0502        mov bx,[cs:0x205]
00000158  E89100            call 0x1ec
0000015B  050300            add ax,0x3
0000015E  5A                pop dx
0000015F  2BC2              sub ax,dx
00000161  2EA30902          mov [cs:0x209],ax
00000165  2EA10302          mov ax,[cs:0x203]
00000169  2E8B1E0502        mov bx,[cs:0x205]
0000016E  E87B00            call 0x1ec
00000171  054E00            add ax,0x4e
00000174  2EA30702          mov [cs:0x207],ax
00000178  2EA10702          mov ax,[cs:0x207]
0000017C  2EA30302          mov [cs:0x203],ax
00000180  2E03060502        add ax,[cs:0x205]
00000185  3D0000            cmp ax,0x0
00000188  7D03              jnl 0x18d
0000018A  F7D0              not ax
0000018C  40                inc ax
0000018D  3D0014            cmp ax,0x1400
00000190  7F0C              jg 0x19e
00000192  2EA10902          mov ax,[cs:0x209]
00000196  2EA30502          mov [cs:0x205],ax
0000019A  FEC9              dec cl
0000019C  75A4              jnz 0x142
0000019E  8AC1              mov al,cl
000001A0  040A              add al,0xa
000001A2  8AE0              mov ah,al
000001A4  59                pop cx
000001A5  8905              mov [di],ax
000001A7  83C702            add di,byte +0x2
000001AA  2EA1FD01          mov ax,[cs:0x1fd]
000001AE  2E0106FF01        add [cs:0x1ff],ax
000001B3  49                dec cx
000001B4  0F8577FF          jnz near 0x12f
000001B8  59                pop cx
000001B9  2EA1FD01          mov ax,[cs:0x1fd]
000001BD  2E01060102        add [cs:0x201],ax
000001C2  49                dec cx
000001C3  0F855CFF          jnz near 0x123
000001C7  33FF              xor di,di
000001C9  33F6              xor si,si
000001CB  B9803E            mov cx,0x3e80
000001CE  F366A5            rep movsd
000001D1  2E832EFD0101      sub word [cs:0x1fd],byte +0x1
000001D7  2E8306F90132      add word [cs:0x1f9],byte +0x32
000001DD  2E8306FB0132      add word [cs:0x1fb],byte +0x32
000001E3  E460              in al,0x60
000001E5  3C01              cmp al,0x1
000001E7  0F852BFF          jnz near 0x116
000001EB  C3                ret
000001EC  F7EB              imul bx
000001EE  0FACD00A          shrd ax,dx,0xa
000001F2  81E20080          and dx,0x8000
000001F6  0BC2              or ax,dx
000001F8  C3                ret
000001F9  00E8              add al,ch
000001FB  64                fs
000001FC  C8                db 0xc8
