N = 100; % Length of signal
FS = 44100; % Sampling frequency
x = cos(2*pi*1000*(0:1:N-1)/FS);
figure(2)
W = blackman(N);
W = N*W/sum(W); % scaling of window
f = ((0:N/2-1)/N)*FS;

xw = x.*W;
subplot(3,2,1);
plot(0:N-1, x);
axis([0 1000 -1.1 1.1]);
title('a) Cosine signal x(n)');
subplot(3,2,3);
plot(0:N-1, xw);
axis([0 8000 -4 4]);
title('c) Cosine signal x_w(n)=x(n) \cdot w(n) with window');

X = 20*log10(abs(fft(x,N))/(N/2));
subplot(3,2,2);
plot(f, X(1:N/2));
axis([0 10000 -80 10]);
ylabel('X(f)');
title('b) Spectrum of cosine signal');

Xw = 20*log10(abs(fft(xw)) / (N/2));
subplot(3,2,4);
plot(f, Xw(1:N/2));
axis([0 10000 -80 10]);
ylabel('X(f)');
title('d) Spectrum with Blackman window');

u1 = randn(1, N); % Generating random noise signal for demonstration
s = u1(1:N).*W;
subplot(3,2,5);
plot(0:N-1, s);
axis([0 8000 -1.1 1.1]);
xlabel('n \rightarrow');
title('e) Audio signal x_w(n) with window');

Sw = 20*log10(abs(fft(s,N))/(N/2));
subplot(3,2,6);
plot(f, Sw(1:N/2));
axis([0 10000 -80 10]);
ylabel('X(f)');
title('f) Spectrum with Blackman window');
xlabel('f in Hz \rightarrow');
