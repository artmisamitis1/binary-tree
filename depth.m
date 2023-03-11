function [d c]=depth(k)
d=floor(log(k)/log(2))+1;
c=k-2.^(d-1)+1;