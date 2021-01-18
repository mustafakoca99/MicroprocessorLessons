LIST P=16F628A

__CONFIG h'3C30'

	org	0x000
	goto	baslaa
	org	0x004
	goto	kesmeprg
baslaa
	CLRF h'06'
	CLRF H'05'
	BSF h'03',5
	movlw	b'11110111'
	movwf	0x85
	movlw	b'11110000'
	movwf	0x86
	movlw	b'10001000'
	movwf	0x0b
	BCF 	h'03',5
anaprog
	bsf	0x05,3
	call	gec
	bcf	0x05,0
	call	gec
	goto	anaprog
kesmeprg
	bcf	0x0b,3
	swapf	0x06,f
	xorwf	0x06,f
	bcf  	0X0b,0	
	bsf 	0X0b,3	
	retfie
gec
	movlw	0x6f
	movwf	0x21
bir
	movlw	0xff
	movwf	0x22
iki
	decfsz	0x22
	goto	iki
	decfsz	0x21
	goto	bir
	return
END