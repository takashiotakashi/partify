class AddGenresToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :genres, :string
  end
end
