class AddColumnToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :Image, :string
  end
end
