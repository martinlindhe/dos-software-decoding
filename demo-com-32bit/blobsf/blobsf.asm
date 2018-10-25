00000100  B81300            mov ax,0x13
00000103  CD10              int 0x10
00000105  33C9              xor cx,cx
00000107  BAC603            mov dx,0x3c6
0000010A  B8FF00            mov ax,0xff
0000010D  EE                out dx,al
0000010E  BAC803            mov dx,0x3c8
00000111  8BC1              mov ax,cx
00000113  EE                out dx,al
00000114  BAC903            mov dx,0x3c9
00000117  51                push cx
00000118  C1E902            shr cx,byte 0x2
0000011B  8BC1              mov ax,cx
0000011D  EE                out dx,al
0000011E  EF                out dx,ax
0000011F  EE                out dx,al
00000120  59                pop cx
00000121  41                inc cx
00000122  81F90001          cmp cx,0x100
00000126  75DF              jnz 0x107
00000128  33C0              xor ax,ax
0000012A  CD1A              int 0x1a
0000012C  89163002          mov [0x230],dx
00000130  E83F00            call 0x172
00000133  E8B700            call 0x1ed
00000136  33C0              xor ax,ax
00000138  CD1A              int 0x1a
0000013A  2B163002          sub dx,[0x230]
0000013E  74F6              jz 0x136
00000140  B401              mov ah,0x1
00000142  CD16              int 0x16
00000144  3C1B              cmp al,0x1b
00000146  75E0              jnz 0x128
00000148  B80300            mov ax,0x3
0000014B  CD10              int 0x10
0000014D  CD20              int 0x20
0000014F  60                pusha
00000150  B800A0            mov ax,0xa000
00000153  8EC0              mov es,ax
00000155  8B1E3402          mov bx,[0x234]
00000159  8B0E3402          mov cx,[0x234]
0000015D  C1E308            shl bx,byte 0x8
00000160  C1E106            shl cx,byte 0x6
00000163  03D9              add bx,cx
00000165  031E3202          add bx,[0x232]
00000169  8A2E5202          mov ch,[0x252]
0000016D  26882F            mov [es:bx],ch
00000170  61                popa
00000171  C3                ret
00000172  60                pusha
00000173  B900FA            mov cx,0xfa00
00000176  33DB              xor bx,bx
00000178  66C7063A02000000  mov dword [0x23a],0x0
         -00
00000181  33D2              xor dx,dx
00000183  8BC1              mov ax,cx
00000185  F7364202          div word [0x242]
00000189  A33402            mov [0x234],ax
0000018C  89163202          mov [0x232],dx
00000190  A13402            mov ax,[0x234]
00000193  2B874C02          sub ax,[bx+0x24c]
00000197  D1E8              shr ax,1
00000199  F7E0              mul ax
0000019B  6698              cwde
0000019D  66A33602          mov [0x236],eax
000001A1  A13202            mov ax,[0x232]
000001A4  2B874602          sub ax,[bx+0x246]
000001A8  D1E8              shr ax,1
000001AA  F7E0              mul ax
000001AC  6698              cwde
000001AE  6601063602        add [0x236],eax
000001B3  6633D2            xor edx,edx
000001B6  66A13E02          mov eax,[0x23e]
000001BA  66FF063602        inc dword [0x236]
000001BF  66F7363602        div dword [0x236]
000001C4  6698              cwde
000001C6  6601063A02        add [0x23a],eax
000001CB  83C302            add bx,byte +0x2
000001CE  83FB04            cmp bx,byte +0x4
000001D1  76BD              jna 0x190
000001D3  6698              cwde
000001D5  66A13A02          mov eax,[0x23a]
000001D9  663DFF000000      cmp eax,0xff
000001DF  7202              jc 0x1e3
000001E1  B0FF              mov al,0xff
000001E3  A25202            mov [0x252],al
000001E6  E866FF            call 0x14f
000001E9  E28B              loop 0x176
000001EB  61                popa
000001EC  C3                ret
000001ED  60                pusha
000001EE  813E4402DC00      cmp word [0x244],0xdc
000001F4  7206              jc 0x1fc
000001F6  C70644020000      mov word [0x244],0x0
000001FC  FF064402          inc word [0x244]
00000200  A14402            mov ax,[0x244]
00000203  F7E0              mul ax
00000205  C1E807            shr ax,byte 0x7
00000208  8B0E4402          mov cx,[0x244]
0000020C  890E4602          mov [0x246],cx
00000210  A34C02            mov [0x24c],ax
00000213  BBC800            mov bx,0xc8
00000216  2BD8              sub bx,ax
00000218  890E4802          mov [0x248],cx
0000021C  891E4E02          mov [0x24e],bx
00000220  BB4001            mov bx,0x140
00000223  2BD8              sub bx,ax
00000225  891E4A02          mov [0x24a],bx
00000229  890E5002          mov [0x250],cx
0000022D  61                popa
0000022E  C3                ret
0000022F  0000              add [bx+si],al
00000231  0000              add [bx+si],al
00000233  0000              add [bx+si],al
00000235  0000              add [bx+si],al
00000237  0000              add [bx+si],al
00000239  0000              add [bx+si],al
0000023B  0000              add [bx+si],al
0000023D  0030              add [bx+si],dh
0000023F  7500              jnz 0x241
00000241  004001            add [bx+si+0x1],al
00000244  0000              add [bx+si],al
00000246  0000              add [bx+si],al
00000248  0000              add [bx+si],al
0000024A  0000              add [bx+si],al
0000024C  0000              add [bx+si],al
0000024E  0000              add [bx+si],al
00000250  0000              add [bx+si],al
00000252  00                db 0x00
