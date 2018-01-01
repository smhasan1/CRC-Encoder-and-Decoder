function sim_single( p, x )

y = zeros(1,20); %initialize 20 bit vector
x1 = crc_encode(x);

%bits flipped according to probabilty
for i = 1:20
    b = (rand(1) < p);
    if (b == 0)
        y(i) = x1(i);
    else
        y(i) = ~x1(i);
    end
end

x2 = crc_decode(y);
x3 = x1 == y;

fprintf('Original encoded vector\n');
fprintf('%d', x1);
fprintf('\n');
fprintf('Encoded vector with bit flips\n');
fprintf('%d', y);
fprintf('\n')

if(x3)
    fprintf('Errors present: NO\n');
else
    fprintf('Errors present: YES\n');
end

if(x2)
    fprintf('CRC detects errors: YES\n');
else
    fprintf('CRC detects errors: NO\n');
end

end

