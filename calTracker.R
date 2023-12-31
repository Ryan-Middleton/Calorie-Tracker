name <- readline(prompt="What is your name?")

age <- as.numeric(readline(prompt="What is your age?"))

height <- as.numeric(readline(prompt="What is your height? (In Inches)"))

weight <- as.numeric(readline(prompt="What is your age? (In Pounds)"))


BMI = 703 * (weight/(height^2))

#Basal metabolic rate
#Mifflin-St Jeor Equation: for men
#check**
BMR = (10 * weight) + (6.25 * height) - (5 * age) + 5

print(paste("Hello", name))

print(paste("Your BMI is", BMI))

print(paste("Your basal metabolic rate is", BMR))

#todo check input type, adjust for metric, add graphic, incorporate into website
