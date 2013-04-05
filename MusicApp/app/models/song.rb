class Song < ActiveRecord::Base
  attr_accessible :name, :artist_id
  #belongs_to :artist
  has_many :genre_songs
  belongs_to :author, :class_name => "Artist", :foreign_key => :artist_id
  has_many :genres, :through => :genre_songs
  has_many :recordings

end
