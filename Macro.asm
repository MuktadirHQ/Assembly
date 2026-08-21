.MODEL SMALL
.STACK 100H

.DATA
; Declaring our byte array with multi-digit numbers
my_char db 004DH        ; M


.CODE     
MAIN PROC   
MOV AX, @DATA
MOV DS, AX
    
;=======-    
; MACRO ; 
;========

printChar MACRO char
    MOV DL, char
    MOV AH, 2
    INT 21H
ENDM




printChar my_char, 003FH    ; Calling MACRO. ---> in line command. Automatically avoids EXTRA Argument. 



MOV AX, 4C00H
INT 21H
MAIN ENDP
END MAIN