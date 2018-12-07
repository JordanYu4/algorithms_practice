=begin 
Write a function that takes in arr1 and arr2, and returns the 
elements of arr1 that are not in arr2. 
=end 

# O(n^2) implementation
def array_diff(arr1, arr2) 
    arr1.reject { |el| arr2.include?(el) }
end

# O(n) implementation 
def array_diff_faster(arr1, arr2)
    forbidden = Hash.new(false)
    arr2.each { |el| forbidden[el] = true }
    arr1.reject { |el| forbidden[el] }
end