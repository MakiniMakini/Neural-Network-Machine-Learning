set.seed(123)
and.net <- neuralnet(AND ~ x1 + x2, logic, hidden = 2, err.fct = "ce",
linear.output = FALSE)
and.result <- data.frame(prediction(and.net)$rep1)
## Data Error: 0;
or.net <- neuralnet(OR ~ x1 + x2, logic, hidden = 2, err.fct = "ce",
linear.output = FALSE)
or.result <- data.frame(prediction(or.net)$rep1)
## Data Error: 0;
as.numeric(xor(round(and.result$AND), round(or.result$OR)))
## [1] 0 1 1 0
xor.data <- data.frame(and.result$AND, or.result$OR,
as.numeric(xor(round(and.result$AND),
round(or.result$OR))))
names(xor.data) <- c("AND", "OR", "XOR")
xor.net <- neuralnet(XOR ~ AND + OR, data = xor.data, hidden = 0,
err.fct = "ce", linear.output = FALSE)
prediction(xor.net)