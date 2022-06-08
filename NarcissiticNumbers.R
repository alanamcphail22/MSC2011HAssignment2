# Special Topics in Biomedical Communications Assignment 2
# Alana McPhail 
# June 8, 2022 


# Variables: 
  # number: the character submission from user. 
  # numberN: the user submission made numeric. 
  # numberC: the sum of the cubed digits from the user submission.

# Prompt the user to enter a three digit positive number 
number <- readline("Enter a three digit positive number: ")
# Making the submission numeric
numberN <- as.numeric(number)

# Check if the user input is numeric. If not, print an error message and quit. Must be a positive, three digit number. 
if (is.na(numberN) || numberN < 100) {
  print("Error. Not a suitable submission. Quitting program")
} else {
  # Check if the number is narcissistic. (A number that is equal to the sum fo the cubes of its own digits)
  ## Summing the cubes of the digits of the number
  numberC <- sum((as.numeric(substr(number, 1, 1)))^3, as.numeric(substr(number, 2, 2))^3, as.numeric(substr(number, 3, 3))^3)
  ## If the sum is equal to the number then it is narcissistic
  if (numberC == numberN) {
    # Display the result  
    print("Number is narcissistic! :)")
  } else {
    ## Otherwise it is not
    print("Number is not narcissistic. :(")
  }
}



