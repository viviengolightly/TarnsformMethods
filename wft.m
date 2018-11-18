%Marta Szukalska

function y = wft(s,t,n)
    
c= n+t;
b= length(s)
if c>b
    n=b-t;
    a =s(t+(1:n));
else 
    a =s(t+(1:n));
end
w = hann(n);

x = a.*w;

k=fft(x);

loglog(abs(k));

xlabel(' k - number of sampels measured')'
ylabel('Magnitude');
grid

end