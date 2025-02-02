% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s4_get_basic_info_methods.R
\name{dim}
\alias{dim}
\alias{dim,ondisc_matrix-method}
\alias{dim,covariate_ondisc_matrix-method}
\alias{dim,multimodal_ondisc_matrix-method}
\alias{ncol}
\alias{nrow}
\alias{ncol,multimodal_ondisc_matrix-method}
\alias{nrow,multimodal_ondisc_matrix-method}
\title{Get dimension.}
\usage{
\S4method{dim}{ondisc_matrix}(x)

\S4method{dim}{covariate_ondisc_matrix}(x)

\S4method{dim}{multimodal_ondisc_matrix}(x)

ncol(x)

nrow(x)

\S4method{ncol}{multimodal_ondisc_matrix}(x)

\S4method{nrow}{multimodal_ondisc_matrix}(x)
}
\arguments{
\item{x}{an \code{ondisc_matrix}, \code{covariate_ondisc_matrix}, or \code{multimodal_ondisc_matrix}.}
}
\value{
If \code{x} is an \code{ondisc_matrix} or \code{covariate_ondisc_matrix}, length-two integer vector containing
the dimension of \code{x}; if \code{x} is a \code{multimodal_ondisc_matrix}, a list of integer vectors containing the dimensions
of the constituent modalities of \code{x}.
}
\description{
Return the dimension of an \code{ondisc_matrix}, \code{covariate_ondisc_matrix}, or \code{multimodal_ondisc_matrix}.
}
\examples{
# Please install the `ondiscdata` package before running the examples.
# install.packages("devtools")
# devtools::install_github("Katsevich-Lab/ondiscdata")

####################################
# EXAMPLE 1: covariate_ondisc_matrix
####################################
odm_fp <- system.file("extdata", "odm/gene/matrix.odm", package = "ondiscdata")
metadata_fp <- system.file("extdata", "odm/gene/metadata.rds", package = "ondiscdata")
odm <- read_odm(odm_fp, metadata_fp)
dim(odm)
nrow(odm)
ncol(odm)

#####################################
# EXAMPLE 2: multimodal_ondisc_matrix
#####################################
# Load odm from package
odm_gene_fp <- system.file("extdata", "odm/gene/matrix.odm", package = "ondiscdata")
metadata_gene_fp <- system.file("extdata", "odm/gene/metadata.rds", package = "ondiscdata")
odm_gene <- read_odm(odm_gene_fp, metadata_gene_fp)
odm_gRNA_fp <- system.file("extdata", "odm/gRNA/matrix.odm", package = "ondiscdata")
metadata_gRNA_fp <- system.file("extdata", "odm/gRNA/metadata.rds", package = "ondiscdata")
odm_gRNA <- read_odm(odm_gRNA_fp, metadata_gRNA_fp)

odm_multi <- multimodal_ondisc_matrix(list(gene = odm_gene, gRNA = odm_gRNA))
dim(odm_multi)
nrow(odm_multi)
ncol(odm_multi)
}
