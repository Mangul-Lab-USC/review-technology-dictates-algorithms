library(plotrix)
library(ca)

ford <- function(y, mar=c(2,5,5,1), angle=90, col="white", border="black", main="", 
xlab="", ylab="", xaxlab=NA, yaxlab=NA, maxxspan=0.5, maxyspan=0.45, cex.x=1, cex.y=1) {

  x <- prop.table(y,1)*100

  dimx <- dim(x)
  if (length(dimx) != 2)
   stop("ford(x) where x is a 2 dimensional matrix")

  par(mar=mar)

  plot(0, xlim=c(0.5, dimx[2]+0.5), ylim=c(0.5, dimx[1]+0.5), axes=FALSE, type="n", main=main, xlab="", ylab="")
  mtext(xlab, side=1, line=0)
  if (is.na(xaxlab[1])) {
    xaxlab <- colnames(x)
    if (is.null(xaxlab)) xaxlab <- 1:dimx[2]
  }

  xp <- prop.table(x,1)
  x.rsum <- apply(x,1,sum)
  p.err <- matrix(0,dimx[1],dimx[2])
  for (i in 1:dimx[1]) {
  for (j in 1:dimx[2]) {
    p.err[i,j] <- ((1.96 * sqrt(xp[i,j]*(1-xp[i,j])/x.rsum[i])))
    }
  }

  staxlab(side=3, at=1:dimx[2], labels=xaxlab, srt=angle, adj=0, top.line=0, ticklen=0, cex=cex.y)
  if (is.na(yaxlab[1])) {
    yaxlab <- rownames(x)
    if (is.null(yaxlab)) yaxlab <- 1:dimx[1]
  }

  staxlab(side=2, at=dimx[1]:1, labels=yaxlab, nlines=1, srt=0, adj=1, top.line=0, ticklen=0, cex=cex.x)
  normx <- maxxspan*x/max(x,na.rm=TRUE)
  rect(rep(1:dimx[2], each=dimx[1])-normx, rep(dimx[1]:1,dimx[2])-maxyspan,
    rep(1:dimx[2], each=dimx[1])+normx, rep(dimx[1]:1, dimx[2])+maxyspan, col=col, border=border)
  
  rect((rep(1:dimx[2], each=dimx[1])-normx)-(p.err*normx*4), rep(dimx[1]:1,dimx[2])-maxyspan/4,
    (rep(1:dimx[2], each=dimx[1])-normx)+(p.err*normx*4), rep(dimx[1]:1, dimx[2])+maxyspan/4, col='black', border=NA)
  
  rect((rep(1:dimx[2], each=dimx[1])+normx)-(p.err*normx*4), rep(dimx[1]:1,dimx[2])-maxyspan/4,
    (rep(1:dimx[2], each=dimx[1])+normx)+(p.err*normx*4), rep(dimx[1]:1, dimx[2])+maxyspan/4, col='black', border=NA)
} 
