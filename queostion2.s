	AREA    largeno,CODE,READONLY
    EXPORT __main
    ENTRY
__main    FUNCTION
		MOV R0, #2		;first number
		MOV R1, #2		;second number
		MOV R2, #3		;third number
		MOV R4, #0		;intializing register to store result
		
		CMP R0, R1		;comparing first two numbers
		BGE LOOP1		;if R0>R1 ,branch to loop1
		BLT LOOP2		;if R0<R1 ,branch to loop2
		
COMP2	CMP R4, R2		;comparing third number with maximum of first two numbers
		BGE stop		;if R4>R3 ,branch to stop
		BLT LOOP3		;if R4<R3 ,branch to loop3

LOOP1 	MOV R4, R0		;storing maxmimum of first two
		B COMP2			;branching to comp2

LOOP2 	MOV R4, R1		;storing maxmimum of first two
		B COMP2			;branching to comp2
		
LOOP3 	MOV R4, R2 		;storing maxmimum of three
		B stop			;branching to stop

stop    B stop			;stoping execution
		ENDFUNC
		END

;this code will give you maximum of three numbers.
;the maximum value of given three numbers will be stored in R4