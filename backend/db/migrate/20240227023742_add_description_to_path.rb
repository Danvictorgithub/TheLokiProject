class AddDescriptionToPath < ActiveRecord::Migration[7.0]
  def change
    add_column :paths, :description, :string
  end
end
