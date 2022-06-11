/************************************
 * Name :     main.c
 * Author:    Jp Gouin
 * Version :  h2022
 ************************************/

#include <xc.h>
#include <sys/attribs.h>
#include "config.h"
#include <string.h>
#include "acl.h"
// Since the flag is changed within an interrupt, we need the keyword volatile.
static volatile int Flag_1m = 0;

void LCD_seconde(unsigned int seconde);
void read_value(int *x_axis,int *y_axis,int *z_axis,int *pot);

extern void pmod_s();

void __ISR(_TIMER_1_VECTOR, IPL2AUTO) Timer1ISR(void) 
{  
   Flag_1m = 1;           //    Indique à la boucle principale qu'on doit traiter
   IFS0bits.T1IF = 0;     //    clear interrupt flag
}


#define TMR_TIME    0.001             // x us for each tick

void initialize_timer_interrupt(void) { 
  T1CONbits.TCKPS = 3;                //    256 prescaler value
  T1CONbits.TGATE = 0;                //    not gated input (the default)
  T1CONbits.TCS = 0;                  //    PCBLK input (the default)
  PR1 = (int)(((float)(TMR_TIME * PB_FRQ) / 256) + 0.5);   //set period register, generates one interrupt every 1 ms
                                      //    48 kHz * 1 ms / 256 = 188
  TMR1 = 0;                           //    initialize count to 0
  IPC1bits.T1IP = 2;                  //    INT step 4: priority
  IPC1bits.T1IS = 0;                  //    subpriority
  IFS0bits.T1IF = 0;                  //    clear interrupt flag
  IEC0bits.T1IE = 1;                  //    enable interrupt
  T1CONbits.ON =  1;                   //    turn on Timer5
} 

void main() {
    LCD_Init();
    LED_Init();
    initialize_timer_interrupt();
    int count = 0;
    int x_axis, y_axis, z_axis = 0;
    int pot = 0;
    int modul=0;
    int max =0;
    int min=0;
    int moy=0;
  
    
    PMODS_InitPin(1,1,0,0,0); // initialisation du JB1 (RD9))
    unsigned char pmodValue = 0;
    macro_enable_interrupts();
    
    LCD_WriteStringAtPos("Heure : ", 0, 0);
    unsigned int seconde = 0 ;

    // Main loop
    while(1) {
        if(Flag_1m)                 // Flag d'interruption à chaque 1 ms
        {
            //pmodValue = PMODS_GetValue(1, 1);
            //pmodValue ^= 1;
            //PMODS_SetValue(1, 1, pmodValue);
            pmod_s();
            Flag_1m = 0;            // Reset the flag to capture the next event
            if (++count >= 1000) 
            {
                count = 0;
                LED_ToggleValue(0);
                LCD_seconde(++seconde);
                
           // read_value(int &x_axis,int &y_axis,int &z_axis);
                                  
            }
        }
    }
}

void LCD_seconde(unsigned int seconde)
{ 
    
    unsigned char bNo=0;
    
    unsigned char swtch_1=SWT_GetValue(unsigned char bNo);
    
    
    if(swtch_1==1)
    {
    LCD_WriteIntAtPos(seconde%60, 3, 0, 13, 0);     
    LCD_WriteStringAtPos(":", 0, 13); // affichage des secondes
    LCD_WriteIntAtPos(seconde/60%60, 3, 0, 10, 0);  
    LCD_WriteStringAtPos(":", 0, 10); // affichage des secondes
    LCD_WriteIntAtPos(seconde/3600%24, 3, 0, 7, 0);  
}
}
//void sw_active ()

void read_value(int *x_axis,int *y_axis,int *z_axis)
{
    
    char data_table[6];
    
    ACL_ReadRawValues(data_table)
            
    *x_axis = (data_table[0]<<4 + data_table[1]>>4);
    
    
    *y_axis = (data_table[2]<<4 + data_table[3]>>4);
    
        
    *z_axis = (data_table[4]<<4 + data_table[5]>>4);
    
    
    
    // float axis_array[3];
     //ACL_ReadGValues(axis_array);
     
   //  *x_axis=axis_array[0];
     //*y_axis=axis_array[1];
    // *z_axis=axis_array[2];
     
         
     
}


            
            
            
            
            
            