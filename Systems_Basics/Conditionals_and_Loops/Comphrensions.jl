#Shishir Khanal
#01/18/2023
#Comphrensions in Julia
#------------------

arr = [5, 8, 12, 17, 24, 42];

#New array that contains the squares of old array
[x^2 for x in arr]

#Nested for loop
[(x^2, y^2) for x ∈ 1:4, y ∈ 1:3]

#calculate squares of only even numbers
[x^2 for x in arr if iseven(x)]

[(i,j) for i=1:5 for j=1:i]

#generators
#Increases performance
sum(x^2 for x ∈ 1:1000)

s = 0

#Add squares of first 1 billion integers
#With for loop
@time for i = 1:1_000_000_000 s += i^2 end
#With comphrension
@time sum([i^2 for i = 1:1_000_000_000])
#with generators
@time sum([i^2 for i ∈ 1:1_000_000_000])