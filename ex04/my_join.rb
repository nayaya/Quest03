# A function that accepts an array of strings
# and join the items with the given delimiter

def my_join(arr, sep)
    arr.join(sep)
end

# sample array and delimiter
sample = ["Hello", "Duniya", "a", "Yau"]
delm = ';'
# A call to the function
newArr =  my_join(sample, delm)

# To display the result
puts newArr.inspect