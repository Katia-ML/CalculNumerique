function [v,erreur]=testMV2()
    //nombre de lignes
    n=5;
    //nombre de colonnes
    m=4;
    //matrice creuse avec des valeurs aleatoire
    sp=sprand(n,m,0.1);
    //matrice creuse qui remplace les valeurs aleatoire par 1
    A=spones(sp);
    //vecteur colonne creux
    x=[1;0;1;0]
    //vecteur v
    [v]= produitMV2(A,x)
    // erreur
    erreur=norm(v-A*x)/norm(v)

endfunction


