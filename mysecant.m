%script to execute Secant method
%finish program where indicated
%alter x0, x1 and f(v) for problem #2 on the quiz

%definition of f
v=sym('v');
f(v)=log(v-1)+cos(v-1);

%two initial guesses: x0 and x1
x0=1.3;
x1=2;

%compute f(x0) and f(x1) to minimize computations later
f0=f(x0);
f1=f(x1);

N=1000;
tol=10^(-5);
i=1;
while i<=N
    f0=double(f0);
    f1=double(f1);
    %fill in definition for next approximation, x2
    x2=x1-(f1*((x1-x0)/(f1-f0)));
    if abs(x2-x1)<tol
        disp('The procedure was successful');
        x2=double(x2)
        i
        return
    else
        %finish the else loop: what do you assign to x0, x1, f1?
        x0=x1;
        f0=f1; %take advantage of the fact that you have already computed f(x1)
        x1=x2;
        f1=f(x2);
        i=i+1;
    end
end
disp('The method failed after N iterations')

    