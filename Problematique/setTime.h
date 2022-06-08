/* ************************************************************************** */
/** Descriptive File Name

 

  @Company
    Digilent

 

  @File Name
    setTime.h

 

  @Description
     This file groups the declarations of the functions that implement
     the LCD library (defined in setTime.c).
     Include the file in the project when this library is needed.
     Use #include "setTime.h" in the source files where the functions are needed.
 */
/* ************************************************************************** */

 

#ifndef _SETTIME_H    /* Guard against multiple inclusion */
#define _SETTIME_H

  
void TIME_Change(unsigned int *seconde,unsigned int *debounce);



#endif /* _SETTIME_H */

/* *****************************************************************************
 End of File
 */