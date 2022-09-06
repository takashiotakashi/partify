class RemoveGenreFromUsers < ActiveRecord::Migration[7.0]
  def change
    # remove_reference :users, :genre, null: false, index: true
    remove_index :users, name: :index_users_on_fav_genre_id, unique: true
  end
end
