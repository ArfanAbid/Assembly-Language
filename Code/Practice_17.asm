;calculating the sum of even numbers from 2 to 20   

 include emu8086.inc
.model small
.data 
.code
main proc
    mov ax, @data
    mov ds, ax

    mov bx, 2   ; Start with 2
    mov ax, 0   ; Initialize sum to 0

label:
    add ax, bx  ; Add current value of bx to sum
    add bx, 2   ; Increment bx by 2 to get the next even number
    cmp bx, 20  ; Compare bx with 20
    jle label   ; Jump back to label if bx is less than or equal to 20  
   main endp
   
   ; calling builtIn function for display 
   call Print_num
   Define_Print_num   
   Define_Print_num_uns
 
end main
                                
                                
 

                               