class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@count += 1
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genre_hash = {}
    #figure out of the genre is already in the Hash. If so then add 1 to the value.  If not, then value = 1.
    @@genres.each do |genre|
      if genre_hash.include?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    #figure out of the artist is already in the Hash. If so then add 1 to the value.  If not, then value = 1.
    @@artists.each do |artist|
      if artist_hash.include?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    return artist_hash
  end

end
