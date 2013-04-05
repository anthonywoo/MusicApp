class BandArtist < ActiveRecord::Base
  belongs_to :artist
  belongs_to :band
end
