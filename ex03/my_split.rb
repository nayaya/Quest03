# A function that accepts an array/range of numbers, 
# double each number in the array and returns it.
require 'pp'
def my_split(str, chr)
     delm = chr.split("")
     return str.split(Regexp.union(delm))
end

# Sample String and Delimiter
sample_str = "abc def gh\t!"
sample_char = "def "

# A call to the function to display the array
pp my_split(sample_str, sample_char)