#Shishir Khanal
#01/17/2023
# Chars and string in Julia
#-------------------------

char = 'a'
typeof(char)
numchar = Int(char)
typeof(numchar)
unichar = '∑'
#Define unicode char 
'\u03A3'
'\u03B1'

str = "Julia String"
typeof(str)

longstr = """Another Julia String."""
typeof(longstr)

str = "Julia Language"
str[1]
str[4]

str[begin]
str[end]

str[end-1]
#Integer division \div<TAB>
str[end ÷ 2]
str[3:5]
str[end-4:end]

firstindex(str)
lastindex(str)
length(str)

newstr = "αβσ"
firstindex(newstr)
lastindex(newstr)

newstr[1]
#alpna,beta are 2 byte values
newstr[2]
newstr[3]

c = "∞ α β ∑"
length(c)
lastindex(c)
ncodeunits('→')
#String concatenation
str1 = "Julia programming"
str2 = "is the best."
string(str1, str2)
str1*" "*str2
"Julia "^4

#
x = 4; y = 5;
"First number is $x, and the second number is $y and their sum is $(x+y)"