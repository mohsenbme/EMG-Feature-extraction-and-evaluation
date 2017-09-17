function cc=myceps(a)
cc(1)=-a(1);
for i=2:length(a)
    t=0;
    for j=1:i-1
        t=t+(1-j/i)*a(j)*cc(i-j);
    end
    cc(i)=-a(i)-t;
end

   


