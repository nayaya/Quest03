
# A function that takes a string and return it 
# rotated one word to the left
def rostring(str)
    newStr = str.split().rotate(1)
    newStr.each_with_index do |val, i|
        val.length == 1 && newStr[i] = val.upcase
    end
    newStr.join(" ")
end

# sample string
sample = "Que la lumiere soit e la lumiere fut"

# to display the array
print rostring(sample)