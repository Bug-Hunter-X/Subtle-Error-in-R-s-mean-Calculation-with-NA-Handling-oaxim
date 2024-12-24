```R
# This function attempts to calculate the mean of a vector, but it contains a subtle error.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  }
  sum_x <- sum(x, na.rm = TRUE) #This is the buggy line
  mean_x <- sum_x / length(x) 
  return(mean_x)
}

# Example usage:
my_vector <- c(1, 2, 3, NA, 5)
result <- calculate_mean(my_vector)
print(result)
```