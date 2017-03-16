%XC318733 - South Georgia Pipit - Anthus antarcticus
[y,fs]=audioread('Initial_segment0.wav');
t=linspace(0,length(y)/fs,length(y));
Nfft=64;
plot(t,y);
%spectrogram(y,fs,1,1024,fs);
spectrogram(y);