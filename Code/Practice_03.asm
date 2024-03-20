; Program for Hello world!

.model small      ; Specifies the memory model to be used (small model in this case)
.stack 100        ; Sets the stack size to 100 bytes
.data             ; Indicates the start of the data segment

msg db "Hello World $"  ; Declares a byte (db) variable named 'msg' and initializes it with the string "Hello World"

.code             ; Indicates the start of the code segment

hello PROC        ; Defines a procedure named 'hello' 
     
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg  ; Moves the offset address of 'msg' (the address where the string is stored) into the DX register
    mov ah,09h      ; Sets AH register to 09h, which is the DOS function for printing a string
    int 21h         ; Invokes DOS interrupt 21h to print the string at the address specified in DX
    
    mov ah,4ch
    int 21h
    
hello endp        ; Ends the 'hello' procedure

end hello         ; Marks the end of the program and specifies the entry point as 'hello'


