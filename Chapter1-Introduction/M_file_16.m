% Lire le fichier audio d'entrée dans le vecteur signal et la fréquence d'échantillonnage FS
[signal, FS] = audioread("punk.wav");

% Assurez-vous que signal est un vecteur
if size(signal, 2) > 1
    signal = signal(:, 1); % Extrait la première colonne si signal est une matrice
end

% Afficher le signal dans le premier sous-graphique
subplot(2,1,1);
plot(signal);
title('Signal Temporel');
xlabel('Temps (échantillons)');
ylabel('Amplitude');

% Calculer et afficher le spectrogramme dans le deuxième sous-graphique
subplot(2,1,2);
spectrogram(signal, 256, 256-128, 512, FS, 'yaxis');
title('Spectrogramme');
