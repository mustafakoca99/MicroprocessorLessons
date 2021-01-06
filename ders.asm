LIST P=16F684A

CLRF h'06'
CLRF H'05'
RSF h'03',5
CLRF h'06'
movlw 0x00
movwf 0x85
BCF h'03',5

basla
	movlw 0x05
	movwf 0x0c
kontrol1
	btfsc 0x05,0
	goto kontrol1
kontrol2
	btfss 0x05,0
	goto kontrol2
	decfsz 0x0c,f
	goto kontrol1
	movlw 0xff
	movwf 0x06
END