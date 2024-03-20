; code to print Alphabets


.model small
.stack 100h
.data
.code
main PROC
    mov ax,@data
    mov ds,ax
    
    mov cx,26  ; Initialize loop counter to 26
    mov dl,65  ; Initialize DL with ASCII value of 'A'  as 'A'=65 in ASCII 
    ;For small alphabets start dl with 97 
 printDigit:
    mov ah,02h   ; DOS function to print character
    int 21h      ; Print the character in DL
    inc dl       ; Increment DL to print the next digit
    loop printDigit ; Continue looping until CX becomes zero
    
    
    mov ah,4ch     ; DOS function to terminate the program
    int 21h        ; Terminate the program
    
main endp
end main
              
    
    

