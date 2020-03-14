function disturbanced = signalDisturbance(signal, BER)  
  elAmount = length(signal);
  elAmountToChange = ceil(elAmount * BER);
  elToChange = randperm(elAmount, elAmountToChange);
  
  for i = 1:elAmountToChange
    signal(elToChange(i)) = !signal(elToChange(i));
  end
  
  disturbanced = signal;
end