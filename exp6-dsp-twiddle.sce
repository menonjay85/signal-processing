//Program to calculate Twiddle Factor exponents for each stage
clear;
clc;
close;

N = 32; //Given

//Calculation of Twiddle Factor exponents for each stage
for m = 1:5
    disp(m, 'Stage: m = ');
    disp('k = ');
    for t = 0:(2^(m-1)- 1)
        k = N*t/2^m;
        disp(k);
    end
end
