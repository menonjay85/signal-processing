x = [0,1,2,3];
//DFT Computation
X = fft(x , -1); // -1 for FFT

Y = [8,-2,0,-2];
//IDFT Computation
y = fft(Y , 1); // +1 for IFFT

//Display sequence X[k] and y[n] in command window
disp(X, "X[k] = ");
disp(y, "y[n] = ");
