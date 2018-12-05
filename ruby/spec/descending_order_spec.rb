require 'rspec'
require 'descending_order'

describe 'descending_order' do 
    it 'handles single digits' do 
        expect(descending_order(0)).to equal(0)
        expect(descending_order(1)).to equal(1)
    end
    it 'reorganizes integer digits in descending order' do 
        expect(descending_order(123456789)).to equal(987654321)
    end
end

