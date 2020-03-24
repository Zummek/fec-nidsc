clear all;
close all;

signalLength = 10000;
BER = 0.01;

signal = generateRandomSignal(signalLength);
encoded = encodeSignal(signal);
disturbanced = signalDisturbance(encoded, BER);
[decoded, actualBER] = decodeSignal(disturbanced);
save(signalLength, BER, actualBER);

