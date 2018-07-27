#' ARIMA Model Fit
#'
#' Fitting models with different AR,MA process
#' @param x time series input, AR, I , MA
#'
#' @return Returns the dataframe having P(AR) as row co-ordinates and Q(MA) as column co-ordinates
#'
#'
#' @export


arma_aics<-function(x,P,d,Q){
    aics<-matrix(nrow=P+1,ncol=Q+1)
    for(p in 0:P)
      for(q in 0:Q)
        {
          mdl<-arima(x,order=c(p,d,q),method = "ML")
          if( mdl$code==0 ) aics[p+1,q+1]<-mdl$aic
          }
    return(aics)
}
