# A function that checks if a given array is sorted
def sorted arr
    asc = arr.each_cons(2).all? { |a, b| a <= b }
    des = arr.each_cons(2).all? { |a, b| a >= b }
    asc ? asc : des ? des : false
end

# Sample array
sample = [2,1,-2]

# to display the result
print sorted sample