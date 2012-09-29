\name{divideSet.UpliftTreeNodeData}
\alias{divideSet.UpliftTreeNodeData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    Divide the data for Uplift Tree Node Data
}
\description{
    Divide the data for Uplift Tree Node Data
}
\usage{
divideSet.UpliftTreeNodeData(data, value)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{value}{
%%     ~~Describe \code{value} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Yohei Sato
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (data, value) 
{
    if (class(value) == "numeric") {
        splitFunc <- function(x) {
            x >= value
        }
    }
    else {
        splitFunc <- function(x) {
            x == value
        }
    }
    data$split <- ifelse(splitFunc(data$x), 1, 0)
    data
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
