% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature-plots.R
\name{plotFeatureDist}
\alias{plotFeatureDist}
\title{Plots a histogram of distances to genomic features}
\usage{
plotFeatureDist(
  dists,
  bgdists = NULL,
  featureName = "features",
  numbers = FALSE,
  nbins = 50,
  size = 1e+05,
  infBins = FALSE,
  tile = FALSE
)
}
\arguments{
\item{dists}{Results from \code{featureDistribution}}

\item{bgdists}{Background distances. If provided, will plot a background
distribution of expected distances}

\item{featureName}{Character vector for plot labels (optional).}

\item{numbers}{a logical indicating whether the raw numbers should be 
displayed, rather than percentages (optional).}

\item{nbins}{Number of bins on each side of the center point.}

\item{size}{Number of bases to include in plot on each side of the 
center point.}

\item{infBins}{Include catch-all bins on the sides?}

\item{tile}{Turn on a tile mode, which plots a tiled figure 
instead of a histogram.}
}
\value{
A ggplot2 plot object
}
\description{
Given the results from \code{featureDistribution}, plots a histogram of
distances surrounding the features of interest
}
\examples{
TSSdist = calcFeatureDistRefTSS(vistaEnhancers, "hg19")
f = plotFeatureDist(TSSdist, featureName="TSS")
}
