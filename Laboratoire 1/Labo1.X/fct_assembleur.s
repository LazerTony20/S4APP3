# pour que ces etiquettes soient visibles des autres fichiers par le linker
.global fct_S
    
.set noreorder  
  
.data
    
.text

# début de la fonction
.ent fct_S
fct_S:		    # Étiquette de la fonction
   li $v0,0	    # met 2 dans le registre de sortie
   li $t0, 0 
   
   
   boucle:
    lb $s1, 0($a0)
    add $v0, $v0, $s1
    addi $a0, $a0, 1
    addi $t0, $t0, 1
    ble $t0, 8, boucle
    nop
    
   jr $ra   # retour au main en C
   nop	    # delay slot
# fin de la fonction    
.end fct_S

