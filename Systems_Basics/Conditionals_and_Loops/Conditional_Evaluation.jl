#Shishir Khanal
#01/18/2023
#Conditional evaluation in Julia

println("Enter your score: ")
score = readline();
score = parse(Int64, score);

if 85 ≤ score ≤ 100
    println("Your grade is A")
elseif 70 ≤ score ≤ 85
    println("Your grade is B")
elseif 60 ≤ score < 70
    println("Your grade is C")
elseif 0 ≤ score < 60
    println("Your score is F")
else
    println("You haven't entered a valid score")
end