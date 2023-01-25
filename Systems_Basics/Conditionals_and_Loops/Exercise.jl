#Shishir Khanal
#01/18/2023
#Comphrension exercise in Julia
#------------------


arr = [5, 8, 12,17, 24, 42];

[iseven(i) ? i^2 : i^3 for i in arr]