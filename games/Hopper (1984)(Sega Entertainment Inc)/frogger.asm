00000100  4D                dec bp
00000101  5A                pop dx
00000102  EF                out dx,ax
00000103  004A00            add [bp+si+0x0],cl
00000106  1203              adc al,[bp+di]
00000108  E000              loopne 0x10a
0000010A  0000              add [bx+si],al
0000010C  FF                db 0xff
0000010D  FFF2              push dx
0000010F  0800              or [bx+si],al
00000111  02162B1A          add dl,[0x1a2b]
00000115  0000              add [bx+si],al
00000117  001C              add [si],bl
00000119  0000              add [bx+si],al
0000011B  0004              add [si],al
0000011D  0000              add [bx+si],al
0000011F  00060000          add [0x0],al
00000123  0008              add [bx+si],cl
00000125  0000              add [bx+si],al
00000127  001D              add [di],bl
00000129  0000              add [bx+si],al
0000012B  0029              add [bx+di],ch
0000012D  0000              add [bx+si],al
0000012F  0033              add [bp+di],dh
00000131  0000              add [bx+si],al
00000133  003A              add [bp+si],bh
00000135  0000              add [bx+si],al
00000137  004200            add [bp+si+0x0],al
0000013A  0000              add [bx+si],al
0000013C  4D                dec bp
0000013D  0000              add [bx+si],al
0000013F  005500            add [di+0x0],dl
00000142  0000              add [bx+si],al
00000144  60                pushaw
00000145  0000              add [bx+si],al
00000147  006800            add [bx+si+0x0],ch
0000014A  0000              add [bx+si],al
0000014C  7300              jnc 0x14e
0000014E  0000              add [bx+si],al
00000150  82                db 0x82
00000151  0000              add [bx+si],al
00000153  009C0000          add [si+0x0],bl
00000157  00A30000          add [bp+di+0x0],ah
0000015B  00AD0000          add [di+0x0],ch
0000015F  00C2              add dl,al
00000161  0000              add [bx+si],al
00000163  00CA              add dl,cl
00000165  0000              add [bx+si],al
00000167  00D2              add dl,dl
00000169  0000              add [bx+si],al
0000016B  00DD              add ch,bl
0000016D  0000              add [bx+si],al
0000016F  00E7              add bh,ah
00000171  0000              add [bx+si],al
00000173  00EF              add bh,ch
00000175  0000              add [bx+si],al
00000177  00F7              add bh,dh
00000179  0000              add [bx+si],al
0000017B  00FF              add bh,bh
0000017D  0000              add [bx+si],al
0000017F  0004              add [si],al
00000181  0100              add [bx+si],ax
00000183  000C              add [si],cl
00000185  0100              add [bx+si],ax
00000187  001E0100          add [0x1],bl
0000018B  00260100          add [0x1],ah
0000018F  0031              add [bx+di],dh
00000191  0100              add [bx+si],ax
00000193  003E0100          add [0x1],bh
00000197  004601            add [bp+0x1],al
0000019A  0000              add [bx+si],al
0000019C  4B                dec bx
0000019D  0100              add [bx+si],ax
0000019F  005301            add [bp+di+0x1],dl
000001A2  0000              add [bx+si],al
000001A4  5B                pop bx
000001A5  0100              add [bx+si],ax
000001A7  006301            add [bp+di+0x1],ah
000001AA  0000              add [bx+si],al
000001AC  680100            push word 0x1
000001AF  007001            add [bx+si+0x1],dh
000001B2  0000              add [bx+si],al
000001B4  7501              jnz 0x1b7
000001B6  0000              add [bx+si],al
000001B8  800100            add byte [bx+di],0x0
000001BB  00880100          add [bx+si+0x1],cl
000001BF  008D0100          add [di+0x1],cl
000001C3  00950100          add [di+0x1],dl
000001C7  009D0100          add [di+0x1],bl
000001CB  00A40100          add [si+0x1],ah
000001CF  00A90100          add [bx+di+0x1],ch
000001D3  00B10100          add [bx+di+0x1],dh
000001D7  00D8              add al,bl
000001D9  0100              add [bx+si],ax
000001DB  00DD              add ch,bl
000001DD  0100              add [bx+si],ax
000001DF  00E2              add dl,ah
000001E1  0100              add [bx+si],ax
000001E3  00E7              add bh,ah
000001E5  0100              add [bx+si],ax
000001E7  00EF              add bh,ch
000001E9  0100              add [bx+si],ax
000001EB  00F7              add bh,dh
000001ED  0100              add [bx+si],ax
000001EF  0002              add [bp+si],al
000001F1  0200              add al,[bx+si]
000001F3  000D              add [di],cl
000001F5  0200              add al,[bx+si]
000001F7  0018              add [bx+si],bl
000001F9  0200              add al,[bx+si]
000001FB  0023              add [bp+di],ah
000001FD  0200              add al,[bx+si]
000001FF  002E0200          add [0x2],ch
00000203  0039              add [bx+di],bh
00000205  0200              add al,[bx+si]
00000207  003E0200          add [0x2],bh
0000020B  007502            add [di+0x2],dh
0000020E  0000              add [bx+si],al
00000210  7D02              jnl 0x214
00000212  0000              add [bx+si],al
00000214  8502              test [bp+si],ax
00000216  0000              add [bx+si],al
00000218  8D02              lea ax,[bp+si]
0000021A  0000              add [bx+si],al
0000021C  94                xchg ax,sp
0000021D  0200              add al,[bx+si]
0000021F  00A60200          add [bp+0x2],ah
00000223  00C8              add al,cl
00000225  0200              add al,[bx+si]
00000227  00CE              add dh,cl
00000229  0200              add al,[bx+si]
0000022B  00D3              add bl,dl
0000022D  0200              add al,[bx+si]
0000022F  00DC              add ah,bl
00000231  0200              add al,[bx+si]
00000233  00E6              add dh,ah
00000235  0200              add al,[bx+si]
00000237  00ED              add ch,ch
00000239  0200              add al,[bx+si]
0000023B  00F5              add ch,dh
0000023D  0200              add al,[bx+si]
0000023F  00FA              add dl,bh
00000241  0200              add al,[bx+si]
00000243  0002              add [bp+si],al
00000245  0300              add ax,[bx+si]
00000247  000D              add [di],cl
00000249  0300              add ax,[bx+si]
0000024B  0015              add [di],dl
0000024D  0300              add ax,[bx+si]
0000024F  001F              add [bx],bl
00000251  0300              add ax,[bx+si]
00000253  0033              add [bp+di],dh
00000255  0300              add ax,[bx+si]
00000257  003B              add [bp+di],bh
00000259  0300              add ax,[bx+si]
0000025B  004603            add [bp+0x3],al
0000025E  0000              add [bx+si],al
00000260  53                push bx
00000261  0300              add ax,[bx+si]
00000263  005B03            add [bp+di+0x3],bl
00000266  0000              add [bx+si],al
00000268  60                pushaw
00000269  0300              add ax,[bx+si]
0000026B  006503            add [di+0x3],ah
0000026E  0000              add [bx+si],al
00000270  6F                outsw
00000271  0300              add ax,[bx+si]
00000273  007403            add [si+0x3],dh
00000276  0000              add [bx+si],al
00000278  7A03              jpe 0x27d
0000027A  0000              add [bx+si],al
0000027C  82                db 0x82
0000027D  0300              add ax,[bx+si]
0000027F  00870300          add [bx+0x3],al
00000283  008D0300          add [di+0x3],cl
00000287  00920300          add [bp+si+0x3],dl
0000028B  00990300          add [bx+di+0x3],bl
0000028F  00A10300          add [bx+di+0x3],ah
00000293  00A80300          add [bx+si+0x3],ch
00000297  00AF0300          add [bx+0x3],ch
0000029B  00B60300          add [bp+0x3],dh
0000029F  00BD0300          add [di+0x3],bh
000002A3  00C2              add dl,al
000002A5  0300              add ax,[bx+si]
000002A7  00CA              add dl,cl
000002A9  0300              add ax,[bx+si]
000002AB  00CF              add bh,cl
000002AD  0300              add ax,[bx+si]
000002AF  00D7              add bh,dl
000002B1  0300              add ax,[bx+si]
000002B3  00E2              add dl,ah
000002B5  0300              add ax,[bx+si]
000002B7  00ED              add ch,ch
000002B9  0300              add ax,[bx+si]
000002BB  00F5              add ch,dh
000002BD  0300              add ax,[bx+si]
000002BF  0001              add [bx+di],al
000002C1  0400              add al,0x0
000002C3  000C              add [si],cl
000002C5  0400              add al,0x0
000002C7  001A              add [bp+si],bl
000002C9  0400              add al,0x0
000002CB  002A              add [bp+si],ch
000002CD  0400              add al,0x0
000002CF  003A              add [bp+si],bh
000002D1  0400              add al,0x0
000002D3  005104            add [bx+di+0x4],dl
000002D6  0000              add [bx+si],al
000002D8  5F                pop di
000002D9  0400              add al,0x0
000002DB  007904            add [bx+di+0x4],bh
000002DE  0000              add [bx+si],al
000002E0  7E04              jng 0x2e6
000002E2  0000              add [bx+si],al
000002E4  830400            add word [si],byte +0x0
000002E7  008B0400          add [bp+di+0x4],cl
000002EB  00960400          add [bp+0x4],dl
000002EF  00A10400          add [bx+di+0x4],ah
000002F3  00A90400          add [bx+di+0x4],ch
000002F7  00B10400          add [bx+di+0x4],dh
000002FB  00B60400          add [bp+0x4],dh
000002FF  00BE0400          add [bp+0x4],bh
00000303  00C3              add bl,al
00000305  0400              add al,0x0
00000307  00CB              add bl,cl
00000309  0400              add al,0x0
0000030B  00D0              add al,dl
0000030D  0400              add al,0x0
0000030F  00D8              add al,bl
00000311  0400              add al,0x0
00000313  00DD              add ch,bl
00000315  0400              add al,0x0
00000317  00E5              add ch,ah
00000319  0400              add al,0x0
0000031B  00F0              add al,dh
0000031D  0400              add al,0x0
0000031F  00FB              add bl,bh
00000321  0400              add al,0x0
00000323  00060500          add [0x5],al
00000327  0011              add [bx+di],dl
00000329  050000            add ax,0x0
0000032C  1C05              sbb al,0x5
0000032E  0000              add [bx+si],al
00000330  27                daa
00000331  050000            add ax,0x0
00000334  3205              xor al,[di]
00000336  0000              add [bx+si],al
00000338  3D0500            cmp ax,0x5
0000033B  004805            add [bx+si+0x5],cl
0000033E  0000              add [bx+si],al
00000340  53                push bx
00000341  050000            add ax,0x0
00000344  5E                pop si
00000345  050000            add ax,0x0
00000348  660500007305      add eax,0x5730000
0000034E  0000              add [bx+si],al
00000350  7805              js 0x357
00000352  0000              add [bx+si],al
00000354  7F05              jg 0x35b
00000356  0000              add [bx+si],al
00000358  8C05              mov [di],es
0000035A  0000              add [bx+si],al
0000035C  97                xchg ax,di
0000035D  050000            add ax,0x0
00000360  9F                lahf
00000361  050000            add ax,0x0
00000364  B005              mov al,0x5
00000366  0000              add [bx+si],al
00000368  B505              mov ch,0x5
0000036A  0000              add [bx+si],al
0000036C  BF0500            mov di,0x5
0000036F  00CC              add ah,cl
00000371  050000            add ax,0x0
00000374  D405              aam 0x5
00000376  0000              add [bx+si],al
00000378  DC05              fadd qword [di]
0000037A  0000              add [bx+si],al
0000037C  E90500            jmp word 0x384
0000037F  00F4              add ah,dh
00000381  050000            add ax,0x0
00000384  FB                sti
00000385  050000            add ax,0x0
00000388  03060000          add ax,[0x0]
0000038C  0E                push cs
0000038D  06                push es
0000038E  0000              add [bx+si],al
00000390  19060000          sbb [0x0],ax
00000394  1E                push ds
00000395  06                push es
00000396  0000              add [bx+si],al
00000398  2606              es push es
0000039A  0000              add [bx+si],al
0000039C  2B060000          sub ax,[0x0]
000003A0  33060000          xor ax,[0x0]
000003A4  3B060000          cmp ax,[0x0]
000003A8  46                inc si
000003A9  06                push es
000003AA  0000              add [bx+si],al
000003AC  4E                dec si
000003AD  06                push es
000003AE  0000              add [bx+si],al
000003B0  56                push si
000003B1  06                push es
000003B2  0000              add [bx+si],al
000003B4  5C                pop sp
000003B5  06                push es
000003B6  0000              add [bx+si],al
000003B8  6606              o32 push es
000003BA  0000              add [bx+si],al
000003BC  6B06000073        imul ax,[0x0],byte +0x73
000003C1  06                push es
000003C2  0000              add [bx+si],al
000003C4  7B06              jpo 0x3cc
000003C6  0000              add [bx+si],al
000003C8  830600008B        add word [0x0],byte -0x75
000003CD  06                push es
000003CE  0000              add [bx+si],al
000003D0  91                xchg ax,cx
000003D1  06                push es
000003D2  0000              add [bx+si],al
000003D4  9B06              wait push es
000003D6  0000              add [bx+si],al
000003D8  A30600            mov [0x6],ax
000003DB  00B10600          add [bx+di+0x6],dh
000003DF  00CB              add bl,cl
000003E1  06                push es
000003E2  0000              add [bx+si],al
000003E4  D6                salc
000003E5  06                push es
000003E6  0000              add [bx+si],al
000003E8  E606              out 0x6,al
000003EA  0000              add [bx+si],al
000003EC  F1                int1
000003ED  06                push es
000003EE  0000              add [bx+si],al
000003F0  FF060000          inc word [0x0]
000003F4  1907              sbb [bx],ax
000003F6  0000              add [bx+si],al
000003F8  27                daa
000003F9  07                pop es
000003FA  0000              add [bx+si],al
000003FC  2E07              cs pop es
000003FE  0000              add [bx+si],al
00000400  3907              cmp [bx],ax
00000402  0000              add [bx+si],al
00000404  44                inc sp
00000405  07                pop es
00000406  0000              add [bx+si],al
00000408  49                dec cx
00000409  07                pop es
0000040A  0000              add [bx+si],al
0000040C  52                push dx
0000040D  07                pop es
0000040E  0000              add [bx+si],al
00000410  60                pushaw
00000411  07                pop es
00000412  0000              add [bx+si],al
00000414  6507              gs pop es
00000416  0000              add [bx+si],al
00000418  7107              jno 0x421
0000041A  0000              add [bx+si],al
0000041C  7F07              jg 0x425
0000041E  0000              add [bx+si],al
00000420  8A07              mov al,[bx]
00000422  0000              add [bx+si],al
00000424  98                cbw
00000425  07                pop es
00000426  0000              add [bx+si],al
00000428  A20700            mov [0x7],al
0000042B  00B00700          add [bx+si+0x7],dh
0000042F  00BA0700          add [bp+si+0x7],bh
00000433  00C8              add al,cl
00000435  07                pop es
00000436  0000              add [bx+si],al
00000438  D307              rol word [bx],cl
0000043A  0000              add [bx+si],al
0000043C  DE07              fiadd word [bx]
0000043E  0000              add [bx+si],al
00000440  E90700            jmp word 0x44a
00000443  00F4              add ah,dh
00000445  07                pop es
00000446  0000              add [bx+si],al
00000448  FC                cld
00000449  07                pop es
0000044A  0000              add [bx+si],al
0000044C  0108              add [bx+si],cx
0000044E  0000              add [bx+si],al
00000450  0908              or [bx+si],cx
00000452  0000              add [bx+si],al
00000454  1108              adc [bx+si],cx
00000456  0000              add [bx+si],al
00000458  1908              sbb [bx+si],cx
0000045A  0000              add [bx+si],al
0000045C  2108              and [bx+si],cx
0000045E  0000              add [bx+si],al
00000460  2908              sub [bx+si],cx
00000462  0000              add [bx+si],al
00000464  37                aaa
00000465  0800              or [bx+si],al
00000467  003F              add [bx],bh
00000469  0800              or [bx+si],al
0000046B  004408            add [si+0x8],al
0000046E  0000              add [bx+si],al
00000470  51                push cx
00000471  0800              or [bx+si],al
00000473  005908            add [bx+di+0x8],bl
00000476  0000              add [bx+si],al
00000478  640800            or [fs:bx+si],al
0000047B  006C08            add [si+0x8],ch
0000047E  0000              add [bx+si],al
00000480  7708              ja 0x48a
00000482  0000              add [bx+si],al
00000484  8408              test [bx+si],cl
00000486  0000              add [bx+si],al
00000488  8C08              mov [bx+si],cs
0000048A  0000              add [bx+si],al
0000048C  97                xchg ax,di
0000048D  0800              or [bx+si],al
0000048F  009F0800          add [bx+0x8],bl
00000493  00AA0800          add [bp+si+0x8],ch
00000497  00B80800          add [bx+si+0x8],bh
0000049B  00BD0800          add [di+0x8],bh
0000049F  00CA              add dl,cl
000004A1  0800              or [bx+si],al
000004A3  00D1              add cl,dl
000004A5  0800              or [bx+si],al
000004A7  00DC              add ah,bl
000004A9  0800              or [bx+si],al
000004AB  00E4              add ah,ah
000004AD  0800              or [bx+si],al
000004AF  00EF              add bh,ch
000004B1  0800              or [bx+si],al
000004B3  00FC              add ah,bh
000004B5  0800              or [bx+si],al
000004B7  0001              add [bx+di],al
000004B9  0900              or [bx+si],ax
000004BB  000E0900          add [0x9],cl
000004BF  0019              add [bx+di],bl
000004C1  0900              or [bx+si],ax
000004C3  0020              add [bx+si],ah
000004C5  0900              or [bx+si],ax
000004C7  002A              add [bp+si],ch
000004C9  0900              or [bx+si],ax
000004CB  0031              add [bx+di],dh
000004CD  0900              or [bx+si],ax
000004CF  00360900          add [0x9],dh
000004D3  004309            add [bp+di+0x9],al
000004D6  0000              add [bx+si],al
000004D8  4B                dec bx
000004D9  0900              or [bx+si],ax
000004DB  005609            add [bp+0x9],dl
000004DE  0000              add [bx+si],al
000004E0  660900            or [bx+si],eax
000004E3  007109            add [bx+di+0x9],dh
000004E6  0000              add [bx+si],al
000004E8  7F09              jg 0x4f3
000004EA  0000              add [bx+si],al
000004EC  92                xchg ax,dx
000004ED  0900              or [bx+si],ax
000004EF  009A0900          add [bp+si+0x9],bl
000004F3  00A50900          add [di+0x9],ah
000004F7  00B00900          add [bx+si+0x9],dh
000004FB  00B90900          add [bx+di+0x9],bh
000004FF  00C0              add al,al
00000501  0900              or [bx+si],ax
00000503  00C8              add al,cl
00000505  0900              or [bx+si],ax
00000507  00D0              add al,dl
00000509  0900              or [bx+si],ax
0000050B  00DE              add dh,bl
0000050D  0900              or [bx+si],ax
0000050F  00EC              add ah,ch
00000511  0900              or [bx+si],ax
00000513  00FC              add ah,bh
00000515  0900              or [bx+si],ax
00000517  00160A00          add [0xa],dl
0000051B  001E0A00          add [0xa],bl
0000051F  00260A00          add [0xa],ah
00000523  002E0A00          add [0xa],ch
00000527  00360A00          add [0xa],dh
0000052B  003B              add [bp+di],bh
0000052D  0A00              or al,[bx+si]
0000052F  00440A            add [si+0xa],al
00000532  0000              add [bx+si],al
00000534  4F                dec di
00000535  0A00              or al,[bx+si]
00000537  00630A            add [bp+di+0xa],ah
0000053A  0000              add [bx+si],al
0000053C  6B0A00            imul cx,[bp+si],byte +0x0
0000053F  00760A            add [bp+0xa],dh
00000542  0000              add [bx+si],al
00000544  7E0A              jng 0x550
00000546  0000              add [bx+si],al
00000548  860A              xchg cl,[bp+si]
0000054A  0000              add [bx+si],al
0000054C  8E0A              mov cs,[bp+si]
0000054E  0000              add [bx+si],al
00000550  99                cwd
00000551  0A00              or al,[bx+si]
00000553  00A10A00          add [bx+di+0xa],ah
00000557  00AC0A00          add [si+0xa],ch
0000055B  00B60A00          add [bp+0xa],dh
0000055F  00BE0A00          add [bp+0xa],bh
00000563  00C6              add dh,al
00000565  0A00              or al,[bx+si]
00000567  00D1              add cl,dl
00000569  0A00              or al,[bx+si]
0000056B  00D6              add dh,dl
0000056D  0A00              or al,[bx+si]
0000056F  00E1              add cl,ah
00000571  0A00              or al,[bx+si]
00000573  00E8              add al,ch
00000575  0A00              or al,[bx+si]
00000577  00F2              add dl,dh
00000579  0A00              or al,[bx+si]
0000057B  00FA              add dl,bh
0000057D  0A00              or al,[bx+si]
0000057F  0005              add [di],al
00000581  0B00              or ax,[bx+si]
00000583  000D              add [di],cl
00000585  0B00              or ax,[bx+si]
00000587  0015              add [di],dl
00000589  0B00              or ax,[bx+si]
0000058B  0025              add [di],ah
0000058D  0B00              or ax,[bx+si]
0000058F  0038              add [bx+si],bh
00000591  0B00              or ax,[bx+si]
00000593  004B0B            add [bp+di+0xb],cl
00000596  0000              add [bx+si],al
00000598  53                push bx
00000599  0B00              or ax,[bx+si]
0000059B  005B0B            add [bp+di+0xb],bl
0000059E  0000              add [bx+si],al
000005A0  630B              arpl [bp+di],cx
000005A2  0000              add [bx+si],al
000005A4  6B0B00            imul cx,[bp+di],byte +0x0
000005A7  00700B            add [bx+si+0xb],dh
000005AA  0000              add [bx+si],al
000005AC  790B              jns 0x5b9
000005AE  0000              add [bx+si],al
000005B0  840B              test [bp+di],cl
000005B2  0000              add [bx+si],al
000005B4  97                xchg ax,di
000005B5  0B00              or ax,[bx+si]
000005B7  00AE0B00          add [bp+0xb],ch
000005BB  00B60B00          add [bp+0xb],dh
000005BF  00C1              add cl,al
000005C1  0B00              or ax,[bx+si]
000005C3  00C9              add cl,cl
000005C5  0B00              or ax,[bx+si]
000005C7  00D1              add cl,dl
000005C9  0B00              or ax,[bx+si]
000005CB  00D9              add cl,bl
000005CD  0B00              or ax,[bx+si]
000005CF  00E4              add ah,ah
000005D1  0B00              or ax,[bx+si]
000005D3  00EC              add ah,ch
000005D5  0B00              or ax,[bx+si]
000005D7  00F7              add bh,dh
000005D9  0B00              or ax,[bx+si]
000005DB  0002              add [bp+si],al
000005DD  0C00              or al,0x0
000005DF  000D              add [di],cl
000005E1  0C00              or al,0x0
000005E3  0014              add [si],dl
000005E5  0C00              or al,0x0
000005E7  001C              add [si],bl
000005E9  0C00              or al,0x0
000005EB  0024              add [si],ah
000005ED  0C00              or al,0x0
000005EF  002F              add [bx],ch
000005F1  0C00              or al,0x0
000005F3  0034              add [si],dh
000005F5  0C00              or al,0x0
000005F7  003F              add [bx],bh
000005F9  0C00              or al,0x0
000005FB  00460C            add [bp+0xc],al
000005FE  0000              add [bx+si],al
00000600  50                push ax
00000601  0C00              or al,0x0
00000603  005B0C            add [bp+di+0xc],bl
00000606  0000              add [bx+si],al
00000608  630C              arpl [si],cx
0000060A  0000              add [bx+si],al
0000060C  6E                outsb
0000060D  0C00              or al,0x0
0000060F  007B0C            add [bp+di+0xc],bh
00000612  0000              add [bx+si],al
00000614  830C00            or word [si],byte +0x0
00000617  008B0C00          add [bp+di+0xc],cl
0000061B  009B0C00          add [bp+di+0xc],bl
0000061F  00AE0C00          add [bp+0xc],ch
00000623  00BE0C00          add [bp+0xc],bh
00000627  00C6              add dh,al
00000629  0C00              or al,0x0
0000062B  00D1              add cl,dl
0000062D  0C00              or al,0x0
0000062F  00DE              add dh,bl
00000631  0C00              or al,0x0
00000633  00E9              add cl,ch
00000635  0C00              or al,0x0
00000637  00F4              add ah,dh
00000639  0C00              or al,0x0
0000063B  00FA              add dl,bh
0000063D  0C00              or al,0x0
0000063F  0002              add [bp+si],al
00000641  0D0000            or ax,0x0
00000644  07                pop es
00000645  0D0000            or ax,0x0
00000648  100D              adc [di],cl
0000064A  0000              add [bx+si],al
0000064C  180D              sbb [di],cl
0000064E  0000              add [bx+si],al
00000650  200D              and [di],cl
00000652  0000              add [bx+si],al
00000654  2B0D              sub cx,[di]
00000656  0000              add [bx+si],al
00000658  330D              xor cx,[di]
0000065A  0000              add [bx+si],al
0000065C  380D              cmp [di],cl
0000065E  0000              add [bx+si],al
00000660  42                inc dx
00000661  0D0000            or ax,0x0
00000664  4A                dec dx
00000665  0D0000            or ax,0x0
00000668  52                push dx
00000669  0D0000            or ax,0x0
0000066C  61                popaw
0000066D  0D0000            or ax,0x0
00000670  660D0000730D      or eax,0xd730000
00000676  0000              add [bx+si],al
00000678  7B0D              jpo 0x687
0000067A  0000              add [bx+si],al
0000067C  860D              xchg cl,[di]
0000067E  0000              add [bx+si],al
00000680  8E0D              mov cs,[di]
00000682  0000              add [bx+si],al
00000684  99                cwd
00000685  0D0000            or ax,0x0
00000688  A10D00            mov ax,[0xd]
0000068B  00AB0D00          add [bp+di+0xd],ch
0000068F  00B20D00          add [bp+si+0xd],dh
00000693  00BA0D00          add [bp+si+0xd],bh
00000697  00C2              add dl,al
00000699  0D0000            or ax,0x0
0000069C  CC                int3
0000069D  0D0000            or ax,0x0
000006A0  DA0D              fimul dword [di]
000006A2  0000              add [bx+si],al
000006A4  DF0D              fisttp word [di]
000006A6  0000              add [bx+si],al
000006A8  EA0D0000F2        jmp word 0xf200:0xd
000006AD  0D0000            or ax,0x0
000006B0  FD                std
000006B1  0D0000            or ax,0x0
000006B4  0A0E0000          or cl,[0x0]
000006B8  120E0000          adc cl,[0x0]
000006BC  1D0E00            sbb ax,0xe
000006BF  0029              add [bx+di],ch
000006C1  0E                push cs
000006C2  0000              add [bx+si],al
000006C4  4A                dec dx
000006C5  0E                push cs
000006C6  0000              add [bx+si],al
000006C8  58                pop ax
000006C9  0E                push cs
000006CA  0000              add [bx+si],al
000006CC  60                pushaw
000006CD  0E                push cs
000006CE  0000              add [bx+si],al
000006D0  6B0E000075        imul cx,[0x0],byte +0x75
000006D5  0E                push cs
000006D6  0000              add [bx+si],al
000006D8  7D0E              jnl 0x6e8
000006DA  0000              add [bx+si],al
000006DC  82                db 0x82
000006DD  0E                push cs
000006DE  0000              add [bx+si],al
000006E0  8A0E0000          mov cl,[0x0]
000006E4  95                xchg ax,bp
000006E5  0E                push cs
000006E6  0000              add [bx+si],al
000006E8  A00E00            mov al,[0xe]
000006EB  00AB0E00          add [bp+di+0xe],ch
000006EF  00B60E00          add [bp+0xe],dh
000006F3  00BE0E00          add [bp+0xe],bh
000006F7  00C6              add dh,al
000006F9  0E                push cs
000006FA  0000              add [bx+si],al
000006FC  CE                into
000006FD  0E                push cs
000006FE  0000              add [bx+si],al
00000700  D80E0000          fmul dword [0x0]
00000704  DD0E0000          fisttp qword [0x0]
00000708  E80E00            call word 0x719
0000070B  00ED              add ch,ch
0000070D  0E                push cs
0000070E  0000              add [bx+si],al
00000710  F8                clc
00000711  0E                push cs
00000712  0000              add [bx+si],al
00000714  FF0E0000          dec word [0x0]
00000718  040F              add al,0xf
0000071A  0000              add [bx+si],al
0000071C  0F                db 0x0f
0000071D  0F0000            sldt [bx+si]
00000720  17                pop ss
00000721  0F0000            sldt [bx+si]
00000724  220F              and cl,[bx]
00000726  0000              add [bx+si],al
00000728  290F              sub [bx],cx
0000072A  0000              add [bx+si],al
0000072C  310F              xor [bx],cx
0000072E  0000              add [bx+si],al
00000730  390F              cmp [bx],cx
00000732  0000              add [bx+si],al
00000734  44                inc sp
00000735  0F0000            sldt [bx+si]
00000738  52                push dx
00000739  0F0000            sldt [bx+si]
0000073C  690F0000          imul cx,[bx],word 0x0
00000740  740F              jz 0x751
00000742  0000              add [bx+si],al
00000744  8E0F              mov cs,[bx]
00000746  0000              add [bx+si],al
00000748  96                xchg ax,si
00000749  0F0000            sldt [bx+si]
0000074C  A10F00            mov ax,[0xf]
0000074F  00AE0F00          add [bp+0xf],ch
00000753  00BE0F00          add [bp+0xf],bh
00000757  00C6              add dh,al
00000759  0F0000            sldt [bx+si]
0000075C  D10F              ror word [bx],1
0000075E  0000              add [bx+si],al
00000760  E50F              in ax,0xf
00000762  0000              add [bx+si],al
00000764  ED                in ax,dx
00000765  0F0000            sldt [bx+si]
00000768  F4                hlt
00000769  0F0000            sldt [bx+si]
0000076C  FF0F              dec word [bx]
0000076E  0000              add [bx+si],al
00000770  07                pop es
00000771  1000              adc [bx+si],al
00000773  0012              add [bp+si],dl
00000775  1000              adc [bx+si],al
00000777  001F              add [bx],bl
00000779  1000              adc [bx+si],al
0000077B  0027              add [bx],ah
0000077D  1000              adc [bx+si],al
0000077F  0032              add [bp+si],dh
00000781  1000              adc [bx+si],al
00000783  004610            add [bp+0x10],al
00000786  0000              add [bx+si],al
00000788  4E                dec si
00000789  1000              adc [bx+si],al
0000078B  005510            add [di+0x10],dl
0000078E  0000              add [bx+si],al
00000790  60                pushaw
00000791  1000              adc [bx+si],al
00000793  006810            add [bx+si+0x10],ch
00000796  0000              add [bx+si],al
00000798  7310              jnc 0x7aa
0000079A  0000              add [bx+si],al
0000079C  801000            adc byte [bx+si],0x0
0000079F  008E1000          add [bp+0x10],cl
000007A3  00A81000          add [bx+si+0x10],ch
000007A7  00B61000          add [bp+0x10],dh
000007AB  00D0              add al,dl
000007AD  1000              adc [bx+si],al
000007AF  00D8              add al,bl
000007B1  1000              adc [bx+si],al
000007B3  00E0              add al,ah
000007B5  1000              adc [bx+si],al
000007B7  00EE              add dh,ch
000007B9  1000              adc [bx+si],al
000007BB  00F6              add dh,dh
000007BD  1000              adc [bx+si],al
000007BF  0001              add [bx+di],al
000007C1  1100              adc [bx+si],ax
000007C3  000B              add [bp+di],cl
000007C5  1100              adc [bx+si],ax
000007C7  0013              add [bp+di],dl
000007C9  1100              adc [bx+si],ax
000007CB  0018              add [bx+si],bl
000007CD  1100              adc [bx+si],ax
000007CF  0020              add [bx+si],ah
000007D1  1100              adc [bx+si],ax
000007D3  002B              add [bp+di],ch
000007D5  1100              adc [bx+si],ax
000007D7  0030              add [bx+si],dh
000007D9  1100              adc [bx+si],ax
000007DB  0038              add [bx+si],bh
000007DD  1100              adc [bx+si],ax
000007DF  004311            add [bp+di+0x11],al
000007E2  0000              add [bx+si],al
000007E4  53                push bx
000007E5  1100              adc [bx+si],ax
000007E7  005E11            add [bp+0x11],bl
000007EA  0000              add [bx+si],al
000007EC  6311              arpl [bx+di],dx
000007EE  0000              add [bx+si],al
000007F0  6B1100            imul dx,[bx+di],byte +0x0
000007F3  007311            add [bp+di+0x11],dh
000007F6  0000              add [bx+si],al
000007F8  8611              xchg dl,[bx+di]
000007FA  0000              add [bx+si],al
000007FC  90                nop
000007FD  1100              adc [bx+si],ax
000007FF  00951100          add [di+0x11],dl
00000803  009D1100          add [di+0x11],bl
00000807  00A51100          add [di+0x11],ah
0000080B  00B61100          add [bp+0x11],dh
0000080F  00C5              add ch,al
00000811  1100              adc [bx+si],ax
00000813  00CA              add dl,cl
00000815  1100              adc [bx+si],ax
00000817  00CF              add bh,cl
00000819  1100              adc [bx+si],ax
0000081B  00D5              add ch,dl
0000081D  1100              adc [bx+si],ax
0000081F  00E0              add al,ah
00000821  1100              adc [bx+si],ax
00000823  00F0              add al,dh
00000825  1100              adc [bx+si],ax
00000827  00F8              add al,bh
00000829  1100              adc [bx+si],ax
0000082B  00061200          add [0x12],al
0000082F  0010              add [bx+si],dl
00000831  1200              adc al,[bx+si]
00000833  001B              add [bp+di],bl
00000835  1200              adc al,[bx+si]
00000837  002F              add [bx],ch
00000839  1200              adc al,[bx+si]
0000083B  0037              add [bx],dh
0000083D  1200              adc al,[bx+si]
0000083F  003C              add [si],bh
00000841  1200              adc al,[bx+si]
00000843  004412            add [si+0x12],al
00000846  0000              add [bx+si],al
00000848  4C                dec sp
00000849  1200              adc al,[bx+si]
0000084B  005112            add [bx+di+0x12],dl
0000084E  0000              add [bx+si],al
00000850  59                pop cx
00000851  1200              adc al,[bx+si]
00000853  006412            add [si+0x12],ah
00000856  0000              add [bx+si],al
00000858  7212              jc 0x86c
0000085A  0000              add [bx+si],al
0000085C  7F12              jg 0x870
0000085E  0000              add [bx+si],al
00000860  8712              xchg dx,[bp+si]
00000862  0000              add [bx+si],al
00000864  92                xchg ax,dx
00000865  1200              adc al,[bx+si]
00000867  00A01200          add [bx+si+0x12],ah
0000086B  00AD1200          add [di+0x12],ch
0000086F  00B51200          add [di+0x12],dh
00000873  00BD1200          add [di+0x12],bh
00000877  00C7              add bh,al
00000879  1200              adc al,[bx+si]
0000087B  00DD              add ch,bl
0000087D  1200              adc al,[bx+si]
0000087F  00EF              add bh,ch
00000881  1200              adc al,[bx+si]
00000883  00F7              add bh,dh
00000885  1200              adc al,[bx+si]
00000887  0002              add [bp+si],al
00000889  1300              adc ax,[bx+si]
0000088B  000C              add [si],cl
0000088D  1300              adc ax,[bx+si]
0000088F  0022              add [bp+si],ah
00000891  1300              adc ax,[bx+si]
00000893  00361300          add [0x13],dh
00000897  003E1300          add [0x13],bh
0000089B  004913            add [bx+di+0x13],cl
0000089E  0000              add [bx+si],al
000008A0  57                push di
000008A1  1300              adc ax,[bx+si]
000008A3  006713            add [bx+0x13],ah
000008A6  0000              add [bx+si],al
000008A8  7713              ja 0x8bd
000008AA  0000              add [bx+si],al
000008AC  91                xchg ax,cx
000008AD  1300              adc ax,[bx+si]
000008AF  009C1300          add [si+0x13],bl
000008B3  00A71300          add [bx+0x13],ah
000008B7  00B71300          add [bx+0x13],dh
000008BB  00BC1300          add [si+0x13],bh
000008BF  00CC              add ah,cl
000008C1  1300              adc ax,[bx+si]
000008C3  00DD              add ch,bl
000008C5  1300              adc ax,[bx+si]
000008C7  00F7              add bh,dh
000008C9  1300              adc ax,[bx+si]
000008CB  00FC              add ah,bh
000008CD  1300              adc ax,[bx+si]
000008CF  000C              add [si],cl
000008D1  1400              adc al,0x0
000008D3  0014              add [si],dl
000008D5  1400              adc al,0x0
000008D7  0022              add [bp+si],ah
000008D9  1400              adc al,0x0
000008DB  002A              add [bp+si],ch
000008DD  1400              adc al,0x0
000008DF  0035              add [di],dh
000008E1  1400              adc al,0x0
000008E3  004214            add [bp+si+0x14],al
000008E6  0000              add [bx+si],al
000008E8  4D                dec bp
000008E9  1400              adc al,0x0
000008EB  005814            add [bx+si+0x14],bl
000008EE  0000              add [bx+si],al
000008F0  681400            push word 0x14
000008F3  007014            add [bx+si+0x14],dh
000008F6  0000              add [bx+si],al
000008F8  7B14              jpo 0x90e
000008FA  0000              add [bx+si],al
000008FC  8C14              mov [si],ss
000008FE  0000              add [bx+si],al
00000900  91                xchg ax,cx
00000901  1400              adc al,0x0
00000903  00AB1400          add [bp+di+0x14],ch
00000907  00B31400          add [bp+di+0x14],dh
0000090B  00BE1400          add [bp+0x14],bh
0000090F  00CF              add bh,cl
00000911  1400              adc al,0x0
00000913  00D7              add bh,dl
00000915  1400              adc al,0x0
00000917  00F1              add cl,dh
00000919  1400              adc al,0x0
0000091B  00F9              add cl,bh
0000091D  1400              adc al,0x0
0000091F  0004              add [si],al
00000921  150000            adc ax,0x0
00000924  151500            adc ax,0x15
00000927  002F              add [bx],ch
00000929  150000            adc ax,0x0
0000092C  37                aaa
0000092D  150000            adc ax,0x0
00000930  3F                aas
00000931  150000            adc ax,0x0
00000934  4E                dec si
00000935  150000            adc ax,0x0
00000938  56                push si
00000939  150000            adc ax,0x0
0000093C  60                pushaw
0000093D  150000            adc ax,0x0
00000940  681500            push word 0x15
00000943  007015            add [bx+si+0x15],dh
00000946  0000              add [bx+si],al
00000948  7B15              jpo 0x95f
0000094A  0000              add [bx+si],al
0000094C  801500            adc byte [di],0x0
0000094F  00881500          add [bx+si+0x15],cl
00000953  00931500          add [bp+di+0x15],dl
00000957  009E1500          add [bp+0x15],bl
0000095B  00A31500          add [bp+di+0x15],ah
0000095F  00AE1500          add [bp+0x15],ch
00000963  00B61500          add [bp+0x15],dh
00000967  00BE1500          add [bp+0x15],bh
0000096B  00C9              add cl,cl
0000096D  150000            adc ax,0x0
00000970  E215              loop 0x987
00000972  0000              add [bx+si],al
00000974  F0150000          lock adc ax,0x0
00000978  F8                clc
00000979  150000            adc ax,0x0
0000097C  03160000          add dx,[0x0]
00000980  13160000          adc dx,[0x0]
00000984  20160000          and [0x0],dl
00000988  2A160000          sub dl,[0x0]
0000098C  2F                das
0000098D  16                push ss
0000098E  0000              add [bx+si],al
00000990  39160000          cmp [0x0],dx
00000994  44                inc sp
00000995  16                push ss
00000996  0000              add [bx+si],al
00000998  5B                pop bx
00000999  16                push ss
0000099A  0000              add [bx+si],al
0000099C  691600007A16      imul dx,[0x0],word 0x167a
000009A2  0000              add [bx+si],al
000009A4  811600008916      adc word [0x0],0x1689
000009AA  0000              add [bx+si],al
000009AC  90                nop
000009AD  16                push ss
000009AE  0000              add [bx+si],al
000009B0  98                cbw
000009B1  16                push ss
000009B2  0000              add [bx+si],al
000009B4  A6                cmpsb
000009B5  16                push ss
000009B6  0000              add [bx+si],al
000009B8  BD1600            mov bp,0x16
000009BB  00CC              add ah,cl
000009BD  16                push ss
000009BE  0000              add [bx+si],al
000009C0  D6                salc
000009C1  16                push ss
000009C2  0000              add [bx+si],al
000009C4  DB160000          fist dword [0x0]
000009C8  E516              in ax,0x16
000009CA  0000              add [bx+si],al
000009CC  ED                in ax,dx
000009CD  16                push ss
000009CE  0000              add [bx+si],al
000009D0  F216              repne push ss
000009D2  0000              add [bx+si],al
000009D4  FB                sti
000009D5  16                push ss
000009D6  0000              add [bx+si],al
000009D8  0917              or [bx],dx
000009DA  0000              add [bx+si],al
000009DC  1417              adc al,0x17
000009DE  0000              add [bx+si],al
000009E0  1F                pop ds
000009E1  17                pop ss
000009E2  0000              add [bx+si],al
000009E4  2617              es pop ss
000009E6  0000              add [bx+si],al
000009E8  2E17              cs pop ss
000009EA  0000              add [bx+si],al
000009EC  40                inc ax
000009ED  17                pop ss
000009EE  0000              add [bx+si],al
000009F0  50                push ax
000009F1  17                pop ss
000009F2  0000              add [bx+si],al
000009F4  6717              pop ss
000009F6  0000              add [bx+si],al
000009F8  6F                outsw
000009F9  17                pop ss
000009FA  0000              add [bx+si],al
000009FC  7A17              jpe 0xa15
000009FE  0000              add [bx+si],al
00000A00  8517              test [bx],dx
00000A02  0000              add [bx+si],al
00000A04  8C17              mov [bx],ss
00000A06  0000              add [bx+si],al
00000A08  94                xchg ax,sp
00000A09  17                pop ss
00000A0A  0000              add [bx+si],al
00000A0C  9C                pushfw
00000A0D  17                pop ss
00000A0E  0000              add [bx+si],al
00000A10  A4                movsb
00000A11  17                pop ss
00000A12  0000              add [bx+si],al
00000A14  AE                scasb
00000A15  17                pop ss
00000A16  0000              add [bx+si],al
00000A18  B317              mov bl,0x17
00000A1A  0000              add [bx+si],al
00000A1C  BD1700            mov bp,0x17
00000A1F  00C5              add ch,al
00000A21  17                pop ss
00000A22  0000              add [bx+si],al
00000A24  CD17              int 0x17
00000A26  0000              add [bx+si],al
00000A28  D817              fcom dword [bx]
00000A2A  0000              add [bx+si],al
00000A2C  E017              loopne 0xa45
00000A2E  0000              add [bx+si],al
00000A30  E81700            call word 0xa4a
00000A33  00F8              add al,bh
00000A35  17                pop ss
00000A36  0000              add [bx+si],al
00000A38  0B18              or bx,[bx+si]
00000A3A  0000              add [bx+si],al
00000A3C  1B18              sbb bx,[bx+si]
00000A3E  0000              add [bx+si],al
00000A40  2218              and bl,[bx+si]
00000A42  0000              add [bx+si],al
00000A44  2A18              sub bl,[bx+si]
00000A46  0000              add [bx+si],al
00000A48  3C18              cmp al,0x18
00000A4A  0000              add [bx+si],al
00000A4C  44                inc sp
00000A4D  1800              sbb [bx+si],al
00000A4F  004918            add [bx+di+0x18],cl
00000A52  0000              add [bx+si],al
00000A54  53                push bx
00000A55  1800              sbb [bx+si],al
00000A57  005E18            add [bp+0x18],bl
00000A5A  0000              add [bx+si],al
00000A5C  661800            o32 sbb [bx+si],al
00000A5F  006B18            add [bp+di+0x18],ch
00000A62  0000              add [bx+si],al
00000A64  7718              ja 0xa7e
00000A66  0000              add [bx+si],al
00000A68  82                db 0x82
00000A69  1800              sbb [bx+si],al
00000A6B  00901800          add [bx+si+0x18],dl
00000A6F  00981800          add [bx+si+0x18],bl
00000A73  00A31800          add [bp+di+0x18],ah
00000A77  00AA1800          add [bp+si+0x18],ch
00000A7B  00B21800          add [bp+si+0x18],dh
00000A7F  00C0              add al,al
00000A81  1800              sbb [bx+si],al
00000A83  00CB              add bl,cl
00000A85  1800              sbb [bx+si],al
00000A87  00D6              add dh,dl
00000A89  1800              sbb [bx+si],al
00000A8B  00DE              add dh,bl
00000A8D  1800              sbb [bx+si],al
00000A8F  00E9              add cl,ch
00000A91  1800              sbb [bx+si],al
00000A93  00F0              add al,dh
00000A95  1800              sbb [bx+si],al
00000A97  00F8              add al,bh
00000A99  1800              sbb [bx+si],al
00000A9B  00FD              add ch,bh
00000A9D  1800              sbb [bx+si],al
00000A9F  0005              add [di],al
00000AA1  1900              sbb [bx+si],ax
00000AA3  000A              add [bp+si],cl
00000AA5  1900              sbb [bx+si],ax
00000AA7  0012              add [bp+si],dl
00000AA9  1900              sbb [bx+si],ax
00000AAB  001A              add [bp+si],bl
00000AAD  1900              sbb [bx+si],ax
00000AAF  001F              add [bx],bl
00000AB1  1900              sbb [bx+si],ax
00000AB3  0027              add [bx],ah
00000AB5  1900              sbb [bx+si],ax
00000AB7  002C              add [si],ch
00000AB9  1900              sbb [bx+si],ax
00000ABB  0034              add [si],dh
00000ABD  1900              sbb [bx+si],ax
00000ABF  003C              add [si],bh
00000AC1  1900              sbb [bx+si],ax
00000AC3  004A19            add [bp+si+0x19],cl
00000AC6  0000              add [bx+si],al
00000AC8  641900            sbb [fs:bx+si],ax
00000ACB  006E19            add [bp+0x19],ch
00000ACE  0000              add [bx+si],al
00000AD0  7619              jna 0xaeb
00000AD2  0000              add [bx+si],al
00000AD4  7B19              jpo 0xaef
00000AD6  0000              add [bx+si],al
00000AD8  831900            sbb word [bx+di],byte +0x0
00000ADB  008A1900          add [bp+si+0x19],cl
00000ADF  00AB1900          add [bp+di+0x19],ch
00000AE3  00B41900          add [si+0x19],dh
00000AE7  00BF1900          add [bx+0x19],bh
00000AEB  00C7              add bh,al
00000AED  1900              sbb [bx+si],ax
00000AEF  00D5              add ch,dl
00000AF1  1900              sbb [bx+si],ax
00000AF3  00E0              add al,ah
00000AF5  1900              sbb [bx+si],ax
00000AF7  00EB              add bl,ch
00000AF9  1900              sbb [bx+si],ax
00000AFB  00FF              add bh,bh
00000AFD  1900              sbb [bx+si],ax
00000AFF  0010              add [bx+si],dl
00000B01  1A00              sbb al,[bx+si]
00000B03  0020              add [bx+si],ah
00000B05  1A00              sbb al,[bx+si]
00000B07  002B              add [bp+di],ch
00000B09  1A00              sbb al,[bx+si]
00000B0B  0033              add [bp+di],dh
00000B0D  1A00              sbb al,[bx+si]
00000B0F  003E1A00          add [0x1a],bh
00000B13  00481A            add [bx+si+0x1a],cl
00000B16  0000              add [bx+si],al
00000B18  5A                pop dx
00000B19  1A00              sbb al,[bx+si]
00000B1B  00621A            add [bp+si+0x1a],ah
00000B1E  0000              add [bx+si],al
00000B20  721A              jc 0xb3c
00000B22  0000              add [bx+si],al
00000B24  7A1A              jpe 0xb40
00000B26  0000              add [bx+si],al
00000B28  8C1A              mov [bp+si],ds
00000B2A  0000              add [bx+si],al
00000B2C  9B1A00            wait sbb al,[bx+si]
00000B2F  00A31A00          add [bp+di+0x1a],ah
00000B33  00B51A00          add [di+0x1a],dh
00000B37  00C2              add dl,al
00000B39  1A00              sbb al,[bx+si]
00000B3B  00CA              add dl,cl
00000B3D  1A00              sbb al,[bx+si]
00000B3F  00DC              add ah,bl
00000B41  1A00              sbb al,[bx+si]
00000B43  00E4              add ah,ah
00000B45  1A00              sbb al,[bx+si]
00000B47  00F6              add dh,dh
00000B49  1A00              sbb al,[bx+si]
00000B4B  0001              add [bx+di],al
00000B4D  1B00              sbb ax,[bx+si]
00000B4F  0009              add [bx+di],cl
00000B51  1B00              sbb ax,[bx+si]
00000B53  0014              add [si],dl
00000B55  1B00              sbb ax,[bx+si]
00000B57  001E1B00          add [0x1b],bl
00000B5B  00261B00          add [0x1b],ah
00000B5F  002B              add [bp+di],ch
00000B61  1B00              sbb ax,[bx+si]
00000B63  0033              add [bp+di],dh
00000B65  1B00              sbb ax,[bx+si]
00000B67  003B              add [bp+di],bh
00000B69  1B00              sbb ax,[bx+si]
00000B6B  00461B            add [bp+0x1b],al
00000B6E  0000              add [bx+si],al
00000B70  55                push bp
00000B71  1B00              sbb ax,[bx+si]
00000B73  00621B            add [bp+si+0x1b],ah
00000B76  0000              add [bx+si],al
00000B78  6A1B              push byte +0x1b
00000B7A  0000              add [bx+si],al
00000B7C  771B              ja 0xb99
00000B7E  0000              add [bx+si],al
00000B80  7C1B              jl 0xb9d
00000B82  0000              add [bx+si],al
00000B84  841B              test [bp+di],bl
00000B86  0000              add [bx+si],al
00000B88  91                xchg ax,cx
00000B89  1B00              sbb ax,[bx+si]
00000B8B  009C1B00          add [si+0x1b],bl
00000B8F  00A41B00          add [si+0x1b],ah
00000B93  00AF1B00          add [bx+0x1b],ch
00000B97  00B61B00          add [bp+0x1b],dh
00000B9B  00BE1B00          add [bp+0x1b],bh
00000B9F  00C3              add bl,al
00000BA1  1B00              sbb ax,[bx+si]
00000BA3  00CB              add bl,cl
00000BA5  1B00              sbb ax,[bx+si]
00000BA7  00D0              add al,dl
00000BA9  1B00              sbb ax,[bx+si]
00000BAB  00D8              add al,bl
00000BAD  1B00              sbb ax,[bx+si]
00000BAF  00E3              add bl,ah
00000BB1  1B00              sbb ax,[bx+si]
00000BB3  00E8              add al,ch
00000BB5  1B00              sbb ax,[bx+si]
00000BB7  00F0              add al,dh
00000BB9  1B00              sbb ax,[bx+si]
00000BBB  00FB              add bl,bh
00000BBD  1B00              sbb ax,[bx+si]
00000BBF  000E1C00          add [0x1c],cl
00000BC3  001D              add [di],bl
00000BC5  1C00              sbb al,0x0
00000BC7  0028              add [bx+si],ch
00000BC9  1C00              sbb al,0x0
00000BCB  00361C00          add [0x1c],dh
00000BCF  00461C            add [bp+0x1c],al
00000BD2  0000              add [bx+si],al
00000BD4  56                push si
00000BD5  1C00              sbb al,0x0
00000BD7  006D1C            add [di+0x1c],ch
00000BDA  0000              add [bx+si],al
00000BDC  7B1C              jpo 0xbfa
00000BDE  0000              add [bx+si],al
00000BE0  95                xchg ax,bp
00000BE1  1C00              sbb al,0x0
00000BE3  009D1C00          add [di+0x1c],bl
00000BE7  00AA1C00          add [bp+si+0x1c],ch
00000BEB  00B21C00          add [bp+si+0x1c],dh
00000BEF  00BD1C00          add [di+0x1c],bh
00000BF3  00C5              add ch,al
00000BF5  1C00              sbb al,0x0
00000BF7  00D2              add dl,dl
00000BF9  1C00              sbb al,0x0
00000BFB  00DA              add dl,bl
00000BFD  1C00              sbb al,0x0
00000BFF  00E2              add dl,ah
00000C01  1C00              sbb al,0x0
00000C03  00EF              add bh,ch
00000C05  1C00              sbb al,0x0
00000C07  00FA              add dl,bh
00000C09  1C00              sbb al,0x0
00000C0B  0002              add [bp+si],al
00000C0D  1D0000            sbb ax,0x0
00000C10  0D1D00            or ax,0x1d
00000C13  0014              add [si],dl
00000C15  1D0000            sbb ax,0x0
00000C18  191D              sbb [di],bx
00000C1A  0000              add [bx+si],al
00000C1C  1E                push ds
00000C1D  1D0000            sbb ax,0x0
00000C20  231D              and bx,[di]
00000C22  0000              add [bx+si],al
00000C24  2E1D0000          cs sbb ax,0x0
00000C28  331D              xor bx,[di]
00000C2A  0000              add [bx+si],al
00000C2C  40                inc ax
00000C2D  1D0000            sbb ax,0x0
00000C30  47                inc di
00000C31  1D0000            sbb ax,0x0
00000C34  4F                dec di
00000C35  1D0000            sbb ax,0x0
00000C38  5A                pop dx
00000C39  1D0000            sbb ax,0x0
00000C3C  621D              bound bx,[di]
00000C3E  0000              add [bx+si],al
00000C40  6D                insw
00000C41  1D0000            sbb ax,0x0
00000C44  751D              jnz 0xc63
00000C46  0000              add [bx+si],al
00000C48  801D00            sbb byte [di],0x0
00000C4B  008D1D00          add [di+0x1d],cl
00000C4F  009D1D00          add [di+0x1d],bl
00000C53  00A21D00          add [bp+si+0x1d],ah
00000C57  00AC1D00          add [si+0x1d],ch
00000C5B  00B71D00          add [bx+0x1d],dh
00000C5F  00C2              add dl,al
00000C61  1D0000            sbb ax,0x0
00000C64  C9                leave
00000C65  1D0000            sbb ax,0x0
00000C68  D31D              rcr word [di],cl
00000C6A  0000              add [bx+si],al
00000C6C  DA1D              ficomp dword [di]
00000C6E  0000              add [bx+si],al
00000C70  DF1D              fistp word [di]
00000C72  0000              add [bx+si],al
00000C74  EF                out dx,ax
00000C75  1D0000            sbb ax,0x0
00000C78  F61D              neg byte [di]
00000C7A  0000              add [bx+si],al
00000C7C  FE                db 0xfe
00000C7D  1D0000            sbb ax,0x0
00000C80  06                push es
00000C81  1E                push ds
00000C82  0000              add [bx+si],al
00000C84  0B1E0000          or bx,[0x0]
00000C88  131E0000          adc bx,[0x0]
00000C8C  181E0000          sbb [0x0],bl
00000C90  201E0000          and [0x0],bl
00000C94  2B1E0000          sub bx,[0x0]
00000C98  331E0000          xor bx,[0x0]
00000C9C  3E1E              ds push ds
00000C9E  0000              add [bx+si],al
00000CA0  43                inc bx
00000CA1  1E                push ds
00000CA2  0000              add [bx+si],al
00000CA4  4D                dec bp
00000CA5  1E                push ds
00000CA6  0000              add [bx+si],al
00000CA8  58                pop ax
00000CA9  1E                push ds
00000CAA  0000              add [bx+si],al
00000CAC  60                pushaw
00000CAD  1E                push ds
00000CAE  0000              add [bx+si],al
00000CB0  6B1E000077        imul bx,[0x0],byte +0x77
00000CB5  1E                push ds
00000CB6  0000              add [bx+si],al
00000CB8  841E0000          test [0x0],bl
00000CBC  8E1E0000          mov ds,[0x0]
00000CC0  9B1E              wait push ds
00000CC2  0000              add [bx+si],al
00000CC4  A01E00            mov al,[0x1e]
00000CC7  00AA1E00          add [bp+si+0x1e],ch
00000CCB  0008              add [bx+si],cl
00000CCD  00C5              add ch,al
00000CCF  07                pop es
00000CD0  A20247            mov [0x4702],al
00000CD3  02C8              add cl,al
00000CD5  034702            add ax,[bx+0x2]
00000CD8  0204              add al,[si]
00000CDA  47                inc di
00000CDB  022C              add ch,[si]
00000CDD  0447              add al,0x47
00000CDF  02B80447          add bh,[bx+si+0x4704]
00000CE3  02FA              add bh,dl
00000CE5  0447              add al,0x47
00000CE7  02060847          add al,[0x4708]
00000CEB  02260847          add ah,[0x4708]
00000CEF  02B90847          add bh,[bx+di+0x4708]
00000CF3  02C4              add al,ah
00000CF5  084702            or [bx+0x2],al
00000CF8  D9                db 0xd9
00000CF9  0B4702            or ax,[bx+0x2]
00000CFC  DF0B              fisttp word [bp+di]
00000CFE  47                inc di
00000CFF  02740D            add dh,[si+0xd]
00000D02  47                inc di
00000D03  0222              add ah,[bp+si]
00000D05  0E                push cs
00000D06  47                inc di
00000D07  025F14            add bl,[bx+0x14]
00000D0A  47                inc di
00000D0B  02D3              add dl,bl
00000D0D  17                pop ss
00000D0E  47                inc di
00000D0F  02D9              add bl,cl
00000D11  17                pop ss
00000D12  47                inc di
00000D13  02E3              add ah,bl
00000D15  17                pop ss
00000D16  47                inc di
00000D17  022F              add ch,[bx]
00000D19  1F                pop ds
00000D1A  47                inc di
00000D1B  020B              add cl,[bp+di]
00000D1D  224702            and al,[bx+0x2]
00000D20  1A22              sbb ah,[bp+si]
00000D22  47                inc di
00000D23  02BF2447          add bh,[bx+0x4724]
00000D27  0202              add al,[bp+si]
00000D29  00BF0715          add [bx+0x1507],bh
00000D2D  00BF071A          add [bx+0x1a07],bh
00000D31  00BF0725          add [bx+0x2507],bh
00000D35  00BF0746          add [bx+0x4607],bh
00000D39  00BF0751          add [bx+0x5107],bh
00000D3D  00BF0723          add [bx+0x2307],bh
00000D41  294702            sub [bx+0x2],ax
00000D44  3A29              cmp ch,[bx+di]
00000D46  47                inc di
00000D47  02892947          add cl,[bx+di+0x4729]
00000D4B  02CE              add cl,dh
00000D4D  294702            sub [bx+0x2],ax
00000D50  69314702          imul si,[bx+di],word 0x247
00000D54  E93147            jmp word 0x5488
00000D57  0204              add al,[si]
00000D59  384702            cmp [bx+0x2],al
00000D5C  0B38              or di,[bx+si]
00000D5E  47                inc di
00000D5F  02D4              add dl,ah
00000D61  4B                dec bx
00000D62  47                inc di
00000D63  0200              add al,[bx+si]
00000D65  0000              add [bx+si],al
00000D67  0000              add [bx+si],al
00000D69  0000              add [bx+si],al
00000D6B  0000              add [bx+si],al
00000D6D  0000              add [bx+si],al
00000D6F  0000              add [bx+si],al
00000D71  0000              add [bx+si],al
00000D73  0000              add [bx+si],al
00000D75  0000              add [bx+si],al
00000D77  0000              add [bx+si],al
00000D79  0000              add [bx+si],al
00000D7B  0000              add [bx+si],al
00000D7D  0000              add [bx+si],al
00000D7F  0000              add [bx+si],al
00000D81  0000              add [bx+si],al
00000D83  0000              add [bx+si],al
00000D85  0000              add [bx+si],al
00000D87  0000              add [bx+si],al
00000D89  0000              add [bx+si],al
00000D8B  0000              add [bx+si],al
00000D8D  0000              add [bx+si],al
00000D8F  0000              add [bx+si],al
00000D91  0000              add [bx+si],al
00000D93  0000              add [bx+si],al
00000D95  0000              add [bx+si],al
00000D97  0000              add [bx+si],al
00000D99  0000              add [bx+si],al
00000D9B  0000              add [bx+si],al
00000D9D  0000              add [bx+si],al
00000D9F  0000              add [bx+si],al
00000DA1  0000              add [bx+si],al
00000DA3  0000              add [bx+si],al
00000DA5  0000              add [bx+si],al
00000DA7  0000              add [bx+si],al
00000DA9  0000              add [bx+si],al
00000DAB  0000              add [bx+si],al
00000DAD  0000              add [bx+si],al
00000DAF  0000              add [bx+si],al
00000DB1  0000              add [bx+si],al
00000DB3  0000              add [bx+si],al
00000DB5  0000              add [bx+si],al
00000DB7  0000              add [bx+si],al
00000DB9  0000              add [bx+si],al
00000DBB  0000              add [bx+si],al
00000DBD  0000              add [bx+si],al
00000DBF  0000              add [bx+si],al
00000DC1  0000              add [bx+si],al
00000DC3  0000              add [bx+si],al
00000DC5  0000              add [bx+si],al
00000DC7  0000              add [bx+si],al
00000DC9  0000              add [bx+si],al
00000DCB  0000              add [bx+si],al
00000DCD  0000              add [bx+si],al
00000DCF  0000              add [bx+si],al
00000DD1  0000              add [bx+si],al
00000DD3  0000              add [bx+si],al
00000DD5  0000              add [bx+si],al
00000DD7  0000              add [bx+si],al
00000DD9  0000              add [bx+si],al
00000DDB  0000              add [bx+si],al
00000DDD  0000              add [bx+si],al
00000DDF  0000              add [bx+si],al
00000DE1  0000              add [bx+si],al
00000DE3  0000              add [bx+si],al
00000DE5  0000              add [bx+si],al
00000DE7  0000              add [bx+si],al
00000DE9  0000              add [bx+si],al
00000DEB  0000              add [bx+si],al
00000DED  0000              add [bx+si],al
00000DEF  0000              add [bx+si],al
00000DF1  0000              add [bx+si],al
00000DF3  0000              add [bx+si],al
00000DF5  0000              add [bx+si],al
00000DF7  0000              add [bx+si],al
00000DF9  0000              add [bx+si],al
00000DFB  0000              add [bx+si],al
00000DFD  0000              add [bx+si],al
00000DFF  0000              add [bx+si],al
00000E01  0000              add [bx+si],al
00000E03  0000              add [bx+si],al
00000E05  0000              add [bx+si],al
00000E07  0000              add [bx+si],al
00000E09  0000              add [bx+si],al
00000E0B  0000              add [bx+si],al
00000E0D  0000              add [bx+si],al
00000E0F  0000              add [bx+si],al
00000E11  0000              add [bx+si],al
00000E13  0000              add [bx+si],al
00000E15  0000              add [bx+si],al
00000E17  0000              add [bx+si],al
00000E19  0000              add [bx+si],al
00000E1B  0000              add [bx+si],al
00000E1D  0000              add [bx+si],al
00000E1F  0000              add [bx+si],al
00000E21  0000              add [bx+si],al
00000E23  0000              add [bx+si],al
00000E25  0000              add [bx+si],al
00000E27  0000              add [bx+si],al
00000E29  0000              add [bx+si],al
00000E2B  0000              add [bx+si],al
00000E2D  0000              add [bx+si],al
00000E2F  0000              add [bx+si],al
00000E31  0000              add [bx+si],al
00000E33  0000              add [bx+si],al
00000E35  0000              add [bx+si],al
00000E37  0000              add [bx+si],al
00000E39  0000              add [bx+si],al
00000E3B  0000              add [bx+si],al
00000E3D  0000              add [bx+si],al
00000E3F  0000              add [bx+si],al
00000E41  0000              add [bx+si],al
00000E43  0000              add [bx+si],al
00000E45  0000              add [bx+si],al
00000E47  0000              add [bx+si],al
00000E49  0000              add [bx+si],al
00000E4B  0000              add [bx+si],al
00000E4D  0000              add [bx+si],al
00000E4F  0000              add [bx+si],al
00000E51  0000              add [bx+si],al
00000E53  0000              add [bx+si],al
00000E55  0000              add [bx+si],al
00000E57  0000              add [bx+si],al
00000E59  0000              add [bx+si],al
00000E5B  0000              add [bx+si],al
00000E5D  0000              add [bx+si],al
00000E5F  0000              add [bx+si],al
00000E61  0000              add [bx+si],al
00000E63  0000              add [bx+si],al
00000E65  0000              add [bx+si],al
00000E67  0000              add [bx+si],al
00000E69  0000              add [bx+si],al
00000E6B  0000              add [bx+si],al
00000E6D  0000              add [bx+si],al
00000E6F  0000              add [bx+si],al
00000E71  0000              add [bx+si],al
00000E73  0000              add [bx+si],al
00000E75  0000              add [bx+si],al
00000E77  0000              add [bx+si],al
00000E79  0000              add [bx+si],al
00000E7B  0000              add [bx+si],al
00000E7D  0000              add [bx+si],al
00000E7F  0000              add [bx+si],al
00000E81  0000              add [bx+si],al
00000E83  0000              add [bx+si],al
00000E85  0000              add [bx+si],al
00000E87  0000              add [bx+si],al
00000E89  0000              add [bx+si],al
00000E8B  0000              add [bx+si],al
00000E8D  0000              add [bx+si],al
00000E8F  0000              add [bx+si],al
00000E91  0000              add [bx+si],al
00000E93  0000              add [bx+si],al
00000E95  0000              add [bx+si],al
00000E97  0000              add [bx+si],al
00000E99  0000              add [bx+si],al
00000E9B  0000              add [bx+si],al
00000E9D  0000              add [bx+si],al
00000E9F  0000              add [bx+si],al
00000EA1  0000              add [bx+si],al
00000EA3  0000              add [bx+si],al
00000EA5  0000              add [bx+si],al
00000EA7  0000              add [bx+si],al
00000EA9  0000              add [bx+si],al
00000EAB  0000              add [bx+si],al
00000EAD  0000              add [bx+si],al
00000EAF  0000              add [bx+si],al
00000EB1  0000              add [bx+si],al
00000EB3  0000              add [bx+si],al
00000EB5  0000              add [bx+si],al
00000EB7  0000              add [bx+si],al
00000EB9  0000              add [bx+si],al
00000EBB  0000              add [bx+si],al
00000EBD  0000              add [bx+si],al
00000EBF  0000              add [bx+si],al
00000EC1  0000              add [bx+si],al
00000EC3  0000              add [bx+si],al
00000EC5  0000              add [bx+si],al
00000EC7  0000              add [bx+si],al
00000EC9  0000              add [bx+si],al
00000ECB  0000              add [bx+si],al
00000ECD  0000              add [bx+si],al
00000ECF  0000              add [bx+si],al
00000ED1  0000              add [bx+si],al
00000ED3  0000              add [bx+si],al
00000ED5  0000              add [bx+si],al
00000ED7  0000              add [bx+si],al
00000ED9  0000              add [bx+si],al
00000EDB  0000              add [bx+si],al
00000EDD  0000              add [bx+si],al
00000EDF  0000              add [bx+si],al
00000EE1  0000              add [bx+si],al
00000EE3  0000              add [bx+si],al
00000EE5  0000              add [bx+si],al
00000EE7  0000              add [bx+si],al
00000EE9  0000              add [bx+si],al
00000EEB  0000              add [bx+si],al
00000EED  0000              add [bx+si],al
00000EEF  0000              add [bx+si],al
00000EF1  0000              add [bx+si],al
00000EF3  0000              add [bx+si],al
00000EF5  0000              add [bx+si],al
00000EF7  0000              add [bx+si],al
00000EF9  0000              add [bx+si],al
00000EFB  0000              add [bx+si],al
00000EFD  0000              add [bx+si],al
00000EFF  00626C            add [bp+si+0x6c],ah
00000F02  AC                lodsb
00000F03  1E                push ds
00000F04  3907              cmp [bx],ax
00000F06  BF07C5            mov di,0xc507
00000F09  07                pop es
00000F0A  A00800            mov al,[0x8]
00000F0D  00A008A0          add [bx+si-0x5ff8],ah
00000F11  08A0085C          or [bx+si+0x5c08],ah
00000F15  0A700A            or dh,[bx+si+0xa]
00000F18  D20F              ror byte [bx],cl
00000F1A  9A0000BF07        call word 0x7bf:0x0
00000F1F  55                push bp
00000F20  8BEC              mov bp,sp
00000F22  81EC0200          sub sp,0x2
00000F26  9AE9284702        call word 0x247:0x28e9
00000F2B  BB0080            mov bx,0x8000
00000F2E  33D2              xor dx,dx
00000F30  9A82144702        call word 0x247:0x1482
00000F35  33DB              xor bx,bx
00000F37  9A480B4702        call word 0x247:0xb48
00000F3C  BE700A            mov si,0xa70
00000F3F  9ADF0E4702        call word 0x247:0xedf
00000F44  E91B00            jmp word 0xf62
00000F47  BEA208            mov si,0x8a2
00000F4A  9AD12F4702        call word 0x247:0x2fd1
00000F4F  BA740A            mov dx,0xa74
00000F52  9AB90B4702        call word 0x247:0xbb9
00000F57  BF700A            mov di,0xa70
00000F5A  BEA208            mov si,0x8a2
00000F5D  9A2A004702        call word 0x247:0x2a
00000F62  BFA208            mov di,0x8a2
00000F65  9AC50E4702        call word 0x247:0xec5
00000F6A  BF780A            mov di,0xa78
00000F6D  BEA208            mov si,0x8a2
00000F70  9A22234702        call word 0x247:0x2322
00000F75  76D0              jna 0xf47
00000F77  E92D00            jmp word 0xfa7
00000F7A  BBA608            mov bx,0x8a6
00000F7D  8BD3              mov dx,bx
00000F7F  9AE3234702        call word 0x247:0x23e3
00000F84  83FB5F            cmp bx,byte +0x5f
00000F87  B90000            mov cx,0x0
00000F8A  7E01              jng 0xf8d
00000F8C  49                dec cx
00000F8D  D1E1              shl cx,1
00000F8F  D1E1              shl cx,1
00000F91  D1E1              shl cx,1
00000F93  D1E1              shl cx,1
00000F95  D1E1              shl cx,1
00000F97  8BDA              mov bx,dx
00000F99  9AE3234702        call word 0x247:0x23e3
00000F9E  03D9              add bx,cx
00000FA0  9A14244702        call word 0x247:0x2414
00000FA5  93                xchg ax,bx
00000FA6  C3                ret
00000FA7  BB4000            mov bx,0x40
00000FAA  9A6C144702        call word 0x247:0x146c
00000FAF  BB1000            mov bx,0x10
00000FB2  8E1E9800          mov ds,[0x98]
00000FB6  8A1F              mov bl,[bx]
00000FB8  30FF              xor bh,bh
00000FBA  06                push es
00000FBB  1F                pop ds
00000FBC  83E330            and bx,byte +0x30
00000FBF  9A892F4702        call word 0x247:0x2f89
00000FC4  BF7C0A            mov di,0xa7c
00000FC7  9A57014702        call word 0x247:0x157
00000FCC  BF6609            mov di,0x966
00000FCF  9AC50E4702        call word 0x247:0xec5
00000FD4  BF800A            mov di,0xa80
00000FD7  BE6609            mov si,0x966
00000FDA  9A22234702        call word 0x247:0x2322
00000FDF  7503              jnz 0xfe4
00000FE1  E90800            jmp word 0xfec
00000FE4  9A67144702        call word 0x247:0x1467
00000FE9  E90D01            jmp word 0x10f9
00000FEC  9AE7094702        call word 0x247:0x9e7
00000FF1  BB0E00            mov bx,0xe
00000FF4  9A620F4702        call word 0x247:0xf62
00000FF9  BB0500            mov bx,0x5
00000FFC  9A7C0F4702        call word 0x247:0xf7c
00001001  9A60364702        call word 0x247:0x3660
00001006  BB840A            mov bx,0xa84
00001009  9A2C354702        call word 0x247:0x352c
0000100E  BADB03            mov dx,0x3db
00001011  33C0              xor ax,ax
00001013  EE                out dx,al
00001014  BADA03            mov dx,0x3da
00001017  EC                in al,dx
00001018  30E4              xor ah,ah
0000101A  93                xchg ax,bx
0000101B  9A892F4702        call word 0x247:0x2f89
00001020  BF6A09            mov di,0x96a
00001023  9AC50E4702        call word 0x247:0xec5
00001028  BF980A            mov di,0xa98
0000102B  BE6A09            mov si,0x96a
0000102E  9A22234702        call word 0x247:0x2322
00001033  7403              jz 0x1038
00001035  E95700            jmp word 0x108f
00001038  BB0F00            mov bx,0xf
0000103B  9A620F4702        call word 0x247:0xf62
00001040  BB0500            mov bx,0x5
00001043  9A7C0F4702        call word 0x247:0xf7c
00001048  9A60364702        call word 0x247:0x3660
0000104D  BB9C0A            mov bx,0xa9c
00001050  9A2C354702        call word 0x247:0x352c
00001055  BB1000            mov bx,0x10
00001058  9A620F4702        call word 0x247:0xf62
0000105D  BB0500            mov bx,0x5
00001060  9A7C0F4702        call word 0x247:0xf7c
00001065  9A60364702        call word 0x247:0x3660
0000106A  BBC40A            mov bx,0xac4
0000106D  9A2C354702        call word 0x247:0x352c
00001072  9A67144702        call word 0x247:0x1467
00001077  BB0100            mov bx,0x1
0000107A  BAFF7F            mov dx,0x7fff
0000107D  9AA1114702        call word 0x247:0x11a1
00001082  BA6E09            mov dx,0x96e
00001085  9A2A0E4702        call word 0x247:0xe2a
0000108A  9A8A164702        call word 0x247:0x168a
0000108F  BB0F00            mov bx,0xf
00001092  9A620F4702        call word 0x247:0xf62
00001097  BB0500            mov bx,0x5
0000109A  9A620F4702        call word 0x247:0xf62
0000109F  33DB              xor bx,bx
000010A1  9A7C0F4702        call word 0x247:0xf7c
000010A6  9A60364702        call word 0x247:0x3660
000010AB  BBE60A            mov bx,0xae6
000010AE  9A2C354702        call word 0x247:0x352c
000010B3  BB1000            mov bx,0x10
000010B6  8BD3              mov dx,bx
000010B8  8E1E9800          mov ds,[0x98]
000010BC  8A1F              mov bl,[bx]
000010BE  30FF              xor bh,bh
000010C0  06                push es
000010C1  1F                pop ds
000010C2  81E3CF00          and bx,0xcf
000010C6  0BDA              or bx,dx
000010C8  8BCB              mov cx,bx
000010CA  8BDA              mov bx,dx
000010CC  91                xchg ax,cx
000010CD  8E1E9800          mov ds,[0x98]
000010D1  8807              mov [bx],al
000010D3  06                push es
000010D4  1F                pop ds
000010D5  9A67144702        call word 0x247:0x1467
000010DA  9A700F4702        call word 0x247:0xf70
000010DF  9A700F4702        call word 0x247:0xf70
000010E4  9A700F4702        call word 0x247:0xf70
000010E9  BB0700            mov bx,0x7
000010EC  9A620F4702        call word 0x247:0xf62
000010F1  BB0700            mov bx,0x7
000010F4  9A7C0F4702        call word 0x247:0xf7c
000010F9  BB120B            mov bx,0xb12
000010FC  BA7209            mov dx,0x972
000010FF  9A2A0E4702        call word 0x247:0xe2a
00001104  BB7C0B            mov bx,0xb7c
00001107  BA7609            mov dx,0x976
0000110A  9A2A0E4702        call word 0x247:0xe2a
0000110F  BBA60B            mov bx,0xba6
00001112  BA7A09            mov dx,0x97a
00001115  9A2A0E4702        call word 0x247:0xe2a
0000111A  BBD00B            mov bx,0xbd0
0000111D  BA7E09            mov dx,0x97e
00001120  9A2A0E4702        call word 0x247:0xe2a
00001125  BB0C0C            mov bx,0xc0c
00001128  BAAA08            mov dx,0x8aa
0000112B  9A2A0E4702        call word 0x247:0xe2a
00001130  BB680C            mov bx,0xc68
00001133  BAAE08            mov dx,0x8ae
00001136  9A2A0E4702        call word 0x247:0xe2a
0000113B  9A67144702        call word 0x247:0x1467
00001140  BB0A03            mov bx,0x30a
00001143  8E1E9800          mov ds,[0x98]
00001147  8A1F              mov bl,[bx]
00001149  30FF              xor bh,bh
0000114B  06                push es
0000114C  1F                pop ds
0000114D  8BD3              mov dx,bx
0000114F  BB0B03            mov bx,0x30b
00001152  8E1E9800          mov ds,[0x98]
00001156  8A1F              mov bl,[bx]
00001158  30FF              xor bh,bh
0000115A  06                push es
0000115B  1F                pop ds
0000115C  D1E3              shl bx,1
0000115E  D1E3              shl bx,1
00001160  D1E3              shl bx,1
00001162  D1E3              shl bx,1
00001164  D1E3              shl bx,1
00001166  D1E3              shl bx,1
00001168  D1E3              shl bx,1
0000116A  D1E3              shl bx,1
0000116C  03DA              add bx,dx
0000116E  81C30202          add bx,0x202
00001172  9A892F4702        call word 0x247:0x2f89
00001177  BF7C0A            mov di,0xa7c
0000117A  9A57014702        call word 0x247:0x157
0000117F  BBB200            mov bx,0xb2
00001182  9AD6104702        call word 0x247:0x10d6
00001187  BF8209            mov di,0x982
0000118A  9AC50E4702        call word 0x247:0xec5
0000118F  33DB              xor bx,bx
00001191  9A6C144702        call word 0x247:0x146c
00001196  BB1005            mov bx,0x510
00001199  8E1E9800          mov ds,[0x98]
0000119D  8A1F              mov bl,[bx]
0000119F  30FF              xor bh,bh
000011A1  06                push es
000011A2  1F                pop ds
000011A3  9A892F4702        call word 0x247:0x2f89
000011A8  BB1105            mov bx,0x511
000011AB  8E1E9800          mov ds,[0x98]
000011AF  8A1F              mov bl,[bx]
000011B1  30FF              xor bh,bh
000011B3  06                push es
000011B4  1F                pop ds
000011B5  D1E3              shl bx,1
000011B7  D1E3              shl bx,1
000011B9  D1E3              shl bx,1
000011BB  D1E3              shl bx,1
000011BD  D1E3              shl bx,1
000011BF  D1E3              shl bx,1
000011C1  D1E3              shl bx,1
000011C3  D1E3              shl bx,1
000011C5  9AF30E4702        call word 0x247:0xef3
000011CA  819A892F4702      sbb word [bp+si+0x2f89],0x247
000011D0  9A24004702        call word 0x247:0x24
000011D5  81BF82099A1F      cmp word [bx+0x982],0x1f9a
000011DB  004702            add [bx+0x2],al
000011DE  8BDF              mov bx,di
000011E0  BF700A            mov di,0xa70
000011E3  9A1F004702        call word 0x247:0x1f
000011E8  8BFB              mov di,bx
000011EA  9AC50E4702        call word 0x247:0xec5
000011EF  BE8209            mov si,0x982
000011F2  9A85304702        call word 0x247:0x3085
000011F7  9A6C144702        call word 0x247:0x146c
000011FC  BEC40C            mov si,0xcc4
000011FF  9ADF0E4702        call word 0x247:0xedf
00001204  E92E00            jmp word 0x1235
00001207  BB8609            mov bx,0x986
0000120A  9A61294702        call word 0x247:0x2961
0000120F  BE8609            mov si,0x986
00001212  9AD12F4702        call word 0x247:0x2fd1
00001217  8BD3              mov dx,bx
00001219  BE6A09            mov si,0x96a
0000121C  9A85304702        call word 0x247:0x3085
00001221  92                xchg ax,dx
00001222  8E1E9800          mov ds,[0x98]
00001226  8807              mov [bx],al
00001228  06                push es
00001229  1F                pop ds
0000122A  BF700A            mov di,0xa70
0000122D  BE6A09            mov si,0x96a
00001230  9A2A004702        call word 0x247:0x2a
00001235  BF6A09            mov di,0x96a
00001238  9AC50E4702        call word 0x247:0xec5
0000123D  BFC80C            mov di,0xcc8
00001240  BE6A09            mov si,0x96a
00001243  9A22234702        call word 0x247:0x2322
00001248  76BD              jna 0x1207
0000124A  C7068A090000      mov word [0x98a],0x0
00001250  9A64264702        call word 0x247:0x2664
00001255  BA0200            mov dx,0x2
00001258  9ACE244702        call word 0x247:0x24ce
0000125D  9A64204702        call word 0x247:0x2064
00001262  9A64264702        call word 0x247:0x2664
00001267  8BCA              mov cx,dx
00001269  BA0400            mov dx,0x4
0000126C  9ADC244702        call word 0x247:0x24dc
00001271  9A0C0F4702        call word 0x247:0xf0c
00001276  819A64204702      sbb word [bp+si+0x2064],0x247
0000127C  BFCC0C            mov di,0xccc
0000127F  9AA6194702        call word 0x247:0x19a6
00001284  9A12184702        call word 0x247:0x1812
00001289  819AE92F4702      sbb word [bp+si+0x2fe9],0x247
0000128F  9AE6174702        call word 0x247:0x17e6
00001294  33DB              xor bx,bx
00001296  9AB70C4702        call word 0x247:0xcb7
0000129B  BB0100            mov bx,0x1
0000129E  9A9D0C4702        call word 0x247:0xc9d
000012A3  33DB              xor bx,bx
000012A5  9AB70C4702        call word 0x247:0xcb7
000012AA  33DB              xor bx,bx
000012AC  9A640A4702        call word 0x247:0xa64
000012B1  33DB              xor bx,bx
000012B3  9A7E0A4702        call word 0x247:0xa7e
000012B8  33DB              xor bx,bx
000012BA  9A480B4702        call word 0x247:0xb48
000012BF  9AE7094702        call word 0x247:0x9e7
000012C4  BB0B00            mov bx,0xb
000012C7  9A7C0F4702        call word 0x247:0xf7c
000012CC  9A60364702        call word 0x247:0x3660
000012D1  BBD40C            mov bx,0xcd4
000012D4  9A18354702        call word 0x247:0x3518
000012D9  BF8C09            mov di,0x98c
000012DC  BEF20C            mov si,0xcf2
000012DF  9AC80E4702        call word 0x247:0xec8
000012E4  BB0100            mov bx,0x1
000012E7  BAFF7F            mov dx,0x7fff
000012EA  9AA1114702        call word 0x247:0x11a1
000012EF  BAA608            mov dx,0x8a6
000012F2  9A2A0E4702        call word 0x247:0xe2a
000012F7  E880FC            call word 0xf7a
000012FA  93                xchg ax,bx
000012FB  BA6E09            mov dx,0x96e
000012FE  9A2A0E4702        call word 0x247:0xe2a
00001303  BBF60C            mov bx,0xcf6
00001306  B86E09            mov ax,0x96e
00001309  9A9A0E4702        call word 0x247:0xe9a
0000130E  BA0000            mov dx,0x0
00001311  7401              jz 0x1314
00001313  4A                dec dx
00001314  BBFC0C            mov bx,0xcfc
00001317  9A9A0E4702        call word 0x247:0xe9a
0000131C  B90000            mov cx,0x0
0000131F  7401              jz 0x1322
00001321  49                dec cx
00001322  23CA              and cx,dx
00001324  BB020D            mov bx,0xd02
00001327  9A9A0E4702        call word 0x247:0xe9a
0000132C  BA0000            mov dx,0x0
0000132F  7401              jz 0x1332
00001331  4A                dec dx
00001332  23D1              and dx,cx
00001334  BB080D            mov bx,0xd08
00001337  9A9A0E4702        call word 0x247:0xe9a
0000133C  B90000            mov cx,0x0
0000133F  7401              jz 0x1342
00001341  49                dec cx
00001342  23CA              and cx,dx
00001344  23C9              and cx,cx
00001346  759C              jnz 0x12e4
00001348  BBF60C            mov bx,0xcf6
0000134B  B86E09            mov ax,0x96e
0000134E  9A9A0E4702        call word 0x247:0xe9a
00001353  BA0000            mov dx,0x0
00001356  7501              jnz 0x1359
00001358  4A                dec dx
00001359  BB020D            mov bx,0xd02
0000135C  9A9A0E4702        call word 0x247:0xe9a
00001361  B90000            mov cx,0x0
00001364  7501              jnz 0x1367
00001366  49                dec cx
00001367  0BCA              or cx,dx
00001369  23C9              and cx,cx
0000136B  7503              jnz 0x1370
0000136D  E90B00            jmp word 0x137b
00001370  BF8C09            mov di,0x98c
00001373  BE0E0D            mov si,0xd0e
00001376  9AC80E4702        call word 0x247:0xec8
0000137B  9AE7094702        call word 0x247:0x9e7
00001380  9A60364702        call word 0x247:0x3660
00001385  BB120D            mov bx,0xd12
00001388  9A2C354702        call word 0x247:0x352c
0000138D  BB260D            mov bx,0xd26
00001390  BA9009            mov dx,0x990
00001393  9A2A0E4702        call word 0x247:0xe2a
00001398  BB300D            mov bx,0xd30
0000139B  BA9409            mov dx,0x994
0000139E  9A2A0E4702        call word 0x247:0xe2a
000013A3  BB0800            mov bx,0x8
000013A6  9A620F4702        call word 0x247:0xf62
000013AB  BB0100            mov bx,0x1
000013AE  9A7C0F4702        call word 0x247:0xf7c
000013B3  9A60364702        call word 0x247:0x3660
000013B8  BB3A0D            mov bx,0xd3a
000013BB  9A2C354702        call word 0x247:0x352c
000013C0  9A60364702        call word 0x247:0x3660
000013C5  BB4C0D            mov bx,0xd4c
000013C8  9A2C354702        call word 0x247:0x352c
000013CD  9A60364702        call word 0x247:0x3660
000013D2  BB720D            mov bx,0xd72
000013D5  9A2C354702        call word 0x247:0x352c
000013DA  9A60364702        call word 0x247:0x3660
000013DF  BB900D            mov bx,0xd90
000013E2  9A2C354702        call word 0x247:0x352c
000013E7  BFB608            mov di,0x8b6
000013EA  BEB60D            mov si,0xdb6
000013ED  9AC80E4702        call word 0x247:0xec8
000013F2  BFBA08            mov di,0x8ba
000013F5  BEBA0D            mov si,0xdba
000013F8  9AC80E4702        call word 0x247:0xec8
000013FD  BFBE08            mov di,0x8be
00001400  BEBE0D            mov si,0xdbe
00001403  9AC80E4702        call word 0x247:0xec8
00001408  BFC208            mov di,0x8c2
0000140B  BEBA0D            mov si,0xdba
0000140E  9AC80E4702        call word 0x247:0xec8
00001413  BFC608            mov di,0x8c6
00001416  BEBE0D            mov si,0xdbe
00001419  9AC80E4702        call word 0x247:0xec8
0000141E  BFCA08            mov di,0x8ca
00001421  BEC40C            mov si,0xcc4
00001424  9AC80E4702        call word 0x247:0xec8
00001429  BFCE08            mov di,0x8ce
0000142C  BEB60D            mov si,0xdb6
0000142F  9AC80E4702        call word 0x247:0xec8
00001434  BFD608            mov di,0x8d6
00001437  BEBA0D            mov si,0xdba
0000143A  9AC80E4702        call word 0x247:0xec8
0000143F  BFDA08            mov di,0x8da
00001442  BEBE0D            mov si,0xdbe
00001445  9AC80E4702        call word 0x247:0xec8
0000144A  BFDE08            mov di,0x8de
0000144D  BEC20D            mov si,0xdc2
00001450  9AC80E4702        call word 0x247:0xec8
00001455  BFE208            mov di,0x8e2
00001458  BEBA0D            mov si,0xdba
0000145B  9AC80E4702        call word 0x247:0xec8
00001460  BB0200            mov bx,0x2
00001463  9A171E4702        call word 0x247:0x1e17
00001468  BB0100            mov bx,0x1
0000146B  BAC60D            mov dx,0xdc6
0000146E  33C9              xor cx,cx
00001470  9A261E4702        call word 0x247:0x1e26
00001475  9AA11D4702        call word 0x247:0x1da1
0000147A  33DB              xor bx,bx
0000147C  9A171E4702        call word 0x247:0x1e17
00001481  BB0100            mov bx,0x1
00001484  BAC60D            mov dx,0xdc6
00001487  33C9              xor cx,cx
00001489  9A261E4702        call word 0x247:0x1e26
0000148E  BF6A09            mov di,0x96a
00001491  BED40D            mov si,0xdd4
00001494  9AC80E4702        call word 0x247:0xec8
00001499  BB0100            mov bx,0x1
0000149C  9A761D4702        call word 0x247:0x1d76
000014A1  F7D3              not bx
000014A3  23DB              and bx,bx
000014A5  7503              jnz 0x14aa
000014A7  E95600            jmp word 0x1500
000014AA  BB0100            mov bx,0x1
000014AD  9AF32C4702        call word 0x247:0x2cf3
000014B2  9AD8304702        call word 0x247:0x30d8
000014B7  0105              add [di],ax
000014B9  BE6A09            mov si,0x96a
000014BC  9AD12F4702        call word 0x247:0x2fd1
000014C1  D1E3              shl bx,1
000014C3  D1E3              shl bx,1
000014C5  81C3E608          add bx,0x8e6
000014C9  9A9F314702        call word 0x247:0x319f
000014CE  BB0100            mov bx,0x1
000014D1  9AF32C4702        call word 0x247:0x2cf3
000014D6  BE6A09            mov si,0x96a
000014D9  9AD12F4702        call word 0x247:0x2fd1
000014DE  D1E3              shl bx,1
000014E0  D1E3              shl bx,1
000014E2  81C30E09          add bx,0x90e
000014E6  9A03294702        call word 0x247:0x2903
000014EB  BF700A            mov di,0xa70
000014EE  BE6A09            mov si,0x96a
000014F1  9A2A004702        call word 0x247:0x2a
000014F6  8BFE              mov di,si
000014F8  9AC50E4702        call word 0x247:0xec5
000014FD  E999FF            jmp word 0x1499
00001500  9AA11D4702        call word 0x247:0x1da1
00001505  BF9809            mov di,0x998
00001508  BEC40C            mov si,0xcc4
0000150B  9AC80E4702        call word 0x247:0xec8
00001510  BF9C09            mov di,0x99c
00001513  BED80D            mov si,0xdd8
00001516  9AC80E4702        call word 0x247:0xec8
0000151B  9A60364702        call word 0x247:0x3660
00001520  BB740A            mov bx,0xa74
00001523  9A2C354702        call word 0x247:0x352c
00001528  9A60364702        call word 0x247:0x3660
0000152D  BB740A            mov bx,0xa74
00001530  9A2C354702        call word 0x247:0x352c
00001535  BBDC0D            mov bx,0xddc
00001538  9A2A364702        call word 0x247:0x362a
0000153D  BF700A            mov di,0xa70
00001540  BE9809            mov si,0x998
00001543  9A2A004702        call word 0x247:0x2a
00001548  BBB200            mov bx,0xb2
0000154B  9A09354702        call word 0x247:0x3509
00001550  BB740A            mov bx,0xa74
00001553  9AA72C4702        call word 0x247:0x2ca7
00001558  029AD830          add bl,[bp+si+0x30d8]
0000155C  47                inc di
0000155D  0201              add al,[bx+di]
0000155F  05BBA0            add ax,0xa0bb
00001562  099A9F31          or [bp+si+0x319f],bx
00001566  47                inc di
00001567  029A6036          add bl,[bp+si+0x3660]
0000156B  47                inc di
0000156C  02BB740A          add bh,[bp+di+0xa74]
00001570  9A2C354702        call word 0x247:0x352c
00001575  BBFE0D            mov bx,0xdfe
00001578  9A2A364702        call word 0x247:0x362a
0000157D  BB9C09            mov bx,0x99c
00001580  9A09354702        call word 0x247:0x3509
00001585  BB740A            mov bx,0xa74
00001588  9AA72C4702        call word 0x247:0x2ca7
0000158D  029AD830          add bl,[bp+si+0x30d8]
00001591  47                inc di
00001592  0201              add al,[bx+di]
00001594  05BBA4            add ax,0xa4bb
00001597  099A9F31          or [bp+si+0x319f],bx
0000159B  47                inc di
0000159C  02BEA409          add bh,[bp+0x9a4]
000015A0  9A42104702        call word 0x247:0x1042
000015A5  BB0000            mov bx,0x0
000015A8  7301              jnc 0x15ab
000015AA  4B                dec bx
000015AB  BF200E            mov di,0xe20
000015AE  9A22234702        call word 0x247:0x2322
000015B3  BA0000            mov dx,0x0
000015B6  7601              jna 0x15b9
000015B8  4A                dec dx
000015B9  0BD3              or dx,bx
000015BB  23D2              and dx,dx
000015BD  7503              jnz 0x15c2
000015BF  E90E00            jmp word 0x15d0
000015C2  BFA409            mov di,0x9a4
000015C5  BE240E            mov si,0xe24
000015C8  9AC80E4702        call word 0x247:0xec8
000015CD  E91800            jmp word 0x15e8
000015D0  BEA409            mov si,0x9a4
000015D3  9A42104702        call word 0x247:0x1042
000015D8  7403              jz 0x15dd
000015DA  E90B00            jmp word 0x15e8
000015DD  BFA409            mov di,0x9a4
000015E0  BE9C09            mov si,0x99c
000015E3  9AC80E4702        call word 0x247:0xec8
000015E8  BF700A            mov di,0xa70
000015EB  BEA009            mov si,0x9a0
000015EE  9A22234702        call word 0x247:0x2322
000015F3  BB0000            mov bx,0x0
000015F6  7301              jnc 0x15f9
000015F8  4B                dec bx
000015F9  BF280E            mov di,0xe28
000015FC  9A22234702        call word 0x247:0x2322
00001601  BA0000            mov dx,0x0
00001604  7601              jna 0x1607
00001606  4A                dec dx
00001607  0BD3              or dx,bx
00001609  23D2              and dx,dx
0000160B  7503              jnz 0x1610
0000160D  E90E00            jmp word 0x161e
00001610  BFA009            mov di,0x9a0
00001613  BE9809            mov si,0x998
00001616  9AC80E4702        call word 0x247:0xec8
0000161B  E91200            jmp word 0x1630
0000161E  BF0E0D            mov di,0xd0e
00001621  BEA009            mov si,0x9a0
00001624  9A2A004702        call word 0x247:0x2a
00001629  8BFE              mov di,si
0000162B  9AC50E4702        call word 0x247:0xec5
00001630  BF9C09            mov di,0x99c
00001633  BEA409            mov si,0x9a4
00001636  9AC80E4702        call word 0x247:0xec8
0000163B  BF9809            mov di,0x998
0000163E  BEA009            mov si,0x9a0
00001641  9AC80E4702        call word 0x247:0xec8
00001646  9AE7094702        call word 0x247:0x9e7
0000164B  33DB              xor bx,bx
0000164D  8BD3              mov dx,bx
0000164F  9A4B2A4702        call word 0x247:0x2a4b
00001654  BBFF00            mov bx,0xff
00001657  BA2100            mov dx,0x21
0000165A  B90100            mov cx,0x1
0000165D  9A932A4702        call word 0x247:0x2a93
00001662  9A54234702        call word 0x247:0x2354
00001667  1A1EBB0A          sbb bl,[0xabb]
0000166B  0133              add [bp+di],si
0000166D  D29A4B2A          rcr byte [bp+si+0x2a4b],cl
00001671  47                inc di
00001672  02BB3F01          add bh,[bp+di+0x13f]
00001676  BAB100            mov dx,0xb1
00001679  B90100            mov cx,0x1
0000167C  9A5A2A4702        call word 0x247:0x2a5a
00001681  BB0B01            mov bx,0x10b
00001684  BA0100            mov dx,0x1
00001687  9A4B2A4702        call word 0x247:0x2a4b
0000168C  BB3E01            mov bx,0x13e
0000168F  BAB000            mov dx,0xb0
00001692  B90100            mov cx,0x1
00001695  9A5A2A4702        call word 0x247:0x2a5a
0000169A  33DB              xor bx,bx
0000169C  BA5F00            mov dx,0x5f
0000169F  9A4B2A4702        call word 0x247:0x2a4b
000016A4  BBFF00            mov bx,0xff
000016A7  BA6900            mov dx,0x69
000016AA  B9FFFF            mov cx,0xffff
000016AD  9A932A4702        call word 0x247:0x2a93
000016B2  33DB              xor bx,bx
000016B4  BAA700            mov dx,0xa7
000016B7  9A4B2A4702        call word 0x247:0x2a4b
000016BC  BBFF00            mov bx,0xff
000016BF  BAB100            mov dx,0xb1
000016C2  B9FFFF            mov cx,0xffff
000016C5  9A932A4702        call word 0x247:0x2a93
000016CA  BFA809            mov di,0x9a8
000016CD  BED40D            mov si,0xdd4
000016D0  9AC80E4702        call word 0x247:0xec8
000016D5  BFAC09            mov di,0x9ac
000016D8  BE2C0E            mov si,0xe2c
000016DB  9AC80E4702        call word 0x247:0xec8
000016E0  BFB009            mov di,0x9b0
000016E3  BE2C0E            mov si,0xe2c
000016E6  9AC80E4702        call word 0x247:0xec8
000016EB  BFB409            mov di,0x9b4
000016EE  BE700A            mov si,0xa70
000016F1  9AC80E4702        call word 0x247:0xec8
000016F6  BB1800            mov bx,0x18
000016F9  9A7C0F4702        call word 0x247:0xf7c
000016FE  9A60364702        call word 0x247:0x3660
00001703  BB0500            mov bx,0x5
00001706  9AD7294702        call word 0x247:0x29d7
0000170B  BB300E            mov bx,0xe30
0000170E  9A18354702        call word 0x247:0x3518
00001713  BB0900            mov bx,0x9
00001716  9AD7294702        call word 0x247:0x29d7
0000171B  BB3C0E            mov bx,0xe3c
0000171E  9A18354702        call word 0x247:0x3518
00001723  BEC40C            mov si,0xcc4
00001726  9ADF0E4702        call word 0x247:0xedf
0000172B  E93800            jmp word 0x1766
0000172E  BF460E            mov di,0xe46
00001731  BEB809            mov si,0x9b8
00001734  9A62014702        call word 0x247:0x162
00001739  BF4A0E            mov di,0xe4a
0000173C  9A1F004702        call word 0x247:0x1f
00001741  9A1C304702        call word 0x247:0x301c
00001746  8BD3              mov dx,bx
00001748  BB2301            mov bx,0x123
0000174B  B9FFFF            mov cx,0xffff
0000174E  9AD92A4702        call word 0x247:0x2ad9
00001753  BB7209            mov bx,0x972
00001756  9A7A334702        call word 0x247:0x337a
0000175B  BF700A            mov di,0xa70
0000175E  BEB809            mov si,0x9b8
00001761  9A2A004702        call word 0x247:0x2a
00001766  BFB809            mov di,0x9b8
00001769  9AC50E4702        call word 0x247:0xec5
0000176E  BF800A            mov di,0xa80
00001771  BEB809            mov si,0x9b8
00001774  9A22234702        call word 0x247:0x2322
00001779  76B3              jna 0x172e
0000177B  BF4E0E            mov di,0xe4e
0000177E  BEA009            mov si,0x9a0
00001781  9A62014702        call word 0x247:0x162
00001786  BFA809            mov di,0x9a8
00001789  9AC50E4702        call word 0x247:0xec5
0000178E  BFBC09            mov di,0x9bc
00001791  BEA009            mov si,0x9a0
00001794  9AC80E4702        call word 0x247:0xec8
00001799  BE700A            mov si,0xa70
0000179C  9ADF0E4702        call word 0x247:0xedf
000017A1  E9A100            jmp word 0x1845
000017A4  BE700A            mov si,0xa70
000017A7  9ADF0E4702        call word 0x247:0xedf
000017AC  E92F00            jmp word 0x17de
000017AF  BFC009            mov di,0x9c0
000017B2  BE520E            mov si,0xe52
000017B5  9AC80E4702        call word 0x247:0xec8
000017BA  9A54234702        call word 0x247:0x2354
000017BF  E61D              out 0x1d,al
000017C1  BF700A            mov di,0xa70
000017C4  BEC409            mov si,0x9c4
000017C7  9A2A004702        call word 0x247:0x2a
000017CC  8BFE              mov di,si
000017CE  9AC50E4702        call word 0x247:0xec5
000017D3  BF700A            mov di,0xa70
000017D6  BEC809            mov si,0x9c8
000017D9  9A2A004702        call word 0x247:0x2a
000017DE  BFC809            mov di,0x9c8
000017E1  9AC50E4702        call word 0x247:0xec5
000017E6  BF2C0E            mov di,0xe2c
000017E9  BEC809            mov si,0x9c8
000017EC  9A22234702        call word 0x247:0x2322
000017F1  76BC              jna 0x17af
000017F3  BFC009            mov di,0x9c0
000017F6  BE560E            mov si,0xe56
000017F9  9AC80E4702        call word 0x247:0xec8
000017FE  9A54234702        call word 0x247:0x2354
00001803  E61D              out 0x1d,al
00001805  BF280E            mov di,0xe28
00001808  BEB409            mov si,0x9b4
0000180B  9A22234702        call word 0x247:0x2322
00001810  BB0000            mov bx,0x0
00001813  7501              jnz 0x1816
00001815  4B                dec bx
00001816  9A892F4702        call word 0x247:0x2f89
0000181B  8BFE              mov di,si
0000181D  9A1F004702        call word 0x247:0x1f
00001822  8BDF              mov bx,di
00001824  BF700A            mov di,0xa70
00001827  9A1F004702        call word 0x247:0x1f
0000182C  8BFB              mov di,bx
0000182E  9AC50E4702        call word 0x247:0xec5
00001833  9A54234702        call word 0x247:0x2354
00001838  1A1EBF70          sbb bl,[0x70bf]
0000183C  0ABECC09          or bh,[bp+0x9cc]
00001840  9A2A004702        call word 0x247:0x2a
00001845  BFCC09            mov di,0x9cc
00001848  9AC50E4702        call word 0x247:0xec5
0000184D  BFBC09            mov di,0x9bc
00001850  BECC09            mov si,0x9cc
00001853  9A22234702        call word 0x247:0x2322
00001858  7703              ja 0x185d
0000185A  E947FF            jmp word 0x17a4
0000185D  BFC409            mov di,0x9c4
00001860  BEC40C            mov si,0xcc4
00001863  9AC80E4702        call word 0x247:0xec8
00001868  BF700A            mov di,0xa70
0000186B  BEB409            mov si,0x9b4
0000186E  9A22234702        call word 0x247:0x2322
00001873  BB0000            mov bx,0x0
00001876  7601              jna 0x1879
00001878  4B                dec bx
00001879  BF280E            mov di,0xe28
0000187C  9A22234702        call word 0x247:0x2322
00001881  BA0000            mov dx,0x0
00001884  7501              jnz 0x1887
00001886  4A                dec dx
00001887  03D3              add dx,bx
00001889  42                inc dx
0000188A  42                inc dx
0000188B  42                inc dx
0000188C  42                inc dx
0000188D  8BDA              mov bx,dx
0000188F  9A892F4702        call word 0x247:0x2f89
00001894  BFD009            mov di,0x9d0
00001897  9AC50E4702        call word 0x247:0xec5
0000189C  BF280E            mov di,0xe28
0000189F  BEB409            mov si,0x9b4
000018A2  9A22234702        call word 0x247:0x2322
000018A7  BB0000            mov bx,0x0
000018AA  7501              jnz 0x18ad
000018AC  4B                dec bx
000018AD  9A892F4702        call word 0x247:0x2f89
000018B2  8BDE              mov bx,si
000018B4  8BF7              mov si,di
000018B6  9A12004702        call word 0x247:0x12
000018BB  8BFB              mov di,bx
000018BD  9A0A004702        call word 0x247:0xa
000018C2  BFD409            mov di,0x9d4
000018C5  9AC50E4702        call word 0x247:0xec5
000018CA  BE5A0E            mov si,0xe5a
000018CD  9ADF0E4702        call word 0x247:0xedf
000018D2  E9EB02            jmp word 0x1bc0
000018D5  BF5A0E            mov di,0xe5a
000018D8  BEB809            mov si,0x9b8
000018DB  9A22234702        call word 0x247:0x2322
000018E0  BB0000            mov bx,0x0
000018E3  7501              jnz 0x18e6
000018E5  4B                dec bx
000018E6  BF5E0E            mov di,0xe5e
000018E9  9A22234702        call word 0x247:0x2322
000018EE  BA0000            mov dx,0x0
000018F1  7501              jnz 0x18f4
000018F3  4A                dec dx
000018F4  0BD3              or dx,bx
000018F6  BF620E            mov di,0xe62
000018F9  9A22234702        call word 0x247:0x2322
000018FE  BB0000            mov bx,0x0
00001901  7501              jnz 0x1904
00001903  4B                dec bx
00001904  0BDA              or bx,dx
00001906  23DB              and bx,bx
00001908  7503              jnz 0x190d
0000190A  E93501            jmp word 0x1a42
0000190D  BFD009            mov di,0x9d0
00001910  BE660E            mov si,0xe66
00001913  9AE2014702        call word 0x247:0x1e2
00001918  BBB200            mov bx,0xb2
0000191B  9AD6104702        call word 0x247:0x10d6
00001920  BF6A0E            mov di,0xe6a
00001923  9A57014702        call word 0x247:0x157
00001928  BF6E0E            mov di,0xe6e
0000192B  9A1F004702        call word 0x247:0x1f
00001930  BBB200            mov bx,0xb2
00001933  9AD6104702        call word 0x247:0x10d6
00001938  9A8E104702        call word 0x247:0x108e
0000193D  03BFD809          add di,[bx+0x9d8]
00001941  9AC50E4702        call word 0x247:0xec5
00001946  BF720E            mov di,0xe72
00001949  BED009            mov si,0x9d0
0000194C  9A22234702        call word 0x247:0x2322
00001951  B80000            mov ax,0x0
00001954  7501              jnz 0x1957
00001956  48                dec ax
00001957  BB3900            mov bx,0x39
0000195A  F7EB              imul bx
0000195C  053200            add ax,0x32
0000195F  93                xchg ax,bx
00001960  9A892F4702        call word 0x247:0x2f89
00001965  BFDC09            mov di,0x9dc
00001968  9AC50E4702        call word 0x247:0xec5
0000196D  BF0E0D            mov di,0xd0e
00001970  BED009            mov si,0x9d0
00001973  9A2A004702        call word 0x247:0x2a
00001978  BFD809            mov di,0x9d8
0000197B  9A57014702        call word 0x247:0x157
00001980  BFDC09            mov di,0x9dc
00001983  9A1F004702        call word 0x247:0x1f
00001988  BFE009            mov di,0x9e0
0000198B  9AC50E4702        call word 0x247:0xec5
00001990  BFE409            mov di,0x9e4
00001993  BED809            mov si,0x9d8
00001996  9AC80E4702        call word 0x247:0xec8
0000199B  BEDC09            mov si,0x9dc
0000199E  9ADF0E4702        call word 0x247:0xedf
000019A3  E96100            jmp word 0x1a07
000019A6  BEB809            mov si,0x9b8
000019A9  9AD12F4702        call word 0x247:0x2fd1
000019AE  8BD3              mov dx,bx
000019B0  BE6A09            mov si,0x96a
000019B3  9AD12F4702        call word 0x247:0x2fd1
000019B8  B9FFFF            mov cx,0xffff
000019BB  9AD92A4702        call word 0x247:0x2ad9
000019C0  BB7A09            mov bx,0x97a
000019C3  9A7A334702        call word 0x247:0x337a
000019C8  BF2C0E            mov di,0xe2c
000019CB  BEB809            mov si,0x9b8
000019CE  9A2A004702        call word 0x247:0x2a
000019D3  9A1C304702        call word 0x247:0x301c
000019D8  BF760E            mov di,0xe76
000019DB  BE6A09            mov si,0x96a
000019DE  9A2A004702        call word 0x247:0x2a
000019E3  8BD3              mov dx,bx
000019E5  9A1C304702        call word 0x247:0x301c
000019EA  B90200            mov cx,0x2
000019ED  8BC1              mov ax,cx
000019EF  9AF2314702        call word 0x247:0x31f2
000019F4  BB7E09            mov bx,0x97e
000019F7  9A7A334702        call word 0x247:0x337a
000019FC  BFE409            mov di,0x9e4
000019FF  BE6A09            mov si,0x96a
00001A02  9A2A004702        call word 0x247:0x2a
00001A07  BF6A09            mov di,0x96a
00001A0A  9AC50E4702        call word 0x247:0xec5
00001A0F  BEE409            mov si,0x9e4
00001A12  9A42104702        call word 0x247:0x1042
00001A17  7203              jc 0x1a1c
00001A19  E91300            jmp word 0x1a2f
00001A1C  BFE009            mov di,0x9e0
00001A1F  BE6A09            mov si,0x96a
00001A22  9A22234702        call word 0x247:0x2322
00001A27  7203              jc 0x1a2c
00001A29  E97AFF            jmp word 0x19a6
00001A2C  E91000            jmp word 0x1a3f
00001A2F  BFE009            mov di,0x9e0
00001A32  BE6A09            mov si,0x96a
00001A35  9A22234702        call word 0x247:0x2322
00001A3A  7703              ja 0x1a3f
00001A3C  E967FF            jmp word 0x19a6
00001A3F  E97301            jmp word 0x1bb5
00001A42  BFD409            mov di,0x9d4
00001A45  BE7A0E            mov si,0xe7a
00001A48  9AE2014702        call word 0x247:0x1e2
00001A4D  BBB200            mov bx,0xb2
00001A50  9AD6104702        call word 0x247:0x10d6
00001A55  BF6A0E            mov di,0xe6a
00001A58  9A57014702        call word 0x247:0x157
00001A5D  BF6E0E            mov di,0xe6e
00001A60  9A1F004702        call word 0x247:0x1f
00001A65  BBB200            mov bx,0xb2
00001A68  9AD6104702        call word 0x247:0x10d6
00001A6D  9A8E104702        call word 0x247:0x108e
00001A72  03BFD809          add di,[bx+0x9d8]
00001A76  9AC50E4702        call word 0x247:0xec5
00001A7B  BF700A            mov di,0xa70
00001A7E  BED409            mov si,0x9d4
00001A81  9A22234702        call word 0x247:0x2322
00001A86  B80000            mov ax,0x0
00001A89  7501              jnz 0x1a8c
00001A8B  48                dec ax
00001A8C  BB7000            mov bx,0x70
00001A8F  F7EB              imul bx
00001A91  BF720E            mov di,0xe72
00001A94  9A22234702        call word 0x247:0x2322
00001A99  BB0000            mov bx,0x0
00001A9C  7501              jnz 0x1a9f
00001A9E  4B                dec bx
00001A9F  93                xchg ax,bx
00001AA0  BAC8FF            mov dx,0xffc8
00001AA3  F7EA              imul dx
00001AA5  2BC3              sub ax,bx
00001AA7  050800            add ax,0x8
00001AAA  93                xchg ax,bx
00001AAB  9A892F4702        call word 0x247:0x2f89
00001AB0  BFDC09            mov di,0x9dc
00001AB3  9AC50E4702        call word 0x247:0xec5
00001AB8  BF0E0D            mov di,0xd0e
00001ABB  BED409            mov si,0x9d4
00001ABE  9A2A004702        call word 0x247:0x2a
00001AC3  BFD809            mov di,0x9d8
00001AC6  9A57014702        call word 0x247:0x157
00001ACB  BFDC09            mov di,0x9dc
00001ACE  9A1F004702        call word 0x247:0x1f
00001AD3  BFE809            mov di,0x9e8
00001AD6  9AC50E4702        call word 0x247:0xec5
00001ADB  BFEC09            mov di,0x9ec
00001ADE  BED809            mov si,0x9d8
00001AE1  9AC80E4702        call word 0x247:0xec8
00001AE6  BEDC09            mov si,0x9dc
00001AE9  9ADF0E4702        call word 0x247:0xedf
00001AEE  E98C00            jmp word 0x1b7d
00001AF1  BE7E0E            mov si,0xe7e
00001AF4  9ADF0E4702        call word 0x247:0xedf
00001AF9  E96100            jmp word 0x1b5d
00001AFC  BEB809            mov si,0x9b8
00001AFF  9AD12F4702        call word 0x247:0x2fd1
00001B04  BFF009            mov di,0x9f0
00001B07  BE6A09            mov si,0x96a
00001B0A  9A2A004702        call word 0x247:0x2a
00001B0F  8BD3              mov dx,bx
00001B11  9A1C304702        call word 0x247:0x301c
00001B16  B9FFFF            mov cx,0xffff
00001B19  9AD92A4702        call word 0x247:0x2ad9
00001B1E  BB7609            mov bx,0x976
00001B21  9A7A334702        call word 0x247:0x337a
00001B26  BF800A            mov di,0xa80
00001B29  BEB809            mov si,0x9b8
00001B2C  9A2A004702        call word 0x247:0x2a
00001B31  9A1C304702        call word 0x247:0x301c
00001B36  BFF009            mov di,0x9f0
00001B39  BE6A09            mov si,0x96a
00001B3C  9A2A004702        call word 0x247:0x2a
00001B41  8BD3              mov dx,bx
00001B43  9A1C304702        call word 0x247:0x301c
00001B48  B90300            mov cx,0x3
00001B4B  8BC1              mov ax,cx
00001B4D  9AF2314702        call word 0x247:0x31f2
00001B52  BFBE0D            mov di,0xdbe
00001B55  BEF009            mov si,0x9f0
00001B58  9A2A004702        call word 0x247:0x2a
00001B5D  BFF009            mov di,0x9f0
00001B60  9AC50E4702        call word 0x247:0xec5
00001B65  BF820E            mov di,0xe82
00001B68  BEF009            mov si,0x9f0
00001B6B  9A22234702        call word 0x247:0x2322
00001B70  768A              jna 0x1afc
00001B72  BFEC09            mov di,0x9ec
00001B75  BE6A09            mov si,0x96a
00001B78  9A2A004702        call word 0x247:0x2a
00001B7D  BF6A09            mov di,0x96a
00001B80  9AC50E4702        call word 0x247:0xec5
00001B85  BEEC09            mov si,0x9ec
00001B88  9A42104702        call word 0x247:0x1042
00001B8D  7203              jc 0x1b92
00001B8F  E91300            jmp word 0x1ba5
00001B92  BFE809            mov di,0x9e8
00001B95  BE6A09            mov si,0x96a
00001B98  9A22234702        call word 0x247:0x2322
00001B9D  7203              jc 0x1ba2
00001B9F  E94FFF            jmp word 0x1af1
00001BA2  E91000            jmp word 0x1bb5
00001BA5  BFE809            mov di,0x9e8
00001BA8  BE6A09            mov si,0x96a
00001BAB  9A22234702        call word 0x247:0x2322
00001BB0  7703              ja 0x1bb5
00001BB2  E93CFF            jmp word 0x1af1
00001BB5  BF860E            mov di,0xe86
00001BB8  BEB809            mov si,0x9b8
00001BBB  9A2A004702        call word 0x247:0x2a
00001BC0  BFB809            mov di,0x9b8
00001BC3  9AC50E4702        call word 0x247:0xec5
00001BC8  BF8A0E            mov di,0xe8a
00001BCB  BEB809            mov si,0x9b8
00001BCE  9A22234702        call word 0x247:0x2322
00001BD3  7703              ja 0x1bd8
00001BD5  E9FDFC            jmp word 0x18d5
00001BD8  BEB60D            mov si,0xdb6
00001BDB  9ADF0E4702        call word 0x247:0xedf
00001BE0  E92901            jmp word 0x1d0c
00001BE3  BB700A            mov bx,0xa70
00001BE6  9A64174702        call word 0x247:0x1764
00001BEB  BF8E0E            mov di,0xe8e
00001BEE  BEB409            mov si,0x9b4
00001BF1  9AF30E4702        call word 0x247:0xef3
00001BF6  819A62014702      sbb word [bp+si+0x162],0x247
00001BFC  BE920E            mov si,0xe92
00001BFF  9A12004702        call word 0x247:0x12
00001C04  9A5C014702        call word 0x247:0x15c
00001C09  81BBB2009AD6      cmp word [bp+di+0xb2],0xd69a
00001C0F  104702            adc [bx+0x2],al
00001C12  BF4A0E            mov di,0xe4a
00001C15  9A1F004702        call word 0x247:0x1f
00001C1A  BFF409            mov di,0x9f4
00001C1D  9AC50E4702        call word 0x247:0xec5
00001C22  BF860E            mov di,0xe86
00001C25  BEB809            mov si,0x9b8
00001C28  9A62014702        call word 0x247:0x162
00001C2D  BF960E            mov di,0xe96
00001C30  9A1F004702        call word 0x247:0x1f
00001C35  9A1C304702        call word 0x247:0x301c
00001C3A  8BD3              mov dx,bx
00001C3C  BEF409            mov si,0x9f4
00001C3F  9AD12F4702        call word 0x247:0x2fd1
00001C44  B9FFFF            mov cx,0xffff
00001C47  9AD92A4702        call word 0x247:0x2ad9
00001C4C  BEB809            mov si,0x9b8
00001C4F  9AD12F4702        call word 0x247:0x2fd1
00001C54  8BF3              mov si,bx
00001C56  D1E6              shl si,1
00001C58  D1E6              shl si,1
00001C5A  81C6B208          add si,0x8b2
00001C5E  9A1A104702        call word 0x247:0x101a
00001C63  9A54104702        call word 0x247:0x1054
00001C68  BB0000            mov bx,0x0
00001C6B  7301              jnc 0x1c6e
00001C6D  4B                dec bx
00001C6E  F7DB              neg bx
00001C70  9A892F4702        call word 0x247:0x2f89
00001C75  BFF809            mov di,0x9f8
00001C78  9AC50E4702        call word 0x247:0xec5
00001C7D  BFFC09            mov di,0x9fc
00001C80  BEB409            mov si,0x9b4
00001C83  9AC80E4702        call word 0x247:0xec8
00001C88  BEC40C            mov si,0xcc4
00001C8B  9ADF0E4702        call word 0x247:0xedf
00001C90  E95900            jmp word 0x1cec
00001C93  BB700A            mov bx,0xa70
00001C96  9A64174702        call word 0x247:0x1764
00001C9B  BF800A            mov di,0xa80
00001C9E  9A57014702        call word 0x247:0x157
00001CA3  8BD3              mov dx,bx
00001CA5  BBB200            mov bx,0xb2
00001CA8  9AD6104702        call word 0x247:0x10d6
00001CAD  8BFA              mov di,dx
00001CAF  9A1F004702        call word 0x247:0x1f
00001CB4  BBB200            mov bx,0xb2
00001CB7  9AD12B4702        call word 0x247:0x2bd1
00001CBC  B89A0E            mov ax,0xe9a
00001CBF  9A600E4702        call word 0x247:0xe60
00001CC4  8BD3              mov dx,bx
00001CC6  BEF809            mov si,0x9f8
00001CC9  9AD12F4702        call word 0x247:0x2fd1
00001CCE  D1E3              shl bx,1
00001CD0  D1E3              shl bx,1
00001CD2  81C3AA08          add bx,0x8aa
00001CD6  92                xchg ax,dx
00001CD7  9A600E4702        call word 0x247:0xe60
00001CDC  9A7A334702        call word 0x247:0x337a
00001CE1  BF700A            mov di,0xa70
00001CE4  BE6A09            mov si,0x96a
00001CE7  9A2A004702        call word 0x247:0x2a
00001CEC  BF6A09            mov di,0x96a
00001CEF  9AC50E4702        call word 0x247:0xec5
00001CF4  BFFC09            mov di,0x9fc
00001CF7  BE6A09            mov si,0x96a
00001CFA  9A22234702        call word 0x247:0x2322
00001CFF  7692              jna 0x1c93
00001D01  BF700A            mov di,0xa70
00001D04  BEB809            mov si,0x9b8
00001D07  9A2A004702        call word 0x247:0x2a
00001D0C  BFB809            mov di,0x9b8
00001D0F  9AC50E4702        call word 0x247:0xec5
00001D14  BF860E            mov di,0xe86
00001D17  BEB809            mov si,0x9b8
00001D1A  9A22234702        call word 0x247:0x2322
00001D1F  7703              ja 0x1d24
00001D21  E9BFFE            jmp word 0x1be3
00001D24  33DB              xor bx,bx
00001D26  9A6C144702        call word 0x247:0x146c
00001D2B  BB1C04            mov bx,0x41c
00001D2E  8E1E9800          mov ds,[0x98]
00001D32  8A1F              mov bl,[bx]
00001D34  30FF              xor bh,bh
00001D36  06                push es
00001D37  1F                pop ds
00001D38  93                xchg ax,bx
00001D39  BB1A04            mov bx,0x41a
00001D3C  8E1E9800          mov ds,[0x98]
00001D40  8807              mov [bx],al
00001D42  06                push es
00001D43  1F                pop ds
00001D44  BE700A            mov si,0xa70
00001D47  9ADF0E4702        call word 0x247:0xedf
00001D4C  E90B00            jmp word 0x1d5a
00001D4F  BF700A            mov di,0xa70
00001D52  BEF009            mov si,0x9f0
00001D55  9A2A004702        call word 0x247:0x2a
00001D5A  BFF009            mov di,0x9f0
00001D5D  9AC50E4702        call word 0x247:0xec5
00001D62  BFD80D            mov di,0xdd8
00001D65  BEF009            mov si,0x9f0
00001D68  9A22234702        call word 0x247:0x2322
00001D6D  76E0              jna 0x1d4f
00001D6F  BB1800            mov bx,0x18
00001D72  9A620F4702        call word 0x247:0xf62
00001D77  BB1D00            mov bx,0x1d
00001D7A  9A7C0F4702        call word 0x247:0xf7c
00001D7F  9A60364702        call word 0x247:0x3660
00001D84  BBA00E            mov bx,0xea0
00001D87  9A18354702        call word 0x247:0x3518
00001D8C  BF000A            mov di,0xa00
00001D8F  BEA60E            mov si,0xea6
00001D92  9AC80E4702        call word 0x247:0xec8
00001D97  BF040A            mov di,0xa04
00001D9A  BE860E            mov si,0xe86
00001D9D  9AC80E4702        call word 0x247:0xec8
00001DA2  BF080A            mov di,0xa08
00001DA5  BEAA0E            mov si,0xeaa
00001DA8  9AC80E4702        call word 0x247:0xec8
00001DAD  BF860E            mov di,0xe86
00001DB0  BE040A            mov si,0xa04
00001DB3  9A62014702        call word 0x247:0x162
00001DB8  BFAE0E            mov di,0xeae
00001DBB  9A1F004702        call word 0x247:0x1f
00001DC0  BF0C0A            mov di,0xa0c
00001DC3  9AC50E4702        call word 0x247:0xec5
00001DC8  BE0C0A            mov si,0xa0c
00001DCB  9AD12F4702        call word 0x247:0x2fd1
00001DD0  8BD3              mov dx,bx
00001DD2  BE000A            mov si,0xa00
00001DD5  9AD12F4702        call word 0x247:0x2fd1
00001DDA  9A182B4702        call word 0x247:0x2b18
00001DDF  BF780A            mov di,0xa78
00001DE2  BE0C0A            mov si,0xa0c
00001DE5  9A2A004702        call word 0x247:0x2a
00001DEA  9A1C304702        call word 0x247:0x301c
00001DEF  BFB20E            mov di,0xeb2
00001DF2  BE000A            mov si,0xa00
00001DF5  9A2A004702        call word 0x247:0x2a
00001DFA  8BD3              mov dx,bx
00001DFC  9A1C304702        call word 0x247:0x301c
00001E01  9A1E2B4702        call word 0x247:0x2b1e
00001E06  BB3609            mov bx,0x936
00001E09  BA3000            mov dx,0x30
00001E0C  9A242B4702        call word 0x247:0x2b24
00001E11  BE0C0A            mov si,0xa0c
00001E14  9AD12F4702        call word 0x247:0x2fd1
00001E19  BF7E0E            mov di,0xe7e
00001E1C  BE000A            mov si,0xa00
00001E1F  9A2A004702        call word 0x247:0x2a
00001E24  8BD3              mov dx,bx
00001E26  9A1C304702        call word 0x247:0x301c
00001E2B  B9FFFF            mov cx,0xffff
00001E2E  9AD92A4702        call word 0x247:0x2ad9
00001E33  BB7209            mov bx,0x972
00001E36  9A7A334702        call word 0x247:0x337a
00001E3B  BF7E0E            mov di,0xe7e
00001E3E  BE040A            mov si,0xa04
00001E41  9A22234702        call word 0x247:0x2322
00001E46  BB0000            mov bx,0x0
00001E49  7601              jna 0x1e4c
00001E4B  4B                dec bx
00001E4C  BF860E            mov di,0xe86
00001E4F  9A22234702        call word 0x247:0x2322
00001E54  BA0000            mov dx,0x0
00001E57  7301              jnc 0x1e5a
00001E59  4A                dec dx
00001E5A  23D3              and dx,bx
00001E5C  23D2              and dx,dx
00001E5E  7503              jnz 0x1e63
00001E60  E94200            jmp word 0x1ea5
00001E63  BE720E            mov si,0xe72
00001E66  9ADF0E4702        call word 0x247:0xedf
00001E6B  E92200            jmp word 0x1e90
00001E6E  BE6A09            mov si,0x96a
00001E71  9AD12F4702        call word 0x247:0x2fd1
00001E76  8BFB              mov di,bx
00001E78  D1E7              shl di,1
00001E7A  8B9D3609          mov bx,[di+0x936]
00001E7E  23DB              and bx,bx
00001E80  7403              jz 0x1e85
00001E82  E9D907            jmp word 0x265e
00001E85  BF700A            mov di,0xa70
00001E88  BE6A09            mov si,0x96a
00001E8B  9A2A004702        call word 0x247:0x2a
00001E90  BF6A09            mov di,0x96a
00001E93  9AC50E4702        call word 0x247:0xec5
00001E98  BFAE0E            mov di,0xeae
00001E9B  BE6A09            mov si,0x96a
00001E9E  9A22234702        call word 0x247:0x2322
00001EA3  76C9              jna 0x1e6e
00001EA5  BF7E0E            mov di,0xe7e
00001EA8  BE040A            mov si,0xa04
00001EAB  9A22234702        call word 0x247:0x2322
00001EB0  7203              jc 0x1eb5
00001EB2  E9EA00            jmp word 0x1f9f
00001EB5  BF100A            mov di,0xa10
00001EB8  BEB60E            mov si,0xeb6
00001EBB  9AC80E4702        call word 0x247:0xec8
00001EC0  BE720E            mov si,0xe72
00001EC3  9ADF0E4702        call word 0x247:0xedf
00001EC8  E93600            jmp word 0x1f01
00001ECB  BE6A09            mov si,0x96a
00001ECE  9AD12F4702        call word 0x247:0x2fd1
00001ED3  8BFB              mov di,bx
00001ED5  D1E7              shl di,1
00001ED7  83BD360900        cmp word [di+0x936],byte +0x0
00001EDC  BB0000            mov bx,0x0
00001EDF  7401              jz 0x1ee2
00001EE1  4B                dec bx
00001EE2  9A892F4702        call word 0x247:0x2f89
00001EE7  BE100A            mov si,0xa10
00001EEA  9A12004702        call word 0x247:0x12
00001EEF  8BFE              mov di,si
00001EF1  9AC50E4702        call word 0x247:0xec5
00001EF6  BF720E            mov di,0xe72
00001EF9  BE6A09            mov si,0x96a
00001EFC  9A2A004702        call word 0x247:0x2a
00001F01  BF6A09            mov di,0x96a
00001F04  9AC50E4702        call word 0x247:0xec5
00001F09  BFBA0E            mov di,0xeba
00001F0C  BE6A09            mov si,0x96a
00001F0F  9A22234702        call word 0x247:0x2322
00001F14  76B5              jna 0x1ecb
00001F16  BF140A            mov di,0xa14
00001F19  BEC40C            mov si,0xcc4
00001F1C  9AC80E4702        call word 0x247:0xec8
00001F21  BE800A            mov si,0xa80
00001F24  9ADF0E4702        call word 0x247:0xedf
00001F29  E93600            jmp word 0x1f62
00001F2C  BE6A09            mov si,0x96a
00001F2F  9AD12F4702        call word 0x247:0x2fd1
00001F34  8BFB              mov di,bx
00001F36  D1E7              shl di,1
00001F38  83BD360900        cmp word [di+0x936],byte +0x0
00001F3D  BB0000            mov bx,0x0
00001F40  7401              jz 0x1f43
00001F42  4B                dec bx
00001F43  9A892F4702        call word 0x247:0x2f89
00001F48  BE140A            mov si,0xa14
00001F4B  9A12004702        call word 0x247:0x12
00001F50  8BFE              mov di,si
00001F52  9AC50E4702        call word 0x247:0xec5
00001F57  BF720E            mov di,0xe72
00001F5A  BE6A09            mov si,0x96a
00001F5D  9A2A004702        call word 0x247:0x2a
00001F62  BF6A09            mov di,0x96a
00001F65  9AC50E4702        call word 0x247:0xec5
00001F6A  BFAE0E            mov di,0xeae
00001F6D  BE6A09            mov si,0x96a
00001F70  9A22234702        call word 0x247:0x2322
00001F75  76B5              jna 0x1f2c
00001F77  BF280E            mov di,0xe28
00001F7A  BE100A            mov si,0xa10
00001F7D  9A22234702        call word 0x247:0x2322
00001F82  BB0000            mov bx,0x0
00001F85  7301              jnc 0x1f88
00001F87  4B                dec bx
00001F88  BE140A            mov si,0xa14
00001F8B  9A22234702        call word 0x247:0x2322
00001F90  BA0000            mov dx,0x0
00001F93  7301              jnc 0x1f96
00001F95  4A                dec dx
00001F96  0BD3              or dx,bx
00001F98  23D2              and dx,dx
00001F9A  7403              jz 0x1f9f
00001F9C  E9BF06            jmp word 0x265e
00001F9F  BF7E0E            mov di,0xe7e
00001FA2  BE040A            mov si,0xa04
00001FA5  9A22234702        call word 0x247:0x2322
00001FAA  BB0000            mov bx,0x0
00001FAD  7501              jnz 0x1fb0
00001FAF  4B                dec bx
00001FB0  BF860E            mov di,0xe86
00001FB3  9A22234702        call word 0x247:0x2322
00001FB8  BA0000            mov dx,0x0
00001FBB  7501              jnz 0x1fbe
00001FBD  4A                dec dx
00001FBE  0BD3              or dx,bx
00001FC0  23D2              and dx,dx
00001FC2  7503              jnz 0x1fc7
00001FC4  E93E00            jmp word 0x2005
00001FC7  BFBE0E            mov di,0xebe
00001FCA  BEA409            mov si,0x9a4
00001FCD  9A2A004702        call word 0x247:0x2a
00001FD2  BF180A            mov di,0xa18
00001FD5  9AC50E4702        call word 0x247:0xec5
00001FDA  BE700A            mov si,0xa70
00001FDD  9ADF0E4702        call word 0x247:0xedf
00001FE2  E90B00            jmp word 0x1ff0
00001FE5  BF700A            mov di,0xa70
00001FE8  BE6A09            mov si,0x96a
00001FEB  9A2A004702        call word 0x247:0x2a
00001FF0  BF6A09            mov di,0x96a
00001FF3  9AC50E4702        call word 0x247:0xec5
00001FF8  BF180A            mov di,0xa18
00001FFB  BE6A09            mov si,0x96a
00001FFE  9A22234702        call word 0x247:0x2322
00002003  76E0              jna 0x1fe5
00002005  BB1800            mov bx,0x18
00002008  9A620F4702        call word 0x247:0xf62
0000200D  BB1C00            mov bx,0x1c
00002010  9A7C0F4702        call word 0x247:0xf7c
00002015  9A60364702        call word 0x247:0x3660
0000201A  BB080A            mov bx,0xa08
0000201D  9A09354702        call word 0x247:0x3509
00002022  BB2C01            mov bx,0x12c
00002025  BAC20E            mov dx,0xec2
00002028  9A93084702        call word 0x247:0x893
0000202D  9AF7234702        call word 0x247:0x23f7
00002032  BA1C0A            mov dx,0xa1c
00002035  9A2A0E4702        call word 0x247:0xe2a
0000203A  BB740A            mov bx,0xa74
0000203D  B81C0A            mov ax,0xa1c
00002040  9A9A0E4702        call word 0x247:0xe9a
00002045  7403              jz 0x204a
00002047  E90E00            jmp word 0x2058
0000204A  BF200A            mov di,0xa20
0000204D  BEC60E            mov si,0xec6
00002050  9AC80E4702        call word 0x247:0xec8
00002055  E97F00            jmp word 0x20d7
00002058  BB1C0A            mov bx,0xa1c
0000205B  9AE3234702        call word 0x247:0x23e3
00002060  9A892F4702        call word 0x247:0x2f89
00002065  BF200A            mov di,0xa20
00002068  9AC50E4702        call word 0x247:0xec5
0000206D  BE200A            mov si,0xa20
00002070  9A42104702        call word 0x247:0x1042
00002075  7403              jz 0x207a
00002077  E95D00            jmp word 0x20d7
0000207A  BB1C0A            mov bx,0xa1c
0000207D  BA0200            mov dx,0x2
00002080  B9FF7F            mov cx,0x7fff
00002083  9ADC244702        call word 0x247:0x24dc
00002088  8BD3              mov dx,bx
0000208A  BB9009            mov bx,0x990
0000208D  9AB4244702        call word 0x247:0x24b4
00002092  9A892F4702        call word 0x247:0x2f89
00002097  BF200A            mov di,0xa20
0000209A  9AC50E4702        call word 0x247:0xec5
0000209F  BE200A            mov si,0xa20
000020A2  9A5A104702        call word 0x247:0x105a
000020A7  23DB              and bx,bx
000020A9  7503              jnz 0x20ae
000020AB  E92900            jmp word 0x20d7
000020AE  BE200A            mov si,0xa20
000020B1  8BD6              mov dx,si
000020B3  9AD12F4702        call word 0x247:0x2fd1
000020B8  8BC2              mov ax,dx
000020BA  8BD3              mov dx,bx
000020BC  BB9409            mov bx,0x994
000020BF  B9FF7F            mov cx,0x7fff
000020C2  9ADC244702        call word 0x247:0x24dc
000020C7  9AE3234702        call word 0x247:0x23e3
000020CC  9A892F4702        call word 0x247:0x2f89
000020D1  97                xchg ax,di
000020D2  9AC50E4702        call word 0x247:0xec5
000020D7  BFCA0E            mov di,0xeca
000020DA  BE200A            mov si,0xa20
000020DD  9A22234702        call word 0x247:0x2322
000020E2  7403              jz 0x20e7
000020E4  E91600            jmp word 0x20fd
000020E7  BB0100            mov bx,0x1
000020EA  BAFF7F            mov dx,0x7fff
000020ED  9AA1114702        call word 0x247:0x11a1
000020F2  BA6E09            mov dx,0x96e
000020F5  9A2A0E4702        call word 0x247:0xe2a
000020FA  E908FF            jmp word 0x2005
000020FD  BFCE0E            mov di,0xece
00002100  BE200A            mov si,0xa20
00002103  9A22234702        call word 0x247:0x2322
00002108  7403              jz 0x210d
0000210A  E90800            jmp word 0x2115
0000210D  9AE7094702        call word 0x247:0x9e7
00002112  E99E09            jmp word 0x2ab3
00002115  BE8C09            mov si,0x98c
00002118  9AD12F4702        call word 0x247:0x2fd1
0000211D  F7D3              not bx
0000211F  23DB              and bx,bx
00002121  7403              jz 0x2126
00002123  E91A01            jmp word 0x2240
00002126  BF200A            mov di,0xa20
00002129  BED20E            mov si,0xed2
0000212C  9AC80E4702        call word 0x247:0xec8
00002131  BB0100            mov bx,0x1
00002134  9AA4274702        call word 0x247:0x27a4
00002139  9A892F4702        call word 0x247:0x2f89
0000213E  BF240A            mov di,0xa24
00002141  9AC50E4702        call word 0x247:0xec5
00002146  BB0100            mov bx,0x1
00002149  9AA4274702        call word 0x247:0x27a4
0000214E  9A892F4702        call word 0x247:0x2f89
00002153  BF280A            mov di,0xa28
00002156  9AC50E4702        call word 0x247:0xec5
0000215B  BFD60E            mov di,0xed6
0000215E  BE240A            mov si,0xa24
00002161  9A22234702        call word 0x247:0x2322
00002166  BB0000            mov bx,0x0
00002169  7601              jna 0x216c
0000216B  4B                dec bx
0000216C  BFDA0E            mov di,0xeda
0000216F  9A22234702        call word 0x247:0x2322
00002174  BA0000            mov dx,0x0
00002177  7301              jnc 0x217a
00002179  4A                dec dx
0000217A  23DA              and bx,dx
0000217C  9A892F4702        call word 0x247:0x2f89
00002181  BF2C0A            mov di,0xa2c
00002184  9AC50E4702        call word 0x247:0xec5
00002189  BFD60E            mov di,0xed6
0000218C  BE280A            mov si,0xa28
0000218F  9A22234702        call word 0x247:0x2322
00002194  BB0000            mov bx,0x0
00002197  7601              jna 0x219a
00002199  4B                dec bx
0000219A  BFDA0E            mov di,0xeda
0000219D  9A22234702        call word 0x247:0x2322
000021A2  BA0000            mov dx,0x0
000021A5  7301              jnc 0x21a8
000021A7  4A                dec dx
000021A8  23DA              and bx,dx
000021AA  9A892F4702        call word 0x247:0x2f89
000021AF  BF300A            mov di,0xa30
000021B2  9AC50E4702        call word 0x247:0xec5
000021B7  BE300A            mov si,0xa30
000021BA  9AD12F4702        call word 0x247:0x2fd1
000021BF  8BD3              mov dx,bx
000021C1  BE2C0A            mov si,0xa2c
000021C4  9AD12F4702        call word 0x247:0x2fd1
000021C9  F7D3              not bx
000021CB  23DA              and bx,dx
000021CD  23DB              and bx,bx
000021CF  7503              jnz 0x21d4
000021D1  E92800            jmp word 0x21fc
000021D4  BFDE0E            mov di,0xede
000021D7  BE240A            mov si,0xa24
000021DA  9A22234702        call word 0x247:0x2322
000021DF  BB0000            mov bx,0x0
000021E2  7601              jna 0x21e5
000021E4  4B                dec bx
000021E5  D1E3              shl bx,1
000021E7  83EB34            sub bx,byte +0x34
000021EA  F7DB              neg bx
000021EC  9A892F4702        call word 0x247:0x2f89
000021F1  BF200A            mov di,0xa20
000021F4  9AC50E4702        call word 0x247:0xec5
000021F9  E94400            jmp word 0x2240
000021FC  BE340A            mov si,0xa34
000021FF  9AD12F4702        call word 0x247:0x2fd1
00002204  8BD3              mov dx,bx
00002206  BE300A            mov si,0xa30
00002209  9AD12F4702        call word 0x247:0x2fd1
0000220E  F7D3              not bx
00002210  23DA              and bx,dx
00002212  23DB              and bx,bx
00002214  7503              jnz 0x2219
00002216  E92700            jmp word 0x2240
00002219  BFDE0E            mov di,0xede
0000221C  BE280A            mov si,0xa28
0000221F  9A22234702        call word 0x247:0x2322
00002224  B80000            mov ax,0x0
00002227  7601              jna 0x222a
00002229  48                dec ax
0000222A  BB0600            mov bx,0x6
0000222D  F7EB              imul bx
0000222F  053800            add ax,0x38
00002232  93                xchg ax,bx
00002233  9A892F4702        call word 0x247:0x2f89
00002238  BF200A            mov di,0xa20
0000223B  9AC50E4702        call word 0x247:0xec5
00002240  BF240E            mov di,0xe24
00002243  BE200A            mov si,0xa20
00002246  9A22234702        call word 0x247:0x2322
0000224B  BB0000            mov bx,0x0
0000224E  7501              jnz 0x2251
00002250  4B                dec bx
00002251  BFE20E            mov di,0xee2
00002254  9A22234702        call word 0x247:0x2322
00002259  BA0000            mov dx,0x0
0000225C  7501              jnz 0x225f
0000225E  4A                dec dx
0000225F  0BD3              or dx,bx
00002261  BF820E            mov di,0xe82
00002264  9A22234702        call word 0x247:0x2322
00002269  BB0000            mov bx,0x0
0000226C  7501              jnz 0x226f
0000226E  4B                dec bx
0000226F  0BDA              or bx,dx
00002271  BFE60E            mov di,0xee6
00002274  9A22234702        call word 0x247:0x2322
00002279  BA0000            mov dx,0x0
0000227C  7501              jnz 0x227f
0000227E  4A                dec dx
0000227F  0BD3              or dx,bx
00002281  23D2              and dx,dx
00002283  7503              jnz 0x2288
00002285  E97B00            jmp word 0x2303
00002288  BB9001            mov bx,0x190
0000228B  BA6E0E            mov dx,0xe6e
0000228E  9A93084702        call word 0x247:0x893
00002293  BB5802            mov bx,0x258
00002296  BA700A            mov dx,0xa70
00002299  9A93084702        call word 0x247:0x893
0000229E  BFE60E            mov di,0xee6
000022A1  BE200A            mov si,0xa20
000022A4  9A22234702        call word 0x247:0x2322
000022A9  7403              jz 0x22ae
000022AB  E91500            jmp word 0x22c3
000022AE  BFC009            mov di,0x9c0
000022B1  BE4A0E            mov si,0xe4a
000022B4  9AC80E4702        call word 0x247:0xec8
000022B9  9A54234702        call word 0x247:0x2354
000022BE  E61D              out 0x1d,al
000022C0  E97600            jmp word 0x2339
000022C3  BF240E            mov di,0xe24
000022C6  BE200A            mov si,0xa20
000022C9  9A22234702        call word 0x247:0x2322
000022CE  BB0000            mov bx,0x0
000022D1  7501              jnz 0x22d4
000022D3  4B                dec bx
000022D4  BF860E            mov di,0xe86
000022D7  BE040A            mov si,0xa04
000022DA  9A22234702        call word 0x247:0x2322
000022DF  BA0000            mov dx,0x0
000022E2  7401              jz 0x22e5
000022E4  4A                dec dx
000022E5  23D3              and dx,bx
000022E7  23D2              and dx,dx
000022E9  7503              jnz 0x22ee
000022EB  E91500            jmp word 0x2303
000022EE  BFC009            mov di,0x9c0
000022F1  BEEA0E            mov si,0xeea
000022F4  9AC80E4702        call word 0x247:0xec8
000022F9  9A54234702        call word 0x247:0x2354
000022FE  E61D              out 0x1d,al
00002300  E93600            jmp word 0x2339
00002303  BF380A            mov di,0xa38
00002306  BEA409            mov si,0x9a4
00002309  9AC80E4702        call word 0x247:0xec8
0000230E  BE700A            mov si,0xa70
00002311  9ADF0E4702        call word 0x247:0xedf
00002316  E90B00            jmp word 0x2324
00002319  BF700A            mov di,0xa70
0000231C  BEF009            mov si,0x9f0
0000231F  9A2A004702        call word 0x247:0x2a
00002324  BFF009            mov di,0x9f0
00002327  9AC50E4702        call word 0x247:0xec5
0000232C  BF380A            mov di,0xa38
0000232F  BEF009            mov si,0x9f0
00002332  9A22234702        call word 0x247:0x2322
00002337  76E0              jna 0x2319
00002339  BF3C0A            mov di,0xa3c
0000233C  BE000A            mov si,0xa00
0000233F  9AC80E4702        call word 0x247:0xec8
00002344  BF400A            mov di,0xa40
00002347  BE040A            mov si,0xa04
0000234A  9AC80E4702        call word 0x247:0xec8
0000234F  BFE60E            mov di,0xee6
00002352  BE200A            mov si,0xa20
00002355  9A22234702        call word 0x247:0x2322
0000235A  7403              jz 0x235f
0000235C  E91300            jmp word 0x2372
0000235F  BF0E0D            mov di,0xd0e
00002362  BE040A            mov si,0xa04
00002365  9A2A004702        call word 0x247:0x2a
0000236A  BF400A            mov di,0xa40
0000236D  9AC50E4702        call word 0x247:0xec5
00002372  BFE20E            mov di,0xee2
00002375  BE200A            mov si,0xa20
00002378  9A22234702        call word 0x247:0x2322
0000237D  BB0000            mov bx,0x0
00002380  7501              jnz 0x2383
00002382  4B                dec bx
00002383  BFC20D            mov di,0xdc2
00002386  BE000A            mov si,0xa00
00002389  9A2A004702        call word 0x247:0x2a
0000238E  9A54104702        call word 0x247:0x1054
00002393  BA0000            mov dx,0x0
00002396  7201              jc 0x2399
00002398  4A                dec dx
00002399  23D3              and dx,bx
0000239B  23D2              and dx,dx
0000239D  7503              jnz 0x23a2
0000239F  E91300            jmp word 0x23b5
000023A2  BFC20D            mov di,0xdc2
000023A5  BE000A            mov si,0xa00
000023A8  9A2A004702        call word 0x247:0x2a
000023AD  BF3C0A            mov di,0xa3c
000023B0  9AC50E4702        call word 0x247:0xec5
000023B5  BF820E            mov di,0xe82
000023B8  BE200A            mov si,0xa20
000023BB  9A22234702        call word 0x247:0x2322
000023C0  BB0000            mov bx,0x0
000023C3  7501              jnz 0x23c6
000023C5  4B                dec bx
000023C6  BFBE0D            mov di,0xdbe
000023C9  BE000A            mov si,0xa00
000023CC  9A2A004702        call word 0x247:0x2a
000023D1  BFEE0E            mov di,0xeee
000023D4  9A17234702        call word 0x247:0x2317
000023D9  BA0000            mov dx,0x0
000023DC  7301              jnc 0x23df
000023DE  4A                dec dx
000023DF  23D3              and dx,bx
000023E1  23D2              and dx,dx
000023E3  7503              jnz 0x23e8
000023E5  E91300            jmp word 0x23fb
000023E8  BFBE0D            mov di,0xdbe
000023EB  BE000A            mov si,0xa00
000023EE  9A2A004702        call word 0x247:0x2a
000023F3  BF3C0A            mov di,0xa3c
000023F6  9AC50E4702        call word 0x247:0xec5
000023FB  BF240E            mov di,0xe24
000023FE  BE200A            mov si,0xa20
00002401  9A22234702        call word 0x247:0x2322
00002406  BB0000            mov bx,0x0
00002409  7501              jnz 0x240c
0000240B  4B                dec bx
0000240C  BF860E            mov di,0xe86
0000240F  BE040A            mov si,0xa04
00002412  9A22234702        call word 0x247:0x2322
00002417  BA0000            mov dx,0x0
0000241A  7401              jz 0x241d
0000241C  4A                dec dx
0000241D  23D3              and dx,bx
0000241F  23D2              and dx,dx
00002421  7503              jnz 0x2426
00002423  E91300            jmp word 0x2439
00002426  BF700A            mov di,0xa70
00002429  BE040A            mov si,0xa04
0000242C  9A2A004702        call word 0x247:0x2a
00002431  BF400A            mov di,0xa40
00002434  9AC50E4702        call word 0x247:0xec5
00002439  BE400A            mov si,0xa40
0000243C  9A5A104702        call word 0x247:0x105a
00002441  23DB              and bx,bx
00002443  7403              jz 0x2448
00002445  E9C200            jmp word 0x250a
00002448  BE000A            mov si,0xa00
0000244B  9AD12F4702        call word 0x247:0x2fd1
00002450  BA2300            mov dx,0x23
00002453  9A822B4702        call word 0x247:0x2b82
00002458  BB3609            mov bx,0x936
0000245B  33D2              xor dx,dx
0000245D  9A8B2B4702        call word 0x247:0x2b8b
00002462  BE000A            mov si,0xa00
00002465  9AD12F4702        call word 0x247:0x2fd1
0000246A  BA1700            mov dx,0x17
0000246D  9A182B4702        call word 0x247:0x2b18
00002472  BFB20E            mov di,0xeb2
00002475  BE000A            mov si,0xa00
00002478  9A2A004702        call word 0x247:0x2a
0000247D  9A1C304702        call word 0x247:0x301c
00002482  BA2100            mov dx,0x21
00002485  9A1E2B4702        call word 0x247:0x2b1e
0000248A  BB3609            mov bx,0x936
0000248D  BA3000            mov dx,0x30
00002490  9A242B4702        call word 0x247:0x2b24
00002495  BF7E0E            mov di,0xe7e
00002498  BE440A            mov si,0xa44
0000249B  9A2A004702        call word 0x247:0x2a
000024A0  9A1C304702        call word 0x247:0x301c
000024A5  BA1700            mov dx,0x17
000024A8  B9FFFF            mov cx,0xffff
000024AB  9AD92A4702        call word 0x247:0x2ad9
000024B0  BB7209            mov bx,0x972
000024B3  9A7A334702        call word 0x247:0x337a
000024B8  BE720E            mov si,0xe72
000024BB  9ADF0E4702        call word 0x247:0xedf
000024C0  E92F00            jmp word 0x24f2
000024C3  BE6A09            mov si,0x96a
000024C6  9AD12F4702        call word 0x247:0x2fd1
000024CB  8BFB              mov di,bx
000024CD  D1E7              shl di,1
000024CF  83BD360900        cmp word [di+0x936],byte +0x0
000024D4  7503              jnz 0x24d9
000024D6  E90E00            jmp word 0x24e7
000024D9  BF0C0A            mov di,0xa0c
000024DC  BEAE0E            mov si,0xeae
000024DF  9AC80E4702        call word 0x247:0xec8
000024E4  E97701            jmp word 0x265e
000024E7  BF700A            mov di,0xa70
000024EA  BE6A09            mov si,0x96a
000024ED  9A2A004702        call word 0x247:0x2a
000024F2  BF6A09            mov di,0x96a
000024F5  9AC50E4702        call word 0x247:0xec5
000024FA  BFAE0E            mov di,0xeae
000024FD  BE6A09            mov si,0x96a
00002500  9A22234702        call word 0x247:0x2322
00002505  76BC              jna 0x24c3
00002507  E91B07            jmp word 0x2c25
0000250A  BF7E0E            mov di,0xe7e
0000250D  BE040A            mov si,0xa04
00002510  9A22234702        call word 0x247:0x2322
00002515  7703              ja 0x251a
00002517  E92400            jmp word 0x253e
0000251A  BE0C0A            mov si,0xa0c
0000251D  9AD12F4702        call word 0x247:0x2fd1
00002522  8BD3              mov dx,bx
00002524  BE000A            mov si,0xa00
00002527  9AD12F4702        call word 0x247:0x2fd1
0000252C  9A822B4702        call word 0x247:0x2b82
00002531  BB3609            mov bx,0x936
00002534  33D2              xor dx,dx
00002536  9A8B2B4702        call word 0x247:0x2b8b
0000253B  E9A900            jmp word 0x25e7
0000253E  BE040A            mov si,0xa04
00002541  9AD12F4702        call word 0x247:0x2fd1
00002546  8BF3              mov si,bx
00002548  D1E6              shl si,1
0000254A  D1E6              shl si,1
0000254C  81C6B208          add si,0x8b2
00002550  BFE60E            mov di,0xee6
00002553  8BDE              mov bx,si
00002555  BE200A            mov si,0xa20
00002558  9A22234702        call word 0x247:0x2322
0000255D  BA0000            mov dx,0x0
00002560  7401              jz 0x2563
00002562  4A                dec dx
00002563  BF240E            mov di,0xe24
00002566  9A22234702        call word 0x247:0x2322
0000256B  B90000            mov cx,0x0
0000256E  7401              jz 0x2571
00002570  49                dec cx
00002571  23CA              and cx,dx
00002573  8BD3              mov dx,bx
00002575  8BD9              mov bx,cx
00002577  9A892F4702        call word 0x247:0x2f89
0000257C  8BF2              mov si,dx
0000257E  9A5F014702        call word 0x247:0x15f
00002583  BE3C0A            mov si,0xa3c
00002586  9A12004702        call word 0x247:0x12
0000258B  8BFE              mov di,si
0000258D  9AC50E4702        call word 0x247:0xec5
00002592  BE3C0A            mov si,0xa3c
00002595  9A42104702        call word 0x247:0x1042
0000259A  BB0000            mov bx,0x0
0000259D  7301              jnc 0x25a0
0000259F  4B                dec bx
000025A0  BFF20E            mov di,0xef2
000025A3  9A22234702        call word 0x247:0x2322
000025A8  BA0000            mov dx,0x0
000025AB  7601              jna 0x25ae
000025AD  4A                dec dx
000025AE  0BD3              or dx,bx
000025B0  23D2              and dx,dx
000025B2  7403              jz 0x25b7
000025B4  E9A700            jmp word 0x265e
000025B7  BE200A            mov si,0xa20
000025BA  9A5A104702        call word 0x247:0x105a
000025BF  23DB              and bx,bx
000025C1  7503              jnz 0x25c6
000025C3  E92100            jmp word 0x25e7
000025C6  BE0C0A            mov si,0xa0c
000025C9  9AD12F4702        call word 0x247:0x2fd1
000025CE  8BD3              mov dx,bx
000025D0  BE000A            mov si,0xa00
000025D3  9AD12F4702        call word 0x247:0x2fd1
000025D8  9A822B4702        call word 0x247:0x2b82
000025DD  BB3609            mov bx,0x936
000025E0  33D2              xor dx,dx
000025E2  9A8B2B4702        call word 0x247:0x2b8b
000025E7  BE8209            mov si,0x982
000025EA  9A85304702        call word 0x247:0x3085
000025EF  9A6C144702        call word 0x247:0x146c
000025F4  B88A09            mov ax,0x98a
000025F7  50                push ax
000025F8  9AF7284702        call word 0x247:0x28f7
000025FD  1E                push ds
000025FE  07                pop es
000025FF  FC                cld
00002600  BF000A            mov di,0xa00
00002603  BE3C0A            mov si,0xa3c
00002606  9AC80E4702        call word 0x247:0xec8
0000260B  BF040A            mov di,0xa04
0000260E  BE400A            mov si,0xa40
00002611  9AC80E4702        call word 0x247:0xec8
00002616  BF0E0D            mov di,0xd0e
00002619  BE080A            mov si,0xa08
0000261C  9A2A004702        call word 0x247:0x2a
00002621  8BFE              mov di,si
00002623  9AC50E4702        call word 0x247:0xec5
00002628  BE080A            mov si,0xa08
0000262B  9A5A104702        call word 0x247:0x105a
00002630  23DB              and bx,bx
00002632  7503              jnz 0x2637
00002634  E92700            jmp word 0x265e
00002637  BF7E0E            mov di,0xe7e
0000263A  BE040A            mov si,0xa04
0000263D  9A22234702        call word 0x247:0x2322
00002642  BB0000            mov bx,0x0
00002645  7601              jna 0x2648
00002647  4B                dec bx
00002648  8BD3              mov dx,bx
0000264A  BE200A            mov si,0xa20
0000264D  9AD12F4702        call word 0x247:0x2fd1
00002652  0BDA              or bx,dx
00002654  23DB              and bx,bx
00002656  7403              jz 0x265b
00002658  E952F7            jmp word 0x1dad
0000265B  E9DDF7            jmp word 0x1e3b
0000265E  BF480A            mov di,0xa48
00002661  BEEA0E            mov si,0xeea
00002664  9AC80E4702        call word 0x247:0xec8
00002669  BEF60E            mov si,0xef6
0000266C  9ADF0E4702        call word 0x247:0xedf
00002671  E96600            jmp word 0x26da
00002674  BE0C0A            mov si,0xa0c
00002677  9AD12F4702        call word 0x247:0x2fd1
0000267C  BF7E0E            mov di,0xe7e
0000267F  BE000A            mov si,0xa00
00002682  9A2A004702        call word 0x247:0x2a
00002687  8BD3              mov dx,bx
00002689  9A1C304702        call word 0x247:0x301c
0000268E  B9FFFF            mov cx,0xffff
00002691  9AD92A4702        call word 0x247:0x2ad9
00002696  BB7209            mov bx,0x972
00002699  9A7A334702        call word 0x247:0x337a
0000269E  BE0C0A            mov si,0xa0c
000026A1  9AD12F4702        call word 0x247:0x2fd1
000026A6  8BD3              mov dx,bx
000026A8  BE000A            mov si,0xa00
000026AB  9AD12F4702        call word 0x247:0x2fd1
000026B0  9A822B4702        call word 0x247:0x2b82
000026B5  BB3609            mov bx,0x936
000026B8  33D2              xor dx,dx
000026BA  9A8B2B4702        call word 0x247:0x2b8b
000026BF  BE6A09            mov si,0x96a
000026C2  9AD12F4702        call word 0x247:0x2fd1
000026C7  BA700A            mov dx,0xa70
000026CA  9A93084702        call word 0x247:0x893
000026CF  BF480A            mov di,0xa48
000026D2  BE6A09            mov si,0x96a
000026D5  9A2A004702        call word 0x247:0x2a
000026DA  BF6A09            mov di,0x96a
000026DD  9AC50E4702        call word 0x247:0xec5
000026E2  BE480A            mov si,0xa48
000026E5  9A42104702        call word 0x247:0x1042
000026EA  7203              jc 0x26ef
000026EC  E91300            jmp word 0x2702
000026EF  BFBE0E            mov di,0xebe
000026F2  BE6A09            mov si,0x96a
000026F5  9A22234702        call word 0x247:0x2322
000026FA  7203              jc 0x26ff
000026FC  E975FF            jmp word 0x2674
000026FF  E91000            jmp word 0x2712
00002702  BFBE0E            mov di,0xebe
00002705  BE6A09            mov si,0x96a
00002708  9A22234702        call word 0x247:0x2322
0000270D  7703              ja 0x2712
0000270F  E962FF            jmp word 0x2674
00002712  BF0E0D            mov di,0xd0e
00002715  BEAC09            mov si,0x9ac
00002718  9A2A004702        call word 0x247:0x2a
0000271D  8BFE              mov di,si
0000271F  9AC50E4702        call word 0x247:0xec5
00002724  BEAC09            mov si,0x9ac
00002727  9A5A104702        call word 0x247:0x105a
0000272C  23DB              and bx,bx
0000272E  7503              jnz 0x2733
00002730  E94900            jmp word 0x277c
00002733  BF460E            mov di,0xe46
00002736  BEAC09            mov si,0x9ac
00002739  9A62014702        call word 0x247:0x162
0000273E  BFEA0E            mov di,0xeea
00002741  9A1F004702        call word 0x247:0x1f
00002746  9A1C304702        call word 0x247:0x301c
0000274B  8BD3              mov dx,bx
0000274D  BB1D01            mov bx,0x11d
00002750  9A4B2A4702        call word 0x247:0x2a4b
00002755  BF460E            mov di,0xe46
00002758  BEAC09            mov si,0x9ac
0000275B  9A62014702        call word 0x247:0x162
00002760  BFFA0E            mov di,0xefa
00002763  9A1F004702        call word 0x247:0x1f
00002768  9A1C304702        call word 0x247:0x301c
0000276D  8BD3              mov dx,bx
0000276F  BB2A01            mov bx,0x12a
00002772  33C9              xor cx,cx
00002774  9A932A4702        call word 0x247:0x2a93
00002779  E9A8F5            jmp word 0x1d24
0000277C  BE700A            mov si,0xa70
0000277F  9ADF0E4702        call word 0x247:0xedf
00002784  E90B00            jmp word 0x2792
00002787  BF700A            mov di,0xa70
0000278A  BE6A09            mov si,0x96a
0000278D  9A2A004702        call word 0x247:0x2a
00002792  BF6A09            mov di,0x96a
00002795  9AC50E4702        call word 0x247:0xec5
0000279A  BF200E            mov di,0xe20
0000279D  BE6A09            mov si,0x96a
000027A0  9A22234702        call word 0x247:0x2322
000027A5  76E0              jna 0x2787
000027A7  9AE7094702        call word 0x247:0x9e7
000027AC  BE700A            mov si,0xa70
000027AF  9ADF0E4702        call word 0x247:0xedf
000027B4  E92100            jmp word 0x27d8
000027B7  BB6400            mov bx,0x64
000027BA  BA800A            mov dx,0xa80
000027BD  9A93084702        call word 0x247:0x893
000027C2  BB2C01            mov bx,0x12c
000027C5  BA800A            mov dx,0xa80
000027C8  9A93084702        call word 0x247:0x893
000027CD  BF700A            mov di,0xa70
000027D0  BE6A09            mov si,0x96a
000027D3  9A2A004702        call word 0x247:0x2a
000027D8  BF6A09            mov di,0x96a
000027DB  9AC50E4702        call word 0x247:0xec5
000027E0  BF280E            mov di,0xe28
000027E3  BE6A09            mov si,0x96a
000027E6  9A22234702        call word 0x247:0x2322
000027EB  76CA              jna 0x27b7
000027ED  9A60364702        call word 0x247:0x3660
000027F2  BB740A            mov bx,0xa74
000027F5  9A2C354702        call word 0x247:0x352c
000027FA  9A60364702        call word 0x247:0x3660
000027FF  BB740A            mov bx,0xa74
00002802  9A2C354702        call word 0x247:0x352c
00002807  9A60364702        call word 0x247:0x3660
0000280C  BB0C00            mov bx,0xc
0000280F  9AF9294702        call word 0x247:0x29f9
00002814  BBFE0E            mov bx,0xefe
00002817  9A2C354702        call word 0x247:0x352c
0000281C  9A60364702        call word 0x247:0x3660
00002821  BB740A            mov bx,0xa74
00002824  9A2C354702        call word 0x247:0x352c
00002829  9A60364702        call word 0x247:0x3660
0000282E  BB740A            mov bx,0xa74
00002831  9A2C354702        call word 0x247:0x352c
00002836  BEE608            mov si,0x8e6
00002839  9A42104702        call word 0x247:0x1042
0000283E  BB0000            mov bx,0x0
00002841  7501              jnz 0x2844
00002843  4B                dec bx
00002844  BEA809            mov si,0x9a8
00002847  9A42104702        call word 0x247:0x1042
0000284C  BA0000            mov dx,0x0
0000284F  7501              jnz 0x2852
00002851  4A                dec dx
00002852  23D3              and dx,bx
00002854  23D2              and dx,dx
00002856  7403              jz 0x285b
00002858  E95802            jmp word 0x2ab3
0000285B  BFA809            mov di,0x9a8
0000285E  BE0A09            mov si,0x90a
00002861  9A22234702        call word 0x247:0x2322
00002866  7203              jc 0x286b
00002868  E9CA01            jmp word 0x2a35
0000286B  9A60364702        call word 0x247:0x3660
00002870  BB140F            mov bx,0xf14
00002873  9A2C354702        call word 0x247:0x352c
00002878  9A60364702        call word 0x247:0x3660
0000287D  BB740A            mov bx,0xa74
00002880  9A2C354702        call word 0x247:0x352c
00002885  33DB              xor bx,bx
00002887  9A6C144702        call word 0x247:0x146c
0000288C  BB1C04            mov bx,0x41c
0000288F  8E1E9800          mov ds,[0x98]
00002893  8A1F              mov bl,[bx]
00002895  30FF              xor bh,bh
00002897  06                push es
00002898  1F                pop ds
00002899  93                xchg ax,bx
0000289A  BB1A04            mov bx,0x41a
0000289D  8E1E9800          mov ds,[0x98]
000028A1  8807              mov [bx],al
000028A3  06                push es
000028A4  1F                pop ds
000028A5  BB340F            mov bx,0xf34
000028A8  9AA72C4702        call word 0x247:0x2ca7
000028AD  02BB3209          add bh,[bp+di+0x932]
000028B1  9A03294702        call word 0x247:0x2903
000028B6  BF0A09            mov di,0x90a
000028B9  BEA809            mov si,0x9a8
000028BC  9AC80E4702        call word 0x247:0xec8
000028C1  BEC40C            mov si,0xcc4
000028C4  9ADF0E4702        call word 0x247:0xedf
000028C9  E93701            jmp word 0x2a03
000028CC  BF4C0A            mov di,0xa4c
000028CF  BE6A09            mov si,0x96a
000028D2  9AC80E4702        call word 0x247:0xec8
000028D7  BF700A            mov di,0xa70
000028DA  BE6A09            mov si,0x96a
000028DD  9A2A004702        call word 0x247:0x2a
000028E2  E94800            jmp word 0x292d
000028E5  BEB809            mov si,0x9b8
000028E8  9AD12F4702        call word 0x247:0x2fd1
000028ED  8BF3              mov si,bx
000028EF  D1E6              shl si,1
000028F1  D1E6              shl si,1
000028F3  81C6E608          add si,0x8e6
000028F7  8BD6              mov dx,si
000028F9  BE4C0A            mov si,0xa4c
000028FC  9AD12F4702        call word 0x247:0x2fd1
00002901  8BFB              mov di,bx
00002903  D1E7              shl di,1
00002905  D1E7              shl di,1
00002907  81C7E608          add di,0x8e6
0000290B  8BF2              mov si,dx
0000290D  9A22234702        call word 0x247:0x2322
00002912  7703              ja 0x2917
00002914  E90B00            jmp word 0x2922
00002917  BF4C0A            mov di,0xa4c
0000291A  BEB809            mov si,0x9b8
0000291D  9AC80E4702        call word 0x247:0xec8
00002922  BF700A            mov di,0xa70
00002925  BEB809            mov si,0x9b8
00002928  9A2A004702        call word 0x247:0x2a
0000292D  BFB809            mov di,0x9b8
00002930  9AC50E4702        call word 0x247:0xec5
00002935  BF500F            mov di,0xf50
00002938  BEB809            mov si,0x9b8
0000293B  9A22234702        call word 0x247:0x2322
00002940  76A3              jna 0x28e5
00002942  BE6A09            mov si,0x96a
00002945  9AD12F4702        call word 0x247:0x2fd1
0000294A  8BF3              mov si,bx
0000294C  D1E6              shl si,1
0000294E  D1E6              shl si,1
00002950  81C6E608          add si,0x8e6
00002954  BF500A            mov di,0xa50
00002957  9AC80E4702        call word 0x247:0xec8
0000295C  BE6A09            mov si,0x96a
0000295F  9AD12F4702        call word 0x247:0x2fd1
00002964  D1E3              shl bx,1
00002966  D1E3              shl bx,1
00002968  81C30E09          add bx,0x90e
0000296C  BA540A            mov dx,0xa54
0000296F  9A2A0E4702        call word 0x247:0xe2a
00002974  BE6A09            mov si,0x96a
00002977  9AD12F4702        call word 0x247:0x2fd1
0000297C  8BFB              mov di,bx
0000297E  D1E7              shl di,1
00002980  D1E7              shl di,1
00002982  81C7E608          add di,0x8e6
00002986  BE4C0A            mov si,0xa4c
00002989  9AD12F4702        call word 0x247:0x2fd1
0000298E  8BF3              mov si,bx
00002990  D1E6              shl si,1
00002992  D1E6              shl si,1
00002994  81C6E608          add si,0x8e6
00002998  9AC80E4702        call word 0x247:0xec8
0000299D  BE6A09            mov si,0x96a
000029A0  9AD12F4702        call word 0x247:0x2fd1
000029A5  D1E3              shl bx,1
000029A7  D1E3              shl bx,1
000029A9  81C30E09          add bx,0x90e
000029AD  8BD3              mov dx,bx
000029AF  BE4C0A            mov si,0xa4c
000029B2  9AD12F4702        call word 0x247:0x2fd1
000029B7  D1E3              shl bx,1
000029B9  D1E3              shl bx,1
000029BB  81C30E09          add bx,0x90e
000029BF  9A2A0E4702        call word 0x247:0xe2a
000029C4  BE4C0A            mov si,0xa4c
000029C7  9AD12F4702        call word 0x247:0x2fd1
000029CC  8BFB              mov di,bx
000029CE  D1E7              shl di,1
000029D0  D1E7              shl di,1
000029D2  81C7E608          add di,0x8e6
000029D6  BE500A            mov si,0xa50
000029D9  9AC80E4702        call word 0x247:0xec8
000029DE  BE4C0A            mov si,0xa4c
000029E1  9AD12F4702        call word 0x247:0x2fd1
000029E6  D1E3              shl bx,1
000029E8  D1E3              shl bx,1
000029EA  81C30E09          add bx,0x90e
000029EE  8BD3              mov dx,bx
000029F0  BB540A            mov bx,0xa54
000029F3  9A2A0E4702        call word 0x247:0xe2a
000029F8  BF700A            mov di,0xa70
000029FB  BE6A09            mov si,0x96a
000029FE  9A2A004702        call word 0x247:0x2a
00002A03  BF6A09            mov di,0x96a
00002A06  9AC50E4702        call word 0x247:0xec5
00002A0B  BFB60D            mov di,0xdb6
00002A0E  BE6A09            mov si,0x96a
00002A11  9A22234702        call word 0x247:0x2322
00002A16  7703              ja 0x2a1b
00002A18  E9B1FE            jmp word 0x28cc
00002A1B  9A60364702        call word 0x247:0x3660
00002A20  BB740A            mov bx,0xa74
00002A23  9A2C354702        call word 0x247:0x352c
00002A28  9A60364702        call word 0x247:0x3660
00002A2D  BB740A            mov bx,0xa74
00002A30  9A2C354702        call word 0x247:0x352c
00002A35  BEC40C            mov si,0xcc4
00002A38  9ADF0E4702        call word 0x247:0xedf
00002A3D  E95E00            jmp word 0x2a9e
00002A40  BE6A09            mov si,0x96a
00002A43  9AD12F4702        call word 0x247:0x2fd1
00002A48  8BF3              mov si,bx
00002A4A  D1E6              shl si,1
00002A4C  D1E6              shl si,1
00002A4E  81C6E608          add si,0x8e6
00002A52  9A42104702        call word 0x247:0x1042
00002A57  7503              jnz 0x2a5c
00002A59  E95700            jmp word 0x2ab3
00002A5C  BB540F            mov bx,0xf54
00002A5F  9A2A364702        call word 0x247:0x362a
00002A64  BE6A09            mov si,0x96a
00002A67  9AD12F4702        call word 0x247:0x2fd1
00002A6C  D1E3              shl bx,1
00002A6E  D1E3              shl bx,1
00002A70  81C3E608          add bx,0x8e6
00002A74  9A09354702        call word 0x247:0x3509
00002A79  9A60364702        call word 0x247:0x3660
00002A7E  BE6A09            mov si,0x96a
00002A81  9AD12F4702        call word 0x247:0x2fd1
00002A86  D1E3              shl bx,1
00002A88  D1E3              shl bx,1
00002A8A  81C30E09          add bx,0x90e
00002A8E  9A2C354702        call word 0x247:0x352c
00002A93  BF700A            mov di,0xa70
00002A96  BE6A09            mov si,0x96a
00002A99  9A2A004702        call word 0x247:0x2a
00002A9E  BF6A09            mov di,0x96a
00002AA1  9AC50E4702        call word 0x247:0xec5
00002AA6  BF500F            mov di,0xf50
00002AA9  BE6A09            mov si,0x96a
00002AAC  9A22234702        call word 0x247:0x2322
00002AB1  768D              jna 0x2a40
00002AB3  9A60364702        call word 0x247:0x3660
00002AB8  BB740A            mov bx,0xa74
00002ABB  9A2C354702        call word 0x247:0x352c
00002AC0  9A60364702        call word 0x247:0x3660
00002AC5  BB740A            mov bx,0xa74
00002AC8  9A2C354702        call word 0x247:0x352c
00002ACD  9A60364702        call word 0x247:0x3660
00002AD2  BB620F            mov bx,0xf62
00002AD5  9A18354702        call word 0x247:0x3518
00002ADA  BF580A            mov di,0xa58
00002ADD  BEC40C            mov si,0xcc4
00002AE0  9AC80E4702        call word 0x247:0xec8
00002AE5  9AF7234702        call word 0x247:0x23f7
00002AEA  BA6E09            mov dx,0x96e
00002AED  9A2A0E4702        call word 0x247:0xe2a
00002AF2  BB740A            mov bx,0xa74
00002AF5  B86E09            mov ax,0x96e
00002AF8  9A9A0E4702        call word 0x247:0xe9a
00002AFD  7403              jz 0x2b02
00002AFF  E90300            jmp word 0x2b05
00002B02  E9E0FF            jmp word 0x2ae5
00002B05  BB6E09            mov bx,0x96e
00002B08  BAA608            mov dx,0x8a6
00002B0B  9A2A0E4702        call word 0x247:0xe2a
00002B10  895EFE            mov [bp-0x2],bx
00002B13  E864E4            call word 0xf7a
00002B16  93                xchg ax,bx
00002B17  8B56FE            mov dx,[bp-0x2]
00002B1A  9A2A0E4702        call word 0x247:0xe2a
00002B1F  BB8A0F            mov bx,0xf8a
00002B22  B86E09            mov ax,0x96e
00002B25  9A9A0E4702        call word 0x247:0xe9a
00002B2A  BA0000            mov dx,0x0
00002B2D  7401              jz 0x2b30
00002B2F  4A                dec dx
00002B30  BB900F            mov bx,0xf90
00002B33  9A9A0E4702        call word 0x247:0xe9a
00002B38  B90000            mov cx,0x0
00002B3B  7401              jz 0x2b3e
00002B3D  49                dec cx
00002B3E  23CA              and cx,dx
00002B40  BB960F            mov bx,0xf96
00002B43  9A9A0E4702        call word 0x247:0xe9a
00002B48  BA0000            mov dx,0x0
00002B4B  7401              jz 0x2b4e
00002B4D  4A                dec dx
00002B4E  23D1              and dx,cx
00002B50  BB9C0F            mov bx,0xf9c
00002B53  9A9A0E4702        call word 0x247:0xe9a
00002B58  B90000            mov cx,0x0
00002B5B  7401              jz 0x2b5e
00002B5D  49                dec cx
00002B5E  23CA              and cx,dx
00002B60  23C9              and cx,cx
00002B62  7581              jnz 0x2ae5
00002B64  BB8A0F            mov bx,0xf8a
00002B67  B86E09            mov ax,0x96e
00002B6A  9A9A0E4702        call word 0x247:0xe9a
00002B6F  BA0000            mov dx,0x0
00002B72  7501              jnz 0x2b75
00002B74  4A                dec dx
00002B75  BB900F            mov bx,0xf90
00002B78  9A9A0E4702        call word 0x247:0xe9a
00002B7D  B90000            mov cx,0x0
00002B80  7501              jnz 0x2b83
00002B82  49                dec cx
00002B83  0BCA              or cx,dx
00002B85  23C9              and cx,cx
00002B87  7503              jnz 0x2b8c
00002B89  E90300            jmp word 0x2b8f
00002B8C  E98CE9            jmp word 0x151b
00002B8F  BB111D            mov bx,0x1d11
00002B92  9A391C4702        call word 0x247:0x1c39
00002B97  BB0100            mov bx,0x1
00002B9A  9A171E4702        call word 0x247:0x1e17
00002B9F  BB0100            mov bx,0x1
00002BA2  BAC60D            mov dx,0xdc6
00002BA5  33C9              xor cx,cx
00002BA7  9A261E4702        call word 0x247:0x1e26
00002BAC  BEC40C            mov si,0xcc4
00002BAF  9ADF0E4702        call word 0x247:0xedf
00002BB4  E94500            jmp word 0x2bfc
00002BB7  BB0100            mov bx,0x1
00002BBA  9A78364702        call word 0x247:0x3678
00002BBF  BE6A09            mov si,0x96a
00002BC2  9AD12F4702        call word 0x247:0x2fd1
00002BC7  D1E3              shl bx,1
00002BC9  D1E3              shl bx,1
00002BCB  81C3E608          add bx,0x8e6
00002BCF  9A1D354702        call word 0x247:0x351d
00002BD4  BB0100            mov bx,0x1
00002BD7  9A78364702        call word 0x247:0x3678
00002BDC  BE6A09            mov si,0x96a
00002BDF  9AD12F4702        call word 0x247:0x2fd1
00002BE4  D1E3              shl bx,1
00002BE6  D1E3              shl bx,1
00002BE8  81C30E09          add bx,0x90e
00002BEC  9A2C354702        call word 0x247:0x352c
00002BF1  BF700A            mov di,0xa70
00002BF4  BE6A09            mov si,0x96a
00002BF7  9A2A004702        call word 0x247:0x2a
00002BFC  BF6A09            mov di,0x96a
00002BFF  9AC50E4702        call word 0x247:0xec5
00002C04  BF500F            mov di,0xf50
00002C07  BE6A09            mov si,0x96a
00002C0A  9A22234702        call word 0x247:0x2322
00002C0F  76A6              jna 0x2bb7
00002C11  9A3E1C4702        call word 0x247:0x1c3e
00002C16  9AA11D4702        call word 0x247:0x1da1
00002C1B  9AE7094702        call word 0x247:0x9e7
00002C20  9A8A164702        call word 0x247:0x168a
00002C25  BFC009            mov di,0x9c0
00002C28  BE520E            mov si,0xe52
00002C2B  9AC80E4702        call word 0x247:0xec8
00002C30  9A54234702        call word 0x247:0x2354
00002C35  E61D              out 0x1d,al
00002C37  BF700A            mov di,0xa70
00002C3A  BEC409            mov si,0x9c4
00002C3D  9A2A004702        call word 0x247:0x2a
00002C42  8BFE              mov di,si
00002C44  9AC50E4702        call word 0x247:0xec5
00002C49  BE520E            mov si,0xe52
00002C4C  9ADF0E4702        call word 0x247:0xedf
00002C51  E91B00            jmp word 0x2c6f
00002C54  BE6A09            mov si,0x96a
00002C57  9AD12F4702        call word 0x247:0x2fd1
00002C5C  BA700A            mov dx,0xa70
00002C5F  9A93084702        call word 0x247:0x893
00002C64  BF780A            mov di,0xa78
00002C67  BE6A09            mov si,0x96a
00002C6A  9A2A004702        call word 0x247:0x2a
00002C6F  BF6A09            mov di,0x96a
00002C72  9AC50E4702        call word 0x247:0xec5
00002C77  BFA20F            mov di,0xfa2
00002C7A  BE6A09            mov si,0x96a
00002C7D  9A22234702        call word 0x247:0x2322
00002C82  76D0              jna 0x2c54
00002C84  BF2C0E            mov di,0xe2c
00002C87  BEC409            mov si,0x9c4
00002C8A  9A22234702        call word 0x247:0x2322
00002C8F  7403              jz 0x2c94
00002C91  E990F0            jmp word 0x1d24
00002C94  BFC009            mov di,0x9c0
00002C97  BE560E            mov si,0xe56
00002C9A  9AC80E4702        call word 0x247:0xec8
00002C9F  9A54234702        call word 0x247:0x2354
00002CA4  E61D              out 0x1d,al
00002CA6  BBA60F            mov bx,0xfa6
00002CA9  9AB82D4702        call word 0x247:0x2db8
00002CAE  BF280E            mov di,0xe28
00002CB1  BEB409            mov si,0x9b4
00002CB4  9A22234702        call word 0x247:0x2322
00002CB9  BB0000            mov bx,0x0
00002CBC  7501              jnz 0x2cbf
00002CBE  4B                dec bx
00002CBF  9A892F4702        call word 0x247:0x2f89
00002CC4  8BFE              mov di,si
00002CC6  9A1F004702        call word 0x247:0x1f
00002CCB  8BDF              mov bx,di
00002CCD  BF700A            mov di,0xa70
00002CD0  9A1F004702        call word 0x247:0x1f
00002CD5  8BFB              mov di,bx
00002CD7  9AC50E4702        call word 0x247:0xec5
00002CDC  9A54234702        call word 0x247:0x2354
00002CE1  1A1EE977          sbb bl,[0x77e9]
00002CE5  EBBF              jmp short 0x2ca6
00002CE7  C009BE            ror byte [bx+di],byte 0xbe
00002CEA  A809              test al,0x9
00002CEC  9A2A004702        call word 0x247:0x2a
00002CF1  8BFE              mov di,si
00002CF3  9AC50E4702        call word 0x247:0xec5
00002CF8  BB1800            mov bx,0x18
00002CFB  9A620F4702        call word 0x247:0xf62
00002D00  BB0C00            mov bx,0xc
00002D03  9A7C0F4702        call word 0x247:0xf7c
00002D08  9A60364702        call word 0x247:0x3660
00002D0D  BBA809            mov bx,0x9a8
00002D10  9A09354702        call word 0x247:0x3509
00002D15  9A7D234702        call word 0x247:0x237d
00002D1A  BEAE0E            mov si,0xeae
00002D1D  9ADF0E4702        call word 0x247:0xedf
00002D22  E93500            jmp word 0x2d5a
00002D25  BE6A09            mov si,0x96a
00002D28  9AD12F4702        call word 0x247:0x2fd1
00002D2D  BA0C00            mov dx,0xc
00002D30  9A4B2A4702        call word 0x247:0x2a4b
00002D35  BF8E0E            mov di,0xe8e
00002D38  BE6A09            mov si,0x96a
00002D3B  9A2A004702        call word 0x247:0x2a
00002D40  9A1C304702        call word 0x247:0x301c
00002D45  BA2100            mov dx,0x21
00002D48  33C9              xor cx,cx
00002D4A  9A932A4702        call word 0x247:0x2a93
00002D4F  BFC40F            mov di,0xfc4
00002D52  BE6A09            mov si,0x96a
00002D55  9A2A004702        call word 0x247:0x2a
00002D5A  BF6A09            mov di,0x96a
00002D5D  9AC50E4702        call word 0x247:0xec5
00002D62  BFC80F            mov di,0xfc8
00002D65  BE6A09            mov si,0x96a
00002D68  9A22234702        call word 0x247:0x2322
00002D6D  76B6              jna 0x2d25
00002D6F  33DB              xor bx,bx
00002D71  BA2300            mov dx,0x23
00002D74  9A4B2A4702        call word 0x247:0x2a4b
00002D79  BBFF00            mov bx,0xff
00002D7C  BA5E00            mov dx,0x5e
00002D7F  33C9              xor cx,cx
00002D81  9A932A4702        call word 0x247:0x2a93
00002D86  33DB              xor bx,bx
00002D88  BA6A00            mov dx,0x6a
00002D8B  9A4B2A4702        call word 0x247:0x2a4b
00002D90  BBFF00            mov bx,0xff
00002D93  BAA600            mov dx,0xa6
00002D96  33C9              xor cx,cx
00002D98  9A932A4702        call word 0x247:0x2a93
00002D9D  9A7D234702        call word 0x247:0x237d
00002DA2  90                nop
00002DA3  90                nop
00002DA4  90                nop
00002DA5  90                nop
00002DA6  90                nop
00002DA7  9A81164702        call word 0x247:0x1681
00002DAC  2B00              sub ax,[bx+si]
00002DAE  0A00              or al,[bx+si]
00002DB0  35000A            xor ax,0xa00
00002DB3  003C              add [si],bh
00002DB5  000A              add [bp+si],cl
00002DB7  004700            add [bx+0x0],al
00002DBA  0A00              or al,[bx+si]
00002DBC  57                push di
00002DBD  000A              add [bp+si],cl
00002DBF  007700            add [bx+0x0],dh
00002DC2  0A00              or al,[bx+si]
00002DC4  A7                cmpsw
00002DC5  000A              add [bp+si],cl
00002DC7  00A7000C          add [bx+0xc00],ah
00002DCB  00AF000C          add [bx+0xc00],ch
00002DCF  00D4              add ah,dl
00002DD1  000C              add [si],cl
00002DD3  00E4              add ah,ah
00002DD5  000C              add [si],cl
00002DD7  00E9              add cl,ch
00002DD9  000C              add [si],cl
00002DDB  00F9              add cl,bh
00002DDD  0114              add [si],dx
00002DDF  00EC              add ah,ch
00002DE1  000D              add [di],cl
00002DE3  00F1              add cl,dh
00002DE5  000D              add [di],cl
00002DE7  0001              add [bx+di],al
00002DE9  010D              add [di],cx
00002DEB  000E010E          add [0xe01],cl
00002DEF  0014              add [si],dl
00002DF1  010E0028          add [0x2800],cx
00002DF5  010E0038          add [0x3800],cx
00002DF9  010E0048          add [0x4800],cx
00002DFD  010E0055          add [0x5500],cx
00002E01  010E0065          add [0x6500],cx
00002E05  010E0072          add [0x7200],cx
00002E09  010E0077          add [0x7700],cx
00002E0D  010E008A          add [0x8a00],cx
00002E11  010E008F          add [0x8f00],cx
00002E15  0110              add [bx+si],dx
00002E17  00A60110          add [bp+0x1001],ah
00002E1B  00B30110          add [bp+di+0x1001],dh
00002E1F  00D5              add ch,dl
00002E21  0110              add [bx+si],dx
00002E23  00DA              add dl,bl
00002E25  0110              add [bx+si],dx
00002E27  0004              add [si],al
00002E29  021E000F          add bl,[0xf00]
00002E2D  0228              add ch,[bx+si]
00002E2F  001A              add [bp+si],bl
00002E31  0228              add ch,[bx+si]
00002E33  0025              add [di],ah
00002E35  0232              add dh,[bp+si]
00002E37  0030              add [bx+si],dh
00002E39  023C              add bh,[si]
00002E3B  003B              add [bp+di],bh
00002E3D  024600            add al,[bp+0x0]
00002E40  40                inc ax
00002E41  024600            add al,[bp+0x0]
00002E44  8F02              pop word [bp+si]
00002E46  46                inc si
00002E47  00960246          add [bp+0x4602],dl
00002E4B  00EF              add bh,ch
00002E4D  024600            add al,[bp+0x0]
00002E50  FC                cld
00002E51  024600            add al,[bp+0x0]
00002E54  07                pop es
00002E55  034600            add ax,[bp+0x0]
00002E58  0F034600          lsl ax,[bp+0x0]
00002E5C  2A03              sub al,[bp+di]
00002E5E  46                inc si
00002E5F  004A03            add [bp+si+0x3],cl
00002E62  46                inc si
00002E63  005003            add [bx+si+0x3],dl
00002E66  50                push ax
00002E67  0094035A          add [si+0x5a03],dl
00002E6B  009B035A          add [bp+di+0x5a03],bl
00002E6F  00AA035A          add [bp+si+0x5a03],ch
00002E73  00B8035A          add [bx+si+0x5a03],bh
00002E77  00BF035A          add [bx+0x5a03],bh
00002E7B  00C4              add ah,al
00002E7D  035A00            add bx,[bp+si+0x0]
00002E80  CC                int3
00002E81  035A00            add bx,[bp+si+0x0]
00002E84  D903              fld dword [bp+di]
00002E86  5A                pop dx
00002E87  00E4              add ah,ah
00002E89  036400            add sp,[si+0x0]
00002E8C  0304              add ax,[si]
00002E8E  64004804          add [fs:bx+si+0x4],cl
00002E92  6E                outsb
00002E93  007004            add [bx+si+0x4],dh
00002E96  6E                outsb
00002E97  007B04            add [bp+di+0x4],bh
00002E9A  7800              js 0x2e9c
00002E9C  800478            add byte [si],0x78
00002E9F  008D0478          add [di+0x7804],cl
00002EA3  00980478          add [bx+si+0x7804],bl
00002EA7  00A3047D          add [bp+di+0x7d04],ah
00002EAB  00B3047D          add [bp+di+0x7d04],dh
00002EAF  00C0              add al,al
00002EB1  047D              add al,0x7d
00002EB3  00CD              add ch,cl
00002EB5  047D              add al,0x7d
00002EB7  00DA              add dl,bl
00002EB9  047D              add al,0x7d
00002EBB  00E7              add bh,ah
00002EBD  0482              add al,0x82
00002EBF  00F2              add dl,dh
00002EC1  0482              add al,0x82
00002EC3  00FD              add ch,bh
00002EC5  0482              add al,0x82
00002EC7  0008              add [bx+si],cl
00002EC9  058200            add ax,0x82
00002ECC  1305              adc ax,[di]
00002ECE  82                db 0x82
00002ECF  001E0582          add [0x8205],bl
00002ED3  0029              add [bx+di],ch
00002ED5  058200            add ax,0x82
00002ED8  3405              xor al,0x5
00002EDA  82                db 0x82
00002EDB  003F              add [bx],bh
00002EDD  058200            add ax,0x82
00002EE0  4A                dec dx
00002EE1  058200            add ax,0x82
00002EE4  55                push bp
00002EE5  058200            add ax,0x82
00002EE8  60                pushaw
00002EE9  058C00            add ax,0x8c
00002EEC  7505              jnz 0x2ef3
00002EEE  8C00              mov [bx+si],es
00002EF0  7A05              jpe 0x2ef7
00002EF2  8C00              mov [bx+si],es
00002EF4  8E05              mov es,[di]
00002EF6  96                xchg ax,si
00002EF7  00990596          add [bx+di-0x69fb],bl
00002EFB  00AA0596          add [bp+si-0x69fb],ch
00002EFF  00CE              add dh,cl
00002F01  059600            add ax,0x96
00002F04  EB05              jmp short 0x2f0b
00002F06  96                xchg ax,si
00002F07  00FD              add ch,bh
00002F09  059600            add ax,0x96
00002F0C  00069600          add [0x96],al
00002F10  050697            add ax,0x9706
00002F13  0010              add [bx+si],dl
00002F15  06                push es
00002F16  97                xchg ax,di
00002F17  001B              add [bp+di],bl
00002F19  06                push es
00002F1A  98                cbw
00002F1B  0028              add [bx+si],ch
00002F1D  06                push es
00002F1E  98                cbw
00002F1F  0035              add [di],dh
00002F21  06                push es
00002F22  98                cbw
00002F23  005006            add [bx+si+0x6],dl
00002F26  98                cbw
00002F27  006806            add [bx+si+0x6],ch
00002F2A  99                cwd
00002F2B  007506            add [di+0x6],dh
00002F2E  99                cwd
00002F2F  00850699          add [di-0x66fa],al
00002F33  009D0699          add [di-0x66fa],bl
00002F37  00C2              add dl,al
00002F39  06                push es
00002F3A  99                cwd
00002F3B  00D0              add al,dl
00002F3D  06                push es
00002F3E  99                cwd
00002F3F  00DD              add ch,bl
00002F41  06                push es
00002F42  99                cwd
00002F43  00E8              add al,ch
00002F45  06                push es
00002F46  9A0010079A        call word 0x9a07:0x1000
00002F4B  001E079A          add [0x9a07],bl
00002F4F  0030              add [bx+si],dh
00002F51  07                pop es
00002F52  9C                pushfw
00002F53  003B              add [bp+di],bh
00002F55  07                pop es
00002F56  9C                pushfw
00002F57  004607            add [bp+0x7],al
00002F5A  A0004B            mov al,[0x4b00]
00002F5D  07                pop es
00002F5E  A00062            mov al,[0x6200]
00002F61  07                pop es
00002F62  A0001A            mov al,[0x1a00]
00002F65  1E                push ds
00002F66  6202              bound ax,[bp+si]
00002F68  6907A000          imul ax,[bx],word 0xa0
00002F6C  8107A000          add word [bx],0xa0
00002F70  9A07A000B2        call word 0xb200:0xa007
00002F75  07                pop es
00002F76  A000CA            mov al,[0xca00]
00002F79  07                pop es
00002F7A  AA                stosb
00002F7B  00D5              add ch,dl
00002F7D  07                pop es
00002F7E  AA                stosb
00002F7F  00E0              add al,ah
00002F81  07                pop es
00002F82  AA                stosb
00002F83  00EB              add bl,ch
00002F85  07                pop es
00002F86  AA                stosb
00002F87  00F6              add dh,dh
00002F89  07                pop es
00002F8A  AA                stosb
00002F8B  00FE              add dh,bh
00002F8D  07                pop es
00002F8E  AA                stosb
00002F8F  0023              add [bp+di],ah
00002F91  08AA002E          or [bp+si+0x2e00],ch
00002F95  08AA0053          or [bp+si+0x5300],ch
00002F99  08AA005B          or [bp+si+0x5b00],ch
00002F9D  08AA007B          or [bp+si+0x7b00],ch
00002FA1  08AC008E          or [si-0x7200],ch
00002FA5  08AC00A4          or [si-0x5c00],ch
00002FA9  08AC00AF          or [si-0x5100],ch
00002FAD  08AC00BA          or [si-0x4600],ch
00002FB1  08AC00E6          or [si-0x1a00],ch
00002FB5  1D5802            sbb ax,0x258
00002FB8  C108AC            ror word [bx+si],byte 0xac
00002FBB  00D3              add bl,dl
00002FBD  08AC00F3          or [si-0xd00],ch
00002FC1  08AC00FE          or [si-0x200],ch
00002FC5  08AC0005          or [si+0x500],ch
00002FC9  09AC0033          or [si+0x3300],bp
00002FCD  09AC003A          or [si+0x3a00],bp
00002FD1  09AC005D          or [si+0x5d00],bp
00002FD5  09B40068          or [si+0x6800],si
00002FD9  09B4009C          or [si-0x6400],si
00002FDD  09B400CA          or [si-0x3600],si
00002FE1  09B400D5          or [si-0x2b00],si
00002FE5  09B4000D          or [si+0xd00],si
00002FE9  0AB40046          or dh,[si+0x4600]
00002FED  0AB4006D          or dh,[si+0x6d00]
00002FF1  0AB400A6          or dh,[si-0x5a00]
00002FF5  0AB400C0          or dh,[si-0x4000]
00002FF9  0AB400C8          or dh,[si-0x3800]
00002FFD  0AB400F4          or dh,[si-0xc00]
00003001  0AB400FC          or dh,[si-0x400]
00003005  0AB4003F          or dh,[si+0x3f00]
00003009  0BB400B5          or si,[si-0x4b00]
0000300D  0CC8              or al,0xc8
0000300F  00420B            add [bp+si+0xb],al
00003012  BE007B            mov si,0x7b00
00003015  0BBE00B8          or di,[bp-0x4800]
00003019  0BBE00F1          or di,[bp-0xf00]
0000301D  0BBE00FC          or di,[bp-0x400]
00003021  0BBE001E          or di,[bp+0x1e00]
00003025  0CBE              or al,0xbe
00003027  00260CBE          add [0xbe0c],ah
0000302B  00520C            add [bp+si+0xc],dl
0000302E  BE00D8            mov si,0xd800
00003031  0CC8              or al,0xc8
00003033  00E3              add bl,ah
00003035  0CC8              or al,0xc8
00003037  0022              add [bp+si],ah
00003039  0DC800            or ax,0xc8
0000303C  4C                dec sp
0000303D  0DC800            or ax,0xc8
00003040  7D0D              jnl 0x304f
00003042  C800930D          enter 0x9300,0xd
00003046  C800E10D          enter 0xe100,0xd
0000304A  C800240E          enter 0x2400,0xe
0000304E  D200              rol byte [bx+si],cl
00003050  2B0ED200          sub cx,[0xd2]
00003054  44                inc sp
00003055  0E                push cs
00003056  D200              rol byte [bx+si],cl
00003058  4F                dec di
00003059  0E                push cs
0000305A  D200              rol byte [bx+si],cl
0000305C  6F                outsw
0000305D  0E                push cs
0000305E  D200              rol byte [bx+si],cl
00003060  7F0E              jg 0x3070
00003062  D200              rol byte [bx+si],cl
00003064  8C0ED200          mov [0xd2],cs
00003068  97                xchg ax,di
00003069  0E                push cs
0000306A  D200              rol byte [bx+si],cl
0000306C  A20ED2            mov [0xd20e],al
0000306F  00AD0EDC          add [di-0x23f2],ch
00003073  00C8              add al,cl
00003075  0E                push cs
00003076  DC00              fadd qword [bx+si]
00003078  110F              adc [bx],cx
0000307A  DC00              fadd qword [bx+si]
0000307C  330F              xor cx,[bx]
0000307E  DC00              fadd qword [bx+si]
00003080  3B0F              cmp cx,[bx]
00003082  E600              out 0x0,al
00003084  630F              arpl [bx],cx
00003086  E600              out 0x0,al
00003088  6E                outsb
00003089  0F                db 0x0f
0000308A  E600              out 0x0,al
0000308C  5E                pop si
0000308D  17                pop ss
0000308E  AE                scasb
0000308F  01850FE6          add [di-0x19f1],ax
00003093  00A50FF0          add [di-0xff1],ah
00003097  00B50FF0          add [di-0xff1],dh
0000309B  00C0              add al,al
0000309D  0F                db 0x0f
0000309E  F000CB            lock add bl,cl
000030A1  0F                db 0x0f
000030A2  F000F6            lock add dh,dh
000030A5  0F                db 0x0f
000030A6  F0001610F0        lock add [0xf010],dl
000030AB  0021              add [bx+di],ah
000030AD  10F0              adc al,dh
000030AF  002C              add [si],ch
000030B1  10F0              adc al,dh
000030B3  005710            add [bx+0x10],dl
000030B6  F0007710          lock add [bx+0x10],dh
000030BA  F0009F10FA        lock add [bx-0x5f0],bl
000030BF  00C7              add bh,al
000030C1  10FA              adc dl,bh
000030C3  00E5              add ch,ah
000030C5  10FA              adc dl,bh
000030C7  0005              add [di],al
000030C9  1104              adc [si],ax
000030CB  0115              add [di],dx
000030CD  1104              adc [si],ax
000030CF  0122              add [bp+si],sp
000030D1  1104              adc [si],ax
000030D3  012D              add [di],bp
000030D5  1104              adc [si],ax
000030D7  013A              add [bp+si],di
000030D9  1104              adc [si],ax
000030DB  014A11            add [bp+si+0x11],cx
000030DE  0401              add al,0x1
000030E0  58                pop ax
000030E1  1104              adc [si],ax
000030E3  016D11            add [di+0x11],bp
000030E6  0401              add al,0x1
000030E8  7A11              jpe 0x30fb
000030EA  0401              add al,0x1
000030EC  9F                lahf
000030ED  1104              adc [si],ax
000030EF  01AE1104          add [bp+0x411],bp
000030F3  01D7              add di,dx
000030F5  110E01E7          adc [0xe701],cx
000030F9  110E01FA          adc [0xfa01],cx
000030FD  110E01FD          adc [0xfd01],cx
00003101  1113              adc [bp+di],dx
00003103  010D              add [di],cx
00003105  1213              adc dl,[bp+di]
00003107  0112              add [bp+si],dx
00003109  1213              adc dl,[bp+di]
0000310B  01B31BFE          add [bp+di-0x1e5],si
0000310F  0115              add [di],dx
00003111  1218              adc bl,[bx+si]
00003113  014013            add [bx+si+0x13],ax
00003116  3601261222        add [ss:0x2212],sp
0000311B  0131              add [bx+di],si
0000311D  1222              adc ah,[bp+si]
0000311F  014612            add [bp+0x12],ax
00003122  2201              and al,[bx+di]
00003124  5B                pop bx
00003125  1222              adc ah,[bp+si]
00003127  01891222          add [bx+di+0x2212],cx
0000312B  01B71222          add [bx+0x2212],si
0000312F  01D4              add sp,dx
00003131  1222              adc ah,[bp+si]
00003133  01F9              add cx,di
00003135  1222              adc ah,[bp+si]
00003137  01FC              add sp,di
00003139  122C              adc ch,[si]
0000313B  0119              add [bx+di],bx
0000313D  132C              adc bp,[si]
0000313F  01881336          add [bx+si+0x3613],cx
00003143  01931336          add [bp+di+0x3613],dx
00003147  019E1336          add [bp+0x3613],bx
0000314B  01AE1336          add [bp+0x3613],bp
0000314F  01B91336          add [bx+di+0x3613],di
00003153  01C0              add ax,ax
00003155  13360139          adc si,[0x3901]
00003159  144A              adc al,0x4a
0000315B  01C3              add bx,ax
0000315D  133601EE          adc si,[0xee01]
00003161  133601F9          adc si,[0xf901]
00003165  13360100          adc si,[0x1]
00003169  1436              adc al,0x36
0000316B  0103              add [bp+di],ax
0000316D  1440              adc al,0x40
0000316F  0119              add [bx+di],bx
00003171  1440              adc al,0x40
00003173  014414            add [si+0x14],ax
00003176  4A                dec dx
00003177  014F14            add [bx+0x14],cx
0000317A  4A                dec dx
0000317B  015F14            add [bx+0x14],bx
0000317E  4A                dec dx
0000317F  017214            add [bp+si+0x14],si
00003182  54                push sp
00003183  01A21454          add [bp+si+0x5414],sp
00003187  01B5145E          add [di+0x5e14],si
0000318B  01E8              add ax,bp
0000318D  145E              adc al,0x5e
0000318F  01FB              add bx,di
00003191  1468              adc al,0x68
00003193  01261568          add [0x6815],sp
00003197  0139              add [bx+di],di
00003199  157201            adc ax,0x172
0000319C  0A168601          or dl,[0x186]
000031A0  48                dec ax
000031A1  157C01            adc ax,0x17c
000031A4  6215              bound dx,[di]
000031A6  7C01              jl 0x31a9
000031A8  95                xchg ax,bp
000031A9  157C01            adc ax,0x17c
000031AC  B015              mov al,0x15
000031AE  7C01              jl 0x31b1
000031B0  B8157C            mov ax,0x7c15
000031B3  01C3              add bx,ax
000031B5  157C01            adc ax,0x17c
000031B8  D915              fst dword [di]
000031BA  7C01              jl 0x31bd
000031BC  E415              in al,0x15
000031BE  7C01              jl 0x31c1
000031C0  E715              out 0x15,ax
000031C2  7C01              jl 0x31c5
000031C4  07                pop es
000031C5  16                push ss
000031C6  7C01              jl 0x31c9
000031C8  251D44            and ax,0x441d
000031CB  021A              add bl,[bp+si]
000031CD  16                push ss
000031CE  8601              xchg al,[bx+di]
000031D0  3B168601          cmp dx,[0x186]
000031D4  E716              out 0x16,ax
000031D6  A4                movsb
000031D7  013E1690          add [0x9016],di
000031DB  01921690          add [bp+si-0x6fea],dx
000031DF  01B7169A          add [bx-0x65ea],si
000031E3  01C6              add si,ax
000031E5  16                push ss
000031E6  9A01F416A4        call word 0xa416:0xf401
000031EB  0100              add [bx+si],ax
000031ED  17                pop ss
000031EE  A4                movsb
000031EF  010B              add [bp+di],cx
000031F1  17                pop ss
000031F2  A4                movsb
000031F3  011617A4          add [0xa417],dx
000031F7  0128              add [bx+si],bp
000031F9  17                pop ss
000031FA  A4                movsb
000031FB  0137              add [bx],si
000031FD  17                pop ss
000031FE  A4                movsb
000031FF  017417            add [si+0x17],si
00003202  AE                scasb
00003203  019617AE          add [bp-0x51e9],dx
00003207  019E17AE          add [bp-0x51e9],bx
0000320B  01BF17AE          add [bx-0x51e9],di
0000320F  01CF              add di,cx
00003211  17                pop ss
00003212  AE                scasb
00003213  0112              add [bp+si],dx
00003215  18B80124          sbb [bx+si+0x2401],bh
00003219  18B80133          sbb [bx+si+0x3301],bh
0000321D  18B80179          sbb [bx+si+0x7901],bh
00003221  18B8017C          sbb [bx+si+0x7c01],bh
00003225  18C2              sbb dl,al
00003227  018718C2          add [bx-0x3de8],ax
0000322B  01A718C2          add [bx-0x3de8],sp
0000322F  01AC18C2          add [si-0x3de8],bp
00003233  01B718C2          add [bx-0x3de8],si
00003237  01C2              add dx,ax
00003239  18C2              sbb dl,al
0000323B  01CD              add bp,cx
0000323D  18C2              sbb dl,al
0000323F  01ED              add bp,bp
00003241  18C2              sbb dl,al
00003243  01FA              add dx,di
00003245  18C2              sbb dl,al
00003247  0107              add [bx],ax
00003249  19C2              sbb dx,ax
0000324B  011C              add [si],bx
0000324D  19C2              sbb dx,ax
0000324F  0129              add [bx+di],bp
00003251  19C2              sbb dx,ax
00003253  013619C2          add [0xc219],si
00003257  015B19            add [bp+di+0x19],bx
0000325A  CC                int3
0000325B  0135              add [di],si
0000325D  1BEA              sbb bp,dx
0000325F  016B19            add [bp+di+0x19],bp
00003262  D6                salc
00003263  017819            add [bx+si+0x19],di
00003266  D6                salc
00003267  018519D6          add [di-0x29e7],ax
0000326B  018C19D6          add [si-0x29e7],cx
0000326F  01A519D6          add [di-0x29e7],sp
00003273  01B619D6          add [bp-0x29e7],si
00003277  01C1              add cx,ax
00003279  19D6              sbb si,dx
0000327B  01CC              add sp,cx
0000327D  19D6              sbb si,dx
0000327F  01D7              add di,dx
00003281  19D6              sbb si,dx
00003283  01E5              add bp,sp
00003285  19D6              sbb si,dx
00003287  0117              add [bx],dx
00003289  1AD6              sbb dl,dh
0000328B  0122              add [bp+si],sp
0000328D  1AE0              sbb ah,al
0000328F  01421A            add [bp+si+0x1a],ax
00003292  E001              loopne 0x3295
00003294  5C                pop sp
00003295  1AE0              sbb ah,al
00003297  01741A            add [si+0x1a],si
0000329A  E001              loopne 0x329d
0000329C  9D                popfw
0000329D  1AE0              sbb ah,al
0000329F  01C4              add sp,ax
000032A1  1AE0              sbb ah,al
000032A3  01DE              add si,bx
000032A5  1AE0              sbb ah,al
000032A7  01F8              add ax,di
000032A9  1AE0              sbb ah,al
000032AB  011B              add [bp+di],bx
000032AD  1BE0              sbb sp,ax
000032AF  0128              add [bx+si],bp
000032B1  1BE0              sbb sp,ax
000032B3  01401B            add [bx+si+0x1b],ax
000032B6  EA015C1BF4        jmp word 0xf41b:0x5c01
000032BB  01791B            add [bx+di+0x1b],di
000032BE  F4                hlt
000032BF  01931BF4          add [bp+di-0xbe5],dx
000032C3  01C0              add ax,ax
000032C5  1BFE              sbb di,si
000032C7  01CD              add bp,cx
000032C9  1BFE              sbb di,si
000032CB  01DA              add dx,bx
000032CD  1BFE              sbb di,si
000032CF  01E5              add bp,sp
000032D1  1B08              sbb cx,[bx+si]
000032D3  02F2              add dh,dl
000032D5  1B08              sbb cx,[bx+si]
000032D7  0202              add al,[bp+si]
000032D9  1C08              sbb al,0x8
000032DB  0205              add al,[di]
000032DD  1C12              sbb al,0x12
000032DF  021F              add bl,[bx]
000032E1  1C12              sbb al,0x12
000032E3  02641C            add ah,[si+0x1c]
000032E6  1C02              sbb al,0x2
000032E8  8C1C              mov [si],ds
000032EA  1C02              sbb al,0x2
000032EC  8F                db 0x8f
000032ED  1C26              sbb al,0x26
000032EF  0211              add dl,[bx+di]
000032F1  1D3A02            sbb ax,0x23a
000032F4  97                xchg ax,di
000032F5  1C30              sbb al,0x30
000032F7  02AC1C30          add ch,[si+0x301c]
000032FB  02B71C30          add dh,[bx+0x301c]
000032FF  02D4              add dl,ah
00003301  1C30              sbb al,0x30
00003303  02F1              add dh,cl
00003305  1C30              sbb al,0x30
00003307  02161D3A          add dl,[0x3a1d]
0000330B  021B              add bl,[bp+di]
0000330D  1D3A02            sbb ax,0x23a
00003310  201D              and [di],bl
00003312  3A02              cmp al,[bp+si]
00003314  301D              xor [di],bl
00003316  44                inc sp
00003317  0237              add dh,[bx]
00003319  1D4402            sbb ax,0x244
0000331C  49                dec cx
0000331D  1D4402            sbb ax,0x244
00003320  54                push sp
00003321  1D4402            sbb ax,0x244
00003324  641D4402          fs sbb ax,0x244
00003328  841D              test [di],bl
0000332A  44                inc sp
0000332B  02941D4E          add dl,[si+0x4e1d]
0000332F  029F1D4E          add bl,[bx+0x4e1d]
00003333  02A61D4E          add ah,[bp+0x4e1d]
00003337  02AE1D4E          add ch,[bp+0x4e1d]
0000333B  02DC              add bl,ah
0000333D  1D4E02            sbb ax,0x24e
00003340  E31D              jcxz 0x335f
00003342  4E                dec si
00003343  02F8              add bh,al
00003345  1D5802            sbb ax,0x258
00003348  081E5802          or [0x258],bl
0000334C  151E58            adc ax,0x581e
0000334F  0225              add ah,[di]
00003351  1E                push ds
00003352  6202              bound ax,[bp+si]
00003354  4F                dec di
00003355  1E                push ds
00003356  6202              bound ax,[bp+si]
00003358  6F                outsw
00003359  1E                push ds
0000335A  6202              bound ax,[bp+si]
0000335C  861E6202          xchg bl,[0x262]
00003360  9D                popfw
00003361  1E                push ds
00003362  6202              bound ax,[bp+si]
00003364  A21E6C            mov [0x6c1e],al
00003367  02A31E76          add ah,[bp+di+0x761e]
0000336B  02A41E80          add ah,[si-0x7fe2]
0000336F  02A51E8A          add ah,[di-0x75e2]
00003373  02A61E94          add ah,[bp-0x6be2]
00003377  0200              add al,[bx+si]
00003379  00BEB200          add [bp+0xb2],bh
0000337D  EB06              jmp short 0x3385
0000337F  E8150F            call word 0x4297
00003382  BFB200            mov di,0xb2
00003385  E82F0F            call word 0x42b7
00003388  8B4502            mov ax,[di+0x2]
0000338B  3480              xor al,0x80
0000338D  EB11              jmp short 0x33a0
0000338F  BEB200            mov si,0xb2
00003392  EB06              jmp short 0x339a
00003394  E8000F            call word 0x4297
00003397  BFB200            mov di,0xb2
0000339A  E81A0F            call word 0x42b7
0000339D  8B4502            mov ax,[di+0x2]
000033A0  8B5D01            mov bx,[di+0x1]
000033A3  8A35              mov dh,[di]
000033A5  B200              mov dl,0x0
000033A7  80CF80            or bh,0x80
000033AA  8B4C02            mov cx,[si+0x2]
000033AD  8B7CFF            mov di,[si-0x1]
000033B0  8B7401            mov si,[si+0x1]
000033B3  81E700FF          and di,0xff00
000033B7  81CE0080          or si,0x8000
000033BB  0AED              or ch,ch
000033BD  7463              jz 0x3422
000033BF  0AE4              or ah,ah
000033C1  7459              jz 0x341c
000033C3  3AEC              cmp ch,ah
000033C5  7305              jnc 0x33cc
000033C7  87F3              xchg si,bx
000033C9  87FA              xchg di,dx
000033CB  91                xchg ax,cx
000033CC  2AE5              sub ah,ch
000033CE  F6DC              neg ah
000033D0  80FC18            cmp ah,0x18
000033D3  7747              ja 0x341c
000033D5  D0E0              shl al,1
000033D7  D0D9              rcr cl,1
000033D9  91                xchg ax,cx
000033DA  8ACD              mov cl,ch
000033DC  B500              mov ch,0x0
000033DE  E353              jcxz 0x3433
000033E0  80F90E            cmp cl,0xe
000033E3  7C12              jl 0x33f7
000033E5  0BD2              or dx,dx
000033E7  7403              jz 0x33ec
000033E9  80CB01            or bl,0x1
000033EC  8BD3              mov dx,bx
000033EE  33DB              xor bx,bx
000033F0  80E910            sub cl,0x10
000033F3  721D              jc 0x3412
000033F5  743C              jz 0x3433
000033F7  80F905            cmp cl,0x5
000033FA  7E29              jng 0x3425
000033FC  0AD2              or dl,dl
000033FE  7403              jz 0x3403
00003400  80CE01            or dh,0x1
00003403  8AD6              mov dl,dh
00003405  8AF3              mov dh,bl
00003407  8ADF              mov bl,bh
00003409  8AFD              mov bh,ch
0000340B  80E908            sub cl,0x8
0000340E  7715              ja 0x3425
00003410  7421              jz 0x3433
00003412  D1E2              shl dx,1
00003414  D1D3              rcl bx,1
00003416  FEC1              inc cl
00003418  75F8              jnz 0x3412
0000341A  EB17              jmp short 0x3433
0000341C  8BDE              mov bx,si
0000341E  8BD7              mov dx,di
00003420  8BC1              mov ax,cx
00003422  E98500            jmp word 0x34aa
00003425  F6C23F            test dl,0x3f
00003428  7403              jz 0x342d
0000342A  80CA20            or dl,0x20
0000342D  D1EB              shr bx,1
0000342F  D1DA              rcr dx,1
00003431  E2FA              loop 0x342d
00003433  F6C23F            test dl,0x3f
00003436  7403              jz 0x343b
00003438  80CA20            or dl,0x20
0000343B  D0E0              shl al,1
0000343D  7011              jo 0x3450
0000343F  03D7              add dx,di
00003441  13DE              adc bx,si
00003443  734D              jnc 0x3492
00003445  D1DB              rcr bx,1
00003447  D1DA              rcr dx,1
00003449  FEC4              inc ah
0000344B  7545              jnz 0x3492
0000344D  E97E14            jmp word 0x48ce
00003450  2BFA              sub di,dx
00003452  1BF3              sbb si,bx
00003454  8BD7              mov dx,di
00003456  8BDE              mov bx,si
00003458  730A              jnc 0x3464
0000345A  F7D3              not bx
0000345C  F7DA              neg dx
0000345E  F5                cmc
0000345F  83D300            adc bx,byte +0x0
00003462  F6D0              not al
00003464  0BDB              or bx,bx
00003466  750B              jnz 0x3473
00003468  80EC10            sub ah,0x10
0000346B  7654              jna 0x34c1
0000346D  87DA              xchg bx,dx
0000346F  0BDB              or bx,bx
00003471  744E              jz 0x34c1
00003473  0AFF              or bh,bh
00003475  750F              jnz 0x3486
00003477  80EC08            sub ah,0x8
0000347A  7645              jna 0x34c1
0000347C  8AFB              mov bh,bl
0000347E  8ADE              mov bl,dh
00003480  8AF2              mov dh,dl
00003482  B200              mov dl,0x0
00003484  0AFF              or bh,bh
00003486  780A              js 0x3492
00003488  FECC              dec ah
0000348A  7435              jz 0x34c1
0000348C  D1E2              shl dx,1
0000348E  D1D3              rcl bx,1
00003490  71F6              jno 0x3488
00003492  80FA80            cmp dl,0x80
00003495  7707              ja 0x349e
00003497  7211              jc 0x34aa
00003499  F6C601            test dh,0x1
0000349C  740C              jz 0x34aa
0000349E  80C601            add dh,0x1
000034A1  83D300            adc bx,byte +0x0
000034A4  7304              jnc 0x34aa
000034A6  FEC4              inc ah
000034A8  7414              jz 0x34be
000034AA  2480              and al,0x80
000034AC  80E77F            and bh,0x7f
000034AF  0AC7              or al,bh
000034B1  A3B400            mov [0xb4],ax
000034B4  8AE3              mov ah,bl
000034B6  8AC6              mov al,dh
000034B8  A3B200            mov [0xb2],ax
000034BB  C3                ret
000034BC  7903              jns 0x34c1
000034BE  E90D14            jmp word 0x48ce
000034C1  C606B50000        mov byte [0xb5],0x0
000034C6  C3                ret
000034C7  BEB200            mov si,0xb2
000034CA  EB06              jmp short 0x34d2
000034CC  E8C80D            call word 0x4297
000034CF  BFB200            mov di,0xb2
000034D2  E8E20D            call word 0x42b7
000034D5  AD                lodsw
000034D6  8B34              mov si,[si]
000034D8  96                xchg ax,si
000034D9  0AE4              or ah,ah
000034DB  74E4              jz 0x34c1
000034DD  8B4D02            mov cx,[di+0x2]
000034E0  0AED              or ch,ch
000034E2  74DD              jz 0x34c1
000034E4  8B3D              mov di,[di]
000034E6  8BD8              mov bx,ax
000034E8  32C1              xor al,cl
000034EA  80EC81            sub ah,0x81
000034ED  80ED80            sub ch,0x80
000034F0  02E5              add ah,ch
000034F2  70C8              jo 0x34bc
000034F4  80C480            add ah,0x80
000034F7  50                push ax
000034F8  E81900            call word 0x3514
000034FB  8BD3              mov dx,bx
000034FD  93                xchg ax,bx
000034FE  58                pop ax
000034FF  0AFF              or bh,bh
00003501  780A              js 0x350d
00003503  D1E2              shl dx,1
00003505  D1D3              rcl bx,1
00003507  0AE4              or ah,ah
00003509  7587              jnz 0x3492
0000350B  EBB4              jmp short 0x34c1
0000350D  FEC4              inc ah
0000350F  74AD              jz 0x34be
00003511  E97EFF            jmp word 0x3492
00003514  B700              mov bh,0x0
00003516  8AEF              mov ch,bh
00003518  80CB80            or bl,0x80
0000351B  80C980            or cl,0x80
0000351E  53                push bx
0000351F  53                push bx
00003520  8BC6              mov ax,si
00003522  F7E7              mul di
00003524  8BDA              mov bx,dx
00003526  0BC0              or ax,ax
00003528  58                pop ax
00003529  9C                pushfw
0000352A  F7E7              mul di
0000352C  03D8              add bx,ax
0000352E  83D200            adc dx,byte +0x0
00003531  8BFA              mov di,dx
00003533  8BC1              mov ax,cx
00003535  F7E6              mul si
00003537  03D8              add bx,ax
00003539  13FA              adc di,dx
0000353B  9D                popfw
0000353C  7403              jz 0x3541
0000353E  80CB01            or bl,0x1
00003541  58                pop ax
00003542  F6E1              mul cl
00003544  03C7              add ax,di
00003546  C3                ret
00003547  BEB200            mov si,0xb2
0000354A  EB06              jmp short 0x3552
0000354C  E8480D            call word 0x4297
0000354F  BFB200            mov di,0xb2
00003552  E8620D            call word 0x42b7
00003555  8B4D02            mov cx,[di+0x2]
00003558  8B4402            mov ax,[si+0x2]
0000355B  0AED              or ch,ch
0000355D  7443              jz 0x35a2
0000355F  0AE4              or ah,ah
00003561  74A8              jz 0x350b
00003563  32C1              xor al,cl
00003565  80EC80            sub ah,0x80
00003568  80ED80            sub ch,0x80
0000356B  2AE5              sub ah,ch
0000356D  7083              jo 0x34f2
0000356F  80C480            add ah,0x80
00003572  50                push ax
00003573  80C980            or cl,0x80
00003576  8B5401            mov dx,[si+0x1]
00003579  8A24              mov ah,[si]
0000357B  32C0              xor al,al
0000357D  80CE80            or dh,0x80
00003580  8B5D01            mov bx,[di+0x1]
00003583  8A2D              mov ch,[di]
00003585  32C9              xor cl,cl
00003587  80CF80            or bh,0x80
0000358A  D1EA              shr dx,1
0000358C  D1D8              rcr ax,1
0000358E  E81800            call word 0x35a9
00003591  56                push si
00003592  E81000            call word 0x35a5
00003595  0BC2              or ax,dx
00003597  8BD6              mov dx,si
00003599  7403              jz 0x359e
0000359B  80CA01            or dl,0x1
0000359E  5B                pop bx
0000359F  E95CFF            jmp word 0x34fe
000035A2  E93213            jmp word 0x48d7
000035A5  3BD3              cmp dx,bx
000035A7  731D              jnc 0x35c6
000035A9  F7F3              div bx
000035AB  96                xchg ax,si
000035AC  33C0              xor ax,ax
000035AE  E315              jcxz 0x35c5
000035B0  8BFA              mov di,dx
000035B2  8BC6              mov ax,si
000035B4  F7E1              mul cx
000035B6  F7D8              neg ax
000035B8  1BFA              sbb di,dx
000035BA  8BD7              mov dx,di
000035BC  7307              jnc 0x35c5
000035BE  4E                dec si
000035BF  03C1              add ax,cx
000035C1  13D3              adc dx,bx
000035C3  73F9              jnc 0x35be
000035C5  C3                ret
000035C6  BEFFFF            mov si,0xffff
000035C9  2BC1              sub ax,cx
000035CB  03D0              add dx,ax
000035CD  8BC1              mov ax,cx
000035CF  73ED              jnc 0x35be
000035D1  C3                ret
000035D2  4C                dec sp
000035D3  6963656E73        imul sp,[bp+di+0x65],word 0x736e
000035D8  6564204D61        and [fs:di+0x61],cl
000035DD  7465              jz 0x3644
000035DF  7269              jc 0x364a
000035E1  61                popaw
000035E2  6C                insb
000035E3  202D              and [di],ch
000035E5  205072            and [bx+si+0x72],dl
000035E8  6F                outsw
000035E9  677261            jc 0x364d
000035EC  6D                insw
000035ED  205072            and [bx+si+0x72],dl
000035F0  6F                outsw
000035F1  7065              jo 0x3658
000035F3  7274              jc 0x3669
000035F5  7920              jns 0x3617
000035F7  6F                outsw
000035F8  66204942          o32 and [bx+di+0x42],cl
000035FC  4D                dec bp
000035FD  55                push bp
000035FE  56                push si
000035FF  57                push di
00003600  CD10              int 0x10
00003602  5F                pop di
00003603  5E                pop si
00003604  5D                pop bp
00003605  C3                ret
00003606  C3                ret
00003607  CB                retf
00003608  891E0E00          mov [0xe],bx
0000360C  E98C11            jmp word 0x479b
0000360F  9A38054702        call word 0x247:0x538
00003614  FF1E0600          call word far [0x6]
00003618  E88807            call word 0x3da3
0000361B  32C0              xor al,al
0000361D  A20A00            mov [0xa],al
00003620  A20B00            mov [0xb],al
00003623  A24000            mov [0x40],al
00003626  A28800            mov [0x88],al
00003629  A28900            mov [0x89],al
0000362C  A28A00            mov [0x8a],al
0000362F  A28E00            mov [0x8e],al
00003632  B003              mov al,0x3
00003634  A28F00            mov [0x8f],al
00003637  E83E37            call word 0x6d78
0000363A  B004              mov al,0x4
0000363C  A28D00            mov [0x8d],al
0000363F  A28B00            mov [0x8b],al
00003642  C6068C0078        mov byte [0x8c],0x78
00003647  C3                ret
00003648  B40F              mov ah,0xf
0000364A  E8B0FF            call word 0x35fd
0000364D  BB4700            mov bx,0x47
00003650  D7                xlatb
00003651  50                push ax
00003652  B400              mov ah,0x0
00003654  E8A6FF            call word 0x35fd
00003657  58                pop ax
00003658  A25000            mov [0x50],al
0000365B  A24F00            mov [0x4f],al
0000365E  B428              mov ah,0x28
00003660  3C02              cmp al,0x2
00003662  720D              jc 0x3671
00003664  B450              mov ah,0x50
00003666  3C07              cmp al,0x7
00003668  7507              jnz 0x3671
0000366A  B90B0C            mov cx,0xc0b
0000366D  890E5600          mov [0x56],cx
00003671  88261606          mov [0x616],ah
00003675  E86E03            call word 0x39e6
00003678  FA                cli
00003679  8CD8              mov ax,ds
0000367B  1E                push ds
0000367C  33D2              xor dx,dx
0000367E  8EDA              mov ds,dx
00003680  A31005            mov [0x510],ax
00003683  A10000            mov ax,[0x0]
00003686  26A3F605          mov [es:0x5f6],ax
0000368A  A10200            mov ax,[0x2]
0000368D  26A3F805          mov [es:0x5f8],ax
00003691  A11000            mov ax,[0x10]
00003694  26A3FA05          mov [es:0x5fa],ax
00003698  A11200            mov ax,[0x12]
0000369B  26A3FC05          mov [es:0x5fc],ax
0000369F  C70600004215      mov word [0x0],0x1542
000036A5  8C0E0200          mov [0x2],cs
000036A9  C70610004A15      mov word [0x10],0x154a
000036AF  8C0E1200          mov [0x12],cs
000036B3  A11004            mov ax,[0x410]
000036B6  A31E05            mov [0x51e],ax
000036B9  A11204            mov ax,[0x412]
000036BC  A32005            mov [0x520],ax
000036BF  A19000            mov ax,[0x90]
000036C2  A31A05            mov [0x51a],ax
000036C5  A19200            mov ax,[0x92]
000036C8  A31C05            mov [0x51c],ax
000036CB  A16C00            mov ax,[0x6c]
000036CE  A31605            mov [0x516],ax
000036D1  A16E00            mov ax,[0x6e]
000036D4  A31805            mov [0x518],ax
000036D7  A17000            mov ax,[0x70]
000036DA  A31205            mov [0x512],ax
000036DD  A17200            mov ax,[0x72]
000036E0  A31405            mov [0x514],ax
000036E3  A12400            mov ax,[0x24]
000036E6  A3BC03            mov [0x3bc],ax
000036E9  A12600            mov ax,[0x26]
000036EC  A3BE03            mov [0x3be],ax
000036EF  C7069000B205      mov word [0x90],0x5b2
000036F5  8C0E9200          mov [0x92],cs
000036F9  C7066C00A904      mov word [0x6c],0x4a9
000036FF  8C0E6E00          mov [0x6e],cs
00003703  C70670008B05      mov word [0x70],0x58b
00003709  8C0E7200          mov [0x72],cs
0000370D  A12000            mov ax,[0x20]
00003710  A3C003            mov [0x3c0],ax
00003713  A12200            mov ax,[0x22]
00003716  A3C203            mov [0x3c2],ax
00003719  1F                pop ds
0000371A  FB                sti
0000371B  BBFE05            mov bx,0x5fe
0000371E  891E4500          mov [0x45],bx
00003722  C747040400        mov word [bx+0x4],0x4
00003727  B90A06            mov cx,0x60a
0000372A  894F02            mov [bx+0x2],cx
0000372D  E81B06            call word 0x3d4b
00003730  83C104            add cx,byte +0x4
00003733  890F              mov [bx],cx
00003735  9AE7094702        call word 0x247:0x9e7
0000373A  C3                ret
0000373B  81FB0001          cmp bx,0x100
0000373F  7D03              jnl 0x3744
00003741  BB0001            mov bx,0x100
00003744  891E3E00          mov [0x3e],bx
00003748  CB                retf
00003749  B304              mov bl,0x4
0000374B  F9                stc
0000374C  EB02              jmp short 0x3750
0000374E  B303              mov bl,0x3
00003750  E80500            call word 0x3758
00003753  FF2E0C00          jmp word far [0xc]
00003757  F8                clc
00003758  7202              jc 0x375c
0000375A  B300              mov bl,0x0
0000375C  53                push bx
0000375D  9C                pushfw
0000375E  1E                push ds
0000375F  33C0              xor ax,ax
00003761  8ED8              mov ds,ax
00003763  A11E05            mov ax,[0x51e]
00003766  3B061004          cmp ax,[0x410]
0000376A  A31004            mov [0x410],ax
0000376D  1F                pop ds
0000376E  9C                pushfw
0000376F  9A530B4702        call word 0x247:0xb53
00003774  9D                popfw
00003775  A14F00            mov ax,[0x4f]
00003778  A25000            mov [0x50],al
0000377B  7508              jnz 0x3785
0000377D  9D                popfw
0000377E  720E              jc 0x378e
00003780  3AE0              cmp ah,al
00003782  740A              jz 0x378e
00003784  9C                pushfw
00003785  9D                popfw
00003786  B400              mov ah,0x0
00003788  E872FE            call word 0x35fd
0000378B  E8B401            call word 0x3942
0000378E  5B                pop bx
0000378F  1E                push ds
00003790  33C0              xor ax,ax
00003792  8ED8              mov ds,ax
00003794  881E0105          mov [0x501],bl
00003798  1F                pop ds
00003799  9A38054702        call word 0x247:0x538
0000379E  B90607            mov cx,0x706
000037A1  803E500007        cmp byte [0x50],0x7
000037A6  7503              jnz 0x37ab
000037A8  B90B0C            mov cx,0xc0b
000037AB  890E5600          mov [0x56],cx
000037AF  E82F02            call word 0x39e1
000037B2  FA                cli
000037B3  E421              in al,0x21
000037B5  0C18              or al,0x18
000037B7  E621              out 0x21,al
000037B9  1E                push ds
000037BA  33C0              xor ax,ax
000037BC  8ED8              mov ds,ax
000037BE  A11E05            mov ax,[0x51e]
000037C1  A31004            mov [0x410],ax
000037C4  A12005            mov ax,[0x520]
000037C7  A31204            mov [0x412],ax
000037CA  A11A05            mov ax,[0x51a]
000037CD  A39000            mov [0x90],ax
000037D0  A11C05            mov ax,[0x51c]
000037D3  A39200            mov [0x92],ax
000037D6  A11605            mov ax,[0x516]
000037D9  A36C00            mov [0x6c],ax
000037DC  A11805            mov ax,[0x518]
000037DF  A36E00            mov [0x6e],ax
000037E2  A11205            mov ax,[0x512]
000037E5  A37000            mov [0x70],ax
000037E8  A11405            mov ax,[0x514]
000037EB  A37200            mov [0x72],ax
000037EE  A1BC03            mov ax,[0x3bc]
000037F1  A32400            mov [0x24],ax
000037F4  A1BE03            mov ax,[0x3be]
000037F7  A32600            mov [0x26],ax
000037FA  26A1F605          mov ax,[es:0x5f6]
000037FE  A30000            mov [0x0],ax
00003801  26A1F805          mov ax,[es:0x5f8]
00003805  A30200            mov [0x2],ax
00003808  26A1FA05          mov ax,[es:0x5fa]
0000380C  A31000            mov [0x10],ax
0000380F  26A1FC05          mov ax,[es:0x5fc]
00003813  A31200            mov [0x12],ax
00003816  1F                pop ds
00003817  FB                sti
00003818  C3                ret
00003819  FB                sti
0000381A  50                push ax
0000381B  1E                push ds
0000381C  52                push dx
0000381D  33D2              xor dx,dx
0000381F  8EDA              mov ds,dx
00003821  8E1E1005          mov ds,[0x510]
00003825  9A38054702        call word 0x247:0x538
0000382A  33C0              xor ax,ax
0000382C  A31200            mov [0x12],ax
0000382F  FEC8              dec al
00003831  A21000            mov [0x10],al
00003834  5A                pop dx
00003835  1F                pop ds
00003836  58                pop ax
00003837  CF                iretw
00003838  B000              mov al,0x0
0000383A  86061000          xchg al,[0x10]
0000383E  0AC0              or al,al
00003840  C3                ret
00003841  E8C841            call word 0x7a0c
00003844  0D2A42            or ax,0x422a
00003847  7265              jc 0x38ae
00003849  61                popaw
0000384A  6BAAE99F11        imul bp,[bp+si-0x6017],byte +0x11
0000384F  50                push ax
00003850  52                push dx
00003851  1E                push ds
00003852  33D2              xor dx,dx
00003854  8EDA              mov ds,dx
00003856  8E1E1005          mov ds,[0x510]
0000385A  833E430000        cmp word [0x43],byte +0x0
0000385F  740B              jz 0x386c
00003861  FF0E4300          dec word [0x43]
00003865  7505              jnz 0x386c
00003867  9A15054702        call word 0x247:0x515
0000386C  FE0E4200          dec byte [0x42]
00003870  802642001F        and byte [0x42],0x1f
00003875  7506              jnz 0x387d
00003877  1F                pop ds
00003878  5A                pop dx
00003879  58                pop ax
0000387A  CDF0              int 0xf0
0000387C  CF                iretw
0000387D  B020              mov al,0x20
0000387F  E620              out 0x20,al
00003881  1F                pop ds
00003882  5A                pop dx
00003883  58                pop ax
00003884  CF                iretw
00003885  56                push si
00003886  53                push bx
00003887  51                push cx
00003888  8B1E4500          mov bx,[0x45]
0000388C  837F0600          cmp word [bx+0x6],byte +0x0
00003890  741E              jz 0x38b0
00003892  E87F04            call word 0x3d14
00003895  E642              out 0x42,al
00003897  8AC4              mov al,ah
00003899  E642              out 0x42,al
0000389B  890E4300          mov [0x43],cx
0000389F  C606410000        mov byte [0x41],0x0
000038A4  59                pop cx
000038A5  5B                pop bx
000038A6  5E                pop si
000038A7  CB                retf
000038A8  56                push si
000038A9  53                push bx
000038AA  51                push cx
000038AB  C606410000        mov byte [0x41],0x0
000038B0  803E410000        cmp byte [0x41],0x0
000038B5  7540              jnz 0x38f7
000038B7  FA                cli
000038B8  8B364500          mov si,[0x45]
000038BC  BBFE05            mov bx,0x5fe
000038BF  3BDE              cmp bx,si
000038C1  7407              jz 0x38ca
000038C3  E81E40            call word 0x78e4
000038C6  891E4500          mov [0x45],bx
000038CA  8B4F02            mov cx,[bx+0x2]
000038CD  E87B04            call word 0x3d4b
000038D0  50                push ax
000038D1  E461              in al,0x61
000038D3  24FC              and al,0xfc
000038D5  E661              out 0x61,al
000038D7  1E                push ds
000038D8  33C0              xor ax,ax
000038DA  8ED8              mov ds,ax
000038DC  A1C003            mov ax,[0x3c0]
000038DF  A32000            mov [0x20],ax
000038E2  A1C203            mov ax,[0x3c2]
000038E5  A32200            mov [0x22],ax
000038E8  1F                pop ds
000038E9  32C0              xor al,al
000038EB  E640              out 0x40,al
000038ED  E640              out 0x40,al
000038EF  58                pop ax
000038F0  C70643000000      mov word [0x43],0x0
000038F6  FB                sti
000038F7  59                pop cx
000038F8  5B                pop bx
000038F9  5E                pop si
000038FA  CB                retf
000038FB  55                push bp
000038FC  57                push di
000038FD  56                push si
000038FE  1E                push ds
000038FF  33D2              xor dx,dx
00003901  8EDA              mov ds,dx
00003903  8E1E1005          mov ds,[0x510]
00003907  803E0A0000        cmp byte [0xa],0x0
0000390C  7404              jz 0x3912
0000390E  FF160200          call word [0x2]
00003912  803E0B0000        cmp byte [0xb],0x0
00003917  7404              jz 0x391d
00003919  FF160400          call word [0x4]
0000391D  1F                pop ds
0000391E  5E                pop si
0000391F  5F                pop di
00003920  5D                pop bp
00003921  CF                iretw
00003922  FB                sti
00003923  8BC7              mov ax,di
00003925  83C414            add sp,byte +0x14
00003928  1F                pop ds
00003929  07                pop es
0000392A  0AC0              or al,al
0000392C  7503              jnz 0x3931
0000392E  E9E80F            jmp word 0x4919
00003931  3C02              cmp al,0x2
00003933  7503              jnz 0x3938
00003935  E9E40F            jmp word 0x491c
00003938  E9E40F            jmp word 0x491f
0000393B  8A265400          mov ah,[0x54]
0000393F  FECC              dec ah
00003941  C3                ret
00003942  BA0101            mov dx,0x101
00003945  EB04              jmp short 0x394b
00003947  8B165300          mov dx,[0x53]
0000394B  89165300          mov [0x53],dx
0000394F  E80100            call word 0x3953
00003952  C3                ret
00003953  50                push ax
00003954  8A3E5100          mov bh,[0x51]
00003958  E80200            call word 0x395d
0000395B  58                pop ax
0000395C  C3                ret
0000395D  86F2              xchg dh,dl
0000395F  FECE              dec dh
00003961  FECA              dec dl
00003963  B402              mov ah,0x2
00003965  E895FC            call word 0x35fd
00003968  86F2              xchg dh,dl
0000396A  C3                ret
0000396B  51                push cx
0000396C  52                push dx
0000396D  E81700            call word 0x3987
00003970  B406              mov ah,0x6
00003972  E888FC            call word 0x35fd
00003975  EB0A              jmp short 0x3981
00003977  51                push cx
00003978  52                push dx
00003979  E80B00            call word 0x3987
0000397C  B407              mov ah,0x7
0000397E  E87CFC            call word 0x35fd
00003981  E82200            call word 0x39a6
00003984  5A                pop dx
00003985  59                pop cx
00003986  C3                ret
00003987  E81700            call word 0x39a1
0000398A  8AEF              mov ch,bh
0000398C  FECD              dec ch
0000398E  B100              mov cl,0x0
00003990  8AF3              mov dh,bl
00003992  FECE              dec dh
00003994  8A161606          mov dl,[0x616]
00003998  FECA              dec dl
0000399A  B001              mov al,0x1
0000399C  8A3E8200          mov bh,[0x82]
000039A0  C3                ret
000039A1  A05100            mov al,[0x51]
000039A4  EB03              jmp short 0x39a9
000039A6  A05200            mov al,[0x52]
000039A9  E82300            call word 0x39cf
000039AC  7520              jnz 0x39ce
000039AE  8A265000          mov ah,[0x50]
000039B2  80FC07            cmp ah,0x7
000039B5  7417              jz 0x39ce
000039B7  52                push dx
000039B8  BA0008            mov dx,0x800
000039BB  80FC02            cmp ah,0x2
000039BE  7202              jc 0x39c2
000039C0  D0E6              shl dh,1
000039C2  32E4              xor ah,ah
000039C4  F7E2              mul dx
000039C6  1E                push ds
000039C7  8EDA              mov ds,dx
000039C9  A34E04            mov [0x44e],ax
000039CC  1F                pop ds
000039CD  5A                pop dx
000039CE  C3                ret
000039CF  50                push ax
000039D0  A05000            mov al,[0x50]
000039D3  3C07              cmp al,0x7
000039D5  7404              jz 0x39db
000039D7  3C04              cmp al,0x4
000039D9  7302              jnc 0x39dd
000039DB  32C0              xor al,al
000039DD  0AC0              or al,al
000039DF  58                pop ax
000039E0  C3                ret
000039E1  50                push ax
000039E2  B000              mov al,0x0
000039E4  EB03              jmp short 0x39e9
000039E6  50                push ax
000039E7  B020              mov al,0x20
000039E9  51                push cx
000039EA  53                push bx
000039EB  50                push ax
000039EC  E858FF            call word 0x3947
000039EF  58                pop ax
000039F0  5B                pop bx
000039F1  8B0E5600          mov cx,[0x56]
000039F5  86E9              xchg ch,cl
000039F7  803E200100        cmp byte [0x120],0x0
000039FC  7402              jz 0x3a00
000039FE  B504              mov ch,0x4
00003A00  0AE8              or ch,al
00003A02  B401              mov ah,0x1
00003A04  E8F6FB            call word 0x35fd
00003A07  59                pop cx
00003A08  58                pop ax
00003A09  C3                ret
00003A0A  E8C2FF            call word 0x39cf
00003A0D  7452              jz 0x3a61
00003A0F  50                push ax
00003A10  53                push bx
00003A11  51                push cx
00003A12  52                push dx
00003A13  56                push si
00003A14  57                push di
00003A15  8CC6              mov si,es
00003A17  BF0000            mov di,0x0
00003A1A  8EC7              mov es,di
00003A1C  26FF367C00        push word [es:0x7c]
00003A21  26FF367E00        push word [es:0x7e]
00003A26  26C7067C005800    mov word [es:0x7c],0x58
00003A2D  268C1E7E00        mov [es:0x7e],ds
00003A32  8EC6              mov es,si
00003A34  B081              mov al,0x81
00003A36  02062001          add al,[0x120]
00003A3A  B383              mov bl,0x83
00003A3C  8A3E5100          mov bh,[0x51]
00003A40  B90100            mov cx,0x1
00003A43  B409              mov ah,0x9
00003A45  E8B5FB            call word 0x35fd
00003A48  8CC6              mov si,es
00003A4A  BF0000            mov di,0x0
00003A4D  8EC7              mov es,di
00003A4F  268F067E00        pop word [es:0x7e]
00003A54  268F067C00        pop word [es:0x7c]
00003A59  8EC6              mov es,si
00003A5B  5F                pop di
00003A5C  5E                pop si
00003A5D  5A                pop dx
00003A5E  59                pop cx
00003A5F  5B                pop bx
00003A60  58                pop ax
00003A61  C3                ret
00003A62  3ADD              cmp bl,ch
00003A64  7328              jnc 0x3a8e
00003A66  8809              mov [bx+di],cl
00003A68  43                inc bx
00003A69  3AEB              cmp ch,bl
00003A6B  7404              jz 0x3a71
00003A6D  8A08              mov cl,[bx+si]
00003A6F  EBF5              jmp short 0x3a66
00003A71  87FE              xchg di,si
00003A73  BB0000            mov bx,0x0
00003A76  891E6800          mov [0x68],bx
00003A7A  C3                ret
00003A7B  8A08              mov cl,[bx+si]
00003A7D  8809              mov [bx+di],cl
00003A7F  3ADD              cmp bl,ch
00003A81  730B              jnc 0x3a8e
00003A83  FF066800          inc word [0x68]
00003A87  5F                pop di
00003A88  5E                pop si
00003A89  5A                pop dx
00003A8A  59                pop cx
00003A8B  5B                pop bx
00003A8C  58                pop ax
00003A8D  CB                retf
00003A8E  C70668000000      mov word [0x68],0x0
00003A94  E92B0E            jmp word 0x48c2
00003A97  803E100000        cmp byte [0x10],0x0
00003A9C  7511              jnz 0x3aaf
00003A9E  833E120000        cmp word [0x12],byte +0x0
00003AA3  750A              jnz 0x3aaf
00003AA5  55                push bp
00003AA6  56                push si
00003AA7  57                push di
00003AA8  B401              mov ah,0x1
00003AAA  CD16              int 0x16
00003AAC  5F                pop di
00003AAD  5E                pop si
00003AAE  5D                pop bp
00003AAF  C3                ret
00003AB0  E8E4FF            call word 0x3a97
00003AB3  74FB              jz 0x3ab0
00003AB5  803E100000        cmp byte [0x10],0x0
00003ABA  7408              jz 0x3ac4
00003ABC  C606100000        mov byte [0x10],0x0
00003AC1  B003              mov al,0x3
00003AC3  C3                ret
00003AC4  833E120000        cmp word [0x12],byte +0x0
00003AC9  753D              jnz 0x3b08
00003ACB  55                push bp
00003ACC  56                push si
00003ACD  57                push di
00003ACE  B400              mov ah,0x0
00003AD0  CD16              int 0x16
00003AD2  5F                pop di
00003AD3  5E                pop si
00003AD4  5D                pop bp
00003AD5  0AC0              or al,al
00003AD7  750A              jnz 0x3ae3
00003AD9  80FC3B            cmp ah,0x3b
00003ADC  7205              jc 0x3ae3
00003ADE  80FC45            cmp ah,0x45
00003AE1  7203              jc 0x3ae6
00003AE3  0AC0              or al,al
00003AE5  C3                ret
00003AE6  56                push si
00003AE7  50                push ax
00003AE8  BE1600            mov si,0x16
00003AEB  86C4              xchg al,ah
00003AED  2C3B              sub al,0x3b
00003AEF  D0E0              shl al,1
00003AF1  D0E0              shl al,1
00003AF3  03F0              add si,ax
00003AF5  8B04              mov ax,[si]
00003AF7  A31200            mov [0x12],ax
00003AFA  0BC0              or ax,ax
00003AFC  58                pop ax
00003AFD  7418              jz 0x3b17
00003AFF  8B7402            mov si,[si+0x2]
00003B02  89361400          mov [0x14],si
00003B06  EB01              jmp short 0x3b09
00003B08  56                push si
00003B09  8B361400          mov si,[0x14]
00003B0D  8A04              mov al,[si]
00003B0F  FF061400          inc word [0x14]
00003B13  FF0E1200          dec word [0x12]
00003B17  5E                pop si
00003B18  EBC9              jmp short 0x3ae3
00003B1A  52                push dx
00003B1B  53                push bx
00003B1C  51                push cx
00003B1D  50                push ax
00003B1E  8B165300          mov dx,[0x53]
00003B22  58                pop ax
00003B23  50                push ax
00003B24  3C07              cmp al,0x7
00003B26  744B              jz 0x3b73
00003B28  3C1D              cmp al,0x1d
00003B2A  744E              jz 0x3b7a
00003B2C  3C1C              cmp al,0x1c
00003B2E  740F              jz 0x3b3f
00003B30  3C0D              cmp al,0xd
00003B32  7415              jz 0x3b49
00003B34  3C0A              cmp al,0xa
00003B36  7411              jz 0x3b49
00003B38  3C0C              cmp al,0xc
00003B3A  7457              jz 0x3b93
00003B3C  E85B00            call word 0x3b9a
00003B3F  FEC6              inc dh
00003B41  3A361606          cmp dh,[0x616]
00003B45  7702              ja 0x3b49
00003B47  EB22              jmp short 0x3b6b
00003B49  B601              mov dh,0x1
00003B4B  80FA18            cmp dl,0x18
00003B4E  7219              jc 0x3b69
00003B50  BB1801            mov bx,0x118
00003B53  E815FE            call word 0x396b
00003B56  B218              mov dl,0x18
00003B58  803EF20702        cmp byte [0x7f2],0x2
00003B5D  720C              jc 0x3b6b
00003B5F  FE0EF207          dec byte [0x7f2]
00003B63  FE0EF407          dec byte [0x7f4]
00003B67  EB02              jmp short 0x3b6b
00003B69  FEC2              inc dl
00003B6B  E8DDFD            call word 0x394b
00003B6E  58                pop ax
00003B6F  59                pop cx
00003B70  5B                pop bx
00003B71  5A                pop dx
00003B72  C3                ret
00003B73  9A85084702        call word 0x247:0x885
00003B78  EBF4              jmp short 0x3b6e
00003B7A  80FE01            cmp dh,0x1
00003B7D  770D              ja 0x3b8c
00003B7F  80FA01            cmp dl,0x1
00003B82  74E7              jz 0x3b6b
00003B84  FECA              dec dl
00003B86  8A361606          mov dh,[0x616]
00003B8A  FEC6              inc dh
00003B8C  FECE              dec dh
00003B8E  E8BAFD            call word 0x394b
00003B91  EBDB              jmp short 0x3b6e
00003B93  9AE7094702        call word 0x247:0x9e7
00003B98  EBD4              jmp short 0x3b6e
00003B9A  52                push dx
00003B9B  E8A9FD            call word 0x3947
00003B9E  5A                pop dx
00003B9F  8A1E8100          mov bl,[0x81]
00003BA3  B90100            mov cx,0x1
00003BA6  B409              mov ah,0x9
00003BA8  E852FA            call word 0x35fd
00003BAB  C3                ret
00003BAC  50                push ax
00003BAD  52                push dx
00003BAE  8BD7              mov dx,di
00003BB0  D1FA              sar dx,1
00003BB2  83C2FA            add dx,byte -0x6
00003BB5  55                push bp
00003BB6  56                push si
00003BB7  57                push di
00003BB8  B400              mov ah,0x0
00003BBA  CD17              int 0x17
00003BBC  5F                pop di
00003BBD  5E                pop si
00003BBE  5D                pop bp
00003BBF  8AF4              mov dh,ah
00003BC1  80E428            and ah,0x28
00003BC4  80FC28            cmp ah,0x28
00003BC7  740D              jz 0x3bd6
00003BC9  F6C408            test ah,0x8
00003BCC  750B              jnz 0x3bd9
00003BCE  F6C601            test dh,0x1
00003BD1  7409              jz 0x3bdc
00003BD3  E9100D            jmp word 0x48e6
00003BD6  E9130D            jmp word 0x48ec
00003BD9  E90D0D            jmp word 0x48e9
00003BDC  5A                pop dx
00003BDD  58                pop ax
00003BDE  50                push ax
00003BDF  3C0D              cmp al,0xd
00003BE1  7510              jnz 0x3bf3
00003BE3  807C2FFF          cmp byte [si+0x2f],0xff
00003BE7  7505              jnz 0x3bee
00003BE9  803C04            cmp byte [si],0x4
00003BEC  7405              jz 0x3bf3
00003BEE  B00A              mov al,0xa
00003BF0  E8B9FF            call word 0x3bac
00003BF3  58                pop ax
00003BF4  C3                ret
00003BF5  E8BF06            call word 0x42b7
00003BF8  B92003            mov cx,0x320
00003BFB  BA8000            mov dx,0x80
00003BFE  EB2D              jmp short 0x3c2d
00003C00  E9C80C            jmp word 0x48cb
00003C03  E8B106            call word 0x42b7
00003C06  83FB25            cmp bx,byte +0x25
00003C09  72F5              jc 0x3c00
00003C0B  8BCB              mov cx,bx
00003C0D  8BF2              mov si,dx
00003C0F  BF8008            mov di,0x880
00003C12  A5                movsw
00003C13  A4                movsb
00003C14  AC                lodsb
00003C15  3C91              cmp al,0x91
00003C17  73E7              jnc 0x3c00
00003C19  0405              add al,0x5
00003C1B  3C91              cmp al,0x91
00003C1D  BAFFFF            mov dx,0xffff
00003C20  730B              jnc 0x3c2d
00003C22  AA                stosb
00003C23  BE8008            mov si,0x880
00003C26  9A89304702        call word 0x247:0x3089
00003C2B  8BD3              mov dx,bx
00003C2D  0BD2              or dx,dx
00003C2F  7506              jnz 0x3c37
00003C31  9A38054702        call word 0x247:0x538
00003C36  C3                ret
00003C37  E89000            call word 0x3cca
00003C3A  86F2              xchg dh,dl
00003C3C  52                push dx
00003C3D  0BC9              or cx,cx
00003C3F  7504              jnz 0x3c45
00003C41  B502              mov ch,0x2
00003C43  EB0C              jmp short 0x3c51
00003C45  BA1200            mov dx,0x12
00003C48  B8DC34            mov ax,0x34dc
00003C4B  F7F1              div cx
00003C4D  8BC8              mov cx,ax
00003C4F  86E9              xchg ch,cl
00003C51  51                push cx
00003C52  8B1E4500          mov bx,[0x45]
00003C56  8B4F04            mov cx,[bx+0x4]
00003C59  E8DCFB            call word 0x3838
00003C5C  7403              jz 0x3c61
00003C5E  E9E0FB            jmp word 0x3841
00003C61  3B4F06            cmp cx,[bx+0x6]
00003C64  74F3              jz 0x3c59
00003C66  59                pop cx
00003C67  58                pop ax
00003C68  FA                cli
00003C69  E8CB00            call word 0x3d37
00003C6C  8AC4              mov al,ah
00003C6E  E8C600            call word 0x3d37
00003C71  8BC1              mov ax,cx
00003C73  E8C100            call word 0x3d37
00003C76  8AC4              mov al,ah
00003C78  E8BC00            call word 0x3d37
00003C7B  803E400000        cmp byte [0x40],0x0
00003C80  7407              jz 0x3c89
00003C82  833E430000        cmp word [0x43],byte +0x0
00003C87  753F              jnz 0x3cc8
00003C89  06                push es
00003C8A  33C0              xor ax,ax
00003C8C  8EC0              mov es,ax
00003C8E  BADF04            mov dx,0x4df
00003C91  2689162000        mov [es:0x20],dx
00003C96  268C0E2200        mov [es:0x22],cs
00003C9B  07                pop es
00003C9C  B80008            mov ax,0x800
00003C9F  E640              out 0x40,al
00003CA1  8AC4              mov al,ah
00003CA3  E640              out 0x40,al
00003CA5  803E410000        cmp byte [0x41],0x0
00003CAA  750A              jnz 0x3cb6
00003CAC  B0B6              mov al,0xb6
00003CAE  E643              out 0x43,al
00003CB0  E461              in al,0x61
00003CB2  0C03              or al,0x3
00003CB4  E661              out 0x61,al
00003CB6  E85B00            call word 0x3d14
00003CB9  E642              out 0x42,al
00003CBB  8AC4              mov al,ah
00003CBD  E642              out 0x42,al
00003CBF  890E4300          mov [0x43],cx
00003CC3  C606410000        mov byte [0x41],0x0
00003CC8  FB                sti
00003CC9  C3                ret
00003CCA  8B1E4500          mov bx,[0x45]
00003CCE  803E400000        cmp byte [0x40],0x0
00003CD3  7514              jnz 0x3ce9
00003CD5  837F0600          cmp word [bx+0x6],byte +0x0
00003CD9  75FA              jnz 0x3cd5
00003CDB  833E430000        cmp word [0x43],byte +0x0
00003CE0  7431              jz 0x3d13
00003CE2  C6064100FF        mov byte [0x41],0xff
00003CE7  EBF2              jmp short 0x3cdb
00003CE9  81FBFE05          cmp bx,0x5fe
00003CED  7524              jnz 0x3d13
00003CEF  51                push cx
00003CF0  BB0C04            mov bx,0x40c
00003CF3  E8AE3B            call word 0x78a4
00003CF6  8BDE              mov bx,si
00003CF8  891E4500          mov [0x45],bx
00003CFC  C747040004        mov word [bx+0x4],0x400
00003D01  B90C00            mov cx,0xc
00003D04  03CE              add cx,si
00003D06  894F02            mov [bx+0x2],cx
00003D09  E83F00            call word 0x3d4b
00003D0C  81C10004          add cx,0x400
00003D10  890F              mov [bx],cx
00003D12  59                pop cx
00003D13  C3                ret
00003D14  E80C00            call word 0x3d23
00003D17  8AE8              mov ch,al
00003D19  E80700            call word 0x3d23
00003D1C  8AC8              mov cl,al
00003D1E  E80200            call word 0x3d23
00003D21  8AE0              mov ah,al
00003D23  8B7708            mov si,[bx+0x8]
00003D26  8A04              mov al,[si]
00003D28  46                inc si
00003D29  3B37              cmp si,[bx]
00003D2B  7503              jnz 0x3d30
00003D2D  8B7702            mov si,[bx+0x2]
00003D30  897708            mov [bx+0x8],si
00003D33  FF4F06            dec word [bx+0x6]
00003D36  C3                ret
00003D37  8B770A            mov si,[bx+0xa]
00003D3A  8804              mov [si],al
00003D3C  46                inc si
00003D3D  3B37              cmp si,[bx]
00003D3F  7503              jnz 0x3d44
00003D41  8B7702            mov si,[bx+0x2]
00003D44  89770A            mov [bx+0xa],si
00003D47  FF4706            inc word [bx+0x6]
00003D4A  C3                ret
00003D4B  894F08            mov [bx+0x8],cx
00003D4E  894F0A            mov [bx+0xa],cx
00003D51  C747060000        mov word [bx+0x6],0x0
00003D56  C3                ret
00003D57  89263606          mov [0x636],sp
00003D5B  50                push ax
00003D5C  53                push bx
00003D5D  51                push cx
00003D5E  52                push dx
00003D5F  E83FFC            call word 0x39a1
00003D62  B227              mov dl,0x27
00003D64  803E160628        cmp byte [0x616],0x28
00003D69  7402              jz 0x3d6d
00003D6B  B24F              mov dl,0x4f
00003D6D  B618              mov dh,0x18
00003D6F  8A3E8200          mov bh,[0x82]
00003D73  B90000            mov cx,0x0
00003D76  8AC1              mov al,cl
00003D78  B406              mov ah,0x6
00003D7A  E880F8            call word 0x35fd
00003D7D  EB13              jmp short 0x3d92
00003D7F  50                push ax
00003D80  53                push bx
00003D81  51                push cx
00003D82  52                push dx
00003D83  B90000            mov cx,0x0
00003D86  890E5100          mov [0x51],cx
00003D8A  A05000            mov al,[0x50]
00003D8D  B400              mov ah,0x0
00003D8F  E86BF8            call word 0x35fd
00003D92  E80E00            call word 0x3da3
00003D95  E8C001            call word 0x3f58
00003D98  E8A7FB            call word 0x3942
00003D9B  E808FC            call word 0x39a6
00003D9E  5A                pop dx
00003D9F  59                pop cx
00003DA0  5B                pop bx
00003DA1  58                pop ax
00003DA2  CB                retf
00003DA3  A05000            mov al,[0x50]
00003DA6  C70610066400      mov word [0x610],0x64
00003DAC  3C06              cmp al,0x6
00003DAE  7412              jz 0x3dc2
00003DB0  731C              jnc 0x3dce
00003DB2  3C04              cmp al,0x4
00003DB4  7218              jc 0x3dce
00003DB6  C606870002        mov byte [0x87],0x2
00003DBB  C7060E06A000      mov word [0x60e],0xa0
00003DC1  C3                ret
00003DC2  C606870001        mov byte [0x87],0x1
00003DC7  C7060E064001      mov word [0x60e],0x140
00003DCD  C3                ret
00003DCE  C606870000        mov byte [0x87],0x0
00003DD3  C3                ret
00003DD4  50                push ax
00003DD5  53                push bx
00003DD6  51                push cx
00003DD7  52                push dx
00003DD8  56                push si
00003DD9  57                push di
00003DDA  8ACB              mov cl,bl
00003DDC  E8BE00            call word 0x3e9d
00003DDF  E99BFC            jmp word 0x3a7d
00003DE2  50                push ax
00003DE3  53                push bx
00003DE4  51                push cx
00003DE5  52                push dx
00003DE6  56                push si
00003DE7  57                push di
00003DE8  E8B600            call word 0x3ea1
00003DEB  E98DFC            jmp word 0x3a7b
00003DEE  89263606          mov [0x636],sp
00003DF2  50                push ax
00003DF3  53                push bx
00003DF4  51                push cx
00003DF5  52                push dx
00003DF6  56                push si
00003DF7  57                push di
00003DF8  8ACB              mov cl,bl
00003DFA  E8A000            call word 0x3e9d
00003DFD  7446              jz 0x3e45
00003DFF  803E500006        cmp byte [0x50],0x6
00003E04  7436              jz 0x3e3c
00003E06  8809              mov [bx+di],cl
00003E08  43                inc bx
00003E09  8AEB              mov ch,bl
00003E0B  E863FC            call word 0x3a71
00003E0E  8A08              mov cl,[bx+si]
00003E10  8809              mov [bx+di],cl
00003E12  0ADB              or bl,bl
00003E14  7508              jnz 0x3e1e
00003E16  80F908            cmp cl,0x8
00003E19  7203              jc 0x3e1e
00003E1B  80C910            or cl,0x10
00003E1E  53                push bx
00003E1F  51                push cx
00003E20  57                push di
00003E21  56                push si
00003E22  8AFB              mov bh,bl
00003E24  8AD9              mov bl,cl
00003E26  B40B              mov ah,0xb
00003E28  E8D2F7            call word 0x35fd
00003E2B  5E                pop si
00003E2C  5F                pop di
00003E2D  59                pop cx
00003E2E  5B                pop bx
00003E2F  43                inc bx
00003E30  3ADD              cmp bl,ch
00003E32  72DA              jc 0x3e0e
00003E34  C606820000        mov byte [0x82],0x0
00003E39  E94BFC            jmp word 0x3a87
00003E3C  C70668000000      mov word [0x68],0x0
00003E42  E9860A            jmp word 0x48cb
00003E45  E81AFC            call word 0x3a62
00003E48  803820            cmp byte [bx+si],0x20
00003E4B  73EF              jnc 0x3e3c
00003E4D  43                inc bx
00003E4E  3ADD              cmp bl,ch
00003E50  7305              jnc 0x3e57
00003E52  803810            cmp byte [bx+si],0x10
00003E55  EBF4              jmp short 0x3e4b
00003E57  33DB              xor bx,bx
00003E59  8A08              mov cl,[bx+si]
00003E5B  8809              mov [bx+di],cl
00003E5D  43                inc bx
00003E5E  8A28              mov ch,[bx+si]
00003E60  8829              mov [bx+di],ch
00003E62  43                inc bx
00003E63  8A10              mov dl,[bx+si]
00003E65  8811              mov [bx+di],dl
00003E67  8AF1              mov dh,cl
00003E69  80E60F            and dh,0xf
00003E6C  8AC5              mov al,ch
00003E6E  D0E0              shl al,1
00003E70  2410              and al,0x10
00003E72  0AC2              or al,dl
00003E74  80E507            and ch,0x7
00003E77  D0E5              shl ch,1
00003E79  D0E5              shl ch,1
00003E7B  D0E5              shl ch,1
00003E7D  D0E5              shl ch,1
00003E7F  F6C110            test cl,0x10
00003E82  7403              jz 0x3e87
00003E84  80CD80            or ch,0x80
00003E87  0AEE              or ch,dh
00003E89  8AD8              mov bl,al
00003E8B  B700              mov bh,0x0
00003E8D  882E8100          mov [0x81],ch
00003E91  882E8200          mov [0x82],ch
00003E95  B40B              mov ah,0xb
00003E97  E863F7            call word 0x35fd
00003E9A  E9EAFB            jmp word 0x3a87
00003E9D  0AFF              or bh,bh
00003E9F  759B              jnz 0x3e3c
00003EA1  BF6A00            mov di,0x6a
00003EA4  BE7E00            mov si,0x7e
00003EA7  B503              mov ch,0x3
00003EA9  8B1E6800          mov bx,[0x68]
00003EAD  E81FFB            call word 0x39cf
00003EB0  7405              jz 0x3eb7
00003EB2  BE8300            mov si,0x83
00003EB5  B504              mov ch,0x4
00003EB7  C3                ret
00003EB8  80FB02            cmp bl,0x2
00003EBB  7416              jz 0x3ed3
00003EBD  EB06              jmp short 0x3ec5
00003EBF  B301              mov bl,0x1
00003EC1  EB02              jmp short 0x3ec5
00003EC3  B300              mov bl,0x0
00003EC5  3A1E1100          cmp bl,[0x11]
00003EC9  881E1100          mov [0x11],bl
00003ECD  7403              jz 0x3ed2
00003ECF  E88600            call word 0x3f58
00003ED2  CB                retf
00003ED3  E8E103            call word 0x42b7
00003ED6  BB1600            mov bx,0x16
00003ED9  B90A00            mov cx,0xa
00003EDC  FEC5              inc ch
00003EDE  B046              mov al,0x46
00003EE0  E8F23A            call word 0x79d5
00003EE3  E82900            call word 0x3f0f
00003EE6  B020              mov al,0x20
00003EE8  E8EA3A            call word 0x79d5
00003EEB  53                push bx
00003EEC  51                push cx
00003EED  8B0F              mov cx,[bx]
00003EEF  E30F              jcxz 0x3f00
00003EF1  8B7702            mov si,[bx+0x2]
00003EF4  AC                lodsb
00003EF5  3C0D              cmp al,0xd
00003EF7  7502              jnz 0x3efb
00003EF9  B01B              mov al,0x1b
00003EFB  E8D73A            call word 0x79d5
00003EFE  E2F4              loop 0x3ef4
00003F00  B00D              mov al,0xd
00003F02  E8D03A            call word 0x79d5
00003F05  59                pop cx
00003F06  5B                pop bx
00003F07  83C304            add bx,byte +0x4
00003F0A  FEC9              dec cl
00003F0C  75CE              jnz 0x3edc
00003F0E  C3                ret
00003F0F  8AC5              mov al,ch
00003F11  D40A              aam
00003F13  0D3030            or ax,0x3030
00003F16  80FC30            cmp ah,0x30
00003F19  7504              jnz 0x3f1f
00003F1B  86E0              xchg ah,al
00003F1D  B020              mov al,0x20
00003F1F  50                push ax
00003F20  8AC4              mov al,ah
00003F22  E8B03A            call word 0x79d5
00003F25  58                pop ax
00003F26  E9AC3A            jmp word 0x79d5
00003F29  E88B03            call word 0x42b7
00003F2C  52                push dx
00003F2D  0ADB              or bl,bl
00003F2F  7424              jz 0x3f55
00003F31  4B                dec bx
00003F32  83FB0A            cmp bx,byte +0xa
00003F35  731E              jnc 0x3f55
00003F37  B004              mov al,0x4
00003F39  F6E3              mul bl
00003F3B  051600            add ax,0x16
00003F3E  5B                pop bx
00003F3F  50                push ax
00003F40  BA0100            mov dx,0x1
00003F43  B90F00            mov cx,0xf
00003F46  9AE0244702        call word 0x247:0x24e0
00003F4B  5A                pop dx
00003F4C  9A2E0E4702        call word 0x247:0xe2e
00003F51  E80400            call word 0x3f58
00003F54  C3                ret
00003F55  E97309            jmp word 0x48cb
00003F58  50                push ax
00003F59  53                push bx
00003F5A  51                push cx
00003F5B  52                push dx
00003F5C  56                push si
00003F5D  57                push di
00003F5E  B618              mov dh,0x18
00003F60  B200              mov dl,0x0
00003F62  8A3E5100          mov bh,[0x51]
00003F66  B402              mov ah,0x2
00003F68  E892F6            call word 0x35fd
00003F6B  A01100            mov al,[0x11]
00003F6E  0AC0              or al,al
00003F70  7519              jnz 0x3f8b
00003F72  8A1E8200          mov bl,[0x82]
00003F76  8A0E1606          mov cl,[0x616]
00003F7A  B500              mov ch,0x0
00003F7C  B409              mov ah,0x9
00003F7E  E87CF6            call word 0x35fd
00003F81  E8C3F9            call word 0x3947
00003F84  5F                pop di
00003F85  5E                pop si
00003F86  5A                pop dx
00003F87  59                pop cx
00003F88  5B                pop bx
00003F89  58                pop ax
00003F8A  C3                ret
00003F8B  B307              mov bl,0x7
00003F8D  E83FFA            call word 0x39cf
00003F90  7509              jnz 0x3f9b
00003F92  803E7F0000        cmp byte [0x7f],0x0
00003F97  7502              jnz 0x3f9b
00003F99  B370              mov bl,0x70
00003F9B  BF1600            mov di,0x16
00003F9E  B031              mov al,0x31
00003FA0  B405              mov ah,0x5
00003FA2  803E160628        cmp byte [0x616],0x28
00003FA7  7402              jz 0x3fab
00003FA9  B40A              mov ah,0xa
00003FAB  50                push ax
00003FAC  53                push bx
00003FAD  8A1E8100          mov bl,[0x81]
00003FB1  E84300            call word 0x3ff7
00003FB4  8BDF              mov bx,di
00003FB6  8B0F              mov cx,[bx]
00003FB8  8B7702            mov si,[bx+0x2]
00003FBB  83F906            cmp cx,byte +0x6
00003FBE  7203              jc 0x3fc3
00003FC0  B90600            mov cx,0x6
00003FC3  5B                pop bx
00003FC4  53                push bx
00003FC5  51                push cx
00003FC6  E306              jcxz 0x3fce
00003FC8  AC                lodsb
00003FC9  E82500            call word 0x3ff1
00003FCC  E2FA              loop 0x3fc8
00003FCE  5B                pop bx
00003FCF  B107              mov cl,0x7
00003FD1  2ACB              sub cl,bl
00003FD3  8A1E8200          mov bl,[0x82]
00003FD7  B020              mov al,0x20
00003FD9  E81B00            call word 0x3ff7
00003FDC  E2F9              loop 0x3fd7
00003FDE  83C704            add di,byte +0x4
00003FE1  5B                pop bx
00003FE2  58                pop ax
00003FE3  FEC0              inc al
00003FE5  3C3A              cmp al,0x3a
00003FE7  7202              jc 0x3feb
00003FE9  B030              mov al,0x30
00003FEB  FECC              dec ah
00003FED  75BC              jnz 0x3fab
00003FEF  EB90              jmp short 0x3f81
00003FF1  3C0D              cmp al,0xd
00003FF3  7502              jnz 0x3ff7
00003FF5  B01B              mov al,0x1b
00003FF7  51                push cx
00003FF8  57                push di
00003FF9  56                push si
00003FFA  B90100            mov cx,0x1
00003FFD  B409              mov ah,0x9
00003FFF  E8FBF5            call word 0x35fd
00004002  FEC2              inc dl
00004004  B402              mov ah,0x2
00004006  E8F4F5            call word 0x35fd
00004009  5E                pop si
0000400A  5F                pop di
0000400B  59                pop cx
0000400C  C3                ret
0000400D  50                push ax
0000400E  53                push bx
0000400F  51                push cx
00004010  52                push dx
00004011  56                push si
00004012  57                push di
00004013  8ACB              mov cl,bl
00004015  E8D900            call word 0x40f1
00004018  E962FA            jmp word 0x3a7d
0000401B  50                push ax
0000401C  53                push bx
0000401D  51                push cx
0000401E  52                push dx
0000401F  56                push si
00004020  57                push di
00004021  E8D100            call word 0x40f5
00004024  E954FA            jmp word 0x3a7b
00004027  89263606          mov [0x636],sp
0000402B  50                push ax
0000402C  53                push bx
0000402D  51                push cx
0000402E  52                push dx
0000402F  56                push si
00004030  57                push di
00004031  8ACB              mov cl,bl
00004033  E8BB00            call word 0x40f1
00004036  8AE3              mov ah,bl
00004038  E827FA            call word 0x3a62
0000403B  8B0C              mov cx,[si]
0000403D  8B5402            mov dx,[si+0x2]
00004040  80FC03            cmp ah,0x3
00004043  7302              jnc 0x4047
00004045  8AF2              mov dh,dl
00004047  8A261606          mov ah,[0x616]
0000404B  0AC9              or cl,cl
0000404D  753B              jnz 0x408a
0000404F  80FE08            cmp dh,0x8
00004052  732D              jnc 0x4081
00004054  80FA08            cmp dl,0x8
00004057  7328              jnc 0x4081
00004059  80FC50            cmp ah,0x50
0000405C  750A              jnz 0x4068
0000405E  80FE04            cmp dh,0x4
00004061  731E              jnc 0x4081
00004063  80FA04            cmp dl,0x4
00004066  7319              jnc 0x4081
00004068  B002              mov al,0x2
0000406A  80FC28            cmp ah,0x28
0000406D  7408              jz 0x4077
0000406F  0AED              or ch,ch
00004071  743A              jz 0x40ad
00004073  FEC0              inc al
00004075  EB36              jmp short 0x40ad
00004077  FEC8              dec al
00004079  0AED              or ch,ch
0000407B  7530              jnz 0x40ad
0000407D  FEC8              dec al
0000407F  EB2C              jmp short 0x40ad
00004081  C70668000000      mov word [0x68],0x0
00004087  E94108            jmp word 0x48cb
0000408A  83FA00            cmp dx,byte +0x0
0000408D  75F2              jnz 0x4081
0000408F  803E500007        cmp byte [0x50],0x7
00004094  744B              jz 0x40e1
00004096  B006              mov al,0x6
00004098  80F902            cmp cl,0x2
0000409B  B450              mov ah,0x50
0000409D  740E              jz 0x40ad
0000409F  B428              mov ah,0x28
000040A1  FEC8              dec al
000040A3  FEC9              dec cl
000040A5  75DA              jnz 0x4081
000040A7  0AED              or ch,ch
000040A9  7502              jnz 0x40ad
000040AB  FEC8              dec al
000040AD  8B0C              mov cx,[si]
000040AF  890D              mov [di],cx
000040B1  8B4C02            mov cx,[si+0x2]
000040B4  894D02            mov [di+0x2],cx
000040B7  88261606          mov [0x616],ah
000040BB  8B0E5000          mov cx,[0x50]
000040BF  A25000            mov [0x50],al
000040C2  89165100          mov [0x51],dx
000040C6  3AC1              cmp al,cl
000040C8  741C              jz 0x40e6
000040CA  B80700            mov ax,0x7
000040CD  A37E00            mov [0x7e],ax
000040D0  86C4              xchg al,ah
000040D2  A38000            mov [0x80],ax
000040D5  88268200          mov [0x82],ah
000040D9  E8F3F8            call word 0x39cf
000040DC  7403              jz 0x40e1
000040DE  A28200            mov [0x82],al
000040E1  9A0F0A4702        call word 0x247:0xa0f
000040E6  A05200            mov al,[0x52]
000040E9  B405              mov ah,0x5
000040EB  E80FF5            call word 0x35fd
000040EE  E996F9            jmp word 0x3a87
000040F1  0AFF              or bh,bh
000040F3  758C              jnz 0x4081
000040F5  BF6A00            mov di,0x6a
000040F8  BE7A00            mov si,0x7a
000040FB  8B1E6800          mov bx,[0x68]
000040FF  B504              mov ch,0x4
00004101  C3                ret
00004102  32FF              xor bh,bh
00004104  8A1E5300          mov bl,[0x53]
00004108  CB                retf
00004109  89263606          mov [0x636],sp
0000410D  50                push ax
0000410E  51                push cx
0000410F  52                push dx
00004110  56                push si
00004111  57                push di
00004112  0AFE              or bh,dh
00004114  7546              jnz 0x415c
00004116  0AFA              or bh,dl
00004118  0AF9              or bh,cl
0000411A  7440              jz 0x415c
0000411C  38161606          cmp [0x616],dl
00004120  723A              jc 0x415c
00004122  80FB1A            cmp bl,0x1a
00004125  7335              jnc 0x415c
00004127  803E110000        cmp byte [0x11],0x0
0000412C  7405              jz 0x4133
0000412E  80FB19            cmp bl,0x19
00004131  7329              jnc 0x415c
00004133  8AF3              mov dh,bl
00004135  FECE              dec dh
00004137  FECA              dec dl
00004139  8A3E5100          mov bh,[0x51]
0000413D  51                push cx
0000413E  B402              mov ah,0x2
00004140  E8BAF4            call word 0x35fd
00004143  B408              mov ah,0x8
00004145  E8B5F4            call word 0x35fd
00004148  E8FCF7            call word 0x3947
0000414B  59                pop cx
0000414C  FEC1              inc cl
0000414E  7402              jz 0x4152
00004150  8AC4              mov al,ah
00004152  32FF              xor bh,bh
00004154  8AD8              mov bl,al
00004156  5F                pop di
00004157  5E                pop si
00004158  5A                pop dx
00004159  59                pop cx
0000415A  58                pop ax
0000415B  CB                retf
0000415C  E96C07            jmp word 0x48cb
0000415F  53                push bx
00004160  50                push ax
00004161  0AFF              or bh,bh
00004163  7532              jnz 0x4197
00004165  3A1E1606          cmp bl,[0x616]
00004169  7429              jz 0x4194
0000416B  8A265000          mov ah,[0x50]
0000416F  80FB50            cmp bl,0x50
00004172  7405              jz 0x4179
00004174  80FB28            cmp bl,0x28
00004177  751E              jnz 0x4197
00004179  80FC07            cmp ah,0x7
0000417C  7416              jz 0x4194
0000417E  80F402            xor ah,0x2
00004181  881E1606          mov [0x616],bl
00004185  88265000          mov [0x50],ah
00004189  C70651000000      mov word [0x51],0x0
0000418F  9A0F0A4702        call word 0x247:0xa0f
00004194  58                pop ax
00004195  5B                pop bx
00004196  C3                ret
00004197  E93107            jmp word 0x48cb
0000419A  89263606          mov [0x636],sp
0000419E  53                push bx
0000419F  E8F932            call word 0x749b
000041A2  720B              jc 0x41af
000041A4  51                push cx
000041A5  52                push dx
000041A6  33C9              xor cx,cx
000041A8  8B17              mov dx,[bx]
000041AA  E87C33            call word 0x7529
000041AD  5A                pop dx
000041AE  59                pop cx
000041AF  87DA              xchg bx,dx
000041B1  E89A33            call word 0x754e
000041B4  56                push si
000041B5  57                push di
000041B6  8BFB              mov di,bx
000041B8  8BF2              mov si,dx
000041BA  A5                movsw
000041BB  A5                movsw
000041BC  87DA              xchg bx,dx
000041BE  833F00            cmp word [bx],byte +0x0
000041C1  7409              jz 0x41cc
000041C3  8B7F02            mov di,[bx+0x2]
000041C6  8955FE            mov [di-0x2],dx
000041C9  E82533            call word 0x74f1
000041CC  5F                pop di
000041CD  5E                pop si
000041CE  5B                pop bx
000041CF  CB                retf
000041D0  89263606          mov [0x636],sp
000041D4  51                push cx
000041D5  52                push dx
000041D6  56                push si
000041D7  57                push di
000041D8  8BF0              mov si,ax
000041DA  8BFB              mov di,bx
000041DC  8B1C              mov bx,[si]
000041DE  031D              add bx,[di]
000041E0  7025              jo 0x4207
000041E2  E88432            call word 0x7469
000041E5  87FA              xchg di,dx
000041E7  53                push bx
000041E8  E80B00            call word 0x41f6
000041EB  8BF2              mov si,dx
000041ED  E80600            call word 0x41f6
000041F0  5B                pop bx
000041F1  5F                pop di
000041F2  5E                pop si
000041F3  5A                pop dx
000041F4  59                pop cx
000041F5  CB                retf
000041F6  8BDE              mov bx,si
000041F8  8B0C              mov cx,[si]
000041FA  8B7402            mov si,[si+0x2]
000041FD  D1E9              shr cx,1
000041FF  F3A5              rep movsw
00004201  7301              jnc 0x4204
00004203  A4                movsb
00004204  E9E232            jmp word 0x74e9
00004207  E9C106            jmp word 0x48cb
0000420A  51                push cx
0000420B  56                push si
0000420C  57                push di
0000420D  8B7F02            mov di,[bx+0x2]
00004210  8B0F              mov cx,[bx]
00004212  93                xchg ax,bx
00004213  8B7702            mov si,[bx+0x2]
00004216  3B0F              cmp cx,[bx]
00004218  7602              jna 0x421c
0000421A  8B0F              mov cx,[bx]
0000421C  3BC0              cmp ax,ax
0000421E  F3A6              repe cmpsb
00004220  5F                pop di
00004221  5E                pop si
00004222  7506              jnz 0x422a
00004224  8B0F              mov cx,[bx]
00004226  93                xchg ax,bx
00004227  3B0F              cmp cx,[bx]
00004229  93                xchg ax,bx
0000422A  9C                pushfw
0000422B  E8BB32            call word 0x74e9
0000422E  93                xchg ax,bx
0000422F  E8B732            call word 0x74e9
00004232  9D                popfw
00004233  59                pop cx
00004234  CB                retf
00004235  BEB200            mov si,0xb2
00004238  A5                movsw
00004239  A5                movsw
0000423A  83EF04            sub di,byte +0x4
0000423D  83EE04            sub si,byte +0x4
00004240  CB                retf
00004241  BEAE00            mov si,0xae
00004244  A5                movsw
00004245  A5                movsw
00004246  A5                movsw
00004247  A5                movsw
00004248  83EF08            sub di,byte +0x8
0000424B  83EE08            sub si,byte +0x8
0000424E  CB                retf
0000424F  BFB200            mov di,0xb2
00004252  A5                movsw
00004253  A5                movsw
00004254  83EE04            sub si,byte +0x4
00004257  CB                retf
00004258  BFAE00            mov di,0xae
0000425B  A5                movsw
0000425C  A5                movsw
0000425D  A5                movsw
0000425E  A5                movsw
0000425F  83EE08            sub si,byte +0x8
00004262  CB                retf
00004263  89361806          mov [0x618],si
00004267  893E1A06          mov [0x61a],di
0000426B  E82900            call word 0x4297
0000426E  BEB200            mov si,0xb2
00004271  A5                movsw
00004272  A5                movsw
00004273  8B361806          mov si,[0x618]
00004277  8B3E1A06          mov di,[0x61a]
0000427B  CB                retf
0000427C  89361806          mov [0x618],si
00004280  893E1A06          mov [0x61a],di
00004284  E81000            call word 0x4297
00004287  BEAE00            mov si,0xae
0000428A  A5                movsw
0000428B  A5                movsw
0000428C  A5                movsw
0000428D  A5                movsw
0000428E  8B361806          mov si,[0x618]
00004292  8B3E1A06          mov di,[0x61a]
00004296  CB                retf
00004297  8F061C06          pop word [0x61c]
0000429B  5E                pop si
0000429C  1F                pop ds
0000429D  97                xchg ax,di
0000429E  AC                lodsb
0000429F  D0E0              shl al,1
000042A1  B400              mov ah,0x0
000042A3  D1E0              shl ax,1
000042A5  D1E0              shl ax,1
000042A7  2603062E06        add ax,[es:0x62e]
000042AC  97                xchg ax,di
000042AD  1E                push ds
000042AE  56                push si
000042AF  8BF7              mov si,di
000042B1  06                push es
000042B2  1F                pop ds
000042B3  FF261C06          jmp word [0x61c]
000042B7  8F061C06          pop word [0x61c]
000042BB  89263606          mov [0x636],sp
000042BF  55                push bp
000042C0  56                push si
000042C1  57                push di
000042C2  50                push ax
000042C3  51                push cx
000042C4  52                push dx
000042C5  53                push bx
000042C6  FF161C06          call word [0x61c]
000042CA  5B                pop bx
000042CB  5A                pop dx
000042CC  59                pop cx
000042CD  58                pop ax
000042CE  5F                pop di
000042CF  5E                pop si
000042D0  5D                pop bp
000042D1  CB                retf
000042D2  50                push ax
000042D3  53                push bx
000042D4  51                push cx
000042D5  52                push dx
000042D6  56                push si
000042D7  57                push di
000042D8  8ACB              mov cl,bl
000042DA  E88A00            call word 0x4367
000042DD  E99DF7            jmp word 0x3a7d
000042E0  50                push ax
000042E1  53                push bx
000042E2  51                push cx
000042E3  52                push dx
000042E4  56                push si
000042E5  57                push di
000042E6  E88200            call word 0x436b
000042E9  E98FF7            jmp word 0x3a7b
000042EC  89263606          mov [0x636],sp
000042F0  50                push ax
000042F1  53                push bx
000042F2  51                push cx
000042F3  52                push dx
000042F4  56                push si
000042F5  57                push di
000042F6  8ACB              mov cl,bl
000042F8  E86C00            call word 0x4367
000042FB  8AE3              mov ah,bl
000042FD  E862F7            call word 0x3a62
00004300  8B10              mov dx,[bx+si]
00004302  43                inc bx
00004303  43                inc bx
00004304  0AD2              or dl,dl
00004306  7456              jz 0x435e
00004308  80FA1A            cmp dl,0x1a
0000430B  7351              jnc 0x435e
0000430D  803E110000        cmp byte [0x11],0x0
00004312  7405              jz 0x4319
00004314  80FA19            cmp dl,0x19
00004317  7345              jnc 0x435e
00004319  0AF6              or dh,dh
0000431B  7441              jz 0x435e
0000431D  3A361606          cmp dh,[0x616]
00004321  773B              ja 0x435e
00004323  8A00              mov al,[bx+si]
00004325  43                inc bx
00004326  8B08              mov cx,[bx+si]
00004328  80F920            cmp cl,0x20
0000432B  7331              jnc 0x435e
0000432D  80FC03            cmp ah,0x3
00004330  7207              jc 0x4339
00004332  80FC04            cmp ah,0x4
00004335  7302              jnc 0x4339
00004337  8AE9              mov ch,cl
00004339  80FD20            cmp ch,0x20
0000433C  7320              jnc 0x435e
0000433E  52                push dx
0000433F  A25500            mov [0x55],al
00004342  890E5600          mov [0x56],cx
00004346  80FC02            cmp ah,0x2
00004349  720C              jc 0x4357
0000434B  0AC0              or al,al
0000434D  7505              jnz 0x4354
0000434F  E894F6            call word 0x39e6
00004352  EB03              jmp short 0x4357
00004354  E88AF6            call word 0x39e1
00004357  5A                pop dx
00004358  E8F0F5            call word 0x394b
0000435B  E929F7            jmp word 0x3a87
0000435E  C70668000000      mov word [0x68],0x0
00004364  E96405            jmp word 0x48cb
00004367  0AFF              or bh,bh
00004369  75F3              jnz 0x435e
0000436B  BF6A00            mov di,0x6a
0000436E  BE5300            mov si,0x53
00004371  8B1E6800          mov bx,[0x68]
00004375  B505              mov ch,0x5
00004377  C3                ret
00004378  E87E01            call word 0x44f9
0000437B  8036B40080        xor byte [0xb4],0x80
00004380  CB                retf
00004381  E88001            call word 0x4504
00004384  8036B40080        xor byte [0xb4],0x80
00004389  CB                retf
0000438A  50                push ax
0000438B  8B4402            mov ax,[si+0x2]
0000438E  EB04              jmp short 0x4394
00004390  50                push ax
00004391  A1B400            mov ax,[0xb4]
00004394  0AE4              or ah,ah
00004396  7404              jz 0x439c
00004398  B481              mov ah,0x81
0000439A  2480              and al,0x80
0000439C  A3B400            mov [0xb4],ax
0000439F  33C0              xor ax,ax
000043A1  A3AE00            mov [0xae],ax
000043A4  A3B000            mov [0xb0],ax
000043A7  A3B200            mov [0xb2],ax
000043AA  58                pop ax
000043AB  CB                retf
000043AC  50                push ax
000043AD  8B4406            mov ax,[si+0x6]
000043B0  EBE2              jmp short 0x4394
000043B2  50                push ax
000043B3  8B4402            mov ax,[si+0x2]
000043B6  0AE4              or ah,ah
000043B8  7402              jz 0x43bc
000043BA  D0D0              rcl al,1
000043BC  58                pop ax
000043BD  CB                retf
000043BE  50                push ax
000043BF  8B4406            mov ax,[si+0x6]
000043C2  EBF2              jmp short 0x43b6
000043C4  50                push ax
000043C5  A1B400            mov ax,[0xb4]
000043C8  EBEC              jmp short 0x43b6
000043CA  33DB              xor bx,bx
000043CC  807C0300          cmp byte [si+0x3],0x0
000043D0  7416              jz 0x43e8
000043D2  4B                dec bx
000043D3  CB                retf
000043D4  33DB              xor bx,bx
000043D6  807C0700          cmp byte [si+0x7],0x0
000043DA  740C              jz 0x43e8
000043DC  4B                dec bx
000043DD  CB                retf
000043DE  33DB              xor bx,bx
000043E0  803EB50000        cmp byte [0xb5],0x0
000043E5  7401              jz 0x43e8
000043E7  4B                dec bx
000043E8  CB                retf
000043E9  E80D01            call word 0x44f9
000043EC  8026B4007F        and byte [0xb4],0x7f
000043F1  CB                retf
000043F2  E80F01            call word 0x4504
000043F5  8026B4007F        and byte [0xb4],0x7f
000043FA  CB                retf
000043FB  E8FB00            call word 0x44f9
000043FE  89361E06          mov [0x61e],si
00004402  5E                pop si
00004403  1F                pop ds
00004404  50                push ax
00004405  AC                lodsb
00004406  26803EB50000      cmp byte [es:0xb5],0x0
0000440C  7405              jz 0x4413
0000440E  260006B500        add [es:0xb5],al
00004413  58                pop ax
00004414  1E                push ds
00004415  56                push si
00004416  06                push es
00004417  1F                pop ds
00004418  8B361E06          mov si,[0x61e]
0000441C  73CA              jnc 0x43e8
0000441E  E9AD04            jmp word 0x48ce
00004421  E8E000            call word 0x4504
00004424  EBD8              jmp short 0x43fe
00004426  87F3              xchg si,bx
00004428  E8CE00            call word 0x44f9
0000442B  87F3              xchg si,bx
0000442D  51                push cx
0000442E  B90200            mov cx,0x2
00004431  E87300            call word 0x44a7
00004434  59                pop cx
00004435  CB                retf
00004436  87F3              xchg si,bx
00004438  E8C900            call word 0x4504
0000443B  87F3              xchg si,bx
0000443D  51                push cx
0000443E  B90600            mov cx,0x6
00004441  E86300            call word 0x44a7
00004444  59                pop cx
00004445  CB                retf
00004446  87F3              xchg si,bx
00004448  E8AE00            call word 0x44f9
0000444B  87F3              xchg si,bx
0000444D  51                push cx
0000444E  B90200            mov cx,0x2
00004451  803EB50000        cmp byte [0xb5],0x0
00004456  74EC              jz 0x4444
00004458  F606B40080        test byte [0xb4],0x80
0000445D  74D2              jz 0x4431
0000445F  51                push cx
00004460  E87B00            call word 0x44de
00004463  59                pop cx
00004464  51                push cx
00004465  E83F00            call word 0x44a7
00004468  59                pop cx
00004469  803EB50000        cmp byte [0xb5],0x0
0000446E  7414              jz 0x4484
00004470  E86B00            call word 0x44de
00004473  59                pop cx
00004474  7523              jnz 0x4499
00004476  C606B40080        mov byte [0xb4],0x80
0000447B  FE06B500          inc byte [0xb5]
0000447F  7518              jnz 0x4499
00004481  E94A04            jmp word 0x48ce
00004484  33C9              xor cx,cx
00004486  890EAE00          mov [0xae],cx
0000448A  890EB000          mov [0xb0],cx
0000448E  890EB200          mov [0xb2],cx
00004492  C706B4008081      mov word [0xb4],0x8180
00004498  59                pop cx
00004499  CB                retf
0000449A  87F3              xchg si,bx
0000449C  E86500            call word 0x4504
0000449F  87F3              xchg si,bx
000044A1  51                push cx
000044A2  B90600            mov cx,0x6
000044A5  EBAA              jmp short 0x4451
000044A7  50                push ax
000044A8  53                push bx
000044A9  57                push di
000044AA  A0B500            mov al,[0xb5]
000044AD  2C80              sub al,0x80
000044AF  7626              jna 0x44d7
000044B1  BFB400            mov di,0xb4
000044B4  8AD8              mov bl,al
000044B6  D0E8              shr al,1
000044B8  D0E8              shr al,1
000044BA  D0E8              shr al,1
000044BC  98                cbw
000044BD  2BF8              sub di,ax
000044BF  2BC8              sub cx,ax
000044C1  7210              jc 0x44d3
000044C3  93                xchg ax,bx
000044C4  2407              and al,0x7
000044C6  BB9000            mov bx,0x90
000044C9  D7                xlatb
000044CA  2005              and [di],al
000044CC  32C0              xor al,al
000044CE  4F                dec di
000044CF  FD                std
000044D0  F3AA              rep stosb
000044D2  FC                cld
000044D3  5F                pop di
000044D4  5B                pop bx
000044D5  58                pop ax
000044D6  C3                ret
000044D7  C606B50000        mov byte [0xb5],0x0
000044DC  EBF5              jmp short 0x44d3
000044DE  56                push si
000044DF  BEB300            mov si,0xb3
000044E2  D1E9              shr cx,1
000044E4  51                push cx
000044E5  F714              not word [si]
000044E7  4E                dec si
000044E8  4E                dec si
000044E9  E2FA              loop 0x44e5
000044EB  59                pop cx
000044EC  F65C01            neg byte [si+0x1]
000044EF  7506              jnz 0x44f7
000044F1  46                inc si
000044F2  46                inc si
000044F3  FF04              inc word [si]
000044F5  E1FA              loope 0x44f1
000044F7  5E                pop si
000044F8  C3                ret
000044F9  57                push di
000044FA  BFB200            mov di,0xb2
000044FD  A5                movsw
000044FE  A5                movsw
000044FF  5F                pop di
00004500  83EE04            sub si,byte +0x4
00004503  C3                ret
00004504  57                push di
00004505  BFAE00            mov di,0xae
00004508  A5                movsw
00004509  A5                movsw
0000450A  A5                movsw
0000450B  A5                movsw
0000450C  5F                pop di
0000450D  83EE08            sub si,byte +0x8
00004510  C3                ret
00004511  89263606          mov [0x636],sp
00004515  51                push cx
00004516  52                push dx
00004517  56                push si
00004518  33F6              xor si,si
0000451A  8BCB              mov cx,bx
0000451C  8BDA              mov bx,dx
0000451E  80FBFF            cmp bl,0xff
00004521  740A              jz 0x452d
00004523  E86033            call word 0x7886
00004526  7425              jz 0x454d
00004528  803C02            cmp byte [si],0x2
0000452B  7423              jz 0x4550
0000452D  87364806          xchg si,[0x648]
00004531  56                push si
00004532  8BD9              mov bx,cx
00004534  E8322F            call word 0x7469
00004537  E30C              jcxz 0x4545
00004539  87FA              xchg di,dx
0000453B  50                push ax
0000453C  E8C30C            call word 0x5202
0000453F  AA                stosb
00004540  E2FA              loop 0x453c
00004542  58                pop ax
00004543  8BFA              mov di,dx
00004545  8F064806          pop word [0x648]
00004549  5E                pop si
0000454A  5A                pop dx
0000454B  59                pop cx
0000454C  CB                retf
0000454D  E9A503            jmp word 0x48f5
00004550  E9B703            jmp word 0x490a
00004553  025379            add dl,[bp+di+0x79]
00004556  6E                outsb
00004557  7461              jz 0x45ba
00004559  7820              js 0x457b
0000455B  657272            gs jc 0x45d0
0000455E  6F                outsw
0000455F  F2035245          repne add dx,[bp+si+0x45]
00004563  54                push sp
00004564  55                push bp
00004565  52                push dx
00004566  4E                dec si
00004567  207769            and [bx+0x69],dh
0000456A  7468              jz 0x45d4
0000456C  6F                outsw
0000456D  7574              jnz 0x45e3
0000456F  20474F            and [bx+0x4f],al
00004572  53                push bx
00004573  55                push bp
00004574  C2044F            ret 0x4f04
00004577  7574              jnz 0x45ed
00004579  206F66            and [bx+0x66],ch
0000457C  204441            and [si+0x41],al
0000457F  54                push sp
00004580  C10549            rol word [di],byte 0x49
00004583  6C                insb
00004584  6C                insb
00004585  656761            gs a32 popaw
00004588  6C                insb
00004589  206675            and [bp+0x75],ah
0000458C  6E                outsb
0000458D  637469            arpl [si+0x69],si
00004590  6F                outsw
00004591  6E                outsb
00004592  206361            and [bp+di+0x61],ah
00004595  6C                insb
00004596  EC                in al,dx
00004597  06                push es
00004598  4F                dec di
00004599  7665              jna 0x4600
0000459B  7266              jc 0x4603
0000459D  6C                insb
0000459E  6F                outsw
0000459F  F7074F75          test word [bx],0x754f
000045A3  7420              jz 0x45c5
000045A5  6F                outsw
000045A6  66206D65          o32 and [di+0x65],ch
000045AA  6D                insw
000045AB  6F                outsw
000045AC  72F9              jc 0x45a7
000045AE  095375            or [bp+di+0x75],dx
000045B1  627363            bound si,[bp+di+0x63]
000045B4  7269              jc 0x461f
000045B6  7074              jo 0x462c
000045B8  206F75            and [bx+0x75],ch
000045BB  7420              jz 0x45dd
000045BD  6F                outsw
000045BE  66207261          o32 and [bp+si+0x61],dh
000045C2  6E                outsb
000045C3  67E50B            in ax,0xb
000045C6  44                inc sp
000045C7  6976697369        imul si,[bp+0x69],word 0x6973
000045CC  6F                outsw
000045CD  6E                outsb
000045CE  206279            and [bp+si+0x79],ah
000045D1  207A65            and [bp+si+0x65],bh
000045D4  72EF              jc 0x45c5
000045D6  0D5479            or ax,0x7954
000045D9  7065              jo 0x4640
000045DB  206D69            and [di+0x69],ch
000045DE  736D              jnc 0x464d
000045E0  61                popaw
000045E1  7463              jz 0x4646
000045E3  E80E4F            call word 0x94f4
000045E6  7574              jnz 0x465c
000045E8  206F66            and [bx+0x66],ch
000045EB  207374            and [bp+di+0x74],dh
000045EE  7269              jc 0x4659
000045F0  6E                outsb
000045F1  67207370          and [ebx+0x70],dh
000045F5  61                popaw
000045F6  63E5              arpl bp,sp
000045F8  105374            adc [bp+di+0x74],dl
000045FB  7269              jc 0x4666
000045FD  6E                outsb
000045FE  6720666F          and [esi+0x6f],ah
00004602  726D              jc 0x4671
00004604  756C              jnz 0x4672
00004606  61                popaw
00004607  20746F            and [si+0x6f],dh
0000460A  6F                outsw
0000460B  20636F            and [bp+di+0x6f],ah
0000460E  6D                insw
0000460F  706C              jo 0x467d
00004611  65F8              gs clc
00004613  134E6F            adc cx,[bp+0x6f]
00004616  205245            and [bp+si+0x45],dl
00004619  53                push bx
0000461A  55                push bp
0000461B  4D                dec bp
0000461C  C514              lds dx,[si]
0000461E  52                push dx
0000461F  45                inc bp
00004620  53                push bx
00004621  55                push bp
00004622  4D                dec bp
00004623  45                inc bp
00004624  207769            and [bx+0x69],dh
00004627  7468              jz 0x4691
00004629  6F                outsw
0000462A  7574              jnz 0x46a0
0000462C  206572            and [di+0x72],ah
0000462F  726F              jc 0x46a0
00004631  F2184465          repne sbb [si+0x65],al
00004635  7669              jna 0x46a0
00004637  636520            arpl [di+0x20],sp
0000463A  54                push sp
0000463B  696D656F75        imul bp,[di+0x65],word 0x756f
00004640  F4                hlt
00004641  194465            sbb [si+0x65],ax
00004644  7669              jna 0x46af
00004646  636520            arpl [di+0x20],sp
00004649  46                inc si
0000464A  61                popaw
0000464B  756C              jnz 0x46b9
0000464D  F4                hlt
0000464E  1B4F75            sbb cx,[bx+0x75]
00004651  7420              jz 0x4673
00004653  6F                outsw
00004654  66205061          o32 and [bx+si+0x61],dl
00004658  7065              jo 0x46bf
0000465A  F2324649          repne xor al,[bp+0x49]
0000465E  45                inc bp
0000465F  4C                dec sp
00004660  44                inc sp
00004661  206F76            and [bx+0x76],ch
00004664  657266            gs jc 0x46cd
00004667  6C                insb
00004668  6F                outsw
00004669  F733              div word [bp+di]
0000466B  49                dec cx
0000466C  6E                outsb
0000466D  7465              jz 0x46d4
0000466F  726E              jc 0x46df
00004671  61                popaw
00004672  6C                insb
00004673  206572            and [di+0x72],ah
00004676  726F              jc 0x46e7
00004678  F23442            repne xor al,0x42
0000467B  61                popaw
0000467C  64206669          and [fs:bp+0x69],ah
00004680  6C                insb
00004681  65206E75          and [gs:bp+0x75],ch
00004685  6D                insw
00004686  6265F2            bound sp,[di-0xe]
00004689  354669            xor ax,0x6946
0000468C  6C                insb
0000468D  65206E6F          and [gs:bp+0x6f],ch
00004691  7420              jz 0x46b3
00004693  666F              outsd
00004695  756E              jnz 0x4705
00004697  E436              in al,0x36
00004699  42                inc dx
0000469A  61                popaw
0000469B  64206669          and [fs:bp+0x69],ah
0000469F  6C                insb
000046A0  65206D6F          and [gs:di+0x6f],ch
000046A4  64E537            fs in ax,0x37
000046A7  46                inc si
000046A8  696C652061        imul bp,[si+0x65],word 0x6120
000046AD  6C                insb
000046AE  7265              jc 0x4715
000046B0  61                popaw
000046B1  647920            fs jns 0x46d4
000046B4  6F                outsw
000046B5  7065              jo 0x471c
000046B7  EE                out dx,al
000046B8  394465            cmp [si+0x65],ax
000046BB  7669              jna 0x4726
000046BD  636520            arpl [di+0x20],sp
000046C0  49                dec cx
000046C1  2F                das
000046C2  4F                dec di
000046C3  204572            and [di+0x72],al
000046C6  726F              jc 0x4737
000046C8  F23A4669          repne cmp al,[bp+0x69]
000046CC  6C                insb
000046CD  6520616C          and [gs:bx+di+0x6c],ah
000046D1  7265              jc 0x4738
000046D3  61                popaw
000046D4  647920            fs jns 0x46f7
000046D7  657869            gs js 0x4743
000046DA  7374              jnc 0x4750
000046DC  F33D4469          rep cmp ax,0x6944
000046E0  736B              jnc 0x474d
000046E2  206675            and [bp+0x75],ah
000046E5  6C                insb
000046E6  EC                in al,dx
000046E7  3E49              ds dec cx
000046E9  6E                outsb
000046EA  7075              jo 0x4761
000046EC  7420              jz 0x470e
000046EE  7061              jo 0x4751
000046F0  7374              jnc 0x4766
000046F2  20656E            and [di+0x6e],ah
000046F5  E43F              in al,0x3f
000046F7  42                inc dx
000046F8  61                popaw
000046F9  64207265          and [fs:bp+si+0x65],dh
000046FD  636F72            arpl [bx+0x72],bp
00004700  64206E75          and [fs:bp+0x75],ch
00004704  6D                insw
00004705  6265F2            bound sp,[di-0xe]
00004708  40                inc ax
00004709  42                inc dx
0000470A  61                popaw
0000470B  64206669          and [fs:bp+0x69],ah
0000470F  6C                insb
00004710  65206E61          and [gs:bp+0x61],ch
00004714  6D                insw
00004715  E543              in ax,0x43
00004717  54                push sp
00004718  6F                outsw
00004719  6F                outsw
0000471A  206D61            and [di+0x61],ch
0000471D  6E                outsb
0000471E  7920              jns 0x4740
00004720  66696C65F3444465  imul ebp,[si+0x65],dword 0x654444f3
00004728  7669              jna 0x4793
0000472A  636520            arpl [di+0x20],sp
0000472D  55                push bp
0000472E  6E                outsb
0000472F  61                popaw
00004730  7661              jna 0x4793
00004732  696C61626C        imul bp,[si+0x61],word 0x6c62
00004737  E545              in ax,0x45
00004739  43                inc bx
0000473A  6F                outsw
0000473B  6D                insw
0000473C  6D                insw
0000473D  756E              jnz 0x47ad
0000473F  6963617469        imul sp,[bp+di+0x61],word 0x6974
00004744  6F                outsw
00004745  6E                outsb
00004746  206275            and [bp+si+0x75],ah
00004749  6666657220        gs o32 jc 0x476e
0000474E  6F                outsw
0000474F  7665              jna 0x47b6
00004751  7266              jc 0x47b9
00004753  6C                insb
00004754  6F                outsw
00004755  F746446973        test word [bp+0x44],0x7369
0000475A  6B2057            imul sp,[bx+si],byte +0x57
0000475D  7269              jc 0x47c8
0000475F  7465              jz 0x47c6
00004761  205072            and [bx+si+0x72],dl
00004764  6F                outsw
00004765  7465              jz 0x47cc
00004767  63F4              arpl sp,si
00004769  47                inc di
0000476A  44                inc sp
0000476B  69736B206E        imul si,[bp+di+0x6b],word 0x6e20
00004770  6F                outsw
00004771  7420              jz 0x4793
00004773  52                push dx
00004774  6561              gs popaw
00004776  64F9              fs stc
00004778  48                dec ax
00004779  44                inc sp
0000477A  69736B204D        imul si,[bp+di+0x6b],word 0x4d20
0000477F  65646961204572    imul sp,[fs:bx+di+0x20],word 0x7245
00004786  726F              jc 0x47f7
00004788  F2FF556E          bnd call word [di+0x6e]
0000478C  7072              jo 0x4800
0000478E  696E746162        imul bp,[bp+0x74],word 0x6261
00004793  6C                insb
00004794  65206572          and [gs:di+0x72],ah
00004798  726F              jc 0x4809
0000479A  F2A32606          repne mov [0x626],ax
0000479E  058100            add ax,0x81
000047A1  A32206            mov [0x622],ax
000047A4  890E2406          mov [0x624],cx
000047A8  892E2806          mov [0x628],bp
000047AC  58                pop ax
000047AD  5B                pop bx
000047AE  89262006          mov [0x620],sp
000047B2  53                push bx
000047B3  50                push ax
000047B4  891E3A06          mov [0x63a],bx
000047B8  2D1F00            sub ax,0x1f
000047BB  A33806            mov [0x638],ax
000047BE  C70634062816      mov word [0x634],0x1628
000047C4  33C0              xor ax,ax
000047C6  A33206            mov [0x632],ax
000047C9  A33006            mov [0x630],ax
000047CC  9AE1144702        call word 0x247:0x14e1
000047D1  E874EE            call word 0x3648
000047D4  E8000A            call word 0x51d7
000047D7  8C1E9800          mov [0x98],ds
000047DB  CB                retf
000047DC  891E9800          mov [0x98],bx
000047E0  CB                retf
000047E1  43                inc bx
000047E2  7407              jz 0x47eb
000047E4  4B                dec bx
000047E5  FF369800          push word [0x98]
000047E9  53                push bx
000047EA  CB                retf
000047EB  E94401            jmp word 0x4932
000047EE  33DB              xor bx,bx
000047F0  8BD3              mov dx,bx
000047F2  89263606          mov [0x636],sp
000047F6  53                push bx
000047F7  52                push dx
000047F8  E8920A            call word 0x528d
000047FB  E811EE            call word 0x360f
000047FE  5A                pop dx
000047FF  5B                pop bx
00004800  0BD2              or dx,dx
00004802  7503              jnz 0x4807
00004804  BA0002            mov dx,0x200
00004807  81FA8001          cmp dx,0x180
0000480B  7267              jc 0x4874
0000480D  0BDB              or bx,bx
0000480F  7504              jnz 0x4815
00004811  8B1E2006          mov bx,[0x620]
00004815  43                inc bx
00004816  80E3FE            and bl,0xfe
00004819  8BFB              mov di,bx
0000481B  4B                dec bx
0000481C  4B                dec bx
0000481D  E88300            call word 0x48a3
00004820  242B              and al,0x2b
00004822  D88BF32B          fmul dword [bp+di+0x2bf3]
00004826  DA80E3FE          fiadd dword [bx+si-0x11d]
0000482A  4B                dec bx
0000482B  FECF              dec bh
0000482D  3B1E2406          cmp bx,[0x624]
00004831  7241              jc 0x4874
00004833  FEC7              inc bh
00004835  93                xchg ax,bx
00004836  A32606            mov [0x626],ax
00004839  058100            add ax,0x81
0000483C  A32206            mov [0x622],ax
0000483F  893E2006          mov [0x620],di
00004843  4F                dec di
00004844  4F                dec di
00004845  8BEF              mov bp,di
00004847  58                pop ax
00004848  59                pop cx
00004849  8BE6              mov sp,si
0000484B  8926B600          mov [0xb6],sp
0000484F  51                push cx
00004850  50                push ax
00004851  E84F00            call word 0x48a3
00004854  0AA32A06          or ah,[bp+di+0x62a]
00004858  97                xchg ax,di
00004859  E84700            call word 0x48a3
0000485C  0C8B              or al,0x8b
0000485E  C803C7A3          enter 0xc703,0xa3
00004862  2C06              sub al,0x6
00004864  33C0              xor ax,ax
00004866  F3AA              rep stosb
00004868  A33006            mov [0x630],ax
0000486B  E80900            call word 0x4877
0000486E  E8212D            call word 0x7592
00004871  E963FF            jmp word 0x47d7
00004874  E9C100            jmp word 0x4938
00004877  E82900            call word 0x48a3
0000487A  142D              adc al,0x2d
0000487C  0800              or [bx+si],al
0000487E  A32E06            mov [0x62e],ax
00004881  E81F00            call word 0x48a3
00004884  1297E81A          adc dl,[bx+0x1ae8]
00004888  0014              add [si],dl
0000488A  91                xchg ax,cx
0000488B  2BCF              sub cx,di
0000488D  33C0              xor ax,ax
0000488F  F3AA              rep stosb
00004891  BF3E06            mov di,0x63e
00004894  B91300            mov cx,0x13
00004897  F3AA              rep stosb
00004899  48                dec ax
0000489A  B90A00            mov cx,0xa
0000489D  BF9A00            mov di,0x9a
000048A0  F3AB              rep stosw
000048A2  C3                ret
000048A3  5E                pop si
000048A4  2EAC              cs lodsb
000048A6  98                cbw
000048A7  56                push si
000048A8  1E                push ds
000048A9  C5363806          lds si,[0x638]
000048AD  03F0              add si,ax
000048AF  AD                lodsw
000048B0  1F                pop ds
000048B1  C3                ret
000048B2  58                pop ax
000048B3  5B                pop bx
000048B4  9D                popfw
000048B5  53                push bx
000048B6  50                push ax
000048B7  E98400            jmp word 0x493e
000048BA  58                pop ax
000048BB  5B                pop bx
000048BC  9D                popfw
000048BD  53                push bx
000048BE  50                push ax
000048BF  EB74              jmp short 0x4935
000048C1  90                nop
000048C2  B302              mov bl,0x2
000048C4  B8B303            mov ax,0x3b3
000048C7  B8B304            mov ax,0x4b3
000048CA  B8B305            mov ax,0x5b3
000048CD  B8B306            mov ax,0x6b3
000048D0  B8B307            mov ax,0x7b3
000048D3  B8B309            mov ax,0x9b3
000048D6  B8B30B            mov ax,0xbb3
000048D9  B8B30D            mov ax,0xdb3
000048DC  B8B30E            mov ax,0xeb3
000048DF  B8B310            mov ax,0x10b3
000048E2  B8B314            mov ax,0x14b3
000048E5  B8B318            mov ax,0x18b3
000048E8  B8B319            mov ax,0x19b3
000048EB  B8B31B            mov ax,0x1bb3
000048EE  B8B332            mov ax,0x32b3
000048F1  B8B333            mov ax,0x33b3
000048F4  B8B334            mov ax,0x34b3
000048F7  B8B335            mov ax,0x35b3
000048FA  B8B336            mov ax,0x36b3
000048FD  B8B337            mov ax,0x37b3
00004900  B8B339            mov ax,0x39b3
00004903  B8B33A            mov ax,0x3ab3
00004906  B8B33D            mov ax,0x3db3
00004909  B8B33E            mov ax,0x3eb3
0000490C  B8B33F            mov ax,0x3fb3
0000490F  B8B340            mov ax,0x40b3
00004912  B8B343            mov ax,0x43b3
00004915  B8B345            mov ax,0x45b3
00004918  B8B346            mov ax,0x46b3
0000491B  B8B347            mov ax,0x47b3
0000491E  B8B348            mov ax,0x48b3
00004921  B8B344            mov ax,0x44b3
00004924  8B263606          mov sp,[0x636]
00004928  B8B302            mov ax,0x2b3
0000492B  B8B303            mov ax,0x3b3
0000492E  B8B304            mov ax,0x4b3
00004931  B8B305            mov ax,0x5b3
00004934  B8B306            mov ax,0x6b3
00004937  B8B307            mov ax,0x7b3
0000493A  B8B309            mov ax,0x9b3
0000493D  B8B30B            mov ax,0xbb3
00004940  B8B30D            mov ax,0xdb3
00004943  B8B30E            mov ax,0xeb3
00004946  B8B310            mov ax,0x10b3
00004949  B8B314            mov ax,0x14b3
0000494C  B8B318            mov ax,0x18b3
0000494F  B8B319            mov ax,0x19b3
00004952  B8B31B            mov ax,0x1bb3
00004955  B8B332            mov ax,0x32b3
00004958  B8B333            mov ax,0x33b3
0000495B  B8B334            mov ax,0x34b3
0000495E  B8B335            mov ax,0x35b3
00004961  B8B336            mov ax,0x36b3
00004964  B8B337            mov ax,0x37b3
00004967  B8B339            mov ax,0x39b3
0000496A  B8B33A            mov ax,0x3ab3
0000496D  B8B33D            mov ax,0x3db3
00004970  B8B33E            mov ax,0x3eb3
00004973  B8B33F            mov ax,0x3fb3
00004976  B8B340            mov ax,0x40b3
00004979  B8B343            mov ax,0x43b3
0000497C  B8B345            mov ax,0x45b3
0000497F  B8B346            mov ax,0x46b3
00004982  B8B347            mov ax,0x47b3
00004985  B8B348            mov ax,0x48b3
00004988  B8B344            mov ax,0x44b3
0000498B  8B2E2006          mov bp,[0x620]
0000498F  4D                dec bp
00004990  4D                dec bp
00004991  E83D2B            call word 0x74d1
00004994  FF263406          jmp word [0x634]
00004998  803E4F0600        cmp byte [0x64f],0x0
0000499D  753D              jnz 0x49dc
0000499F  833E4A0600        cmp word [0x64a],byte +0x0
000049A4  7436              jz 0x49dc
000049A6  32FF              xor bh,bh
000049A8  891E4406          mov [0x644],bx
000049AC  58                pop ax
000049AD  A34206            mov [0x642],ax
000049B0  E8CA00            call word 0x4a7d
000049B3  A34606            mov [0x646],ax
000049B6  C6064F0601        mov byte [0x64f],0x1
000049BB  5B                pop bx
000049BC  BFB600            mov di,0xb6
000049BF  833E440607        cmp word [0x644],byte +0x7
000049C4  750E              jnz 0x49d4
000049C6  892D              mov [di],bp
000049C8  E8D8FE            call word 0x48a3
000049CB  2429              and al,0x29
000049CD  05C706            add ax,0x6c7
000049D0  4C                dec sp
000049D1  06                push es
000049D2  0000              add [bx+si],al
000049D4  8B25              mov sp,[di]
000049D6  53                push bx
000049D7  FF364A06          push word [0x64a]
000049DB  CB                retf
000049DC  E87800            call word 0x4a57
000049DF  EB0A              jmp short 0x49eb
000049E1  E8DD2F            call word 0x79c1
000049E4  E82530            call word 0x7a0c
000049E7  53                push bx
000049E8  54                push sp
000049E9  4F                dec di
000049EA  D0E8              shr al,1
000049EC  1B00              sbb ax,[bx+si]
000049EE  F9                stc
000049EF  EB0A              jmp short 0x49fb
000049F1  B313              mov bl,0x13
000049F3  803E4F0600        cmp byte [0x64f],0x0
000049F8  75E2              jnz 0x49dc
000049FA  F8                clc
000049FB  9C                pushfw
000049FC  E8C22F            call word 0x79c1
000049FF  E88B08            call word 0x528d
00004A02  E8E407            call word 0x51e9
00004A05  9D                popfw
00004A06  E945ED            jmp word 0x374e
00004A09  E897FE            call word 0x48a3
00004A0C  020B              add cl,[bp+di]
00004A0E  C0                db 0xc0
00004A0F  7419              jz 0x4a2a
00004A11  E8F82F            call word 0x7a0c
00004A14  20696E            and [bx+di+0x6e],ch
00004A17  206C69            and [si+0x69],ch
00004A1A  6E                outsb
00004A1B  65A05D58          mov al,[gs:0x585d]
00004A1F  5A                pop dx
00004A20  55                push bp
00004A21  E85900            call word 0x4a7d
00004A24  E8452D            call word 0x776c
00004A27  E9972F            jmp word 0x79c1
00004A2A  E8DF2F            call word 0x7a0c
00004A2D  206174            and [bx+di+0x74],ah
00004A30  206164            and [bx+di+0x64],ah
00004A33  647265            fs jc 0x4a9b
00004A36  7373              jnc 0x4aab
00004A38  A05D5F            mov al,[0x5f5d]
00004A3B  5A                pop dx
00004A3C  55                push bp
00004A3D  E80D00            call word 0x4a4d
00004A40  B03A              mov al,0x3a
00004A42  E8902F            call word 0x79d5
00004A45  8BD7              mov dx,di
00004A47  E80300            call word 0x4a4d
00004A4A  E9742F            jmp word 0x79c1
00004A4D  8AC6              mov al,dh
00004A4F  E8952F            call word 0x79e7
00004A52  8AC2              mov al,dl
00004A54  E9902F            jmp word 0x79e7
00004A57  E8672F            call word 0x79c1
00004A5A  06                push es
00004A5B  0E                push cs
00004A5C  07                pop es
00004A5D  BFE311            mov di,0x11e3
00004A60  8AC3              mov al,bl
00004A62  B480              mov ah,0x80
00004A64  26803DFF          cmp byte [es:di],0xff
00004A68  740C              jz 0x4a76
00004A6A  AE                scasb
00004A6B  740A              jz 0x4a77
00004A6D  86C4              xchg al,ah
00004A6F  AE                scasb
00004A70  73FD              jnc 0x4a6f
00004A72  86C4              xchg al,ah
00004A74  EBEE              jmp short 0x4a64
00004A76  47                inc di
00004A77  07                pop es
00004A78  8BF7              mov si,di
00004A7A  E9812F            jmp word 0x79fe
00004A7D  91                xchg ax,cx
00004A7E  E822FE            call word 0x48a3
00004A81  02968E1E          add dl,[bp+0x1e8e]
00004A85  3A0633DB          cmp al,[0xdb33]
00004A89  AD                lodsw
00004A8A  0BC0              or ax,ax
00004A8C  7411              jz 0x4a9f
00004A8E  3BC1              cmp ax,cx
00004A90  7309              jnc 0x4a9b
00004A92  3BC3              cmp ax,bx
00004A94  7205              jc 0x4a9b
00004A96  93                xchg ax,bx
00004A97  AD                lodsw
00004A98  92                xchg ax,dx
00004A99  EBEE              jmp short 0x4a89
00004A9B  46                inc si
00004A9C  46                inc si
00004A9D  EBEA              jmp short 0x4a89
00004A9F  06                push es
00004AA0  1F                pop ds
00004AA1  0BDB              or bx,bx
00004AA3  7402              jz 0x4aa7
00004AA5  92                xchg ax,dx
00004AA6  C3                ret
00004AA7  E8622F            call word 0x7a0c
00004AAA  49                dec cx
00004AAB  6E                outsb
00004AAC  7465              jz 0x4b13
00004AAE  726E              jc 0x4b1e
00004AB0  61                popaw
00004AB1  6C                insb
00004AB2  204572            and [di+0x72],al
00004AB5  726F              jc 0x4b26
00004AB7  7220              jc 0x4ad9
00004AB9  2D204E            sub ax,0x4e20
00004ABC  6F                outsw
00004ABD  204C69            and [si+0x69],cl
00004AC0  6E                outsb
00004AC1  65204E75          and [gs:bp+0x75],cl
00004AC5  6D                insw
00004AC6  6265F2            bound sp,[di-0xe]
00004AC9  E8F52E            call word 0x79c1
00004ACC  E97AEC            jmp word 0x3749
00004ACF  E8E5F7            call word 0x42b7
00004AD2  EB0F              jmp short 0x4ae3
00004AD4  E8E0F7            call word 0x42b7
00004AD7  807F0300          cmp byte [bx+0x3],0x0
00004ADB  743C              jz 0x4b19
00004ADD  F6470280          test byte [bx+0x2],0x80
00004AE1  7840              js 0x4b23
00004AE3  A1C200            mov ax,[0xc2]
00004AE6  8B0EBA00          mov cx,[0xba]
00004AEA  F7E1              mul cx
00004AEC  97                xchg ax,di
00004AED  8BDA              mov bx,dx
00004AEF  A1C400            mov ax,[0xc4]
00004AF2  F7E1              mul cx
00004AF4  03D8              add bx,ax
00004AF6  A1BC00            mov ax,[0xbc]
00004AF9  F726C200          mul word [0xc2]
00004AFD  03D8              add bx,ax
00004AFF  033EBE00          add di,[0xbe]
00004B03  121EC000          adc bl,[0xc0]
00004B07  32FF              xor bh,bh
00004B09  8BD7              mov dx,di
00004B0B  8916C200          mov [0xc2],dx
00004B0F  891EC400          mov [0xc4],bx
00004B13  B80088            mov ax,0x8800
00004B16  E94BE9            jmp word 0x3464
00004B19  8B16C200          mov dx,[0xc2]
00004B1D  8B1EC400          mov bx,[0xc4]
00004B21  EBF0              jmp short 0x4b13
00004B23  8B17              mov dx,[bx]
00004B25  8B4702            mov ax,[bx+0x2]
00004B28  02D4              add dl,ah
00004B2A  80D600            adc dh,0x0
00004B2D  1400              adc al,0x0
00004B2F  32E4              xor ah,ah
00004B31  8916C200          mov [0xc2],dx
00004B35  A3C400            mov [0xc4],ax
00004B38  EBA9              jmp short 0x4ae3
00004B3A  E87AF7            call word 0x42b7
00004B3D  BBEA00            mov bx,0xea
00004B40  9AA72C4702        call word 0x247:0x2ca7
00004B45  009AD830          add [bp+si+0x30d8],bl
00004B49  47                inc di
00004B4A  0201              add al,[bx+di]
00004B4C  04BB              add al,0xbb
00004B4E  C3                ret
00004B4F  009A9F31          add [bp+si+0x319f],bl
00004B53  47                inc di
00004B54  02C3              add al,bl
00004B56  891EC300          mov [0xc3],bx
00004B5A  CB                retf
00004B5B  00BEAE00          add [bp+0xae],bh
00004B5F  EB06              jmp short 0x4b67
00004B61  E833F7            call word 0x4297
00004B64  BFAE00            mov di,0xae
00004B67  E84DF7            call word 0x42b7
00004B6A  8B4D06            mov cx,[di+0x6]
00004B6D  80F180            xor cl,0x80
00004B70  EB1C              jmp short 0x4b8e
00004B72  91                xchg ax,cx
00004B73  8BF7              mov si,di
00004B75  BFAE00            mov di,0xae
00004B78  A5                movsw
00004B79  A5                movsw
00004B7A  A5                movsw
00004B7B  AB                stosw
00004B7C  C3                ret
00004B7D  BEAE00            mov si,0xae
00004B80  EB06              jmp short 0x4b88
00004B82  E812F7            call word 0x4297
00004B85  BFAE00            mov di,0xae
00004B88  E82CF7            call word 0x42b7
00004B8B  8B4D06            mov cx,[di+0x6]
00004B8E  8B4406            mov ax,[si+0x6]
00004B91  0AE4              or ah,ah
00004B93  74DD              jz 0x4b72
00004B95  3AEC              cmp ch,ah
00004B97  7707              ja 0x4ba0
00004B99  87F7              xchg si,di
00004B9B  91                xchg ax,cx
00004B9C  0AE4              or ah,ah
00004B9E  74D2              jz 0x4b72
00004BA0  2AE5              sub ah,ch
00004BA2  F6DC              neg ah
00004BA4  80FC38            cmp ah,0x38
00004BA7  77C9              ja 0x4b72
00004BA9  D0E0              shl al,1
00004BAB  D0D9              rcr cl,1
00004BAD  91                xchg ax,cx
00004BAE  8ACD              mov cl,ch
00004BB0  B500              mov ch,0x0
00004BB2  50                push ax
00004BB3  57                push di
00004BB4  8BF9              mov di,cx
00004BB6  AC                lodsb
00004BB7  8AE0              mov ah,al
00004BB9  32C0              xor al,al
00004BBB  92                xchg ax,dx
00004BBC  AD                lodsw
00004BBD  91                xchg ax,cx
00004BBE  AD                lodsw
00004BBF  93                xchg ax,bx
00004BC0  AD                lodsw
00004BC1  80CC80            or ah,0x80
00004BC4  0BFF              or di,di
00004BC6  7463              jz 0x4c2b
00004BC8  83FF0E            cmp di,byte +0xe
00004BCB  7C18              jl 0x4be5
00004BCD  0BD2              or dx,dx
00004BCF  7403              jz 0x4bd4
00004BD1  80C901            or cl,0x1
00004BD4  8BD1              mov dx,cx
00004BD6  8BCB              mov cx,bx
00004BD8  8BD8              mov bx,ax
00004BDA  33C0              xor ax,ax
00004BDC  83EF10            sub di,byte +0x10
00004BDF  77E7              ja 0x4bc8
00004BE1  7448              jz 0x4c2b
00004BE3  7223              jc 0x4c08
00004BE5  83FF06            cmp di,byte +0x6
00004BE8  7C2B              jl 0x4c15
00004BEA  0AD2              or dl,dl
00004BEC  7403              jz 0x4bf1
00004BEE  80CE01            or dh,0x1
00004BF1  8AD6              mov dl,dh
00004BF3  8AF1              mov dh,cl
00004BF5  8ACD              mov cl,ch
00004BF7  8AEB              mov ch,bl
00004BF9  8ADF              mov bl,bh
00004BFB  8AF8              mov bh,al
00004BFD  8AC4              mov al,ah
00004BFF  32E4              xor ah,ah
00004C01  83EF08            sub di,byte +0x8
00004C04  770F              ja 0x4c15
00004C06  7423              jz 0x4c2b
00004C08  D1E2              shl dx,1
00004C0A  D1D1              rcl cx,1
00004C0C  D1D3              rcl bx,1
00004C0E  D1D0              rcl ax,1
00004C10  47                inc di
00004C11  75F5              jnz 0x4c08
00004C13  EB16              jmp short 0x4c2b
00004C15  87CF              xchg cx,di
00004C17  F6C23F            test dl,0x3f
00004C1A  7403              jz 0x4c1f
00004C1C  80CA20            or dl,0x20
00004C1F  D1E8              shr ax,1
00004C21  D1DB              rcr bx,1
00004C23  D1DF              rcr di,1
00004C25  D1DA              rcr dx,1
00004C27  E2F6              loop 0x4c1f
00004C29  87CF              xchg cx,di
00004C2B  5E                pop si
00004C2C  97                xchg ax,di
00004C2D  F6C23F            test dl,0x3f
00004C30  7403              jz 0x4c35
00004C32  80CA20            or dl,0x20
00004C35  58                pop ax
00004C36  D0E0              shl al,1
00004C38  7024              jo 0x4c5e
00004C3A  0234              add dh,[si]
00004C3C  134C01            adc cx,[si+0x1]
00004C3F  135C03            adc bx,[si+0x3]
00004C42  9C                pushfw
00004C43  8B7405            mov si,[si+0x5]
00004C46  81CE0080          or si,0x8000
00004C4A  9D                popfw
00004C4B  13FE              adc di,si
00004C4D  730A              jnc 0x4c59
00004C4F  D1DF              rcr di,1
00004C51  D1DB              rcr bx,1
00004C53  D1D9              rcr cx,1
00004C55  D1DA              rcr dx,1
00004C57  FEC4              inc ah
00004C59  7575              jnz 0x4cd0
00004C5B  E970FC            jmp word 0x48ce
00004C5E  F6D0              not al
00004C60  2A34              sub dh,[si]
00004C62  1B4C01            sbb cx,[si+0x1]
00004C65  1B5C03            sbb bx,[si+0x3]
00004C68  9C                pushfw
00004C69  8B7405            mov si,[si+0x5]
00004C6C  81CE0080          or si,0x8000
00004C70  9D                popfw
00004C71  1BFE              sbb di,si
00004C73  7313              jnc 0x4c88
00004C75  33F6              xor si,si
00004C77  F6D0              not al
00004C79  F7D7              not di
00004C7B  F7D3              not bx
00004C7D  F7D1              not cx
00004C7F  F7DA              neg dx
00004C81  F5                cmc
00004C82  13CE              adc cx,si
00004C84  13DE              adc bx,si
00004C86  13FE              adc di,si
00004C88  BE0400            mov si,0x4
00004C8B  0BFF              or di,di
00004C8D  7512              jnz 0x4ca1
00004C8F  80EC10            sub ah,0x10
00004C92  767C              jna 0x4d10
00004C94  4E                dec si
00004C95  7479              jz 0x4d10
00004C97  8BFB              mov di,bx
00004C99  8BD9              mov bx,cx
00004C9B  8BCA              mov cx,dx
00004C9D  33D2              xor dx,dx
00004C9F  EBEA              jmp short 0x4c8b
00004CA1  F7C700FF          test di,0xff00
00004CA5  7519              jnz 0x4cc0
00004CA7  80EC08            sub ah,0x8
00004CAA  7664              jna 0x4d10
00004CAC  97                xchg ax,di
00004CAD  8AE0              mov ah,al
00004CAF  8AC7              mov al,bh
00004CB1  8AFB              mov bh,bl
00004CB3  8ADD              mov bl,ch
00004CB5  8AE9              mov ch,cl
00004CB7  8ACE              mov cl,dh
00004CB9  8AF2              mov dh,dl
00004CBB  B200              mov dl,0x0
00004CBD  0AE4              or ah,ah
00004CBF  97                xchg ax,di
00004CC0  780E              js 0x4cd0
00004CC2  FECC              dec ah
00004CC4  744A              jz 0x4d10
00004CC6  D1E2              shl dx,1
00004CC8  D1D1              rcl cx,1
00004CCA  D1D3              rcl bx,1
00004CCC  D1D7              rcl di,1
00004CCE  71F2              jno 0x4cc2
00004CD0  80FA80            cmp dl,0x80
00004CD3  7707              ja 0x4cdc
00004CD5  7217              jc 0x4cee
00004CD7  F6C601            test dh,0x1
00004CDA  7412              jz 0x4cee
00004CDC  80C601            add dh,0x1
00004CDF  83D100            adc cx,byte +0x0
00004CE2  83D300            adc bx,byte +0x0
00004CE5  83D700            adc di,byte +0x0
00004CE8  7304              jnc 0x4cee
00004CEA  FEC4              inc ah
00004CEC  741F              jz 0x4d0d
00004CEE  2480              and al,0x80
00004CF0  87DF              xchg bx,di
00004CF2  80E77F            and bh,0x7f
00004CF5  0AC7              or al,bh
00004CF7  A3B400            mov [0xb4],ax
00004CFA  881EB300          mov [0xb3],bl
00004CFE  8BDF              mov bx,di
00004D00  BFAE00            mov di,0xae
00004D03  8AC6              mov al,dh
00004D05  AA                stosb
00004D06  91                xchg ax,cx
00004D07  AB                stosw
00004D08  93                xchg ax,bx
00004D09  AB                stosw
00004D0A  C3                ret
00004D0B  7903              jns 0x4d10
00004D0D  E9BEFB            jmp word 0x48ce
00004D10  C606B50000        mov byte [0xb5],0x0
00004D15  C3                ret
00004D16  BEAE00            mov si,0xae
00004D19  EB06              jmp short 0x4d21
00004D1B  E879F5            call word 0x4297
00004D1E  BFAE00            mov di,0xae
00004D21  E893F5            call word 0x42b7
00004D24  8B4406            mov ax,[si+0x6]
00004D27  0AE4              or ah,ah
00004D29  74E5              jz 0x4d10
00004D2B  8B4D06            mov cx,[di+0x6]
00004D2E  0AED              or ch,ch
00004D30  74DE              jz 0x4d10
00004D32  32C1              xor al,cl
00004D34  80EC81            sub ah,0x81
00004D37  80ED80            sub ch,0x80
00004D3A  02E5              add ah,ch
00004D3C  70CD              jo 0x4d0b
00004D3E  80C480            add ah,0x80
00004D41  50                push ax
00004D42  E82201            call word 0x4e67
00004D45  7403              jz 0x4d4a
00004D47  80CA01            or dl,0x1
00004D4A  58                pop ax
00004D4B  0BFF              or di,di
00004D4D  780E              js 0x4d5d
00004D4F  D1E2              shl dx,1
00004D51  D1D1              rcl cx,1
00004D53  D1D3              rcl bx,1
00004D55  D1D7              rcl di,1
00004D57  0AE4              or ah,ah
00004D59  7506              jnz 0x4d61
00004D5B  EBB3              jmp short 0x4d10
00004D5D  FEC4              inc ah
00004D5F  74AC              jz 0x4d0d
00004D61  E96CFF            jmp word 0x4cd0
00004D64  BEAE00            mov si,0xae
00004D67  EB06              jmp short 0x4d6f
00004D69  E82BF5            call word 0x4297
00004D6C  BFAE00            mov di,0xae
00004D6F  E845F5            call word 0x42b7
00004D72  8B4406            mov ax,[si+0x6]
00004D75  8B4D06            mov cx,[di+0x6]
00004D78  32C1              xor al,cl
00004D7A  0AED              or ch,ch
00004D7C  7462              jz 0x4de0
00004D7E  0AE4              or ah,ah
00004D80  748E              jz 0x4d10
00004D82  80EC80            sub ah,0x80
00004D85  80ED80            sub ch,0x80
00004D88  2AE5              sub ah,ch
00004D8A  70B0              jo 0x4d3c
00004D8C  80C480            add ah,0x80
00004D8F  50                push ax
00004D90  AC                lodsb
00004D91  8AE8              mov ch,al
00004D93  32C9              xor cl,cl
00004D95  AD                lodsw
00004D96  93                xchg ax,bx
00004D97  AD                lodsw
00004D98  92                xchg ax,dx
00004D99  AD                lodsw
00004D9A  80CC80            or ah,0x80
00004D9D  92                xchg ax,dx
00004D9E  8BF7              mov si,di
00004DA0  83C605            add si,byte +0x5
00004DA3  BFB400            mov di,0xb4
00004DA6  FD                std
00004DA7  A5                movsw
00004DA8  A5                movsw
00004DA9  A5                movsw
00004DAA  46                inc si
00004DAB  47                inc di
00004DAC  A4                movsb
00004DAD  FC                cld
00004DAE  C60500            mov byte [di],0x0
00004DB1  800EB50080        or byte [0xb5],0x80
00004DB6  D1EA              shr dx,1
00004DB8  D1D8              rcr ax,1
00004DBA  D1DB              rcr bx,1
00004DBC  D1D9              rcr cx,1
00004DBE  E82200            call word 0x4de3
00004DC1  57                push di
00004DC2  E81E00            call word 0x4de3
00004DC5  57                push di
00004DC6  E81A00            call word 0x4de3
00004DC9  57                push di
00004DCA  E81600            call word 0x4de3
00004DCD  0BC3              or ax,bx
00004DCF  0BC1              or ax,cx
00004DD1  0BC2              or ax,dx
00004DD3  8BD7              mov dx,di
00004DD5  7403              jz 0x4dda
00004DD7  80CA01            or dl,0x1
00004DDA  59                pop cx
00004DDB  5B                pop bx
00004DDC  5F                pop di
00004DDD  E96AFF            jmp word 0x4d4a
00004DE0  E9F4FA            jmp word 0x48d7
00004DE3  8B36B400          mov si,[0xb4]
00004DE7  33FF              xor di,di
00004DE9  3BD6              cmp dx,si
00004DEB  735C              jnc 0x4e49
00004DED  0BD2              or dx,dx
00004DEF  7504              jnz 0x4df5
00004DF1  3BF0              cmp si,ax
00004DF3  773B              ja 0x4e30
00004DF5  F7F6              div si
00004DF7  52                push dx
00004DF8  97                xchg ax,di
00004DF9  33ED              xor bp,bp
00004DFB  8BF5              mov si,bp
00004DFD  A1AE00            mov ax,[0xae]
00004E00  0BC0              or ax,ax
00004E02  7404              jz 0x4e08
00004E04  F7E7              mul di
00004E06  8BF2              mov si,dx
00004E08  50                push ax
00004E09  A1B000            mov ax,[0xb0]
00004E0C  0BC0              or ax,ax
00004E0E  7406              jz 0x4e16
00004E10  F7E7              mul di
00004E12  03F0              add si,ax
00004E14  13EA              adc bp,dx
00004E16  A1B200            mov ax,[0xb2]
00004E19  0BC0              or ax,ax
00004E1B  7408              jz 0x4e25
00004E1D  F7E7              mul di
00004E1F  03E8              add bp,ax
00004E21  83D200            adc dx,byte +0x0
00004E24  92                xchg ax,dx
00004E25  5A                pop dx
00004E26  F7DA              neg dx
00004E28  1BCE              sbb cx,si
00004E2A  1BDD              sbb bx,bp
00004E2C  5D                pop bp
00004E2D  1BE8              sbb bp,ax
00004E2F  95                xchg ax,bp
00004E30  92                xchg ax,dx
00004E31  91                xchg ax,cx
00004E32  93                xchg ax,bx
00004E33  7313              jnc 0x4e48
00004E35  4F                dec di
00004E36  030EAE00          add cx,[0xae]
00004E3A  131EB000          adc bx,[0xb0]
00004E3E  1306B200          adc ax,[0xb2]
00004E42  1316B400          adc dx,[0xb4]
00004E46  73ED              jnc 0x4e35
00004E48  C3                ret
00004E49  4F                dec di
00004E4A  2B0EAE00          sub cx,[0xae]
00004E4E  1B1EB000          sbb bx,[0xb0]
00004E52  1B06B200          sbb ax,[0xb2]
00004E56  030EB000          add cx,[0xb0]
00004E5A  131EB200          adc bx,[0xb2]
00004E5E  13C2              adc ax,dx
00004E60  8B16AE00          mov dx,[0xae]
00004E64  F5                cmc
00004E65  EBC9              jmp short 0x4e30
00004E67  8A4406            mov al,[si+0x6]
00004E6A  B400              mov ah,0x0
00004E6C  0C80              or al,0x80
00004E6E  A35206            mov [0x652],ax
00004E71  8A4506            mov al,[di+0x6]
00004E74  B400              mov ah,0x0
00004E76  0C80              or al,0x80
00004E78  A35406            mov [0x654],ax
00004E7B  33DB              xor bx,bx
00004E7D  8BEB              mov bp,bx
00004E7F  8B0C              mov cx,[si]
00004E81  E31A              jcxz 0x4e9d
00004E83  91                xchg ax,cx
00004E84  8B0D              mov cx,[di]
00004E86  E308              jcxz 0x4e90
00004E88  F7E1              mul cx
00004E8A  8BE8              mov bp,ax
00004E8C  8BCA              mov cx,dx
00004E8E  8B04              mov ax,[si]
00004E90  8B5502            mov dx,[di+0x2]
00004E93  0BD2              or dx,dx
00004E95  7406              jz 0x4e9d
00004E97  F7E2              mul dx
00004E99  03C8              add cx,ax
00004E9B  13DA              adc bx,dx
00004E9D  55                push bp
00004E9E  33ED              xor bp,bp
00004EA0  8B4402            mov ax,[si+0x2]
00004EA3  0BC0              or ax,ax
00004EA5  740E              jz 0x4eb5
00004EA7  8B15              mov dx,[di]
00004EA9  0BD2              or dx,dx
00004EAB  7408              jz 0x4eb5
00004EAD  F7E2              mul dx
00004EAF  03C8              add cx,ax
00004EB1  13DA              adc bx,dx
00004EB3  D1D5              rcl bp,1
00004EB5  58                pop ax
00004EB6  0BC1              or ax,cx
00004EB8  50                push ax
00004EB9  8B4402            mov ax,[si+0x2]
00004EBC  0BC0              or ax,ax
00004EBE  740D              jz 0x4ecd
00004EC0  8B5502            mov dx,[di+0x2]
00004EC3  0BD2              or dx,dx
00004EC5  7406              jz 0x4ecd
00004EC7  F7E2              mul dx
00004EC9  03D8              add bx,ax
00004ECB  13EA              adc bp,dx
00004ECD  33C9              xor cx,cx
00004ECF  8B04              mov ax,[si]
00004ED1  0BC0              or ax,ax
00004ED3  740F              jz 0x4ee4
00004ED5  8B5504            mov dx,[di+0x4]
00004ED8  0BD2              or dx,dx
00004EDA  7408              jz 0x4ee4
00004EDC  F7E2              mul dx
00004EDE  03D8              add bx,ax
00004EE0  13EA              adc bp,dx
00004EE2  D1D1              rcl cx,1
00004EE4  8B4404            mov ax,[si+0x4]
00004EE7  0BC0              or ax,ax
00004EE9  740F              jz 0x4efa
00004EEB  8B15              mov dx,[di]
00004EED  0BD2              or dx,dx
00004EEF  7409              jz 0x4efa
00004EF1  F7E2              mul dx
00004EF3  03D8              add bx,ax
00004EF5  13EA              adc bp,dx
00004EF7  83D100            adc cx,byte +0x0
00004EFA  58                pop ax
00004EFB  0BC3              or ax,bx
00004EFD  50                push ax
00004EFE  8B04              mov ax,[si]
00004F00  0BC0              or ax,ax
00004F02  7408              jz 0x4f0c
00004F04  F7265406          mul word [0x654]
00004F08  03E8              add bp,ax
00004F0A  13CA              adc cx,dx
00004F0C  8B05              mov ax,[di]
00004F0E  0BC0              or ax,ax
00004F10  7408              jz 0x4f1a
00004F12  F7265206          mul word [0x652]
00004F16  03E8              add bp,ax
00004F18  13CA              adc cx,dx
00004F1A  33DB              xor bx,bx
00004F1C  8B4402            mov ax,[si+0x2]
00004F1F  0BC0              or ax,ax
00004F21  740F              jz 0x4f32
00004F23  8B5504            mov dx,[di+0x4]
00004F26  0BD2              or dx,dx
00004F28  7408              jz 0x4f32
00004F2A  F7E2              mul dx
00004F2C  03E8              add bp,ax
00004F2E  13CA              adc cx,dx
00004F30  D1D3              rcl bx,1
00004F32  8B4404            mov ax,[si+0x4]
00004F35  0BC0              or ax,ax
00004F37  7410              jz 0x4f49
00004F39  8B5502            mov dx,[di+0x2]
00004F3C  0BD2              or dx,dx
00004F3E  7409              jz 0x4f49
00004F40  F7E2              mul dx
00004F42  03E8              add bp,ax
00004F44  13CA              adc cx,dx
00004F46  83D300            adc bx,byte +0x0
00004F49  55                push bp
00004F4A  33ED              xor bp,bp
00004F4C  8B4502            mov ax,[di+0x2]
00004F4F  0BC0              or ax,ax
00004F51  7408              jz 0x4f5b
00004F53  F7265206          mul word [0x652]
00004F57  03C8              add cx,ax
00004F59  13DA              adc bx,dx
00004F5B  8B4402            mov ax,[si+0x2]
00004F5E  0BC0              or ax,ax
00004F60  7408              jz 0x4f6a
00004F62  F7265406          mul word [0x654]
00004F66  03C8              add cx,ax
00004F68  13DA              adc bx,dx
00004F6A  8B4404            mov ax,[si+0x4]
00004F6D  0BC0              or ax,ax
00004F6F  741A              jz 0x4f8b
00004F71  8B5504            mov dx,[di+0x4]
00004F74  0BD2              or dx,dx
00004F76  740B              jz 0x4f83
00004F78  F7E2              mul dx
00004F7A  03C8              add cx,ax
00004F7C  13DA              adc bx,dx
00004F7E  D1D5              rcl bp,1
00004F80  8B4404            mov ax,[si+0x4]
00004F83  F7265406          mul word [0x654]
00004F87  03D8              add bx,ax
00004F89  13EA              adc bp,dx
00004F8B  8B4504            mov ax,[di+0x4]
00004F8E  0BC0              or ax,ax
00004F90  7408              jz 0x4f9a
00004F92  F7265206          mul word [0x652]
00004F96  03D8              add bx,ax
00004F98  13EA              adc bp,dx
00004F9A  A05206            mov al,[0x652]
00004F9D  F6265406          mul byte [0x654]
00004FA1  03C5              add ax,bp
00004FA3  97                xchg ax,di
00004FA4  5A                pop dx
00004FA5  5E                pop si
00004FA6  0BF6              or si,si
00004FA8  C3                ret
00004FA9  891E4A06          mov [0x64a],bx
00004FAD  CB                retf
00004FAE  C7064A060000      mov word [0x64a],0x0
00004FB4  803E4F0600        cmp byte [0x64f],0x0
00004FB9  74F2              jz 0x4fad
00004FBB  5B                pop bx
00004FBC  FF364206          push word [0x642]
00004FC0  8B1E4406          mov bx,[0x644]
00004FC4  E9C4F9            jmp word 0x498b
00004FC7  803E4F0600        cmp byte [0x64f],0x0
00004FCC  7408              jz 0x4fd6
00004FCE  C6064F0600        mov byte [0x64f],0x0
00004FD3  58                pop ax
00004FD4  53                push bx
00004FD5  CB                retf
00004FD6  E971F9            jmp word 0x494a
00004FD9  803E4F0600        cmp byte [0x64f],0x0
00004FDE  74F6              jz 0x4fd6
00004FE0  C6064F0600        mov byte [0x64f],0x0
00004FE5  58                pop ax
00004FE6  A14206            mov ax,[0x642]
00004FE9  E891FA            call word 0x4a7d
00004FEC  53                push bx
00004FED  CB                retf
00004FEE  803E4F0600        cmp byte [0x64f],0x0
00004FF3  74E1              jz 0x4fd6
00004FF5  C6064F0600        mov byte [0x64f],0x0
00004FFA  8B0E4206          mov cx,[0x642]
00004FFE  E8A2F8            call word 0x48a3
00005001  02968E1E          add dl,[bp+0x1e8e]
00005005  3A06BBFF          cmp al,[0xffbb]
00005009  FFAD0BC0          jmp word far [di-0x3ff5]
0000500D  740D              jz 0x501c
0000500F  3BC1              cmp ax,cx
00005011  7205              jc 0x5018
00005013  3BC3              cmp ax,bx
00005015  7301              jnc 0x5018
00005017  93                xchg ax,bx
00005018  46                inc si
00005019  46                inc si
0000501A  EBEE              jmp short 0x500a
0000501C  06                push es
0000501D  1F                pop ds
0000501E  58                pop ax
0000501F  53                push bx
00005020  43                inc bx
00005021  75B2              jnz 0x4fd5
00005023  E981FA            jmp word 0x4aa7
00005026  8B1E4406          mov bx,[0x644]
0000502A  CB                retf
0000502B  50                push ax
0000502C  52                push dx
0000502D  53                push bx
0000502E  B80090            mov ax,0x9000
00005031  33D2              xor dx,dx
00005033  8B1E4606          mov bx,[0x646]
00005037  E82AE4            call word 0x3464
0000503A  5B                pop bx
0000503B  5A                pop dx
0000503C  58                pop ax
0000503D  CB                retf
0000503E  4B                dec bx
0000503F  59                pop cx
00005040  42                inc dx
00005041  44                inc sp
00005042  FF5343            call word [bp+di+0x43]
00005045  52                push dx
00005046  4E                dec si
00005047  FE4341            inc byte [bp+di+0x41]
0000504A  53                push bx
0000504B  31FD              xor bp,di
0000504D  43                inc bx
0000504E  4F                dec di
0000504F  4D                dec bp
00005050  31FC              xor sp,di
00005052  43                inc bx
00005053  4F                dec di
00005054  4D                dec bp
00005055  32FB              xor bh,bl
00005057  4C                dec sp
00005058  50                push ax
00005059  54                push sp
0000505A  31FA              xor dx,di
0000505C  4C                dec sp
0000505D  50                push ax
0000505E  54                push sp
0000505F  32F9              xor bh,cl
00005061  4C                dec sp
00005062  50                push ax
00005063  54                push sp
00005064  33F8              xor di,ax
00005066  0090B646          add [bx+si+0x46b6],dl
0000506A  2F                das
0000506B  3817              cmp [bx],dl
0000506D  38A04561          cmp [bx+si+0x6145],ah
00005071  42                inc dx
00005072  61                popaw
00005073  42                inc dx
00005074  49                dec cx
00005075  44                inc sp
00005076  49                dec cx
00005077  44                inc sp
00005078  49                dec cx
00005079  44                inc sp
0000507A  47                inc di
0000507B  384738            cmp [bx+0x38],al
0000507E  A04561            mov al,[0x6145]
00005081  42                inc dx
00005082  61                popaw
00005083  42                inc dx
00005084  61                popaw
00005085  44                inc sp
00005086  7044              jo 0x50cc
00005088  7044              jo 0x50ce
0000508A  47                inc di
0000508B  384738            cmp [bx+0x38],al
0000508E  A7                cmpsw
0000508F  45                inc bp
00005090  684268            push word 0x6842
00005093  42                inc dx
00005094  95                xchg ax,bp
00005095  44                inc sp
00005096  95                xchg ax,bp
00005097  44                inc sp
00005098  95                xchg ax,bp
00005099  44                inc sp
0000509A  48                dec ax
0000509B  389338A8          cmp [bp+di-0x57c8],dl
0000509F  45                inc bp
000050A0  6942694296        imul ax,[bp+si+0x69],word 0x9642
000050A5  44                inc sp
000050A6  9A449A44E8        call word 0xe844:0x9a44
000050AB  0AF2              or dh,dl
000050AD  8B0F              mov cx,[bx]
000050AF  8B7702            mov si,[bx+0x2]
000050B2  E87402            call word 0x5329
000050B5  0AC0              or al,al
000050B7  7503              jnz 0x50bc
000050B9  E954F8            jmp word 0x4910
000050BC  E82A24            call word 0x74e9
000050BF  F6D8              neg al
000050C1  98                cbw
000050C2  D1E0              shl ax,1
000050C4  97                xchg ax,di
000050C5  2E83BDF81C00      cmp word [cs:di+0x1cf8],byte +0x0
000050CB  7405              jz 0x50d2
000050CD  2EFFA5281D        jmp word [cs:di+0x1d28]
000050D2  E94DF8            jmp word 0x4922
000050D5  89263606          mov [0x636],sp
000050D9  56                push si
000050DA  E8A927            call word 0x7886
000050DD  7503              jnz 0x50e2
000050DF  E9F200            jmp word 0x51d4
000050E2  8BDE              mov bx,si
000050E4  5E                pop si
000050E5  CB                retf
000050E6  50                push ax
000050E7  B400              mov ah,0x0
000050E9  89263606          mov [0x636],sp
000050ED  8306360602        add word [0x636],byte +0x2
000050F2  E85101            call word 0x5246
000050F5  58                pop ax
000050F6  CB                retf
000050F7  50                push ax
000050F8  B402              mov ah,0x2
000050FA  EBED              jmp short 0x50e9
000050FC  50                push ax
000050FD  B404              mov ah,0x4
000050FF  EBE8              jmp short 0x50e9
00005101  89263606          mov [0x636],sp
00005105  56                push si
00005106  E87D27            call word 0x7886
00005109  5E                pop si
0000510A  740C              jz 0x5118
0000510C  50                push ax
0000510D  B406              mov ah,0x6
0000510F  EBE1              jmp short 0x50f2
00005111  89263606          mov [0x636],sp
00005115  E87501            call word 0x528d
00005118  CB                retf
00005119  50                push ax
0000511A  B408              mov ah,0x8
0000511C  EBCB              jmp short 0x50e9
0000511E  50                push ax
0000511F  B000              mov al,0x0
00005121  B40A              mov ah,0xa
00005123  89263606          mov [0x636],sp
00005127  8306360602        add word [0x636],byte +0x2
0000512C  56                push si
0000512D  E85627            call word 0x7886
00005130  7452              jz 0x5184
00005132  803C04            cmp byte [si],0x4
00005135  754D              jnz 0x5184
00005137  E81C01            call word 0x5256
0000513A  5E                pop si
0000513B  58                pop ax
0000513C  CB                retf
0000513D  50                push ax
0000513E  B002              mov al,0x2
00005140  EBDF              jmp short 0x5121
00005142  50                push ax
00005143  B001              mov al,0x1
00005145  EBDA              jmp short 0x5121
00005147  50                push ax
00005148  B003              mov al,0x3
0000514A  EBD5              jmp short 0x5121
0000514C  89263606          mov [0x636],sp
00005150  50                push ax
00005151  53                push bx
00005152  833F00            cmp word [bx],byte +0x0
00005155  742D              jz 0x5184
00005157  8B5F02            mov bx,[bx+0x2]
0000515A  8A1F              mov bl,[bx]
0000515C  80E3DF            and bl,0xdf
0000515F  B001              mov al,0x1
00005161  80FB49            cmp bl,0x49
00005164  7415              jz 0x517b
00005166  B002              mov al,0x2
00005168  80FB4F            cmp bl,0x4f
0000516B  740E              jz 0x517b
0000516D  B004              mov al,0x4
0000516F  80FB52            cmp bl,0x52
00005172  7407              jz 0x517b
00005174  B008              mov al,0x8
00005176  80FB41            cmp bl,0x41
00005179  7509              jnz 0x5184
0000517B  A2A406            mov [0x6a4],al
0000517E  5B                pop bx
0000517F  E86723            call word 0x74e9
00005182  58                pop ax
00005183  CB                retf
00005184  E974F7            jmp word 0x48fb
00005187  51                push cx
00005188  53                push bx
00005189  8ACB              mov cl,bl
0000518B  B301              mov bl,0x1
0000518D  D2E3              shl bl,cl
0000518F  881EA406          mov [0x6a4],bl
00005193  5B                pop bx
00005194  59                pop cx
00005195  CB                retf
00005196  89263606          mov [0x636],sp
0000519A  50                push ax
0000519B  56                push si
0000519C  E81100            call word 0x51b0
0000519F  EB02              jmp short 0x51a3
000051A1  50                push ax
000051A2  56                push si
000051A3  E8E026            call word 0x7886
000051A6  7529              jnz 0x51d1
000051A8  B40C              mov ah,0xc
000051AA  E8A400            call word 0x5251
000051AD  5E                pop si
000051AE  58                pop ax
000051AF  CB                retf
000051B0  51                push cx
000051B1  52                push dx
000051B2  53                push bx
000051B3  8BDA              mov bx,dx
000051B5  8B0F              mov cx,[bx]
000051B7  8B7702            mov si,[bx+0x2]
000051BA  E8ED00            call word 0x52aa
000051BD  E82923            call word 0x74e9
000051C0  5B                pop bx
000051C1  5A                pop dx
000051C2  59                pop cx
000051C3  43                inc bx
000051C4  740A              jz 0x51d0
000051C6  4B                dec bx
000051C7  0BDB              or bx,bx
000051C9  7409              jz 0x51d4
000051CB  83FB7F            cmp bx,byte +0x7f
000051CE  7704              ja 0x51d4
000051D0  C3                ret
000051D1  E92AF7            jmp word 0x48fe
000051D4  E91EF7            jmp word 0x48f5
000051D7  BB081D            mov bx,0x1d08
000051DA  BF1000            mov di,0x10
000051DD  53                push bx
000051DE  57                push di
000051DF  2EFF11            call word [cs:bx+di]
000051E2  5F                pop di
000051E3  5B                pop bx
000051E4  4F                dec di
000051E5  4F                dec di
000051E6  75F5              jnz 0x51dd
000051E8  C3                ret
000051E9  BB181D            mov bx,0x1d18
000051EC  EBEC              jmp short 0x51da
000051EE  56                push si
000051EF  8B364806          mov si,[0x648]
000051F3  0BF6              or si,si
000051F5  7504              jnz 0x51fb
000051F7  5E                pop si
000051F8  E9EF19            jmp word 0x6bea
000051FB  B40E              mov ah,0xe
000051FD  E85600            call word 0x5256
00005200  5E                pop si
00005201  C3                ret
00005202  56                push si
00005203  8B364806          mov si,[0x648]
00005207  0BF6              or si,si
00005209  7504              jnz 0x520f
0000520B  5E                pop si
0000520C  E9C519            jmp word 0x6bd4
0000520F  B410              mov ah,0x10
00005211  EBEA              jmp short 0x51fd
00005213  56                push si
00005214  8B364806          mov si,[0x648]
00005218  0BF6              or si,si
0000521A  7504              jnz 0x5220
0000521C  5E                pop si
0000521D  E9EB19            jmp word 0x6c0b
00005220  B412              mov ah,0x12
00005222  EBD9              jmp short 0x51fd
00005224  56                push si
00005225  8B364806          mov si,[0x648]
00005229  0BF6              or si,si
0000522B  7504              jnz 0x5231
0000522D  5E                pop si
0000522E  E92F1A            jmp word 0x6c60
00005231  B414              mov ah,0x14
00005233  EBC8              jmp short 0x51fd
00005235  56                push si
00005236  8B364806          mov si,[0x648]
0000523A  0BF6              or si,si
0000523C  7504              jnz 0x5242
0000523E  5E                pop si
0000523F  E9211A            jmp word 0x6c63
00005242  B416              mov ah,0x16
00005244  EBB7              jmp short 0x51fd
00005246  56                push si
00005247  E83C26            call word 0x7886
0000524A  7488              jz 0x51d4
0000524C  E80700            call word 0x5256
0000524F  5E                pop si
00005250  C3                ret
00005251  57                push di
00005252  53                push bx
00005253  50                push ax
00005254  EB06              jmp short 0x525c
00005256  57                push di
00005257  53                push bx
00005258  50                push ax
00005259  8A442E            mov al,[si+0x2e]
0000525C  0AC0              or al,al
0000525E  7804              js 0x5264
00005260  32C0              xor al,al
00005262  EB02              jmp short 0x5266
00005264  F6D8              neg al
00005266  98                cbw
00005267  D1E0              shl ax,1
00005269  8BF8              mov di,ax
0000526B  2E8B9DF81C        mov bx,[cs:di+0x1cf8]
00005270  0BDB              or bx,bx
00005272  7416              jz 0x528a
00005274  58                pop ax
00005275  50                push ax
00005276  86E0              xchg ah,al
00005278  98                cbw
00005279  03D8              add bx,ax
0000527B  2E8B1F            mov bx,[cs:bx]
0000527E  891E5606          mov [0x656],bx
00005282  58                pop ax
00005283  5B                pop bx
00005284  FF165606          call word [0x656]
00005288  5F                pop di
00005289  C3                ret
0000528A  E995F6            jmp word 0x4922
0000528D  53                push bx
0000528E  56                push si
0000528F  8B363206          mov si,[0x632]
00005293  0BF6              or si,si
00005295  740C              jz 0x52a3
00005297  8A5CFB            mov bl,[si-0x5]
0000529A  32FF              xor bh,bh
0000529C  9A951D4702        call word 0x247:0x1d95
000052A1  EBEC              jmp short 0x528f
000052A3  5E                pop si
000052A4  5B                pop bx
000052A5  C3                ret
000052A6  B001              mov al,0x1
000052A8  EB07              jmp short 0x52b1
000052AA  C606A50600        mov byte [0x6a5],0x0
000052AF  B000              mov al,0x0
000052B1  A2A606            mov [0x6a6],al
000052B4  E87200            call word 0x5329
000052B7  A25806            mov [0x658],al
000052BA  0AC0              or al,al
000052BC  7802              js 0x52c0
000052BE  32C0              xor al,al
000052C0  50                push ax
000052C1  52                push dx
000052C2  57                push di
000052C3  BF5906            mov di,0x659
000052C6  BA0B00            mov dx,0xb
000052C9  3CFC              cmp al,0xfc
000052CB  7404              jz 0x52d1
000052CD  3CFB              cmp al,0xfb
000052CF  751A              jnz 0x52eb
000052D1  51                push cx
000052D2  E308              jcxz 0x52dc
000052D4  83F941            cmp cx,byte +0x41
000052D7  7324              jnc 0x52fd
000052D9  FC                cld
000052DA  F3A4              rep movsb
000052DC  880D              mov [di],cl
000052DE  5A                pop dx
000052DF  B140              mov cl,0x40
000052E1  2BCA              sub cx,dx
000052E3  7423              jz 0x5308
000052E5  8AC5              mov al,ch
000052E7  F3AA              rep stosb
000052E9  EB1D              jmp short 0x5308
000052EB  E334              jcxz 0x5321
000052ED  49                dec cx
000052EE  AC                lodsb
000052EF  3C20              cmp al,0x20
000052F1  730D              jnc 0x5300
000052F3  803EA60600        cmp byte [0x6a6],0x0
000052F8  7503              jnz 0x52fd
000052FA  E9F8F5            jmp word 0x48f5
000052FD  E910F6            jmp word 0x4910
00005300  3C2E              cmp al,0x2e
00005302  7408              jz 0x530c
00005304  AA                stosb
00005305  4A                dec dx
00005306  75E3              jnz 0x52eb
00005308  5F                pop di
00005309  5A                pop dx
0000530A  58                pop ax
0000530B  C3                ret
0000530C  A2A506            mov [0x6a5],al
0000530F  83FA0B            cmp dx,byte +0xb
00005312  74DF              jz 0x52f3
00005314  83FA03            cmp dx,byte +0x3
00005317  72DA              jc 0x52f3
00005319  74D0              jz 0x52eb
0000531B  B020              mov al,0x20
0000531D  AA                stosb
0000531E  4A                dec dx
0000531F  EBEE              jmp short 0x530f
00005321  B020              mov al,0x20
00005323  AA                stosb
00005324  4A                dec dx
00005325  75FA              jnz 0x5321
00005327  EBDF              jmp short 0x5308
00005329  52                push dx
0000532A  57                push di
0000532B  56                push si
0000532C  8BD1              mov dx,cx
0000532E  E307              jcxz 0x5337
00005330  AC                lodsb
00005331  3C3A              cmp al,0x3a
00005333  740A              jz 0x533f
00005335  E2F9              loop 0x5330
00005337  8BCA              mov cx,dx
00005339  5E                pop si
0000533A  5F                pop di
0000533B  5A                pop dx
0000533C  32C0              xor al,al
0000533E  C3                ret
0000533F  5F                pop di
00005340  87F7              xchg si,di
00005342  57                push di
00005343  2BD1              sub dx,cx
00005345  74AC              jz 0x52f3
00005347  49                dec cx
00005348  83FA01            cmp dx,byte +0x1
0000534B  7439              jz 0x5386
0000534D  BFCD1C            mov di,0x1ccd
00005350  56                push si
00005351  52                push dx
00005352  47                inc di
00005353  AC                lodsb
00005354  E83D00            call word 0x5394
00005357  2EF60580          test byte [cs:di],0x80
0000535B  751D              jnz 0x537a
0000535D  2E3805            cmp [cs:di],al
00005360  7512              jnz 0x5374
00005362  4A                dec dx
00005363  75ED              jnz 0x5352
00005365  47                inc di
00005366  2E8A05            mov al,[cs:di]
00005369  0AC0              or al,al
0000536B  7907              jns 0x5374
0000536D  5E                pop si
0000536E  5E                pop si
0000536F  5E                pop si
00005370  5F                pop di
00005371  5A                pop dx
00005372  C3                ret
00005373  47                inc di
00005374  2EF60580          test byte [cs:di],0x80
00005378  74F9              jz 0x5373
0000537A  5A                pop dx
0000537B  5E                pop si
0000537C  2E807D0100        cmp byte [cs:di+0x1],0x0
00005381  75CD              jnz 0x5350
00005383  E96DFF            jmp word 0x52f3
00005386  AC                lodsb
00005387  E80A00            call word 0x5394
0000538A  2C40              sub al,0x40
0000538C  72F5              jc 0x5383
0000538E  3C1A              cmp al,0x1a
00005390  73F1              jnc 0x5383
00005392  EBDB              jmp short 0x536f
00005394  3C61              cmp al,0x61
00005396  7206              jc 0x539e
00005398  3C7A              cmp al,0x7a
0000539A  7702              ja 0x539e
0000539C  24DF              and al,0xdf
0000539E  C3                ret
0000539F  803EA40604        cmp byte [0x6a4],0x4
000053A4  7505              jnz 0x53ab
000053A6  C606A40602        mov byte [0x6a4],0x2
000053AB  C3                ret
000053AC  8426A406          test [0x6a4],ah
000053B0  741F              jz 0x53d1
000053B2  87D9              xchg bx,cx
000053B4  83C333            add bx,byte +0x33
000053B7  E8EA24            call word 0x78a4
000053BA  87D9              xchg bx,cx
000053BC  8B3E3206          mov di,[0x632]
000053C0  897CFE            mov [si-0x2],di
000053C3  89363206          mov [0x632],si
000053C7  885CFB            mov [si-0x5],bl
000053CA  88442E            mov [si+0x2e],al
000053CD  89542F            mov [si+0x2f],dx
000053D0  C3                ret
000053D1  E927F5            jmp word 0x48fb
000053D4  E8E0EE            call word 0x42b7
000053D7  E8A021            call word 0x757a
000053DA  C606740808        mov byte [0x874],0x8
000053DF  8B7702            mov si,[bx+0x2]
000053E2  53                push bx
000053E3  E88B00            call word 0x5471
000053E6  5B                pop bx
000053E7  E9FF20            jmp word 0x74e9
000053EA  E86902            call word 0x5656
000053ED  8AE0              mov ah,al
000053EF  3C22              cmp al,0x22
000053F1  7403              jz 0x53f6
000053F3  B42C              mov ah,0x2c
000053F5  4E                dec si
000053F6  8BD6              mov dx,si
000053F8  33C9              xor cx,cx
000053FA  AC                lodsb
000053FB  3AC4              cmp al,ah
000053FD  740B              jz 0x540a
000053FF  0AC0              or al,al
00005401  E0F7              loopne 0x53fa
00005403  41                inc cx
00005404  80FC2C            cmp ah,0x2c
00005407  7401              jz 0x540a
00005409  4E                dec si
0000540A  F7D9              neg cx
0000540C  80FC2C            cmp ah,0x2c
0000540F  750F              jnz 0x5420
00005411  4E                dec si
00005412  8BFE              mov di,si
00005414  4F                dec di
00005415  B020              mov al,0x20
00005417  3AC0              cmp al,al
00005419  FD                std
0000541A  F3AE              repe scasb
0000541C  FC                cld
0000541D  7401              jz 0x5420
0000541F  41                inc cx
00005420  8BD9              mov bx,cx
00005422  E89520            call word 0x74ba
00005425  891EB200          mov [0xb2],bx
00005429  C3                ret
0000542A  EBBE              jmp short 0x53ea
0000542C  E82702            call word 0x5656
0000542F  B9040F            mov cx,0xf04
00005432  3C48              cmp al,0x48
00005434  7407              jz 0x543d
00005436  B90307            mov cx,0x703
00005439  3C4F              cmp al,0x4f
0000543B  7503              jnz 0x5440
0000543D  E81602            call word 0x5656
00005440  2C30              sub al,0x30
00005442  721B              jc 0x545f
00005444  3C09              cmp al,0x9
00005446  7606              jna 0x544e
00005448  2C07              sub al,0x7
0000544A  3C0A              cmp al,0xa
0000544C  7211              jc 0x545f
0000544E  3AC5              cmp al,ch
00005450  770D              ja 0x545f
00005452  F6C6E0            test dh,0xe0
00005455  756B              jnz 0x54c2
00005457  D3E2              shl dx,cl
00005459  7267              jc 0x54c2
0000545B  0AD0              or dl,al
0000545D  EBDE              jmp short 0x543d
0000545F  4E                dec si
00005460  33C9              xor cx,cx
00005462  B0FF              mov al,0xff
00005464  0BD2              or dx,dx
00005466  7904              jns 0x546c
00005468  F7DA              neg dx
0000546A  32C0              xor al,al
0000546C  0AC0              or al,al
0000546E  9C                pushfw
0000546F  EB29              jmp short 0x549a
00005471  803E740803        cmp byte [0x874],0x3
00005476  74B2              jz 0x542a
00005478  33DB              xor bx,bx
0000547A  8BD3              mov dx,bx
0000547C  8BEB              mov bp,bx
0000547E  891EA806          mov [0x6a8],bx
00005482  C606750804        mov byte [0x875],0x4
00005487  881EAA06          mov [0x6aa],bl
0000548B  E8C801            call word 0x5656
0000548E  3C26              cmp al,0x26
00005490  749A              jz 0x542c
00005492  4E                dec si
00005493  E8F700            call word 0x558d
00005496  9C                pushfw
00005497  E81B01            call word 0x55b5
0000549A  A17408            mov ax,[0x874]
0000549D  80FC04            cmp ah,0x4
000054A0  770B              ja 0x54ad
000054A2  3AC4              cmp al,ah
000054A4  761F              jna 0x54c5
000054A6  C606750808        mov byte [0x875],0x8
000054AB  33FF              xor di,di
000054AD  9D                popfw
000054AE  51                push cx
000054AF  8BCB              mov cx,bx
000054B1  8BDD              mov bx,bp
000054B3  B800C0            mov ax,0xc000
000054B6  7502              jnz 0x54ba
000054B8  B080              mov al,0x80
000054BA  56                push si
000054BB  E8CAF7            call word 0x4c88
000054BE  5E                pop si
000054BF  59                pop cx
000054C0  EB0E              jmp short 0x54d0
000054C2  E909F4            jmp word 0x48ce
000054C5  9D                popfw
000054C6  B800A0            mov ax,0xa000
000054C9  7502              jnz 0x54cd
000054CB  B080              mov al,0x80
000054CD  E894DF            call word 0x3464
000054D0  E88301            call word 0x5656
000054D3  3C25              cmp al,0x25
000054D5  742C              jz 0x5503
000054D7  3C23              cmp al,0x23
000054D9  7428              jz 0x5503
000054DB  3C21              cmp al,0x21
000054DD  7424              jz 0x5503
000054DF  3C44              cmp al,0x44
000054E1  7407              jz 0x54ea
000054E3  3C45              cmp al,0x45
000054E5  7403              jz 0x54ea
000054E7  4E                dec si
000054E8  EB19              jmp short 0x5503
000054EA  E8A000            call word 0x558d
000054ED  9C                pushfw
000054EE  33DB              xor bx,bx
000054F0  C606AA0601        mov byte [0x6aa],0x1
000054F5  891EA806          mov [0x6a8],bx
000054F9  E8A200            call word 0x559e
000054FC  9D                popfw
000054FD  7502              jnz 0x5501
000054FF  F7DB              neg bx
00005501  03CB              add cx,bx
00005503  E368              jcxz 0x556d
00005505  83F926            cmp cx,byte +0x26
00005508  7FB8              jg 0x54c2
0000550A  83F9C9            cmp cx,byte -0x37
0000550D  7C6F              jl 0x557e
0000550F  56                push si
00005510  8BF9              mov di,cx
00005512  0BFF              or di,di
00005514  7902              jns 0x5518
00005516  F7DF              neg di
00005518  83FF26            cmp di,byte +0x26
0000551B  7E05              jng 0x5522
0000551D  802EB50080        sub byte [0xb5],0x80
00005522  D1E7              shl di,1
00005524  D1E7              shl di,1
00005526  D1E7              shl di,1
00005528  803E750808        cmp byte [0x875],0x8
0000552D  742A              jz 0x5559
0000552F  81C7CE03          add di,0x3ce
00005533  BEB200            mov si,0xb2
00005536  817DFE0080        cmp word [di-0x2],0x8000
0000553B  720E              jc 0x554b
0000553D  83EE04            sub si,byte +0x4
00005540  87F7              xchg si,di
00005542  A5                movsw
00005543  A5                movsw
00005544  8BF7              mov si,di
00005546  BFAE00            mov di,0xae
00005549  FF05              inc word [di]
0000554B  0BC9              or cx,cx
0000554D  7905              jns 0x5554
0000554F  E803E0            call word 0x3555
00005552  EB18              jmp short 0x556c
00005554  E87EDF            call word 0x34d5
00005557  EB13              jmp short 0x556c
00005559  81C7CA03          add di,0x3ca
0000555D  BEAE00            mov si,0xae
00005560  0BC9              or cx,cx
00005562  7905              jns 0x5569
00005564  E80BF8            call word 0x4d72
00005567  EB03              jmp short 0x556c
00005569  E8B8F7            call word 0x4d24
0000556C  5E                pop si
0000556D  A17408            mov ax,[0x874]
00005570  3AC4              cmp al,ah
00005572  7426              jz 0x559a
00005574  3C02              cmp al,0x2
00005576  740F              jz 0x5587
00005578  9AAB2F4702        call word 0x247:0x2fab
0000557D  C3                ret
0000557E  33C0              xor ax,ax
00005580  A3B200            mov [0xb2],ax
00005583  A2B500            mov [0xb5],al
00005586  C3                ret
00005587  9A20304702        call word 0x247:0x3020
0000558C  C3                ret
0000558D  E8C600            call word 0x5656
00005590  3C2D              cmp al,0x2d
00005592  7406              jz 0x559a
00005594  3C2B              cmp al,0x2b
00005596  7501              jnz 0x5599
00005598  46                inc si
00005599  4E                dec si
0000559A  C3                ret
0000559B  BBFF7F            mov bx,0x7fff
0000559E  E88900            call word 0x562a
000055A1  81FBCC0C          cmp bx,0xccc
000055A5  77F4              ja 0x559b
000055A7  D1E3              shl bx,1
000055A9  03C3              add ax,bx
000055AB  D1E3              shl bx,1
000055AD  D1E3              shl bx,1
000055AF  03D8              add bx,ax
000055B1  78E8              js 0x559b
000055B3  EBE9              jmp short 0x559e
000055B5  33C9              xor cx,cx
000055B7  E87000            call word 0x562a
000055BA  D1E2              shl dx,1
000055BC  D1D3              rcl bx,1
000055BE  03C2              add ax,dx
000055C0  8BFB              mov di,bx
000055C2  83D700            adc di,byte +0x0
000055C5  D1E2              shl dx,1
000055C7  D1D3              rcl bx,1
000055C9  D1E2              shl dx,1
000055CB  D1D3              rcl bx,1
000055CD  03D0              add dx,ax
000055CF  13DF              adc bx,di
000055D1  0AFF              or bh,bh
000055D3  74E2              jz 0x55b7
000055D5  C606750808        mov byte [0x875],0x8
000055DA  33FF              xor di,di
000055DC  E84B00            call word 0x562a
000055DF  50                push ax
000055E0  57                push di
000055E1  55                push bp
000055E2  53                push bx
000055E3  52                push dx
000055E4  D1E2              shl dx,1
000055E6  D1D3              rcl bx,1
000055E8  D1D5              rcl bp,1
000055EA  D1D7              rcl di,1
000055EC  D1E2              shl dx,1
000055EE  D1D3              rcl bx,1
000055F0  D1D5              rcl bp,1
000055F2  D1D7              rcl di,1
000055F4  58                pop ax
000055F5  03D0              add dx,ax
000055F7  58                pop ax
000055F8  13D8              adc bx,ax
000055FA  58                pop ax
000055FB  13E8              adc bp,ax
000055FD  58                pop ax
000055FE  13F8              adc di,ax
00005600  D1E2              shl dx,1
00005602  D1D3              rcl bx,1
00005604  D1D5              rcl bp,1
00005606  D1D7              rcl di,1
00005608  58                pop ax
00005609  03D0              add dx,ax
0000560B  83D300            adc bx,byte +0x0
0000560E  83D500            adc bp,byte +0x0
00005611  83D700            adc di,byte +0x0
00005614  81FF9919          cmp di,0x1999
00005618  72C2              jc 0x55dc
0000561A  FF06A806          inc word [0x6a8]
0000561E  E80900            call word 0x562a
00005621  0AC0              or al,al
00005623  7403              jz 0x5628
00005625  80CA01            or dl,0x1
00005628  EBF4              jmp short 0x561e
0000562A  E82900            call word 0x5656
0000562D  2C30              sub al,0x30
0000562F  720A              jc 0x563b
00005631  3C09              cmp al,0x9
00005633  7706              ja 0x563b
00005635  98                cbw
00005636  030EA806          add cx,[0x6a8]
0000563A  C3                ret
0000563B  3CFE              cmp al,0xfe
0000563D  7512              jnz 0x5651
0000563F  803EAA0600        cmp byte [0x6aa],0x0
00005644  750B              jnz 0x5651
00005646  C606AA0601        mov byte [0x6aa],0x1
0000564B  FF0EA806          dec word [0x6a8]
0000564F  EBD9              jmp short 0x562a
00005651  4E                dec si
00005652  83C402            add sp,byte +0x2
00005655  C3                ret
00005656  AC                lodsb
00005657  3C20              cmp al,0x20
00005659  74FB              jz 0x5656
0000565B  3C09              cmp al,0x9
0000565D  74F7              jz 0x5656
0000565F  3C0A              cmp al,0xa
00005661  74F3              jz 0x5656
00005663  3C61              cmp al,0x61
00005665  7206              jc 0x566d
00005667  3C7A              cmp al,0x7a
00005669  7702              ja 0x566d
0000566B  245F              and al,0x5f
0000566D  C3                ret
0000566E  BEAE00            mov si,0xae
00005671  EB06              jmp short 0x5679
00005673  E821EC            call word 0x4297
00005676  BFAE00            mov di,0xae
00005679  E83BEC            call word 0x42b7
0000567C  B90400            mov cx,0x4
0000567F  83C606            add si,byte +0x6
00005682  83C706            add di,byte +0x6
00005685  EB15              jmp short 0x569c
00005687  BEB200            mov si,0xb2
0000568A  EB06              jmp short 0x5692
0000568C  E808EC            call word 0x4297
0000568F  BFB200            mov di,0xb2
00005692  E822EC            call word 0x42b7
00005695  B90200            mov cx,0x2
00005698  03F1              add si,cx
0000569A  03F9              add di,cx
0000569C  8B04              mov ax,[si]
0000569E  8B1D              mov bx,[di]
000056A0  0AFF              or bh,bh
000056A2  7419              jz 0x56bd
000056A4  0AE4              or ah,ah
000056A6  740F              jz 0x56b7
000056A8  32D8              xor bl,al
000056AA  D0D0              rcl al,1
000056AC  7815              js 0x56c3
000056AE  7302              jnc 0x56b2
000056B0  87F7              xchg si,di
000056B2  FD                std
000056B3  F3A7              repe cmpsw
000056B5  FC                cld
000056B6  C3                ret
000056B7  0AFF              or bh,bh
000056B9  D0D3              rcl bl,1
000056BB  F5                cmc
000056BC  C3                ret
000056BD  0AE4              or ah,ah
000056BF  7402              jz 0x56c3
000056C1  D0D0              rcl al,1
000056C3  C3                ret
000056C4  3B262206          cmp sp,[0x622]
000056C8  7244              jc 0x570e
000056CA  5E                pop si
000056CB  8926B600          mov [0xb6],sp
000056CF  1F                pop ds
000056D0  AD                lodsw
000056D1  56                push si
000056D2  1E                push ds
000056D3  50                push ax
000056D4  06                push es
000056D5  1F                pop ds
000056D6  FF064C06          inc word [0x64c]
000056DA  CB                retf
000056DB  FF0E4C06          dec word [0x64c]
000056DF  7830              js 0x5711
000056E1  5F                pop di
000056E2  5E                pop si
000056E3  58                pop ax
000056E4  0BC0              or ax,ax
000056E6  7512              jnz 0x56fa
000056E8  5B                pop bx
000056E9  58                pop ax
000056EA  58                pop ax
000056EB  EB17              jmp short 0x5704
000056ED  FF0E4C06          dec word [0x64c]
000056F1  781E              js 0x5711
000056F3  58                pop ax
000056F4  5E                pop si
000056F5  5F                pop di
000056F6  0BFF              or di,di
000056F8  7407              jz 0x5701
000056FA  8926B600          mov [0xb6],sp
000056FE  56                push si
000056FF  57                push di
00005700  CB                retf
00005701  5B                pop bx
00005702  5F                pop di
00005703  5E                pop si
00005704  8926B600          mov [0xb6],sp
00005708  56                push si
00005709  57                push di
0000570A  FF263C06          jmp word [0x63c]
0000570E  E927F2            jmp word 0x4938
00005711  E918F2            jmp word 0x492c
00005714  3B262206          cmp sp,[0x622]
00005718  72F4              jc 0x570e
0000571A  B832E4            mov ax,0xe432
0000571D  0AFF              or bh,bh
0000571F  7528              jnz 0x5749
00005721  5E                pop si
00005722  1F                pop ds
00005723  AC                lodsb
00005724  8AD0              mov dl,al
00005726  B600              mov dh,0x0
00005728  D1E2              shl dx,1
0000572A  03D6              add dx,si
0000572C  4B                dec bx
0000572D  3AC3              cmp al,bl
0000572F  7613              jna 0x5744
00005731  0AE4              or ah,ah
00005733  740B              jz 0x5740
00005735  52                push dx
00005736  268926B600        mov [es:0xb6],sp
0000573B  26FF064C06        inc word [es:0x64c]
00005740  D1E3              shl bx,1
00005742  8B10              mov dx,[bx+si]
00005744  1E                push ds
00005745  52                push dx
00005746  06                push es
00005747  1F                pop ds
00005748  CB                retf
00005749  E9E6F1            jmp word 0x4932
0000574C  FF37              push word [bx]
0000574E  E8981D            call word 0x74e9
00005751  5B                pop bx
00005752  CB                retf
00005753  833F00            cmp word [bx],byte +0x0
00005756  746F              jz 0x57c7
00005758  56                push si
00005759  8B7702            mov si,[bx+0x2]
0000575C  8B34              mov si,[si]
0000575E  E8881D            call word 0x74e9
00005761  8BDE              mov bx,si
00005763  B700              mov bh,0x0
00005765  5E                pop si
00005766  CB                retf
00005767  50                push ax
00005768  E82CE3            call word 0x3a97
0000576B  742F              jz 0x579c
0000576D  E840E3            call word 0x3ab0
00005770  750D              jnz 0x577f
00005772  93                xchg ax,bx
00005773  58                pop ax
00005774  89263606          mov [0x636],sp
00005778  52                push dx
00005779  53                push bx
0000577A  BB0200            mov bx,0x2
0000577D  EB12              jmp short 0x5791
0000577F  8AD8              mov bl,al
00005781  B700              mov bh,0x0
00005783  58                pop ax
00005784  89263606          mov [0x636],sp
00005788  0AFF              or bh,bh
0000578A  753B              jnz 0x57c7
0000578C  52                push dx
0000578D  53                push bx
0000578E  BB0100            mov bx,0x1
00005791  E8D51C            call word 0x7469
00005794  87DA              xchg bx,dx
00005796  8F07              pop word [bx]
00005798  8BDA              mov bx,dx
0000579A  5A                pop dx
0000579B  CB                retf
0000579C  58                pop ax
0000579D  BB2401            mov bx,0x124
000057A0  CB                retf
000057A1  E8351C            call word 0x73d9
000057A4  53                push bx
000057A5  52                push dx
000057A6  50                push ax
000057A7  8B1EFA07          mov bx,[0x7fa]
000057AB  8B17              mov dx,[bx]
000057AD  83FAFF            cmp dx,byte -0x1
000057B0  7405              jz 0x57b7
000057B2  F6C201            test dl,0x1
000057B5  7503              jnz 0x57ba
000057B7  BA0100            mov dx,0x1
000057BA  4A                dec dx
000057BB  33DB              xor bx,bx
000057BD  B800A0            mov ax,0xa000
000057C0  E8A1DC            call word 0x3464
000057C3  58                pop ax
000057C4  5A                pop dx
000057C5  5B                pop bx
000057C6  CB                retf
000057C7  E968F1            jmp word 0x4932
000057CA  0BDB              or bx,bx
000057CC  7EF9              jng 0x57c7
000057CE  50                push ax
000057CF  51                push cx
000057D0  52                push dx
000057D1  56                push si
000057D2  57                push di
000057D3  8BFA              mov di,dx
000057D5  8BF1              mov si,cx
000057D7  AD                lodsw
000057D8  92                xchg ax,dx
000057D9  8B34              mov si,[si]
000057DB  8B0D              mov cx,[di]
000057DD  0BC9              or cx,cx
000057DF  743F              jz 0x5820
000057E1  4A                dec dx
000057E2  7906              jns 0x57ea
000057E4  3BD9              cmp bx,cx
000057E6  7F38              jg 0x5820
000057E8  EB24              jmp short 0x580e
000057EA  8B7D02            mov di,[di+0x2]
000057ED  4B                dec bx
000057EE  03FB              add di,bx
000057F0  2BCA              sub cx,dx
000057F2  93                xchg ax,bx
000057F3  8BD9              mov bx,cx
000057F5  2BC8              sub cx,ax
000057F7  7E27              jng 0x5820
000057F9  AC                lodsb
000057FA  E324              jcxz 0x5820
000057FC  F2AE              repne scasb
000057FE  7520              jnz 0x5820
00005800  51                push cx
00005801  56                push si
00005802  57                push di
00005803  8BCA              mov cx,dx
00005805  F3A6              repe cmpsb
00005807  5F                pop di
00005808  5E                pop si
00005809  59                pop cx
0000580A  75EE              jnz 0x57fa
0000580C  2BD9              sub bx,cx
0000580E  5F                pop di
0000580F  5E                pop si
00005810  59                pop cx
00005811  5A                pop dx
00005812  58                pop ax
00005813  87DA              xchg bx,dx
00005815  E8D11C            call word 0x74e9
00005818  87D9              xchg bx,cx
0000581A  E8CC1C            call word 0x74e9
0000581D  87DA              xchg bx,dx
0000581F  CB                retf
00005820  33DB              xor bx,bx
00005822  EBEA              jmp short 0x580e
00005824  51                push cx
00005825  8BCA              mov cx,dx
00005827  8BD3              mov dx,bx
00005829  BB0100            mov bx,0x1
0000582C  9A5A244702        call word 0x247:0x245a
00005831  8BD1              mov dx,cx
00005833  59                pop cx
00005834  CB                retf
00005835  89263606          mov [0x636],sp
00005839  51                push cx
0000583A  33C9              xor cx,cx
0000583C  EB09              jmp short 0x5847
0000583E  89263606          mov [0x636],sp
00005842  51                push cx
00005843  8B0F              mov cx,[bx]
00005845  2BCA              sub cx,dx
00005847  E8A600            call word 0x58f0
0000584A  59                pop cx
0000584B  CB                retf
0000584C  89263606          mov [0x636],sp
00005850  4A                dec dx
00005851  87D1              xchg dx,cx
00005853  7C74              jl 0x58c9
00005855  7417              jz 0x586e
00005857  52                push dx
00005858  50                push ax
00005859  8B07              mov ax,[bx]
0000585B  2BC1              sub ax,cx
0000585D  7E14              jng 0x5873
0000585F  3BC2              cmp ax,dx
00005861  7D02              jnl 0x5865
00005863  8BD0              mov dx,ax
00005865  E8C11C            call word 0x7529
00005868  58                pop ax
00005869  5A                pop dx
0000586A  87CA              xchg cx,dx
0000586C  42                inc dx
0000586D  CB                retf
0000586E  E87F00            call word 0x58f0
00005871  EBF7              jmp short 0x586a
00005873  E8731C            call word 0x74e9
00005876  BB2401            mov bx,0x124
00005879  EBED              jmp short 0x5868
0000587B  89263606          mov [0x636],sp
0000587F  52                push dx
00005880  B220              mov dl,0x20
00005882  0BDB              or bx,bx
00005884  743E              jz 0x58c4
00005886  7C41              jl 0x58c9
00005888  51                push cx
00005889  50                push ax
0000588A  8BCB              mov cx,bx
0000588C  8AC2              mov al,dl
0000588E  8AE2              mov ah,dl
00005890  E8D61B            call word 0x7469
00005893  87FA              xchg di,dx
00005895  41                inc cx
00005896  D1E9              shr cx,1
00005898  F3AB              rep stosw
0000589A  8BFA              mov di,dx
0000589C  58                pop ax
0000589D  59                pop cx
0000589E  5A                pop dx
0000589F  CB                retf
000058A0  89263606          mov [0x636],sp
000058A4  52                push dx
000058A5  EBDB              jmp short 0x5882
000058A7  89263606          mov [0x636],sp
000058AB  87DA              xchg bx,dx
000058AD  833F00            cmp word [bx],byte +0x0
000058B0  7417              jz 0x58c9
000058B2  53                push bx
000058B3  50                push ax
000058B4  53                push bx
000058B5  8B5F02            mov bx,[bx+0x2]
000058B8  8A07              mov al,[bx]
000058BA  5B                pop bx
000058BB  E82B1C            call word 0x74e9
000058BE  93                xchg ax,bx
000058BF  58                pop ax
000058C0  87DA              xchg bx,dx
000058C2  EBBE              jmp short 0x5882
000058C4  5A                pop dx
000058C5  BB2401            mov bx,0x124
000058C8  CB                retf
000058C9  E9FFEF            jmp word 0x48cb
000058CC  B204              mov dl,0x4
000058CE  EB0A              jmp short 0x58da
000058D0  B208              mov dl,0x8
000058D2  EB06              jmp short 0x58da
000058D4  B202              mov dl,0x2
000058D6  EB02              jmp short 0x58da
000058D8  B203              mov dl,0x3
000058DA  89263606          mov [0x636],sp
000058DE  53                push bx
000058DF  52                push dx
000058E0  BB0300            mov bx,0x3
000058E3  E8831B            call word 0x7469
000058E6  87DA              xchg bx,dx
000058E8  8F07              pop word [bx]
000058EA  43                inc bx
000058EB  8F07              pop word [bx]
000058ED  8BDA              mov bx,dx
000058EF  CB                retf
000058F0  0BD2              or dx,dx
000058F2  7CD5              jl 0x58c9
000058F4  7412              jz 0x5908
000058F6  52                push dx
000058F7  3B17              cmp dx,[bx]
000058F9  7E08              jng 0x5903
000058FB  8B17              mov dx,[bx]
000058FD  0BC9              or cx,cx
000058FF  7D02              jnl 0x5903
00005901  33C9              xor cx,cx
00005903  E8231C            call word 0x7529
00005906  5A                pop dx
00005907  C3                ret
00005908  BB2401            mov bx,0x124
0000590B  C3                ret
0000590C  89263606          mov [0x636],sp
00005910  50                push ax
00005911  51                push cx
00005912  52                push dx
00005913  56                push si
00005914  53                push bx
00005915  8B7702            mov si,[bx+0x2]
00005918  8B1F              mov bx,[bx]
0000591A  0BDB              or bx,bx
0000591C  743C              jz 0x595a
0000591E  E81F01            call word 0x5a40
00005921  8AF4              mov dh,ah
00005923  E8FA00            call word 0x5a20
00005926  E81701            call word 0x5a40
00005929  8AD4              mov dl,ah
0000592B  E8F200            call word 0x5a20
0000592E  E80F01            call word 0x5a40
00005931  B96C07            mov cx,0x76c
00005934  0BDB              or bx,bx
00005936  7409              jz 0x5941
00005938  B064              mov al,0x64
0000593A  F6E4              mul ah
0000593C  8BC8              mov cx,ax
0000593E  E8FF00            call word 0x5a40
00005941  8AC4              mov al,ah
00005943  B400              mov ah,0x0
00005945  03C8              add cx,ax
00005947  B42B              mov ah,0x2b
00005949  CD21              int 0x21
0000594B  0AC0              or al,al
0000594D  750B              jnz 0x595a
0000594F  5B                pop bx
00005950  E8961B            call word 0x74e9
00005953  53                push bx
00005954  5B                pop bx
00005955  5E                pop si
00005956  5A                pop dx
00005957  59                pop cx
00005958  58                pop ax
00005959  CB                retf
0000595A  EB45              jmp short 0x59a1
0000595C  89263606          mov [0x636],sp
00005960  50                push ax
00005961  51                push cx
00005962  52                push dx
00005963  56                push si
00005964  BB0A00            mov bx,0xa
00005967  E8FF1A            call word 0x7469
0000596A  53                push bx
0000596B  52                push dx
0000596C  B42A              mov ah,0x2a
0000596E  CD21              int 0x21
00005970  5B                pop bx
00005971  8AC6              mov al,dh
00005973  E8EF00            call word 0x5a65
00005976  B02D              mov al,0x2d
00005978  E8F600            call word 0x5a71
0000597B  8AC2              mov al,dl
0000597D  E8E500            call word 0x5a65
00005980  B02D              mov al,0x2d
00005982  E8EC00            call word 0x5a71
00005985  81E96C07          sub cx,0x76c
00005989  80F964            cmp cl,0x64
0000598C  B513              mov ch,0x13
0000598E  7205              jc 0x5995
00005990  80D964            sbb cl,0x64
00005993  FEC5              inc ch
00005995  8AC5              mov al,ch
00005997  E8CB00            call word 0x5a65
0000599A  8AC1              mov al,cl
0000599C  E8C600            call word 0x5a65
0000599F  EBB3              jmp short 0x5954
000059A1  E927EF            jmp word 0x48cb
000059A4  89263606          mov [0x636],sp
000059A8  50                push ax
000059A9  51                push cx
000059AA  52                push dx
000059AB  56                push si
000059AC  53                push bx
000059AD  8B7702            mov si,[bx+0x2]
000059B0  8B1F              mov bx,[bx]
000059B2  0BDB              or bx,bx
000059B4  7468              jz 0x5a1e
000059B6  E88700            call word 0x5a40
000059B9  8AEC              mov ch,ah
000059BB  E87200            call word 0x5a30
000059BE  E87F00            call word 0x5a40
000059C1  8ACC              mov cl,ah
000059C3  E86A00            call word 0x5a30
000059C6  E87700            call word 0x5a40
000059C9  8AF4              mov dh,ah
000059CB  32D2              xor dl,dl
000059CD  B42D              mov ah,0x2d
000059CF  CD21              int 0x21
000059D1  E977FF            jmp word 0x594b
000059D4  89263606          mov [0x636],sp
000059D8  50                push ax
000059D9  51                push cx
000059DA  52                push dx
000059DB  56                push si
000059DC  BB0800            mov bx,0x8
000059DF  E8871A            call word 0x7469
000059E2  53                push bx
000059E3  52                push dx
000059E4  B42C              mov ah,0x2c
000059E6  CD21              int 0x21
000059E8  80FA32            cmp dl,0x32
000059EB  7214              jc 0x5a01
000059ED  FEC6              inc dh
000059EF  80FE3C            cmp dh,0x3c
000059F2  720D              jc 0x5a01
000059F4  B600              mov dh,0x0
000059F6  FEC1              inc cl
000059F8  80F93C            cmp cl,0x3c
000059FB  7204              jc 0x5a01
000059FD  B100              mov cl,0x0
000059FF  FEC5              inc ch
00005A01  5B                pop bx
00005A02  8AC5              mov al,ch
00005A04  E85E00            call word 0x5a65
00005A07  B03A              mov al,0x3a
00005A09  E86500            call word 0x5a71
00005A0C  8AC1              mov al,cl
00005A0E  E85400            call word 0x5a65
00005A11  B03A              mov al,0x3a
00005A13  E85B00            call word 0x5a71
00005A16  8AC6              mov al,dh
00005A18  E84A00            call word 0x5a65
00005A1B  E936FF            jmp word 0x5954
00005A1E  EB81              jmp short 0x59a1
00005A20  0BDB              or bx,bx
00005A22  74FA              jz 0x5a1e
00005A24  4B                dec bx
00005A25  AC                lodsb
00005A26  3C2F              cmp al,0x2f
00005A28  7426              jz 0x5a50
00005A2A  3C2D              cmp al,0x2d
00005A2C  7422              jz 0x5a50
00005A2E  EBEE              jmp short 0x5a1e
00005A30  0BDB              or bx,bx
00005A32  741C              jz 0x5a50
00005A34  4B                dec bx
00005A35  AC                lodsb
00005A36  3C3A              cmp al,0x3a
00005A38  7416              jz 0x5a50
00005A3A  3C2E              cmp al,0x2e
00005A3C  7412              jz 0x5a50
00005A3E  EBDE              jmp short 0x5a1e
00005A40  E80E00            call word 0x5a51
00005A43  72D9              jc 0x5a1e
00005A45  8AE0              mov ah,al
00005A47  E80700            call word 0x5a51
00005A4A  7204              jc 0x5a50
00005A4C  D50A              aad
00005A4E  8AE0              mov ah,al
00005A50  C3                ret
00005A51  8AC3              mov al,bl
00005A53  0BDB              or bx,bx
00005A55  74F9              jz 0x5a50
00005A57  8A04              mov al,[si]
00005A59  1C30              sbb al,0x30
00005A5B  72F3              jc 0x5a50
00005A5D  3C0A              cmp al,0xa
00005A5F  F5                cmc
00005A60  72EE              jc 0x5a50
00005A62  4B                dec bx
00005A63  46                inc si
00005A64  C3                ret
00005A65  D40A              aam
00005A67  86C4              xchg al,ah
00005A69  0D3030            or ax,0x3030
00005A6C  E80200            call word 0x5a71
00005A6F  8AC4              mov al,ah
00005A71  8807              mov [bx],al
00005A73  43                inc bx
00005A74  C3                ret
00005A75  C6060A00FF        mov byte [0xa],0xff
00005A7A  C70602003A28      mov word [0x2],0x283a
00005A80  FF26EE00          jmp word [0xee]
00005A84  C6060A0000        mov byte [0xa],0x0
00005A89  FF26F000          jmp word [0xf0]
00005A8D  4B                dec bx
00005A8E  27                daa
00005A8F  56                push si
00005A90  27                daa
00005A91  5B                pop bx
00005A92  27                daa
00005A93  61                popaw
00005A94  27                daa
00005A95  7C27              jl 0x5abe
00005A97  81278727          and word [bx],0x2787
00005A9B  8F                db 0x8f
00005A9C  27                daa
00005A9D  95                xchg ax,bp
00005A9E  27                daa
00005A9F  9B27              wait daa
00005AA1  803E0A0000        cmp byte [0xa],0x0
00005AA6  7469              jz 0x5b11
00005AA8  83FB0A            cmp bx,byte +0xa
00005AAB  7364              jnc 0x5b11
00005AAD  50                push ax
00005AAE  51                push cx
00005AAF  52                push dx
00005AB0  D1E3              shl bx,1
00005AB2  2EFF971D27        call word [cs:bx+0x271d]
00005AB7  5A                pop dx
00005AB8  59                pop cx
00005AB9  58                pop ax
00005ABA  CB                retf
00005ABB  A0F600            mov al,[0xf6]
00005ABE  C606F60000        mov byte [0xf6],0x0
00005AC3  98                cbw
00005AC4  93                xchg ax,bx
00005AC5  C3                ret
00005AC6  8B1EF800          mov bx,[0xf8]
00005ACA  C3                ret
00005ACB  8A1EFA00          mov bl,[0xfa]
00005ACF  EB2B              jmp short 0x5afc
00005AD1  B404              mov ah,0x4
00005AD3  E827DB            call word 0x35fd
00005AD6  0AE4              or ah,ah
00005AD8  740C              jz 0x5ae6
00005ADA  891EFB00          mov [0xfb],bx
00005ADE  882EFD00          mov [0xfd],ch
00005AE2  89160001          mov [0x100],dx
00005AE6  8AC4              mov al,ah
00005AE8  F6D8              neg al
00005AEA  EBD7              jmp short 0x5ac3
00005AEC  8B1EFB00          mov bx,[0xfb]
00005AF0  C3                ret
00005AF1  8A1EFD00          mov bl,[0xfd]
00005AF5  EB05              jmp short 0x5afc
00005AF7  8A1EFF00          mov bl,[0xff]
00005AFB  43                inc bx
00005AFC  32FF              xor bh,bh
00005AFE  C3                ret
00005AFF  8A1EFE00          mov bl,[0xfe]
00005B03  EBF6              jmp short 0x5afb
00005B05  8A1E0101          mov bl,[0x101]
00005B09  EBF0              jmp short 0x5afb
00005B0B  8A1E0001          mov bl,[0x100]
00005B0F  EBEA              jmp short 0x5afb
00005B11  E91EEE            jmp word 0x4932
00005B14  0BDB              or bx,bx
00005B16  740A              jz 0x5b22
00005B18  83FB04            cmp bx,byte +0x4
00005B1B  73F4              jnc 0x5b11
00005B1D  8A9F0201          mov bl,[bx+0x102]
00005B21  CB                retf
00005B22  50                push ax
00005B23  52                push dx
00005B24  BA0102            mov dx,0x201
00005B27  B90101            mov cx,0x101
00005B2A  BB0F00            mov bx,0xf
00005B2D  FA                cli
00005B2E  EE                out dx,al
00005B2F  EC                in al,dx
00005B30  240F              and al,0xf
00005B32  3AC3              cmp al,bl
00005B34  E1F9              loope 0x5b2f
00005B36  E30B              jcxz 0x5b43
00005B38  32C3              xor al,bl
00005B3A  8AE1              mov ah,cl
00005B3C  50                push ax
00005B3D  FEC7              inc bh
00005B3F  32D8              xor bl,al
00005B41  EBEC              jmp short 0x5b2f
00005B43  FB                sti
00005B44  0AFF              or bh,bh
00005B46  741A              jz 0x5b62
00005B48  8AD7              mov dl,bh
00005B4A  BB0201            mov bx,0x102
00005B4D  B90400            mov cx,0x4
00005B50  58                pop ax
00005B51  F6D4              not ah
00005B53  02E2              add ah,dl
00005B55  D0E8              shr al,1
00005B57  7302              jnc 0x5b5b
00005B59  8827              mov [bx],ah
00005B5B  43                inc bx
00005B5C  E2F7              loop 0x5b55
00005B5E  FECA              dec dl
00005B60  75E8              jnz 0x5b4a
00005B62  32FF              xor bh,bh
00005B64  8A1E0201          mov bl,[0x102]
00005B68  5A                pop dx
00005B69  58                pop ax
00005B6A  CB                retf
00005B6B  C70604007728      mov word [0x4],0x2877
00005B71  C6060B00FF        mov byte [0xb],0xff
00005B76  CB                retf
00005B77  C6060B0000        mov byte [0xb],0x0
00005B7C  CB                retf
00005B7D  803E0B0000        cmp byte [0xb],0x0
00005B82  748D              jz 0x5b11
00005B84  83FB08            cmp bx,byte +0x8
00005B87  7388              jnc 0x5b11
00005B89  50                push ax
00005B8A  51                push cx
00005B8B  F6C301            test bl,0x1
00005B8E  740C              jz 0x5b9c
00005B90  8AAF0601          mov ch,[bx+0x106]
00005B94  E87800            call word 0x5c0f
00005B97  8AC1              mov al,cl
00005B99  EB0A              jmp short 0x5ba5
00005B9B  90                nop
00005B9C  8A870601          mov al,[bx+0x106]
00005BA0  C687060100        mov byte [bx+0x106],0x0
00005BA5  98                cbw
00005BA6  93                xchg ax,bx
00005BA7  59                pop cx
00005BA8  58                pop ax
00005BA9  CB                retf
00005BAA  53                push bx
00005BAB  51                push cx
00005BAC  B404              mov ah,0x4
00005BAE  E84CDA            call word 0x35fd
00005BB1  0AE4              or ah,ah
00005BB3  740C              jz 0x5bc1
00005BB5  891EFB00          mov [0xfb],bx
00005BB9  882EFD00          mov [0xfd],ch
00005BBD  89160001          mov [0x100],dx
00005BC1  3A26F700          cmp ah,[0xf7]
00005BC5  741D              jz 0x5be4
00005BC7  0AE4              or ah,ah
00005BC9  8826F700          mov [0xf7],ah
00005BCD  7415              jz 0x5be4
00005BCF  891EF800          mov [0xf8],bx
00005BD3  882EFA00          mov [0xfa],ch
00005BD7  8916FE00          mov [0xfe],dx
00005BDB  FF16F200          call word [0xf2]
00005BDF  C606F600FF        mov byte [0xf6],0xff
00005BE4  59                pop cx
00005BE5  5B                pop bx
00005BE6  C3                ret
00005BE7  53                push bx
00005BE8  51                push cx
00005BE9  BB0601            mov bx,0x106
00005BEC  B90400            mov cx,0x4
00005BEF  803F00            cmp byte [bx],0x0
00005BF2  7508              jnz 0x5bfc
00005BF4  51                push cx
00005BF5  8A6F01            mov ch,[bx+0x1]
00005BF8  E80800            call word 0x5c03
00005BFB  59                pop cx
00005BFC  43                inc bx
00005BFD  43                inc bx
00005BFE  E2EF              loop 0x5bef
00005C00  59                pop cx
00005C01  5B                pop bx
00005C02  C3                ret
00005C03  53                push bx
00005C04  E80800            call word 0x5c0f
00005C07  FF16F400          call word [0xf4]
00005C0B  5B                pop bx
00005C0C  880F              mov [bx],cl
00005C0E  C3                ret
00005C0F  52                push dx
00005C10  BA0102            mov dx,0x201
00005C13  EC                in al,dx
00005C14  22C5              and al,ch
00005C16  FEC8              dec al
00005C18  98                cbw
00005C19  8ACC              mov cl,ah
00005C1B  5A                pop dx
00005C1C  C3                ret
00005C1D  F3A5              rep movsw
00005C1F  8EDA              mov ds,dx
00005C21  8BC5              mov ax,bp
00005C23  2BC2              sub ax,dx
00005C25  3D0010            cmp ax,0x1000
00005C28  7203              jc 0x5c2d
00005C2A  B80010            mov ax,0x1000
00005C2D  5E                pop si
00005C2E  5F                pop di
00005C2F  8BD5              mov dx,bp
00005C31  2BD0              sub dx,ax
00005C33  B104              mov cl,0x4
00005C35  D3E0              shl ax,cl
00005C37  8ED2              mov ss,dx
00005C39  8BE0              mov sp,ax
00005C3B  57                push di
00005C3C  56                push si
00005C3D  2D0102            sub ax,0x201
00005C40  50                push ax
00005C41  16                push ss
00005C42  07                pop es
00005C43  8BF0              mov si,ax
00005C45  8BF8              mov di,ax
00005C47  40                inc ax
00005C48  91                xchg ax,cx
00005C49  FD                std
00005C4A  F3A4              rep movsb
00005C4C  FC                cld
00005C4D  16                push ss
00005C4E  1F                pop ds
00005C4F  58                pop ax
00005C50  B9D012            mov cx,0x12d0
00005C53  E9B2D9            jmp word 0x3608
00005C56  B004              mov al,0x4
00005C58  BFB005            mov di,0x5b0
00005C5B  A2B800            mov [0xb8],al
00005C5E  5F                pop di
00005C5F  5E                pop si
00005C60  8926B600          mov [0xb6],sp
00005C64  56                push si
00005C65  57                push di
00005C66  CB                retf
00005C67  5F                pop di
00005C68  5E                pop si
00005C69  5B                pop bx
00005C6A  56                push si
00005C6B  57                push di
00005C6C  FF369800          push word [0x98]
00005C70  FF37              push word [bx]
00005C72  CB                retf
00005C73  E841E6            call word 0x42b7
00005C76  C70634062816      mov word [0x634],0x1628
00005C7C  53                push bx
00005C7D  33D2              xor dx,dx
00005C7F  FF16B406          call word [0x6b4]
00005C83  BBC206            mov bx,0x6c2
00005C86  E81E18            call word 0x74a7
00005C89  8BD3              mov dx,bx
00005C8B  93                xchg ax,bx
00005C8C  E82B18            call word 0x74ba
00005C8F  5A                pop dx
00005C90  9A2E0E4702        call word 0x247:0xe2e
00005C95  C3                ret
00005C96  56                push si
00005C97  50                push ax
00005C98  E808EC            call word 0x48a3
00005C9B  18A3AC06          sbb [bp+di+0x6ac],ah
00005C9F  C6064E0601        mov byte [0x64e],0x1
00005CA4  58                pop ax
00005CA5  5E                pop si
00005CA6  CB                retf
00005CA7  9A26294702        call word 0x247:0x2926
00005CAC  50                push ax
00005CAD  51                push cx
00005CAE  53                push bx
00005CAF  2B1E3806          sub bx,[0x638]
00005CB3  57                push di
00005CB4  33C0              xor ax,ax
00005CB6  8B3EAC06          mov di,[0x6ac]
00005CBA  4F                dec di
00005CBB  4F                dec di
00005CBC  93                xchg ax,bx
00005CBD  AF                scasw
00005CBE  93                xchg ax,bx
00005CBF  7607              jna 0x5cc8
00005CC1  B9FFFF            mov cx,0xffff
00005CC4  F2AE              repne scasb
00005CC6  EBF4              jmp short 0x5cbc
00005CC8  893EAC06          mov [0x6ac],di
00005CCC  5F                pop di
00005CCD  5B                pop bx
00005CCE  59                pop cx
00005CCF  58                pop ax
00005CD0  CB                retf
00005CD1  C606740804        mov byte [0x874],0x4
00005CD6  EB13              jmp short 0x5ceb
00005CD8  C606740808        mov byte [0x874],0x8
00005CDD  EB0C              jmp short 0x5ceb
00005CDF  C606740802        mov byte [0x874],0x2
00005CE4  EB05              jmp short 0x5ceb
00005CE6  C606740803        mov byte [0x874],0x3
00005CEB  E8C9E5            call word 0x42b7
00005CEE  53                push bx
00005CEF  803E4E0600        cmp byte [0x64e],0x0
00005CF4  7505              jnz 0x5cfb
00005CF6  9A26294702        call word 0x247:0x2926
00005CFB  8B36AC06          mov si,[0x6ac]
00005CFF  E854F9            call word 0x5656
00005D02  3C01              cmp al,0x1
00005D04  743B              jz 0x5d41
00005D06  4E                dec si
00005D07  E867F7            call word 0x5471
00005D0A  E849F9            call word 0x5656
00005D0D  3C2C              cmp al,0x2c
00005D0F  7406              jz 0x5d17
00005D11  0AC0              or al,al
00005D13  752F              jnz 0x5d44
00005D15  46                inc si
00005D16  46                inc si
00005D17  8936AC06          mov [0x6ac],si
00005D1B  5F                pop di
00005D1C  A07408            mov al,[0x874]
00005D1F  3C03              cmp al,0x3
00005D21  7412              jz 0x5d35
00005D23  BEB200            mov si,0xb2
00005D26  98                cbw
00005D27  91                xchg ax,cx
00005D28  D1E9              shr cx,1
00005D2A  80F904            cmp cl,0x4
00005D2D  7503              jnz 0x5d32
00005D2F  83EE04            sub si,byte +0x4
00005D32  F3A5              rep movsw
00005D34  C3                ret
00005D35  8BD7              mov dx,di
00005D37  8B1EB200          mov bx,[0xb2]
00005D3B  9A2E0E4702        call word 0x247:0xe2e
00005D40  C3                ret
00005D41  E984EB            jmp word 0x48c8
00005D44  E97BEB            jmp word 0x48c2
00005D47  50                push ax
00005D48  8BC3              mov ax,bx
00005D4A  E84100            call word 0x5d8e
00005D4D  50                push ax
00005D4E  B500              mov ch,0x0
00005D50  E307              jcxz 0x5d59
00005D52  B020              mov al,0x20
00005D54  E8BCF4            call word 0x5213
00005D57  E2F9              loop 0x5d52
00005D59  59                pop cx
00005D5A  58                pop ax
00005D5B  CB                retf
00005D5C  0AFF              or bh,bh
00005D5E  7506              jnz 0x5d66
00005D60  50                push ax
00005D61  51                push cx
00005D62  8BCB              mov cx,bx
00005D64  EBEA              jmp short 0x5d50
00005D66  E9C9EB            jmp word 0x4932
00005D69  50                push ax
00005D6A  8BC3              mov ax,bx
00005D6C  48                dec ax
00005D6D  E81E00            call word 0x5d8e
00005D70  3ACD              cmp cl,ch
00005D72  7305              jnc 0x5d79
00005D74  E8031C            call word 0x797a
00005D77  B500              mov ch,0x0
00005D79  2ACD              sub cl,ch
00005D7B  EBD0              jmp short 0x5d4d
00005D7D  0AFF              or bh,bh
00005D7F  75E5              jnz 0x5d66
00005D81  50                push ax
00005D82  51                push cx
00005D83  8BCB              mov cx,bx
00005D85  E89CF4            call word 0x5224
00005D88  2ACC              sub cl,ah
00005D8A  72CD              jc 0x5d59
00005D8C  EBC2              jmp short 0x5d50
00005D8E  0BC0              or ax,ax
00005D90  7902              jns 0x5d94
00005D92  33C0              xor ax,ax
00005D94  52                push dx
00005D95  53                push bx
00005D96  93                xchg ax,bx
00005D97  E89BF4            call word 0x5235
00005D9A  86C4              xchg al,ah
00005D9C  B400              mov ah,0x0
00005D9E  93                xchg ax,bx
00005D9F  33D2              xor dx,dx
00005DA1  F7F3              div bx
00005DA3  8AC2              mov al,dl
00005DA5  E87CF4            call word 0x5224
00005DA8  91                xchg ax,cx
00005DA9  5B                pop bx
00005DAA  5A                pop dx
00005DAB  C3                ret
00005DAC  50                push ax
00005DAD  A10E06            mov ax,[0x60e]
00005DB0  A37608            mov [0x876],ax
00005DB3  A11006            mov ax,[0x610]
00005DB6  A37808            mov [0x878],ax
00005DB9  58                pop ax
00005DBA  CB                retf
00005DBB  E8F9E4            call word 0x42b7
00005DBE  E95B1B            jmp word 0x791c
00005DC1  E8F3E4            call word 0x42b7
00005DC4  E8881B            call word 0x794f
00005DC7  E9D812            jmp word 0x70a2
00005DCA  E8EAE4            call word 0x42b7
00005DCD  E87F1B            call word 0x794f
00005DD0  FF361406          push word [0x614]
00005DD4  FF361206          push word [0x612]
00005DD8  51                push cx
00005DD9  52                push dx
00005DDA  8B161406          mov dx,[0x614]
00005DDE  E8C112            call word 0x70a2
00005DE1  5A                pop dx
00005DE2  59                pop cx
00005DE3  51                push cx
00005DE4  52                push dx
00005DE5  890E1206          mov [0x612],cx
00005DE9  E8B612            call word 0x70a2
00005DEC  5A                pop dx
00005DED  89161406          mov [0x614],dx
00005DF1  8F061206          pop word [0x612]
00005DF5  59                pop cx
00005DF6  51                push cx
00005DF7  E8A812            call word 0x70a2
00005DFA  59                pop cx
00005DFB  890E1206          mov [0x612],cx
00005DFF  5A                pop dx
00005E00  E99F12            jmp word 0x70a2
00005E03  E8B1E4            call word 0x42b7
00005E06  E8461B            call word 0x794f
00005E09  E82D1B            call word 0x7939
00005E0C  7204              jc 0x5e12
00005E0E  8B0E1206          mov cx,[0x612]
00005E12  40                inc ax
00005E13  A3AE06            mov [0x6ae],ax
00005E16  E82B1B            call word 0x7944
00005E19  7204              jc 0x5e1f
00005E1B  8B161406          mov dx,[0x614]
00005E1F  40                inc ax
00005E20  95                xchg ax,bp
00005E21  E8070F            call word 0x6d2b
00005E24  FF36ED07          push word [0x7ed]
00005E28  A0EB07            mov al,[0x7eb]
00005E2B  50                push ax
00005E2C  8B1EAE06          mov bx,[0x6ae]
00005E30  E8AC0F            call word 0x6ddf
00005E33  58                pop ax
00005E34  A2EB07            mov [0x7eb],al
00005E37  8F06ED07          pop word [0x7ed]
00005E3B  E8700E            call word 0x6cae
00005E3E  4D                dec bp
00005E3F  75E3              jnz 0x5e24
00005E41  C3                ret
00005E42  E872E4            call word 0x42b7
00005E45  33C0              xor ax,ax
00005E47  EB06              jmp short 0x5e4f
00005E49  E86BE4            call word 0x42b7
00005E4C  B80300            mov ax,0x3
00005E4F  83F9FF            cmp cx,byte -0x1
00005E52  7401              jz 0x5e55
00005E54  91                xchg ax,cx
00005E55  E8200F            call word 0x6d78
00005E58  720C              jc 0x5e66
00005E5A  E8BF1A            call word 0x791c
00005E5D  7306              jnc 0x5e65
00005E5F  E8C90E            call word 0x6d2b
00005E62  E8AA0E            call word 0x6d0f
00005E65  C3                ret
00005E66  E962EA            jmp word 0x48cb
00005E69  89263606          mov [0x636],sp
00005E6D  50                push ax
00005E6E  51                push cx
00005E6F  52                push dx
00005E70  56                push si
00005E71  8BCB              mov cx,bx
00005E73  E81F0F            call word 0x6d95
00005E76  BBFFFF            mov bx,0xffff
00005E79  7308              jnc 0x5e83
00005E7B  E8AD0E            call word 0x6d2b
00005E7E  E86B0E            call word 0x6cec
00005E81  98                cbw
00005E82  93                xchg ax,bx
00005E83  5E                pop si
00005E84  5A                pop dx
00005E85  59                pop cx
00005E86  58                pop ax
00005E87  CB                retf
00005E88  E82CE4            call word 0x42b7
00005E8B  E98E1A            jmp word 0x791c
00005E8E  E826E4            call word 0x42b7
00005E91  E9CA1A            jmp word 0x795e
00005E94  E820E4            call word 0x42b7
00005E97  53                push bx
00005E98  52                push dx
00005E99  8B0E0E06          mov cx,[0x60e]
00005E9D  8B161006          mov dx,[0x610]
00005EA1  E8951A            call word 0x7939
00005EA4  7204              jc 0x5eaa
00005EA6  870E1206          xchg cx,[0x612]
00005EAA  40                inc ax
00005EAB  96                xchg ax,si
00005EAC  E8951A            call word 0x7944
00005EAF  7204              jc 0x5eb5
00005EB1  87161406          xchg dx,[0x614]
00005EB5  40                inc ax
00005EB6  97                xchg ax,di
00005EB7  E8710E            call word 0x6d2b
00005EBA  A08700            mov al,[0x87]
00005EBD  98                cbw
00005EBE  F7E6              mul si
00005EC0  8BE8              mov bp,ax
00005EC2  050700            add ax,0x7
00005EC5  D1F8              sar ax,1
00005EC7  D1F8              sar ax,1
00005EC9  D1F8              sar ax,1
00005ECB  F7E7              mul di
00005ECD  7220              jc 0x5eef
00005ECF  050400            add ax,0x4
00005ED2  5A                pop dx
00005ED3  3BC2              cmp ax,dx
00005ED5  7718              ja 0x5eef
00005ED7  5B                pop bx
00005ED8  892F              mov [bx],bp
00005EDA  897F02            mov [bx+0x2],di
00005EDD  8BCD              mov cx,bp
00005EDF  F8                clc
00005EE0  E8770F            call word 0x6e5a
00005EE3  57                push di
00005EE4  E8C60F            call word 0x6ead
00005EE7  E8C40D            call word 0x6cae
00005EEA  5F                pop di
00005EEB  4F                dec di
00005EEC  75F5              jnz 0x5ee3
00005EEE  C3                ret
00005EEF  E9D9E9            jmp word 0x48cb
00005EF2  E8C2E3            call word 0x42b7
00005EF5  E8241A            call word 0x791c
00005EF8  E9300E            jmp word 0x6d2b
00005EFB  E8B9E3            call word 0x42b7
00005EFE  53                push bx
00005EFF  52                push dx
00005F00  8B0E0E06          mov cx,[0x60e]
00005F04  8B37              mov si,[bx]
00005F06  56                push si
00005F07  803E870001        cmp byte [0x87],0x1
00005F0C  7402              jz 0x5f10
00005F0E  D1FE              sar si,1
00005F10  03CE              add cx,si
00005F12  49                dec cx
00005F13  8B161006          mov dx,[0x610]
00005F17  8B7F02            mov di,[bx+0x2]
00005F1A  03D7              add dx,di
00005F1C  4A                dec dx
00005F1D  E8750E            call word 0x6d95
00005F20  7315              jnc 0x5f37
00005F22  59                pop cx
00005F23  58                pop ax
00005F24  FEC0              inc al
00005F26  5B                pop bx
00005F27  F9                stc
00005F28  E82F0F            call word 0x6e5a
00005F2B  57                push di
00005F2C  E8F70F            call word 0x6f26
00005F2F  E87C0D            call word 0x6cae
00005F32  5F                pop di
00005F33  4F                dec di
00005F34  75F5              jnz 0x5f2b
00005F36  C3                ret
00005F37  E991E9            jmp word 0x48cb
00005F3A  C606740802        mov byte [0x874],0x2
00005F3F  EB0C              jmp short 0x5f4d
00005F41  C606740804        mov byte [0x874],0x4
00005F46  EB05              jmp short 0x5f4d
00005F48  C606740808        mov byte [0x874],0x8
00005F4D  89263606          mov [0x636],sp
00005F51  FF36AE00          push word [0xae]
00005F55  FF36B000          push word [0xb0]
00005F59  FF36B200          push word [0xb2]
00005F5D  FF36B400          push word [0xb4]
00005F61  50                push ax
00005F62  51                push cx
00005F63  52                push dx
00005F64  56                push si
00005F65  57                push di
00005F66  55                push bp
00005F67  E81D00            call word 0x5f87
00005F6A  93                xchg ax,bx
00005F6B  8BD6              mov dx,si
00005F6D  E84A15            call word 0x74ba
00005F70  5D                pop bp
00005F71  5F                pop di
00005F72  5E                pop si
00005F73  5A                pop dx
00005F74  59                pop cx
00005F75  58                pop ax
00005F76  8F06B400          pop word [0xb4]
00005F7A  8F06B200          pop word [0xb2]
00005F7E  8F06B000          pop word [0xb0]
00005F82  8F06AE00          pop word [0xae]
00005F86  CB                retf
00005F87  A07408            mov al,[0x874]
00005F8A  3C02              cmp al,0x2
00005F8C  740F              jz 0x5f9d
00005F8E  98                cbw
00005F8F  8BF3              mov si,bx
00005F91  BFB600            mov di,0xb6
00005F94  2BF8              sub di,ax
00005F96  91                xchg ax,cx
00005F97  D1E9              shr cx,1
00005F99  F3A5              rep movsw
00005F9B  EB04              jmp short 0x5fa1
00005F9D  891EB200          mov [0xb2],bx
00005FA1  E86716            call word 0x760b
00005FA4  BB07F9            mov bx,0xf907
00005FA7  803E740804        cmp byte [0x874],0x4
00005FAC  7603              jna 0x5fb1
00005FAE  BB10F0            mov bx,0xf010
00005FB1  8AC3              mov al,bl
00005FB3  E8C617            call word 0x777c
00005FB6  3AD7              cmp dl,bh
00005FB8  7C33              jl 0x5fed
00005FBA  8AC2              mov al,dl
00005FBC  02C1              add al,cl
00005FBE  3AC3              cmp al,bl
00005FC0  7F2B              jg 0x5fed
00005FC2  98                cbw
00005FC3  91                xchg ax,cx
00005FC4  93                xchg ax,bx
00005FC5  0BC9              or cx,cx
00005FC7  7E20              jng 0x5fe9
00005FC9  A4                movsb
00005FCA  4B                dec bx
00005FCB  E0FC              loopne 0x5fc9
00005FCD  B030              mov al,0x30
00005FCF  F3AA              rep stosb
00005FD1  740B              jz 0x5fde
00005FD3  B02E              mov al,0x2e
00005FD5  AA                stosb
00005FD6  B030              mov al,0x30
00005FD8  F3AA              rep stosb
00005FDA  8BCB              mov cx,bx
00005FDC  F3A4              rep movsb
00005FDE  BE3C08            mov si,0x83c
00005FE1  8BC7              mov ax,di
00005FE3  2BC6              sub ax,si
00005FE5  C60500            mov byte [di],0x0
00005FE8  C3                ret
00005FE9  F7D9              neg cx
00005FEB  EBE6              jmp short 0x5fd3
00005FED  A4                movsb
00005FEE  49                dec cx
00005FEF  7407              jz 0x5ff8
00005FF1  B02E              mov al,0x2e
00005FF3  AA                stosb
00005FF4  02D1              add dl,cl
00005FF6  F3A4              rep movsb
00005FF8  B8452B            mov ax,0x2b45
00005FFB  0AD2              or dl,dl
00005FFD  7904              jns 0x6003
00005FFF  F6DA              neg dl
00006001  B42D              mov ah,0x2d
00006003  803E740808        cmp byte [0x874],0x8
00006008  7501              jnz 0x600b
0000600A  48                dec ax
0000600B  AB                stosw
0000600C  92                xchg ax,dx
0000600D  D40A              aam
0000600F  86C4              xchg al,ah
00006011  0D3030            or ax,0x3030
00006014  AB                stosw
00006015  EBC7              jmp short 0x5fde
00006017  5E                pop si
00006018  1F                pop ds
00006019  AC                lodsb
0000601A  1E                push ds
0000601B  56                push si
0000601C  06                push es
0000601D  1F                pop ds
0000601E  A2B206            mov [0x6b2],al
00006021  891EB006          mov [0x6b0],bx
00006025  C70648060000      mov word [0x648],0x0
0000602B  C70634068F31      mov word [0x634],0x318f
00006031  C706B406F22C      mov word [0x6b4],0x2cf2
00006037  8B1EB006          mov bx,[0x6b0]
0000603B  E8DA19            call word 0x7a18
0000603E  F606B20602        test byte [0x6b2],0x2
00006043  750A              jnz 0x604f
00006045  B03F              mov al,0x3f
00006047  E8C9F1            call word 0x5213
0000604A  B020              mov al,0x20
0000604C  E8C4F1            call word 0x5213
0000604F  E80411            call word 0x7156
00006052  F606B20601        test byte [0x6b2],0x1
00006057  7503              jnz 0x605c
00006059  E81E19            call word 0x797a
0000605C  803EC20600        cmp byte [0x6c2],0x0
00006061  CB                retf
00006062  C3                ret
00006063  89263606          mov [0x636],sp
00006067  E81C18            call word 0x7886
0000606A  7410              jz 0x607c
0000606C  803C02            cmp byte [si],0x2
0000606F  740E              jz 0x607f
00006071  89364806          mov [0x648],si
00006075  C706B406122D      mov word [0x6b4],0x2d12
0000607B  CB                retf
0000607C  E976E8            jmp word 0x48f5
0000607F  E988E8            jmp word 0x490a
00006082  E87DF1            call word 0x5202
00006085  72F8              jc 0x607f
00006087  0AD2              or dl,dl
00006089  7404              jz 0x608f
0000608B  3C20              cmp al,0x20
0000608D  74F3              jz 0x6082
0000608F  BFC206            mov di,0x6c2
00006092  3C22              cmp al,0x22
00006094  7510              jnz 0x60a6
00006096  80FA2C            cmp dl,0x2c
00006099  750B              jnz 0x60a6
0000609B  E87E00            call word 0x611c
0000609E  BA2222            mov dx,0x2222
000060A1  E85EF1            call word 0x5202
000060A4  7240              jc 0x60e6
000060A6  B1FF              mov cl,0xff
000060A8  80FE22            cmp dh,0x22
000060AB  7425              jz 0x60d2
000060AD  3C0D              cmp al,0xd
000060AF  744E              jz 0x60ff
000060B1  3C0A              cmp al,0xa
000060B3  751D              jnz 0x60d2
000060B5  80FA2C            cmp dl,0x2c
000060B8  7403              jz 0x60bd
000060BA  E85F00            call word 0x611c
000060BD  E842F1            call word 0x5202
000060C0  3C0A              cmp al,0xa
000060C2  74F1              jz 0x60b5
000060C4  3C0D              cmp al,0xd
000060C6  750A              jnz 0x60d2
000060C8  80FA20            cmp dl,0x20
000060CB  7414              jz 0x60e1
000060CD  80FA2C            cmp dl,0x2c
000060D0  740F              jz 0x60e1
000060D2  0AC0              or al,al
000060D4  740B              jz 0x60e1
000060D6  3AC6              cmp al,dh
000060D8  740C              jz 0x60e6
000060DA  3AC2              cmp al,dl
000060DC  7408              jz 0x60e6
000060DE  E83B00            call word 0x611c
000060E1  E81EF1            call word 0x5202
000060E4  73C2              jnc 0x60a8
000060E6  3C22              cmp al,0x22
000060E8  7404              jz 0x60ee
000060EA  3C20              cmp al,0x20
000060EC  7527              jnz 0x6115
000060EE  E811F1            call word 0x5202
000060F1  7222              jc 0x6115
000060F3  3C20              cmp al,0x20
000060F5  74F7              jz 0x60ee
000060F7  3C2C              cmp al,0x2c
000060F9  741A              jz 0x6115
000060FB  3C0D              cmp al,0xd
000060FD  7513              jnz 0x6112
000060FF  8B1E4806          mov bx,[0x648]
00006103  F6472E80          test byte [bx+0x2e],0x80
00006107  780C              js 0x6115
00006109  E8F6F0            call word 0x5202
0000610C  7207              jc 0x6115
0000610E  3C0A              cmp al,0xa
00006110  7403              jz 0x6115
00006112  E8D9F0            call word 0x51ee
00006115  32C0              xor al,al
00006117  AA                stosb
00006118  BEC206            mov si,0x6c2
0000611B  C3                ret
0000611C  0AC0              or al,al
0000611E  74FB              jz 0x611b
00006120  AA                stosb
00006121  FEC9              dec cl
00006123  75F6              jnz 0x611b
00006125  59                pop cx
00006126  EBED              jmp short 0x6115
00006128  89263606          mov [0x636],sp
0000612C  50                push ax
0000612D  B8C32D            mov ax,0x2dc3
00006130  E9F208            jmp word 0x6a25
00006133  41                inc cx
00006134  43                inc bx
00006135  2E42              cs inc dx
00006137  43                inc bx
00006138  2E43              cs inc bx
0000613A  43                inc bx
0000613B  2E44              cs inc sp
0000613D  43                inc bx
0000613E  2E45              cs inc bp
00006140  43                inc bx
00006141  2E46              cs inc si
00006143  43                inc bx
00006144  2E47              cs inc di
00006146  43                inc bx
00006147  2ECE              cs into
00006149  242E              and al,0x2e
0000614B  CF                iretw
0000614C  182ED008          sbb [0x8d0],ch
00006150  2ED4FE            cs aam 0xfe
00006153  2DCCEE            sub ax,0xeecc
00006156  2D4D20            sub ax,0x204d
00006159  2F                das
0000615A  58                pop ax
0000615B  D437              aam 0x37
0000615D  007350            add [bp+di+0x50],dh
00006160  80FA41            cmp dl,0x41
00006163  734B              jnc 0x61b0
00006165  0AD2              or dl,dl
00006167  7447              jz 0x61b0
00006169  88168D00          mov [0x8d],dl
0000616D  C3                ret
0000616E  80FA20            cmp dl,0x20
00006171  723D              jc 0x61b0
00006173  88168C00          mov [0x8c],dl
00006177  C3                ret
00006178  7336              jnc 0x61b0
0000617A  33C9              xor cx,cx
0000617C  80FA41            cmp dl,0x41
0000617F  732F              jnc 0x61b0
00006181  0AD2              or dl,dl
00006183  740E              jz 0x6193
00006185  E99300            jmp word 0x621b
00006188  7326              jnc 0x61b0
0000618A  80FA07            cmp dl,0x7
0000618D  7321              jnc 0x61b0
0000618F  88168B00          mov [0x8b],dl
00006193  C3                ret
00006194  731A              jnc 0x61b0
00006196  8AC2              mov al,dl
00006198  0AC0              or al,al
0000619A  7441              jz 0x61dd
0000619C  3C55              cmp al,0x55
0000619E  7310              jnc 0x61b0
000061A0  98                cbw
000061A1  48                dec ax
000061A2  B20C              mov dl,0xc
000061A4  F6F2              div dl
000061A6  8AF0              mov dh,al
000061A8  8AC4              mov al,ah
000061AA  FEC0              inc al
000061AC  02C0              add al,al
000061AE  EB31              jmp short 0x61e1
000061B0  E918E7            jmp word 0x48cb
000061B3  80E940            sub cl,0x40
000061B6  02C9              add cl,cl
000061B8  E8EC08            call word 0x6aa7
000061BB  7413              jz 0x61d0
000061BD  3C23              cmp al,0x23
000061BF  7411              jz 0x61d2
000061C1  3C2B              cmp al,0x2b
000061C3  740D              jz 0x61d2
000061C5  3C2D              cmp al,0x2d
000061C7  7405              jz 0x61ce
000061C9  E80109            call word 0x6acd
000061CC  EB02              jmp short 0x61d0
000061CE  FEC9              dec cl
000061D0  FEC9              dec cl
000061D2  8AC1              mov al,cl
000061D4  BB4B2F            mov bx,0x2f4b
000061D7  2ED7              cs xlatb
000061D9  0AC0              or al,al
000061DB  78D3              js 0x61b0
000061DD  8A368B00          mov dh,[0x8b]
000061E1  50                push ax
000061E2  52                push dx
000061E3  A08D00            mov al,[0x8d]
000061E6  A28E00            mov [0x8e],al
000061E9  E8BB08            call word 0x6aa7
000061EC  7410              jz 0x61fe
000061EE  E8FD08            call word 0x6aee
000061F1  80FA41            cmp dl,0x41
000061F4  73BA              jnc 0x61b0
000061F6  0AD2              or dl,dl
000061F8  7404              jz 0x61fe
000061FA  88168E00          mov [0x8e],dl
000061FE  5A                pop dx
000061FF  58                pop ax
00006200  98                cbw
00006201  8BD8              mov bx,ax
00006203  0BDB              or bx,bx
00006205  740E              jz 0x6215
00006207  2E8B9F582F        mov bx,[cs:bx+0x2f58]
0000620C  B106              mov cl,0x6
0000620E  2ACE              sub cl,dh
00006210  D3EB              shr bx,cl
00006212  83D300            adc bx,byte +0x0
00006215  8BCB              mov cx,bx
00006217  8A168E00          mov dl,[0x8e]
0000621B  A08C00            mov al,[0x8c]
0000621E  F6E2              mul dl
00006220  51                push cx
00006221  8BC8              mov cx,ax
00006223  BA0200            mov dx,0x2
00006226  B80022            mov ax,0x2200
00006229  F7F1              div cx
0000622B  59                pop cx
0000622C  0BC0              or ax,ax
0000622E  7457              jz 0x6287
00006230  51                push cx
00006231  50                push ax
00006232  E87208            call word 0x6aa7
00006235  7418              jz 0x624f
00006237  3C2E              cmp al,0x2e
00006239  7511              jnz 0x624c
0000623B  58                pop ax
0000623C  B90300            mov cx,0x3
0000623F  F7E1              mul cx
00006241  D1E8              shr ax,1
00006243  D1EA              shr dx,1
00006245  0BD2              or dx,dx
00006247  74E8              jz 0x6231
00006249  E97FE6            jmp word 0x48cb
0000624C  E87E08            call word 0x6acd
0000624F  58                pop ax
00006250  59                pop cx
00006251  0BC9              or cx,cx
00006253  7433              jz 0x6288
00006255  803E8F0001        cmp byte [0x8f],0x1
0000625A  742C              jz 0x6288
0000625C  50                push ax
0000625D  51                push cx
0000625E  8A0E8F00          mov cl,[0x8f]
00006262  BB0300            mov bx,0x3
00006265  80F902            cmp cl,0x2
00006268  7403              jz 0x626d
0000626A  BB0700            mov bx,0x7
0000626D  F7E3              mul bx
0000626F  D3E8              shr ax,cl
00006271  0BC0              or ax,ax
00006273  7501              jnz 0x6276
00006275  40                inc ax
00006276  59                pop cx
00006277  E80E00            call word 0x6288
0000627A  58                pop ax
0000627B  8A0E8F00          mov cl,[0x8f]
0000627F  D3E8              shr ax,cl
00006281  33C9              xor cx,cx
00006283  0BC0              or ax,ax
00006285  7501              jnz 0x6288
00006287  C3                ret
00006288  8BD0              mov dx,ax
0000628A  E9AAD9            jmp word 0x3c37
0000628D  E93BE6            jmp word 0x48cb
00006290  E80E08            call word 0x6aa1
00006293  B101              mov cl,0x1
00006295  3C4C              cmp al,0x4c
00006297  741D              jz 0x62b6
00006299  FEC1              inc cl
0000629B  3C53              cmp al,0x53
0000629D  7417              jz 0x62b6
0000629F  FEC1              inc cl
000062A1  3C4E              cmp al,0x4e
000062A3  7411              jz 0x62b6
000062A5  32C9              xor cl,cl
000062A7  3C46              cmp al,0x46
000062A9  7406              jz 0x62b1
000062AB  FEC9              dec cl
000062AD  3C42              cmp al,0x42
000062AF  75DC              jnz 0x628d
000062B1  880E4000          mov [0x40],cl
000062B5  C3                ret
000062B6  880E8F00          mov [0x8f],cl
000062BA  C3                ret
000062BB  1214              adc dl,[si]
000062BD  16                push ss
000062BE  18FF              sbb bh,bh
000062C0  0204              add al,[si]
000062C2  06                push es
000062C3  080A              or [bp+si],cl
000062C5  FF0C              dec word [si]
000062C7  0E                push cs
000062C8  1012              adc [bp+si],dl
000062CA  5A                pop dx
000062CB  105311            adc [bp+di+0x11],dl
000062CE  5B                pop bx
000062CF  127213            adc dh,[bp+si+0x13]
000062D2  9A14D41520        call word 0x2015:0xd414
000062D7  17                pop ss
000062D8  8018F5            sbb byte [bx+si],0xf5
000062DB  19801B23          sbb [bx+si+0x231b],ax
000062DF  1DDE1E            sbb ax,0x1ede
000062E2  57                push di
000062E3  BFB200            mov di,0xb2
000062E6  A5                movsw
000062E7  A5                movsw
000062E8  5F                pop di
000062E9  83EE04            sub si,byte +0x4
000062EC  C706AE000000      mov word [0xae],0x0
000062F2  C706B0000000      mov word [0xb0],0x0
000062F8  CB                retf
000062F9  53                push bx
000062FA  52                push dx
000062FB  50                push ax
000062FC  B80090            mov ax,0x9000
000062FF  0AC7              or al,bh
00006301  7902              jns 0x6305
00006303  F7DB              neg bx
00006305  33D2              xor dx,dx
00006307  E85AD1            call word 0x3464
0000630A  58                pop ax
0000630B  5A                pop dx
0000630C  5B                pop bx
0000630D  EBDD              jmp short 0x62ec
0000630F  57                push di
00006310  BFAE00            mov di,0xae
00006313  A5                movsw
00006314  A5                movsw
00006315  A5                movsw
00006316  A5                movsw
00006317  5F                pop di
00006318  83EE08            sub si,byte +0x8
0000631B  53                push bx
0000631C  52                push dx
0000631D  50                push ax
0000631E  8B1EB300          mov bx,[0xb3]
00006322  80CF80            or bh,0x80
00006325  8B16B100          mov dx,[0xb1]
00006329  A1AE00            mov ax,[0xae]
0000632C  0AC4              or al,ah
0000632E  0A06B000          or al,[0xb0]
00006332  7403              jz 0x6337
00006334  80CA01            or dl,0x1
00006337  A1B400            mov ax,[0xb4]
0000633A  E855D1            call word 0x3492
0000633D  58                pop ax
0000633E  5A                pop dx
0000633F  5B                pop bx
00006340  CB                retf
00006341  89263606          mov [0x636],sp
00006345  50                push ax
00006346  51                push cx
00006347  8B4402            mov ax,[si+0x2]
0000634A  8B0C              mov cx,[si]
0000634C  EB4B              jmp short 0x6399
0000634E  89263606          mov [0x636],sp
00006352  50                push ax
00006353  51                push cx
00006354  E8E000            call word 0x6437
00006357  EB40              jmp short 0x6399
00006359  89263606          mov [0x636],sp
0000635D  50                push ax
0000635E  51                push cx
0000635F  56                push si
00006360  BEAE00            mov si,0xae
00006363  E8D100            call word 0x6437
00006366  5E                pop si
00006367  EB30              jmp short 0x6399
00006369  0AE4              or ah,ah
0000636B  790C              jns 0x6379
0000636D  2C01              sub al,0x1
0000636F  83DB00            sbb bx,byte +0x0
00006372  D3EB              shr bx,cl
00006374  F7D3              not bx
00006376  EB58              jmp short 0x63d0
00006378  90                nop
00006379  D3EB              shr bx,cl
0000637B  EB53              jmp short 0x63d0
0000637D  90                nop
0000637E  0AC0              or al,al
00006380  794E              jns 0x63d0
00006382  803EB80004        cmp byte [0xb8],0x4
00006387  7547              jnz 0x63d0
00006389  4B                dec bx
0000638A  EB44              jmp short 0x63d0
0000638C  89263606          mov [0x636],sp
00006390  50                push ax
00006391  51                push cx
00006392  A1B400            mov ax,[0xb4]
00006395  8B0EB200          mov cx,[0xb2]
00006399  33DB              xor bx,bx
0000639B  0AE4              or ah,ah
0000639D  7431              jz 0x63d0
0000639F  80EC80            sub ah,0x80
000063A2  72DA              jc 0x637e
000063A4  8AF8              mov bh,al
000063A6  8ADD              mov bl,ch
000063A8  91                xchg ax,cx
000063A9  B110              mov cl,0x10
000063AB  2ACD              sub cl,ch
000063AD  8AE7              mov ah,bh
000063AF  723B              jc 0x63ec
000063B1  7424              jz 0x63d7
000063B3  80CF80            or bh,0x80
000063B6  803EB80004        cmp byte [0xb8],0x4
000063BB  74AC              jz 0x6369
000063BD  D3EB              shr bx,cl
000063BF  83D300            adc bx,byte +0x0
000063C2  702B              jo 0x63ef
000063C4  0AE4              or ah,ah
000063C6  7902              jns 0x63ca
000063C8  F7DB              neg bx
000063CA  F6D4              not ah
000063CC  22E7              and ah,bh
000063CE  781C              js 0x63ec
000063D0  59                pop cx
000063D1  58                pop ax
000063D2  891EB200          mov [0xb2],bx
000063D6  CB                retf
000063D7  81FB0080          cmp bx,0x8000
000063DB  750F              jnz 0x63ec
000063DD  0AC0              or al,al
000063DF  74EF              jz 0x63d0
000063E1  803EB80004        cmp byte [0xb8],0x4
000063E6  7404              jz 0x63ec
000063E8  A880              test al,0x80
000063EA  74E4              jz 0x63d0
000063EC  E9DFE4            jmp word 0x48ce
000063EF  0AE4              or ah,ah
000063F1  78DD              js 0x63d0
000063F3  EBF7              jmp short 0x63ec
000063F5  89263606          mov [0x636],sp
000063F9  50                push ax
000063FA  51                push cx
000063FB  8B4402            mov ax,[si+0x2]
000063FE  8B0C              mov cx,[si]
00006400  EB0D              jmp short 0x640f
00006402  89263606          mov [0x636],sp
00006406  50                push ax
00006407  51                push cx
00006408  A1B400            mov ax,[0xb4]
0000640B  8B0EB200          mov cx,[0xb2]
0000640F  80FC90            cmp ah,0x90
00006412  7585              jnz 0x6399
00006414  0AC0              or al,al
00006416  7881              js 0x6399
00006418  0C80              or al,0x80
0000641A  8AF8              mov bh,al
0000641C  8ADD              mov bl,ch
0000641E  803EB80004        cmp byte [0xb8],0x4
00006423  74AB              jz 0x63d0
00006425  D0E1              shl cl,1
00006427  83D300            adc bx,byte +0x0
0000642A  73A4              jnc 0x63d0
0000642C  E99FE4            jmp word 0x48ce
0000642F  0AFF              or bh,bh
00006431  7501              jnz 0x6434
00006433  CB                retf
00006434  E9FBE4            jmp word 0x4932
00006437  8B4406            mov ax,[si+0x6]
0000643A  8B0C              mov cx,[si]
0000643C  0B4C02            or cx,[si+0x2]
0000643F  7403              jz 0x6444
00006441  B90100            mov cx,0x1
00006444  0B4C04            or cx,[si+0x4]
00006447  C3                ret
00006448  5F                pop di
00006449  07                pop es
0000644A  268A05            mov al,[es:di]
0000644D  47                inc di
0000644E  8C06B806          mov [0x6b8],es
00006452  893EB606          mov [0x6b6],di
00006456  A2BF06            mov [0x6bf],al
00006459  8926BC06          mov [0x6bc],sp
0000645D  8926BA06          mov [0x6ba],sp
00006461  A2BE06            mov [0x6be],al
00006464  BEC206            mov si,0x6c2
00006467  268A05            mov al,[es:di]
0000646A  47                inc di
0000646B  BB0C01            mov bx,0x10c
0000646E  D7                xlatb
0000646F  98                cbw
00006470  50                push ax
00006471  A27408            mov [0x874],al
00006474  06                push es
00006475  57                push di
00006476  89263606          mov [0x636],sp
0000647A  1E                push ds
0000647B  07                pop es
0000647C  55                push bp
0000647D  BA202C            mov dx,0x2c20
00006480  3C03              cmp al,0x3
00006482  7502              jnz 0x6486
00006484  8AD6              mov dl,dh
00006486  FF16B406          call word [0x6b4]
0000648A  E8E4EF            call word 0x5471
0000648D  5D                pop bp
0000648E  5F                pop di
0000648F  07                pop es
00006490  803E740804        cmp byte [0x874],0x4
00006495  BBB200            mov bx,0xb2
00006498  7203              jc 0x649d
0000649A  FF7702            push word [bx+0x2]
0000649D  FF37              push word [bx]
0000649F  7606              jna 0x64a7
000064A1  FF77FE            push word [bx-0x2]
000064A4  FF77FC            push word [bx-0x4]
000064A7  813E34062816      cmp word [0x634],0x1628
000064AD  7436              jz 0x64e5
000064AF  E8A4F1            call word 0x5656
000064B2  FE0EBE06          dec byte [0x6be]
000064B6  7438              jz 0x64f0
000064B8  3C2C              cmp al,0x2c
000064BA  74AB              jz 0x6467
000064BC  8B26BC06          mov sp,[0x6bc]
000064C0  E84915            call word 0x7a0c
000064C3  3F                aas
000064C4  52                push dx
000064C5  65646F            fs outsw
000064C8  206672            and [bp+0x72],ah
000064CB  6F                outsw
000064CC  6D                insw
000064CD  207374            and [bp+di+0x74],dh
000064D0  61                popaw
000064D1  72F4              jc 0x64c7
000064D3  E8EB14            call word 0x79c1
000064D6  9AC72C4702        call word 0x247:0x2cc7
000064DB  A0BF06            mov al,[0x6bf]
000064DE  C43EB606          les di,[0x6b6]
000064E2  E97CFF            jmp word 0x6461
000064E5  FE0EBE06          dec byte [0x6be]
000064E9  7403              jz 0x64ee
000064EB  E979FF            jmp word 0x6467
000064EE  32C0              xor al,al
000064F0  0AC0              or al,al
000064F2  75C8              jnz 0x64bc
000064F4  C70634062816      mov word [0x634],0x1628
000064FA  06                push es
000064FB  57                push di
000064FC  1E                push ds
000064FD  07                pop es
000064FE  CB                retf
000064FF  E80A15            call word 0x7a0c
00006502  4F                dec di
00006503  7665              jna 0x656a
00006505  7266              jc 0x656d
00006507  6C                insb
00006508  6F                outsw
00006509  F7E8              imul ax
0000650B  B414              mov ah,0x14
0000650D  EBAD              jmp short 0x64bc
0000650F  56                push si
00006510  57                push di
00006511  51                push cx
00006512  1E                push ds
00006513  8B36BA06          mov si,[0x6ba]
00006517  16                push ss
00006518  1F                pop ds
00006519  4E                dec si
0000651A  4E                dec si
0000651B  8B0C              mov cx,[si]
0000651D  8BF9              mov di,cx
0000651F  81E7FEFF          and di,0xfffe
00006523  2BF7              sub si,di
00006525  268936BA06        mov [es:0x6ba],si
0000652A  80F903            cmp cl,0x3
0000652D  7420              jz 0x654f
0000652F  8BFB              mov di,bx
00006531  D1E9              shr cx,1
00006533  F3A5              rep movsw
00006535  1F                pop ds
00006536  59                pop cx
00006537  5F                pop di
00006538  5E                pop si
00006539  FE0EBF06          dec byte [0x6bf]
0000653D  75BF              jnz 0x64fe
0000653F  8F06B606          pop word [0x6b6]
00006543  8F06B806          pop word [0x6b8]
00006547  8B26BC06          mov sp,[0x6bc]
0000654B  FF2EB606          jmp word far [0x6b6]
0000654F  8B34              mov si,[si]
00006551  1F                pop ds
00006552  87F2              xchg si,dx
00006554  87D3              xchg dx,bx
00006556  9A2E0E4702        call word 0x247:0xe2e
0000655B  8BDA              mov bx,dx
0000655D  8BD6              mov dx,si
0000655F  EBD5              jmp short 0x6536
00006561  00E8              add al,ch
00006563  52                push dx
00006564  DD95E8E6          fst qword [di-0x1918]
00006568  13958BE9          adc dx,[di-0x1675]
0000656C  E8340A            call word 0x6fa3
0000656F  724A              jc 0x65bb
00006571  8BCD              mov cx,bp
00006573  E8B507            call word 0x6d2b
00006576  8B36FA07          mov si,[0x7fa]
0000657A  AD                lodsw
0000657B  3D0010            cmp ax,0x1000
0000657E  7308              jnc 0x6588
00006580  E8560E            call word 0x73d9
00006583  8B36FA07          mov si,[0x7fa]
00006587  AD                lodsw
00006588  48                dec ax
00006589  A3D307            mov [0x7d3],ax
0000658C  8936CF07          mov [0x7cf],si
00006590  8936CD07          mov [0x7cd],si
00006594  03C6              add ax,si
00006596  2D0500            sub ax,0x5
00006599  A3D107            mov [0x7d1],ax
0000659C  C706CB070000      mov word [0x7cb],0x0
000065A2  BA0100            mov dx,0x1
000065A5  E82F01            call word 0x66d7
000065A8  7410              jz 0x65ba
000065AA  53                push bx
000065AB  E80A01            call word 0x66b8
000065AE  5A                pop dx
000065AF  03D3              add dx,bx
000065B1  B040              mov al,0x40
000065B3  E8C800            call word 0x667e
000065B6  B0C0              mov al,0xc0
000065B8  EB0F              jmp short 0x65c9
000065BA  C3                ret
000065BB  E90DE3            jmp word 0x48cb
000065BE  E89700            call word 0x6658
000065C1  891EED07          mov [0x7ed],bx
000065C5  880EEB07          mov [0x7eb],cl
000065C9  A2C807            mov [0x7c8],al
000065CC  0AC0              or al,al
000065CE  74EA              jz 0x65ba
000065D0  7905              jns 0x65d7
000065D2  E8AD06            call word 0x6c82
000065D5  EB03              jmp short 0x65da
000065D7  E8C906            call word 0x6ca3
000065DA  72E2              jc 0x65be
000065DC  E8F800            call word 0x66d7
000065DF  74DD              jz 0x65be
000065E1  E8D400            call word 0x66b8
000065E4  8BD3              mov dx,bx
000065E6  0AC0              or al,al
000065E8  740D              jz 0x65f7
000065EA  83FB01            cmp bx,byte +0x1
000065ED  7E08              jng 0x65f7
000065EF  A0C807            mov al,[0x7c8]
000065F2  F6D8              neg al
000065F4  E88700            call word 0x667e
000065F7  0316C407          add dx,[0x7c4]
000065FB  A0C907            mov al,[0x7c9]
000065FE  0A06CA07          or al,[0x7ca]
00006602  7406              jz 0x660a
00006604  A0C807            mov al,[0x7c8]
00006607  E87400            call word 0x667e
0000660A  A1EF07            mov ax,[0x7ef]
0000660D  A3ED07            mov [0x7ed],ax
00006610  A0EC07            mov al,[0x7ec]
00006613  A2EB07            mov [0x7eb],al
00006616  A1C607            mov ax,[0x7c6]
00006619  2B06C407          sub ax,[0x7c4]
0000661D  749F              jz 0x65be
0000661F  721C              jc 0x663d
00006621  92                xchg ax,dx
00006622  E8B200            call word 0x66d7
00006625  7497              jz 0x65be
00006627  0AC0              or al,al
00006629  74EB              jz 0x6616
0000662B  8BD3              mov dx,bx
0000662D  8B1EEF07          mov bx,[0x7ef]
00006631  8A0EEC07          mov cl,[0x7ec]
00006635  A0C807            mov al,[0x7c8]
00006638  E84B00            call word 0x6686
0000663B  EBD9              jmp short 0x6616
0000663D  F7D8              neg ax
0000663F  3D0100            cmp ax,0x1
00006642  7E11              jng 0x6655
00006644  48                dec ax
00006645  8BC8              mov cx,ax
00006647  92                xchg ax,dx
00006648  E88D06            call word 0x6cd8
0000664B  E2FB              loop 0x6648
0000664D  A0C807            mov al,[0x7c8]
00006650  F6D8              neg al
00006652  E82900            call word 0x667e
00006655  E966FF            jmp word 0x65be
00006658  32C0              xor al,al
0000665A  832ECB0706        sub word [0x7cb],byte +0x6
0000665F  721C              jc 0x667d
00006661  8B36CD07          mov si,[0x7cd]
00006665  AD                lodsw
00006666  93                xchg ax,bx
00006667  AD                lodsw
00006668  91                xchg ax,cx
00006669  AD                lodsw
0000666A  92                xchg ax,dx
0000666B  8AC5              mov al,ch
0000666D  3B36D107          cmp si,[0x7d1]
00006671  7206              jc 0x6679
00006673  8B36FA07          mov si,[0x7fa]
00006677  46                inc si
00006678  46                inc si
00006679  8936CD07          mov [0x7cd],si
0000667D  C3                ret
0000667E  8B1EED07          mov bx,[0x7ed]
00006682  8A0EEB07          mov cl,[0x7eb]
00006686  8AE8              mov ch,al
00006688  A1CB07            mov ax,[0x7cb]
0000668B  050600            add ax,0x6
0000668E  3B06D307          cmp ax,[0x7d3]
00006692  7321              jnc 0x66b5
00006694  A3CB07            mov [0x7cb],ax
00006697  8B3ECF07          mov di,[0x7cf]
0000669B  8BC3              mov ax,bx
0000669D  AB                stosw
0000669E  8BC1              mov ax,cx
000066A0  AB                stosw
000066A1  8BC2              mov ax,dx
000066A3  AB                stosw
000066A4  3B3ED107          cmp di,[0x7d1]
000066A8  7206              jc 0x66b0
000066AA  8B3EFA07          mov di,[0x7fa]
000066AE  47                inc di
000066AF  47                inc di
000066B0  893ECF07          mov [0x7cf],di
000066B4  C3                ret
000066B5  E919E2            jmp word 0x48d1
000066B8  A1ED07            mov ax,[0x7ed]
000066BB  8706EF07          xchg ax,[0x7ef]
000066BF  A3ED07            mov [0x7ed],ax
000066C2  A0EB07            mov al,[0x7eb]
000066C5  8606EC07          xchg al,[0x7ec]
000066C9  A2EB07            mov [0x7eb],al
000066CC  E86809            call word 0x7037
000066CF  8AC1              mov al,cl
000066D1  A2C907            mov [0x7c9],al
000066D4  0BDB              or bx,bx
000066D6  C3                ret
000066D7  E88309            call word 0x705d
000066DA  891EC407          mov [0x7c4],bx
000066DE  8916C607          mov [0x7c6],dx
000066E2  8AC1              mov al,cl
000066E4  A2CA07            mov [0x7ca],al
000066E7  0BDB              or bx,bx
000066E9  C3                ret
000066EA  89263606          mov [0x636],sp
000066EE  50                push ax
000066EF  C606880000        mov byte [0x88],0x0
000066F4  B88A33            mov ax,0x338a
000066F7  E92B03            jmp word 0x6a25
000066FA  D5B8              aad 0xb8
000066FC  33C4              xor ax,sp
000066FE  BA33CC            mov dx,0xcc33
00006701  BF33D2            mov di,0xd233
00006704  C1                db 0xc1
00006705  334DDA            xor cx,[di-0x26]
00006708  33C5              xor ax,bp
0000670A  CE                into
0000670B  33C6              xor ax,si
0000670D  CA33C7            retf 0xc733
00006710  D433              aam 0x33
00006712  C8C833C1          enter 0x33c8,0xc1
00006716  7E34              jng 0x674c
00006718  42                inc dx
00006719  7434              jz 0x674f
0000671B  4E                dec si
0000671C  7034              jo 0x6752
0000671E  C3                ret
0000671F  EB34              jmp short 0x6755
00006721  D38A3458          ror word [bp+si+0x5834],cl
00006725  D437              aam 0x37
00006727  00F7              add bh,dh
00006729  DAB90000          fidivr dword [bx+di+0x0]
0000672D  EB3D              jmp short 0x676c
0000672F  F7DA              neg dx
00006731  8BCA              mov cx,dx
00006733  BA0000            mov dx,0x0
00006736  EB34              jmp short 0x676c
00006738  F7DA              neg dx
0000673A  8BCA              mov cx,dx
0000673C  EB2E              jmp short 0x676c
0000673E  8BCA              mov cx,dx
00006740  F7DA              neg dx
00006742  EB28              jmp short 0x676c
00006744  F7DA              neg dx
00006746  8BCA              mov cx,dx
00006748  EBF6              jmp short 0x6740
0000674A  E85403            call word 0x6aa1
0000674D  3C2B              cmp al,0x2b
0000674F  7402              jz 0x6753
00006751  3C2D              cmp al,0x2d
00006753  9C                pushfw
00006754  E87603            call word 0x6acd
00006757  E87F03            call word 0x6ad9
0000675A  52                push dx
0000675B  E84303            call word 0x6aa1
0000675E  3C2C              cmp al,0x2c
00006760  7403              jz 0x6765
00006762  E966E1            jmp word 0x48cb
00006765  E87103            call word 0x6ad9
00006768  59                pop cx
00006769  9D                popfw
0000676A  754D              jnz 0x67b9
0000676C  E89C00            call word 0x680b
0000676F  52                push dx
00006770  8BD1              mov dx,cx
00006772  E89600            call word 0x680b
00006775  8BDA              mov bx,dx
00006777  5A                pop dx
00006778  A08A00            mov al,[0x8a]
0000677B  D0E8              shr al,1
0000677D  7328              jnc 0x67a7
0000677F  50                push ax
00006780  52                push dx
00006781  53                push bx
00006782  E84706            call word 0x6dcc
00006785  8ACB              mov cl,bl
00006787  8BDA              mov bx,dx
00006789  5A                pop dx
0000678A  53                push bx
0000678B  E8A500            call word 0x6833
0000678E  59                pop cx
0000678F  5B                pop bx
00006790  52                push dx
00006791  87D3              xchg dx,bx
00006793  BB0000            mov bx,0x0
00006796  03DA              add bx,dx
00006798  FECD              dec ch
0000679A  75FA              jnz 0x6796
0000679C  53                push bx
0000679D  E89300            call word 0x6833
000067A0  5B                pop bx
000067A1  03DA              add bx,dx
000067A3  5A                pop dx
000067A4  F7DA              neg dx
000067A6  58                pop ax
000067A7  D0E8              shr al,1
000067A9  7304              jnc 0x67af
000067AB  F7DB              neg bx
000067AD  F7DA              neg dx
000067AF  8B0E0E06          mov cx,[0x60e]
000067B3  03CB              add cx,bx
000067B5  03161006          add dx,[0x610]
000067B9  8BD9              mov bx,cx
000067BB  E8A011            call word 0x795e
000067BE  A08800            mov al,[0x88]
000067C1  02C0              add al,al
000067C3  7205              jc 0x67ca
000067C5  50                push ax
000067C6  E8D908            call word 0x70a2
000067C9  58                pop ax
000067CA  02C0              add al,al
000067CC  730C              jnc 0x67da
000067CE  A11206            mov ax,[0x612]
000067D1  A30E06            mov [0x60e],ax
000067D4  A11406            mov ax,[0x614]
000067D7  A31006            mov [0x610],ax
000067DA  C606880000        mov byte [0x88],0x0
000067DF  C3                ret
000067E0  B040              mov al,0x40
000067E2  EB02              jmp short 0x67e6
000067E4  B080              mov al,0x80
000067E6  08068800          or [0x88],al
000067EA  C3                ret
000067EB  E9DDE0            jmp word 0x48cb
000067EE  73FB              jnc 0x67eb
000067F0  80FA04            cmp dl,0x4
000067F3  73F6              jnc 0x67eb
000067F5  88168A00          mov [0x8a],dl
000067F9  C3                ret
000067FA  73EF              jnc 0x67eb
000067FC  0BD2              or dx,dx
000067FE  74EB              jz 0x67eb
00006800  81FA0001          cmp dx,0x100
00006804  73E5              jnc 0x67eb
00006806  88168900          mov [0x89],dl
0000680A  C3                ret
0000680B  A08900            mov al,[0x89]
0000680E  0AC0              or al,al
00006810  7501              jnz 0x6813
00006812  C3                ret
00006813  BB0000            mov bx,0x0
00006816  03DA              add bx,dx
00006818  FEC8              dec al
0000681A  75FA              jnz 0x6816
0000681C  87D3              xchg dx,bx
0000681E  8AC6              mov al,dh
00006820  02C0              add al,al
00006822  9C                pushfw
00006823  7301              jnc 0x6826
00006825  4A                dec dx
00006826  D1EA              shr dx,1
00006828  D1EA              shr dx,1
0000682A  9D                popfw
0000682B  7201              jc 0x682e
0000682D  C3                ret
0000682E  80CEC0            or dh,0xc0
00006831  42                inc dx
00006832  C3                ret
00006833  F6C680            test dh,0x80
00006836  7406              jz 0x683e
00006838  BBE834            mov bx,0x34e8
0000683B  53                push bx
0000683C  F7DA              neg dx
0000683E  8AC1              mov al,cl
00006840  0AC0              or al,al
00006842  7508              jnz 0x684c
00006844  0AC7              or al,bh
00006846  750F              jnz 0x6857
00006848  87D3              xchg dx,bx
0000684A  EB0B              jmp short 0x6857
0000684C  32E4              xor ah,ah
0000684E  F7E2              mul dx
00006850  8AF2              mov dh,dl
00006852  058000            add ax,0x80
00006855  8AD4              mov dl,ah
00006857  C3                ret
00006858  F7DA              neg dx
0000685A  C3                ret
0000685B  738E              jnc 0x67eb
0000685D  8AC2              mov al,dl
0000685F  E81605            call word 0x6d78
00006862  7287              jc 0x67eb
00006864  C3                ret
00006865  E83900            call word 0x68a1
00006868  0400              add al,0x0
0000686A  E83400            call word 0x68a1
0000686D  0800              or [bx+si],al
0000686F  E82F00            call word 0x68a1
00006872  0200              add al,[bx+si]
00006874  E82A00            call word 0x68a1
00006877  0300              add ax,[bx+si]
00006879  E82500            call word 0x68a1
0000687C  0401              add al,0x1
0000687E  E82000            call word 0x68a1
00006881  0801              or [bx+di],al
00006883  E81B00            call word 0x68a1
00006886  0201              add al,[bx+di]
00006888  E81600            call word 0x68a1
0000688B  0301              add ax,[bx+di]
0000688D  E81100            call word 0x68a1
00006890  0402              add al,0x2
00006892  E80C00            call word 0x68a1
00006895  0802              or [bp+si],al
00006897  E80700            call word 0x68a1
0000689A  0202              add al,[bp+si]
0000689C  E80200            call word 0x68a1
0000689F  0302              add ax,[bp+si]
000068A1  8F067408          pop word [0x874]
000068A5  E80FDA            call word 0x42b7
000068A8  8B367408          mov si,[0x874]
000068AC  2EAD              cs lodsw
000068AE  A37408            mov [0x874],ax
000068B1  3C03              cmp al,0x3
000068B3  744A              jz 0x68ff
000068B5  3C02              cmp al,0x2
000068B7  7410              jz 0x68c9
000068B9  98                cbw
000068BA  8BF3              mov si,bx
000068BC  BFB600            mov di,0xb6
000068BF  2BF8              sub di,ax
000068C1  8BC8              mov cx,ax
000068C3  D1E9              shr cx,1
000068C5  F3A5              rep movsw
000068C7  EB04              jmp short 0x68cd
000068C9  891EB200          mov [0xb2],bx
000068CD  803ED70700        cmp byte [0x7d7],0x0
000068D2  7525              jnz 0x68f9
000068D4  E8CAF6            call word 0x5fa1
000068D7  803ED60700        cmp byte [0x7d6],0x0
000068DC  7550              jnz 0x692e
000068DE  40                inc ax
000068DF  B100              mov cl,0x0
000068E1  E88200            call word 0x6966
000068E4  E8A900            call word 0x6990
000068E7  B020              mov al,0x20
000068E9  E827E9            call word 0x5213
000068EC  803E750801        cmp byte [0x875],0x1
000068F1  724F              jc 0x6942
000068F3  7701              ja 0x68f6
000068F5  C3                ret
000068F6  E98110            jmp word 0x797a
000068F9  FF16D807          call word [0x7d8]
000068FD  EBED              jmp short 0x68ec
000068FF  803ED70700        cmp byte [0x7d7],0x0
00006904  75F3              jnz 0x68f9
00006906  803ED60700        cmp byte [0x7d6],0x0
0000690B  750F              jnz 0x691c
0000690D  8B07              mov ax,[bx]
0000690F  B100              mov cl,0x0
00006911  E85200            call word 0x6966
00006914  E80111            call word 0x7a18
00006917  E8CF0B            call word 0x74e9
0000691A  EBD0              jmp short 0x68ec
0000691C  B022              mov al,0x22
0000691E  E8F2E8            call word 0x5213
00006921  E8F410            call word 0x7a18
00006924  E8C20B            call word 0x74e9
00006927  B022              mov al,0x22
00006929  E8E7E8            call word 0x5213
0000692C  EB09              jmp short 0x6937
0000692E  803C20            cmp byte [si],0x20
00006931  7501              jnz 0x6934
00006933  46                inc si
00006934  E85900            call word 0x6990
00006937  B02C              mov al,0x2c
00006939  803E750801        cmp byte [0x875],0x1
0000693E  74A9              jz 0x68e9
00006940  EBAA              jmp short 0x68ec
00006942  E8DFE8            call word 0x5224
00006945  8AC4              mov al,ah
00006947  B400              mov ah,0x0
00006949  B10E              mov cl,0xe
0000694B  F6F1              div cl
0000694D  2ACC              sub cl,ah
0000694F  8AC1              mov al,cl
00006951  98                cbw
00006952  050E00            add ax,0xe
00006955  E80E00            call word 0x6966
00006958  2D0E00            sub ax,0xe
0000695B  7632              jna 0x698f
0000695D  91                xchg ax,cx
0000695E  B020              mov al,0x20
00006960  E8B0E8            call word 0x5213
00006963  E2F9              loop 0x695e
00006965  C3                ret
00006966  50                push ax
00006967  E8CBE8            call word 0x5235
0000696A  8AEC              mov ch,ah
0000696C  80FDFF            cmp ch,0xff
0000696F  58                pop ax
00006970  741D              jz 0x698f
00006972  0AE4              or ah,ah
00006974  750D              jnz 0x6983
00006976  50                push ax
00006977  E8AAE8            call word 0x5224
0000697A  2AEC              sub ch,ah
0000697C  58                pop ax
0000697D  7204              jc 0x6983
0000697F  3AC5              cmp al,ch
00006981  760C              jna 0x698f
00006983  E89EE8            call word 0x5224
00006986  0AE4              or ah,ah
00006988  7403              jz 0x698d
0000698A  E8ED0F            call word 0x797a
0000698D  33C0              xor ax,ax
0000698F  C3                ret
00006990  AC                lodsb
00006991  0AC0              or al,al
00006993  74FA              jz 0x698f
00006995  E87BE8            call word 0x5213
00006998  EBF6              jmp short 0x6990
0000699A  C70648060000      mov word [0x648],0x0
000069A0  C606D60700        mov byte [0x7d6],0x0
000069A5  E99015            jmp word 0x7f38
000069A8  89263606          mov [0x636],sp
000069AC  56                push si
000069AD  87DA              xchg bx,dx
000069AF  E8D40E            call word 0x7886
000069B2  7416              jz 0x69ca
000069B4  803C01            cmp byte [si],0x1
000069B7  7414              jz 0x69cd
000069B9  89364806          mov [0x648],si
000069BD  87DA              xchg bx,dx
000069BF  5E                pop si
000069C0  EBDE              jmp short 0x69a0
000069C2  C7064806A602      mov word [0x648],0x2a6
000069C8  EBD6              jmp short 0x69a0
000069CA  E928DF            jmp word 0x48f5
000069CD  E92BDF            jmp word 0x48fb
000069D0  C606D60700        mov byte [0x7d6],0x0
000069D5  C70648060000      mov word [0x648],0x0
000069DB  C606D70700        mov byte [0x7d7],0x0
000069E0  CB                retf
000069E1  C606D60701        mov byte [0x7d6],0x1
000069E6  EBED              jmp short 0x69d5
000069E8  E81A00            call word 0x6a05
000069EB  EB07              jmp short 0x69f4
000069ED  90                nop
000069EE  C7064806A602      mov word [0x648],0x2a6
000069F4  C606D60700        mov byte [0x7d6],0x0
000069F9  EBE0              jmp short 0x69db
000069FB  E80700            call word 0x6a05
000069FE  C606D60701        mov byte [0x7d6],0x1
00006A03  EBD6              jmp short 0x69db
00006A05  89263606          mov [0x636],sp
00006A09  8306360602        add word [0x636],byte +0x2
00006A0E  56                push si
00006A0F  E8740E            call word 0x7886
00006A12  740B              jz 0x6a1f
00006A14  803C01            cmp byte [si],0x1
00006A17  7409              jz 0x6a22
00006A19  89364806          mov [0x648],si
00006A1D  5E                pop si
00006A1E  C3                ret
00006A1F  E9D3DE            jmp word 0x48f5
00006A22  E9D6DE            jmp word 0x48fb
00006A25  53                push bx
00006A26  51                push cx
00006A27  52                push dx
00006A28  56                push si
00006A29  57                push di
00006A2A  55                push bp
00006A2B  A3DA07            mov [0x7da],ax
00006A2E  33C0              xor ax,ax
00006A30  50                push ax
00006A31  50                push ax
00006A32  8B07              mov ax,[bx]
00006A34  8B5F02            mov bx,[bx+0x2]
00006A37  53                push bx
00006A38  50                push ax
00006A39  58                pop ax
00006A3A  A3DC07            mov [0x7dc],ax
00006A3D  5B                pop bx
00006A3E  891EDE07          mov [0x7de],bx
00006A42  0BDB              or bx,bx
00006A44  750B              jnz 0x6a51
00006A46  5D                pop bp
00006A47  5F                pop di
00006A48  5E                pop si
00006A49  5A                pop dx
00006A4A  59                pop cx
00006A4B  5B                pop bx
00006A4C  E89A0A            call word 0x74e9
00006A4F  58                pop ax
00006A50  CB                retf
00006A51  E85300            call word 0x6aa7
00006A54  74E3              jz 0x6a39
00006A56  02C0              add al,al
00006A58  8AC8              mov cl,al
00006A5A  8B1EDA07          mov bx,[0x7da]
00006A5E  2E8A07            mov al,[cs:bx]
00006A61  02C0              add al,al
00006A63  7471              jz 0x6ad6
00006A65  3AC8              cmp cl,al
00006A67  7405              jz 0x6a6e
00006A69  83C303            add bx,byte +0x3
00006A6C  EBF0              jmp short 0x6a5e
00006A6E  B9E136            mov cx,0x36e1
00006A71  51                push cx
00006A72  2E8A07            mov al,[cs:bx]
00006A75  8AC8              mov cl,al
00006A77  02C0              add al,al
00006A79  7322              jnc 0x6a9d
00006A7B  0AC0              or al,al
00006A7D  D0E8              shr al,1
00006A7F  8AC8              mov cl,al
00006A81  51                push cx
00006A82  53                push bx
00006A83  E82100            call word 0x6aa7
00006A86  BA0100            mov dx,0x1
00006A89  740E              jz 0x6a99
00006A8B  E89100            call word 0x6b1f
00006A8E  7306              jnc 0x6a96
00006A90  E84900            call word 0x6adc
00006A93  F9                stc
00006A94  EB05              jmp short 0x6a9b
00006A96  E83400            call word 0x6acd
00006A99  0AC0              or al,al
00006A9B  5B                pop bx
00006A9C  59                pop cx
00006A9D  2EFF6701          jmp word [cs:bx+0x1]
00006AA1  E80300            call word 0x6aa7
00006AA4  7430              jz 0x6ad6
00006AA6  C3                ret
00006AA7  53                push bx
00006AA8  833EDC0700        cmp word [0x7dc],byte +0x0
00006AAD  741C              jz 0x6acb
00006AAF  FF0EDC07          dec word [0x7dc]
00006AB3  8B1EDE07          mov bx,[0x7de]
00006AB7  8A07              mov al,[bx]
00006AB9  FF06DE07          inc word [0x7de]
00006ABD  3C20              cmp al,0x20
00006ABF  74E7              jz 0x6aa8
00006AC1  3C3B              cmp al,0x3b
00006AC3  74E3              jz 0x6aa8
00006AC5  3C61              cmp al,0x61
00006AC7  7202              jc 0x6acb
00006AC9  2C20              sub al,0x20
00006ACB  5B                pop bx
00006ACC  C3                ret
00006ACD  FF06DC07          inc word [0x7dc]
00006AD1  FF0EDE07          dec word [0x7de]
00006AD5  C3                ret
00006AD6  E9F2DD            jmp word 0x48cb
00006AD9  E8C5FF            call word 0x6aa1
00006ADC  3C3D              cmp al,0x3d
00006ADE  7478              jz 0x6b58
00006AE0  3C2B              cmp al,0x2b
00006AE2  74F5              jz 0x6ad9
00006AE4  3C2D              cmp al,0x2d
00006AE6  7506              jnz 0x6aee
00006AE8  E8EEFF            call word 0x6ad9
00006AEB  F7DA              neg dx
00006AED  C3                ret
00006AEE  BA0000            mov dx,0x0
00006AF1  B90500            mov cx,0x5
00006AF4  3C2C              cmp al,0x2c
00006AF6  74D5              jz 0x6acd
00006AF8  3C3B              cmp al,0x3b
00006AFA  74D9              jz 0x6ad5
00006AFC  3C3A              cmp al,0x3a
00006AFE  73CD              jnc 0x6acd
00006B00  3C30              cmp al,0x30
00006B02  72C9              jc 0x6acd
00006B04  8BDA              mov bx,dx
00006B06  03DB              add bx,bx
00006B08  03DB              add bx,bx
00006B0A  03DA              add bx,dx
00006B0C  03DB              add bx,bx
00006B0E  2C30              sub al,0x30
00006B10  B400              mov ah,0x0
00006B12  03D8              add bx,ax
00006B14  87D3              xchg dx,bx
00006B16  E88EFF            call word 0x6aa7
00006B19  74BA              jz 0x6ad5
00006B1B  E2D7              loop 0x6af4
00006B1D  EBB7              jmp short 0x6ad6
00006B1F  3C41              cmp al,0x41
00006B21  7203              jc 0x6b26
00006B23  3C5B              cmp al,0x5b
00006B25  F5                cmc
00006B26  C3                ret
00006B27  833EDC0703        cmp word [0x7dc],byte +0x3
00006B2C  72A8              jc 0x6ad6
00006B2E  8B1EDE07          mov bx,[0x7de]
00006B32  8A27              mov ah,[bx]
00006B34  8B5F01            mov bx,[bx+0x1]
00006B37  8BF3              mov si,bx
00006B39  8306DE0703        add word [0x7de],byte +0x3
00006B3E  832EDC0703        sub word [0x7dc],byte +0x3
00006B43  C3                ret
00006B44  E8E0FF            call word 0x6b27
00006B47  80FC03            cmp ah,0x3
00006B4A  7538              jnz 0x6b84
00006B4C  58                pop ax
00006B4D  FF36DE07          push word [0x7de]
00006B51  FF36DC07          push word [0x7dc]
00006B55  E9DAFE            jmp word 0x6a32
00006B58  E8CCFF            call word 0x6b27
00006B5B  80FC02            cmp ah,0x2
00006B5E  7503              jnz 0x6b63
00006B60  8B17              mov dx,[bx]
00006B62  C3                ret
00006B63  FF36B200          push word [0xb2]
00006B67  80FC04            cmp ah,0x4
00006B6A  740C              jz 0x6b78
00006B6C  80FC08            cmp ah,0x8
00006B6F  7513              jnz 0x6b84
00006B71  9AE22F4702        call word 0x247:0x2fe2
00006B76  EB05              jmp short 0x6b7d
00006B78  9AD52F4702        call word 0x247:0x2fd5
00006B7D  8F06B200          pop word [0xb2]
00006B81  8BD3              mov dx,bx
00006B83  C3                ret
00006B84  E953DD            jmp word 0x48da
00006B87  5B                pop bx
00006B88  155B15            adc ax,0x155b
00006B8B  5B                pop bx
00006B8C  15F838            adc ax,0x38f8
00006B8F  93                xchg ax,bx
00006B90  385B15            cmp [bp+di+0x15],bl
00006B93  83385B            cmp word [bx+si],byte +0x5b
00006B96  155B15            adc ax,0x155b
00006B99  9B38F0            wait cmp al,dh
00006B9C  38F3              cmp bl,dh
00006B9E  385B15            cmp [bp+di+0x15],bl
00006BA1  5B                pop bx
00006BA2  155B15            adc ax,0x155b
00006BA5  F8                clc
00006BA6  385B15            cmp [bp+di+0x15],bl
00006BA9  5B                pop bx
00006BAA  154B38            adc ax,0x384b
00006BAD  7A38              jpe 0x6be7
00006BAF  64385B15          cmp [fs:bp+di+0x15],bl
00006BB3  5B                pop bx
00006BB4  155B15            adc ax,0x155b
00006BB7  C3                ret
00006BB8  E910DD            jmp word 0x48cb
00006BBB  51                push cx
00006BBC  52                push dx
00006BBD  53                push bx
00006BBE  33C9              xor cx,cx
00006BC0  880E1501          mov [0x115],cl
00006BC4  33D2              xor dx,dx
00006BC6  B401              mov ah,0x1
00006BC8  E8E1E7            call word 0x53ac
00006BCB  A0A406            mov al,[0x6a4]
00006BCE  8804              mov [si],al
00006BD0  5B                pop bx
00006BD1  5A                pop dx
00006BD2  59                pop cx
00006BD3  C3                ret
00006BD4  803E150100        cmp byte [0x115],0x0
00006BD9  740A              jz 0x6be5
00006BDB  C606150100        mov byte [0x115],0x0
00006BE0  A01401            mov al,[0x114]
00006BE3  F8                clc
00006BE4  C3                ret
00006BE5  E8C8CE            call word 0x3ab0
00006BE8  F8                clc
00006BE9  C3                ret
00006BEA  C606150101        mov byte [0x115],0x1
00006BEF  A21401            mov [0x114],al
00006BF2  C3                ret
00006BF3  E8A9E7            call word 0x539f
00006BF6  51                push cx
00006BF7  52                push dx
00006BF8  53                push bx
00006BF9  33C9              xor cx,cx
00006BFB  8A161606          mov dl,[0x616]
00006BFF  B402              mov ah,0x2
00006C01  EBC5              jmp short 0x6bc8
00006C03  87D3              xchg dx,bx
00006C05  E857D5            call word 0x415f
00006C08  87D3              xchg dx,bx
00006C0A  C3                ret
00006C0B  32E4              xor ah,ah
00006C0D  3C0D              cmp al,0xd
00006C0F  7449              jz 0x6c5a
00006C11  3C08              cmp al,0x8
00006C13  750E              jnz 0x6c23
00006C15  E823CD            call word 0x393b
00006C18  0AE4              or ah,ah
00006C1A  7402              jz 0x6c1e
00006C1C  FECC              dec ah
00006C1E  E820CD            call word 0x3941
00006C21  EB3A              jmp short 0x6c5d
00006C23  3C09              cmp al,0x9
00006C25  7515              jnz 0x6c3c
00006C27  B020              mov al,0x20
00006C29  E8E7E5            call word 0x5213
00006C2C  E80CCD            call word 0x393b
00006C2F  80FCFF            cmp ah,0xff
00006C32  7405              jz 0x6c39
00006C34  80E407            and ah,0x7
00006C37  75EE              jnz 0x6c27
00006C39  B009              mov al,0x9
00006C3B  C3                ret
00006C3C  3C20              cmp al,0x20
00006C3E  721D              jc 0x6c5d
00006C40  E8F8CC            call word 0x393b
00006C43  803E1606FF        cmp byte [0x616],0xff
00006C48  7409              jz 0x6c53
00006C4A  3A261606          cmp ah,[0x616]
00006C4E  7503              jnz 0x6c53
00006C50  E8270D            call word 0x797a
00006C53  80FCFF            cmp ah,0xff
00006C56  7405              jz 0x6c5d
00006C58  FEC4              inc ah
00006C5A  E8E4CC            call word 0x3941
00006C5D  E9BACE            jmp word 0x3b1a
00006C60  E9D8CC            jmp word 0x393b
00006C63  8A261606          mov ah,[0x616]
00006C67  C3                ret
00006C68  E87C0C            call word 0x78e7
00006C6B  C3                ret
00006C6C  E8F0D4            call word 0x415f
00006C6F  CB                retf
00006C70  50                push ax
00006C71  E8C7CC            call word 0x393b
00006C74  8ADC              mov bl,ah
00006C76  32FF              xor bh,bh
00006C78  803EB80004        cmp byte [0xb8],0x4
00006C7D  7401              jz 0x6c80
00006C7F  43                inc bx
00006C80  58                pop ax
00006C81  CB                retf
00006C82  A1ED07            mov ax,[0x7ed]
00006C85  3D5000            cmp ax,0x50
00006C88  7306              jnc 0x6c90
00006C8A  F9                stc
00006C8B  EB15              jmp short 0x6ca2
00006C8D  A1ED07            mov ax,[0x7ed]
00006C90  80FC20            cmp ah,0x20
00006C93  7207              jc 0x6c9c
00006C95  80EC20            sub ah,0x20
00006C98  A3ED07            mov [0x7ed],ax
00006C9B  C3                ret
00006C9C  05B01F            add ax,0x1fb0
00006C9F  A3ED07            mov [0x7ed],ax
00006CA2  C3                ret
00006CA3  A1ED07            mov ax,[0x7ed]
00006CA6  3DF03E            cmp ax,0x3ef0
00006CA9  7206              jc 0x6cb1
00006CAB  F9                stc
00006CAC  EB15              jmp short 0x6cc3
00006CAE  A1ED07            mov ax,[0x7ed]
00006CB1  80FC20            cmp ah,0x20
00006CB4  7207              jc 0x6cbd
00006CB6  2DB01F            sub ax,0x1fb0
00006CB9  A3ED07            mov [0x7ed],ax
00006CBC  C3                ret
00006CBD  80C420            add ah,0x20
00006CC0  A3ED07            mov [0x7ed],ax
00006CC3  C3                ret
00006CC4  8AC1              mov al,cl
00006CC6  8A0E8700          mov cl,[0x87]
00006CCA  D20EEB07          ror byte [0x7eb],cl
00006CCE  8AC8              mov cl,al
00006CD0  7201              jc 0x6cd3
00006CD2  C3                ret
00006CD3  FF06ED07          inc word [0x7ed]
00006CD7  C3                ret
00006CD8  8AC1              mov al,cl
00006CDA  8A0E8700          mov cl,[0x87]
00006CDE  D206EB07          rol byte [0x7eb],cl
00006CE2  8AC8              mov cl,al
00006CE4  7201              jc 0x6ce7
00006CE6  C3                ret
00006CE7  FF0EED07          dec word [0x7ed]
00006CEB  C3                ret
00006CEC  8CC6              mov si,es
00006CEE  B800B8            mov ax,0xb800
00006CF1  8EC0              mov es,ax
00006CF3  8B1EED07          mov bx,[0x7ed]
00006CF7  268A07            mov al,[es:bx]
00006CFA  8A16EB07          mov dl,[0x7eb]
00006CFE  22C2              and al,dl
00006D00  8A0E8700          mov cl,[0x87]
00006D04  D2EA              shr dl,cl
00006D06  7204              jc 0x6d0c
00006D08  D2E8              shr al,cl
00006D0A  EBF8              jmp short 0x6d04
00006D0C  8EC6              mov es,si
00006D0E  C3                ret
00006D0F  8CC6              mov si,es
00006D11  B800B8            mov ax,0xb800
00006D14  8EC0              mov es,ax
00006D16  8B1EED07          mov bx,[0x7ed]
00006D1A  268A07            mov al,[es:bx]
00006D1D  3206E007          xor al,[0x7e0]
00006D21  2206EB07          and al,[0x7eb]
00006D25  263007            xor [es:bx],al
00006D28  8EC6              mov es,si
00006D2A  C3                ret
00006D2B  51                push cx
00006D2C  D1EA              shr dx,1
00006D2E  9F                lahf
00006D2F  8BDA              mov bx,dx
00006D31  B102              mov cl,0x2
00006D33  D3E2              shl dx,cl
00006D35  03D3              add dx,bx
00006D37  B104              mov cl,0x4
00006D39  D3E2              shl dx,cl
00006D3B  9E                sahf
00006D3C  7304              jnc 0x6d42
00006D3E  81C20020          add dx,0x2000
00006D42  8916ED07          mov [0x7ed],dx
00006D46  5A                pop dx
00006D47  8ACA              mov cl,dl
00006D49  F606870001        test byte [0x87],0x1
00006D4E  7413              jz 0x6d63
00006D50  80E107            and cl,0x7
00006D53  B080              mov al,0x80
00006D55  D2E8              shr al,cl
00006D57  A2EB07            mov [0x7eb],al
00006D5A  B103              mov cl,0x3
00006D5C  D3EA              shr dx,cl
00006D5E  0116ED07          add [0x7ed],dx
00006D62  C3                ret
00006D63  80E103            and cl,0x3
00006D66  02C9              add cl,cl
00006D68  B0C0              mov al,0xc0
00006D6A  D2E8              shr al,cl
00006D6C  A2EB07            mov [0x7eb],al
00006D6F  B102              mov cl,0x2
00006D71  D3EA              shr dx,cl
00006D73  0116ED07          add [0x7ed],dx
00006D77  C3                ret
00006D78  3C04              cmp al,0x4
00006D7A  7318              jnc 0x6d94
00006D7C  F606870001        test byte [0x87],0x1
00006D81  7409              jz 0x6d8c
00006D83  2401              and al,0x1
00006D85  F6D8              neg al
00006D87  A2E007            mov [0x7e0],al
00006D8A  F8                clc
00006D8B  C3                ret
00006D8C  B155              mov cl,0x55
00006D8E  F6E1              mul cl
00006D90  A2E007            mov [0x7e0],al
00006D93  F8                clc
00006D94  C3                ret
00006D95  A08700            mov al,[0x87]
00006D98  0AC0              or al,al
00006D9A  742D              jz 0x6dc9
00006D9C  0AED              or ch,ch
00006D9E  7824              js 0x6dc4
00006DA0  BB8002            mov bx,0x280
00006DA3  A801              test al,0x1
00006DA5  7502              jnz 0x6da9
00006DA7  D1EB              shr bx,1
00006DA9  3BCB              cmp cx,bx
00006DAB  9F                lahf
00006DAC  7203              jc 0x6db1
00006DAE  4B                dec bx
00006DAF  8BCB              mov cx,bx
00006DB1  0AF6              or dh,dh
00006DB3  780C              js 0x6dc1
00006DB5  81FAC800          cmp dx,0xc8
00006DB9  7204              jc 0x6dbf
00006DBB  BAC700            mov dx,0xc7
00006DBE  C3                ret
00006DBF  9E                sahf
00006DC0  C3                ret
00006DC1  33D2              xor dx,dx
00006DC3  C3                ret
00006DC4  33C9              xor cx,cx
00006DC6  9F                lahf
00006DC7  EBE8              jmp short 0x6db1
00006DC9  E9FFDA            jmp word 0x48cb
00006DCC  BBD500            mov bx,0xd5
00006DCF  BA3301            mov dx,0x133
00006DD2  F606870001        test byte [0x87],0x1
00006DD7  7405              jz 0x6dde
00006DD9  D1EB              shr bx,1
00006DDB  43                inc bx
00006DDC  03D2              add dx,dx
00006DDE  C3                ret
00006DDF  8CC6              mov si,es
00006DE1  B800B8            mov ax,0xb800
00006DE4  8EC0              mov es,ax
00006DE6  8BD3              mov dx,bx
00006DE8  0BD2              or dx,dx
00006DEA  746B              jz 0x6e57
00006DEC  8B1EED07          mov bx,[0x7ed]
00006DF0  268A2F            mov ch,[es:bx]
00006DF3  A0EB07            mov al,[0x7eb]
00006DF6  8AE0              mov ah,al
00006DF8  F6D0              not al
00006DFA  8A0E8700          mov cl,[0x87]
00006DFE  8A1EE007          mov bl,[0x7e0]
00006E02  22E8              and ch,al
00006E04  8AFC              mov bh,ah
00006E06  22FB              and bh,bl
00006E08  0AEF              or ch,bh
00006E0A  4A                dec dx
00006E0B  743F              jz 0x6e4c
00006E0D  D2C8              ror al,cl
00006E0F  D2CC              ror ah,cl
00006E11  73EF              jnc 0x6e02
00006E13  8B1EED07          mov bx,[0x7ed]
00006E17  26882F            mov [es:bx],ch
00006E1A  FF06ED07          inc word [0x7ed]
00006E1E  8826EB07          mov [0x7eb],ah
00006E22  8BCA              mov cx,dx
00006E24  D1E9              shr cx,1
00006E26  D1E9              shr cx,1
00006E28  F606870001        test byte [0x87],0x1
00006E2D  7506              jnz 0x6e35
00006E2F  81E20300          and dx,0x3
00006E33  EB06              jmp short 0x6e3b
00006E35  81E20700          and dx,0x7
00006E39  D1E9              shr cx,1
00006E3B  E3AB              jcxz 0x6de8
00006E3D  A0E007            mov al,[0x7e0]
00006E40  8B3EED07          mov di,[0x7ed]
00006E44  F3AA              rep stosb
00006E46  893EED07          mov [0x7ed],di
00006E4A  EB9C              jmp short 0x6de8
00006E4C  8B1EED07          mov bx,[0x7ed]
00006E50  26882F            mov [es:bx],ch
00006E53  8826EB07          mov [0x7eb],ah
00006E57  8EC6              mov es,si
00006E59  C3                ret
00006E5A  9F                lahf
00006E5B  83C304            add bx,byte +0x4
00006E5E  891EE507          mov [0x7e5],bx
00006E62  890EE207          mov [0x7e2],cx
00006E66  8AD8              mov bl,al
00006E68  A0EB07            mov al,[0x7eb]
00006E6B  32FF              xor bh,bh
00006E6D  D0E0              shl al,1
00006E6F  7204              jc 0x6e75
00006E71  FEC7              inc bh
00006E73  EBF8              jmp short 0x6e6d
00006E75  883EE407          mov [0x7e4],bh
00006E79  9E                sahf
00006E7A  730B              jnc 0x6e87
00006E7C  32FF              xor bh,bh
00006E7E  03DB              add bx,bx
00006E80  8B871601          mov ax,[bx+0x116]
00006E84  A3E907            mov [0x7e9],ax
00006E87  C3                ret
00006E88  F6D0              not al
00006E8A  263205            xor al,[es:di]
00006E8D  22C5              and al,ch
00006E8F  263005            xor [es:di],al
00006E92  47                inc di
00006E93  C3                ret
00006E94  F6D5              not ch
00006E96  0AC5              or al,ch
00006E98  F6D5              not ch
00006E9A  262005            and [es:di],al
00006E9D  47                inc di
00006E9E  C3                ret
00006E9F  22C5              and al,ch
00006EA1  260805            or [es:di],al
00006EA4  47                inc di
00006EA5  C3                ret
00006EA6  22C5              and al,ch
00006EA8  263005            xor [es:di],al
00006EAB  47                inc di
00006EAC  C3                ret
00006EAD  06                push es
00006EAE  E8D800            call word 0x6f89
00006EB1  F6D9              neg cl
00006EB3  80E107            and cl,0x7
00006EB6  8AE9              mov ch,cl
00006EB8  7416              jz 0x6ed0
00006EBA  32E4              xor ah,ah
00006EBC  268A05            mov al,[es:di]
00006EBF  47                inc di
00006EC0  4A                dec dx
00006EC1  7831              js 0x6ef4
00006EC3  F9                stc
00006EC4  D0DC              rcr ah,1
00006EC6  FECD              dec ch
00006EC8  75F6              jnz 0x6ec0
00006ECA  D2C8              ror al,cl
00006ECC  22E0              and ah,al
00006ECE  8ADC              mov bl,ah
00006ED0  8BEA              mov bp,dx
00006ED2  81E20700          and dx,0x7
00006ED6  D1ED              shr bp,1
00006ED8  D1ED              shr bp,1
00006EDA  D1ED              shr bp,1
00006EDC  268A05            mov al,[es:di]
00006EDF  47                inc di
00006EE0  4D                dec bp
00006EE1  7819              js 0x6efc
00006EE3  E80200            call word 0x6ee8
00006EE6  EBF4              jmp short 0x6edc
00006EE8  32E4              xor ah,ah
00006EEA  D3C8              ror ax,cl
00006EEC  0AC3              or al,bl
00006EEE  8804              mov [si],al
00006EF0  8ADC              mov bl,ah
00006EF2  46                inc si
00006EF3  C3                ret
00006EF4  D2C8              ror al,cl
00006EF6  22C4              and al,ah
00006EF8  8AD8              mov bl,al
00006EFA  EB24              jmp short 0x6f20
00006EFC  86D1              xchg dl,cl
00006EFE  B4FF              mov ah,0xff
00006F00  D2EC              shr ah,cl
00006F02  80F4FF            xor ah,0xff
00006F05  8ACA              mov cl,dl
00006F07  7413              jz 0x6f1c
00006F09  22C4              and al,ah
00006F0B  8AF0              mov dh,al
00006F0D  32C0              xor al,al
00006F0F  D3E8              shr ax,cl
00006F11  8AF8              mov bh,al
00006F13  8AC6              mov al,dh
00006F15  E8D0FF            call word 0x6ee8
00006F18  0AFF              or bh,bh
00006F1A  7451              jz 0x6f6d
00006F1C  0AC9              or cl,cl
00006F1E  744D              jz 0x6f6d
00006F20  881C              mov [si],bl
00006F22  46                inc si
00006F23  EB48              jmp short 0x6f6d
00006F25  90                nop
00006F26  06                push es
00006F27  E85F00            call word 0x6f89
00006F2A  B5FF              mov ch,0xff
00006F2C  D2ED              shr ch,cl
00006F2E  8BEA              mov bp,dx
00006F30  B6FF              mov dh,0xff
00006F32  D1ED              shr bp,1
00006F34  D1ED              shr bp,1
00006F36  D1ED              shr bp,1
00006F38  740F              jz 0x6f49
00006F3A  8AF5              mov dh,ch
00006F3C  E83D00            call word 0x6f7c
00006F3F  B5FF              mov ch,0xff
00006F41  4D                dec bp
00006F42  75F8              jnz 0x6f3c
00006F44  80E207            and dl,0x7
00006F47  742A              jz 0x6f73
00006F49  86CA              xchg cl,dl
00006F4B  B800FF            mov ax,0xff00
00006F4E  D2EC              shr ah,cl
00006F50  F6D4              not ah
00006F52  8ACA              mov cl,dl
00006F54  D3E8              shr ax,cl
00006F56  8AF8              mov bh,al
00006F58  22EC              and ch,ah
00006F5A  F6D6              not dh
00006F5C  0AEE              or ch,dh
00006F5E  E81B00            call word 0x6f7c
00006F61  0AFF              or bh,bh
00006F63  7408              jz 0x6f6d
00006F65  8AEF              mov ch,bh
00006F67  8AC3              mov al,bl
00006F69  FF16E907          call word [0x7e9]
00006F6D  8936E507          mov [0x7e5],si
00006F71  07                pop es
00006F72  C3                ret
00006F73  80F6FF            xor dh,0xff
00006F76  8AEE              mov ch,dh
00006F78  74F3              jz 0x6f6d
00006F7A  EBEB              jmp short 0x6f67
00006F7C  AC                lodsb
00006F7D  32E4              xor ah,ah
00006F7F  D3C8              ror ax,cl
00006F81  0AC3              or al,bl
00006F83  8ADC              mov bl,ah
00006F85  FF26E907          jmp word [0x7e9]
00006F89  8B16E207          mov dx,[0x7e2]
00006F8D  B800B8            mov ax,0xb800
00006F90  8EC0              mov es,ax
00006F92  8B3EED07          mov di,[0x7ed]
00006F96  8B36E507          mov si,[0x7e5]
00006F9A  8A0EE407          mov cl,[0x7e4]
00006F9E  33DB              xor bx,bx
00006FA0  32ED              xor ch,ch
00006FA2  C3                ret
00006FA3  8A2EE007          mov ch,[0x7e0]
00006FA7  0AC0              or al,al
00006FA9  7902              jns 0x6fad
00006FAB  8AC5              mov al,ch
00006FAD  E8C8FD            call word 0x6d78
00006FB0  A2E107            mov [0x7e1],al
00006FB3  882EE007          mov [0x7e0],ch
00006FB7  C3                ret
00006FB8  8AC7              mov al,bh
00006FBA  32C2              xor al,dl
00006FBC  22C5              and al,ch
00006FBE  740B              jz 0x6fcb
00006FC0  8AC7              mov al,bh
00006FC2  32C6              xor al,dh
00006FC4  22C5              and al,ch
00006FC6  0AD8              or bl,al
00006FC8  32F8              xor bh,al
00006FCA  F9                stc
00006FCB  C3                ret
00006FCC  8A0E8700          mov cl,[0x87]
00006FD0  D2C5              rol ch,cl
00006FD2  7347              jnc 0x701b
00006FD4  26883D            mov [es:di],bh
00006FD7  E81600            call word 0x6ff0
00006FDA  9F                lahf
00006FDB  4F                dec di
00006FDC  268A3D            mov bh,[es:di]
00006FDF  9E                sahf
00006FE0  C3                ret
00006FE1  8A0E8700          mov cl,[0x87]
00006FE5  D2CD              ror ch,cl
00006FE7  7332              jnc 0x701b
00006FE9  26883D            mov [es:di],bh
00006FEC  47                inc di
00006FED  268A3D            mov bh,[es:di]
00006FF0  F7C70F00          test di,0xf
00006FF4  7525              jnz 0x701b
00006FF6  8BC7              mov ax,di
00006FF8  B104              mov cl,0x4
00006FFA  8BF3              mov si,bx
00006FFC  8AFC              mov bh,ah
00006FFE  D3E8              shr ax,cl
00007000  240F              and al,0xf
00007002  80E70F            and bh,0xf
00007005  D0EC              shr ah,1
00007007  12C7              adc al,bh
00007009  8BDE              mov bx,si
0000700B  41                inc cx
0000700C  02C1              add al,cl
0000700E  3C19              cmp al,0x19
00007010  7202              jc 0x7014
00007012  2C19              sub al,0x19
00007014  7404              jz 0x701a
00007016  2AC1              sub al,cl
00007018  73FA              jnc 0x7014
0000701A  F5                cmc
0000701B  C3                ret
0000701C  B800B8            mov ax,0xb800
0000701F  8EC0              mov es,ax
00007021  8B3EED07          mov di,[0x7ed]
00007025  8A2EEB07          mov ch,[0x7eb]
00007029  8A16E107          mov dl,[0x7e1]
0000702D  8A36E007          mov dh,[0x7e0]
00007031  32DB              xor bl,bl
00007033  268A3D            mov bh,[es:di]
00007036  C3                ret
00007037  06                push es
00007038  BDFFFF            mov bp,0xffff
0000703B  E8DEFF            call word 0x701c
0000703E  45                inc bp
0000703F  E88AFF            call word 0x6fcc
00007042  7205              jc 0x7049
00007044  E871FF            call word 0x6fb8
00007047  72F5              jc 0x703e
00007049  E895FF            call word 0x6fe1
0000704C  26883D            mov [es:di],bh
0000704F  893EED07          mov [0x7ed],di
00007053  882EEB07          mov [0x7eb],ch
00007057  8ACB              mov cl,bl
00007059  8BDD              mov bx,bp
0000705B  07                pop es
0000705C  C3                ret
0000705D  06                push es
0000705E  8BEA              mov bp,dx
00007060  E8B9FF            call word 0x701c
00007063  E852FF            call word 0x6fb8
00007066  720D              jc 0x7075
00007068  4D                dec bp
00007069  7407              jz 0x7072
0000706B  E873FF            call word 0x6fe1
0000706E  73F3              jnc 0x7063
00007070  33ED              xor bp,bp
00007072  55                push bp
00007073  EB23              jmp short 0x7098
00007075  893EEF07          mov [0x7ef],di
00007079  882EEC07          mov [0x7ec],ch
0000707D  55                push bp
0000707E  33ED              xor bp,bp
00007080  EB05              jmp short 0x7087
00007082  E833FF            call word 0x6fb8
00007085  7309              jnc 0x7090
00007087  45                inc bp
00007088  E856FF            call word 0x6fe1
0000708B  73F5              jnc 0x7082
0000708D  E83CFF            call word 0x6fcc
00007090  893EED07          mov [0x7ed],di
00007094  882EEB07          mov [0x7eb],ch
00007098  5A                pop dx
00007099  26883D            mov [es:di],bh
0000709C  8ACB              mov cl,bl
0000709E  8BDD              mov bx,bp
000070A0  07                pop es
000070A1  C3                ret
000070A2  E89408            call word 0x7939
000070A5  BE5439            mov si,0x3954
000070A8  7303              jnc 0x70ad
000070AA  BE6839            mov si,0x3968
000070AD  93                xchg ax,bx
000070AE  E89308            call word 0x7944
000070B1  BF3E39            mov di,0x393e
000070B4  7303              jnc 0x70b9
000070B6  BF1D39            mov di,0x391d
000070B9  3BC3              cmp ax,bx
000070BB  7203              jc 0x70c0
000070BD  87F7              xchg si,di
000070BF  93                xchg ax,bx
000070C0  8BEE              mov bp,si
000070C2  893EE707          mov [0x7e7],di
000070C6  8BF3              mov si,bx
000070C8  97                xchg ax,di
000070C9  8B0E1206          mov cx,[0x612]
000070CD  8B161406          mov dx,[0x614]
000070D1  E857FC            call word 0x6d2b
000070D4  8BD6              mov dx,si
000070D6  D1FA              sar dx,1
000070D8  8BCE              mov cx,si
000070DA  41                inc cx
000070DB  06                push es
000070DC  B800B8            mov ax,0xb800
000070DF  8EC0              mov es,ax
000070E1  8B1EED07          mov bx,[0x7ed]
000070E5  268A07            mov al,[es:bx]
000070E8  3206E007          xor al,[0x7e0]
000070EC  2206EB07          and al,[0x7eb]
000070F0  263007            xor [es:bx],al
000070F3  03D7              add dx,di
000070F5  3BD6              cmp dx,si
000070F7  7206              jc 0x70ff
000070F9  2BD6              sub dx,si
000070FB  FF16E707          call word [0x7e7]
000070FF  FFD5              call bp
00007101  E2DE              loop 0x70e1
00007103  07                pop es
00007104  C3                ret
00007105  05713F            add ax,0x3f71
00007108  0E                push cs
00007109  653F              gs aas
0000710B  1B563F            sbb dx,[bp+0x3f]
0000710E  1C4F              sbb al,0x4f
00007110  3F                aas
00007111  1D993E            sbb ax,0x3e99
00007114  0DA73F            or ax,0x3fa7
00007117  03D1              add dx,cx
00007119  0412              add al,0x12
0000711B  B23F              mov dl,0x3f
0000711D  08473E            or [bx+0x3e],al
00007120  7F3F              jg 0x7161
00007122  3E06              ds push es
00007124  A13E02            mov ax,[0x23e]
00007127  A13E1E            mov ax,[0x1e3e]
0000712A  A13E1F            mov ax,[0x1f3e]
0000712D  A13E0B            mov ax,[0xb3e]
00007130  A13E0C            mov ax,[0xc3e]
00007133  A13E0A            mov ax,[0xa3e]
00007136  A13EBC            mov ax,[0xbc3e]
00007139  3E4B              ds dec bx
0000713B  1D4D1C            sbb ax,0x1c4d
0000713E  1C0A              sbb al,0xa
00007140  7406              jz 0x7148
00007142  7302              jnc 0x7146
00007144  7601              jna 0x7147
00007146  52                push dx
00007147  12537F            adc dl,[bp+di+0x7f]
0000714A  4F                dec di
0000714B  0E                push cs
0000714C  7505              jnz 0x7153
0000714E  47                inc di
0000714F  0B770C            or si,[bx+0xc]
00007152  48                dec ax
00007153  1E                push ds
00007154  50                push ax
00007155  1F                pop ds
00007156  A15300            mov ax,[0x53]
00007159  A3F207            mov [0x7f2],ax
0000715C  C606C006FF        mov byte [0x6c0],0xff
00007161  A1F207            mov ax,[0x7f2]
00007164  A3F607            mov [0x7f6],ax
00007167  BB0000            mov bx,0x0
0000716A  881EC106          mov [0x6c1],bl
0000716E  B8FE3D            mov ax,0x3dfe
00007171  50                push ax
00007172  8926F807          mov [0x7f8],sp
00007176  E891C8            call word 0x3a0a
00007179  E865C8            call word 0x39e1
0000717C  E831C9            call word 0x3ab0
0000717F  E864C8            call word 0x39e6
00007182  E885C8            call word 0x3a0a
00007185  0AC0              or al,al
00007187  7508              jnz 0x7191
00007189  E89B01            call word 0x7327
0000718C  7503              jnz 0x7191
0000718E  E98000            jmp word 0x7211
00007191  BE953D            mov si,0x3d95
00007194  B91100            mov cx,0x11
00007197  2E3A04            cmp al,[cs:si]
0000719A  7406              jz 0x71a2
0000719C  83C603            add si,byte +0x3
0000719F  E2F6              loop 0x7197
000071A1  4E                dec si
000071A2  80F90A            cmp cl,0xa
000071A5  7604              jna 0x71ab
000071A7  882E2001          mov [0x120],ch
000071AB  2EFF6401          jmp word [cs:si+0x1]
000071AF  3A1EC106          cmp bl,[0x6c1]
000071B3  720B              jc 0x71c0
000071B5  EB51              jmp short 0x7208
000071B7  0ADB              or bl,bl
000071B9  744D              jz 0x7208
000071BB  B01D              mov al,0x1d
000071BD  E84900            call word 0x7209
000071C0  53                push bx
000071C1  FF365300          push word [0x53]
000071C5  8A0EC106          mov cl,[0x6c1]
000071C9  2ACB              sub cl,bl
000071CB  B500              mov ch,0x0
000071CD  49                dec cx
000071CE  740E              jz 0x71de
000071D0  8A87C306          mov al,[bx+0x6c3]
000071D4  8887C206          mov [bx+0x6c2],al
000071D8  E83FC9            call word 0x3b1a
000071DB  43                inc bx
000071DC  E2F2              loop 0x71d0
000071DE  B020              mov al,0x20
000071E0  E837C9            call word 0x3b1a
000071E3  5A                pop dx
000071E4  E864C7            call word 0x394b
000071E7  5B                pop bx
000071E8  FE0EC106          dec byte [0x6c1]
000071EC  8B16F607          mov dx,[0x7f6]
000071F0  80FE01            cmp dh,0x1
000071F3  770D              ja 0x7202
000071F5  80FA01            cmp dl,0x1
000071F8  740E              jz 0x7208
000071FA  FECA              dec dl
000071FC  8A361606          mov dh,[0x616]
00007200  FEC6              inc dh
00007202  FECE              dec dh
00007204  8916F607          mov [0x7f6],dx
00007208  C3                ret
00007209  0ADB              or bl,bl
0000720B  74FB              jz 0x7208
0000720D  4B                dec bx
0000720E  E909C9            jmp word 0x3b1a
00007211  53                push bx
00007212  52                push dx
00007213  B9E803            mov cx,0x3e8
00007216  BA2000            mov dx,0x20
00007219  E81BCA            call word 0x3c37
0000721C  B9F401            mov cx,0x1f4
0000721F  BA2000            mov dx,0x20
00007222  E812CA            call word 0x3c37
00007225  5A                pop dx
00007226  5B                pop bx
00007227  8B26F807          mov sp,[0x7f8]
0000722B  C3                ret
0000722C  3C09              cmp al,0x9
0000722E  7527              jnz 0x7257
00007230  8A165400          mov dl,[0x54]
00007234  80E207            and dl,0x7
00007237  F6D2              not dl
00007239  80C208            add dl,0x8
0000723C  FEC2              inc dl
0000723E  8AC2              mov al,dl
00007240  B400              mov ah,0x0
00007242  0206C106          add al,[0x6c1]
00007246  3DFF00            cmp ax,0xff
00007249  73C6              jnc 0x7211
0000724B  B020              mov al,0x20
0000724D  52                push dx
0000724E  E80600            call word 0x7257
00007251  5A                pop dx
00007252  FECA              dec dl
00007254  75F5              jnz 0x724b
00007256  C3                ret
00007257  803E200100        cmp byte [0x120],0x0
0000725C  7442              jz 0x72a0
0000725E  3A1EC106          cmp bl,[0x6c1]
00007262  733C              jnc 0x72a0
00007264  81FBFF00          cmp bx,0xff
00007268  73A7              jnc 0x7211
0000726A  53                push bx
0000726B  FF365300          push word [0x53]
0000726F  8F06F407          pop word [0x7f4]
00007273  8A0EC106          mov cl,[0x6c1]
00007277  B500              mov ch,0x0
00007279  2ACB              sub cl,bl
0000727B  51                push cx
0000727C  8A1EC106          mov bl,[0x6c1]
00007280  8AA7C106          mov ah,[bx+0x6c1]
00007284  88A7C206          mov [bx+0x6c2],ah
00007288  4B                dec bx
00007289  E2F5              loop 0x7280
0000728B  59                pop cx
0000728C  41                inc cx
0000728D  50                push ax
0000728E  E81300            call word 0x72a4
00007291  8A87C206          mov al,[bx+0x6c2]
00007295  E2F7              loop 0x728e
00007297  8B16F407          mov dx,[0x7f4]
0000729B  E8ADC6            call word 0x394b
0000729E  58                pop ax
0000729F  5B                pop bx
000072A0  8887C206          mov [bx+0x6c2],al
000072A4  81FBFF00          cmp bx,0xff
000072A8  73BE              jnc 0x7268
000072AA  43                inc bx
000072AB  E86CC8            call word 0x3b1a
000072AE  3A1EC106          cmp bl,[0x6c1]
000072B2  720A              jc 0x72be
000072B4  881EC106          mov [0x6c1],bl
000072B8  A15300            mov ax,[0x53]
000072BB  A3F607            mov [0x7f6],ax
000072BE  C3                ret
000072BF  3A1EC106          cmp bl,[0x6c1]
000072C3  72DF              jc 0x72a4
000072C5  C3                ret
000072C6  8B16F207          mov dx,[0x7f2]
000072CA  B300              mov bl,0x0
000072CC  B020              mov al,0x20
000072CE  E82200            call word 0x72f3
000072D1  5B                pop bx
000072D2  E98CFE            jmp word 0x7161
000072D5  8B16F607          mov dx,[0x7f6]
000072D9  E86FC6            call word 0x394b
000072DC  8A1EC106          mov bl,[0x6c1]
000072E0  C3                ret
000072E1  8B165300          mov dx,[0x53]
000072E5  E80B00            call word 0x72f3
000072E8  A15300            mov ax,[0x53]
000072EB  A3F607            mov [0x7f6],ax
000072EE  881EC106          mov [0x6c1],bl
000072F2  C3                ret
000072F3  52                push dx
000072F4  53                push bx
000072F5  E853C6            call word 0x394b
000072F8  5B                pop bx
000072F9  5A                pop dx
000072FA  8A26C106          mov ah,[0x6c1]
000072FE  2AE3              sub ah,bl
00007300  B020              mov al,0x20
00007302  53                push bx
00007303  52                push dx
00007304  0AE4              or ah,ah
00007306  7409              jz 0x7311
00007308  50                push ax
00007309  E80EC8            call word 0x3b1a
0000730C  58                pop ax
0000730D  FECC              dec ah
0000730F  EBF3              jmp short 0x7304
00007311  5A                pop dx
00007312  E836C6            call word 0x394b
00007315  5B                pop bx
00007316  C3                ret
00007317  5E                pop si
00007318  8A1EC106          mov bl,[0x6c1]
0000731C  C687C20600        mov byte [bx+0x6c2],0x0
00007321  C3                ret
00007322  F6162001          not byte [0x120]
00007326  C3                ret
00007327  51                push cx
00007328  56                push si
00007329  BECA3D            mov si,0x3dca
0000732C  B10E              mov cl,0xe
0000732E  2EAC              cs lodsb
00007330  3AE0              cmp ah,al
00007332  7409              jz 0x733d
00007334  46                inc si
00007335  FEC9              dec cl
00007337  75F5              jnz 0x732e
00007339  32C0              xor al,al
0000733B  EB02              jmp short 0x733f
0000733D  2EAC              cs lodsb
0000733F  0AC0              or al,al
00007341  5E                pop si
00007342  59                pop cx
00007343  C3                ret
00007344  50                push ax
00007345  56                push si
00007346  43                inc bx
00007347  80E3FE            and bl,0xfe
0000734A  BE3A08            mov si,0x83a
0000734D  FE04              inc byte [si]
0000734F  7503              jnz 0x7354
00007351  C604FF            mov byte [si],0xff
00007354  8B36FA07          mov si,[0x7fa]
00007358  33C0              xor ax,ax
0000735A  03F0              add si,ax
0000735C  AD                lodsw
0000735D  A801              test al,0x1
0000735F  741E              jz 0x737f
00007361  3DFFFF            cmp ax,0xffff
00007364  7435              jz 0x739b
00007366  48                dec ax
00007367  3BC3              cmp ax,bx
00007369  72EF              jc 0x735a
0000736B  03F3              add si,bx
0000736D  8936FA07          mov [0x7fa],si
00007371  2BC3              sub ax,bx
00007373  7403              jz 0x7378
00007375  48                dec ax
00007376  8904              mov [si],ax
00007378  2BF3              sub si,bx
0000737A  8BDE              mov bx,si
0000737C  5E                pop si
0000737D  58                pop ax
0000737E  C3                ret
0000737F  93                xchg ax,bx
00007380  0337              add si,[bx]
00007382  46                inc si
00007383  81E6FEFF          and si,0xfffe
00007387  93                xchg ax,bx
00007388  EBD2              jmp short 0x735c
0000738A  E84C00            call word 0x73d9
0000738D  8B36FA07          mov si,[0x7fa]
00007391  3B1C              cmp bx,[si]
00007393  76C7              jna 0x735c
00007395  E945D5            jmp word 0x48dd
00007398  5B                pop bx
00007399  EBB9              jmp short 0x7354
0000739B  B000              mov al,0x0
0000739D  86063A08          xchg al,[0x83a]
000073A1  3C06              cmp al,0x6
000073A3  72E5              jc 0x738a
000073A5  53                push bx
000073A6  8B362406          mov si,[0x624]
000073AA  8936FA07          mov [0x7fa],si
000073AE  B3FF              mov bl,0xff
000073B0  AD                lodsw
000073B1  3DFFFF            cmp ax,0xffff
000073B4  74E2              jz 0x7398
000073B6  A801              test al,0x1
000073B8  7415              jz 0x73cf
000073BA  80FBFF            cmp bl,0xff
000073BD  7507              jnz 0x73c6
000073BF  8BDE              mov bx,si
000073C1  03F0              add si,ax
000073C3  4E                dec si
000073C4  EBEA              jmp short 0x73b0
000073C6  03F0              add si,ax
000073C8  4E                dec si
000073C9  40                inc ax
000073CA  0147FE            add [bx-0x2],ax
000073CD  EBE1              jmp short 0x73b0
000073CF  93                xchg ax,bx
000073D0  0337              add si,[bx]
000073D2  46                inc si
000073D3  81E6FEFF          and si,0xfffe
000073D7  EBD5              jmp short 0x73ae
000073D9  50                push ax
000073DA  53                push bx
000073DB  56                push si
000073DC  57                push di
000073DD  B80100            mov ax,0x1
000073E0  8B362406          mov si,[0x624]
000073E4  8BFE              mov di,si
000073E6  48                dec ax
000073E7  03F0              add si,ax
000073E9  AD                lodsw
000073EA  3DFFFF            cmp ax,0xffff
000073ED  7423              jz 0x7412
000073EF  A801              test al,0x1
000073F1  75F3              jnz 0x73e6
000073F3  AB                stosw
000073F4  93                xchg ax,bx
000073F5  8B07              mov ax,[bx]
000073F7  3B7702            cmp si,[bx+0x2]
000073FA  7529              jnz 0x7425
000073FC  40                inc ax
000073FD  3BF7              cmp si,di
000073FF  740B              jz 0x740c
00007401  897F02            mov [bx+0x2],di
00007404  91                xchg ax,cx
00007405  D1E9              shr cx,1
00007407  F3A5              rep movsw
00007409  91                xchg ax,cx
0000740A  EBDD              jmp short 0x73e9
0000740C  24FE              and al,0xfe
0000740E  03F8              add di,ax
00007410  EBD5              jmp short 0x73e7
00007412  2BF7              sub si,di
00007414  83EE04            sub si,byte +0x4
00007417  7203              jc 0x741c
00007419  46                inc si
0000741A  8935              mov [di],si
0000741C  893EFA07          mov [0x7fa],di
00007420  5F                pop di
00007421  5E                pop si
00007422  5B                pop bx
00007423  58                pop ax
00007424  C3                ret
00007425  E81500            call word 0x743d
00007428  E8E105            call word 0x7a0c
0000742B  206475            and [si+0x75],ah
0000742E  7269              jc 0x7499
00007430  6E                outsb
00007431  6720472E          and [edi+0x2e],al
00007435  43                inc bx
00007436  AE                scasb
00007437  E88705            call word 0x79c1
0000743A  E90CC3            jmp word 0x3749
0000743D  E88105            call word 0x79c1
00007440  E8C905            call word 0x7a0c
00007443  49                dec cx
00007444  6E                outsb
00007445  7465              jz 0x74ac
00007447  726E              jc 0x74b7
00007449  61                popaw
0000744A  6C                insb
0000744B  204572            and [di+0x72],al
0000744E  726F              jc 0x74bf
00007450  7220              jc 0x7472
00007452  2D2053            sub ax,0x5320
00007455  7472              jz 0x74c9
00007457  696E672053        imul bp,[bp+0x67],word 0x5320
0000745C  7061              jo 0x74bf
0000745E  636520            arpl [di+0x20],sp
00007461  43                inc bx
00007462  6F                outsw
00007463  7272              jc 0x74d7
00007465  7570              jnz 0x74d7
00007467  F4                hlt
00007468  C3                ret
00007469  0BDB              or bx,bx
0000746B  7424              jz 0x7491
0000746D  833EFC0700        cmp word [0x7fc],byte +0x0
00007472  7424              jz 0x7498
00007474  56                push si
00007475  53                push bx
00007476  E8CBFE            call word 0x7344
00007479  8B36FC07          mov si,[0x7fc]
0000747D  8B14              mov dx,[si]
0000747F  8916FC07          mov [0x7fc],dx
00007483  8F04              pop word [si]
00007485  8977FE            mov [bx-0x2],si
00007488  895C02            mov [si+0x2],bx
0000748B  8BD3              mov dx,bx
0000748D  8BDE              mov bx,si
0000748F  5E                pop si
00007490  C3                ret
00007491  BA2201            mov dx,0x122
00007494  BB2401            mov bx,0x124
00007497  C3                ret
00007498  E945D4            jmp word 0x48e0
0000749B  81FB3A08          cmp bx,0x83a
0000749F  7347              jnc 0x74e8
000074A1  81FBFE07          cmp bx,0x7fe
000074A5  F5                cmc
000074A6  C3                ret
000074A7  51                push cx
000074A8  57                push di
000074A9  B9FFFF            mov cx,0xffff
000074AC  B000              mov al,0x0
000074AE  8BFB              mov di,bx
000074B0  F2AE              repne scasb
000074B2  8BC1              mov ax,cx
000074B4  F7D0              not ax
000074B6  48                dec ax
000074B7  5F                pop di
000074B8  59                pop cx
000074B9  C3                ret
000074BA  51                push cx
000074BB  8BCB              mov cx,bx
000074BD  56                push si
000074BE  8BF2              mov si,dx
000074C0  E8A6FF            call word 0x7469
000074C3  57                push di
000074C4  8BFA              mov di,dx
000074C6  8BD6              mov dx,si
000074C8  41                inc cx
000074C9  D1E9              shr cx,1
000074CB  F3A5              rep movsw
000074CD  5F                pop di
000074CE  5E                pop si
000074CF  59                pop cx
000074D0  C3                ret
000074D1  53                push bx
000074D2  BBFE07            mov bx,0x7fe
000074D5  837F02FF          cmp word [bx+0x2],byte -0x1
000074D9  7403              jz 0x74de
000074DB  E81000            call word 0x74ee
000074DE  83C304            add bx,byte +0x4
000074E1  81FB3A08          cmp bx,0x83a
000074E5  72EE              jc 0x74d5
000074E7  5B                pop bx
000074E8  C3                ret
000074E9  E8AFFF            call word 0x749b
000074EC  73FA              jnc 0x74e8
000074EE  E85D00            call word 0x754e
000074F1  50                push ax
000074F2  8BC3              mov ax,bx
000074F4  8706FC07          xchg ax,[0x7fc]
000074F8  8907              mov [bx],ax
000074FA  C74702FFFF        mov word [bx+0x2],0xffff
000074FF  58                pop ax
00007500  C3                ret
00007501  E8D5FE            call word 0x73d9
00007504  50                push ax
00007505  52                push dx
00007506  43                inc bx
00007507  80E3FE            and bl,0xfe
0000750A  A1FA07            mov ax,[0x7fa]
0000750D  93                xchg ax,bx
0000750E  8B17              mov dx,[bx]
00007510  2BD0              sub dx,ax
00007512  7212              jc 0x7526
00007514  8917              mov [bx],dx
00007516  03DA              add bx,dx
00007518  43                inc bx
00007519  C707FFFF          mov word [bx],0xffff
0000751D  43                inc bx
0000751E  891E2606          mov [0x626],bx
00007522  43                inc bx
00007523  5A                pop dx
00007524  58                pop ax
00007525  C3                ret
00007526  E9A8D3            jmp word 0x48d1
00007529  50                push ax
0000752A  51                push cx
0000752B  52                push dx
0000752C  56                push si
0000752D  57                push di
0000752E  51                push cx
0000752F  53                push bx
00007530  8BCA              mov cx,dx
00007532  8BDA              mov bx,dx
00007534  E832FF            call word 0x7469
00007537  8BFA              mov di,dx
00007539  93                xchg ax,bx
0000753A  5B                pop bx
0000753B  5E                pop si
0000753C  037702            add si,[bx+0x2]
0000753F  E8A7FF            call word 0x74e9
00007542  93                xchg ax,bx
00007543  41                inc cx
00007544  D1E9              shr cx,1
00007546  F3A5              rep movsw
00007548  5F                pop di
00007549  5E                pop si
0000754A  5A                pop dx
0000754B  59                pop cx
0000754C  58                pop ax
0000754D  C3                ret
0000754E  50                push ax
0000754F  53                push bx
00007550  8B07              mov ax,[bx]
00007552  8B5F02            mov bx,[bx+0x2]
00007555  3B1E2406          cmp bx,[0x624]
00007559  7213              jc 0x756e
0000755B  3B1E2606          cmp bx,[0x626]
0000755F  770D              ja 0x756e
00007561  40                inc ax
00007562  0C01              or al,0x1
00007564  8747FE            xchg ax,[bx-0x2]
00007567  5B                pop bx
00007568  3BC3              cmp ax,bx
0000756A  7505              jnz 0x7571
0000756C  58                pop ax
0000756D  C3                ret
0000756E  5B                pop bx
0000756F  58                pop ax
00007570  C3                ret
00007571  E8C9FE            call word 0x743d
00007574  E84A04            call word 0x79c1
00007577  E9CFC1            jmp word 0x3749
0000757A  52                push dx
0000757B  8B17              mov dx,[bx]
0000757D  51                push cx
0000757E  33C9              xor cx,cx
00007580  42                inc dx
00007581  E8A5FF            call word 0x7529
00007584  4A                dec dx
00007585  59                pop cx
00007586  53                push bx
00007587  8B5F02            mov bx,[bx+0x2]
0000758A  03DA              add bx,dx
0000758C  C60700            mov byte [bx],0x0
0000758F  5B                pop bx
00007590  5A                pop dx
00007591  C3                ret
00007592  8B3E2406          mov di,[0x624]
00007596  893EFA07          mov [0x7fa],di
0000759A  A12606            mov ax,[0x626]
0000759D  40                inc ax
0000759E  24FE              and al,0xfe
000075A0  2BC7              sub ax,di
000075A2  2D0300            sub ax,0x3
000075A5  AB                stosw
000075A6  03F8              add di,ax
000075A8  C745FFFFFF        mov word [di-0x1],0xffff
000075AD  B90F00            mov cx,0xf
000075B0  BFFE07            mov di,0x7fe
000075B3  893EFC07          mov [0x7fc],di
000075B7  BBFFFF            mov bx,0xffff
000075BA  B80208            mov ax,0x802
000075BD  AB                stosw
000075BE  93                xchg ax,bx
000075BF  AB                stosw
000075C0  93                xchg ax,bx
000075C1  050400            add ax,0x4
000075C4  E2F7              loop 0x75bd
000075C6  C745FC0000        mov word [di-0x4],0x0
000075CB  C6063A0800        mov byte [0x83a],0x0
000075D0  C3                ret
000075D1  33C0              xor ax,ax
000075D3  2E8985F81C        mov [cs:di+0x1cf8],ax
000075D8  C3                ret
000075D9  E946D3            jmp word 0x4922
000075DC  BF6008            mov di,0x860
000075DF  A1B200            mov ax,[0xb2]
000075E2  B220              mov dl,0x20
000075E4  0BC0              or ax,ax
000075E6  7412              jz 0x75fa
000075E8  7904              jns 0x75ee
000075EA  F7D8              neg ax
000075EC  B22D              mov dl,0x2d
000075EE  88163C08          mov [0x83c],dl
000075F2  E84A01            call word 0x773f
000075F5  B200              mov dl,0x0
000075F7  E9B900            jmp word 0x76b3
000075FA  C6063C0820        mov byte [0x83c],0x20
000075FF  B90100            mov cx,0x1
00007602  B200              mov dl,0x0
00007604  BE6008            mov si,0x860
00007607  C60430            mov byte [si],0x30
0000760A  C3                ret
0000760B  803E740804        cmp byte [0x874],0x4
00007610  72CA              jc 0x75dc
00007612  BB9900            mov bx,0x99
00007615  7403              jz 0x761a
00007617  83C320            add bx,byte +0x20
0000761A  8A16B500          mov dl,[0xb5]
0000761E  0AD2              or dl,dl
00007620  74D8              jz 0x75fa
00007622  B600              mov dh,0x0
00007624  2BDA              sub bx,dx
00007626  B020              mov al,0x20
00007628  F606B40080        test byte [0xb4],0x80
0000762D  7402              jz 0x7631
0000762F  B02D              mov al,0x2d
00007631  A23C08            mov [0x83c],al
00007634  8A87E601          mov al,[bx+0x1e6]
00007638  98                cbw
00007639  8BF0              mov si,ax
0000763B  D1E6              shl si,1
0000763D  D1E6              shl si,1
0000763F  D1E6              shl si,1
00007641  81C6CA03          add si,0x3ca
00007645  8A6407            mov ah,[si+0x7]
00007648  02E2              add ah,dl
0000764A  F6D8              neg al
0000764C  50                push ax
0000764D  803E740804        cmp byte [0x874],0x4
00007652  756F              jnz 0x76c3
00007654  8B3EB200          mov di,[0xb2]
00007658  8A0EB400          mov cl,[0xb4]
0000765C  8A5C06            mov bl,[si+0x6]
0000765F  8A4403            mov al,[si+0x3]
00007662  80C980            or cl,0x80
00007665  F6E1              mul cl
00007667  8B7404            mov si,[si+0x4]
0000766A  50                push ax
0000766B  E8A6BE            call word 0x3514
0000766E  5A                pop dx
0000766F  02DE              add bl,dh
00007671  80D700            adc bh,0x0
00007674  150000            adc ax,0x0
00007677  B600              mov dh,0x0
00007679  8AD4              mov dl,ah
0000767B  8AE0              mov ah,al
0000767D  8AC7              mov al,bh
0000767F  59                pop cx
00007680  51                push cx
00007681  86CD              xchg cl,ch
00007683  81E10700          and cx,0x7
00007687  7408              jz 0x7691
00007689  D0E3              shl bl,1
0000768B  D1D0              rcl ax,1
0000768D  D1D2              rcl dx,1
0000768F  E2F8              loop 0x7689
00007691  BF6008            mov di,0x860
00007694  80FB80            cmp bl,0x80
00007697  7706              ja 0x769f
00007699  720A              jc 0x76a5
0000769B  A801              test al,0x1
0000769D  7406              jz 0x76a5
0000769F  050100            add ax,0x1
000076A2  83D200            adc dx,byte +0x0
000076A5  BB1027            mov bx,0x2710
000076A8  F7F3              div bx
000076AA  52                push dx
000076AB  E89100            call word 0x773f
000076AE  5A                pop dx
000076AF  E89D00            call word 0x774f
000076B2  5A                pop dx
000076B3  8BCF              mov cx,di
000076B5  BF6008            mov di,0x860
000076B8  2BCF              sub cx,di
000076BA  B030              mov al,0x30
000076BC  F3AE              repe scasb
000076BE  41                inc cx
000076BF  4F                dec di
000076C0  8BF7              mov si,di
000076C2  C3                ret
000076C3  BFAE00            mov di,0xae
000076C6  E89ED7            call word 0x4e67
000076C9  8AC5              mov al,ch
000076CB  8AE3              mov ah,bl
000076CD  97                xchg ax,di
000076CE  8ADC              mov bl,ah
000076D0  8AE0              mov ah,al
000076D2  8AC7              mov al,bh
000076D4  95                xchg ax,bp
000076D5  B700              mov bh,0x0
000076D7  8AC6              mov al,dh
000076D9  8AE1              mov ah,cl
000076DB  59                pop cx
000076DC  51                push cx
000076DD  86CD              xchg cl,ch
000076DF  81E10700          and cx,0x7
000076E3  740C              jz 0x76f1
000076E5  D0E2              shl dl,1
000076E7  D1D0              rcl ax,1
000076E9  D1D7              rcl di,1
000076EB  D1D5              rcl bp,1
000076ED  D1D3              rcl bx,1
000076EF  E2F4              loop 0x76e5
000076F1  80FA80            cmp dl,0x80
000076F4  7706              ja 0x76fc
000076F6  7210              jc 0x7708
000076F8  A801              test al,0x1
000076FA  740C              jz 0x7708
000076FC  050100            add ax,0x1
000076FF  83D700            adc di,byte +0x0
00007702  83D500            adc bp,byte +0x0
00007705  83D300            adc bx,byte +0x0
00007708  8BD7              mov dx,di
0000770A  BF6008            mov di,0x860
0000770D  B90B00            mov cx,0xb
00007710  BE2801            mov si,0x128
00007713  2B04              sub ax,[si]
00007715  1B5402            sbb dx,[si+0x2]
00007718  1B6C04            sbb bp,[si+0x4]
0000771B  1B5C06            sbb bx,[si+0x6]
0000771E  FEC5              inc ch
00007720  73F1              jnc 0x7713
00007722  0304              add ax,[si]
00007724  135402            adc dx,[si+0x2]
00007727  136C04            adc bp,[si+0x4]
0000772A  135C06            adc bx,[si+0x6]
0000772D  FECD              dec ch
0000772F  83C608            add si,byte +0x8
00007732  80CD30            or ch,0x30
00007735  882D              mov [di],ch
00007737  47                inc di
00007738  B500              mov ch,0x0
0000773A  E2D7              loop 0x7713
0000773C  E966FF            jmp word 0x76a5
0000773F  33D2              xor dx,dx
00007741  92                xchg ax,dx
00007742  BB1027            mov bx,0x2710
00007745  3BD3              cmp dx,bx
00007747  7206              jc 0x774f
00007749  92                xchg ax,dx
0000774A  F7F3              div bx
0000774C  0430              add al,0x30
0000774E  AA                stosb
0000774F  33C0              xor ax,ax
00007751  BB640A            mov bx,0xa64
00007754  83FA64            cmp dx,byte +0x64
00007757  7207              jc 0x7760
00007759  92                xchg ax,dx
0000775A  F6F3              div bl
0000775C  86E2              xchg ah,dl
0000775E  F6F7              div bh
00007760  0D3030            or ax,0x3030
00007763  AB                stosw
00007764  92                xchg ax,dx
00007765  F6F7              div bh
00007767  0D3030            or ax,0x3030
0000776A  AB                stosw
0000776B  C3                ret
0000776C  BF6008            mov di,0x860
0000776F  E8CDFF            call word 0x773f
00007772  E83EFF            call word 0x76b3
00007775  AC                lodsb
00007776  E85C02            call word 0x79d5
00007779  E2FA              loop 0x7775
0000777B  C3                ret
0000777C  8BFE              mov di,si
0000777E  98                cbw
0000777F  03F9              add di,cx
00007781  3BC1              cmp ax,cx
00007783  7322              jnc 0x77a7
00007785  91                xchg ax,cx
00007786  2BC1              sub ax,cx
00007788  02D0              add dl,al
0000778A  2BF8              sub di,ax
0000778C  B030              mov al,0x30
0000778E  8605              xchg al,[di]
00007790  3C35              cmp al,0x35
00007792  7213              jc 0x77a7
00007794  E30D              jcxz 0x77a3
00007796  4F                dec di
00007797  8A05              mov al,[di]
00007799  FEC0              inc al
0000779B  3C3A              cmp al,0x3a
0000779D  7207              jc 0x77a6
0000779F  FEC2              inc dl
000077A1  E2F3              loop 0x7796
000077A3  41                inc cx
000077A4  B031              mov al,0x31
000077A6  AA                stosb
000077A7  4F                dec di
000077A8  8AE1              mov ah,cl
000077AA  B030              mov al,0x30
000077AC  FD                std
000077AD  F3AE              repe scasb
000077AF  FC                cld
000077B0  41                inc cx
000077B1  2AE1              sub ah,cl
000077B3  02D4              add dl,ah
000077B5  BF3D08            mov di,0x83d
000077B8  C3                ret
000077B9  5B                pop bx
000077BA  155B15            adc ax,0x155b
000077BD  5B                pop bx
000077BE  15EB44            adc ax,0x44eb
000077C1  B644              mov dh,0x44
000077C3  5B                pop bx
000077C4  159F44            adc ax,0x449f
000077C7  5B                pop bx
000077C8  155B15            adc ax,0x155b
000077CB  BA44E2            mov dx,0xe244
000077CE  44                inc sp
000077CF  E744              out 0x44,ax
000077D1  C606A60202        mov byte [0x2a6],0x2
000077D6  C606D402FA        mov byte [0x2d4],0xfa
000077DB  C606D50250        mov byte [0x2d5],0x50
000077E0  1E                push ds
000077E1  33C0              xor ax,ax
000077E3  8ED8              mov ds,ax
000077E5  3985FC03          cmp [di+0x3fc],ax
000077E9  7507              jnz 0x77f2
000077EB  2E8985F81C        mov [cs:di+0x1cf8],ax
000077F0  EB11              jmp short 0x7803
000077F2  8BD7              mov dx,di
000077F4  D1FA              sar dx,1
000077F6  83C2FA            add dx,byte -0x6
000077F9  55                push bp
000077FA  56                push si
000077FB  57                push di
000077FC  B401              mov ah,0x1
000077FE  CD17              int 0x17
00007800  5F                pop di
00007801  5E                pop si
00007802  5D                pop bp
00007803  1F                pop ds
00007804  C3                ret
00007805  C3                ret
00007806  8816D502          mov [0x2d5],dl
0000780A  88959402          mov [di+0x294],dl
0000780E  C3                ret
0000780F  51                push cx
00007810  52                push dx
00007811  53                push bx
00007812  33C9              xor cx,cx
00007814  8B959402          mov dx,[di+0x294]
00007818  B406              mov ah,0x6
0000781A  E88FDB            call word 0x53ac
0000781D  A0A406            mov al,[0x6a4]
00007820  8804              mov [si],al
00007822  5B                pop bx
00007823  5A                pop dx
00007824  59                pop cx
00007825  C3                ret
00007826  88542F            mov [si+0x2f],dl
00007829  C3                ret
0000782A  50                push ax
0000782B  E87EC3            call word 0x3bac
0000782E  58                pop ax
0000782F  3C0D              cmp al,0xd
00007831  7419              jz 0x784c
00007833  3C20              cmp al,0x20
00007835  721A              jc 0x7851
00007837  FE859502          inc byte [di+0x295]
0000783B  8A642F            mov ah,[si+0x2f]
0000783E  80FCFF            cmp ah,0xff
00007841  740E              jz 0x7851
00007843  3AA59502          cmp ah,[di+0x295]
00007847  7708              ja 0x7851
00007849  E82E01            call word 0x797a
0000784C  C685950200        mov byte [di+0x295],0x0
00007851  C3                ret
00007852  8AA59502          mov ah,[di+0x295]
00007856  C3                ret
00007857  8A642F            mov ah,[si+0x2f]
0000785A  C3                ret
0000785B  E88900            call word 0x78e7
0000785E  C3                ret
0000785F  83FB03            cmp bx,byte +0x3
00007862  7716              ja 0x787a
00007864  0BDB              or bx,bx
00007866  7401              jz 0x7869
00007868  4B                dec bx
00007869  D1E3              shl bx,1
0000786B  8A9FA102          mov bl,[bx+0x2a1]
0000786F  B700              mov bh,0x0
00007871  803EB80004        cmp byte [0xb8],0x4
00007876  7401              jz 0x7879
00007878  43                inc bx
00007879  CB                retf
0000787A  E94ED0            jmp word 0x48cb
0000787D  881ED502          mov [0x2d5],bl
00007881  881EA002          mov [0x2a0],bl
00007885  CB                retf
00007886  0AFF              or bh,bh
00007888  7517              jnz 0x78a1
0000788A  BE3406            mov si,0x634
0000788D  8B74FE            mov si,[si-0x2]
00007890  0BF6              or si,si
00007892  740F              jz 0x78a3
00007894  385CFB            cmp [si-0x5],bl
00007897  75F4              jnz 0x788d
00007899  803C00            cmp byte [si],0x0
0000789C  7505              jnz 0x78a3
0000789E  E84600            call word 0x78e7
000078A1  33F6              xor si,si
000078A3  C3                ret
000078A4  50                push ax
000078A5  51                push cx
000078A6  52                push dx
000078A7  57                push di
000078A8  53                push bx
000078A9  BE3206            mov si,0x632
000078AC  8BFE              mov di,si
000078AE  8B74FE            mov si,[si-0x2]
000078B1  0BF6              or si,si
000078B3  7410              jz 0x78c5
000078B5  395CFC            cmp [si-0x4],bx
000078B8  72F2              jc 0x78ac
000078BA  8B44FE            mov ax,[si-0x2]
000078BD  8945FE            mov [di-0x2],ax
000078C0  8B4CFC            mov cx,[si-0x4]
000078C3  EB0E              jmp short 0x78d3
000078C5  8BCB              mov cx,bx
000078C7  83C306            add bx,byte +0x6
000078CA  E834FC            call word 0x7501
000078CD  8D7706            lea si,[bx+0x6]
000078D0  894CFC            mov [si-0x4],cx
000078D3  8BFE              mov di,si
000078D5  33C0              xor ax,ax
000078D7  D1E9              shr cx,1
000078D9  F3AB              rep stosw
000078DB  7301              jnc 0x78de
000078DD  AA                stosb
000078DE  5B                pop bx
000078DF  5F                pop di
000078E0  5A                pop dx
000078E1  59                pop cx
000078E2  58                pop ax
000078E3  C3                ret
000078E4  57                push di
000078E5  EB19              jmp short 0x7900
000078E7  57                push di
000078E8  53                push bx
000078E9  BF3406            mov di,0x634
000078EC  8BDF              mov bx,di
000078EE  8B7DFE            mov di,[di-0x2]
000078F1  0BFF              or di,di
000078F3  7418              jz 0x790d
000078F5  3BFE              cmp di,si
000078F7  75F3              jnz 0x78ec
000078F9  8B7CFE            mov di,[si-0x2]
000078FC  897FFE            mov [bx-0x2],di
000078FF  5B                pop bx
00007900  8B3E3006          mov di,[0x630]
00007904  89363006          mov [0x630],si
00007908  897CFE            mov [si-0x2],di
0000790B  5F                pop di
0000790C  C3                ret
0000790D  E9F1CF            jmp word 0x4901
00007910  33C0              xor ax,ax
00007912  2E8985F81C        mov [cs:di+0x1cf8],ax
00007917  C3                ret
00007918  E907D0            jmp word 0x4922
0000791B  008BCB03          add [bp+di+0x3cb],cl
0000791F  0E                push cs
00007920  7608              jna 0x792a
00007922  03167808          add dx,[0x878]
00007926  890E0E06          mov [0x60e],cx
0000792A  89161006          mov [0x610],dx
0000792E  33C0              xor ax,ax
00007930  A37608            mov [0x876],ax
00007933  A37808            mov [0x878],ax
00007936  E95CF4            jmp word 0x6d95
00007939  8BC1              mov ax,cx
0000793B  2B061206          sub ax,[0x612]
0000793F  7302              jnc 0x7943
00007941  F7D8              neg ax
00007943  C3                ret
00007944  8BC2              mov ax,dx
00007946  2B061406          sub ax,[0x614]
0000794A  7302              jnc 0x794e
0000794C  F7D8              neg ax
0000794E  C3                ret
0000794F  83F9FF            cmp cx,byte -0x1
00007952  7503              jnz 0x7957
00007954  B90300            mov cx,0x3
00007957  86C1              xchg al,cl
00007959  E81CF4            call word 0x6d78
0000795C  7219              jc 0x7977
0000795E  53                push bx
0000795F  52                push dx
00007960  8B0E0E06          mov cx,[0x60e]
00007964  8B161006          mov dx,[0x610]
00007968  E82AF4            call word 0x6d95
0000796B  890E1206          mov [0x612],cx
0000796F  89161406          mov [0x614],dx
00007973  5A                pop dx
00007974  5B                pop bx
00007975  EBA5              jmp short 0x791c
00007977  E951CF            jmp word 0x48cb
0000797A  50                push ax
0000797B  53                push bx
0000797C  56                push si
0000797D  8B364806          mov si,[0x648]
00007981  0BF6              or si,si
00007983  7433              jz 0x79b8
00007985  F6442E80          test byte [si+0x2e],0x80
00007989  752D              jnz 0x79b8
0000798B  803C04            cmp byte [si],0x4
0000798E  751C              jnz 0x79ac
00007990  803ED60700        cmp byte [0x7d6],0x0
00007995  7415              jz 0x79ac
00007997  8B9CB300          mov bx,[si+0xb3]
0000799B  2B9CBA00          sub bx,[si+0xba]
0000799F  83EB02            sub bx,byte +0x2
000079A2  B020              mov al,0x20
000079A4  7406              jz 0x79ac
000079A6  E86AD8            call word 0x5213
000079A9  4B                dec bx
000079AA  EBF8              jmp short 0x79a4
000079AC  B00D              mov al,0xd
000079AE  E862D8            call word 0x5213
000079B1  B00A              mov al,0xa
000079B3  E85DD8            call word 0x5213
000079B6  EB05              jmp short 0x79bd
000079B8  B00D              mov al,0xd
000079BA  E856D8            call word 0x5213
000079BD  5E                pop si
000079BE  5B                pop bx
000079BF  58                pop ax
000079C0  C3                ret
000079C1  50                push ax
000079C2  FF364806          push word [0x648]
000079C6  C70648060000      mov word [0x648],0x0
000079CC  E8ABFF            call word 0x797a
000079CF  8F064806          pop word [0x648]
000079D3  58                pop ax
000079D4  C3                ret
000079D5  FF364806          push word [0x648]
000079D9  C70648060000      mov word [0x648],0x0
000079DF  E831D8            call word 0x5213
000079E2  8F064806          pop word [0x648]
000079E6  C3                ret
000079E7  50                push ax
000079E8  D0E8              shr al,1
000079EA  D0E8              shr al,1
000079EC  D0E8              shr al,1
000079EE  D0E8              shr al,1
000079F0  E80100            call word 0x79f4
000079F3  58                pop ax
000079F4  240F              and al,0xf
000079F6  0490              add al,0x90
000079F8  27                daa
000079F9  1440              adc al,0x40
000079FB  27                daa
000079FC  EBD7              jmp short 0x79d5
000079FE  2EAC              cs lodsb
00007A00  50                push ax
00007A01  247F              and al,0x7f
00007A03  E8CFFF            call word 0x79d5
00007A06  58                pop ax
00007A07  A880              test al,0x80
00007A09  74F3              jz 0x79fe
00007A0B  C3                ret
00007A0C  58                pop ax
00007A0D  56                push si
00007A0E  8BF0              mov si,ax
00007A10  E8EBFF            call word 0x79fe
00007A13  8BC6              mov ax,si
00007A15  5E                pop si
00007A16  FFE0              jmp ax
00007A18  8B0F              mov cx,[bx]
00007A1A  E3CA              jcxz 0x79e6
00007A1C  8B7702            mov si,[bx+0x2]
00007A1F  AC                lodsb
00007A20  E8F0D7            call word 0x5213
00007A23  E2FA              loop 0x7a1f
00007A25  C3                ret
00007A26  F346              rep inc si
00007A28  234730            and ax,[bx+0x30]
00007A2B  47                inc di
00007A2C  CE                into
00007A2D  46                inc si
00007A2E  4D                dec bp
00007A2F  47                inc di
00007A30  F6                db 0xf6
00007A31  48                dec ax
00007A32  F6475147          test byte [bx+0x51],0x47
00007A36  95                xchg ax,bp
00007A37  47                inc di
00007A38  C8475547          enter 0x5547,0x47
00007A3C  59                pop cx
00007A3D  47                inc di
00007A3E  803C02            cmp byte [si],0x2
00007A41  750E              jnz 0x7a51
00007A43  B01A              mov al,0x1a
00007A45  E8F000            call word 0x7b38
00007A48  807C2900          cmp byte [si+0x29],0x0
00007A4C  7403              jz 0x7a51
00007A4E  E82F03            call word 0x7d80
00007A51  51                push cx
00007A52  52                push dx
00007A53  8D5401            lea dx,[si+0x1]
00007A56  E85503            call word 0x7dae
00007A59  B410              mov ah,0x10
00007A5B  CD21              int 0x21
00007A5D  E887FE            call word 0x78e7
00007A60  5A                pop dx
00007A61  59                pop cx
00007A62  C3                ret
00007A63  803C02            cmp byte [si],0x2
00007A66  7428              jz 0x7a90
00007A68  807C2900          cmp byte [si+0x29],0x0
00007A6C  741B              jz 0x7a89
00007A6E  33DB              xor bx,bx
00007A70  803C04            cmp byte [si],0x4
00007A73  741A              jz 0x7a8f
00007A75  385C2A            cmp [si+0x2a],bl
00007A78  7505              jnz 0x7a7f
00007A7A  E8D902            call word 0x7d56
00007A7D  EBE9              jmp short 0x7a68
00007A7F  BB8000            mov bx,0x80
00007A82  2A5C2A            sub bl,[si+0x2a]
00007A85  8078331A          cmp byte [bx+si+0x33],0x1a
00007A89  BB0000            mov bx,0x0
00007A8C  7501              jnz 0x7a8f
00007A8E  4B                dec bx
00007A8F  C3                ret
00007A90  E968CE            jmp word 0x48fb
00007A93  803C04            cmp byte [si],0x4
00007A96  8B5C27            mov bx,[si+0x27]
00007A99  7504              jnz 0x7a9f
00007A9B  8B9CB700          mov bx,[si+0xb7]
00007A9F  C3                ret
00007AA0  51                push cx
00007AA1  52                push dx
00007AA2  53                push bx
00007AA3  8B5411            mov dx,[si+0x11]
00007AA6  8B4C13            mov cx,[si+0x13]
00007AA9  33DB              xor bx,bx
00007AAB  33FF              xor di,di
00007AAD  B800C0            mov ax,0xc000
00007AB0  E8D5D1            call word 0x4c88
00007AB3  5B                pop bx
00007AB4  5A                pop dx
00007AB5  59                pop cx
00007AB6  C3                ret
00007AB7  33DB              xor bx,bx
00007AB9  8A5C32            mov bl,[si+0x32]
00007ABC  C3                ret
00007ABD  88542F            mov [si+0x2f],dl
00007AC0  C3                ret
00007AC1  FE442A            inc byte [si+0x2a]
00007AC4  C3                ret
00007AC5  8A6432            mov ah,[si+0x32]
00007AC8  C3                ret
00007AC9  8A642F            mov ah,[si+0x2f]
00007ACC  C3                ret
00007ACD  53                push bx
00007ACE  E84800            call word 0x7b19
00007AD1  8A80BB00          mov al,[bx+si+0xbb]
00007AD5  F8                clc
00007AD6  5B                pop bx
00007AD7  C3                ret
00007AD8  803C04            cmp byte [si],0x4
00007ADB  74F0              jz 0x7acd
00007ADD  807C2A00          cmp byte [si+0x2a],0x0
00007AE1  7413              jz 0x7af6
00007AE3  53                push bx
00007AE4  33DB              xor bx,bx
00007AE6  8A5C29            mov bl,[si+0x29]
00007AE9  2A5C2A            sub bl,[si+0x2a]
00007AEC  FE4C2A            dec byte [si+0x2a]
00007AEF  8A4033            mov al,[bx+si+0x33]
00007AF2  5B                pop bx
00007AF3  0AC0              or al,al
00007AF5  C3                ret
00007AF6  807C2900          cmp byte [si+0x29],0x0
00007AFA  7405              jz 0x7b01
00007AFC  E85702            call word 0x7d56
00007AFF  7504              jnz 0x7b05
00007B01  F9                stc
00007B02  B01A              mov al,0x1a
00007B04  C3                ret
00007B05  E8D0FF            call word 0x7ad8
00007B08  72FA              jc 0x7b04
00007B0A  3C1A              cmp al,0x1a
00007B0C  F8                clc
00007B0D  75F5              jnz 0x7b04
00007B0F  C6442900          mov byte [si+0x29],0x0
00007B13  C6442A00          mov byte [si+0x2a],0x0
00007B17  F9                stc
00007B18  C3                ret
00007B19  8B9CBA00          mov bx,[si+0xba]
00007B1D  3B9CB300          cmp bx,[si+0xb3]
00007B21  7406              jz 0x7b29
00007B23  43                inc bx
00007B24  899CBA00          mov [si+0xba],bx
00007B28  C3                ret
00007B29  E9C3CD            jmp word 0x48ef
00007B2C  53                push bx
00007B2D  E8E9FF            call word 0x7b19
00007B30  8880BB00          mov [bx+si+0xbb],al
00007B34  5B                pop bx
00007B35  EB1E              jmp short 0x7b55
00007B37  90                nop
00007B38  803C04            cmp byte [si],0x4
00007B3B  74EF              jz 0x7b2c
00007B3D  807C2980          cmp byte [si+0x29],0x80
00007B41  7505              jnz 0x7b48
00007B43  50                push ax
00007B44  E83902            call word 0x7d80
00007B47  58                pop ax
00007B48  53                push bx
00007B49  33DB              xor bx,bx
00007B4B  8A5C29            mov bl,[si+0x29]
00007B4E  884033            mov [bx+si+0x33],al
00007B51  5B                pop bx
00007B52  FE4429            inc byte [si+0x29]
00007B55  3C0D              cmp al,0xd
00007B57  7505              jnz 0x7b5e
00007B59  C6443200          mov byte [si+0x32],0x0
00007B5D  C3                ret
00007B5E  3C20              cmp al,0x20
00007B60  F5                cmc
00007B61  80543200          adc byte [si+0x32],0x0
00007B65  C3                ret
00007B66  52                push dx
00007B67  51                push cx
00007B68  803EA40604        cmp byte [0x6a4],0x4
00007B6D  7507              jnz 0x7b76
00007B6F  0BC9              or cx,cx
00007B71  7503              jnz 0x7b76
00007B73  B98000            mov cx,0x80
00007B76  51                push cx
00007B77  81C18900          add cx,0x89
00007B7B  BAFF00            mov dx,0xff
00007B7E  B4FF              mov ah,0xff
00007B80  E829D8            call word 0x53ac
00007B83  59                pop cx
00007B84  898CB300          mov [si+0xb3],cx
00007B88  56                push si
00007B89  8D7C01            lea di,[si+0x1]
00007B8C  BE5806            mov si,0x658
00007B8F  B90C00            mov cx,0xc
00007B92  F3A4              rep movsb
00007B94  5E                pop si
00007B95  E81602            call word 0x7dae
00007B98  803EA40608        cmp byte [0x6a4],0x8
00007B9D  7503              jnz 0x7ba2
00007B9F  E86002            call word 0x7e02
00007BA2  8D5401            lea dx,[si+0x1]
00007BA5  803EA40602        cmp byte [0x6a4],0x2
00007BAA  7512              jnz 0x7bbe
00007BAC  E85302            call word 0x7e02
00007BAF  B413              mov ah,0x13
00007BB1  CD21              int 0x21
00007BB3  B416              mov ah,0x16
00007BB5  CD21              int 0x21
00007BB7  FEC0              inc al
00007BB9  7523              jnz 0x7bde
00007BBB  E9EA01            jmp word 0x7da8
00007BBE  B40F              mov ah,0xf
00007BC0  CD21              int 0x21
00007BC2  FEC0              inc al
00007BC4  7518              jnz 0x7bde
00007BC6  803EA40608        cmp byte [0x6a4],0x8
00007BCB  7507              jnz 0x7bd4
00007BCD  C606A40602        mov byte [0x6a4],0x2
00007BD2  EBDF              jmp short 0x7bb3
00007BD4  803EA40604        cmp byte [0x6a4],0x4
00007BD9  74D8              jz 0x7bb3
00007BDB  E9ED02            jmp word 0x7ecb
00007BDE  A0A406            mov al,[0x6a4]
00007BE1  8804              mov [si],al
00007BE3  C7440F8000        mov word [si+0xf],0x80
00007BE8  803C04            cmp byte [si],0x4
00007BEB  740D              jz 0x7bfa
00007BED  803C08            cmp byte [si],0x8
00007BF0  740B              jz 0x7bfd
00007BF2  803C01            cmp byte [si],0x1
00007BF5  7503              jnz 0x7bfa
00007BF7  E85C01            call word 0x7d56
00007BFA  59                pop cx
00007BFB  5A                pop dx
00007BFC  C3                ret
00007BFD  837C1100          cmp word [si+0x11],byte +0x0
00007C01  750B              jnz 0x7c0e
00007C03  837C1300          cmp word [si+0x13],byte +0x0
00007C07  7505              jnz 0x7c0e
00007C09  C60402            mov byte [si],0x2
00007C0C  EBEC              jmp short 0x7bfa
00007C0E  8D7C22            lea di,[si+0x22]
00007C11  56                push si
00007C12  83C611            add si,byte +0x11
00007C15  F6047F            test byte [si],0x7f
00007C18  9C                pushfw
00007C19  AC                lodsb
00007C1A  02C0              add al,al
00007C1C  AD                lodsw
00007C1D  13C0              adc ax,ax
00007C1F  AB                stosw
00007C20  AC                lodsb
00007C21  B400              mov ah,0x0
00007C23  13C0              adc ax,ax
00007C25  AB                stosw
00007C26  9D                popfw
00007C27  5E                pop si
00007C28  7503              jnz 0x7c2d
00007C2A  E82900            call word 0x7c56
00007C2D  E82601            call word 0x7d56
00007C30  E82300            call word 0x7c56
00007C33  33D2              xor dx,dx
00007C35  E8A0FE            call word 0x7ad8
00007C38  7207              jc 0x7c41
00007C3A  3C1A              cmp al,0x1a
00007C3C  7408              jz 0x7c46
00007C3E  42                inc dx
00007C3F  EBF4              jmp short 0x7c35
00007C41  33D2              xor dx,dx
00007C43  E81000            call word 0x7c56
00007C46  C60402            mov byte [si],0x2
00007C49  8D7C27            lea di,[si+0x27]
00007C4C  33C0              xor ax,ax
00007C4E  AB                stosw
00007C4F  8815              mov [di],dl
00007C51  884432            mov [si+0x32],al
00007C54  EBA4              jmp short 0x7bfa
00007C56  836C2201          sub word [si+0x22],byte +0x1
00007C5A  7303              jnc 0x7c5f
00007C5C  FF4C24            dec word [si+0x24]
00007C5F  C3                ret
00007C60  E968CC            jmp word 0x48cb
00007C63  E9A7CC            jmp word 0x490d
00007C66  51                push cx
00007C67  52                push dx
00007C68  53                push bx
00007C69  A802              test al,0x2
00007C6B  7507              jnz 0x7c74
00007C6D  8B94B700          mov dx,[si+0xb7]
00007C71  42                inc dx
00007C72  EB06              jmp short 0x7c7a
00007C74  0BD2              or dx,dx
00007C76  74EB              jz 0x7c63
00007C78  7CE6              jl 0x7c60
00007C7A  8994B700          mov [si+0xb7],dx
00007C7E  4A                dec dx
00007C7F  C784BA000000      mov word [si+0xba],0x0
00007C85  8B9CB300          mov bx,[si+0xb3]
00007C89  53                push bx
00007C8A  81FB8000          cmp bx,0x80
00007C8E  7416              jz 0x7ca6
00007C90  93                xchg ax,bx
00007C91  F7E2              mul dx
00007C93  93                xchg ax,bx
00007C94  03DB              add bx,bx
00007C96  13D2              adc dx,dx
00007C98  0AF6              or dh,dh
00007C9A  75C4              jnz 0x7c60
00007C9C  8AF2              mov dh,dl
00007C9E  8AD7              mov dl,bh
00007CA0  D0EB              shr bl,1
00007CA2  32FF              xor bh,bh
00007CA4  EB02              jmp short 0x7ca8
00007CA6  33DB              xor bx,bx
00007CA8  89167A08          mov [0x87a],dx
00007CAC  8D8CBC00          lea cx,[si+0xbc]
00007CB0  890E7C08          mov [0x87c],cx
00007CB4  5A                pop dx
00007CB5  8D4C33            lea cx,[si+0x33]
00007CB8  03CB              add cx,bx
00007CBA  890E7E08          mov [0x87e],cx
00007CBE  B98000            mov cx,0x80
00007CC1  2BCB              sub cx,bx
00007CC3  3BCA              cmp cx,dx
00007CC5  7202              jc 0x7cc9
00007CC7  8BCA              mov cx,dx
00007CC9  A801              test al,0x1
00007CCB  7433              jz 0x7d00
00007CCD  81F98000          cmp cx,0x80
00007CD1  7303              jnc 0x7cd6
00007CD3  E84600            call word 0x7d1c
00007CD6  56                push si
00007CD7  51                push cx
00007CD8  8B367C08          mov si,[0x87c]
00007CDC  8B3E7E08          mov di,[0x87e]
00007CE0  D1E9              shr cx,1
00007CE2  F3A5              rep movsw
00007CE4  7301              jnc 0x7ce7
00007CE6  A4                movsb
00007CE7  59                pop cx
00007CE8  5E                pop si
00007CE9  E82C00            call word 0x7d18
00007CEC  FF067A08          inc word [0x87a]
00007CF0  010E7C08          add [0x87c],cx
00007CF4  2BD1              sub dx,cx
00007CF6  33DB              xor bx,bx
00007CF8  0BD2              or dx,dx
00007CFA  75B9              jnz 0x7cb5
00007CFC  5B                pop bx
00007CFD  5A                pop dx
00007CFE  59                pop cx
00007CFF  C3                ret
00007D00  E81900            call word 0x7d1c
00007D03  56                push si
00007D04  51                push cx
00007D05  8B367E08          mov si,[0x87e]
00007D09  8B3E7C08          mov di,[0x87c]
00007D0D  D1E9              shr cx,1
00007D0F  F3A5              rep movsw
00007D11  7301              jnc 0x7d14
00007D13  A4                movsb
00007D14  59                pop cx
00007D15  5E                pop si
00007D16  EBD4              jmp short 0x7cec
00007D18  0C04              or al,0x4
00007D1A  EB02              jmp short 0x7d1e
00007D1C  24FB              and al,0xfb
00007D1E  50                push ax
00007D1F  51                push cx
00007D20  52                push dx
00007D21  53                push bx
00007D22  8B1E7A08          mov bx,[0x87a]
00007D26  43                inc bx
00007D27  3B9CB500          cmp bx,[si+0xb5]
00007D2B  7504              jnz 0x7d31
00007D2D  A804              test al,0x4
00007D2F  7420              jz 0x7d51
00007D31  4B                dec bx
00007D32  895C27            mov [si+0x27],bx
00007D35  C6442980          mov byte [si+0x29],0x80
00007D39  C6442A80          mov byte [si+0x2a],0x80
00007D3D  895C22            mov [si+0x22],bx
00007D40  C744240000        mov word [si+0x24],0x0
00007D45  A804              test al,0x4
00007D47  7405              jz 0x7d4e
00007D49  E83400            call word 0x7d80
00007D4C  EB03              jmp short 0x7d51
00007D4E  E80500            call word 0x7d56
00007D51  5B                pop bx
00007D52  5A                pop dx
00007D53  59                pop cx
00007D54  58                pop ax
00007D55  C3                ret
00007D56  FF4427            inc word [si+0x27]
00007D59  51                push cx
00007D5A  57                push di
00007D5B  B94000            mov cx,0x40
00007D5E  33C0              xor ax,ax
00007D60  8D7C33            lea di,[si+0x33]
00007D63  F3AB              rep stosw
00007D65  5F                pop di
00007D66  59                pop cx
00007D67  E84400            call word 0x7dae
00007D6A  B421              mov ah,0x21
00007D6C  E84B00            call word 0x7dba
00007D6F  0AC0              or al,al
00007D71  B000              mov al,0x0
00007D73  7502              jnz 0x7d77
00007D75  B080              mov al,0x80
00007D77  884429            mov [si+0x29],al
00007D7A  88442A            mov [si+0x2a],al
00007D7D  0AC0              or al,al
00007D7F  C3                ret
00007D80  C6442900          mov byte [si+0x29],0x0
00007D84  E82700            call word 0x7dae
00007D87  B422              mov ah,0x22
00007D89  E82E00            call word 0x7dba
00007D8C  3CFF              cmp al,0xff
00007D8E  7418              jz 0x7da8
00007D90  FEC8              dec al
00007D92  7417              jz 0x7dab
00007D94  FEC8              dec al
00007D96  750C              jnz 0x7da4
00007D98  8804              mov [si],al
00007D9A  8D5401            lea dx,[si+0x1]
00007D9D  B410              mov ah,0x10
00007D9F  CD21              int 0x21
00007DA1  E963CB            jmp word 0x4907
00007DA4  FF4427            inc word [si+0x27]
00007DA7  C3                ret
00007DA8  E968CB            jmp word 0x4913
00007DAB  E953CB            jmp word 0x4901
00007DAE  51                push cx
00007DAF  52                push dx
00007DB0  8D5433            lea dx,[si+0x33]
00007DB3  B41A              mov ah,0x1a
00007DB5  CD21              int 0x21
00007DB7  5A                pop dx
00007DB8  59                pop cx
00007DB9  C3                ret
00007DBA  51                push cx
00007DBB  52                push dx
00007DBC  8D5401            lea dx,[si+0x1]
00007DBF  CD21              int 0x21
00007DC1  FF4422            inc word [si+0x22]
00007DC4  7503              jnz 0x7dc9
00007DC6  FF4424            inc word [si+0x24]
00007DC9  80FC22            cmp ah,0x22
00007DCC  7512              jnz 0x7de0
00007DCE  0AC0              or al,al
00007DD0  7414              jz 0x7de6
00007DD2  3C05              cmp al,0x5
00007DD4  74D2              jz 0x7da8
00007DD6  3C03              cmp al,0x3
00007DD8  B001              mov al,0x1
00007DDA  740A              jz 0x7de6
00007DDC  FEC0              inc al
00007DDE  EB06              jmp short 0x7de6
00007DE0  3C03              cmp al,0x3
00007DE2  7502              jnz 0x7de6
00007DE4  32C0              xor al,al
00007DE6  5A                pop dx
00007DE7  59                pop cx
00007DE8  C3                ret
00007DE9  50                push ax
00007DEA  51                push cx
00007DEB  56                push si
00007DEC  8B0F              mov cx,[bx]
00007DEE  8B7702            mov si,[bx+0x2]
00007DF1  E8B2D4            call word 0x52a6
00007DF4  A880              test al,0x80
00007DF6  7807              js 0x7dff
00007DF8  E8EEF6            call word 0x74e9
00007DFB  5E                pop si
00007DFC  59                pop cx
00007DFD  58                pop ax
00007DFE  C3                ret
00007DFF  E90ECB            jmp word 0x4910
00007E02  57                push di
00007E03  807C0100          cmp byte [si+0x1],0x0
00007E07  7509              jnz 0x7e12
00007E09  B419              mov ah,0x19
00007E0B  CD21              int 0x21
00007E0D  FEC0              inc al
00007E0F  884401            mov [si+0x1],al
00007E12  BF3406            mov di,0x634
00007E15  8B7DFE            mov di,[di-0x2]
00007E18  0BFF              or di,di
00007E1A  7414              jz 0x7e30
00007E1C  3BF7              cmp si,di
00007E1E  74F5              jz 0x7e15
00007E20  56                push si
00007E21  57                push di
00007E22  46                inc si
00007E23  47                inc di
00007E24  B90C00            mov cx,0xc
00007E27  F3A6              repe cmpsb
00007E29  5F                pop di
00007E2A  5E                pop si
00007E2B  75E8              jnz 0x7e15
00007E2D  E9CECA            jmp word 0x48fe
00007E30  5F                pop di
00007E31  C3                ret
00007E32  E882C4            call word 0x42b7
00007E35  BE9205            mov si,0x592
00007E38  EB0C              jmp short 0x7e46
00007E3A  E87AC4            call word 0x42b7
00007E3D  E83AF7            call word 0x757a
00007E40  8B7702            mov si,[bx+0x2]
00007E43  E8A3F6            call word 0x74e9
00007E46  BF5806            mov di,0x658
00007E49  B000              mov al,0x0
00007E4B  B429              mov ah,0x29
00007E4D  CD21              int 0x21
00007E4F  BA7E06            mov dx,0x67e
00007E52  B41A              mov ah,0x1a
00007E54  CD21              int 0x21
00007E56  BA5806            mov dx,0x658
00007E59  B411              mov ah,0x11
00007E5B  CD21              int 0x21
00007E5D  3CFF              cmp al,0xff
00007E5F  746A              jz 0x7ecb
00007E61  BE7F06            mov si,0x67f
00007E64  B90B00            mov cx,0xb
00007E67  AC                lodsb
00007E68  E86AFB            call word 0x79d5
00007E6B  83F904            cmp cx,byte +0x4
00007E6E  750B              jnz 0x7e7b
00007E70  8A04              mov al,[si]
00007E72  3C20              cmp al,0x20
00007E74  7402              jz 0x7e78
00007E76  B02E              mov al,0x2e
00007E78  E85AFB            call word 0x79d5
00007E7B  E2EA              loop 0x7e67
00007E7D  E8E0ED            call word 0x6c60
00007E80  86C4              xchg al,ah
00007E82  040D              add al,0xd
00007E84  E8DCED            call word 0x6c63
00007E87  3AC4              cmp al,ah
00007E89  7307              jnc 0x7e92
00007E8B  B020              mov al,0x20
00007E8D  E845FB            call word 0x79d5
00007E90  EB03              jmp short 0x7e95
00007E92  E82CFB            call word 0x79c1
00007E95  BA5806            mov dx,0x658
00007E98  B412              mov ah,0x12
00007E9A  CD21              int 0x21
00007E9C  3CFF              cmp al,0xff
00007E9E  75C1              jnz 0x7e61
00007EA0  E8BDED            call word 0x6c60
00007EA3  0AE4              or ah,ah
00007EA5  7403              jz 0x7eaa
00007EA7  E817FB            call word 0x79c1
00007EAA  C3                ret
00007EAB  E809C4            call word 0x42b7
00007EAE  E838FF            call word 0x7de9
00007EB1  BA5806            mov dx,0x658
00007EB4  B40F              mov ah,0xf
00007EB6  CD21              int 0x21
00007EB8  FEC0              inc al
00007EBA  740F              jz 0x7ecb
00007EBC  B410              mov ah,0x10
00007EBE  CD21              int 0x21
00007EC0  BE5706            mov si,0x657
00007EC3  E83CFF            call word 0x7e02
00007EC6  B413              mov ah,0x13
00007EC8  CD21              int 0x21
00007ECA  C3                ret
00007ECB  E92ACA            jmp word 0x48f8
00007ECE  E8E6C3            call word 0x42b7
00007ED1  52                push dx
00007ED2  E814FF            call word 0x7de9
00007ED5  BA5806            mov dx,0x658
00007ED8  B40F              mov ah,0xf
00007EDA  CD21              int 0x21
00007EDC  FEC0              inc al
00007EDE  74EB              jz 0x7ecb
00007EE0  8BF2              mov si,dx
00007EE2  BF7E06            mov di,0x67e
00007EE5  B90C00            mov cx,0xc
00007EE8  F3A4              rep movsb
00007EEA  5B                pop bx
00007EEB  E8FBFE            call word 0x7de9
00007EEE  B40F              mov ah,0xf
00007EF0  CD21              int 0x21
00007EF2  FEC0              inc al
00007EF4  7513              jnz 0x7f09
00007EF6  8BF2              mov si,dx
00007EF8  46                inc si
00007EF9  BF8F06            mov di,0x68f
00007EFC  B90B00            mov cx,0xb
00007EFF  F3A4              rep movsb
00007F01  BA7E06            mov dx,0x67e
00007F04  B417              mov ah,0x17
00007F06  CD21              int 0x21
00007F08  C3                ret
00007F09  E9F8C9            jmp word 0x4904
00007F0C  E8A8C3            call word 0x42b7
00007F0F  E87BD3            call word 0x528d
00007F12  B419              mov ah,0x19
00007F14  CD21              int 0x21
00007F16  50                push ax
00007F17  B40D              mov ah,0xd
00007F19  CD21              int 0x21
00007F1B  58                pop ax
00007F1C  8AD0              mov dl,al
00007F1E  B40E              mov ah,0xe
00007F20  CD21              int 0x21
00007F22  C3                ret
00007F23  33C0              xor ax,ax
00007F25  A3AE00            mov [0xae],ax
00007F28  A3B000            mov [0xb0],ax
00007F2B  C706B2000000      mov word [0xb2],0x0
00007F31  C706B4000081      mov word [0xb4],0x8100
00007F37  C3                ret
00007F38  89263606          mov [0x636],sp
00007F3C  50                push ax
00007F3D  52                push dx
00007F3E  BA3E06            mov dx,0x63e
00007F41  9A2E0E4702        call word 0x247:0xe2e
00007F46  5A                pop dx
00007F47  C606D70701        mov byte [0x7d7],0x1
00007F4C  C706D807EC4B      mov word [0x7d8],0x4bec
00007F52  32C0              xor al,al
00007F54  A29C08            mov [0x89c],al
00007F57  A29D08            mov [0x89d],al
00007F5A  58                pop ax
00007F5B  CB                retf
00007F5C  A09D08            mov al,[0x89d]
00007F5F  0AC0              or al,al
00007F61  7508              jnz 0x7f6b
00007F63  53                push bx
00007F64  E84500            call word 0x7fac
00007F67  5B                pop bx
00007F68  A09D08            mov al,[0x89d]
00007F6B  A29C08            mov [0x89c],al
00007F6E  8B0E9A08          mov cx,[0x89a]
00007F72  A802              test al,0x2
00007F74  7510              jnz 0x7f86
00007F76  803E740803        cmp byte [0x874],0x3
00007F7B  7454              jz 0x7fd1
00007F7D  E88601            call word 0x8106
00007F80  91                xchg ax,cx
00007F81  E89BFA            call word 0x7a1f
00007F84  EB30              jmp short 0x7fb6
00007F86  803E740803        cmp byte [0x874],0x3
00007F8B  7544              jnz 0x7fd1
00007F8D  8BD1              mov dx,cx
00007F8F  8B0F              mov cx,[bx]
00007F91  2BD1              sub dx,cx
00007F93  7302              jnc 0x7f97
00007F95  03CA              add cx,dx
00007F97  E880FA            call word 0x7a1a
00007F9A  E84CF5            call word 0x74e9
00007F9D  8BCA              mov cx,dx
00007F9F  0BC9              or cx,cx
00007FA1  7E13              jng 0x7fb6
00007FA3  B020              mov al,0x20
00007FA5  E86BD2            call word 0x5213
00007FA8  E2FB              loop 0x7fa5
00007FAA  EB0A              jmp short 0x7fb6
00007FAC  A13E06            mov ax,[0x63e]
00007FAF  A39808            mov [0x898],ax
00007FB2  0BC0              or ax,ax
00007FB4  7418              jz 0x7fce
00007FB6  C6069D0800        mov byte [0x89d],0x0
00007FBB  8B364006          mov si,[0x640]
00007FBF  A13E06            mov ax,[0x63e]
00007FC2  8B0E9808          mov cx,[0x898]
00007FC6  2BC1              sub ax,cx
00007FC8  03F0              add si,ax
00007FCA  E31C              jcxz 0x7fe8
00007FCC  EB58              jmp short 0x8026
00007FCE  E9FAC8            jmp word 0x48cb
00007FD1  E906C9            jmp word 0x48da
00007FD4  E82201            call word 0x80f9
00007FD7  E839D2            call word 0x5213
00007FDA  890E9808          mov [0x898],cx
00007FDE  880E9D08          mov [0x89d],cl
00007FE2  3A0E9C08          cmp cl,[0x89c]
00007FE6  74E6              jz 0x7fce
00007FE8  C3                ret
00007FE9  E80D01            call word 0x80f9
00007FEC  AC                lodsb
00007FED  E823D2            call word 0x5213
00007FF0  E234              loop 0x8026
00007FF2  EBE6              jmp short 0x7fda
00007FF4  BBFFFF            mov bx,0xffff
00007FF7  49                dec cx
00007FF8  E8FE00            call word 0x80f9
00007FFB  890E9808          mov [0x898],cx
00007FFF  891E9A08          mov [0x89a],bx
00008003  C6069D0802        mov byte [0x89d],0x2
00008008  C3                ret
00008009  8BE9              mov bp,cx
0000800B  8BFE              mov di,si
0000800D  BB0200            mov bx,0x2
00008010  AC                lodsb
00008011  3C5C              cmp al,0x5c
00008013  74E2              jz 0x7ff7
00008015  43                inc bx
00008016  3C20              cmp al,0x20
00008018  E1F6              loope 0x8010
0000801A  8BF7              mov si,di
0000801C  8BCD              mov cx,bp
0000801E  B05C              mov al,0x5c
00008020  E8D600            call word 0x80f9
00008023  E8EDD1            call word 0x5213
00008026  32C0              xor al,al
00008028  8AF0              mov dh,al
0000802A  E8CC00            call word 0x80f9
0000802D  8AF0              mov dh,al
0000802F  AC                lodsb
00008030  3C21              cmp al,0x21
00008032  BB0100            mov bx,0x1
00008035  74C0              jz 0x7ff7
00008037  3C23              cmp al,0x23
00008039  7440              jz 0x807b
0000803B  3C26              cmp al,0x26
0000803D  74B5              jz 0x7ff4
0000803F  49                dec cx
00008040  7492              jz 0x7fd4
00008042  3C2B              cmp al,0x2b
00008044  B008              mov al,0x8
00008046  74E2              jz 0x802a
00008048  8A44FF            mov al,[si-0x1]
0000804B  3C2E              cmp al,0x2e
0000804D  7445              jz 0x8094
0000804F  3C5F              cmp al,0x5f
00008051  7496              jz 0x7fe9
00008053  3C5C              cmp al,0x5c
00008055  74B2              jz 0x8009
00008057  3A04              cmp al,[si]
00008059  75C5              jnz 0x8020
0000805B  3C24              cmp al,0x24
0000805D  7416              jz 0x8075
0000805F  3C2A              cmp al,0x2a
00008061  75BD              jnz 0x8020
00008063  80CE20            or dh,0x20
00008066  46                inc si
00008067  83F902            cmp cx,byte +0x2
0000806A  720D              jc 0x8079
0000806C  8A04              mov al,[si]
0000806E  3C24              cmp al,0x24
00008070  7507              jnz 0x8079
00008072  49                dec cx
00008073  FEC7              inc bh
00008075  80CE10            or dh,0x10
00008078  46                inc si
00008079  FEC7              inc bh
0000807B  FEC7              inc bh
0000807D  B300              mov bl,0x0
0000807F  49                dec cx
00008080  7442              jz 0x80c4
00008082  AC                lodsb
00008083  3C2E              cmp al,0x2e
00008085  7418              jz 0x809f
00008087  3C23              cmp al,0x23
00008089  74F0              jz 0x807b
0000808B  3C2C              cmp al,0x2c
0000808D  751A              jnz 0x80a9
0000808F  80CE40            or dh,0x40
00008092  EBE7              jmp short 0x807b
00008094  8A04              mov al,[si]
00008096  3C23              cmp al,0x23
00008098  B02E              mov al,0x2e
0000809A  7584              jnz 0x8020
0000809C  B301              mov bl,0x1
0000809E  46                inc si
0000809F  FEC3              inc bl
000080A1  49                dec cx
000080A2  7420              jz 0x80c4
000080A4  AC                lodsb
000080A5  3C23              cmp al,0x23
000080A7  74F6              jz 0x809f
000080A9  4E                dec si
000080AA  813C5E5E          cmp word [si],0x5e5e
000080AE  7514              jnz 0x80c4
000080B0  817C025E5E        cmp word [si+0x2],0x5e5e
000080B5  750D              jnz 0x80c4
000080B7  83F904            cmp cx,byte +0x4
000080BA  7248              jc 0x8104
000080BC  83E904            sub cx,byte +0x4
000080BF  83C604            add si,byte +0x4
000080C2  FEC6              inc dh
000080C4  FEC7              inc bh
000080C6  F6C608            test dh,0x8
000080C9  7514              jnz 0x80df
000080CB  FECF              dec bh
000080CD  E310              jcxz 0x80df
000080CF  AC                lodsb
000080D0  3C2D              cmp al,0x2d
000080D2  7407              jz 0x80db
000080D4  3C2B              cmp al,0x2b
000080D6  7507              jnz 0x80df
000080D8  80CE08            or dh,0x8
000080DB  80CE04            or dh,0x4
000080DE  49                dec cx
000080DF  890E9808          mov [0x898],cx
000080E3  891E9A08          mov [0x89a],bx
000080E7  02FB              add bh,bl
000080E9  80FF19            cmp bh,0x19
000080EC  7308              jnc 0x80f6
000080EE  80CE80            or dh,0x80
000080F1  88369D08          mov [0x89d],dh
000080F5  C3                ret
000080F6  E9D2C7            jmp word 0x48cb
000080F9  0AF6              or dh,dh
000080FB  7407              jz 0x8104
000080FD  50                push ax
000080FE  B02B              mov al,0x2b
00008100  E810D1            call word 0x5213
00008103  58                pop ax
00008104  C3                ret
00008105  00E8              add al,ch
00008107  02F5              add dh,ch
00008109  33DB              xor bx,bx
0000810B  A09D08            mov al,[0x89d]
0000810E  A810              test al,0x10
00008110  7401              jz 0x8113
00008112  43                inc bx
00008113  803E3C082D        cmp byte [0x83c],0x2d
00008118  7409              jz 0x8123
0000811A  A808              test al,0x8
0000811C  740B              jz 0x8129
0000811E  C6063C082B        mov byte [0x83c],0x2b
00008123  A804              test al,0x4
00008125  7502              jnz 0x8129
00008127  FEC7              inc bh
00008129  A801              test al,0x1
0000812B  752F              jnz 0x815c
0000812D  02DF              add bl,bh
0000812F  8AC2              mov al,dl
00008131  02C1              add al,cl
00008133  8A269A08          mov ah,[0x89a]
00008137  FECC              dec ah
00008139  7C02              jl 0x813d
0000813B  02C4              add al,ah
0000813D  BF3D08            mov di,0x83d
00008140  0AC0              or al,al
00008142  7C03              jl 0x8147
00008144  E835F6            call word 0x777c
00008147  803C30            cmp byte [si],0x30
0000814A  7502              jnz 0x814e
0000814C  B2FF              mov dl,0xff
0000814E  8BC1              mov ax,cx
00008150  02C2              add al,dl
00008152  8AF0              mov dh,al
00008154  B400              mov ah,0x0
00008156  7F42              jg 0x819a
00008158  B000              mov al,0x0
0000815A  EB4E              jmp short 0x81aa
0000815C  A09B08            mov al,[0x89b]
0000815F  2AC3              sub al,bl
00008161  02DF              add bl,bh
00008163  FEC8              dec al
00008165  7902              jns 0x8169
00008167  32C0              xor al,al
00008169  8AF8              mov bh,al
0000816B  A09A08            mov al,[0x89a]
0000816E  FEC8              dec al
00008170  7902              jns 0x8174
00008172  32C0              xor al,al
00008174  02C7              add al,bh
00008176  7F03              jg 0x817b
00008178  40                inc ax
00008179  FEC7              inc bh
0000817B  E8FEF5            call word 0x777c
0000817E  803C30            cmp byte [si],0x30
00008181  7508              jnz 0x818b
00008183  32C0              xor al,al
00008185  0AFF              or bh,bh
00008187  7408              jz 0x8191
00008189  B701              mov bh,0x1
0000818B  8BC1              mov ax,cx
0000818D  02C2              add al,dl
0000818F  2AC7              sub al,bh
00008191  A29E08            mov [0x89e],al
00008194  8AC7              mov al,bh
00008196  8AF7              mov dh,bh
00008198  EB10              jmp short 0x81aa
0000819A  F6069D0840        test byte [0x89d],0x40
0000819F  7409              jz 0x81aa
000081A1  48                dec ax
000081A2  B703              mov bh,0x3
000081A4  F6F7              div bh
000081A6  02C6              add al,dh
000081A8  FEC4              inc ah
000081AA  F6069D0802        test byte [0x89d],0x2
000081AF  7404              jz 0x81b5
000081B1  C60525            mov byte [di],0x25
000081B4  47                inc di
000081B5  02C3              add al,bl
000081B7  2A069B08          sub al,[0x89b]
000081BB  7611              jna 0x81ce
000081BD  3C04              cmp al,0x4
000081BF  7608              jna 0x81c9
000081C1  800E9D0803        or byte [0x89d],0x3
000081C6  E940FF            jmp word 0x8109
000081C9  B025              mov al,0x25
000081CB  AA                stosb
000081CC  32C0              xor al,al
000081CE  8AD4              mov dl,ah
000081D0  7408              jz 0x81da
000081D2  0AF6              or dh,dh
000081D4  7F04              jg 0x81da
000081D6  FEC0              inc al
000081D8  FEC5              inc ch
000081DA  F6D8              neg al
000081DC  98                cbw
000081DD  91                xchg ax,cx
000081DE  93                xchg ax,bx
000081DF  B020              mov al,0x20
000081E1  8A269D08          mov ah,[0x89d]
000081E5  F6C420            test ah,0x20
000081E8  7402              jz 0x81ec
000081EA  B02A              mov al,0x2a
000081EC  F3AA              rep stosb
000081EE  F6C404            test ah,0x4
000081F1  7508              jnz 0x81fb
000081F3  A03C08            mov al,[0x83c]
000081F6  3C20              cmp al,0x20
000081F8  7401              jz 0x81fb
000081FA  AA                stosb
000081FB  F6C410            test ah,0x10
000081FE  7403              jz 0x8203
00008200  B024              mov al,0x24
00008202  AA                stosb
00008203  8ACE              mov cl,dh
00008205  F6DE              neg dh
00008207  7C12              jl 0x821b
00008209  FECF              dec bh
0000820B  7518              jnz 0x8225
0000820D  B030              mov al,0x30
0000820F  AA                stosb
00008210  EB13              jmp short 0x8225
00008212  FECA              dec dl
00008214  7505              jnz 0x821b
00008216  B02C              mov al,0x2c
00008218  AA                stosb
00008219  B203              mov dl,0x3
0000821B  B030              mov al,0x30
0000821D  FECB              dec bl
0000821F  7801              js 0x8222
00008221  AC                lodsb
00008222  AA                stosb
00008223  E2ED              loop 0x8212
00008225  8A0E9A08          mov cl,[0x89a]
00008229  49                dec cx
0000822A  781F              js 0x824b
0000822C  B02E              mov al,0x2e
0000822E  AA                stosb
0000822F  741A              jz 0x824b
00008231  0AF6              or dh,dh
00008233  7E07              jng 0x823c
00008235  B030              mov al,0x30
00008237  AA                stosb
00008238  FECE              dec dh
0000823A  E0FB              loopne 0x8237
0000823C  E30D              jcxz 0x824b
0000823E  0ADB              or bl,bl
00008240  7E05              jng 0x8247
00008242  A4                movsb
00008243  FECB              dec bl
00008245  E0FB              loopne 0x8242
00008247  B030              mov al,0x30
00008249  F3AA              rep stosb
0000824B  F6C401            test ah,0x1
0000824E  7423              jz 0x8273
00008250  50                push ax
00008251  B8452B            mov ax,0x2b45
00008254  803E740808        cmp byte [0x874],0x8
00008259  7501              jnz 0x825c
0000825B  48                dec ax
0000825C  8A1E9E08          mov bl,[0x89e]
00008260  0ADB              or bl,bl
00008262  7904              jns 0x8268
00008264  F6DB              neg bl
00008266  B42D              mov ah,0x2d
00008268  AB                stosw
00008269  93                xchg ax,bx
0000826A  D40A              aam
0000826C  0D3030            or ax,0x3030
0000826F  86C4              xchg al,ah
00008271  AB                stosw
00008272  58                pop ax
00008273  F6C404            test ah,0x4
00008276  7404              jz 0x827c
00008278  A03C08            mov al,[0x83c]
0000827B  AA                stosb
0000827C  C60500            mov byte [di],0x0
0000827F  BE3D08            mov si,0x83d
00008282  97                xchg ax,di
00008283  2BC6              sub ax,si
00008285  C3                ret
00008286  0000              add [bx+si],al
00008288  0000              add [bx+si],al
0000828A  0000              add [bx+si],al
0000828C  0000              add [bx+si],al
0000828E  0000              add [bx+si],al
00008290  0000              add [bx+si],al
00008292  00810000          add [bx+di+0x0],al
00008296  780A              js 0x82a2
00008298  0000              add [bx+si],al
0000829A  20840000          and [si+0x0],al
0000829E  007D00            add [di+0x0],bh
000082A1  004082            add [bx+si-0x7e],al
000082A4  0F00880A43        str [bx+si+0x430a]
000082A9  6F                outsw
000082AA  6D                insw
000082AB  7069              jo 0x8316
000082AD  6C                insb
000082AE  656420484F        and [fs:bx+si+0x4f],cl
000082B3  50                push ax
000082B4  50                push ax
000082B5  45                inc bp
000082B6  52                push dx
000082B7  0000              add [bx+si],al
000082B9  007F88            add [bx-0x78],bh
000082BC  2400              and al,0x0
000082BE  A00A43            mov al,[0x430a]
000082C1  6F                outsw
000082C2  6C                insb
000082C3  6F                outsw
000082C4  722F              jc 0x82f5
000082C6  677261            jc 0x832a
000082C9  7068              jo 0x8333
000082CB  6963732061        imul sp,[bp+di+0x73],word 0x6120
000082D0  6461              fs popaw
000082D2  7074              jo 0x8348
000082D4  6F                outsw
000082D5  7220              jc 0x82f7
000082D7  6E                outsb
000082D8  6F                outsw
000082D9  7420              jz 0x82fb
000082DB  61                popaw
000082DC  7661              jna 0x833f
000082DE  696C61626C        imul bp,[si+0x61],word 0x6c62
000082E3  651E              gs push ds
000082E5  00C8              add al,cl
000082E7  0A5072            or dl,[bx+si+0x72]
000082EA  657373            gs jnc 0x8360
000082ED  20616E            and [bx+di+0x6e],ah
000082F0  7920              jns 0x8312
000082F2  6B657920          imul sp,[di+0x79],byte +0x20
000082F6  746F              jz 0x8367
000082F8  207265            and [bp+si+0x65],dh
000082FB  7475              jz 0x8372
000082FD  726E              jc 0x836d
000082FF  20746F            and [si+0x6f],dh
00008302  20444F            and [si+0x4f],al
00008305  53                push bx
00008306  27                daa
00008307  00EA              add dl,ch
00008309  0A5377            or dl,[bp+di+0x77]
0000830C  6974636869        imul si,[si+0x63],word 0x6968
00008311  6E                outsb
00008312  6720746F20        and [dword edi+ebp*2+0x20],dh
00008317  43                inc bx
00008318  6F                outsw
00008319  6C                insb
0000831A  6F                outsw
0000831B  722F              jc 0x834c
0000831D  47                inc di
0000831E  7261              jc 0x8381
00008320  7068              jo 0x838a
00008322  6963732041        imul sp,[bp+di+0x73],word 0x4120
00008327  6461              fs popaw
00008329  7074              jo 0x839f
0000832B  6F                outsw
0000832C  7220              jc 0x834e
0000832E  2E2E2E006500      add [cs:di+0x0],ah
00008334  16                push ss
00008335  0B4331            or ax,[bp+di+0x31]
00008338  52                push dx
00008339  46                inc si
0000833A  4C                dec sp
0000833B  33424C            xor ax,[bp+si+0x4c]
0000833E  334C30            xor cx,[si+0x30]
00008341  42                inc dx
00008342  4C                dec sp
00008343  325230            xor dl,[bp+si+0x30]
00008346  42                inc dx
00008347  52                push dx
00008348  3131              xor [bx+di],si
0000834A  52                push dx
0000834B  304252            xor [bp+si+0x52],al
0000834E  32444C            xor al,[si+0x4c]
00008351  32424C            xor al,[bp+si+0x4c]
00008354  324C35            xor cl,[si+0x35]
00008357  42                inc dx
00008358  4C                dec sp
00008359  324C32            xor cl,[si+0x32]
0000835C  46                inc si
0000835D  42                inc dx
0000835E  52                push dx
0000835F  335235            xor dx,[bp+si+0x35]
00008362  42                inc dx
00008363  52                push dx
00008364  33474C            xor ax,[bx+0x4c]
00008367  30424C            xor [bp+si+0x4c],al
0000836A  324C35            xor cl,[si+0x35]
0000836D  42                inc dx
0000836E  4C                dec sp
0000836F  324652            xor al,[bp+0x52]
00008372  37                aaa
00008373  47                inc di
00008374  4C                dec sp
00008375  355235            xor ax,0x3552
00008378  42                inc dx
00008379  46                inc si
0000837A  42                inc dx
0000837B  52                push dx
0000837C  4C                dec sp
0000837D  30424C            xor [bp+si+0x4c],al
00008380  324C35            xor cl,[si+0x35]
00008383  42                inc dx
00008384  4C                dec sp
00008385  324452            xor al,[si+0x52]
00008388  394442            cmp [si+0x42],ax
0000838B  4C                dec sp
0000838C  334C33            xor cx,[si+0x33]
0000838F  42                inc dx
00008390  4C                dec sp
00008391  33444C            xor ax,[si+0x4c]
00008394  324252            xor al,[bp+si+0x52]
00008397  3131              xor [bx+di],si
00008399  52                push dx
0000839A  3200              xor al,[bx+si]
0000839C  2600800B43        add [es:bx+si+0x430b],al
000083A1  334633            xor ax,[bp+0x33]
000083A4  44                inc sp
000083A5  46                inc si
000083A6  44                inc sp
000083A7  324744            xor al,[bx+0x44]
000083AA  47                inc di
000083AB  4C                dec sp
000083AC  324832            xor cl,[bx+si+0x32]
000083AF  55                push bp
000083B0  45                inc bp
000083B1  324733            xor al,[bx+0x33]
000083B4  48                dec ax
000083B5  42                inc dx
000083B6  44                inc sp
000083B7  324430            xor al,[si+0x30]
000083BA  47                inc di
000083BB  42                inc dx
000083BC  55                push bp
000083BD  324C48            xor cl,[si+0x48]
000083C0  55                push bp
000083C1  324534            xor al,[di+0x34]
000083C4  52                push dx
000083C5  45                inc bp
000083C6  2600AA0B43        add [es:bp+si+0x430b],ch
000083CB  324C34            xor cl,[si+0x34]
000083CE  354732            xor ax,0x3247
000083D1  44                inc sp
000083D2  47                inc di
000083D3  44                inc sp
000083D4  324644            xor al,[bp+0x44]
000083D7  46                inc si
000083D8  325234            xor dl,[bp+si+0x34]
000083DB  3645              ss inc bp
000083DD  325545            xor dl,[di+0x45]
000083E0  55                push bp
000083E1  324855            xor cl,[bx+si+0x55]
000083E4  48                dec ax
000083E5  324732            xor al,[bx+0x32]
000083E8  44                inc sp
000083E9  47                inc di
000083EA  44                inc sp
000083EB  324644            xor al,[bp+0x44]
000083EE  46                inc si
000083EF  3238              xor bh,[bx+si]
000083F1  00D4              add ah,dl
000083F3  0B4330            or ax,[bp+di+0x30]
000083F6  42                inc dx
000083F7  55                push bp
000083F8  334C33            xor cx,[si+0x33]
000083FB  42                inc dx
000083FC  44                inc sp
000083FD  334C31            xor cx,[si+0x31]
00008400  42                inc dx
00008401  48                dec ax
00008402  324C32            xor cl,[si+0x32]
00008405  42                inc dx
00008406  47                inc di
00008407  31424C            xor [bp+si+0x4c],ax
0000840A  344C              xor al,0x4c
0000840C  334248            xor ax,[bp+si+0x48]
0000840F  334C35            xor cx,[si+0x35]
00008412  42                inc dx
00008413  44                inc sp
00008414  334247            xor ax,[bp+si+0x47]
00008417  325233            xor dl,[bp+si+0x33]
0000841A  42                inc dx
0000841B  47                inc di
0000841C  335235            xor dx,[bp+si+0x35]
0000841F  42                inc dx
00008420  52                push dx
00008421  3452              xor al,0x52
00008423  334245            xor ax,[bp+si+0x45]
00008426  324252            xor al,[bp+si+0x52]
00008429  335232            xor dx,[bp+si+0x32]
0000842C  57                push di
0000842D  0010              add [bx+si],dl
0000842F  0C52              or al,0x52
00008431  35464C            xor ax,0x4c46
00008434  384752            cmp [bx+0x52],al
00008437  42                inc dx
00008438  52                push dx
00008439  355230            xor ax,0x3052
0000843C  42                inc dx
0000843D  52                push dx
0000843E  3444              xor al,0x44
00008440  42                inc dx
00008441  4C                dec sp
00008442  344C              xor al,0x4c
00008444  30424C            xor [bp+si+0x4c],al
00008447  354C47            xor ax,0x474c
0000844A  52                push dx
0000844B  324252            xor al,[bp+si+0x52]
0000844E  355230            xor ax,0x3052
00008451  42                inc dx
00008452  52                push dx
00008453  355232            xor ax,0x3252
00008456  46                inc si
00008457  52                push dx
00008458  4C                dec sp
00008459  3137              xor [bx],si
0000845B  47                inc di
0000845C  52                push dx
0000845D  3139              xor [bx+di],di
0000845F  46                inc si
00008460  4C                dec sp
00008461  3231              xor dh,[bx+di]
00008463  44                inc sp
00008464  52                push dx
00008465  3231              xor dh,[bx+di]
00008467  42                inc dx
00008468  44                inc sp
00008469  42                inc dx
0000846A  4C                dec sp
0000846B  4C                dec sp
0000846C  3442              xor al,0x42
0000846E  4C                dec sp
0000846F  3130              xor [bx+si],si
00008471  4C                dec sp
00008472  3442              xor al,0x42
00008474  46                inc si
00008475  42                inc dx
00008476  52                push dx
00008477  324C32            xor cl,[si+0x32]
0000847A  42                inc dx
0000847B  52                push dx
0000847C  3134              xor [si],si
0000847E  52                push dx
0000847F  324252            xor al,[bp+si+0x52]
00008482  324245            xor al,[bp+si+0x45]
00008485  3130              xor [bx+si],si
00008487  005800            add [bx+si+0x0],bl
0000848A  6C                insb
0000848B  0C4C              or al,0x4c
0000848D  354752            xor ax,0x5247
00008490  38464C            cmp [bp+0x4c],al
00008493  42                inc dx
00008494  4C                dec sp
00008495  354C30            xor ax,0x304c
00008498  42                inc dx
00008499  4C                dec sp
0000849A  3444              xor al,0x44
0000849C  42                inc dx
0000849D  52                push dx
0000849E  3452              xor al,0x52
000084A0  304252            xor [bp+si+0x52],al
000084A3  355246            xor ax,0x4652
000084A6  4C                dec sp
000084A7  32424C            xor al,[bp+si+0x4c]
000084AA  354C30            xor ax,0x304c
000084AD  42                inc dx
000084AE  4C                dec sp
000084AF  354C32            xor ax,0x324c
000084B2  47                inc di
000084B3  4C                dec sp
000084B4  52                push dx
000084B5  3137              xor [bx],si
000084B7  46                inc si
000084B8  4C                dec sp
000084B9  3139              xor [bx+di],di
000084BB  47                inc di
000084BC  52                push dx
000084BD  3231              xor dh,[bx+di]
000084BF  44                inc sp
000084C0  4C                dec sp
000084C1  3231              xor dh,[bx+di]
000084C3  42                inc dx
000084C4  44                inc sp
000084C5  42                inc dx
000084C6  52                push dx
000084C7  52                push dx
000084C8  3442              xor al,0x42
000084CA  52                push dx
000084CB  3130              xor [bx+si],si
000084CD  52                push dx
000084CE  3442              xor al,0x42
000084D0  47                inc di
000084D1  42                inc dx
000084D2  4C                dec sp
000084D3  325232            xor dl,[bp+si+0x32]
000084D6  42                inc dx
000084D7  4C                dec sp
000084D8  3134              xor [si],si
000084DA  4C                dec sp
000084DB  324252            xor al,[bp+si+0x52]
000084DE  32364245          xor dh,[0x4542]
000084E2  3130              xor [bx+si],si
000084E4  0000              add [bx+si],al
000084E6  0000              add [bx+si],al
000084E8  0000              add [bx+si],al
000084EA  678800            mov [eax],al
000084ED  0000              add [bx+si],al
000084EF  0000              add [bx+si],al
000084F1  004887            add [bx+si-0x79],cl
000084F4  1A00              sbb al,[bx+si]
000084F6  D80C              fmul dword [si]
000084F8  4A                dec dx
000084F9  4F                dec di
000084FA  59                pop cx
000084FB  53                push bx
000084FC  54                push sp
000084FD  49                dec cx
000084FE  43                inc bx
000084FF  4B                dec bx
00008500  204F52            and [bx+0x52],cl
00008503  204B45            and [bp+di+0x45],cl
00008506  59                pop cx
00008507  42                inc dx
00008508  4F                dec di
00008509  41                inc cx
0000850A  52                push dx
0000850B  44                inc sp
0000850C  2028              and [bx+si],ch
0000850E  4A                dec dx
0000850F  2F                das
00008510  4B                dec bx
00008511  2900              sub [bx+si],ax
00008513  004800            add [bx+si+0x0],cl
00008516  0100              add [bx+si],ax
00008518  FA                cli
00008519  0C4A              or al,0x4a
0000851B  3201              xor al,[bx+di]
0000851D  0000              add [bx+si],al
0000851F  0D4B3B            or ax,0x3b4b
00008522  0100              add [bx+si],ax
00008524  06                push es
00008525  0D6A44            or ax,0x446a
00008528  0100              add [bx+si],ax
0000852A  0C0D              or al,0xd
0000852C  6B0000            imul ax,[bx+si],byte +0x0
0000852F  0080810F          add [bx+si+0xf81],al
00008533  00160D49          add [0x490d],dl
00008537  4E                dec si
00008538  49                dec cx
00008539  54                push sp
0000853A  49                dec cx
0000853B  41                inc cx
0000853C  4C                dec sp
0000853D  49                dec cx
0000853E  5A                pop dx
0000853F  49                dec cx
00008540  4E                dec si
00008541  47                inc di
00008542  2E2E2E0005        add [cs:di],al
00008547  002A              add [bp+si],ch
00008549  0D484D            or ax,0x4d48
0000854C  50                push ax
0000854D  4B                dec bx
0000854E  44                inc sp
0000854F  0005              add [di],al
00008551  0034              add [si],dh
00008553  0D3836            or ax,0x3638
00008556  3234              xor dh,[si]
00008558  3100              xor [bx+si],ax
0000855A  0D003E            or ax,0x3e00
0000855D  0D494E            or ax,0x4e49
00008560  53                push bx
00008561  54                push sp
00008562  52                push dx
00008563  55                push bp
00008564  43                inc bx
00008565  54                push sp
00008566  49                dec cx
00008567  4F                dec di
00008568  4E                dec si
00008569  53                push bx
0000856A  3A00              cmp al,[bx+si]
0000856C  2200              and al,[bx+si]
0000856E  50                push ax
0000856F  0D5573            or ax,0x7355
00008572  65207468          and [gs:si+0x68],dh
00008576  65206375          and [gs:bp+di+0x75],ah
0000857A  7273              jc 0x85ef
0000857C  6F                outsw
0000857D  7220              jc 0x859f
0000857F  6B657973          imul sp,[di+0x79],byte +0x73
00008583  206F6E            and [bx+0x6e],ch
00008586  207468            and [si+0x68],dh
00008589  65206E75          and [gs:bp+0x75],ch
0000858D  6D                insw
0000858E  657269            gs jc 0x85fa
00008591  6319              arpl [bx+di],bx
00008593  00760D            add [bp+0xd],dh
00008596  6B657970          imul sp,[di+0x79],byte +0x70
0000859A  61                popaw
0000859B  6420746F          and [fs:si+0x6f],dh
0000859F  206D6F            and [di+0x6f],ch
000085A2  7665              jna 0x8609
000085A4  20796F            and [bx+di+0x6f],bh
000085A7  7572              jnz 0x861b
000085A9  206672            and [bp+0x72],ah
000085AC  6F                outsw
000085AD  672E0022          add [cs:edx],ah
000085B1  00940D50          add [si+0x500d],dl
000085B5  7265              jc 0x861c
000085B7  7373              jnc 0x862c
000085B9  204573            and [di+0x73],al
000085BC  6320              arpl [bx+si],sp
000085BE  746F              jz 0x862f
000085C0  207061            and [bx+si+0x61],dh
000085C3  7573              jnz 0x8638
000085C5  652C20            gs sub al,0x20
000085C8  3C46              cmp al,0x46
000085CA  3130              xor [bx+si],si
000085CC  3E20746F          and [ds:si+0x6f],dh
000085D0  206162            and [bx+di+0x62],ah
000085D3  6F                outsw
000085D4  7274              jc 0x864a
000085D6  0000              add [bx+si],al
000085D8  00840000          add [si+0x0],al
000085DC  8084000000        add byte [si+0x0],0x0
000085E1  8500              test [bx+si],ax
000085E3  0080850A          add [bx+si+0xa85],al
000085E7  00CA              add dl,cl
000085E9  0D686F            or ax,0x6f68
000085EC  7070              jo 0x865e
000085EE  65722E            gs jc 0x861f
000085F1  53                push bx
000085F2  43                inc bx
000085F3  4F                dec di
000085F4  0000              add [bx+si],al
000085F6  800000            add byte [bx+si],0x0
000085F9  004887            add [bx+si-0x79],cl
000085FC  1D00E0            sbb ax,0xe000
000085FF  0D456E            or ax,0x6e45
00008602  7465              jz 0x8669
00008604  7220              jc 0x8626
00008606  53                push bx
00008607  6B696C6C          imul bp,[bx+di+0x6c],byte +0x6c
0000860B  204C65            and [si+0x65],cl
0000860E  7665              jna 0x8675
00008610  6C                insb
00008611  2028              and [bx+si],ch
00008613  312D              xor [di],bp
00008615  3429              xor al,0x29
00008617  205B23            and [bp+di+0x23],bl
0000861A  5D                pop bp
0000861B  3A20              cmp ah,[bx+si]
0000861D  001D              add [di],bl
0000861F  0002              add [bp+si],al
00008621  0E                push cs
00008622  45                inc bp
00008623  6E                outsb
00008624  7465              jz 0x868b
00008626  7220              jc 0x8648
00008628  53                push bx
00008629  7065              jo 0x8690
0000862B  65642028          and [fs:bx+si],ch
0000862F  312D              xor [di],bp
00008631  353030            xor ax,0x3030
00008634  2920              sub [bx+si],sp
00008636  205B23            and [bp+di+0x23],bl
00008639  2323              and sp,[bp+di]
0000863B  235D3A            and bx,[di+0x3a]
0000863E  2000              and [bx+si],al
00008640  0000              add [bx+si],al
00008642  7A89              jpe 0x85cd
00008644  0000              add [bx+si],al
00008646  48                dec ax
00008647  8600              xchg al,[bx+si]
00008649  0000              add [bx+si],al
0000864B  830000            add word [bx+si],byte +0x0
0000864E  20830800          and [bp+di+0x8],al
00008652  340E              xor al,0xe
00008654  53                push bx
00008655  43                inc bx
00008656  4F                dec di
00008657  52                push dx
00008658  45                inc bp
00008659  3A20              cmp ah,[bx+si]
0000865B  3005              xor [di],al
0000865D  00400E            add [bx+si+0xe],al
00008660  54                push sp
00008661  49                dec cx
00008662  4D                dec bp
00008663  45                inc bp
00008664  3A00              cmp al,[bx+si]
00008666  0000              add [bx+si],al
00008668  20860000          and [bp+0x0],al
0000866C  20850000          and [di+0x0],al
00008670  16                push ss
00008671  8B00              mov ax,[bx+si]
00008673  007A88            add [bp+si-0x78],bh
00008676  0000              add [bx+si],al
00008678  7A8B              jpe 0x8605
0000867A  0000              add [bx+si],al
0000867C  0C86              or al,0x86
0000867E  0000              add [bx+si],al
00008680  6C                insb
00008681  8600              xchg al,[bx+si]
00008683  000E8700          add [0x87],cl
00008687  800389            add byte [bp+di],0x89
0000868A  0000              add [bx+si],al
0000868C  007E00            add [bp+0x0],bh
0000868F  0000              add [bx+si],al
00008691  800000            add byte [bx+si],0x0
00008694  00820000          add [bp+si+0x0],al
00008698  90                nop
00008699  8400              test [bx+si],al
0000869B  0000              add [bx+si],al
0000869D  8900              mov [bx+si],ax
0000869F  004083            add [bx+si-0x7d],al
000086A2  0000              add [bx+si],al
000086A4  58                pop ax
000086A5  8600              xchg al,[bx+si]
000086A7  004084            add [bx+si-0x7c],al
000086AA  0000              add [bx+si],al
000086AC  268700            xchg ax,[es:bx+si]
000086AF  004085            add [bx+si-0x7b],al
000086B2  0000              add [bx+si],al
000086B4  48                dec ax
000086B5  8800              mov [bx+si],al
000086B7  0030              add [bx+si],dh
000086B9  8401              test [bx+di],al
000086BB  009E0E43          add [bp+0x430e],bl
000086BF  0002              add [bp+si],al
000086C1  00A40E38          add [si+0x380e],ah
000086C5  3000              xor [bx+si],al
000086C7  007087            add [bx+si-0x79],dh
000086CA  0000              add [bx+si],al
000086CC  20870000          and [bx+0x0],al
000086D0  38850000          cmp [di+0x0],al
000086D4  50                push ax
000086D5  8400              test [bx+si],al
000086D7  004000            add [bx+si+0x0],al
000086DA  0000              add [bx+si],al
000086DC  30850000          xor [di+0x0],al
000086E0  16                push ss
000086E1  89CD              mov bp,cx
000086E3  CC                int3
000086E4  4C                dec sp
000086E5  7D00              jnl 0x86e7
000086E7  004C00            add [si+0x0],cl
000086EA  0000              add [bx+si],al
000086EC  58                pop ax
000086ED  8500              test [bx+si],ax
000086EF  004486            add [si-0x7a],al
000086F2  0000              add [bx+si],al
000086F4  44                inc sp
000086F5  0000              add [bx+si],al
000086F7  007085            add [bx+si-0x7b],dh
000086FA  0000              add [bx+si],al
000086FC  61                popaw
000086FD  8800              mov [bx+si],al
000086FF  007E87            add [bp-0x79],bh
00008702  0000              add [bx+si],al
00008704  50                push ax
00008705  8600              xchg al,[bx+si]
00008707  006086            add [bx+si-0x7a],ah
0000870A  0000              add [bx+si],al
0000870C  A08500            mov al,[0x85]
0000870F  007088            add [bx+si-0x78],dh
00008712  0000              add [bx+si],al
00008714  6F                outsw
00008715  8800              mov [bx+si],al
00008717  002F              add [bx],ch
00008719  8A00              mov al,[bx+si]
0000871B  00A08412          add [bx+si+0x1284],ah
0000871F  0002              add [bp+si],al
00008721  0F                db 0x0f
00008722  204720            and [bx+0x20],al
00008725  41                inc cx
00008726  204D20            and [di+0x20],cl
00008729  45                inc bp
0000872A  2020              and [bx+si],ah
0000872C  204F20            and [bx+0x20],cl
0000872F  56                push si
00008730  204520            and [di+0x20],al
00008733  52                push dx
00008734  1C00              sbb al,0x0
00008736  180F              sbb [bx],cl
00008738  59                pop cx
00008739  4F                dec di
0000873A  55                push bp
0000873B  52                push dx
0000873C  205343            and [bp+di+0x43],dl
0000873F  4F                dec di
00008740  52                push dx
00008741  45                inc bp
00008742  204953            and [bx+di+0x53],cl
00008745  20494E            and [bx+di+0x4e],cl
00008748  205448            and [si+0x48],dl
0000874B  45                inc bp
0000874C  20544F            and [si+0x4f],dl
0000874F  50                push ax
00008750  205445            and [si+0x45],dl
00008753  4E                dec si
00008754  1800              sbb [bx+si],al
00008756  380F              cmp [bx],cl
00008758  45                inc bp
00008759  4E                dec si
0000875A  54                push sp
0000875B  45                inc bp
0000875C  52                push dx
0000875D  20594F            and [bx+di+0x4f],bl
00008760  55                push bp
00008761  52                push dx
00008762  204E41            and [bp+0x41],cl
00008765  4D                dec bp
00008766  45                inc bp
00008767  20504C            and [bx+si+0x4c],dl
0000876A  45                inc bp
0000876B  41                inc cx
0000876C  53                push bx
0000876D  45                inc bp
0000876E  3A20              cmp ah,[bx+si]
00008770  0000              add [bx+si],al
00008772  10840900          adc [si+0x9],al
00008776  58                pop ax
00008777  0F                db 0x0f
00008778  2323              and sp,[bp+di]
0000877A  2323              and sp,[bp+di]
0000877C  2323              and sp,[bp+di]
0000877E  2020              and [bx+si],ah
00008780  2000              and [bx+si],al
00008782  2400              and al,0x0
00008784  660F574F55        xorpd xmm1,oword [bx+0x55]
00008789  4C                dec sp
0000878A  44                inc sp
0000878B  20594F            and [bx+di+0x4f],bl
0000878E  55                push bp
0000878F  204C49            and [si+0x49],cl
00008792  4B                dec bx
00008793  45                inc bp
00008794  20544F            and [si+0x4f],dl
00008797  20504C            and [bx+si+0x4c],dl
0000879A  41                inc cx
0000879B  59                pop cx
0000879C  204147            and [bx+di+0x47],al
0000879F  41                inc cx
000087A0  49                dec cx
000087A1  4E                dec si
000087A2  2028              and [bx+si],ch
000087A4  792F              jns 0x87d5
000087A6  6E                outsb
000087A7  293F              sub [bx],di
000087A9  2001              and [bx+di],al
000087AB  008E0F59          add [bp+0x590f],cl
000087AF  6C                insb
000087B0  0100              add [bx+si],ax
000087B2  94                xchg ax,sp
000087B3  0F797501          vmwrite esi,dword [di+0x1]
000087B7  009A0F6E          add [bp+si+0x6e0f],bl
000087BB  7E01              jng 0x87be
000087BD  00A00F4E          add [bx+si+0x4e0f],ah
000087C1  0000              add [bx+si],al
000087C3  002F              add [bx],ch
000087C5  891A              mov [bp+si],bx
000087C7  00AA0F50          add [bp+si+0x500f],ch
000087CB  324C38            xor cl,[si+0x38]
000087CE  43                inc bx
000087CF  2E43              cs inc bx
000087D1  4C                dec sp
000087D2  3136434C          xor [0x4c43],si
000087D6  38442E            cmp [si+0x2e],al
000087D9  47                inc di
000087DA  4C                dec sp
000087DB  3136464C          xor [0x4c46],si
000087DF  38454C            cmp [di+0x4c],al
000087E2  3443              xor al,0x43
000087E4  0000              add [bx+si],al
000087E6  40                inc ax
000087E7  8600              xchg al,[bx+si]
000087E9  005788            add [bx-0x78],dl
000087EC  0000              add [bx+si],al
000087EE  0000              add [bx+si],al
000087F0  A21E20            mov [0x201e],al
000087F3  3233              xor dh,[bp+di]
000087F5  352C31            xor ax,0x312c
000087F8  382C              cmp [si],ch
000087FA  3134              xor [si],si
000087FC  342C              xor al,0x2c
000087FE  302C              xor [si],ch
00008800  302C              xor [si],ch
00008802  312C              xor [si],bp
00008804  3235              xor dh,[di]
00008806  352C32            xor ax,0x322c
00008809  2C32              sub al,0x32
0000880B  35352C            xor ax,0x2c35
0000880E  322C              xor ch,[si]
00008810  302C              xor [si],ch
00008812  312C              xor [si],bp
00008814  3235              xor dh,[di]
00008816  352C32            xor ax,0x322c
00008819  2C32              sub al,0x32
0000881B  35342C            xor ax,0x2c34
0000881E  3235              xor dh,[di]
00008820  352C30            xor ax,0x302c
00008823  2C30              sub al,0x30
00008825  2C30              sub al,0x30
00008827  2C30              sub al,0x30
00008829  2C33              sub al,0x33
0000882B  302C              xor [si],ch
0000882D  362C31            ss sub al,0x31
00008830  3834              cmp [si],dh
00008832  2C38              sub al,0x38
00008834  352C31            xor ax,0x312c
00008837  3834              cmp [si],dh
00008839  2C31              sub al,0x31
0000883B  3432              xor al,0x32
0000883D  2C32              sub al,0x32
0000883F  31362C31          xor [0x312c],si
00008843  3432              xor al,0x32
00008845  2C31              sub al,0x31
00008847  3932              cmp [bp+si],si
00008849  2C34              sub al,0x34
0000884B  362C31            ss sub al,0x31
0000884E  3939              cmp [bx+di],di
00008850  2C36              sub al,0x36
00008852  2C33              sub al,0x33
00008854  2C30              sub al,0x30
00008856  2C31              sub al,0x31
00008858  302C              xor [si],ch
0000885A  302C              xor [si],ch
0000885C  3436              xor al,0x36
0000885E  2C31              sub al,0x31
00008860  3339              xor di,[bx+di]
00008862  2C35              sub al,0x35
00008864  342C              xor al,0x2c
00008866  332C              xor bp,[si]
00008868  302C              xor [si],ch
0000886A  3436              xor al,0x36
0000886C  2C31              sub al,0x31
0000886E  3338              xor di,[bx+si]
00008870  2C31              sub al,0x31
00008872  3332              xor si,[bp+si]
00008874  2C35              sub al,0x35
00008876  2C30              sub al,0x30
00008878  2C36              sub al,0x36
0000887A  302C              xor [si],ch
0000887C  302C              xor [si],ch
0000887E  3131              xor [bx+di],si
00008880  37                aaa
00008881  2C33              sub al,0x33
00008883  2C32              sub al,0x32
00008885  3333              xor si,[bp+di]
00008887  2C31              sub al,0x31
00008889  35392C            xor ax,0x2c39
0000888C  302C              xor [si],ch
0000888E  3436              xor al,0x36
00008890  2C31              sub al,0x31
00008892  36322C            xor ch,[ss:si]
00008895  3137              xor [bx],si
00008897  2C30              sub al,0x30
00008899  00A31E20          add [bp+di+0x201e],ah
0000889D  3436              xor al,0x36
0000889F  2C31              sub al,0x31
000088A1  36322C            xor ch,[ss:si]
000088A4  3138              xor [bx+si],di
000088A6  2C30              sub al,0x30
000088A8  2C31              sub al,0x31
000088AA  3339              xor di,[bx+di]
000088AC  2C31              sub al,0x31
000088AE  3938              cmp [bx+si],di
000088B0  2C31              sub al,0x31
000088B2  3837              cmp [bx],dh
000088B4  2C32              sub al,0x32
000088B6  3234              xor dh,[si]
000088B8  2C31              sub al,0x31
000088BA  2C32              sub al,0x32
000088BC  3437              xor al,0x37
000088BE  2C32              sub al,0x32
000088C0  3237              xor dh,[bx]
000088C2  2C31              sub al,0x31
000088C4  3339              xor di,[bx+di]
000088C6  2C32              sub al,0x32
000088C8  31362C34          xor [0x342c],si
000088CC  362C31            ss sub al,0x31
000088CF  3938              cmp [bx+si],di
000088D1  2C36              sub al,0x36
000088D3  2C31              sub al,0x31
000088D5  362C30            ss sub al,0x30
000088D8  2C32              sub al,0x32
000088DA  2C34              sub al,0x34
000088DC  362C32            ss sub al,0x32
000088DF  3436              xor al,0x36
000088E1  2C36              sub al,0x36
000088E3  2C31              sub al,0x31
000088E5  37                aaa
000088E6  2C30              sub al,0x30
000088E8  2C31              sub al,0x31
000088EA  3238              xor bh,[bx+si]
000088EC  2C31              sub al,0x31
000088EE  3137              xor [bx],si
000088F0  2C36              sub al,0x36
000088F2  362C32            ss sub al,0x32
000088F5  35332C            xor ax,0x2c33
000088F8  3133              xor [bp+di],si
000088FA  312C              xor [si],bp
000088FC  3139              xor [bx+di],di
000088FE  352C36            xor ax,0x362c
00008901  322C              xor ch,[si]
00008903  3133              xor [bp+di],si
00008905  392C              cmp [si],bp
00008907  3235              xor dh,[di]
00008909  312C              xor [si],bp
0000890B  3436              xor al,0x36
0000890D  2C31              sub al,0x31
0000890F  3938              cmp [bx+si],di
00008911  2C36              sub al,0x36
00008913  2C31              sub al,0x31
00008915  392C              cmp [si],bp
00008917  302C              xor [si],ch
00008919  362C31            ss sub al,0x31
0000891C  3339              xor di,[bx+di]
0000891E  2C32              sub al,0x32
00008920  3437              xor al,0x37
00008922  2C31              sub al,0x31
00008924  3331              xor si,[bx+di]
00008926  2C32              sub al,0x32
00008928  3338              xor di,[bx+si]
0000892A  2C32              sub al,0x32
0000892C  2C31              sub al,0x31
0000892E  3339              xor di,[bx+di]
00008930  2C35              sub al,0x35
00008932  2C31              sub al,0x31
00008934  3835              cmp [di],dh
00008936  2C33              sub al,0x33
00008938  312C              xor [si],bp
0000893A  302C              xor [si],ch
0000893C  3234              xor dh,[si]
0000893E  332C              xor bp,[si]
00008940  3136352C          xor [0x2c35],si
00008944  3133              xor [bp+di],si
00008946  37                aaa
00008947  2C36              sub al,0x36
00008949  382C              cmp [si],ch
0000894B  322C              xor ch,[si]
0000894D  3132              xor [bp+si],si
0000894F  392C              cmp [si],bp
00008951  3139              xor [bx+di],di
00008953  392C              cmp [si],bp
00008955  3134              xor [si],si
00008957  3200              xor al,[bx+si]
00008959  A4                movsb
0000895A  1E                push ds
0000895B  2030              and [bx+si],dh
0000895D  2C34              sub al,0x34
0000895F  362C32            ss sub al,0x32
00008962  35342C            xor ax,0x2c34
00008965  3134              xor [si],si
00008967  2C31              sub al,0x31
00008969  392C              cmp [si],bp
0000896B  302C              xor [si],ch
0000896D  3131              xor [bx+di],si
0000896F  37                aaa
00008970  2C32              sub al,0x32
00008972  3330              xor si,[bx+si]
00008974  2C34              sub al,0x34
00008976  362C32            ss sub al,0x32
00008979  35342C            xor ax,0x2c34
0000897C  3134              xor [si],si
0000897E  2C31              sub al,0x31
00008980  37                aaa
00008981  2C30              sub al,0x30
00008983  2C31              sub al,0x31
00008985  3137              xor [bx],si
00008987  2C32              sub al,0x32
00008989  3135              xor [di],si
0000898B  2C34              sub al,0x34
0000898D  362C32            ss sub al,0x32
00008990  35342C            xor ax,0x2c34
00008993  3134              xor [si],si
00008995  2C31              sub al,0x31
00008997  362C30            ss sub al,0x30
0000899A  2C31              sub al,0x31
0000899C  31362C37          xor [0x372c],si
000089A0  362C34            ss sub al,0x34
000089A3  362C31            ss sub al,0x31
000089A6  36302C            xor [ss:si],ch
000089A9  3138              xor [bx+si],di
000089AB  2C30              sub al,0x30
000089AD  2C34              sub al,0x34
000089AF  362C31            ss sub al,0x31
000089B2  36322C            xor ch,[ss:si]
000089B5  3137              xor [bx],si
000089B7  2C30              sub al,0x30
000089B9  2C31              sub al,0x31
000089BB  3239              xor bh,[bx+di]
000089BD  2C31              sub al,0x31
000089BF  3935              cmp [di],si
000089C1  2C30              sub al,0x30
000089C3  2C33              sub al,0x33
000089C5  322C              xor ch,[si]
000089C7  3233              xor dh,[bp+di]
000089C9  352C31            xor ax,0x312c
000089CC  3934              cmp [si],si
000089CE  2C32              sub al,0x32
000089D0  35322C            xor ax,0x2c32
000089D3  3133              xor [bp+di],si
000089D5  392C              cmp [si],bp
000089D7  3235              xor dh,[di]
000089D9  312C              xor [si],bp
000089DB  3436              xor al,0x36
000089DD  2C31              sub al,0x31
000089DF  3938              cmp [bx+si],di
000089E1  2C36              sub al,0x36
000089E3  2C31              sub al,0x31
000089E5  392C              cmp [si],bp
000089E7  302C              xor [si],ch
000089E9  362C31            ss sub al,0x31
000089EC  3339              xor di,[bx+di]
000089EE  2C32              sub al,0x32
000089F0  3437              xor al,0x37
000089F2  2C31              sub al,0x31
000089F4  3331              xor si,[bx+di]
000089F6  2C31              sub al,0x31
000089F8  3938              cmp [bx+si],di
000089FA  2C32              sub al,0x32
000089FC  2C31              sub al,0x31
000089FE  3339              xor di,[bx+di]
00008A00  2C35              sub al,0x35
00008A02  2C31              sub al,0x31
00008A04  3835              cmp [di],dh
00008A06  2C33              sub al,0x33
00008A08  312C              xor [si],bp
00008A0A  302C              xor [si],ch
00008A0C  3234              xor dh,[si]
00008A0E  332C              xor bp,[si]
00008A10  31363500          xor [0x35],si
00008A14  A5                movsw
00008A15  1E                push ds
00008A16  2031              and [bx+di],dh
00008A18  3337              xor si,[bx]
00008A1A  2C36              sub al,0x36
00008A1C  382C              cmp [si],ch
00008A1E  3235              xor dh,[di]
00008A20  342C              xor al,0x2c
00008A22  3133              xor [bp+di],si
00008A24  312C              xor [si],bp
00008A26  3139              xor [bx+di],di
00008A28  392C              cmp [si],bp
00008A2A  3138              xor [bx+si],di
00008A2C  2C34              sub al,0x34
00008A2E  362C32            ss sub al,0x32
00008A31  35342C            xor ax,0x2c34
00008A34  3134              xor [si],si
00008A36  2C31              sub al,0x31
00008A38  392C              cmp [si],bp
00008A3A  302C              xor [si],ch
00008A3C  3131              xor [bx+di],si
00008A3E  37                aaa
00008A3F  2C32              sub al,0x32
00008A41  3331              xor si,[bx+di]
00008A43  2C34              sub al,0x34
00008A45  362C32            ss sub al,0x32
00008A48  35342C            xor ax,0x2c34
00008A4B  362C31            ss sub al,0x31
00008A4E  37                aaa
00008A4F  2C30              sub al,0x30
00008A51  2C31              sub al,0x31
00008A53  3137              xor [bx],si
00008A55  2C32              sub al,0x32
00008A57  31362C34          xor [0x342c],si
00008A5B  362C32            ss sub al,0x32
00008A5E  35342C            xor ax,0x2c34
00008A61  3134              xor [si],si
00008A63  2C31              sub al,0x31
00008A65  362C30            ss sub al,0x30
00008A68  2C31              sub al,0x31
00008A6A  31362C31          xor [0x312c],si
00008A6E  342C              xor al,0x2c
00008A70  3436              xor al,0x36
00008A72  2C31              sub al,0x31
00008A74  36302C            xor [ss:si],ch
00008A77  3138              xor [bx+si],di
00008A79  2C30              sub al,0x30
00008A7B  2C34              sub al,0x34
00008A7D  362C31            ss sub al,0x31
00008A80  36322C            xor ch,[ss:si]
00008A83  3137              xor [bx],si
00008A85  2C30              sub al,0x30
00008A87  2C31              sub al,0x31
00008A89  3239              xor bh,[bx+di]
00008A8B  2C31              sub al,0x31
00008A8D  3935              cmp [di],si
00008A8F  2C30              sub al,0x30
00008A91  2C33              sub al,0x33
00008A93  322C              xor ch,[si]
00008A95  3233              xor dh,[bp+di]
00008A97  352C31            xor ax,0x312c
00008A9A  3935              cmp [di],si
00008A9C  2C34              sub al,0x34
00008A9E  362C32            ss sub al,0x32
00008AA1  35352C            xor ax,0x2c35
00008AA4  3134              xor [si],si
00008AA6  2C33              sub al,0x33
00008AA8  2C30              sub al,0x30
00008AAA  2C34              sub al,0x34
00008AAC  362C31            ss sub al,0x31
00008AAF  3239              xor bh,[bx+di]
00008AB1  2C36              sub al,0x36
00008AB3  322C              xor ch,[si]
00008AB5  332C              xor bp,[si]
00008AB7  302C              xor [si],ch
00008AB9  3235              xor dh,[di]
00008ABB  352C32            xor ax,0x322c
00008ABE  35352C            xor ax,0x2c35
00008AC1  3131              xor [bx+di],si
00008AC3  362C33            ss sub al,0x33
00008AC6  2C32              sub al,0x32
00008AC8  3333              xor si,[bp+di]
00008ACA  2C36              sub al,0x36
00008ACC  3300              xor ax,[bx+si]
00008ACE  A6                cmpsb
00008ACF  1E                push ds
00008AD0  2032              and [bp+si],dh
00008AD2  35352C            xor ax,0x2c35
00008AD5  37                aaa
00008AD6  2C33              sub al,0x33
00008AD8  312C              xor [si],bp
00008ADA  3230              xor dh,[bx+si]
00008ADC  3300              xor ax,[bx+si]
00008ADE  FF                db 0xff
00008ADF  FF01              inc word [bx+di]
00008AE1  0000              add [bx+si],al
00008AE3  0000              add [bx+si],al
00008AE5  0000              add [bx+si],al
00008AE7  0000              add [bx+si],al
00008AE9  0000              add [bx+si],al
00008AEB  0000              add [bx+si],al
00008AED  0000              add [bx+si],al
00008AEF  0006BAC5          add [0xc5ba],al
00008AF3  07                pop es
00008AF4  8EDA              mov ds,dx
00008AF6  268B3E0200        mov di,[es:0x2]
00008AFB  8EC2              mov es,dx
00008AFD  5B                pop bx
00008AFE  8BEF              mov bp,di
00008B00  83ED10            sub bp,byte +0x10
00008B03  1E                push ds
00008B04  B83907            mov ax,0x739
00008B07  8ED8              mov ds,ax
00008B09  B9BF07            mov cx,0x7bf
00008B0C  2BC8              sub cx,ax
00008B0E  D1E1              shl cx,1
00008B10  D1E1              shl cx,1
00008B12  D1E1              shl cx,1
00008B14  B86C08            mov ax,0x86c
00008B17  8EC0              mov es,ax
00008B19  33F6              xor si,si
00008B1B  33FF              xor di,di
00008B1D  F3A5              rep movsw
00008B1F  1F                pop ds
00008B20  8CD1              mov cx,ss
00008B22  8CD8              mov ax,ds
00008B24  2BC8              sub cx,ax
00008B26  81F90010          cmp cx,0x1000
00008B2A  7603              jna 0x8b2f
00008B2C  B90010            mov cx,0x1000
00008B2F  D1E1              shl cx,1
00008B31  D1E1              shl cx,1
00008B33  D1E1              shl cx,1
00008B35  BA3907            mov dx,0x739
00008B38  8EC2              mov es,dx
00008B3A  33F6              xor si,si
00008B3C  8BFE              mov di,si
00008B3E  EAAD284702        jmp word 0x247:0x28ad
00008B43  0000              add [bx+si],al
00008B45  0000              add [bx+si],al
00008B47  0000              add [bx+si],al
00008B49  0000              add [bx+si],al
00008B4B  0000              add [bx+si],al
00008B4D  0000              add [bx+si],al
00008B4F  00960296          add [bp-0x69fe],dl
00008B53  02960297          add dl,[bp-0x68fe]
00008B57  024702            add al,[bx+0x2]
00008B5A  0000              add [bx+si],al
00008B5C  0000              add [bx+si],al
00008B5E  0000              add [bx+si],al
00008B60  0000              add [bx+si],al
00008B62  0000              add [bx+si],al
00008B64  0000              add [bx+si],al
00008B66  0000              add [bx+si],al
00008B68  0000              add [bx+si],al
00008B6A  0000              add [bx+si],al
00008B6C  0000              add [bx+si],al
00008B6E  0000              add [bx+si],al
00008B70  0000              add [bx+si],al
00008B72  0000              add [bx+si],al
00008B74  0000              add [bx+si],al
00008B76  0000              add [bx+si],al
00008B78  0000              add [bx+si],al
00008B7A  0000              add [bx+si],al
00008B7C  0000              add [bx+si],al
00008B7E  0000              add [bx+si],al
00008B80  0000              add [bx+si],al
00008B82  0000              add [bx+si],al
00008B84  0000              add [bx+si],al
00008B86  0000              add [bx+si],al
00008B88  0000              add [bx+si],al
00008B8A  0000              add [bx+si],al
00008B8C  0000              add [bx+si],al
00008B8E  0001              add [bx+di],al
00008B90  0000              add [bx+si],al
00008B92  0000              add [bx+si],al
00008B94  0000              add [bx+si],al
00008B96  0000              add [bx+si],al
00008B98  0102              add [bp+si],ax
00008B9A  0300              add ax,[bx+si]
00008B9C  0002              add [bp+si],al
00008B9E  07                pop es
00008B9F  0000              add [bx+si],al
00008BA1  0000              add [bx+si],al
00008BA3  0000              add [bx+si],al
00008BA5  00060700          add [0x7],al
00008BA9  0000              add [bx+si],al
00008BAB  00FF              add bh,bh
00008BAD  FF                db 0xff
00008BAE  FF                db 0xff
00008BAF  FF                db 0xff
00008BB0  FF                db 0xff
00008BB1  FF                db 0xff
00008BB2  FF                db 0xff
00008BB3  FF                db 0xff
00008BB4  FF                db 0xff
00008BB5  FF                db 0xff
00008BB6  FF                db 0xff
00008BB7  FF00              inc word [bx+si]
00008BB9  0000              add [bx+si],al
00008BBB  0000              add [bx+si],al
00008BBD  0000              add [bx+si],al
00008BBF  0000              add [bx+si],al
00008BC1  0000              add [bx+si],al
00008BC3  0000              add [bx+si],al
00008BC5  0000              add [bx+si],al
00008BC7  0000              add [bx+si],al
00008BC9  0000              add [bx+si],al
00008BCB  0000              add [bx+si],al
00008BCD  0007              add [bx],al
00008BCF  0000              add [bx+si],al
00008BD1  07                pop es
00008BD2  07                pop es
00008BD3  0001              add [bx+di],al
00008BD5  0101              add [bx+di],ax
00008BD7  0000              add [bx+si],al
00008BD9  0000              add [bx+si],al
00008BDB  0478              add al,0x78
00008BDD  0400              add al,0x0
00008BDF  0300              add ax,[bx+si]
00008BE1  80C0E0            add al,0xe0
00008BE4  F0F8              lock clc
00008BE6  FC                cld
00008BE7  FE00              inc byte [bx+si]
00008BE9  0000              add [bx+si],al
00008BEB  0000              add [bx+si],al
00008BED  0000              add [bx+si],al
00008BEF  0000              add [bx+si],al
00008BF1  0000              add [bx+si],al
00008BF3  0000              add [bx+si],al
00008BF5  0000              add [bx+si],al
00008BF7  0000              add [bx+si],al
00008BF9  0000              add [bx+si],al
00008BFB  0000              add [bx+si],al
00008BFD  0000              add [bx+si],al
00008BFF  0000              add [bx+si],al
00008C01  0000              add [bx+si],al
00008C03  0000              add [bx+si],al
00008C05  0000              add [bx+si],al
00008C07  0000              add [bx+si],al
00008C09  00FD              add ch,bh
00008C0B  43                inc bx
00008C0C  0300              add ax,[bx+si]
00008C0E  C3                ret
00008C0F  9E                sahf
00008C10  1A00              sbb al,[bx+si]
00008C12  050000            add ax,0x0
00008C15  005261            add [bp+si+0x61],dl
00008C18  6E                outsb
00008C19  646F              fs outsw
00008C1B  6D                insw
00008C1C  204E75            and [bp+0x75],cl
00008C1F  6D                insw
00008C20  626572            bound sp,[di+0x72]
00008C23  205365            and [bp+di+0x65],dl
00008C26  65642028          and [fs:bx+si],ch
00008C2A  2D3332            sub ax,0x3233
00008C2D  37                aaa
00008C2E  363820            cmp [ss:bx+si],ah
00008C31  746F              jz 0x8ca2
00008C33  2033              and [bp+di],dh
00008C35  3237              xor dh,[bx]
00008C37  3637              ss aaa
00008C39  2924              sub [si],sp
00008C3B  00C6              add dh,al
00008C3D  00970297          add [bx-0x68fe],dl
00008C41  02960296          add dl,[bp-0x69fe]
00008C45  0200              add al,[bx+si]
00008C47  0000              add [bx+si],al
00008C49  0000              add [bx+si],al
00008C4B  0000              add [bx+si],al
00008C4D  0000              add [bx+si],al
00008C4F  0000              add [bx+si],al
00008C51  0000              add [bx+si],al
00008C53  0000              add [bx+si],al
00008C55  0000              add [bx+si],al
00008C57  1000              adc [bx+si],al
00008C59  40                inc ax
00008C5A  0020              add [bx+si],ah
00008C5C  00800000          add [bx+si+0x0],al
00008C60  0204              add al,[si]
00008C62  0803              or [bp+di],al
00008C64  0000              add [bx+si],al
00008C66  363B1A            cmp bx,[ss:bp+si]
00008C69  3B18              cmp bx,[bx+si]
00008C6B  3B2F              cmp bp,[bx]
00008C6D  3B24              cmp sp,[si]
00008C6F  3B00              cmp ax,[bx+si]
00008C71  0024              add [si],ah
00008C73  0100              add [bx+si],ax
00008C75  0024              add [si],ah
00008C77  0100              add [bx+si],ax
00008C79  0064A7            add [si-0x59],ah
00008C7C  B3B6              mov bl,0xb6
00008C7E  E00D              loopne 0x8c8d
00008C80  0000              add [bx+si],al
00008C82  8A5D78            mov bl,[di+0x78]
00008C85  45                inc bp
00008C86  6301              arpl [bx+di],ax
00008C88  0000              add [bx+si],al
00008C8A  C16FF286          shr word [bx-0xe],byte 0x86
00008C8E  2300              and ax,[bx+si]
00008C90  0080C6A4          add [bx+si-0x5b3a],al
00008C94  7E8D              jng 0x8c23
00008C96  0300              add ax,[bx+si]
00008C98  00407A            add [bx+si+0x7a],al
00008C9B  10F3              adc bl,dh
00008C9D  5A                pop dx
00008C9E  0000              add [bx+si],al
00008CA0  00A0724E          add [bx+si+0x4e72],ah
00008CA4  1809              sbb [bx+di],cl
00008CA6  0000              add [bx+si],al
00008CA8  0010              add [bx+si],dl
00008CAA  A5                movsw
00008CAB  D4E8              aam 0xe8
00008CAD  0000              add [bx+si],al
00008CAF  0000              add [bx+si],al
00008CB1  E87648            call word 0xd52a
00008CB4  17                pop ss
00008CB5  0000              add [bx+si],al
00008CB7  0000              add [bx+si],al
00008CB9  E40B              in al,0xb
00008CBB  54                push sp
00008CBC  0200              add al,[bx+si]
00008CBE  0000              add [bx+si],al
00008CC0  00CA              add dl,cl
00008CC2  9A3B000000        call word 0x0:0x3b
00008CC7  0000              add [bx+si],al
00008CC9  E1F5              loope 0x8cc0
00008CCB  050000            add ax,0x0
00008CCE  0000              add [bx+si],al
00008CD0  E2E2              loop 0x8cb4
00008CD2  E2E3              loop 0x8cb7
00008CD4  E3E3              jcxz 0x8cb9
00008CD6  E4E4              in al,0xe4
00008CD8  E4E5              in al,0xe5
00008CDA  E5E5              in ax,0xe5
00008CDC  E5E6              in ax,0xe6
00008CDE  E6E6              out 0xe6,al
00008CE0  E7E7              out 0xe7,ax
00008CE2  E7E8              out 0xe8,ax
00008CE4  E8E8E8            call word 0x75cf
00008CE7  E9E9E9            jmp word 0x76d3
00008CEA  EAEAEAEBEB        jmp word 0xebeb:0xeaea
00008CEF  EBEB              jmp short 0x8cdc
00008CF1  EC                in al,dx
00008CF2  EC                in al,dx
00008CF3  EC                in al,dx
00008CF4  ED                in ax,dx
00008CF5  ED                in ax,dx
00008CF6  ED                in ax,dx
00008CF7  EE                out dx,al
00008CF8  EE                out dx,al
00008CF9  EE                out dx,al
00008CFA  EE                out dx,al
00008CFB  EF                out dx,ax
00008CFC  EF                out dx,ax
00008CFD  EF                out dx,ax
00008CFE  F0F0F0F1          lock int1
00008D02  F1                int1
00008D03  F1                int1
00008D04  F1                int1
00008D05  F2F2F2F3F3F3F4    rep hlt
00008D0C  F4                hlt
00008D0D  F4                hlt
00008D0E  F4                hlt
00008D0F  F5                cmc
00008D10  F5                cmc
00008D11  F5                cmc
00008D12  F6F6              div dh
00008D14  F6F7              div bh
00008D16  F7F7              div di
00008D18  F7F8              idiv ax
00008D1A  F8                clc
00008D1B  F8                clc
00008D1C  F9                stc
00008D1D  F9                stc
00008D1E  F9                stc
00008D1F  FA                cli
00008D20  FA                cli
00008D21  FA                cli
00008D22  FA                cli
00008D23  FB                sti
00008D24  FB                sti
00008D25  FB                sti
00008D26  FC                cld
00008D27  FC                cld
00008D28  FC                cld
00008D29  FD                std
00008D2A  FD                std
00008D2B  FD                std
00008D2C  FD                std
00008D2D  FE                db 0xfe
00008D2E  FE                db 0xfe
00008D2F  FE                db 0xfe
00008D30  FF                db 0xff
00008D31  FF                db 0xff
00008D32  FF00              inc word [bx+si]
00008D34  0000              add [bx+si],al
00008D36  0001              add [bx+di],al
00008D38  0101              add [bx+di],ax
00008D3A  0202              add al,[bp+si]
00008D3C  0203              add al,[bp+di]
00008D3E  0303              add ax,[bp+di]
00008D40  0404              add al,0x4
00008D42  0404              add al,0x4
00008D44  050505            add ax,0x505
00008D47  06                push es
00008D48  06                push es
00008D49  06                push es
00008D4A  07                pop es
00008D4B  07                pop es
00008D4C  07                pop es
00008D4D  07                pop es
00008D4E  0808              or [bx+si],cl
00008D50  0809              or [bx+di],cl
00008D52  0909              or [bx+di],cx
00008D54  0A0A              or cl,[bp+si]
00008D56  0A0A              or cl,[bp+si]
00008D58  0B0B              or cx,[bp+di]
00008D5A  0B0C              or cx,[si]
00008D5C  0C0C              or al,0xc
00008D5E  0D0D0D            or ax,0xd0d
00008D61  0D0E0E            or ax,0xe0e
00008D64  0E                push cs
00008D65  0F                db 0x0f
00008D66  0F                db 0x0f
00008D67  0F1010            movups xmm2,oword [bx+si]
00008D6A  1010              adc [bx+si],dl
00008D6C  1111              adc [bx+di],dx
00008D6E  1112              adc [bp+si],dx
00008D70  1212              adc dl,[bp+si]
00008D72  1313              adc dx,[bp+di]
00008D74  1313              adc dx,[bp+di]
00008D76  1414              adc al,0x14
00008D78  1415              adc al,0x15
00008D7A  151516            adc ax,0x1615
00008D7D  16                push ss
00008D7E  16                push ss
00008D7F  16                push ss
00008D80  17                pop ss
00008D81  17                pop ss
00008D82  17                pop ss
00008D83  1818              sbb [bx+si],bl
00008D85  1819              sbb [bx+di],bl
00008D87  1919              sbb [bx+di],bx
00008D89  191A              sbb [bp+si],bx
00008D8B  1A1A              sbb bl,[bp+si]
00008D8D  1B1B              sbb bx,[bp+di]
00008D8F  1B1C              sbb bx,[si]
00008D91  1C1C              sbb al,0x1c
00008D93  1C1D              sbb al,0x1d
00008D95  1D1D1E            sbb ax,0x1e1d
00008D98  1E                push ds
00008D99  1E                push ds
00008D9A  1F                pop ds
00008D9B  1F                pop ds
00008D9C  1F                pop ds
00008D9D  2020              and [bx+si],ah
00008D9F  2020              and [bx+si],ah
00008DA1  2121              and [bx+di],sp
00008DA3  2122              and [bp+si],sp
00008DA5  2222              and ah,[bp+si]
00008DA7  2323              and sp,[bp+di]
00008DA9  2323              and sp,[bp+di]
00008DAB  2424              and al,0x24
00008DAD  2425              and al,0x25
00008DAF  252526            and ax,0x2625
00008DB2  26262627          es daa
00008DB6  27                daa
00008DB7  27                daa
00008DB8  2828              sub [bx+si],ch
00008DBA  2829              sub [bx+di],ch
00008DBC  2929              sub [bx+di],bp
00008DBE  292A              sub [bp+si],bp
00008DC0  2A2A              sub ch,[bp+si]
00008DC2  2B2B              sub bp,[bp+di]
00008DC4  2B2C              sub bp,[si]
00008DC6  2C2C              sub al,0x2c
00008DC8  2C2D              sub al,0x2d
00008DCA  2D2D2E            sub ax,0x2e2d
00008DCD  2E2E2F            cs das
00008DD0  2F                das
00008DD1  2F                das
00008DD2  2F                das
00008DD3  3030              xor [bx+si],dh
00008DD5  3031              xor [bx+di],dh
00008DD7  3131              xor [bx+di],si
00008DD9  3232              xor dh,[bp+si]
00008DDB  3232              xor dh,[bp+si]
00008DDD  3333              xor si,[bp+di]
00008DDF  3334              xor si,[si]
00008DE1  3434              xor al,0x34
00008DE3  353535            xor ax,0x3535
00008DE6  353636            xor ax,0x3636
00008DE9  3637              ss aaa
00008DEB  37                aaa
00008DEC  37                aaa
00008DED  3838              cmp [bx+si],bh
00008DEF  005000            add [bx+si+0x0],dl
00008DF2  50                push ax
00008DF3  005000            add [bx+si+0x0],dl
00008DF6  0000              add [bx+si],al
00008DF8  0000              add [bx+si],al
00008DFA  0000              add [bx+si],al
00008DFC  0000              add [bx+si],al
00008DFE  0000              add [bx+si],al
00008E00  0000              add [bx+si],al
00008E02  0000              add [bx+si],al
00008E04  0000              add [bx+si],al
00008E06  0000              add [bx+si],al
00008E08  0000              add [bx+si],al
00008E0A  0000              add [bx+si],al
00008E0C  0000              add [bx+si],al
00008E0E  0000              add [bx+si],al
00008E10  0000              add [bx+si],al
00008E12  0000              add [bx+si],al
00008E14  0000              add [bx+si],al
00008E16  0000              add [bx+si],al
00008E18  0000              add [bx+si],al
00008E1A  0000              add [bx+si],al
00008E1C  0000              add [bx+si],al
00008E1E  0000              add [bx+si],al
00008E20  0000              add [bx+si],al
00008E22  0000              add [bx+si],al
00008E24  0000              add [bx+si],al
00008E26  0000              add [bx+si],al
00008E28  0000              add [bx+si],al
00008E2A  FC                cld
00008E2B  145E              adc al,0x5e
00008E2D  F75F42            neg word [bx+0x42]
00008E30  221D              and bl,[di]
00008E32  3B9A35F5          cmp bx,[bp+si-0xacb]
00008E36  F7D2              not dx
00008E38  4A                dec dx
00008E39  20CA              and dl,cl
00008E3B  0083F2B5          add [bp+di-0x4a0e],al
00008E3F  877D23            xchg di,[di+0x23]
00008E42  7EE0              jng 0x8e24
00008E44  91                xchg ax,cx
00008E45  B7D1              mov bh,0xd1
00008E47  741E              jz 0x8e67
00008E49  27                daa
00008E4A  9E                sahf
00008E4B  58                pop ax
00008E4C  7625              jna 0x8e73
00008E4E  06                push es
00008E4F  12462A            adc al,[bp+0x2a]
00008E52  C5                db 0xc5
00008E53  EE                out dx,al
00008E54  D3AE8796          shr word [bp-0x6979],cl
00008E58  772D              ja 0x8e87
00008E5A  3B7544            cmp si,[di+0x44]
00008E5D  CD14              int 0x14
00008E5F  BE1A31            mov si,0x311a
00008E62  8A929500          mov dl,[bp+si+0x95]
00008E66  9A6D41342D        call word 0x2d34:0x416d
00008E6B  F7BA8000          idiv word [bp+si+0x80]
00008E6F  C9                leave
00008E70  7137              jno 0x8ea9
00008E72  7CDA              jl 0x8e4e
00008E74  7450              jz 0x8ec6
00008E76  A01D17            mov al,[0x171d]
00008E79  3B1B              cmp bx,[bp+di]
00008E7B  11926408          adc [bp+si+0x864],dx
00008E7F  E53C              in ax,0x3c
00008E81  3E6295B67D        bound dx,[ds:di+0x7db6]
00008E86  4A                dec dx
00008E87  1E                push ds
00008E88  6C                insb
00008E89  41                inc cx
00008E8A  5D                pop bp
00008E8B  1D928E            sbb ax,0x8e92
00008E8E  EE                out dx,al
00008E8F  92                xchg ax,dx
00008E90  1345B4            adc ax,[di-0x4c]
00008E93  A4                movsb
00008E94  3632AA7738        xor ch,[ss:bp+si+0x3877]
00008E99  48                dec ax
00008E9A  E14D              loope 0x8ee9
00008E9C  C4BE9495          les di,[bp-0x6a6c]
00008EA0  664B              dec ebx
00008EA2  AD                lodsw
00008EA3  B03A              mov al,0x3a
00008EA5  F77C1D            idiv word [si+0x1d]
00008EA8  104FD8            adc [bx-0x28],cl
00008EAB  5C                pop sp
00008EAC  0935              or [di],si
00008EAE  DC24              fsub qword [si]
00008EB0  3452              xor al,0x52
00008EB2  0E                push cs
00008EB3  B44B              mov ah,0x4b
00008EB5  42                inc dx
00008EB6  132E6155          adc bp,[0x5561]
00008EBA  89506F            mov [bx+si+0x6f],dx
00008EBD  09CC              or sp,cx
00008EBF  BC0C59            mov sp,0x590c
00008EC2  AB                stosw
00008EC3  24CB              and al,0xcb
00008EC5  0BFF              or di,di
00008EC7  EB2F              jmp short 0x8ef8
00008EC9  5C                pop sp
00008ECA  D6                salc
00008ECB  ED                in ax,dx
00008ECC  BDCEFE            mov bp,0xfece
00008ECF  E65B              out 0x5b,al
00008ED1  5F                pop di
00008ED2  A6                cmpsb
00008ED3  B436              mov ah,0x36
00008ED5  41                inc cx
00008ED6  5F                pop di
00008ED7  7009              jo 0x8ee2
00008ED9  63CF              arpl di,cx
00008EDB  61                popaw
00008EDC  8411              test [bx+di],dl
00008EDE  77CC              ja 0x8eac
00008EE0  2B6643            sub sp,[bp+0x43]
00008EE3  7AE5              jpe 0x8eca
00008EE5  D594              aad 0x94
00008EE7  BF5669            mov di,0x6956
00008EEA  6A6C              push byte +0x6c
00008EEC  AF                scasw
00008EED  05BD37            add ax,0x37bd
00008EF0  06                push es
00008EF1  6D                insw
00008EF2  84471B            test [bx+0x1b],al
00008EF5  47                inc di
00008EF6  AC                lodsb
00008EF7  C527              lds sp,[bx]
00008EF9  7065              jo 0x8f60
00008EFB  19E2              sbb dx,sp
00008EFD  58                pop ax
00008EFE  17                pop ss
00008EFF  B751              mov bh,0x51
00008F01  73DF              jnc 0x8ee2
00008F03  4F                dec di
00008F04  8D976E12          lea dx,[bx+0x126e]
00008F08  0377D7            add si,[bx-0x29]
00008F0B  A3703D            mov [0x3d70],ax
00008F0E  0AD7              or dl,bh
00008F10  237ACD            and di,[bp+si-0x33]
00008F13  CC                int3
00008F14  CC                int3
00008F15  CC                int3
00008F16  CC                int3
00008F17  CC                int3
00008F18  4C                dec sp
00008F19  7D00              jnl 0x8f1b
00008F1B  0000              add [bx+si],al
00008F1D  0000              add [bx+si],al
00008F1F  0000              add [bx+si],al
00008F21  81000000          add word [bx+si],0x0
00008F25  0000              add [bx+si],al
00008F27  0020              add [bx+si],ah
00008F29  8400              test [bx+si],al
00008F2B  0000              add [bx+si],al
00008F2D  0000              add [bx+si],al
00008F2F  004887            add [bx+si-0x79],cl
00008F32  0000              add [bx+si],al
00008F34  0000              add [bx+si],al
00008F36  0000              add [bx+si],al
00008F38  7A8A              jpe 0x8ec4
00008F3A  0000              add [bx+si],al
00008F3C  0000              add [bx+si],al
00008F3E  00401C            add [bx+si+0x1c],al
00008F41  8E00              mov es,[bx+si]
00008F43  0000              add [bx+si],al
00008F45  0000              add [bx+si],al
00008F47  50                push ax
00008F48  43                inc bx
00008F49  91                xchg ax,cx
00008F4A  0000              add [bx+si],al
00008F4C  0000              add [bx+si],al
00008F4E  0024              add [si],ah
00008F50  7494              jz 0x8ee6
00008F52  0000              add [bx+si],al
00008F54  0000              add [bx+si],al
00008F56  8096189800        adc byte [bp-0x67e8],0x0
00008F5B  0000              add [bx+si],al
00008F5D  0020              add [bx+si],ah
00008F5F  BC3E9B            mov sp,0x9b3e
00008F62  0000              add [bx+si],al
00008F64  0000              add [bx+si],al
00008F66  286B6E            sub [bp+di+0x6e],ch
00008F69  9E                sahf
00008F6A  0000              add [bx+si],al
00008F6C  0000              add [bx+si],al
00008F6E  F9                stc
00008F6F  0215              add dl,[di]
00008F71  A20000            mov [0x0],al
00008F74  0040B7            add [bx+si-0x49],al
00008F77  43                inc bx
00008F78  3AA50000          cmp ah,[di+0x0]
00008F7C  0010              add [bx+si],dl
00008F7E  A5                movsw
00008F7F  D468              aam 0x68
00008F81  A800              test al,0x0
00008F83  0000              add [bx+si],al
00008F85  2AE7              sub ah,bh
00008F87  8411              test [bx+di],dl
00008F89  AC                lodsb
00008F8A  0000              add [bx+si],al
00008F8C  80F420            xor ah,0x20
00008F8F  E635              out 0x35,al
00008F91  AF                scasw
00008F92  0000              add [bx+si],al
00008F94  A031A9            mov al,[0xa931]
00008F97  5F                pop di
00008F98  63B20000          arpl [bp+si+0x0],si
00008F9C  04BF              add al,0xbf
00008F9E  C9                leave
00008F9F  1B0EB600          sbb cx,[0xb6]
00008FA3  00C5              add ch,al
00008FA5  2EBCA231          cs mov sp,0x31a2
00008FA9  B90040            mov cx,0x4000
00008FAC  763A              jna 0x8fe8
00008FAE  6B0B5E            imul cx,[bp+di],byte +0x5e
00008FB1  BC00E8            mov sp,0xe800
00008FB4  8904              mov [si],ax
00008FB6  23C7              and ax,di
00008FB8  0AC0              or al,al
00008FBA  0062AC            add [bp+si-0x54],ah
00008FBD  C5                db 0xc5
00008FBE  EB78              jmp short 0x9038
00008FC0  2DC380            sub ax,0x80c3
00008FC3  7A17              jpe 0x8fdc
00008FC5  B726              mov bh,0x26
00008FC7  D7                xlatb
00008FC8  58                pop ax
00008FC9  C6                db 0xc6
00008FCA  90                nop
00008FCB  AC                lodsb
00008FCC  6E                outsb
00008FCD  327886            xor bh,[bx+si-0x7a]
00008FD0  07                pop es
00008FD1  CAB457            retf 0x57b4
00008FD4  0A3F              or bh,[bx]
00008FD6  16                push ss
00008FD7  6829CD            push word 0xcd29
00008FDA  A1EDCC            mov ax,[0xcced]
00008FDD  CE                into
00008FDE  1BC2              sbb ax,dx
00008FE0  53                push bx
00008FE1  D0851440          rol byte [di+0x4014],1
00008FE5  61                popaw
00008FE6  51                push cx
00008FE7  59                pop cx
00008FE8  04D4              add al,0xd4
00008FEA  A6                cmpsb
00008FEB  1990B9A5          sbb [bx+si-0x5a47],dx
00008FEF  6F                outsw
00008FF0  25D70F            and ax,0xfd7
00008FF3  20F4              and ah,dh
00008FF5  27                daa
00008FF6  8F                db 0x8f
00008FF7  CB                retf
00008FF8  4E                dec si
00008FF9  DA0A              fimul dword [bp+si]
00008FFB  94                xchg ax,sp
00008FFC  F8                clc
00008FFD  7839              js 0x9038
00008FFF  3F                aas
00009000  01DE              add si,bx
00009002  0CB9              or al,0xb9
00009004  36D7              ss xlatb
00009006  07                pop es
00009007  8F                db 0x8f
00009008  21E1              and cx,sp
0000900A  4F                dec di
0000900B  6704CD            add al,0xcd
0000900E  C9                leave
0000900F  F249              repne dec cx
00009011  E423              in al,0x23
00009013  8145407C6F        add word [di+0x40],0x6f7c
00009018  7CE7              jl 0x9001
0000901A  B670              mov dh,0x70
0000901C  2BA8ADC5          sub bp,[bx+si-0x3a53]
00009020  1DEBE3            sbb ax,0xe3eb
00009023  4C                dec sp
00009024  361219            adc bl,[ss:bx+di]
00009027  37                aaa
00009028  45                inc bp
00009029  EE                out dx,al
0000902A  1CE0              sbb al,0xe0
0000902C  C3                ret
0000902D  56                push si
0000902E  DF8476F1          fild word [si-0xe8a]
00009032  116C3A            adc [si+0x3a],bp
00009035  96                xchg ax,si
00009036  0B13              or dx,[bp+di]
00009038  1AF5              sbb dh,ch
0000903A  16                push ss
0000903B  07                pop es
0000903C  C9                leave
0000903D  7BCE              jpo 0x900d
0000903F  97                xchg ax,di
00009040  40                inc ax
00009041  F8                clc
00009042  DB48BB            fisttp dword [bx+si-0x45]
00009045  1AC2              sbb al,dl
00009047  BD70FB            mov bp,0xfb70
0000904A  890D              mov [di],cx
0000904C  B550              mov ch,0x50
0000904E  99                cwd
0000904F  7616              jna 0x9067
00009051  FF                db 0xff
00009052  EB50              jmp short 0x90a4
00009054  E2A4              loop 0x8ffa
00009056  3F                aas
00009057  143C              adc al,0x3c
00009059  82                db 0x82
0000905A  26E51A            es in ax,0x1a
0000905D  8E4F19            mov cs,[bx+0x19]
00009060  6B8538CFD0        imul ax,[di-0x30c8],byte -0x30
00009065  B8D1EF            mov ax,0xefd1
00009068  12890603          adc cl,[bx+di+0x306]
0000906C  0527C6            add ax,0xc627
0000906F  AB                stosw
00009070  37                aaa
00009071  8CC7              mov di,es
00009073  43                inc bx
00009074  C6                db 0xc6
00009075  B0B7              mov al,0xb7
00009077  96                xchg ax,si
00009078  65                gs
00009079  8F                db 0x8f
0000907A  5C                pop sp
0000907B  EA7BCE327E        jmp word 0x7e32:0xce7b
00009080  0F                db 0x0f
00009081  93                xchg ax,bx
00009082  F4                hlt
00009083  E41A              in al,0x1a
00009085  82                db 0x82
00009086  BF5D33            mov di,0x335d
00009089  96                xchg ax,si
0000908A  309EA162          xor [bp+0x62a1],bl
0000908E  2F                das
0000908F  356099            xor ax,0x9960
00009092  DE02              fiadd word [bp+si]
00009094  A5                movsw
00009095  9D                popfw
00009096  3D210C            cmp ax,0xc21
00009099  9D                popfw
0000909A  96                xchg ax,si
0000909B  43                inc bx
0000909C  0E                push cs
0000909D  058D29            add ax,0x298d
000090A0  2F                das
000090A1  A07BD4            mov al,[0xd47b]
000090A4  51                push cx
000090A5  46                inc si
000090A6  F0F35A            rep lock pop dx
000090A9  A3CD24            mov [0x24cd],ax
000090AC  F32B76D8          rep sub si,[bp-0x28]
000090B0  08A700EE          or [bx-0x1200],ah
000090B4  EF                out dx,ax
000090B5  B693              mov dh,0x93
000090B7  0E                push cs
000090B8  2BAA80E9          sub bp,[bp+si-0x1680]
000090BC  AB                stosw
000090BD  A4                movsb
000090BE  38D2              cmp dl,dl
000090C0  55                push bp
000090C1  AD                lodsw
000090C2  F071EB            lock jno 0x90b0
000090C5  6663A305B1        o32 arpl [bp+di-0x4efb],sp
000090CA  6C                insb
000090CB  4E                dec si
000090CC  A6                cmpsb
000090CD  40                inc ax
000090CE  3C0C              cmp al,0xc
000090D0  27                daa
000090D1  B407              mov ah,0x7
000090D3  E2CF              loop 0x90a4
000090D5  50                push ax
000090D6  4B                dec bx
000090D7  CF                iretw
000090D8  50                push ax
000090D9  B745              mov bh,0x45
000090DB  ED                in ax,dx
000090DC  81128F81          adc word [bp+si],0x818f
000090E0  02BB2A2E          add bh,[bp+di+0x2e2a]
000090E4  2A00              sub al,[bx+si]
000090E6  65DEF9            gs fdivp st1
000090E9  33F3              xor si,bx
000090EB  0435              add al,0x35
000090ED  801544            adc byte [di],0x44
000090F0  4E                dec si
000090F1  6E                outsb
000090F2  83F922            cmp cx,byte +0x22
000090F5  7EC2              jng 0x90b9
000090F7  6821A2            push word 0xa221
000090FA  DA0F              fimul dword [bx]
000090FC  49                dec cx
000090FD  81DB0F49          sbb bx,0x490f
00009101  812C9B6B          sub word [si],0x6b9b
00009105  C1910A0680        rcl word [bx+di+0x60a],byte 0x80
0000910A  92                xchg ax,dx
0000910B  0A0680B2          or al,[0xb280]
0000910F  6AF6              push byte -0xa
00009111  F4                hlt
00009112  A23009            mov [0x930],al
00009115  7FA3              jg 0x90ba
00009117  3009              xor [bx+di],cl
00009119  7F54              jg 0x916f
0000911B  65C242D7          gs ret 0xd742
0000911F  B35D              mov bl,0x5d
00009121  81F1175C          xor cx,0x5c17
00009125  293B              sub [bp+di],di
00009127  AA                stosb
00009128  38817ACF          cmp [bx+di-0x3086],al
0000912C  D1                db 0xd1
0000912D  F717              not word [bx]
0000912F  7231              jc 0x9162
00009131  801872            sbb byte [bx+si],0x72
00009134  31800000          xor [bx+si+0x0],ax
00009138  0000              add [bx+si],al
0000913A  0000              add [bx+si],al
0000913C  00800000          add [bx+si+0x0],al
00009140  0000              add [bx+si],al
00009142  0000              add [bx+si],al
00009144  007F00            add [bx+0x0],bh
00009147  0000              add [bx+si],al
00009149  0000              add [bx+si],al
0000914B  0000              add [bx+si],al
0000914D  0000              add [bx+si],al
0000914F  0000              add [bx+si],al
00009151  0000              add [bx+si],al
00009153  0000              add [bx+si],al
00009155  0000              add [bx+si],al
00009157  0000              add [bx+si],al
00009159  0000              add [bx+si],al
0000915B  0000              add [bx+si],al
0000915D  0000              add [bx+si],al
0000915F  0000              add [bx+si],al
00009161  0000              add [bx+si],al
00009163  0000              add [bx+si],al
00009165  0000              add [bx+si],al
00009167  0000              add [bx+si],al
00009169  0000              add [bx+si],al
0000916B  0000              add [bx+si],al
0000916D  0000              add [bx+si],al
0000916F  0000              add [bx+si],al
00009171  0000              add [bx+si],al
00009173  0000              add [bx+si],al
00009175  0000              add [bx+si],al
00009177  0000              add [bx+si],al
00009179  0000              add [bx+si],al
0000917B  0000              add [bx+si],al
0000917D  0000              add [bx+si],al
0000917F  0000              add [bx+si],al
00009181  0000              add [bx+si],al
00009183  0000              add [bx+si],al
00009185  0000              add [bx+si],al
00009187  0000              add [bx+si],al
00009189  0000              add [bx+si],al
0000918B  0000              add [bx+si],al
0000918D  0000              add [bx+si],al
0000918F  0000              add [bx+si],al
00009191  0000              add [bx+si],al
00009193  0000              add [bx+si],al
00009195  0000              add [bx+si],al
00009197  0000              add [bx+si],al
00009199  0000              add [bx+si],al
0000919B  0000              add [bx+si],al
0000919D  0000              add [bx+si],al
0000919F  0000              add [bx+si],al
000091A1  0000              add [bx+si],al
000091A3  0000              add [bx+si],al
000091A5  0000              add [bx+si],al
000091A7  0000              add [bx+si],al
000091A9  0000              add [bx+si],al
000091AB  0000              add [bx+si],al
000091AD  0000              add [bx+si],al
000091AF  0000              add [bx+si],al
000091B1  0000              add [bx+si],al
000091B3  0000              add [bx+si],al
000091B5  0000              add [bx+si],al
000091B7  0000              add [bx+si],al
000091B9  0000              add [bx+si],al
000091BB  0000              add [bx+si],al
000091BD  0000              add [bx+si],al
000091BF  0000              add [bx+si],al
000091C1  0000              add [bx+si],al
000091C3  0000              add [bx+si],al
000091C5  0000              add [bx+si],al
000091C7  0000              add [bx+si],al
000091C9  0000              add [bx+si],al
000091CB  0000              add [bx+si],al
000091CD  0000              add [bx+si],al
000091CF  0000              add [bx+si],al
000091D1  0000              add [bx+si],al
000091D3  0000              add [bx+si],al
000091D5  0000              add [bx+si],al
000091D7  0000              add [bx+si],al
000091D9  0000              add [bx+si],al
000091DB  0000              add [bx+si],al
000091DD  0000              add [bx+si],al
000091DF  0000              add [bx+si],al
000091E1  0000              add [bx+si],al
000091E3  0000              add [bx+si],al
000091E5  0000              add [bx+si],al
000091E7  0000              add [bx+si],al
000091E9  0000              add [bx+si],al
000091EB  0000              add [bx+si],al
000091ED  0000              add [bx+si],al
000091EF  0000              add [bx+si],al
000091F1  0000              add [bx+si],al
000091F3  0000              add [bx+si],al
000091F5  0000              add [bx+si],al
000091F7  0000              add [bx+si],al
000091F9  0000              add [bx+si],al
000091FB  0000              add [bx+si],al
000091FD  0000              add [bx+si],al
000091FF  0000              add [bx+si],al
00009201  0000              add [bx+si],al
00009203  0000              add [bx+si],al
00009205  0000              add [bx+si],al
00009207  0000              add [bx+si],al
00009209  0000              add [bx+si],al
0000920B  0000              add [bx+si],al
0000920D  0000              add [bx+si],al
0000920F  0000              add [bx+si],al
00009211  0000              add [bx+si],al
00009213  0000              add [bx+si],al
00009215  0000              add [bx+si],al
00009217  0000              add [bx+si],al
00009219  0000              add [bx+si],al
0000921B  0000              add [bx+si],al
0000921D  0000              add [bx+si],al
0000921F  0000              add [bx+si],al
00009221  0000              add [bx+si],al
00009223  0000              add [bx+si],al
00009225  0000              add [bx+si],al
00009227  0000              add [bx+si],al
00009229  0000              add [bx+si],al
0000922B  0000              add [bx+si],al
0000922D  0000              add [bx+si],al
0000922F  0000              add [bx+si],al
00009231  0000              add [bx+si],al
00009233  0000              add [bx+si],al
00009235  0000              add [bx+si],al
00009237  0000              add [bx+si],al
00009239  0000              add [bx+si],al
0000923B  0000              add [bx+si],al
0000923D  0000              add [bx+si],al
0000923F  0000              add [bx+si],al
00009241  0000              add [bx+si],al
00009243  0000              add [bx+si],al
00009245  0000              add [bx+si],al
00009247  0000              add [bx+si],al
00009249  0000              add [bx+si],al
0000924B  0000              add [bx+si],al
0000924D  0000              add [bx+si],al
0000924F  0000              add [bx+si],al
00009251  0000              add [bx+si],al
00009253  0000              add [bx+si],al
00009255  0000              add [bx+si],al
00009257  0000              add [bx+si],al
00009259  0000              add [bx+si],al
0000925B  0000              add [bx+si],al
0000925D  0000              add [bx+si],al
0000925F  0000              add [bx+si],al
00009261  0000              add [bx+si],al
00009263  0000              add [bx+si],al
00009265  0000              add [bx+si],al
00009267  0000              add [bx+si],al
00009269  0000              add [bx+si],al
0000926B  0000              add [bx+si],al
0000926D  0000              add [bx+si],al
0000926F  0000              add [bx+si],al
00009271  0000              add [bx+si],al
00009273  0000              add [bx+si],al
00009275  0000              add [bx+si],al
00009277  0000              add [bx+si],al
00009279  0000              add [bx+si],al
0000927B  0000              add [bx+si],al
0000927D  0000              add [bx+si],al
0000927F  0000              add [bx+si],al
00009281  0000              add [bx+si],al
00009283  0000              add [bx+si],al
00009285  0000              add [bx+si],al
00009287  0000              add [bx+si],al
00009289  0000              add [bx+si],al
0000928B  0000              add [bx+si],al
0000928D  0000              add [bx+si],al
0000928F  0000              add [bx+si],al
00009291  0000              add [bx+si],al
00009293  0000              add [bx+si],al
00009295  0000              add [bx+si],al
00009297  0000              add [bx+si],al
00009299  0000              add [bx+si],al
0000929B  0000              add [bx+si],al
0000929D  0000              add [bx+si],al
0000929F  0000              add [bx+si],al
000092A1  0000              add [bx+si],al
000092A3  0000              add [bx+si],al
000092A5  0000              add [bx+si],al
000092A7  0000              add [bx+si],al
000092A9  0000              add [bx+si],al
000092AB  0000              add [bx+si],al
000092AD  0000              add [bx+si],al
000092AF  0000              add [bx+si],al
000092B1  0000              add [bx+si],al
000092B3  0000              add [bx+si],al
000092B5  0000              add [bx+si],al
000092B7  0000              add [bx+si],al
000092B9  0000              add [bx+si],al
000092BB  0000              add [bx+si],al
000092BD  0000              add [bx+si],al
000092BF  0000              add [bx+si],al
000092C1  0000              add [bx+si],al
000092C3  0000              add [bx+si],al
000092C5  0000              add [bx+si],al
000092C7  0000              add [bx+si],al
000092C9  0000              add [bx+si],al
000092CB  0000              add [bx+si],al
000092CD  0000              add [bx+si],al
000092CF  0000              add [bx+si],al
000092D1  0000              add [bx+si],al
000092D3  0000              add [bx+si],al
000092D5  0000              add [bx+si],al
000092D7  0000              add [bx+si],al
000092D9  0000              add [bx+si],al
000092DB  0000              add [bx+si],al
000092DD  0000              add [bx+si],al
000092DF  0000              add [bx+si],al
000092E1  0000              add [bx+si],al
000092E3  0000              add [bx+si],al
000092E5  0000              add [bx+si],al
000092E7  0000              add [bx+si],al
000092E9  0000              add [bx+si],al
000092EB  0000              add [bx+si],al
000092ED  0000              add [bx+si],al
000092EF  0000              add [bx+si],al
000092F1  0000              add [bx+si],al
000092F3  0000              add [bx+si],al
000092F5  0000              add [bx+si],al
000092F7  0000              add [bx+si],al
000092F9  0000              add [bx+si],al
000092FB  0000              add [bx+si],al
000092FD  0000              add [bx+si],al
000092FF  0000              add [bx+si],al
00009301  0000              add [bx+si],al
00009303  0000              add [bx+si],al
00009305  0000              add [bx+si],al
00009307  0000              add [bx+si],al
00009309  0000              add [bx+si],al
0000930B  0000              add [bx+si],al
0000930D  0000              add [bx+si],al
0000930F  0000              add [bx+si],al
00009311  0000              add [bx+si],al
00009313  0000              add [bx+si],al
00009315  0000              add [bx+si],al
00009317  0000              add [bx+si],al
00009319  0000              add [bx+si],al
0000931B  0000              add [bx+si],al
0000931D  0000              add [bx+si],al
0000931F  0000              add [bx+si],al
00009321  0000              add [bx+si],al
00009323  0000              add [bx+si],al
00009325  0000              add [bx+si],al
00009327  0000              add [bx+si],al
00009329  0000              add [bx+si],al
0000932B  0000              add [bx+si],al
0000932D  0000              add [bx+si],al
0000932F  00FF              add bh,bh
00009331  0000              add [bx+si],al
00009333  0000              add [bx+si],al
00009335  0000              add [bx+si],al
00009337  0000              add [bx+si],al
00009339  0000              add [bx+si],al
0000933B  0000              add [bx+si],al
0000933D  0000              add [bx+si],al
0000933F  0000              add [bx+si],al
00009341  0000              add [bx+si],al
00009343  0000              add [bx+si],al
00009345  0000              add [bx+si],al
00009347  0000              add [bx+si],al
00009349  0000              add [bx+si],al
0000934B  0000              add [bx+si],al
0000934D  0000              add [bx+si],al
0000934F  0000              add [bx+si],al
00009351  0000              add [bx+si],al
00009353  0000              add [bx+si],al
00009355  0000              add [bx+si],al
00009357  0000              add [bx+si],al
00009359  0000              add [bx+si],al
0000935B  0000              add [bx+si],al
0000935D  0000              add [bx+si],al
0000935F  0000              add [bx+si],al
00009361  0000              add [bx+si],al
00009363  0000              add [bx+si],al
00009365  0000              add [bx+si],al
00009367  0000              add [bx+si],al
00009369  0000              add [bx+si],al
0000936B  0000              add [bx+si],al
0000936D  0000              add [bx+si],al
0000936F  0000              add [bx+si],al
00009371  0000              add [bx+si],al
00009373  0000              add [bx+si],al
00009375  0000              add [bx+si],al
00009377  0000              add [bx+si],al
00009379  0000              add [bx+si],al
0000937B  0000              add [bx+si],al
0000937D  0000              add [bx+si],al
0000937F  0000              add [bx+si],al
00009381  0000              add [bx+si],al
00009383  0000              add [bx+si],al
00009385  0000              add [bx+si],al
00009387  0000              add [bx+si],al
00009389  0000              add [bx+si],al
0000938B  0000              add [bx+si],al
0000938D  0000              add [bx+si],al
0000938F  0000              add [bx+si],al
00009391  0000              add [bx+si],al
00009393  0000              add [bx+si],al
00009395  0000              add [bx+si],al
00009397  0000              add [bx+si],al
00009399  0000              add [bx+si],al
0000939B  0000              add [bx+si],al
0000939D  0000              add [bx+si],al
0000939F  0000              add [bx+si],al
000093A1  0000              add [bx+si],al
000093A3  0000              add [bx+si],al
000093A5  0000              add [bx+si],al
000093A7  0000              add [bx+si],al
000093A9  0000              add [bx+si],al
000093AB  0000              add [bx+si],al
000093AD  0000              add [bx+si],al
000093AF  0000              add [bx+si],al
000093B1  0000              add [bx+si],al
000093B3  0000              add [bx+si],al
000093B5  0000              add [bx+si],al
000093B7  0000              add [bx+si],al
000093B9  0000              add [bx+si],al
000093BB  0000              add [bx+si],al
000093BD  0000              add [bx+si],al
000093BF  0000              add [bx+si],al
000093C1  0000              add [bx+si],al
000093C3  0000              add [bx+si],al
000093C5  0000              add [bx+si],al
000093C7  0000              add [bx+si],al
000093C9  0000              add [bx+si],al
000093CB  0000              add [bx+si],al
000093CD  0000              add [bx+si],al
000093CF  0000              add [bx+si],al
000093D1  0000              add [bx+si],al
000093D3  0000              add [bx+si],al
000093D5  0000              add [bx+si],al
000093D7  0000              add [bx+si],al
000093D9  0000              add [bx+si],al
000093DB  0000              add [bx+si],al
000093DD  0000              add [bx+si],al
000093DF  0000              add [bx+si],al
000093E1  0000              add [bx+si],al
000093E3  0000              add [bx+si],al
000093E5  0000              add [bx+si],al
000093E7  0000              add [bx+si],al
000093E9  0000              add [bx+si],al
000093EB  0000              add [bx+si],al
000093ED  0000              add [bx+si],al
000093EF  0000              add [bx+si],al
000093F1  0000              add [bx+si],al
000093F3  0000              add [bx+si],al
000093F5  0000              add [bx+si],al
000093F7  0000              add [bx+si],al
000093F9  0000              add [bx+si],al
000093FB  0000              add [bx+si],al
000093FD  0000              add [bx+si],al
000093FF  0000              add [bx+si],al
00009401  0000              add [bx+si],al
00009403  0000              add [bx+si],al
00009405  0000              add [bx+si],al
00009407  0000              add [bx+si],al
00009409  0000              add [bx+si],al
0000940B  0000              add [bx+si],al
0000940D  0000              add [bx+si],al
0000940F  0000              add [bx+si],al
00009411  0000              add [bx+si],al
00009413  0000              add [bx+si],al
00009415  0000              add [bx+si],al
00009417  0000              add [bx+si],al
00009419  0000              add [bx+si],al
0000941B  0000              add [bx+si],al
0000941D  0000              add [bx+si],al
0000941F  0000              add [bx+si],al
00009421  0000              add [bx+si],al
00009423  0000              add [bx+si],al
00009425  0000              add [bx+si],al
00009427  0000              add [bx+si],al
00009429  0000              add [bx+si],al
0000942B  0000              add [bx+si],al
0000942D  0000              add [bx+si],al
0000942F  0000              add [bx+si],al
00009431  0000              add [bx+si],al
00009433  0000              add [bx+si],al
00009435  0000              add [bx+si],al
00009437  0000              add [bx+si],al
00009439  0000              add [bx+si],al
0000943B  0000              add [bx+si],al
0000943D  0000              add [bx+si],al
0000943F  0000              add [bx+si],al
00009441  0000              add [bx+si],al
00009443  0000              add [bx+si],al
00009445  0000              add [bx+si],al
00009447  0000              add [bx+si],al
00009449  0000              add [bx+si],al
0000944B  0000              add [bx+si],al
0000944D  0000              add [bx+si],al
0000944F  0000              add [bx+si],al
00009451  0000              add [bx+si],al
00009453  0000              add [bx+si],al
00009455  0000              add [bx+si],al
00009457  0000              add [bx+si],al
00009459  0000              add [bx+si],al
0000945B  0000              add [bx+si],al
0000945D  0000              add [bx+si],al
0000945F  0000              add [bx+si],al
00009461  0000              add [bx+si],al
00009463  0000              add [bx+si],al
00009465  0000              add [bx+si],al
00009467  0000              add [bx+si],al
00009469  0000              add [bx+si],al
0000946B  0000              add [bx+si],al
0000946D  0000              add [bx+si],al
0000946F  0000              add [bx+si],al
00009471  0000              add [bx+si],al
00009473  0000              add [bx+si],al
00009475  0000              add [bx+si],al
00009477  0000              add [bx+si],al
00009479  0000              add [bx+si],al
0000947B  0000              add [bx+si],al
0000947D  0000              add [bx+si],al
0000947F  00                db 0x00
