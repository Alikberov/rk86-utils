TMP@SP:	EQU	0760DH	; Tape-In Subroutine saved SP
;;;;;;;;;;;;;;;;;;;;;;;;;
	XRA	A
	MOV	H,A
	MOV	L,A
L1:	PUSH	H
	XRA	A
	MOV	L,H
	MOV	H,A
	MOV	D,A
	MOV	E,A
	MVI	C,04EH
	CALL	MUL@24
	LXI	B,076D0H
	DAD	B
	POP	D
	MOV	C,E
	MOV	B,A
	DAD	B
	MOV	A,M
	XRI	07FH
	MOV	M,A
	XCHG
	INR	L
	MOV	A,L
	CPI	04EH
	JC	L1
	MVI	L,000H
	INR	H
	MOV	A,H
	CPI	01EH
	JC	L1
	JMP	0

;;;;;;;;;;;;;;;;;;;;;;;;;
;	AHL = AHL * DEC
;;;;;;;;;;;;;;;;;;;;;;;;;
MUL@24:	PUSH	H	; 11
	LXI	H,00000H; 10
	DAD	SP	; 10
	SHLD	TMP@SP	; 16
	POP	H	; 10
	SPHL		;  5
	MOV	B,A	;  5
	XRA	A	;  4
	MOV	H,A	;  5
	MOV	L,A	;  5#81
	XCHG		;  4
	DAD	H	; 10
	XCHG		;  4
	JNC	$+5	; 10
	DAD	SP	; 10
	ADC	B	;  4
	DAD	H	; 10
	ADC	A	;  4#56*23=1288
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	MOV	D,C
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	DAD	H
	ADC	A
	XCHG
	DAD	H
	XCHG
	JNC	$+5
	DAD	SP
	ADC	B
	MOV	C,A	;  5
	DAD	H
	ADC	A
	XCHG		;  4
	DAD	H	; 10
	XCHG		;  4
	JNC	$+5	; 10
	DAD	SP	; 10
	ADC	B	;  4
	XCHG		;  4
	MOV	H,C	;  5
	DAD	H	; 10
	LHLD	TMP@SP	; 16
	SPHL		;  5
	XCHG		;  4
	POP	D	; 10
	RET		; 10#111+81+1288=1480
