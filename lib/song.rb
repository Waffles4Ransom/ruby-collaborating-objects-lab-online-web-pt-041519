class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name) 
    song.artist = artist.add_song()
    return song
  end 
  
end