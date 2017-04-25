00000100  FA                cli
00000101  B013              mov al,0x13
00000103  CD10              int 0x10
00000105  BAC903            mov dx,0x3c9
00000108  EE                out dx,al
00000109  B102              mov cl,0x2
0000010B  51                push cx
0000010C  B140              mov cl,0x40
0000010E  E8CE00            call word 0x1df
00000111  43                inc bx
00000112  E2FA              loop 0x10e
00000114  B140              mov cl,0x40
00000116  4B                dec bx
00000117  E8C500            call word 0x1df
0000011A  E2FA              loop 0x116
0000011C  59                pop cx
0000011D  EE                out dx,al
0000011E  E2EB              loop 0x10b
00000120  BB8F79            mov bx,0x798f
00000123  BD0002            mov bp,0x200
00000126  B8D9FF            mov ax,0xffd9
00000129  F7EB              imul bx
0000012B  03CA              add cx,dx
0000012D  03D9              add bx,cx
0000012F  88BE0002          mov [bp+0x200],bh
00000133  4D                dec bp
00000134  79F0              jns 0x126
00000136  6800A0            push word 0xa000
00000139  07                pop es
0000013A  6800F0            push word 0xf000
0000013D  0FA1              pop fs
0000013F  33FF              xor di,di
00000141  B464              mov ah,0x64
00000143  8BCA              mov cx,dx
00000145  52                push dx
00000146  5A                pop dx
00000147  52                push dx
00000148  50                push ax
00000149  B4A0              mov ah,0xa0
0000014B  50                push ax
0000014C  32FF              xor bh,bh
0000014E  8ADA              mov bl,dl
00000150  02870002          add al,[bx+0x200]
00000154  8ADE              mov bl,dh
00000156  02870002          add al,[bx+0x200]
0000015A  8AD9              mov bl,cl
0000015C  02870002          add al,[bx+0x200]
00000160  8ADD              mov bl,ch
00000162  02870002          add al,[bx+0x200]
00000166  8AE0              mov ah,al
00000168  AB                stosw
00000169  81C73E01          add di,0x13e
0000016D  AB                stosw
0000016E  81EF4001          sub di,0x140
00000172  42                inc dx
00000173  FEC6              inc dh
00000175  58                pop ax
00000176  FECC              dec ah
00000178  75D1              jnz 0x14b
0000017A  81C74001          add di,0x140
0000017E  81C10201          add cx,0x102
00000182  58                pop ax
00000183  FECC              dec ah
00000185  75BF              jnz 0x146
00000187  5A                pop dx
00000188  81EAFF01          sub dx,0x1ff
0000018C  60                pushaw
0000018D  BF91ED            mov di,0xed91
00000190  BEED01            mov si,0x1ed
00000193  B90900            mov cx,0x9
00000196  51                push cx
00000197  57                push di
00000198  AC                lodsb
00000199  98                cbw
0000019A  C1E003            shl ax,byte 0x3
0000019D  BB6EFA            mov bx,0xfa6e
000001A0  03D8              add bx,ax
000001A2  B108              mov cl,0x8
000001A4  51                push cx
000001A5  648A07            mov al,[fs:bx]
000001A8  B108              mov cl,0x8
000001AA  D0E0              shl al,1
000001AC  7304              jnc 0x1b2
000001AE  26800514          add byte [es:di],0x14
000001B2  47                inc di
000001B3  E2F5              loop 0x1aa
000001B5  43                inc bx
000001B6  81C73801          add di,0x138
000001BA  59                pop cx
000001BB  E2E7              loop 0x1a4
000001BD  5F                pop di
000001BE  83C723            add di,byte +0x23
000001C1  59                pop cx
000001C2  E2D2              loop 0x196
000001C4  BADA03            mov dx,0x3da
000001C7  EC                in al,dx
000001C8  2408              and al,0x8
000001CA  75FB              jnz 0x1c7
000001CC  EC                in al,dx
000001CD  2408              and al,0x8
000001CF  74FB              jz 0x1cc
000001D1  61                popaw
000001D2  E460              in al,0x60
000001D4  48                dec ax
000001D5  0F8566FF          jnz word 0x13f
000001D9  B003              mov al,0x3
000001DB  CD10              int 0x10
000001DD  FB                sti
000001DE  C3                ret
000001DF  8AC3              mov al,bl
000001E1  EE                out dx,al
000001E2  EE                out dx,al
000001E3  0407              add al,0x7
000001E5  3C3F              cmp al,0x3f
000001E7  7602              jna 0x1eb
000001E9  B03F              mov al,0x3f
000001EB  EE                out dx,al
000001EC  C3                ret
000001ED  50                push ax
000001EE  4C                dec sp
000001EF  41                inc cx
000001F0  53                push bx
000001F1  4D                dec bp
000001F2  41                inc cx
000001F3  54                push sp
000001F4  49                dec cx
000001F5  43                inc bx
000001F6  206279            and [bp+si+0x79],ah
000001F9  20496F            and [bx+di+0x6f],cl
000001FC  2F                das
000001FD  4D                dec bp
000001FE  54                push sp
000001FF  58                pop ax
