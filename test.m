clear;
clc;
% x is row vector of pile coordinate
x = [0 0; 1 1; -1 1 ; -1 -1; 1 -1];
F = [-100; 0; 0];
o = solver(x',F);
disp(o);