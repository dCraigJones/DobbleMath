n2 <- as.matrix(unname(read.table("./data-raw/n2.txt", sep=" ", row.names=NULL)))
n3 <- as.matrix(unname(read.table("./data-raw/n3.txt", sep=" ", row.names=NULL)))
n4 <- as.matrix(unname(read.table("./data-raw/n4.txt", sep=" ", row.names=NULL)))
n5 <- as.matrix(unname(read.table("./data-raw/n5.txt", sep=" ", row.names=NULL)))
n7 <- as.matrix(unname(read.table("./data-raw/n7.txt", sep=" ", row.names=NULL)))
n8 <- as.matrix(unname(read.table("./data-raw/n8.txt", sep=" ", row.names=NULL)))
n9 <- as.matrix(unname(read.table("./data-raw/n9.txt", sep=" ", row.names=NULL)))

plane <- list(n2, n3, n4, n5, n7, n8, n9)
n <- list(2,3,4,5,6,8,9)

N <- lapply(1:7, function(x) nrow(plane[[x]]))
r <- lapply(1:7, function(x) ncol(plane[[x]]))
k <- r
t <- N

dobble <- cbind(plane, n, N, r, k, t)
attr(dobble, "source") <- "http://ericmoorhouse.org/pub/planes/"
attr(dobble, "time_created") <- Sys.time()

save(dobble, file="./data/dobble.RData")
