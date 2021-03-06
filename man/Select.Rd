% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Select_subpopulation_geoLet.R
\name{Select}
\alias{Select}
\title{Filter to select a particular subpopulation in the structure}
\usage{
Select(
  geoLetVoxelList,
  fstPerc = 0,
  lstPerc = 100,
  ThDown = 0,
  ThUp = 100,
  ThStep = 10,
  without.na = FALSE
)
}
\arguments{
\item{fstPerc}{is the lowest Percentile of the histogram that you use to normalize the pixel values}

\item{lstPerc}{is the highest Percentile of the histogram that you use to normalize the pixel values}

\item{ThDown}{is the lowest threshold value}

\item{ThUp}{is the highest threshold value}

\item{ThStep}{is the step threshold value}

\item{without.na}{is the option to decide to if analyze the image with or without na. Set this parameter to TRUE is suggested.}
}
\value{
#' Select returns a mmButo oject with the values selected
}
\description{
Instatiated an object of the class geoLet, Select works on a single patient containing the extracted ROI
N.B: pay attention, Select requires a geoLet object in which the ROI is already extracted. See the examples for more details.
Select applies two image preprocessing steps on each study you want to analyze:
1) Normalize the values inside ROI, considering the histogram of gray levels
   and setting as extremes fstPerc and lst Perc
   NormValue = (OriginalValue-fstPerc)/(lstPerc-fstPerc)
2) Binarize the images inside ROI by applying a Threshold, and setting to 
   normalised values, the pixels with intensities between ThresholdDown and ThresholdUp
   NaN all values with intensities outside the threshold values
}
\examples{
\dontrun{
#First of all create an object obj of the class geoLet()
obj <- geoLet()

#now load the DICOM serie of the patient that you want analyze
#using the method openDICOMFolder and indicating the path
# obj$openDICOMFolder(Path = "/home/kboaria/Desktop/Davide/Retto/Validation/Patient1/")

#Before running Select you have to extract the ROI that you want analyze by using the method getROIVoxels of the geoLet object
geoLetVoxelList<-obj$getROIVoxels(Structure = "GTV")
# Now you can run Select on GTV object;#'

}
}
