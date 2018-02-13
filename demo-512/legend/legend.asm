00000100  FA                cli
00000101  5B                pop bx
00000102  52                push dx
00000103  4F                dec di
00000104  4E                dec si
00000105  5D                pop bp
00000106  FA                cli
00000107  B81300            mov ax,0x13
0000010A  CD10              int 0x10
0000010C  33C0              xor ax,ax
0000010E  BAC803            mov dx,0x3c8
00000111  EE                out dx,al
00000112  42                inc dx
00000113  B90003            mov cx,0x300
00000116  EE                out dx,al
00000117  E2FD              loop 0x116
00000119  6800A0            push word 0xa000
0000011C  07                pop es
0000011D  06                push es
0000011E  BFC0EE            mov di,0xeec0
00000121  B046              mov al,0x46
00000123  B94001            mov cx,0x140
00000126  F3AA              rep stosb
00000128  BDD700            mov bp,0xd7
0000012B  BF00F0            mov di,0xf000
0000012E  BE8002            mov si,0x280
00000131  03C1              add ax,cx
00000133  D3C0              rol ax,cl
00000135  41                inc cx
00000136  41                inc cx
00000137  D1C9              ror cx,1
00000139  50                push ax
0000013A  C1F80C            sar ax,byte 0xc
0000013D  40                inc ax
0000013E  33D2              xor dx,dx
00000140  33DB              xor bx,bx
00000142  268A95C0FE        mov dl,[es:di-0x140]
00000147  268A9DC1FE        mov bl,[es:di-0x13f]
0000014C  03DA              add bx,dx
0000014E  D1FB              sar bx,1
00000150  03C3              add ax,bx
00000152  AA                stosb
00000153  58                pop ax
00000154  4E                dec si
00000155  75DA              jnz 0x131
00000157  81EF4001          sub di,0x140
0000015B  4D                dec bp
0000015C  75D0              jnz 0x12e
0000015E  E89E00            call 0x1ff
00000161  BAC803            mov dx,0x3c8
00000164  B80100            mov ax,0x1
00000167  EE                out dx,al
00000168  42                inc dx
00000169  BD3F00            mov bp,0x3f
0000016C  B00F              mov al,0xf
0000016E  B90400            mov cx,0x4
00000171  86C4              xchg al,ah
00000173  EE                out dx,al
00000174  86C4              xchg al,ah
00000176  EE                out dx,al
00000177  EE                out dx,al
00000178  E2F7              loop 0x171
0000017A  FEC0              inc al
0000017C  4D                dec bp
0000017D  75EF              jnz 0x16e
0000017F  B83011            mov ax,0x1130
00000182  B706              mov bh,0x6
00000184  CD10              int 0x10
00000186  8CC3              mov bx,es
00000188  07                pop es
00000189  E87300            call 0x1ff
0000018C  BE0D02            mov si,0x20d
0000018F  BF6805            mov di,0x568
00000192  32E4              xor ah,ah
00000194  AC                lodsb
00000195  3C00              cmp al,0x0
00000197  7443              jz 0x1dc
00000199  3C01              cmp al,0x1
0000019B  750A              jnz 0x1a7
0000019D  AD                lodsw
0000019E  89368D01          mov [0x18d],si
000001A2  A39001            mov [0x190],ax
000001A5  EBE2              jmp short 0x189
000001A7  C1E004            shl ax,byte 0x4
000001AA  03C5              add ax,bp
000001AC  8BF0              mov si,ax
000001AE  1E                push ds
000001AF  8EDB              mov ds,bx
000001B1  B91000            mov cx,0x10
000001B4  AC                lodsb
000001B5  BA0800            mov dx,0x8
000001B8  D0E0              shl al,1
000001BA  7304              jnc 0x1c0
000001BC  26802D32          sub byte [es:di],0x32
000001C0  47                inc di
000001C1  4A                dec dx
000001C2  75F4              jnz 0x1b8
000001C4  81C73801          add di,0x138
000001C8  E2EA              loop 0x1b4
000001CA  1F                pop ds
000001CB  2EFF068D01        inc word [cs:0x18d]
000001D0  2E8306900108      add word [cs:0x190],byte +0x8

000001D6  B401              mov ah,0x1  ; check for keystroke
000001D8  CD16              int 0x16
000001DA  74AD              jz 0x189  ; if Z1, no keystroke!

000001DC  32E4              xor ah,ah   ; get keystroke
000001DE  CD16              int 0x16
000001E0  B80300            mov ax,0x3      ; text mode
000001E3  CD10              int 0x10
000001E5  C6061B0224        mov byte [0x21b],0x24
000001EA  BA0D02            mov dx,0x20d
000001ED  B409              mov ah,0x9
000001EF  CD21              int 0x21
000001F1  C606540224        mov byte [0x254],0x24
000001F6  BA3F02            mov dx,0x23f
000001F9  B409              mov ah,0x9
000001FB  CD21              int 0x21
000001FD  CD20              int 0x20        ; exit to dos

000001FF  BADA03            mov dx,0x3da
00000202  EC                in al,dx
00000203  2408              and al,0x8
00000205  75F8              jnz 0x1ff
00000207  EC                in al,dx
00000208  2408              and al,0x8
0000020A  74FB              jz 0x207
0000020C  C3                ret
0000020D  FA                cli
0000020E  FE                db 0xfe
0000020F  5B                pop bx
00000210  204C65            and [si+0x65],cl
00000213  67656E            gs a32 outsb
00000216  64205DFE          and [fs:di-0x2],bl
0000021A  FA                cli
0000021B  01AC2557          add [si+0x5725],bp
0000021F  68656E            push word 0x6e65
00000222  20796F            and [bx+di+0x6f],bh
00000225  7572              jnz 0x299
00000227  206472            and [si+0x72],ah
0000022A  6561              gs popa
0000022C  6D                insw
0000022D  7320              jnc 0x24f
0000022F  636F6D            arpl [bx+0x6d],bp
00000232  657320            gs jnc 0x255
00000235  7472              jz 0x2a9
00000237  7565              jnz 0x29e
00000239  2021              and [bx+di],ah
0000023B  01C8              add ax,cx
0000023D  4D                dec bp
0000023E  FA                cli
0000023F  FE                db 0xfe
00000240  5B                pop bx
00000241  202B              and [bp+di],ch
00000243  3333              xor si,[bp+di]
00000245  2D312D            sub ax,0x2d31
00000248  3437              xor al,0x37
0000024A  3430              xor al,0x30
0000024C  3838              cmp [bx+si],bh
0000024E  3932              cmp [bp+si],si
00000250  205DFE            and [di-0x2],bl
00000253  FA                cli
00000254  018060FA          add [bx+si-0x5a0],ax
00000258  FE                db 0xfe
00000259  5B                pop bx
0000025A  204672            and [bp+0x72],al
0000025D  61                popa
0000025E  6E                outsb
0000025F  636520            arpl [di+0x20],sp
00000262  F9                stc
00000263  2034              and [si],dh
00000265  204E6F            and [bp+0x6f],cl
00000268  64657320          gs jnc 0x28c
0000026C  5D                pop bp
0000026D  FE                db 0xfe
0000026E  FA                cli
0000026F  01888350          add [bx+si+0x5083],cx
00000273  43                inc bx
00000274  20F9              and cl,bh
00000276  20414D            and [bx+di+0x4d],al
00000279  49                dec cx
0000027A  47                inc di
0000027B  41                inc cx
0000027C  20F9              and cl,bh
0000027E  205354            and [bp+di+0x54],dl
00000281  20F9              and cl,bh
00000283  20554E            and [di+0x4e],dl
00000286  49                dec cx
00000287  58                pop ax
00000288  014C97            add [si-0x69],cx
0000028B  44                inc sp
0000028C  656D              gs insw
0000028E  6F                outsw
0000028F  7320              jnc 0x2b1
00000291  F9                stc
00000292  204173            and [bx+di+0x73],al
00000295  6D                insw
00000296  20F9              and cl,bh
00000298  204C49            and [si+0x49],cl
0000029B  4E                dec si
0000029C  55                push bp
0000029D  58                pop ax
0000029E  20F9              and cl,bh
000002A0  20496E            and [bx+di+0x6e],cl
000002A3  7465              jz 0x30a
000002A5  726E              jc 0x315
000002A7  657420            gs jz 0x2ca
000002AA  F9                stc
000002AB  205050            and [bx+si+0x50],dl
000002AE  45                inc bp
000002AF  7301              jnc 0x2b2
000002B1  74AB              jz 0x25e
000002B3  47                inc di
000002B4  46                inc si
000002B5  58                pop ax
000002B6  20F9              and cl,bh
000002B8  204772            and [bx+0x72],al
000002BB  61                popa
000002BC  7669              jna 0x327
000002BE  7320              jnc 0x2e0
000002C0  F9                stc
000002C1  204D75            and [di+0x75],cl
000002C4  7369              jnc 0x32f
000002C6  6320              arpl [bx+si],sp
000002C8  F9                stc
000002C9  20414E            and [bx+di+0x4e],al
000002CC  53                push bx
000002CD  49                dec cx
000002CE  0194BF41          add [si+0x41bf],dx
000002D2  6E                outsb
000002D3  64206D6F          and [fs:di+0x6f],ch
000002D7  7265              jc 0x33e
000002D9  202E2E2E          and [0x2e2e],ch
000002DD  204D4F            and [di+0x4f],cl
000002E0  52                push dx
000002E1  45                inc bp
000002E2  2021              and [bx+di],ah
000002E4  0140E1            add [bx+si-0x1f],ax
000002E7  FA                cli
000002E8  FE                db 0xfe
000002E9  5B                pop bx
000002EA  20436F            and [bp+di+0x6f],al
000002ED  6465206279        and [gs:bp+si+0x79],ah
000002F2  20526F            and [bp+si+0x6f],dl
000002F5  6E                outsb
000002F6  2F                das
000002F7  50                push ax
000002F8  53                push bx
000002F9  44                inc sp
000002FA  2120              and [bx+si],sp
000002FC  5D                pop bp
000002FD  FE                db 0xfe
000002FE  FA                cli
000002FF  00                db 0x00
