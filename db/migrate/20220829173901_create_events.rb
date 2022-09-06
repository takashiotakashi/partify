class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :description
      t.decimal :price


      t.timestamps
    end
  end
end
