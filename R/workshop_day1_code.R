#install.packages('pwr')
#install.packages('MAMSE')
help(package = "pwr")

pwr.t.test(d = 0.75 / 1.5, sig.level = 0.05, power = 0.90, type = "one.sample", alternative = "two.sided")

# I created a data.frame directly in R
df <- data.frame(
  a = c(1, 2, 3),
  b = c("x", "y", "z"),
  c = c(TRUE, TRUE, FALSE),
  d = factor(c("cat", "dog", "horse"))
)

len05 <- ToothGrowth[ToothGrowth$dose == 0.5 & ToothGrowth$supp == "OJ",]$len
len20 <- ToothGrowth[ToothGrowth$dose == 2.0 & ToothGrowth$supp == "OJ",]$len
len20
t.test(len20, len05, var.equal = T)
t.test(len ~ supp, data = ToothGrowth)


plot(mtcars$disp, mtcars$mpg)

mod <- lm(hp ~ disp, data = mtcars)
smod <- summary(mod)

mod <- lm(mpg ~ gear, data = mtcars)
plot(mtcars$gear, mtcars$mpg)
lines(mtcars$gear, fitted(mod))


mod <- lm(mpg ~ fgear, data = mtcars)
mtcars$fgear <- factor(mtcars$gear)
plot(mtcars$gear, mtcars$mpg)
lines(mtcars$gear, fitted(mod))
lines(mtcars$gear, fitted(mod), col = "red")


