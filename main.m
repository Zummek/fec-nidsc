
clear all;
close all;

% Parameter
BCHBase = 5;
packageLength = 2^BCHBase - 1;
dataBitLength = 21;
BCHCorrection = 2;
%actualBER = 0.3;

% Main loop for tests
for i=0.025:0.025:0.3
  actualBER = i
  for i=0:2000
    data = generateRandomSignal(dataBitLength);
    encoded = encodeSignal(data, packageLength, dataBitLength);
    disturbanced = signalDisturbance(encoded, actualBER);
    [decoded, err] = decodeSignal(disturbanced, dataBitLength, BCHCorrection);
    [errAmount, BER] = calculateBER(data, decoded);
    
    [nrDisturbanced, ncDisturbanced] = size(disturbanced);
    [nrDecoded, ncDecoded] = size(decoded);
    bitsAmount = nrDisturbanced * ncDisturbanced;
    dataBitsAmount = nrDecoded * ncDecoded;
    E = (dataBitsAmount - errAmount) / bitsAmount;
    
    writeToFile([E, errAmount, BER], ["data_5_21_2_" num2str(actualBER)]);    % data_BCHBAse_DataBitLength_BCHcorrection_actualBer (actual BER to prawdopodobieñstwo przek³amania tych bitów na poczatku) 
    
    % debugger :) 
    %disp("data: "), disp(data);
    %disp("disturbanced: "), disp(disturbanced);
    %disp("decoded: "), disp(decoded);
    %disp("E:"), disp(E);
    %disp("errAmount: "), disp(errAmount);
    %disp("BER: "), disp(BER);
  endfor
endfor
