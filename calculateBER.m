function [errAmount, BER] = calculateBER(signalBefore, signalAfter)
  errors=0;
  [nr, nc] = size (signalBefore);
  
  for i=1:nr
    for j=1:nc
      if signalBefore(i, j) != signalAfter(i, j)
        errors++;
      end
    end
  end
  
  errAmount = errors;
  BER = errAmount/( nr * nc );
endfunction
