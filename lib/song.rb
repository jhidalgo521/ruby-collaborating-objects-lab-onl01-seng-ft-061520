require 'pry'

class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = self.new(song_info[1])
    song.artist_name = song_info[0]
    song
    #binding.pry 
  end 
  
  #create and collab with Artist class 
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #artist.add_song(self)
    
  end
  
end 


