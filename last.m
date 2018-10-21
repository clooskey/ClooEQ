if APPLIED==1
    if btnAGC.Value == false
        if length(fileVectorOut) > fileFs*6
            half = floor(length(fileVectorLast)/2);
            sound(...
                fileVectorLast(half:half+3*fileFs),...
                fileFs);
        else
            sound(fileVectorLast, fileFs);
        end
    else
        if length(fileVectorOut) > fileFs*6
            half = floor(length(fileVectorLast)/2);
            soundsc(...
                fileVectorLast(half:half+3*fileFs),...
                fileFs);
        else
            soundsc(fileVectorLast, fileFs);
        end
    end
end