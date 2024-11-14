class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :genre, null: false
      t.integer :duration, null: false
      t.timestamps
    end
  end
end
