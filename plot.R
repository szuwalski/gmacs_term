#require(devtools)
#devtools::install_github("seacode/gmacs", subdir = "/gmr", ref = "develop")
# ploting for model 1 under smbkc18a folder - using gmr and Jim's code 
in_path<-"C:/gmacs/gmr/R/"
library(miceadds)
library(ggplot2)
library(dplyr)
source.all( path=in_path, grepstring="\\.R",  print.source=TRUE, file_sep="__"  )

mod_names <- c("opilio")
.MODELDIR = c("./term_molt/")
.THEME    = theme_bw(base_size = 12, base_family = "") +
  theme(strip.text.x = element_text(margin= margin(1,0,1,0)),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),
        strip.background = element_rect(color="white",fill="white"))

.OVERLAY  = TRUE
.SEX      = c("Aggregate","Male","Female")
.FLEET    = c("Pot","Trawl bycatch","NMFS Trawl")
.TYPE     = c("Retained","Discarded","Total")
.SHELL    = c("New","Old")
.MATURITY = c("Aggregate","Mature","Immature")
.SEAS     = c("1","2","3")

fn       <- paste0(.MODELDIR, "gmacs")
M        <- lapply(fn, read_admb) #need .prj file to run gmacs and need .rep file here
names(M) <- mod_names


plot_catch(M)

plot_cpue(M, ShowEstErr = TRUE, "NMFS Trawl", ylab = "Survey biomass")

plot_molt_prob(M)

plot_F(M)

plot_selectivity(M)

plot_recruitment(M)

plot_size_comps(M,ylim_max = 0.5)

plot_natural_mortality(M, plt_knots = FALSE)

plot_ssb(M)

plot_recruitment_size(M)

plot_growth_transition(M)

plot_size_transition(M)

plot_growth_inc(M)

plot_numbers(M)


