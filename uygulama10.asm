LIST P=16f84
	INCLUDE "P16F84.INC"
	 CLRF PORTB       
    	BSF STATUS,5    
   	 CLRF PORTB          
   	
	 MOVWF PORTA          
  	  BCF STATUS,5 
MUSTAFA
    BTFSC PORTA,0       
    GOTO KOCA
	BSF PORTB,0
KOCA
	BTFSC PORTA,1
	GOTO MUSTAFA
	BSF PORTB,1
END  