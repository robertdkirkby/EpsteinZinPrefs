% Check on EZ preferences
% Solving with vNM
% should give same answer as
% Solving utility-unit EZ using phi=0

% Solving consumption-unit EZ using gamma=2 and psi=1/2
% will be like using CRRA parameters, but not quite the same parametrization
% as when we use vNM with CRRA utility and gamma=2
% So we should see a very similar shape of the value function and a similar
% policy (which I just judged by eyeballing the life-cycle profiles) 

%% Run all six to create the save files
clear all
disp('First of six')
LifeCycleModel12traditional1
clear all
disp('Second of six')
LifeCycleModel12traditional2
clear all
disp('Third of six')
LifeCycleModel12exo
clear all
disp('Fourth of six')
LifeCycleModel12endo
clear all
disp('Fifth of six')
LifeCycleModel12compareexo
clear all
disp('Sixth of six')
LifeCycleModel12compareendo
clear all

%% Check endogenous labor

load LCM12compareendo.mat V Policy
vNM_V=V; vNM_Policy=Policy;
% d2_grid=d_grid; a2_grid=a_grid; z2_grid=z_grid; pi_z2=pi_z;

load LCM12trad2.mat V Policy
trad_V=V; trad_Policy=Policy;

load LCM12endo.mat V Policy
EZ_V=V; EZ_Policy=Policy;
% d3_grid=d_grid; a3_grid=a_grid; z3_grid=z_grid; pi_z3=pi_z;

% Check that all both give the same policy function
temp2=vNM_Policy-EZ_Policy;
% Following should be zero
max(abs(temp2(:)))

% Check that vNM and utility-units EZ give same value function
temp3=vNM_V-EZ_V;
% Following should be zero
max(abs(temp3(:)))

% Just out of interest, take a look at how different the consumption-units
% CRRA is to a CRRA utility with vNM
temp1=vNM_Policy-trad_Policy;
max(abs(temp1(:)))



%% Check exogenous labor

load LCM12compareexo.mat V Policy
vNM_V=V; vNM_Policy=Policy;

load LCM12trad1.mat V Policy
trad_V=V; trad_Policy=Policy;

load LCM12exo.mat V Policy
EZ_V=V; EZ_Policy=Policy;

% Check that all three give the same policy function
temp5=vNM_Policy-EZ_Policy;
% Following should be zero
max(abs(temp5(:)))

% Check that vNM and utility-units EZ give same value function
temp6=vNM_V-EZ_V;
% Following should be zero
max(abs(temp6(:)))

% Just out of interest, take a look at how different the consumption-units
% CRRA is to a CRRA utility with vNM
temp4=vNM_Policy-trad_Policy;
max(abs(temp4(:)))
% Looking a bit closer, just out of interest
% No difference in last period
temp=vNM_Policy(1,:,:,81)-trad_Policy(1,:,:,81);
max(abs(temp(:)))
% But differences in second last period
temp=vNM_Policy(1,:,:,80)-trad_Policy(1,:,:,80);
[aa,bb]=max(abs(temp(:)))






