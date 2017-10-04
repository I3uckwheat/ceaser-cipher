# spec/cypher_spec.rb
require '/home/briggs/workspace/ceasar/lib/cypher.rb'
describe 'Test ceasar_cypher' do
  context 'given an empty string' do
    it 'returns nil' do
      expect(ceasar_cypher('', 7)).to eql('')
    end
  end

  context "given the string 'h', and cypher '2'" do
    it "returns 'j'" do
      expect(ceasar_cypher('h', 2)).to eql('j')
    end
  end

  context "given the string 'z' and cypher '3'" do
    it "returns 'c'" do
      expect(ceasar_cypher('z', 3)).to eql('c')
    end
  end

  context "given the string 'the flag' and cypher '19'" do
    it "returns 'max yetz'" do
      expect(ceasar_cypher('the flag', 19)).to eql('max yetz')
    end
  end

  context "given the string 'THE FLAG' and cypher '20'" do
    it "returns 'NBY ZFUA'" do
      expect(ceasar_cypher('THE FLAG', 20)).to eql('NBY ZFUA')
    end
  end
end
