00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  6800A0            push word 0xa000
00000107  07                pop es
00000108  B201              mov dl,0x1
0000010A  B403              mov ah,0x3
0000010C  60                pushaw
0000010D  B94000            mov cx,0x40
00000110  BF4000            mov di,0x40
00000113  60                pushaw
00000114  83E920            sub cx,byte +0x20
00000117  83EF20            sub di,byte +0x20
0000011A  33F6              xor si,si
0000011C  B264              mov dl,0x64
0000011E  81FEE803          cmp si,0x3e8
00000122  7F25              jg 0x149
00000124  8BEF              mov bp,di
00000126  0FAFED            imul bp,bp
00000129  8BC1              mov ax,cx
0000012B  F6E8              imul al
0000012D  8EE8              mov gs,ax
0000012F  03C5              add ax,bp
00000131  96                xchg ax,si
00000132  8CE8              mov ax,gs
00000134  2BE8              sub bp,ax
00000136  C1FD04            sar bp,byte 0x4
00000139  03EB              add bp,bx
0000013B  0FAFCF            imul cx,di
0000013E  C1F903            sar cx,byte 0x3
00000141  03CB              add cx,bx
00000143  8BFD              mov di,bp
00000145  FECA              dec dl
00000147  75D5              jnz 0x11e
00000149  8EE2              mov fs,dx
0000014B  61                popaw
0000014C  8CE2              mov dx,fs
0000014E  80C2C8            add dl,0xc8
00000151  88940002          mov [si+0x200],dl
00000155  46                inc si
00000156  4F                dec di
00000157  75BA              jnz 0x113
00000159  E2B5              loop 0x110
0000015B  61                popaw
0000015C  33ED              xor bp,bp
0000015E  33F6              xor si,si
00000160  60                pushaw
00000161  D906F801          fld dword [0x1f8]
00000165  DF05              fild word [di]
00000167  DEC9              fmulp st1
00000169  D9C0              fld st0
0000016B  D9FF              fcos
0000016D  DE0E0E01          fimul word [0x10e]
00000171  DF1C              fistp word [si]
00000173  8B34              mov si,[si]
00000175  0FAFF3            imul si,bx
00000178  D806FC01          fadd dword [0x1fc]
0000017C  D9FF              fcos
0000017E  DE0E0E01          fimul word [0x10e]
00000182  DF5E00            fistp word [bp+0x0]
00000185  0FAF5E00          imul bx,[bp+0x0]
00000189  8BC3              mov ax,bx
0000018B  69DBA000          imul bx,bx,word 0xa0
0000018F  8BEE              mov bp,si
00000191  6BED64            imul bp,bp,byte +0x64
00000194  03EB              add bp,bx
00000196  8BCE              mov cx,si
00000198  F7D9              neg cx
0000019A  69C9A000          imul cx,cx,word 0xa0
0000019E  8BD0              mov dx,ax
000001A0  6BD264            imul dx,dx,byte +0x64
000001A3  03D1              add dx,cx
000001A5  33FF              xor di,di
000001A7  55                push bp
000001A8  52                push dx
000001A9  B94001            mov cx,0x140
000001AC  51                push cx
000001AD  2BE8              sub bp,ax
000001AF  8BCD              mov cx,bp
000001B1  C1E90A            shr cx,byte 0xa
000001B4  83C120            add cx,byte +0x20
000001B7  83E13F            and cx,byte +0x3f
000001BA  F7DE              neg si
000001BC  2BD6              sub dx,si
000001BE  F7DE              neg si
000001C0  8BDA              mov bx,dx
000001C2  C1EB0A            shr bx,byte 0xa
000001C5  83E33F            and bx,byte +0x3f
000001C8  6BDB40            imul bx,bx,byte +0x40
000001CB  03D9              add bx,cx
000001CD  50                push ax
000001CE  8A870002          mov al,[bx+0x200]
000001D2  AA                stosb
000001D3  58                pop ax
000001D4  59                pop cx
000001D5  E2D5              loop 0x1ac
000001D7  5A                pop dx
000001D8  5D                pop bp
000001D9  2BEE              sub bp,si
000001DB  2BD0              sub dx,ax
000001DD  81FF00FA          cmp di,0xfa00
000001E1  75C4              jnz 0x1a7
000001E3  61                popaw
000001E4  FF0D              dec word [di]
000001E6  02DA              add bl,dl
000001E8  7405              jz 0x1ef
000001EA  80FB46            cmp bl,0x46
000001ED  7502              jnz 0x1f1
000001EF  F6DA              neg dl
000001F1  48                dec ax
000001F2  0F8516FF          jnz word 0x10c
000001F6  CD20              int 0x20
000001F8  A6                cmpsb
000001F9  9BC43C            wait les di,[si]
000001FC  C3                ret
000001FD  F5                cmc
000001FE  C8                db 0xc8
000001FF  3F                aas
