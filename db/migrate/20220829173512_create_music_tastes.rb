class CreateMusicTastes < ActiveRecord::Migration[7.0]
  def change
    create_table :music_tastes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
