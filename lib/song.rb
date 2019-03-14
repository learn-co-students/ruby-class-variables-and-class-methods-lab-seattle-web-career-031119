require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  @@genres = []
  @@artists = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@genres << genre
    @@artists << artist

    @@artist_count.keys.include?(artist) ? (@@artist_count[artist] += 1) : (@@artist_count[artist] = 1)
    @@genre_count.keys.include?(genre) ? (@@genre_count[genre] += 1) : (@@genre_count[genre] = 1)
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

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end
end

#first = Song.new("BSpearz", "Inside Out", "pop")

#pry.Start
