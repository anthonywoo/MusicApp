class Genre < ActiveRecord::Base
  attr_accessible :genre_type
  has_many :genre_songs
  has_many :songs, :through => :genre_songs
end
