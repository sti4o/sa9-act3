require_relative 'artist'

class Artwork
  attr_reader :title, :year_created, :artist

  def initialize(title="unknown", year_created=-1, artist=Artist.new)
    @title = title
    @year_created = year_created
    @artist = artist
  end

  def print_info
    @artist.print_info
    puts "Title: #{@title}, #{@year_created}"
  end
end
