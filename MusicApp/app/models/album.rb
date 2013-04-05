class Album < ActiveRecord::Base
  belongs_to :band
  has_many :recordings
  attr_accessible :name, :band_id
end
