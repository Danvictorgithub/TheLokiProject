class AddCourseToPath < ActiveRecord::Migration[7.0]
  def change
    add_reference :paths, :course, null: true, foreign_key: true
  end
end
