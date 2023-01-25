#Shishir Khanal
#01/17/2023
# Basic Operations in Julia
#-------------------------

5 + 7
14 - 6
3.14 * 2.78
57 / 13
ans

ans ^ 2

x = 12; y = 23;
3x + 5y
3*x + 5*y
4(5x + 7y)

-x
-y
-3.5

15 ÷ 6    # \div<TAB>
6.5 ÷2

div(15, 6)
div(6.5, 2)

4^3
0.25^0.5

#Operations are functions
4 + 5
+(4,5)

4^3
^(4,3)

# 15 divided by 5
5 \ 15

#Operator Precedence: PEMDAS

sqrt(16)
√16

cbrt(27)
∛27

28 % 5 
rem(28,5)

a = 7.8; b = 3.6;
a == b

a != b
a ≠ b

c = [1, 2, 3]
d = c
e = deepcopy(c)

c == d
c == e
#is c and d located in same memory location?
# false because it was copied using deepcopy
c === e
c ≡ e
#\leq
a ≤ b
a ≥ b

c = 1.7
a ≥ b ≥ c

(a >= b) && (b >= c)

3 ≥ 3 < 9 ≠ 17 ≥ 14

0.6 == 0.4 + 0.2

#most numbers can't be stored with finite number of bits
#so computer choses the closest floating point number
isequal(0.6, 0.4+0.2)

isapprox(0.6, 0.4+0.2)
0.6 ≈ 0.4 + 0.2

a = true; b = false;
!a
!b

a && a
a && b

a || b
b || b

#Bitwise Operations
x = 109; y = 56;
x & y
x | y
#XOR
x ⊻ y
xor(x,y)

~x

using Bits

bits(5)
#NOT 5
~5
#Bit representation of -6
bits(-6)
bitstring(5)
bitstring(-6)

x = 7
x = x + 5
x += 5

x *= 4
x /= 17
x ^= 3

log(ℯ^2)
log(10, 10_000)

exp(3)
ℯ^3

round(3.78) #nearest Integer
floor(3.78) #towarsds -∞
ceil(3.78) #towards ∞

abs(-3)
sign(-4)
sign(2)

#radian angles
sin(π/6)
cos(π/4)
tan(π/4)

#Degree angles
sind(30)
cosd(45)
tand(30)

rand(4)

rand(Int, 4)

rand(Float64, (2,2))