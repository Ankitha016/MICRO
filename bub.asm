.model small
.data
n db 3
a db 2,4,1
.code
        mov ax,@data
        mov ds,ax
        mov cl,n
        dec cl

outloop:mov ch,cl
        mov si,0

inloop:mov al,a[si]
        inc si
        cmp al,a[si]
        jb noxg
        xchg al,a[si]
        mov a[si-1],al

noxg:dec ch
     jnz inloop
     dec cl
     jnz outloop
     mov ah,4ch
     int 21h
     end


