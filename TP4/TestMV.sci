function [v,erreur]=testMV()
    //nombre de lignes
    n=5;
    //nombre de colonnes
    m=4;
    //matrice creuse avec des valeurs aleatoire
    sp=sprand(n,m,0.1);
    //matrice creuse qui remplace les valeurs aleatoire par 1
    A=spones(sp);
    //vecteur colonne de 1
    x=ones(m,1);
    //vecteur v
    [v]= produitMV(A,x)
    // erreur
    erreur=norm(v-A*x)/norm(v)

endfunction


