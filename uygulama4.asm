LIST P=16f84
	INCLUDE "P16F84.INC"
	CLRF PORTB
	BSF STATUS,5
	CLRF TRISB
	MOVLW H'FF'
	MOVWF TRISA
	BCF STATUS,5
KONTROL
	BTFSC PORTA,0
	GOTO KONTROL
	BSF PORTB,0

END


