.MODEL SMALL
 
.STACK 100H

.DATA

NUM_ARRAY DB 100 DUP(9, 1, 9)    ; Byte Array

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 

LEA SI, NUM_ARRAY       ; Pointer
MOV CX, 6               ; Loop Counter

PRINT_LOOP:
    MOV AL, [SI]
    ADD AL, 30H
    MOV DL, AL
    MOV AH, 2
    INT 21H
    
    INC SI
    
LOOP PRINT_LOOP




; OUTPUT ==---== 919919
 

;exit to DOS     
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
