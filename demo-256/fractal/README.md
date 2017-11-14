# 15 nov 2017

demo_256: ../dos-software-decoding/demo-256/fractal/fractal.com
XXX video: set video mode to 320x200, 256 colors (VGA)
disasm: unknown op 19 at 085F:012F (00871F flat), 9979 instructions executed
executed unknown op, stopping. 9979 instructions executed

--

012F gets corrupted

[085F:012F] 19         Unknown

should be
0000012F  51                push cx

