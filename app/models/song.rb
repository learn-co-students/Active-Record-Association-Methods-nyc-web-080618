require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.create(name: "Drake")
    new_song = Song.create(name: "Song1")
    # drake_song = Artist.find_by(name: "Drake")
    # binding.pry
    drake.songs << new_song
    drake
  end
end
