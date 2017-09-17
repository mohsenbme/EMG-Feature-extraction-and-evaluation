function out=myfmed(psdvalues,f)
e=[];
for i=1:length(f)
s1=sum(psdvalues(1:i));
s2=sum(psdvalues(i:length(f)));
e(i)=abs(s1-s2);
end
[m,k]=min(e);
out=f(k);