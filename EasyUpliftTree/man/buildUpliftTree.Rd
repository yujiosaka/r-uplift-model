\name{buildUpliftTree}
\alias{buildUpliftTree}
\title{
Build Uplift Tree
}
\description{
Build Uplift Tree
}
\usage{
buildUpliftTree(y, treat, x, node.type = "top")
}
\arguments{
  \item{y}{
    response vector
}
  \item{treat}{
    treat vector
}
  \item{x}{
    Variables
}
  \item{node.type}{
    L or R
}
}
\details{
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
function (y, treat, x, node.type = "top") 
{
    data <- x
    data$y <- y
    data$treat <- treat
    if (nrow(x) == 1) 
        return(createUpliftTreeNode(data = data))
    key.score.list <- lapply(names(x), function(key) {
        u.data <- createUpliftTreeNodeData(y = y, treat = treat, 
            x = x[, key])
        if (class(x[, key]) == "numeric") {
            values <- quantile(x[, key], probs = (1:10)/10)
        }
        else {
            values <- unique(x[, key])
        }
        score.list <- lapply(values, function(value) {
            my.data <- divideSet(u.data, value)
            score <- interactionScore(my.data)
            list(score = score, key = key, value = value, data = my.data)
        })
        score.list[order(sapply(score.list, function(l) l[[1]]), 
            decreasing = T)][[1]]
    })
    best.score.list <- key.score.list[order(sapply(key.score.list, 
        function(l) l[[1]]), decreasing = T)][[1]]
    best.key <- best.score.list$key
    best.value <- best.score.list$value
    best.score <- best.score.list$score
    best.split <- best.score.list$data$split
    if (best.score > 0) {
        r.branch <- buildUpliftTree(y = y[best.split == 1], treat = treat[best.split == 
            1], x = x[best.split == 1, ], node.type = "R")
        l.branch <- buildUpliftTree(y = y[best.split != 1], treat = treat[best.split != 
            1], x = x[best.split != 1, ], node.type = "L")
        return(createUpliftTreeNode(split.key = best.key, split.value = best.value, 
            l.branch = l.branch, r.branch = r.branch, score = best.score, 
            node.type = node.type))
    }
    else {
        return(createUpliftTreeNode(data = data, node.type = node.type))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
