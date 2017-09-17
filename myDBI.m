function out=myDBI(inpVecs,D,K) 
                                   %D : Dimension of Space
                                   %K : Number of Classes 
                                   %inpVecs: its rows are equal to number of members in each class
                                   %inpVecs: its culomns are equal to D*K
%*******
classMeans=mean(inpVecs); %its Dimension is 1*(D*K)
[r,c]=size(inpVecs);
for i=1:r
    for j=1:c
        o1(i,j)=inpVecs(i,j)-classMeans(j);
    end
end
o2=o1.^2;
for ii=1:K
    for jj=1:r
        o3(jj,ii)=sum(o2(jj,(ii-1)*D+1:ii*D));
    end
end 
classStds=(sum(o3)./r).^(1/2); % its Dimensiom is 1*(K)
for kk=1:K
    std_hlp1=[];                  mean_hlp1=[];
    std_hlp2=classStds;           mean_hlp2=classMeans;
    std_hlp1(1)=classStds(kk);    mean_hlp1(1:D)=classMeans((kk-1)*D+1:kk*D);
    std_hlp2(kk)=[];              mean_hlp2((kk-1)*D+1:kk*D)=[];
    std_hlp1=[std_hlp1 std_hlp2]; mean_hlp1=[mean_hlp1 mean_hlp2];
    for ll=2:K
        dis=mean_hlp1(1:D)-mean_hlp1((ll-1)*D+1:ll*D);
        distance=sqrt(dis*dis');
        R(ll-1)=(std_hlp1(1)+std_hlp1(ll))/distance;
    end
    maxR(kk)=max(R);
end
KK=K;
nans=isnan(maxR);
for i=1:K
    if (maxR(i)==inf)
        KK=KK-1;
        maxR(i)=0;
    end
    if nans(i)==1
        KK=KK-1;
        maxR(i)=0;
    end
end
out=sum(maxR)/KK;

