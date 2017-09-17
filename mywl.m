function out=mywl(x)
out=0;
for i=2:length(x)
    out=out+abs(x(i)-x(i-1));
end
