% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gis_analysis.R
\name{wbt_weighted_sum}
\alias{wbt_weighted_sum}
\title{Weighted sum}
\usage{
wbt_weighted_sum(
  inputs,
  weights,
  output,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{inputs}{Input raster files.}

\item{weights}{Weight values, contained in quotes and separated by commas or semicolons.}

\item{output}{Output raster file.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs a weighted-sum overlay on multiple input raster images.
}
