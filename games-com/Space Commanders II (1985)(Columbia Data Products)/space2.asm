00000100  4D                dec bp
00000101  5A                pop dx
00000102  C8011200          enter 0x1201,0x0
00000106  07                pop es
00000107  0020              add [bx+si],ah
00000109  0000              add [bx+si],al
0000010B  00FF              add bh,bh
0000010D  FF10              call word [bx+si]
0000010F  02C8              add cl,al
00000111  006F47            add [bx+0x47],ch
00000114  0000              add [bx+si],al
00000116  0000              add [bx+si],al
00000118  1C00              sbb al,0x0
0000011A  0000              add [bx+si],al
0000011C  0200              add al,[bx+si]
0000011E  0000              add [bx+si],al
00000120  3000              xor [bx+si],al
00000122  0000              add [bx+si],al
00000124  49                dec cx
00000125  0000              add [bx+si],al
00000127  005D00            add [di+0x0],bl
0000012A  0000              add [bx+si],al
0000012C  8800              mov [bx+si],al
0000012E  0000              add [bx+si],al
00000130  CB                retf
00000131  0000              add [bx+si],al
00000133  0039              add [bx+di],bh
00000135  0200              add al,[bx+si]
00000137  0000              add [bx+si],al
00000139  0000              add [bx+si],al
0000013B  0000              add [bx+si],al
0000013D  0000              add [bx+si],al
0000013F  0000              add [bx+si],al
00000141  0000              add [bx+si],al
00000143  0000              add [bx+si],al
00000145  0000              add [bx+si],al
00000147  0000              add [bx+si],al
00000149  0000              add [bx+si],al
0000014B  0000              add [bx+si],al
0000014D  0000              add [bx+si],al
0000014F  0000              add [bx+si],al
00000151  0000              add [bx+si],al
00000153  0000              add [bx+si],al
00000155  0000              add [bx+si],al
00000157  0000              add [bx+si],al
00000159  0000              add [bx+si],al
0000015B  0000              add [bx+si],al
0000015D  0000              add [bx+si],al
0000015F  0000              add [bx+si],al
00000161  0000              add [bx+si],al
00000163  0000              add [bx+si],al
00000165  0000              add [bx+si],al
00000167  0000              add [bx+si],al
00000169  0000              add [bx+si],al
0000016B  0000              add [bx+si],al
0000016D  0000              add [bx+si],al
0000016F  0000              add [bx+si],al
00000171  0000              add [bx+si],al
00000173  0000              add [bx+si],al
00000175  0000              add [bx+si],al
00000177  0000              add [bx+si],al
00000179  0000              add [bx+si],al
0000017B  0000              add [bx+si],al
0000017D  0000              add [bx+si],al
0000017F  0000              add [bx+si],al
00000181  0000              add [bx+si],al
00000183  0000              add [bx+si],al
00000185  0000              add [bx+si],al
00000187  0000              add [bx+si],al
00000189  0000              add [bx+si],al
0000018B  0000              add [bx+si],al
0000018D  0000              add [bx+si],al
0000018F  0000              add [bx+si],al
00000191  0000              add [bx+si],al
00000193  0000              add [bx+si],al
00000195  0000              add [bx+si],al
00000197  0000              add [bx+si],al
00000199  0000              add [bx+si],al
0000019B  0000              add [bx+si],al
0000019D  0000              add [bx+si],al
0000019F  0000              add [bx+si],al
000001A1  0000              add [bx+si],al
000001A3  0000              add [bx+si],al
000001A5  0000              add [bx+si],al
000001A7  0000              add [bx+si],al
000001A9  0000              add [bx+si],al
000001AB  0000              add [bx+si],al
000001AD  0000              add [bx+si],al
000001AF  0000              add [bx+si],al
000001B1  0000              add [bx+si],al
000001B3  0000              add [bx+si],al
000001B5  0000              add [bx+si],al
000001B7  0000              add [bx+si],al
000001B9  0000              add [bx+si],al
000001BB  0000              add [bx+si],al
000001BD  0000              add [bx+si],al
000001BF  0000              add [bx+si],al
000001C1  0000              add [bx+si],al
000001C3  0000              add [bx+si],al
000001C5  0000              add [bx+si],al
000001C7  0000              add [bx+si],al
000001C9  0000              add [bx+si],al
000001CB  0000              add [bx+si],al
000001CD  0000              add [bx+si],al
000001CF  0000              add [bx+si],al
000001D1  0000              add [bx+si],al
000001D3  0000              add [bx+si],al
000001D5  0000              add [bx+si],al
000001D7  0000              add [bx+si],al
000001D9  0000              add [bx+si],al
000001DB  0000              add [bx+si],al
000001DD  0000              add [bx+si],al
000001DF  0000              add [bx+si],al
000001E1  0000              add [bx+si],al
000001E3  0000              add [bx+si],al
000001E5  0000              add [bx+si],al
000001E7  0000              add [bx+si],al
000001E9  0000              add [bx+si],al
000001EB  0000              add [bx+si],al
000001ED  0000              add [bx+si],al
000001EF  0000              add [bx+si],al
000001F1  0000              add [bx+si],al
000001F3  0000              add [bx+si],al
000001F5  0000              add [bx+si],al
000001F7  0000              add [bx+si],al
000001F9  0000              add [bx+si],al
000001FB  0000              add [bx+si],al
000001FD  0000              add [bx+si],al
000001FF  0000              add [bx+si],al
00000201  0000              add [bx+si],al
00000203  0000              add [bx+si],al
00000205  0000              add [bx+si],al
00000207  0000              add [bx+si],al
00000209  0000              add [bx+si],al
0000020B  0000              add [bx+si],al
0000020D  0000              add [bx+si],al
0000020F  0000              add [bx+si],al
00000211  0000              add [bx+si],al
00000213  0000              add [bx+si],al
00000215  0000              add [bx+si],al
00000217  0000              add [bx+si],al
00000219  0000              add [bx+si],al
0000021B  0000              add [bx+si],al
0000021D  0000              add [bx+si],al
0000021F  0000              add [bx+si],al
00000221  0000              add [bx+si],al
00000223  0000              add [bx+si],al
00000225  0000              add [bx+si],al
00000227  0000              add [bx+si],al
00000229  0000              add [bx+si],al
0000022B  0000              add [bx+si],al
0000022D  0000              add [bx+si],al
0000022F  0000              add [bx+si],al
00000231  0000              add [bx+si],al
00000233  0000              add [bx+si],al
00000235  0000              add [bx+si],al
00000237  0000              add [bx+si],al
00000239  0000              add [bx+si],al
0000023B  0000              add [bx+si],al
0000023D  0000              add [bx+si],al
0000023F  0000              add [bx+si],al
00000241  0000              add [bx+si],al
00000243  0000              add [bx+si],al
00000245  0000              add [bx+si],al
00000247  0000              add [bx+si],al
00000249  0000              add [bx+si],al
0000024B  0000              add [bx+si],al
0000024D  0000              add [bx+si],al
0000024F  0000              add [bx+si],al
00000251  0000              add [bx+si],al
00000253  0000              add [bx+si],al
00000255  0000              add [bx+si],al
00000257  0000              add [bx+si],al
00000259  0000              add [bx+si],al
0000025B  0000              add [bx+si],al
0000025D  0000              add [bx+si],al
0000025F  0000              add [bx+si],al
00000261  0000              add [bx+si],al
00000263  0000              add [bx+si],al
00000265  0000              add [bx+si],al
00000267  0000              add [bx+si],al
00000269  0000              add [bx+si],al
0000026B  0000              add [bx+si],al
0000026D  0000              add [bx+si],al
0000026F  0000              add [bx+si],al
00000271  0000              add [bx+si],al
00000273  0000              add [bx+si],al
00000275  0000              add [bx+si],al
00000277  0000              add [bx+si],al
00000279  0000              add [bx+si],al
0000027B  0000              add [bx+si],al
0000027D  0000              add [bx+si],al
0000027F  0000              add [bx+si],al
00000281  0000              add [bx+si],al
00000283  0000              add [bx+si],al
00000285  0000              add [bx+si],al
00000287  0000              add [bx+si],al
00000289  0000              add [bx+si],al
0000028B  0000              add [bx+si],al
0000028D  0000              add [bx+si],al
0000028F  0000              add [bx+si],al
00000291  0000              add [bx+si],al
00000293  0000              add [bx+si],al
00000295  0000              add [bx+si],al
00000297  0000              add [bx+si],al
00000299  0000              add [bx+si],al
0000029B  0000              add [bx+si],al
0000029D  0000              add [bx+si],al
0000029F  0000              add [bx+si],al
000002A1  0000              add [bx+si],al
000002A3  0000              add [bx+si],al
000002A5  0000              add [bx+si],al
000002A7  0000              add [bx+si],al
000002A9  0000              add [bx+si],al
000002AB  0000              add [bx+si],al
000002AD  0000              add [bx+si],al
000002AF  0000              add [bx+si],al
000002B1  0000              add [bx+si],al
000002B3  0000              add [bx+si],al
000002B5  0000              add [bx+si],al
000002B7  0000              add [bx+si],al
000002B9  0000              add [bx+si],al
000002BB  0000              add [bx+si],al
000002BD  0000              add [bx+si],al
000002BF  0000              add [bx+si],al
000002C1  0000              add [bx+si],al
000002C3  0000              add [bx+si],al
000002C5  0000              add [bx+si],al
000002C7  0000              add [bx+si],al
000002C9  0000              add [bx+si],al
000002CB  0000              add [bx+si],al
000002CD  0000              add [bx+si],al
000002CF  0000              add [bx+si],al
000002D1  0000              add [bx+si],al
000002D3  0000              add [bx+si],al
000002D5  0000              add [bx+si],al
000002D7  0000              add [bx+si],al
000002D9  0000              add [bx+si],al
000002DB  0000              add [bx+si],al
000002DD  0000              add [bx+si],al
000002DF  0000              add [bx+si],al
000002E1  0000              add [bx+si],al
000002E3  0000              add [bx+si],al
000002E5  0000              add [bx+si],al
000002E7  0000              add [bx+si],al
000002E9  0000              add [bx+si],al
000002EB  0000              add [bx+si],al
000002ED  0000              add [bx+si],al
000002EF  0000              add [bx+si],al
000002F1  0000              add [bx+si],al
000002F3  0000              add [bx+si],al
000002F5  0000              add [bx+si],al
000002F7  0000              add [bx+si],al
000002F9  0000              add [bx+si],al
000002FB  0000              add [bx+si],al
000002FD  0000              add [bx+si],al
000002FF  00FA              add dl,bh
00000301  B8E900            mov ax,0xe9
00000304  8ED0              mov ss,ax
00000306  BC3813            mov sp,0x1338
00000309  8EC0              mov es,ax
0000030B  B93B00            mov cx,0x3b
0000030E  BF3012            mov di,0x1230
00000311  32C0              xor al,al
00000313  F3AA              rep stosb
00000315  33C0              xor ax,ax
00000317  8ED8              mov ds,ax
00000319  BF2400            mov di,0x24
0000031C  8B05              mov ax,[di]
0000031E  2EA36C02          mov [cs:0x26c],ax
00000322  8B4502            mov ax,[di+0x2]
00000325  2EA36E02          mov [cs:0x26e],ax
00000329  C7052E02          mov word [di],0x22e
0000032D  C745020000        mov word [di+0x2],0x0
00000332  BF2000            mov di,0x20
00000335  8B05              mov ax,[di]
00000337  2EA3C100          mov [cs:0xc1],ax
0000033B  8B4502            mov ax,[di+0x2]
0000033E  2EA3C300          mov [cs:0xc3],ax
00000342  C7058500          mov word [di],0x85
00000346  C745020000        mov word [di+0x2],0x0
0000034B  B036              mov al,0x36
0000034D  E643              out 0x43,al
0000034F  B81E05            mov ax,0x51e
00000352  E640              out 0x40,al
00000354  8AC4              mov al,ah
00000356  E640              out 0x40,al
00000358  B0B6              mov al,0xb6
0000035A  E643              out 0x43,al
0000035C  B8E900            mov ax,0xe9
0000035F  8ED8              mov ds,ax
00000361  B800B8            mov ax,0xb800
00000364  8EC0              mov es,ax
00000366  FB                sti
00000367  B80600            mov ax,0x6
0000036A  CD10              int 0x10
0000036C  E9B300            jmp word 0x422
0000036F  B80400            mov ax,0x4
00000372  CD10              int 0x10
00000374  B40B              mov ah,0xb
00000376  BB0000            mov bx,0x0
00000379  CD10              int 0x10
0000037B  B40B              mov ah,0xb
0000037D  BB0101            mov bx,0x101
00000380  CD10              int 0x10
00000382  E99D00            jmp word 0x422
00000385  1E                push ds
00000386  50                push ax
00000387  B8E900            mov ax,0xe9
0000038A  8ED8              mov ds,ax
0000038C  FF0E6912          dec word [0x1269]
00000390  FF0E5D12          dec word [0x125d]
00000394  FF0E6312          dec word [0x1263]
00000398  FF0E6512          dec word [0x1265]
0000039C  FF0E6112          dec word [0x1261]
000003A0  FF0E6712          dec word [0x1267]
000003A4  FF0E5F12          dec word [0x125f]
000003A8  FE0E3012          dec byte [0x1230]
000003AC  7407              jz 0x3b5
000003AE  B020              mov al,0x20
000003B0  E620              out 0x20,al
000003B2  58                pop ax
000003B3  1F                pop ds
000003B4  CF                iretw
000003B5  C606301232        mov byte [0x1230],0x32
000003BA  58                pop ax
000003BB  1F                pop ds
000003BC  2EFF2EC100        jmp word far [cs:0xc1]
000003C1  0000              add [bx+si],al
000003C3  0000              add [bx+si],al
000003C5  FF365D12          push word [0x125d]
000003C9  06                push es
000003CA  B8E900            mov ax,0xe9
000003CD  8EC0              mov es,ax
000003CF  B93B00            mov cx,0x3b
000003D2  BF3012            mov di,0x1230
000003D5  32C0              xor al,al
000003D7  F3AA              rep stosb
000003D9  07                pop es
000003DA  8F063712          pop word [0x1237]
000003DE  E8BF04            call word 0x8a0
000003E1  E80A06            call word 0x9ee
000003E4  E83603            call word 0x71d
000003E7  E84B0A            call word 0xe35
000003EA  B90300            mov cx,0x3
000003ED  E86E03            call word 0x75e
000003F0  E2FB              loop 0x3ed
000003F2  C3                ret
000003F3  8BFA              mov di,dx
000003F5  E8980B            call word 0xf90
000003F8  BD6C01            mov bp,0x16c
000003FB  B93800            mov cx,0x38
000003FE  3BEB              cmp bp,bx
00000400  740B              jz 0x40d
00000402  F6460101          test byte [bp+0x1],0x1
00000406  7405              jz 0x40d
00000408  E8B00A            call word 0xebb
0000040B  7208              jc 0x415
0000040D  83C517            add bp,byte +0x17
00000410  E2EC              loop 0x3fe
00000412  32C0              xor al,al
00000414  C3                ret
00000415  8A4600            mov al,[bp+0x0]
00000418  C3                ret
00000419  8B7707            mov si,[bx+0x7]
0000041C  8B34              mov si,[si]
0000041E  897707            mov [bx+0x7],si
00000421  C3                ret
00000422  E8160B            call word 0xf3b
00000425  E8CB01            call word 0x5f3
00000428  BE7406            mov si,0x674
0000042B  E87C0B            call word 0xfaa
0000042E  E82D07            call word 0xb5e
00000431  33C0              xor ax,ax
00000433  E8F106            call word 0xb27
00000436  B20D              mov dl,0xd
00000438  E80B0B            call word 0xf46
0000043B  7303              jnc 0x440
0000043D  E9A800            jmp word 0x4e8
00000440  E8F80A            call word 0xf3b
00000443  E87FFF            call word 0x3c5
00000446  33C0              xor ax,ax
00000448  E8DC06            call word 0xb27
0000044B  E81007            call word 0xb5e
0000044E  F606321220        test byte [0x1232],0x20
00000453  756C              jnz 0x4c1
00000455  F606311280        test byte [0x1231],0x80
0000045A  75C6              jnz 0x422
0000045C  803E3F1200        cmp byte [0x123f],0x0
00000461  7510              jnz 0x473
00000463  E85104            call word 0x8b7
00000466  E81003            call word 0x779
00000469  723B              jc 0x4a6
0000046B  E82105            call word 0x98f
0000046E  E8FD06            call word 0xb6e
00000471  721D              jc 0x490
00000473  E84C03            call word 0x7c2
00000476  E88601            call word 0x5ff
00000479  E8AF03            call word 0x82b
0000047C  E85809            call word 0xdd7
0000047F  E87E05            call word 0xa00
00000482  E86308            call word 0xce8
00000485  E82F01            call word 0x5b7
00000488  E89B0A            call word 0xf26
0000048B  E86200            call word 0x4f0
0000048E  EBBE              jmp short 0x44e
00000490  E8A002            call word 0x733
00000493  E86901            call word 0x5ff
00000496  E81E01            call word 0x5b7
00000499  E88A0A            call word 0xf26
0000049C  E85100            call word 0x4f0
0000049F  75F2              jnz 0x493
000004A1  E8D502            call word 0x779
000004A4  73EA              jnc 0x490
000004A6  C7065D12F401      mov word [0x125d],0x1f4
000004AC  833E5D1200        cmp word [0x125d],byte +0x0
000004B1  75F9              jnz 0x4ac
000004B3  33C0              xor ax,ax
000004B5  E86F06            call word 0xb27
000004B8  E8A306            call word 0xb5e
000004BB  E87C06            call word 0xb3a
000004BE  E961FF            jmp word 0x422
000004C1  E82F01            call word 0x5f3
000004C4  B90700            mov cx,0x7
000004C7  BE5D12            mov si,0x125d
000004CA  FF34              push word [si]
000004CC  83C602            add si,byte +0x2
000004CF  E2F9              loop 0x4ca
000004D1  E8520A            call word 0xf26
000004D4  F606321220        test byte [0x1232],0x20
000004D9  75F6              jnz 0x4d1
000004DB  B90700            mov cx,0x7
000004DE  83EE02            sub si,byte +0x2
000004E1  8F04              pop word [si]
000004E3  E2F9              loop 0x4de
000004E5  E966FF            jmp word 0x44e
000004E8  CD19              int 0x19
000004EA  90                nop
000004EB  90                nop
000004EC  90                nop
000004ED  90                nop
000004EE  90                nop
000004EF  90                nop
000004F0  833E5A1200        cmp word [0x125a],byte +0x0
000004F5  751F              jnz 0x516
000004F7  803E3F1200        cmp byte [0x123f],0x0
000004FC  7417              jz 0x515
000004FE  A08401            mov al,[0x184]
00000501  0A065C12          or al,[0x125c]
00000505  0A06EB05          or al,[0x5eb]
00000509  8A266D01          mov ah,[0x16d]
0000050D  80E402            and ah,0x2
00000510  0AC4              or al,ah
00000512  A23F12            mov [0x123f],al
00000515  C3                ret
00000516  FF0E5A12          dec word [0x125a]
0000051A  750C              jnz 0x528
0000051C  C7065A12D007      mov word [0x125a],0x7d0
00000522  32C0              xor al,al
00000524  A23F12            mov [0x123f],al
00000527  C3                ret
00000528  C6063F1201        mov byte [0x123f],0x1
0000052D  C3                ret
0000052E  06                push es
0000052F  57                push di
00000530  51                push cx
00000531  50                push ax
00000532  E460              in al,0x60
00000534  8AE0              mov ah,al
00000536  247F              and al,0x7f
00000538  B9E900            mov cx,0xe9
0000053B  8EC1              mov es,cx
0000053D  B90800            mov cx,0x8
00000540  BF0E00            mov di,0xe
00000543  F2AE              repne scasb
00000545  751C              jnz 0x563
00000547  F6C480            test ah,0x80
0000054A  268A6507          mov ah,[es:di+0x7]
0000054E  750C              jnz 0x55c
00000550  2608263112        or [es:0x1231],ah
00000555  2630263212        xor [es:0x1232],ah
0000055A  EB07              jmp short 0x563
0000055C  F6D4              not ah
0000055E  2620263112        and [es:0x1231],ah
00000563  58                pop ax
00000564  59                pop cx
00000565  5F                pop di
00000566  07                pop es
00000567  2EFF2E6C02        jmp word far [cs:0x26c]
0000056C  0000              add [bx+si],al
0000056E  0000              add [bx+si],al
00000570  803E401200        cmp byte [0x1240],0x0
00000575  753F              jnz 0x5b6
00000577  F606321240        test byte [0x1232],0x40
0000057C  7538              jnz 0x5b6
0000057E  C606401201        mov byte [0x1240],0x1
00000583  8B04              mov ax,[si]
00000585  A34512            mov [0x1245],ax
00000588  83C602            add si,byte +0x2
0000058B  89364112          mov [0x1241],si
0000058F  89364312          mov [0x1243],si
00000593  8B04              mov ax,[si]
00000595  83C602            add si,byte +0x2
00000598  A36912            mov [0x1269],ax
0000059B  8B04              mov ax,[si]
0000059D  83C602            add si,byte +0x2
000005A0  E642              out 0x42,al
000005A2  8AC4              mov al,ah
000005A4  E642              out 0x42,al
000005A6  E461              in al,0x61
000005A8  B403              mov ah,0x3
000005AA  22C4              and al,ah
000005AC  3AC4              cmp al,ah
000005AE  7406              jz 0x5b6
000005B0  E461              in al,0x61
000005B2  0AC4              or al,ah
000005B4  E661              out 0x61,al
000005B6  C3                ret
000005B7  803E401200        cmp byte [0x1240],0x0
000005BC  7440              jz 0x5fe
000005BE  F606321240        test byte [0x1232],0x40
000005C3  752E              jnz 0x5f3
000005C5  833E691200        cmp word [0x1269],byte +0x0
000005CA  7F32              jg 0x5fe
000005CC  8B364312          mov si,[0x1243]
000005D0  833C00            cmp word [si],byte +0x0
000005D3  740A              jz 0x5df
000005D5  E8BBFF            call word 0x593
000005D8  89364312          mov [0x1243],si
000005DC  EB20              jmp short 0x5fe
000005DE  90                nop
000005DF  FF0E4512          dec word [0x1245]
000005E3  740E              jz 0x5f3
000005E5  8B364112          mov si,[0x1241]
000005E9  E8A3FF            call word 0x58f
000005EC  89364312          mov [0x1243],si
000005F0  EB0C              jmp short 0x5fe
000005F2  90                nop
000005F3  C606401200        mov byte [0x1240],0x0
000005F8  E461              in al,0x61
000005FA  24FC              and al,0xfc
000005FC  E661              out 0x61,al
000005FE  C3                ret
000005FF  833E5D1200        cmp word [0x125d],byte +0x0
00000604  7E01              jng 0x607
00000606  C3                ret
00000607  BB6C01            mov bx,0x16c
0000060A  8B7F03            mov di,[bx+0x3]
0000060D  E809FE            call word 0x419
00000610  F6470102          test byte [bx+0x1],0x2
00000614  7403              jz 0x619
00000616  E9D600            jmp word 0x6ef
00000619  C7065D121E00      mov word [0x125d],0x1e
0000061F  F6470101          test byte [bx+0x1],0x1
00000623  7503              jnz 0x628
00000625  E9F400            jmp word 0x71c
00000628  8B4705            mov ax,[bx+0x5]
0000062B  894715            mov [bx+0x15],ax
0000062E  F606311201        test byte [0x1231],0x1
00000633  7413              jz 0x648
00000635  807F0600          cmp byte [bx+0x6],0x0
00000639  7E0D              jng 0x648
0000063B  FE4F06            dec byte [bx+0x6]
0000063E  56                push si
0000063F  E84C0A            call word 0x108e
00000642  5E                pop si
00000643  897F03            mov [bx+0x3],di
00000646  7568              jnz 0x6b0
00000648  F606311202        test byte [0x1231],0x2
0000064D  7413              jz 0x662
0000064F  807F064A          cmp byte [bx+0x6],0x4a
00000653  7D0D              jnl 0x662
00000655  FE4706            inc byte [bx+0x6]
00000658  56                push si
00000659  E85E0A            call word 0x10ba
0000065C  5E                pop si
0000065D  897F03            mov [bx+0x3],di
00000660  754E              jnz 0x6b0
00000662  F606311204        test byte [0x1231],0x4
00000667  7419              jz 0x682
00000669  807F0510          cmp byte [bx+0x5],0x10
0000066D  7613              jna 0x682
0000066F  C7065D120F00      mov word [0x125d],0xf
00000675  FE4F05            dec byte [bx+0x5]
00000678  56                push si
00000679  E8C409            call word 0x1040
0000067C  5E                pop si
0000067D  897F03            mov [bx+0x3],di
00000680  752E              jnz 0x6b0
00000682  F606311208        test byte [0x1231],0x8
00000687  7419              jz 0x6a2
00000689  807F05B7          cmp byte [bx+0x5],0xb7
0000068D  7313              jnc 0x6a2
0000068F  C7065D120F00      mov word [0x125d],0xf
00000695  FE4705            inc byte [bx+0x5]
00000698  56                push si
00000699  E8C909            call word 0x1065
0000069C  5E                pop si
0000069D  897F03            mov [bx+0x3],di
000006A0  750E              jnz 0x6b0
000006A2  8B4715            mov ax,[bx+0x15]
000006A5  3B4705            cmp ax,[bx+0x5]
000006A8  7572              jnz 0x71c
000006AA  E8550A            call word 0x1102
000006AD  EB6D              jmp short 0x71c
000006AF  90                nop
000006B0  E840FD            call word 0x3f3
000006B3  E85908            call word 0xf0f
000006B6  1C04              sbb al,0x4
000006B8  1C04              sbb al,0x4
000006BA  1C04              sbb al,0x4
000006BC  CD03              int 0x3
000006BE  C403              les ax,[bp+di]
000006C0  D6                salc
000006C1  03DF              add bx,di
000006C3  03E8              add bp,ax
000006C5  8F07              pop word [bx]
000006C7  E86900            call word 0x733
000006CA  EB50              jmp short 0x71c
000006CC  90                nop
000006CD  E8C005            call word 0xc90
000006D0  E86000            call word 0x733
000006D3  EB47              jmp short 0x71c
000006D5  90                nop
000006D6  E8E103            call word 0xaba
000006D9  E85700            call word 0x733
000006DC  EB3E              jmp short 0x71c
000006DE  90                nop
000006DF  C6460100          mov byte [bp+0x1],0x0
000006E3  8B7607            mov si,[bp+0x7]
000006E6  8B7E03            mov di,[bp+0x3]
000006E9  E8FB09            call word 0x10e7
000006EC  EB2E              jmp short 0x71c
000006EE  90                nop
000006EF  C7065D122D00      mov word [0x125d],0x2d
000006F5  FE4F12            dec byte [bx+0x12]
000006F8  7C18              jl 0x712
000006FA  F6471201          test byte [bx+0x12],0x1
000006FE  7506              jnz 0x706
00000700  E8E409            call word 0x10e7
00000703  EB17              jmp short 0x71c
00000705  90                nop
00000706  E8F909            call word 0x1102
00000709  BEF600            mov si,0xf6
0000070C  E868FE            call word 0x577
0000070F  EB0B              jmp short 0x71c
00000711  90                nop
00000712  C6470100          mov byte [bx+0x1],0x0
00000716  E8DAFE            call word 0x5f3
00000719  EB01              jmp short 0x71c
0000071B  90                nop
0000071C  C3                ret
0000071D  BB6C01            mov bx,0x16c
00000720  C6470100          mov byte [bx+0x1],0x0
00000724  C747131900        mov word [bx+0x13],0x19
00000729  C747075D0F        mov word [bx+0x7],0xf5d
0000072E  C6471100          mov byte [bx+0x11],0x0
00000732  C3                ret
00000733  BEF600            mov si,0xf6
00000736  E83EFE            call word 0x577
00000739  800E6D0102        or byte [0x16d],0x2
0000073E  C6067E0114        mov byte [0x17e],0x14
00000743  C7065A120000      mov word [0x125a],0x0
00000749  A14B12            mov ax,[0x124b]
0000074C  050C00            add ax,0xc
0000074F  3DF401            cmp ax,0x1f4
00000752  7E03              jng 0x757
00000754  B8F401            mov ax,0x1f4
00000757  A34B12            mov [0x124b],ax
0000075A  E8CBFD            call word 0x528
0000075D  C3                ret
0000075E  BB6C01            mov bx,0x16c
00000761  8A4711            mov al,[bx+0x11]
00000764  3C06              cmp al,0x6
00000766  7D10              jnl 0x778
00000768  FE4711            inc byte [bx+0x11]
0000076B  BE5D0F            mov si,0xf5d
0000076E  8B7F13            mov di,[bx+0x13]
00000771  E88E09            call word 0x1102
00000774  83471307          add word [bx+0x13],byte +0x7
00000778  C3                ret
00000779  BB6C01            mov bx,0x16c
0000077C  807F0100          cmp byte [bx+0x1],0x0
00000780  753C              jnz 0x7be
00000782  FE4F11            dec byte [bx+0x11]
00000785  7C39              jl 0x7c0
00000787  836F1307          sub word [bx+0x13],byte +0x7
0000078B  8B7F13            mov di,[bx+0x13]
0000078E  E8A007            call word 0xf31
00000791  B91000            mov cx,0x10
00000794  833E5D1200        cmp word [0x125d],byte +0x0
00000799  7DF9              jnl 0x794
0000079B  C7065D120F00      mov word [0x125d],0xf
000007A1  FE4705            inc byte [bx+0x5]
000007A4  51                push cx
000007A5  E871FC            call word 0x419
000007A8  E8BA08            call word 0x1065
000007AB  897F03            mov [bx+0x3],di
000007AE  59                pop cx
000007AF  E2E3              loop 0x794
000007B1  C6470101          mov byte [bx+0x1],0x1
000007B5  C7065A120100      mov word [0x125a],0x1
000007BB  E86AFD            call word 0x528
000007BE  F8                clc
000007BF  C3                ret
000007C0  F9                stc
000007C1  C3                ret
000007C2  BB8301            mov bx,0x183
000007C5  A03112            mov al,[0x1231]
000007C8  2410              and al,0x10
000007CA  8AE0              mov ah,al
000007CC  324711            xor al,[bx+0x11]
000007CF  7415              jz 0x7e6
000007D1  C7470F0000        mov word [bx+0xf],0x0
000007D6  886711            mov [bx+0x11],ah
000007D9  22E4              and ah,ah
000007DB  744D              jz 0x82a
000007DD  F6470101          test byte [bx+0x1],0x1
000007E1  7412              jz 0x7f5
000007E3  EB45              jmp short 0x82a
000007E5  90                nop
000007E6  0AE4              or ah,ah
000007E8  7440              jz 0x82a
000007EA  837F0F00          cmp word [bx+0xf],byte +0x0
000007EE  743A              jz 0x82a
000007F0  FF4F0F            dec word [bx+0xf]
000007F3  7535              jnz 0x82a
000007F5  A06D01            mov al,[0x16d]
000007F8  2403              and al,0x3
000007FA  3C01              cmp al,0x1
000007FC  752C              jnz 0x82a
000007FE  C7065A120000      mov word [0x125a],0x0
00000804  E8E9FC            call word 0x4f0
00000807  C7470F0000        mov word [bx+0xf],0x0
0000080C  804F0101          or byte [bx+0x1],0x1
00000810  8B3E6F01          mov di,[0x16f]
00000814  81EF8D01          sub di,0x18d
00000818  E81607            call word 0xf31
0000081B  E8FBFB            call word 0x419
0000081E  E8E108            call word 0x1102
00000821  BE1E00            mov si,0x1e
00000824  E850FD            call word 0x577
00000827  EB01              jmp short 0x82a
00000829  90                nop
0000082A  C3                ret
0000082B  833E611200        cmp word [0x1261],byte +0x0
00000830  7E01              jng 0x833
00000832  C3                ret
00000833  C70661120700      mov word [0x1261],0x7
00000839  BB8301            mov bx,0x183
0000083C  F6470101          test byte [bx+0x1],0x1
00000840  7446              jz 0x888
00000842  8B7F03            mov di,[bx+0x3]
00000845  E8D1FB            call word 0x419
00000848  81FFD002          cmp di,0x2d0
0000084C  7634              jna 0x882
0000084E  FE4F05            dec byte [bx+0x5]
00000851  E8EC07            call word 0x1040
00000854  897F03            mov [bx+0x3],di
00000857  742F              jz 0x888
00000859  E897FB            call word 0x3f3
0000085C  E8B006            call word 0xf0f
0000085F  8805              mov [di],al
00000861  8805              mov [di],al
00000863  8805              mov [di],al
00000865  6D                insw
00000866  057905            add ax,0x579
00000869  7305              jnc 0x870
0000086B  7C05              jl 0x872
0000086D  E82004            call word 0xc90
00000870  EB10              jmp short 0x882
00000872  90                nop
00000873  E84402            call word 0xaba
00000876  EB0A              jmp short 0x882
00000878  90                nop
00000879  E8DA05            call word 0xe56
0000087C  BE4C00            mov si,0x4c
0000087F  E8F5FC            call word 0x577
00000882  E80400            call word 0x889
00000885  EB01              jmp short 0x888
00000887  90                nop
00000888  C3                ret
00000889  8B368A01          mov si,[0x18a]
0000088D  8B3E8601          mov di,[0x186]
00000891  E85308            call word 0x10e7
00000894  80268401FE        and byte [0x184],0xfe
00000899  C70692015802      mov word [0x192],0x258
0000089F  C3                ret
000008A0  C606840100        mov byte [0x184],0x0
000008A5  C606940100        mov byte [0x194],0x0
000008AA  C70692010000      mov word [0x192],0x0
000008B0  C7068A01840E      mov word [0x18a],0xe84
000008B6  C3                ret
000008B7  803E531200        cmp byte [0x1253],0x0
000008BC  7401              jz 0x8bf
000008BE  C3                ret
000008BF  BB9A01            mov bx,0x19a
000008C2  891E4D12          mov [0x124d],bx
000008C6  C606541200        mov byte [0x1254],0x0
000008CB  C7064B12F401      mov word [0x124b],0x1f4
000008D1  C7064F120000      mov word [0x124f],0x0
000008D7  C70651120000      mov word [0x1251],0x0
000008DD  C606551285        mov byte [0x1255],0x85
000008E2  C606561200        mov byte [0x1256],0x0
000008E7  C60653122D        mov byte [0x1253],0x2d
000008EC  FE065812          inc byte [0x1258]
000008F0  A05912            mov al,[0x1259]
000008F3  3C42              cmp al,0x42
000008F5  7305              jnc 0x8fc
000008F7  0405              add al,0x5
000008F9  A25912            mov [0x1259],al
000008FC  A25712            mov [0x1257],al
000008FF  BD6201            mov bp,0x162
00000902  BFAA05            mov di,0x5aa
00000905  B90500            mov cx,0x5
00000908  57                push di
00000909  51                push cx
0000090A  8BF1              mov si,cx
0000090C  8AF1              mov dh,cl
0000090E  8A940800          mov dl,[si+0x8]
00000912  B90900            mov cx,0x9
00000915  8B7600            mov si,[bp+0x0]
00000918  83C502            add bp,byte +0x2
0000091B  57                push di
0000091C  56                push si
0000091D  E8E207            call word 0x1102
00000920  5E                pop si
00000921  5F                pop di
00000922  B001              mov al,0x1
00000924  80FE01            cmp dh,0x1
00000927  7502              jnz 0x92b
00000929  0C04              or al,0x4
0000092B  884701            mov [bx+0x1],al
0000092E  8AC2              mov al,dl
00000930  32E4              xor ah,ah
00000932  894709            mov [bx+0x9],ax
00000935  C747130000        mov word [bx+0x13],0x0
0000093A  897707            mov [bx+0x7],si
0000093D  E8F105            call word 0xf31
00000940  83C317            add bx,byte +0x17
00000943  8B34              mov si,[si]
00000945  83C707            add di,byte +0x7
00000948  E2D1              loop 0x91b
0000094A  59                pop cx
0000094B  5F                pop di
0000094C  81C7D002          add di,0x2d0
00000950  E2B6              loop 0x908
00000952  BB0106            mov bx,0x601
00000955  BF0C19            mov di,0x190c
00000958  B90500            mov cx,0x5
0000095B  C6470101          mov byte [bx+0x1],0x1
0000095F  E8CF05            call word 0xf31
00000962  BE780D            mov si,0xd78
00000965  897707            mov [bx+0x7],si
00000968  57                push di
00000969  E89607            call word 0x1102
0000096C  5F                pop di
0000096D  83C70D            add di,byte +0xd
00000970  83C317            add bx,byte +0x17
00000973  E2E6              loop 0x95b
00000975  C3                ret
00000976  BD0106            mov bp,0x601
00000979  B90500            mov cx,0x5
0000097C  C6460100          mov byte [bp+0x1],0x0
00000980  8B7607            mov si,[bp+0x7]
00000983  8B7E03            mov di,[bp+0x3]
00000986  E85E07            call word 0x10e7
00000989  83C517            add bp,byte +0x17
0000098C  E2EE              loop 0x97c
0000098E  C3                ret
0000098F  BBEA05            mov bx,0x5ea
00000992  807F0100          cmp byte [bx+0x1],0x0
00000996  7555              jnz 0x9ed
00000998  FE4F11            dec byte [bx+0x11]
0000099B  F6471101          test byte [bx+0x11],0x1
0000099F  754C              jnz 0x9ed
000009A1  FF4F0D            dec word [bx+0xd]
000009A4  7547              jnz 0x9ed
000009A6  B8F82A            mov ax,0x2af8
000009A9  BA409C            mov dx,0x9c40
000009AC  E8F904            call word 0xea8
000009AF  89470D            mov [bx+0xd],ax
000009B2  804F0101          or byte [bx+0x1],0x1
000009B6  E8B704            call word 0xe70
000009B9  B401              mov ah,0x1
000009BB  BF8002            mov di,0x280
000009BE  A801              test al,0x1
000009C0  7505              jnz 0x9c7
000009C2  B4FF              mov ah,0xff
000009C4  BFCA02            mov di,0x2ca
000009C7  886702            mov [bx+0x2],ah
000009CA  E86405            call word 0xf31
000009CD  E8A004            call word 0xe70
000009D0  BADC0D            mov dx,0xddc
000009D3  A804              test al,0x4
000009D5  7503              jnz 0x9da
000009D7  BA340E            mov dx,0xe34
000009DA  895707            mov [bx+0x7],dx
000009DD  C647110A          mov byte [bx+0x11],0xa
000009E1  B82800            mov ax,0x28
000009E4  BAB400            mov dx,0xb4
000009E7  E8BE04            call word 0xea8
000009EA  894709            mov [bx+0x9],ax
000009ED  C3                ret
000009EE  C606EB0500        mov byte [0x5eb],0x0
000009F3  B8F82A            mov ax,0x2af8
000009F6  BA409C            mov dx,0x9c40
000009F9  E8AC04            call word 0xea8
000009FC  A3F705            mov [0x5f7],ax
000009FF  C3                ret
00000A00  833E671200        cmp word [0x1267],byte +0x0
00000A05  7E01              jng 0xa08
00000A07  C3                ret
00000A08  BBEA05            mov bx,0x5ea
00000A0B  8B7F03            mov di,[bx+0x3]
00000A0E  E808FA            call word 0x419
00000A11  8A4701            mov al,[bx+0x1]
00000A14  A802              test al,0x2
00000A16  7567              jnz 0xa7f
00000A18  C70667122800      mov word [0x1267],0x28
00000A1E  A801              test al,0x1
00000A20  7503              jnz 0xa25
00000A22  E99400            jmp word 0xab9
00000A25  807F0200          cmp byte [bx+0x2],0x0
00000A29  7914              jns 0xa3f
00000A2B  81FF8002          cmp di,0x280
00000A2F  767B              jna 0xaac
00000A31  FE4F06            dec byte [bx+0x6]
00000A34  E85706            call word 0x108e
00000A37  897F03            mov [bx+0x3],di
00000A3A  751D              jnz 0xa59
00000A3C  EB12              jmp short 0xa50
00000A3E  90                nop
00000A3F  81FFCA02          cmp di,0x2ca
00000A43  7367              jnc 0xaac
00000A45  FE4706            inc byte [bx+0x6]
00000A48  E86F06            call word 0x10ba
00000A4B  897F03            mov [bx+0x3],di
00000A4E  7509              jnz 0xa59
00000A50  BEA600            mov si,0xa6
00000A53  E81AFB            call word 0x570
00000A56  EB61              jmp short 0xab9
00000A58  90                nop
00000A59  E897F9            call word 0x3f3
00000A5C  E8B004            call word 0xf0f
00000A5F  B90776            mov cx,0x7607
00000A62  07                pop es
00000A63  6D                insw
00000A64  07                pop es
00000A65  AC                lodsb
00000A66  07                pop es
00000A67  B907B9            mov cx,0xb907
00000A6A  07                pop es
00000A6B  B907E8            mov cx,0xe807
00000A6E  4A                dec dx
00000A6F  00E8              add al,ch
00000A71  16                push ss
00000A72  FE                db 0xfe
00000A73  EB44              jmp short 0xab9
00000A75  90                nop
00000A76  E8BAFC            call word 0x733
00000A79  E83E00            call word 0xaba
00000A7C  EB3B              jmp short 0xab9
00000A7E  90                nop
00000A7F  C70667124B00      mov word [0x1267],0x4b
00000A85  FF4F0F            dec word [bx+0xf]
00000A88  7C1C              jl 0xaa6
00000A8A  F7470F0100        test word [bx+0xf],0x1
00000A8F  7506              jnz 0xa97
00000A91  E85306            call word 0x10e7
00000A94  EB23              jmp short 0xab9
00000A96  90                nop
00000A97  8B4709            mov ax,[bx+0x9]
00000A9A  E8BD04            call word 0xf5a
00000A9D  BED000            mov si,0xd0
00000AA0  E8D4FA            call word 0x577
00000AA3  EB14              jmp short 0xab9
00000AA5  90                nop
00000AA6  8B4709            mov ax,[bx+0x9]
00000AA9  E87B00            call word 0xb27
00000AAC  C6470100          mov byte [bx+0x1],0x0
00000AB0  8B7F03            mov di,[bx+0x3]
00000AB3  8B7707            mov si,[bx+0x7]
00000AB6  E82E06            call word 0x10e7
00000AB9  C3                ret
00000ABA  53                push bx
00000ABB  BED000            mov si,0xd0
00000ABE  E8B6FA            call word 0x577
00000AC1  BBEA05            mov bx,0x5ea
00000AC4  C7066712A000      mov word [0x1267],0xa0
00000ACA  8A4701            mov al,[bx+0x1]
00000ACD  24FE              and al,0xfe
00000ACF  0C02              or al,0x2
00000AD1  884701            mov [bx+0x1],al
00000AD4  C7470F1400        mov word [bx+0xf],0x14
00000AD9  BEF90E            mov si,0xef9
00000ADC  897707            mov [bx+0x7],si
00000ADF  8B7F03            mov di,[bx+0x3]
00000AE2  E81D06            call word 0x1102
00000AE5  5B                pop bx
00000AE6  C3                ret
00000AE7  53                push bx
00000AE8  03064912          add ax,[0x1249]
00000AEC  A34912            mov [0x1249],ax
00000AEF  2DD007            sub ax,0x7d0
00000AF2  7231              jc 0xb25
00000AF4  A34912            mov [0x1249],ax
00000AF7  B91100            mov cx,0x11
00000AFA  32C0              xor al,al
00000AFC  51                push cx
00000AFD  BE7E09            mov si,0x97e
00000B00  FEC0              inc al
00000B02  50                push ax
00000B03  D0E8              shr al,1
00000B05  E8A304            call word 0xfab
00000B08  BE2401            mov si,0x124
00000B0B  E869FA            call word 0x577
00000B0E  E8A6FA            call word 0x5b7
00000B11  803E401200        cmp byte [0x1240],0x0
00000B16  75F6              jnz 0xb0e
00000B18  58                pop ax
00000B19  59                pop cx
00000B1A  E2E0              loop 0xafc
00000B1C  BE7E09            mov si,0x97e
00000B1F  E88404            call word 0xfa6
00000B22  E839FC            call word 0x75e
00000B25  5B                pop bx
00000B26  C3                ret
00000B27  50                push ax
00000B28  03064712          add ax,[0x1247]
00000B2C  A34712            mov [0x1247],ax
00000B2F  BF5000            mov di,0x50
00000B32  E82504            call word 0xf5a
00000B35  58                pop ax
00000B36  E8AEFF            call word 0xae7
00000B39  C3                ret
00000B3A  A14712            mov ax,[0x1247]
00000B3D  3B060000          cmp ax,[0x0]
00000B41  722A              jc 0xb6d
00000B43  A30000            mov [0x0],ax
00000B46  BE1909            mov si,0x919
00000B49  56                push si
00000B4A  E85D04            call word 0xfaa
00000B4D  B601              mov dh,0x1
00000B4F  B24C              mov dl,0x4c
00000B51  B90300            mov cx,0x3
00000B54  BE0500            mov si,0x5
00000B57  E88204            call word 0xfdc
00000B5A  5E                pop si
00000B5B  E84804            call word 0xfa6
00000B5E  A10000            mov ax,[0x0]
00000B61  BF9000            mov di,0x90
00000B64  E8F303            call word 0xf5a
00000B67  BE0200            mov si,0x2
00000B6A  E83D04            call word 0xfaa
00000B6D  C3                ret
00000B6E  F606551280        test byte [0x1255],0x80
00000B73  750A              jnz 0xb7f
00000B75  833E5F1200        cmp word [0x125f],byte +0x0
00000B7A  7E03              jng 0xb7f
00000B7C  E90D01            jmp word 0xc8c
00000B7F  8B1E4D12          mov bx,[0x124d]
00000B83  FE0E5412          dec byte [0x1254]
00000B87  7D52              jnl 0xbdb
00000B89  A15512            mov ax,[0x1255]
00000B8C  A804              test al,0x4
00000B8E  7418              jz 0xba8
00000B90  F6C404            test ah,0x4
00000B93  7403              jz 0xb98
00000B95  E9F600            jmp word 0xc8e
00000B98  FE0E5712          dec byte [0x1257]
00000B9C  7F23              jg 0xbc1
00000B9E  247F              and al,0x7f
00000BA0  3407              xor al,0x7
00000BA2  A25512            mov [0x1255],al
00000BA5  EB1A              jmp short 0xbc1
00000BA7  90                nop
00000BA8  F6C403            test ah,0x3
00000BAB  7414              jz 0xbc1
00000BAD  80E4FC            and ah,0xfc
00000BB0  88265612          mov [0x1256],ah
00000BB4  0C04              or al,0x4
00000BB6  A25512            mov [0x1255],al
00000BB9  C606571208        mov byte [0x1257],0x8
00000BBE  EB01              jmp short 0xbc1
00000BC0  90                nop
00000BC1  C7064D129A01      mov word [0x124d],0x19a
00000BC7  A14B12            mov ax,[0x124b]
00000BCA  A35F12            mov [0x125f],ax
00000BCD  C60654122D        mov byte [0x1254],0x2d
00000BD2  BE6E00            mov si,0x6e
00000BD5  E898F9            call word 0x570
00000BD8  E9B100            jmp word 0xc8c
00000BDB  8A4701            mov al,[bx+0x1]
00000BDE  2403              and al,0x3
00000BE0  3C01              cmp al,0x1
00000BE2  740C              jz 0xbf0
00000BE4  83C317            add bx,byte +0x17
00000BE7  FE0E5412          dec byte [0x1254]
00000BEB  7DEE              jnl 0xbdb
00000BED  E99C00            jmp word 0xc8c
00000BF0  8B7F03            mov di,[bx+0x3]
00000BF3  E823F8            call word 0x419
00000BF6  A05512            mov al,[0x1255]
00000BF9  A804              test al,0x4
00000BFB  7415              jz 0xc12
00000BFD  E86504            call word 0x1065
00000C00  9C                pushfw
00000C01  FE4705            inc byte [bx+0x5]
00000C04  807F05B6          cmp byte [bx+0x5],0xb6
00000C08  723A              jc 0xc44
00000C0A  C606561204        mov byte [0x1256],0x4
00000C0F  EB33              jmp short 0xc44
00000C11  90                nop
00000C12  A802              test al,0x2
00000C14  7519              jnz 0xc2f
00000C16  A801              test al,0x1
00000C18  746B              jz 0xc85
00000C1A  E89D04            call word 0x10ba
00000C1D  9C                pushfw
00000C1E  FE4706            inc byte [bx+0x6]
00000C21  807F0649          cmp byte [bx+0x6],0x49
00000C25  721D              jc 0xc44
00000C27  800E561201        or byte [0x1256],0x1
00000C2C  EB16              jmp short 0xc44
00000C2E  90                nop
00000C2F  E85C04            call word 0x108e
00000C32  9C                pushfw
00000C33  FE4F06            dec byte [bx+0x6]
00000C36  807F0600          cmp byte [bx+0x6],0x0
00000C3A  7708              ja 0xc44
00000C3C  800E561202        or byte [0x1256],0x2
00000C41  EB01              jmp short 0xc44
00000C43  90                nop
00000C44  897F03            mov [bx+0x3],di
00000C47  F6470104          test byte [bx+0x1],0x4
00000C4B  7405              jz 0xc52
00000C4D  52                push dx
00000C4E  E81201            call word 0xd63
00000C51  5A                pop dx
00000C52  9D                popfw
00000C53  7430              jz 0xc85
00000C55  E89BF7            call word 0x3f3
00000C58  E8B402            call word 0xf0f
00000C5B  8509              test [bx+di],cx
00000C5D  69097409          imul cx,[bx+di],word 0x974
00000C61  8509              test [bx+di],cx
00000C63  8509              test [bx+di],cx
00000C65  8509              test [bx+di],cx
00000C67  7F09              jg 0xc72
00000C69  E8C7FA            call word 0x733
00000C6C  8BEB              mov bp,bx
00000C6E  E81F00            call word 0xc90
00000C71  EB12              jmp short 0xc85
00000C73  90                nop
00000C74  E812FC            call word 0x889
00000C77  8BEB              mov bp,bx
00000C79  E81400            call word 0xc90
00000C7C  EB07              jmp short 0xc85
00000C7E  90                nop
00000C7F  E8F4FC            call word 0x976
00000C82  EB01              jmp short 0xc85
00000C84  90                nop
00000C85  83C317            add bx,byte +0x17
00000C88  891E4D12          mov [0x124d],bx
00000C8C  F8                clc
00000C8D  C3                ret
00000C8E  F9                stc
00000C8F  C3                ret
00000C90  F6460102          test byte [bp+0x1],0x2
00000C94  7551              jnz 0xce7
00000C96  A14B12            mov ax,[0x124b]
00000C99  2D0C00            sub ax,0xc
00000C9C  3D0500            cmp ax,0x5
00000C9F  7D03              jnl 0xca4
00000CA1  B80500            mov ax,0x5
00000CA4  A34B12            mov [0x124b],ax
00000CA7  833E4F1200        cmp word [0x124f],byte +0x0
00000CAC  7507              jnz 0xcb5
00000CAE  892E4F12          mov [0x124f],bp
00000CB2  EB08              jmp short 0xcbc
00000CB4  90                nop
00000CB5  8B365112          mov si,[0x1251]
00000CB9  896C13            mov [si+0x13],bp
00000CBC  892E5112          mov [0x1251],bp
00000CC0  C746130000        mov word [bp+0x13],0x0
00000CC5  BE7800            mov si,0x78
00000CC8  E8ACF8            call word 0x577
00000CCB  C7460D3700        mov word [bp+0xd],0x37
00000CD0  C6461207          mov byte [bp+0x12],0x7
00000CD4  804E0102          or byte [bp+0x1],0x2
00000CD8  BEF90E            mov si,0xef9
00000CDB  8B7E03            mov di,[bp+0x3]
00000CDE  E82104            call word 0x1102
00000CE1  8B4609            mov ax,[bp+0x9]
00000CE4  E840FE            call word 0xb27
00000CE7  C3                ret
00000CE8  8B1E4F12          mov bx,[0x124f]
00000CEC  0BDB              or bx,bx
00000CEE  7472              jz 0xd62
00000CF0  FF4F0D            dec word [bx+0xd]
00000CF3  7F66              jg 0xd5b
00000CF5  FE4F12            dec byte [bx+0x12]
00000CF8  7C23              jl 0xd1d
00000CFA  C7470D3700        mov word [bx+0xd],0x37
00000CFF  8B7707            mov si,[bx+0x7]
00000D02  8B7F03            mov di,[bx+0x3]
00000D05  F6471201          test byte [bx+0x12],0x1
00000D09  7506              jnz 0xd11
00000D0B  E8D903            call word 0x10e7
00000D0E  EB4B              jmp short 0xd5b
00000D10  90                nop
00000D11  E8EE03            call word 0x1102
00000D14  BE7800            mov si,0x78
00000D17  E85DF8            call word 0x577
00000D1A  EB3F              jmp short 0xd5b
00000D1C  90                nop
00000D1D  33C0              xor ax,ax
00000D1F  394713            cmp [bx+0x13],ax
00000D22  7409              jz 0xd2d
00000D24  874713            xchg ax,[bx+0x13]
00000D27  A34F12            mov [0x124f],ax
00000D2A  EB07              jmp short 0xd33
00000D2C  90                nop
00000D2D  A34F12            mov [0x124f],ax
00000D30  A35112            mov [0x1251],ax
00000D33  B000              mov al,0x0
00000D35  864701            xchg al,[bx+0x1]
00000D38  A804              test al,0x4
00000D3A  7416              jz 0xd52
00000D3C  8BEB              mov bp,bx
00000D3E  81EDCF00          sub bp,0xcf
00000D42  81FD9A01          cmp bp,0x19a
00000D46  720A              jc 0xd52
00000D48  F6460101          test byte [bp+0x1],0x1
00000D4C  74F0              jz 0xd3e
00000D4E  804E0104          or byte [bp+0x1],0x4
00000D52  FE0E5312          dec byte [0x1253]
00000D56  7503              jnz 0xd5b
00000D58  E8CDF7            call word 0x528
00000D5B  8B5F13            mov bx,[bx+0x13]
00000D5E  0BDB              or bx,bx
00000D60  758E              jnz 0xcf0
00000D62  C3                ret
00000D63  833E651200        cmp word [0x1265],byte +0x0
00000D68  7F6C              jg 0xdd6
00000D6A  E8DC00            call word 0xe49
00000D6D  803E5C1203        cmp byte [0x125c],0x3
00000D72  7D62              jnl 0xdd6
00000D74  8A267201          mov ah,[0x172]
00000D78  8A4706            mov al,[bx+0x6]
00000D7B  2C19              sub al,0x19
00000D7D  7902              jns 0xd81
00000D7F  B000              mov al,0x0
00000D81  3AE0              cmp ah,al
00000D83  7C51              jl 0xdd6
00000D85  8A4706            mov al,[bx+0x6]
00000D88  0419              add al,0x19
00000D8A  3C50              cmp al,0x50
00000D8C  7E02              jng 0xd90
00000D8E  B050              mov al,0x50
00000D90  3AE0              cmp ah,al
00000D92  7F42              jg 0xdd6
00000D94  807F05A5          cmp byte [bx+0x5],0xa5
00000D98  733C              jnc 0xdd6
00000D9A  BDA505            mov bp,0x5a5
00000D9D  B90300            mov cx,0x3
00000DA0  F6460101          test byte [bp+0x1],0x1
00000DA4  7408              jz 0xdae
00000DA6  83C517            add bp,byte +0x17
00000DA9  E2F5              loop 0xda0
00000DAB  EB29              jmp short 0xdd6
00000DAD  90                nop
00000DAE  B80000            mov ax,0x0
00000DB1  BA0500            mov dx,0x5
00000DB4  E8F100            call word 0xea8
00000DB7  034703            add ax,[bx+0x3]
00000DBA  058002            add ax,0x280
00000DBD  8BF8              mov di,ax
00000DBF  87DD              xchg bx,bp
00000DC1  E86D01            call word 0xf31
00000DC4  87DD              xchg bx,bp
00000DC6  C74607740E        mov word [bp+0x7],0xe74
00000DCB  804E0101          or byte [bp+0x1],0x1
00000DCF  FE065C12          inc byte [0x125c]
00000DD3  E87300            call word 0xe49
00000DD6  C3                ret
00000DD7  833E631200        cmp word [0x1263],byte +0x0
00000DDC  7E01              jng 0xddf
00000DDE  C3                ret
00000DDF  C70663120F00      mov word [0x1263],0xf
00000DE5  B90300            mov cx,0x3
00000DE8  BBA505            mov bx,0x5a5
00000DEB  F6470101          test byte [bx+0x1],0x1
00000DEF  743E              jz 0xe2f
00000DF1  51                push cx
00000DF2  807F05C6          cmp byte [bx+0x5],0xc6
00000DF6  7331              jnc 0xe29
00000DF8  8B7F03            mov di,[bx+0x3]
00000DFB  E81BF6            call word 0x419
00000DFE  FE4705            inc byte [bx+0x5]
00000E01  E86102            call word 0x1065
00000E04  897F03            mov [bx+0x3],di
00000E07  7425              jz 0xe2e
00000E09  E8E7F5            call word 0x3f3
00000E0C  E80001            call word 0xf0f
00000E0F  2E0B1D            or bx,[cs:di]
00000E12  0B23              or sp,[bp+di]
00000E14  0B29              or bp,[bx+di]
00000E16  0B2E0B2E          or bp,[0x2e0b]
00000E1A  0B29              or bp,[bx+di]
00000E1C  0BE8              or bp,ax
00000E1E  13F9              adc di,cx
00000E20  EB07              jmp short 0xe29
00000E22  90                nop
00000E23  E863FA            call word 0x889
00000E26  EB01              jmp short 0xe29
00000E28  90                nop
00000E29  8BEB              mov bp,bx
00000E2B  E82800            call word 0xe56
00000E2E  59                pop cx
00000E2F  83C317            add bx,byte +0x17
00000E32  E2B7              loop 0xdeb
00000E34  C3                ret
00000E35  B90300            mov cx,0x3
00000E38  BBA505            mov bx,0x5a5
00000E3B  C6470100          mov byte [bx+0x1],0x0
00000E3F  83C317            add bx,byte +0x17
00000E42  E2F7              loop 0xe3b
00000E44  C6065C1200        mov byte [0x125c],0x0
00000E49  B81801            mov ax,0x118
00000E4C  BA8A02            mov dx,0x28a
00000E4F  E85600            call word 0xea8
00000E52  A36512            mov [0x1265],ax
00000E55  C3                ret
00000E56  56                push si
00000E57  57                push di
00000E58  C6460100          mov byte [bp+0x1],0x0
00000E5C  FE0E5C12          dec byte [0x125c]
00000E60  8B7607            mov si,[bp+0x7]
00000E63  8B7E03            mov di,[bp+0x3]
00000E66  E87E02            call word 0x10e7
00000E69  5F                pop di
00000E6A  5E                pop si
00000E6B  C3                ret
00000E6C  0000              add [bx+si],al
00000E6E  0000              add [bx+si],al
00000E70  EB19              jmp short 0xe8b
00000E72  D12E3712          shr word [0x1237],1
00000E76  D1C0              rol ax,1
00000E78  33063712          xor ax,[0x1237]
00000E7C  D1E8              shr ax,1
00000E7E  A13712            mov ax,[0x1237]
00000E81  7224              jc 0xea7
00000E83  0D4000            or ax,0x40
00000E86  A33712            mov [0x1237],ax
00000E89  EB1C              jmp short 0xea7
00000E8B  A13712            mov ax,[0x1237]
00000E8E  D1E0              shl ax,1
00000E90  D1E0              shl ax,1
00000E92  03063712          add ax,[0x1237]
00000E96  86C4              xchg al,ah
00000E98  750A              jnz 0xea4
00000E9A  A13512            mov ax,[0x1235]
00000E9D  40                inc ax
00000E9E  A33512            mov [0x1235],ax
00000EA1  A33312            mov [0x1233],ax
00000EA4  A33712            mov [0x1237],ax
00000EA7  C3                ret
00000EA8  51                push cx
00000EA9  50                push ax
00000EAA  2BD0              sub dx,ax
00000EAC  42                inc dx
00000EAD  E8C0FF            call word 0xe70
00000EB0  8BCA              mov cx,dx
00000EB2  33D2              xor dx,dx
00000EB4  F7F1              div cx
00000EB6  58                pop ax
00000EB7  03C2              add ax,dx
00000EB9  59                pop cx
00000EBA  C3                ret
00000EBB  8B5605            mov dx,[bp+0x5]
00000EBE  3AF4              cmp dh,ah
00000EC0  7719              ja 0xedb
00000EC2  3AD0              cmp dl,al
00000EC4  7715              ja 0xedb
00000EC6  53                push bx
00000EC7  8B5E07            mov bx,[bp+0x7]
00000ECA  025702            add dl,[bx+0x2]
00000ECD  027703            add dh,[bx+0x3]
00000ED0  5B                pop bx
00000ED1  3AF4              cmp dh,ah
00000ED3  7606              jna 0xedb
00000ED5  3AD0              cmp dl,al
00000ED7  7602              jna 0xedb
00000ED9  F9                stc
00000EDA  C3                ret
00000EDB  F8                clc
00000EDC  C3                ret
00000EDD  51                push cx
00000EDE  52                push dx
00000EDF  57                push di
00000EE0  56                push si
00000EE1  FC                cld
00000EE2  49                dec cx
00000EE3  8BF1              mov si,cx
00000EE5  D1E6              shl si,1
00000EE7  33D2              xor dx,dx
00000EE9  2EF7B4050C        div word [cs:si+0xc05]
00000EEE  8805              mov [di],al
00000EF0  47                inc di
00000EF1  83EE02            sub si,byte +0x2
00000EF4  8BC2              mov ax,dx
00000EF6  E2EF              loop 0xee7
00000EF8  8AE0              mov ah,al
00000EFA  D0E0              shl al,1
00000EFC  D0E0              shl al,1
00000EFE  02C4              add al,ah
00000F00  8805              mov [di],al
00000F02  5E                pop si
00000F03  5F                pop di
00000F04  5A                pop dx
00000F05  59                pop cx
00000F06  C3                ret
00000F07  0200              add al,[bx+si]
00000F09  1400              adc al,0x0
00000F0B  C800D007          enter 0xd000,0x7
00000F0F  55                push bp
00000F10  8BEC              mov bp,sp
00000F12  8B6E02            mov bp,[bp+0x2]
00000F15  32E4              xor ah,ah
00000F17  D1E0              shl ax,1
00000F19  03E8              add bp,ax
00000F1B  2E8B4600          mov ax,[cs:bp+0x0]
00000F1F  8BEC              mov bp,sp
00000F21  894602            mov [bp+0x2],ax
00000F24  5D                pop bp
00000F25  C3                ret
00000F26  B401              mov ah,0x1
00000F28  CD16              int 0x16
00000F2A  7404              jz 0xf30
00000F2C  B400              mov ah,0x0
00000F2E  CD16              int 0x16
00000F30  C3                ret
00000F31  897F03            mov [bx+0x3],di
00000F34  E85900            call word 0xf90
00000F37  894705            mov [bx+0x5],ax
00000F3A  C3                ret
00000F3B  BF0000            mov di,0x0
00000F3E  B90040            mov cx,0x4000
00000F41  B000              mov al,0x0
00000F43  F3AA              rep stosb
00000F45  C3                ret
00000F46  B400              mov ah,0x0
00000F48  CD16              int 0x16
00000F4A  3C03              cmp al,0x3
00000F4C  740A              jz 0xf58
00000F4E  84D2              test dl,dl
00000F50  7404              jz 0xf56
00000F52  3AC2              cmp al,dl
00000F54  75F0              jnz 0xf46
00000F56  F8                clc
00000F57  C3                ret
00000F58  F9                stc
00000F59  C3                ret
00000F5A  53                push bx
00000F5B  57                push di
00000F5C  BF3912            mov di,0x1239
00000F5F  B90500            mov cx,0x5
00000F62  E878FF            call word 0xedd
00000F65  8BDF              mov bx,di
00000F67  5F                pop di
00000F68  32D2              xor dl,dl
00000F6A  8A07              mov al,[bx]
00000F6C  0AD0              or dl,al
00000F6E  43                inc bx
00000F6F  D0E0              shl al,1
00000F71  32E4              xor ah,ah
00000F73  8BF0              mov si,ax
00000F75  8BB4F910          mov si,[si+0x10f9]
00000F79  83F901            cmp cx,byte +0x1
00000F7C  7405              jz 0xf83
00000F7E  80FA00            cmp dl,0x0
00000F81  7409              jz 0xf8c
00000F83  57                push di
00000F84  51                push cx
00000F85  E87A01            call word 0x1102
00000F88  59                pop cx
00000F89  5F                pop di
00000F8A  03F8              add di,ax
00000F8C  E2DC              loop 0xf6a
00000F8E  5B                pop bx
00000F8F  C3                ret
00000F90  52                push dx
00000F91  8BC7              mov ax,di
00000F93  25FFDF            and ax,0xdfff
00000F96  B250              mov dl,0x50
00000F98  F6F2              div dl
00000F9A  D0E0              shl al,1
00000F9C  F7C70020          test di,0x2000
00000FA0  7402              jz 0xfa4
00000FA2  FEC0              inc al
00000FA4  5A                pop dx
00000FA5  C3                ret
00000FA6  F8                clc
00000FA7  EB02              jmp short 0xfab
00000FA9  90                nop
00000FAA  F9                stc
00000FAB  53                push bx
00000FAC  52                push dx
00000FAD  9C                pushfw
00000FAE  32FF              xor bh,bh
00000FB0  8A1C              mov bl,[si]
00000FB2  53                push bx
00000FB3  8A7401            mov dh,[si+0x1]
00000FB6  8A5402            mov dl,[si+0x2]
00000FB9  B402              mov ah,0x2
00000FBB  CD10              int 0x10
00000FBD  5B                pop bx
00000FBE  83C603            add si,byte +0x3
00000FC1  8A04              mov al,[si]
00000FC3  46                inc si
00000FC4  0AC0              or al,al
00000FC6  7410              jz 0xfd8
00000FC8  9D                popfw
00000FC9  9C                pushfw
00000FCA  7206              jc 0xfd2
00000FCC  3C20              cmp al,0x20
00000FCE  7602              jna 0xfd2
00000FD0  B020              mov al,0x20
00000FD2  B40E              mov ah,0xe
00000FD4  CD10              int 0x10
00000FD6  EBE9              jmp short 0xfc1
00000FD8  9D                popfw
00000FD9  5A                pop dx
00000FDA  5B                pop bx
00000FDB  C3                ret
00000FDC  53                push bx
00000FDD  56                push si
00000FDE  52                push dx
00000FDF  51                push cx
00000FE0  B700              mov bh,0x0
00000FE2  B402              mov ah,0x2
00000FE4  CD10              int 0x10
00000FE6  BB0300            mov bx,0x3
00000FE9  B85F0E            mov ax,0xe5f
00000FEC  CD10              int 0x10
00000FEE  BB0300            mov bx,0x3
00000FF1  B8080E            mov ax,0xe08
00000FF4  CD10              int 0x10
00000FF6  32D2              xor dl,dl
00000FF8  E84BFF            call word 0xf46
00000FFB  3C0D              cmp al,0xd
00000FFD  742B              jz 0x102a
00000FFF  3C08              cmp al,0x8
00001001  741B              jz 0x101e
00001003  8804              mov [si],al
00001005  46                inc si
00001006  BB0300            mov bx,0x3
00001009  B40E              mov ah,0xe
0000100B  CD10              int 0x10
0000100D  E2D7              loop 0xfe6
0000100F  B401              mov ah,0x1
00001011  CD16              int 0x16
00001013  74FA              jz 0x100f
00001015  3C0D              cmp al,0xd
00001017  7411              jz 0x102a
00001019  59                pop cx
0000101A  5A                pop dx
0000101B  5E                pop si
0000101C  EBBF              jmp short 0xfdd
0000101E  5B                pop bx
0000101F  53                push bx
00001020  3BCB              cmp cx,bx
00001022  74C2              jz 0xfe6
00001024  83C102            add cx,byte +0x2
00001027  4E                dec si
00001028  EBDC              jmp short 0x1006
0000102A  E8F9FE            call word 0xf26
0000102D  59                pop cx
0000102E  5A                pop dx
0000102F  5E                pop si
00001030  5B                pop bx
00001031  C3                ret
00001032  0000              add [bx+si],al
00001034  0000              add [bx+si],al
00001036  0000              add [bx+si],al
00001038  0000              add [bx+si],al
0000103A  0000              add [bx+si],al
0000103C  0000              add [bx+si],al
0000103E  0000              add [bx+si],al
00001040  E81701            call word 0x115a
00001043  E82F01            call word 0x1175
00001046  57                push di
00001047  51                push cx
00001048  33D2              xor dx,dx
0000104A  26803D00          cmp byte [es:di],0x0
0000104E  7402              jz 0x1052
00001050  8BD7              mov dx,di
00001052  47                inc di
00001053  E2F5              loop 0x104a
00001055  59                pop cx
00001056  5F                pop di
00001057  57                push di
00001058  E8B000            call word 0x110b
0000105B  8BC8              mov cx,ax
0000105D  B000              mov al,0x0
0000105F  F3AA              rep stosb
00001061  5F                pop di
00001062  0BD2              or dx,dx
00001064  C3                ret
00001065  E8F200            call word 0x115a
00001068  8BD1              mov dx,cx
0000106A  B000              mov al,0x0
0000106C  57                push di
0000106D  F3AA              rep stosb
0000106F  5F                pop di
00001070  E8F400            call word 0x1167
00001073  57                push di
00001074  8BCA              mov cx,dx
00001076  FECC              dec ah
00001078  E89000            call word 0x110b
0000107B  8BC8              mov cx,ax
0000107D  33D2              xor dx,dx
0000107F  26803D00          cmp byte [es:di],0x0
00001083  7402              jz 0x1087
00001085  8BD7              mov dx,di
00001087  A4                movsb
00001088  E2F5              loop 0x107f
0000108A  5F                pop di
0000108B  0BD2              or dx,dx
0000108D  C3                ret
0000108E  53                push bx
0000108F  55                push bp
00001090  E8C700            call word 0x115a
00001093  33D2              xor dx,dx
00001095  8BE9              mov bp,cx
00001097  4F                dec di
00001098  57                push di
00001099  26C60300          mov byte [es:bp+di],0x0
0000109D  26803D00          cmp byte [es:di],0x0
000010A1  7402              jz 0x10a5
000010A3  8BD7              mov dx,di
000010A5  8BDF              mov bx,di
000010A7  F3A4              rep movsb
000010A9  8BFB              mov di,bx
000010AB  8BCD              mov cx,bp
000010AD  E8B700            call word 0x1167
000010B0  FECC              dec ah
000010B2  75E5              jnz 0x1099
000010B4  5F                pop di
000010B5  5D                pop bp
000010B6  5B                pop bx
000010B7  0BD2              or dx,dx
000010B9  C3                ret
000010BA  53                push bx
000010BB  57                push di
000010BC  55                push bp
000010BD  E89A00            call word 0x115a
000010C0  33D2              xor dx,dx
000010C2  8BE9              mov bp,cx
000010C4  26C60500          mov byte [es:di],0x0
000010C8  26803B00          cmp byte [es:bp+di],0x0
000010CC  7402              jz 0x10d0
000010CE  8D13              lea dx,[bp+di]
000010D0  8BDF              mov bx,di
000010D2  47                inc di
000010D3  F3A4              rep movsb
000010D5  8BFB              mov di,bx
000010D7  8BCD              mov cx,bp
000010D9  E88B00            call word 0x1167
000010DC  FECC              dec ah
000010DE  75E4              jnz 0x10c4
000010E0  5D                pop bp
000010E1  5F                pop di
000010E2  5B                pop bx
000010E3  47                inc di
000010E4  0BD2              or dx,dx
000010E6  C3                ret
000010E7  57                push di
000010E8  52                push dx
000010E9  51                push cx
000010EA  E86D00            call word 0x115a
000010ED  B000              mov al,0x0
000010EF  8BD1              mov dx,cx
000010F1  F3AA              rep stosb
000010F3  8BCA              mov cx,dx
000010F5  2BF9              sub di,cx
000010F7  E86D00            call word 0x1167
000010FA  FECC              dec ah
000010FC  75F1              jnz 0x10ef
000010FE  59                pop cx
000010FF  5A                pop dx
00001100  5F                pop di
00001101  C3                ret
00001102  51                push cx
00001103  E85400            call word 0x115a
00001106  E80200            call word 0x110b
00001109  59                pop cx
0000110A  C3                ret
0000110B  53                push bx
0000110C  8BDF              mov bx,di
0000110E  8AC1              mov al,cl
00001110  F3A4              rep movsb
00001112  8AC8              mov cl,al
00001114  8BFB              mov di,bx
00001116  E84E00            call word 0x1167
00001119  FECC              dec ah
0000111B  75EF              jnz 0x110c
0000111D  5B                pop bx
0000111E  C3                ret
0000111F  55                push bp
00001120  53                push bx
00001121  56                push si
00001122  57                push di
00001123  E83400            call word 0x115a
00001126  8BF1              mov si,cx
00001128  8BEF              mov bp,di
0000112A  268A05            mov al,[es:di]
0000112D  B704              mov bh,0x4
0000112F  8AD8              mov bl,al
00001131  80E303            and bl,0x3
00001134  3ADA              cmp bl,dl
00001136  7504              jnz 0x113c
00001138  24FC              and al,0xfc
0000113A  0AC6              or al,dh
0000113C  D0C8              ror al,1
0000113E  D0C8              ror al,1
00001140  FECF              dec bh
00001142  75EB              jnz 0x112f
00001144  268805            mov [es:di],al
00001147  47                inc di
00001148  E2E0              loop 0x112a
0000114A  8BFD              mov di,bp
0000114C  8BCE              mov cx,si
0000114E  E81600            call word 0x1167
00001151  FECC              dec ah
00001153  75D1              jnz 0x1126
00001155  5F                pop di
00001156  5E                pop si
00001157  5B                pop bx
00001158  5D                pop bp
00001159  C3                ret
0000115A  FC                cld
0000115B  8A6402            mov ah,[si+0x2]
0000115E  32ED              xor ch,ch
00001160  8A4C03            mov cl,[si+0x3]
00001163  83C604            add si,byte +0x4
00001166  C3                ret
00001167  81F70020          xor di,0x2000
0000116B  F7C70020          test di,0x2000
0000116F  7503              jnz 0x1174
00001171  83C750            add di,byte +0x50
00001174  C3                ret
00001175  81F70020          xor di,0x2000
00001179  F7C70020          test di,0x2000
0000117D  7403              jz 0x1182
0000117F  83EF50            sub di,byte +0x50
00001182  C3                ret
00001183  0000              add [bx+si],al
00001185  0000              add [bx+si],al
00001187  0000              add [bx+si],al
00001189  0000              add [bx+si],al
0000118B  0000              add [bx+si],al
0000118D  0000              add [bx+si],al
0000118F  0000              add [bx+si],al
00001191  0003              add [bp+di],al
00001193  014C20            add [si+0x20],cx
00001196  2020              and [bx+si],ah
00001198  0001              add [bx+di],al
0000119A  0205              add al,[di]
0000119C  0A0F              or cl,[bx]
0000119E  50                push ax
0000119F  4B                dec bx
000011A0  48                dec ax
000011A1  4D                dec bp
000011A2  3901              cmp [bx+di],ax
000011A4  104608            adc [bp+0x8],al
000011A7  0104              add [si],ax
000011A9  0210              add dl,[bx+si]
000011AB  80402001          add byte [bx+si+0x20],0x1
000011AF  0003              add [bp+di],al
000011B1  00E8              add al,ch
000011B3  0304              add ax,[si]
000011B5  00E2              add dl,ah
000011B7  0405              add al,0x5
000011B9  00DC              add ah,bl
000011BB  050600            add ax,0x6
000011BE  D6                salc
000011BF  06                push es
000011C0  07                pop es
000011C1  00D0              add al,dl
000011C3  07                pop es
000011C4  0800              or [bx+si],al
000011C6  CA0809            retf 0x908
000011C9  00C4              add ah,al
000011CB  090A              or [bp+si],cx
000011CD  00BE0A0B          add [bp+0xb0a],bh
000011D1  00B80B0C          add [bx+si+0xc0b],bh
000011D5  00AC0D00          add [si+0xd],ch
000011D9  0000              add [bx+si],al
000011DB  0005              add [di],al
000011DD  0002              add [bp+si],al
000011DF  003C              add [si],bh
000011E1  0F0200            lar ax,[bx+si]
000011E4  E80302            call word 0x13ea
000011E7  00DC              add ah,bl
000011E9  050000            add ax,0x0
000011EC  0000              add [bx+si],al
000011EE  0000              add [bx+si],al
000011F0  0000              add [bx+si],al
000011F2  0000              add [bx+si],al
000011F4  0000              add [bx+si],al
000011F6  0000              add [bx+si],al
000011F8  0000              add [bx+si],al
000011FA  0000              add [bx+si],al
000011FC  0000              add [bx+si],al
000011FE  0100              add [bx+si],ax
00001200  0100              add [bx+si],ax
00001202  0000              add [bx+si],al
00001204  0000              add [bx+si],al
00001206  0000              add [bx+si],al
00001208  0100              add [bx+si],ax
0000120A  0200              add al,[bx+si]
0000120C  0807              or [bx],al
0000120E  0100              add [bx+si],ax
00001210  FF05              inc word [di]
00001212  0200              add al,[bx+si]
00001214  FF04              inc word [si]
00001216  0100              add [bx+si],ax
00001218  FF03              inc word [bp+di]
0000121A  0200              add al,[bx+si]
0000121C  FF02              inc word [bp+si]
0000121E  0100              add [bx+si],ax
00001220  FF01              inc word [bx+di]
00001222  0200              add al,[bx+si]
00001224  FF00              inc word [bx+si]
00001226  0000              add [bx+si],al
00001228  0000              add [bx+si],al
0000122A  0000              add [bx+si],al
0000122C  0000              add [bx+si],al
0000122E  0000              add [bx+si],al
00001230  0000              add [bx+si],al
00001232  0000              add [bx+si],al
00001234  0000              add [bx+si],al
00001236  0200              add al,[bx+si]
00001238  2000              and [bx+si],al
0000123A  0A00              or al,[bx+si]
0000123C  40                inc ax
0000123D  006608            add [bp+0x8],ah
00001240  40                inc ax
00001241  006C07            add [si+0x7],ch
00001244  40                inc ax
00001245  000A              add [bp+si],cl
00001247  0000              add [bx+si],al
00001249  0000              add [bx+si],al
0000124B  0000              add [bx+si],al
0000124D  0000              add [bx+si],al
0000124F  0000              add [bx+si],al
00001251  0000              add [bx+si],al
00001253  0000              add [bx+si],al
00001255  0000              add [bx+si],al
00001257  0000              add [bx+si],al
00001259  0000              add [bx+si],al
0000125B  0000              add [bx+si],al
0000125D  0000              add [bx+si],al
0000125F  0002              add [bp+si],al
00001261  0005              add [di],al
00001263  00860608          add [bp+0x806],al
00001267  007805            add [bx+si+0x5],bh
0000126A  1000              adc [bx+si],al
0000126C  60                pushaw
0000126D  0400              add al,0x0
0000126F  0000              add [bx+si],al
00001271  0000              add [bx+si],al
00001273  0000              add [bx+si],al
00001275  0000              add [bx+si],al
00001277  0000              add [bx+si],al
00001279  0000              add [bx+si],al
0000127B  0000              add [bx+si],al
0000127D  0000              add [bx+si],al
0000127F  0000              add [bx+si],al
00001281  0000              add [bx+si],al
00001283  0000              add [bx+si],al
00001285  0002              add [bp+si],al
00001287  0008              add [bx+si],cl
00001289  00F6              add dh,dh
0000128B  090C              or [si],cx
0000128D  00BE0A08          add [bp+0x80a],bh
00001291  001C              add [si],bl
00001293  0C0C              or al,0xc
00001295  00160D08          add [0x80d],dl
00001299  00740E            add [si+0xe],dh
0000129C  0C00              or al,0x0
0000129E  3C0F              cmp al,0xf
000012A0  0800              or [bx+si],al
000012A2  681000            push word 0x10
000012A5  0000              add [bx+si],al
000012A7  0000              add [bx+si],al
000012A9  0000              add [bx+si],al
000012AB  0000              add [bx+si],al
000012AD  0000              add [bx+si],al
000012AF  0000              add [bx+si],al
000012B1  0000              add [bx+si],al
000012B3  0001              add [bx+di],al
000012B5  000A              add [bp+si],cl
000012B7  00B80B0F          add [bx+si+0xf0b],bh
000012BB  00D0              add al,dl
000012BD  07                pop es
000012BE  1200              adc al,[bx+si]
000012C0  B004              mov al,0x4
000012C2  1400              adc al,0x0
000012C4  DC05              fadd qword [di]
000012C6  1200              adc al,[bx+si]
000012C8  D007              rol byte [bx],1
000012CA  0300              add ax,[bx+si]
000012CC  D007              rol byte [bx],1
000012CE  06                push es
000012CF  00B0040A          add [bx+si+0xa04],dh
000012D3  00DC              add ah,bl
000012D5  050300            add ax,0x3
000012D8  D007              rol byte [bx],1
000012DA  0000              add [bx+si],al
000012DC  0000              add [bx+si],al
000012DE  0000              add [bx+si],al
000012E0  0000              add [bx+si],al
000012E2  0000              add [bx+si],al
000012E4  0000              add [bx+si],al
000012E6  0000              add [bx+si],al
000012E8  0000              add [bx+si],al
000012EA  0000              add [bx+si],al
000012EC  0000              add [bx+si],al
000012EE  0000              add [bx+si],al
000012F0  0000              add [bx+si],al
000012F2  90                nop
000012F3  09580A            or [bx+si+0xa],bx
000012F6  200B              and [bp+di],cl
000012F8  E80BB0            call word 0xc306
000012FB  0C01              or al,0x1
000012FD  0000              add [bx+si],al
000012FF  0000              add [bx+si],al
00001301  0000              add [bx+si],al
00001303  0000              add [bx+si],al
00001305  0000              add [bx+si],al
00001307  0000              add [bx+si],al
00001309  0000              add [bx+si],al
0000130B  0000              add [bx+si],al
0000130D  0000              add [bx+si],al
0000130F  0000              add [bx+si],al
00001311  0000              add [bx+si],al
00001313  0200              add al,[bx+si]
00001315  0000              add [bx+si],al
00001317  0000              add [bx+si],al
00001319  0000              add [bx+si],al
0000131B  0000              add [bx+si],al
0000131D  0000              add [bx+si],al
0000131F  0000              add [bx+si],al
00001321  0000              add [bx+si],al
00001323  0000              add [bx+si],al
00001325  0000              add [bx+si],al
00001327  0000              add [bx+si],al
00001329  0003              add [bp+di],al
0000132B  0000              add [bx+si],al
0000132D  0000              add [bx+si],al
0000132F  0000              add [bx+si],al
00001331  0000              add [bx+si],al
00001333  0000              add [bx+si],al
00001335  0000              add [bx+si],al
00001337  0000              add [bx+si],al
00001339  0000              add [bx+si],al
0000133B  0000              add [bx+si],al
0000133D  0000              add [bx+si],al
0000133F  0000              add [bx+si],al
00001341  0300              add ax,[bx+si]
00001343  0000              add [bx+si],al
00001345  0000              add [bx+si],al
00001347  0000              add [bx+si],al
00001349  0000              add [bx+si],al
0000134B  0000              add [bx+si],al
0000134D  0000              add [bx+si],al
0000134F  0000              add [bx+si],al
00001351  0000              add [bx+si],al
00001353  0000              add [bx+si],al
00001355  0000              add [bx+si],al
00001357  0003              add [bp+di],al
00001359  0000              add [bx+si],al
0000135B  0000              add [bx+si],al
0000135D  0000              add [bx+si],al
0000135F  0000              add [bx+si],al
00001361  0000              add [bx+si],al
00001363  0000              add [bx+si],al
00001365  0000              add [bx+si],al
00001367  0000              add [bx+si],al
00001369  0000              add [bx+si],al
0000136B  0000              add [bx+si],al
0000136D  0000              add [bx+si],al
0000136F  0300              add ax,[bx+si]
00001371  0000              add [bx+si],al
00001373  0000              add [bx+si],al
00001375  0000              add [bx+si],al
00001377  0000              add [bx+si],al
00001379  0000              add [bx+si],al
0000137B  0000              add [bx+si],al
0000137D  0000              add [bx+si],al
0000137F  0000              add [bx+si],al
00001381  0000              add [bx+si],al
00001383  0000              add [bx+si],al
00001385  0003              add [bp+di],al
00001387  0000              add [bx+si],al
00001389  0000              add [bx+si],al
0000138B  0000              add [bx+si],al
0000138D  0000              add [bx+si],al
0000138F  0000              add [bx+si],al
00001391  0000              add [bx+si],al
00001393  0000              add [bx+si],al
00001395  0000              add [bx+si],al
00001397  0000              add [bx+si],al
00001399  0000              add [bx+si],al
0000139B  0000              add [bx+si],al
0000139D  0300              add ax,[bx+si]
0000139F  0000              add [bx+si],al
000013A1  0000              add [bx+si],al
000013A3  0000              add [bx+si],al
000013A5  0000              add [bx+si],al
000013A7  0000              add [bx+si],al
000013A9  0000              add [bx+si],al
000013AB  0000              add [bx+si],al
000013AD  0000              add [bx+si],al
000013AF  0000              add [bx+si],al
000013B1  0000              add [bx+si],al
000013B3  0003              add [bp+di],al
000013B5  0000              add [bx+si],al
000013B7  0000              add [bx+si],al
000013B9  0000              add [bx+si],al
000013BB  0000              add [bx+si],al
000013BD  0000              add [bx+si],al
000013BF  0000              add [bx+si],al
000013C1  0000              add [bx+si],al
000013C3  0000              add [bx+si],al
000013C5  0000              add [bx+si],al
000013C7  0000              add [bx+si],al
000013C9  0000              add [bx+si],al
000013CB  0300              add ax,[bx+si]
000013CD  0000              add [bx+si],al
000013CF  0000              add [bx+si],al
000013D1  0000              add [bx+si],al
000013D3  0000              add [bx+si],al
000013D5  0000              add [bx+si],al
000013D7  0000              add [bx+si],al
000013D9  0000              add [bx+si],al
000013DB  0000              add [bx+si],al
000013DD  0000              add [bx+si],al
000013DF  0000              add [bx+si],al
000013E1  0003              add [bp+di],al
000013E3  0000              add [bx+si],al
000013E5  0000              add [bx+si],al
000013E7  0000              add [bx+si],al
000013E9  0000              add [bx+si],al
000013EB  0000              add [bx+si],al
000013ED  0000              add [bx+si],al
000013EF  0000              add [bx+si],al
000013F1  0000              add [bx+si],al
000013F3  0000              add [bx+si],al
000013F5  0000              add [bx+si],al
000013F7  0000              add [bx+si],al
000013F9  0300              add ax,[bx+si]
000013FB  0000              add [bx+si],al
000013FD  0000              add [bx+si],al
000013FF  0000              add [bx+si],al
00001401  0000              add [bx+si],al
00001403  0000              add [bx+si],al
00001405  0000              add [bx+si],al
00001407  0000              add [bx+si],al
00001409  0000              add [bx+si],al
0000140B  0000              add [bx+si],al
0000140D  0000              add [bx+si],al
0000140F  0003              add [bp+di],al
00001411  0000              add [bx+si],al
00001413  0000              add [bx+si],al
00001415  0000              add [bx+si],al
00001417  0000              add [bx+si],al
00001419  0000              add [bx+si],al
0000141B  0000              add [bx+si],al
0000141D  0000              add [bx+si],al
0000141F  0000              add [bx+si],al
00001421  0000              add [bx+si],al
00001423  0000              add [bx+si],al
00001425  0000              add [bx+si],al
00001427  0300              add ax,[bx+si]
00001429  0000              add [bx+si],al
0000142B  0000              add [bx+si],al
0000142D  0000              add [bx+si],al
0000142F  0000              add [bx+si],al
00001431  0000              add [bx+si],al
00001433  0000              add [bx+si],al
00001435  0000              add [bx+si],al
00001437  0000              add [bx+si],al
00001439  0000              add [bx+si],al
0000143B  0000              add [bx+si],al
0000143D  0003              add [bp+di],al
0000143F  0000              add [bx+si],al
00001441  0000              add [bx+si],al
00001443  0000              add [bx+si],al
00001445  0000              add [bx+si],al
00001447  0000              add [bx+si],al
00001449  0000              add [bx+si],al
0000144B  0000              add [bx+si],al
0000144D  0000              add [bx+si],al
0000144F  0000              add [bx+si],al
00001451  0000              add [bx+si],al
00001453  0000              add [bx+si],al
00001455  0300              add ax,[bx+si]
00001457  0000              add [bx+si],al
00001459  0000              add [bx+si],al
0000145B  0000              add [bx+si],al
0000145D  0000              add [bx+si],al
0000145F  0000              add [bx+si],al
00001461  0000              add [bx+si],al
00001463  0000              add [bx+si],al
00001465  0000              add [bx+si],al
00001467  0000              add [bx+si],al
00001469  0000              add [bx+si],al
0000146B  0003              add [bp+di],al
0000146D  0000              add [bx+si],al
0000146F  0000              add [bx+si],al
00001471  0000              add [bx+si],al
00001473  0000              add [bx+si],al
00001475  0000              add [bx+si],al
00001477  0000              add [bx+si],al
00001479  0000              add [bx+si],al
0000147B  0000              add [bx+si],al
0000147D  0000              add [bx+si],al
0000147F  0000              add [bx+si],al
00001481  0000              add [bx+si],al
00001483  0300              add ax,[bx+si]
00001485  0000              add [bx+si],al
00001487  0000              add [bx+si],al
00001489  0000              add [bx+si],al
0000148B  0000              add [bx+si],al
0000148D  0000              add [bx+si],al
0000148F  0000              add [bx+si],al
00001491  0000              add [bx+si],al
00001493  0000              add [bx+si],al
00001495  0000              add [bx+si],al
00001497  0000              add [bx+si],al
00001499  0003              add [bp+di],al
0000149B  0000              add [bx+si],al
0000149D  0000              add [bx+si],al
0000149F  0000              add [bx+si],al
000014A1  0000              add [bx+si],al
000014A3  0000              add [bx+si],al
000014A5  0000              add [bx+si],al
000014A7  0000              add [bx+si],al
000014A9  0000              add [bx+si],al
000014AB  0000              add [bx+si],al
000014AD  0000              add [bx+si],al
000014AF  0000              add [bx+si],al
000014B1  0300              add ax,[bx+si]
000014B3  0000              add [bx+si],al
000014B5  0000              add [bx+si],al
000014B7  0000              add [bx+si],al
000014B9  0000              add [bx+si],al
000014BB  0000              add [bx+si],al
000014BD  0000              add [bx+si],al
000014BF  0000              add [bx+si],al
000014C1  0000              add [bx+si],al
000014C3  0000              add [bx+si],al
000014C5  0000              add [bx+si],al
000014C7  0003              add [bp+di],al
000014C9  0000              add [bx+si],al
000014CB  0000              add [bx+si],al
000014CD  0000              add [bx+si],al
000014CF  0000              add [bx+si],al
000014D1  0000              add [bx+si],al
000014D3  0000              add [bx+si],al
000014D5  0000              add [bx+si],al
000014D7  0000              add [bx+si],al
000014D9  0000              add [bx+si],al
000014DB  0000              add [bx+si],al
000014DD  0000              add [bx+si],al
000014DF  0300              add ax,[bx+si]
000014E1  0000              add [bx+si],al
000014E3  0000              add [bx+si],al
000014E5  0000              add [bx+si],al
000014E7  0000              add [bx+si],al
000014E9  0000              add [bx+si],al
000014EB  0000              add [bx+si],al
000014ED  0000              add [bx+si],al
000014EF  0000              add [bx+si],al
000014F1  0000              add [bx+si],al
000014F3  0000              add [bx+si],al
000014F5  0003              add [bp+di],al
000014F7  0000              add [bx+si],al
000014F9  0000              add [bx+si],al
000014FB  0000              add [bx+si],al
000014FD  0000              add [bx+si],al
000014FF  0000              add [bx+si],al
00001501  0000              add [bx+si],al
00001503  0000              add [bx+si],al
00001505  0000              add [bx+si],al
00001507  0000              add [bx+si],al
00001509  0000              add [bx+si],al
0000150B  0000              add [bx+si],al
0000150D  0300              add ax,[bx+si]
0000150F  0000              add [bx+si],al
00001511  0000              add [bx+si],al
00001513  0000              add [bx+si],al
00001515  0000              add [bx+si],al
00001517  0000              add [bx+si],al
00001519  0000              add [bx+si],al
0000151B  0000              add [bx+si],al
0000151D  0000              add [bx+si],al
0000151F  0000              add [bx+si],al
00001521  0000              add [bx+si],al
00001523  0003              add [bp+di],al
00001525  0000              add [bx+si],al
00001527  0000              add [bx+si],al
00001529  0000              add [bx+si],al
0000152B  0000              add [bx+si],al
0000152D  0000              add [bx+si],al
0000152F  0000              add [bx+si],al
00001531  0000              add [bx+si],al
00001533  0000              add [bx+si],al
00001535  0000              add [bx+si],al
00001537  0000              add [bx+si],al
00001539  0000              add [bx+si],al
0000153B  0300              add ax,[bx+si]
0000153D  0000              add [bx+si],al
0000153F  0000              add [bx+si],al
00001541  0000              add [bx+si],al
00001543  0000              add [bx+si],al
00001545  0000              add [bx+si],al
00001547  0000              add [bx+si],al
00001549  0000              add [bx+si],al
0000154B  0000              add [bx+si],al
0000154D  0000              add [bx+si],al
0000154F  0000              add [bx+si],al
00001551  0003              add [bp+di],al
00001553  0000              add [bx+si],al
00001555  0000              add [bx+si],al
00001557  0000              add [bx+si],al
00001559  0000              add [bx+si],al
0000155B  0000              add [bx+si],al
0000155D  0000              add [bx+si],al
0000155F  0000              add [bx+si],al
00001561  0000              add [bx+si],al
00001563  0000              add [bx+si],al
00001565  0000              add [bx+si],al
00001567  0000              add [bx+si],al
00001569  0300              add ax,[bx+si]
0000156B  0000              add [bx+si],al
0000156D  0000              add [bx+si],al
0000156F  0000              add [bx+si],al
00001571  0000              add [bx+si],al
00001573  0000              add [bx+si],al
00001575  0000              add [bx+si],al
00001577  0000              add [bx+si],al
00001579  0000              add [bx+si],al
0000157B  0000              add [bx+si],al
0000157D  0000              add [bx+si],al
0000157F  0003              add [bp+di],al
00001581  0000              add [bx+si],al
00001583  0000              add [bx+si],al
00001585  0000              add [bx+si],al
00001587  0000              add [bx+si],al
00001589  0000              add [bx+si],al
0000158B  0000              add [bx+si],al
0000158D  0000              add [bx+si],al
0000158F  0000              add [bx+si],al
00001591  0000              add [bx+si],al
00001593  0000              add [bx+si],al
00001595  0000              add [bx+si],al
00001597  0300              add ax,[bx+si]
00001599  0000              add [bx+si],al
0000159B  0000              add [bx+si],al
0000159D  0000              add [bx+si],al
0000159F  0000              add [bx+si],al
000015A1  0000              add [bx+si],al
000015A3  0000              add [bx+si],al
000015A5  0000              add [bx+si],al
000015A7  0000              add [bx+si],al
000015A9  0000              add [bx+si],al
000015AB  0000              add [bx+si],al
000015AD  0003              add [bp+di],al
000015AF  0000              add [bx+si],al
000015B1  0000              add [bx+si],al
000015B3  0000              add [bx+si],al
000015B5  0000              add [bx+si],al
000015B7  0000              add [bx+si],al
000015B9  0000              add [bx+si],al
000015BB  0000              add [bx+si],al
000015BD  0000              add [bx+si],al
000015BF  0000              add [bx+si],al
000015C1  0000              add [bx+si],al
000015C3  0000              add [bx+si],al
000015C5  0300              add ax,[bx+si]
000015C7  0000              add [bx+si],al
000015C9  0000              add [bx+si],al
000015CB  0000              add [bx+si],al
000015CD  0000              add [bx+si],al
000015CF  0000              add [bx+si],al
000015D1  0000              add [bx+si],al
000015D3  0000              add [bx+si],al
000015D5  0000              add [bx+si],al
000015D7  0000              add [bx+si],al
000015D9  0000              add [bx+si],al
000015DB  0003              add [bp+di],al
000015DD  0000              add [bx+si],al
000015DF  0000              add [bx+si],al
000015E1  0000              add [bx+si],al
000015E3  0000              add [bx+si],al
000015E5  0000              add [bx+si],al
000015E7  0000              add [bx+si],al
000015E9  0000              add [bx+si],al
000015EB  0000              add [bx+si],al
000015ED  0000              add [bx+si],al
000015EF  0000              add [bx+si],al
000015F1  0000              add [bx+si],al
000015F3  0300              add ax,[bx+si]
000015F5  0000              add [bx+si],al
000015F7  0000              add [bx+si],al
000015F9  0000              add [bx+si],al
000015FB  0000              add [bx+si],al
000015FD  0000              add [bx+si],al
000015FF  0000              add [bx+si],al
00001601  0000              add [bx+si],al
00001603  0000              add [bx+si],al
00001605  0000              add [bx+si],al
00001607  0000              add [bx+si],al
00001609  0003              add [bp+di],al
0000160B  0000              add [bx+si],al
0000160D  0000              add [bx+si],al
0000160F  0000              add [bx+si],al
00001611  0000              add [bx+si],al
00001613  0000              add [bx+si],al
00001615  0000              add [bx+si],al
00001617  0000              add [bx+si],al
00001619  0000              add [bx+si],al
0000161B  0000              add [bx+si],al
0000161D  0000              add [bx+si],al
0000161F  0000              add [bx+si],al
00001621  0300              add ax,[bx+si]
00001623  0000              add [bx+si],al
00001625  0000              add [bx+si],al
00001627  0000              add [bx+si],al
00001629  0000              add [bx+si],al
0000162B  0000              add [bx+si],al
0000162D  0000              add [bx+si],al
0000162F  0000              add [bx+si],al
00001631  0000              add [bx+si],al
00001633  0000              add [bx+si],al
00001635  0000              add [bx+si],al
00001637  0003              add [bp+di],al
00001639  0000              add [bx+si],al
0000163B  0000              add [bx+si],al
0000163D  0000              add [bx+si],al
0000163F  0000              add [bx+si],al
00001641  0000              add [bx+si],al
00001643  0000              add [bx+si],al
00001645  0000              add [bx+si],al
00001647  0000              add [bx+si],al
00001649  0000              add [bx+si],al
0000164B  0000              add [bx+si],al
0000164D  0000              add [bx+si],al
0000164F  0300              add ax,[bx+si]
00001651  0000              add [bx+si],al
00001653  0000              add [bx+si],al
00001655  0000              add [bx+si],al
00001657  0000              add [bx+si],al
00001659  0000              add [bx+si],al
0000165B  0000              add [bx+si],al
0000165D  0000              add [bx+si],al
0000165F  0000              add [bx+si],al
00001661  0000              add [bx+si],al
00001663  0000              add [bx+si],al
00001665  0003              add [bp+di],al
00001667  0000              add [bx+si],al
00001669  0000              add [bx+si],al
0000166B  0000              add [bx+si],al
0000166D  0000              add [bx+si],al
0000166F  0000              add [bx+si],al
00001671  0000              add [bx+si],al
00001673  0000              add [bx+si],al
00001675  0000              add [bx+si],al
00001677  0000              add [bx+si],al
00001679  0000              add [bx+si],al
0000167B  0000              add [bx+si],al
0000167D  0300              add ax,[bx+si]
0000167F  0000              add [bx+si],al
00001681  0000              add [bx+si],al
00001683  0000              add [bx+si],al
00001685  0000              add [bx+si],al
00001687  0000              add [bx+si],al
00001689  0000              add [bx+si],al
0000168B  0000              add [bx+si],al
0000168D  0000              add [bx+si],al
0000168F  0000              add [bx+si],al
00001691  0000              add [bx+si],al
00001693  0003              add [bp+di],al
00001695  0000              add [bx+si],al
00001697  0000              add [bx+si],al
00001699  0000              add [bx+si],al
0000169B  0000              add [bx+si],al
0000169D  0000              add [bx+si],al
0000169F  0000              add [bx+si],al
000016A1  0000              add [bx+si],al
000016A3  0000              add [bx+si],al
000016A5  0000              add [bx+si],al
000016A7  0000              add [bx+si],al
000016A9  0000              add [bx+si],al
000016AB  0300              add ax,[bx+si]
000016AD  0000              add [bx+si],al
000016AF  0000              add [bx+si],al
000016B1  0000              add [bx+si],al
000016B3  0000              add [bx+si],al
000016B5  0000              add [bx+si],al
000016B7  0000              add [bx+si],al
000016B9  0000              add [bx+si],al
000016BB  0000              add [bx+si],al
000016BD  0000              add [bx+si],al
000016BF  0000              add [bx+si],al
000016C1  0003              add [bp+di],al
000016C3  0000              add [bx+si],al
000016C5  0000              add [bx+si],al
000016C7  0000              add [bx+si],al
000016C9  0000              add [bx+si],al
000016CB  0000              add [bx+si],al
000016CD  0000              add [bx+si],al
000016CF  0000              add [bx+si],al
000016D1  0000              add [bx+si],al
000016D3  0000              add [bx+si],al
000016D5  0000              add [bx+si],al
000016D7  0000              add [bx+si],al
000016D9  0300              add ax,[bx+si]
000016DB  0000              add [bx+si],al
000016DD  0000              add [bx+si],al
000016DF  0000              add [bx+si],al
000016E1  0000              add [bx+si],al
000016E3  0000              add [bx+si],al
000016E5  0000              add [bx+si],al
000016E7  0000              add [bx+si],al
000016E9  0000              add [bx+si],al
000016EB  0000              add [bx+si],al
000016ED  0000              add [bx+si],al
000016EF  0003              add [bp+di],al
000016F1  0000              add [bx+si],al
000016F3  0000              add [bx+si],al
000016F5  0000              add [bx+si],al
000016F7  0000              add [bx+si],al
000016F9  0000              add [bx+si],al
000016FB  0000              add [bx+si],al
000016FD  0000              add [bx+si],al
000016FF  0000              add [bx+si],al
00001701  0000              add [bx+si],al
00001703  0000              add [bx+si],al
00001705  0000              add [bx+si],al
00001707  0300              add ax,[bx+si]
00001709  0000              add [bx+si],al
0000170B  0000              add [bx+si],al
0000170D  0000              add [bx+si],al
0000170F  0000              add [bx+si],al
00001711  0000              add [bx+si],al
00001713  0000              add [bx+si],al
00001715  0000              add [bx+si],al
00001717  0000              add [bx+si],al
00001719  0000              add [bx+si],al
0000171B  0000              add [bx+si],al
0000171D  0003              add [bp+di],al
0000171F  0000              add [bx+si],al
00001721  0000              add [bx+si],al
00001723  0000              add [bx+si],al
00001725  0000              add [bx+si],al
00001727  0000              add [bx+si],al
00001729  0000              add [bx+si],al
0000172B  0000              add [bx+si],al
0000172D  0000              add [bx+si],al
0000172F  0000              add [bx+si],al
00001731  0000              add [bx+si],al
00001733  0000              add [bx+si],al
00001735  0400              add al,0x0
00001737  0000              add [bx+si],al
00001739  0000              add [bx+si],al
0000173B  0000              add [bx+si],al
0000173D  0000              add [bx+si],al
0000173F  0000              add [bx+si],al
00001741  0000              add [bx+si],al
00001743  0000              add [bx+si],al
00001745  0000              add [bx+si],al
00001747  0000              add [bx+si],al
00001749  0000              add [bx+si],al
0000174B  0004              add [si],al
0000174D  0000              add [bx+si],al
0000174F  0000              add [bx+si],al
00001751  0000              add [bx+si],al
00001753  0000              add [bx+si],al
00001755  0000              add [bx+si],al
00001757  0000              add [bx+si],al
00001759  0000              add [bx+si],al
0000175B  0000              add [bx+si],al
0000175D  0000              add [bx+si],al
0000175F  0000              add [bx+si],al
00001761  0000              add [bx+si],al
00001763  0400              add al,0x0
00001765  0000              add [bx+si],al
00001767  0000              add [bx+si],al
00001769  0000              add [bx+si],al
0000176B  0000              add [bx+si],al
0000176D  0000              add [bx+si],al
0000176F  0000              add [bx+si],al
00001771  0000              add [bx+si],al
00001773  0000              add [bx+si],al
00001775  0000              add [bx+si],al
00001777  0000              add [bx+si],al
00001779  0005              add [di],al
0000177B  0000              add [bx+si],al
0000177D  0000              add [bx+si],al
0000177F  0000              add [bx+si],al
00001781  0000              add [bx+si],al
00001783  0000              add [bx+si],al
00001785  0000              add [bx+si],al
00001787  0000              add [bx+si],al
00001789  0000              add [bx+si],al
0000178B  0000              add [bx+si],al
0000178D  0000              add [bx+si],al
0000178F  0000              add [bx+si],al
00001791  06                push es
00001792  0000              add [bx+si],al
00001794  0000              add [bx+si],al
00001796  0000              add [bx+si],al
00001798  0000              add [bx+si],al
0000179A  0000              add [bx+si],al
0000179C  0000              add [bx+si],al
0000179E  0000              add [bx+si],al
000017A0  0000              add [bx+si],al
000017A2  0000              add [bx+si],al
000017A4  0000              add [bx+si],al
000017A6  0000              add [bx+si],al
000017A8  06                push es
000017A9  0000              add [bx+si],al
000017AB  0000              add [bx+si],al
000017AD  0000              add [bx+si],al
000017AF  0000              add [bx+si],al
000017B1  0000              add [bx+si],al
000017B3  0000              add [bx+si],al
000017B5  0000              add [bx+si],al
000017B7  0000              add [bx+si],al
000017B9  0000              add [bx+si],al
000017BB  0000              add [bx+si],al
000017BD  0000              add [bx+si],al
000017BF  06                push es
000017C0  0000              add [bx+si],al
000017C2  0000              add [bx+si],al
000017C4  0000              add [bx+si],al
000017C6  0000              add [bx+si],al
000017C8  0000              add [bx+si],al
000017CA  0000              add [bx+si],al
000017CC  0000              add [bx+si],al
000017CE  0000              add [bx+si],al
000017D0  0000              add [bx+si],al
000017D2  0000              add [bx+si],al
000017D4  0000              add [bx+si],al
000017D6  06                push es
000017D7  0000              add [bx+si],al
000017D9  0000              add [bx+si],al
000017DB  0000              add [bx+si],al
000017DD  0000              add [bx+si],al
000017DF  0000              add [bx+si],al
000017E1  0000              add [bx+si],al
000017E3  0000              add [bx+si],al
000017E5  0000              add [bx+si],al
000017E7  0000              add [bx+si],al
000017E9  0000              add [bx+si],al
000017EB  0000              add [bx+si],al
000017ED  06                push es
000017EE  0000              add [bx+si],al
000017F0  0000              add [bx+si],al
000017F2  0000              add [bx+si],al
000017F4  0000              add [bx+si],al
000017F6  0000              add [bx+si],al
000017F8  0000              add [bx+si],al
000017FA  0000              add [bx+si],al
000017FC  0000              add [bx+si],al
000017FE  0000              add [bx+si],al
00001800  0000              add [bx+si],al
00001802  0000              add [bx+si],al
00001804  0302              add ax,[bp+si]
00001806  45                inc bp
00001807  686967            push word 0x6769
0000180A  682073            push word 0x7320
0000180D  636F72            arpl [bx+0x72],bp
00001810  650D0A0A          gs or ax,0xa0a
00001814  0A0A              or cl,[bp+si]
00001816  2020              and [bx+si],ah
00001818  2020              and [bx+si],ah
0000181A  2020              and [bx+si],ah
0000181C  2020              and [bx+si],ah
0000181E  2020              and [bx+si],ah
00001820  2020              and [bx+si],ah
00001822  2020              and [bx+si],ah
00001824  2020              and [bx+si],ah
00001826  2020              and [bx+si],ah
00001828  2020              and [bx+si],ah
0000182A  205320            and [bp+di+0x20],dl
0000182D  50                push ax
0000182E  204120            and [bx+di+0x20],al
00001831  43                inc bx
00001832  204520            and [di+0x20],al
00001835  2020              and [bx+si],ah
00001837  204320            and [bp+di+0x20],al
0000183A  4F                dec di
0000183B  204D20            and [di+0x20],cl
0000183E  4D                dec bp
0000183F  204120            and [bx+di+0x20],al
00001842  4E                dec si
00001843  204420            and [si+0x20],al
00001846  45                inc bp
00001847  205220            and [bp+si+0x20],dl
0000184A  53                push bx
0000184B  2020              and [bx+si],ah
0000184D  204920            and [bx+di+0x20],cl
00001850  49                dec cx
00001851  0D0A20            or ax,0x200a
00001854  2020              and [bx+si],ah
00001856  2020              and [bx+si],ah
00001858  2020              and [bx+si],ah
0000185A  2020              and [bx+si],ah
0000185C  2020              and [bx+si],ah
0000185E  2020              and [bx+si],ah
00001860  2020              and [bx+si],ah
00001862  2020              and [bx+si],ah
00001864  2020              and [bx+si],ah
00001866  2020              and [bx+si],ah
00001868  2020              and [bx+si],ah
0000186A  2020              and [bx+si],ah
0000186C  2020              and [bx+si],ah
0000186E  2020              and [bx+si],ah
00001870  2020              and [bx+si],ah
00001872  2020              and [bx+si],ah
00001874  2020              and [bx+si],ah
00001876  2020              and [bx+si],ah
00001878  2020              and [bx+si],ah
0000187A  2020              and [bx+si],ah
0000187C  2020              and [bx+si],ah
0000187E  2020              and [bx+si],ah
00001880  2020              and [bx+si],ah
00001882  2020              and [bx+si],ah
00001884  2020              and [bx+si],ah
00001886  2020              and [bx+si],ah
00001888  627920            bound di,[bx+di+0x20]
0000188B  61                popaw
0000188C  6A66              push byte +0x66
0000188E  0D0A0A            or ax,0xa0a
00001891  0A20              or ah,[bx+si]
00001893  2020              and [bx+si],ah
00001895  2020              and [bx+si],ah
00001897  2020              and [bx+si],ah
00001899  2020              and [bx+si],ah
0000189B  2020              and [bx+si],ah
0000189D  2020              and [bx+si],ah
0000189F  2020              and [bx+si],ah
000018A1  2020              and [bx+si],ah
000018A3  202D              and [di],ch
000018A5  2D2D2D            sub ax,0x2d2d
000018A8  2D2D2D            sub ax,0x2d2d
000018AB  2D2D2D            sub ax,0x2d2d
000018AE  2D2D2D            sub ax,0x2d2d
000018B1  2D5368            sub ax,0x6853
000018B4  697020436F        imul si,[bx+si+0x20],word 0x6f43
000018B9  6E                outsb
000018BA  7472              jz 0x192e
000018BC  6F                outsw
000018BD  6C                insb
000018BE  732D              jnc 0x18ed
000018C0  2D2D2D            sub ax,0x2d2d
000018C3  2D2D2D            sub ax,0x2d2d
000018C6  2D2D2D            sub ax,0x2d2d
000018C9  2D2D2D            sub ax,0x2d2d
000018CC  2D2D2D            sub ax,0x2d2d
000018CF  2D0D0A            sub ax,0xa0d
000018D2  0A20              or ah,[bx+si]
000018D4  2020              and [bx+si],ah
000018D6  2020              and [bx+si],ah
000018D8  2020              and [bx+si],ah
000018DA  2020              and [bx+si],ah
000018DC  2020              and [bx+si],ah
000018DE  2020              and [bx+si],ah
000018E0  2020              and [bx+si],ah
000018E2  2020              and [bx+si],ah
000018E4  2020              and [bx+si],ah
000018E6  2020              and [bx+si],ah
000018E8  204355            and [bp+di+0x55],al
000018EB  52                push dx
000018EC  53                push bx
000018ED  4F                dec di
000018EE  52                push dx
000018EF  205550            and [di+0x50],dl
000018F2  2F                das
000018F3  44                inc sp
000018F4  4F                dec di
000018F5  57                push di
000018F6  4E                dec si
000018F7  2020              and [bx+si],ah
000018F9  2020              and [bx+si],ah
000018FB  2D2053            sub ax,0x5320
000018FE  48                dec ax
000018FF  49                dec cx
00001900  50                push ax
00001901  205550            and [di+0x50],dl
00001904  2F                das
00001905  44                inc sp
00001906  4F                dec di
00001907  57                push di
00001908  4E                dec si
00001909  200D              and [di],cl
0000190B  0A20              or ah,[bx+si]
0000190D  2020              and [bx+si],ah
0000190F  2020              and [bx+si],ah
00001911  2020              and [bx+si],ah
00001913  2020              and [bx+si],ah
00001915  2020              and [bx+si],ah
00001917  2020              and [bx+si],ah
00001919  2020              and [bx+si],ah
0000191B  2020              and [bx+si],ah
0000191D  2020              and [bx+si],ah
0000191F  2020              and [bx+si],ah
00001921  204355            and [bp+di+0x55],al
00001924  52                push dx
00001925  53                push bx
00001926  4F                dec di
00001927  52                push dx
00001928  204C45            and [si+0x45],cl
0000192B  46                inc si
0000192C  54                push sp
0000192D  2F                das
0000192E  52                push dx
0000192F  49                dec cx
00001930  47                inc di
00001931  48                dec ax
00001932  54                push sp
00001933  202D              and [di],ch
00001935  205348            and [bp+di+0x48],dl
00001938  49                dec cx
00001939  50                push ax
0000193A  204C45            and [si+0x45],cl
0000193D  46                inc si
0000193E  54                push sp
0000193F  2F                das
00001940  52                push dx
00001941  49                dec cx
00001942  47                inc di
00001943  48                dec ax
00001944  54                push sp
00001945  200D              and [di],cl
00001947  0A20              or ah,[bx+si]
00001949  2020              and [bx+si],ah
0000194B  2020              and [bx+si],ah
0000194D  2020              and [bx+si],ah
0000194F  2020              and [bx+si],ah
00001951  2020              and [bx+si],ah
00001953  2020              and [bx+si],ah
00001955  2020              and [bx+si],ah
00001957  2020              and [bx+si],ah
00001959  2020              and [bx+si],ah
0000195B  2020              and [bx+si],ah
0000195D  205350            and [bp+di+0x50],dl
00001960  41                inc cx
00001961  43                inc bx
00001962  45                inc bp
00001963  2020              and [bx+si],ah
00001965  2020              and [bx+si],ah
00001967  2020              and [bx+si],ah
00001969  2020              and [bx+si],ah
0000196B  2020              and [bx+si],ah
0000196D  2020              and [bx+si],ah
0000196F  202D              and [di],ch
00001971  204649            and [bp+0x49],al
00001974  52                push dx
00001975  45                inc bp
00001976  204D49            and [di+0x49],cl
00001979  53                push bx
0000197A  53                push bx
0000197B  49                dec cx
0000197C  4C                dec sp
0000197D  45                inc bp
0000197E  200D              and [di],cl
00001980  0A0D              or cl,[di]
00001982  0A0A              or cl,[bp+si]
00001984  2020              and [bx+si],ah
00001986  2020              and [bx+si],ah
00001988  2020              and [bx+si],ah
0000198A  2020              and [bx+si],ah
0000198C  2020              and [bx+si],ah
0000198E  2020              and [bx+si],ah
00001990  2020              and [bx+si],ah
00001992  2020              and [bx+si],ah
00001994  2020              and [bx+si],ah
00001996  2D2D2D            sub ax,0x2d2d
00001999  2D2D2D            sub ax,0x2d2d
0000199C  2D2D2D            sub ax,0x2d2d
0000199F  2D2D2D            sub ax,0x2d2d
000019A2  2D2D47            sub ax,0x472d
000019A5  61                popaw
000019A6  6D                insw
000019A7  6520436F          and [gs:bp+di+0x6f],al
000019AB  6E                outsb
000019AC  7472              jz 0x1a20
000019AE  6F                outsw
000019AF  6C                insb
000019B0  732D              jnc 0x19df
000019B2  2D2D2D            sub ax,0x2d2d
000019B5  2D2D2D            sub ax,0x2d2d
000019B8  2D2D2D            sub ax,0x2d2d
000019BB  2D2D2D            sub ax,0x2d2d
000019BE  2D2D2D            sub ax,0x2d2d
000019C1  2D2D0D            sub ax,0xd2d
000019C4  0A0A              or cl,[bp+si]
000019C6  2020              and [bx+si],ah
000019C8  2020              and [bx+si],ah
000019CA  2020              and [bx+si],ah
000019CC  2020              and [bx+si],ah
000019CE  2020              and [bx+si],ah
000019D0  2020              and [bx+si],ah
000019D2  2020              and [bx+si],ah
000019D4  2020              and [bx+si],ah
000019D6  2020              and [bx+si],ah
000019D8  2020              and [bx+si],ah
000019DA  2020              and [bx+si],ah
000019DC  52                push dx
000019DD  45                inc bp
000019DE  54                push sp
000019DF  55                push bp
000019E0  52                push dx
000019E1  4E                dec si
000019E2  2020              and [bx+si],ah
000019E4  2020              and [bx+si],ah
000019E6  2020              and [bx+si],ah
000019E8  2020              and [bx+si],ah
000019EA  2020              and [bx+si],ah
000019EC  2020              and [bx+si],ah
000019EE  2D2047            sub ax,0x4720
000019F1  41                inc cx
000019F2  4D                dec bp
000019F3  45                inc bp
000019F4  205354            and [bp+di+0x54],dl
000019F7  41                inc cx
000019F8  52                push dx
000019F9  54                push sp
000019FA  0D0A20            or ax,0x200a
000019FD  2020              and [bx+si],ah
000019FF  2020              and [bx+si],ah
00001A01  2020              and [bx+si],ah
00001A03  2020              and [bx+si],ah
00001A05  2020              and [bx+si],ah
00001A07  2020              and [bx+si],ah
00001A09  2020              and [bx+si],ah
00001A0B  2020              and [bx+si],ah
00001A0D  2020              and [bx+si],ah
00001A0F  2020              and [bx+si],ah
00001A11  205343            and [bp+di+0x43],dl
00001A14  52                push dx
00001A15  4F                dec di
00001A16  4C                dec sp
00001A17  4C                dec sp
00001A18  204C4F            and [si+0x4f],cl
00001A1B  43                inc bx
00001A1C  4B                dec bx
00001A1D  2020              and [bx+si],ah
00001A1F  2020              and [bx+si],ah
00001A21  2020              and [bx+si],ah
00001A23  202D              and [di],ch
00001A25  205041            and [bx+si+0x41],dl
00001A28  55                push bp
00001A29  53                push bx
00001A2A  45                inc bp
00001A2B  2F                das
00001A2C  43                inc bx
00001A2D  4F                dec di
00001A2E  4E                dec si
00001A2F  54                push sp
00001A30  49                dec cx
00001A31  4E                dec si
00001A32  55                push bp
00001A33  45                inc bp
00001A34  0D0A20            or ax,0x200a
00001A37  2020              and [bx+si],ah
00001A39  2020              and [bx+si],ah
00001A3B  2020              and [bx+si],ah
00001A3D  2020              and [bx+si],ah
00001A3F  2020              and [bx+si],ah
00001A41  2020              and [bx+si],ah
00001A43  2020              and [bx+si],ah
00001A45  2020              and [bx+si],ah
00001A47  2020              and [bx+si],ah
00001A49  2020              and [bx+si],ah
00001A4B  205120            and [bx+di+0x20],dl
00001A4E  2020              and [bx+si],ah
00001A50  2020              and [bx+si],ah
00001A52  2020              and [bx+si],ah
00001A54  2020              and [bx+si],ah
00001A56  2020              and [bx+si],ah
00001A58  2020              and [bx+si],ah
00001A5A  2020              and [bx+si],ah
00001A5C  2020              and [bx+si],ah
00001A5E  2D2051            sub ax,0x5120
00001A61  55                push bp
00001A62  49                dec cx
00001A63  45                inc bp
00001A64  54                push sp
00001A65  2028              and [bx+si],ch
00001A67  53                push bx
00001A68  4F                dec di
00001A69  55                push bp
00001A6A  4E                dec si
00001A6B  44                inc sp
00001A6C  204F4E            and [bx+0x4e],cl
00001A6F  2F                das
00001A70  4F                dec di
00001A71  46                inc si
00001A72  46                inc si
00001A73  290D              sub [di],cx
00001A75  0A20              or ah,[bx+si]
00001A77  2020              and [bx+si],ah
00001A79  2020              and [bx+si],ah
00001A7B  2020              and [bx+si],ah
00001A7D  2020              and [bx+si],ah
00001A7F  2020              and [bx+si],ah
00001A81  2020              and [bx+si],ah
00001A83  2020              and [bx+si],ah
00001A85  2020              and [bx+si],ah
00001A87  2020              and [bx+si],ah
00001A89  2020              and [bx+si],ah
00001A8B  204553            and [di+0x53],al
00001A8E  43                inc bx
00001A8F  2020              and [bx+si],ah
00001A91  2020              and [bx+si],ah
00001A93  2020              and [bx+si],ah
00001A95  2020              and [bx+si],ah
00001A97  2020              and [bx+si],ah
00001A99  2020              and [bx+si],ah
00001A9B  2020              and [bx+si],ah
00001A9D  202D              and [di],ch
00001A9F  204741            and [bx+0x41],al
00001AA2  4D                dec bp
00001AA3  45                inc bp
00001AA4  20454E            and [di+0x4e],al
00001AA7  44                inc sp
00001AA8  0003              add [bp+di],al
00001AAA  0200              add al,[bx+si]
00001AAC  43                inc bx
00001AAD  6F                outsw
00001AAE  6E                outsb
00001AAF  677261            jc 0x1b13
00001AB2  7475              jz 0x1b29
00001AB4  6C                insb
00001AB5  61                popaw
00001AB6  7469              jz 0x1b21
00001AB8  6F                outsw
00001AB9  6E                outsb
00001ABA  7321              jnc 0x1add
00001ABC  2121              and [bx+di],sp
00001ABE  0D0A59            or ax,0x590a
00001AC1  6F                outsw
00001AC2  7520              jnz 0x1ae4
00001AC4  61                popaw
00001AC5  7265              jc 0x1b2c
00001AC7  207468            and [si+0x68],dh
00001ACA  65206E65          and [gs:bp+0x65],ch
00001ACE  7720              ja 0x1af0
00001AD0  68692D            push word 0x2d69
00001AD3  7363              jnc 0x1b38
00001AD5  6F                outsw
00001AD6  7265              jc 0x1b3d
00001AD8  722E              jc 0x1b08
00001ADA  0D0A45            or ax,0x450a
00001ADD  6E                outsb
00001ADE  7465              jz 0x1b45
00001AE0  7220              jc 0x1b02
00001AE2  796F              jns 0x1b53
00001AE4  7572              jnz 0x1b58
00001AE6  20696E            and [bx+di+0x6e],ch
00001AE9  697469616C        imul si,[si+0x69],word 0x6c61
00001AEE  732C              jnc 0x1b1c
00001AF0  207468            and [si+0x68],dh
00001AF3  656E              gs outsb
00001AF5  207072            and [bx+si+0x72],dh
00001AF8  657373            gs jnc 0x1b6e
00001AFB  207468            and [si+0x68],dh
00001AFE  65205245          and [gs:bp+si+0x45],dl
00001B02  54                push sp
00001B03  55                push bp
00001B04  52                push dx
00001B05  4E                dec si
00001B06  206B65            and [bp+di+0x65],ch
00001B09  792E              jns 0x1b39
00001B0B  0D0A00            or ax,0xa
00001B0E  0302              add ax,[bp+si]
00001B10  1E                push ds
00001B11  42                inc dx
00001B12  4F                dec di
00001B13  4E                dec si
00001B14  55                push bp
00001B15  53                push bx
00001B16  0000              add [bx+si],al
00001B18  0000              add [bx+si],al
00001B1A  0000              add [bx+si],al
00001B1C  0000              add [bx+si],al
00001B1E  0000              add [bx+si],al
00001B20  F4                hlt
00001B21  0910              or [bx+si],dx
00001B23  06                push es
00001B24  0004              add [si],al
00001B26  0000              add [bx+si],al
00001B28  1000              adc [bx+si],al
00001B2A  0001              add [bx+di],al
00001B2C  0000              add [bx+si],al
00001B2E  40                inc ax
00001B2F  0000              add [bx+si],al
00001B31  004411            add [si+0x11],al
00001B34  0000              add [bx+si],al
00001B36  0000              add [bx+si],al
00001B38  155400            adc ax,0x54
00001B3B  0000              add [bx+si],al
00001B3D  005555            add [di+0x55],dl
00001B40  0000              add [bx+si],al
00001B42  0001              add [bx+di],al
00001B44  45                inc bp
00001B45  45                inc bp
00001B46  40                inc ax
00001B47  0000              add [bx+si],al
00001B49  054141            add ax,0x4141
00001B4C  50                push ax
00001B4D  0000              add [bx+si],al
00001B4F  55                push bp
00001B50  55                push bp
00001B51  55                push bp
00001B52  55                push bp
00001B53  0000              add [bx+si],al
00001B55  41                inc cx
00001B56  55                push bp
00001B57  55                push bp
00001B58  41                inc cx
00001B59  0000              add [bx+si],al
00001B5B  40                inc ax
00001B5C  50                push ax
00001B5D  050100            add ax,0x1
00001B60  004151            add [bx+di+0x51],al
00001B63  45                inc bp
00001B64  41                inc cx
00001B65  0000              add [bx+si],al
00001B67  44                inc sp
00001B68  055011            add ax,0x1150
00001B6B  0000              add [bx+si],al
00001B6D  44                inc sp
00001B6E  014011            add [bx+si+0x11],ax
00001B71  0000              add [bx+si],al
00001B73  41                inc cx
00001B74  0000              add [bx+si],al
00001B76  41                inc cx
00001B77  0000              add [bx+si],al
00001B79  40                inc ax
00001B7A  40                inc ax
00001B7B  0101              add [bx+di],ax
00001B7D  0001              add [bx+di],al
00001B7F  41                inc cx
00001B80  40                inc ax
00001B81  014140            add [bx+di+0x40],ax
00001B84  90                nop
00001B85  0910              or [bx+si],dx
00001B87  06                push es
00001B88  014004            add [bx+si+0x4],ax
00001B8B  1001              adc [bx+di],al
00001B8D  40                inc ax
00001B8E  004004            add [bx+si+0x4],al
00001B91  1001              adc [bx+di],al
00001B93  0000              add [bx+si],al
00001B95  40                inc ax
00001B96  44                inc sp
00001B97  1101              adc [bx+di],ax
00001B99  0000              add [bx+si],al
00001B9B  40                inc ax
00001B9C  155401            adc ax,0x154
00001B9F  0000              add [bx+si],al
00001BA1  40                inc ax
00001BA2  55                push bp
00001BA3  55                push bp
00001BA4  0100              add [bx+si],ax
00001BA6  004145            add [bx+di+0x45],al
00001BA9  45                inc bp
00001BAA  41                inc cx
00001BAB  0000              add [bx+si],al
00001BAD  45                inc bp
00001BAE  41                inc cx
00001BAF  41                inc cx
00001BB0  51                push cx
00001BB1  0000              add [bx+si],al
00001BB3  55                push bp
00001BB4  55                push bp
00001BB5  55                push bp
00001BB6  55                push bp
00001BB7  0000              add [bx+si],al
00001BB9  015005            add [bx+si+0x5],dx
00001BBC  40                inc ax
00001BBD  0000              add [bx+si],al
00001BBF  005005            add [bx+si+0x5],dl
00001BC2  0000              add [bx+si],al
00001BC4  0001              add [bx+di],al
00001BC6  50                push ax
00001BC7  054000            add ax,0x40
00001BCA  0004              add [si],al
00001BCC  0410              add al,0x10
00001BCE  1000              adc [bx+si],al
00001BD0  0004              add [si],al
00001BD2  0410              add al,0x10
00001BD4  1000              adc [bx+si],al
00001BD6  0010              add [bx+si],dl
00001BD8  014004            add [bx+si+0x4],ax
00001BDB  0004              add [si],al
00001BDD  40                inc ax
00001BDE  014001            add [bx+si+0x1],ax
00001BE1  1001              adc [bx+di],al
00001BE3  0000              add [bx+si],al
00001BE5  0000              add [bx+si],al
00001BE7  40                inc ax
00001BE8  BC0A10            mov sp,0x100a
00001BEB  06                push es
00001BEC  004000            add [bx+si+0x0],al
00001BEF  0001              add [bx+di],al
00001BF1  0001              add [bx+di],al
00001BF3  1000              adc [bx+si],al
00001BF5  0004              add [si],al
00001BF7  40                inc ax
00001BF8  0004              add [si],al
00001BFA  0000              add [bx+si],al
00001BFC  1000              adc [bx+si],al
00001BFE  0001              add [bx+di],al
00001C00  055040            add ax,0x4050
00001C03  0014              add [si],dl
00001C05  055555            add ax,0x5555
00001C08  50                push ax
00001C09  1414              adc al,0x14
00001C0B  150140            adc ax,0x4001
00001C0E  54                push sp
00001C0F  1414              adc al,0x14
00001C11  55                push bp
00001C12  41                inc cx
00001C13  50                push ax
00001C14  55                push bp
00001C15  1414              adc al,0x14
00001C17  55                push bp
00001C18  014055            add [bx+si+0x55],ax
00001C1B  1415              adc al,0x15
00001C1D  55                push bp
00001C1E  54                push sp
00001C1F  155554            adc ax,0x5455
00001C22  055550            add ax,0x5055
00001C25  055550            add ax,0x5055
00001C28  0015              add [di],dl
00001C2A  50                push ax
00001C2B  055400            add ax,0x54
00001C2E  0005              add [di],al
00001C30  54                push sp
00001C31  155000            adc ax,0x50
00001C34  0005              add [di],al
00001C36  055050            add ax,0x5050
00001C39  0000              add [bx+si],al
00001C3B  1400              adc al,0x0
00001C3D  0014              add [si],dl
00001C3F  0005              add [di],al
00001C41  50                push ax
00001C42  0000              add [bx+si],al
00001C44  055001            add ax,0x150
00001C47  50                push ax
00001C48  0000              add [bx+si],al
00001C4A  054058            add ax,0x5840
00001C4D  0A10              or dl,[bx+si]
00001C4F  06                push es
00001C50  0001              add [bx+di],al
00001C52  40                inc ax
00001C53  014000            add [bx+si+0x0],ax
00001C56  0004              add [si],al
00001C58  0000              add [bx+si],al
00001C5A  1000              adc [bx+si],al
00001C5C  0004              add [si],al
00001C5E  0000              add [bx+si],al
00001C60  1000              adc [bx+si],al
00001C62  0001              add [bx+di],al
00001C64  055040            add ax,0x4050
00001C67  0000              add [bx+si],al
00001C69  055555            add ax,0x5555
00001C6C  50                push ax
00001C6D  0000              add [bx+si],al
00001C6F  155555            adc ax,0x5555
00001C72  54                push sp
00001C73  0000              add [bx+si],al
00001C75  150140            adc ax,0x4001
00001C78  55                push bp
00001C79  0000              add [bx+si],al
00001C7B  55                push bp
00001C7C  054155            add ax,0x5541
00001C7F  0005              add [di],al
00001C81  55                push bp
00001C82  014055            add [bx+si+0x55],ax
00001C85  50                push ax
00001C86  155554            adc ax,0x5455
00001C89  155554            adc ax,0x5455
00001C8C  1415              adc al,0x15
00001C8E  54                push sp
00001C8F  155414            adc ax,0x1454
00001C92  1405              adc al,0x5
00001C94  55                push bp
00001C95  55                push bp
00001C96  50                push ax
00001C97  1414              adc al,0x14
00001C99  055555            add ax,0x5555
00001C9C  50                push ax
00001C9D  1414              adc al,0x14
00001C9F  050000            add ax,0x0
00001CA2  50                push ax
00001CA3  1400              adc al,0x0
00001CA5  014001            add [bx+si+0x1],ax
00001CA8  40                inc ax
00001CA9  0000              add [bx+si],al
00001CAB  005415            add [si+0x15],dl
00001CAE  0000              add [bx+si],al
00001CB0  840B              test [bp+di],cl
00001CB2  10060000          adc [0x0],al
00001CB6  0410              add al,0x10
00001CB8  0000              add [bx+si],al
00001CBA  014015            add [bx+si+0x15],ax
00001CBD  54                push sp
00001CBE  014005            add [bx+si+0x5],ax
00001CC1  50                push ax
00001CC2  55                push bp
00001CC3  55                push bp
00001CC4  055014            add ax,0x1450
00001CC7  1455              adc al,0x55
00001CC9  55                push bp
00001CCA  1414              adc al,0x14
00001CCC  1414              adc al,0x14
00001CCE  55                push bp
00001CCF  55                push bp
00001CD0  1414              adc al,0x14
00001CD2  055555            add ax,0x5555
00001CD5  55                push bp
00001CD6  55                push bp
00001CD7  50                push ax
00001CD8  015055            add [bx+si+0x55],dx
00001CDB  55                push bp
00001CDC  054000            add ax,0x40
00001CDF  005005            add [bx+si+0x5],dl
00001CE2  0000              add [bx+si],al
00001CE4  0000              add [bx+si],al
00001CE6  1004              adc [si],al
00001CE8  0000              add [bx+si],al
00001CEA  0000              add [bx+si],al
00001CEC  1004              adc [si],al
00001CEE  0000              add [bx+si],al
00001CF0  0001              add [bx+di],al
00001CF2  51                push cx
00001CF3  45                inc bp
00001CF4  40                inc ax
00001CF5  0000              add [bx+si],al
00001CF7  155555            adc ax,0x5555
00001CFA  54                push sp
00001CFB  0001              add [bx+di],al
00001CFD  50                push ax
00001CFE  50                push ax
00001CFF  050540            add ax,0x4005
00001D02  050140            add ax,0x4001
00001D05  014050            add [bx+si+0x50],ax
00001D08  1405              adc al,0x5
00001D0A  0000              add [bx+si],al
00001D0C  50                push ax
00001D0D  1450              adc al,0x50
00001D0F  1400              adc al,0x0
00001D11  0014              add [si],dl
00001D13  05200B            add ax,0xb20
00001D16  10060000          adc [0x0],al
00001D1A  0410              add al,0x10
00001D1C  0000              add [bx+si],al
00001D1E  0000              add [bx+si],al
00001D20  1414              adc al,0x14
00001D22  0000              add [bx+si],al
00001D24  0000              add [bx+si],al
00001D26  55                push bp
00001D27  55                push bp
00001D28  0000              add [bx+si],al
00001D2A  014055            add [bx+si+0x55],ax
00001D2D  55                push bp
00001D2E  014005            add [bx+si+0x5],ax
00001D31  50                push ax
00001D32  55                push bp
00001D33  55                push bp
00001D34  055015            add ax,0x1550
00001D37  54                push sp
00001D38  55                push bp
00001D39  55                push bp
00001D3A  155414            adc ax,0x1454
00001D3D  1455              adc al,0x55
00001D3F  55                push bp
00001D40  1414              adc al,0x14
00001D42  055555            add ax,0x5555
00001D45  55                push bp
00001D46  55                push bp
00001D47  50                push ax
00001D48  015055            add [bx+si+0x55],dx
00001D4B  55                push bp
00001D4C  054000            add ax,0x40
00001D4F  0014              add [si],dl
00001D51  1400              adc al,0x0
00001D53  0000              add [bx+si],al
00001D55  015415            add [si+0x15],dx
00001D58  40                inc ax
00001D59  0000              add [bx+si],al
00001D5B  055555            add ax,0x5555
00001D5E  50                push ax
00001D5F  0000              add [bx+si],al
00001D61  1404              adc al,0x4
00001D63  1014              adc [si],dl
00001D65  0000              add [bx+si],al
00001D67  50                push ax
00001D68  1414              adc al,0x14
00001D6A  050000            add ax,0x0
00001D6D  40                inc ax
00001D6E  1004              adc [si],al
00001D70  0100              add [bx+si],ax
00001D72  005014            add [bx+si+0x14],dl
00001D75  1405              adc al,0x5
00001D77  004C0C            add [si+0xc],cl
00001D7A  10060010          adc [0x1000],al
00001D7E  014004            add [bx+si+0x4],ax
00001D81  0000              add [bx+si],al
00001D83  1401              adc al,0x1
00001D85  40                inc ax
00001D86  1400              adc al,0x0
00001D88  0015              add [di],dl
00001D8A  014054            add [bx+si+0x54],ax
00001D8D  0000              add [bx+si],al
00001D8F  114141            adc [bx+di+0x41],ax
00001D92  44                inc sp
00001D93  0000              add [bx+si],al
00001D95  155555            adc ax,0x5555
00001D98  54                push sp
00001D99  0005              add [di],al
00001D9B  55                push bp
00001D9C  41                inc cx
00001D9D  41                inc cx
00001D9E  55                push bp
00001D9F  50                push ax
00001DA0  155551            adc ax,0x5155
00001DA3  45                inc bp
00001DA4  55                push bp
00001DA5  54                push sp
00001DA6  50                push ax
00001DA7  155555            adc ax,0x5555
00001DAA  54                push sp
00001DAB  054014            add ax,0x1440
00001DAE  55                push bp
00001DAF  55                push bp
00001DB0  1401              adc al,0x1
00001DB2  50                push ax
00001DB3  50                push ax
00001DB4  50                push ax
00001DB5  050505            add ax,0x505
00001DB8  005011            add [bx+si+0x11],dl
00001DBB  44                inc sp
00001DBC  050000            add ax,0x0
00001DBF  50                push ax
00001DC0  055005            add ax,0x550
00001DC3  0000              add [bx+si],al
00001DC5  50                push ax
00001DC6  014005            add [bx+si+0x5],ax
00001DC9  0001              add [bx+di],al
00001DCB  40                inc ax
00001DCC  014001            add [bx+si+0x1],ax
00001DCF  40                inc ax
00001DD0  055000            add ax,0x50
00001DD3  0005              add [di],al
00001DD5  50                push ax
00001DD6  155400            adc ax,0x54
00001DD9  0015              add [di],dl
00001DDB  54                push sp
00001DDC  E80B10            call word 0x2dea
00001DDF  06                push es
00001DE0  50                push ax
00001DE1  1005              adc [di],al
00001DE3  50                push ax
00001DE4  0405              add al,0x5
00001DE6  40                inc ax
00001DE7  1401              adc al,0x1
00001DE9  40                inc ax
00001DEA  1401              adc al,0x1
00001DEC  50                push ax
00001DED  150140            adc ax,0x4001
00001DF0  54                push sp
00001DF1  051551            add ax,0x5115
00001DF4  41                inc cx
00001DF5  41                inc cx
00001DF6  45                inc bp
00001DF7  54                push sp
00001DF8  055555            add ax,0x5555
00001DFB  55                push bp
00001DFC  55                push bp
00001DFD  50                push ax
00001DFE  0005              add [di],al
00001E00  055050            add ax,0x5050
00001E03  0000              add [bx+si],al
00001E05  054141            add ax,0x4141
00001E08  50                push ax
00001E09  0000              add [bx+si],al
00001E0B  155555            adc ax,0x5555
00001E0E  54                push sp
00001E0F  0000              add [bx+si],al
00001E11  1450              adc al,0x50
00001E13  051400            add ax,0x14
00001E16  005055            add [bx+si+0x55],dl
00001E19  55                push bp
00001E1A  050000            add ax,0x0
00001E1D  50                push ax
00001E1E  55                push bp
00001E1F  55                push bp
00001E20  050000            add ax,0x0
00001E23  50                push ax
00001E24  055005            add ax,0x550
00001E27  0000              add [bx+si],al
00001E29  50                push ax
00001E2A  014005            add [bx+si+0x5],ax
00001E2D  0000              add [bx+si],al
00001E2F  1400              adc al,0x0
00001E31  0014              add [si],dl
00001E33  0000              add [bx+si],al
00001E35  55                push bp
00001E36  0000              add [bx+si],al
00001E38  55                push bp
00001E39  0001              add [bx+di],al
00001E3B  55                push bp
00001E3C  50                push ax
00001E3D  055540            add ax,0x4055
00001E40  140D              adc al,0xd
00001E42  10060000          adc [0x0],al
00001E46  0000              add [bx+si],al
00001E48  0000              add [bx+si],al
00001E4A  0000              add [bx+si],al
00001E4C  50                push ax
00001E4D  050000            add ax,0x0
00001E50  0001              add [bx+di],al
00001E52  54                push sp
00001E53  154000            adc ax,0x40
00001E56  0005              add [di],al
00001E58  55                push bp
00001E59  55                push bp
00001E5A  50                push ax
00001E5B  0000              add [bx+si],al
00001E5D  050140            add ax,0x4001
00001E60  50                push ax
00001E61  0000              add [bx+si],al
00001E63  151144            adc ax,0x4411
00001E66  54                push sp
00001E67  0001              add [bx+di],al
00001E69  55                push bp
00001E6A  55                push bp
00001E6B  55                push bp
00001E6C  55                push bp
00001E6D  40                inc ax
00001E6E  151540            adc ax,0x4015
00001E71  015454            add [si+0x54],dx
00001E74  1405              adc al,0x5
00001E76  41                inc cx
00001E77  41                inc cx
00001E78  50                push ax
00001E79  1414              adc al,0x14
00001E7B  055555            add ax,0x5555
00001E7E  50                push ax
00001E7F  1414              adc al,0x14
00001E81  150550            adc ax,0x5005
00001E84  54                push sp
00001E85  1414              adc al,0x14
00001E87  1401              adc al,0x1
00001E89  40                inc ax
00001E8A  1414              adc al,0x14
00001E8C  0015              add [di],dl
00001E8E  0000              add [bx+si],al
00001E90  54                push sp
00001E91  0000              add [bx+si],al
00001E93  055415            add ax,0x1554
00001E96  50                push ax
00001E97  0000              add [bx+si],al
00001E99  015415            add [si+0x15],dx
00001E9C  40                inc ax
00001E9D  0000              add [bx+si],al
00001E9F  0000              add [bx+si],al
00001EA1  0000              add [bx+si],al
00001EA3  00B00C10          add [bx+si+0x100c],dh
00001EA7  06                push es
00001EA8  0000              add [bx+si],al
00001EAA  0000              add [bx+si],al
00001EAC  0000              add [bx+si],al
00001EAE  1400              adc al,0x0
00001EB0  50                push ax
00001EB1  050014            add ax,0x1400
00001EB4  1401              adc al,0x1
00001EB6  54                push sp
00001EB7  154014            adc ax,0x1440
00001EBA  1405              adc al,0x5
00001EBC  55                push bp
00001EBD  55                push bp
00001EBE  50                push ax
00001EBF  1414              adc al,0x14
00001EC1  051144            add ax,0x4411
00001EC4  50                push ax
00001EC5  1415              adc al,0x15
00001EC7  150140            adc ax,0x4001
00001ECA  54                push sp
00001ECB  54                push sp
00001ECC  015555            add [di+0x55],dx
00001ECF  55                push bp
00001ED0  55                push bp
00001ED1  40                inc ax
00001ED2  0015              add [di],dl
00001ED4  50                push ax
00001ED5  055400            add ax,0x54
00001ED8  0005              add [di],al
00001EDA  55                push bp
00001EDB  55                push bp
00001EDC  50                push ax
00001EDD  0000              add [bx+si],al
00001EDF  055555            add ax,0x5555
00001EE2  50                push ax
00001EE3  0000              add [bx+si],al
00001EE5  150550            adc ax,0x5005
00001EE8  54                push sp
00001EE9  0000              add [bx+si],al
00001EEB  1400              adc al,0x0
00001EED  0014              add [si],dl
00001EEF  0000              add [bx+si],al
00001EF1  54                push sp
00001EF2  0000              add [bx+si],al
00001EF4  150015            adc ax,0x1500
00001EF7  50                push ax
00001EF8  0000              add [bx+si],al
00001EFA  055415            add ax,0x1554
00001EFD  40                inc ax
00001EFE  0000              add [bx+si],al
00001F00  015400            add [si+0x0],dx
00001F03  0000              add [bx+si],al
00001F05  0000              add [bx+si],al
00001F07  00780D            add [bx+si+0xd],bh
00001F0A  10060000          adc [0x0],al
00001F0E  014000            add [bx+si+0x0],ax
00001F11  0000              add [bx+si],al
00001F13  0001              add [bx+di],al
00001F15  40                inc ax
00001F16  0000              add [bx+si],al
00001F18  0000              add [bx+si],al
00001F1A  055000            add ax,0x50
00001F1D  0000              add [bx+si],al
00001F1F  0015              add [di],dl
00001F21  54                push sp
00001F22  0000              add [bx+si],al
00001F24  0000              add [bx+si],al
00001F26  55                push bp
00001F27  55                push bp
00001F28  0000              add [bx+si],al
00001F2A  55                push bp
00001F2B  55                push bp
00001F2C  55                push bp
00001F2D  55                push bp
00001F2E  55                push bp
00001F2F  55                push bp
00001F30  0000              add [bx+si],al
00001F32  44                inc sp
00001F33  1100              adc [bx+si],ax
00001F35  0000              add [bx+si],al
00001F37  005555            add [di+0x55],dl
00001F3A  0000              add [bx+si],al
00001F3C  0000              add [bx+si],al
00001F3E  55                push bp
00001F3F  55                push bp
00001F40  0000              add [bx+si],al
00001F42  0005              add [di],al
00001F44  55                push bp
00001F45  55                push bp
00001F46  50                push ax
00001F47  0000              add [bx+si],al
00001F49  015555            add [di+0x55],dx
00001F4C  40                inc ax
00001F4D  0000              add [bx+si],al
00001F4F  015555            add [di+0x55],dx
00001F52  40                inc ax
00001F53  0000              add [bx+si],al
00001F55  005555            add [di+0x55],dl
00001F58  0000              add [bx+si],al
00001F5A  0000              add [bx+si],al
00001F5C  51                push cx
00001F5D  45                inc bp
00001F5E  0000              add [bx+si],al
00001F60  0000              add [bx+si],al
00001F62  51                push cx
00001F63  45                inc bp
00001F64  0000              add [bx+si],al
00001F66  0000              add [bx+si],al
00001F68  51                push cx
00001F69  45                inc bp
00001F6A  0000              add [bx+si],al
00001F6C  0D110E            or ax,0xe11
00001F6F  06                push es
00001F70  0000              add [bx+si],al
00001F72  055000            add ax,0x50
00001F75  0000              add [bx+si],al
00001F77  0010              add [bx+si],dl
00001F79  0400              add al,0x0
00001F7B  0000              add [bx+si],al
00001F7D  004001            add [bx+si+0x1],al
00001F80  0000              add [bx+si],al
00001F82  0001              add [bx+di],al
00001F84  0000              add [bx+si],al
00001F86  40                inc ax
00001F87  0000              add [bx+si],al
00001F89  0400              add al,0x0
00001F8B  0010              add [bx+si],dl
00001F8D  0005              add [di],al
00001F8F  54                push sp
00001F90  44                inc sp
00001F91  1115              adc [di],dx
00001F93  50                push ax
00001F94  55                push bp
00001F95  55                push bp
00001F96  55                push bp
00001F97  55                push bp
00001F98  55                push bp
00001F99  55                push bp
00001F9A  005010            add [bx+si+0x10],dl
00001F9D  1401              adc al,0x1
00001F9F  0000              add [bx+si],al
00001FA1  51                push cx
00001FA2  51                push cx
00001FA3  44                inc sp
00001FA4  51                push cx
00001FA5  0000              add [bx+si],al
00001FA7  51                push cx
00001FA8  51                push cx
00001FA9  44                inc sp
00001FAA  0100              add [bx+si],ax
00001FAC  005151            add [bx+di+0x51],dl
00001FAF  44                inc sp
00001FB0  55                push bp
00001FB1  0000              add [bx+si],al
00001FB3  1010              adc [bx+si],dl
00001FB5  1454              adc al,0x54
00001FB7  0000              add [bx+si],al
00001FB9  055555            add ax,0x5555
00001FBC  50                push ax
00001FBD  0000              add [bx+si],al
00001FBF  0000              add [bx+si],al
00001FC1  0000              add [bx+si],al
00001FC3  005F11            add [bx+0x11],bl
00001FC6  0A060000          or al,[0x0]
00001FCA  0100              add [bx+si],ax
00001FCC  0000              add [bx+si],al
00001FCE  0000              add [bx+si],al
00001FD0  0000              add [bx+si],al
00001FD2  0000              add [bx+si],al
00001FD4  0000              add [bx+si],al
00001FD6  054000            add ax,0x40
00001FD9  0000              add [bx+si],al
00001FDB  0015              add [di],dl
00001FDD  50                push ax
00001FDE  0000              add [bx+si],al
00001FE0  0001              add [bx+di],al
00001FE2  55                push bp
00001FE3  55                push bp
00001FE4  0000              add [bx+si],al
00001FE6  015544            add [di+0x44],dx
00001FE9  44                inc sp
00001FEA  54                push sp
00001FEB  50                push ax
00001FEC  55                push bp
00001FED  55                push bp
00001FEE  55                push bp
00001FEF  55                push bp
00001FF0  55                push bp
00001FF1  54                push sp
00001FF2  155555            adc ax,0x5555
00001FF5  55                push bp
00001FF6  55                push bp
00001FF7  50                push ax
00001FF8  0001              add [bx+di],al
00001FFA  55                push bp
00001FFB  55                push bp
00001FFC  0000              add [bx+si],al
00001FFE  0001              add [bx+di],al
00002000  1111              adc [bx+di],dx
00002002  0000              add [bx+si],al
00002004  9F                lahf
00002005  11060201          adc [0x102],ax
00002009  1001              adc [bx+di],al
0000200B  1001              adc [bx+di],al
0000200D  50                push ax
0000200E  004000            add [bx+si+0x0],al
00002011  40                inc ax
00002012  0040AF            add [bx+si-0x51],al
00002015  110D              adc [di],cx
00002017  0110              add [bx+si],dx
00002019  1010              adc [bx+si],dl
0000201B  1010              adc [bx+si],dl
0000201D  1010              adc [bx+si],dl
0000201F  105444            adc [si+0x44],dl
00002022  0000              add [bx+si],al
00002024  00F9              add cl,bh
00002026  0E                push cs
00002027  10060000          adc [0x0],al
0000202B  0000              add [bx+si],al
0000202D  0000              add [bx+si],al
0000202F  0000              add [bx+si],al
00002031  0000              add [bx+si],al
00002033  004000            add [bx+si+0x0],al
00002036  004044            add [bx+si+0x44],al
00002039  0000              add [bx+si],al
0000203B  0000              add [bx+si],al
0000203D  0010              add [bx+si],dl
0000203F  0000              add [bx+si],al
00002041  0005              add [di],al
00002043  150100            adc ax,0x1
00002046  0000              add [bx+si],al
00002048  015415            add [si+0x15],dx
0000204B  50                push ax
0000204C  0000              add [bx+si],al
0000204E  015541            add [di+0x41],dx
00002051  50                push ax
00002052  0000              add [bx+si],al
00002054  150545            adc ax,0x4505
00002057  40                inc ax
00002058  0001              add [bx+di],al
0000205A  015054            add [bx+si+0x54],dx
0000205D  40                inc ax
0000205E  0000              add [bx+si],al
00002060  005415            add [si+0x15],dl
00002063  0000              add [bx+si],al
00002065  004505            add [di+0x5],al
00002068  41                inc cx
00002069  51                push cx
0000206A  1000              adc [bx+si],al
0000206C  0001              add [bx+di],al
0000206E  40                inc ax
0000206F  44                inc sp
00002070  0000              add [bx+si],al
00002072  1101              adc [bx+di],ax
00002074  004400            add [si+0x0],al
00002077  0450              add al,0x50
00002079  0000              add [bx+si],al
0000207B  40                inc ax
0000207C  004400            add [si+0x0],al
0000207F  0000              add [bx+si],al
00002081  0000              add [bx+si],al
00002083  0400              add al,0x0
00002085  0000              add [bx+si],al
00002087  0000              add [bx+si],al
00002089  95                xchg ax,bp
0000208A  0E                push cs
0000208B  10060100          adc [0x1],al
0000208F  004000            add [bx+si+0x0],al
00002092  41                inc cx
00002093  0400              add al,0x0
00002095  0000              add [bx+si],al
00002097  0410              add al,0x10
00002099  104011            adc [bx+si+0x11],al
0000209C  0440              add al,0x40
0000209E  0440              add al,0x40
000020A0  0001              add [bx+di],al
000020A2  0000              add [bx+si],al
000020A4  0100              add [bx+si],ax
000020A6  0441              add al,0x41
000020A8  1101              adc [bx+di],ax
000020AA  0010              add [bx+si],dl
000020AC  40                inc ax
000020AD  1104              adc [si],ax
000020AF  1004              adc [si],al
000020B1  0000              add [bx+si],al
000020B3  004000            add [bx+si+0x0],al
000020B6  005000            add [bx+si+0x0],dl
000020B9  054501            add ax,0x145
000020BC  0001              add [bx+di],al
000020BE  005150            add [bx+di+0x50],dl
000020C1  0005              add [di],al
000020C3  1004              adc [si],al
000020C5  0101              add [bx+di],ax
000020C7  1000              adc [bx+si],al
000020C9  0000              add [bx+si],al
000020CB  104401            adc [si+0x1],al
000020CE  0404              add al,0x4
000020D0  004041            add [bx+si+0x41],al
000020D3  0000              add [bx+si],al
000020D5  40                inc ax
000020D6  0000              add [bx+si],al
000020D8  44                inc sp
000020D9  004110            add [bx+di+0x10],al
000020DC  1010              adc [bx+si],dl
000020DE  40                inc ax
000020DF  1004              adc [si],al
000020E1  0400              add al,0x0
000020E3  0004              add [si],al
000020E5  0010              add [bx+si],dl
000020E7  0100              add [bx+si],ax
000020E9  41                inc cx
000020EA  0000              add [bx+si],al
000020EC  40                inc ax
000020ED  C01112            rcl byte [bx+di],byte 0x12
000020F0  06                push es
000020F1  0000              add [bx+si],al
000020F3  014000            add [bx+si+0x0],ax
000020F6  0000              add [bx+si],al
000020F8  0001              add [bx+di],al
000020FA  40                inc ax
000020FB  0000              add [bx+si],al
000020FD  0000              add [bx+si],al
000020FF  014000            add [bx+si+0x0],ax
00002102  0000              add [bx+si],al
00002104  0001              add [bx+di],al
00002106  40                inc ax
00002107  0000              add [bx+si],al
00002109  0000              add [bx+si],al
0000210B  055000            add ax,0x50
0000210E  0000              add [bx+si],al
00002110  0015              add [di],dl
00002112  54                push sp
00002113  0000              add [bx+si],al
00002115  0000              add [bx+si],al
00002117  51                push cx
00002118  45                inc bp
00002119  0000              add [bx+si],al
0000211B  0001              add [bx+di],al
0000211D  51                push cx
0000211E  45                inc bp
0000211F  40                inc ax
00002120  0000              add [bx+si],al
00002122  151144            adc ax,0x4411
00002125  54                push sp
00002126  0000              add [bx+si],al
00002128  51                push cx
00002129  114445            adc [si+0x45],ax
0000212C  0005              add [di],al
0000212E  51                push cx
0000212F  114445            adc [si+0x45],ax
00002132  50                push ax
00002133  45                inc bp
00002134  54                push sp
00002135  55                push bp
00002136  55                push bp
00002137  155145            adc ax,0x4551
0000213A  55                push bp
0000213B  55                push bp
0000213C  55                push bp
0000213D  55                push bp
0000213E  51                push cx
0000213F  55                push bp
00002140  55                push bp
00002141  40                inc ax
00002142  015555            add [di+0x55],dx
00002145  40                inc ax
00002146  050000            add ax,0x0
00002149  50                push ax
0000214A  0100              add [bx+si],ax
0000214C  050000            add ax,0x0
0000214F  50                push ax
00002150  0000              add [bx+si],al
00002152  0000              add [bx+si],al
00002154  0000              add [bx+si],al
00002156  0000              add [bx+si],al
00002158  0000              add [bx+si],al
0000215A  0000              add [bx+si],al
0000215C  00EB              add bl,ch
0000215E  0F0D02            prefetch [bp+si]
00002161  054015            add ax,0x1540
00002164  50                push ax
00002165  55                push bp
00002166  54                push sp
00002167  54                push sp
00002168  54                push sp
00002169  50                push ax
0000216A  1450              adc al,0x50
0000216C  1450              adc al,0x50
0000216E  1450              adc al,0x50
00002170  1450              adc al,0x50
00002172  1454              adc al,0x54
00002174  54                push sp
00002175  55                push bp
00002176  54                push sp
00002177  155005            adc ax,0x550
0000217A  40                inc ax
0000217B  0910              or [bx+si],dx
0000217D  0D0205            or ax,0x502
00002180  40                inc ax
00002181  154055            adc ax,0x5540
00002184  40                inc ax
00002185  014001            add [bx+si+0x1],ax
00002188  40                inc ax
00002189  014001            add [bx+si+0x1],ax
0000218C  40                inc ax
0000218D  014001            add [bx+si+0x1],ax
00002190  40                inc ax
00002191  014001            add [bx+si+0x1],ax
00002194  40                inc ax
00002195  155455            adc ax,0x5554
00002198  54                push sp
00002199  27                daa
0000219A  100D              adc [di],cl
0000219C  0215              add dl,[di]
0000219E  50                push ax
0000219F  55                push bp
000021A0  54                push sp
000021A1  50                push ax
000021A2  1450              adc al,0x50
000021A4  1400              adc al,0x0
000021A6  1400              adc al,0x0
000021A8  1400              adc al,0x0
000021AA  54                push sp
000021AB  015005            add [bx+si+0x5],dx
000021AE  40                inc ax
000021AF  150054            adc ax,0x5400
000021B2  005554            add [di+0x54],dl
000021B5  55                push bp
000021B6  54                push sp
000021B7  45                inc bp
000021B8  100D              adc [di],cl
000021BA  0215              add dl,[di]
000021BC  50                push ax
000021BD  55                push bp
000021BE  54                push sp
000021BF  50                push ax
000021C0  1450              adc al,0x50
000021C2  1400              adc al,0x0
000021C4  1405              adc al,0x5
000021C6  54                push sp
000021C7  055400            add ax,0x54
000021CA  54                push sp
000021CB  0014              add [si],dl
000021CD  50                push ax
000021CE  1450              adc al,0x50
000021D0  1455              adc al,0x55
000021D2  54                push sp
000021D3  155463            adc ax,0x6354
000021D6  100D              adc [di],cl
000021D8  0200              add al,[bx+si]
000021DA  1400              adc al,0x0
000021DC  54                push sp
000021DD  015405            add [si+0x5],dx
000021E0  54                push sp
000021E1  151454            adc ax,0x5414
000021E4  1455              adc al,0x55
000021E6  54                push sp
000021E7  55                push bp
000021E8  54                push sp
000021E9  0014              add [si],dl
000021EB  0014              add [si],dl
000021ED  0014              add [si],dl
000021EF  0014              add [si],dl
000021F1  0014              add [si],dl
000021F3  81100D02          adc word [bx+si],0x20d
000021F7  55                push bp
000021F8  54                push sp
000021F9  55                push bp
000021FA  54                push sp
000021FB  50                push ax
000021FC  005000            add [bx+si+0x0],dl
000021FF  50                push ax
00002200  005550            add [di+0x50],dl
00002203  55                push bp
00002204  54                push sp
00002205  0014              add [si],dl
00002207  0014              add [si],dl
00002209  50                push ax
0000220A  1450              adc al,0x50
0000220C  1455              adc al,0x55
0000220E  54                push sp
0000220F  15549F            adc ax,0x9f54
00002212  100D              adc [di],cl
00002214  0215              add dl,[di]
00002216  50                push ax
00002217  55                push bp
00002218  54                push sp
00002219  50                push ax
0000221A  1450              adc al,0x50
0000221C  1450              adc al,0x50
0000221E  005550            add [di+0x50],dl
00002221  55                push bp
00002222  54                push sp
00002223  50                push ax
00002224  1450              adc al,0x50
00002226  1450              adc al,0x50
00002228  1450              adc al,0x50
0000222A  1455              adc al,0x55
0000222C  54                push sp
0000222D  1550BD            adc ax,0xbd50
00002230  100D              adc [di],cl
00002232  025554            add dl,[di+0x54]
00002235  55                push bp
00002236  54                push sp
00002237  50                push ax
00002238  1450              adc al,0x50
0000223A  1400              adc al,0x0
0000223C  54                push sp
0000223D  005001            add [bx+si+0x1],dl
00002240  50                push ax
00002241  014005            add [bx+si+0x5],ax
00002244  40                inc ax
00002245  050015            add ax,0x1500
00002248  0014              add [si],dl
0000224A  0014              add [si],dl
0000224C  00DB              add bl,bl
0000224E  100D              adc [di],cl
00002250  0215              add dl,[di]
00002252  50                push ax
00002253  55                push bp
00002254  54                push sp
00002255  50                push ax
00002256  1450              adc al,0x50
00002258  1450              adc al,0x50
0000225A  1415              adc al,0x15
0000225C  50                push ax
0000225D  054055            add ax,0x5540
00002260  54                push sp
00002261  50                push ax
00002262  1450              adc al,0x50
00002264  1450              adc al,0x50
00002266  1455              adc al,0x55
00002268  54                push sp
00002269  1550CD            adc ax,0xcd50
0000226C  0F0D02            prefetch [bp+si]
0000226F  155055            adc ax,0x5550
00002272  54                push sp
00002273  50                push ax
00002274  1450              adc al,0x50
00002276  1450              adc al,0x50
00002278  1455              adc al,0x55
0000227A  54                push sp
0000227B  55                push bp
0000227C  54                push sp
0000227D  155400            adc ax,0x54
00002280  1450              adc al,0x50
00002282  1450              adc al,0x50
00002284  1455              adc al,0x55
00002286  54                push sp
00002287  1550CD            adc ax,0xcd50
0000228A  0FEB0F            por mm1,[bx]
0000228D  0910              or [bx+si],dx
0000228F  27                daa
00002290  104510            adc [di+0x10],al
00002293  6310              arpl [bx+si],dx
00002295  81109F10          adc word [bx+si],0x109f
00002299  BD10DB            mov bp,0xdb10
0000229C  10DC              adc ah,bl
0000229E  0D0D06            or ax,0x60d
000022A1  0000              add [bx+si],al
000022A3  055000            add ax,0x50
000022A6  0000              add [bx+si],al
000022A8  0010              add [bx+si],dl
000022AA  0400              add al,0x0
000022AC  0000              add [bx+si],al
000022AE  004001            add [bx+si+0x1],al
000022B1  0000              add [bx+si],al
000022B3  0001              add [bx+di],al
000022B5  0000              add [bx+si],al
000022B7  40                inc ax
000022B8  0000              add [bx+si],al
000022BA  0400              add al,0x0
000022BC  0010              add [bx+si],dl
000022BE  0005              add [di],al
000022C0  54                push sp
000022C1  44                inc sp
000022C2  1115              adc [di],dx
000022C4  50                push ax
000022C5  44                inc sp
000022C6  44                inc sp
000022C7  44                inc sp
000022C8  44                inc sp
000022C9  44                inc sp
000022CA  44                inc sp
000022CB  005010            add [bx+si+0x10],dl
000022CE  1401              adc al,0x1
000022D0  0000              add [bx+si],al
000022D2  51                push cx
000022D3  51                push cx
000022D4  44                inc sp
000022D5  51                push cx
000022D6  0000              add [bx+si],al
000022D8  51                push cx
000022D9  51                push cx
000022DA  44                inc sp
000022DB  0100              add [bx+si],ax
000022DD  005151            add [bx+di+0x51],dl
000022E0  44                inc sp
000022E1  55                push bp
000022E2  0000              add [bx+si],al
000022E4  1010              adc [bx+si],dl
000022E6  1454              adc al,0x54
000022E8  0000              add [bx+si],al
000022EA  055555            add ax,0x5555
000022ED  50                push ax
000022EE  0034              add [si],dh
000022F0  0E                push cs
000022F1  0A060000          or al,[0x0]
000022F5  0100              add [bx+si],ax
000022F7  0000              add [bx+si],al
000022F9  0000              add [bx+si],al
000022FB  0000              add [bx+si],al
000022FD  0000              add [bx+si],al
000022FF  0000              add [bx+si],al
00002301  054000            add ax,0x40
00002304  0000              add [bx+si],al
00002306  0015              add [di],dl
00002308  50                push ax
00002309  0000              add [bx+si],al
0000230B  0001              add [bx+di],al
0000230D  40                inc ax
0000230E  40                inc ax
0000230F  0000              add [bx+si],al
00002311  015544            add [di+0x44],dx
00002314  44                inc sp
00002315  54                push sp
00002316  50                push ax
00002317  55                push bp
00002318  55                push bp
00002319  55                push bp
0000231A  55                push bp
0000231B  55                push bp
0000231C  54                push sp
0000231D  155555            adc ax,0x5555
00002320  55                push bp
00002321  55                push bp
00002322  50                push ax
00002323  0001              add [bx+di],al
00002325  55                push bp
00002326  55                push bp
00002327  0000              add [bx+si],al
00002329  0001              add [bx+di],al
0000232B  1111              adc [bx+di],dx
0000232D  0000              add [bx+si],al
0000232F  740E              jz 0x233f
00002331  06                push es
00002332  0200              add al,[bx+si]
00002334  40                inc ax
00002335  004001            add [bx+si+0x1],al
00002338  50                push ax
00002339  004000            add [bx+si+0x0],al
0000233C  40                inc ax
0000233D  004084            add [bx+si-0x7c],al
00002340  0E                push cs
00002341  0D0110            or ax,0x1001
00002344  1010              adc [bx+si],dl
00002346  1010              adc [bx+si],dl
00002348  1010              adc [bx+si],dl
0000234A  105444            adc [si+0x44],dl
0000234D  3030              xor [bx+si],dh
0000234F  305D0F            xor [di+0xf],bl
00002352  12060000          adc al,[0x0]
00002356  014000            add [bx+si+0x0],ax
00002359  0000              add [bx+si],al
0000235B  0001              add [bx+di],al
0000235D  40                inc ax
0000235E  0000              add [bx+si],al
00002360  0000              add [bx+si],al
00002362  014000            add [bx+si+0x0],ax
00002365  0000              add [bx+si],al
00002367  0001              add [bx+di],al
00002369  40                inc ax
0000236A  0000              add [bx+si],al
0000236C  0000              add [bx+si],al
0000236E  055000            add ax,0x50
00002371  0000              add [bx+si],al
00002373  0015              add [di],dl
00002375  54                push sp
00002376  0000              add [bx+si],al
00002378  0000              add [bx+si],al
0000237A  51                push cx
0000237B  45                inc bp
0000237C  0000              add [bx+si],al
0000237E  0001              add [bx+di],al
00002380  51                push cx
00002381  45                inc bp
00002382  40                inc ax
00002383  0000              add [bx+si],al
00002385  151144            adc ax,0x4411
00002388  54                push sp
00002389  0000              add [bx+si],al
0000238B  51                push cx
0000238C  114445            adc [si+0x45],ax
0000238F  0005              add [di],al
00002391  51                push cx
00002392  114445            adc [si+0x45],ax
00002395  50                push ax
00002396  45                inc bp
00002397  54                push sp
00002398  55                push bp
00002399  55                push bp
0000239A  155145            adc ax,0x4551
0000239D  55                push bp
0000239E  55                push bp
0000239F  55                push bp
000023A0  55                push bp
000023A1  51                push cx
000023A2  55                push bp
000023A3  55                push bp
000023A4  40                inc ax
000023A5  015555            add [di+0x55],dx
000023A8  0005              add [di],al
000023AA  0000              add [bx+si],al
000023AC  50                push ax
000023AD  0000              add [bx+si],al
000023AF  0000              add [bx+si],al
000023B1  0000              add [bx+si],al
000023B3  0000              add [bx+si],al
000023B5  0F0000            sldt [bx+si]
000023B8  F00000            lock add [bx+si],al
000023BB  0F0000            sldt [bx+si]
000023BE  F00000            lock add [bx+si],al
000023C1  0000              add [bx+si],al
000023C3  0000              add [bx+si],al
000023C5  0000              add [bx+si],al
000023C7  0000              add [bx+si],al
000023C9  0000              add [bx+si],al
000023CB  0000              add [bx+si],al
000023CD  0000              add [bx+si],al
000023CF  0000              add [bx+si],al
000023D1  0000              add [bx+si],al
000023D3  0000              add [bx+si],al
000023D5  0000              add [bx+si],al
000023D7  0000              add [bx+si],al
000023D9  0000              add [bx+si],al
000023DB  0000              add [bx+si],al
000023DD  0000              add [bx+si],al
000023DF  0000              add [bx+si],al
000023E1  0000              add [bx+si],al
000023E3  0000              add [bx+si],al
000023E5  0000              add [bx+si],al
000023E7  0000              add [bx+si],al
000023E9  0000              add [bx+si],al
000023EB  0000              add [bx+si],al
000023ED  0000              add [bx+si],al
000023EF  0000              add [bx+si],al
000023F1  0000              add [bx+si],al
000023F3  0000              add [bx+si],al
000023F5  0000              add [bx+si],al
000023F7  0000              add [bx+si],al
000023F9  0000              add [bx+si],al
000023FB  0000              add [bx+si],al
000023FD  0000              add [bx+si],al
000023FF  0000              add [bx+si],al
00002401  0000              add [bx+si],al
00002403  0000              add [bx+si],al
00002405  0000              add [bx+si],al
00002407  0000              add [bx+si],al
00002409  0000              add [bx+si],al
0000240B  0000              add [bx+si],al
0000240D  0000              add [bx+si],al
0000240F  0000              add [bx+si],al
00002411  0000              add [bx+si],al
00002413  0000              add [bx+si],al
00002415  0000              add [bx+si],al
00002417  0000              add [bx+si],al
00002419  0000              add [bx+si],al
0000241B  0000              add [bx+si],al
0000241D  0000              add [bx+si],al
0000241F  0000              add [bx+si],al
00002421  0000              add [bx+si],al
00002423  0000              add [bx+si],al
00002425  0000              add [bx+si],al
00002427  0000              add [bx+si],al
00002429  0000              add [bx+si],al
0000242B  0000              add [bx+si],al
0000242D  0000              add [bx+si],al
0000242F  0000              add [bx+si],al
00002431  0000              add [bx+si],al
00002433  0000              add [bx+si],al
00002435  0000              add [bx+si],al
00002437  0000              add [bx+si],al
00002439  0000              add [bx+si],al
0000243B  0000              add [bx+si],al
0000243D  0000              add [bx+si],al
0000243F  0000              add [bx+si],al
00002441  0000              add [bx+si],al
00002443  0000              add [bx+si],al
00002445  0000              add [bx+si],al
00002447  0000              add [bx+si],al
00002449  0000              add [bx+si],al
0000244B  0000              add [bx+si],al
0000244D  0000              add [bx+si],al
0000244F  0000              add [bx+si],al
00002451  0000              add [bx+si],al
00002453  0000              add [bx+si],al
00002455  0000              add [bx+si],al
00002457  0000              add [bx+si],al
00002459  0000              add [bx+si],al
0000245B  0000              add [bx+si],al
0000245D  0000              add [bx+si],al
0000245F  0000              add [bx+si],al
00002461  0000              add [bx+si],al
00002463  0000              add [bx+si],al
00002465  0000              add [bx+si],al
00002467  0000              add [bx+si],al
00002469  0000              add [bx+si],al
0000246B  0000              add [bx+si],al
0000246D  0000              add [bx+si],al
0000246F  0000              add [bx+si],al
00002471  0000              add [bx+si],al
00002473  0000              add [bx+si],al
00002475  0000              add [bx+si],al
00002477  0000              add [bx+si],al
00002479  0000              add [bx+si],al
0000247B  0000              add [bx+si],al
0000247D  0000              add [bx+si],al
0000247F  0000              add [bx+si],al
00002481  0000              add [bx+si],al
00002483  0000              add [bx+si],al
00002485  0000              add [bx+si],al
00002487  0000              add [bx+si],al
00002489  0000              add [bx+si],al
0000248B  0000              add [bx+si],al
0000248D  0000              add [bx+si],al
0000248F  0000              add [bx+si],al
00002491  0000              add [bx+si],al
00002493  0000              add [bx+si],al
00002495  0000              add [bx+si],al
00002497  0000              add [bx+si],al
00002499  0000              add [bx+si],al
0000249B  0000              add [bx+si],al
0000249D  0000              add [bx+si],al
0000249F  0000              add [bx+si],al
000024A1  0000              add [bx+si],al
000024A3  0000              add [bx+si],al
000024A5  0000              add [bx+si],al
000024A7  0000              add [bx+si],al
000024A9  0000              add [bx+si],al
000024AB  0000              add [bx+si],al
000024AD  0000              add [bx+si],al
000024AF  0000              add [bx+si],al
000024B1  0000              add [bx+si],al
000024B3  0000              add [bx+si],al
000024B5  0000              add [bx+si],al
000024B7  0000              add [bx+si],al
000024B9  0000              add [bx+si],al
000024BB  0000              add [bx+si],al
000024BD  0000              add [bx+si],al
000024BF  0000              add [bx+si],al
000024C1  0000              add [bx+si],al
000024C3  0000              add [bx+si],al
000024C5  0000              add [bx+si],al
000024C7  0000              add [bx+si],al
000024C9  0000              add [bx+si],al
000024CB  0000              add [bx+si],al
000024CD  0000              add [bx+si],al
000024CF  0000              add [bx+si],al
000024D1  0000              add [bx+si],al
000024D3  0000              add [bx+si],al
000024D5  0000              add [bx+si],al
000024D7  0000              add [bx+si],al
000024D9  0000              add [bx+si],al
000024DB  0000              add [bx+si],al
000024DD  0000              add [bx+si],al
000024DF  0000              add [bx+si],al
000024E1  0000              add [bx+si],al
000024E3  0000              add [bx+si],al
000024E5  0000              add [bx+si],al
000024E7  0000              add [bx+si],al
000024E9  0000              add [bx+si],al
000024EB  0000              add [bx+si],al
000024ED  0000              add [bx+si],al
000024EF  0000              add [bx+si],al
000024F1  0000              add [bx+si],al
000024F3  0000              add [bx+si],al
000024F5  0000              add [bx+si],al
000024F7  0000              add [bx+si],al
000024F9  0000              add [bx+si],al
000024FB  0000              add [bx+si],al
000024FD  0000              add [bx+si],al
000024FF  00                db 0x00
