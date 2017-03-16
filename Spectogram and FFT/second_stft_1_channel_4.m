%XC353811 - Black-winged Kite - Elanus caeruleus
[y,fs]=audioread('Initial_1_chanel_4.wav');
t=linspace(0,length(y)/fs,length(y));
%plot(t,y);
spectrogram(y,2048,1,1024,fs,'yaxis');

%[q,nd] = max(10*log10(p));
%hold on
%plot3(j,f(nd),q,'r','linewidth',4)
%hold off
%colorbar
%view(2)