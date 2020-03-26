function hist_ber_actualber

  A = dlmread('data_10k_0.0075.txt'); #BER - 0,0075
  B = dlmread('data_10k_0.05.txt'); #BER - 0,05
  ay = NaN (1,200);
  by = NaN (1,200);
  
  for i=1:200
    ay(1,[i]) = A (i,[3]);
    by(1,[i]) = B (i,[3]);
  end

  subplot(2,1,1)
  hist(ay, 20)
  title('BER = 0.0075')
  subplot(2,1,2)
  hist(by, 20)
  title('BER = 0.05')

endfunction
