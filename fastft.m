%Marta Szukalska


function  fastft()
%Calculate the fft for different lenghts and calculate 
%the time of operations and then the new vector t is created 
%to keep all the measured values.

for d =1 : 10000   
st = ones(1,d);
tic;     
b=fft(st);
t(d) = toc;
end
loglog(t); %plot the the operation time versus the length of the 
            % input sequence in log scale.


