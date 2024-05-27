\donttest{
# Save current user's options.
old <- options()
# (Optional - Running Multiple Chains in Parallel)
options(mc.cores = 2)

# Need Boston housing data from MASS package.
require(MASS)

# Fit the modal regression based on the FG distribution to the Boston housing data.
FG_model <- modal_regression(formula = medv ~ .,
                             data = Boston,
                             model = "FG",
                             chains = 2,
                             iter = 2000)
summary(FG_model)

# Fit the modal regression based on the TPSC-Student-t distribution to the Boston housing data.
TPSC_model <- modal_regression(formula = medv ~ .,
                               data = Boston,
                               model = "TPSC",
                               chains = 2,
                               iter = 2000)
summary(TPSC_model)

# Fit the modal regression based on the DTP-Student-t distribution to the Boston housing data.
DTP_model <- modal_regression(formula = medv ~ .,
                              data = Boston,
                              model = "DTP",
                              chains = 2,
                              iter = 2000)
summary(DTP_model)

# reset (all) initial options
options(old)
}
