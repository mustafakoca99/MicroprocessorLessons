LIST P=16F684A

CLRF h'06'
CLRF H'05'
RSF h'03',5
CLRF h'06'
movlw 0x00
movwf 0x85
BCF h'03',5

basla
	movlw 0x5A
	addlw 0x53
	movwf 0x06
	btfsc 0x03,0
	goto carry_1
	goto carry_0
carry_1
	bsf 0x05,3
	goto carry_1
carry_0
	bcf 0x05,3
	goto carry_0
END