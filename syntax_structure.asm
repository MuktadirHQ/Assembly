.MODEL SMALL  ; Model Size
.STACK 200H   ; Memory Allocation

.DATA 
    ; Where all the veriable will be declared.

.CODE 
    
    ; Code segment 
    
    MAIN PROC ; INT MAIN
        
        ; STATEMENT
        ; STATEMENT
        ; STATEMENT
        
        
        MOV AH, 4CH ; Return 
        INT 21H     ; Return     Without this, program will be halted.
         
        
   MAIN ENDP
      
    
END MAIN ; EXIT(0)  