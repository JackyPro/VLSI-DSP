clear;
close all;
clc;

N = 12;
b1 = [-0.0156 0.0182 0.0417];
b2 = fliplr(b1);
b = [b1 0.0260 b2];
bw= round(b*2^N);

x = (1:40)/pi;
y = sin(x);
yw = floor(y*2^N);

s = filter(b,1,yw)/2^N;
ss = filter(bw,1,yw)/2^(2*N);

figure
plot(s);
hold on 
plot(ss);
legend('org.', 'Fixed-point')
SNR = snr(s,s-ss);
title(['As N = ', num2str(N),', SNR = ',num2str(SNR), 'dB']);

% =========== TM gen ============= %
for i = 1:length(yw)
    disp(['#10    in = ',num2str(yw(i)),';']);
end

% =========== Coeff. gen ============= %
disp('===================================');
disp('===================================');
for i = 1:length(bw)
    disp(['parameter b',num2str(i-1),' = ',num2str(bw(i)),';']);
end
disp('===================================');
