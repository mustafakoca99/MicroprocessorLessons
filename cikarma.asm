LIST P=16F628A

__CONFIG h'3C30'

CLRF h'06'
CLRF H'05'
BSF h'03',5
CLRF h'86'
movlw b'00000000'
movwf 0x85
BCF h'03',5

basla
	movlw d'050'
	movwf h'06'
	movlw d'055'
	subwf h'06',f
	btfsc 0x03,0
	goto negatif
	goto basla
negatif
	bsf 0x05,3
	comf 0x06,f
	goto negatif	
END

