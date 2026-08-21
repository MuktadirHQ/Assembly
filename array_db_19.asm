.MODEL SMALL
.STACK 100H

.DATA
    ; Declaring our byte array with multi-digit numbers
    NUM_ARRAY DB 19

.CODE     
MAIN PROC 
    
    
    ; Initialize the Data Segment
    MOV AX, @DATA
    MOV DS, AX
     
    LEA SI, NUM_ARRAY           ; SI points to index 0 (value 10)




    MOV AL, [SI]                ; AL = 10
    MOV AH, 0                   ; Clear AH so AX = 000AH (10)
    MOV BL, 10                  ; Divisor = 10
    DIV BL                      ; AX / 10 -> AL = 1 , AH = 9
    MOV BH, AH                  ; AH(9) = remainder --> BH

    ; Print Tens Place ('1')
    MOV DL, AL
    ADD DL, 30H                  ; Convert to ASCII '1'
    MOV AH, 2
    INT 21H

    ; Print Ones Place ('9')
    MOV DL, BH
    ADD DL, 30H                  ; Convert to ASCII '0'
    INT 21H

    ; Print Space
    MOV DL, ' '
    INT 21H




MOV AX, 4C00H
INT 21H
MAIN ENDP
END MAIN
Expected Output
10 20 30