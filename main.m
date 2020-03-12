clear all;
close all;

signalLength = 500;
BER = 0.1;

signal = generateRandomSignal(signalLength)
encoded = encodeSignal(signal)
disturbanced = signalDisturbance(encoded, BER)
[decoded, actualBER] = decodeSignal(disturbanced)

