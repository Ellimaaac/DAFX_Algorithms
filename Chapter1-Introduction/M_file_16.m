% Lire le fichier audio 
[signal, FS] = audioread("punk.wav");

if size(signal, 2) > 1
    signal = signal(:, 1); % Extrait la première colonne si signal est une matrice
end

% Afficher le signal 
subplot(2,1,1);
plot(signal);
title('Signal Temporel');
xlabel('Temps (échantillons)');
ylabel('Amplitude');

% Calculer et afficher le spectrogramme 
subplot(2,1,2);
spectrogram(signal, 256, 256-128, 512, FS, 'yaxis');
title('Spectrogramme');
