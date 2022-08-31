class DropTableMusicTaste < ActiveRecord::Migration[7.0]
  def change
    drop_table :model_name
  end
end
