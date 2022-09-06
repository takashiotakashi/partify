class RemoveGenreIdFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :genre_id, :integer
  end
end
