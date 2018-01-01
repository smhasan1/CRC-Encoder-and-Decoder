function [ y ] = crc_decode( b )

g = [1 0 1 0 0 1]; %generator polynomial g(x)

%Find the remainder r(x)
while 1 %repeat till maximum subtraction in long division
    b = poly_sub(b, g); %subtraction part in long division
    if b(1:15) == 0
        break;
    end
end

%if remainder is 0, reutrn 0. Else return 1
if b(15:20) == 0
    b1 = 0;
else
    b1 = 1;
end
    
y = b1; %asssign variable to output

end

