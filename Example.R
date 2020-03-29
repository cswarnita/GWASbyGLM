setwd("F:\\Bio545\\Homework4")
source("Functions.R")
load("GD.Rdata")
load("GM.Rdata")
load("Phenotype.Rdata")
load("cov.Rdata")

#GWAS_GLM
p=p_val_GLM(y=Phenotype$Obs,X=GD[,-1],C=Covariates[,-1])
#PCA
PCA=PC(3,X=GD[,-1],C=Covariates[,-1])
#Manhattan Plot
manhattan_plot(data=GM,0.05,p=p[,2])
#QQPlot
QQPlot_GWAS(p=p[,2])
