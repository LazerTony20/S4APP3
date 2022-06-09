/************************************
 * Name :     racine_s.s
 * Author:    Tony
 * Version :  h2022
 * Infos :    Racine pour un 32 bits
 ************************************/

.set noreorder  
    
.data
   
.text

.global racine_s
# début de la fonction
.ent racine_s
    
racine_s:			# Étiquette de la fonction
    li $t0,32	    # Variable Intermédiaire
    li $t1,0	    # Variable p
    li $t2,0	    # Variable q
    li $t3,1	    # Variable x
    li $t4,0
    li $t5,0
    # add $t4,$a0   # Variable S d'entrée
    li $v0,0	    # Variable de sortie
    
    # ------------------------------------------------------------#
    clz $t5, $a0	    # Calcul de mon nombre de zeros
    sub $t1, $t0, $t5	    # Calcul de la valeur de mon P en fesant 32 - nbZeros
    # ------------------------------------------------------------#
    sra $t2, $t1, 1	    # Calcul de mon parametre q en shiftant p vers la droite une fois
    # ------------------------------------------------------------# 
    li $t0,0
    boucleX:
    sll $t3,$t3,1	    # Shift x vers gauche de 1bit
    addiu $t0, $t0, 1	    # Incremente boucle de 1
    blt $t0, $t2, boucleX   # Si valeur inferieur a q, do it again
    nop
    # ------------------------------------------------------------#
    li $t0,0
    boucleRacine:
    divu $a0, $t3	    # Division de S par x
    mflo $t4		    # Mise du quotient en memoire   
    
    sub $t0, $t4, $t3	    # S/X - X
    
    sra $t0, $t0, 1	    # Shift right car division par 2
    add $t3, $t3, $t0
    
    bge $t0, 0, finboucle
    nop
    li $t5,-1
    mult $t0, $t5
    mflo $t0
    finboucle:
    ble $t0, 1, boucleRacine
    nop
    # ------------------------------------------------------------#
    addu $v0,$v0,$t3	    # Mise en mémoire de X
    # ------------------------------------------------------------#
    jr $ra		# Retour à la fonction
    nop			# delay slot
# fin de la fonction   
.end racine_s


