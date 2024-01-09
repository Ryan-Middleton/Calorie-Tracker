#Handle input type next
{
    name <- readline(prompt="What is your name? ")

    if(name == 'SKIP'){
        age = 20
        inputHeight = 70
        inputWeight = 185
        metric <- FALSE

    }
    else{
        age <- as.numeric(readline(prompt="What is your age? "))

        measure <- readline(prompt="Imperial (I) or Metric (M)")

        metric <- FALSE
        
        if(measure == 'M'){
            metric <- TRUE
            inputHeight <- as.numeric(readline(prompt="What is your height? (In CM) "))

            inputWeight <- as.numeric(readline(prompt="What is your weight? (In Kilograms) "))
        }
        else{
            inputHeight <- as.numeric(readline(prompt="What is your height? (In Inches) "))

            inputWeight <- as.numeric(readline(prompt="What is your weight? (In Pounds) "))
        }
    }
    lbs = inputWeight
    inches = inputHeight
    
}

if(metric) {
    lbs = inputWeight*2.205
    inches = inputHeight/2.54
}

BMI <- function(lbs, inches){
    return (703 * (lbs/(inches^2)))
}

#Basal metabolic rate
#Mifflin-St Jeor Equation: for men
#check**
BMR <- function(lbs, inches, age){
    return ((10 * lbs) + (6.25 * inches) - (5 * age) + 5)
}

print(paste("Hello", name))

print(paste("Your BMI is", BMI(lbs, inches)))

print(paste("Your basal metabolic rate is", BMR(lbs, inches, age)))

weeks <- c(1:21)

Weight = c()
Calories = c()
BodyMassIndex = c()

# Weight loss 0.25 pounds per week
for (i in weeks){
    Weight[i] <- lbs-(0.25*i)
    Calories[i] <- BMR(lbs-(0.25*i), inches, age+(0.02*i))
    BodyMassIndex[i] <- BMI(lbs-(0.25*i), inches)
}


Data_Frame <- data.frame (
    Weight,
    Calories,
    BodyMassIndex
)

print(Data_Frame)

plot.ts(Data_Frame, type="p", col="blue", 
main="21 Week Plan", 
sub="This graph shows you your recommended calorie intake and projected BMI and weight over 21 weeks for weight loss.",
xlab="Week"
)

#todo check input type, adjust for metric, incorporate into website