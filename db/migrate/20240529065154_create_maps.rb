class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :address
      t.float  :latitude
      t.float  :longitude

      t.timestamps
    end
  end
end
