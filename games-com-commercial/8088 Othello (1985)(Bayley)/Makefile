all:
	ndisasm 8088_othello.com -b 16 -o 0x100 | head -n 1 > 8088_othello.asm
	echo "" >> 8088_othello.asm
	ndisasm 8088_othello.com -b 16 -e 0x1af0 -o 0x1bf0 >> 8088_othello.asm