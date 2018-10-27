00000100  8CC8              mov ax,cs
00000102  050010            add ax,0x1000
00000105  2EA30202          mov [cs:0x202],ax
00000109  050010            add ax,0x1000
0000010C  2EA30402          mov [cs:0x204],ax
00000110  8EC0              mov es,ax
00000112  B89C7D            mov ax,0x7d9c
00000115  26A30000          mov [es:0x0],ax
00000119  B81300            mov ax,0x13
0000011C  CD10              int 0x10
0000011E  BAC803            mov dx,0x3c8
00000121  B000              mov al,0x0
00000123  EE                out dx,al
00000124  42                inc dx
00000125  B94000            mov cx,0x40
00000128  B040              mov al,0x40
0000012A  2AC1              sub al,cl
0000012C  D0E0              shl al,1
0000012E  EE                out dx,al
0000012F  EE                out dx,al
00000130  D0E8              shr al,1
00000132  EE                out dx,al
00000133  E2F3              loop 0x128
00000135  B180              mov cl,0x80
00000137  B000              mov al,0x0
00000139  EE                out dx,al
0000013A  EE                out dx,al
0000013B  8AC1              mov al,cl
0000013D  D0E8              shr al,1
0000013F  EE                out dx,al
00000140  E2F5              loop 0x137
00000142  B800A0            mov ax,0xa000
00000145  8ED8              mov ds,ax
00000147  33C0              xor ax,ax
00000149  8BF0              mov si,ax
0000014B  8BF8              mov di,ax
0000014D  BB0A00            mov bx,0xa
00000150  AC                lodsb
00000151  A801              test al,0x1
00000153  7503              jnz 0x158
00000155  83C703            add di,byte +0x3
00000158  81C74001          add di,0x140
0000015C  46                inc si
0000015D  FE05              inc byte [di]
0000015F  E2EF              loop 0x150
00000161  4B                dec bx
00000162  75EC              jnz 0x150
00000164  BF0000            mov di,0x0
00000167  B87878            mov ax,0x7878
0000016A  B9A000            mov cx,0xa0
0000016D  0105              add [di],ax
0000016F  83C702            add di,byte +0x2
00000172  E2F9              loop 0x16d
00000174  2D0101            sub ax,0x101
00000177  75F1              jnz 0x16a
00000179  BF0200            mov di,0x2
0000017C  83FF00            cmp di,byte +0x0
0000017F  744C              jz 0x1cd
00000181  2E893E0002        mov [cs:0x200],di
00000186  2EA10402          mov ax,[cs:0x204]
0000018A  2E87060202        xchg ax,[cs:0x202]
0000018F  2EA30402          mov [cs:0x204],ax
00000193  BF0000            mov di,0x0
00000196  2E8B360002        mov si,[cs:0x200]
0000019B  83EE02            sub si,byte +0x2
0000019E  7227              jc 0x1c7
000001A0  2E89360002        mov [cs:0x200],si
000001A5  2E8E060202        mov es,[cs:0x202]
000001AA  268B34            mov si,[es:si]
000001AD  BB0100            mov bx,0x1
000001B0  E82000            call word 0x1d3
000001B3  BB4001            mov bx,0x140
000001B6  E81A00            call word 0x1d3
000001B9  BBFFFF            mov bx,0xffff
000001BC  E81400            call word 0x1d3
000001BF  BBC0FE            mov bx,0xfec0
000001C2  E80E00            call word 0x1d3
000001C5  EBCF              jmp short 0x196
000001C7  E460              in al,0x60          ; keyboard controller data output buffer
000001C9  A880              test al,0x80        ; is bit 7 set ?
000001CB  75AF              jnz 0x17c
000001CD  B8070C            mov ax,0xc07    ; FLUSH BUFFER AND READ STANDARD INPUT (wait for keypress)
000001D0  CD21              int 0x21
000001D2  C3                ret     ; exits back to OS XXX??

000001D3  8A04              mov al,[si]
000001D5  03DE              add bx,si
000001D7  8A27              mov ah,[bx]
000001D9  2AE0              sub ah,al
000001DB  7422              jz 0x1ff
000001DD  80FC01            cmp ah,0x1
000001E0  741D              jz 0x1ff
000001E2  80FCFF            cmp ah,0xff
000001E5  7418              jz 0x1ff
000001E7  7907              jns 0x1f0
000001E9  FE0C              dec byte [si]
000001EB  FE07              inc byte [bx]
000001ED  EB05              jmp short 0x1f4
000001EF  90                nop
000001F0  FE04              inc byte [si]
000001F2  FE0F              dec byte [bx]
000001F4  2E8E060402        mov es,[cs:0x204]
000001F9  26891D            mov [es:di],bx
000001FC  83C702            add di,byte +0x2
000001FF  C3                ret
