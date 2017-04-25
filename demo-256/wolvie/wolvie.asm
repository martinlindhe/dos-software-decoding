00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  6800A0            push word 0xa000
00000107  07                pop es
00000108  B1FF              mov cl,0xff
0000010A  BAC803            mov dx,0x3c8
0000010D  8AC1              mov al,cl
0000010F  EE                out dx,al
00000110  42                inc dx
00000111  D0E8              shr al,1
00000113  EE                out dx,al
00000114  EE                out dx,al
00000115  D0E8              shr al,1
00000117  EE                out dx,al
00000118  E2F0              loop 0x10a
0000011A  B470              mov ah,0x70
0000011C  8EE0              mov fs,ax
0000011E  B480              mov ah,0x80
00000120  8EE8              mov gs,ax
00000122  BF0002            mov di,0x200
00000125  BDC800            mov bp,0xc8
00000128  B94001            mov cx,0x140
0000012B  8BC1              mov ax,cx
0000012D  8BF5              mov si,bp
0000012F  2DA000            sub ax,0xa0
00000132  83EE64            sub si,byte +0x64
00000135  8935              mov [di],si
00000137  DF05              fild word [di]
00000139  8905              mov [di],ax
0000013B  DF05              fild word [di]
0000013D  D9F3              fpatan
0000013F  DE0EDF01          fimul word [0x1df]
00000143  DF1E0202          fistp word [0x202]
00000147  0FAFC0            imul ax,ax
0000014A  0FAFF6            imul si,si
0000014D  03C6              add ax,si
0000014F  8905              mov [di],ax
00000151  DF05              fild word [di]
00000153  D9FA              fsqrt
00000155  DF1D              fistp word [di]
00000157  8B35              mov si,[di]
00000159  46                inc si
0000015A  B8000C            mov ax,0xc00
0000015D  6699              cdq
0000015F  F7F6              div si
00000161  C1E008            shl ax,byte 0x8
00000164  A00202            mov al,[0x202]
00000167  80FFFA            cmp bh,0xfa
0000016A  7506              jnz 0x172
0000016C  B490              mov ah,0x90
0000016E  8EE8              mov gs,ax
00000170  33DB              xor bx,bx
00000172  658907            mov [gs:bx],ax
00000175  43                inc bx
00000176  43                inc bx
00000177  E2B2              loop 0x12b
00000179  4D                dec bp
0000017A  75AC              jnz 0x128
0000017C  0FA0              push fs
0000017E  1F                pop ds
0000017F  B102              mov cl,0x2
00000181  BEFFFF            mov si,0xffff
00000184  8BD9              mov bx,cx
00000186  8BC5              mov ax,bp
00000188  69E8B57A          imul bp,ax,word 0x7ab5
0000018C  81C51936          add bp,0x3619
00000190  F7E3              mul bx
00000192  6BD27F            imul dx,dx,byte +0x7f
00000195  8814              mov [si],dl
00000197  4E                dec si
00000198  81FEBFFE          cmp si,0xfebf
0000019C  75E6              jnz 0x184
0000019E  BEFFFF            mov si,0xffff
000001A1  4E                dec si
000001A2  8A14              mov dl,[si]
000001A4  0284C1FE          add al,[si-0x13f]
000001A8  03C3              add ax,bx
000001AA  03C2              add ax,dx
000001AC  C1E802            shr ax,byte 0x2
000001AF  7402              jz 0x1b3
000001B1  2C02              sub al,0x2
000001B3  8884C1FE          mov [si-0x13f],al
000001B7  8AC3              mov al,bl
000001B9  8ADA              mov bl,dl
000001BB  81FE3F01          cmp si,0x13f
000001BF  75E0              jnz 0x1a1
000001C1  E2BE              loop 0x181
000001C3  33FF              xor di,di
000001C5  0FA8              push gs
000001C7  680080            push word 0x8000
000001CA  1F                pop ds
000001CB  E81300            call word 0x1e1
000001CE  1F                pop ds
000001CF  E80F00            call word 0x1e1
000001D2  E460              in al,0x60
000001D4  48                dec ax
000001D5  75EC              jnz 0x1c3
000001D7  B003              mov al,0x3
000001D9  CD10              int 0x10
000001DB  B44C              mov ah,0x4c
000001DD  CD21              int 0x21
000001DF  8000BA            add byte [bx+si],0xba
000001E2  DA03              fiadd dword [bp+di]
000001E4  EC                in al,dx
000001E5  A808              test al,0x8
000001E7  75FB              jnz 0x1e4
000001E9  EC                in al,dx
000001EA  A808              test al,0x8
000001EC  74FB              jz 0x1e9
000001EE  33DB              xor bx,bx
000001F0  B9007D            mov cx,0x7d00
000001F3  8B37              mov si,[bx]
000001F5  648A04            mov al,[fs:si]
000001F8  43                inc bx
000001F9  FE07              inc byte [bx]
000001FB  AA                stosb
000001FC  43                inc bx
000001FD  E2F4              loop 0x1f3
000001FF  C3                ret
