Fs = 10000; %��??�v?�w�F??�����i?��?��?�j
N = 4096; %��???
N1 = 0 : 1/Fs : N/Fs-1/Fs;
s = sin(1000*2*pi*N1) + sin(3000*2*pi*N1) +sin(4000*2*pi*N1);%�T�������i
fidc = fopen('mem.txt','wb');  %??�G?�Jmem.txt���A�K�_modesim�ϥ�

for x = 1 : N
    A = round(s(x)*20);
   if (A >= 0)
      bin_x = dec2bin(A, 8);        % ��?����?�M??���M��?�@?
      fprintf(fidc,'%s\n',bin_x);
   else
      bin_x = dec2bin(2^8 + A, 8);
      fprintf(fidc,'%s\n',bin_x);
   end
end 

fclose(fidc); 