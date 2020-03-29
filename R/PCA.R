#'  Principle Component Analysis
#'
#'
#' @description Removes PCs that are linearly dependent with the given covariates and also user can specify how many PCs to chooose as co-factors
#'
#'
#' @param PC_no User specified number of Principle Components (PCs)
#' @param X     Markers data in the form n by m with n number of individuals and m number of markers
#' @param C     Covariates matrix in the form n by t with n number of individuals and t number of coavariates
#'
#'
#' @export
#'

##PCA
##Remove PC's that are linearly dependent with the given Covariates
##User Specified: How many PC's to choose as co-factors

PC=function(PC_no,X,C){
  PCA=prcomp(X)$x
  if(!is.null(C)){
    c=cor(PCA,C)
    tmp=rownames(c)[c[,2] >= 0.7 | c[,2]<= -0.7|c[,1] >= 0.7 | c[,1]<= -0.7]#PC's whose correlation with the given covariates are more than .7 or less than     -.7 are removed.

    PCA=PCA[ , !(colnames(PCA) %in% tmp)]}
  PCA=PCA[,1:PC_no]
  rm(c)
  rm(tmp)
  return(PCA)
}
