\name{toDataFrame.UpliftTreeNode}
\alias{toDataFrame.UpliftTreeNode}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    cast to data.frame for Uplift Tree
}
\description{
    cast to data.frame for Uplift Tree
}
\usage{
toDataFrame.UpliftTreeNode(tree)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{
    Uplift Tree
    }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
    A data.frame
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
function (tree) 
{
    if (is.null(tree$data)) {
        r.df <- toDataFrame(tree$r.branch)
        l.df <- toDataFrame(tree$l.branch)
        df <- rbind(r.df, l.df)
    }
    else {
        df <- tree$data
        df$node.type <- tree$node.type
    }
    df
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
