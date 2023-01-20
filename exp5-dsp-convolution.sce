clear;
close;

x1 = [1,2,3,4]
x2 = [1,1,2,2]


X1 = fft(x1, -1)
X2 = fft(x2, -1)

X3 = X1 .* X2
disp(X3, "X3[k] = ");
x3 = fft(X3, 1)

disp(x3, "x3[n] = ");

//alternatively convolution
x3 = conv(x1,x2)
disp(x3, "x3 = ");
