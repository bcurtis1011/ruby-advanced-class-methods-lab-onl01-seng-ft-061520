class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def Song.create
    song = self.new
    song.save
    song
  end
  
  def Song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def Song.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
  
  def Song.find_by_name(name)
    song = self.all.select {|song| song.name == name}
    song[0]
  end
  
  def Song.find_or_create_by_name(name)
    if !find_by_name(name)
      create_by_name(name)
    else
      find_by_name(name)
    end
  end
  
  def Song.alphabetical
    self.all.
  end
end
