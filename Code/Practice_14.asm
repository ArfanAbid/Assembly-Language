;UnConditional Jump in Assembly Language  
;This Will run for infinite time 

.model small
.stack 100h
.data
.code
    main PROC 
        mov ax,@data
        mov ds,ax
        
        L1:
        mov al,'b' ; or mov al,98
        mov ah,02h
        int 21h
        jmp L1
               
        mov ah,04h
        int 21h       
        
    main endp
    end main