class AddColumnsToPlace < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :date, :date
    add_column :places, :time, :time
  end
end
