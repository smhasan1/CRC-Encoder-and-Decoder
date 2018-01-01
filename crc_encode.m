function [ y ] = crc_encode( x )
%   input = x = k = 15 = information bits
%   output = y = n = 20 = b(x)

g = [1 0 1 0 0 1]; %generator polynomial g(x)
x1 = x; %variable

%Form i(x).x^(5)
x1(20) = 0; 

%Find the remainder r(x)
while 1 %repeat till maximum subtraction in long division
    x1 = poly_sub(x1, g); %subtraction part in long division
    if x1(1:15) == 0
        break;
    end
end

%Form b(x) = i(x).x^(n-k) + r(x)
x1(1:15) = x;

y = x1; %asssign variable to output
