% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math_stat_analysis.R
\name{wbt_kappa_index}
\alias{wbt_kappa_index}
\title{Kappa index}
\usage{
wbt_kappa_index(
  input1,
  input2,
  output,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input1}{Input classification raster file.}

\item{input2}{Input reference raster file.}

\item{output}{Output HTML file.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs a kappa index of agreement (KIA) analysis on two categorical raster files.
}
