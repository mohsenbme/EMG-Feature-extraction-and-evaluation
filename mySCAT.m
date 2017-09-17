function out=mySCAT(inpVecs,D,K) %rows of the inputs are members and their culoms are dimensions
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
classVars=(sum(o3)./r); % its Dimensiom is 1*(K)
TrSw=sum(classVars)/K;
%**
for i=1:D
    mu0(i)=mean(classMeans(i:D:K*D-(D-1))); %Dim: 1*D
end

Sb=zeros(D,D);

for i=1:K
    Sb=Sb+((classMeans((i-1)*D+1:i*D)-mu0)'*(classMeans((i-1)*D+1:i*D)-mu0));
end
TrSb=trace(Sb)/K;
%**
out=(TrSw/TrSb)*((K*r-K)/(K-1));
