%XC353814 - Eurasian Nuthatch - Sitta europaea
[y,fs]=audioread('Initial_1_chanel_5.wav');
t=linspace(0,length(y)/fs,length(y));
plot(t,y);
spectrogram(y,1000,1,1024,fs,'yaxis');