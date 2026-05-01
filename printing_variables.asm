.MODEL SMALL  ; Model Size
.STACK 200H   ; Memory Allocation

.DATA 
    ; Where all the veriable will be declared.
    ; DB = "Define Byte"
    ; DW = "Define Word"
    
    NUM DB 49 ; ASCII Value of 0 is > 48. if 49, 1 will be printed. 
    CHAR DB 'A'
    MSG DB "My Name is Muktadir Haque Sarker $"
    
    
    

.CODE 
    
    ; Code segment 
    
    MAIN PROC ; INT MAIN
        
        MOV AX, @DATA ; Import
        MOV DS, AX ; DS Register
        
        MOV AH, 2
        MOV DL, NUM       ; Prints NUM variable Data. 
        INT 21H 
        
        ; NEW LINE : 
        ; MOV AH, 2 ; Can ignore this repetation.
        MOV DL, 0AH ; OA Hexadecimal code for new line. 
        INT 21H 
        MOV DL, 0DH ; 
        INT 21H 
        ; NEW LINE END.
                     
                     
                     
        ;MOV AH, 2         ; Can ignore this repetation.          
        MOV DL, CHAR      ; Prints CHAR varialbe Data. 
        INT 21H
        
        
        ; NEW LINE : 
        MOV DL, 0AH 
        INT 21H 
        MOV DL, 0DH 
        INT 21H 
        ; NEW LINE END.                              
                        
                         
        MOV AH, 9   ; Prints String
        LEA DX, MSG ; Print MSG variable's Data.  
        INT 21H                           
        
        
        
        
        
        MOV AH, 4CH
        INT 21H  
         
        
   MAIN ENDP ; RETURN 0
      
    
END MAIN ; EXIT(0)  