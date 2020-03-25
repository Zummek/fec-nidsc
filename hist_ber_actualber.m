function hist_ber_actualber

  A = dlmread('data_10k_0.0075.txt');
  B = dlmread('data_10k_0.005.txt');
  ax = NaN (1,200);
  ay = NaN (1,200);
  bx = NaN (1,200);
  by = NaN (1,200);
  
  for i=1:200
    ax(1,[i]) = A (i,[2]);
    ay(1,[i]) = A (i,[3]);
    bx(1,[i]) = A (i,[2]);
    by(1,[i]) = A (i,[3]);
  end
  
bar(ax, ay)
title ("bar graph ber-actualber")
bar(bx, by)
title ("bar graph ber-actualber")

endfunction
