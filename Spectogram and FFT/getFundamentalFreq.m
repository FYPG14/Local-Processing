function [ fun_f ] = getFundamentalFreq( y, fs )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

c = cceps(y);
dt = 1/fs;
t = 0:dt:length(y)*dt-dt;

trng = t(t>=1e-4 & t<=10e-4);
crng = c(t>=1e-4 & t<=10e-4);

[~,I] = max(crng);

fun_f = 1/trng(I)
fprintf('Complex cepstrum F0 estimate is %3.2f Hz.\n',fun_f)
end

