
function save (length, BER, actualBER)

  fid = fopen('data.txt','a');
  your_data = [length, BER, actualBER]; 
  fprintf(fid,'%f ', your_data);
  fprintf(fid,'\n');
  fclose(fid);
 
endfunction


