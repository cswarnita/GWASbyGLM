#' Code for preparaing the dataset for the package
#
library(usethis)   ##package for data generation for the package
usethis::use_data("DATASET")

data1<-load("/Users/Atit/Desktop/R_package/GWASbyGLM/cov.RData")
data2<-load("/Users/Atit/Desktop/R_package/GWASbyGLM/Phenotype.RData")
data3<-load("/Users/Atit/Desktop/R_package/GWASbyGLM/GD.RData")
data4<-load("/Users/Atit/Desktop/R_package/GWASbyGLM/GM.RData")
sample_cov<-data.frame(Covariates,row.names = 1)  ###sample  data for package
sample_phenotype<-data.frame(Pheno,row.names = 1) ###sample data for package
sample_map<-data.frame(GM, row.names = 1)          ###sample data for package
sample_numeric<-data.frame(GD,row.names=1)         ###sample data for package
usethis::use_data(sample_cov,compress = "xz")     ### For covariates
usethis::use_data(sample_phenotype, compress="xz") ###For phenotype
usethis::use_data(sample_map,compress = "xz")      ###For map data
usethis::use_data(sample_numeric, compress = "xz")  ###For numeric data
