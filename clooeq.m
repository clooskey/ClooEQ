% ClooEQ 0.1.0-2017 - (c) by Hubert Weydmann
% for manual and initialisation info read the '/readme.txt' file

close all;
clear;
 wBar = waitbar(0.25,'Loading defaults...');
clc;
%----------SETUP
defaults; %skrypt defaults.m deklaracja domy�lnych warto�ci
 waitbar(0.5,wBar,'Initializing the graphical interface...');
res = get(0,'ScreenSize'); %pobranie rozdzielczosci ekranu dla UI
win_width = 1000; %szeroko�� okna
win_height = 650; %wysoko�� okna
pos = [floor((res(3)-win_width)/2)...
       floor((res(4)-win_height)/2) ...
       win_width win_height]; 
%pozycja okna ustalana względzem krawędzi ekranu

%-----------MAIN WINDOW
global font;     % CZCIONKI
font.Name = 'Verdana';
font.LabelSize = 24;
font.SliderSize = 8;
global main;
main = uifigure('Position',pos); %otwarcie g��wnego okna ui
main.Name = 'ClooEq 0.1.0-2017 - Hubert Weydmann';
%-----------PANELS
global pnl_lspc;
pnl_spc = 10; % odst�p mi�dzy panelami
global pn1_width;
pnl1_width = win_width-40;
global pnl1_height
pnl1_height = (win_height/2)-20-pnl_spc/2;
global pnl1
pnl1 = uipanel(main,... %panel filtr�w
    'Position',[20 20 pnl1_width pnl1_height]);

global pnl2_width;
pnl2_width = pnl1_width - (pnl1_width+10)/4;
global pnl2_height;
pnl2_height = (win_height/2)-20;
global pnl2
pnl2 = uipanel(main,... %panel wykresu
    'Position',[20 win_height/2+pnl_spc/2 pnl2_width pnl2_height]);


global pnl3_width;
pnl3_width = pnl1_width - (pnl1_width+10)/4;
global pnl3_height;
pnl3_height = (win_height/2)-20;
global pnl3
pnl3 = uipanel(main,... %panel i/o
    'Position',[pnl2_width+30 win_height/2+pnl_spc/2 pnl2_width/3-7 pnl2_height]);
iopanel;
l_vOffset = pnl1_width/8-50;
%-----------INIT
axxes;

 waitbar(0.75,wBar,'Initializing filters...');

filter_1;
filter_2;
filter_3;
filter_4;
plot(axx,t,filters(t,fils,gain2,gain3));

 waitbar(1,wBar,'Ready!');
 pause(0.3);
 close(wBar);
