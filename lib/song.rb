class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
   
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1

        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count         #returns that number of songs created
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        # uniq() returns a new array by removing duplicate values in self.
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]               #see if hash already hasa key of a particular genre 
                genre_count[genre] += 1         #If so, increment value by 1
            else
                genre_count[genre] = 1          #otherwise, create a new key/value pair
            end
        end
        return genre_count
    end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
  end
end