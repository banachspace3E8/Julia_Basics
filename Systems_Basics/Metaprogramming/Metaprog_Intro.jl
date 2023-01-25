#Shishir Khanal
#01/20/2022
#Metaprogramming in Julia
#------------------------

using Dates

function gettime(myfunction)
    t0 = Dates.now()
    result = myfunction()
    t1 = Dates.now()
    duration = t1 - t0
    println("Run time: ", duration)
    return result
end

gettime(rand(1_000_000))
gettime(println("Metaprogramming is nice"))

#Problem is that the function accepts a function name and we are supplying a function call
#Solution: Use Anonymous function

function gettime(myfunction())
    t0 = Dates.now()
    result = myfunction()
    t1 = Dates.now()
    duration = t1 - t0
    println("Run time: ", duration)
    return result
end

gettime(() -> rand(1_000_000) )
gettime(() -> println("Metaprogramming is nice"))

func() = rand(1_000_000)
gettime(func)


#Solution above is not practical
#Better solution: Built-in Julia Macro

@time rand(1_000_000)

@time println("Metaprogramming is nice")