#'  Manhattan Plot
#'
#'
#' @description Function to generate Manhattan plot for visual display of significant markers
#'
#' @param data the individual and marker information
#' @param cutoff threshold for identifying the significant SNPs
#' @param p p-value of each markers
#' @param QTN.position the position of the significant QTN
#'
#' @return plots and graphs
#'
#' @export
#'
#Manhattan Plot
manhattan_plot=function(data,cutoff,p,QTN.position=NULL){
  n_chr=length(unique(data$Chromosome))
  color.vector <- rep(c("deepskyblue","orange","forestgreen","indianred3"),n_chr)
  m=nrow(data)
  plot(seq(1:m),t(-log10(p)),col=color.vector[data[,2]],xlab="SNP Positions",main   ="Manhattan Plot")
  cutoff=cutoff/length(p)
  abline(h=(-log10(cutoff)), lwd=2, col = "red")
  if(!is.null(QTN.position)){
    points(QTN.position,-log10(p[QTN.position]),pch=19)
  }
}
