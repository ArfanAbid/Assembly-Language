; Logical Understanding of the code 
; Addition code
.model small
.stack 100h
.data
    num1 db ?
    num2 db ?
.code

main PROC  
    mov ax,@data
    mov ds,ax

    mov ah, 1        
    int 21h
    mov num1, al 
    sub num1,48    ;Converted from ASCII to normal  
    
    mov ah,1        
    int 21h 
    mov num2, al 
    sub num1,48  ;Converted from ASCII to normal
             
             
    mov al,num1        
    add al, num2      
    
    mov dl,al
    add dl,48 ;Converted back from normal to ASCII
           
    mov ah,2
    int 21h

    mov ah, 4ch      
    int 21h
    
main ENDP
end main 

;The conversion from ASCII to normal (numeric) values is necessary because input received from the user via `int 21h` function 01h is in ASCII character representation. To perform arithmetic operations, these ASCII characters must be converted to their corresponding numeric values.
;For example, if you input '1', the actual value stored in memory is the ASCII code for '1', which is 49 (or 31h in hexadecimal).