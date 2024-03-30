% Lire le fichier audio d'entrée dans le vecteur x(n) et la fréquence d'échantillonnage FS
[x, FS] = audioread('punk.wav');

% Algorithme échantillon par échantillon y(n) = a * x(n)
a = 0.5; % Modifier cette valeur selon votre besoin
y = a * x;

% Écrire y(n) dans le fichier audio de sortie avec le nombre de bits Nbits et la fréquence d'échantillonnage FS
Nbits = 16; % Nombre de bits (à modifier selon vos besoins)
audiowrite('punkWrite.wav', y, FS, 'BitsPerSample', Nbits);
