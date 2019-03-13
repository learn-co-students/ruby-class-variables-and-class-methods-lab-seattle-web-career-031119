require 'pry'
class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist #if !@@artists.include?(artist)
    @@genres << genre
    @@count += 1
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
    @@artists.reduce({}) {|acc, artist|
        acc[artist].nil? ? acc[artist] = 1 : acc[artist] += 1
        acc
    }
  end

  def self.genre_count
    @@genres.reduce({}) {|acc, genre|
        acc[genre].nil? ? acc[genre] = 1 : acc[genre] += 1
        acc
    }
  end

  private

  def count(style)

  end
end
