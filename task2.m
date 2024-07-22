%Vertical Concatenation:
matrix1 = [1, 2, 3; 4, 5, 6];
matrix2 = [7, 8, 9; 10, 11, 12];
combinedmatrix = [matrix1;matrix2];

%Horizontal Concatenation:
matrix3= [1, 2; 3, 4];
matrix4 = [5, 6; 7, 8];
combinedmatrix1 = [matrix3,matrix4];
 
%transposition of matrix:
matrix5 = [1, 2, 3; 4, 5, 6];
matrix6 = [7, 8, 9; 10, 11, 12];
transpose=matrix1';

%array multiplication:
matrix7 = [1, 2, 3; 4, 5, 6; 7, 8, 9];
matrix8 = [9, 8, 7; 6, 5, 4; 3, 2, 1];
ismatrix = matrix7.*matrix8;

%matrix multiplication:
matrix9 = [1, 2, 3; 4, 5, 6; 7, 8, 9];
matrix10 = [9, 8, 7; 6, 5, 4; 3, 2, 1];
ismul=matrix9*matrix10;

%array division:
array1 = [10, 20, 30];
array2 = [2, 5, 3];
isdiv=array1./array2;