/************************************
 * Name :     _fct_s.s
 * Author:    Jp Gouin
 * Version :  h2022
 ************************************/

.set noreorder  
    
.data
   
.text

.global fct_s
# début de la fonction
.ent fct_s
fct_s:		    # Étiquette de la fonction
    # ENTRÉE : $a0 seconde, $a1 tableau(hh,mm,ss)
    # SORTIE : aucune
    li $t0, 3600
    li $t1, 0
    li $t2, 0
    li $t3, 0
    # Code à écrire
    div $a0, $t0
    mflo $t3
    sw $t3, 8($a1)
    mfhi $t1
    
    li $t0, 60
    div $t1, $t0
    mflo $t2
    sw $t2, 4($a1)
    mfhi $t3
    sw $t3, 0($a1)
    
    jr $ra		# Retour à la fonction
    nop			# delay slot
# fin de la fonction   
.end fct_s