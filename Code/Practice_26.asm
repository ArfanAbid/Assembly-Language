; Program to calculate factorial of a number 

include emu8086.inc

.model small
.stack 100h
.data
    x dw 5         ; The number to calculate the factorial of
    f dw 1         ; Variable to store the factorial result
    i dw 1         ; Loop counter
.code
main proc
     mov ax, @data
     mov ds, ax
     
     mov cx, x      ; Load the number into CX for loop control
     
start:
     mov ax, f      ; Load current factorial result into AX
     mul i          ; Multiply AX by I
     mov f, ax      ; Store the result back into f
     inc i          ; Increment I
     cmp i, cx      ; Compare I with the original number
     jle start      ; Loop until I > x
     
     mov ax, f      ; Move the factorial result into AX for printing
     call print_num ; Print the result
     
     mov ah, 4Ch    ; Terminate program
     int 21h
     
main endp

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end main
           
           
           
;Important Concept            

; db(Define Byte) -> 1 byte (8bits)
; dw(Define Word) -> 2 bytes (16 bits)
; dd(Define Double Word) -> 4 bytes (32 bits)
; dq(Define Quad Word) -> 8 bytes (64 bits)          