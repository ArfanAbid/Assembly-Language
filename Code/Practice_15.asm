;Write a Program to Check whether Two number are equaL OR NOT (we can fix 3 and then campare other number from user)

.model small
.stack 100h
.data   
msg db "Enter the Number to compare : $"
msg1 db 0dh,0ah,'Number is equal to 3 $'
msg2 db 0dh,0ah,'Number is not equal to 3 $'

.code
main proc
    mov ax,@data                                                                    
    mov ds,ax  
    
    ;inptut from user             
    mov ah,09h
    mov dx,offset msg
    int 21h 
    ;read user input         
    mov ah,01h
    int 21h 
    
    ;sub al,48 ; convert ASCII to numeric value 
    ;cmp al,3
    
    cmp al,51 ; 51 bec when it takes input from user then it save as ASCII so you need to compare with ASCII like 51(ASCII) for 3  
    je equal  
    jmp not_equal 

equal:
     mov ah,09h
     mov dx,offset msg1
     int 21h
     jmp exit
not_equal:
     mov ah,09h
     mov dx,offset msg2
     int 21h
    jmp exit
    
exit:
    mov ah,4ch
    int 21h    
    
main endp

end main                             


                 