[x,Fs] = audioread('South Georgia Pipit.wav'); % word is: so
x = x.';

N = length(x); % signal length
n = 0:N-1;
ts = n*(1/Fs); % time for signal

wintype = 'rectwin';
winlen = 101;
winamp = 0.5*(1/winlen);

%== find the zero-crossing rate ==%
% generate x[n] and x[n-1]
x1 = x;
x2 = [0, x(1:end-1)];

% generate the first difference
firstDiff = sign(x1)-sign(x2);

% magnitude only
absFirstDiff = abs(firstDiff);

% lowpass filtering with window
zc = winconv(absFirstDiff,wintype,winamp,winlen);

out = (winlen-1)/2:(N+winlen-1)-(winlen-1)/2;
t = (out-(winlen-1)/2)*(1/Fs);

figure;
plot(ts,x);
xlabel('t, seconds');

figure;
plot(ts,x); 
hold on;
plot(t,zc(out),'r','Linewidth',1); 
xlabel('t, seconds');
title('Zero Crossing Rate');
legend('signal','ZCR');

% generate the window
win = (winamp*(window(str2func(wintype),winlen))).';

% enery calculation
x2 = x.^2;
En = winconv(x2,wintype,win,winlen);

figure;
plot(t,En(out));


figure;
plot(ts,x); 
hold on;
plot(t,En(out),'r','Linewidth',2); 
xlabel('t, seconds');
title('Short-time Energy');
legend('signal','STE');
