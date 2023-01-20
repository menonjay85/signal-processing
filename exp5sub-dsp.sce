x1 = [1,2,3,4];
x2 = [1,1,2,2];
m = length(x1)
n = length(x2)
if (m >n)
 for i = n+1:m
 x2(i) = 0;
 end
elseif (n>m)
 for i = m+1:n
 x1(i) = 0;
 end
end
N = length(x1)
x3 = zeros(1,N);
a(1) = x2(1);
for j = 2:N
 a(j) = x2(N-j+2);
end
for i =1:N
 x3(1) = x3(1)+x1(i)*a(i);
end
for k = 2:N
for j =2:N
 x2(j) = a(j-1);
end
 x2(1) = a(N);
 x2
for i = 1:N
 a(i) = x2(i);
 x3(k) = x3(k)+x1(i)*a(i);
end
end
disp(x3,'Circular Convolution of Discrete Sequence is x3 = ')
