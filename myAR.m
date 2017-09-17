function arc=myAR(input,order);
m=ar(input,order);
[n,d] = th2tf(m);
arc=d(2:order+1);
