% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math_stat_analysis.R
\name{wbt_image_regression}
\alias{wbt_image_regression}
\title{Image regression}
\usage{
wbt_image_regression(
  input1,
  input2,
  output,
  out_residuals = NULL,
  standardize = FALSE,
  scattergram = FALSE,
  num_samples = 1000,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input1}{Input raster file (independent variable, X).}

\item{input2}{Input raster file (dependent variable, Y).}

\item{output}{Output HTML file for regression summary report.}

\item{out_residuals}{Output raster regression resdidual file.}

\item{standardize}{Optional flag indicating whether to standardize the residuals map.}

\item{scattergram}{Optional flag indicating whether to output a scattergram.}

\item{num_samples}{Number of samples used to create scattergram.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs image regression analysis on two input images.
}
