=begin
Write a method that takes in a string and returns the minimum 
number of deletions required to produce a string with no 
consecutive repeated characters 
=end 

def alternating_characters(s)
    min_s, letters = '', s.chars
    letters.each_with_index do |char, idx| 
        min_s += char if char != letters[idx-1] || idx == 0
    end
    s.length - min_s.length
end