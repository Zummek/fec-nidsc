function [decoded,actualBER] = decodeSignal(signal)
    signalLength = length(signal);
    decoded = zeros(1,signalLength/3);
    j=1; 
    errors =0 ;
    for i=1:3:signalLength
        sum = signal(i)+signal(i+1)+signal(i+2);
        if sum <2
            
            decoded(j) = 0;
        else
            
            decoded(j) = 1;
        end
        
        if signal(i)==0
            errors = errors + (signal(i+1)+signal(i+2));
        else
            errors = errors + (~signal(i+1)+~signal(i+2));
        end
        
        j=j+1;
    end
    actualBER = errors/signalLength;
end

