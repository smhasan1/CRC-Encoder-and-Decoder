function sim_multiple( p, j )

x1 = zeros(1,15);
var = 0;
count = 0;

%same for loop as sim_single to flip bits
for l = 1:j
    for k = 1:15
        x1(k) = (rand(1) < 0.5);
    end
    y = crc_encode(x1);
    z = zeros(1,20);
    for i = 1:20
        b = (rand(1) < p);
        if (b == 0)
            z(i) = y(i);
        else
            z(i) = ~y(i);
        end
    end
    
    %counts number of sequences with errors.
    x2 = crc_decode(z);
    x3 = isequal(y,z);
    if(~x3)
        var = var+1;
        if(~x2)
            count = count+1;
        end
    end
end

%display output
fprintf('Sequences with errors: %d\n', var - count );
fprintf('Sequences with undetected errors: %d\n', count);


end

