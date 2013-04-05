class Band < ActiveRecord::Base
  attr_accessible :name
  has_many :recordings #REV: not through albums?
  has_many :albums
  has_many :artists, :through => :band_artists



end
