class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :subCat
      t.integer :MaxCH
      t.integer :MinCH

      t.timestamps
    end
  end
end
