//Triangular signal

//n3 = 0:0.04:1;
//x3 = n3;
//subplot(3,2,3);
//plot2d3(n3,x3);
//title('ramp signal')
//xlabel('Time')
//ylabel('Amplitude')

t1 = [0:3]
n = 2*length(t1)-1
t2 = 1:n
x = [1 2 3 4]
h = [5 6 7 8]
y = convol(x,h)
subplot(2,3,1)
plot2d3(t1, x, rect=[0,0,10,10])
xlabel('t ->','fontsize', 5)
ylabel('x(n)','fontsize', 5)
title('signal x(n)', 'fontsize', 5)
subplot(2,3,2)
plot2d3(t1, h, rect=[0,0,10,10])
xlabel('t ->','fontsize', 5)
ylabel('h(n)', 'fontsize', 5)
title('signal h(n)', 'fontsize', 5)
subplot(2,3,3)
plot2d3(t2, y, rect=[0,0,10,100])
xlabel('t ->','fontsize', 5)
ylabel('y(n)', 'fontsize', 5)
title('convolved signal (convol command)', 'fontsize', 5)
printf("convolved signal using convol command\n")
disp(y)
printf("\n")

n3 = 0:0.04:1;
x3 = n3;
n4 = 1:0.04:2;
x4 = 2-n4;
subplot(2,3,4);
plot2d3(n3,x3);
plot2d3(n4,x4);
title('ramp signal')
xlabel('Time')
ylabel('Amplitude')
