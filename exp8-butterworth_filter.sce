// AIM : TO design Butterworth Filter with minimum readymade Scilab Functions

//To computer the order and the poles of Butterworth low pass filter using
//Bilinear Transformation (ASSUME T=1s)
//Attenuation in passband = 1.93 dB
//Attenuation in stopband = 13.97 dB
//Passband edge frequency = 0.2
//Stopband edge frequency = 0.6

clc;
clear;
s = poly(0,"s")
T = 1;

Ap = 1.93; //in dB
As = 13.97; //in dB
wp = 0.2*(%pi)
ws = 0.6*(%pi)
ohmp = 2/T*(tan(wp/2))
ohms = 2/T*(tan(ws/2))

//ORDER CALCULATION
N = (0.5)*(log((((10^(0.1*As))-1)/((10^(0.1*Ap))-1))))/(log(ohms/ohmp))

Nr = int(N)
x = N-int(N)
if(x>0)
    Nr = Nr+1
ohmc = (ohmp/(10^(0.1*Ap)-1)^(1/(2*Nr)))

//Calculation of Poles
i = 0:1:Nr-1;
pi_plus = ohmc*exp(%i*(Nr+2*i+1)*(%pi)/(2*Nr))
pi_minus = -ohmc*exp(%i*(Nr+2.*i+1)*(%pi)/(2*Nr))
disp(wp, 'wp = ')
disp(ws, 'ws = ')
disp(ohmp, 'ohmp = ')
disp(ohms, 'ohms = ')
disp(N, 'N = ')
disp(Nr, 'Roundoff value of N now denoted as Nr = ')
disp(ohmc, 'Cutoff frequency : ohmc = ')
disp('Displaying the poles')
disp(pi_plus, 'pi_plus = ')
disp(pi_minus, 'pi_minus = ')
h2 = zeros(1,2)
h = ohmc/(s-(-0.53-0.53*%i))
h1 = ohmc/(s-(-0.53+0.53*%i))
h2 = h*h1;
disp(h,h1, 'Now the analog transfer function H(s) is the multiplication of the following two terms: ');
disp(h2, 'After multiplication, H(s) = ')
g = numer(h2);
disp(g, 'Numerator of the analog transfer function = ')
//Obtaining H(z) using Bilinear Transformation Method:
z = poly(0, "z")
s = (2/T)*((z-1)/(z+1)); //Bilinear Transformation Method
disp('Type resume in console')
pause
a = 0.5618 + 1.06*s + s^2;
b = (1/a)
c = 0.5645360*b;
disp(c, 'The digital transfer function H(z) = ')
end
