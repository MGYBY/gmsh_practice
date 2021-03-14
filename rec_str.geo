// Gmsh project created on Sat Mar 13 09:20:00 2021
Lx = 40.0;
//+
Ly = 1.0;
//+
cellX = 2100;
//+
cellY = cellX/(Lx/Ly); 
//+
Point(1) = {0, -Ly/2.0, 0, 1.0};
//+
Point(2) = {Lx, -Ly/2.0, 0, 1.0};
//+
Point(3) = {Lx, Ly/2.0, 0, 1.0};
//+
Point(4) = {0, Ly/2.0, 0, 1.0};

//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Plane Surface(1) = {1};

//+
Recombine Surface {1};
//+
Transfinite Surface {1};

//+
Transfinite Curve {4, 2} = cellY Using Progression 1;
//+
Transfinite Curve {3, 1} = cellX Using Progression 1;
