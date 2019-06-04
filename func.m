function SD=func(SD, TAXA, xm)  
  JUROS = TAXA*SD; 
  SD = SD + JUROS - xm;  
endfunction