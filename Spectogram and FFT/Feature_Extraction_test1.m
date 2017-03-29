% %XC318733 - South Georgia Pipit - Anthus antarcticus
%manual segemented signal is used.
[y,fs]=audioread('Initial_1_chanel.wav',[48000*8.5,48000*11]);
t=linspace(0,length(y)/fs,length(y));
% Nfft=64;
figure(3);subplot(2,1,1), plot(t,y);
%filter-------
X_margs = abs(fft(y));
num_bins = length(X_margs);
[b a] = butter(8, 0.15, 'high');
H = freqz(b,a, floor(num_bins/2));
figure(1); plot([0:1/(num_bins/2 -1):1], abs(H), 'r');
X_filtered = filter(b,a,y);
sound(X_filtered,fs)
%----------------
[s,w,t] = spectrogram(X_filtered,1000,1,1024,fs,'yaxis');
s = abs(s)
[maxValue, linearIndexesOfMaxes] = max(s(:));
[rowsOfMaxes colsOfMaxes] = find(s == maxValue);
figure(3);subplot(2,1,2),spectrogram(X_filtered,1000,1,1024,fs,'yaxis');
hold on;
plot(t(41),w(79)/1000,'bx','MarkerSize',5,'LineWidth',1)

% cw1 = cwt(y,1:16,'sym2','plot'); 