00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  BAC803            mov dx,0x3c8
00000108  B0F8              mov al,0xf8
0000010A  EE                out dx,al
0000010B  42                inc dx
0000010C  32C0              xor al,al
0000010E  B91800            mov cx,0x18
00000111  EE                out dx,al
00000112  E2FD              loop 0x111
00000114  1E                push ds
00000115  07                pop es
00000116  B91400            mov cx,0x14
00000119  BA4001            mov dx,0x140
0000011C  BFFA01            mov di,0x1fa
0000011F  8B05              mov ax,[di]
00000121  034528            add ax,[di+0x28]
00000124  3BC2              cmp ax,dx
00000126  7203              jc 0x12b
00000128  F75D28            neg word [di+0x28]
0000012B  AB                stosw
0000012C  81F28801          xor dx,0x188
00000130  E2ED              loop 0x11f
00000132  33ED              xor bp,bp
00000134  BF9F02            mov di,0x29f
00000137  57                push di
00000138  BEFA01            mov si,0x1fa
0000013B  BF4F02            mov di,0x24f
0000013E  B90A00            mov cx,0xa
00000141  AD                lodsw
00000142  660FBFC0          movsx eax,ax
00000146  6650              push eax
00000148  660FAFC0          imul eax,eax
0000014C  6650              push eax
0000014E  AD                lodsw
0000014F  2BC5              sub ax,bp
00000151  660FBFC0          movsx eax,ax
00000155  660FAFC0          imul eax,eax
00000159  665B              pop ebx
0000015B  6603C3            add eax,ebx
0000015E  66AB              stosd
00000160  6658              pop eax
00000162  6603C0            add eax,eax
00000165  66F7D8            neg eax
00000168  6640              inc eax
0000016A  66AB              stosd
0000016C  E2D3              loop 0x141
0000016E  5F                pop di
0000016F  B94001            mov cx,0x140
00000172  51                push cx
00000173  B10A              mov cl,0xa
00000175  BE4F02            mov si,0x24f
00000178  66BBFFFFFFFF      mov ebx,0xffffffff
0000017E  66AD              lodsd
00000180  663BD8            cmp ebx,eax
00000183  7210              jc 0x195
00000185  66891E4B02        mov [0x24b],ebx
0000018A  882E4A02          mov [0x24a],ch
0000018E  668BD8            mov ebx,eax
00000191  8AE9              mov ch,cl
00000193  EB0F              jmp short 0x1a4
00000195  663B064B02        cmp eax,[0x24b]
0000019A  7308              jnc 0x1a4
0000019C  66A34B02          mov [0x24b],eax
000001A0  880E4A02          mov [0x24a],cl
000001A4  668BD0            mov edx,eax
000001A7  66AD              lodsd
000001A9  6603D0            add edx,eax
000001AC  668954F8          mov [si-0x8],edx
000001B0  6683C002          add eax,byte +0x2
000001B4  668944FC          mov [si-0x4],eax
000001B8  FEC9              dec cl
000001BA  75C2              jnz 0x17e
000001BC  6633D2            xor edx,edx
000001BF  668BC3            mov eax,ebx
000001C2  66C1E008          shl eax,byte 0x8
000001C6  66FF064B02        inc dword [0x24b]
000001CB  66F7364B02        div dword [0x24b]
000001D0  AA                stosb
000001D1  59                pop cx
000001D2  E29E              loop 0x172
000001D4  45                inc bp
000001D5  81FDC800          cmp bp,0xc8
000001D9  0F825AFF          jc near 0x137
000001DD  6800A0            push word 0xa000
000001E0  07                pop es
000001E1  BE9F02            mov si,0x29f
000001E4  33FF              xor di,di
000001E6  B9803E            mov cx,0x3e80
000001E9  F366A5            rep movsd
000001EC  E460              in al,0x60
000001EE  FEC8              dec al
000001F0  0F8520FF          jnz near 0x114
000001F4  B80300            mov ax,0x3
000001F7  CD10              int 0x10
000001F9  C3                ret
000001FA  7800              js 0x1fc
000001FC  8400              test [bx+si],al
000001FE  C8004600          enter 0x4600,0x0
00000202  8C00              mov [bx+si],es
00000204  1E                push ds
00000205  00060062          add [0x6200],al
00000209  0032              add [bp+si],dh
0000020B  002C              add [si],ch
0000020D  000A              add [bp+si],cl
0000020F  00C0              add al,al
00000211  0010              add [bx+si],dl
00000213  004A00            add [bp+si+0x0],cl
00000216  0201              add al,[bx+di]
00000218  8800              mov [bx+si],al
0000021A  2C01              sub al,0x1
0000021C  4A                dec dx
0000021D  00D4              add ah,dl
0000021F  001C              add [si],bl
00000221  0002              add [bp+si],al
00000223  0001              add [bx+di],al
00000225  00FE              add dh,bh
00000227  FF01              inc word [bx+di]
00000229  0001              add [bx+di],al
0000022B  0002              add [bp+si],al
0000022D  00FE              add dh,bh
0000022F  FF01              inc word [bx+di]
00000231  0001              add [bx+di],al
00000233  00FE              add dh,bh
00000235  FF                db 0xff
00000236  FF                db 0xff
00000237  FF02              inc word [bp+si]
00000239  0001              add [bx+di],al
0000023B  00FF              add bh,bh
0000023D  FF02              inc word [bp+si]
0000023F  0002              add [bp+si],al
00000241  00FF              add bh,bh
00000243  FF                db 0xff
00000244  FE                db 0xfe
00000245  FF02              inc word [bp+si]
00000247  00FF              add bh,bh
00000249  FF                db 0xff
