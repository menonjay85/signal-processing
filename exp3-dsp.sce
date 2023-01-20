clear;
clc;
close;

x = [1,1,0,0];
//DFT Computation
X = fft(x , -1);

Y = [1,0,1,0];
//IDFT Computation
y = fft(Y , 1);

//Display sequence X[k] and y[n] in command window
disp(X, "X[k] = ");
disp(y, "y[n] = ");
