00000100  B80010            mov ax,0x1000
00000103  8EC0              mov es,ax
00000105  B8C007            mov ax,0x7c0
00000108  8ED8              mov ds,ax
0000010A  BF0001            mov di,0x100
0000010D  31F6              xor si,si
0000010F  B90001            mov cx,0x100
00000112  F3A5              rep movsw
00000114  EA19010010        jmp 0x1000:0x119
00000119  0E                push cs
0000011A  1F                pop ds
0000011B  0E                push cs
0000011C  07                pop es
0000011D  B81300            mov ax,0x13
00000120  CD10              int 0x10
00000122  BF0003            mov di,0x300
00000125  B100              mov cl,0x0
00000127  B03F              mov al,0x3f
00000129  28C8              sub al,cl
0000012B  AA                stosb
0000012C  88CC              mov ah,cl
0000012E  D0E4              shl ah,1
00000130  B03F              mov al,0x3f
00000132  28E0              sub al,ah
00000134  AA                stosb
00000135  AA                stosb
00000136  41                inc cx
00000137  80F920            cmp cl,0x20
0000013A  72EB              jc 0x127
0000013C  B100              mov cl,0x0
0000013E  B01F              mov al,0x1f
00000140  AA                stosb
00000141  88C8              mov al,cl
00000143  AA                stosb
00000144  AA                stosb
00000145  41                inc cx
00000146  80F920            cmp cl,0x20
00000149  72F3              jc 0x13e
0000014B  B100              mov cl,0x0
0000014D  B01F              mov al,0x1f
0000014F  28C8              sub al,cl
00000151  AA                stosb
00000152  AA                stosb
00000153  B01F              mov al,0x1f
00000155  AA                stosb
00000156  41                inc cx
00000157  80F920            cmp cl,0x20
0000015A  72F1              jc 0x14d
0000015C  B100              mov cl,0x0
0000015E  88C8              mov al,cl
00000160  D0E0              shl al,1
00000162  AA                stosb
00000163  AA                stosb
00000164  88C8              mov al,cl
00000166  041F              add al,0x1f
00000168  AA                stosb
00000169  41                inc cx
0000016A  80F920            cmp cl,0x20
0000016D  72EF              jc 0x15e
0000016F  E81B01            call 0x28d
00000172  E84F01            call 0x2c4
00000175  BAC803            mov dx,0x3c8
00000178  B007              mov al,0x7
0000017A  EE                out dx,al
0000017B  42                inc dx
0000017C  B000              mov al,0x0
0000017E  EE                out dx,al
0000017F  EE                out dx,al
00000180  EE                out dx,al
00000181  E8B700            call 0x23b
00000184  E8B400            call 0x23b
00000187  BF6400            mov di,0x64
0000018A  B691              mov dh,0x91
0000018C  8B1EFD02          mov bx,[0x2fd]
00000190  E8DF00            call 0x272
00000193  81C10001          add cx,0x100
00000197  C1E905            shr cx,byte 0x5
0000019A  00CE              add dh,cl
0000019C  B210              mov dl,0x10
0000019E  52                push dx
0000019F  E82500            call 0x1c7
000001A2  5A                pop dx
000001A3  42                inc dx
000001A4  80FAD0            cmp dl,0xd0
000001A7  72F5              jc 0x19e
000001A9  FECE              dec dh
000001AB  4F                dec di
000001AC  75EE              jnz 0x19c
000001AE  FF06FD02          inc word [0x2fd]
000001B2  E8D800            call 0x28d
000001B5  E80C01            call 0x2c4
000001B8  E88B00            call 0x246
000001BB  B401              mov ah,0x1
000001BD  CD16              int 0x16
000001BF  74C3              jz 0x184
000001C1  B400              mov ah,0x0
000001C3  CD16              int 0x16
000001C5  EBFE              jmp short 0x1c5
000001C7  B700              mov bh,0x0
000001C9  88D3              mov bl,dl
000001CB  031EFD02          add bx,[0x2fd]
000001CF  E8A000            call 0x272
000001D2  91                xchg ax,cx
000001D3  B700              mov bh,0x0
000001D5  88D3              mov bl,dl
000001D7  D1E3              shl bx,1
000001D9  031EFD02          add bx,[0x2fd]
000001DD  E89200            call 0x272
000001E0  52                push dx
000001E1  F7E9              imul cx
000001E3  B9000A            mov cx,0xa00
000001E6  F7F9              idiv cx
000001E8  5A                pop dx
000001E9  B700              mov bh,0x0
000001EB  88F3              mov bl,dh
000001ED  D1E3              shl bx,1
000001EF  E87D00            call 0x26f
000001F2  87D3              xchg dx,bx
000001F4  F7E9              imul cx
000001F6  B90001            mov cx,0x100
000001F9  F7F9              idiv cx
000001FB  91                xchg ax,cx
000001FC  88F8              mov al,bh
000001FE  C0E802            shr al,byte 0x2
00000201  00C3              add bl,al
00000203  B0C8              mov al,0xc8
00000205  28F8              sub al,bh
00000207  88C7              mov bh,al
00000209  81C30006          add bx,0x600
0000020D  89DE              mov si,bx
0000020F  B080              mov al,0x80
00000211  F7D9              neg cx
00000213  7812              js 0x227
00000215  41                inc cx
00000216  48                dec ax
00000217  48                dec ax
00000218  81EE0001          sub si,0x100
0000021C  8807              mov [bx],al
0000021E  8804              mov [si],al
00000220  81C30001          add bx,0x100
00000224  E2F0              loop 0x216
00000226  C3                ret
00000227  F7D9              neg cx
00000229  41                inc cx
0000022A  81C60001          add si,0x100
0000022E  8807              mov [bx],al
00000230  8804              mov [si],al
00000232  40                inc ax
00000233  40                inc ax
00000234  81EB0001          sub bx,0x100
00000238  E2F0              loop 0x22a
0000023A  C3                ret
0000023B  BF0006            mov di,0x600
0000023E  31C0              xor ax,ax
00000240  B90064            mov cx,0x6400
00000243  F3AB              rep stosw
00000245  C3                ret
00000246  BADA03            mov dx,0x3da
00000249  EC                in al,dx
0000024A  A808              test al,0x8
0000024C  75FB              jnz 0x249
0000024E  EC                in al,dx
0000024F  A808              test al,0x8
00000251  74FB              jz 0x24e
00000253  06                push es
00000254  B800A0            mov ax,0xa000
00000257  8EC0              mov es,ax
00000259  BF2000            mov di,0x20
0000025C  BE0006            mov si,0x600
0000025F  BAC800            mov dx,0xc8
00000262  B98000            mov cx,0x80
00000265  F3A5              rep movsw
00000267  83C740            add di,byte +0x40
0000026A  4A                dec dx
0000026B  75F5              jnz 0x262
0000026D  07                pop es
0000026E  C3                ret
0000026F  80C310            add bl,0x10
00000272  F6C320            test bl,0x20
00000275  750A              jnz 0x281
00000277  83E31F            and bx,byte +0x1f
0000027A  8A8FDD02          mov cl,[bx+0x2dd]
0000027E  B500              mov ch,0x0
00000280  C3                ret
00000281  83E31F            and bx,byte +0x1f
00000284  8A8FDD02          mov cl,[bx+0x2dd]
00000288  B500              mov ch,0x0
0000028A  F7D9              neg cx
0000028C  C3                ret
0000028D  BE0003            mov si,0x300
00000290  BF8004            mov di,0x480
00000293  B98000            mov cx,0x80
00000296  AC                lodsb
00000297  51                push cx
00000298  8B1EFD02          mov bx,[0x2fd]
0000029C  D1EB              shr bx,1
0000029E  E8CEFF            call 0x26f
000002A1  81C10001          add cx,0x100
000002A5  C1E905            shr cx,byte 0x5
000002A8  00C8              add al,cl
000002AA  59                pop cx
000002AB  AA                stosb
000002AC  AC                lodsb
000002AD  51                push cx
000002AE  8B1EFD02          mov bx,[0x2fd]
000002B2  E8BDFF            call 0x272
000002B5  81C10001          add cx,0x100
000002B9  C1E905            shr cx,byte 0x5
000002BC  00C8              add al,cl
000002BE  59                pop cx
000002BF  AA                stosb
000002C0  A4                movsb
000002C1  E2D3              loop 0x296
000002C3  C3                ret
000002C4  B98000            mov cx,0x80
000002C7  B040              mov al,0x40
000002C9  BE8004            mov si,0x480
000002CC  BAC803            mov dx,0x3c8
000002CF  EE                out dx,al
000002D0  42                inc dx
000002D1  50                push ax
000002D2  AC                lodsb
000002D3  EE                out dx,al
000002D4  AC                lodsb
000002D5  EE                out dx,al
000002D6  AC                lodsb
000002D7  EE                out dx,al
000002D8  58                pop ax
000002D9  40                inc ax
000002DA  E2F0              loop 0x2cc
000002DC  C3                ret
000002DD  0019              add [bx+di],bl
000002DF  324A62            xor cl,[bp+si+0x62]
000002E2  798E              jns 0x272
000002E4  A2B5C6            mov [0xc6b5],al
000002E7  D5E2              aad 0xe2
000002E9  ED                in ax,dx
000002EA  F5                cmc
000002EB  FB                sti
000002EC  FE                db 0xfe
000002ED  FF                db 0xff
000002EE  FE                db 0xfe
000002EF  FB                sti
000002F0  F5                cmc
000002F1  ED                in ax,dx
000002F2  E2D5              loop 0x2c9
000002F4  C6                db 0xc6
000002F5  B5A2              mov ch,0xa2
000002F7  8E7962            mov segr7,[bx+di+0x62]
000002FA  4A                dec dx
000002FB  3219              xor bl,[bx+di]
000002FD  0000              add [bx+si],al
