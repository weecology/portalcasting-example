library(portalcasting)

#### configure how we're going to run portalcasting ----

# 1. define the folder where we are going to store everything
base <- here::here("portal_predictions")

# 2. restrict the models to just the AutoArima and the new model we are developing
models <- c("AutoArima", "EDM_simplex")

# n. generate the full options list and save the configuration
my_config <- all_options(base = base, 
                         models = models)
saveRDS(my_config, file = "my_config.RDS")

#### use `portalcasting::setup_dir` to create the folders ----
my_config <- readRDS("my_config.RDS")
if (!file.exists(my_config$options_dir$tree$base))
{
    setup_dir(my_config)
}