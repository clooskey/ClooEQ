%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-% Filter 1
%-----------PANEL
filter_1pnl = uipanel(pnl1,...
    'Position',[10 10 (pnl1_width/4)-5 pnl1_height-20]);
%-----------LABEL
filter_1lbl = uilabel(filter_1pnl,...
    'Text','HiPass',...
    'FontName',font.Name,...
    'FontSize',font.LabelSize,...
    'Position',[l_vOffset 130 100 100]);
%-----------SWITCH
filter_1sw = uiswitch(filter_1pnl,'toggle',...
    'Position',[185 200 22.2222 50],...
    'FontName',font.Name,...
    'FontSize',font.SliderSize,...
    'ValueChangedFcn','fils(1,1)=filterState(filter_1sw.Value);plot(axx,t,filters(t,fils,gain2,gain3));');

%-----------SLIDERS

%%%%%%%%%%%%% FILTER 1 CZESTOTLIWOSC
F1sld_fq = uislider(filter_1pnl,...
    'Position',[s_hOffset s_vOffset s_width 3],...
    'Limits',FILTERS.f1.FreqLimits,...
    'FontSize',font.SliderSize,...
    'FontName',font.Name);
set(F1sld_fq,'ValueChangedFcn',...
    'fils(1,3) = F1sld_fq.Value;plot(axx,t,filters(t,fils,gain2,gain3))');
set(F1sld_fq,'ValueChangingFcn',...
    'fils(1,3) = F1sld_fq.Value;plot(axx,t,filters(t,fils,gain2,gain3))');

%%%%%%%%%%%%% FILTER 1 MNOZNIK RZEDU
F1sld_orm = uislider(filter_1pnl,...
    'Position',[s_hOffset s_vOffset+s_vSpacing s_width 3],...
    'Limits',[1 20],...
    'FontSize',font.SliderSize,...
    'FontName',font.Name,...
    'MajorTicksMode','manual',...
    'MajorTicks',[1 10 20],...
    'MinorTicksMode','manual',...
    'MinorTicks',[]);
set(F1sld_orm,'ValueChangedFcn',...
    'fils(1,4) = F1sld_or.Value*F1sld_orm.Value;plot(axx,t,filters(t,fils,gain2,gain3));');
set(F1sld_orm,'ValueChangingFcn',...
    'fils(1,4) = F1sld_or.Value*F1sld_orm.Value;plot(axx,t,filters(t,fils,gain2,gain3));');


%%%%%%%%%%%%%% FILTER 1 RZAD
F1sld_or = uislider(filter_1pnl,...
    'Value',2,...
    'Position',[s_hOffset s_vOffset+2*s_vSpacing s_width 3],...
    'Limits',FILTERS.f1.OrderLimits,...
    'MajorTicksMode','manual',...
    'MajorTicks',[0.1 0.5 1 2 5],...
    'FontSize',font.SliderSize,...
    'FontName',font.Name);
set(F1sld_or,'ValueChangedFcn',...
    'fils(1,4) = F1sld_or.Value*F1sld_orm.Value;plot(axx,t,filters(t,fils,gain2,gain3));');
set(F1sld_or,'ValueChangingFcn',...
    'fils(1,4) = F1sld_or.Value*F1sld_orm.Value;plot(axx,t,filters(t,fils,gain2,gain3));');

%%% OPISY

F1lbl_fq = uilabel(filter_1pnl,...
    'Text','frequency:',...
    'FontName',font.Name,...
    'FontSize',font.SliderSize+2,...
    'Position',[s_hOffset s_vOffset s_width 3]+[s_width/2 0 0 12]);

F1lbl_or = uilabel(filter_1pnl,...
    'Text','order:',...
    'FontName',font.Name,...
    'FontSize',font.SliderSize+2,...
    'Position',[s_hOffset s_vOffset+2*s_vSpacing s_width 3]+[s_width/2 0 0 12]);

F1lbl_orm = uilabel(filter_1pnl,...
    'Text','order multiplier:',...
    'FontName',font.Name,...
    'FontSize',font.SliderSize+2,...
    'Position',[s_hOffset s_vOffset+s_vSpacing s_width 3]+[s_width/2 0 0 12]);
