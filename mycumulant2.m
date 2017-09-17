function out=mycumulant2(x,m)
x=(x-mean(x))./std(x);
if m~=0
    x1=x;
    m=abs(m);
    x1(1:m)=[];
    l1=length(x);
    l2=length(x1);
    x(l2+1:l1)=[];
    out=(x*x1')/l2;
end
if m==0
    out=x*x'/length(x);
end