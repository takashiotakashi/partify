class AddFavGenreToUsers < ActiveRecord::Migration[7.0]
  def change
    # add_reference :users, :genre, null: false, foreign_key: true
    add_reference :users, :fav_genre, index: true, foreign_key: { to_table: :genres }
  end
end
