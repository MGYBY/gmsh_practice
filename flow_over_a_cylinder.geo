// Gmsh project created on Sat Mar 13 20:24:02 2021
//+
d = DefineNumber[ 1, Name "Parameters/d" ];
//+
cos = DefineNumber[ 0.70711, Name "Parameters/cos" ];
//+
Point(1) = {0, 0, 0, 1.0};
Point(2) = {d/2*cos, d/2*cos, 0, 1.0};
Point(3) = {-d/2*cos, d/2*cos, 0, 1.0};
Point(4) = {-d/2*cos, -d/2*cos, 0, 1.0};
Point(5) = {d/2*cos, -d/2*cos, 0, 1.0};

Point(6) = {2*d*cos, 2*d*cos, 0, 1.0};
Point(7) = {-2*d*cos, 2*d*cos, 0, 1.0};
Point(8) = {-2*d*cos, -2*d*cos, 0, 1.0};
Point(9) = {2*d*cos, -2*d*cos, 0, 1.0};

Point(10) = {-10*d, -10*d, 0, 1.0};
Point(11) = {-10*d, 10*d, 0, 1.0};
Point(12) = {15*d, 10*d, 0, 1.0};
Point(13) = {15*d, -10*d, 0, 1.0};

Point(14) = {2*d*cos, 10*d, 0, 1.0};
Point(15) = {-2*d*cos, -10*d, 0, 1.0};
Point(16) = {-2*d*cos, 10*d, 0, 1.0};
Point(17) = {2*d*cos, -10*d, 0, 1.0};

Point(18) = {-10*d, -2*d*cos, 0, 1.0};
Point(19) = {-10*d, 2*d*cos, 0, 1.0};
Point(20) = {15*d, 2*d*cos, 0, 1.0};
Point(21) = {15*d, -2*d*cos, 0, 1.0};
//+
Circle(1) = {4, 1, 5};
//+
Circle(2) = {5, 1, 2};
//+
Circle(3) = {2, 1, 3};
//+
Circle(4) = {3, 1, 4};
//+
Circle(5) = {8, 1, 7};
//+
Circle(6) = {7, 1, 6};
//+
Circle(7) = {6, 1, 9};
//+
Circle(8) = {9, 1, 8};
//+
Line(9) = {7, 16};
//+
Line(10) = {6, 14};
//+
Line(11) = {20, 12};
//+
Line(12) = {21, 20};
//+
Line(13) = {13, 21};
//+
Line(14) = {17, 9};
//+
Line(15) = {15, 8};
//+
Line(16) = {10, 18};
//+
Line(17) = {18, 19};
//+
Line(18) = {19, 11};
//+
Line(19) = {10, 15};
//+
Line(20) = {15, 17};
//+
Line(21) = {17, 13};
//+
Line(22) = {18, 8};
//+
Line(23) = {9, 21};
//+
Line(24) = {19, 7};
//+
Line(25) = {6, 20};
//+
Line(26) = {11, 16};
//+
Line(27) = {16, 14};
//+
Line(28) = {14, 12};
//+
Line(29) = {3, 7};
//+
Line(30) = {2, 6};
//+
Line(31) = {5, 9};
//+
Line(32) = {4, 8};
//+
Curve Loop(1) = {18, 26, -9, -24};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, 10, -27, -9};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {25, 11, -28, -10};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, 23, 12, -25};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {14, 23, -13, -21};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {20, 14, 8, -15};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {19, 15, -22, -16};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {5, -24, -17, 22};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {29, -5, -32, -4};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {29, 6, -30, 3};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {2, 30, 7, -31};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {1, 31, 8, -32};
//+
Plane Surface(12) = {12};


Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8, 12, 11, 10, 9};
//+

Transfinite Curve {18, 9, 10, 11} = 61 Using Progression 1;
//+
Transfinite Curve {16, 15, 14, 13} = 61 Using Progression 1;
//+
Transfinite Curve {26, 24, 22, 19} = 61 Using Progression 1;
//+
Transfinite Curve {28, 25, 23, 21} = 81 Using Progression 1;
//+
Transfinite Curve {17, 5, 4} = 31 Using Progression 1;
//+
Transfinite Curve {2, 7, 12} = 31 Using Progression 1;
//+
Transfinite Curve {1, 8, 20} = 31 Using Progression 1;
//+
Transfinite Curve {27, 6, 3} = 31 Using Progression 1;
//+
Transfinite Curve {29, 30, 31, 32} = 31 Using Progression 1.2;
//+


Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {4};
//+
Transfinite Surface {5};
//+
Transfinite Surface {6};
//+
Transfinite Surface {7};
//+
Transfinite Surface {8};
//+
Transfinite Surface {9};
//+
Transfinite Surface {12};
//+
Transfinite Surface {11};
//+
Transfinite Surface {10};
//+

//+
Extrude {0, 0, 4} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Surface{6}; Surface{7}; Surface{8}; Surface{9}; Surface{10}; Surface{11}; Surface{12}; Layers{2}; Recombine;
}
//+
Surface Loop(1) = {54, 41, 1, 45, 208, 203, 8, 186, 173, 7, 185, 164, 151, 6, 142, 137, 5, 141, 120, 115, 4, 98, 89, 3, 93, 76, 71, 2, 252, 251, 10, 274, 261, 11, 296, 283, 12, 230, 229, 9};
//+
Volume(13) = {1};
//+
Physical Surface("inlet") = {41, 203, 185};
//+
Physical Surface("outlet") = {89, 115, 137};
