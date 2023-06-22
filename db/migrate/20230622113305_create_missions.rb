class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.integer :mission_type
      t.date :date
      t.integer :price

      t.timestamps
    end
  end
end
