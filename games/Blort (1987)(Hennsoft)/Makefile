all:
	ndisasm blort.com -b 16 -o 0x100 | head -n 2066 > blort.asm
	echo "" >> blort.asm
	ndisasm blort.com -b 16 -e 0xf82 -o 0x1082 >> blort.asm