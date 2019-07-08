#  Create Simple Card Set for
#     Early K math
#       Addition Only
#       1 - 10
# 

load("./data/dobble.RData")

### Problem Matrix
problems <- matrix(c(
  "2+2", "1+3", "3+1",
  "2+3", "3+2", "1+4",
  "1+5", "2+4", "3+3",
  "6+1", "2+5", "3+4",
  "4+4", "2+6", "5+3",
  "2+7", "6+3", "4+5",
  "5+5", "6+4", "7+3"
), ncol=3, byrow=T)

### Solution Matrix
solutions <- dobble[[1]]

# randomize solutions
set.seed(as.numeric(Sys.Date()))
solutions <- solutions[,sample(1:ncol(solutions))]

### Position Matrix
position <- matrix(rep("...", length(solutions)), ncol=ncol(solutions))

for (i in 0:(nrow(solutions)-1)) {
  . <- which(solutions==i)
  for (j in 1:ncol(solutions))
    position[.[j]] <- problems[i+1,j]
} # end i
