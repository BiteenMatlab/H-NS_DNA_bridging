function [theta]=anglevec(x,y)
    cos_val=dot(x,y)/(norm(x)*norm(y));
    if y(2)<0
        theta=2*pi-acos(cos_val);
    elseif y(2)>0
        theta=acos(cos_val);
    else
        if y(1)>=0
            theta=0;
        elseif y(1)<0
            theta=pi;
        end
    end      
end