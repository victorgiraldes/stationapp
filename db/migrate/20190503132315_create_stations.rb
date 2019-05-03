class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations, id: false do |t|
      t.integer :serial, primary_key: true
      t.string :name
      t.references :premise, foreign_key: true
    end
  end
end
