class RemoveFavGenreIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :fav_genre_id, :bigint
  end
end
