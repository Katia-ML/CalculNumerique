tic();
//A=[3 6;6 2]
//A=[60 30 20; 30 20 15; 20 15 12];
A=[3 6 9 3 1; 6 8 7 1 9; 9 7 5 8 7; 3 1 8 4 4; 1 9 7 4 5]
[L,D]= myldlt(A);
toc();
t=toc();