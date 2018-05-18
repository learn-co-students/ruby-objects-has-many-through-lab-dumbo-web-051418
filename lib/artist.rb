class Artist
  attr_reader :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    self.songs.collect { |song| song.genre }.uniq
  end

  def self.all
    @@all
  end
end
