% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_tools.R
\name{wbt_multi_part_to_single_part}
\alias{wbt_multi_part_to_single_part}
\title{Multi part to single part}
\usage{
wbt_multi_part_to_single_part(
  input,
  output,
  exclude_holes = TRUE,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input}{Input vector line or polygon file.}

\item{output}{Output vector line or polygon file.}

\item{exclude_holes}{Exclude hole parts from the feature splitting? (holes will continue to belong to their features in output.).}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Converts a vector file containing multi-part features into a vector containing only single-part features.
}
