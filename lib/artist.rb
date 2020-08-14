require 'pry' 

class Artist 
  
  attr_accessor :name 
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all<< self
    #@songs = []
  end 
  
  def self.all
    @@all
  end 
  
 def add_song(song)
    song.artist = self
 end 
 
 def songs
   Song.all.select {|song| song.artist == self}
 end 
  
  def self.find_or_create_by_name(name)

  #find or create
     if self.find(name)
       self.find(name)
     else
       self.create(name)
     end 
     
  end 
  
  #find method 
    def self.find(name)
      @@all.find do | artist |
        artist.name == name 
      end 
    end 
    
    #create method 
    def self.create(name)
      artist = self.new(name)
<<<<<<< HEAD
      #@@all << artist 
=======
      @@all << artist 
>>>>>>> 41c0a404ba38698c5bd5bab6f6ca77e42309e89b
      artist
    end 
  
  def print_songs
    puts songs.collect {|song| song.name}
  end 
   
  
  
end 