#' Function to return p-value for SNP
#'
#'
#' @description This is the function to calculate and return p-values for each SNPs after testing the association between the Phenotypes and SNP along with their Covariates
#'
#' @param y Phenotype matrix in the form n by 1 (n is number of individual in rows)
#' @param X Marker data in matrix form n by m ( n is number of individual in row and m is marker data in column)
#' @param PC Principal Components
#' @param C Covariates matrix in the form n by t (n is number of individuals in row and t is number of covariates in column)
#'
#' @return p-values
#' @export
#'
#'

##Function that returns p-value for each SNP for testing association between Phenotype and SNP along with the given Covariates

p_val_GLM=function(y,X,PC=NULL,C=NULL){
  n=nrow(X)
  m=ncol(X)
  P=matrix(NA,1,m)
  for (i in 1:m){
    x=X[,i]
    if(max(x)==min(x)){
      p=1}else{
        if(!is.null(C) & !is.null(PC)){
          Z=as.matrix(cbind(1, PC,C,x))}

        if(!is.null(C) & is.null(PC)){
          Z=as.matrix(cbind(1,C,x))}

        if(is.null(C) & !is.null(PC)){
          Z=as.matrix(cbind(1,PC,x))}

        if(is.null(C) & is.null(PC)){
          Z=as.matrix(cbind(1,x))}

        LHS=t(Z)%*%Z
        inv=solve(LHS)
        RHS=t(Z)%*%y
        b=inv%*%RHS
        yb=Z%*%b
        e=y-yb
        n=length(y)
        ve=sum(e^2)/(n-1)
        vt=inv*ve
        t=b/sqrt(diag(vt))
        p=2*(1-pt(abs(t),n-2))
      } #end of testing variation
    P[i]=p[length(p)]
  } #end of looping for markers

  return(P)
}

