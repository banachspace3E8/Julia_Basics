#Shishir Khanal
#01/18/2023
#Short circuit evaluation of if-else in Julia
#--------------------------------------------


print("Enter your age: ")
age = readline()
#age = parse(Int64, age)
#Check whether user enters a numeric input
(tryparse(Int, age) === nothing) && (println("Please enter a numeric input!"); exit())
(tryparse(Int, age) === nothing) || (age = parse(Int, age))

#Check the input from the user and give a message to the user if input is valid
(0 < age < 100) && (println("Your age is $age."))
(0 < age < 100) || (println("Please enter a number between 0 and 100!"))