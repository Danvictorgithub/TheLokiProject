class CreatePathSections < ActiveRecord::Migration[7.0]
  def change
    create_table :path_sections do |t|
      t.string :name
      t.references :path, null: false, foreign_key: true

      t.timestamps
    end
  end
end
