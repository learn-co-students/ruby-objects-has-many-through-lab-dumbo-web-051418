# Genre
#   #name
#     has a name (FAILED - 10)
#   #songs
#     has many songs (FAILED - 11)
#   #artists
#     has many artists, through songs (FAILED - 12)
#

class Genre

  @@all = []

  attr_accessor :name

  def self.all
    @@all
  end

  def initialize (name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end
