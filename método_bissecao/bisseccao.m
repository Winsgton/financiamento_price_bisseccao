function [xm, erro]=bisseccao(a,b, max_iteracaoes, erro_maximo)
  
  for i=1:max_iteracaoes
    xm = (a+b)/2;
  
    erro=abs(func(xm)); %modulo é abs que é = |f1(xm)|
  
    if (erro < erro_maximo)  
      return;
    endif 
    
    if(func(a)*func(b) > 0)
      % novo invertalo de a [xm, b]
      a=xm;
    else
    %novo intervalo de b [xm, b]
      b=xm;
    endif
  endfor
  
  
endfunction