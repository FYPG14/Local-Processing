%MLSP data set
[y,fs]=audioread('PC2_20090606_050000_0030.wav');
t=linspace(0,length(y)/fs,length(y));
plot(t,y);