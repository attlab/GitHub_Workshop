% set directory and add images folder to path
cd '/Volumes/Extended Drive/UCSB/attLab/Github_Workshop/'
addpath 'images'

% Count number of markdown files and seed rand number generator, then create scaled random number matrix
files = dir('*.md');
numFiles = length(files);
rng(numFiles)
data = randn(100)*100;

% Generate and save image from data
set(0,'DefaultFigureVisible','off');
image(data); colorbar;
saveas(gcf, 'images/randPixels.png');

% Make autoUpload.sh executable and run it
fileattrib('autoUpload.sh', '+x')
system('./autoUpload.sh');
