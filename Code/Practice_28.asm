;Create a program to find the area of the square , let length of side of square (s) is input form the user  Area of square =  
;Display the area 

.model small
.stack 100h 
.data
    msg1   db 'enter the side$'
    length db ?
    area   dw ?
    msg    db 0ah,0dh,'Area of square is : $"'
.code
main proc

         mov ax,@data
         mov ds,ax
        
         mov dx,offset msg1
         mov ah,09h
         int 21h
        
        
         mov ah,01h
         int 21h
         sub al,48
         mov length,al
        
         mov al,length
         mov bl,length         ;if multiplier is al then multiplicant should also be al,bl,cl etc
         mul bl
         mov area,ax
        
        
         mov dx, offset msg
         mov ah, 09h
         int 21h
       
         mov dx,area
         add dx,48
         mov ah,02h
         int 21h
        
         mov ax,04ch
         int 21h
main endp
         
end main 


; concept of multiplication:

; 3 * 2 -> multiplicand * multiplier 
; if multiplier is ax then multiplicant should also be ax,bx,cx etc

; if bl(multiplier) is 8 bit then al (multiplicand ) is also 8bit  there result will be store in ax(16bit)  so we need ax to get result also if suppose 3*4 compute 12 then it ax will display 1 and 2 is not displayed  so use AAM
; This will break this into ah (store 1) al (store 2)

; if bx(multiplier) is 16 bit then ax (multiplicand ) is also 16bit  this will give greater result bit obviously now use dx and ax
