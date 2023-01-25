#Shishir Khanal
#01/16/2023
# Min and max values of concrete datatypes in Julia
#-------------------------

typemax(Int8)
typemax(Int16)
typemin(Int64)

typeof(12)
Int
UInt

#Bit size of machine
Sys.WORD_SIZE
# make sure you prevent overflow

x = typemax(Int64)
x + 1
(x+1) == typemin(Int64)

y = typemax(Int128)
(y+1) == typemin(Int128)

10^50

big(10)^50

7.0

#Scientific Notation (Output is Float64)
3.14e2
2.78e-2
typeof(2.2e2)
2.2f2
typeof(2.2f2)

typeof(3.0)
#convert to Int
Int16(3.0)

Float32(3.14)


α = 235.12
#size in bytes
sizeof(α)
β = Float32(α)
sizeof(β)



#Large Numbers
x = 5_000_000
y = 20_000_000
y - x

Inf
-Inf
Inf16
-Inf32
1/ Inf
1/0

#NaN
0/0
0* Inf

x = 6; y = 0; z = 0;
isinf(x/y)
isnan(y/z)

#Epsilon
#for float64
eps()
eps(Float32)
eps(Float16)

eps(1.0)
eps(100.0)

typeof(true)
typeof(false)

Bool(1)
Bool(0)

true == 1
false == 0