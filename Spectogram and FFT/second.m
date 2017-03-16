%XC318733 - South Georgia Pipit - Anthus antarcticus
[y,fs]=audioread('Initial.wav');
t=linspace(0,length(y)/fs,length(y));
plot(t,y);