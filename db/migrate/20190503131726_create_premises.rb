class CreatePremises < ActiveRecord::Migration[5.2]
  def change
    create_table :premises do |t|
      t.string :name
      t.string :address
    end
  end
end
