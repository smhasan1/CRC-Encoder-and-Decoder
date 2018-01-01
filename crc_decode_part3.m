function [ y ] = crc_decode_part3( b,g )

n = length(b);

k = n - length(g) + 1;

%Find the remainder r(x)
while 1 %repeat till maximum subtraction in long division
    b = poly_sub(b, g); %subtraction part in long division
    if b(1:k) == 0
        break;
    end
end

%if remainder is 0, reutrn 0. Else return 1
if b(k:n) == 0
    b1 = 0;
else
    b1 = 1;
end
    
y = b1; %asssign variable to output

end

