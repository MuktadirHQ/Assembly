.MODEL SMALL
.STACK 100H

.DATA
; Declaring our byte array with multi-digit numbers
my_char db 004DH        ; M


.CODE     
MAIN PROC   
MOV AX, @DATA
MOV DS, AX
           
           
           
MOV DL, my_char
CALL printCharProc   



MOV AX, 4C00H
INT 21H
MAIN ENDP








;============= 
; Procedure  ; 
;=============

printCharProc PROC NEAR  ; Default NEAR
    MOV AH, 2
    INT 21H
    RET
printCharProc ENDP 



END MAIN








