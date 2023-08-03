function F=LifeCycleModel12exo_ReturnFn(aprime,a,z,w,agej,Jr,pension,r,kappa_j,gamma)

F=-Inf;

if agej<Jr % If working age
    c=w*kappa_j*z+(1+r)*a-aprime; % budget constraint
else % Retirement
    c=pension+(1+r)*a-aprime;
end

if c>0
    F=(c^(1-gamma))/(1-gamma);
end

end

