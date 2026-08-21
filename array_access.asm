.MODEL SMALL
 
.STACK 100H

.DATA

NUM_ARRAY DB 1, 2, 3, 4    ; array

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
LEA SI, NUM_ARRAY           ; place B array's first index which is 0, set to SI.       

MOV BX, 1
MOV SI, 1
MOV AL, NUM_ARRAY[BX][SI]   ; [BX][SI] === [BX+SI] 
ADD AL, 48                  ; ASCII

MOV DL, AL                  ; DL stores what to print
MOV AH, 2
INT 21H


; OUTPUT ==---== 4 
 

;exit to DOS     
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
