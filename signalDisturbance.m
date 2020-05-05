function disturbanced = signalDisturbance(signal, BER) 
  [nr, nc] = size (signal);
  elAmount = nr*nc;
  elAmountToChange = ceil(elAmount * BER);
  elToChange = randperm(elAmount, elAmountToChange);
  
  for i = 1:elAmountToChange
    signal(elToChange(i)) = !signal(elToChange(i));
  end
  
  disturbanced = signal;
endfunction