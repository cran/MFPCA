% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/univDecomp.R
\name{fdaBasis}
\alias{fdaBasis}
\title{Use a basis from package fda for univariate representation}
\usage{
fdaBasis(funDataObject, ...)
}
\arguments{
\item{funDataObject}{An object of class \code{\link[funData]{funData}}
containing the observed functional data samples and for which the
basis representation is to be calculated.}

\item{...}{Other parameters passed to \code{\link[funData]{funData2fd}}.}
}
\value{
\item{scores}{The coefficient matrix.} \item{B}{A matrix
  containing the scalar product of all pairs of basis functions. This
  is \code{NULL}, if \code{ortho = TRUE}.}\item{ortho}{Logical, set to
  \code{TRUE}, if basis functions are orthonormal.} \item{functions}{A
  functional data object containing the basis functions.}
}
\description{
This function allows to use univariate basis representations from the
\pkg{fda} package using the \code{\link[funData]{funData2fd}} function
from package \pkg{funData}.
}
\section{Warning}{
 The package \pkg{fda} has be be installed to use this
  functionality.
}

\seealso{
\code{\link[funData]{funData2fd}}, \code{\link[fda]{eval.fd}}
}
\keyword{internal}
