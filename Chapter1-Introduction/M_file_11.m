[x, FS] = audioread('téléchargement.wav');

figure(1)

subplot(3,1,1);
plot(0:7999, x(1:8000));
ylabel('x(n)');

subplot(3,1,2);
plot(0:999, x(1501:2500));
ylabel('x(n)');

subplot(3,1,3);
stem(0:99, x(1501:1600), '.');
ylabel('x(n)');
xlabel('n \rightarrow');



