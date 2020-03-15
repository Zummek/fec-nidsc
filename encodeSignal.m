function encoded = encodeSignal(signal)
    encoded = [];
    for i= 1:length(signal) 
      for j= 1:3 
        encoded =[encoded,signal(i)];
      end
    end
end
