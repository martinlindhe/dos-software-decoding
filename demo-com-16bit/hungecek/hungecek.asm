00000100  680770            push word 0x7007
00000103  07                pop es
00000104  B013              mov al,0x13
00000106  CD10              int 0x10
00000108  33C0              xor ax,ax
0000010A  BAC803            mov dx,0x3c8
0000010D  EE                out dx,al
0000010E  42                inc dx
0000010F  EE                out dx,al
00000110  B019              mov al,0x19
00000112  EE                out dx,al
00000113  EE                out dx,al
00000114  BB0005            mov bx,0x500
00000117  C747080000        mov word [bx+0x8],0x0
0000011C  83C30A            add bx,byte +0xa
0000011F  E2F6              loop 0x117
00000121  B9007D            mov cx,0x7d00
00000124  F3AB              rep stosw
00000126  33F6              xor si,si
00000128  33FF              xor di,di
0000012A  680770            push word 0x7007
0000012D  6800A0            push word 0xa000
00000130  07                pop es
00000131  1F                pop ds
00000132  B9007D            mov cx,0x7d00
00000135  F3A5              rep movsw
00000137  680770            push word 0x7007
0000013A  0E                push cs
0000013B  1F                pop ds
0000013C  07                pop es
0000013D  81061A014001      add word [0x11a],0x140
00000143  813E1A0180D4      cmp word [0x11a],0xd480
00000149  7204              jc 0x14f
0000014B  890E1A01          mov [0x11a],cx
0000014F  BADA03            mov dx,0x3da
00000152  EC                in al,dx
00000153  A808              test al,0x8
00000155  74FB              jz 0x152
00000157  B00C              mov al,0xc
00000159  8B3E1A01          mov di,[0x11a]
0000015D  E86E00            call word 0x1ce
00000160  E86B00            call word 0x1ce
00000163  B00A              mov al,0xa
00000165  E86600            call word 0x1ce
00000168  BB0005            mov bx,0x500
0000016B  B94100            mov cx,0x41
0000016E  51                push cx
0000016F  FF4F08            dec word [bx+0x8]
00000172  7F12              jg 0x186
00000174  E87200            call word 0x1e9
00000177  894704            mov [bx+0x4],ax
0000017A  E86C00            call word 0x1e9
0000017D  894706            mov [bx+0x6],ax
00000180  E86600            call word 0x1e9
00000183  894708            mov [bx+0x8],ax
00000186  8B0F              mov cx,[bx]
00000188  8B5702            mov dx,[bx+0x2]
0000018B  2907              sub [bx],ax
0000018D  8B37              mov si,[bx]
0000018F  8B4706            mov ax,[bx+0x6]
00000192  294702            sub [bx+0x2],ax
00000195  8B7F02            mov di,[bx+0x2]
00000198  B0FF              mov al,0xff
0000019A  E83D00            call word 0x1da
0000019D  57                push di
0000019E  56                push si
0000019F  59                pop cx
000001A0  5A                pop dx
000001A1  B00A              mov al,0xa
000001A3  E83400            call word 0x1da
000001A6  83C30A            add bx,byte +0xa
000001A9  59                pop cx
000001AA  E2C2              loop 0x16e
000001AC  B90030            mov cx,0x3000
000001AF  51                push cx
000001B0  D1E0              shl ax,1
000001B2  7702              ja 0x1b6
000001B4  342D              xor al,0x2d
000001B6  59                pop cx
000001B7  8BD8              mov bx,ax
000001B9  26C60700          mov byte [es:bx],0x0
000001BD  E2F0              loop 0x1af
000001BF  B401              mov ah,0x1
000001C1  CD16              int 0x16
000001C3  7503              jnz 0x1c8
000001C5  E95EFF            jmp word 0x126
000001C8  B80300            mov ax,0x3
000001CB  CD10              int 0x10
000001CD  C3                ret
000001CE  B9800C            mov cx,0xc80
000001D1  268905            mov [es:di],ax
000001D4  47                inc di
000001D5  E2FA              loop 0x1d1
000001D7  B00F              mov al,0xf
000001D9  C3                ret
000001DA  60                pushaw
000001DB  8BFA              mov di,dx
000001DD  C1E702            shl di,byte 0x2
000001E0  03FA              add di,dx
000001E2  C1E706            shl di,byte 0x6
000001E5  03F9              add di,cx
000001E7  AA                stosb
000001E8  61                popaw
000001E9  A10001            mov ax,[0x100]
000001EC  F6C480            test ah,0x80
000001EF  7406              jz 0x1f7
000001F1  0C13              or al,0x13
000001F3  D1D0              rcl ax,1
000001F5  EB03              jmp short 0x1fa
000001F7  C1E003            shl ax,byte 0x3
000001FA  A30001            mov [0x100],ax
000001FD  D3F8              sar ax,cl
000001FF  C3                ret
