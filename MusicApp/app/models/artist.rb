class Artist < ActiveRecord::Base
  attr_accessible :name
  has_many :songs
  has_many :recordings, :through => :bands
  has_many :band_artists
  has_many :bands, :through => :band_artists
end
