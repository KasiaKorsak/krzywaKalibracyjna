function [ ] = zapisz( stezenia,absorbancje )
p1=fopen('stezenia.txt','w');
for i=1:length(stezenia)
fprintf(p1,'%f\t',stezenia(i));
end
fclose(p1);


p2=fopen('absorbancja.txt','w');
for i=1:length(absorbancje)
fprintf(p2,'%f\t',absorbancje(i));
end
fclose(p2);

end

