function x=CS_linprog(A,b)
    len=size(A,2);
    Phi=[A,-A];
    s=b;
    c=ones(1,2*len);
    lb=zeros(1,2*len);
    theta = linprog(c,[],[],Phi,s,lb);
    x=theta(1:len)-theta(len+1:2*len);
end