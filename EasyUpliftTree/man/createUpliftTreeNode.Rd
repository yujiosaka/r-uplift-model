\name{createUpliftTreeNode}
\alias{createUpliftTreeNode}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
create UpliftTreeNode
}
\description{
create UpliftTreeNode
}
\usage{
createUpliftTreeNode(split.key = -1, split.value = NULL, l.branch = NULL, r.branch = NULL, data = NULL, score = NULL, node.type = "top")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{split.key}{
%%     ~~Describe \code{split.key} here~~
}
  \item{split.value}{
%%     ~~Describe \code{split.value} here~~
}
  \item{l.branch}{
    UpliftTreeNode of left branch
}
  \item{r.branch}{
    UpliftTreeNode of right branch
}
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{score}{
%%     ~~Describe \code{score} here~~
}
  \item{node.type}{
    top or L or R
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
    A UpliftTreeNode
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
function (split.key = -1, split.value = NULL, l.branch = NULL, 
    r.branch = NULL, data = NULL, score = NULL, node.type = "top") 
{
    node <- list(split.key = split.key, split.value = split.value, 
        l.branch = l.branch, r.branch = r.branch, data = data, 
        score = score, node.type = node.type)
    class(node) <- c("UpliftTreeNode", "list")
    node
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
