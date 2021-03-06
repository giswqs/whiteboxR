% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gis_analysis.R
\name{wbt_centroid_vector}
\alias{wbt_centroid_vector}
\title{Centroid vector}
\usage{
wbt_centroid_vector(
  input,
  output,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input}{Input vector file.}

\item{output}{Output vector file.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Identifes the centroid point of a vector polyline or polygon feature or a group of vector points.
}
