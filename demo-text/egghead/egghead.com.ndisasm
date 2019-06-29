00000100  EB3A              jmp short 0x13c
00000102  90                nop
00000103  124341            adc al,[bp+di+0x41]
00000106  2441              and al,0x41
00000108  125135            adc dl,[bx+di+0x35]
0000010B  45                inc bp
0000010C  AF                scasw
0000010D  AD                lodsw
0000010E  F65ADA            neg byte [bp+si-0x26]
00000111  F5                cmc
00000112  4A                dec dx
00000113  DF6A5D            fild qword [bp+si+0x5d]
00000116  F4                hlt
00000117  6A54              push byte +0x54
00000119  DF                db 0xdf
0000011A  D50D              aad 0xd
0000011C  0A21              or ah,[bx+di]
0000011E  1234              adc dh,[si]
00000120  124512            adc al,[di+0x12]
00000123  54                push sp
00000124  3452              xor al,0x52
00000126  3451              xor al,0x51
00000128  2DFAFA            sub ax,0xfafa
0000012B  DFA34531          fbld tword [bp+di+0x3145]
0000012F  254125            and ax,0x2541
00000132  232D              and bp,[di]
00000134  FD                std
00000135  F345              rep inc bp
00000137  44                inc sp
00000138  47                inc di
00000139  0D0A1A            or ax,0x1a0a
0000013C  FC                cld
0000013D  BD5C01            mov bp,0x15c
00000140  8B6E00            mov bp,[bp+0x0]
00000143  8BA60200          mov sp,[bp+0x2]
00000147  8B9E0400          mov bx,[bp+0x4]
0000014B  B44A              mov ah,0x4a
0000014D  CD21              int 0x21
0000014F  A12C00            mov ax,[0x2c]
00000152  89861A00          mov [bp+0x1a],ax
00000156  8B9E0000          mov bx,[bp+0x0]
0000015A  FFE3              jmp bx
0000015C  6C                insb
0000015D  018A1446          add [bp+si+0x4614],cx
00000161  0AD2              or dl,dl
00000163  7406              jz 0x16b
00000165  B402              mov ah,0x2
00000167  CD21              int 0x21
00000169  EBF3              jmp short 0x15e
0000016B  C3                ret
0000016C  C202F4            ret 0xf402
0000016F  0490              add al,0x90
00000171  00F6              add dh,dh
00000173  04F7              add al,0xf7
00000175  05F806            add ax,0x6f8
00000178  F9                stc
00000179  07                pop es
0000017A  7669              jna 0x1e5
0000017C  726F              jc 0x1ed
0000017E  6E                outsb
0000017F  6D                insw
00000180  656E              gs outsb
00000182  7420              jz 0x1a4
00000184  C6                db 0xc6
00000185  E261              loop 0x1e8
00000187  63650D            arpl [di+0xd],sp
0000018A  0000              add [bx+si],al
0000018C  1B5B30            sbb bx,[bp+di+0x30]
0000018F  3030              xor [bx+si],dh
00000191  3030              xor [bx+si],dh
00000193  3030              xor [bx+si],dh
00000195  3030              xor [bx+si],dh
00000197  3030              xor [bx+si],dh
00000199  3030              xor [bx+si],dh
0000019B  3030              xor [bx+si],dh
0000019D  6D                insw
0000019E  0D0A00            or ax,0xa
000001A1  1B5B30            sbb bx,[bp+di+0x30]
000001A4  3B31              cmp si,[bx+di]
000001A6  6D                insw
000001A7  DA5B1B            ficomp dword [bp+di+0x1b]
000001AA  5B                pop bx
000001AB  3330              xor si,[bx+si]
000001AD  6D                insw
000001AE  3A1B              cmp bl,[bp+di]
000001B0  5B                pop bx
000001B1  3331              xor si,[bx+di]
000001B3  6D                insw
000001B4  3431              xor al,0x31
000001B6  361B5B33          sbb bx,[ss:bp+di+0x33]
000001BA  306D3A            xor [di+0x3a],ch
000001BD  1B5B33            sbb bx,[bp+di+0x33]
000001C0  37                aaa
000001C1  6D                insw
000001C2  5D                pop bp
000001C3  5B                pop bx
000001C4  1B5B33            sbb bx,[bp+di+0x33]
000001C7  306D3A            xor [di+0x3a],ch
000001CA  1B5B33            sbb bx,[bp+di+0x33]
000001CD  316D43            xor [di+0x43],bp
000001D0  55                push bp
000001D1  53                push bx
000001D2  54                push sp
000001D3  4F                dec di
000001D4  4D                dec bp
000001D5  49                dec cx
000001D6  5A                pop dx
000001D7  45                inc bp
000001D8  44                inc sp
000001D9  205043            and [bx+si+0x43],dl
000001DC  42                inc dx
000001DD  4F                dec di
000001DE  41                inc cx
000001DF  52                push dx
000001E0  44                inc sp
000001E1  1B5B33            sbb bx,[bp+di+0x33]
000001E4  306D3A            xor [di+0x3a],ch
000001E7  1B5B33            sbb bx,[bp+di+0x33]
000001EA  37                aaa
000001EB  6D                insw
000001EC  5D                pop bp
000001ED  5B                pop bx
000001EE  1B5B33            sbb bx,[bp+di+0x33]
000001F1  306D3A            xor [di+0x3a],ch
000001F4  1B5B33            sbb bx,[bp+di+0x33]
000001F7  316D48            xor [di+0x48],bp
000001FA  53                push bx
000001FB  54                push sp
000001FC  1B5B33            sbb bx,[bp+di+0x33]
000001FF  306D3A            xor [di+0x3a],ch
00000202  1B5B33            sbb bx,[bp+di+0x33]
00000205  37                aaa
00000206  6D                insw
00000207  5D                pop bp
00000208  BF0D0A            mov di,0xa0d
0000020B  00C3              add bl,al
0000020D  DAC2              fcmovb st2
0000020F  C2C2C2            ret 0xc2c2
00000212  C2C2C2            ret 0xc2c2
00000215  C2C2C2            ret 0xc2c2
00000218  C2C2C2            ret 0xc2c2
0000021B  C2C2C2            ret 0xc2c2
0000021E  C2C2C2            ret 0xc2c2
00000221  C2C2C2            ret 0xc2c2
00000224  C2C2C2            ret 0xc2c2
00000227  C2C2C2            ret 0xc2c2
0000022A  C2C2C2            ret 0xc2c2
0000022D  C2C2C2            ret 0xc2c2
00000230  BFB40D            mov di,0xdb4
00000233  0A00              or al,[bx+si]
00000235  1B5B30            sbb bx,[bp+di+0x30]
00000238  6D                insw
00000239  FEC3              inc bl
0000023B  C5                db 0xc5
0000023C  C51B              lds bx,[bp+di]
0000023E  5B                pop bx
0000023F  313B              xor [bp+di],di
00000241  3333              xor si,[bp+di]
00000243  6D                insw
00000244  42                inc dx
00000245  49                dec cx
00000246  4D                dec bp
00000247  42                inc dx
00000248  4F                dec di
00000249  1B5B30            sbb bx,[bp+di+0x30]
0000024C  6D                insw
0000024D  C51B              lds bx,[bp+di]
0000024F  5B                pop bx
00000250  313B              xor [bp+di],di
00000252  3333              xor si,[bp+di]
00000254  6D                insw
00000255  50                push ax
00000256  41                inc cx
00000257  4C                dec sp
00000258  41                inc cx
00000259  43                inc bx
0000025A  45                inc bp
0000025B  1B5B30            sbb bx,[bp+di+0x30]
0000025E  6D                insw
0000025F  C51B              lds bx,[bp+di]
00000261  5B                pop bx
00000262  313B              xor [bp+di],di
00000264  3333              xor si,[bp+di]
00000266  6D                insw
00000267  46                inc si
00000268  49                dec cx
00000269  4C                dec sp
0000026A  45                inc bp
0000026B  1B5B30            sbb bx,[bp+di+0x30]
0000026E  6D                insw
0000026F  C51B              lds bx,[bp+di]
00000271  5B                pop bx
00000272  313B              xor [bp+di],di
00000274  3333              xor si,[bp+di]
00000276  6D                insw
00000277  44                inc sp
00000278  49                dec cx
00000279  53                push bx
0000027A  54                push sp
0000027B  52                push dx
0000027C  49                dec cx
0000027D  42                inc dx
0000027E  55                push bp
0000027F  54                push sp
00000280  49                dec cx
00000281  4F                dec di
00000282  4E                dec si
00000283  1B5B30            sbb bx,[bp+di+0x30]
00000286  6D                insw
00000287  C5                db 0xc5
00000288  C5B4FE0D          lds si,[si+0xdfe]
0000028C  0A00              or al,[bx+si]
0000028E  1B5B31            sbb bx,[bp+di+0x31]
00000291  3B33              cmp si,[bp+di]
00000293  306DC0            xor [di-0x40],ch
00000296  C0C1C1            rol cl,byte 0xc1
00000299  C1C1C1            rol cx,byte 0xc1
0000029C  C1C1C1            rol cx,byte 0xc1
0000029F  C1C1C1            rol cx,byte 0xc1
000002A2  C1C1C1            rol cx,byte 0xc1
000002A5  C1C1C1            rol cx,byte 0xc1
000002A8  C1C1C1            rol cx,byte 0xc1
000002AB  C1C1C1            rol cx,byte 0xc1
000002AE  C1C1C1            rol cx,byte 0xc1
000002B1  C1C1C1            rol cx,byte 0xc1
000002B4  C1C1C1            rol cx,byte 0xc1
000002B7  C1C1D9            rol cx,byte 0xd9
000002BA  D91B              fstp dword [bp+di]
000002BC  5B                pop bx
000002BD  306D0D            xor [di+0xd],ch
000002C0  0A00              or al,[bx+si]
000002C2  8DB62000          lea si,[bp+0x20]
000002C6  B85E01            mov ax,0x15e
000002C9  FFD0              call ax
000002CB  8DB63500          lea si,[bp+0x35]
000002CF  B85E01            mov ax,0x15e
000002D2  FFD0              call ax
000002D4  8DB6A000          lea si,[bp+0xa0]
000002D8  B85E01            mov ax,0x15e
000002DB  FFD0              call ax
000002DD  8DB6C900          lea si,[bp+0xc9]
000002E1  B85E01            mov ax,0x15e
000002E4  FFD0              call ax
000002E6  8DB62201          lea si,[bp+0x122]
000002EA  B85E01            mov ax,0x15e
000002ED  FFD0              call ax
000002EF  B8004C            mov ax,0x4c00
000002F2  CD21              int 0x21
