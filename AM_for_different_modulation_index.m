t = -2 : 0.001 : 2;
u = 2/3; % modulation index = 66% %
Ac = 10;
fm = 1;
fc = 20;
m = cos(2*pi*fm*t);
c = Ac*cos(2*pi*fc*t);
s = Ac*(1 + u.*m) .* cos(2*pi*fc*t);
subplot(3,1,1)
plot(t,s);
title('Amplitude Modulation for u = 66%');
xlabel('time');
ylabel('Amplitude');

u = 1; % modulation index = 100% %
s = Ac*(1 + u.*m) .* cos(2*pi*fc*t);
subplot(3,1,2)
plot(t,s);
title('Amplitude Modulation for u = 100%');
xlabel('time');
ylabel('Amplitude');

u = 5/3; % modulation index = 166% %
s = Ac*(1 + u.*m) .* cos(2*pi*fc*t);
subplot(3,1,3)
plot(t,s);
title('Amplitude Modulation for u = 166%');
xlabel('time');
ylabel('Amplitude');