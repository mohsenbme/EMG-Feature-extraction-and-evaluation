function wamp=mywamp(x,th) %willison threshold
wamp=0;
N=length(x);
for i=1:N-1
    if abs(x(i)-x(i+1))>th
        wamp=wamp+1;
    end
end
