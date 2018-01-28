00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  680090            push word 0x9000
00000107  07                pop es
00000108  31C0              xor ax,ax
0000010A  31FF              xor di,di
0000010C  B9007D            mov cx,0x7d00
0000010F  F3AB              rep stosw
00000111  D906F101          fld dword [0x1f1]
00000115  D91EED01          fstp dword [0x1ed]
00000119  C70605020A00      mov word [0x205],0xa
0000011F  D906F901          fld dword [0x1f9]
00000123  D806F501          fadd dword [0x1f5]
00000127  D91EF901          fstp dword [0x1f9]
0000012B  B90600            mov cx,0x6
0000012E  51                push cx
0000012F  C7060B020000      mov word [0x20b],0x0
00000135  31FF              xor di,di
00000137  A10902            mov ax,[0x209]
0000013A  2B060502          sub ax,[0x205]
0000013E  8B0E0502          mov cx,[0x205]
00000142  69C90200          imul cx,cx,word 0x2
00000146  8B1E0702          mov bx,[0x207]
0000014A  2B1E0B02          sub bx,[0x20b]
0000014E  89C7              mov di,ax
00000150  69FF4001          imul di,di,word 0x140
00000154  01DF              add di,bx
00000156  26880D            mov [es:di],cl
00000159  031E0B02          add bx,[0x20b]
0000015D  031E0B02          add bx,[0x20b]
00000161  89C7              mov di,ax
00000163  69FF4001          imul di,di,word 0x140
00000167  01DF              add di,bx
00000169  26880D            mov [es:di],cl
0000016C  8B1E0B02          mov bx,[0x20b]
00000170  43                inc bx
00000171  891E0B02          mov [0x20b],bx
00000175  40                inc ax
00000176  E2CE              loop 0x146
00000178  8B1E0702          mov bx,[0x207]
0000017C  031E0B02          add bx,[0x20b]
00000180  8B0E0B02          mov cx,[0x20b]
00000184  69C90200          imul cx,cx,word 0x2
00000188  41                inc cx
00000189  89C7              mov di,ax
0000018B  69FF4001          imul di,di,word 0x140
0000018F  01DF              add di,bx
00000191  26880D            mov [es:di],cl
00000194  4B                dec bx
00000195  E2F2              loop 0x189
00000197  59                pop cx
00000198  D906ED01          fld dword [0x1ed]
0000019C  D806F101          fadd dword [0x1f1]
000001A0  D91EED01          fstp dword [0x1ed]
000001A4  810605020400      add word [0x205],0x4
000001AA  D906F901          fld dword [0x1f9]
000001AE  D9FB              fsincos
000001B0  D80EED01          fmul dword [0x1ed]
000001B4  D806FD01          fadd dword [0x1fd]
000001B8  DF1E0902          fistp word [0x209]
000001BC  D80EED01          fmul dword [0x1ed]
000001C0  D8060102          fadd dword [0x201]
000001C4  DF1E0702          fistp word [0x207]
000001C8  49                dec cx
000001C9  81F90000          cmp cx,0x0
000001CD  0F855DFF          jnz near 0x12e
000001D1  1E                push ds
000001D2  6800A0            push word 0xa000
000001D5  680090            push word 0x9000
000001D8  1F                pop ds
000001D9  07                pop es
000001DA  31FF              xor di,di
000001DC  31F6              xor si,si
000001DE  B9007D            mov cx,0x7d00
000001E1  F3A5              rep movsw
000001E3  1F                pop ds
000001E4  B401              mov ah,0x1
000001E6  CD16              int 0x16
000001E8  0F8418FF          jz near 0x104
000001EC  C3                ret
000001ED  0000              add [bx+si],al
000001EF  0000              add [bx+si],al
000001F1  0000              add [bx+si],al
000001F3  0041A6            add [bx+di-0x5a],al
000001F6  9BC43B            wait les di,[bp+di]
000001F9  0000              add [bx+si],al
000001FB  0000              add [bx+si],al
000001FD  0000              add [bx+si],al
000001FF  C8420000          enter 0x42,0x0
00000203  204300            and [bp+di+0x0],al
00000206  0000              add [bx+si],al
00000208  0000              add [bx+si],al
0000020A  0000              add [bx+si],al
0000020C  00                db 0x00
