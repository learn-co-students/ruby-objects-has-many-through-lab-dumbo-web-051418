require 'pry'
class Genre
  attr_accessor :name, :artist
  @@all = []
  def initialize genre
    @name = genre
    @@all << self
  end
  def self.all
    @@all
  end
  def new_song song_name, artist
    added_song = Song.new(song_name, artist, self)
  end
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  def artists
    songs.map do |song|
      song.artist
    end
  end
end
