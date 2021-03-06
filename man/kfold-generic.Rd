% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kfold-generic.R
\name{kfold-generic}
\alias{kfold-generic}
\alias{kfold}
\alias{is.kfold}
\title{Generic function for K-fold cross-validation for developers}
\usage{
kfold(x, ...)

is.kfold(x)
}
\arguments{
\item{x}{A fitted model object.}

\item{...}{Arguments to pass to specific methods.}
}
\value{
For developers defining a \code{kfold()} method for a class
\code{"foo"}, the \code{kfold.foo()} function should return a list with class
\code{c("kfold", "loo")} with at least the following named elements:
\itemize{
\item \code{"estimates"}: A \verb{1x2} matrix containing the ELPD estimate and its
standard error. The matrix must have row name "\code{elpd_kfold}" and column
names \code{"Estimate"} and \code{"SE"}.
\item \code{"pointwise"}: A \code{Nx1} matrix with column name \code{"elpd_kfold"} containing
the pointwise contributions for each data point.
}

It is important for the object to have at least these classes and
components so that it is compatible with other functions like
\code{\link[=loo_compare]{loo_compare()}} and \code{print()} methods.
}
\description{
For developers of Bayesian modeling packages, \strong{loo} includes
a generic function \code{kfold()} so that methods may be defined for K-fold
CV without name conflicts between packages. See, for example, the
\code{kfold()} methods in the \strong{rstanarm} and \strong{brms} packages.

The \strong{Value} section below describes the objects that \code{kfold()}
methods should return in order to be compatible with
\code{\link[=loo_compare]{loo_compare()}} and the \strong{loo} package print methods.
}
