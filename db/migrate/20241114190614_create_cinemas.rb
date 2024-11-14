class CreateCinemas < ActiveRecord::Migration[7.1]
  def change
    create_table :cinemas do |t|
      t.string :cinema_name, null: false
      t.string :address, null: false
      t.boolean :isOpen, default: true, null: false

      t.timestamps
    end
  end
end
