%%
for N = 1:16
%b1 = [-0.0156 0.0182 0.0417];
b=[-0.0156,0.0182,0.0417,0.0260,-0.0208,-0.0677-0.0625,0.0182,0.1536,0.2813,0.3333,0.2813,0.1536,0.0182,-0.0625,-0.0677,-0.0208,0.0260,0.0417,0.0182,-0.0156];
%b2 = fliplr(b1);
%b = [b1 0.0260 b2];
bw= round(b*2^N);%%量化
bww= round(b*2^N)/2^N;%%量化
x = (1:10000)/pi;
y = sin(x);
yw = floor(y*2^N);

s = filter(b,1,yw)/2^N;
ss = filter(bw,1,yw)/2^(2*N);%%量化的
%%figure
%%plot(s);
%%hold on 
%%plot(ss);
%%legend('org.', 'Fixed-point')
SNR(N) = snr(s,s-ss);
%%title(['As N = ', num2str(N),', SNR = ',num2str(SNR), 'dB']);
end
plot(SNR);
%%
% =========== TM gen ============= %
for i = 1:length(yw)
    disp(['#10    in = ',num2str(yw(i)),';']);
end
%%
% =========== Coeff. gen ============= %
disp('===================================');
disp('===================================');
for i = 1:length(bw)
    disp(['parameter signed b',num2str(i-1),' = ',num2str(bw(i)),';']);
end
disp('===================================');
