clear;clc;close all;

Depth=5; 
Splits=100; 
MinNode=10; 

load testingData.mat;
tic;
T=decision2(X,Y,Depth,Splits,MinNode);
t1=toc;

clear X Y;

load TestingData.mat;

tic;
y=[];
for i=1:size(X,1)
    x=X(i,:);
    y(i,1)=decision1(x,T);
end
t2=toc;

errorRate=sum(abs(y-Y))/max(size(Y));
fprintf('Error rate = %.4f\n',errorRate);
fprintf('Training time = %.4f seconds\n',t1);
fprintf('Testing time = %.4f seconds\n',t2);
