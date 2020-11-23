clc
clear 
close all

load('data_1');
load('data_2');

Fs = 120 ;   % sampling rate [Hz]
Ts = 1/Fs;   % sampling period [sec]
t_end=0.2 ;  % [sec]

t_countinues = 0:1e-4:t_end;       

t_sampling = 0:Ts:t_end;  

x_original = data_2;
x_sampling = data_1;

N = length(t_sampling);                 % number of samples

% x_new=?

figure(1)
hold on
grid on
stem(t_sampling,x_sampling)
plot(t_countinues,x_original)
xlabel('Time [sec]')
ylabel('Amplitude')
title('The orginal signal after sampling') 

 for n = 1:N
             for t=0:1e-4:t_end
             sinc_train=sin(pi*(t-n*Ts)/Ts)./(pi*(t-n*Ts)/Ts);   
             end
  end    

x_new=sum(sinc_train);

 
 figure(2)
 hold on
 grid on
 plot(t_countinues,x_original)
 plot(t_countinues,x_new)
 xlabel('Time [sec]')
ylabel('Amplitude')
 title('The reconstruction signal')