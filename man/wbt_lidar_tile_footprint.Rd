% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lidar_analysis.R
\name{wbt_lidar_tile_footprint}
\alias{wbt_lidar_tile_footprint}
\title{Lidar tile footprint}
\usage{
wbt_lidar_tile_footprint(
  input,
  output,
  hull = FALSE,
  wd = NULL,
  verbose_mode = FALSE,
  compress_rasters = FALSE
)
}
\arguments{
\item{input}{Input LiDAR file.}

\item{output}{Output vector polygon file.}

\item{hull}{Identify the convex hull around points.}

\item{wd}{Changes the working directory.}

\item{verbose_mode}{Sets verbose mode. If verbose mode is False, tools will not print output messages.}

\item{compress_rasters}{Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.}
}
\value{
Returns the tool text outputs.
}
\description{
Creates a vector polygon of the convex hull of a LiDAR point cloud. When the input/output parameters are not specified, the tool works with all LAS files contained within the working directory.
}
