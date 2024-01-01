
# getNumericOutput <- function(strPrompt){

#     while(TRUE){
#         value <- as.numeric(readline(prompt=strPrompt))
#         print(is.numeric(value))
#         if(is.numeric(value)) {
#             if(value >= 0) { return (value) }
#             else { print("Please enter number greater than 0") }
#         }
#         else { print("Please enter numeric value") }
#         }
#     return (-1)

# } 


{
    name <- readline(prompt="What is your name?")

    age <- as.numeric(readline(prompt="What is your age?"))

    height <- as.numeric(readline(prompt="What is your height? (In Inches)"))

    weight <- as.numeric(readline(prompt="What is your age? (In Pounds)"))
}

BMI <- function(weight, height){
    return (703 * (weight/(height^2)))
}

#Basal metabolic rate
#Mifflin-St Jeor Equation: for men
#check**
BMR <- function(weight, height, age){
    return ((10 * weight) + (6.25 * height) - (5 * age) + 5)
}

print(paste("Hello", name))

print(paste("Your BMI is", BMI(weight, height)))

print(paste("Your basal metabolic rate is", BMR(weight, height, age)))

#todo check input type, adjust for metric, add graphic, incorporate into website
