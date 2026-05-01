.MODEL SMALL  ; Model Size
.STACK 200H   ; Memory Allocation

.DATA 
    ; Where all the veriable will be declared.
    
    ;BH BL 8 Bits Register  1 Byte
    ;BX   16 Bits Register 1 WORD
    
    
    NUM DB 'D' ; d = 100
    NUM2 DB ?  ; Unknown Size          
    CHAR DB '#'
    STR DB "MY NAME IS EMU8086"
    CHAR DB ?
    
    

.CODE 
    
    ; Code segment 
    
    MAIN PROC ; INT MAIN
        
        ; Accessing from .DATA : 
        MOV AX, @DATA
        MOV DS, AX
        
        
        
        MOV AH, 4CH
        INT 21H  
         
        
   MAIN ENDP ; RETURN 0
      
    
END MAIN ; EXIT(0)  