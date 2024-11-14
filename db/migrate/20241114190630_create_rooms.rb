class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.references :cinema, null: false, foreign_key: true
      t.string :room_name, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
