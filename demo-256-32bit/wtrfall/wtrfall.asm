00000100  B013              mov al,0x13
00000102  CD10              int 0x10
00000104  BAC803            mov dx,0x3c8
00000107  49                dec cx
00000108  33C0              xor ax,ax
0000010A  EE                out dx,al
0000010B  42                inc dx
0000010C  32C0              xor al,al
0000010E  EE                out dx,al
0000010F  8AC4              mov al,ah
00000111  D0E8              shr al,1
00000113  EE                out dx,al
00000114  8AC4              mov al,ah
00000116  EE                out dx,al
00000117  FEC4              inc ah
00000119  E2F1              loop 0x10c
0000011B  B660              mov dh,0x60
0000011D  8EE2              mov fs,dx
0000011F  B670              mov dh,0x70
00000121  8EC2              mov es,dx
00000123  33FF              xor di,di
00000125  B517              mov ch,0x17
00000127  B033              mov al,0x33
00000129  66AB              stosd
0000012B  66AB              stosd
0000012D  E440              in al,0x40
0000012F  AA                stosb
00000130  E2F5              loop 0x127
00000132  8EC2              mov es,dx
00000134  8EDA              mov ds,dx
00000136  33FF              xor di,di
00000138  B517              mov ch,0x17
0000013A  FE4D08            dec byte [di+0x8]
0000013D  751E              jnz 0x15d
0000013F  B42D              mov ah,0x2d
00000141  AB                stosw
00000142  B401              mov ah,0x1
00000144  AB                stosw
00000145  8BC5              mov ax,bp
00000147  C1F80D            sar ax,byte 0xd
0000014A  2D1800            sub ax,0x18
0000014D  AB                stosw
0000014E  6BED3D            imul bp,bp,byte +0x3d
00000151  8BC5              mov ax,bp
00000153  C1E80A            shr ax,byte 0xa
00000156  2D1000            sub ax,0x10
00000159  AB                stosw
0000015A  83EF08            sub di,byte +0x8
0000015D  8B4504            mov ax,[di+0x4]
00000160  0105              add [di],ax
00000162  8B5D02            mov bx,[di+0x2]
00000165  035D06            add bx,[di+0x6]
00000168  895D02            mov [di+0x2],bx
0000016B  C1EB06            shr bx,byte 0x6
0000016E  80FBC5            cmp bl,0xc5
00000171  720E              jc 0x181
00000173  83450405          add word [di+0x4],byte +0x5
00000177  8BC5              mov ax,bp
00000179  C1E80A            shr ax,byte 0xa
0000017C  F7D8              neg ax
0000017E  894506            mov [di+0x6],ax
00000181  69DB4001          imul bx,bx,word 0x140
00000185  8B05              mov ax,[di]
00000187  C1E806            shr ax,byte 0x6
0000018A  03D8              add bx,ax
0000018C  8A4508            mov al,[di+0x8]
0000018F  C0E802            shr al,byte 0x2
00000192  648807            mov [fs:bx],al
00000195  FF4506            inc word [di+0x6]
00000198  83C709            add di,byte +0x9
0000019B  E29D              loop 0x13a
0000019D  0FA0              push fs
0000019F  07                pop es
000001A0  06                push es
000001A1  1F                pop ds
000001A2  33FF              xor di,di
000001A4  49                dec cx
000001A5  8A45FF            mov al,[di-0x1]
000001A8  024501            add al,[di+0x1]
000001AB  0285C0FE          add al,[di-0x140]
000001AF  02854001          add al,[di+0x140]
000001B3  C0E802            shr al,byte 0x2
000001B6  7402              jz 0x1ba
000001B8  FEC8              dec al
000001BA  AA                stosb
000001BB  E2E8              loop 0x1a5
000001BD  6800A0            push word 0xa000
000001C0  07                pop es
000001C1  33F6              xor si,si
000001C3  49                dec cx
000001C4  F3A4              rep movsb
000001C6  E460              in al,0x60
000001C8  3C01              cmp al,0x1
000001CA  0F8564FF          jnz word 0x132
000001CE  B003              mov al,0x3
000001D0  CD10              int 0x10
000001D2  C3                ret
