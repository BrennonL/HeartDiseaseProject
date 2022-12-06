# Open the hreart.csv

# this is here for de-buging purposes



main <- function() {
  heart_disease_data = read.delim("C:\\Users\\Brenn\\OneDrive\\Fall 2022\\CSE310\\Sprint 3\\HeartDiseaseProject\\heart.csv", header = TRUE, sep = ",")
  MaxHR <- as.data.frame(table(heart_disease_data$MaxHR))

  print(heart_disease_data)

  MaxHR$Var1 <- as.numeric(MaxHR$Var1)
  MaxHR$Freq <- as.numeric(MaxHR$Freq)
  m <- find_best_fit_m(MaxHR$Var1, MaxHR$Freq)
  print(m)
  b <- find_best_fit_b(MaxHR$Var1, MaxHR$Freq, m)
  print(b)
  #print(mean(MaxHR$Var1, na.rm = TRUE))
  best_fit_y <- unlist(lapply(MaxHR$Var1, calculate_the_ys_for_best_fit, m = m, b = b))
  print(best_fit_y)
  graph_points(MaxHR$Var1, MaxHR$Freq, best_fit_y)
}




graph_points <- function(x, y, y_for_best_fit){
  plot(x, y)
  lines(x, y_for_best_fit)
}

calculate_the_ys_for_best_fit <- function(x, m, b) {
  #print(x)
  y <- m * x + b
  return(y)
}

find_best_fit_m <- function(xs, ys) {
  multiplied_list <- unlist(multiplied_lists(xs, ys))
  squared_list <- unlist(squared_lists(xs))
  m <- ((mean(xs, na.rm = TRUE) * mean(ys, na.rm = TRUE)) - mean(multiplied_list, na.rm = TRUE)) /
  ((mean(xs, na.rm = TRUE) * mean(xs, na.rm = TRUE)) - mean(squared_list, na.rm = TRUE))
  return(m)
}

find_best_fit_b <- function(xs, ys, m) {
  b <- mean(ys, na.rm = TRUE) - m * mean(xs, na.rm = TRUE)
  return(b)
}

multiplied_lists <- function(first, second) {
  new_list <- list()
  for (i in seq_along(first)) {
    multiplied <- as.numeric(first[i]) * as.numeric(second[i])
    new_list <- append(new_list, multiplied)
  }



  return(new_list)
}

# mean <- function(list){
#   total <- 0
#   length <- 0
#   for(i in seq_along(list)){
#     total <- as.numeric(list[i]) + total
#     length <- length + 1
#   }
#   mean <- total / length
#   return(mean)
# }
squared_lists <- function(list) {
  new_list <- list()
  for (i in seq_along(list)) {
    new_list <- append(new_list, as.numeric(list[i]) * as.numeric(list[i]))
  }
  return(new_list)
}



main()

#Age Sex ChestPainType RestingBP Cholesterol FastingBS RestingECG 
#MaxHR ExerciseAngina Oldpeak ST_Slope HeartDisease