class CreateSeats < ActiveRecord::Migration[7.1]
  def change
    create_table :seats do |t|
      t.references :room, null: false, foreign_key: true
      t.string :row, null: false
      t.integer :number, null: false
      t.boolean :taken, default: false, null: false

      t.timestamps
    end
  end
end
