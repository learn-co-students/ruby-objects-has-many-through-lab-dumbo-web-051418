class Genre
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    self.songs.collect { |song| song.artist }.uniq
  end
end
