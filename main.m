clear all;
close all;

% Parameter
BCHBase = 3;
packageLength = 2^BCHBase - 1;
dataBitLength = 4;
BCHCorrection = 0;

% Main loop for tests
for i=0:10
  disp("index:"), disp(i);
  data = generateRandomSignal(dataBitLength);
  encoded = encodeSignal(data, packageLength, dataBitLength);
  disturbanced = signalDisturbance(encoded, packageLength);
  [decoded, err] = decodeSignal(disturbanced, dataBitLength, BCHCorrection);
  [errAmount, BER] = calculateBER(data, decoded);
  
  [nr, nc] = size (decoded);
  bitsAmount = (nr*nc);
  correctBits = (bitsAmount - errAmount) / bitsAmount;
  writeToFile(correctBits,errAmount,BER);
  % debugger :) 
  %disp("data: "), disp(data);
  %disp("disturbanced: "), disp(disturbanced);
  %disp("decoded: "), disp(decoded);
  %disp("E:"), disp(correctBits);
  %disp("errAmount: "), disp(errAmount);
  %disp("err: "), disp(BER);
end
