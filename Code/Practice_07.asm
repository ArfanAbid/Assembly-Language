; Write  a program that takes two single digit numbers as an input 
; Display the Multiplication  of two numbers.

.model small
.stack 100h
.data
    msg  db 'Enter the First Number : $'
    msg1 db 0dh,0ah,  'Enter the Second Number $'
    msg2 db 0dh,0ah, 'Multiplication of two numbers = $'
    num1 db ?
    num2 db ?
.code
main PROC
         mov ax,@data
         mov ds,ax
    
    ;Display a message
         mov ah,09h
         mov dx,offset msg
         int 21h
    ;input a character
         mov ah,01h
         int 21h
    ;it will be in al register in the form of ASCII 3=51
         sub al,48             ; 51-48 al=3
         mov num1,al           ;num1=3
    ;Display a message
         mov ah,09h
         mov dx,offset msg1
         int 21h
    ;input a character
         mov ah,01h
         int 21h
    ;it will be in al register in the form of ASCII 5=53
         sub al,48             ; 53-48 al=5
         mov num2,al
    ;Display a message
         mov ah,09h
         mov dx,offset msg2
         int 21h
    
    ;Multiply num1,num2 ->> illegal
         mov al,num1
         mul num2              ; Multiply AL by the value stored in num2
    ; if multiplier is ax then multiplicant should also be ax,bx,cx etc  ;
    ;Output of sum
         mov dx,ax            
         add dx,48             ; converting back result to ASCII
         mov ah,02h
         int 21h
            
         mov ah,4ch
         int 21h
    
main endp
end main



; concept of multiplication:

; 3 * 2 -> multiplicand * multiplier 
; if multiplier is ax then multiplicant should also be ax,bx,cx etc

; if bl(multiplier) is 8 bit then al (multiplicand ) is also 8bit  there result will be store in ax(16bit)  so we need ax to get result also if suppose 3*4 compute 12 then it ax will display 1 and 2 is not displayed  so use AAM
; This will break this into ah (store 1) al (store 2)

; if bx(multiplier) is 16 bit then ax (multiplicand ) is also 16bit  this will give greater result bit obviously now use dx and ax

    