; Program to check smallest from two Numbers.(Numbers should be input from user)
.model small
.stack 100h  
.data
    msg1 db 0dh,0ah,"Enter First Number: $"
    msg2 db 0dh,0ah,"Enter Second Number: $"
    msg3 db 0dh,0ah,"The smallest Number is : $"   

.code 

main PROC
    mov ax,@data
    mov ds,ax   
    ; First input     
    mov ah,09h
    mov dx,offset msg1
    int 21h 
    
    mov ah,01h
    int 21h
    mov bl,al 
       
    ; Second Input   
    mov ah,09h
    mov dx,offset msg2
    int 21h 
    
    mov ah,01h
    int 21h
    mov cl,al

    cmp bl, cl      ; Compare the two numbers
    jle isSmaller   ; Jump if the first number is smaller or equal   bl < cl

    mov ah,09h
    mov dx,offset msg3
    int 21h  
    
    mov dl,cl 
    mov ah,02h
    int 21h
    
    jmp exit         
  
 isSmaller:
            
    mov ah,09h
    mov dx,offset msg3
    int 21h   
    
    mov dl,bl      ; Load the smaller number (first number) bl
    mov ah,02h
    int 21h
    
 exit:
    
    mov ah,4ch
    int 21h
    
    main endp

end main
