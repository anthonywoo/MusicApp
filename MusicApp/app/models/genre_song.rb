class GenreSong < ActiveRecord::Base
  belongs_to :genre
  belongs_to :song
  attr_accessible :genre_id, :song_id
end
