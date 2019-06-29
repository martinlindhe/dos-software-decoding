00000100  FC                cld
00000101  80C611            add dh,0x11
00000104  52                push dx
00000105  B013              mov al,0x13
00000107  CD10              int 0x10
00000109  BAC803            mov dx,0x3c8
0000010C  B80101            mov ax,0x101
0000010F  EE                out dx,al
00000110  42                inc dx
00000111  8BD8              mov bx,ax
00000113  BD8401            mov bp,0x184
00000116  B11F              mov cl,0x1f
00000118  8AC4              mov al,ah
0000011A  026600            add ah,[bp+0x0]
0000011D  EE                out dx,al
0000011E  8AC7              mov al,bh
00000120  027E01            add bh,[bp+0x1]
00000123  EE                out dx,al
00000124  8AC3              mov al,bl
00000126  025E02            add bl,[bp+0x2]
00000129  EE                out dx,al
0000012A  E2EC              loop 0x118
0000012C  83C503            add bp,byte +0x3
0000012F  807E00F7          cmp byte [bp+0x0],0xf7
00000133  75E1              jnz 0x116
00000135  1F                pop ds
00000136  B83011            mov ax,0x1130
00000139  B706              mov bh,0x6
0000013B  CD10              int 0x10
0000013D  06                push es
0000013E  0FA9              pop gs
00000140  6800A0            push word 0xa000
00000143  07                pop es
00000144  B582              mov ch,0x82
00000146  33C0              xor ax,ax
00000148  8BF8              mov di,ax
0000014A  8905              mov [di],ax
0000014C  A7                cmpsw
0000014D  E2FB              loop 0x14a
0000014F  892E37FF          mov [0xff37],bp
00000153  BA044E            mov dx,0x4e04
00000156  BDFC80            mov bp,0x80fc
00000159  80FE44            cmp dh,0x44
0000015C  0F878000          ja near 0x1e0
00000160  60                pusha
00000161  1E                push ds
00000162  0E                push cs
00000163  1F                pop ds
00000164  BF8001            mov di,0x180
00000167  90                nop
00000168  BBC300            mov bx,0xc3
0000016B  B90400            mov cx,0x4
0000016E  47                inc di
0000016F  47                inc di
00000170  81F3FC01          xor bx,0x1fc
00000174  8B05              mov ax,[di]
00000176  2B857401          sub ax,[di+0x174]
0000017A  3BC3              cmp ax,bx
0000017C  771B              ja 0x199
0000017E  8905              mov [di],ax
00000180  EB1B              jmp short 0x19d
00000182  640002            add [fs:bp+si],al
00000185  0000              add [bx+si],al
00000187  0002              add [bp+si],al
00000189  0000              add [bx+si],al
0000018B  0002              add [bp+si],al
0000018D  0000              add [bx+si],al
0000018F  00FF              add bh,bh
00000191  FF00              inc word [bx+si]
00000193  0000              add [bx+si],al
00000195  0000              add [bx+si],al
00000197  0000              add [bx+si],al
00000199  F79D7401          neg word [di+0x174]
0000019D  E2CF              loop 0x16e
0000019F  8B1E8201          mov bx,[0x182]
000001A3  A18401            mov ax,[0x184]
000001A6  8B168601          mov dx,[0x186]
000001AA  8B368801          mov si,[0x188]
000001AE  1F                pop ds
000001AF  8BF8              mov di,ax
000001B1  69FF4001          imul di,di,word 0x140
000001B5  03FB              add di,bx
000001B7  2BF0              sub si,ax
000001B9  2BD3              sub dx,bx
000001BB  D1FA              sar dx,1
000001BD  D1FE              sar si,1
000001BF  33C0              xor ax,ax
000001C1  8BD8              mov bx,ax
000001C3  B9FF00            mov cx,0xff
000001C6  03C6              add ax,si
000001C8  03DA              add bx,dx
000001CA  60                pusha
000001CB  C1F807            sar ax,byte 0x7
000001CE  C1FB07            sar bx,byte 0x7
000001D1  69C04001          imul ax,ax,word 0x140
000001D5  03D8              add bx,ax
000001D7  E80701            call 0x2e1
000001DA  8801              mov [bx+di],al
000001DC  61                popa
000001DD  E2E7              loop 0x1c6
000001DF  61                popa
000001E0  B980F7            mov cx,0xf780
000001E3  BB3B01            mov bx,0x13b
000001E6  8A07              mov al,[bx]
000001E8  024701            add al,[bx+0x1]
000001EB  80D400            adc ah,0x0
000001EE  0247FF            add al,[bx-0x1]
000001F1  80D400            adc ah,0x0
000001F4  02874001          add al,[bx+0x140]
000001F8  80D400            adc ah,0x0
000001FB  C1E802            shr ax,byte 0x2
000001FE  7401              jz 0x201
00000200  48                dec ax
00000201  8887C0FE          mov [bx-0x140],al
00000205  43                inc bx
00000206  E2DE              loop 0x1e6
00000208  52                push dx
00000209  BADA03            mov dx,0x3da
0000020C  EC                in al,dx
0000020D  A808              test al,0x8
0000020F  75FB              jnz 0x20c
00000211  EC                in al,dx
00000212  A808              test al,0x8
00000214  74FB              jz 0x211
00000216  5A                pop dx
00000217  B9803E            mov cx,0x3e80
0000021A  666A00            o32 push byte +0x0
0000021D  5F                pop di
0000021E  5E                pop si
0000021F  F366A5            rep movsd
00000222  BE6D02            mov si,0x26d
00000225  BB5846            mov bx,0x4658
00000228  81FAC046          cmp dx,0x46c0
0000022C  7702              ja 0x230
0000022E  8BDA              mov bx,dx
00000230  4A                dec dx
00000231  EB51              jmp short 0x284
00000233  60                pusha
00000234  B410              mov ah,0x10
00000236  F6E4              mul ah
00000238  030637FF          add ax,[0xff37]
0000023C  8BF0              mov si,ax
0000023E  B91000            mov cx,0x10
00000241  33C0              xor ax,ax
00000243  65AC              gs lodsb
00000245  51                push cx
00000246  B90800            mov cx,0x8
00000249  D0E0              shl al,1
0000024B  7303              jnc 0x250
0000024D  800F60            or byte [bx],0x60
00000250  83C304            add bx,byte +0x4
00000253  E2F4              loop 0x249
00000255  59                pop cx
00000256  81C3E004          add bx,0x4e0
0000025A  E2E7              loop 0x243
0000025C  61                popa
0000025D  83C323            add bx,byte +0x23
00000260  81FAF449          cmp dx,0x49f4
00000264  771E              ja 0x284
00000266  F6C21F            test dl,0x1f
00000269  7519              jnz 0x284
0000026B  EB0D              jmp short 0x27a
0000026D  41                inc cx
0000026E  61                popa
0000026F  61                popa
00000270  61                popa
00000271  00696E            add [bx+di+0x6e],ch
00000274  65004669          add [gs:bp+0x69],al
00000278  7265              jc 0x2df
0000027A  2E384408          cmp [cs:si+0x8],al
0000027E  7604              jna 0x284
00000280  2EFE44FF          inc byte [cs:si-0x1]
00000284  80FE4A            cmp dh,0x4a
00000287  7718              ja 0x2a1
00000289  80FE46            cmp dh,0x46
0000028C  750D              jnz 0x29b
0000028E  F6C2C0            test dl,0xc0
00000291  7408              jz 0x29b
00000293  2EC60671024C      mov byte [cs:0x271],0x4c
00000299  EB06              jmp short 0x2a1
0000029B  2EAC              cs lodsb
0000029D  0AC0              or al,al
0000029F  7592              jnz 0x233
000002A1  E83D00            call 0x2e1
000002A4  8BD8              mov bx,ax
000002A6  C607FF            mov byte [bx],0xff
000002A9  C6874001FF        mov byte [bx+0x140],0xff
000002AE  8BCA              mov cx,dx
000002B0  83E941            sub cx,byte +0x41
000002B3  80FD4B            cmp ch,0x4b
000002B6  771C              ja 0x2d4
000002B8  BB004C            mov bx,0x4c00
000002BB  2BD9              sub bx,cx
000002BD  81FB4001          cmp bx,0x140
000002C1  7605              jna 0x2c8
000002C3  90                nop
000002C4  90                nop
000002C5  BB4001            mov bx,0x140
000002C8  E81600            call 0x2e1
000002CB  247F              and al,0x7f
000002CD  8887C0F3          mov [bx-0xc40],al
000002D1  4B                dec bx
000002D2  75F4              jnz 0x2c8
000002D4  B401              mov ah,0x1
000002D6  CD16              int 0x16
000002D8  0F847DFE          jz near 0x159
000002DC  B80300            mov ax,0x3
000002DF  CD10              int 0x10
000002E1  6669C58B2F9906    imul eax,ebp,dword 0x6992f8b
000002E8  668BE8            mov ebp,eax
000002EB  66C1D819          rcr eax,byte 0x19
000002EF  3CD9              cmp al,0xd9
000002F1  7202              jc 0x2f5
000002F3  3480              xor al,0x80
000002F5  C3                ret
000002F6  0100              add [bx+si],ax
000002F8  FE                db 0xfe
000002F9  FF                db 0xff
000002FA  FE                db 0xfe
000002FB  FF                db 0xff
000002FC  FF                db 0xff
000002FD  FF                db 0xff
