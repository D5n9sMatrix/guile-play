#!/usr/bin/r
require(stats) # for rnorm
plot(1:4, rnorm(4), axes = FALSE)
plot.new()
plot(1:7, rnorm(7), main = "axis() examples",
type = "s", xaxt = "n", frame.plot = FALSE, col = "red")
plot.new()
# one way to have custom x axis
plot(1:10, xaxt = "n")
plot.new()
# default gap between lebel:
plot(0:100, type = "n", exes = FALSE, ann = FALSE)
gaps <- c(4, 2, 1, 1/2, 1/4, 0.1, 0)
chG <- paste0(ifelse(gaps == 1, "default: ", ""),
"gap.axis=", formatC(gaps))
jj <- seq_along(gaps)
linG <- -2.5*(jj-1)
mtext(chG, side=1, padj=-1, line = linG -1/2, cex=3/4,
           col = ifelse(gaps == 1, "forest green", "blue3"))
     ## now shrink the window (in x- and y-direction) and observe the axis labels drawn

