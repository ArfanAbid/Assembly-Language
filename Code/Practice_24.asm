;program to input values in an array and then display them 

.model small
.stack 100h
.data
  msg db 'Enter three values: $' 
  msg2 db 0ah,0dh,'Entered values in the array are: $'
  array db 3 dup(?)  ; Adjusted size to 3 for three values
.code
main proc
    mov ax, @data
    mov ds, ax  
    
    ; Display input prompt
    mov dx, offset msg
    mov ah, 09h
    int 21h
    
    ; Input values into array
    mov cx, 3
    mov si, offset array  
l1:
    mov ah, 01h  ; Function to read a character
    int 21h
    sub al, '0'  ; Convert ASCII to integer or 48
    mov [si], al
    inc si
    loop l1
    
    ; Display output prompt
    mov dx, offset msg2
    mov ah, 09h
    int 21h
    
    ; Output values from array
    mov cx, 3
    mov si, offset array
l2:
    mov al, [si]
    add al, '0'  ; Convert integer to ASCII
    mov dl, al
    mov ah, 02h  ; Function to print a character
    int 21h
    inc si
    loop l2
    
    ; Exit program
    mov ah, 4ch
    int 21h
main endp
end main
