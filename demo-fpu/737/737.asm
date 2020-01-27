;credits:
; A 3d starfield in (t)asm
; By Vulture / Outlaw Triad
;- An Outlaw Triad Production (c) 1996 -
;Vulture(code) þ Dazl(artist) þ Troop(sysop) þ Xplorer(artist)

org 100h
use16

	mov ax,13h
	int 10h
;setpal
	mov al,1
	mov dx,03C8h
	out dx,al
	inc dx
	mov cl,63
pl:
	mov al,cl
	out dx,al
	out dx,al
	out dx,al
	sub cl,4
	jns pl

inte=47
	mov al,64
	mov dx,03C8h
	out dx,al
	inc dx
;R
	mov al,inte
	out dx,al
	xor al,al
	out dx,al
	out dx,al
;G
	out dx,al
	mov al,inte
	out dx,al
	xor al,al
	out dx,al
;B
	out dx,al
	out dx,al
	mov al,inte
	out dx,al

	out dx,al
	out dx,al
	xor al,al
	out dx,al



    call    InitStars		   ; Set all variables for stars
;calc sin
;Labels SINE: and COSINE: contains sine(0-255)*256
;       mov si,Sine
;       mov di,en-Sine
       xor si,si
      xor di,di
cals:
      mov [bp],di
      fldpi
      fimul word [bp]
      fidiv word [cs:c128]
      fsin
      fimul word [cs:c256]
      fistp word [bp]
      mov ax,[bp]
      mov [cs:Sine+si],ax
      mov [cs:Cosine+si],ax
      inc di
      and di,255
      add si,2
      cmp si,642
      jne cals

MainLoop:
    call    RotateBox
	inc byte[cs:Xan]
	add byte[cs:Yan],2
	inc byte[cs:Zan]

    mov     dx,3dah
VRT:
    in	    al,dx
    test    al,8
    jnz     VRT 	;wait until Verticle Retrace starts
NoVRT:
    in	    al,dx
    test    al,8
    jz	    NoVRT	;wait until Verticle Retrace Ends

    call    DrawBox;;pixel location = ScreenWidth*Ypos + Xpos = 320 * (Y+AddY) + X + AddX
    in		al,60h
    dec 	al
    jne     MainLoop	 ;jump if carry is clear
    
    mov ax,3
    int 10h
    push cs
    pop ds
	mov	dx,msg_b
	mov	ah,9
	int	21h
	ret
msg_b:
	db "- g0blinish,15-12-2017 -",24h
msg_e:
NumPts=4
;**************************************************************
StarSize = 8		; 4 wordz are 8 bytes

MaxStar equ 250 	; What would thiz be, eh? ;-)

;Stars   Star_3d MaxStar DUP (?) ; Array to hold all star data

Speed	equ 1		; Guess what?

Xoff	equ 160
Yoff	equ 100 	; To center the star on the vga
Zoff	equ 256 	; Z-value at start (distance, try and change this)

Seed	dw  0		; Random number seed (obtained from system clock)

; =================================
;  Random: generates random number
;  Input : cx = range
;  Output: dx = random number
; =================================

Random:
    mov     ax,[cs:Seed]
    add     ax,1234		   ; Add a random number
    xor     al,ah		   ; Shuffle around
    rol     ah,1
    add     ax,4321
    ror     al,1
    xor     ah,al
    mov     [cs:Seed],ax
    xor     dx,dx
    div     cx
    ret

InitStars:
    xor     si,si
    mov     bx,MaxStar
InitLoop:
    mov     cx,320
    call    Random
    sub     dx,160
    mov     [cs:Stars+si],dx	    ; Random X (-160..160)
    mov     cx,200
    call    Random
    sub     dx,100
    mov     [cs:Stars+si+2],dx	      ; Random Y (-100..100)
    mov     word [cs:Stars+si+4],Zoff	   ; Reset Z
    add     si,StarSize
    dec     bx
    jnz     InitLoop
    ret

CreateStar: ;PROC NEAR
    mov     cx,320
    call    Random
    sub     dx,160
    mov     [cs:Stars+si],dx	    ; New random X (-160..160)
    mov     cx,200
    call    Random
    sub     dx,100
    mov     [cs:Stars+si+2],dx	      ; New random Y (-100..100)
    mov     word[cs:Stars+si+4],Zoff	  ; Reset Z
    ret

; =====================================
;  CalcStars: updates all stars on vga
; =====================================

UpdateStars:; PROC NEAR
    xor     si,si		   ; First star
    mov     cx,MaxStar		   ; Do all
MainStarLoop:
    push    cx

    cmp     word[cs:Stars+si+4],0	  ; Reached z=0?
    jbe     TermStar		   ; If so, then terminate star

    mov     di,[cs:Stars+6+si]
    mov     byte [es:di],0     ; Delete old star

; === Calc X pos ===
    mov     ax,[cs:Stars+si]
    movsx   dx,ah
    shl     ax,8		   ; ax = X * 256
    mov     cx,[cs:Stars+si+4]
    idiv    cx			   ; ax = (X * 256) / Z
    add     ax,Xoff		   ; ax = ((X * 256) / Z) + Xoff
    cmp     ax,320		   ; Rangecheck X
    jae     TermStar
    mov     di,ax

; === Calc Y pos ===
    mov     ax,[cs:Stars+si+2]
    movsx   dx,ah
    shl     ax,8		   ; ax = Y * 256
    idiv    cx			   ; ax = (Y * 256) / Z
    add     ax,Yoff		   ; ax = ((Y * 256) / Z) + Yoff
    cmp     ax,200		   ; Rangecheck Y
    jae     TermStar
    mov     bx,320
    imul    bx
    add     di,ax

; === Calc color ===               ; Z in range 0..255
    mov     ax,[cs:Stars+4+si]
    mov     cx,16
    idiv    cx

; === Place dot & save vars ===
    mov     byte [es:di],al    ; Place star
    mov     [cs:Stars+si+6],di	    ; Save spot for erasure
    sub     word[cs:Stars+4+si],Speed	  ; Decrease Z (go towards viewer)
    jmp     short ContinueStar	   ; Do next

TermStar:
    call    CreateStar		   ; If z=0 or star<>range then create new 1

ContinueStar:
    add     si,StarSize 	   ; Point to next star
    pop     cx
    loop    MainStarLoop	   ; Loop until done

    ret
;**************************************************************
DrawBox:
	push 0B000h
	pop ds
	push 0A000h
	pop es
	xor si,si
	xor di,di
	mov cx,64000/2
	rep movsw
	push ds
	pop es
	xor di,di
	mov cx,64000/2
	xor ax,ax
	rep stosw


    call    UpdateStars 	   ; Next frame
;update
	xor di,di
	mov si,fc
drl1:
;1
	xor bx,bx
	mov bl,[cs:face+di]
	shl bx,3
	mov ax,[cs:RotCord+bx]
	add ax,160
	mov [cs:X0],ax

	mov ax,[cs:RotCord+bx+2]
	add ax,100
	mov [cs:Y0],ax

	xor bx,bx
	mov bl,[cs:face+di+1]
	shl bx,3
	mov ax,[cs:RotCord+bx]
	add ax,160
	mov [cs:X1],ax

	mov ax,[cs:RotCord+bx+2]
	add ax,100
	mov [cs:Y1],ax

;    If (x2-x1)*(y1-y3)-(x1-x3)*(y2-y1)>0
	xor bx,bx
	mov bl,[cs:face+di+2]
	shl bx,3
	mov ax,[cs:RotCord+bx]
	add ax,160
	mov [cs:X2],ax
	mov ax,[cs:RotCord+bx+2]
	add ax,100
	mov [cs:Y2],ax

	mov ax,[cs:X1]
	sub ax,[cs:X0]
	mov bx,[cs:Y0]
	sub bx,[cs:Y2]
	xor dx,dx
	imul bx
	push eax
	
	mov ax,[cs:X0]
	sub ax,[cs:X2]
	mov bx,[cs:Y1]
	sub bx,[cs:Y0]
	xor dx,dx
	imul bx
	pop ebx
	sub ebx,eax
	or bx,bx
	jns drwe
	jmp nxt
drwe:
;       call _line
	push di
	push si
;       mov ax,15
;       push ax
;       shr bh,2
;       mov bl,bh
;       xor bh,bh
;       push bx
	movzx bx,byte[cs:si]
	
	push bx
	push word [cs:Y2]
	push word [cs:X2]
	push word [cs:Y1]
	push word [cs:X1]
	push word [cs:Y0]
	push word [cs:X0]
	call filled_triangle
	
	pop si
	pop di
;nxt
nxt:
	inc si
	add di,3
	cmp di,12
	jb drl1
	ret
fc:
	db 64,65,66,67
X2: dw 0
Y2: dw 0

    ;DESTROYS: ax,dx,si,di,es,ds
    ;Input: BX= X CX= Y BP= Z
    ;OutPut:BX= X CX= Y BP= Z
RotateXYZ:
    mov     ax,cs
    mov     ds,ax			; X-rotation
					; Y := cos(Xan) * y - sin(Xan) * z
					; Z := sin(Xan) * y + cos(Xan) * z
    mov     si,[Xan]
    add     si,si			; si = angle x
    mov     ax,[Cosine+si]		; ax = cos(angle x)
    imul    cx				; ax = cos(angle x) * y
    mov     di,dx
    shl     edi,16
    mov     di,ax			; store for later use
    mov     ax,[Sine+si]		; ax = sin(angle x)
    imul    bp				; ax = sin(angle x) * z
    shl     edx,16
    mov     dx,ax
    sub     edi,edx			; di = di-ax = cos(vx)*y - sin(vz)*z
    sar     edi,8			; remove the (co)sin "256-factor"
    mov     es,di			; es = x-coordinate

    mov     ax,[Sine+si]		; ax = sin(angle x)
    imul    cx				; ax = sin(angle x) * y
    mov     di,dx
    shl     edi,16
    mov     di,ax
    mov     ax,[Cosine+si]		; ax = cos(angle x)
    imul    bp				; ax = cos(angle x) * z
    shl     edx,16
    mov     dx,ax
    add     edi,edx			; di = di-ax = sin(vx)*y + cos(vx)*z
    sar     edi,8			; remove the (co)sin "256-factor"

    mov     cx,es			; update y
    mov     bp,di			; update z

					; Y-rotation
					; X :=  cos(vy) * xc + sin(vy) * zc
					; Z := -sin(vy) * xc + cos(vy) * zc
    mov     si,[Yan]
    add     si,si			; si = angle y
    mov     ax,[Cosine+si]		; ax = cos(angle y)
    imul    bx				; ax = cos(angle y) * x
    mov     di,dx
    shl     edi,16
    mov     di,ax			; store for later use
    mov     ax,[Sine+si]		; ax = sin(angle y)
    imul    bp				; ax = sin(angle y) * z
    shl     edx,16
    mov     dx,ax
    add     edi,edx			; di = di+ax = cos(vy)*x + sin(vy)*z
    sar     edi,8			; remove the (co)sin "256-factor"
    mov     es,di			; es = x-coordinate

    mov     ax,[Sine+si]		; ax = sin(angle y)
    neg     ax				; ax =-sin(angle y)
    imul    bx				; ax =-sin(angle y) * x
    mov     di,dx
    shl     edi,16
    mov     di,ax
    mov     ax,[Cosine+si]		; ax = cos(angle y)
    imul    bp				; ax = cos(angle y) * z
    shl     edx,16
    mov     dx,ax
    add     edi,edx			; di = di-ax = sin(vy)*x - cos(vy)*z
    sar     edi,8			; remove the (co)sin "256-factor"

    mov     bx,es			; update x
    mov     bp,di			; update z

					; Z-rotation
					; X := cos(vz) * xc - sin(vz) * yc
					; Y := sin(vz) * xc + cos(vz) * yc
    mov     si,[Zan]
    add     si,si			; si = angle z
    mov     ax,[Cosine+si]		; ax = cos(angle z)
    imul    bx				; ax = cos(angle z) * x
    mov     di,dx
    shl     edi,16
    mov     di,ax
    mov     ax,[Sine+si]		; ax = sin(angle z)
    imul    cx				; ax = sin(angle z) * y
    shl     edx,16
    mov     dx,ax
    sub     edi,edx			; di = di-ax = cos(vz)*x - sin(vz)*y
    sar     edi,8			; remove the (co)sin "256-factor"
    mov     es,di			; es = x-coordinate

    mov     ax,[Sine+si]		; ax = sin(angle z)
    imul    bx				; ax = sin(angle z) * x
    mov     di,dx
    shl     edi,16
    mov     di,ax
    mov     ax,[Cosine+si]		; ax = cos(angle z)
    imul    cx				; ax = cos(angle z) * y
    shl     edx,16
    mov     dx,ax
    add     edi,edx			; di = di+ax = sin(vz)*x+cos(vz)*y
    sar     edi,8			; remove the (co)sin "256-factor"

    mov     bx,es			; update x
    mov     cx,di			; update y
    
    ret

RotateBox:
    pushad	    ;saves EVERYTHING (extended registers, too), except flags
    mov     ax,cs
    mov     ds,ax
    mov     es,ax

    mov     di,0    ;point counter
@@DoNextPoint:
    ;Input: BX= X CX= Y BP= Z
    ;OutPut:BX= X CX= Y BP= Z

    mov     bx,[XYZcord +di]   ;load in cordinates to rotate
    mov     cx,[XYZcord+2 +di]
    mov     bp,[XYZcord+4 +di]

    push    di
    call    RotateXYZ
    pop     di

    mov     [RotCord +di],bx  ;save rotated cordinates IN A DIFFERENT PLACE
    mov     [RotCord+2 +di],cx
;    add     bp,[Distance]
    mov     [RotCord+4 +di],bp

    add     di,8	    ;size of each entry
    cmp     di,NumPts*8     ;are we done, yet?
    jb	    @@DoNextPoint   ;No. Do another
    
    popad
    ret
;******************** L I N E   D R A W ****************************
;BUFFER dw  0
X0: dw 0
Y0: dw 0
X1: dw 0
Y1: dw 0
;Color: dw 15
;HorLine: cmp   cx,bx
;        jne    HL1
;        jmp    @EXIT
;HL1:    ja     Var2
;        sub    bx,cx
;        imul   ax,ax,320
;        add    ax,cx
;        mov    di,ax
;        mov    al,[BP+14]
;        mov    cx,bx
;        cld
;        rep    stosb
;        jmp    @EXIT
;Var2:   sub    cx,bx
;        imul   ax,ax,320
;        add    ax,bx
;        mov    di,ax
;        mov    al,[BP+14]
;        cld
;        rep    stosb
;        jmp    @EXIT
;;############################################################################
;_line:
;;ARG      X0:word,Y0:word,X1:word,Y1,Color:word
;        push   bp
;        mov    bp, sp
;        push   di
;        push   si
;        push   0B000h
;        pop    es           ; Color = BP+14
;        mov    bx,[cs:X0];[BP+06]   ; X  = BP+06
;        mov    ax,[cs:Y0];[BP+08]   ; Y  = BP+08
;        mov    cx,[cs:X1];[BP+10]   ; X1 = BP+10
;        mov    si,[cs:Y1];[BP+12]   ; Y1 = BP+12
;        cmp    ax,si
;        jb     @NO_SW1
;        je     HorLine
;        xchg   ax,si
;        xchg   bx,cx
;@NO_SW1: sub   si,ax
;        sub    cx,bx
;        cld
;        jns    @H_ABS
;        neg    cx
;        std
;@H_ABS:  mov   di,320
;        mul    di
;        mov    di,ax
;        add    di,bx
;        or     si,si
;        jnz    @NOT_H
;        cld
;        mov    al,1;[cs:Color];[BP+14]
;        inc    cx
;        rep    stosb
;        jmp    @EXIT
;@NOT_H:  or    cx,cx
;        jnz    @NOT_V
;        cld
;        mov    al,1;[cs:Color];[BP+14]
;        mov    cx,si
;        inc    cx
;        mov    bx,320-1
;@VLINE_LOOP:   stosb
;        add    di,bx
;        loop   @VLINE_LOOP
;        jmp    @EXIT
;@NOT_V:  cmp   cx,si
;        lahf
;        ja     @H_IND
;        xchg   cx,si
;@H_IND:  mov   dx,si
;        sub    dx,cx
;        shl    dx,1
;        shl    si,1
;        mov    bx,si
;        sub    bx,cx
;        inc    cx
;        mov    al,1;[cs:Color];[BP+14]
;        push   bp
;        mov    bp,320
;        sahf
;        jb     @DIAG_V
;        or     bx,bx
;@LH:    stosb
;        jns    @SH
;        add    bx,si
;        loop   @LH
;        jmp    @X
;@SH:    add    di,bp
;        add    bx,dx
;        loop   @LH
;        jmp    @X
;@DIAG_V: or    bx,bx
;@LV:    mov    [es:di],al
;        jns    @SV
;        add    di,bp
;        add    bx,si
;        loop   @LV
;        jmp    @X
;@SV:    scasb
;        add    di,bp
;        add    bx,dx
;        loop   @LV
;@X:     pop    bp
;@EXIT:  pop    si
;        pop    di
;        pop    bp
;        ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Mikolaj Felix 14/5/2001
; mfelix@polbox.com

filled_triangle:

@@x1 equ [bp+4]
@@y1 equ [bp+6]
@@x2 equ [bp+8]
@@y2 equ [bp+10]
@@x3 equ [bp+12]
@@y3 equ [bp+14]
@@col equ [bp+16]

@@dx12 equ [bp-2]
@@dx13 equ [bp-4]
@@dx23 equ [bp-6]

	push bp
	mov bp,sp
	sub sp,6
;       push es

	mov ax,@@y1
	cmp ax,@@y3
	jb ft_check1

	xchg ax,@@y3
	mov @@y1,ax

	mov ax,@@x1
	xchg ax,@@x3
	mov @@x1,ax
ft_check1:
	mov ax,@@y2
	cmp ax,@@y3
	jb ft_check2

	xchg ax,@@y3
	mov @@y2,ax

	mov ax,@@x2
	xchg ax,@@x3
	mov @@x2,ax
ft_check2:
	mov ax,@@y1
	cmp ax,@@y2
	jb ft_check3

	xchg ax,@@y2
	mov @@y1,ax

	mov ax,@@x1
	xchg ax,@@x2
	mov @@x1,ax
ft_check3:

	mov bx,@@y2
	sub bx,@@y1
	jnz ft_dx12_make

	mov word @@dx12,0
	jmp ft_dx12_done
ft_dx12_make:
	mov ax,@@x2
	sub ax,@@x1
	shl ax,7
	cwd
	idiv bx
	mov @@dx12,ax			; dx12 = (x2-x1)/(y2-y1)
ft_dx12_done:

	mov bx,@@y3
	sub bx,@@y1
	jnz ft_dx13_make

	mov word  @@dx13,0
	jmp ft_dx13_done
ft_dx13_make:
	mov ax,@@x3
	sub ax,@@x1
	shl ax,7
	cwd
	idiv bx
	mov @@dx13,ax			; dx13 = (x3-x1)/(y3-y1)
ft_dx13_done:

	mov bx,@@y3
	sub bx,@@y2
	jnz ft_dx23_make

	mov word  @@dx23,0
	jmp ft_dx23_done
ft_dx23_make:
	mov ax,@@x3
	sub ax,@@x2
	shl ax,7
	cwd
	idiv bx
	mov @@dx23,ax			; dx23 = (x3-x2)/(y3-y2)
ft_dx23_done:

	mov ax,@@x1
	shl ax,7
	mov bx,ax
	mov cx,@@y1
ft_loop1:
	push ax
	push cx

	push word  @@col
	push cx
	mov dx,bx
	shr dx,7
	push dx
	mov dx,ax
	shr dx,7
	push dx
	call horizontal_line

	pop cx
	pop ax

	add ax,@@dx13
	add bx,@@dx12
	inc cx
	cmp cx,@@y2
	jb ft_loop1

	
	mov bx,@@x2
	shl bx,7
	mov cx,@@y2
ft_loop2:
	push ax
	push cx

	push word  @@col
	push cx
	mov dx,bx
	shr dx,7
	push dx
	mov dx,ax
	shr dx,7
	push dx
	call horizontal_line

	pop cx
	pop ax

	add ax,@@dx13
	add bx,@@dx23
	inc cx
	cmp cx,@@y3
	jb ft_loop2

;       pop es
	add sp,6
	pop bp
	ret 14
;endp

horizontal_line:; proc

@@x1 equ [bp+4]
@@x2 equ [bp+6]
@@y equ [bp+8]
@@col equ [bp+10]

	push bp
	mov bp,sp

	mov ax,@@x1
	cmp ax,@@x2
	je hl_quit
	jb hl_ok

	xchg ax,@@x2
	mov @@x1,ax
hl_ok:
	mov di,@@y
	mov ax,di
	shl di,6
	shl ax,8
	add di,ax
	add di,@@x1

	mov ax,@@col
	mov ah,al

	cld
	mov cx,@@x2
	sub cx,@@x1
	inc cx
	shr cx,1
	jnc hl_draw
	stosb
hl_draw:
	rep stosw
hl_quit:
	pop bp
	ret 8
;====================== v a r i a b l e s ==========================
Xan: dw 0
Yan: dw 0
Zan: dw 0

c128:dw 128
c256:dw 256
;
face:
	db 0,1,3
	db 1,2,3
	db 0,2,1
	db 0,3,2
ed=40
XYZcord:
 dw -ed,-ed, ed,0
 dw  ed, ed, ed,0
 dw -ed, ed,-ed,0
 dw  ed,-ed,-ed,0
RotCord:
; dw 0,0,0,0
; dw 0,0,0,0
; dw 0,0,0,0
; dw 0,0,0,0

Sine=RotCord+64
Cosine =Sine+128
Stars=Cosine+1024
;Sine:
; include "sincos.dw"
;en: