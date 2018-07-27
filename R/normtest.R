#' Normtest
#'
#'Performing Test for normality
#' @param x list of numbers to be tested for normality
#'
#' @return Returns the dataframe having shapiro test, ad test, cvm test, ll test, sf test
#'
#'
#' @export

normtest<-function(x){
  library(nortest)
  s<-shapiro.test(x)
  ad<-ad.test(x)
  cvm<-cvm.test(x)
  ll<-lillie.test(x)
  sf<-sf.test(x)
  df<-data.frame(Method=c(s$method, ad$method, cvm$method, ll$method, sf$method),P.Value=c(s$p.value, ad$p.value, cvm$p.value, ll$p.value, sf$p.value))
  return(df)
}
