
clear all;
close all;

% Parameter
BCHBase = 8;
packageLength = 2^BCHBase - 1;
dataBitLength = 247;
BCHCorrection = 1;
actualBER = 0.2;

% Main loop for tests
for i=0:2000
  data = generateRandomSignal(dataBitLength);
  encoded = encodeSignal(data, packageLength, dataBitLength);
  disturbanced = signalDisturbance(encoded, actualBER);
  [decoded, err] = decodeSignal(disturbanced, dataBitLength, BCHCorrection);
  [errAmount, BER] = calculateBER(data, decoded);
  
  [nr, nc] = size (decoded);
  bitsAmount = (nr*nc);
  E = (bitsAmount - errAmount) / bitsAmount;
  writeToFile([E, errAmount, BER], "data_8_247_1_0.2");    % data_BCHBAse_DataBitLength_BCHcorrection_actualBer (actual BER to prawdopodobieñstwo przek³amania tych bitów na poczatku) 
  % debugger :) 
  %disp("data: "), disp(data);
  %disp("disturbanced: "), disp(disturbanced);
  %disp("decoded: "), disp(decoded);
  %disp("E:"), disp(correctBits);
  %disp("errAmount: "), disp(errAmount);
  %disp("err: "), disp(BER);
end
