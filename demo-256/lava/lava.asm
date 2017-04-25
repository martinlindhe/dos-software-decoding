00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  B770              mov bh,0x70
00000106  8EE3              mov fs,bx
00000108  8EC3              mov es,bx
0000010A  B5FA              mov ch,0xfa
0000010C  F3AA              rep stosb
0000010E  B760              mov bh,0x60
00000110  8EEB              mov gs,bx
00000112  B1FF              mov cl,0xff
00000114  8AC1              mov al,cl
00000116  BAC803            mov dx,0x3c8
00000119  EE                out dx,al
0000011A  42                inc dx
0000011B  F6D8              neg al
0000011D  C0E802            shr al,byte 0x2
00000120  B303              mov bl,0x3
00000122  EE                out dx,al
00000123  F6E0              mul al
00000125  C1E806            shr ax,byte 0x6
00000128  FECB              dec bl
0000012A  75F6              jnz 0x122
0000012C  E2E6              loop 0x114
0000012E  0FA8              push gs
00000130  07                pop es
00000131  BDC800            mov bp,0xc8
00000134  33FF              xor di,di
00000136  B504              mov ch,0x4
00000138  E8B100            call word 0x1ec
0000013B  0432              add al,0x32
0000013D  C1E005            shl ax,byte 0x5
00000140  AB                stosw
00000141  E8A800            call word 0x1ec
00000144  0428              add al,0x28
00000146  C1E005            shl ax,byte 0x5
00000149  AB                stosw
0000014A  E89F00            call word 0x1ec
0000014D  AB                stosw
0000014E  E89B00            call word 0x1ec
00000151  AB                stosw
00000152  E2E4              loop 0x138
00000154  1E                push ds
00000155  0FA8              push gs
00000157  1F                pop ds
00000158  B504              mov ch,0x4
0000015A  8B4404            mov ax,[si+0x4]
0000015D  0104              add [si],ax
0000015F  8B4402            mov ax,[si+0x2]
00000162  034406            add ax,[si+0x6]
00000165  894402            mov [si+0x2],ax
00000168  C1E805            shr ax,byte 0x5
0000016B  8BF8              mov di,ax
0000016D  69FF4001          imul di,di,word 0x140
00000171  3C01              cmp al,0x1
00000173  770B              ja 0x180
00000175  D17C04            sar word [si+0x4],1
00000178  D17C06            sar word [si+0x6],1
0000017B  F75C06            neg word [si+0x6]
0000017E  EB17              jmp short 0x197
00000180  8B04              mov ax,[si]
00000182  C1E805            shr ax,byte 0x5
00000185  3D3F01            cmp ax,0x13f
00000188  770D              ja 0x197
0000018A  3C01              cmp al,0x1
0000018C  7209              jc 0x197
0000018E  FF4404            inc word [si+0x4]
00000191  03F8              add di,ax
00000193  64C605FF          mov byte [fs:di],0xff
00000197  83C608            add si,byte +0x8
0000019A  E2BE              loop 0x15a
0000019C  0E                push cs
0000019D  1F                pop ds
0000019E  BAF601            mov dx,0x1f6
000001A1  B409              mov ah,0x9
000001A3  CD21              int 0x21
000001A5  0FA0              push fs
000001A7  1F                pop ds
000001A8  BF8002            mov di,0x280
000001AB  B5F5              mov ch,0xf5
000001AD  0FB645FF          movzx ax,[di-0x1]
000001B1  0FB65D01          movzx bx,[di+0x1]
000001B5  03C3              add ax,bx
000001B7  8A9DC0FE          mov bl,[di-0x140]
000001BB  03C3              add ax,bx
000001BD  8A9D4001          mov bl,[di+0x140]
000001C1  03C3              add ax,bx
000001C3  C1E802            shr ax,byte 0x2
000001C6  8805              mov [di],al
000001C8  47                inc di
000001C9  E2E2              loop 0x1ad
000001CB  B5A0              mov ch,0xa0
000001CD  8EC1              mov es,cx
000001CF  BE000A            mov si,0xa00
000001D2  8BFE              mov di,si
000001D4  B5EB              mov ch,0xeb
000001D6  F3A4              rep movsb
000001D8  1F                pop ds
000001D9  4D                dec bp
000001DA  0F8450FF          jz word 0x12e
000001DE  E460              in al,0x60
000001E0  FEC8              dec al
000001E2  0F856EFF          jnz word 0x154
000001E6  B80300            mov ax,0x3
000001E9  CD10              int 0x10
000001EB  C3                ret
000001EC  69ED3D6E          imul bp,bp,word 0x6e3d
000001F0  8BC5              mov ax,bp
000001F2  C1F809            sar ax,byte 0x9
000001F5  C3                ret
000001F6  43                inc bx
000001F7  6F                outsw
000001F8  4E                dec si
000001F9  54                push sp
000001FA  52                push dx
000001FB  41                inc cx
000001FC  43                inc bx
000001FD  54                push sp
000001FE  0D                db 0x0d
000001FF  24                db 0x24
