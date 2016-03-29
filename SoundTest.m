currentDirectory = pwd;
folderDirectory = '/Sounds/';
directory = strcat(currentDirectory, folderDirectory);
files = {'mid_G_guitar' 'thunder' 'police' 'scream' 'explosion' 'reverse_clang' 'woman_scream' 'water_stream'};

nFiles = length(files)
for k=1:nFiles
file = strcat(directory, files{k});
fprintf('Opening file: %s\n', file);
[y, fs, nb] = wavread(file);
L = length(y);
ydct = dct(y);
yfft = fft(y);
subplot(2, nFiles, k);
plot(y);
title(strcat('Sound over time: ', files{k}));
xlabel('Time');
subplot(2, nFiles, nFiles+k);
plot(ydct);
title(strcat('Discrete Cosine Transform', files{k}));
xlabel('Frequency');
end
