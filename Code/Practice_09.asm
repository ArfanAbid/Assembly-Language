; Loop to print 10 digits (First 10 whole numbers)   1-10


.model small
.stack 100h
.data
.code
main PROC
    mov ax,@data
    mov ds,ax
    
    mov cx,10  ; Initialize loop counter to 10
    mov dl,49  ; Initialize DL with ASCII value of '1'  as 1=49 in ASCII  
 printDigit:
    mov ah,02h   ; DOS function to print character
    int 21h      ; Print the character in DL
    inc dl       ; Increment DL to print the next digit
    loop printDigit ; Continue looping until CX becomes zero
    
    
    mov ah,4ch     ; DOS function to terminate the program
    int 21h        ; Terminate the program
    
main endp
end main
              
    
    

