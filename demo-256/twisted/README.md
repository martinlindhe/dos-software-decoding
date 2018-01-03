# 18 nov, 2017

demo_256: ../dos-software-decoding/demo-256/twisted/twisted.com
op C6 unknown reg = 2 at 085F:0120 (008710 flat), 15830 instructions executed
executed unknown op, stopping. 15830 instructions executed





# older

code gets corrupted

[085F:011B] 0101       Add16    word [bx+di], ax
[085F:011D] 0101       Add16    word [bx+di], ax
[085F:011F] 0203       Add8     al, byte [bp+di]
[085F:0121] 0304       Add16    ax, word [si]
[085F:0123] 07         Pop16    es
cpu: unknown op 12 at 085F:0124 (15964 instructions executed)
[085F:0124] 12         Unknown


should be

0000011B  03F1              add si,cx
0000011D  D3C6              rol si,cl
0000011F  D1C9              ror cx,1
00000121  81C13412          add cx,0x1234
00000125  8D02              lea ax,[bp+si]
00000127  C1F80C            sar ax,byte 0xc
