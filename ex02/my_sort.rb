# A functon that accepts an array and a symbol order
# and retun that array sorted in that order (asc, desc)

def my_sort arr, sym
    if sym.is_a?(Symbol) && [:asc, :desc].include?(sym)
        return sym == :asc ? arr.sort : arr.sort.reverse
    else
        return
    end
end

# sample array and order symbol
sample = [1,2,3,6,34,78,6,7,4]
order = :desc

# to display the sorted array
print my_sort(sample, order)