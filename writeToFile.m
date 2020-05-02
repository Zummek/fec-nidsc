function writeToFile (data, fName)
  fid = fopen([fName '.txt'], 'a');
  fprintf(fid,'%f ', data);
  fprintf(fid,'\n');
  fclose(fid);
endfunction
