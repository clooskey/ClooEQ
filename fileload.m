[fileName, fileDir] = uigetfile(...
    {'*.wav','WAVE files (*.wav)';...
    '*.flac','FLAC files (*.flac)';...
    '*.ogg','OGG/VORBIS files (*.ogg)'},...
    'Open file...');
if fileName ~= 0
%     wBar = waitbar(0.25,'Wczytywanie pliku...');
        filePATH =[fileDir fileName];
        fileID = fopen( filePATH, 'r');
        check12 = fread( fileID, 12, 'uint8=>char');
        check12 = check12';
            if strcmp(check12(9:12),'WAVE')
                [fileVector,fileFs] = audioread(filePATH);
                fileVector = 0.1 * fileVector;
%     waitbar(0.50,wBar,'Obliczanie FFT...');
                fileFFT = fft(fileVector);
                LOADED = 1;
                APPLIED = 0;
                btn2.Enable = 'on';
                btnA.Enable = 'off';
                btnB.Enable = 'off';
                btn31.Enable = 'off';
                btn32.Enable = 'off';
%     close(wBar);
            else
%     close(wBar);
                msgbox('Wybrany plik nie jest plikiem typu WAVE','Nieprawidlowy plik','error');
            end
end