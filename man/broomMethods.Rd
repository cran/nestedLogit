% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/broomMethods.R
\name{broomMethods}
\alias{broomMethods}
\alias{glance.nestedLogit}
\alias{tidy.nestedLogit}
\title{Broom Related Methods}
\usage{
\method{glance}{nestedLogit}(x, ...)

\method{tidy}{nestedLogit}(x, ...)
}
\arguments{
\item{x}{an object of class \code{"nestedLogit"}.}

\item{\dots}{arguments to be passed down.}
}
\value{
\itemize{
\item \code{glance} returns a \code{tibble} containing one row of fit statistics for each dichotomy,
labeled \code{response}. See \code{\link[broom]{glance}} for details.
\item \code{tidy} returns a \code{tibble} containing coefficient estimates and test statistics for
the combinations of \code{response} and \code{term}. See \code{\link[broom]{tidy}} for details.
}
}
\description{
These functions give compact summaries of a \code{"nestedLogit"} object
\describe{
\item{\code{glance}}{Construct a single row summaries for the dichotomies \code{"nestedLogit"} model.}
\item{\code{tidy}}{Summarizes the terms in \code{"nestedLogit"} model.}
}
}
\examples{
data("Womenlf", package = "carData")
m <-  nestedLogit(partic ~ hincome + children,
                  dichotomies = logits(work=dichotomy("not.work",
                                                      working=c("parttime", "fulltime")),
                                       full=dichotomy("parttime", "fulltime")),
                  data=Womenlf)

# one-line summaries
broom::glance(m)
# coefficients and tests
broom::tidy(m)

}
\seealso{
\code{\link{nestedMethods}}, \code{\link[broom]{glance}}, \code{\link[broom]{tidy}}
}
