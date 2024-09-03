title  ATIV1_1.ASM
.model small


.data
    msg1 db "mensagem 1.$"
    msg2 db 10,13,"mensagem 2.$"


.code
    main proc
        
        ;Permite o acesso às variáveis definidas em .DATA 
        mov ax, @data
        mov ds,ax

        ;Exibe na tela a string msg1 
        mov ah, 9 
        lea dx, msg1 
        int 21h 

        ;Exibe na tela a string msg2
        mov ah,9
        lea dx, msg2
        int 21h

        ;Finaliza o programa 
        mov ah, 4ch
        int 21h
    main endp
end main


