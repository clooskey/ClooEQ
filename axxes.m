axes_border = 5; % odst�p granic osi od granic panelu
border_prop = [3 2]; % proporcje mi�dzy granicami

axx = uiaxes(pnl2,...
    'Position',[axes_border axes_border ...
    pnl2.Position(3)-(border_prop(1)*axes_border) ...
    pnl2.Position(4)-(border_prop(2)*axes_border)],...
    'LineWidth',1   ,...
    'XLim',[DOMAIN.low DOMAIN.hi],...
    'YLim',[10^-1.8 10^1.8],...
    'XScale','log',...
    'YScale','log',...
    'XGrid','off',...
    'YGrid','on',...
    'XMinorGrid','on',...
    'YMinorGrid','off',...
    'GridLineStyle',':',...
    'XTickMode','manual',...
    'YTickMode','manual',...
    'XTick',[20 63 125 250 500 1000 2000 4000 8000 16000],...
    'YTick',[10^-1.2 10^-0.6 10^-0.3 1 10^0.3 10^0.6 10^1.2],...
    'YTickLabel',{'-12';'-6';'-3';'0';'3';'6';'12'});
axx.YLabel.String = 'dB Gain';
axx.XLabel.String = 'Frequency';