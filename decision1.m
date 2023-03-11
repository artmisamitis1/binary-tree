function [y p]=decision(x,T)

k=1; 
d=1; 
c=1; 

while d<T.depth
    if T.feature(k)==-1
        y=0;
        p=0;
        return;
    elseif x(T.feature(k))<=T.threshold(k)
        k=left_child(k);
        [d c]=depth(k);
    else
        k=right_child(k);
        [d c]=depth(k);
    end
end
p=T.leaf_prob(c);
if p>0.5
    y=1;
else
    y=0;
end