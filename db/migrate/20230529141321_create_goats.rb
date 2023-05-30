class CreateGoats < ActiveRecord::Migration[7.0]
  def change
    create_table :goats do |t|
      t.string :name
      t.integer :age
      t.boolean :milk
      t.boolean :horn_massage
      t.boolean :foot_massage
      t.boolean :whool
      t.boolean :pet_friendly

      t.timestamps
    end
  end
end
