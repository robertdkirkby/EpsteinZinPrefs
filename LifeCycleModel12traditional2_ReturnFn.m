function F=LifeCycleModel12traditional2_ReturnFn(h,aprime,a,z,w,agej,Jr,pension,r,kappa_j,chi)
% Traditional EZ preferences with endogenous labor

F=-Inf;

if agej<Jr % If working age
    c=w*kappa_j*z*h+(1+r)*a-aprime; % Add z here
else % Retirement
    c=pension+(1+r)*a-aprime;
end

if c>0
    % This outputted return is non-standard when you are using Epstein-Zin preferences
    F=(c^(1-chi))*((1-h)^chi); % The utility function (note, this will be later modified by Epstein-Zin)
end


end

