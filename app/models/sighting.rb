class Sighting < ActiveRecord::Base
  belongs_to :specie
  belongs_to :region

  validates :specie_id, :presence => true
  validates :longitude, :presence => true
  validates :latitude, :presence => true
  validates :region_id, :presence => true
end
