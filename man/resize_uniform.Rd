% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R, R/utils.R
\name{resize_doubleXY}
\alias{imresize}
\alias{resize_doubleXY}
\alias{resize_halfXY}
\alias{resize_tripleXY}
\alias{resize_uniform}
\title{Resize image uniformly}
\usage{
resize_doubleXY(im)

resize_halfXY(im)

resize_tripleXY(im)

imresize(im, scale = 1, interpolation = 3)
}
\arguments{
\item{im}{an image}

\item{scale}{a scale factor}

\item{interpolation}{interpolation method to use (see doc for resize). Default 3, linear.}
}
\value{
an image
}
\description{
Resize image by a single scale factor. For non-uniform scaling and a wider range of options, see resize.
}
\section{Functions}{
\itemize{
\item \code{resize_doubleXY}: Double size

\item \code{resize_halfXY}: Half size

\item \code{resize_tripleXY}: Triple size

\item \code{imresize}: resize by scale factor
}}
\examples{
im <- load.example("parrots")
imresize(im,1/4) #Quarter size
liply(2:4,function(ind) imresize(im,1/ind),"x") \%>\%  plot
}
\author{
Simon Barthelme
}
\references{
For double-scale, half-scale, triple-scale, etc. uses an anisotropic scaling algorithm described in: \url{http://scale2x.sourceforge.net/algorithm.html}.
}
\seealso{
resize
}

