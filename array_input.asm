.MODEL SMALL
.STACK 100H

.DATA               


username db 100 dup(?)   
msg1 db "Enter the length of your username: $"
msg2 db 10,13, "Enter username: $"
msg3 db 10,13, "Your name is: $"        ; M


.CODE     
MAIN PROC   
MOV AX, @DATA
MOV DS, AX

LEA DX, MSG1                      ; Enter length msg
MOV AH, 9 
INT 21H


MOV AH, 1 
INT 21H
SUB AL, 30H                       ; take length input

MOV BX, 0
MOV BL, AL


LEA DX, msg2
MOV AH, 9                         ; write your values
INT 21H          


MOV CX, BX                        ; LOOP SETUP
MOV SI, 0

INPUT_LOOP:
MOV AH, 1                         ; INPUT taking loop
INT 21H
MOV username[SI], AL
INC SI
LOOP INPUT_LOOP


LEA DX, msg2                      ; Your values are txt
MOV AH, 9
INT 21H


MOV CX, BX                        ; loop setup
MOV SI, 0

PRINT:
MOV DL, username[SI]              ; iterate and print array's values
MOV AH, 2
INT 21H
INC SI
LOOP PRINT



MOV AX, 4C00H
INT 21H
MAIN ENDP
END MAIN








