*Este proyecto ha sido creado como parte del currículo de 42 por jpedraza.*

# ft_printf

## Descripción

El proyecto **ft_printf** consiste en recrear el comportamiento básico de la función `printf()` de la librería estándar de C. El objetivo principal es comprender en profundidad:

- Las funciones variádicas (`va_list`, `va_start`, `va_arg`, `va_end`)
- El manejo de formatos y conversiones
- La escritura de funciones modulares
- La gestión de distintos tipos de datos
- La estructura y organización de una librería en C

La implementación ha sido desarrollada siguiendo estrictamente **La Norma de 42**, manteniendo funciones pequeñas, legibles y modulares.

---

## Especificadores implementados

| Conversión | Descripción |
|---|---|
| `%c` | Imprime un carácter |
| `%s` | Imprime una cadena de caracteres |
| `%p` | Imprime una dirección de memoria en hexadecimal |
| `%d` | Imprime un número decimal con signo |
| `%i` | Imprime un entero con signo |
| `%u` | Imprime un entero decimal sin signo |
| `%x` | Imprime un número hexadecimal en minúsculas |
| `%X` | Imprime un número hexadecimal en mayúsculas |
| `%%` | Imprime el carácter `%` |

---

## Estructura del proyecto

```text
.
├── ft_printf.c
├── ft_putchar.c
├── ft_puthex.c
├── ft_putnbr.c
├── ft_putptr.c
├── ft_putptrhex.c
├── ft_putstr.c
├── README.md
├── libftprintf.h
└── Makefile
```

---

## Explicación de los archivos

### ft_printf.c
Contiene la función principal `ft_printf()` y el selector encargado de decidir qué función utilizar según el especificador encontrado en el formato.

### ft_putchar.c
Escribe un único carácter y devuelve el número de caracteres impresos.

### ft_putstr.c
Gestiona la impresión de cadenas de caracteres, incluyendo el tratamiento de cadenas `NULL`.

### ft_putnbr.c
Convierte e imprime números enteros con signo.

### ft_putunbr.c
Imprime números enteros sin signo.

### ft_puthex.c
Convierte números a hexadecimal y permite diferenciar entre formato en minúsculas y mayúsculas.

### ft_putptr.c
Gestiona la impresión de direcciones de memoria.

### ft_putptrhex.c
Realiza la conversión hexadecimal utilizada para imprimir punteros.

### libftprintf.h
Archivo de cabecera que contiene:

- Prototipos de funciones
- Includes necesarios
- Protección contra doble inclusión

### Makefile
Automatiza la compilación del proyecto y la creación de la librería estática.

---

## Compilación

Para compilar la librería, se debe utilizar el Makefile incluido, el cual compila los archivos fuente con las flags -Wall, -Werror y -Wextra.

### Compilar la librería

```bash
make
```

Generará:

```bash
libftprintf.a
```

### Limpiar archivos objeto

```bash
make clean
```

### Eliminar objetos y librería

```bash
make fclean
```

### Recompilar desde cero

```bash
make re
```

---

## Conceptos aprendidos

Durante el desarrollo de este proyecto se han trabajado conceptos fundamentales del lenguaje C:

- Funciones variádicas
- Conversión de tipos
- Recursividad
- Manejo de punteros
- Escritura en file descriptors con `write`
- Conversión numérica a distintas bases
- Modularización del código
- Organización de librerías estáticas

---

## Norminette

Todo el proyecto ha sido desarrollado respetando:

- Máximo de 25 líneas por función
- Formato snake_case
- Uso correcto de tabulaciones
- Separación modular de responsabilidades
- Restricciones de la Norma de 42

---

## Recursos utilizados

- **Manuales oficiales:** de C (`man printf`, `man stdarg`)
- **Google:** Utilizado para buscar definiciones más amplias sobre conceptos técnicos y gestión variables.
- **Uso de IA:** La inteligencia artificial la he utilizado en momentos específicos para entender mejor la lógica de ciertas funciones complejas y principalmente, para la redacción y estructuración técnica de este archivo README.

---

## Posibles mejoras futuras

La implementación actual cubre las conversiones obligatorias del proyecto. Algunas mejoras futuras podrían incluir:

- Gestión de flags (`-`, `0`, `#`, `+`, espacio)
- Width y precision
- Compatibilidad más avanzada con la libc original
- Optimización de conversiones numéricas

---
