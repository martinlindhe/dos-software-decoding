00000100  E9ED1A            jmp word 0x1bf0

00001BF0  8CC8              mov ax,cs
00001BF2  8ED8              mov ds,ax
00001BF4  8EC0              mov es,ax
00001BF6  8ED0              mov ss,ax
00001BF8  8D26F01B          lea sp,[0x1bf0]
00001BFC  B41F              mov ah,0x1f
00001BFE  E8D709            call word 0x25d8
00001C01  B609              mov dh,0x9
00001C03  B216              mov dl,0x16
00001C05  8D1E0301          lea bx,[0x103]
00001C09  B92300            mov cx,0x23
00001C0C  E8460A            call word 0x2655
00001C0F  B60B              mov dh,0xb
00001C11  B21C              mov dl,0x1c
00001C13  8D1E2601          lea bx,[0x126]
00001C17  B91900            mov cx,0x19
00001C1A  E8380A            call word 0x2655
00001C1D  BF9600            mov di,0x96
00001C20  E89809            call word 0x25bb
00001C23  E87C0A            call word 0x26a2
00001C26  0D0100            or ax,0x1
00001C29  A36F03            mov [0x36f],ax
00001C2C  EB0C              jmp short 0x1c3a
00001C2E  90                nop
00001C2F  B40F              mov ah,0xf
00001C31  E8A409            call word 0x25d8
00001C34  B000              mov al,0x0
00001C36  B44C              mov ah,0x4c
00001C38  CD21              int 0x21
00001C3A  B41F              mov ah,0x1f
00001C3C  E89909            call word 0x25d8
00001C3F  C60662033C        mov byte [0x362],0x3c
00001C44  C60663033D        mov byte [0x363],0x3d
00001C49  C606640302        mov byte [0x364],0x2
00001C4E  C606650302        mov byte [0x365],0x2
00001C53  8D367306          lea si,[0x673]
00001C57  8D3ED706          lea di,[0x6d7]
00001C5B  B96400            mov cx,0x64
00001C5E  FC                cld
00001C5F  F3A4              rep movsb
00001C61  8D367306          lea si,[0x673]
00001C65  8D3E3B07          lea di,[0x73b]
00001C69  B96400            mov cx,0x64
00001C6C  F3A4              rep movsb
00001C6E  8D367306          lea si,[0x673]
00001C72  8D3E9309          lea di,[0x993]
00001C76  B96400            mov cx,0x64
00001C79  F3A4              rep movsb
00001C7B  8D1ED706          lea bx,[0x6d7]
00001C7F  C6472C00          mov byte [bx+0x2c],0x0
00001C83  C6472D00          mov byte [bx+0x2d],0x0
00001C87  C6473600          mov byte [bx+0x36],0x0
00001C8B  C6473700          mov byte [bx+0x37],0x0
00001C8F  8D36F709          lea si,[0x9f7]
00001C93  8D3EBF0A          lea di,[0xabf]
00001C97  B96400            mov cx,0x64
00001C9A  F3A5              rep movsw
00001C9C  B602              mov dh,0x2
00001C9E  B202              mov dl,0x2
00001CA0  8D1E3F01          lea bx,[0x13f]
00001CA4  B91400            mov cx,0x14
00001CA7  E8AB09            call word 0x2655
00001CAA  B607              mov dh,0x7
00001CAC  B202              mov dl,0x2
00001CAE  8D1E5301          lea bx,[0x153]
00001CB2  B91400            mov cx,0x14
00001CB5  E89D09            call word 0x2655
00001CB8  B60A              mov dh,0xa
00001CBA  B202              mov dl,0x2
00001CBC  8D1E5301          lea bx,[0x153]
00001CC0  B91400            mov cx,0x14
00001CC3  E88F09            call word 0x2655
00001CC6  B60B              mov dh,0xb
00001CC8  B205              mov dl,0x5
00001CCA  8D1E6701          lea bx,[0x167]
00001CCE  B90D00            mov cx,0xd
00001CD1  E88109            call word 0x2655
00001CD4  B60E              mov dh,0xe
00001CD6  B204              mov dl,0x4
00001CD8  8D1E7401          lea bx,[0x174]
00001CDC  B91100            mov cx,0x11
00001CDF  E87309            call word 0x2655
00001CE2  B610              mov dh,0x10
00001CE4  B204              mov dl,0x4
00001CE6  8D1E8501          lea bx,[0x185]
00001CEA  B91100            mov cx,0x11
00001CED  E86509            call word 0x2655
00001CF0  B614              mov dh,0x14
00001CF2  B202              mov dl,0x2
00001CF4  8D1E9601          lea bx,[0x196]
00001CF8  B91500            mov cx,0x15
00001CFB  E85709            call word 0x2655
00001CFE  B615              mov dh,0x15
00001D00  B202              mov dl,0x2
00001D02  8D1EAB01          lea bx,[0x1ab]
00001D06  B91500            mov cx,0x15
00001D09  E84909            call word 0x2655
00001D0C  E80600            call word 0x1d15
00001D0F  E8AB06            call word 0x23bd
00001D12  EB4E              jmp short 0x1d62
00001D14  90                nop
00001D15  B600              mov dh,0x0
00001D17  B318              mov bl,0x18
00001D19  B218              mov dl,0x18
00001D1B  B93700            mov cx,0x37
00001D1E  B020              mov al,0x20
00001D20  B420              mov ah,0x20
00001D22  E8EE08            call word 0x2613
00001D25  FEC2              inc dl
00001D27  E2F5              loop 0x1d1e
00001D29  FEC6              inc dh
00001D2B  FECB              dec bl
00001D2D  75EA              jnz 0x1d19
00001D2F  B601              mov dh,0x1
00001D31  B741              mov bh,0x41
00001D33  B331              mov bl,0x31
00001D35  B108              mov cl,0x8
00001D37  B21A              mov dl,0x1a
00001D39  B508              mov ch,0x8
00001D3B  53                push bx
00001D3C  52                push dx
00001D3D  8AC7              mov al,bh
00001D3F  B420              mov ah,0x20
00001D41  E8CF08            call word 0x2613
00001D44  FEC2              inc dl
00001D46  8AC3              mov al,bl
00001D48  B420              mov ah,0x20
00001D4A  E8C608            call word 0x2613
00001D4D  80C206            add dl,0x6
00001D50  FEC3              inc bl
00001D52  FECD              dec ch
00001D54  75E7              jnz 0x1d3d
00001D56  5A                pop dx
00001D57  5B                pop bx
00001D58  80C603            add dh,0x3
00001D5B  FEC7              inc bh
00001D5D  FEC9              dec cl
00001D5F  75D6              jnz 0x1d37
00001D61  C3                ret
00001D62  B605              mov dh,0x5
00001D64  B204              mov dl,0x4
00001D66  8D1EC001          lea bx,[0x1c0]
00001D6A  B91000            mov cx,0x10
00001D6D  E8E508            call word 0x2655
00001D70  B606              mov dh,0x6
00001D72  B208              mov dl,0x8
00001D74  8D1ED001          lea bx,[0x1d0]
00001D78  B90700            mov cx,0x7
00001D7B  E8D708            call word 0x2655
00001D7E  E8FC08            call word 0x267d
00001D81  2C30              sub al,0x30
00001D83  76F9              jna 0x1d7e
00001D85  3C05              cmp al,0x5
00001D87  77F5              ja 0x1d7e
00001D89  A25E03            mov [0x35e],al
00001D8C  B605              mov dh,0x5
00001D8E  B200              mov dl,0x0
00001D90  E8A208            call word 0x2635
00001D93  B606              mov dh,0x6
00001D95  B200              mov dl,0x0
00001D97  E89B08            call word 0x2635
00001D9A  C606610300        mov byte [0x361],0x0
00001D9F  B605              mov dh,0x5
00001DA1  B201              mov dl,0x1
00001DA3  8D1ED701          lea bx,[0x1d7]
00001DA7  B91600            mov cx,0x16
00001DAA  E8A808            call word 0x2655
00001DAD  B606              mov dh,0x6
00001DAF  B20B              mov dl,0xb
00001DB1  B020              mov al,0x20
00001DB3  B41F              mov ah,0x1f
00001DB5  E85B08            call word 0x2613
00001DB8  E8C208            call word 0x267d
00001DBB  3C50              cmp al,0x50
00001DBD  7503              jnz 0x1dc2
00001DBF  E90F02            jmp word 0x1fd1
00001DC2  3C51              cmp al,0x51
00001DC4  753A              jnz 0x1e00
00001DC6  B606              mov dh,0x6
00001DC8  B20A              mov dl,0xa
00001DCA  8D1E7402          lea bx,[0x274]
00001DCE  B90400            mov cx,0x4
00001DD1  E88108            call word 0x2655
00001DD4  E8A608            call word 0x267d
00001DD7  3C08              cmp al,0x8
00001DD9  7510              jnz 0x1deb
00001DDB  B605              mov dh,0x5
00001DDD  B200              mov dl,0x0
00001DDF  E85308            call word 0x2635
00001DE2  B606              mov dh,0x6
00001DE4  B200              mov dl,0x0
00001DE6  E84C08            call word 0x2635
00001DE9  EBAF              jmp short 0x1d9a
00001DEB  3C0D              cmp al,0xd
00001DED  75E5              jnz 0x1dd4
00001DEF  B605              mov dh,0x5
00001DF1  B200              mov dl,0x0
00001DF3  E83F08            call word 0x2635
00001DF6  B606              mov dh,0x6
00001DF8  B200              mov dl,0x0
00001DFA  E83808            call word 0x2635
00001DFD  E90907            jmp word 0x2509
00001E00  3C53              cmp al,0x53
00001E02  7572              jnz 0x1e76
00001E04  B606              mov dh,0x6
00001E06  B209              mov dl,0x9
00001E08  8D1E8202          lea bx,[0x282]
00001E0C  B90400            mov cx,0x4
00001E0F  E84308            call word 0x2655
00001E12  E86808            call word 0x267d
00001E15  3C08              cmp al,0x8
00001E17  7511              jnz 0x1e2a
00001E19  B605              mov dh,0x5
00001E1B  B200              mov dl,0x0
00001E1D  E81508            call word 0x2635
00001E20  B606              mov dh,0x6
00001E22  B200              mov dl,0x0
00001E24  E80E08            call word 0x2635
00001E27  E970FF            jmp word 0x1d9a
00001E2A  3C0D              cmp al,0xd
00001E2C  75E4              jnz 0x1e12
00001E2E  B605              mov dh,0x5
00001E30  B200              mov dl,0x0
00001E32  E80008            call word 0x2635
00001E35  B606              mov dh,0x6
00001E37  B200              mov dl,0x0
00001E39  E8F907            call word 0x2635
00001E3C  B608              mov dh,0x8
00001E3E  B200              mov dl,0x0
00001E40  E8F207            call word 0x2635
00001E43  B609              mov dh,0x9
00001E45  B200              mov dl,0x0
00001E47  E8EB07            call word 0x2635
00001E4A  8D1ED706          lea bx,[0x6d7]
00001E4E  8D163B07          lea dx,[0x73b]
00001E52  E8E604            call word 0x233b
00001E55  8D36D706          lea si,[0x6d7]
00001E59  8D3E9309          lea di,[0x993]
00001E5D  B96400            mov cx,0x64
00001E60  FC                cld
00001E61  F3A4              rep movsb
00001E63  FE066203          inc byte [0x362]
00001E67  A06203            mov al,[0x362]
00001E6A  A26303            mov [0x363],al
00001E6D  E85006            call word 0x24c0
00001E70  E84A05            call word 0x23bd
00001E73  E96402            jmp word 0x20da
00001E76  3C55              cmp al,0x55
00001E78  7403              jz 0x1e7d
00001E7A  E98B00            jmp word 0x1f08
00001E7D  B606              mov dh,0x6
00001E7F  B209              mov dl,0x9
00001E81  8D1E7C02          lea bx,[0x27c]
00001E85  B90600            mov cx,0x6
00001E88  E8CA07            call word 0x2655
00001E8B  E8EF07            call word 0x267d
00001E8E  3C08              cmp al,0x8
00001E90  7511              jnz 0x1ea3
00001E92  B605              mov dh,0x5
00001E94  B200              mov dl,0x0
00001E96  E89C07            call word 0x2635
00001E99  B606              mov dh,0x6
00001E9B  B200              mov dl,0x0
00001E9D  E89507            call word 0x2635
00001EA0  E9F7FE            jmp word 0x1d9a
00001EA3  3C0D              cmp al,0xd
00001EA5  75E4              jnz 0x1e8b
00001EA7  B605              mov dh,0x5
00001EA9  B200              mov dl,0x0
00001EAB  E88707            call word 0x2635
00001EAE  B606              mov dh,0x6
00001EB0  B200              mov dl,0x0
00001EB2  E88007            call word 0x2635
00001EB5  B608              mov dh,0x8
00001EB7  B200              mov dl,0x0
00001EB9  E87907            call word 0x2635
00001EBC  B609              mov dh,0x9
00001EBE  B200              mov dl,0x0
00001EC0  E87207            call word 0x2635
00001EC3  E84FFE            call word 0x1d15
00001EC6  8D369309          lea si,[0x993]
00001ECA  8D3E3B07          lea di,[0x73b]
00001ECE  B96400            mov cx,0x64
00001ED1  FC                cld
00001ED2  F3A4              rep movsb
00001ED4  8D367306          lea si,[0x673]
00001ED8  8D3ED706          lea di,[0x6d7]
00001EDC  B96400            mov cx,0x64
00001EDF  F3A4              rep movsb
00001EE1  8D1ED706          lea bx,[0x6d7]
00001EE5  C6472C00          mov byte [bx+0x2c],0x0
00001EE9  C6472D00          mov byte [bx+0x2d],0x0
00001EED  C6473600          mov byte [bx+0x36],0x0
00001EF1  C6473700          mov byte [bx+0x37],0x0
00001EF5  8D1E7306          lea bx,[0x673]
00001EF9  A06303            mov al,[0x363]
00001EFC  A26203            mov [0x362],al
00001EFF  E8BE05            call word 0x24c0
00001F02  E8B804            call word 0x23bd
00001F05  E992FE            jmp word 0x1d9a
00001F08  3C41              cmp al,0x41
00001F0A  7303              jnc 0x1f0f
00001F0C  E9A2FE            jmp word 0x1db1
00001F0F  3C48              cmp al,0x48
00001F11  7603              jna 0x1f16
00001F13  E99BFE            jmp word 0x1db1
00001F16  8AF8              mov bh,al
00001F18  B41F              mov ah,0x1f
00001F1A  E8F606            call word 0x2613
00001F1D  FEC2              inc dl
00001F1F  B020              mov al,0x20
00001F21  B41F              mov ah,0x1f
00001F23  E8ED06            call word 0x2613
00001F26  E85407            call word 0x267d
00001F29  3C08              cmp al,0x8
00001F2B  7505              jnz 0x1f32
00001F2D  FECA              dec dl
00001F2F  E97BFE            jmp word 0x1dad
00001F32  3C31              cmp al,0x31
00001F34  72F0              jc 0x1f26
00001F36  3C38              cmp al,0x38
00001F38  77EC              ja 0x1f26
00001F3A  8AD8              mov bl,al
00001F3C  B41F              mov ah,0x1f
00001F3E  E8D206            call word 0x2613
00001F41  FEC2              inc dl
00001F43  B020              mov al,0x20
00001F45  B41F              mov ah,0x1f
00001F47  E8C906            call word 0x2613
00001F4A  E83007            call word 0x267d
00001F4D  3C08              cmp al,0x8
00001F4F  7504              jnz 0x1f55
00001F51  FECA              dec dl
00001F53  EBCA              jmp short 0x1f1f
00001F55  3C0D              cmp al,0xd
00001F57  75F1              jnz 0x1f4a
00001F59  80EF40            sub bh,0x40
00001F5C  80EB30            sub bl,0x30
00001F5F  8BD3              mov dx,bx
00001F61  B400              mov ah,0x0
00001F63  B00A              mov al,0xa
00001F65  F6E6              mul dh
00001F67  B600              mov dh,0x0
00001F69  03C2              add ax,dx
00001F6B  50                push ax
00001F6C  8D1ED706          lea bx,[0x6d7]
00001F70  8D163B07          lea dx,[0x73b]
00001F74  E8C403            call word 0x233b
00001F77  5B                pop bx
00001F78  87D3              xchg dx,bx
00001F7A  E8DA03            call word 0x2357
00001F7D  7203              jc 0x1f82
00001F7F  E91501            jmp word 0x2097
00001F82  B608              mov dh,0x8
00001F84  B200              mov dl,0x0
00001F86  E8AC06            call word 0x2635
00001F89  B609              mov dh,0x9
00001F8B  B200              mov dl,0x0
00001F8D  E8A506            call word 0x2635
00001F90  B608              mov dh,0x8
00001F92  B205              mov dl,0x5
00001F94  8D1EED01          lea bx,[0x1ed]
00001F98  B90D00            mov cx,0xd
00001F9B  E8B706            call word 0x2655
00001F9E  B609              mov dh,0x9
00001FA0  B201              mov dl,0x1
00001FA2  8D1EFA01          lea bx,[0x1fa]
00001FA6  B91600            mov cx,0x16
00001FA9  E8A906            call word 0x2655
00001FAC  BF6400            mov di,0x64
00001FAF  E80906            call word 0x25bb
00001FB2  B605              mov dh,0x5
00001FB4  B200              mov dl,0x0
00001FB6  E87C06            call word 0x2635
00001FB9  B606              mov dh,0x6
00001FBB  B200              mov dl,0x0
00001FBD  E87506            call word 0x2635
00001FC0  B608              mov dh,0x8
00001FC2  B200              mov dl,0x0
00001FC4  E86E06            call word 0x2635
00001FC7  B609              mov dh,0x9
00001FC9  B200              mov dl,0x0
00001FCB  E86706            call word 0x2635
00001FCE  E9C9FD            jmp word 0x1d9a
00001FD1  B606              mov dh,0x6
00001FD3  B20A              mov dl,0xa
00001FD5  8D1E7802          lea bx,[0x278]
00001FD9  B90400            mov cx,0x4
00001FDC  E87606            call word 0x2655
00001FDF  E89B06            call word 0x267d
00001FE2  3C08              cmp al,0x8
00001FE4  7511              jnz 0x1ff7
00001FE6  B605              mov dh,0x5
00001FE8  B200              mov dl,0x0
00001FEA  E84806            call word 0x2635
00001FED  B606              mov dh,0x6
00001FEF  B200              mov dl,0x0
00001FF1  E84106            call word 0x2635
00001FF4  E9A3FD            jmp word 0x1d9a
00001FF7  3C0D              cmp al,0xd
00001FF9  75E4              jnz 0x1fdf
00001FFB  803E62033C        cmp byte [0x362],0x3c
00002000  7422              jz 0x2024
00002002  BA0A00            mov dx,0xa
00002005  B95000            mov cx,0x50
00002008  51                push cx
00002009  52                push dx
0000200A  8D1ED706          lea bx,[0x6d7]
0000200E  8D163B07          lea dx,[0x73b]
00002012  E82603            call word 0x233b
00002015  8D1E3B07          lea bx,[0x73b]
00002019  5A                pop dx
0000201A  52                push dx
0000201B  E83903            call word 0x2357
0000201E  5A                pop dx
0000201F  59                pop cx
00002020  7326              jnc 0x2048
00002022  E2E4              loop 0x2008
00002024  B605              mov dh,0x5
00002026  B200              mov dl,0x0
00002028  E80A06            call word 0x2635
0000202B  B606              mov dh,0x6
0000202D  B200              mov dl,0x0
0000202F  E80306            call word 0x2635
00002032  B608              mov dh,0x8
00002034  B200              mov dl,0x0
00002036  E8FC05            call word 0x2635
00002039  B609              mov dh,0x9
0000203B  B200              mov dl,0x0
0000203D  E8F505            call word 0x2635
00002040  C6066103FF        mov byte [0x361],0xff
00002045  E99200            jmp word 0x20da
00002048  B608              mov dh,0x8
0000204A  B200              mov dl,0x0
0000204C  E8E605            call word 0x2635
0000204F  B609              mov dh,0x9
00002051  B200              mov dl,0x0
00002053  E8DF05            call word 0x2635
00002056  B608              mov dh,0x8
00002058  B205              mov dl,0x5
0000205A  8D1EED01          lea bx,[0x1ed]
0000205E  B90D00            mov cx,0xd
00002061  E8F105            call word 0x2655
00002064  B609              mov dh,0x9
00002066  B204              mov dl,0x4
00002068  8D1E1002          lea bx,[0x210]
0000206C  B91000            mov cx,0x10
0000206F  E8E305            call word 0x2655
00002072  BF6400            mov di,0x64
00002075  E84305            call word 0x25bb
00002078  B605              mov dh,0x5
0000207A  B200              mov dl,0x0
0000207C  E8B605            call word 0x2635
0000207F  B606              mov dh,0x6
00002081  B200              mov dl,0x0
00002083  E8AF05            call word 0x2635
00002086  B608              mov dh,0x8
00002088  B200              mov dl,0x0
0000208A  E8A805            call word 0x2635
0000208D  B609              mov dh,0x9
0000208F  B200              mov dl,0x0
00002091  E8A105            call word 0x2635
00002094  E903FD            jmp word 0x1d9a
00002097  8D36D706          lea si,[0x6d7]
0000209B  8D3E9309          lea di,[0x993]
0000209F  B96400            mov cx,0x64
000020A2  FC                cld
000020A3  F3A4              rep movsb
000020A5  A06203            mov al,[0x362]
000020A8  FEC0              inc al
000020AA  A26303            mov [0x363],al
000020AD  8D1E3B07          lea bx,[0x73b]
000020B1  8D163B07          lea dx,[0x73b]
000020B5  E88302            call word 0x233b
000020B8  E80504            call word 0x24c0
000020BB  E8FA02            call word 0x23b8
000020BE  B605              mov dh,0x5
000020C0  B200              mov dl,0x0
000020C2  E87005            call word 0x2635
000020C5  B606              mov dh,0x6
000020C7  B200              mov dl,0x0
000020C9  E86905            call word 0x2635
000020CC  B608              mov dh,0x8
000020CE  B200              mov dl,0x0
000020D0  E86205            call word 0x2635
000020D3  B609              mov dh,0x9
000020D5  B200              mov dl,0x0
000020D7  E85B05            call word 0x2635
000020DA  A05E03            mov al,[0x35e]
000020DD  A25F03            mov [0x35f],al
000020E0  8D1ED706          lea bx,[0x6d7]
000020E4  8D3E7303          lea di,[0x373]
000020E8  E87700            call word 0x2162
000020EB  833C00            cmp word [si],byte +0x0
000020EE  751F              jnz 0x210f
000020F0  B608              mov dh,0x8
000020F2  B203              mov dl,0x3
000020F4  8D1E3102          lea bx,[0x231]
000020F8  B91100            mov cx,0x11
000020FB  E85705            call word 0x2655
000020FE  B609              mov dh,0x9
00002100  B20A              mov dl,0xa
00002102  8D1E4202          lea bx,[0x242]
00002106  B90400            mov cx,0x4
00002109  E84905            call word 0x2655
0000210C  E98BFC            jmp word 0x1d9a
0000210F  8B5402            mov dx,[si+0x2]
00002112  52                push dx
00002113  B608              mov dh,0x8
00002115  B203              mov dl,0x3
00002117  8D1E2002          lea bx,[0x220]
0000211B  B91100            mov cx,0x11
0000211E  E83405            call word 0x2655
00002121  5B                pop bx
00002122  53                push bx
00002123  B609              mov dh,0x9
00002125  B20B              mov dl,0xb
00002127  8AC3              mov al,bl
00002129  B400              mov ah,0x0
0000212B  B70A              mov bh,0xa
0000212D  F6F7              div bh
0000212F  50                push ax
00002130  0440              add al,0x40
00002132  B41F              mov ah,0x1f
00002134  E8DC04            call word 0x2613
00002137  58                pop ax
00002138  FEC2              inc dl
0000213A  8AC4              mov al,ah
0000213C  0430              add al,0x30
0000213E  B41F              mov ah,0x1f
00002140  E8D004            call word 0x2613
00002143  8D36D706          lea si,[0x6d7]
00002147  8D3E3B07          lea di,[0x73b]
0000214B  B96400            mov cx,0x64
0000214E  FC                cld
0000214F  F3A4              rep movsb
00002151  8D1E3B07          lea bx,[0x73b]
00002155  5A                pop dx
00002156  E8FE01            call word 0x2357
00002159  E86403            call word 0x24c0
0000215C  E85902            call word 0x23b8
0000215F  E938FC            jmp word 0x1d9a
00002162  53                push bx
00002163  57                push di
00002164  83C730            add di,byte +0x30
00002167  57                push di
00002168  BA0A00            mov dx,0xa
0000216B  B95000            mov cx,0x50
0000216E  53                push bx
0000216F  51                push cx
00002170  52                push dx
00002171  57                push di
00002172  8BF3              mov si,bx
00002174  8BFB              mov di,bx
00002176  83C764            add di,byte +0x64
00002179  57                push di
0000217A  B96400            mov cx,0x64
0000217D  FC                cld
0000217E  F3A4              rep movsb
00002180  5B                pop bx
00002181  5F                pop di
00002182  57                push di
00002183  C7050000          mov word [di],0x0
00002187  895502            mov [di+0x2],dx
0000218A  C745040000        mov word [di+0x4],0x0
0000218F  E8C501            call word 0x2357
00002192  7252              jc 0x21e6
00002194  C705FFFF          mov word [di],0xffff
00002198  BA0A00            mov dx,0xa
0000219B  B95000            mov cx,0x50
0000219E  53                push bx
0000219F  51                push cx
000021A0  52                push dx
000021A1  57                push di
000021A2  8D162F09          lea dx,[0x92f]
000021A6  E89201            call word 0x233b
000021A9  5F                pop di
000021AA  5A                pop dx
000021AB  52                push dx
000021AC  57                push di
000021AD  8D1E2F09          lea bx,[0x92f]
000021B1  E8A301            call word 0x2357
000021B4  BBFFFF            mov bx,0xffff
000021B7  7210              jc 0x21c9
000021B9  8D1E2F09          lea bx,[0x92f]
000021BD  8BD3              mov dx,bx
000021BF  E87901            call word 0x233b
000021C2  8D1E2F09          lea bx,[0x92f]
000021C6  E84101            call word 0x230a
000021C9  5F                pop di
000021CA  5A                pop dx
000021CB  3B1D              cmp bx,[di]
000021CD  7305              jnc 0x21d4
000021CF  891D              mov [di],bx
000021D1  895504            mov [di+0x4],dx
000021D4  59                pop cx
000021D5  5B                pop bx
000021D6  42                inc dx
000021D7  E2C5              loop 0x219e
000021D9  833DFF            cmp word [di],byte -0x1
000021DC  7508              jnz 0x21e6
000021DE  E82901            call word 0x230a
000021E1  83C364            add bx,byte +0x64
000021E4  891D              mov [di],bx
000021E6  5F                pop di
000021E7  5A                pop dx
000021E8  59                pop cx
000021E9  5B                pop bx
000021EA  42                inc dx
000021EB  83C706            add di,byte +0x6
000021EE  49                dec cx
000021EF  7403              jz 0x21f4
000021F1  E97AFF            jmp word 0x216e
000021F4  5F                pop di
000021F5  BA0000            mov dx,0x0
000021F8  B94F00            mov cx,0x4f
000021FB  57                push di
000021FC  8B05              mov ax,[di]
000021FE  3B4506            cmp ax,[di+0x6]
00002201  7323              jnc 0x2226
00002203  8B5506            mov dx,[di+0x6]
00002206  8915              mov [di],dx
00002208  894506            mov [di+0x6],ax
0000220B  8B4502            mov ax,[di+0x2]
0000220E  8B5508            mov dx,[di+0x8]
00002211  895502            mov [di+0x2],dx
00002214  894508            mov [di+0x8],ax
00002217  8B4504            mov ax,[di+0x4]
0000221A  8B550A            mov dx,[di+0xa]
0000221D  895504            mov [di+0x4],dx
00002220  89450A            mov [di+0xa],ax
00002223  BAFFFF            mov dx,0xffff
00002226  83C706            add di,byte +0x6
00002229  E2D1              loop 0x21fc
0000222B  5F                pop di
0000222C  83FA00            cmp dx,byte +0x0
0000222F  75C4              jnz 0x21f5
00002231  FE0E5F03          dec byte [0x35f]
00002235  7454              jz 0x228b
00002237  53                push bx
00002238  57                push di
00002239  B90800            mov cx,0x8
0000223C  833D00            cmp word [di],byte +0x0
0000223F  7448              jz 0x2289
00002241  53                push bx
00002242  51                push cx
00002243  57                push di
00002244  8BFB              mov di,bx
00002246  83C764            add di,byte +0x64
00002249  57                push di
0000224A  B96400            mov cx,0x64
0000224D  FC                cld
0000224E  F3A4              rep movsb
00002250  B80800            mov ax,0x8
00002253  2BC1              sub ax,cx
00002255  5B                pop bx
00002256  5F                pop di
00002257  57                push di
00002258  8B5502            mov dx,[di+0x2]
0000225B  E8F900            call word 0x2357
0000225E  8BD3              mov dx,bx
00002260  E8D800            call word 0x233b
00002263  8B5504            mov dx,[di+0x4]
00002266  E8EE00            call word 0x2357
00002269  8BD3              mov dx,bx
0000226B  E8CD00            call word 0x233b
0000226E  E8F1FE            call word 0x2162
00002271  833C00            cmp word [si],byte +0x0
00002274  7507              jnz 0x227d
00002276  C7050100          mov word [di],0x1
0000227A  EB05              jmp short 0x2281
0000227C  90                nop
0000227D  8B04              mov ax,[si]
0000227F  8905              mov [di],ax
00002281  5F                pop di
00002282  59                pop cx
00002283  5B                pop bx
00002284  83C706            add di,byte +0x6
00002287  E2B3              loop 0x223c
00002289  5F                pop di
0000228A  5B                pop bx
0000228B  BA0000            mov dx,0x0
0000228E  B90700            mov cx,0x7
00002291  57                push di
00002292  8B05              mov ax,[di]
00002294  3B4506            cmp ax,[di+0x6]
00002297  7323              jnc 0x22bc
00002299  8B5506            mov dx,[di+0x6]
0000229C  8915              mov [di],dx
0000229E  894506            mov [di+0x6],ax
000022A1  8B4502            mov ax,[di+0x2]
000022A4  8B5508            mov dx,[di+0x8]
000022A7  895502            mov [di+0x2],dx
000022AA  894508            mov [di+0x8],ax
000022AD  8B4504            mov ax,[di+0x4]
000022B0  8B550A            mov dx,[di+0xa]
000022B3  895504            mov [di+0x4],dx
000022B6  89450A            mov [di+0xa],ax
000022B9  BAFFFF            mov dx,0xffff
000022BC  83C706            add di,byte +0x6
000022BF  E2D1              loop 0x2292
000022C1  5F                pop di
000022C2  83FA00            cmp dx,byte +0x0
000022C5  75C4              jnz 0x228b
000022C7  C70671030000      mov word [0x371],0x0
000022CD  8BF7              mov si,di
000022CF  833C00            cmp word [si],byte +0x0
000022D2  7433              jz 0x2307
000022D4  56                push si
000022D5  8B04              mov ax,[si]
000022D7  B90800            mov cx,0x8
000022DA  3904              cmp [si],ax
000022DC  7504              jnz 0x22e2
000022DE  FF067103          inc word [0x371]
000022E2  83C606            add si,byte +0x6
000022E5  E2F3              loop 0x22da
000022E7  E8DC02            call word 0x25c6
000022EA  D1EB              shr bx,1
000022EC  D1EB              shr bx,1
000022EE  D1EB              shr bx,1
000022F0  D1EB              shr bx,1
000022F2  81E30700          and bx,0x7
000022F6  3B1E7103          cmp bx,[0x371]
000022FA  73EB              jnc 0x22e7
000022FC  8BF3              mov si,bx
000022FE  03DB              add bx,bx
00002300  03DE              add bx,si
00002302  03DB              add bx,bx
00002304  5E                pop si
00002305  03F3              add si,bx
00002307  5F                pop di
00002308  5B                pop bx
00002309  C3                ret
0000230A  51                push cx
0000230B  56                push si
0000230C  57                push di
0000230D  83C30A            add bx,byte +0xa
00002310  8D36D30A          lea si,[0xad3]
00002314  B95000            mov cx,0x50
00002317  BF0000            mov di,0x0
0000231A  803F8F            cmp byte [bx],0x8f
0000231D  7505              jnz 0x2324
0000231F  033C              add di,[si]
00002321  EB08              jmp short 0x232b
00002323  90                nop
00002324  803F80            cmp byte [bx],0x80
00002327  7502              jnz 0x232b
00002329  2B3C              sub di,[si]
0000232B  43                inc bx
0000232C  83C602            add si,byte +0x2
0000232F  E2E9              loop 0x231a
00002331  81C7D007          add di,0x7d0
00002335  8BDF              mov bx,di
00002337  5F                pop di
00002338  5E                pop si
00002339  59                pop cx
0000233A  C3                ret
0000233B  53                push bx
0000233C  51                push cx
0000233D  8BF2              mov si,dx
0000233F  B96400            mov cx,0x64
00002342  8A07              mov al,[bx]
00002344  3C00              cmp al,0x0
00002346  7406              jz 0x234e
00002348  3CFF              cmp al,0xff
0000234A  7402              jz 0x234e
0000234C  340F              xor al,0xf
0000234E  8804              mov [si],al
00002350  43                inc bx
00002351  46                inc si
00002352  E2EE              loop 0x2342
00002354  59                pop cx
00002355  5B                pop bx
00002356  C3                ret
00002357  53                push bx
00002358  52                push dx
00002359  51                push cx
0000235A  C6066E03FF        mov byte [0x36e],0xff
0000235F  03DA              add bx,dx
00002361  803F00            cmp byte [bx],0x0
00002364  7546              jnz 0x23ac
00002366  C6078F            mov byte [bx],0x8f
00002369  B90800            mov cx,0x8
0000236C  8D36CE02          lea si,[0x2ce]
00002370  53                push bx
00002371  8B14              mov dx,[si]
00002373  03DA              add bx,dx
00002375  803F80            cmp byte [bx],0x80
00002378  7522              jnz 0x239c
0000237A  03DA              add bx,dx
0000237C  803F8F            cmp byte [bx],0x8f
0000237F  7408              jz 0x2389
00002381  803F80            cmp byte [bx],0x80
00002384  74F4              jz 0x237a
00002386  EB14              jmp short 0x239c
00002388  90                nop
00002389  5B                pop bx
0000238A  53                push bx
0000238B  C6066E0300        mov byte [0x36e],0x0
00002390  03DA              add bx,dx
00002392  803F8F            cmp byte [bx],0x8f
00002395  7405              jz 0x239c
00002397  C6078F            mov byte [bx],0x8f
0000239A  EBF4              jmp short 0x2390
0000239C  5B                pop bx
0000239D  83C602            add si,byte +0x2
000023A0  E2CE              loop 0x2370
000023A2  803E6E0300        cmp byte [0x36e],0x0
000023A7  7403              jz 0x23ac
000023A9  C60700            mov byte [bx],0x0
000023AC  59                pop cx
000023AD  5A                pop dx
000023AE  5B                pop bx
000023AF  803E6E0300        cmp byte [0x36e],0x0
000023B4  7401              jz 0x23b7
000023B6  F9                stc
000023B7  C3                ret
000023B8  C606600308        mov byte [0x360],0x8
000023BD  8D1EE106          lea bx,[0x6e1]
000023C1  8D364507          lea si,[0x745]
000023C5  B510              mov ch,0x10
000023C7  B150              mov cl,0x50
000023C9  8A04              mov al,[si]
000023CB  3A07              cmp al,[bx]
000023CD  7476              jz 0x2445
000023CF  803E600300        cmp byte [0x360],0x0
000023D4  7502              jnz 0x23d8
000023D6  8807              mov [bx],al
000023D8  53                push bx
000023D9  52                push dx
000023DA  51                push cx
000023DB  BB1900            mov bx,0x19
000023DE  BA0003            mov dx,0x300
000023E1  8AC8              mov cl,al
000023E3  8AC5              mov al,ch
000023E5  D0C8              ror al,1
000023E7  D0C8              ror al,1
000023E9  D0C8              ror al,1
000023EB  D0C8              ror al,1
000023ED  240F              and al,0xf
000023EF  FEC8              dec al
000023F1  7406              jz 0x23f9
000023F3  03DA              add bx,dx
000023F5  FEC8              dec al
000023F7  75FA              jnz 0x23f3
000023F9  BA0700            mov dx,0x7
000023FC  8AC5              mov al,ch
000023FE  240F              and al,0xf
00002400  FEC8              dec al
00002402  7406              jz 0x240a
00002404  03DA              add bx,dx
00002406  FEC8              dec al
00002408  75FA              jnz 0x2404
0000240A  87DA              xchg bx,dx
0000240C  8D1EBE02          lea bx,[0x2be]
00002410  A06003            mov al,[0x360]
00002413  2401              and al,0x1
00002415  750E              jnz 0x2425
00002417  8D1EAE02          lea bx,[0x2ae]
0000241B  8AC1              mov al,cl
0000241D  240F              and al,0xf
0000241F  7404              jz 0x2425
00002421  8D1E9E02          lea bx,[0x29e]
00002425  8A27              mov ah,[bx]
00002427  43                inc bx
00002428  B503              mov ch,0x3
0000242A  51                push cx
0000242B  52                push dx
0000242C  B105              mov cl,0x5
0000242E  8A07              mov al,[bx]
00002430  E8E001            call word 0x2613
00002433  FEC2              inc dl
00002435  43                inc bx
00002436  FEC9              dec cl
00002438  75F4              jnz 0x242e
0000243A  5A                pop dx
0000243B  59                pop cx
0000243C  FEC6              inc dh
0000243E  FECD              dec ch
00002440  75E8              jnz 0x242a
00002442  59                pop cx
00002443  5A                pop dx
00002444  5B                pop bx
00002445  43                inc bx
00002446  46                inc si
00002447  8AC5              mov al,ch
00002449  0401              add al,0x1
0000244B  27                daa
0000244C  8AE8              mov ch,al
0000244E  FEC9              dec cl
00002450  7403              jz 0x2455
00002452  E974FF            jmp word 0x23c9
00002455  803E600300        cmp byte [0x360],0x0
0000245A  740D              jz 0x2469
0000245C  FE0E6003          dec byte [0x360]
00002460  BF0200            mov di,0x2
00002463  E85501            call word 0x25bb
00002466  E954FF            jmp word 0x23bd
00002469  8D1ED706          lea bx,[0x6d7]
0000246D  8D36870B          lea si,[0xb87]
00002471  8B14              mov dx,[si]
00002473  83C602            add si,byte +0x2
00002476  8B0C              mov cx,[si]
00002478  83C602            add si,byte +0x2
0000247B  8A04              mov al,[si]
0000247D  46                inc si
0000247E  3C00              cmp al,0x0
00002480  741F              jz 0x24a1
00002482  53                push bx
00002483  03DA              add bx,dx
00002485  8A27              mov ah,[bx]
00002487  80E480            and ah,0x80
0000248A  7412              jz 0x249e
0000248C  8D1EBF0A          lea bx,[0xabf]
00002490  03DA              add bx,dx
00002492  03DA              add bx,dx
00002494  03D9              add bx,cx
00002496  03D9              add bx,cx
00002498  8807              mov [bx],al
0000249A  43                inc bx
0000249B  C60700            mov byte [bx],0x0
0000249E  5B                pop bx
0000249F  EBD0              jmp short 0x2471
000024A1  803E620300        cmp byte [0x362],0x0
000024A6  7503              jnz 0x24ab
000024A8  EB5F              jmp short 0x2509
000024AA  90                nop
000024AB  803E640300        cmp byte [0x364],0x0
000024B0  7503              jnz 0x24b5
000024B2  EB55              jmp short 0x2509
000024B4  90                nop
000024B5  803E650300        cmp byte [0x365],0x0
000024BA  7503              jnz 0x24bf
000024BC  EB4B              jmp short 0x2509
000024BE  90                nop
000024BF  C3                ret
000024C0  FE0E6203          dec byte [0x362]
000024C4  8D1E3B07          lea bx,[0x73b]
000024C8  BA0000            mov dx,0x0
000024CB  B96400            mov cx,0x64
000024CE  803F80            cmp byte [bx],0x80
000024D1  7505              jnz 0x24d8
000024D3  FEC6              inc dh
000024D5  EB08              jmp short 0x24df
000024D7  90                nop
000024D8  803F8F            cmp byte [bx],0x8f
000024DB  7502              jnz 0x24df
000024DD  FEC2              inc dl
000024DF  43                inc bx
000024E0  E2EC              loop 0x24ce
000024E2  88366403          mov [0x364],dh
000024E6  88166503          mov [0x365],dl
000024EA  B60B              mov dh,0xb
000024EC  B205              mov dl,0x5
000024EE  A06203            mov al,[0x362]
000024F1  E8AC00            call word 0x25a0
000024F4  B60E              mov dh,0xe
000024F6  B213              mov dl,0x13
000024F8  A06403            mov al,[0x364]
000024FB  E8A200            call word 0x25a0
000024FE  B610              mov dh,0x10
00002500  B213              mov dl,0x13
00002502  A06503            mov al,[0x365]
00002505  E89800            call word 0x25a0
00002508  C3                ret
00002509  B605              mov dh,0x5
0000250B  B200              mov dl,0x0
0000250D  E82501            call word 0x2635
00002510  B606              mov dh,0x6
00002512  B200              mov dl,0x0
00002514  E81E01            call word 0x2635
00002517  B605              mov dh,0x5
00002519  B205              mov dl,0x5
0000251B  8D1E4602          lea bx,[0x246]
0000251F  B90D00            mov cx,0xd
00002522  E83001            call word 0x2655
00002525  A06503            mov al,[0x365]
00002528  3A066403          cmp al,[0x364]
0000252C  7424              jz 0x2552
0000252E  7C11              jl 0x2541
00002530  B606              mov dh,0x6
00002532  B209              mov dl,0x9
00002534  8D1E5302          lea bx,[0x253]
00002538  B90600            mov cx,0x6
0000253B  E81701            call word 0x2655
0000253E  EB20              jmp short 0x2560
00002540  90                nop
00002541  B606              mov dh,0x6
00002543  B208              mov dl,0x8
00002545  8D1E5902          lea bx,[0x259]
00002549  B90800            mov cx,0x8
0000254C  E80601            call word 0x2655
0000254F  EB0F              jmp short 0x2560
00002551  90                nop
00002552  B606              mov dh,0x6
00002554  B207              mov dl,0x7
00002556  8D1E6102          lea bx,[0x261]
0000255A  B90800            mov cx,0x8
0000255D  E8F500            call word 0x2655
00002560  B608              mov dh,0x8
00002562  B200              mov dl,0x0
00002564  E8CE00            call word 0x2635
00002567  B609              mov dh,0x9
00002569  B200              mov dl,0x0
0000256B  E8C700            call word 0x2635
0000256E  B608              mov dh,0x8
00002570  B206              mov dl,0x6
00002572  8D1E6902          lea bx,[0x269]
00002576  B90B00            mov cx,0xb
00002579  E8D900            call word 0x2655
0000257C  B609              mov dh,0x9
0000257E  B20B              mov dl,0xb
00002580  B020              mov al,0x20
00002582  B41F              mov ah,0x1f
00002584  E88C00            call word 0x2613
00002587  E8F300            call word 0x267d
0000258A  3C59              cmp al,0x59
0000258C  7404              jz 0x2592
0000258E  3C79              cmp al,0x79
00002590  7503              jnz 0x2595
00002592  E9A5F6            jmp word 0x1c3a
00002595  3C4E              cmp al,0x4e
00002597  7404              jz 0x259d
00002599  3C6E              cmp al,0x6e
0000259B  75EA              jnz 0x2587
0000259D  E98FF6            jmp word 0x1c2f
000025A0  B400              mov ah,0x0
000025A2  B30A              mov bl,0xa
000025A4  F6F3              div bl
000025A6  0430              add al,0x30
000025A8  50                push ax
000025A9  B41F              mov ah,0x1f
000025AB  E86500            call word 0x2613
000025AE  58                pop ax
000025AF  FEC2              inc dl
000025B1  8AC4              mov al,ah
000025B3  0430              add al,0x30
000025B5  B41F              mov ah,0x1f
000025B7  E85900            call word 0x2613
000025BA  C3                ret
000025BB  51                push cx
000025BC  B9C012            mov cx,0x12c0
000025BF  E2FE              loop 0x25bf
000025C1  4F                dec di
000025C2  75F8              jnz 0x25bc
000025C4  59                pop cx
000025C5  C3                ret
000025C6  A16F03            mov ax,[0x36f]
000025C9  D1E8              shr ax,1
000025CB  8BD8              mov bx,ax
000025CD  03DB              add bx,bx
000025CF  03DB              add bx,bx
000025D1  03D8              add bx,ax
000025D3  891E6F03          mov [0x36f],bx
000025D7  C3                ret
000025D8  06                push es
000025D9  1E                push ds
000025DA  56                push si
000025DB  57                push di
000025DC  52                push dx
000025DD  51                push cx
000025DE  53                push bx
000025DF  B700              mov bh,0x0
000025E1  B600              mov dh,0x0
000025E3  B200              mov dl,0x0
000025E5  50                push ax
000025E6  B402              mov ah,0x2
000025E8  CD10              int 0x10
000025EA  58                pop ax
000025EB  8ADC              mov bl,ah
000025ED  B020              mov al,0x20
000025EF  B98007            mov cx,0x780
000025F2  B409              mov ah,0x9
000025F4  CD10              int 0x10
000025F6  B700              mov bh,0x0
000025F8  B618              mov dh,0x18
000025FA  B200              mov dl,0x0
000025FC  B402              mov ah,0x2
000025FE  CD10              int 0x10
00002600  B300              mov bl,0x0
00002602  B020              mov al,0x20
00002604  B95000            mov cx,0x50
00002607  B409              mov ah,0x9
00002609  CD10              int 0x10
0000260B  5B                pop bx
0000260C  59                pop cx
0000260D  5A                pop dx
0000260E  5F                pop di
0000260F  5E                pop si
00002610  1F                pop ds
00002611  07                pop es
00002612  C3                ret
00002613  06                push es
00002614  1E                push ds
00002615  56                push si
00002616  57                push di
00002617  52                push dx
00002618  51                push cx
00002619  53                push bx
0000261A  50                push ax
0000261B  B700              mov bh,0x0
0000261D  B402              mov ah,0x2
0000261F  CD10              int 0x10
00002621  58                pop ax
00002622  50                push ax
00002623  8ADC              mov bl,ah
00002625  B90100            mov cx,0x1
00002628  B409              mov ah,0x9
0000262A  CD10              int 0x10
0000262C  58                pop ax
0000262D  5B                pop bx
0000262E  59                pop cx
0000262F  5A                pop dx
00002630  5F                pop di
00002631  5E                pop si
00002632  1F                pop ds
00002633  07                pop es
00002634  C3                ret
00002635  06                push es
00002636  1E                push ds
00002637  56                push si
00002638  57                push di
00002639  52                push dx
0000263A  51                push cx
0000263B  53                push bx
0000263C  B700              mov bh,0x0
0000263E  B402              mov ah,0x2
00002640  CD10              int 0x10
00002642  B31F              mov bl,0x1f
00002644  B020              mov al,0x20
00002646  B91800            mov cx,0x18
00002649  B409              mov ah,0x9
0000264B  CD10              int 0x10
0000264D  5B                pop bx
0000264E  59                pop cx
0000264F  5A                pop dx
00002650  5F                pop di
00002651  5E                pop si
00002652  1F                pop ds
00002653  07                pop es
00002654  C3                ret
00002655  06                push es
00002656  1E                push ds
00002657  56                push si
00002658  57                push di
00002659  51                push cx
0000265A  53                push bx
0000265B  8A07              mov al,[bx]
0000265D  B41F              mov ah,0x1f
0000265F  E8B1FF            call word 0x2613
00002662  43                inc bx
00002663  FEC2              inc dl
00002665  E2F4              loop 0x265b
00002667  5B                pop bx
00002668  59                pop cx
00002669  5F                pop di
0000266A  5E                pop si
0000266B  1F                pop ds
0000266C  07                pop es
0000266D  C3                ret
0000266E  06                push es
0000266F  1E                push ds
00002670  56                push si
00002671  57                push di
00002672  52                push dx
00002673  51                push cx
00002674  53                push bx
00002675  5B                pop bx
00002676  59                pop cx
00002677  5A                pop dx
00002678  5F                pop di
00002679  5E                pop si
0000267A  1F                pop ds
0000267B  07                pop es
0000267C  C3                ret
0000267D  06                push es
0000267E  1E                push ds
0000267F  56                push si
00002680  57                push di
00002681  52                push dx
00002682  51                push cx
00002683  53                push bx
00002684  B700              mov bh,0x0
00002686  B402              mov ah,0x2
00002688  CD10              int 0x10
0000268A  B40C              mov ah,0xc
0000268C  B007              mov al,0x7
0000268E  CD21              int 0x21
00002690  3C61              cmp al,0x61
00002692  7206              jc 0x269a
00002694  3C7A              cmp al,0x7a
00002696  7702              ja 0x269a
00002698  245F              and al,0x5f
0000269A  5B                pop bx
0000269B  59                pop cx
0000269C  5A                pop dx
0000269D  5F                pop di
0000269E  5E                pop si
0000269F  1F                pop ds
000026A0  07                pop es
000026A1  C3                ret
000026A2  06                push es
000026A3  1E                push ds
000026A4  56                push si
000026A5  57                push di
000026A6  52                push dx
000026A7  51                push cx
000026A8  53                push bx
000026A9  B42C              mov ah,0x2c
000026AB  CD21              int 0x21
000026AD  8BC2              mov ax,dx
000026AF  D1E8              shr ax,1
000026B1  D1E8              shr ax,1
000026B3  D1E8              shr ax,1
000026B5  D1E8              shr ax,1
000026B7  D1E8              shr ax,1
000026B9  5B                pop bx
000026BA  59                pop cx
000026BB  5A                pop dx
000026BC  5F                pop di
000026BD  5E                pop si
000026BE  1F                pop ds
000026BF  07                pop es
000026C0  C3                ret
