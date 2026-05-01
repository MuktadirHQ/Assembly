.MODEL SMALL  ; Model Size
.STACK 200H   ; Memory Allocation

.DATA 
    ; Where all the veriable will be declared.
    
    NUM1 DB ?
    

.CODE 
    
    ; Code segment 
    
    MAIN PROC ; INT MAIN
        
        ; Instruction Destination, Source
        ; MOV/ADD/SUB/MUL/DIV, 
        MOV BH, 4
        MOV BL, 5
        
        ADD BH, BL ; BH = BH + BL
        ADD BH, 10 ; BH = BH + 10
        
        
        ; FROM DATA VARIABLE : 
        ADD NUM1, BH ; NUM1 = NUM1 + BH
        
        
        MOV AH, 4CH ; Return 
        INT 21H     ; Return     Without this, program will be halted.
         
        
   MAIN ENDP
      
    
END MAIN ; EXIT(0)  