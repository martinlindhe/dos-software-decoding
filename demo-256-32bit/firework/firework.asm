00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC803            mov dx,0x3c8
00000107  6633C0            xor eax,eax
0000010A  EE                out dx,al
0000010B  42                inc dx
0000010C  B4A0              mov ah,0xa0
0000010E  B90004            mov cx,0x400
00000111  50                push ax
00000112  66C1C808          ror eax,byte 0x8
00000116  3C3F              cmp al,0x3f
00000118  7205              jc 0x11f
0000011A  B03F              mov al,0x3f
0000011C  80C404            add ah,0x4
0000011F  F6C103            test cl,0x3
00000122  7401              jz 0x125
00000124  EE                out dx,al
00000125  E2EB              loop 0x112
00000127  8EC0              mov es,ax
00000129  50                push ax
0000012A  33C0              xor ax,ax
0000012C  AA                stosb
0000012D  E2FD              loop 0x12c
0000012F  B460              mov ah,0x60
00000131  8EC0              mov es,ax
00000133  8EE0              mov fs,ax
00000135  AA                stosb
00000136  E2FD              loop 0x135
00000138  1F                pop ds
00000139  07                pop es
0000013A  06                push es
0000013B  1E                push ds
0000013C  07                pop es
0000013D  0FA0              push fs
0000013F  1F                pop ds
00000140  42                inc dx
00000141  F6C203            test dl,0x3
00000144  7540              jnz 0x186
00000146  69ED9502          imul bp,bp,word 0x295
0000014A  8BC5              mov ax,bp
0000014C  D1F8              sar ax,1
0000014E  69ED9502          imul bp,bp,word 0x295
00000152  8BFD              mov di,bp
00000154  D1FF              sar di,1
00000156  B501              mov ch,0x1
00000158  69ED9502          imul bp,bp,word 0x295
0000015C  892F              mov [bx],bp
0000015E  C13F06            sar word [bx],byte 0x6
00000161  894F02            mov [bx+0x2],cx
00000164  DB07              fild dword [bx]
00000166  D9FE              fsin
00000168  894704            mov [bx+0x4],ax
0000016B  DE0F              fimul word [bx]
0000016D  DB07              fild dword [bx]
0000016F  D9FF              fcos
00000171  897F06            mov [bx+0x6],di
00000174  DE0F              fimul word [bx]
00000176  C647083A          mov byte [bx+0x8],0x3a
0000017A  DF1F              fistp word [bx]
0000017C  DF5F02            fistp word [bx+0x2]
0000017F  D127              shl word [bx],1
00000181  83C310            add bx,byte +0x10
00000184  E2D2              loop 0x158
00000186  E86900            call word 0x1f2
00000189  B510              mov ch,0x10
0000018B  830410            add word [si],byte +0x10
0000018E  E85600            call word 0x1e7
00000191  E85300            call word 0x1e7
00000194  46                inc si
00000195  AC                lodsb
00000196  98                cbw
00000197  69F84001          imul di,ax,word 0x140
0000019B  AD                lodsw
0000019C  7212              jc 0x1b0
0000019E  C1F807            sar ax,byte 0x7
000001A1  05607D            add ax,0x7d60
000001A4  03F8              add di,ax
000001A6  8A04              mov al,[si]
000001A8  FE0C              dec byte [si]
000001AA  263A05            cmp al,[es:di]
000001AD  7E01              jng 0x1b0
000001AF  AA                stosb
000001B0  83C608            add si,byte +0x8
000001B3  E2D6              loop 0x18b
000001B5  06                push es
000001B6  1F                pop ds
000001B7  07                pop es
000001B8  AC                lodsb
000001B9  024401            add al,[si+0x1]
000001BC  0284C0FE          add al,[si-0x140]
000001C0  02844001          add al,[si+0x140]
000001C4  C0E802            shr al,byte 0x2
000001C7  7406              jz 0x1cf
000001C9  F6C201            test dl,0x1
000001CC  7501              jnz 0x1cf
000001CE  48                dec ax
000001CF  8804              mov [si],al
000001D1  E2E5              loop 0x1b8
000001D3  E81C00            call word 0x1f2
000001D6  33FF              xor di,di
000001D8  B580              mov ch,0x80
000001DA  F3A5              rep movsw
000001DC  E460              in al,0x60
000001DE  48                dec ax
000001DF  0F8557FF          jnz word 0x13a
000001E3  B003              mov al,0x3
000001E5  CD10              int 0x10
000001E7  AD                lodsw
000001E8  014402            add [si+0x2],ax
000001EB  C1F804            sar ax,byte 0x4
000001EE  2944FE            sub [si-0x2],ax
000001F1  C3                ret
000001F2  52                push dx
000001F3  BADA03            mov dx,0x3da
000001F6  B49F              mov ah,0x9f
000001F8  EC                in al,dx
000001F9  250804            and ax,0x408
000001FC  75F9              jnz 0x1f7
000001FE  5A                pop dx
000001FF  C3                ret
