code gets corrupted

[085F:0126] 2640       Inc16    ax
[085F:0128] 33C7       Xor16    ax, di
[085F:012A] 8805       Mov8     byte [di], al
[085F:012C] 47         Inc16    di
[085F:012D] 75F7       Jnz      0x0126
[085F:0126] 260033     Add8     byte [es:bp+di], dh
op C7 unknown reg = 1
[085F:0129] C788054775F7 Unknown  word [bx+si+0x4705], 0xF775


should be:
00000126  E440              in al,0x40
00000128  33C7              xor ax,di
0000012A  8805              mov [di],al
0000012C  47                inc di
