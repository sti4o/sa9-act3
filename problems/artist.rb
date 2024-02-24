class Artist
    attr_reader :name, :birth_year, :death_year
  
    def initialize(name="unknown", birth_year=-1, death_year=-1)
      @name = name
      @birth_year = birth_year
      @death_year = death_year
    end
  
    def print_info
      if @birth_year >= 0 && @death_year >= 0
        puts "Artist: #{@name} (#{@birth_year} to #{@death_year})"
      elsif @birth_year >= 0
        puts "Artist: #{@name} (#{@birth_year} to present)"
      else
        puts "Artist: #{@name} (unknown)"
      end
    end
  end
  