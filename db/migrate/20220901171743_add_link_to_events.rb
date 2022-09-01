class AddLinkToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :link, :string
  end
end
