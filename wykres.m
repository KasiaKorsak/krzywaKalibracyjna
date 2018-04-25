function [ p,D,y_fit,delta ] = wykres( S,A )
[p,D]=polyfit(S,A,1);
[y_fit,delta]=polyval(p,S,D);
plot(S,A,'bo',S,y_fit,':r');
xlabel('Stezenia [M]')
ylabel('Absorbancja [AU]')
title('Krzywa kalibracyjna')
hold on
errorbar(S,y_fit,delta,'LineStyle','none','Color','Red')
hold off
wspolczynnik=p(1);

global wsp
wsp=wspolczynnik;

end

