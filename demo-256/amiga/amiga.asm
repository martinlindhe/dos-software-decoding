00000100  B012              mov al,0x12
00000102  BA0613            mov dx,0x1306
00000105  CD10              int 0x10
00000107  88D3              mov bl,dl
00000109  B73F              mov bh,0x3f
0000010B  B80010            mov ax,0x1000
0000010E  D1E2              shl dx,1
00000110  79F3              jns 0x105
00000112  8EDA              mov ds,dx
00000114  6A9C              push byte -0x64
00000116  6A88              push byte -0x78
00000118  6A02              push byte +0x2
0000011A  6AFE              push byte -0x2
0000011C  B306              mov bl,0x6
0000011E  BADA03            mov dx,0x3da
00000121  EC                in al,dx
00000122  A801              test al,0x1
00000124  75F8              jnz 0x11e
00000126  B2C0              mov dl,0xc0
00000128  B033              mov al,0x33
0000012A  EE                out dx,al
0000012B  96                xchg ax,si
0000012C  2407              and al,0x7
0000012E  EE                out dx,al
0000012F  B032              mov al,0x32
00000131  EE                out dx,al
00000132  93                xchg ax,bx
00000133  EE                out dx,al
00000134  340A              xor al,0xa
00000136  89C3              mov bx,ax
00000138  B2C4              mov dl,0xc4
0000013A  88C4              mov ah,al
0000013C  B002              mov al,0x2
0000013E  EF                out dx,ax
0000013F  B2D4              mov dl,0xd4
00000141  B00D              mov al,0xd
00000143  88CC              mov ah,cl
00000145  EF                out dx,ax
00000146  48                dec ax
00000147  88EC              mov ah,ch
00000149  EF                out dx,ax
0000014A  B2CE              mov dl,0xce
0000014C  B80502            mov ax,0x205
0000014F  EF                out dx,ax
00000150  47                inc di
00000151  57                push di
00000152  BF087D            mov di,0x7d08
00000155  BEC1FF            mov si,0xffc1
00000158  B87F00            mov ax,0x7f
0000015B  BA7D00            mov dx,0x7d
0000015E  50                push ax
0000015F  E88F00            call word 0x1f1
00000162  59                pop cx
00000163  E356              jcxz 0x1bb
00000165  60                pushaw
00000166  B80010            mov ax,0x1000
00000169  89CA              mov dx,cx
0000016B  01D2              add dx,dx
0000016D  52                push dx
0000016E  4A                dec dx
0000016F  BB0880            mov bx,0x8008
00000172  D2C7              rol bh,cl
00000174  49                dec cx
00000175  C1E903            shr cx,byte 0x3
00000178  29CF              sub di,cx
0000017A  59                pop cx
0000017B  50                push ax
0000017C  E87200            call word 0x1f1
0000017F  5E                pop si
00000180  60                pushaw
00000181  93                xchg ax,bx
00000182  BACE03            mov dx,0x3ce
00000185  EF                out dx,ax
00000186  8B4610            mov ax,[bp+0x10]
00000189  C1E006            shl ax,byte 0x6
0000018C  99                cwd
0000018D  F7FE              idiv si
0000018F  034614            add ax,[bp+0x14]
00000192  93                xchg ax,bx
00000193  8B4606            mov ax,[bp+0x6]
00000196  C1E006            shl ax,byte 0x6
00000199  99                cwd
0000019A  F7FE              idiv si
0000019C  034614            add ax,[bp+0x14]
0000019F  31D8              xor ax,bx
000001A1  C0E805            shr al,byte 0x5
000001A4  D6                salc
000001A5  0C04              or al,0x4
000001A7  8605              xchg al,[di]
000001A9  61                popaw
000001AA  FF4E10            dec word [bp+0x10]
000001AD  D0CF              ror bh,1
000001AF  83D700            adc di,byte +0x0
000001B2  E2C7              loop 0x17b
000001B4  61                popaw
000001B5  83C750            add di,byte +0x50
000001B8  46                inc si
000001B9  EBA3              jmp short 0x15e
000001BB  B9A4FE            mov cx,0xfea4
000001BE  96                xchg ax,si
000001BF  8B4608            mov ax,[bp+0x8]
000001C2  99                cwd
000001C3  21D1              and cx,dx
000001C5  0FC1460C          xadd [bp+0xc],ax
000001C9  39C8              cmp ax,cx
000001CB  7503              jnz 0x1d0
000001CD  F75E08            neg word [bp+0x8]
000001D0  B90EFE            mov cx,0xfe0e
000001D3  4D                dec bp
000001D4  4D                dec bp
000001D5  7AE7              jpe 0x1be
000001D7  50                push ax
000001D8  6BCE50            imul cx,si,byte +0x50
000001DB  C1F803            sar ax,byte 0x3
000001DE  01C1              add cx,ax
000001E0  5E                pop si
000001E1  5F                pop di
000001E2  B401              mov ah,0x1
000001E4  CD16              int 0x16
000001E6  0F8434FF          jz word 0x11e
000001EA  B80300            mov ax,0x3
000001ED  CD10              int 0x10
000001EF  CD20              int 0x20
000001F1  01D0              add ax,dx
000001F3  4A                dec dx
000001F4  4A                dec dx
000001F5  89E5              mov bp,sp
000001F7  DF4602            fild word [bp+0x2]
000001FA  D9FA              fsqrt
000001FC  DF5E02            fistp word [bp+0x2]
000001FF  C3                ret
