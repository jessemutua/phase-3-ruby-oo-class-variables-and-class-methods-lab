class Song
    attr_reader :name, :artist, :genre
    @@count=0
    @@genres = []
    @@artists =[]

    def initialize(name, artist, genre)
        @name= name
        @artist= artist
        @genre = genre
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
        genre_counts = Hash.new(0)
    
        @@genres.each do |genre|
          genre_counts[genre] += 1

        end
        genre_counts.each do |genre, count|
            puts "#{genre}: #{count}"
        end
    
    end
    def self.artist_count
        artist.counts = Hash.new(0)
        @@artists.each do |artist|
            artist_counts+=1
        end
        artist_counts.each do |artist, count|
            puts "#{artist}: #{count0}"
        end
    end



end

c1= Song.new("Jesse", "Jesse", "Pop")

c2= Song.new("Jesse", "Jesse", "Trap")



