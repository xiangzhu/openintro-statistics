suppressPackageStartupMessages(library(openintro))
data(COL)

#myPDF('tDistConvergeToNormalDist.pdf', 5.94, 2.53,
par(
      mar = c(2, 1, 1, 1),
      mgp = c(5, 0.6, 0))
plot(c(-3.5, 8),
     c(0, dnorm(0)),
     type = 'n',
     axes = FALSE)
at <- seq(-4, 10, 2)
axis(1, at)
axis(1, at - 1, rep("", length(at)), tcl = -0.1)
abline(h = 0)

#COL. <- fadeColor(COL[1], c("FF", "89", "68", "4C", "33"))
#COLt <- fadeColor(COL[1], c("FF", "AA", "85", "60", "45"))
COL. <- c("#000000","#E69F00","#0072B2")
COLt <- c("#000000","#E69F00","#0072B2")
LNTY <- c("solid", "dashed", "dotted")

DF   <- c('normal', 8, 1)

X <- seq(-5, 10, 0.02)
Y <- dnorm(X)
lines(X, Y, col = COL.[1], lty = LNTY[1])

for (i in 2:3) {
  Y <- dt(X, as.numeric(DF[i]))
  lines(X, Y, col = COL.[i], lty = LNTY[i])
}

legend(4.5, 0.4,
       legend = rep("Which RV?", 3),
       col = COL.,
       text.col = COLt,
       lty = LNTY)

#dev.off()
