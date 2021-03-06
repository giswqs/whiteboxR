% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_analysis.R
\name{wbt_mosaic}
\alias{wbt_mosaic}
\title{Mosaic}
\usage{
wbt_mosaic(
  output,
  inputs = NULL,
  method = "nn",
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{output}{Output raster file.}

\item{inputs}{Input raster files.}

\item{method}{Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Mosaics two or more images together.
}
