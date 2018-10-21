
btnCols = 1;
btnWidth = 200;
btnVSpacing = 40;
btnHAnchor = pnl3.Position(3)/(2*btnCols)-btnWidth/2;
btnVAnchor = floor((pnl3.Position(4)-50)/10);
Voffset = 10;
btn1 = uibutton(pnl3,'push',...
    'Text','Load an audio file',...
    'FontName',font.Name,...
    'ButtonPushedFcn','fileload');
btn1.Position = [btnHAnchor 7*btnVAnchor-Voffset btnWidth 22];
btn2 = uibutton(pnl3,'push',...
    'Text','Apply filters',...
    'FontName',font.Name,...
    'ButtonPushedFcn','apply',...
    'Enable','off');
btn2.Position = [btnHAnchor 6*btnVAnchor-Voffset btnWidth 22];
btn31 = uibutton(pnl3,'push',...
    'Text','Export current',...
    'FontName',font.Name,...
    'FontWeight','bold',...
    'Enable','off',...
    'ButtonPushedFcn','export');
btn31.Position = [btnHAnchor btnVAnchor-Voffset btnWidth/2-1 2*22+3];

btn32 = uibutton(pnl3,'push',...
    'Text','Export previous',...
    'FontName',font.Name,...
    'FontWeight','bold',...
    'Enable','off',...
    'ButtonPushedFcn','exportlast');
btn32.Position = [btnHAnchor+btnWidth/2+1 btnVAnchor-Voffset btnWidth/2-1 2*22+3];

% btn4 = uibutton(pnl3,'push',...
%     'Text','Play latest version',...
%     'FontName','Verdana');
% btn4.Position = [btnHAnchor btnVAnchor-Voffset btnWidth 22];
PLAYlbl = uilabel(pnl3,...
    'Text','Play:',...
    'FontName',font.Name);
PLAYlbl.Position = [btnHAnchor+btnWidth/2-(31/2) 5*btnVAnchor-Voffset/2 31 15];

btnA = uibutton(pnl3,'push',...
    'Text','current',...
    'FontName',font.Name,...
    'ButtonPushedFcn','current',...
    'Enable','off');
btnA.Position = [btnHAnchor 4*btnVAnchor-Voffset btnWidth/2-1 22];

btnB = uibutton(pnl3,'push',...
    'Text','previous',...
    'FontName',font.Name,...
    'ButtonPushedFcn','last',...
    'Enable','off');
btnB.Position = [btnHAnchor+btnWidth/2+1 4*btnVAnchor-Voffset btnWidth/2-1 22];

btnAGC = uibutton(pnl3,'state',...
    'Text','Automatic Gain Compensation',...
    'FontName',font.Name);
btnAGC.Value = false;
btnAGC.Position = [btnHAnchor 3*btnVAnchor-Voffset btnWidth 22];

%%% README

README = uibutton(pnl3,'push',...
    'Text','Click for help',...
    'FontName',font.Name,...
    'FontSize',24,...
    'ButtonPushedFcn','open README.txt');
README.Position = [btnHAnchor 9*btnVAnchor-Voffset btnWidth btnWidth/3];