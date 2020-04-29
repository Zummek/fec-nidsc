function writeToFile (correctBits,errAmount,BER)
  fid = fopen('data_3_4.txt','a');
  your_data = [correctBits,errAmount,BER]; 
  fprintf(fid,'%f ', your_data);
  fprintf(fid,'\n');
  fclose(fid);
endfunction
