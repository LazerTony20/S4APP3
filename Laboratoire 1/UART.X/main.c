/**
 * Author:    Pascal Gendron
 * Created:   2019-01-22
 * Universite de Sherbrooke
 **/

#include <xc.h>
#include "config.h"
#include "uart.h"

#define BAUD_RATE 9600
#define RECEIVE_BUFFER_LEN  cchRxMax

void main() {
    LCD_Init();
    UART_Init(BAUD_RATE);   // Configure UART with interrupt

    macro_enable_interrupts();  // enable interrupts 

    char receive_buffer[RECEIVE_BUFFER_LEN]; 

    while(1) {
        unsigned char len = UART_GetString(receive_buffer, RECEIVE_BUFFER_LEN);
        // Check if a string is available
        if (len > 0){
            //return the received string as feedback to the user
            UART_PutString(receive_buffer);
            UART_PutChar('\n');
            UART_PutChar('\r');

            LCD_DisplayClear();     // Clear what was previously written.
            // Write the string on the first line starting at index 0
            LCD_WriteStringAtPos(receive_buffer, 0, 0); 
        }
    }
}