## packages to install for site
# cargar funcion del paquete "sketchy"
source(
  paste0(
    "https://raw.githubusercontent.com/maRce10/",
    "sketchy/main/R/load_packages.R"
  )
)

# instalar/ cargar paquetes
load_packages(
  packages = c(
    "remotes",
    "leaflet",
    "knitr",
    "rmarkdown",
    "kableExtra",
    "RColorBrewer",
    "ggplot2",
    "rmdformats",
    "viridis",
    "revealjs",
    "rticles",
    "tufte",
    "lme4",
    "MASS",
    "lmerTest",
    "sjPlot",
    "car",
    github = "maRce10/sketchy",
    github = "hadley/emo"
  )
)

# render site
quarto::quarto_render()

# preview site
quarto::quarto_preview()
