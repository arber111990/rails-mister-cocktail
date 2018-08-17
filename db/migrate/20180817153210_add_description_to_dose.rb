class AddDescriptionToDose < ActiveRecord::Migration[5.2]
  def change
     add_column :doses, :description, :string
     remove_column :doses, :name, :string
  end
end
