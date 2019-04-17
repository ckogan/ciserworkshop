set.seed(102)
pain <- data.frame(pre = round(5 + 2*rnorm(18))) %>%
  mutate(
    post = pre + round(rnorm(18, -2, 1.5))
  )
write.csv(platelet, "../data/catpain.csv", row.names = F)