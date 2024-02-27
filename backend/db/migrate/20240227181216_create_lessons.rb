class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :content
      t.boolean :isProject, default: false
      t.references :path_section, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
