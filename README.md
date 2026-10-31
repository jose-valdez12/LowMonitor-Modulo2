# LowMonitor - Modulo 2

## Monitor de Pueertos E/S

Proyecto de Arquitectura de Computadoras desarrollado en ensamblador
x86-64 utilizando NASM sobre Ubuntu 26.04

## funcionalidaddes

1. Consulta del puerto del teclado (60h).
2. Consulta del puerto del sistema (61h).
3. Lectura del puerto serial COM1 (3F8h).
4. Escritura controlada en COM1.
5. Consulta general de los puertos.
6. Validacion de direcciones de 0 a 65535

## Requisitos

-Ubuntu de 64bits.
-NASM.
-GNU ld.
-GNU Make.
-Puerto serial COM1 habilitado en virtualizador.

## Compilacion

make -B

## Ejecucion

sudo ./modulo2

## Archivos

- modulo2.asm: Programa Principal.
- prueba_puertos.asm: Intrucciones.
- validar_rango.asm: Validacion independiente
- Makefile: Compilacion automatica.

## Consideraciones del programa

El programa utiliza ioperm para solicitar permisos de accesos a puertos E/S

Las operaciones reales sobre COM1 son de 8 bits

Las instruccioners IN y OUT de 16 y 32 bits 
se compilaron, pero no se ejecutaron sobre hardware debido a limitaciones de dispositivos utilizados.

