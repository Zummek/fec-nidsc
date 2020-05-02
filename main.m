clear all;
close all;

% Parameter
BCHBase = 7;
packageLength = 2^BCHBase - 1;
dataBitLength = 120;
BCHCorrection = 1;
actualBER = 0.03;

% Main loop for tests
for i=0:1:2000
  data = generateRandomSignal(dataBitLength);
  encoded = encodeSignal(data, packageLength, dataBitLength);
  disturbanced = signalDisturbance(encoded, actualBER);
  [decoded, err] = decodeSignal(disturbanced, dataBitLength, BCHCorrection);
  [errAmount, BER] = calculateBER(data, decoded);
  
  [nr, nc] = size (decoded);
  bitsAmount = (nr*nc);
  correctBits = (bitsAmount - errAmount) / bitsAmount;
  writeToFile([correctBits, errAmount, BER], "data_7_120_03");    % data_BCHBAse_DataBitLength_actualBer
  % debugger :) 
  %disp("data: "), disp(data);
  %disp("disturbanced: "), disp(disturbanced);
  %disp("decoded: "), disp(decoded);
  %disp("E:"), disp(correctBits);
  %disp("errAmount: "), disp(errAmount);
  %disp("err: "), disp(BER);
end
