; program to print Alphabets in array without loop Basic understanding.
.model small
.stack 100h
.data
    array db 65,66,67,68

main proc
    mov ax,@data
    mov ds,ax 
     
    mov si,offset array
    
    ;print A
    mov dx,[si] 
    mov ah,02h
    int 21h 
    
    ;print B
    mov dx,[si + 1] 
    mov ah,02h    
    int 21h
            
    ;print C        
    mov dx,[si + 2] 
    mov ah,02h
    int 21h
    
    ;print D
    mov dx,[si + 3] 
    mov ah,02h
    int 21h
    

    mov ax, 4ch
    int 21h
main endp
end main
