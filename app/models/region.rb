class Region < ActiveRecord::Base
  has_many :sightings
  has_many :species, :through => :sightings, :source => :specie
  validates :name, :presence => true
end
