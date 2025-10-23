#mafisa vector
mafisa <- c("usethis","tidyverse", "here", "gifski", "gstat","gt","gtsummary","gghighlight","stringi","ggthemes",
            "ggridges","viridis","psych","labelled","readxl","skimr","sjlabelled","sjstats","sjPlot",
            "sjmisc","readr","ggrepel","openxlsx","sysfonts","scales","magrittr","knitr","lubridate",
            "Hmisc","haven","tidyr","reshape2","DescTools","extrafont","patchwork","extrafontdb",
            "ggtext","geomtextpath","zoo","cowplot","ztable","pheatmap","RColorBrewer","data.table",
            "d3heatmap","hablar","gganimate","dygraphs","gapminder","hrbrthemes","gridExtra","grid",
            "rmarkdown","forecast","backtest","quantmod","tseries","writexl","ggpubr","rcartocolor",
            "remotes","geodata","shiny","nasapower","classInt","spData","tmap","tmaptools","spDataLarge",
            "leaflet","ggsflabel","sf","RSelenium","netstat","GGally","calendR","areaplot","hexbin",
            "webshot","oceanis","SPlit","spdep","gsubfn","proto","fpp2","mapview","shinydashboard",
            "packrat","bigD","formattable","reactablefmtr","caret","predict3d","ggpmisc","googleway",
            "ggplot2","caTools","giscoR","ggspatial","sp","glmnet","rnaturalearth","rnaturalearthdata",
            "pacman","vroom","ggraph","igraph","Matrix","network","quanteda","sna","maps","RODBC",
            "elevatr","cartography","Cairo","sfdep","terra","likert","sendmailR","DBI","RPostgres",
            "janitor","reticulate","DT","mice","FactoMineR","osrm","spatialreg","rayshader","plotly",
            "Metrics","devtools","ragg","randomForest","transformr","tidygraph","tm","tibble",
            "quanteda.textplots","lm.beta","DALEX","ranger","googlesheets4", "ruODK")

# Install if missing
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message("Installing ", pkg, " ...")
    tryCatch({
      install.packages(pkg, dependencies = TRUE)
    }, error = function(e) {
      message("Failed to install ", pkg, " from CRAN. Trying GitHub...")
      tryCatch({
        remotes::install_github(pkg, dependencies = TRUE)
      }, error = function(e2) {
        message("Still failed: ", pkg)
      })
    })
  } else {
    message("Already installed: ", pkg)
  }
}

# Inspect the packages installed
for (p in mafisa) {
  install_if_missing(p)
}

#Check if all packages are installed
invisible(lapply(mafisa, library, character.only = TRUE))
message("\nAll possible packages installed and loaded!\n")
