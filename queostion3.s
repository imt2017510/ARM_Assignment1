	AREA    gcd,CODE,READONLY
    EXPORT __main
    ENTRY
	
__main    FUNCTION
		MOV R0, #15		;first number
		MOV R1, #6		;second number
		MOV R2, #0		;intializing register to store gcd
		
LOOP	CMP R0, R1		;comparing first two numbers
		BGE LOOP1		;if R0>R1 ,branch to loop1
		BLT LOOP2		;if R0<R1 ,branch to loop2
		B STOP			;stop the execution when R1==R2

LOOP1 	SUB R1, R1, R0	;R1=R1-R0
		MOV R2, R1		;storing new value to R2
		B LOOP			;loop back to comp
		
LOOP2 	SUB R1, R1, R0	;R1=R1-R0
		MOV R2, R1		;storing new value to R2
		B LOOP			;loop back to comp
		
STOP    B STOP			;stoping the execution
		ENDFUNC
		END
			
;this program will give the gcd of given two numbers.
;the new value will be stored in R2.
;when R1==R2 then R2 value will be the gcd of given numbers.