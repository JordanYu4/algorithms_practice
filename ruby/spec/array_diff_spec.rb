require 'rspec'
require 'array_diff'

describe 'array_diff' do 
    before { @arr1 = [1] }
    before { @arr2 = [2] }
    it 'returns a new array' do 
        array_diff([1, 2, 4, 5], [1, 4]).should_not be([2, 5])
        array_diff(@arr1, @arr2).should_not be(@arr1)
        array_diff(@arr1, @arr2).should_not be(@arr2)
    end
    it 'returns an array of arr1 elements not found in arr2' do 
        array_diff([1, 2, 4, 5], [1, 4]).should == [2, 5]
        array_diff([1, 3, 5], [3, 4, 2, 5]).should_not include(3, 5)
    end
end

describe 'array_diff_faster' do 
    before { @arr1 = [1] }
    before { @arr2 = [2] }
    it 'returns a new array' do 
        array_diff_faster([1, 2, 4, 5], [1, 4]).should_not be([2, 5])
        array_diff_faster(@arr1, @arr2).should_not be(@arr1)
        array_diff_faster(@arr1, @arr2).should_not be(@arr2)
    end
    it 'returns an array of arr1 elements not found in arr2' do 
        array_diff_faster([1, 2, 4, 5], [1, 4]).should == [2, 5]
        array_diff_faster([1, 3, 5], [3, 4, 2, 5]).should_not include(3, 5)
    end
end