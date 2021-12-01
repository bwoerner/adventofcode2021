data <- as.numeric(unlist(read.table("input.txt")))


#part 1
count <- 0
last <- 119 #sketchy

for(i in data) {
  count = ifelse(i > last, count +1, count)
  last = i
}

#part 2 I cheated 
sum(diff(data, lag=3) > 0)

#part 2 with my own code
for(i in data) {
  count = ifelse(i > last, count +1, count)
  last = i
}
