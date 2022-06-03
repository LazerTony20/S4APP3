/**
 * Author:    Jean-Philippe Gouin
 * Created:   2021-02-08
 * Universite de Sherbrooke
 **/

#include <xc.h>
#include "config.h"

int fct_C(unsigned char *valueSW);
extern char fct_S(char *valueSW);
/*La bonne pratique est d'aouter un _t à la fin d'un type non standard
 pour la lisibilite du programme. C'est ce que fait stdint.h*/

void main() {
    LED_Init();
    SWT_Init();
    unsigned char valueSW [8];
    unsigned char valueLED [8];
    unsigned char noLED;
    int no;

    // Boucle principale
    while(1) {
        // boucle pour lire SW
        for(no=0; no<8; no++)  {
            valueSW[no] = SWT_GetValue(no); //Lecture de la SW
            valueLED[no] = 0; //Remet à 0 les LED
        }
        //(numéro 1a)
        //noLED = fct_C(valueSW);   // Appelle de la fonction en C 
        
        //(numéro 1b)
        noLED = fct_S(valueSW);     // Appelle de la fonction en assembleur
        
        valueLED[noLED] = 1; // modifie le tableau de SW
        for(no=0; no<8; no++)  {
            LED_SetValue(no,valueLED[no]);   //Écriture de la SW
        }
    }
}

int fct_C(unsigned char *valueSW){
    int noLED;
    int i;
    
    for(i=0; i<8 ; i++)
    {
       noLED += valueSW[i];
    }
    
    //noLED = 2;      //met à 2 le numéro de la LED à allumer.

    return noLED;
}