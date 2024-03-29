% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MFPCAfit_methods.R
\name{screeplot.MFPCAfit}
\alias{screeplot.MFPCAfit}
\title{Screeplot for Multivariate Functional Principal Component Analysis}
\usage{
\method{screeplot}{MFPCAfit}(
  x,
  npcs = min(10, length(x$values)),
  type = "lines",
  ylim = NULL,
  main = deparse(substitute(x)),
  ...
)
}
\arguments{
\item{x}{An object of class MFPCAfit, typically returned by a call to
\code{\link{MFPCA}}.}

\item{npcs}{The number of eigenvalued to be plotted. Defaults to all
eigenvalues if their number is less or equal to 10, otherwise show
only the leading first 10 eigenvalues.}

\item{type}{The type of screeplot to be plotted. Can be either
\code{"lines"} or \code{"barplot"}. Defaults to \code{"lines"}.}

\item{ylim}{The limits for the y axis. Can be passed either as a vector
of length 2 or as \code{NULL} (default). In the second case,
\code{ylim} is set to \code{(0,max(pve))}, with \code{pve} the
proportion of variance explained by the principal
components to be plotted.}

\item{main}{The title of the plot. Defaults to the variable name of
\code{x}.}

\item{...}{Other graphic parameters passed to
\code{\link[graphics]{plot.default}} (for \code{type = "lines"}) or
\code{\link[graphics]{barplot}} (for \code{type = "barplot"}).}
}
\value{
A screeplot, showing the decrease of the principal component score.
}
\description{
This function plots the proportion of variance explained by the leading
eigenvalues in an MFPCA against the number of the principal component.
}
\examples{
# Simulate multivariate functional data on one-dimensonal domains
# and calculate MFPCA (cf. MFPCA help)
set.seed(1)
# simulate data (one-dimensional domains)
sim <-  simMultiFunData(type = "split", argvals = list(seq(0,1,0.01), seq(-0.5,0.5,0.02)),
                       M = 5, eFunType = "Poly", eValType = "linear", N = 100)
# MFPCA based on univariate FPCA
PCA <- MFPCA(sim$simData, M = 5, uniExpansions = list(list(type = "uFPCA"),
                                                     list(type = "uFPCA")))

# screeplot
screeplot(PCA) # default options
screeplot(PCA, npcs = 3, type = "barplot", main= "Screeplot")
}
\seealso{
\code{\link{MFPCA}}, \code{\link[stats]{screeplot}}
}
