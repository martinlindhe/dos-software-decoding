00000100  BB7F00            mov bx,0x7f
00000103  BF7F03            mov di,0x37f
00000106  8AC3              mov al,bl
00000108  F6E0              mul al
0000010A  D1E0              shl ax,1
0000010C  80EC7F            sub ah,0x7f
0000010F  88A7FF01          mov [bx+0x1ff],ah
00000113  8825              mov [di],ah
00000115  F6DC              neg ah
00000117  88A500FF          mov [di-0x100],ah
0000011B  88A7FF02          mov [bx+0x2ff],ah
0000011F  47                inc di
00000120  FECB              dec bl
00000122  79E2              jns 0x106
00000124  BEFF01            mov si,0x1ff
00000127  8BCF              mov cx,di
00000129  F3A5              rep movsw
0000012B  B81300            mov ax,0x13
0000012E  CD10              int 0x10
00000130  BAC803            mov dx,0x3c8
00000133  32C0              xor al,al
00000135  EE                out dx,al
00000136  42                inc dx
00000137  790E              jns 0x147
00000139  8AC1              mov al,cl
0000013B  3480              xor al,0x80
0000013D  F6E0              mul al
0000013F  8AC4              mov al,ah
00000141  D0E0              shl al,1
00000143  F6E0              mul al
00000145  8AC4              mov al,ah
00000147  EE                out dx,al
00000148  EE                out dx,al
00000149  8AC1              mov al,cl
0000014B  C0E802            shr al,byte 0x2
0000014E  EE                out dx,al
0000014F  32C0              xor al,al
00000151  FEC1              inc cl
00000153  75E2              jnz 0x137
00000155  BF8007            mov di,0x780
00000158  33C0              xor ax,ax
0000015A  B90078            mov cx,0x7800
0000015D  1E                push ds
0000015E  07                pop es
0000015F  F3AB              rep stosw
00000161  E83200            call word 0x196
00000164  E82F00            call word 0x196
00000167  41                inc cx
00000168  79F7              jns 0x161
0000016A  BADA03            mov dx,0x3da
0000016D  EC                in al,dx
0000016E  A80A              test al,0xa
00000170  74FB              jz 0x16d
00000172  6800A0            push word 0xa000
00000175  07                pop es
00000176  51                push cx
00000177  B90078            mov cx,0x7800
0000017A  BF8007            mov di,0x780
0000017D  8BF7              mov si,di
0000017F  F3A5              rep movsw
00000181  59                pop cx
00000182  83C504            add bp,byte +0x4
00000185  81E5FF01          and bp,0x1ff
00000189  E460              in al,0x60
0000018B  FEC8              dec al
0000018D  75C6              jnz 0x155
0000018F  B80300            mov ax,0x3
00000192  CD10              int 0x10
00000194  CD20              int 0x20
00000196  F7D1              not cx
00000198  E85A00            call word 0x1f5
0000019B  8BF9              mov di,cx
0000019D  83E77F            and di,byte +0x7f
000001A0  C1E702            shl di,byte 0x2
000001A3  0FBE9DFF01        movsx bx,[di+0x1ff]
000001A8  D1FB              sar bx,1
000001AA  0FBE957F02        movsx dx,[di+0x27f]
000001AF  8816DD01          mov [0x1dd],dl
000001B3  C1FA02            sar dx,byte 0x2
000001B6  81C28000          add dx,0x80
000001BA  8BF9              mov di,cx
000001BC  C1EF07            shr di,byte 0x7
000001BF  81C77F02          add di,0x27f
000001C3  8A05              mov al,[di]
000001C5  98                cbw
000001C6  F7EA              imul dx
000001C8  C1F807            sar ax,byte 0x7
000001CB  8BF0              mov si,ax
000001CD  8A4380            mov al,[bp+di-0x80]
000001D0  98                cbw
000001D1  03D8              add bx,ax
000001D3  D1FB              sar bx,1
000001D5  B84001            mov ax,0x140
000001D8  F7EB              imul bx
000001DA  03F0              add si,ax
000001DC  B000              mov al,0x0
000001DE  F62B              imul byte [bp+di]
000001E0  80C4C0            add ah,0xc0
000001E3  8AC4              mov al,ah
000001E5  89842080          mov [si-0x7fe0],ax
000001E9  89846081          mov [si-0x7ea0],ax
000001ED  88842280          mov [si-0x7fde],al
000001F1  88846281          mov [si-0x7e9e],al
000001F5  F7C10040          test cx,0x4000
000001F9  7403              jz 0x1fe
000001FB  83F17F            xor cx,byte +0x7f
000001FE  C3                ret
