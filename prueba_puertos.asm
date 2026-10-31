;LowMonitor - Demostracion de intrucciones E/s
;Arquitectura x86-64
;NASM/Linux
;
;Este archivo muestra la sintaxis de INT y OUT 
;No realia acceso al hardware.
section .data
titulo db "LOWMONITOR - INTRUCCIONES E/SS",10
longitud equ $ - titulo

mensaje db "Instruccionmes de 8,16 y 32 bits preparadas.",10
longitud_msg equ $ - mensaje

section .text 
global _start

_start:
mov eax,1
mov edi,1
lea rsi,[rel titulo]
mov edx, longitud
syscall

mov eax,1
mov edi,1
lea rsi,[rel mensaje]
mov edx, longitud_msg
syscall

mov eax,60
xor edi, edi
syscall

;Rutinas de demostracion 
;no se hace llamado desde _start
;solo deben ejecutarse con permisos y 
;sobre un dispositivo compatible 

lectura_8:
in al, dx
ret

lectura_16:
in ax,dx
ret

lectura_32:
in eax, dx
ret

escritura_8:
out dx, al 
ret 

escritura_16:
out dx, ax 
ret

escritura_32:
out dx,eax
ret
