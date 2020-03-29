#' QQ plot
#'
#'
#' @description Function to generate QQ-plot
#'
#' @param p p-values of the markers
#'
#'
#' @return qqplot
#'
#' @export
#'
#'

#QQPlot
QQPlot_GWAS=function(p){
  p.obs=p
  m2=length(p.obs)
  set.seed(123)
  p.uni=runif(m2,0,1)
  order.obs=order(p.obs)
  order.uni=order(p.uni)
  plot(-log10(p.uni[order.uni]),-log10(p.obs[order.obs]),main="QQPlot")
  abline(a = 0, b = 1, col = "red",lwd=2)
}
