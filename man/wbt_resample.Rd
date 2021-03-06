% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_analysis.R
\name{wbt_resample}
\alias{wbt_resample}
\title{Resample}
\usage{
wbt_resample(
  inputs,
  output,
  cell_size = NULL,
  base = NULL,
  method = "cc",
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{inputs}{Input raster files.}

\item{output}{Output raster file.}

\item{cell_size}{Optionally specified cell size of output raster. Not used when base raster is specified.}

\item{base}{Optionally specified input base raster file. Not used when a cell size is specified.}

\item{method}{Resampling method; options include 'nn' (nearest neighbour), 'bilinear', and 'cc' (cubic convolution).}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Resamples one or more input images into a destination image.
}
