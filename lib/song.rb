require 'pry'

class Song

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@all << self
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.all
    @@all
  end

  def self.print_all_song_names
    @@all.each {|song| puts song.name}
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

  def self.element_counter(element)
    elm_count = {}
    element.each do |elm|
      if elm_count.has_key?(elm)
        elm_count[elm] += 1
      else
        elm_count[elm] = 1
      end
    end
    elm_count
  end

  def self.genre_count
    element_counter(@@genres)
  end

  def self.artist_count
    element_counter(@@artists)
  end
end
