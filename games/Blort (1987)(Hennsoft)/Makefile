all:
	ndisasm blort.com -o 0x100 > blort.asm
	ndisasm blort.com -e 0x982 -o 0x1082 > 1082.asm # due to misalignment in disasm
