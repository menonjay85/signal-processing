// WAP to plot pole zero diagram from difference equation

clc;
close;
clear all;

z = %z
H1Z = ((z)*(z-1)) / ((z - 0.25)*(z - 0.5));
xset ('window', 1);
plzr (H1Z);
