00000100  90                nop
00000101  B013              mov al,0x13
00000103  CD10              int 0x10
00000105  6800A0            push word 0xa000
00000108  07                pop es
00000109  B409              mov ah,0x9
0000010B  BADF01            mov dx,0x1df
0000010E  CD21              int 0x21
00000110  BAC903            mov dx,0x3c9
00000113  93                xchg ax,bx
00000114  50                push ax
00000115  34FE              xor al,0xfe
00000117  EE                out dx,al
00000118  EE                out dx,al
00000119  58                pop ax
0000011A  EE                out dx,al
0000011B  48                dec ax
0000011C  75F6              jnz 0x114
0000011E  680070            push word 0x7000
00000121  1F                pop ds
00000122  1E                push ds
00000123  0FA9              pop gs
00000125  97                xchg ax,di
00000126  E440              in al,0x40
00000128  33C7              xor ax,di
0000012A  8805              mov [di],al
0000012C  47                inc di
0000012D  75F7              jnz 0x126
0000012F  B103              mov cl,0x3
00000131  BBC0FE            mov bx,0xfec0
00000134  8A45FF            mov al,[di-0x1]
00000137  024501            add al,[di+0x1]
0000013A  0201              add al,[bx+di]
0000013C  0201              add al,[bx+di]
0000013E  C0E802            shr al,byte 0x2
00000141  8805              mov [di],al
00000143  47                inc di
00000144  75EE              jnz 0x134
00000146  E2EC              loop 0x134
00000148  268A05            mov al,[es:di]
0000014B  00856C73          add [di+0x736c],al
0000014F  00856D73          add [di+0x736d],al
00000153  4F                dec di
00000154  75F2              jnz 0x148
00000156  680090            push word 0x9000
00000159  1F                pop ds
0000015A  B768              mov bh,0x68
0000015C  BE0098            mov si,0x9800
0000015F  B11F              mov cl,0x1f
00000161  8EE6              mov fs,si
00000163  8BEB              mov bp,bx
00000165  8CE0              mov ax,fs
00000167  03C5              add ax,bp
00000169  701D              jo 0x188
0000016B  8CE2              mov dx,fs
0000016D  2BD5              sub dx,bp
0000016F  7017              jo 0x188
00000171  F7EA              imul dx
00000173  D1E2              shl dx,1
00000175  8CE0              mov ax,fs
00000177  8EE2              mov fs,dx
00000179  F7ED              imul bp
0000017B  C1E203            shl dx,byte 0x3
0000017E  81C2004A          add dx,0x4a00
00000182  7004              jo 0x188
00000184  8BEA              mov bp,dx
00000186  E2DD              loop 0x165
00000188  880D              mov [di],cl
0000018A  47                inc di
0000018B  81C6A600          add si,0xa6
0000018F  81FE8067          cmp si,0x6780
00000193  7CCA              jl 0x15f
00000195  FECF              dec bh
00000197  71C3              jno 0x15c
00000199  2EFE0E8101        dec byte [cs:0x181]
0000019E  33F6              xor si,si
000001A0  BB3F01            mov bx,0x13f
000001A3  B1A0              mov cl,0xa0
000001A5  AC                lodsb
000001A6  8807              mov [bx],al
000001A8  4B                dec bx
000001A9  E2FA              loop 0x1a5
000001AB  81C3E001          add bx,0x1e0
000001AF  81C6A000          add si,0xa0
000001B3  81FE00FA          cmp si,0xfa00
000001B7  72EA              jc 0x1a3
000001B9  33FF              xor di,di
000001BB  8A1D              mov bl,[di]
000001BD  65021D            add bl,[gs:di]
000001C0  D0EB              shr bl,1
000001C2  E440              in al,0x40
000001C4  33C7              xor ax,di
000001C6  D2C8              ror al,cl
000001C8  0442              add al,0x42
000001CA  C0E806            shr al,byte 0x6
000001CD  03C3              add ax,bx
000001CF  AA                stosb
000001D0  E2E9              loop 0x1bb
000001D2  E460              in al,0x60
000001D4  98                cbw
000001D5  48                dec ax
000001D6  0F857CFF          jnz word 0x156
000001DA  B003              mov al,0x3
000001DC  CD10              int 0x10
000001DE  C3                ret
000001DF  4C                dec sp
000001E0  45                inc bp
000001E1  41                inc cx
000001E2  46                inc si
000001E3  206279            and [bp+si+0x79],ah
000001E6  205273            and [bp+si+0x73],dl
000001E9  255273            and ax,0x7352
000001EC  0909              or [bx+di],cx
000001EE  0909              or [bx+di],cx
000001F0  0A0D              or cl,[di]
000001F2  47                inc di
000001F3  7265              jc 0x25a
000001F5  657473            gs jz 0x26b
000001F8  20746F            and [si+0x6f],dh
000001FB  20416C            and [bx+di+0x6c],al
000001FE  6C                insb
000001FF  24                db 0x24
