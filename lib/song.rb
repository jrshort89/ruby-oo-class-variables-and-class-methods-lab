require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        Song.increment_genre(genre)
        Song.increment_artist(artist)
        @name = name
        @artist = artist
        @genre = genre
    end

    attr_accessor :name, :artist, :genre

    def self.increment_genre(genre)
        @@genre_count[genre] ||= @@genre_count[genre] = 0
        @@genre_count[genre] += 1
    end

    def self.increment_artist(artist)
        @@artist_count[artist] ||= @@artist_count[artist] = 0
        @@artist_count[artist] += 1
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
end