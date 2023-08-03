function F=LifeCycleModel12_ReturnFn(h,aprime,a,z,w,chi,agej,Jr,pension,r,kappa_j,gamma)
% The first four are the 'always required' decision variables, next period
% endogenous states, this period endogenous states, exogenous states
% After that we need all the parameters the return function uses, it
% doesn't matter what order we put them here.

F=-Inf;

if agej<Jr % If working age
    c=w*kappa_j*z*h+(1+r)*a-aprime; % Add z here
else % Retirement
    c=pension+(1+r)*a-aprime;
end

if c>0
    % This outputted return is non-standard when you are using Epstein-Zin preferences
    temp=(c^(1-chi))*((1-h)^chi);
    F=(temp^(1-gamma))/(1-gamma);
end


end

