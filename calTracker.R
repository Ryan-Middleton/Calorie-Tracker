#Handle input type next
{
    name <- readline(prompt="What is your name?")

    age <- as.numeric(readline(prompt="What is your age?"))

    height <- as.numeric(readline(prompt="What is your height? (In Inches)"))

    lbs <- as.numeric(readline(prompt="What is your weight? (In Pounds)"))
}

BMI <- function(lbs, height){
    return (703 * (lbs/(height^2)))
}

#Basal metabolic rate
#Mifflin-St Jeor Equation: for men
#check**
BMR <- function(lbs, height, age){
    return ((10 * lbs) + (6.25 * height) - (5 * age) + 5)
}

print(paste("Hello", name))

print(paste("Your BMI is", BMI(lbs, height)))

print(paste("Your basal metabolic rate is", BMR(lbs, height, age)))

weeks <- c(1:21)

Weight = c()
Calories = c()
BodyMassIndex = c()

# Weight loss 0.25 pounds per week
for (i in weeks){
    Weight[i] <- lbs-(0.25*i)
    Calories[i] <- BMR(lbs-(0.25*i), height, age+(0.02*i))
    BodyMassIndex[i] <- BMI(lbs-(0.25*i), height)
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