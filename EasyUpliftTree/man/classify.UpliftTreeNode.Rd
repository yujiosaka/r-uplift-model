\name{classify.UpliftTreeNode}
\alias{classify.UpliftTreeNode}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
    classify new data
}
\description{
    classify new data
}
\usage{
classify.UpliftTreeNode(tree, row)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{
    UpliftTreeNode
}
  \item{row}{
    new data
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
    class vector
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
function (tree, row) 
{
    if (!is.null(tree$data)) {
        return(tree$node.type)
    }
    else {
        v <- row[tree$split.key]
        branch <- NULL
        if (class(v) == "numeric") {
            if (v >= tree$split.value) {
                branch <- tree$r.branch
            }
            else {
                branch <- tree$l.branch
            }
        }
        else {
            v <- as.character(v)
            split.value <- as.character(tree$split.value)
            if (v == split.value) {
                branch <- tree$r.branch
            }
            else {
                branch <- tree$l.branch
            }
        }
        return(classify(branch, row))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
