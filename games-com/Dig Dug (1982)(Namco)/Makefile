all:
	ndisasm digdug.com -b 16 -o 0x100 | head -n 2465 > digdug.asm   # 150A is start of code...
	echo "" >> digdug.asm
	ndisasm digdug.com -b 16 -e 0x140a -o 0x150a >> digdug.asm
