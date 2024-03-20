;Write an assembly language program that reads a character from a keyboard and determines whether the chareacter is a vowel or consonant

;a,e,i,o,u

.model small
.stack 100h
.data
    msg db 'Enter the character : $'
    msg1 db 0dh,0ah, 'Character is vowel $'  
    msg2 db 0dh,0ah, 'Character is Consonat $'  
    
.code
main PROC
    mov ax,@data
    mov ds,ax
    
    ;Display message
    mov ah,09h
    mov dx,offset msg
    int 21h 
    ;input a character
    mov ah,01h
    int 21h   ; al register having input
    
    cmp al,'a'
    je vowel
    cmp al,'e'
    je vowel
    cmp al,'i'
    je vowel
    cmp al,'o'
    je vowel
    cmp al,'u'
    je vowel
    
    
    mov ah ,09h
    mov dx,offset msg2
    int 21h
    jmp Exit
    
  vowel:
        mov ah,09h
        mov dx,offset msg1
        int 21h
        
  Exit:
        mov ah,4ch
        int 21h
        
main endp
end main
          
       
    