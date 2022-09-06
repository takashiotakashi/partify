class AddFavGenreToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :fav_genre, :string
  end
end
