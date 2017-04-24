00000100  BB8F79            mov bx,0x798f
00000103  33C9              xor cx,cx
00000105  BD0001            mov bp,0x100
00000108  B8D9FF            mov ax,0xffd9
0000010B  F7EB              imul bx
0000010D  03CA              add cx,dx
0000010F  03D9              add bx,cx
00000111  3E88BE0002        mov [ds:bp+0x200],bh
00000116  3E8086000280      add byte [ds:bp+0x200],0x80
0000011C  4D                dec bp
0000011D  75E9              jnz 0x108
0000011F  B409              mov ah,0x9
00000121  BAE001            mov dx,0x1e0
00000124  CD21              int 0x21
00000126  B401              mov ah,0x1
00000128  CD16              int 0x16
0000012A  74FA              jz 0x126
0000012C  6800A0            push word 0xa000
0000012F  07                pop es
00000130  B81300            mov ax,0x13
00000133  CD10              int 0x10
00000135  BAC803            mov dx,0x3c8
00000138  32C0              xor al,al
0000013A  EE                out dx,al
0000013B  42                inc dx
0000013C  32DB              xor bl,bl
0000013E  B94000            mov cx,0x40
00000141  32C0              xor al,al
00000143  EE                out dx,al
00000144  8AC3              mov al,bl
00000146  0440              add al,0x40
00000148  EE                out dx,al
00000149  32C0              xor al,al
0000014B  EE                out dx,al
0000014C  FEC3              inc bl
0000014E  E2F1              loop 0x141
00000150  B94000            mov cx,0x40
00000153  32DB              xor bl,bl
00000155  B03F              mov al,0x3f
00000157  EE                out dx,al
00000158  2AC3              sub al,bl
0000015A  EE                out dx,al
0000015B  B00E              mov al,0xe
0000015D  EE                out dx,al
0000015E  FEC3              inc bl
00000160  E2F3              loop 0x155
00000162  33D2              xor dx,dx
00000164  C606000300        mov byte [0x300],0x0
00000169  C606010300        mov byte [0x301],0x0
0000016E  33FF              xor di,di
00000170  8AE6              mov ah,dh
00000172  8AC2              mov al,dl
00000174  B9C800            mov cx,0xc8
00000177  51                push cx
00000178  8A3E0003          mov bh,[0x300]
0000017C  8A1E0103          mov bl,[0x301]
00000180  B94001            mov cx,0x140
00000183  50                push ax
00000184  E460              in al,0x60
00000186  3C01              cmp al,0x1
00000188  58                pop ax
00000189  744E              jz 0x1d9
0000018B  52                push dx
0000018C  8BF0              mov si,ax
0000018E  56                push si
0000018F  C1EE08            shr si,byte 0x8
00000192  8A940002          mov dl,[si+0x200]
00000196  5E                pop si
00000197  81E6FF00          and si,0xff
0000019B  02940002          add dl,[si+0x200]
0000019F  8BF3              mov si,bx
000001A1  56                push si
000001A2  C1EE08            shr si,byte 0x8
000001A5  02940002          add dl,[si+0x200]
000001A9  5E                pop si
000001AA  81E6FF00          and si,0xff
000001AE  02940002          add dl,[si+0x200]
000001B2  268815            mov [es:di],dl
000001B5  5A                pop dx
000001B6  47                inc di
000001B7  8006010306        add byte [0x301],0x6
000001BC  FEC7              inc bh
000001BE  80C302            add bl,0x2
000001C1  E2C0              loop 0x183
000001C3  80C402            add ah,0x2
000001C6  FEC0              inc al
000001C8  59                pop cx
000001C9  E2AC              loop 0x177
000001CB  80C603            add dh,0x3
000001CE  8006000305        add byte [0x300],0x5
000001D3  FE060103          inc byte [0x301]
000001D7  EB95              jmp short 0x16e
000001D9  B80300            mov ax,0x3
000001DC  CD10              int 0x10
000001DE  CD20              int 0x20
000001E0  0A0D              or cl,[di]
000001E2  50                push ax
000001E3  7265              jc 0x24a
000001E5  7373              jnc 0x25a
000001E7  20656E            and [di+0x6e],ah
000001EA  7465              jz 0x251
000001EC  7220              jc 0x20e
000001EE  666F              outsd
000001F0  7220              jc 0x212
000001F2  43                inc bx
000001F3  4F                dec di
000001F4  4E                dec si
000001F5  46                inc si
000001F6  55                push bp
000001F7  53                push bx
000001F8  49                dec cx
000001F9  4F                dec di
000001FA  4E                dec si
000001FB  2121              and [bx+di],sp
000001FD  0A0D              or cl,[di]
000001FF  24                db 0x24
