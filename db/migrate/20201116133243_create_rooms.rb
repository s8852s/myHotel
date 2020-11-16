class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.string :room_name
      t.string :room_types
      t.integer :sleeps
      t.integer :price
      t.text :room_features
      t.text :description

      t.timestamps
    end
  end
end
