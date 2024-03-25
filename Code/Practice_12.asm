;Program to print table of number 2

.model small                                                 
.stack 100h
.data
    msg db 'The table of the number is : $' 
    newline db 0dh,0ah,'$' ; carriage return and line feed for new line

main PROC
    mov ax,@data
    mov ds,ax 
    ;Display message
    mov ah,09h
    mov dx,offset msg
    int 21h
    ;giving line space
    mov dx, offset newline ; print newline
    mov ah, 09h
    int 21h
        
    mov cx,10
    mov dx,50  ;ASCII 50 =2
    
 PrintDigit:
    mov ah,02h
    int 21h
    add dx,2;OR -> inc dx inc dx
    loop PrintDigit   
    
    
    
    mov ah,4ch
    int 21h
main endp
end main