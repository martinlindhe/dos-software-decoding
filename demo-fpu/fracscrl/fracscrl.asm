00000100  680090            push word 0x9000
00000103  1F                pop ds
00000104  B013              mov al,0x13
00000106  CD10              int 0x10
00000108  6800A0            push word 0xa000
0000010B  07                pop es
0000010C  33C0              xor ax,ax
0000010E  BAC803            mov dx,0x3c8
00000111  EE                out dx,al
00000112  42                inc dx
00000113  48                dec ax
00000114  50                push ax
00000115  EE                out dx,al
00000116  F6D0              not al
00000118  C0E002            shl al,byte 0x2
0000011B  EE                out dx,al
0000011C  C0E802            shr al,byte 0x2
0000011F  EE                out dx,al
00000120  58                pop ax
00000121  48                dec ax
00000122  75F0              jnz 0x114
00000124  BA7F00            mov dx,0x7f
00000127  B17F              mov cl,0x7f
00000129  8ADA              mov bl,dl
0000012B  32D9              xor bl,cl
0000012D  8BF2              mov si,dx
0000012F  60                pushaw
00000130  C1E608            shl si,byte 0x8
00000133  C1E206            shl dx,byte 0x6
00000136  03F2              add si,dx
00000138  03F1              add si,cx
0000013A  881C              mov [si],bl
0000013C  61                popaw
0000013D  49                dec cx
0000013E  75E9              jnz 0x129
00000140  B17F              mov cl,0x7f
00000142  4A                dec dx
00000143  75E4              jnz 0x129
00000145  BEFFF9            mov si,0xf9ff
00000148  8804              mov [si],al
0000014A  2EA1FE01          mov ax,[cs:0x1fe]
0000014E  BA0584            mov dx,0x8405
00000151  F7E2              mul dx
00000153  40                inc ax
00000154  2EA3FE01          mov [cs:0x1fe],ax
00000158  46                inc si
00000159  75ED              jnz 0x148
0000015B  BE01A0            mov si,0xa001
0000015E  B94060            mov cx,0x6040
00000161  46                inc si
00000162  8A844001          mov al,[si+0x140]
00000166  02847F02          add al,[si+0x27f]
0000016A  02848002          add al,[si+0x280]
0000016E  02848102          add al,[si+0x281]
00000172  C0E802            shr al,byte 0x2
00000175  40                inc ax
00000176  8804              mov [si],al
00000178  E0E7              loopne 0x161
0000017A  6660              pushad
0000017C  B0FF              mov al,0xff
0000017E  6681C1AAAA0100    add ecx,0x1aaaa
00000185  40                inc ax
00000186  B4FF              mov ah,0xff
00000188  6633D2            xor edx,edx
0000018B  6681C200900100    add edx,0x19000
00000192  FEC4              inc ah
00000194  6660              pushad
00000196  66C1EA10          shr edx,byte 0x10
0000019A  66C1E910          shr ecx,byte 0x10
0000019E  C1E206            shl dx,byte 0x6
000001A1  8BF2              mov si,dx
000001A3  C1E202            shl dx,byte 0x2
000001A6  03F2              add si,dx
000001A8  03F1              add si,cx
000001AA  8A3C              mov bh,[si]
000001AC  8BC8              mov cx,ax
000001AE  32ED              xor ch,ch
000001B0  81C18000          add cx,0x80
000001B4  C1E808            shr ax,byte 0x8
000001B7  8BD0              mov dx,ax
000001B9  C1E206            shl dx,byte 0x6
000001BC  8BF2              mov si,dx
000001BE  C1E202            shl dx,byte 0x2
000001C1  03F2              add si,dx
000001C3  03F1              add si,cx
000001C5  883C              mov [si],bh
000001C7  6661              popad
000001C9  80FC7F            cmp ah,0x7f
000001CC  75BD              jnz 0x18b
000001CE  3CC0              cmp al,0xc0
000001D0  75AC              jnz 0x17e
000001D2  B401              mov ah,0x1
000001D4  CD16              int 0x16
000001D6  751C              jnz 0x1f4
000001D8  BADA03            mov dx,0x3da
000001DB  EC                in al,dx
000001DC  2408              and al,0x8
000001DE  75FB              jnz 0x1db
000001E0  EC                in al,dx
000001E1  2408              and al,0x8
000001E3  74FB              jz 0x1e0
000001E5  33FF              xor di,di
000001E7  33F6              xor si,si
000001E9  B90040            mov cx,0x4000
000001EC  F366A5            rep movsd
000001EF  6661              popad
000001F1  E951FF            jmp word 0x145
000001F4  B80300            mov ax,0x3
000001F7  CD10              int 0x10
000001F9  B8004C            mov ax,0x4c00
000001FC  CD21              int 0x21
000001FE  0000              add [bx+si],al
