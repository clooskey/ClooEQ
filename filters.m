function [Y] = filters(t,fils,varargin)
% funkcja zwracaj�ca wektor 
% odpowiadaj�cy wykresowi wypadkowemu filtr�w 
% w dziedzinie cz�stotliwo�ci
% ---
% struktura argument�w wej�ciowych:
% t - globalny wektor czasu
% macierz w�a�ciwo�ci filtr�w zawieraj�ca 
% w jednym wierszu w�a�ciwo�ci
% odpowiadaj�ce jednemu filtrowi:
%     col 1            col 2            col 3      col 4
% stan(1 on/2 off), typ(1 hp/2 lp), cz�stotliwo��, rz�d
% 
% stan(3 - bell),  wzmocnienie,   cz�stotoliwos�, dobro�
%
% 
filsize = size(fils);
y = zeros(filsize(1),length(t));
for i = 1:filsize(1)
switch fils(i,1)
case 1
    tp = fils(i,2);
    fq = fils(i,3);
    or = fils(i,4);
    y(i,:) = butt_filter(fq,or,tp,t);
    continue;
case 3
    fq = fils(i,3);
    qu = fils(i,4);
    tp = fils(i,2);
    if isempty(varargin(:))
        continue;
    end
    gain = cell2mat(varargin(i-1))+0.000000001;
    y(i,:) = 1 + gain.*butt_filter(fq,qu,tp,t);
    continue;
end
y(i,:) = y(i,:).^0; %przypisanie wartosci 1 przy wylaczonym
end                   %filtrze
Y = prod(y,1);
end