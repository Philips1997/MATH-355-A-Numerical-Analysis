%Input a,b,and c
%Output x1 and x2 as the root of ax^2+bx+c=0
function[x1,x2]=myroot(a,b,c)
d=(b^2)-(4*a*c);                        %d is the discriminant

if a==0                             
    if b==0                             %the equation becomes 0=c, which is either meaningless (c=0) or no root
        disp('No solutions')        
    else
        x1=-c/b;                        %solution for bx+c=0
        disp('One solution')
    end
else
    if d<0                              %When discriminant<0, no real root
        disp('No solution')
    end
    if d==0                             %When discriminant=0, unique real root
        x1=-b/(2*a);
        disp('One solution')
    end
    if d>0                              %When discriminant>0, two differnt real root
        if b<0                          %if b<0, use this set of equations to avoid cancellation error
            x1=((-1*b)+(d^0.5))/(2*a);
            x2=(2*c)/((-b)+(d^0.5));
        else                            %if b>0, use this set of equations to avoid cancellation error
            x1=(2*c)/((-b)-(d^0.5));
            x2=((-1*b)-(d^0.5))/(2*a);
        end
    end
end
end
           