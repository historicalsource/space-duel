GINNING OF SECTION
16$:	JSR VGRTSL
	BNE 90$			;ALWAYS$
20$:	LALJSR CNTSCL
	LXHJSR CNTSCL
	JSR VGADD2
;NOT DONE IN ROM SO CAN CHANGE BRIGHTNESS
;VECTOR TO CORRECT PLACE
	LDA CABINET		;FLIP?
	BPL 25$			;NOPE
	LDA GAME		;NO FLIP ON GAME 3 (1 PLAYER, 2 SCORES)
	CMP #3
	BEQ 25$
	LDY TEMP3+1		;GET Y POINTER
	LDA Y,130$		;ELSE GET FLIP INFO
25$:	STA UPDOWN
	LDX TEMP3+1		;GET COLOR OF SCORES
	LDA X,SCRCLR
	TAY			;PUT IN Y FOR VGSTAT INST
	JSR VGSTAT
	LDY TEMP3+1
	LDA Y,100$		;X/4
	LDX #05B		;TGINNING OF SECTION
16$:	JSR VGRTSL
	BNE 90$			;ALWAYS$
20$:	LALJSR CNTSCL
	LXHJSR CNTSCL
	JSR VGADD2
;NOT DONE IN ROM SO CAN CHANGE BRIGHTNESS
;VECTOR TO CORRECT PLACE
	LDA CABINET		;FLIP?
	BPL 25$			;NOPE
	LDA GAME		;NO FLIP ON GAME 3 (1 PLAYER, 2 SCORES)
	CMP #3
	BEQ 25$
	LDY TEMP3+1		;GET Y POINTER
	LDA Y,130$		;ELSE GET FLIP INFO
25$:	STA UPDOWN
	LDX TEMP3+1		;GET COLOR OF SCORES
	LDA X,SCRCLR
	TAY			;PUT IN Y FOR VGSTAT INST
	JSR VGSTAT
	LDY TEMP3+1
	LDA Y,100$		;X/4
	LDX #05B		;T