fs = 1/0.001; % (fs = 1000;)Sampling frequency %
t = 1/fs : 1/fs : 1;
%t = 0 : 1/fs : 10; %Both are similar,
%done for easy numbers of sampling
%only 0th sec is missing
ka = 0.25;
Ac = 10;
Am = 2;
fm = 10;
fc = 100;
m = Am*cos(2*pi*fm*t);
c = Ac*cos(2*pi*fc*t);
s = Ac*(1 + ka.*m) .* cos(2*pi*fc*t);

subplot(3,1,1)
plot(t,m);
title('Amplitude Modulation');
xlabel('time');
ylabel('Amplitude');
legend('Message signal');
subplot(3,1,2)
plot(t,c);
xlabel('time');
ylabel('Amplitude');
legend('Carrier signal');
subplot(3,1,3)
plot(t,s);
xlabel('time');
ylabel('Amplitude');
legend('AM signal');