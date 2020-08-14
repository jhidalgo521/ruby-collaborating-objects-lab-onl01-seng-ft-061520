<<<<<<< HEAD
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


=======
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end
  
  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def save
    @@all << self
    self
  end
end
>>>>>>> 41c0a404ba38698c5bd5bab6f6ca77e42309e89b
