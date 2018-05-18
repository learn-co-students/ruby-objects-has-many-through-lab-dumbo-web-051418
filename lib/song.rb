class Song
  attr_reader :title, :genre
  attr_accessor :artist
  @@all = Array.new

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    @@all.push(self)
  end

  def self.all
    @@all
  end

end
