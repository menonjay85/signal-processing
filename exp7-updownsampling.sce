//Down Sampling (or Decimation)

xn = input('Enter the number of samples xn: ');//[1 2 3 4 5 6 7 8]
N = length(xn);
n = 0:1:N-1;
D = 3;
xDn = xn(1:D:N);
n1 = 1:1:N/D;
//figure;
disp(xDn, 'The downsampling or Decimation for D = 3 is:------>')

//Up Sampling (or Interpolation)
yn = input('Enter the number of samples yn: ')///[1 -2 3 4 8 9 10 44]

N = length(yn)
n = 0:1:N-1
I = 2
xIn = [zeros(1, I*N)]
n1 = 1:1:N*I 
j = 1:I:I*N
xIn(j) = yn
disp(xIn, 'The upsampling or interpolation for I = 2 is:----->')
