# Write a function that takes in an integer and returns 
# it with its digits reorganized into descending order 
# (i.e. the highest possible number)

def descending_order(n)
  n.to_s.chars.map(&:to_i).sort.reverse.join.to_i
end

Test.assert_equals(descending_order(0), 0)
Test.assert_equals(descending_order(1), 1)
Test.assert_equals(descending_order(123456789), 987654321)