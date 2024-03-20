; Write  a program that takes two single digit numbers as an input 
; Display the sum of two numbers.

.model small
.stack 100h
.data
    msg db 'Enter the First Number : $'
    msg1 db 0dh,0ah,  'Enter the Second Number $'
    msg2 db 0dh,0ah, 'Sum of two numbers = $'
    num1 db ?
    num2 db ?
.code
main PROC
    mov ax,@data
    mov ds,ax
    
    ;Display a message
    mov ah,09h
    mov dx,offset msg
    int 21h
    ;input a character
    mov ah,01h
    int 21h
    ;it will be in al register in the form of ASCII 3=51
    sub al,48 ; 51-48 al=3
    mov num1,al  ;num1=3
    ;Display a message
    mov ah,09h
    mov dx,offset msg1
    int 21h
    ;input a character
    mov ah,01h
    int 21h
    ;it will be in al register in the form of ASCII 5=53
    sub al,48 ; 53-48 al=5  
    mov num2,al 
    ;Display a message
    mov ah,09h
    mov dx,offset msg2
    int 21h 
    
    ;add num1,num2 ->> illegal
    mov al,num1
    add al,num2
    
    ;Output of sum
    mov dl,al  ; moving result of sum in dl for output
    add dl,48  ; converting back result to ASCII
    mov ah,02h
    int 21h
            
    mov ah,4ch
    int 21h
    
main endp
end main
            
    