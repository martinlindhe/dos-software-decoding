00000100  6800A0            push word 0xa000
00000103  07                pop es
00000104  B013              mov al,0x13
00000106  CD10              int 0x10
00000108  B501              mov ch,0x1
0000010A  33C0              xor ax,ax
0000010C  BAC803            mov dx,0x3c8
0000010F  91                xchg ax,cx
00000110  EE                out dx,al
00000111  91                xchg ax,cx
00000112  42                inc dx
00000113  50                push ax
00000114  0428              add al,0x28
00000116  EE                out dx,al
00000117  58                pop ax
00000118  0400              add al,0x0
0000011A  EE                out dx,al
0000011B  0401              add al,0x1
0000011D  EE                out dx,al
0000011E  E2EC              loop 0x10c
00000120  8006190130        add byte [0x119],0x30
00000125  80061C0110        add byte [0x11c],0x10
0000012A  C606ED0564        mov byte [0x5ed],0x64
0000012F  C706EF0500FF      mov word [0x5ef],0xff00
00000135  C706F1050040      mov word [0x5f1],0x4000
0000013B  684001            push word 0x140
0000013E  EB2A              jmp short 0x16a
00000140  C606ED05B4        mov byte [0x5ed],0xb4
00000145  C706EF05FF00      mov word [0x5ef],0xff
0000014B  C706F1058000      mov word [0x5f1],0x80
00000151  C6067E01FE        mov byte [0x17e],0xfe
00000156  685B01            push word 0x15b
00000159  EB0F              jmp short 0x16a
0000015B  C606ED05B4        mov byte [0x5ed],0xb4
00000160  C6067E01FF        mov byte [0x17e],0xff
00000165  680801            push word 0x108
00000168  EB00              jmp short 0x16a
0000016A  B80001            mov ax,0x100
0000016D  BBFF01            mov bx,0x1ff
00000170  8907              mov [bx],ax
00000172  9BDBE3            finit
00000175  D9EB              fldpi
00000177  DE0F              fimul word [bx]
00000179  DE36EF05          fidiv word [0x5ef]
0000017D  D9FE              fsin
0000017F  DE0EF105          fimul word [0x5f1]
00000183  DF17              fist word [bx]
00000185  43                inc bx
00000186  48                dec ax
00000187  75E7              jnz 0x170
00000189  8006E70502        add byte [0x5e7],0x2
0000018E  8006E80502        add byte [0x5e8],0x2
00000193  8A0EE805          mov cl,[0x5e8]
00000197  BEC800            mov si,0xc8
0000019A  89F3              mov bx,si
0000019C  A0E705            mov al,[0x5e7]
0000019F  29C3              sub bx,ax
000001A1  32FF              xor bh,bh
000001A3  8A87FF01          mov al,[bx+0x1ff]
000001A7  A2E905            mov [0x5e9],al
000001AA  8AD9              mov bl,cl
000001AC  03DE              add bx,si
000001AE  32FF              xor bh,bh
000001B0  8A97FF01          mov dl,[bx+0x1ff]
000001B4  8816EA05          mov [0x5ea],dl
000001B8  89F3              mov bx,si
000001BA  89DF              mov di,bx
000001BC  C1E306            shl bx,byte 0x6
000001BF  C1E708            shl di,byte 0x8
000001C2  03FB              add di,bx
000001C4  BA4001            mov dx,0x140
000001C7  8A1EE905          mov bl,[0x5e9]
000001CB  03DA              add bx,dx
000001CD  32FF              xor bh,bh
000001CF  8A87FF01          mov al,[bx+0x1ff]
000001D3  8A1EEA05          mov bl,[0x5ea]
000001D7  00CB              add bl,cl
000001D9  2AC1              sub al,cl
000001DB  0287FF01          add al,[bx+0x1ff]
000001DF  268805            mov [es:di],al
000001E2  47                inc di
000001E3  4A                dec dx
000001E4  75E1              jnz 0x1c7
000001E6  4E                dec si
000001E7  75B1              jnz 0x19a
000001E9  FE0EED05          dec byte [0x5ed]
000001ED  7501              jnz 0x1f0
000001EF  C3                ret
000001F0  B401              mov ah,0x1
000001F2  CD16              int 0x16
000001F4  7493              jz 0x189
000001F6  B80300            mov ax,0x3
000001F9  CD10              int 0x10
000001FB  B44C              mov ah,0x4c
000001FD  CD21              int 0x21
