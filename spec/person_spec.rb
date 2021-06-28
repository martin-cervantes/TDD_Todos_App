require_relative "../lib/person"

describe Person do
  describe "#full_name" do
    it "returns the first and last names concatenated" do
      person = Person.new(first_name: 'Martin', last_name: 'Cervantes')
      expect(person.full_name).to eq('Martin Cervantes')
    end
  end
end
