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
      self.all.find do |n|
         if !n == name 
           self.name = name 
           n.save
           n
         else
           self.name
         end
      end
  end 
  
  def print_songs
    @songs.each {|s| puts s.name}
  end
  
end 
