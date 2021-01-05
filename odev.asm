; A sayisi=1019     B sayisi=19AB
    LIST    P=16F877A
    INCLUDE "P16F877A.INC"
     CBLOCK  H'20'
    aa,bu,BA,BU
    ENDC
    BSF     STATUS,5
    MOVLW   H'03'
    MOVWF   TRISA
    CLRF    TRISB
    MOVLW   H'06'
    MOVWF   ADCON1
    BCF     STATUS,5
    CLRF    PORTB
TEST_ALT
    MOVLW   H'65'
    MOVWF   aa      
    MOVLW   H'AB'
    MOVWF   BA      
    MOVLW   H'62'
    MOVWF   bu      
    MOVLW   H'19'
    MOVWF   bu      
    MOVLW   H'62'
    MOVWF   bu  
    MOVF    aa,W
    ADDWF   BA,F
    BTFSC   STATUS,C    
    INCF    bu,F        
    BTFSC   PORTA,0
    GOTO    $-1
    BTFSS   PORTA,0
    GOTO    $-1
    MOVF    BA,W
    MOVWF   PORTB
TEST_UST
    MOVF    bu,W        
    ADDWF   BU,F
    BTFSC   PORTA,1
    GOTO    $-1
    BTFSS   PORTA,1
    GOTO    $-1
    MOVF    bu,W
    MOVWF   PORTB
    GOTO    TEST_ALT    
    END