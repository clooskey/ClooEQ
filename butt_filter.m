function [but] = butt_filter(freq,order,type,domain)
% Butterworth filter function
% 1 - hp, 2 - lp, 3 - bp
switch type
    case 1
        %HP
        order = order;
        but = 1./(1+((freq.*(1./domain)).^(2*order)));
    case 2
        %LP
        order = -order;
        but = 1./(1+((freq.*(1./domain)).^(2*order)));
    case 3
        %BP
        q = order;
        df = q / freq;
        f1 = freq - df;
        f2 = freq + df;
        but = 1./(1+((f1.*(1./domain)).^(2*order))).*...
            1./(1+((f2.*(1./domain)).^(2*-order)));
    otherwise
        but = domain.^0;
end
end