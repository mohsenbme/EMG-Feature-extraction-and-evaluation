function out=myspecmoment(pp,ff,order)
out=0;
for i=1:length(ff)
    out=out+(ff(i)^order)*pp(i);
end