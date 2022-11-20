# Open the hreart.csv
heart_disease_data = read.delim("C:\\Users\\Brenn\\OneDrive\\Fall 2022\\CSE310\\Sprint 3\\HeartDiseaseProject\\heart.csv", header = TRUE, sep = ",")

# this is here for debuging purposes
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


  
  for(i in 1:10)
  {
    print(heart_disease_data[12, 8])
  }
  
}


main()

#Age Sex ChestPainType RestingBP Cholesterol FastingBS RestingECG MaxHR ExerciseAngina Oldpeak ST_Slope HeartDisease