LIST P=16f84
	INCLUDE "P16F84.INC"
mustafa equ 0x0C
koca equ 0x0D

	CLRF PORTB       
    	BSF STATUS,5    
   	CLRF PORTB           	       
    	BCF STATUS,5

mk
	MOVLW b'00001111'
	MOVWF PORTB
	CALL bekle
	MOVLW b'11110000'
	MOVWF PORTB
	CALL bekle
	GOTO mk

bekle
	MOVLW b'11111111'
	MOVWF mustafa
sayac 
	MOVLW b'11111111'
	MOVWF koca
kont
	DECFSZ koca,F
	GOTO kont
	DECFSZ mustafa,F
	GOTO sayac
	RETURN 
END

	