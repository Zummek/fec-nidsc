clear all;
close all;

signalLength = 10000;
BER = 0.1555;

for i=0:1:999
  disp(i)
  data = generateRandomSignal(signalLength);
  encoded = encodeSignal(data);
  disturbanced = signalDisturbance(encoded, BER);
  [decoded, actualBER] = decodeSignal(disturbanced);
  
  [errAmount, _] = calculateBER(data, decoded);
  bitsAmount = length(disturbanced);
  dataBitsAmount = length(decoded);
  E = (dataBitsAmount - errAmount) / bitsAmount;
  
  writeToFile([E, errAmount, actualBER], ["data_5k_"  num2str(BER)]); 
  %save(signalLength, BER, actualBER);
end
