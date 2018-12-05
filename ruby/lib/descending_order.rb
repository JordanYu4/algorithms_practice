# Write a function that takes in an integer and returns 
# it with its digits reorganized into descending order 
# (i.e. the highest possible number)

# Takes in a non-negative integer
# Returns a non-negative integer

def descending_order(n)
  n.to_s.chars.map(&:to_i).sort.reverse.join.to_i
end
