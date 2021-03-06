% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math_stat_analysis.R
\name{wbt_negate}
\alias{wbt_negate}
\title{Negate}
\usage{
wbt_negate(
  input,
  output,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input}{Input raster file.}

\item{output}{Output raster file.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Changes the sign of values in a raster or the 0-1 values of a Boolean raster.
}
