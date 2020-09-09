# A fnction that takes a hash of student scores 
# and return the average score of all the students

def class_average(hashh)
    sum = 0.0
    hashh.each_value { |val|  sum += val}
    average = sum / hashh.size
    hashh.empty? ? sum : average.round(2)
end

# Sample Hash
scores = {
    "Tajuddeen" => 7,
    "Sulaiman" => 5,
    "James" => 4
}

# Display of the results
puts class_average(scores).inspect