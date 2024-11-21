class AddCinemaIdToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :cinema_id, :integer
  end
end
