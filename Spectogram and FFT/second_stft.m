%XC318733 - South Georgia Pipit - Anthus antarcticus
[y,fs]=audioread('Initial.wav');
t=linspace(0,length(y)/fs,length(y));
Nfft=64;
%H=abs(fft(y,Nfft));
%f=linspace(0,fs,Nfft);
spectrogram(y,fs,1,64,fs);
%plot(f,H);