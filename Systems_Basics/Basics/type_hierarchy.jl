#Shishir Khanal
#01/16/2023
# Type Hiererchy in Julia
#-------------------------
subtypes(Any)
supertype(Number)
subtypes(Number)
#Complex is a concrete datatype
subtypes(Complex)

#Is Complex a subtype of Number?
Complex <: Number
Int64 <: Signed
Float64 <: Complex
Int32 <: Signed
Int32 <: Real

#---------------------------------

