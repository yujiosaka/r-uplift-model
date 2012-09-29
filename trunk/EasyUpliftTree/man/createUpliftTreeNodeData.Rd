\name{createUpliftTreeNodeData}
\alias{createUpliftTreeNodeData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    create UpliftTreeNodeData
}
\description{
    create UpliftTreeNodeData
}
\usage{
createUpliftTreeNodeData(y, treat, x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
    response vector
}
  \item{treat}{
    treat vector
}
  \item{x}{
    variables
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
    UpliftTreeNodeData
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
function (y, treat, x) 
{
    df <- data.frame(y = y, treat = treat, x = x, split = 0)
    class(df) <- c("UpliftTreeNodeData", "data.frame")
    df
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
