# pour que ces etiquettes soient visibles des autres fichiers par le linker
.global fct_S
    
.set noreorder  
  
.data
    
.text

# début de la fonction
.ent fct_S
fct_S:		    # Étiquette de la fonction
   li $v0,2	    # met 2 dans le registre de sortie
   
   jr $ra   # début de la fonction
   nop	    # delay slot
   
# fin de la fonction    
.end fct_S

