function ssc=myssc(x,th) % th: noise threshold
N=length(x);
ssc=0;
for i=2:N-1
    if ((x(i)>x(i-1) && x(i)>x(i+1))||(x(i)<x(i-1) && x(i)<x(i+1))) && (abs(x(i)-x(i+1))>th && abs(x(i)-x(i-1))>th)
        ssc=ssc+1;
    else
        ssc=ssc+0;
    end
end

        
