function SD=func(SD, TAXA, xm)
	JUROS = TAXA*SD;
	SD = SD + JUROS - xm;
	%xm é o suposto valor da parcela que anularia o saldo devedor, este calculado pela bisseccao
endfunction