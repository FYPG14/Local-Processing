% %XC318733 - South Georgia Pipit - Anthus antarcticus
[y,fs]=audioread('Initial_1_chanel.wav',[48000*8,48000*11]);
t=linspace(0,length(y)/fs,length(y));
% Nfft=64;
% plot(t,y);

[s,w,t] = spectrogram(y,1000,1,1024,fs,'yaxis');
s = abs(s)
[maxValue, linearIndexesOfMaxes] = max(s(:));
[rowsOfMaxes colsOfMaxes] = find(s == maxValue);
spectrogram(y,1000,1,1024,fs,'yaxis');
hold on;
plot(t(65),w(79)/1000,'bx','MarkerSize',5,'LineWidth',1)

% cw1 = cwt(y,1:16,'sym2','plot'); 