class Artist
    attr_accessor :name

    def initialize(name)
        @name = name 
        @songs = [] #Initializing iwth an Empty Collection
        
    end

    def add_song(song) #adding items to the collection
        song.artist = self # Telling a song that it belongs to an artist should happen when that song i
                            #s added to the artist's @songs collection. Consequently, we will write the 
                            # code that accomplishes this inside our #add_song method:
    end

    def songs #Exposing the collection: writing an instance mthod #songs, that we can call on an 
        # individual artist to return the list of songs that the artist has
        Song.all.select {|song| song.artist == self} #we can retrieve all the songs associated with an artist.
        # We can incorporate this directly into our Artist class, replacing the implementation of the 
        #songs method so that it selects instead of returning the @songs instance variable:
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.count
        
    end
    

end