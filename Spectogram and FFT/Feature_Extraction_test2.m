% %XC318733 - South Georgia Pipit - Anthus antarcticus
%manual segemented signal is used.
%[y,fs]=audioread('Initial_1_chanel.wav',[48000*8.9,48000*10.5]);
%[y,fs]=audioread('Initial_1_chanel.wav',[48000*3.5,48000*5]);
%[y,fs]=audioread('Initial_1_chanel.wav',[48000*6.2,48000*7.6]);
%[y,fs]=audioread('Initial_1_chanel_5.wav',[48000*0.5,round(48000*2.2)]);
[y,fs]=audioread('Initial_1_chanel_5.wav',[48000*5.9,48000*7.6]);

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
[rowsOfMaxes2 colsOfMaxes2] = find(s == maxValue);
figure(3);subplot(2,1,2),spectrogram(X_filtered,1000,1,1024,fs,'yaxis');
hold on;
plot(t(colsOfMaxes2(1)),w(rowsOfMaxes2(1))/1000,'bx','MarkerSize',5,'LineWidth',1)
getFundamentalFreq(y,fs);
max_f = w(rowsOfMaxes2);
ratio_f = 24000/max_f;
fprintf('Maximum frequency %3.2f Hz.\n',max_f);
fprintf('Ratio between maximum frequency and frequency bandwidth %3.2f \n',ratio_f);

% cw1 = cwt(y,1:16,'sym2','plot'); 