#Shishir Khanal
#01/16/2023
# List of simple operations to be executed using Julia terminal
#-------------------------

println(4 * 5)
println(9.1 + 3.14)
println("This is a Julia File.")


x = 42
x = 12

x = 12; y = 15; z =18;
y = x^3 + 3*x;
x = "Programming in Julia"

z = 3.14
typeof(z)
z = "This is a string"
typeof(z)

_abc = 23
println(_abc)

#\alpha<TAB>
α = 15
α

#\beta<TAB>
β = 20

α * β

#\beta<TAB>\_0<TAB>
β₀ = 3

#\beta<TAB>\_1<TAB>
β₁ = 4

#\alpha<TAB>\^1<TAB>
α¹ = 13

# Single Line command

#= 

Multi-Line command

=#

#Convention: Variable names start with lowercase letters

#rectangle_width = 5
#rectangleWidth = 7

a, b, c = 4, 7, 9;

#swap values of a and b
a,b = b,a

#x::int64 => x is a variable of type int64
#text::String = "Julia Language" gives error in REPL
# This is used for type declaration in function
#area(height::Float64, width::Float64)
#This helps with:
#1. Multiple Dispatch
#2. Human Readability
#3. Catch Errors

#7+9 is an instance of integer
(7 + 9)::Int

(π + ℯ)::Float64

#Gives out error because the operation doesn't return result of
#type Int
#(2.5 * 5)::Int

#You can assign a string to a variable with datatype integer
x = 13 
typeof(x)
x = "thirteen"
typeof(x)
#This is allowed but harmful for performance

const MYCONST = 42
# Gives out an error because changing int to double this way is not allowed
#MYCONST = 32.22
#This is allowed but Julia gives out warning message
MYCONST = 32