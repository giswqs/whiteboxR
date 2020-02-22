% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain_analysis.R
\name{wbt_sediment_transport_index}
\alias{wbt_sediment_transport_index}
\title{Sediment transport index}
\usage{
wbt_sediment_transport_index(
  sca,
  slope,
  output,
  sca_exponent = 0.4,
  slope_exponent = 1.3,
  verbose_mode = FALSE
)
}
\arguments{
\item{sca}{Input raster specific contributing area (SCA) file.}

\item{slope}{Input raster slope file.}

\item{output}{Output raster file.}

\item{sca_exponent}{SCA exponent value.}

\item{slope_exponent}{Slope exponent value.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}
}
\value{
Returns the tool text outputs.
}
\description{
Calculates the sediment transport index.
}