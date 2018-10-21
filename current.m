if APPLIED==1
    if btnAGC.Value == false
        if length(fileVectorOut) > fileFs*6
            half = floor(length(fileVectorOut)/2);
            sound(...
                fileVectorOut(half:half+3*fileFs),...
                fileFs);
        else
            sound(fileVectorOut, fileFs);
        end
    else
        if length(fileVectorOut) > fileFs*6
            half = floor(length(fileVectorOut)/2);
            soundsc(...
                fileVectorOut(half:half+3*fileFs),...
                fileFs);
        else
            soundsc(fileVectorOut, fileFs);
        end
    end
end