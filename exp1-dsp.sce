// 
clc;
clear all;
close;

//sinusoidal signal
n1 = 0:0.04:1;
x1 = sin(2*%pi*n1);
subplot(3,2,1);
plot2d3(n1,x1);
title('sine signal')
xlabel('Time')
ylabel('Amplitude')

//cosine signal
n2 = 0:0.04:1;
x2 = cos(2*%pi*n2);
subplot(3,2,2);
plot2d3(n2,x2);
title('cosine signal')
xlabel('Time')
ylabel('Amplitude')

//ramp signal
n3 = 0:0.04:1;
x3 = n3;
subplot(3,2,3);
plot2d3(n3,x3);
title('ramp signal')
xlabel('Time')
ylabel('Amplitude')

//random signal
n4 = 0:0.04:1;
x4 = rand(n4);
subplot(3,2,4);
plot2d3(n4,x4);
title('random signal')
xlabel('Time')
ylabel('Amplitude')

//impulse signal
N = 7;
n5 = -7:7;
x5 = [zeros(1,N), ones(1,1), zeros(1,N)];
subplot(3,2,5);
plot2d3(n5,x5);
title('impulse signal')
xlabel('Time')
ylabel('Amplitude')
