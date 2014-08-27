class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :specie_id, :integer
      t.column :longitude, :integer
      t.column :latitude, :integer
      t.timestamps
    end
  end
end
