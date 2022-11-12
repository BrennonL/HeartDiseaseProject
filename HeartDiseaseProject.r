# Open the hreart.csv
heart_disease_data = read.delim("C:\\Users\\Brenn\\OneDrive\\Fall 2022\\CSE310\\Sprint 3\\HeartDiseaseProject\\heart.csv", header = TRUE, sep = ",")
print(heart_disease_data)


main <- function()
{
  # These lists will be used for data straight from the file
  restingHBs <- list()
  has_heartdisease <- list()

  # These lists are modified versions of the one above for graphing purposes
  restingHB_hasHD <- list()
  restingHB_types <- list()
  restingHB_count <- list()

  times_to_iterate = 1
  print(heart_disease_data)
  for (line in heart_disease_data)
  {
    print(line)
  }
  
  for(i in 1:length(data$HeartDisease))
  {
    print(data$HeartDisease[i])
  }
  
}


main()

#Age Sex ChestPainType RestingBP Cholesterol FastingBS RestingECG MaxHR ExerciseAngina Oldpeak ST_Slope HeartDisease