describe Region do
  it 'has many species through sightings' do
    specie = Specie.new(name: 'tiger')
    specie.save
    region = Region.new(name: 'NW')
    region.save
    sighting = Sighting.new(specie_id: specie.id, region_id: region.id, longitude: 12, latitude: 12)
    sighting.save
    expect(region.species).to eq [specie]
  end
  it { should have_many :sightings }
  it { should validate_presence_of :name }
end
