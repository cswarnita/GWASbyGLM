#' Function to return p-value for SNP
#'
#'
#' @description This is the function to calculate and return p-values for each SNPs after testing the association between the Phenotypes and SNP along with their Covariates
#'
#' @param y Phenotype matrix in the form n by 1 (n is number of individual in rows)
#' @param X Marker data in matrix form n by m ( n is number of individual in row and m is marker data in column)
#' @param C Covariates matrix in the form n by t (n is number of individuals in row and t is number of covariates in column)
#'
#' @return p-values
#' @export
#'
#'

##Function that returns p-value for each SNP for testing association between Phenotype and SNP along with the given Covariates

p_val_GLM=function(y,X,C=NULL){
  if(!is.null(C)){
    p= cbind(apply(X,2,function(z){anova(lm(y~z+as.matrix(C)))$"Pr(>F)"[1]}))}
  else{
    p= cbind(apply(X,2,function(z){anova(lm(y~z))$"Pr(>F)"[1]}))
  }
  p=data.frame("SNP_ID"=cbind(colnames(X)),"p_value"=p)
  rownames(p)=NULL
  return(p)
}
