T = 5;
Ns = 6; % Number of Harmonics %
t = 0 : 0.01/Ns : T;
A = 10; % Amplitude %
To = 1; % Time Period %
Wo = (2*pi)/To; % Frequency %

x = 0; % DC Component / a0 %
for i = 1 : Ns
    n = 2*i-1;
    xn = ((4*A)/(n*pi)) .* sin(n*Wo.*t); % The 'i'th harmonic %
    if (Ns <= 10) % It's difficut to plot more harmonics %
        figure(1)
        subplot(Ns+1,1,i)
        plot(t,xn)
    end
    x = x + xn; % Fourier Series Sum %
end

% The Resultant Square Wave %
Sq = A*square(Wo*t);
if (Ns <= 10)
    figure(1)
    subplot(Ns+1,1,Ns+1)
    plot(t,Sq,t,x)
end

figure(2)
plot(t,Sq,t,x)
ylim([-1.25*A 1.25*A])
xlabel('Time');
ylabel('Amplitude');
legend('Square Wave', 'Fourier Series Sum');
title(['Fourier Series of Square Wave with ', num2str(Ns), ' Harmonics']);