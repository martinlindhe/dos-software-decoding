00000100  44                inc sp
00000101  45                inc bp
00000102  49                dec cx
00000103  4D                dec bp
00000104  4F                dec di
00000105  53                push bx
00000106  2E2E2EB4A0        cs mov ah,0xa0
0000010B  50                push ax
0000010C  07                pop es
0000010D  BB1C01            mov bx,0x11c
00000110  B92C02            mov cx,0x22c
00000113  3107              xor [bx],ax
00000115  43                inc bx
00000116  40                inc ax
00000117  3BD9              cmp bx,cx
00000119  75F8              jnz 0x113
0000011B  90                nop
0000011C  B8B2A2            mov ax,0xa2b2
0000011F  6E                outsb
00000120  B496              mov ah,0x96
00000122  7494              jz 0xb8
00000124  57                push di
00000125  CF                iret
00000126  99                cwd
00000127  6B152D            imul dx,[di],byte +0x2d
0000012A  90                nop
0000012B  5C                pop sp
0000012C  D6                salc
0000012D  1A75B5            sbb dh,[di-0x4b]
00000130  98                cbw
00000131  B7B4              mov bh,0xb4
00000133  B703              mov bh,0x3
00000135  B1B8              mov cl,0xb8
00000137  B866EF            mov ax,0xef66
0000013A  56                push si
0000013B  FD                std
0000013C  803B58            cmp byte [bp+di],0x58
0000013F  80682D8E          sub byte [bx+si+0x2d],0x8e
00000143  F27365            bnd jnc 0x1ab
00000146  2283F876          and al,[bp+di+0x76f8]
0000014A  3455              xor al,0x55
0000014C  93                xchg ax,bx
0000014D  7D3A              jnl 0x189
0000014F  9BE16E            wait loope 0x1c0
00000152  7A3F              jpe 0x193
00000154  90                nop
00000155  ED                in ax,dx
00000156  61                popa
00000157  2F                das
00000158  9D                popf
00000159  50                push ax
0000015A  88EA              mov dl,ch
0000015C  F4                hlt
0000015D  7172              jno 0x1d1
0000015F  B91BE3            mov cx,0xe31b
00000162  CAE56B            retf 0x6be5
00000165  D7                xlatb
00000166  C6                db 0xc6
00000167  E9F098            jmp 0x9a5a
0000016A  27                daa
0000016B  AD                lodsw
0000016C  730B              jnc 0x179
0000016E  D186464D          rol word [bp+0x4d46],1
00000172  F5                cmc
00000173  F735              div word [di]
00000175  E940F3            jmp 0xf4b8
00000178  FE49F7            dec byte [bx+di-0x9]
0000017B  32E1              xor ah,cl
0000017D  0CE2              or al,0xe2
0000017F  05C2EB            add ax,0xebc2
00000182  C4                db 0xc4
00000183  E158              loope 0x1dd
00000185  C9                leave
00000186  DCE5              fsubr to st5
00000188  CE                into
00000189  73E6              jnc 0x171
0000018B  CF                iret
0000018C  5A                pop dx
0000018D  D6                salc
0000018E  E037              loopne 0x1c7
00000190  1535D5            adc ax,0xd535
00000193  68B623            push word 0x23b6
00000196  D923              fldenv [bp+di]
00000198  6E                outsb
00000199  D5C0              aad 0xc0
0000019B  6720D1            a32 and cl,dl
0000019E  723C              jc 0x1dc
000001A0  AE                scasb
000001A1  2039              and [bx+di],bh
000001A3  91                xchg ax,cx
000001A4  20F9              and cl,bh
000001A6  FA                cli
000001A7  58                pop ax
000001A8  21BDBE7F          and [di+0x7fbe],di
000001AC  90                nop
000001AD  1F                pop ds
000001AE  30DB              xor bl,bl
000001B0  07                pop es
000001B1  356EDC            xor ax,0xdc6e
000001B4  30A96A09          xor [bx+di+0x96a],ch
000001B8  FC                cld
000001B9  D517              aad 0x17
000001BB  3F                aas
000001BC  58                pop ax
000001BD  0234              add dh,[si]
000001BF  2F                das
000001C0  06                push es
000001C1  FB                sti
000001C2  C872E84E          enter 0xe872,0x4e
000001C6  AB                stosw
000001C7  27                daa
000001C8  0E                push cs
000001C9  CC                int3
000001CA  EE                out dx,al
000001CB  0C3B              or al,0x3b
000001CD  E1AA              loope 0x179
000001CF  53                push bx
000001D0  159E08            adc ax,0x89e
000001D3  3B1A              cmp bx,[bp+si]
000001D5  52                push dx
000001D6  48                dec ax
000001D7  EC                in al,dx
000001D8  FF471D            inc word [bx+0x1d]
000001DB  EF                out dx,ax
000001DC  9E                sahf
000001DD  6F                outsw
000001DE  4C                dec sp
000001DF  61                popa
000001E0  9AAF13D1AB        call 0xabd1:0x13af
000001E5  3BE1              cmp sp,cx
000001E7  B5E7              mov ch,0xe7
000001E9  7B42              jpo 0x22d
000001EB  6D                insw
000001EC  3AFA              cmp bh,dl
000001EE  7C5F              jl 0x24f
000001F0  7653              jna 0x245
000001F2  FE                db 0xfe
000001F3  703B              jo 0x230
000001F5  9B803108          wait xor byte [bx+di],0x8
000001F9  71EE              jno 0x1e9
000001FB  EF                out dx,ax
000001FC  C18202426F        rol word [bp+si+0x4202],byte 0x6f
00000201  5B                pop bx
00000202  6A45              push byte +0x45
00000204  A3AE10            mov [0x10ae],ax
00000207  880F              mov [bx],cl
00000209  0C02              or al,0x2
0000020B  037005            add si,[bx+si+0x5]
0000020E  001A              add [bp+si],bl
00000210  1B05              sbb ax,[di]
00000212  021E150C          add bl,[0xc15]
00000216  17                pop ss
00000217  7B12              jpo 0x22b
00000219  1209              adc cl,[bx+di]
0000021B  7E80              jng 0x19d
0000021D  8B979388          mov dx,[bx-0x776d]
00000221  97                xchg ax,di
00000222  96                xchg ax,si
00000223  8B9A9899          mov bx,[bp+si-0x6668]
00000227  9D                popf
00000228  9E                sahf
00000229  94                xchg ax,sp
0000022A  9A                db 0x9a
0000022B  8A                db 0x8a
