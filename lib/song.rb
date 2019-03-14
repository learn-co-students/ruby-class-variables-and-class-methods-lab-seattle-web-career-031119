class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :count,:artists,:genres,:name,:artist,:genre

  def initialize(name,artist,genre)
    @artist = artist
    @genre = genre
    @name = name

    @@artists << self.artist
    @@count += 1
    @@genres << self.genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def name
    @name
  end

  def self.genre_count
    return_hash = {}
    @@genres.each do |genre_item|
      if return_hash[genre_item]
        return_hash[genre_item] += 1
      else
        return_hash[genre_item] = 1
      end
    end
    return_hash
  end

  def self.artist_count
    return_hash = {}
    @@artists.each do |artist_item|
      if return_hash[artist_item]
        return_hash[artist_item] += 1
      else
        return_hash[artist_item] = 1
      end
    end
    return_hash
  end

end
