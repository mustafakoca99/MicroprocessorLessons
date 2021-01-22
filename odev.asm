LIST P=16F628A

__CONFIG h'3C30'

abc equ 0x0C
abcd equ 0x0D
abcde equ 0x0E
abcdef equ 0x0f	
 		
	
	clrf portb
	bsf status,5
	clrf portb
	movlw d'031'
	movwf porta
	bcf status,5
makuuu	
	btfsc porta,0
	goto makuuu	
gubyo
	movf xd ,w
	call dongu1
	movlw portb
	call dongu2	
	incf abcd,f
	decfsz abc,f
	goto mustafa
	goto makuuu	
kesme 
	bcf intcon,inte 
	movlw b'00000100'
	xorwf portb,f	
	bcf intcon,intf
	bsf intcon,inte
tamdondurme
	movlw d'004'
	movlw abc
	clrf abcd
mustafa
	movf abcd,w
	call adımtab
	movwf h'06'
	call gecikme2
	incf abcd,f
	decfsz abc,f
	goto adımtab
	goto tamdondurme
adımtab
	addwf h'02',f
	retlw d'003'
	retlw d'006'
	retlw d'009'
	retlw d'012'
	retfie
adımtablosu
	addwf h'02',f
	retlw d'001'
	retlw d'003'
	retlw d'004'
	retlw d'012'
	retlw d'008'
	retlw d'024'
	retlw d'016'
	
dongu1
 	movlw d'000'
	movwf abcde
dongu2
	movlw d'000'
	movwf abcdef
bit
	decfsz abcdef,f
	goto bit
	decfsz abcde,f
	goto dongu2
	return 
END
	
