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
    
    # Code à écrire
    li $t4, 60
    li $t5, 24
    
    div $a0, $t4    # division par 60
    mfhi $t0	    # modulo 60
    mflo $a0	    # division par 60 avec arrondi à la baisse
    sw $t0, 8($a1)  # écriture des secondes dans le tableau 
    
    div $a0, $t4    # division par 60
    mfhi $t0	    # modulo 60
    mflo $a0	    # division par 60 avec arrondi à la baisse
    sw $t0, 4($a1)  # écriture des minutes dans le tableau 
    
    div $a0, $t5    # division par 24
    mfhi $t0	    # modulo 24
    mflo $a0	    # division par 24 avec arrondi à la baisse
    sw $t0, 0($a1)  # écriture des heures dans le tableau 
    
    jr $ra		# Retour à la fonction
    nop			# delay slot
# fin de la fonction   
.end fct_s