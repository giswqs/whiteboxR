% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math_stat_analysis.R
\name{wbt_image_correlation_neighbourhood_analysis}
\alias{wbt_image_correlation_neighbourhood_analysis}
\title{Image correlation neighbourhood analysis}
\usage{
wbt_image_correlation_neighbourhood_analysis(
  input1,
  input2,
  output1,
  output2,
  filter = 11,
  stat = "pearson",
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input1}{Input raster file.}

\item{input2}{Input raster file.}

\item{output1}{Output correlation (r-value or rho) raster file.}

\item{output2}{Output significance (p-value) raster file.}

\item{filter}{Size of the filter kernel.}

\item{stat}{Correlation type; one of 'pearson' (default) and 'spearman'.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs image correlation on two input images neighbourhood search windows.
}
