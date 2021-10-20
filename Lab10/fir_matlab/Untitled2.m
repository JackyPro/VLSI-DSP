Fs = 10000; %采??率?定了??正弦波?之?的?隔
N = 4096; %采???
N1 = 0 : 1/Fs : N/Fs-1/Fs;
s = sin(1000*2*pi*N1) + sin(3000*2*pi*N1) +sin(4000*2*pi*N1);%三种正弦波
fidc = fopen('mem.txt','wb');  %??果?入mem.txt文件，便于modesim使用

for x = 1 : N
    A = round(s(x)*20);
   if (A >= 0)
      bin_x = dec2bin(A, 8);        % 正?的反?和??都和原?一?
      fprintf(fidc,'%s\n',bin_x);
   else
      bin_x = dec2bin(2^8 + A, 8);
      fprintf(fidc,'%s\n',bin_x);
   end
end 

fclose(fidc); 