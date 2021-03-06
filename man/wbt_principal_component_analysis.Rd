% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math_stat_analysis.R
\name{wbt_principal_component_analysis}
\alias{wbt_principal_component_analysis}
\title{Principal component analysis}
\usage{
wbt_principal_component_analysis(
  inputs,
  output,
  num_comp = NULL,
  standardized = FALSE,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{inputs}{Input raster files.}

\item{output}{Output HTML report file.}

\item{num_comp}{Number of component images to output; <= to num. input images.}

\item{standardized}{Perform standardized PCA?.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs a principal component analysis (PCA) on a multi-spectral dataset.
}
