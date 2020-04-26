function [errAmount,BER] = calculateBER(signalBefore,signalAfter)
  errors=0;
  for i=1:length(signalBefore)
     if signalBefore(i)!=signalAfter(i)
         errors+=1;
     end
  end
  errAmount = errors;
  BER  = errAmount/length(signalBefore);
endfunction
