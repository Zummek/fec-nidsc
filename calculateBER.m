function [errAmount, BER] = calculateBER(signalBefore, signalAfter)
  errors=0;
  singalLength = length(signalBefore);
  
  for i=1:singalLength 
    if signalBefore(i) != signalAfter(i)
      errors++;
    end
  end
  
  errAmount = errors;
  BER = errAmount/singalLength;
endfunction
