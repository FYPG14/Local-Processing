%XC318733 - South Georgia Pipit - Anthus antarcticus
[y,fs]=audioread('Initial_1_chanel.wav',[1,48000*20]);
t=linspace(0,length(y)/fs,length(y));
Nfft=64;
plot(t,y);
spectrogram(y,1000,1,1024,fs,'yaxis');
%spectrogram(y);