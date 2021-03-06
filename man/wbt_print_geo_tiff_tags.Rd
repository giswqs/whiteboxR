% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_tools.R
\name{wbt_print_geo_tiff_tags}
\alias{wbt_print_geo_tiff_tags}
\title{Print geo tiff tags}
\usage{
wbt_print_geo_tiff_tags(
  input,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input}{Input GeoTIFF file.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Prints the tags within a GeoTIFF.
}
