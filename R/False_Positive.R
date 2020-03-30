#'  False Positives
#'
#'
#' @description Calculates the proportion of False Positives
#'
#'
#' @param P  P values obtained from GWAS
#' @param QTN.position     Indexes showing the QTN position in theGenotypic Matrix
#' @param cutoff     Threshold/Significance level to assess significance
#'
#' @return Proportion of false positives
#' @export
#'




#False Positive
false_positive=  function (P=P, QTN.position, cutoff){
  #cutoff = cutoff/length(P)
  if(sum(is.na(P)!=0)){P[is.na(P)]=1}
  fp=sum(P[!index1to5]<cutoff)/length(P)
  return(fp)
}
