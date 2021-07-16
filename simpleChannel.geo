Point(1) = {0, 0, 0, 0.05};
Extrude {0, 1, 0} {
  Point{1};Layers{20};
}
Point(3) = {1, 0, 0, 0.05};
Extrude {0, 1, 0} {
  Point{3};Layers{20};
}
Line(3)={1,3};
Line(4)={2,4};
Line Loop(5) = {4, -2, -3, 1};
Plane Surface(6) = {5};

Physical Line(1) = {1};
Physical Line(2) = {2};
Physical Line(3) = {4, 3};
Physical Surface(1) = {6}; 
