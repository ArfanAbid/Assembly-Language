;Subroutines or Procedures
.model small 
.stack 100h
.data
    msg1 db 'Arfan $'
    msg2 db 'Abid $'
    msg3 db 'Iffi $'
.code
main proc
        mov ax, @data
        mov ds, ax
        
        mov dx, offset msg1
        mov ah, 9
        int 21h  
        call space
        
        mov dx, offset msg2
        mov ah, 9
        int 21h  
        call space  
        
        mov dx, offset msg3
        mov ah, 9
        int 21h  
        
        mov ah, 4ch
        int 21h                                      

main endp 

space proc
    mov dx, 10
    mov ah,02h
    int 21h
    
    mov dx, 13
    mov ah, 2
    int 21h   
    ret
space endp

end main