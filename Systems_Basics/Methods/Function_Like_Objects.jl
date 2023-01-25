#Shishir Khanal
#01/19/2023
#Function like objects in Julia
#--------------------------
mutable struct model{R}
    coefficients::Vector{R}
end

function(m::model)(x)
    coeffis = m.coefficients
    s = 0
    for i in 1:length(x)
        s += x[i]*coeffs[i]
    end
    return s
end

lm = model([1, 3, 5])