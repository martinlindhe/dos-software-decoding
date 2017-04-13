00000100  E98001            jmp word 0x283
00000103  0000              add [bx+si],al
00000105  0000              add [bx+si],al
00000107  96                xchg ax,si
00000108  000D              add [di],cl
0000010A  0A0A              or cl,[bp+si]
0000010C  56                push si
0000010D  41                inc cx
0000010E  52                push dx
0000010F  49                dec cx
00000110  53                push bx
00000111  4C                dec sp
00000112  4F                dec di
00000113  57                push di
00000114  2020              and [bx+si],ah
00000116  627920            bound di,[bx+di+0x20]
00000119  205261            and [bp+si+0x61],dl
0000011C  7920              jns 0x13e
0000011E  55                push bp
0000011F  7368              jnc 0x189
00000121  657220            gs jc 0x144
00000124  2020              and [bx+si],ah
00000126  2020              and [bx+si],ah
00000128  2020              and [bx+si],ah
0000012A  2020              and [bx+si],ah
0000012C  2020              and [bx+si],ah
0000012E  2020              and [bx+si],ah
00000130  2020              and [bx+si],ah
00000132  2020              and [bx+si],ah
00000134  2020              and [bx+si],ah
00000136  5B                pop bx
00000137  54                push sp
00000138  6F                outsw
00000139  20736C            and [bp+di+0x6c],dh
0000013C  6F                outsw
0000013D  7720              ja 0x15f
0000013F  41                inc cx
00000140  54                push sp
00000141  20646F            and [si+0x6f],ah
00000144  776E              ja 0x1b4
00000146  20746F            and [si+0x6f],dh
00000149  20706C            and [bx+si+0x6c],dh
0000014C  61                popaw
0000014D  7920              jns 0x16f
0000014F  6761              a32 popaw
00000151  6D                insw
00000152  65735D            gs jnc 0x1b2
00000155  0D0A0A            or ax,0xa0a
00000158  4C                dec sp
00000159  65667420          gs o32 jz 0x17d
0000015D  53                push bx
0000015E  686966            push word 0x6669
00000161  743A              jz 0x19d
00000163  2020              and [bx+si],ah
00000165  2020              and [bx+si],ah
00000167  53                push bx
00000168  6C                insb
00000169  6F                outsw
0000016A  7773              ja 0x1df
0000016C  20646F            and [si+0x6f],ah
0000016F  776E              ja 0x1df
00000171  206163            and [bx+di+0x63],ah
00000174  7469              jz 0x1df
00000176  6F                outsw
00000177  6E                outsb
00000178  0D0A0A            or ax,0xa0a
0000017B  52                push dx
0000017C  6967687420        imul sp,[bx+0x68],word 0x2074
00000181  53                push bx
00000182  686966            push word 0x6669
00000185  743A              jz 0x1c1
00000187  2020              and [bx+si],ah
00000189  2020              and [bx+si],ah
0000018B  53                push bx
0000018C  7065              jo 0x1f3
0000018E  65647320          fs jnc 0x1b2
00000192  7570              jnz 0x204
00000194  206163            and [bx+di+0x63],ah
00000197  7469              jz 0x202
00000199  6F                outsw
0000019A  6E                outsb
0000019B  0D0A0A            or ax,0xa0a
0000019E  4C                dec sp
0000019F  65667420          gs o32 jz 0x1c3
000001A3  53                push bx
000001A4  686966            push word 0x6669
000001A7  7420              jz 0x1c9
000001A9  26205269          and [es:bp+si+0x69],dl
000001AD  67687420          push word 0x2074
000001B1  53                push bx
000001B2  686966            push word 0x6669
000001B5  7420              jz 0x1d7
000001B7  746F              jz 0x228
000001B9  67657468          gs jz 0x225
000001BD  65723A            gs jc 0x1fa
000001C0  2020              and [bx+si],ah
000001C2  2020              and [bx+si],ah
000001C4  45                inc bp
000001C5  7869              js 0x230
000001C7  7473              jz 0x23c
000001C9  207072            and [bx+si+0x72],dh
000001CC  6F                outsw
000001CD  677261            jc 0x231
000001D0  6D                insw
000001D1  0D0A24            or ax,0x240a
000001D4  43                inc bx
000001D5  6F                outsw
000001D6  6D                insw
000001D7  7075              jo 0x24e
000001D9  7465              jz 0x240
000001DB  7220              jc 0x1fd
000001DD  6973206261        imul si,[bp+di+0x20],word 0x6162
000001E2  636B20            arpl [bp+di+0x20],bp
000001E5  746F              jz 0x256
000001E7  206675            and [bp+0x75],ah
000001EA  6C                insb
000001EB  6C                insb
000001EC  207370            and [bp+di+0x70],dh
000001EF  6565640D0A50      fs or ax,0x500a
000001F5  53                push bx
000001F6  51                push cx
000001F7  52                push dx
000001F8  1E                push ds
000001F9  B84000            mov ax,0x40
000001FC  8ED8              mov ds,ax
000001FE  BB1700            mov bx,0x17
00000201  8A17              mov dl,[bx]
00000203  8AF2              mov dh,dl
00000205  8CC8              mov ax,cs
00000207  8ED8              mov ds,ax
00000209  80E201            and dl,0x1
0000020C  741A              jz 0x228
0000020E  8AD6              mov dl,dh
00000210  80E202            and dl,0x2
00000213  7542              jnz 0x257
00000215  2EA10701          mov ax,[cs:0x107]
00000219  2D0A00            sub ax,0xa
0000021C  3D0A00            cmp ax,0xa
0000021F  721E              jc 0x23f
00000221  2EA30701          mov [cs:0x107],ax
00000225  EB18              jmp short 0x23f
00000227  90                nop
00000228  8AD6              mov dl,dh
0000022A  80E202            and dl,0x2
0000022D  7410              jz 0x23f
0000022F  2EA10701          mov ax,[cs:0x107]
00000233  050A00            add ax,0xa
00000236  3D2C01            cmp ax,0x12c
00000239  7704              ja 0x23f
0000023B  2EA30701          mov [cs:0x107],ax
0000023F  2E8B0E0701        mov cx,[cs:0x107]
00000244  51                push cx
00000245  B96400            mov cx,0x64
00000248  E2FE              loop 0x248
0000024A  59                pop cx
0000024B  E2F7              loop 0x244
0000024D  1F                pop ds
0000024E  5A                pop dx
0000024F  59                pop cx
00000250  5B                pop bx
00000251  58                pop ax
00000252  2EFF2E0301        jmp word far [cs:0x103]
00000257  FA                cli
00000258  2E8B160301        mov dx,[cs:0x103]
0000025D  2E8E1E0501        mov ds,[cs:0x105]
00000262  B81C25            mov ax,0x251c
00000265  CD21              int 0x21
00000267  FB                sti
00000268  56                push si
00000269  33F6              xor si,si
0000026B  2E8A84D401        mov al,[cs:si+0x1d4]
00000270  B40E              mov ah,0xe
00000272  32FF              xor bh,bh
00000274  CD10              int 0x10
00000276  46                inc si
00000277  83FE20            cmp si,byte +0x20
0000027A  72EF              jc 0x26b
0000027C  5E                pop si
0000027D  1F                pop ds
0000027E  5A                pop dx
0000027F  59                pop cx
00000280  5B                pop bx
00000281  58                pop ax
00000282  CF                iretw
00000283  BA0901            mov dx,0x109
00000286  B409              mov ah,0x9
00000288  CD21              int 0x21
0000028A  FA                cli
0000028B  B81C35            mov ax,0x351c
0000028E  CD21              int 0x21
00000290  2E891E0301        mov [cs:0x103],bx
00000295  8CC0              mov ax,es
00000297  2EA30501          mov [cs:0x105],ax
0000029B  8CC8              mov ax,cs
0000029D  8ED8              mov ds,ax
0000029F  BAF401            mov dx,0x1f4
000002A2  B81C25            mov ax,0x251c
000002A5  CD21              int 0x21
000002A7  FB                sti
000002A8  BA8302            mov dx,0x283
000002AB  CD27              int 0x27
