class AddImageToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :image, :string
  end
end
