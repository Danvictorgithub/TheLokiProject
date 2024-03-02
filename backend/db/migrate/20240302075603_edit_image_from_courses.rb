class EditImageFromCourses < ActiveRecord::Migration[7.0]
  def change
    change_column :courses, :image, :string, default: ""
  end
end
