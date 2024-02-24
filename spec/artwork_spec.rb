require_relative '../problems/artwork' # Adjust this path

RSpec.describe Artwork do
  let(:artist) { Artist.new("Van Gogh", 1853, 1890) }
  
  describe "#initialize" do
    context "with default parameters" do
      subject { Artwork.new }
      
      it "has a default title of 'unknown'" do
        expect(subject.title).to eq('unknown')
      end

      it "has a default year created of -1" do
        expect(subject.year_created).to eq(-1)
      end

      it "has a default artist" do
        expect(subject.artist).to be_an_instance_of(Artist)
      end
    end

    context "with custom parameters" do
      subject { Artwork.new("Starry Night", 1889, artist) }
      
      it "sets the correct title" do
        expect(subject.title).to eq("Starry Night")
      end

      it "sets the correct year created" do
        expect(subject.year_created).to eq(1889)
      end

      it "sets the correct artist" do
        expect(subject.artist).to eq(artist)
      end
    end
  end
end
