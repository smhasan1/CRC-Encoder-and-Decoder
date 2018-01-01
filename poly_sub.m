function [ y ] = poly_sub( x1, x2 )
% does mod 2 subtraction of polynomials

    %stores input in variable
    y1 = x1; 
    le = length(x1);
    le2 = length(x2);
    
    %checking for MSB 0's for x1
    for yindex = 1:le
        if y1(yindex) == 1;
            break;
        end
    end
    
    %checking for MSB 0's for x2
    for xindex = 1:le2
        if x2(xindex) == 1;
            break;
        end
    end
    
    %replaces with 0 if both are same, else replaces with 1
    i = yindex;
    for i1 =  xindex:le2      
        if y1(i) == x2(i1);
            y1(i) = 0;
        else 
            y1(i) = 1;
        end       
        i = i +1;
    end
    
    %assigns variable to the output
    y = y1;

end

