LIST P=16f84
	INCLUDE "P16F84.INC"

CLRF PORTB
BSF STATUS,5
CLRF PORTB
MOVLW b'00001111'

MOVWF PORTA
BCF STATUS,5
MOVLW b'11110000'
MOVWF PORTB

MUSTAFA
BTFSC PORTA,1
GOTO MUSTAFA
MOVLW b'00001111'
MOVWF PORTB 
END