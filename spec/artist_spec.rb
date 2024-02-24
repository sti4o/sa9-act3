require_relative '../problems/artist' 

RSpec.describe Artist do
  describe "#initialize" do
    context "with default parameters" do
      subject { Artist.new }
      
      it "has a default name of 'unknown'" do
        expect(subject.name).to eq('unknown')
      end

      it "has a default birth year of -1" do
        expect(subject.birth_year).to eq(-1)
      end

      it "has a default death year of -1" do
        expect(subject.death_year).to eq(-1)
      end
    end

    context "with custom parameters" do
      subject { Artist.new("Van Gogh", 1853, 1890) }
      
      it "sets the correct name" do
        expect(subject.name).to eq("Van Gogh")
      end

      it "sets the correct birth year" do
        expect(subject.birth_year).to eq(1853)
      end

      it "sets the correct death year" do
        expect(subject.death_year).to eq(1890)
      end
    end
  end
end
