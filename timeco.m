%Marta Szukalska


function sw = timeco()
for d =1 : 10000   %For loop crate different length sequences.
st = ones(1,d);    %Create the sequence of ones.
tic;               %Start calculate the time from here.

%The DFT calculation starts here.
M = length(st);
N = M;
WN = exp(2*pi*j/N);
       for n=0:N-1
       temp = 0;
             for m=0:M-1
             temp = temp + (st(m+1)*(WN^(-m*n)));
             end
       sw(n+1) = temp;
end
%The DFT calculation ends here.
t(d)=toc; %Thenewvectort(d)iscreatedtostorethetimefor
             %different length of sequences st.
end
loglog(t); %Plot the length of the sequence versus 
           %the time taken to calculate its DFT.
