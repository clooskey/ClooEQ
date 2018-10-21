%%
DOMAIN.low = 20;
DOMAIN.hi = 2e4;
t = DOMAIN.low:3:DOMAIN.hi;
fils = [0 1 20 2;...
        0 3 500 1;...
        0 3 4000 1;...
        0 2 16000 2]; % patrz filters.m

%%% PARAMETRY FILTRÓW
gain2 = 0;
gain3 = 0;
%--- położenie i wymiary suwaków
s_width = 180; 
s_hOffset = 25;
s_vOffset = 50;
s_vSpacing = 50;
%
%
%


global FILTERS; % można zmieniać wedle potrzeb
FILTERS.f1.FreqLimits = [20 4000];
FILTERS.f1.OrderLimits = [0.1 10];
FILTERS.f2.FreqLimits = [125 8000];
FILTERS.f2.QualityLimits = [0.1 24];
FILTERS.f3.FreqLimits = [4000 16000];
FILTERS.f3.QualityLimits = [0.1 24];
FILTERS.f4.FreqLimits = [4001 20000];
FILTERS.f4.OrderLimits = [0.1 10];
%
%
%
LOADED = 0; % NIE ZMIENIAĆ
APPLIED = 0;



