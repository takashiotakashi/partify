class RemoveFieldImageFromTableEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :Image, :image
  end
end
