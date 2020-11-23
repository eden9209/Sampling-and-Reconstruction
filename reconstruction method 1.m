clc;
clear all;
w=[0,1414,0,1414,0,-1414,0,-1414,0,1414,0,1414,0,-1414,0,-1414,0,1414,0,1414,0,-1414,0,-1414,0,1414,0,1414,0,-1414,0,-1414];
figure(1)
hold on;
grid on;
xlabel('sample')
ylabel('w[n]')
stem(1:32,w);
%
fs=8000;
ts=1/fs;
figure(2)
dft=fft(w);
dft_abs=abs(dft);
theta=(2*pi)/32;
omega_badid=0:theta:(2*pi)-(theta);
omega_razif=(fs/(2*pi))*omega_badid;
hold on;
grid on;
xlabel('frequncey [hz]')
ylabel('Amplitude')
stem(omega_razif(1:length(omega_razif)/2),dft_abs(1:length(dft_abs)/2))
%
M=48;
dft2=fft(w,48);
dft2_abs=abs(dft2);
theta_2=(2*pi)/48;
omega_badid_2=0:theta_2:(2*pi)-(theta_2);
omega_razif_2=(fs/(2*pi))*omega_badid_2;
figure(3)
hold on;
grid on;
xlabel('frequncey [hz]')
ylabel('Amplitude')
stem(omega_razif_2(1:length(omega_razif_2)/2),dft2_abs(1:length(dft2_abs)/2))
%
t=0:ts:31*ts;
funct=1000*sin(2*pi*1000.*t)+1000*sin(2*pi*3000.*t)

