class Song < ActiveRecord::Base

  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.new(name: 'Drake')
    drake.songs << self
  end

  expected #<ActiveRecord::Associations::CollectionProxy [#<Song id: 1, name: "Forever", artist_id: nil, genre_id: nil>]> to be a kind of Artist(
id: integer, name: string)
end
