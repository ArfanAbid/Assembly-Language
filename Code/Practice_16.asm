;Sum of first 10 whole number/natural number (withour counter statement)
; Setting it

.model small
.stack 100h
.data
    sum     dw ?
    counter dw 1
    sum_msg db 'Sum of first 10 whole numbers: $'
.code
main proc
               mov ax,@data
               mov ds,ax
    
               mov ax, 0          ; Initialize sum to 0
               mov bx, 1          ; Initialize counter to 1
    
    loop_start:
               add ax, bx         ; Add current value of counter to sum
               inc bx             ; Increment counter
               cmp bx, 10         ; Compare counter with 10
               jle loop_start     ; Jump back to loop_start if counter is less than or equal to 10
    
    ; Display the sum
               mov sum, ax
               mov ah, 09h
               lea dx, sum_msg
               int 21h
    
               mov ax,sum
               mov ax,02h
               int 21h
    
    exit:      
               mov ax, 04h
               int 21h


    
main endp
end main
