#' Distance to outlet
#'
#' Calculates the distance of stream grid cells to the channel network outlet cell.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_distance_to_outlet <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Extract streams
#'
#' Extracts stream grid cells from a flow accumulation raster.
#'
#' @param flow_accum Input raster D8 flow accumulation file.
#' @param output Output raster file.
#' @param threshold Threshold in flow accumulation values for channelization.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extract_streams <- function(flow_accum, output, threshold, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--flow_accum=", flow_accum))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--threshold=", threshold))
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Extract valleys
#'
#' Identifies potential valley bottom grid cells based on local topolography alone.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param variant Options include 'LQ' (lower quartile), 'JandR' (Johnston and Rosenfeld), and 'PandD' (Peucker and Douglas); default is 'LQ'.
#' @param line_thin Optional flag indicating whether post-processing line-thinning should be performed.
#' @param filter Optional argument (only used when variant='lq') providing the filter size, in grid cells, used for lq-filtering (default is 5).
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_extract_valleys <- function(dem, output, variant="LQ", line_thin=TRUE, filter=5, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(variant)) {
    args <- paste(args, paste0("--variant=", variant))
  }
  if (line_thin) {
    args <- paste(args, "--line_thin")
  }
  if (!is.null(filter)) {
    args <- paste(args, paste0("--filter=", filter))
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Farthest channel head
#'
#' Calculates the distance to the furthest upstream channel head for each stream cell.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_farthest_channel_head <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find main stem
#'
#' Finds the main stem, based on stream lengths, of each stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_find_main_stem <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Hack stream order
#'
#' Assigns the Hack stream order to each tributary in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_hack_stream_order <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Horton stream order
#'
#' Assigns the Horton stream order to each tributary in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_horton_stream_order <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Length of upstream channels
#'
#' Calculates the total length of channels upstream.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_length_of_upstream_channels <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Long profile
#'
#' Plots the stream longitudinal profiles for one or more rivers.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param dem Input raster DEM file.
#' @param output Output HTML file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_long_profile <- function(d8_pntr, streams, dem, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Long profile from points
#'
#' Plots the longitudinal profiles from flow-paths initiating from a set of vector points.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param points Input vector points file.
#' @param dem Input raster DEM file.
#' @param output Output HTML file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_long_profile_from_points <- function(d8_pntr, points, dem, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--points=", points))
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raster streams to vector
#'
#' Converts a raster stream file into a vector file.
#'
#' @param streams Input raster streams file.
#' @param d8_pntr Input raster D8 pointer file.
#' @param output Output vector file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_raster_streams_to_vector <- function(streams, d8_pntr, output, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Rasterize streams
#'
#' Rasterizes vector streams based on Lindsay (2016) method.
#'
#' @param streams Input vector streams file.
#' @param base Input base raster file.
#' @param output Output raster file.
#' @param nodata Use NoData value for background?.
#' @param feature_id Use feature number as output value?.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_rasterize_streams <- function(streams, base, output, nodata=TRUE, feature_id=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--base=", base))
  args <- paste(args, paste0("--output=", output))
  if (nodata) {
    args <- paste(args, "--nodata")
  }
  if (feature_id) {
    args <- paste(args, "--feature_id")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Remove short streams
#'
#' Removes short first-order streams from a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param min_length Minimum tributary length (in map units) used for network prunning.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_remove_short_streams <- function(d8_pntr, streams, output, min_length, esri_pntr=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--min_length=", min_length))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Shreve stream magnitude
#'
#' Assigns the Shreve stream magnitude to each link in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_shreve_stream_magnitude <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Strahler stream order
#'
#' Assigns the Strahler stream order to each link in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_strahler_stream_order <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Stream link class
#'
#' Identifies the exterior/interior links and nodes in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stream_link_class <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Stream link identifier
#'
#' Assigns a unique identifier to each link in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stream_link_identifier <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Stream link length
#'
#' Estimates the length of each link (or tributary) in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param linkid Input raster streams link ID (or tributary ID) file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stream_link_length <- function(d8_pntr, linkid, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--linkid=", linkid))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Stream link slope
#'
#' Estimates the average slope of each link (or tributary) in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param linkid Input raster streams link ID (or tributary ID) file.
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stream_link_slope <- function(d8_pntr, linkid, dem, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--linkid=", linkid))
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Stream slope continuous
#'
#' Estimates the slope of each grid cell in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_stream_slope_continuous <- function(d8_pntr, streams, dem, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Topological stream order
#'
#' Assigns each link in a stream network its topological order.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_topological_stream_order <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Tributary identifier
#'
#' Assigns a unique identifier to each tributary in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param wd Changes the working directory.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#' @param compress_rasters Sets the flag used by WhiteboxTools to determine whether to use compression for output rasters.
#'
#' @return Returns the tool text outputs.
#' @export
wbt_tributary_identifier <- function(d8_pntr, streams, output, esri_pntr=FALSE, zero_background=FALSE, wd=NULL, verbose_mode=FALSE, compress_rasters=FALSE) {
  wbt_init()
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (esri_pntr) {
    args <- paste(args, "--esri_pntr")
  }
  if (zero_background) {
    args <- paste(args, "--zero_background")
  }
  if (!is.null(wd)) {
    args <- paste(args, paste0("--wd=", wd))
  }
  if (compress_rasters) {
    args <- paste(args, "--compress_rasters")
  }
  tool_name <- as.character(match.call()[[1]])
  wbt_run_tool(tool_name, args, verbose_mode)
}


