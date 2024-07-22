 %Accessing a Single Element:
matrix1=[1,2,3;4,5,6;7,8,9];
element=matrix1(3,3);


%Accessing a Row or Column:
matrix2=[1:4;5:8;9:12;13:16];
row=matrix2(2,:);
iscolumn=matrix2(:,3);

%Accessing a Submatrix:
matrix3=[1, 2, 3; 4, 5, 6; 7, 8, 9;10,11,12];
submatrix=matrix3(1:4,2:3);

%Accessing Multiple Elements:
matrix4 = [50,51,52; 53,54,55; 56,57,58];
element1=matrix4([1,3],[2,3]);
