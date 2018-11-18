%Marta Szukalska
function spta(audiofille)
[x,Fs] = audioread(audiofille); %Reads the audio file
length(x)
nfft=262144;
window = hamming(512);
noverlap = 256;

%Get the length of x.
%Number of DFT points
%Define the length and type of window
%Number of overlaped sampels
%Generate Spectrogram.

[S,F,T,P] = spectrogram(x,window,noverlap,nfft,Fs,’yaxis');

%Cretae the surface consisted of Time Frequency and Pressure,without edges
%drawn.

surf(T,F,10*log10(P),'edgecolor','none');
axis tight; %Fit the axes box tightly around the data by setting the axis
            %limits equal to the range of the data.
view(0,90); %Define the angel of view;in this case view directly overhead.
end