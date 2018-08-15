class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    self.songs.map do |song|
      song.artist
    # return the number of artists associated with the genre
  end.uniq.count
end

  def all_artist_names
    self.songs.map do |songs|
      songs.artist.name
    # return an array of strings containing every musician's name
  end
end
end
