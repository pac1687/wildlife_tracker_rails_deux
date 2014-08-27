describe Sighting do
  it { should validate_presence_of :specie_id}
  it { should validate_presence_of :longitude}
  it { should validate_presence_of :latitude}
  it { should belong_to :specie }
end
