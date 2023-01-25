#Shishir Khanal
#01/17/2023
# Exercise-1
#-------------------------
#E1
struct RectangularPrism{T <: Real}
    width::T
    length::T
    height::T
end

prism = RectangularPrism(2.5, 10.0, 8.5)

volume = prism.width * prism.length * prism.height

#E2
myint = 42
myfloat = Float64(myint)
#myfloat = convert(Float64, myint)
#E3
name = "Arthur";
weight = 75;
height = 1.80;
BMI = round(weight / height^2, digits=2)

"Hello $name. You are $weight kg and $height m. Your BMI is $BMI."

