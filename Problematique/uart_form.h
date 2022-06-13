/* ************************************************************************** */
/** Descriptive File Name

 

  @Company
    UdeS

 

  @File Name
    uart_form.h

 

  @Description
     This file groups the declarations of the functions that implement
     the sqrt of a binary number (defined in uart_form.c).
     Include the file in the project when this library is needed.
     Use #include "uart_form.h" in the source files where the functions are needed.
 */
/* ************************************************************************** */

 

#ifndef _UART_FORM_H    /* Guard against multiple inclusion */
#define _UART_FORM_H

  
void uart_setForm(unsigned int minimum, unsigned int average, unsigned int max);


#endif /* _UART_FORM_H */

/* *****************************************************************************
 End of File
 */