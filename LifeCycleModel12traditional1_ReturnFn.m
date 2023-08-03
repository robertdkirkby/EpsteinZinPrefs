function F=LifeCycleModel12traditional1_ReturnFn(aprime,a,z,w,agej,Jr,pension,r,kappa_j)
% Traditional EZ preferences with exogenous labor

F=-Inf;

if agej<Jr % If working age
    c=w*kappa_j*z+(1+r)*a-aprime; % Add z here
else % Retirement
    c=pension+(1+r)*a-aprime;
end

if c>0
    F=c;
end


end

