library(tidyverse)
set.seed(101)
platelet <- data.frame(trt = rep(c("control", "solutionA", "solutionB"), each = 4))
platelet <- platelet %>%
  mutate(
    clotting = 10 + rnorm(n(), rep(rnorm(3), each = 4))
  )
write.csv(platelet, "../data/platelet.csv", row.names = F)
write.table(platelet, "../data/platelet.txt", row.names = F)