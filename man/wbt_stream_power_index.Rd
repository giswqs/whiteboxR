% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_stream_power_index}
\alias{wbt_stream_power_index}
\title{Stream power index}
\usage{
wbt_stream_power_index(
  sca,
  slope,
  output,
  exponent = 1,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{sca}{Input raster specific contributing area (SCA) file.}

\item{slope}{Input raster slope file.}

\item{output}{Output raster file.}

\item{exponent}{SCA exponent value.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Calculates the relative stream power index.
}
