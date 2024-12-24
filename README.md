# R Mean Calculation Bug
This repository demonstrates a subtle bug in an R function designed to calculate the mean of a numeric vector while handling empty vectors and NA values.

The bug lies in the `sum(x, na.rm = TRUE)` line. While this correctly sums the vector excluding NAs, it can lead to incorrect results if it modifies the length of the vector, affecting the mean calculation if NAs exist and `length(x)` is the original length of the vector, before removing the NAs.