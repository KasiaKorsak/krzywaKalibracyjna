function [ p,D,y_fit,delta ] = wykres2( S,A,obliczone,absorbancje )
[p,D]=polyfit(S,A,1);
[y_fit,delta]=polyval(p,S,D);
plot(S,A,'bo',S,y_fit,':r');
xlabel('Stezenia [M]')
ylabel('Absorbancja [AU]')
hold on
scatter(obliczone,absorbancje,'g')
hold off
legend('Dane wzorcowe','Krzywa kalibracyjna','Wyliczone punkty','Location','southeast')
end
