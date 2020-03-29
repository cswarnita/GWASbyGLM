#' Function to import
#'
#' @description This is the function to import data. The import data should have information about Phenotype (n by 1 form), Markers (n by m form ) and Covariates (n by t form) with n the number of individuals in row, m number of markers in column and t number of covairates in column
#'
#' @param filename Name and Location of the file to be imported in txt format
#'
#'
#' @export
#'
#'

#Import data

import_data=function(filename){
  z=read.table(filename,header=TRUE)
  return(z)
}
