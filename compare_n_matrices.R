#==comparing N matrices from old code and GMACS

#=========================
#==read in old code output
#=========================
library(plyr)
library(dplyr)
library(knitr)
library(ggplot2)
library(PBSmodelling)
library(miceadds)

# directory in which all of the scenario folder reside and names of the scenario folders
Scenarios   <-c("not_gmacs_2")
ScenarioNames<-c("not_gmacs_2")

##==save all of the output from the scenarios
snowad.rep<-rep(list(list()),length(Scenarios))
CatchYrN<-rep(list(list()),length(Scenarios))
SurvYrN<-rep(list(list()),length(Scenarios))
DiscYrFN<-rep(list(list()),length(Scenarios))
DiscYrMN<-rep(list(list()),length(Scenarios))
TrawlYrN<-rep(list(list()),length(Scenarios))
ObsCatchNumbers<-rep(list(list()),length(Scenarios))
ObsCatchPounds<-rep(list(list()),length(Scenarios))
RetCatchYrs<-rep(list(list()),length(Scenarios))
TotCatchYrs<-rep(list(list()),length(Scenarios))
ObsDiscF<-rep(list(list()),length(Scenarios))
ObsDiscM<-rep(list(list()),length(Scenarios))
TrawlBycatch<-rep(list(list()),length(Scenarios))
SurveyNumbers<-rep(list(list()),length(Scenarios))
SurveyYrs<-rep(list(list()),length(Scenarios))
LengthBins<-rep(list(list()),length(Scenarios))
GrowthNfem<-rep(list(list()),length(Scenarios))
GrowthNm<-rep(list(list()),length(Scenarios))
GrowthData<-rep(list(list()),length(Scenarios))

REPfileEnd<-rep(list(list()),length(Scenarios))
MgmtQuants<-rep(list(list()),length(Scenarios))

for(x in 1:length(Scenarios))
{
  snowad.rep[[x]]  <-readList(paste(Scenarios[x],"/R_input.txt",sep=""))
  
  DATfile <-readLines(paste(Scenarios[x],"/2016sc.DAT",sep=""))
  
  # length of data types
  tmp<-grep("number of years of retained fishery data",DATfile)
  CatchYrN[[x]] <-as.numeric(DATfile[tmp+1])
  tmp<-grep("number of years of survey data",DATfile)
  SurvYrN[[x]] <-as.numeric(DATfile[tmp+1])
  tmp<-grep("number of years of fishery discard",DATfile)
  DiscYrFN[[x]] <-as.numeric(DATfile[tmp+1])
  tmp<-grep("number of years of fishery male discard",DATfile)
  DiscYrMN[[x]] <-as.numeric(DATfile[tmp+1])
  tmp<-grep("number of years of trawl discard",DATfile)
  TrawlYrN[[x]] <-as.numeric(DATfile[tmp+1])
  
  # observed retained catch
  tmp<-grep("retained catch in numbers",DATfile)
  ObsCatchNumbers[[x]]<-as.numeric(DATfile[(tmp+1):(tmp+CatchYrN[[x]])])[1:CatchYrN[[x]]]
  tmp<-grep("retained catch in pounds",DATfile)
  ObsCatchPounds[[x]]<-as.numeric(DATfile[(tmp+1):(tmp+CatchYrN[[x]])])[1:CatchYrN[[x]]]
  tmp<-grep("years for fishery data",DATfile)
  RetCatchYrs[[x]]<-as.numeric(unlist(strsplit(DATfile[(tmp+1)],split=" ")))
  RetCatchYrs[[x]]<-RetCatchYrs[[x]][!is.na(RetCatchYrs[[x]])]
  
  tmp<-grep("years when have fishery discard length data",DATfile)
  TotCatchYrs[[x]]<-as.numeric(unlist(strsplit(DATfile[(tmp+1)],split=" ")))
  TotCatchYrs[[x]]<-TotCatchYrs[[x]][!is.na(TotCatchYrs[[x]])]
  
  # observed discard
  tmp<-grep("Discard Catch from observer",DATfile)
  ObsDiscF[[x]]<-as.numeric(DATfile[(tmp+2):(tmp+1+CatchYrN[[x]])])[1:CatchYrN[[x]]]
  tmp<-grep("discard catch males",DATfile)
  ObsDiscM[[x]]<-as.numeric(DATfile[(tmp+1):(tmp+CatchYrN[[x]])])[1:CatchYrN[[x]]]
  
  # observed trawl
  tmp<-grep(" bycatch numbers by geartype",DATfile)
  TrawlBycatch[[x]]<-as.numeric(DATfile[(tmp+2):(tmp+1+CatchYrN[[x]])])[1:CatchYrN[[x]]]
  
  # survey numbers
  tmp<-grep("survey numbers by year",DATfile)
  SurveyNumbers[[x]]<-as.numeric(DATfile[(tmp+1):(tmp+SurvYrN[[x]])])
  tmp<-grep("years for survey data",DATfile)
  SurveyYrs[[x]]<-na.omit(as.numeric(unlist(strsplit(DATfile[(tmp+1)],split=" "))))
  
  tmp<-grep("length bins",DATfile)[[5]]
  LengthBins[[x]]<-as.numeric(unlist(strsplit(DATfile[(tmp+1)],split=" ")))
  LengthBins[[x]]<-LengthBins[[x]][!is.na(LengthBins[[x]])]
  
  tmp       <-grep("growth data female",DATfile)
  GrowthNfem[[x]]<-as.numeric(DATfile[(tmp+1)])
  tmp1      <-grep("growth data male",DATfile)
  GrowthNm[[x]]  <-as.numeric(DATfile[(tmp1+1)])
  GrowthData[[x]]<-matrix(NA,ncol=4,nrow=max(GrowthNm[[x]],GrowthNfem[[x]]))
  
  GrowthData[[x]][1:GrowthNfem[[x]],1] <-na.omit(as.numeric(unlist(strsplit(DATfile[(tmp+2)],split="\t"))))
  GrowthData[[x]][1:GrowthNfem[[x]],2] <-na.omit(as.numeric(unlist(strsplit(DATfile[(tmp+3)],split="\t"))))
  
  GrowthData[[x]][1:GrowthNm[[x]],3]  <-na.omit(as.numeric(unlist(strsplit(DATfile[(tmp1+2)],split="\t"))))
  GrowthData[[x]][1:GrowthNm[[x]],4] <-na.omit(as.numeric(unlist(strsplit(DATfile[(tmp1+3)],split="\t"))))
  
  #==pulling MLEs for management quantities
  for(x in 1:length(Scenarios))
  {
    REPfileEnd[[x]]       <-readLines(paste(Scenarios[x],"/2016sc.REP",sep=""))
    MgmtQuants[[x]]       <-as.numeric(unlist(strsplit(as.character(REPfileEnd[[x]][1]),split=" ")))
    MgmtQuants[[x]]$Status<-as.numeric(MgmtQuants[[x]][5])/as.numeric(MgmtQuants[[x]][2])
    names(MgmtQuants[[x]])<-c("F","BMSY","Surv_MMB","Fish_MMB","Mate_MMB","F35","FOFL","OFL","Status")
  }
}


#==============================
# Read in GMACS output
#=============================
in_path<-"C:/gmacs/gmr/R/"
source.all( path=in_path, grepstring="\\.R",  print.source=TRUE, file_sep="__"  )

mod_names <- c("opilio")
.MODELDIR = c("./comp_n/")
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

#===============================
# Compare N matrices
#===============================
names(M[[1]])
plot(M[[1]]$recruits)

tot_females<-snowad.rep[[1]]$"Estimated numbers of immature new shell female crab" +                                           
snowad.rep[[1]]$"Estimated numbers of immature old shell female crab" +                                           
snowad.rep[[1]]$"Estimated numbers of mature new shell female crab" +                                             
snowad.rep[[1]]$"Estimated numbers of mature old shell female crab" 

plot(M[[1]]$N_females[1,],type='l',lty=2)
lines(tot_females[1,2:ncol(tot_females)],lty=3,col=2)

par(mfrow=c(8,5),mar=c(.1,.1,.1,.1),oma=c(4,4,1.5,1))
for(x in 1:nrow(tot_females))
{
  plot(M[[1]]$N_females[x,],type='l',lty=2,xaxt='n',yaxt='n')
  lines(tot_females[x,2:ncol(tot_males)],lty=3,col=2)
}
plot.new()
legend('center',bty='n',col=c(1,2),pch=16,legend=c("GMACS","Jack"))
mtext(side=3,"Total female numbers at length (predicted)",outer=T)


tot_males<-snowad.rep[[1]]$"Estimated numbers of immature new shell male crab" +                                           
  snowad.rep[[1]]$"Estimated numbers of immature old shell male crab" +                                           
  snowad.rep[[1]]$"Estimated numbers of mature new shell male crab" +                                             
  snowad.rep[[1]]$"Estimated numbers of mature old shell male crab" 

par(mfrow=c(8,5),mar=c(.1,.1,.1,.1),oma=c(4,4,1.5,1))
for(x in 1:nrow(tot_males))
{
plot(M[[1]]$N_males[x,],type='l',lty=2,xaxt='n',yaxt='n')
lines(tot_males[x,2:ncol(tot_males)],lty=3,col=2)
}
plot.new()
legend('center',bty='n',col=c(1,2),pch=16,legend=c("GMACS","Jack"))
mtext(side=3,"Total male numbers at length (predicted)",outer=T)


male_dif<-(M[[1]]$N_males[1:38,] - tot_males[,2:ncol(tot_males)])/M[[1]]$N_males[1:38,]
mean(male_dif)
