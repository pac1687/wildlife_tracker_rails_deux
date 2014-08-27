class UpdateTables < ActiveRecord::Migration
  def change
    add_column :sightings, :region_id, :integer

    remove_column :regions, :sighting_id
    remove_column :regions, :specie_id
  end
end
