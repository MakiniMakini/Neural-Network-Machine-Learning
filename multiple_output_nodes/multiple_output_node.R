logic$AND <- as.numeric(x1 & x2) + 1
logic$OR <- as.numeric(x1 | x2) + 1
par(mfrow = c(2, 1))
plot(x = logic$x1, y = logic$x2, pch = logic$AND, cex = 2,
main = "Simple Classification of Two Types",
xlab = "x", ylab = "y", xlim = c(-0.5, 1.5), ylim = c(-0.5,
1.5))
plot(x = logic$x1, y = logic$x2, pch = logic$OR, cex = 2,
main = "Simple Classification of Two Types",
xlab = "x", ylab = "y", xlim = c(-0.5, 1.5), ylim = c(-0.5,
1.5))


example 2


logic$XOR <- as.numeric(xor(x1, x2)) + 1
logic$XNOR <- as.numeric(x1 == x2) + 1
par(mfrow = c(2, 1))
plot(x = logic$x1, y = logic$x2, pch = logic$XOR, cex = 2, main = "Non-Linear
Classification of Two Types",
xlab = "x", ylab = "y", xlim = c(-0.5, 1.5), ylim = c(-0.5,
1.5))
plot(x = logic$x1, y = logic$x2, pch = logic$XNOR, cex = 2, main = "Non-Linear
Classification of Two Types",
xlab = "x", ylab = "y", xlim = c(-0.5, 1.5), ylim = c(-0.5,
1.5))