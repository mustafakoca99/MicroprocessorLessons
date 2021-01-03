LIST P=16f84
	INCLUDE "P16F84.INC"
	CLRF PORTB       
    	BSF STATUS,5    
   	CLRF PORTB          
 	MOVWF PORTA          
    	BCF STATUS,5       
MUSTAFA
    BTFSC PORTA,0       
    GOTO MUSTAFA
KOCA
    BTFSS PORTA,0        
    GOTO KOCA
    BTFSC PORTB,0       
    GOTO maku
    BSF PORTB,0          
    GOTO MUSTAFA
maku
    BCF PORTB,0         
    GOTO MUSTAFA

    End
END