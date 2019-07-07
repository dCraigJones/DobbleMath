#  Create Simple Card Set for
#     Early K math
#       Addition Only
#       1 - 10
# 
# Solutions:
#   4	=	2+2	1+3	3+1						
#   5	=	2+3	3+2	1+4	4+1					
#   6	=	1+5	5+1	2+4	4+2	3+3				
#   7	=	1+6	6+1	2+5	5+2	3+4	4+3			
#   8	=	1+7	7+1	2+6	6+2	5+3	3+5	4+4		
#   9	=	1+8	8+1	2+7	7+2	6+3	3+6	4+5	5+4	
#   10	=	1+9	9+1	2+8	8+2	3+7	7+3	4+6	6+4	5+5

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

### Position Matrix
position <- matrix(rep("...", length(problems)), ncol=3)

for (i in 0:6) {
  . <- which(solutions==i)
  for (j in 1:3)
    position[.[j]] <- problems[i+1,j]
} # end i


