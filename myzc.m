function zc=myzc(x,th) %th=noise treshold
N=length(x);
zc=0;
for i=1:N-1
    if x(i)*x(i+1)<0 & abs(x(i)-x(i+1))>th
        zc=zc+1;
    end
end
