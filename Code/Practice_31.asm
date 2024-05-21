;Procedures Example 

.model small
.stack 100h
.data
    num1   db ?
    result dw ?
    msg    db 'Enter the first number $'
    msg1   db 0ah, 0dh, 'Enter the second number $'


.code

main PROC
    
              mov  ax,@data
              mov  ds,ax

              call printmsg1

              mov  ah,01h
              int  21h
              sub  al,48
              mov  num1 , al


              call printmsg2

              mov  ah,01h
              int  21h


              sub  al,48

              mov  bl,al

              mov  al,num1


              mul  bl

    ; result will be in ah ; priting result


              mov  result,ax
 
              mov  dx,result
              add  dx,48
              mov  ah,02h
              int  21h

              mov  ah,4ch
              int  21h



main endp


printmsg1 proc
    
              mov  dx , offset msg
              mov  ah,09h
              int  21h
              ret
printmsg1 endp



printmsg2 proc
              mov  dx,offset msg1
              mov  ah,09h
                       
              int  21h
              ret
printmsg2 endp



end main