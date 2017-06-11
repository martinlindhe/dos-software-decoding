;                     P l a s m a t i c   E x p e r i e n c e
;                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;                               coded by Io / Matrix
;
;		Keys used in the demo:
;		~~~~~~~~~~~~~~~~~~~~~~
;		[SPACE]	- Press it to swap colors, release it
;			  to swap back.
;
;		[ESC]	- Exit the demo. :)

SECTION .text
		org  	0x100				; .com files always start 256 bytes into the segment

; constants
		intensity	equ	7			; how intense the colors shall be
		txtX		equ	17			; X pos for the text
		txtY	 	equ	190 		; Y pos for the text


Start:	int 	3					; BREAK TO DOSBOX debugger
		cli							; clear interrupt flag
		mov		al, 13h
		int		10h					; MCGA mode

;------------------------------------------------------------------------------
; Generate the palette (41 bytes)
;------------------------------------------------------------------------------
		mov		dx, 03c9h			; the port to write to
		out		dx, al				; change first color to red
		mov		cl, 2				; run the loop two times
lp:		push	cx					; save count
		mov		cl, 64				; nr of colors to write
Up:		call	OutP				; write color (Dark > Light)
		inc		bx					; increment bx (color count)
		loop	Up					; loop 64 times
		mov		cl, 64				; nr of colors to write
Dn:		dec		bx					; decrement bx (color count)
		call	OutP				; write the color (Light > Dark)
		loop	Dn					; loop plc3 64 times
		pop		cx					; get the loopvalue back
		out		dx, al				; change the color color to green
		loop	lp					; do the whole thing again

;------------------------------------------------------------------------------
; Cosinus generator by Wally (22 bytes)
;------------------------------------------------------------------------------
		mov		bx, 0798fh
		mov		bp, 512
Iloop:	mov		ax, -39
		imul	bx
		add		cx, dx
		add		bx, cx
		mov		[cos+bp], bh
		dec		bp
		jns		Iloop
;------------------------------------------------------------------------------

		push	0a000h
		pop		es					; VGA-segment into ES
		push	0f000h
		pop		fs					; BIOS-font-segment into FS

;------------------------------------------------------------------------------
; The Plasma (77 bytes)
;------------------------------------------------------------------------------
MainL:	xor		di, di				; Start pos for the plasma
		mov		ah, 200/2			; how many rows to do
		mov		cx, dx				; start value for cx is the same as dx
		push	dx					; save dx
vert:	pop		dx					; get old dx, so we get same startvalue
		push	dx					; push it so we can get it again
		push	ax					; Save ah for the vertical loop
		mov		ah, 160				; nr of pixels/line (2*2 pixels)
horz:	push	ax					; Save AH for the horizontal loop
		xor		bh, bh				; clear BH so we know that BL=BX
		mov		bl, dl				; mov DL variation to BL
		add		al, [cos+bx]		; add cosinus value for BL to AL
		mov		bl, dh				; mov DH variation to BL
		add		al, [cos+bx]		; add cosinus value for DH to AL
		mov		bl, cl				; mov CL variation to BL
		add		al, [cos+bx]		; add cosinus value for CL to AL
		mov		bl, ch				; mov CH variation to BL
		add		al, [cos+bx]		; add cosinus value for CH to AL
		mov		ah, al				; AL and AH now contains a nice color
		stosw						; write two pixels
		add		di, 318				; add with 318 to get on the next line
		stosw						; write two pixels below the first
		sub		di, 320				; get to the new startposition
		inc		dx					; increment DL for some variation
		inc		dh					; increment DH for some variation
		pop		ax					; get horizontal count
		dec		ah					; decrement it
		jnz		horz				; loop until the line is full
		add		di, 320				; add one line to get to a clean line
		add		cx, 0102h			; add some variation to CL and CH
		pop		ax					; get vertical count
		dec		ah					; decrement it
		jnz		vert				; loop until the screen is full
		pop		dx					; get startvalue back
		sub		dx, 511				; change it some so the plasma will 
									; have some movement

;------------------------------------------------------------------------------
; Write the string out (75 bytes)
;-----------------------------------------------------------------------------
		pusha
		mov		di, (320*txtY)+txtX	; where to start writing the text
		mov		si, Text			; what text to write
		mov		cx, TextEnd-Text	; CX = how many chars in text
Chars:	push	cx					; save the amount of chars
		push	di					; save startposition
		lodsb						; get char from string
		cbw							; convert AL to AX
		shl		ax, 3				; multiply AX by 8 to get offset
		mov		bx, 0fa6eh			; calculate the correct address
		add		bx, ax				; for the char-data
		mov		cl, 8				; 8 bytes to get
Bytes:	push	cx					; save the byte counter
		mov		al, [fs:bx]			; get the byte
		mov		cl, 8				; 1 byte = 8 bits
_Bits:	shl		al, 1				; chech bit: 7, if '1' or '0'
		jnc		Done				; and get next bit
Pixel:	add		byte [es:di], 20	; add color at es:[di] with 20
Done:	inc		di					; add di to go one place forward
		loop	_Bits				; and get the next bit
Next:	inc		bx					; next byte to get
		add		di, 320-8			; move down to next position
		pop		cx					; get byte counter back
		loop	Bytes				; and get the next one
		pop		di					; get the original position
		add		di, 35				; move to the next char-pos
		pop		cx					; get string-counter back
		loop	Chars				; and get the next char

;------------------------------------------------------------------------------
; WaitRetrace (13 bytes)
;------------------------------------------------------------------------------
		mov		dx, 3dah
@@1:	in		al, dx
		and		al, 8
		jnz		@@1
@@2:	in		al, dx
		and		al, 8
		jz		@@2					; no comments :)
		popa						; restore the registers
;------------------------------------------------------------------------------

		in		al, 60h				; read from port 60h
		dec		ax					; check if ESC is pressed
		jnz		MainL				; if not jmp to mainloop
Quit:	mov		al, 3
		int		10h					; back to textmode
		sti							; set interrupt flag
		ret							; and exit to DOS

;------------------------------------------------------------------------------
; Set a palette color
;------------------------------------------------------------------------------
OutP:
		mov	al, bl					; mov color count to al
		out	dx, al					; set R value for the color
		out	dx, al					; set G value for the color
		add	al, intensity			; we add some to one color so
		cmp	al, 63					; we don't get a black-white pal
		jbe	xxxx					; check if color > 63
		mov	al, 63					; if yes color = 63
xxxx:	out	dx, al					; set B value for the color
		ret							; Quit the procedure


;------------------------------------------------------------------------------
; Variables
;------------------------------------------------------------------------------
SECTION .data
		Text		db	'PLASMATIC'	; string to write
		TextEnd		db	' by Io/MTX'; endposition

SECTION .bss
		cos			resb	64*3
