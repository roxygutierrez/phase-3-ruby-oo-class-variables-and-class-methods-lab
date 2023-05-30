class Song
attr_accessor :name, :artist, :genre

@@count = 0 
@@genres = []
@@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre= genre
        @@count +=1
        @@genres << genre
        @@artists << artist

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_tally = {}
        @@genres.each do |genre|
            if genre_tally.key? genre
                genre_tally[genre] += 1
            else genre_tally[genre] = 1
            end
        end  
        genre_tally 
    end

    def self.artist_count
        artist_tally = {}
        @@artists.each do |artist|
            if artist_tally.key? artist
                artist_tally[artist] += 1
            else artist_tally[artist] = 1
            end
        end
        artist_tally
    end

end
