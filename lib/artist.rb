class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(title)
    @songs << title
    
  end
  
  def save
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find_or_create_by_name(name)
   artist = self.all.find { |art| art.name == name}
    if artist != name 
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end 
  
  def print_songs
    @songs.each {|s| puts s.name}
  end
  
end 
