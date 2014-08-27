class Sighting < ActiveRecord::Base
  belongs_to :specie

  validates :specie_id, :presence => true
  validates :longitude, :presence => true
  validates :latitude, :presence => true
end
