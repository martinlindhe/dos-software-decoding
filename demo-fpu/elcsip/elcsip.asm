00000100  EB18              jmp short 0x11a
00000102  2D3D5B            sub ax,0x5b3d
00000105  4D                dec bp
00000106  41                inc cx
00000107  44                inc sp
00000108  45                inc bp
00000109  204259            and [bp+si+0x59],al
0000010C  205341            and [bp+di+0x41],dl
0000010F  52                push dx
00000110  4B                dec bx
00000111  49                dec cx
00000112  5F                pop di
00000113  52                push dx
00000114  4F                dec di
00000115  4B                dec bx
00000116  41                inc cx
00000117  5D                pop bp
00000118  3D2D90            cmp ax,0x902d
0000011B  31C0              xor ax,ax
0000011D  8EE0              mov fs,ax
0000011F  B4A0              mov ah,0xa0
00000121  89C3              mov bx,ax
00000123  8EC0              mov es,ax
00000125  0E                push cs
00000126  1F                pop ds
00000127  B81300            mov ax,0x13
0000012A  CD10              int 0x10
0000012C  FA                cli
0000012D  64A12000          mov ax,[fs:0x20]
00000131  A30003            mov [0x300],ax
00000134  64A12200          mov ax,[fs:0x22]
00000138  A30203            mov [0x302],ax
0000013B  64C7062000B402    mov word [fs:0x20],0x2b4
00000142  648C0E2200        mov [fs:0x22],cs
00000147  FB                sti
00000148  BADA03            mov dx,0x3da
0000014B  EC                in al,dx
0000014C  A808              test al,0x8
0000014E  74FB              jz 0x14b
00000150  8B47FC            mov ax,[bx-0x4]
00000153  8947FE            mov [bx-0x2],ax
00000156  9BDBE3            finit
00000159  DF06F802          fild word [0x2f8]
0000015D  DF06FA02          fild word [0x2fa]
00000161  DF06EE02          fild word [0x2ee]
00000165  DF47FE            fild word [bx-0x2]
00000168  D906F402          fld dword [0x2f4]
0000016C  DEC9              fmulp st1
0000016E  D9FB              fsincos
00000170  D8CA              fmul st2
00000172  D8C4              fadd st4
00000174  DF1F              fistp word [bx]
00000176  DEC9              fmulp st1
00000178  D8C1              fadd st1
0000017A  DF5F02            fistp word [bx+0x2]
0000017D  B90500            mov cx,0x5
00000180  0306FC02          add ax,[0x2fc]
00000184  EB04              jmp short 0x18a
00000186  0306FE02          add ax,[0x2fe]
0000018A  8947FE            mov [bx-0x2],ax
0000018D  DF07              fild word [bx]
0000018F  DF4702            fild word [bx+0x2]
00000192  D906F002          fld dword [0x2f0]
00000196  DF47FE            fild word [bx-0x2]
00000199  D906F402          fld dword [0x2f4]
0000019D  DEC9              fmulp st1
0000019F  D9FB              fsincos
000001A1  D8CA              fmul st2
000001A3  D8C4              fadd st4
000001A5  DF5F04            fistp word [bx+0x4]
000001A8  DEC9              fmulp st1
000001AA  DEC1              faddp st1
000001AC  DF5F06            fistp word [bx+0x6]
000001AF  E83400            call 0x1e6
000001B2  9BDBE3            finit
000001B5  8B7704            mov si,[bx+0x4]
000001B8  8B7F06            mov di,[bx+0x6]
000001BB  8937              mov [bx],si
000001BD  897F02            mov [bx+0x2],di
000001C0  E2C4              loop 0x186
000001C2  E460              in al,0x60
000001C4  A801              test al,0x1
000001C6  7480              jz 0x148
000001C8  FA                cli
000001C9  A10003            mov ax,[0x300]
000001CC  64A32000          mov [fs:0x20],ax
000001D0  A10203            mov ax,[0x302]
000001D3  64A32200          mov [fs:0x22],ax
000001D7  FB                sti
000001D8  31C0              xor ax,ax
000001DA  CD16              int 0x16
000001DC  31C0              xor ax,ax
000001DE  CD16              int 0x16
000001E0  B80300            mov ax,0x3
000001E3  CD10              int 0x10
000001E5  C3                ret
000001E6  60                pusha
000001E7  8B4704            mov ax,[bx+0x4]
000001EA  2B07              sub ax,[bx]
000001EC  89470E            mov [bx+0xe],ax
000001EF  31D2              xor dx,dx
000001F1  85C0              test ax,ax
000001F3  7D04              jnl 0x1f9
000001F5  F7D8              neg ax
000001F7  FEC6              inc dh
000001F9  89C1              mov cx,ax
000001FB  8B4706            mov ax,[bx+0x6]
000001FE  2B4702            sub ax,[bx+0x2]
00000201  894710            mov [bx+0x10],ax
00000204  85C0              test ax,ax
00000206  7D04              jnl 0x20c
00000208  F7D8              neg ax
0000020A  FEC2              inc dl
0000020C  39C1              cmp cx,ax
0000020E  7E38              jng 0x248
00000210  84F6              test dh,dh
00000212  7403              jz 0x217
00000214  E87700            call 0x28e
00000217  30D2              xor dl,dl
00000219  8B07              mov ax,[bx]
0000021B  89470A            mov [bx+0xa],ax
0000021E  DF4710            fild word [bx+0x10]
00000221  DF470E            fild word [bx+0xe]
00000224  DEF9              fdivp st1
00000226  31C0              xor ax,ax
00000228  894708            mov [bx+0x8],ax
0000022B  FF4708            inc word [bx+0x8]
0000022E  DF4708            fild word [bx+0x8]
00000231  D8C9              fmul st1
00000233  DF4702            fild word [bx+0x2]
00000236  DEC1              faddp st1
00000238  DF5F0C            fistp word [bx+0xc]
0000023B  E86100            call 0x29f
0000023E  FF470A            inc word [bx+0xa]
00000241  394F08            cmp [bx+0x8],cx
00000244  7EE5              jng 0x22b
00000246  EB3D              jmp short 0x285
00000248  8B4F10            mov cx,[bx+0x10]
0000024B  84D2              test dl,dl
0000024D  7405              jz 0x254
0000024F  F7D9              neg cx
00000251  E83A00            call 0x28e
00000254  30F6              xor dh,dh
00000256  8B4702            mov ax,[bx+0x2]
00000259  89470C            mov [bx+0xc],ax
0000025C  DF470E            fild word [bx+0xe]
0000025F  DF4710            fild word [bx+0x10]
00000262  DEF9              fdivp st1
00000264  31C0              xor ax,ax
00000266  894708            mov [bx+0x8],ax
00000269  FF4708            inc word [bx+0x8]
0000026C  DF4708            fild word [bx+0x8]
0000026F  D8C9              fmul st1
00000271  DF07              fild word [bx]
00000273  DEC1              faddp st1
00000275  DF5F0A            fistp word [bx+0xa]
00000278  E82400            call 0x29f
0000027B  FF470C            inc word [bx+0xc]
0000027E  394F08            cmp [bx+0x8],cx
00000281  7EE6              jng 0x269
00000283  EB00              jmp short 0x285
00000285  85D2              test dx,dx
00000287  7403              jz 0x28c
00000289  E80200            call 0x28e
0000028C  61                popa
0000028D  C3                ret
0000028E  8B07              mov ax,[bx]
00000290  874704            xchg ax,[bx+0x4]
00000293  8907              mov [bx],ax
00000295  8B4702            mov ax,[bx+0x2]
00000298  874706            xchg ax,[bx+0x6]
0000029B  894702            mov [bx+0x2],ax
0000029E  C3                ret
0000029F  60                pusha
000002A0  B94001            mov cx,0x140
000002A3  8B470C            mov ax,[bx+0xc]
000002A6  99                cwd
000002A7  F7E1              mul cx
000002A9  03470A            add ax,[bx+0xa]
000002AC  89C7              mov di,ax
000002AE  8A4712            mov al,[bx+0x12]
000002B1  AA                stosb
000002B2  61                popa
000002B3  C3                ret
000002B4  60                pusha
000002B5  0E                push cs
000002B6  1F                pop ds
000002B7  8347FC02          add word [bx-0x4],byte +0x2
000002BB  FE4712            inc byte [bx+0x12]
000002BE  74FB              jz 0x2bb
000002C0  8A5F12            mov bl,[bx+0x12]
000002C3  B9FE00            mov cx,0xfe
000002C6  B73F              mov bh,0x3f
000002C8  BAC803            mov dx,0x3c8
000002CB  88D8              mov al,bl
000002CD  EE                out dx,al
000002CE  42                inc dx
000002CF  30C0              xor al,al
000002D1  EE                out dx,al
000002D2  88F8              mov al,bh
000002D4  EE                out dx,al
000002D5  30C0              xor al,al
000002D7  EE                out dx,al
000002D8  FECB              dec bl
000002DA  74FC              jz 0x2d8
000002DC  80EF04            sub bh,0x4
000002DF  F6C780            test bh,0x80
000002E2  7402              jz 0x2e6
000002E4  30FF              xor bh,bh
000002E6  E2E0              loop 0x2c8
000002E8  B020              mov al,0x20
000002EA  E620              out 0x20,al
000002EC  61                popa
000002ED  CF                iret
000002EE  640018            add [fs:bx+si],bl
000002F1  363E43            ds inc bx
000002F4  35FA8E            xor ax,0x8efa
000002F7  3CA0              cmp al,0xa0
000002F9  006400            add [si+0x0],ah
000002FC  A20090            mov [0x9000],al
000002FF  00                db 0x00
