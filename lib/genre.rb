class Genre 
  
  attr_reader :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def songs 
    Song.all.select {|song| song.genre.name == self.name}
  end 
  
  def artists
    self.songs.collect {|song| song.artist} 
  end 
end 