# Use na.rm = TRUE to ignore NAs at position 1 in return series
SR <- mean(Rt, na.rm = TRUE) / sd(Rt, na.rm = TRUE)
SR2 <- mean(Rt2, na.rm = TRUE) / sd(Rt2, na.rm = TRUE)
SRb <- mean(Rb, na.rm = TRUE) / sd(Rb, na.rm = TRUE)

plot(y = Et, x = t, type = "l", col = 1,
     xlab = "",
     ylab= "Equity ($)",
     main = "Figure 1-4: Sharpe Ratios")
grid()
abline(h = 10000)
lines(y = Et2, x = t, col = 2)
lines(y = Eb, x = t, col = 8)
legend(x = "topleft", col = c(1,2,8), lwd = 2,
       legend = c(paste0("SR = ", round(SR, 3)),
                  paste0("SR = ", round(SR2, 3)),
                  paste0("SR = ", round(SRb, 3))))