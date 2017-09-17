function out=myfmean(psdvalues,f)
s1=sum(psdvalues.*f);
s2=sum(psdvalues);
out=s1/s2;