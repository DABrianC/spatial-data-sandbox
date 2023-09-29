#list of packages
packages <- c("cowplot", "crsuggest", "elevatr", "extrafont"
              , "extrafontdb" , "flextable", "lubridate"
              , "ggfx" , "ggiraph", "ggtext", "leaflet"
              , "leaflet.extras" , "leaflet.extras2", "mapview", "patchwork"
              , "rcartocolor", "RColorBrewer" 
              , "readxl", "rnaturalearth", "rnaturalearthdata"
              , "sf", "showtext", "sp", "spDataLarge", "spdep", "stars"
              , "terra","tidyverse", "tmap", "tmaptools")


# Install packages not yet installed
installed_packages <- packages %in% rownames(
  installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}
# Packages loading
lapply(packages, library, character.only = TRUE) |>
  invisible()

# custom colors
my_pal_seq <- carto_pal(7, "Burg")

my_pal_qual <- carto_pal(12, "Safe")
