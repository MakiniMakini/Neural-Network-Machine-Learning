library(neuralnet)
set.seed(123)
AND <- c(rep(0, 3), 1)
binary.data <- data.frame(expand.grid(c(0, 1), c(0, 1)), AND)
net <- neuralnet(AND ~ Var1 + Var2, binary.data, hidden = 0,
err.fct = "ce", linear.output = FALSE)
plot(net, rep = "best")