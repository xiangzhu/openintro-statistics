# load packages -----------------------------------------------------
suppressPackageStartupMessages(library(openintro))

# load data ---------------------------------------------------------

coast_starlight <- read.table("~/GitHub/openintro-statistics/ch_regr_simple_linear/figures/eoce/coast_starlight_corr_units/coast_starlight.txt", h = T, sep = "\t")

# plot trave time vs. distance --------------------------------------

#pdf("coast_starlight.pdf", 5.5, 4.3)

par(mar = c(3.8, 3.8, 0.5, 0.5), las = 1, mgp = c(2.7, 0.7, 0),
    cex.lab = 1.25, cex.axis = 1.25)

plot(coast_starlight$travel_time ~ coast_starlight$dist,
     xlab = "Distance (miles)", ylab = "Travel Time (minutes)",
     pch = 20, col="black", axes = FALSE)
axis(1, at = seq(0, 400, 100))
axis(2, at = seq(0, 360, 60))
box()

#dev.off()
