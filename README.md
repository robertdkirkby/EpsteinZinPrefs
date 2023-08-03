# EpsteinZinPrefs
Check that EZ preferences seem correctly implemented by solving parameterization that should give same answer as standard vNM prefs

- LifeCycleModel12compareexo: solves exogenous labor life-cycle model with vNM preferences and gamma=2
- LifeCycleModel12traditional1: solves exogenous labor life-cycle model with consumption-unit EZ preferences and gamma=2, psi=1/2
- LifeCycleModel12exo: solves exogenous labor life-cycle model with utility-unit EZ preferences and phi=0

- LifeCycleModel12compareeendo: solves endogenous labor life-cycle model with vNM preferences and gamma=2
- LifeCycleModel12traditional2 solves endogenous labor life-cycle model with consumption-unit EZ preferences and gamma=2, psi=1/2
- LifeCycleModel12endo: solves endogenous labor life-cycle model with utility-unit EZ preferences and phi=0

The vNM and the utility-unit EZ preferences should give the same policy function and same value function.

The consumption-unit EZ are CRRA (because gamma=1/psi), but will be different to what we would get using a CRRA utility fn with vNM preferences (because the parameter value does not correspond). So should see much the same shape of the policy and value functions, but no reason to get actual same answers.

All seems fine. This was done as a double-check that the implementation of EZ preferences in VFI Toolkit seems to be working okay.
