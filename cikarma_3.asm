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
	movlw d'120'
	movwf h'06'
	movlw d'125'
	subwf h'06',f
devam
	btfsc 0x03,0
	goto negatif
	bsf 0x05,3
	goto devam
negatif
	bcf 0x05,3
	comf 0x06,f
	incf 0x06,f
dongu
	goto dongu	
END

