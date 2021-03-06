% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_analysis.R
\name{wbt_percentage_contrast_stretch}
\alias{wbt_percentage_contrast_stretch}
\title{Percentage contrast stretch}
\usage{
wbt_percentage_contrast_stretch(
  input,
  output,
  clip = 1,
  tail = "both",
  num_tones = 256,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input}{Input raster file.}

\item{output}{Output raster file.}

\item{clip}{Optional amount to clip the distribution tails by, in percent.}

\item{tail}{Specified which tails to clip; options include 'upper', 'lower', and 'both' (default is 'both').}

\item{num_tones}{Number of tones in the output image.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Performs a percentage linear contrast stretch on input images.
}
