clear all;
close all;

% Parameter
BCHBase = 3;
packageLength = 2^BCHBase - 1;
dataBitLength = 4;
BCHCorrection = 1;

% Main loop for tests
for i=0:1:0
  disp(i)
  data = generateRandomSignal(dataBitLength);
  encoded = encodeSignal(data, packageLength, dataBitLength);
  disturbanced = signalDisturbance(encoded, packageLength);
  [decoded, err] = decodeSignal(disturbanced, dataBitLength, BCHCorrection);
  
  % debugger :) 
  disp("data: "), disp(data);
  disp("disturbanced: "), disp(disturbanced);
  disp("decoded: "), disp(decoded);
  disp("err: "), disp(err);
end
