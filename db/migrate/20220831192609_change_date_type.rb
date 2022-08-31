class ChangeDateType < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :date, :string
  end
end
