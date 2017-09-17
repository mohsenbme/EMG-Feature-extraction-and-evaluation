function out=mycumulant4(x,m,n,l)
x=(x-mean(x))./std(x);
o1=mycumulant2(x,m)*mycumulant2(x,n-l);
o2=mycumulant2(x,n)*mycumulant2(x,l-m);
o3=mycumulant2(x,l)*mycumulant2(x,m-n);
x1=x;
x2=x;
x3=x;
m=abs(m); n=abs(n); l=abs(l);
if m~=0
    x1(1:m)=[];
end
if n~=0
    x2(1:n)=[];
end
if l~=0
    x3(1:l)=[];
end
ms=min([length(x) length(x1) length(x2) length(x3)]);
o4=sum(x(1:ms).*x1(1:ms).*x2(1:ms).*x3(1:ms))/ms;
out=o4-o1-o2-o3;