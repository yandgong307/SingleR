% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SingleR.Create.R
\name{SingleR.CreateObject}
\alias{SingleR.CreateObject}
\title{Wrapper function to create a SingleR object}
\usage{
SingleR.CreateObject(sc.data, ref, clusters = NULL, species = "Human",
  citation = "-", technology = "-", variable.genes = "de",
  fine.tune = T, do.main.types = T, numCores = SingleR.numCores)
}
\arguments{
\item{sc.data}{a matrix of single cell expression data}

\item{ref}{a reference set object. 
This object must be a list containing: data - log2 normalized expression data;
types - annotations for each of the samples; 
main_types - annotations for each of the samples, but less detailed; 
name - name for the reference set; 
sd.thres - a threshold for sd (used in 'sd' mode); 
de.genes - lists of lists of differentially expressed genes. Can be created using the CreateVariableGeneSet function.
de.genes.main - lists of lists of differentially expressed genes. Can be created using the CreateVariableGeneSet function.}

\item{clusters}{a numeric vector of cluster ids for each single cell. If NULL uses SingleR clustering.}

\item{species}{The species of the sample ('Human' or 'Mouse').}

\item{citation}{a citation for the project.}

\item{technology}{The technology used for creating the single-cell data.}

\item{variable.genes}{variable gene method to use - 'sd' or 'de'. Default is 'de'.}

\item{fine.tune}{perform fine tuning. Default is TRUE. Fine-tuning may take long to run.}

\item{do.main.types}{if TRUE runs a main cell type annotation using the main_types annotation.}

\item{numCores}{Number of cores to use.}
}
\value{
a SingleR objects
}
\description{
Wrapper function to create a SingleR object
}
