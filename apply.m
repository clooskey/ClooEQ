if LOADED ~= 1
    msgbox('Najpierw zaladuj plik.','Błąd','error');
else
    filterResponse = [];
    domain = (1:size(fileFFT,1)).*(fileFs/size(fileFFT,1));
    for i = 1:size(fileVector,2);
        filterResponse(i,:) = filters(domain,fils,gain2,gain3);
    end
        fileFFTout = fileFFT .* filterResponse';
    if APPLIED == 0
        fileVectorOut = real(ifft(fileFFTout));
        APPLIED = 1;
        btnA.Enable = 'on';
        btn31.Enable = 'on';
    elseif APPLIED == 1
        fileVectorLast = fileVectorOut;
        fileVectorOut = real(ifft(fileFFTout));
        btnB.Enable = 'on';
        btn32.Enable = 'on';
    end
% % uncomment to play after every click on the
% % 'apply filters' button
% if btnAGC.Value == false
%     sound(fileVectorOut,fileFs);
% else
%     soundsc(fileVectorOut,fileFs);
% end
end

