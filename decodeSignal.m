function [decoded, err] = decodeSignal(disturbanced, dataBitLength, BCHCorrection)
    [decoded, err] = bchdeco(disturbanced, dataBitLength, BCHCorrection);
endfunction

