function [xm]=bisseccao(SD,TAXA,p) 

  a=0;  
  b=SD;
  aux = SD;
  for i=1:50
    
    xm = (a+b)/2;
	
	SD=aux;
    for i=1:p
      SD=func(SD, TAXA, xm);
    endfor
	
	erro=abs(SD);
	
	if(erro<0.001)
      return;  %retornar xm
    endif
	
	if(SD > 0)
      % novo invertalo de a [xm, SD]
      a=xm;
    else
    %novo intervalo de SD [xm, SD]
      b=xm;
    endif
  
  endfor

endfunction