function label_ent=entropy(label)
n1=sum(1-label);
n2=sum(label);
if n1+n2==0
    label_ent=0;
    return;
end
p1=n1/(n1+n2);
p2=n2/(n1+n2);
if p1==0
    label_ent=-p2*log(p2);
    return;
elseif p2==0
    label_ent=-p1*log(p1);
    return;
end
label_ent=-p1*log(p1)-p2*log(p2);