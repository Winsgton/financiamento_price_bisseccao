function [xm]=bisseccao(SD,TAXA,p, BALAO)       
  
  a=0;  
  b=SD;
  aux = SD;
  sizeBALAO = size(BALAO);
  somatorioBALOES=0;
  for i=1:SD
    xm = (a+b)/2;
    
    SD=aux;
    for i=1:p
      SD=func(SD, TAXA, xm);
     
      for j=1:sizeBALAO(1)
        somatorioBALOES = somatorioBALOES + BALAO(j,2);
        if(somatorioBALOES>aux)
          'Somatorio de Baloes maior que o valor do financiamento!'
           xm=0;
           return;
         endif 
      
        if(i==BALAO(j,1))
          SD = SD - BALAO(j,2);          
         endif  
      endfor
      somatorioBALOES=0;  
    endfor
   
    erro=abs(SD); 
    if(erro<0.001)
      return;  %retornar xm caso tenha acertado o valor da parcela considerando os balões em seus respectivos meses
    endif    
    
    if(SD > 0)
      % novo invertalo [xm, b]
      a=xm;
    else
    %novo intervalo [a, xm]
      b=xm;
    endif
  endfor
endfunction