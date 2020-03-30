#' Function to import input file
#'
#' @description This is the function to import data. The import data should have information about Phenotype (n by 1 form), Markers (Numeric as well as map file with n by m and m by 3 dimension respectively) and Covariates (n by t form) with n the number of individuals in row, m number of markers in column and t number of covariates in column
#'
#' @param filename Name and Location of the file to be imported in txt format
#'
#' @return data file
#' @export
#'
#'

#Import data

import_data=function(filename){
  z=read.table(filename,header=TRUE)
  return(z)
}
