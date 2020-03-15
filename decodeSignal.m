function [decoded,actualBER] = decodeSignal(signal)
    signalLength = length(signal);
    decoded = zeros(signalLength/3,1);
    j=1; 
    errors =0 ;
    for i=1:3:signalLength
        sum = signal(i)+signal(i+1)+signal(i+2);
        if sum <2
            if sum ==1
                errors = errors+1;
            end
            decoded(j) = 0;
        else
            if sum ==2
                errors = errors +1;
            end
            decoded(j) = 1;
        end
        j=j+1;
    end
    actualBER = errors/length(decoded);
end

