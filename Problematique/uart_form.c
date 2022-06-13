/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
#include <xc.h>
#include <sys/attribs.h>
#include <string.h>
#include "config.h"
#include "uart_form.h"
#include "uart.h"
/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */

void uart_setForm(unsigned int minimum, unsigned int average, unsigned int maximum)
{
    //Creation de variables en char en fonciton de charque unité de chaque valeur
    //https://stackoverflow.com/questions/2279379/how-to-convert-integer-to-char-in-c 
    char min_unite_c, min_dizaine_c,min_centaine_c,
            avg_unite_c,avg_dizaine_c,avg_centaine_c,
            max_unite_c,max_dizaine_c,max_centaine_c;
    //Puisqu'il faut envoyer des tableaux de caractères dans le UART
    char msg_start[] = "Voici les valeurs de l'accéléromètre (stockées en FLASH) et la moyenne... \n\r";
    char msg_min[] = "Valeur min : ";
    char msg_avg[] = "Valeur moyenne : ";
    char msg_max[] = "Valeur max : ";
    
    //Calcul des informations
    min_unite_c = (minimum%10)+'0';     //On fait + '0' pour de l'ASCII
    min_dizaine_c = ((minimum%100)/10)+'0';
    min_centaine_c = ((minimum%1000)/100)+'0';
    avg_unite_c =(average%10)+'0';
    avg_dizaine_c = ((average%100)/10)+'0';
    avg_centaine_c = ((average%1000)/100)+'0';
    max_unite_c = (maximum%10)+'0';
    max_dizaine_c = ((maximum%100)/10)+'0';
    max_centaine_c = ((maximum%1000)/100)+'0';
    
    
    //memcpy(tree, one, 200);
    //memcpy(&tree[200], two, 200);
    
    //Envoyer les informations
    UART_PutString("\033[2J\033[H\033[3J"); //Clear terminal
    //https://superuser.com/questions/555554/putty-clear-scrollback-from-commandline
    UART_PutString(msg_start);
    UART_PutString(msg_min);
    UART_PutChar(min_centaine_c);
    UART_PutChar(min_dizaine_c);
    UART_PutChar(min_unite_c);
    //UART_PutString(msg_p1);
    UART_PutString("\n\r");
    UART_PutString(msg_avg);
    UART_PutChar(avg_centaine_c);
    UART_PutChar(avg_dizaine_c);
    UART_PutChar(avg_unite_c);
    //UART_PutString(msg_p2);
    UART_PutString("\n\r");
    UART_PutString(msg_max);
    UART_PutChar(max_centaine_c);
    UART_PutChar(max_dizaine_c);
    UART_PutChar(max_unite_c);
    //UART_PutString(msg_p3);
    UART_PutString("\n\r");
    
}

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */








/* *****************************************************************************
 End of File
 */
