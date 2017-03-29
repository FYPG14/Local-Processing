%XC348307 - Bronzed Drongo - Dicrurus aeneus aeneus
[y,fs]=audioread('Initial_1_chanel_3.wav');
% t=linspace(0,length(y)/fs,length(y));
% plot(t,y);
spectrogram(y,1024,1,1024,fs,'yaxis');

% cw2 = cwt(y,1:16,'sym2','plot'); 