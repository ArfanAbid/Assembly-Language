; program to print Alphabets in array using loop Basic understanding.
.model small 
.stack 100h
.data
    array db 65,66,67,68

main proc
    mov ax,@data
    mov ds,ax 
     
    mov si,offset array  
    
    mov cx,4 ; initializing counter to 4 it means it will 4 times
             
  print:           
    mov dx,[si] 
    mov ah,02h
    int 21h
    inc si
    loop print
     

    mov ax, 4ch
    int 21h
main endp
end main
