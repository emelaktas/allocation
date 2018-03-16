set STUD;
set PROJ;

param cost{STUD, PROJ} >= 0;

var assign{STUD,PROJ} >= 0, <= 1;

minimize TotalCost:
sum {i in STUD, j in PROJ} cost[i,j] *  assign[i,j];

subject to Max_Num_Projects {i in STUD}:
sum {j in PROJ} assign[i,j] >= 1;

subject to Max_Num_Students {j in PROJ}:
sum {i in STUD} assign[i,j] <= 1;