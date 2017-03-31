all:
	ndisasm panic.com -b 16 -o 0x100 | head -n 6169 > panic.asm
	echo "" >> panic.asm
	ndisasm panic.com -b 16 -e 0x3d80 -o 0x3e80 >> panic.asm
