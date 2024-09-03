Title ATIV02_1.asm
.model small


.data
    msg1 db "   Digite uma letra minuscula $"
    msg2 db 10,13,"     A letra maiuscula correspodente $ "


.code
    main proc
        ;acessa as infos de data
        mov ax,@data
        mov ds,ax

        ;lê as msg1
        lea dx, msg1
        mov ah,09
        int 21h

        ;recebe a letra minuscula digitada 
        mov ah,01
        int 21h

        ;move a infromação da letra para outro registrador e substrai 20d dele 
        mov bl,al
        sub bl,20h

        ;imprime a msg2
        mov ah,09
        lea dx,msg2
        int 21h

        ;imprime a letra digitada em maiusculo 
        mov dl,bl
        mov ah,02
        int 21h

        ;acaba com o programa
        mov ah,4ch
        int 21h
main endp
end main