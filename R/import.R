#' Function to import data file
#'
#' @description A function to import data file. The import data contains information about Phenotype (n by 1 form), Markers (Numeric as well as map file with n by m and m by 3 dimension respectively) and Covariates (n by t form) with n the number of individuals in row, m number of markers in column and t number of covariates in column
#'
#' @param filename Input file to import (Requires Phenotype, genotype, map and covariates information)
#' @format matrix
#' @return data file
#' @export
#'
#'

#Import data

import_data=function(filename){
  z=read.table(filename,header=TRUE)
  return(z)
}
