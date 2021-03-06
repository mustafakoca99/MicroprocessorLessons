LIST P=16F628A
INCLUDE "P16F628.INC"
__CONFIG _INTRC_OSC_NOCLKOUT & _WDT_OFF & _PWRTE_ON & _MCLRE_ON & BODEN_OFF & _LVP_OFF & _DATA_CP_OFF & _CP_OFF
;-------------------

SAYAC1 EQU h'20
SAYAC2 EQU h'21'
ADIM EQU h'22'
	ORG h'00'
	CLRF PORTB
	BANKSEL TRISB
	CLRF TRISB
	MOVLW h'FF'
	MOVWF TRISA
	BANKSEL PORTB
	MOVLW h'07'
	MOVWF CMCON
BASLA
	MOVLW h'FF'
	MOVWF ADIM
SONRAKI_ADIM
TEST_PORTA
	BTFSC PORTA,0
	GOTO TEST_PORTA
	INCF ADIM,F
	MOVF ADIM,W
	ANDLW b'00000111'
	CALL ADIMTBL
	ANDLW b'00001111'
	MOVWF PORTB
	CALL GECIKME
	GOTO SONRAKI_ADIM
ADIMTBL
	ADDWF PCL,F
	RETLW b'0001'
	RETLW b'1001'
	RETLW b'1000'
	RETLW b'1010'
	RETLW b'0010'
	RETLW b'0110'
	RETLW b'0100'
	RETLW b'0101'
GECIKME
	MOVLW h'FF'
	MOVWF SAYACI
DONGU1
	MOVLW h'FF'
	MOVWF SAYAC2
DONGU2
	DECFSZ SAYAC2,F
	GOTO DONGU2
	DECFSZ SAYAC1,F
	GOTO DONGU1
	RETURN
	END