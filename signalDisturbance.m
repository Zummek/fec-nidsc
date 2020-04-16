function disturbanced = signalDisturbance(encoded, packageLength)    
  disturbanced = mod(randerr(10, packageLength) + encoded, 2);
endfunction