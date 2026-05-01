.MODEL SMALL ; 5 Types : Small, Medium,  Compact, Large, Huge.
.STACK 100H

.DATA
; The Variable's which are declared. 
.CODE
; Code Segment.


MAIN PROC  ; INT MAIN
    ; Code Statement.
    
    
    ; INPUT A SINGLE CHARECTER.
    
    MOV AH, 1 ; 1 is input calling Funciton.
    INT 21H
    
    ; THIS IS STORED IN 'AL' REGISTER.
    
    MOV AH, 2   ; 2 is print calling Function.
    MOV DL, AL  ; DL prints the Register. 
    INT 21H
    
    
    
    
    
    
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP 

END MAIN ; Return 0.