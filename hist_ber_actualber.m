function hist_ber_actualber
  A = dlmread('data_5k_0.0075.txt'); #BER - 0,0075 dla dlugosci sygnalu 5k 
  B = dlmread('data_5k_0.05.txt'); #BER - 0,05 dla dlugosci sygnalu 5k 
  C = dlmread('data_10k_0.0075_x_1k.txt'); #BER - 0,0075 dla dlugosci sygnalu 10k 
  D = dlmread('data_10k_0.05_x_1k.txt'); #BER - 0,05 dla dlugosci sygnalu 10k 
  ay = NaN (1,1000);
  by = NaN (1,1000);
  cy = NaN (1,1000);
  dy = NaN (1,1000);
  
  for i=1:1000
    ay(1,[i]) = A (i,[3]);
    by(1,[i]) = B (i,[3]);
    cy(1,[i]) = C (i,[3]);
    dy(1,[i]) = D (i,[3]);
  end

  subplot(2,2,1)
  hist(ay, 10)
  title('BER = 0.0075 dla d?ugo?ci sygna?u 5k')
  subplot(2,2,2)
  hist(by, 10)
  title('BER = 0.05 dla d?ugo?ci sygna?u 5k')
  subplot(2,2,3)
  hist(cy, 10)
  title('BER = 0.0075 dla d?ugo?ci sygna?u 10k')
  subplot(2,2,4)
  hist(dy, 10)
  title('BER = 0.05 dla d?ugo?ci sygna?u 10k')
endfunction
