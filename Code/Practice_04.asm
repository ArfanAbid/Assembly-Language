;Write a program to input a character in lower case and display in upper case
;in Upper case:
;a->97      A->65       97-32=65
;b->98      B->66       98-32=66
;Upper case to lower
;A->65      a->97       65+32=97

.model small
.stack 100h
.data
    msg db 'Enter the Letter in Lower Case $'
    msg1 db 0dh,0ah,'Letter in Upper Case is : $ '
    temp db ?

.code
main PROC
    mov ax,@data
    mov ds,ax
    
    ;Display the message
    mov ah,09h
    mov dx,offset msg
    int 21h
    ;input a character
    mov ah,01h
    int 21h
    mov temp,al
    ;Display the message
    mov ah,09h
    mov dx,offset msg1
    int 21h
    ;lower to upper case calculaion
    sub temp,32
    ;Display a character
    mov ah,02h
    mov dl,temp
    int 21h   
    
    
    mov ah,4ch 
    int 21h
    
main endp
end main
    