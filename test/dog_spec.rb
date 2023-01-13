require "rspec"
require_relative "dog"

RSpec.describe Dog do
  # '#' is used for class method
  # subject { Dog.new } 
  describe "#bark" do
    it 'returns the "Woof"' do
      expect(subject.bark).to eql("Woof")
    end
  end

  describe "#hungry?" do
    it 'returns true if hunger_level is more than 5' do
      dog = described_class.new(hunger_level: 7)
      expect(dog).to be_hungry
    end
    it 'returns false if hunger_level is less than 5' do
      dog = described_class.new(hunger_level: 5)
      expect(dog).to_not be_hungry     
    end
  end

  
end
