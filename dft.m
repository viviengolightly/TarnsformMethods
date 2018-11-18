%Marta Szukalska

%The program below is used to calculate the DFT of a sequence. It is based
%on the template presented in Lab 1 paper. 
function sw = dft(st)

M = length(st); %Get the length of the input sequence.
N = M;          % Define N as the length of sequence M.
WN = exp(2*pi*j/N); %Calculate twiddle factor.
%The two for loops below calculate the DFT terms of the input sequence
%of length M for all terms of N.
for n=0:N-1 
    temp = 0;  %The variable temp, is cleared to 0, so the sum for new 
               %term can be calculated. 
    
    for m=0:M-1
        
       temp = temp + (st(m+1)*(WN^(-m*n))); %DFT calculation.
        
    end
    
    sw(n+1) = temp; % The DFT values are stored in the new vector.
   % plot(sw);
   
%Plot the real part of the sequence sw.
subplot(4,1,1);     stem(real(sw));      title('Real'); 
%Plot the imaginary part of the sequence sw.
subplot(4,1,2);     stem(imag(sw));      title('Imaginary');
%Plot the magnitude of the terms in sw.
subplot(4,1,3);     stem(abs(sw));       title('Abs');
%Plot the phase angle of the terms of sw.
subplot(4,1,4);     stem(angle(sw));     title('Angle');
end