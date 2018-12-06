require 'rspec'
require 'alternating_characters'

describe 'alternating_characters' do 
    it 'handles strings composed of all the same character' do
        expect(alternating_characters('AAAA')).to equal(3)
        expect(alternating_characters('BBBBB')).to equal(4)
    end
    it 'returns zero for strings with no consecutive repeats' do 
        expect(alternating_characters('ABABABABAB')).to equal(0)
        expect(alternating_characters('BABABA')).to equal(0)
    end
    it 'handles strings with randomly placed consecutive repeats' do 
        expect(alternating_characters('aaabbb')).to equal(4)
    end
end