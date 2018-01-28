00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  680070            push word 0x7000
00000107  1F                pop ds
00000108  6800A0            push word 0xa000
0000010B  07                pop es
0000010C  680060            push word 0x6000
0000010F  0FA1              pop fs
00000111  680050            push word 0x5000
00000114  0FA9              pop gs
00000116  BAC803            mov dx,0x3c8
00000119  31C0              xor ax,ax
0000011B  EE                out dx,al
0000011C  42                inc dx
0000011D  31C9              xor cx,cx
0000011F  88C8              mov al,cl
00000121  C0E802            shr al,byte 0x2
00000124  EE                out dx,al
00000125  D0C8              ror al,1
00000127  EE                out dx,al
00000128  D0C0              rol al,1
0000012A  EE                out dx,al
0000012B  FEC1              inc cl
0000012D  75F0              jnz 0x11f
0000012F  31FF              xor di,di
00000131  89F8              mov ax,di
00000133  D1E8              shr ax,1
00000135  83C040            add ax,byte +0x40
00000138  98                cbw
00000139  99                cwd
0000013A  89F8              mov ax,di
0000013C  F6E8              imul al
0000013E  80EC40            sub ah,0x40
00000141  31D0              xor ax,dx
00000143  C1F806            sar ax,byte 0x6
00000146  8905              mov [di],ax
00000148  47                inc di
00000149  47                inc di
0000014A  75E5              jnz 0x131
0000014C  89F3              mov bx,si
0000014E  C1EB02            shr bx,byte 0x2
00000151  D1E3              shl bx,1
00000153  8B1F              mov bx,[bx]
00000155  D1FB              sar bx,1
00000157  81C38000          add bx,0x80
0000015B  30FF              xor bh,bh
0000015D  BDC502            mov bp,0x2c5
00000160  B91C00            mov cx,0x1c
00000163  8A4600            mov al,[bp+0x0]
00000166  2A461C            sub al,[bp+0x1c]
00000169  98                cbw
0000016A  F7EB              imul bx
0000016C  C1F808            sar ax,byte 0x8
0000016F  02461C            add al,[bp+0x1c]
00000172  884638            mov [bp+0x38],al
00000175  45                inc bp
00000176  E2EB              loop 0x163
00000178  31FF              xor di,di
0000017A  BD1703            mov bp,0x317
0000017D  BB2002            mov bx,0x220
00000180  8A4601            mov al,[bp+0x1]
00000183  98                cbw
00000184  F72F              imul word [bx]
00000186  89C1              mov cx,ax
00000188  C1F808            sar ax,byte 0x8
0000018B  F72C              imul word [si]
0000018D  50                push ax
0000018E  8A4600            mov al,[bp+0x0]
00000191  98                cbw
00000192  F7AC8000          imul word [si+0x80]
00000196  5A                pop dx
00000197  29C2              sub dx,ax
00000199  52                push dx
0000019A  8A4600            mov al,[bp+0x0]
0000019D  98                cbw
0000019E  F72C              imul word [si]
000001A0  91                xchg ax,cx
000001A1  F7AC8000          imul word [si+0x80]
000001A5  C1F908            sar cx,byte 0x8
000001A8  01D1              add cx,dx
000001AA  91                xchg ax,cx
000001AB  50                push ax
000001AC  F72C              imul word [si]
000001AE  50                push ax
000001AF  8A4601            mov al,[bp+0x1]
000001B2  98                cbw
000001B3  F7AF8000          imul word [bx+0x80]
000001B7  C1F808            sar ax,byte 0x8
000001BA  89C1              mov cx,ax
000001BC  F7AC8000          imul word [si+0x80]
000001C0  F7D8              neg ax
000001C2  5A                pop dx
000001C3  01D0              add ax,dx
000001C5  5A                pop dx
000001C6  50                push ax
000001C7  91                xchg ax,cx
000001C8  89D1              mov cx,dx
000001CA  F72C              imul word [si]
000001CC  91                xchg ax,cx
000001CD  F7AC8000          imul word [si+0x80]
000001D1  01C8              add ax,cx
000001D3  C1F808            sar ax,byte 0x8
000001D6  89C1              mov cx,ax
000001D8  F7D8              neg ax
000001DA  0440              add al,0x40
000001DC  64894502          mov [fs:di+0x2],ax
000001E0  81C1BE00          add cx,0xbe
000001E4  58                pop ax
000001E5  99                cwd
000001E6  F7F9              idiv cx
000001E8  0480              add al,0x80
000001EA  648805            mov [fs:di],al
000001ED  58                pop ax
000001EE  99                cwd
000001EF  F7F9              idiv cx
000001F1  0464              add al,0x64
000001F3  64884501          mov [fs:di+0x1],al
000001F7  83C704            add di,byte +0x4
000001FA  83EB20            sub bx,byte +0x20
000001FD  7581              jnz 0x180
000001FF  4D                dec bp
00000200  4D                dec bp
00000201  81FDFD02          cmp bp,0x2fd
00000205  0F8974FF          jns near 0x17d
00000209  56                push si
0000020A  BF3003            mov di,0x330
0000020D  B90D00            mov cx,0xd
00000210  31DB              xor bx,bx
00000212  57                push di
00000213  648A4106          mov al,[fs:bx+di+0x6]
00000217  648B7104          mov si,[fs:bx+di+0x4]
0000021B  648B6944          mov bp,[fs:bx+di+0x44]
0000021F  64FF7148          push word [fs:bx+di+0x48]
00000223  648B39            mov di,[fs:bx+di]
00000226  E83B00            call 0x264
00000229  5F                pop di
0000022A  E83700            call 0x264
0000022D  5F                pop di
0000022E  83C304            add bx,byte +0x4
00000231  83FB40            cmp bx,byte +0x40
00000234  72DC              jc 0x212
00000236  83EF44            sub di,byte +0x44
00000239  E2D5              loop 0x210
0000023B  5E                pop si
0000023C  31FF              xor di,di
0000023E  31C0              xor ax,ax
00000240  658605            xchg al,[gs:di]
00000243  26884120          mov [es:bx+di+0x20],al
00000247  0FA4FB08          shld bx,di,0x8
0000024B  C1E306            shl bx,byte 0x6
0000024E  47                inc di
0000024F  81FF00C8          cmp di,0xc800
00000253  72E9              jc 0x23e
00000255  AD                lodsw
00000256  E460              in al,0x60
00000258  3C01              cmp al,0x1
0000025A  0F85EEFE          jnz near 0x14c
0000025E  B80300            mov ax,0x3
00000261  CD10              int 0x10
00000263  C3                ret
00000264  60                pusha
00000265  2EA28702          mov [cs:0x287],al
00000269  B31F              mov bl,0x1f
0000026B  89EA              mov dx,bp
0000026D  89F1              mov cx,si
0000026F  E83900            call 0x2ab
00000272  50                push ax
00000273  89FA              mov dx,di
00000275  E83300            call 0x2ab
00000278  89C2              mov dx,ax
0000027A  59                pop cx
0000027B  B71F              mov bh,0x1f
0000027D  86DF              xchg bl,bh
0000027F  E82900            call 0x2ab
00000282  93                xchg ax,bx
00000283  50                push ax
00000284  B404              mov ah,0x4
00000286  B0FF              mov al,0xff
00000288  653807            cmp [gs:bx],al
0000028B  7703              ja 0x290
0000028D  658807            mov [gs:bx],al
00000290  80FC02            cmp ah,0x2
00000293  7504              jnz 0x299
00000295  81C3FE00          add bx,0xfe
00000299  43                inc bx
0000029A  FECC              dec ah
0000029C  75E8              jnz 0x286
0000029E  5B                pop bx
0000029F  86DF              xchg bl,bh
000002A1  FECF              dec bh
000002A3  79D8              jns 0x27d
000002A5  FECB              dec bl
000002A7  79C2              jns 0x26b
000002A9  61                popa
000002AA  C3                ret
000002AB  52                push dx
000002AC  88C8              mov al,cl
000002AE  28D0              sub al,dl
000002B0  F6EB              imul bl
000002B2  C1F805            sar ax,byte 0x5
000002B5  00C2              add dl,al
000002B7  88E8              mov al,ch
000002B9  28F0              sub al,dh
000002BB  F6EB              imul bl
000002BD  C1F805            sar ax,byte 0x5
000002C0  00C6              add dh,al
000002C2  92                xchg ax,dx
000002C3  5A                pop dx
000002C4  C3                ret
000002C5  CE                into
000002C6  00CE              add dh,cl
000002C8  10D3              adc bl,dl
000002CA  10D3              adc bl,dl
000002CC  0AE7              or ah,bh
000002CE  0AEC              or ch,ah
000002D0  0FF11B            psllw mm3,[bp+di]
000002D3  F621              mul byte [bx+di]
000002D5  0023              add [bp+di],ah
000002D7  0F                db 0x0f
000002D8  231E2332          and bx,[0x3223]
000002DC  1E                push ds
000002DD  37                aaa
000002DE  1937              sbb [bx],si
000002E0  00EC              add ah,ch
000002E2  0DF111            or ax,0x11f1
000002E5  F614              not byte [si]
000002E7  F9                stc
000002E8  16                push ss
000002E9  FB                sti
000002EA  17                pop ss
000002EB  05190A            add ax,0xa19
000002EE  17                pop ss
000002EF  0F1214            movlps xmm2,qword [si]
000002F2  0A19              or bl,[bx+di]
000002F4  021E0221          add bl,[0x2102]
000002F8  1123              adc [bp+di],sp
000002FA  1423              adc al,0x23
000002FC  006D65            add [di+0x65],ch
000002FF  68                db 0x68
