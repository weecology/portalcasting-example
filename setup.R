# load the `portalcasting` package
library(portalcasting)

# define the folder where we are going to store all the components for making 
#  portal predictions
base_dir <- here::here("portal_predictions")

# use `portalcasting::setup_dir` to create the `portal_predictions`` folders
setup_dir(all_options(base = base_dir))
