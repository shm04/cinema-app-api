class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.references :room, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.datetime :started, null: false
      t.datetime :finished, null: false

      t.timestamps
    end
  end
end
