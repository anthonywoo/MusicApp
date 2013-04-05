class Band < ActiveRecord::Base
  attr_accessible :name
  has_many :recordings
  has_many :albums
  has_many :artists, :through => :band_artists



end
