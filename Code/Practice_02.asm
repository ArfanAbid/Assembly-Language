;Write a program that display a  two message on a screen.First msg on 1 line and second msg on 2 line 


; Model Directive

.model small    ; Used for Assembler 64kb code or 64kb data segment
.stack 100      ; stack segment 100h
.data
;All the variables are declared in data segment
    msg db 'Assembly Language Programming $'
    msg1 db  0dh,0ah, 'Printing in Next line $'
.code
    main PROC
           mov ax,@data
           mov ds,ax
           
           ;Display string
           mov ah,09h 
           mov dx,offset msg  ;OR  lea dx,msg    -> loads the destination with address of source
           int 21h
           ;Display string
           mov ah,09h 
           mov dx,offset msg1  ;OR  lea dx,msg    -> loads the destination with address of source
           int 21h
           ;Terminate a program
           
           mov ah,4ch
           int 21h
        
        
    main endp
    end main    
    
; Common architecture of every code 
    
;.model small    
;.stack 100     
;.data
;.code
;    main PROC
;           mov ax,@data
;           mov ds,ax
;           
;           
;           
;           
;         mov ah,4ch
;          int 21h
;       
;       
;   main endp
;   end main    
                   
                  
                
     
        