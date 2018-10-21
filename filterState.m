function [num] = filterState(state,varargin)
if isempty(varargin(:))
switch state
    case 'On'
        num = 1;
    case 'Off'
        num = 0;
end
else 
switch state
    case 'On'
        num = 3;
    case 'Off'
        num = 0;
end
end
end