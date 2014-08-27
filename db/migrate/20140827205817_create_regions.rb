class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.column :name, :string
      t.column :specie_id, :integer
      t.column :sighting_id, :integer
      t.timestamps
    end
  end
end
