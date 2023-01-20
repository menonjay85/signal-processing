//AIM: Implement Impulse Invariant Method

clc;
clear;
s = %s;
s2 = -2;
s1 = -1;
d1 = (s-s1);
p2 = (s-s2);
if (s1) then  //When pole = -1
    s1 = -1;
    s2 = -2;
    s = s1;
    d2 = (s-s2);
    num1 = 1/d2; //Value of A1
h1 = syslin('c', num1/d1)
end

disp(h1)
disp(num1, 'Value of A1 = ')

if (s2) then  //When pole = -2
    s1 = -1;
    s2 = -2;
    s = s2;
    p1 = (s-s1);
    num2 = 1/p1; //Value of A2
h2 = syslin('c', num2/p2)
end

disp(h2)
disp(num2, 'Value of A2 = ')

Hs = (h1)+(h2);
disp(Hs, 'Transfer function of analog filter H(s) = ')
//Obtain the Z transform using impulse invariance transformation equation
//1/(s-pk)=1/[1-exp(pk*Ts)*Z^(-1)]
Fs = 5;
Ts = 1/Fs;
disp('sec', Ts, 'Sampling time Ts = ')
Z = poly(0, "Z")
a = num1/(1-exp(s1*(Ts))*Z^(-1));
b = num2/(1-exp(s2*(Ts))*Z^(-1));
disp(a, '1/s+1 = ')
disp(b, '1/s+2 = ')
Hz = (a+b);
disp(Hz, 'The required transfer function for digital IIR Filter H(Z) = ')
