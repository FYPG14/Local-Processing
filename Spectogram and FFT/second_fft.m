%XC318733 - South Georgia Pipit - Anthus antarcticus
[y,fs]=audioread('Initial.wav');
t=linspace(0,length(y)/fs,length(y));
Nfft=64;
H=abs(fft(y,Nfft));
f=linspace(0,fs,Nfft);
plot(f,H);