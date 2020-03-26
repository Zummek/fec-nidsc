clear all;
close all;

signalLength = 5000;
BER = 0.05;
for i=0:1:999
  disp(i)
  signal = generateRandomSignal(signalLength);
  encoded = encodeSignal(signal);
  disturbanced = signalDisturbance(encoded, BER);
  [decoded, actualBER] = decodeSignal(disturbanced);
  save(signalLength, BER, actualBER);
end
